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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
# A306602: Number of elements in the ten nonconvex regular 4-polytopes (regular 4-dimensional star-polytopes), as a four-column array, read by rows, with rows ordered first by increasing density, then by increasing cell-count, then by increasing face-count, then by increasing edge-count and then by increasing vertex-count.

The programs for A306602, there is no canonical definition to state claims against.
-/

/-! ## A306602.P6614649268925734626

`A090782(A090771(n+1)^A213209(n+1))`
-/

namespace A306602.P6614649268925734626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090782 (SequenceMachineLib.roundAway ((A090771 (n + 1) : ℚ) ^ (A213209 (n + 1) : ℤ))).toNat

end

end A306602.P6614649268925734626

/-!
# A306604: Number of perfect squares in the half-open interval [Pi^(n-1), Pi^n).

The programs for A306604, the canonical program `A306604.P10796956106735223825` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306604 has offset 0).

The definition of A306604 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 403 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306604.P12301760099979551354

`ceil(π^(n/2))-ceil(π^((n-1)/2))`
-/

namespace A306604.P12301760099979551354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.pi ^ ((n : ℚ) / 2 : ℝ)⌉ - ⌈Real.pi ^ (((n : ℤ) - 1 : ℚ) / 2 : ℝ)⌉

end

end A306604.P12301760099979551354

namespace A306604

/-- `ceil(π^(n/2))-ceil(π^((n-1)/2))` -/
def P12301760099979551354.Spec : Prop :=
  ∀ n, P12301760099979551354.a n = A306604 n

end A306604

/-! ## A306604.P5083651448737089676

`Δ[A102477(n-floor(atan(n+1)))]`
-/

namespace A306604.P5083651448737089676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102477 ((n : ℤ) - ⌊Real.arctan (n + 1 : ℝ)⌋).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A306604.P5083651448737089676

namespace A306604

/-- `Δ[A102477(n-floor(atan(n+1)))]` -/
def P5083651448737089676.Spec : Prop :=
  ∀ n, P5083651448737089676.a n = A306604 n

end A306604

/-! ## A306604.P10796956106735223825

`Δ[A102477(n-A000040(n+1)%2)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A306604

/-- `Δ[A102477(n-A000040(n+1)%2)]` -/
def P10796956106735223825.Spec : Prop :=
  ∀ n, P10796956106735223825.a n = A306604 n

theorem P10796956106735223825.correct : P10796956106735223825.Spec := by
  intro n
  simp only [A306604]

end A306604

/-! ## A306604.P17676113780225147993

`Δ[A102477(log2(ceil(2^(n-1))))]`
-/

namespace A306604.P17676113780225147993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102477 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A306604.P17676113780225147993

namespace A306604

/-- `Δ[A102477(log2(ceil(2^(n-1))))]` -/
def P17676113780225147993.Spec : Prop :=
  ∀ n, P17676113780225147993.a n = A306604 n

end A306604

/-!
# A306605: Square array T(n, k) read by antidiagonals upwards, n >= 0 and k >= 0: for any m >= 0, let f_m be the representation of m in the factorial number system: for any i >= 0, 0 <= f_m(i) <= i and m = Sum_{i >= 0} f_m(i) * i!; the representation of T(n, k) in the factorial number system, say g, satisfies g(i) = f_n(f_k(i)) for any i >= 0.

The programs for A306605, there is no canonical definition to state claims against.
-/

/-! ## A306605.P6037483415923579051

`A004525(2*A322699(n))%(2*A003983(n+1))`
-/

namespace A306605.P6037483415923579051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004525 (2 * A322699 n).toNat) (2 * A003983 (n + 1))

end

end A306605.P6037483415923579051

/-! ## A306605.P8592019789012497889

`A026741(2*A322699(n))%(2*A003983(n+1))`
-/

namespace A306605.P8592019789012497889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026741 (2 * A322699 n).toNat) (2 * A003983 (n + 1))

end

end A306605.P8592019789012497889

/-! ## A306605.P7047009250584217899

`A322699(n)%A046523(A001248(n+1))`
-/

namespace A306605.P7047009250584217899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322699 n) (A046523 (A001248 (n + 1)).toNat)

end

end A306605.P7047009250584217899

/-! ## A306605.P13059334531625574296

`and(A053475(A052378(n+1)), A322699(n))`
-/

namespace A306605.P13059334531625574296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053475 (A052378 (n + 1)).toNat) (A322699 n)

end

end A306605.P13059334531625574296

/-! ## A306605.P13207764506759537026

`and(A007425(A142569(n+1)), A322699(n))`
-/

namespace A306605.P13207764506759537026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007425 (A142569 (n + 1)).toNat) (A322699 n)

end

end A306605.P13207764506759537026

/-!
# A306608: Table read by antidiagonals: T(x,y) is the minimum size of a planar additive basis for the rectangle [0,x]*[0,y], for x,y >= 0.

The programs for A306608, there is no canonical definition to state claims against.
-/

/-! ## A306608.P10324363475161529901

`floor(A123883(A101858(n+1))^(1/2))`
-/

namespace A306608.P10324363475161529901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A123883 (A101858 (n + 1)).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)⌋

end

end A306608.P10324363475161529901

/-! ## A306608.P11113643704891436828

`A000196(A123883(A101858(n+1)))`
-/

namespace A306608.P11113643704891436828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A123883 (A101858 (n + 1)).toNat).toNat

end

end A306608.P11113643704891436828

/-! ## A306608.P15016461083082792620

`A084558(2^A341520(n))`
-/

namespace A306608.P15016461083082792620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A341520 n : ℤ))).toNat

end

end A306608.P15016461083082792620

/-! ## A306608.P5915549141285416513

`A126131(2^A341520(n))`
-/

namespace A306608.P5915549141285416513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126131 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A341520 n : ℤ))).toNat

end

end A306608.P5915549141285416513

/-! ## A306608.P18363872630819578873

`A213251(A135838(n+1))`
-/

namespace A306608.P18363872630819578873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213251 (A135838 (n + 1)).toNat

end

end A306608.P18363872630819578873

/-!
# A306609: a(n) = Sum_{k=0..n} k*binomial(4*n+2,2*k).

The programs for A306609, the canonical program `A306609.P11635993910616075094` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306609 has offset 0).

The definition of A306609 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A306609.P11635993910616075094

`(n+1/2)*(16^n-C(4*n, 2*n))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A306609

/-- `(n+1/2)*(16^n-C(4*n, 2*n))` -/
def P11635993910616075094.Spec : Prop :=
  ∀ n, P11635993910616075094.a n = (A306609 n : ℚ)

end A306609

/-! ## A306609.P3229806668529272287

`(2*n+1)*A058622(4*n)`
-/

namespace A306609.P3229806668529272287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A058622 (4 * n)

end

end A306609.P3229806668529272287

namespace A306609

/-- `(2*n+1)*A058622(4*n)` -/
def P3229806668529272287.Spec : Prop :=
  ∀ n, P3229806668529272287.a n = A306609 n

end A306609

/-! ## A306609.P9803751393329248354

`(2*n+1)*A294175(4*n)`
-/

namespace A306609.P9803751393329248354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A294175 (4 * n)

end

end A306609.P9803751393329248354

namespace A306609

/-- `(2*n+1)*A294175(4*n)` -/
def P9803751393329248354.Spec : Prop :=
  ∀ n, P9803751393329248354.a n = A306609 n

end A306609

/-! ## A306609.P7024971712106839325

`(2*n+1)*A068551(2*n)/2`
-/

namespace A306609.P7024971712106839325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) * ((A068551 (2 * n) : ℚ) / 2)

end

end A306609.P7024971712106839325

namespace A306609

/-- `(2*n+1)*A068551(2*n)/2` -/
def P7024971712106839325.Spec : Prop :=
  ∀ n, P7024971712106839325.a n = (A306609 n : ℚ)

end A306609

/-! ## A306609.P166222153996518275

`record[A068551(n)/2*A131738(n)]`
-/

namespace A306609.P166222153996518275
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068551 n : ℚ) / 2 * (A131738 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306609.P166222153996518275

namespace A306609

/-- `record[A068551(n)/2*A131738(n)]` -/
def P166222153996518275.Spec : Prop :=
  ∀ n, P166222153996518275.a n = (A306609 n : ℚ)

end A306609

/-! ## A306609.P9213420712101164569

`A068551(2*n)*A131738(2*n)/2`
-/

namespace A306609.P9213420712101164569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068551 (2 * n) * A131738 (2 * n) : ℚ) / 2

end

end A306609.P9213420712101164569

namespace A306609

/-- `A068551(2*n)*A131738(2*n)/2` -/
def P9213420712101164569.Spec : Prop :=
  ∀ n, P9213420712101164569.a n = (A306609 n : ℚ)

end A306609

/-! ## A306609.P11763906984452704419

`A018218(2*n)+n*A000984(2*n)`
-/

namespace A306609.P11763906984452704419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018218 (2 * n) + (n : ℤ) * A000984 (2 * n)

end

end A306609.P11763906984452704419

namespace A306609

/-- `A018218(2*n)+n*A000984(2*n)` -/
def P11763906984452704419.Spec : Prop :=
  ∀ n, P11763906984452704419.a n = A306609 n

end A306609

/-! ## A306609.P16063786540521890795

`A004273(n+1)*A045621(A004273(2*n))`
-/

namespace A306609.P16063786540521890795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n + 1) * A045621 (A004273 (2 * n)).toNat

end

end A306609.P16063786540521890795

namespace A306609

/-- `A004273(n+1)*A045621(A004273(2*n))` -/
def P16063786540521890795.Spec : Prop :=
  ∀ n, P16063786540521890795.a n = A306609 n

end A306609

/-!
# A306610: a(n) = (2*cos(Pi/15))^(-n) + (2*cos(7*Pi/15))^(-n) + (2*cos(11*Pi/15))^(-n) + (2*cos(13*Pi/15))^(-n), for n >= 1.

The programs for A306610, the canonical program `A306610.P1260470916265894430` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306610 has offset 1).

The definition of A306610 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A306610.P1260470916265894430

`4*a(n-1)+4*a(n-2)-a(n-3)-a(n-4)` with `a(0)=4, a(1)=24, a(2)=109, a(3)=524`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A306610

/-- `4*a(n-1)+4*a(n-2)-a(n-3)-a(n-4)` -/
def P1260470916265894430.Spec : Prop :=
  ∀ n, P1260470916265894430.a n = A306610 (n + 1)

theorem P1260470916265894430.correct : P1260470916265894430.Spec := by
  intro n
  simp only [A306610, Nat.add_sub_cancel]

end A306610

/-! ## A306610.P12224586244167806767

`record[-A307886(n+2)]`
-/

namespace A306610.P12224586244167806767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A307886 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306610.P12224586244167806767

namespace A306610

/-- `record[-A307886(n+2)]` -/
def P12224586244167806767.Spec : Prop :=
  ∀ n, P12224586244167806767.a n = A306610 (n + 1)

end A306610

/-! ## A306610.P3488934669036578218

`record[ratio[abs(A307886(n+1))]]`
-/

namespace A306610.P3488934669036578218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A307886 (n + 1)|

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306610.P3488934669036578218

namespace A306610

/-- `record[ratio[abs(A307886(n+1))]]` -/
def P3488934669036578218.Spec : Prop :=
  ∀ n, P3488934669036578218.a n = (A306610 (n + 1) : ℚ)

end A306610

/-! ## A306610.P9996014724577868125

`abs(A307886(A016873(n)))`
-/

namespace A306610.P9996014724577868125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A307886 (A016873 n).toNat|

end

end A306610.P9996014724577868125

namespace A306610

/-- `abs(A307886(A016873(n)))` -/
def P9996014724577868125.Spec : Prop :=
  ∀ n, P9996014724577868125.a n = A306610 (n + 1)

end A306610

/-! ## A306610.P12417747283116495318

`abs(A307886(A016885(n)-1))`
-/

namespace A306610.P12417747283116495318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A307886 (A016885 n - 1).toNat|

end

end A306610.P12417747283116495318

namespace A306610

/-- `abs(A307886(A016885(n)-1))` -/
def P12417747283116495318.Spec : Prop :=
  ∀ n, P12417747283116495318.a n = A306610 (n + 1)

end A306610

/-!
# A306611: The middle coefficient in the minimal polynomial for (2*cos(Pi/15))^n.

The programs for A306611, there is no canonical definition to state claims against.
-/

/-! ## A306611.P8482212148903414917

`A307886(5*n+3)`
-/

namespace A306611.P8482212148903414917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307886 (5 * n + 3)

end

end A306611.P8482212148903414917

/-! ## A306611.P17756359956733320594

`A307886(A016885(n))+A185284(n)`
-/

namespace A306611.P17756359956733320594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307886 (A016885 n).toNat + A185284 n

end

end A306611.P17756359956733320594

/-! ## A306611.P12217472571134164887

`A307886(A016885(n))%A324637(n)`
-/

namespace A306611.P12217472571134164887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307886 (A016885 n).toNat) (A324637 (n + 10))

end

end A306611.P12217472571134164887

/-!
# A306612: a(n) is the least integer k > 2 such that the remainder of -k modulo p is strictly increasing over the first n primes.

The programs for A306612, there is no canonical definition to state claims against.
-/

/-! ## A306612.P14780455002008163036

`A215366(A301776(n+1))+A118096(n+1)`
-/

namespace A306612.P14780455002008163036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215366 (A301776 (n + 1)).toNat + A118096 (n + 1)

end

end A306612.P14780455002008163036

/-! ## A306612.P12614245691191542785

`A004001(or(A072042(n+1), A072055(n+1)))`
-/

namespace A306612.P12614245691191542785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (Int.lor (A072042 (n + 1)) (A072055 (n + 1))).toNat

end

end A306612.P12614245691191542785

/-! ## A306612.P2779906363942422289

`A004001(or(A072042(n+1), A072058(n+1)))`
-/

namespace A306612.P2779906363942422289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (Int.lor (A072042 (n + 1)) (A072058 (n + 1))).toNat

end

end A306612.P2779906363942422289

/-!
# A306613: First differences of A063990 (amicable numbers arranged in increasing order).

The programs for A306613, there is no canonical definition to state claims against.
-/

/-! ## A306613.P16035514868209779293

`A063990(n+2)-A063990(n+1)`
-/

namespace A306613.P16035514868209779293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063990 (n + 2) - A063990 (n + 1)

end

end A306613.P16035514868209779293

/-! ## A306613.P5582915071924904190

`Δ[A063990(n+1)]`
-/

namespace A306613.P5582915071924904190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A306613.P5582915071924904190

/-! ## A306613.P9732603100507948836

`Δ[A279812(n+1)/2]`
-/

namespace A306613.P9732603100507948836
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279812 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A306613.P9732603100507948836

/-! ## A306613.P15135599830431749234

`abs(Δ[A063990(Δ[n²]-n)])`
-/

namespace A306613.P15135599830431749234
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063990 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A306613.P15135599830431749234

/-! ## A306613.P10429782734418518411

`Δ[record[A063990(A022446(n))]]`
-/

namespace A306613.P10429782734418518411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063990 (A022446 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A306613.P10429782734418518411

/-! ## A306613.P4887446330869594951

`Δ[record[A063990(A065648(n))]]`
-/

namespace A306613.P4887446330869594951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063990 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A306613.P4887446330869594951

/-! ## A306613.P9761066796529014987

`Δ[record[A063990(A100727(n))]]`
-/

namespace A306613.P9761066796529014987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063990 (A100727 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A306613.P9761066796529014987

/-!
# A306614: Number of ways to write n as w^2 + (x*(x+1)/2)^2 + (y*(3y+1)/2)^2 + (z*(5z+1)/2)^2, where w,x,y,z are integers with w > 0 and x >= 0.

The programs for A306614, there is no canonical definition to state claims against.
-/

/-! ## A306614.P9672703183565697385

`floor(A156383(A161953(n+1))/5)`
-/

namespace A306614.P9672703183565697385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A156383 (A161953 (n + 1)).toNat : ℚ) / 5⌋

end

end A306614.P9672703183565697385

/-! ## A306614.P10445456747665672313

`A340102(A308989(n))+A260625(n+1)`
-/

namespace A306614.P10445456747665672313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340102 (A308989 n).toNat + A260625 (n + 1)

end

end A306614.P10445456747665672313

/-! ## A306614.P14794547686359471023

`A260625(n+1)+A088469(A073941(n+1))`
-/

namespace A306614.P14794547686359471023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260625 (n + 1) + A088469 (A073941 (n + 1)).toNat

end

end A306614.P14794547686359471023

/-! ## A306614.P3501628773121591742

`A240491(n)+A210850(A210839(n+1))`
-/

namespace A306614.P3501628773121591742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240491 n + A210850 (A210839 (n + 1)).toNat

end

end A306614.P3501628773121591742

/-!
# A306615: Least positive k such that 2n - p is prime where p is some prime divisor of n^k - 1, or 0 if no such k exists.

The programs for A306615, there is no canonical definition to state claims against.
-/

/-! ## A306615.P6271451123706287546

`A175126(A239554(n))%3`
-/

namespace A306615.P6271451123706287546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175126 (A239554 n).toNat) 3

end

end A306615.P6271451123706287546

/-! ## A306615.P7609167818997378177

`A005087(A235963(A154560(n))²)`
-/

namespace A306615.P7609167818997378177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (A235963 (A154560 n).toNat ^ 2).toNat

end

end A306615.P7609167818997378177

/-! ## A306615.P197841979595341533

`A051903(A226234(n)+A124757(n))`
-/

namespace A306615.P197841979595341533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A226234 n + A124757 n).toNat

end

end A306615.P197841979595341533

/-! ## A306615.P9173075764198434977

`A134451(A298355(n)-A110797(n))`
-/

namespace A306615.P9173075764198434977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A298355 n - A110797 n).toNat

end

end A306615.P9173075764198434977

/-! ## A306615.P17680108135386374271

`A001221(gcd(A094796(2*n), A094796(n)))`
-/

namespace A306615.P17680108135386374271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (A094796 (2 * n)) (A094796 n))

end

end A306615.P17680108135386374271

/-!
# A306619: y-value of the smallest solution to 2*x^2 - p*y^2 = (-1)^((p+1)/4), p = A002145(n).

The programs for A306619, there is no canonical definition to state claims against.
-/

/-! ## A306619.P3700160656453886553

`A066657(A004442(n)*A173109(n))`
-/

namespace A306619.P3700160656453886553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 (A004442 n * A173109 n).toNat

end

end A306619.P3700160656453886553

/-!
# A306621: Highly abundant numbers that are powerful.

The programs for A306621, there is no canonical definition to state claims against.
-/

/-! ## A306621.P5558864179525033175

`filter[A002093(n+1), A112526(#)]`
-/

namespace A306621.P5558864179525033175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A306621.P5558864179525033175

/-! ## A306621.P16234574519842596935

`∩[A001694(n+1), A002093(n+1)]`
-/

namespace A306621.P16234574519842596935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306621.P16234574519842596935

/-! ## A306621.P8738237063353230607

`∩[A002093(n+1), A353485(n+1)]`
-/

namespace A306621.P8738237063353230607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306621.P8738237063353230607

/-! ## A306621.P16395878322591875710

`∩[A002093(n+1), A387901(n+1)]`
-/

namespace A306621.P16395878322591875710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306621.P16395878322591875710

/-! ## A306621.P18371754436451048716

`∩[A002093(n+1), A224866(n+1)-1]`
-/

namespace A306621.P18371754436451048716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224866 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306621.P18371754436451048716

/-!
# A306622: a(1) = 1, for n >= 2, a(n) = Sum_{i=1..floor(log_2(n))} a(n-i).

The programs for A306622, there is no canonical definition to state claims against.
-/

/-! ## A306622.P10168775872978004283

`A030034(3^C(a(n-1), 68)+n+1)` with `a(0)=1`
-/

namespace A306622.P10168775872978004283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A030034 (3 ^ Nat.choose (a (n - 1)).toNat 68 + n + 1)

end

end A306622.P10168775872978004283

/-! ## A306622.P8731623550326898637

`A030034(A062399(n)+2)`
-/

namespace A306622.P8731623550326898637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030034 (A062399 n + 2).toNat

end

end A306622.P8731623550326898637

/-! ## A306622.P106591447557630584

`A030034(A120126(n)+2)`
-/

namespace A306622.P106591447557630584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030034 (A120126 n + 2).toNat

end

end A306622.P106591447557630584

/-! ## A306622.P17411151340409282773

`A328369(A345235(n+2))`
-/

namespace A306622.P17411151340409282773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328369 (A345235 (n + 2)).toNat

end

end A306622.P17411151340409282773

/-!
# A306623: Expansion of e.g.f. exp(Sum_{k=1..8} x^k).

The programs for A306623, there is no canonical definition to state claims against.
-/

/-! ## A306623.P7026433744870877847

`A293669(A155212(n+4))`
-/

namespace A306623.P7026433744870877847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293669 (A155212 (n + 4)).toNat

end

end A306623.P7026433744870877847

/-! ## A306623.P6378576611666460788

`A293669(eq[7, A025581(n)])`
-/

namespace A306623.P6378576611666460788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293669 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306623.P6378576611666460788

/-! ## A306623.P6809023579866692095

`A293669(A027379(n+6)-5)`
-/

namespace A306623.P6809023579866692095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293669 (A027379 (n + 6) - 5).toNat

end

end A306623.P6809023579866692095

/-! ## A306623.P5947618405870896500

`A293669(A000096(n+7)-7)`
-/

namespace A306623.P5947618405870896500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293669 (A000096 (n + 7) - 7).toNat

end

end A306623.P5947618405870896500

/-! ## A306623.P5809241182197563613

`A293669(A000217(n+8)-8)`
-/

namespace A306623.P5809241182197563613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293669 (A000217 (n + 8) - 8).toNat

end

end A306623.P5809241182197563613

/-! ## A306623.P9761816882894019489

`A293669(eq[8, A004736(n+1)])`
-/

namespace A306623.P9761816882894019489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293669 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306623.P9761816882894019489

/-!
# A306624: Expansion of e.g.f. exp(Sum_{k=1..9} x^k).

The programs for A306624, there is no canonical definition to state claims against.
-/

/-! ## A306624.P17031254293404968475

`A293669(A052905(n+6)-4)`
-/

namespace A306624.P17031254293404968475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293669 (A052905 (n + 6) - 4).toNat

end

end A306624.P17031254293404968475

/-! ## A306624.P18298694456509424525

`A293669(A046691(n+7)-5)`
-/

namespace A306624.P18298694456509424525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293669 (A046691 (n + 7) - 5).toNat

end

end A306624.P18298694456509424525

/-! ## A306624.P10870095718550130929

`A293669(A000217(n+9)-9)`
-/

namespace A306624.P10870095718550130929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293669 (A000217 (n + 9) - 9).toNat

end

end A306624.P10870095718550130929

/-! ## A306624.P6894825989286306934

`A293669(2*n+A056115(n+2)+23)`
-/

namespace A306624.P6894825989286306934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293669 ((2 * n : ℤ) + (A056115 (n + 2) + 23)).toNat

end

end A306624.P6894825989286306934

/-! ## A306624.P17034238967216611459

`A293669(A144396(n+3)+A000124(n+7))`
-/

namespace A306624.P17034238967216611459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293669 (A144396 (n + 3) + A000124 (n + 7)).toNat

end

end A306624.P17034238967216611459

/-!
# A306627: Primes of the form (p + prime(p))/2 with prime p.

The programs for A306627, there is no canonical definition to state claims against.
-/

/-! ## A306627.P7617882547040472060

`p?[A014682(A073136(n+1))]`
-/

namespace A306627.P7617882547040472060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A073136 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306627.P7617882547040472060

/-! ## A306627.P14509220341603989824

`A073136(A128234(n+2))/2`
-/

namespace A306627.P14509220341603989824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073136 (A128234 (n + 2)).toNat : ℚ) / 2

end

end A306627.P14509220341603989824

/-!
# A306628: Expansion of e.g.f. log(Sum_{k>=0} (k*x)^k).

The programs for A306628, there is no canonical definition to state claims against.
-/

/-! ## A306628.P15957829022083063223

`n!*A141151(n+1)`
-/

namespace A306628.P15957829022083063223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A141151 (n + 1)

end

end A306628.P15957829022083063223

/-! ## A306628.P5818968960016874374

`A000142(n)*A141151(n+1)`
-/

namespace A306628.P5818968960016874374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A141151 (n + 1)

end

end A306628.P5818968960016874374

/-! ## A306628.P4436528723416004468

`abs(A133942(n)*A141151(n+1))`
-/

namespace A306628.P4436528723416004468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A133942 n * A141151 (n + 1)|

end

end A306628.P4436528723416004468

/-! ## A306628.P9443480796752620198

`A028421(∑[n])*A141151(n+1)`
-/

namespace A306628.P9443480796752620198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028421 (∑ j ∈ Finset.range (n + 1), f1 j) * A141151 (n + 1)

end

end A306628.P9443480796752620198

/-!
# A306630: a(n) = [x^n] 1/(Sum_{k=0..n} (k!)^n * x^k).

The programs for A306630, there is no canonical definition to state claims against.
-/

/-! ## A306630.P1351167232834591397

`A306629(∑[4*n])`
-/

namespace A306630.P1351167232834591397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306629 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A306630.P1351167232834591397

/-!
# A306631: Inverse of the Hardy-Ramanujan asymptotic partition function.

The programs for A306631, there is no canonical definition to state claims against.
-/

/-! ## A306631.P16245339613358231426

`∑[char[floor(A218906(3*n+1)/5)]]`
-/

namespace A306631.P16245339613358231426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A218906 (3 * n + 1) : ℚ) / 5⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306631.P16245339613358231426

/-! ## A306631.P6306815738506585944

`ceil(log2(A062859(n+1)+n+6))-2`
-/

namespace A306631.P6306815738506585944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A062859 (n + 1) + (n + 6 : ℤ) : ℝ)⌉ - 2

end

end A306631.P6306815738506585944

/-! ## A306631.P104964021824622431

`∑[char[A184643(n)-A286520(3*n+2)]]`
-/

namespace A306631.P104964021824622431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184643 n - A286520 (3 * n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306631.P104964021824622431

/-! ## A306631.P5962343063709869617

`char[∑[A000196(A094767(n+2))]]+a(n-1)` with `a(0)=1`
-/

namespace A306631.P5962343063709869617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A094767 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (n - 1)

end

end A306631.P5962343063709869617

/-! ## A306631.P2514419530751165610

`A036042(A048766(n)+∑[A001227(n+1)])`
-/

namespace A306631.P2514419530751165610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 (A048766 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A306631.P2514419530751165610

/-! ## A306631.P4482385397274141124

`A000523(∑[A291442(n+2)])`
-/

namespace A306631.P4482385397274141124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291442 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A306631.P4482385397274141124

/-!
# A306632: Numbers k which are both lucky (A000959) and Lucas (A000032).

The programs for A306632, there is no canonical definition to state claims against.
-/

/-! ## A306632.P11581580870935880399

`A000032(and(A150306(n), A315700(n)))`
-/

namespace A306632.P11581580870935880399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Int.land (A150306 n) (A315700 n)).toNat

end

end A306632.P11581580870935880399

/-!
# A306635: 

The programs for A306635, there is no canonical definition to state claims against.
-/

/-! ## A306635.P15314176120465621819

`∏[A000178(2*n)]`
-/

namespace A306635.P15314176120465621819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A306635.P15314176120465621819

/-!
# A306637: a(n) = Fibonacci(n) * A128834(n).

The programs for A306637, the canonical program `A306637.P785911528326980778` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306637 has offset 0).

The definition of A306637 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A306637.P17133713375664294382

`a(n-1)-2*a(n-2)-a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=0`
-/

namespace A306637.P17133713375664294382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 0] fun n a =>
  a (n - 1) - 2 * a (n - 2) - a (n - 3) - a (n - 4)

end

end A306637.P17133713375664294382

namespace A306637

/-- `a(n-1)-2*a(n-2)-a(n-3)-a(n-4)` -/
def P17133713375664294382.Spec : Prop :=
  ∀ n, P17133713375664294382.a n = A306637 n

end A306637

/-! ## A306637.P785911528326980778

`A000045(n)*A128834(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A306637

/-- `A000045(n)*A128834(n)` -/
def P785911528326980778.Spec : Prop :=
  ∀ n, P785911528326980778.a n = A306637 n

theorem P785911528326980778.correct : P785911528326980778.Spec := by
  intro n
  simp only [A306637]

end A306637

/-! ## A306637.P18414824008205327597

`ogf((x+x^3)/(1-x+2x^2+x^3+x^4))`
-/

namespace A306637.P18414824008205327597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 1] [1, -1, 2, 1, 1] n

end

end A306637.P18414824008205327597

namespace A306637

/-- `ogf((x+x^3)/(1-x+2x^2+x^3+x^4))` -/
def P18414824008205327597.Spec : Prop :=
  ∀ n, P18414824008205327597.a n = A306637 n

end A306637

/-! ## A306637.P6822643903949612172

`(A002062(n)-n)*round(sin(π*n/3))`
-/

namespace A306637.P6822643903949612172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002062 n - (n : ℤ)) * SequenceMachineLib.roundAway (Real.sin (Real.pi * (n : ℝ) / 3))

end

end A306637.P6822643903949612172

namespace A306637

/-- `(A002062(n)-n)*round(sin(π*n/3))` -/
def P6822643903949612172.Spec : Prop :=
  ∀ n, P6822643903949612172.a n = A306637 n

end A306637

/-! ## A306637.P1192539342625281547

`round(cos((1-n)%6))*Δ[A000045(n+1)]`
-/

namespace A306637.P1192539342625281547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (Int.tmod (1 - (n : ℤ)) 6 : ℝ)) * (f1 (n + 1) - f1 n)

end

end A306637.P1192539342625281547

namespace A306637

/-- `round(cos((1-n)%6))*Δ[A000045(n+1)]` -/
def P1192539342625281547.Spec : Prop :=
  ∀ n, P1192539342625281547.a n = A306637 n

end A306637

/-! ## A306637.P8320254813500812085

`A236191(A091684(n))`
-/

namespace A306637.P8320254813500812085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236191 (A091684 n).toNat

end

end A306637.P8320254813500812085

namespace A306637

/-- `A236191(A091684(n))` -/
def P8320254813500812085.Spec : Prop :=
  ∀ n, P8320254813500812085.a n = A306637 n

end A306637

/-! ## A306637.P6398831827071620698

`A000045(n)*A163806(n)`
-/

namespace A306637.P6398831827071620698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A163806 n

end

end A306637.P6398831827071620698

namespace A306637

/-- `A000045(n)*A163806(n)` -/
def P6398831827071620698.Spec : Prop :=
  ∀ n, P6398831827071620698.a n = A306637 n

end A306637

/-! ## A306637.P3730249735398437561

`A104220(n)*A128834(n)`
-/

namespace A306637.P3730249735398437561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104220 n * A128834 n

end

end A306637.P3730249735398437561

namespace A306637

/-- `A104220(n)*A128834(n)` -/
def P3730249735398437561.Spec : Prop :=
  ∀ n, P3730249735398437561.a n = A306637 n

end A306637

/-! ## A306637.P2721776064085513305

`A236191(n*A011655(n))`
-/

namespace A306637.P2721776064085513305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236191 ((n : ℤ) * A011655 n).toNat

end

end A306637.P2721776064085513305

namespace A306637

/-- `A236191(n*A011655(n))` -/
def P2721776064085513305.Spec : Prop :=
  ∀ n, P2721776064085513305.a n = A306637 n

end A306637

/-! ## A306637.P5658066365779312534

`A128834(n)*A141325(n)`
-/

namespace A306637.P5658066365779312534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n * A141325 n

end

end A306637.P5658066365779312534

namespace A306637

/-- `A128834(n)*A141325(n)` -/
def P5658066365779312534.Spec : Prop :=
  ∀ n, P5658066365779312534.a n = A306637 n

end A306637

/-! ## A306637.P15707399651380352202

`A128834(n)*A167808(n)`
-/

namespace A306637.P15707399651380352202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n * A167808 n

end

end A306637.P15707399651380352202

namespace A306637

/-- `A128834(n)*A167808(n)` -/
def P15707399651380352202.Spec : Prop :=
  ∀ n, P15707399651380352202.a n = A306637 n

end A306637

/-! ## A306637.P4875811938581023405

`A163806(n)*A167808(n)`
-/

namespace A306637.P4875811938581023405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163806 n * A167808 n

end

end A306637.P4875811938581023405

namespace A306637

/-- `A163806(n)*A167808(n)` -/
def P4875811938581023405.Spec : Prop :=
  ∀ n, P4875811938581023405.a n = A306637 n

end A306637

/-! ## A306637.P14953943533864357819

`A236191(n*A267208(n))`
-/

namespace A306637.P14953943533864357819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236191 ((n : ℤ) * A267208 n).toNat

end

end A306637.P14953943533864357819

namespace A306637

/-- `A236191(n*A267208(n))` -/
def P14953943533864357819.Spec : Prop :=
  ∀ n, P14953943533864357819.a n = A306637 n

end A306637

/-! ## A306637.P13325081304432343689

`A280261(n)*A333378(n)`
-/

namespace A306637.P13325081304432343689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280261 n * A333378 n

end

end A306637.P13325081304432343689

namespace A306637

/-- `A280261(n)*A333378(n)` -/
def P13325081304432343689.Spec : Prop :=
  ∀ n, P13325081304432343689.a n = A306637 n

end A306637

/-! ## A306637.P15992758015556312789

`A128834(n)*A324969(n+1)`
-/

namespace A306637.P15992758015556312789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n * A324969 (n + 1)

end

end A306637.P15992758015556312789

namespace A306637

/-- `A128834(n)*A324969(n+1)` -/
def P15992758015556312789.Spec : Prop :=
  ∀ n, P15992758015556312789.a n = A306637 n

end A306637

/-! ## A306637.P11024365141664925727

`A260192(n+1)*A333378(n)`
-/

namespace A306637.P11024365141664925727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260192 (n + 1) * A333378 n

end

end A306637.P11024365141664925727

namespace A306637

/-- `A260192(n+1)*A333378(n)` -/
def P11024365141664925727.Spec : Prop :=
  ∀ n, P11024365141664925727.a n = A306637 n

end A306637

/-! ## A306637.P17355496576114552369

`(A164965(n)-1)*A000045(n)`
-/

namespace A306637.P17355496576114552369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A164965 n - 1) * A000045 n

end

end A306637.P17355496576114552369

namespace A306637

/-- `(A164965(n)-1)*A000045(n)` -/
def P17355496576114552369.Spec : Prop :=
  ∀ n, P17355496576114552369.a n = A306637 n

end A306637

/-!
# A306638: a(n) is the norm of the fundamental unit of binary quadratic forms with discriminant D = A079896(n).

The programs for A306638, there is no canonical definition to state claims against.
-/

/-! ## A306638.P1915496433417651848

`A008836(A098925(n+1)*A283968(2*n+1))`
-/

namespace A306638.P1915496433417651848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A098925 (n + 1) * A283968 (2 * n + 1)).toNat

end

end A306638.P1915496433417651848

/-! ## A306638.P11349688722537838588

`A165586(A000040(n+1)*A046049(n+1))`
-/

namespace A306638.P11349688722537838588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165586 (A000040 (n + 1) * A046049 (n + 1)).toNat

end

end A306638.P11349688722537838588

/-! ## A306638.P8619698777178886145

`A057077(lcm(A186646(3*(n+1)), A276431(n)))`
-/

namespace A306638.P8619698777178886145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (Int.lcm (A186646 (3 * (n + 1))) (A276431 n))

end

end A306638.P8619698777178886145

/-!
# A306639: Numbers m such that Sum_{d|m} (sigma(d)/tau(d)) is an integer h where sigma(k) = the sum of the divisors of k (A000203) and tau(k) = the number of divisors of k (A000005).

The programs for A306639, there is no canonical definition to state claims against.
-/

/-! ## A306639.P14505231234513603084

`eq[1, A324500(n+1)]+1`
-/

namespace A306639.P14505231234513603084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324500 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A306639.P14505231234513603084

/-! ## A306639.P13811730096061254280

`record[(n+2)/A324500(n+2)]`
-/

namespace A306639.P13811730096061254280
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A324500 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306639.P13811730096061254280

/-! ## A306639.P13447292258191685243

`lt[A324499(n+1), n+2]+1`
-/

namespace A306639.P13447292258191685243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324499 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A306639.P13447292258191685243

/-! ## A306639.P10920963625894766357

`eq[1, A324500(A000038(n)+n)]`
-/

namespace A306639.P10920963625894766357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324500 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A306639.P10920963625894766357

/-! ## A306639.P6613844809717590967

`eq[1, A324500(abs(A000038(n)-n))]`
-/

namespace A306639.P6613844809717590967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324500 |A000038 n - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A306639.P6613844809717590967

/-! ## A306639.P5406692721391682121

`∪[A006005(n+1), A068992(n+1)]`
-/

namespace A306639.P5406692721391682121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A306639.P5406692721391682121

/-! ## A306639.P7309364816420707939

`∪[A056911(n+1), A068992(n+1)]`
-/

namespace A306639.P7309364816420707939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A306639.P7309364816420707939

/-! ## A306639.P8272571348234896257

`∪[A068992(n+1), A074918(n+1)]`
-/

namespace A306639.P8272571348234896257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A306639.P8272571348234896257

/-! ## A306639.P13672151080587197492

`∪[A068992(n+1), A093893(n+1)]`
-/

namespace A306639.P13672151080587197492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A306639.P13672151080587197492

/-! ## A306639.P8574008056951900966

`∪[A068992(n+1), A152955(n+1)]`
-/

namespace A306639.P8574008056951900966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A306639.P8574008056951900966

/-!
# A306641: A(n,k) = Sum_{j=0..n} (k*n)!/(j! * (n-j)!)^k, square array A(n,k) read by antidiagonals, for n >= 0, k >= 0.

The programs for A306641, there is no canonical definition to state claims against.
-/

/-! ## A306641.P3831892621925778500

`A089759(n)*A309010(n)`
-/

namespace A306641.P3831892621925778500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089759 n * A309010 n

end

end A306641.P3831892621925778500

/-! ## A306641.P4306437389116739447

`A187783(A061579(n))*A309010(n)`
-/

namespace A306641.P4306437389116739447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187783 (A061579 n).toNat * A309010 n

end

end A306641.P4306437389116739447

/-! ## A306641.P7436177171704390314

`A187783(A038722(n+2))*A309010(n)`
-/

namespace A306641.P7436177171704390314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187783 (A038722 (n + 2)).toNat * A309010 n

end

end A306641.P7436177171704390314

/-! ## A306641.P4452136904147123617

`A187783(A114327(n)+n)*A309010(n)`
-/

namespace A306641.P4452136904147123617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187783 (A114327 n + (n : ℤ)).toNat * A309010 n

end

end A306641.P4452136904147123617

/-!
# A306642: a(n) = Sum_{k=0..n} (3*n)!/(k! * (n-k)!)^3.

The programs for A306642, there is no canonical definition to state claims against.
-/

/-! ## A306642.P7669302296051359977

`C(2*n, n)*C(3*n, n)*A000172(n)`
-/

namespace A306642.P7669302296051359977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n * Nat.choose (3 * n) n : ℤ) * A000172 n

end

end A306642.P7669302296051359977

/-! ## A306642.P7203157065757654173

`C(2*n, n)*C(3*n, n)*sqrt(A052144(n))`
-/

namespace A306642.P7203157065757654173
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n * Nat.choose (3 * n) n : ℝ) * Real.sqrt (A052144 n : ℝ)

end

end A306642.P7203157065757654173

/-! ## A306642.P13690891814918465517

`A000172(n)*A006480(n)`
-/

namespace A306642.P13690891814918465517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000172 n * A006480 n

end

end A306642.P13690891814918465517

/-! ## A306642.P1547603049748726808

`A005809(n)*A181418(n)`
-/

namespace A306642.P1547603049748726808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n * A181418 n

end

end A306642.P1547603049748726808

/-! ## A306642.P6919076736887887621

`sqrt(A052144(n))*A006480(n)`
-/

namespace A306642.P6919076736887887621
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A052144 n : ℝ) * (A006480 n : ℝ)

end

end A306642.P6919076736887887621

/-!
# A306643: Numbers that, for some x, are the concatenation of x, x+1 and x+2 and are divisible by at least two of x, x+1 and x+2.

The programs for A306643, there is no canonical definition to state claims against.
-/

/-! ## A306643.P15469372859714340565

`A001703(eq[A078898(n), A094999(2*n)])`
-/

namespace A306643.P15469372859714340565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094999 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001703 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A306643.P15469372859714340565

/-!
# A306644: a(n) = Sum_{k=0..n} (n^2)!/(k! * (n-k)!)^n.

The programs for A306644, there is no canonical definition to state claims against.
-/

/-! ## A306644.P10063234032170940443

`A306641(∑[4*n])`
-/

namespace A306644.P10063234032170940443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306641 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A306644.P10063234032170940443

/-! ## A306644.P4547708145899377114

`A034841(n)*A167010(n)`
-/

namespace A306644.P4547708145899377114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034841 n * A167010 n

end

end A306644.P4547708145899377114

/-!
# A306645: a(n) is the least positive multiple of n belonging to A306263 if any, or a(n) = -1 otherwise.

The programs for A306645, there is no canonical definition to state claims against.
-/

/-! ## A306645.P12148641107805309505

`lcm(n+1, A284002(A057643(2*n+1)))`
-/

namespace A306645.P12148641107805309505
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A284002 (A057643 (2 * n + 1)).toNat)

end

end A306645.P12148641107805309505

/-! ## A306645.P11609749318066213044

`lcm(n+1, A058263(A065942(n)))`
-/

namespace A306645.P11609749318066213044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A058263 (A065942 n).toNat)

end

end A306645.P11609749318066213044

/-! ## A306645.P17190499400753736936

`(n+1)*gcd(2, ∏{p}[n, #])*A318313(A000108(n))`
-/

namespace A306645.P17190499400753736936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Nat.gcd 2 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℤ) * A318313 (A000108 n).toNat

end

end A306645.P17190499400753736936

/-! ## A306645.P8892604134577530169

`lcm(A008480(A001317(n+1)), A260423(n+1))`
-/

namespace A306645.P8892604134577530169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008480 (A001317 (n + 1)).toNat) (A260423 (n + 1))

end

end A306645.P8892604134577530169

/-!
# A306650: a(n) = denominator of Sum_{d|n} (d/sigma(d)) where sigma(k) = the sum of the divisors of k (A000203).

The programs for A306650, there is no canonical definition to state claims against.
-/

/-! ## A306650.P5963383552558731104

`A066099(A020107(n))*A265710(n+1)`
-/

namespace A306650.P5963383552558731104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A020107 n).toNat * A265710 (n + 1)

end

end A306650.P5963383552558731104

/-! ## A306650.P9103382841275402648

`A069934(n+1)/A069290(A115275(n))`
-/

namespace A306650.P9103382841275402648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069934 (n + 1) : ℚ) / (A069290 (A115275 n).toNat : ℚ)

end

end A306650.P9103382841275402648

/-! ## A306650.P7775476027094046898

`A324985(n+1)/A069290(A115275(n))`
-/

namespace A306650.P7775476027094046898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324985 (n + 1) : ℚ) / (A069290 (A115275 n).toNat : ℚ)

end

end A306650.P7775476027094046898

/-! ## A306650.P12732660165791875251

`A324985(n+1)/A276781(A357965(n))`
-/

namespace A306650.P12732660165791875251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324985 (n + 1) : ℚ) / (A276781 (A357965 n).toNat : ℚ)

end

end A306650.P12732660165791875251

/-!
# A306652: a(n) = Sum_{m=1..n} Sum_{k=1..n} [k divides n]*[n/k divides m]*[k divides m + 4].

The programs for A306652, there is no canonical definition to state claims against.
-/

/-! ## A306652.P17693935893765597778

`A000041(val(n+1, 2))*A001316(A087207(n+1))`
-/

namespace A306652.P17693935893765597778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.valuation (n + 1) 2) * A001316 (A087207 (n + 1)).toNat

end

end A306652.P17693935893765597778

/-! ## A306652.P13016879382104166462

`A000041(A007814(n+1))*A001316(A087207(n+1))`
-/

namespace A306652.P13016879382104166462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A007814 (n + 1)).toNat * A001316 (A087207 (n + 1)).toNat

end

end A306652.P13016879382104166462

/-! ## A306652.P16323707981504356265

`2^A001221(n+1)*A000688(A268526(n+1))`
-/

namespace A306652.P16323707981504356265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (n + 1) : ℤ) * (A000688 (A268526 (n + 1)).toNat : ℚ)

end

end A306652.P16323707981504356265

/-! ## A306652.P8660474046792515302

`A000005(∏{p}[n+1, #])*A000688(A268526(n+1))`
-/

namespace A306652.P8660474046792515302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), p) * A000688 (A268526 (n + 1)).toNat

end

end A306652.P8660474046792515302

/-! ## A306652.P2795749280836033460

`A055155(n+1)%A123289(A214362(n+1))`
-/

namespace A306652.P2795749280836033460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055155 (n + 1)) (A123289 ((A214362 (n + 1)).toNat + 32))

end

end A306652.P2795749280836033460

/-!
# A306653: a(n) = Sum_{m=1..n} Sum_{k=1..n} [k divides n]*[n/k divides m]*A008683(n/k)*n/k*[k divides m + 2^p]*A008683(k)*k, where p can be a positive integer: 1,2,3,4,5,...

The programs for A306653, the canonical program `A306653.P1510461962168641782` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306653 has offset 1).

The definition of A306653 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306653.P15503618733933087581

`A034444(n+1)*A092152(n+1)`
-/

namespace A306653.P15503618733933087581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) * A092152 (n + 1)

end

end A306653.P15503618733933087581

namespace A306653

/-- `A034444(n+1)*A092152(n+1)` -/
def P15503618733933087581.Spec : Prop :=
  ∀ n, P15503618733933087581.a n = A306653 (n + 1)

end A306653

/-! ## A306653.P11069698672752666060

`A037445(n+1)*A092152(n+1)`
-/

namespace A306653.P11069698672752666060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (n + 1) * A092152 (n + 1)

end

end A306653.P11069698672752666060

namespace A306653

/-- `A037445(n+1)*A092152(n+1)` -/
def P11069698672752666060.Spec : Prop :=
  ∀ n, P11069698672752666060.a n = A306653 (n + 1)

end A306653

/-! ## A306653.P1510461962168641782

`A060594(n+1)*A092673(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A306653

/-- `A060594(n+1)*A092673(n+1)` -/
def P1510461962168641782.Spec : Prop :=
  ∀ n, P1510461962168641782.a n = A306653 (n + 1)

theorem P1510461962168641782.correct : P1510461962168641782.Spec := by
  intro n
  simp only [A306653, Nat.add_sub_cancel]

end A306653

/-! ## A306653.P10015001146605816758

`A061389(n+1)*A092152(n+1)`
-/

namespace A306653.P10015001146605816758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061389 (n + 1) * A092152 (n + 1)

end

end A306653.P10015001146605816758

namespace A306653

/-- `A061389(n+1)*A092152(n+1)` -/
def P10015001146605816758.Spec : Prop :=
  ∀ n, P10015001146605816758.a n = A306653 (n + 1)

end A306653

/-! ## A306653.P5826330486579401432

`A069733(n+1)*A092152(n+1)`
-/

namespace A306653.P5826330486579401432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069733 (n + 1) * A092152 (n + 1)

end

end A306653.P5826330486579401432

namespace A306653

/-- `A069733(n+1)*A092152(n+1)` -/
def P5826330486579401432.Spec : Prop :=
  ∀ n, P5826330486579401432.a n = A306653 (n + 1)

end A306653

/-! ## A306653.P6690271360900675537

`A092673(n+1)*A174273(n+1)`
-/

namespace A306653.P6690271360900675537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092673 (n + 1) * A174273 (n + 1)

end

end A306653.P6690271360900675537

namespace A306653

/-- `A092673(n+1)*A174273(n+1)` -/
def P6690271360900675537.Spec : Prop :=
  ∀ n, P6690271360900675537.a n = A306653 (n + 1)

end A306653

/-! ## A306653.P7771953238090588425

`A086831(n+1)*A228441(n+1)`
-/

namespace A306653.P7771953238090588425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086831 (n + 1) * A228441 (n + 1)

end

end A306653.P7771953238090588425

namespace A306653

/-- `A086831(n+1)*A228441(n+1)` -/
def P7771953238090588425.Spec : Prop :=
  ∀ n, P7771953238090588425.a n = A306653 (n + 1)

end A306653

/-! ## A306653.P13211324698550576400

`A092152(n+1)*A286324(n+1)`
-/

namespace A306653.P13211324698550576400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092152 (n + 1) * A286324 (n + 1)

end

end A306653.P13211324698550576400

namespace A306653

/-- `A092152(n+1)*A286324(n+1)` -/
def P13211324698550576400.Spec : Prop :=
  ∀ n, P13211324698550576400.a n = A306653 (n + 1)

end A306653

/-! ## A306653.P9545156504215783029

`A092673(n+1)*A299150(n+1)`
-/

namespace A306653.P9545156504215783029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092673 (n + 1) * A299150 (n + 1)

end

end A306653.P9545156504215783029

namespace A306653

/-- `A092673(n+1)*A299150(n+1)` -/
def P9545156504215783029.Spec : Prop :=
  ∀ n, P9545156504215783029.a n = A306653 (n + 1)

end A306653

/-! ## A306653.P2576627556254705893

`A092152(n+1)*A318307(n+1)`
-/

namespace A306653.P2576627556254705893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092152 (n + 1) * A318307 (n + 1)

end

end A306653.P2576627556254705893

namespace A306653

/-- `A092152(n+1)*A318307(n+1)` -/
def P2576627556254705893.Spec : Prop :=
  ∀ n, P2576627556254705893.a n = A306653 (n + 1)

end A306653

/-! ## A306653.P5603401601461952156

`A092152(n+1)*A318465(n+1)`
-/

namespace A306653.P5603401601461952156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092152 (n + 1) * A318465 (n + 1)

end

end A306653.P5603401601461952156

namespace A306653

/-- `A092152(n+1)*A318465(n+1)` -/
def P5603401601461952156.Spec : Prop :=
  ∀ n, P5603401601461952156.a n = A306653 (n + 1)

end A306653

/-! ## A306653.P6689045006525229942

`A092152(n+1)*A318472(n+1)`
-/

namespace A306653.P6689045006525229942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092152 (n + 1) * A318472 (n + 1)

end

end A306653.P6689045006525229942

namespace A306653

/-- `A092152(n+1)*A318472(n+1)` -/
def P6689045006525229942.Spec : Prop :=
  ∀ n, P6689045006525229942.a n = A306653 (n + 1)

end A306653

/-! ## A306653.P6959951967351271451

`A092673(n+1)*A320111(n+1)`
-/

namespace A306653.P6959951967351271451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092673 (n + 1) * A320111 (n + 1)

end

end A306653.P6959951967351271451

namespace A306653

/-- `A092673(n+1)*A320111(n+1)` -/
def P6959951967351271451.Spec : Prop :=
  ∀ n, P6959951967351271451.a n = A306653 (n + 1)

end A306653

/-! ## A306653.P6845247344144115505

`A092152(n+1)*A322483(n+1)`
-/

namespace A306653.P6845247344144115505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092152 (n + 1) * A322483 (n + 1)

end

end A306653.P6845247344144115505

namespace A306653

/-- `A092152(n+1)*A322483(n+1)` -/
def P6845247344144115505.Spec : Prop :=
  ∀ n, P6845247344144115505.a n = A306653 (n + 1)

end A306653

/-! ## A306653.P13952253349239449657

`A092152(n+1)*A331109(n+1)`
-/

namespace A306653.P13952253349239449657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092152 (n + 1) * A331109 (n + 1)

end

end A306653.P13952253349239449657

namespace A306653

/-- `A092152(n+1)*A331109(n+1)` -/
def P13952253349239449657.Spec : Prop :=
  ∀ n, P13952253349239449657.a n = A306653 (n + 1)

end A306653

/-! ## A306653.P341344053287487688

`A092152(n+1)*A335385(n+1)`
-/

namespace A306653.P341344053287487688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092152 (n + 1) * A335385 (n + 1)

end

end A306653.P341344053287487688

namespace A306653

/-- `A092152(n+1)*A335385(n+1)` -/
def P341344053287487688.Spec : Prop :=
  ∀ n, P341344053287487688.a n = A306653 (n + 1)

end A306653

/-! ## A306653.P2530662780097908379

`A092152(n+1)*A347291(n+1)`
-/

namespace A306653.P2530662780097908379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092152 (n + 1) * A347291 (n + 1)

end

end A306653.P2530662780097908379

namespace A306653

/-- `A092152(n+1)*A347291(n+1)` -/
def P2530662780097908379.Spec : Prop :=
  ∀ n, P2530662780097908379.a n = A306653 (n + 1)

end A306653

/-! ## A306653.P6970833854117863441

`A092152(n+1)*A365171(n+1)`
-/

namespace A306653.P6970833854117863441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092152 (n + 1) * A365171 (n + 1)

end

end A306653.P6970833854117863441

namespace A306653

/-- `A092152(n+1)*A365171(n+1)` -/
def P6970833854117863441.Spec : Prop :=
  ∀ n, P6970833854117863441.a n = A306653 (n + 1)

end A306653

/-! ## A306653.P8519160644073951128

`(A155828(n+1)+1)*A092673(n+1)`
-/

namespace A306653.P8519160644073951128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155828 (n + 1) + 1) * A092673 (n + 1)

end

end A306653.P8519160644073951128

namespace A306653

/-- `(A155828(n+1)+1)*A092673(n+1)` -/
def P8519160644073951128.Spec : Prop :=
  ∀ n, P8519160644073951128.a n = A306653 (n + 1)

theorem P8519160644073951128.correct : P8519160644073951128.Spec := by
  intro n
  simp only [A306653, Nat.add_sub_cancel, A306653.P8519160644073951128.a, A306653.P1510461962168641782.a, A060594, A060594.P2818484457649056228.f1, A060594.P2818484457649056228.a, A092673, A092673.P12157065487718693493.a, A155828, A155828.P14308889291480101554.a, A056832, A056832.P3449662837231089589.a, A092152, A092152.P12315494469493917720.a, A114643, A114643.P3385208476335884825.a, A035263, A035263.P6825362395192920526.a, A050361, A050361.P4609984906141832222.f1, A050361.P4609984906141832222.a, A063659, A063659.P17976112420004081821.a, A212793, A212793.P4153428830166235404.a, A359551, A359551.P4733184215772970261.f1, A359551.P4733184215772970261.a, A000035, A000035.P2023072528413494694.a, A001511, A001511.P17146462531039486101.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A053864, A053864.P17726123655565789623.f1, A053864.P17726123655565789623.a, A063658, A063658.P15417569516115138274.f1, A063658.P15417569516115138274.a, A347586, A347586.P6878572311121842152.f1, A347586.P6878572311121842152.a, A365632, A365632.P6636790932743859901.f1, A365632.P6636790932743859901.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A306653

/-! ## A306653.P7190010210461060892

`2^val(A319100(n+1), 2)*A092673(n+1)`
-/

namespace A306653.P7190010210461060892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.valuation (A319100 (n + 1)).toNat 2 : ℤ) * A092673 (n + 1)

end

end A306653.P7190010210461060892

namespace A306653

/-- `2^val(A319100(n+1), 2)*A092673(n+1)` -/
def P7190010210461060892.Spec : Prop :=
  ∀ n, P7190010210461060892.a n = A306653 (n + 1)

end A306653

/-!
# A306655: Numbers n such that lcm(sigma(n), n) = tau(n) * sigma(n) where sigma(k) = the sum of the divisors of k (A000203) and tau(k) = the number of divisors of k (A000005).

The programs for A306655, there is no canonical definition to state claims against.
-/

/-! ## A306655.P98894872077705344

`∏[A187763(A000108(2*n))]`
-/

namespace A306655.P98894872077705344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187763 (A000108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A306655.P98894872077705344

/-!
# A306656: Number of ways to fill a 3D matrix with n distinct values.

The programs for A306656, there is no canonical definition to state claims against.
-/

/-! ## A306656.P5856703969385638895

`n!*A028310(∑{d}[n, A000005(#)])`
-/

namespace A306656.P5856703969385638895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A028310 (∑ d ∈ Nat.divisors (f1 n), A000005 d).toNat

end

end A306656.P5856703969385638895

/-! ## A306656.P3438981170536148177

`n!*A028310(∑{d}[n, A179941(#)])`
-/

namespace A306656.P3438981170536148177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A028310 (∑ d ∈ Nat.divisors (f1 n), A179941 d).toNat

end

end A306656.P3438981170536148177

/-! ## A306656.P15897059808324706990

`A000142(n)*A007425(A028310(n))`
-/

namespace A306656.P15897059808324706990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A007425 (A028310 n).toNat

end

end A306656.P15897059808324706990

/-! ## A306656.P914786035056383161

`A000142(n)*A110655(A211437(n))`
-/

namespace A306656.P914786035056383161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A110655 (A211437 n).toNat

end

end A306656.P914786035056383161

/-!
# A306659: x-coordinates of a counterclockwise knight's tour on an infinite board starting at the origin and then successively visiting fields in concentric rings of width 2. y-coordinates are in A306660.

The programs for A306659, there is no canonical definition to state claims against.
-/

/-! ## A306659.P7677355858852125818

`A290739(A064622(n+1))-A306660(n+5)`
-/

namespace A306659.P7677355858852125818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290739 (A064622 (n + 1)).toNat - A306660 (n + 5)

end

end A306659.P7677355858852125818

/-! ## A306659.P15844462523265130736

`A290739(A187306(n+1))-A306660(n+5)`
-/

namespace A306659.P15844462523265130736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290739 (A187306 (n + 1)).toNat - A306660 (n + 5)

end

end A306659.P15844462523265130736

/-!
# A306660: y-coordinates corresponding to the knight's tour described in A306659.

The programs for A306660, there is no canonical definition to state claims against.
-/

/-! ## A306660.P15739440095412923265

`A360171(n+2)+A010054(A220461(2*n+1))`
-/

namespace A306660.P15739440095412923265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360171 (n + 2) + A010054 (A220461 (2 * n + 1)).toNat

end

end A306660.P15739440095412923265

/-! ## A306660.P5554479260381669747

`A360171(n+2)-A010815(A033286(3*(n+1)))`
-/

namespace A306660.P5554479260381669747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360171 (n + 2) - A010815 (A033286 (3 * (n + 1))).toNat

end

end A306660.P5554479260381669747

/-! ## A306660.P13592142199684313913

`A109082(A000079(n))*A360171(n+2)`
-/

namespace A306660.P13592142199684313913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (A000079 n).toNat * A360171 (n + 2)

end

end A306660.P13592142199684313913

/-! ## A306660.P6757902233673480543

`A306659(n+5)%record[A306697(n+1)]`
-/

namespace A306660.P6757902233673480543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306659 (n + 5)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A306660.P6757902233673480543

/-! ## A306660.P14755683631239209703

`A306659(n+5)%A050430(A306687(n))`
-/

namespace A306660.P14755683631239209703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306659 (n + 5)) (A050430 (A306687 n).toNat)

end

end A306660.P14755683631239209703

/-!
# A306661: Numbers with chained divisors: Numbers k with divisors such that the last digit of every divisor is the same as the first digit of the next divisor.

The programs for A306661, there is no canonical definition to state claims against.
-/

/-! ## A306661.P3487931184347281496

`∩[A084981(n+1), A206287(n+1)]`
-/

namespace A306661.P3487931184347281496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306661.P3487931184347281496

/-! ## A306661.P10136179432798907150

`∪[A045707(n+1), A208261(n+1)]`
-/

namespace A306661.P10136179432798907150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A306661.P10136179432798907150

/-! ## A306661.P4357775877054203319

`∪[A045707(n+1), A208262(n+1)]`
-/

namespace A306661.P4357775877054203319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A306661.P4357775877054203319

/-! ## A306661.P12494861433720243163

`∪[A045707(n+1), A307861(n+1)]`
-/

namespace A306661.P12494861433720243163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A306661.P12494861433720243163

/-! ## A306661.P16543264570865512362

`∪[A045707(n+1), A385345(n+1)]`
-/

namespace A306661.P16543264570865512362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A306661.P16543264570865512362

/-!
# A306662: Least number k such that the determinant of the circulant matrix of its representation in base 2 is equal to n.

The programs for A306662, there is no canonical definition to state claims against.
-/

/-! ## A306662.P6913771932451688093

`record[Δ[Δ[A333380(n+1)-n]-n]]`
-/

namespace A306662.P6913771932451688093
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333380 (n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306662.P6913771932451688093

/-! ## A306662.P9446298468886057214

`∏{e}[∏[record[A323308(n+3)+n]], #+1]-1`
-/

namespace A306662.P9446298468886057214
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323308 (n + 3) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℤ) - 1

end

end A306662.P9446298468886057214

/-! ## A306662.P10497075323194765805

`A340500(A158879(n))`
-/

namespace A306662.P10497075323194765805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340500 (A158879 n).toNat

end

end A306662.P10497075323194765805

/-! ## A306662.P10868283560642669551

`A266539(A257273(n))`
-/

namespace A306662.P10868283560642669551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266539 (A257273 n).toNat

end

end A306662.P10868283560642669551

/-!
# A306665: Expansion of Sum_{k>=0} k! * x^(k*(k+1)/2) / Product_{j=1..k} (1 - x^j)^j.

The programs for A306665, there is no canonical definition to state claims against.
-/

/-! ## A306665.P5333799469823500893

`or(1, A265564(A265581(n)))`
-/

namespace A306665.P5333799469823500893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A265564 (A265581 n).toNat)

end

end A306665.P5333799469823500893

/-! ## A306665.P3558199569468916555

`A344742(A025047(n)-A048720(n))`
-/

namespace A306665.P3558199569468916555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344742 (A025047 n - A048720 n).toNat

end

end A306665.P3558199569468916555

/-! ## A306665.P16940337589456352844

`A344742(A025047(n)-A325820(n))`
-/

namespace A306665.P16940337589456352844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344742 (A025047 n - A325820 n).toNat

end

end A306665.P16940337589456352844

/-! ## A306665.P329393090981707194

`A293754(A216695(n)+A216641(n+1))`
-/

namespace A306665.P329393090981707194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293754 (A216695 n + A216641 (n + 1)).toNat

end

end A306665.P329393090981707194

/-! ## A306665.P10249166890233258949

`A156724(A018064(n))`
-/

namespace A306665.P10249166890233258949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156724 (A018064 n).toNat

end

end A306665.P10249166890233258949

/-!
# A306668: Difference between numbers of binary bracketings of 0^0^...^0 with n 0's giving the result 1 and those giving the result 0, with conventions that 0^0=1^0=1^1=1, 0^1=0.

The programs for A306668, there is no canonical definition to state claims against.
-/

/-! ## A306668.P1818505316810629956

`A111160(comp[2*(n+1)]-n)-A055113(n)`
-/

namespace A306668.P1818505316810629956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111160 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n) - A055113 n

end

end A306668.P1818505316810629956

/-!
# A306669: Number of aperiodic permutation necklaces of weight n.

The programs for A306669, there is no canonical definition to state claims against.
-/

/-! ## A306669.P2698529883960717825

`A324514(n+1)/(n+1)`
-/

namespace A306669.P2698529883960717825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324514 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A306669.P2698529883960717825

/-! ## A306669.P13568511295030920337

`A343488(∑[n+1])/(n+1)`
-/

namespace A306669.P13568511295030920337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343488 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A306669.P13568511295030920337

/-! ## A306669.P17491065596063834035

`(A343488(A025747(n))+A185264(n))/(n+1)`
-/

namespace A306669.P17491065596063834035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343488 (A025747 n).toNat + A185264 n : ℚ) / (n + 1 : ℚ)

end

end A306669.P17491065596063834035

/-! ## A306669.P11876430031984105722

`A343488(A025747(n))%A211210(n+2)/(n+1)`
-/

namespace A306669.P11876430031984105722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A343488 (A025747 n).toNat) (A211210 (n + 2)) : ℚ) / (n + 1 : ℚ)

end

end A306669.P11876430031984105722

/-!
# A306671: a(n) = gcd(tau(n), pod(n)) where tau(k) = the number of the divisors of k (A000005) and pod(k) = the product of the divisors of k (A007955).

The programs for A306671, the canonical program `A306671.P11706413506972891445` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306671 has offset 1).

The definition of A306671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306671.P1525754028485950386

`gcd((n+1)^10, A000005(n+1))`
-/

namespace A306671.P1525754028485950386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1) ^ 10 : ℤ) (A000005 (n + 1))

end

end A306671.P1525754028485950386

namespace A306671

/-- `gcd((n+1)^10, A000005(n+1))` -/
def P1525754028485950386.Spec : Prop :=
  ∀ n, (P1525754028485950386.a n : ℤ) = A306671 (n + 1)

end A306671

/-! ## A306671.P15901462364429469572

`Δ[A006218(n)]/A137927(n+1)`
-/

namespace A306671.P15901462364429469572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A137927 (n + 1) : ℚ)

end

end A306671.P15901462364429469572

namespace A306671

/-- `Δ[A006218(n)]/A137927(n+1)` -/
def P15901462364429469572.Spec : Prop :=
  ∀ n, P15901462364429469572.a n = (A306671 (n + 1) : ℚ)

end A306671

/-! ## A306671.P1123147826210078058

`A000005(n+1)/A137927(n+1)`
-/

namespace A306671.P1123147826210078058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A137927 (n + 1) : ℚ)

end

end A306671.P1123147826210078058

namespace A306671

/-- `A000005(n+1)/A137927(n+1)` -/
def P1123147826210078058.Spec : Prop :=
  ∀ n, P1123147826210078058.a n = (A306671 (n + 1) : ℚ)

end A306671

/-! ## A306671.P7610805531184664897

`gcd(A000005(n+1), A017684(n+1))`
-/

namespace A306671.P7610805531184664897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (n + 1)) (A017684 (n + 1))

end

end A306671.P7610805531184664897

namespace A306671

/-- `gcd(A000005(n+1), A017684(n+1))` -/
def P7610805531184664897.Spec : Prop :=
  ∀ n, (P7610805531184664897.a n : ℤ) = A306671 (n + 1)

end A306671

/-! ## A306671.P7151963499540834393

`gcd(A184628(n+1)², A329484(n+1))`
-/

namespace A306671.P7151963499540834393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A184628 (n + 1) ^ 2) (A329484 (n + 1))

end

end A306671.P7151963499540834393

namespace A306671

/-- `gcd(A184628(n+1)², A329484(n+1))` -/
def P7151963499540834393.Spec : Prop :=
  ∀ n, (P7151963499540834393.a n : ℤ) = A306671 (n + 1)

end A306671

/-! ## A306671.P11959741156603022601

`A038040(n+1)/((n+1)*A137927(n+1))`
-/

namespace A306671.P11959741156603022601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / ((n + 1 : ℤ) * A137927 (n + 1) : ℚ)

end

end A306671.P11959741156603022601

namespace A306671

/-- `A038040(n+1)/((n+1)*A137927(n+1))` -/
def P11959741156603022601.Spec : Prop :=
  ∀ n, P11959741156603022601.a n = (A306671 (n + 1) : ℚ)

end A306671

/-! ## A306671.P1448207732756658861

`∑{d}[n+1, A008683(#)*A334662((n+1)/#)]`
-/

namespace A306671.P1448207732756658861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A334662 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A306671.P1448207732756658861

namespace A306671

/-- `∑{d}[n+1, A008683(#)*A334662((n+1)/#)]` -/
def P1448207732756658861.Spec : Prop :=
  ∀ n, P1448207732756658861.a n = A306671 (n + 1)

end A306671

/-! ## A306671.P845295167800863457

`(A006218(n+1)-A006218(n))/A137927(n+1)`
-/

namespace A306671.P845295167800863457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006218 (n + 1) - A006218 n : ℚ) / (A137927 (n + 1) : ℚ)

end

end A306671.P845295167800863457

namespace A306671

/-- `(A006218(n+1)-A006218(n))/A137927(n+1)` -/
def P845295167800863457.Spec : Prop :=
  ∀ n, P845295167800863457.a n = (A306671 (n + 1) : ℚ)

end A306671

/-! ## A306671.P12819574232855302748

`A000027(A038040(n+1)/(n+1))/A137927(n+1)`
-/

namespace A306671.P12819574232855302748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (SequenceMachineLib.roundAway ((A038040 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat : ℚ) / (A137927 (n + 1) : ℚ)

end

end A306671.P12819574232855302748

namespace A306671

/-- `A000027(A038040(n+1)/(n+1))/A137927(n+1)` -/
def P12819574232855302748.Spec : Prop :=
  ∀ n, P12819574232855302748.a n = (A306671 (n + 1) : ℚ)

end A306671

/-! ## A306671.P11706413506972891445

`∑{d}[n+1, A057427(#)]/A137927(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A306671

/-- `∑{d}[n+1, A057427(#)]/A137927(n+1)` -/
def P11706413506972891445.Spec : Prop :=
  ∀ n, P11706413506972891445.a n = (A306671 (n + 1) : ℚ)

end A306671

/-! ## A306671.P544909848863601899

`A007955(n+1)/A291186(n+1)`
-/

namespace A306671.P544909848863601899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A291186 (n + 1) : ℚ)

end

end A306671.P544909848863601899

namespace A306671

/-- `A007955(n+1)/A291186(n+1)` -/
def P544909848863601899.Spec : Prop :=
  ∀ n, P544909848863601899.a n = (A306671 (n + 1) : ℚ)

end A306671

/-! ## A306671.P245455929351757185

`A394346(n+1)/A324528(n+1)`
-/

namespace A306671.P245455929351757185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A394346 (n + 1) : ℚ) / (A324528 (n + 1) : ℚ)

end

end A306671.P245455929351757185

namespace A306671

/-- `A394346(n+1)/A324528(n+1)` -/
def P245455929351757185.Spec : Prop :=
  ∀ n, P245455929351757185.a n = (A306671 (n + 1) : ℚ)

end A306671

/-! ## A306671.P9007411703118030886

`gcd(A007955(n+1), A125518(n+1))`
-/

namespace A306671.P9007411703118030886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007955 (n + 1)) (A125518 (n + 1))

end

end A306671.P9007411703118030886

namespace A306671

/-- `gcd(A007955(n+1), A125518(n+1))` -/
def P9007411703118030886.Spec : Prop :=
  ∀ n, (P9007411703118030886.a n : ℤ) = A306671 (n + 1)

end A306671

/-! ## A306671.P5582063813756857700

`A000005(n+1)*A007955(n+1)/A324528(n+1)`
-/

namespace A306671.P5582063813756857700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) * A007955 (n + 1) : ℚ) / (A324528 (n + 1) : ℚ)

end

end A306671.P5582063813756857700

namespace A306671

/-- `A000005(n+1)*A007955(n+1)/A324528(n+1)` -/
def P5582063813756857700.Spec : Prop :=
  ∀ n, P5582063813756857700.a n = (A306671 (n + 1) : ℚ)

end A306671

/-! ## A306671.P9124514818463526440

`gcd(A193679(n+1), A329484(n+1))`
-/

namespace A306671.P9124514818463526440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A193679 (n + 1)) (A329484 (n + 1))

end

end A306671.P9124514818463526440

namespace A306671

/-- `gcd(A193679(n+1), A329484(n+1))` -/
def P9124514818463526440.Spec : Prop :=
  ∀ n, (P9124514818463526440.a n : ℤ) = A306671 (n + 1)

end A306671

/-! ## A306671.P5239551997654695139

`A001222(A100587(n+1)+1)/A137927(n+1)`
-/

namespace A306671.P5239551997654695139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A100587 (n + 1) + 1).toNat : ℚ) / (A137927 (n + 1) : ℚ)

end

end A306671.P5239551997654695139

namespace A306671

/-- `A001222(A100587(n+1)+1)/A137927(n+1)` -/
def P5239551997654695139.Spec : Prop :=
  ∀ n, P5239551997654695139.a n = (A306671 (n + 1) : ℚ)

end A306671

/-!
# A306672: Partial sums of the even Lucas numbers (A014448).

The programs for A306672, the canonical program `A306672.P9123981668470617684` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306672 has offset 0).

The definition of A306672 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A306672.P9123981668470617684

`(A000032(3*n+2)-1)/2+1`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A306672

/-- `(A000032(3*n+2)-1)/2+1` -/
def P9123981668470617684.Spec : Prop :=
  ∀ n, P9123981668470617684.a n = (A306672 n : ℚ)

end A306672

/-! ## A306672.P14255400805506472344

`ogf((2-4x)/(1-5x+3x^2+x^3))`
-/

namespace A306672.P14255400805506472344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -4] [1, -5, 3, 1] n

end

end A306672.P14255400805506472344

namespace A306672

/-- `ogf((2-4x)/(1-5x+3x^2+x^3))` -/
def P14255400805506472344.Spec : Prop :=
  ∀ n, P14255400805506472344.a n = A306672 n

end A306672

/-! ## A306672.P14374831848481565379

`∑[round(ϕ^floor(3/acot(n)))]`
-/

namespace A306672.P14374831848481565379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ (⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306672.P14374831848481565379

namespace A306672

/-- `∑[round(ϕ^floor(3/acot(n)))]` -/
def P14374831848481565379.Spec : Prop :=
  ∀ n, P14374831848481565379.a n = A306672 n

end A306672

/-! ## A306672.P5158022941631178748

`∑[2*round(ϕ^(3*n)/2)]`
-/

namespace A306672.P5158022941631178748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway (Real.goldenRatio ^ (3 * n) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306672.P5158022941631178748

namespace A306672

/-- `∑[2*round(ϕ^(3*n)/2)]` -/
def P5158022941631178748.Spec : Prop :=
  ∀ n, P5158022941631178748.a n = A306672 n

end A306672

/-! ## A306672.P2342254825458901518

`a(n-1)+round(ϕ^floor(3/acot(n)))` with `a(0)=2`
-/

namespace A306672.P2342254825458901518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + SequenceMachineLib.roundAway (Real.goldenRatio ^ (⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ : ℤ))

end

end A306672.P2342254825458901518

namespace A306672

/-- `a(n-1)+round(ϕ^floor(3/acot(n)))` -/
def P2342254825458901518.Spec : Prop :=
  ∀ n, P2342254825458901518.a n = A306672 n

end A306672

/-! ## A306672.P14011694345980858020

`4*a(n-1)+a(n-2)-2` with `a(0)=2, a(1)=6`
-/

namespace A306672.P14011694345980858020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6] fun n a =>
  4 * a (n - 1) + (a (n - 2) - 2)

end

end A306672.P14011694345980858020

namespace A306672

/-- `4*a(n-1)+a(n-2)-2` -/
def P14011694345980858020.Spec : Prop :=
  ∀ n, P14011694345980858020.a n = A306672 n

end A306672

/-! ## A306672.P13607014149174131901

`4*a(n-1)-(2-a(n-2))` with `a(0)=2, a(1)=6`
-/

namespace A306672.P13607014149174131901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6] fun n a =>
  4 * a (n - 1) - (2 - a (n - 2))

end

end A306672.P13607014149174131901

namespace A306672

/-- `4*a(n-1)-(2-a(n-2))` -/
def P13607014149174131901.Spec : Prop :=
  ∀ n, P13607014149174131901.a n = A306672 n

end A306672

/-! ## A306672.P168852191321527969

`2*∑[A001077(n)]`
-/

namespace A306672.P168852191321527969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001077 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A306672.P168852191321527969

namespace A306672

/-- `2*∑[A001077(n)]` -/
def P168852191321527969.Spec : Prop :=
  ∀ n, P168852191321527969.a n = A306672 n

end A306672

/-! ## A306672.P14012919510555282720

`A364754(n+1)+1`
-/

namespace A306672.P14012919510555282720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364754 (n + 1) + 1

end

end A306672.P14012919510555282720

namespace A306672

/-- `A364754(n+1)+1` -/
def P14012919510555282720.Spec : Prop :=
  ∀ n, P14012919510555282720.a n = A306672 n

end A306672

/-! ## A306672.P13264637494874734942

`A173495(3*n+2)`
-/

namespace A306672.P13264637494874734942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173495 (3 * n + 2)

end

end A306672.P13264637494874734942

namespace A306672

/-- `A173495(3*n+2)` -/
def P13264637494874734942.Spec : Prop :=
  ∀ n, P13264637494874734942.a n = A306672 n

end A306672

/-! ## A306672.P10809407781080083859

`A364587(3*n+2)`
-/

namespace A306672.P10809407781080083859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364587 (3 * n + 2)

end

end A306672.P10809407781080083859

namespace A306672

/-- `A364587(3*n+2)` -/
def P10809407781080083859.Spec : Prop :=
  ∀ n, P10809407781080083859.a n = A306672 n

end A306672

/-! ## A306672.P13842751390930283438

`A366043(3*n+2)`
-/

namespace A306672.P13842751390930283438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366043 (3 * n + 2)

end

end A306672.P13842751390930283438

namespace A306672

/-- `A366043(3*n+2)` -/
def P13842751390930283438.Spec : Prop :=
  ∀ n, P13842751390930283438.a n = A306672 n

end A306672

/-! ## A306672.P4040644688078876211

`A174542(Δ[n²])+1`
-/

namespace A306672.P4040644688078876211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174542 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A306672.P4040644688078876211

namespace A306672

/-- `A174542(Δ[n²])+1` -/
def P4040644688078876211.Spec : Prop :=
  ∀ n, P4040644688078876211.a n = A306672 n

end A306672

/-! ## A306672.P10105987934107143692

`2*∑[A014448(n)/2]`
-/

namespace A306672.P10105987934107143692
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014448 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A306672.P10105987934107143692

namespace A306672

/-- `2*∑[A014448(n)/2]` -/
def P10105987934107143692.Spec : Prop :=
  ∀ n, P10105987934107143692.a n = (A306672 n : ℚ)

end A306672

/-! ## A306672.P4937505892961473498

`∑[A100233(n)]+1+n`
-/

namespace A306672.P4937505892961473498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A306672.P4937505892961473498

namespace A306672

/-- `∑[A100233(n)]+1+n` -/
def P4937505892961473498.Spec : Prop :=
  ∀ n, P4937505892961473498.a n = A306672 n

end A306672

/-! ## A306672.P15711555975511781571

`2*round(A120775(n+1)/2)`
-/

namespace A306672.P15711555975511781571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway ((A120775 (n + 1) : ℚ) / 2)

end

end A306672.P15711555975511781571

namespace A306672

/-- `2*round(A120775(n+1)/2)` -/
def P15711555975511781571.Spec : Prop :=
  ∀ n, P15711555975511781571.a n = A306672 n

end A306672

/-! ## A306672.P16201356965889995721

`A000032(3*n)+a(n-1)` with `a(0)=2`
-/

namespace A306672.P16201356965889995721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000032 (3 * n) + a (n - 1)

end

end A306672.P16201356965889995721

namespace A306672

/-- `A000032(3*n)+a(n-1)` -/
def P16201356965889995721.Spec : Prop :=
  ∀ n, P16201356965889995721.a n = A306672 n

end A306672

/-! ## A306672.P4256069639280397366

`A169985(3*n)+a(n-1)` with `a(0)=2`
-/

namespace A306672.P4256069639280397366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A169985 (3 * n) + a (n - 1)

end

end A306672.P4256069639280397366

namespace A306672

/-- `A169985(3*n)+a(n-1)` -/
def P4256069639280397366.Spec : Prop :=
  ∀ n, P4256069639280397366.a n = A306672 n

end A306672

/-! ## A306672.P6110523199733393545

`A245968(A016789(n))+1`
-/

namespace A306672.P6110523199733393545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245968 (A016789 n).toNat + 1

end

end A306672.P6110523199733393545

namespace A306672

/-- `A245968(A016789(n))+1` -/
def P6110523199733393545.Spec : Prop :=
  ∀ n, P6110523199733393545.a n = A306672 n

end A306672

/-! ## A306672.P11260028915466358990

`A097924(n)-A049651(n)`
-/

namespace A306672.P11260028915466358990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097924 n - A049651 n

end

end A306672.P11260028915466358990

namespace A306672

/-- `A097924(n)-A049651(n)` -/
def P11260028915466358990.Spec : Prop :=
  ∀ n, P11260028915466358990.a n = A306672 n

end A306672

/-!
# A306673: a(n) is the number of distinct, non-similar acute triangles with integer sides and largest side <= n.

The programs for A306673, there is no canonical definition to state claims against.
-/

/-! ## A306673.P12450498153134630080

`A086614(A047187(n+1))+∑[n]`
-/

namespace A306673.P12450498153134630080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086614 (A047187 (n + 1)).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A306673.P12450498153134630080

/-! ## A306673.P15776027611197013689

`A249858(A051033(n))+∑[n]+1`
-/

namespace A306673.P15776027611197013689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249858 (A051033 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A306673.P15776027611197013689

/-! ## A306673.P10361277681422636970

`A006918(n)+A000010(A276142(n+1))`
-/

namespace A306673.P10361277681422636970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n + A000010 (A276142 (n + 1)).toNat

end

end A306673.P10361277681422636970

/-! ## A306673.P17263372289190736202

`A156552(n+1)+A003002(A285447(n))`
-/

namespace A306673.P17263372289190736202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1) + A003002 (A285447 n).toNat

end

end A306673.P17263372289190736202

/-!
# A306674: Number of distinct non-similar obtuse triangles with integer sides and length of largest side <= n.

The programs for A306674, there is no canonical definition to state claims against.
-/

/-! ## A306674.P4646788405588129853

`∑[A236384(n+1)]`
-/

namespace A306674.P4646788405588129853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306674.P4646788405588129853

/-! ## A306674.P18051951032662426819

`∑[∑[n+2-and(1, n)]]/2-∑[A247588(n+1)]`
-/

namespace A306674.P18051951032662426819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (Nat.land 1 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247588 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2 - ((∑ j ∈ Finset.range (n + 1), f3 j : ℤ) : ℚ)

end

end A306674.P18051951032662426819

/-! ## A306674.P16765128313215107823

`A002623(n)-∑[A247588(n+1)]`
-/

namespace A306674.P16765128313215107823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306674.P16765128313215107823

/-! ## A306674.P14051267255362354056

`A247587(n+1)+A224921(n+2)`
-/

namespace A306674.P14051267255362354056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247587 (n + 1) + A224921 (n + 2)

end

end A306674.P14051267255362354056

/-! ## A306674.P5428316545819843985

`∑[∑[A008619(n)]-A247588(n+1)]`
-/

namespace A306674.P5428316545819843985
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A247588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306674.P5428316545819843985

/-! ## A306674.P1704431884243455654

`∑[A211340(n+1)-∑[A110654(n)]]`
-/

namespace A306674.P1704431884243455654
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211340 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306674.P1704431884243455654

/-! ## A306674.P1719636368096713891

`A247587(n+1)+∑[A046080(n+1)]`
-/

namespace A306674.P1719636368096713891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247587 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306674.P1719636368096713891

/-! ## A306674.P12732786393270238655

`∑[A247589(n+1)+A046080(n+1)]`
-/

namespace A306674.P12732786393270238655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247589 (n + 1) + A046080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306674.P12732786393270238655

/-! ## A306674.P9663657170790714739

`∑[A002620(n+2)-A247588(n+1)]`
-/

namespace A306674.P9663657170790714739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 2) - A247588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306674.P9663657170790714739

/-! ## A306674.P110648865392530419

`∑[A211340(n+1)%A076921(n+1)]`
-/

namespace A306674.P110648865392530419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211340 (n + 1)) (A076921 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306674.P110648865392530419

/-!
# A306675: Number of permutations p of [2n] having at least one index i with |p(i)-i| = n.

The programs for A306675, there is no canonical definition to state claims against.
-/

/-! ## A306675.P15305880037881738122

`(2*n)!-A306535(n)`
-/

namespace A306675.P15305880037881738122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) : ℤ) - A306535 n

end

end A306675.P15305880037881738122

/-! ## A306675.P6328652216824392260

`record[-(n*a(n-1)+1)]` with `a(0)=0`
-/

namespace A306675.P6328652216824392260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  -((n : ℤ) * f1 (n - 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306675.P6328652216824392260

/-! ## A306675.P13501622753342766611

`record[xor(n*a(n-1), -1)]` with `a(0)=0`
-/

namespace A306675.P13501622753342766611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  Int.xor ((n : ℤ) * f1 (n - 1)) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306675.P13501622753342766611

/-! ## A306675.P18163524846593423009

`record[n-n*a(n-1)]-1` with `a(0)=1`
-/

namespace A306675.P18163524846593423009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) - (n : ℤ) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A306675.P18163524846593423009

/-! ## A306675.P14099201298697661166

`(2*n*a(n-1)+1)*comp[2*(n+1)]` with `a(0)=0`
-/

namespace A306675.P14099201298697661166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (2 * (n * a (n - 1)) + 1) * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A306675.P14099201298697661166

/-!
# A306676: Number of distinct acute triangles with prime sides and largest side = prime(n).

The programs for A306676, there is no canonical definition to state claims against.
-/

/-! ## A306676.P17074670916264097135

`A306678(n+1)-A306677(n+1)`
-/

namespace A306676.P17074670916264097135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306678 (n + 1) - A306677 (n + 1)

end

end A306676.P17074670916264097135

/-!
# A306677: Number of distinct obtuse triangles with prime sides and largest side = prime(n).

The programs for A306677, there is no canonical definition to state claims against.
-/

/-! ## A306677.P1478222407232372066

`A306678(n+1)-A306676(n+1)`
-/

namespace A306677.P1478222407232372066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306678 (n + 1) - A306676 (n + 1)

end

end A306677.P1478222407232372066

/-! ## A306677.P15393377004317785900

`A306678(A187829(n+1))%A306676(n+1)`
-/

namespace A306677.P15393377004317785900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306678 (A187829 (n + 1)).toNat) (A306676 (n + 1))

end

end A306677.P15393377004317785900

/-!
# A306678: Number of distinct triangles with prime sides and largest side = prime(n).

The programs for A306678, there is no canonical definition to state claims against.
-/

/-! ## A306678.P12573987627529081333

`A306676(n+1)+A306677(n+1)`
-/

namespace A306678.P12573987627529081333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306676 (n + 1) + A306677 (n + 1)

end

end A306678.P12573987627529081333

/-!
# A306680: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of g.f. ((1-x)^(k-1))/((1-x)^k-x^(k+1)).

The programs for A306680, there is no canonical definition to state claims against.
-/

/-! ## A306680.P7131475968584298543

`A297323(A322308(n))+A258850(n)`
-/

namespace A306680.P7131475968584298543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297323 (A322308 n).toNat + A258850 n

end

end A306680.P7131475968584298543

/-! ## A306680.P4308607056373082081

`A258850(n)+A189222(A349530(3*(n+1)))`
-/

namespace A306680.P4308607056373082081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258850 n + A189222 (A349530 (3 * (n + 1))).toNat

end

end A306680.P4308607056373082081

/-! ## A306680.P17798459499566192731

`A000007(n+3)+A322308(A322308(n))+A258850(n)`
-/

namespace A306680.P17798459499566192731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 3) + (A322308 (A322308 n).toNat + A258850 n)

end

end A306680.P17798459499566192731

/-! ## A306680.P10538186005957285333

`A297323(A322308(n))+and(A143581(n+1), A350656(A182114(n)))`
-/

namespace A306680.P10538186005957285333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297323 (A322308 n).toNat + Int.land (A143581 (n + 1)) (A350656 (A182114 n).toNat)

end

end A306680.P10538186005957285333

/-! ## A306680.P3768900790398217505

`A297323(A322308(n))+A125005(A326323(n))+A002262(n-A261684(n))`
-/

namespace A306680.P3768900790398217505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297323 (A322308 n).toNat + (A125005 (A326323 n).toNat + A002262 ((n : ℤ) - A261684 n).toNat)

end

end A306680.P3768900790398217505

/-!
# A306681: a(1) = 1, for n >= 2 let the digits of a(n-1) be d_1, ..., d_i in base 10. Starting from d_1 do the following procedure: if d_r is divisible by 2, then d_r_new = d_r / 2, otherwise d_r_new = 3*d_r. a(n) = concatenation of d_r_new for r = 1 to i.

The programs for A306681, there is no canonical definition to state claims against.
-/

/-! ## A306681.P2239892071086803065

`A000961(Δ[A211931(n+1)])`
-/

namespace A306681.P2239892071086803065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (f1 (n + 1) - f1 n).toNat

end

end A306681.P2239892071086803065

/-! ## A306681.P5206274272852591413

`or(1, A165601(A245460(n+1)))`
-/

namespace A306681.P5206274272852591413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A165601 (A245460 (n + 1)).toNat)

end

end A306681.P5206274272852591413

/-!
# A306682: a(n) = gcd(sigma(n), pod(n)) where sigma(k) = the sum of the divisors of k (A000203) and pod(k) = the product of the divisors of k (A007955).

The programs for A306682, the canonical program `A306682.P11360712118956145825` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306682 has offset 1).

The definition of A306682 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306682.P4490132699186320184

`A000203(n+1)/A244669(n+1)`
-/

namespace A306682.P4490132699186320184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A244669 (n + 1) : ℚ)

end

end A306682.P4490132699186320184

namespace A306682

/-- `A000203(n+1)/A244669(n+1)` -/
def P4490132699186320184.Spec : Prop :=
  ∀ n, P4490132699186320184.a n = (A306682 (n + 1) : ℚ)

end A306682

/-! ## A306682.P11360712118956145825

`gcd(A000203(n+1), A187680(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A306682

/-- `gcd(A000203(n+1), A187680(n+1))` -/
def P11360712118956145825.Spec : Prop :=
  ∀ n, (P11360712118956145825.a n : ℤ) = A306682 (n + 1)

theorem P11360712118956145825.correct : P11360712118956145825.Spec := by
  intro n
  simp only [A306682, Nat.add_sub_cancel]

end A306682

/-! ## A306682.P17978974400707380170

`∑{d}[n+1, A008683(#)*A334663((n+1)/#)]`
-/

namespace A306682.P17978974400707380170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A334663 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A306682.P17978974400707380170

namespace A306682

/-- `∑{d}[n+1, A008683(#)*A334663((n+1)/#)]` -/
def P17978974400707380170.Spec : Prop :=
  ∀ n, P17978974400707380170.a n = A306682 (n + 1)

end A306682

/-! ## A306682.P9332567177104376402

`gcd((n+1)^A038548(n+1), ∑{d}[n+1, #])`
-/

namespace A306682.P9332567177104376402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A038548 (n + 1) : ℤ))) ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A306682.P9332567177104376402

namespace A306682

/-- `gcd((n+1)^A038548(n+1), ∑{d}[n+1, #])` -/
def P9332567177104376402.Spec : Prop :=
  ∀ n, (P9332567177104376402.a n : ℤ) = A306682 (n + 1)

end A306682

/-! ## A306682.P14062145717672508589

`gcd(Δ[A160664(n)], A007955(n+1))`
-/

namespace A306682.P14062145717672508589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A007955 (n + 1))

end

end A306682.P14062145717672508589

namespace A306682

/-- `gcd(Δ[A160664(n)], A007955(n+1))` -/
def P14062145717672508589.Spec : Prop :=
  ∀ n, (P14062145717672508589.a n : ℤ) = A306682 (n + 1)

end A306682

/-! ## A306682.P16814294088462926386

`A007955(n+1)/A244668(n+1)`
-/

namespace A306682.P16814294088462926386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A244668 (n + 1) : ℚ)

end

end A306682.P16814294088462926386

namespace A306682

/-- `A007955(n+1)/A244668(n+1)` -/
def P16814294088462926386.Spec : Prop :=
  ∀ n, P16814294088462926386.a n = (A306682 (n + 1) : ℚ)

end A306682

/-! ## A306682.P15137585275398171429

`A076722(n+1)/A324529(n+1)`
-/

namespace A306682.P15137585275398171429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076722 (n + 1) : ℚ) / (A324529 (n + 1) : ℚ)

end

end A306682.P15137585275398171429

namespace A306682

/-- `A076722(n+1)/A324529(n+1)` -/
def P15137585275398171429.Spec : Prop :=
  ∀ n, P15137585275398171429.a n = (A306682 (n + 1) : ℚ)

end A306682

/-! ## A306682.P198796271997147838

`gcd(A009242(n+1), A076720(n+1))`
-/

namespace A306682.P198796271997147838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009242 (n + 1)) (A076720 (n + 1))

end

end A306682.P198796271997147838

namespace A306682

/-- `gcd(A009242(n+1), A076720(n+1))` -/
def P198796271997147838.Spec : Prop :=
  ∀ n, (P198796271997147838.a n : ℤ) = A306682 (n + 1)

end A306682

/-! ## A306682.P2301650630741183749

`A000203(n+1)*A007955(n+1)/A324529(n+1)`
-/

namespace A306682.P2301650630741183749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) * A007955 (n + 1) : ℚ) / (A324529 (n + 1) : ℚ)

end

end A306682.P2301650630741183749

namespace A306682

/-- `A000203(n+1)*A007955(n+1)/A324529(n+1)` -/
def P2301650630741183749.Spec : Prop :=
  ∀ n, P2301650630741183749.a n = (A306682 (n + 1) : ℚ)

end A306682

/-! ## A306682.P16184583793039941361

`A076722(n+1)/gcd(A076722(n+1), A336723(n+1))`
-/

namespace A306682.P16184583793039941361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076722 (n + 1) : ℚ) / (Int.gcd (A076722 (n + 1)) (A336723 (n + 1)) : ℚ)

end

end A306682.P16184583793039941361

namespace A306682

/-- `A076722(n+1)/gcd(A076722(n+1), A336723(n+1))` -/
def P16184583793039941361.Spec : Prop :=
  ∀ n, P16184583793039941361.a n = (A306682 (n + 1) : ℚ)

end A306682

/-! ## A306682.P11079643262520171614

`gcd(A060866(n+1)+A056925(n+1)², A056925(n+1))`
-/

namespace A306682.P11079643262520171614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060866 (n + 1) + A056925 (n + 1) ^ 2) (A056925 (n + 1))

end

end A306682.P11079643262520171614

namespace A306682

/-- `gcd(A060866(n+1)+A056925(n+1)², A056925(n+1))` -/
def P11079643262520171614.Spec : Prop :=
  ∀ n, (P11079643262520171614.a n : ℤ) = A306682 (n + 1)

end A306682

/-! ## A306682.P10966196060944081266

`A220846(n+1)/A307893(n+1)`
-/

namespace A306682.P10966196060944081266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220846 (n + 1) : ℚ) / (A307893 (n + 1) : ℚ)

end

end A306682.P10966196060944081266

namespace A306682

/-- `A220846(n+1)/A307893(n+1)` -/
def P10966196060944081266.Spec : Prop :=
  ∀ n, P10966196060944081266.a n = (A306682 (n + 1) : ℚ)

end A306682

/-!
# A306683: Integers k for which the base-phi representation of k does not include 1 or phi.

The programs for A306683, there is no canonical definition to state claims against.
-/

/-! ## A306683.P15139369305223553987

`ceil(∑[Δ[floor((n+1)/ϕ)]+ϕ])`
-/

namespace A306683.P15139369305223553987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℝ) + Real.goldenRatio

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A306683.P15139369305223553987

/-! ## A306683.P1473672720414214694

`∪[3*floor(ϕ*(n+1))+2+n, floor((ϕ+2)*(n+1))]`
-/

namespace A306683.P1473672720414214694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + 2 + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.goldenRatio + 2) * (n + 1 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A306683.P1473672720414214694

/-! ## A306683.P8126644850488996169

`Δ[floor(ϕ*(n+1))]!+2*floor(ϕ*(n+1))-(n+1)`
-/

namespace A306683.P8126644850488996169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (f1 (n + 1) - f1 n).toNat : ℤ) + (2 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ - (n + 1 : ℤ))

end

end A306683.P8126644850488996169

/-! ## A306683.P16894542779360731626

`∑[3-A188433(n+2)]`
-/

namespace A306683.P16894542779360731626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A188433 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306683.P16894542779360731626

/-! ## A306683.P4914149367549562990

`∑[or(2, A120614(n+1))]`
-/

namespace A306683.P4914149367549562990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A120614 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306683.P4914149367549562990

/-! ## A306683.P18134586752730517917

`A191402(n+1)-(n+1)`
-/

namespace A306683.P18134586752730517917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191402 (n + 1) - (n + 1 : ℤ)

end

end A306683.P18134586752730517917

/-! ## A306683.P12311661519908098213

`A288708(n+3)+n-1`
-/

namespace A306683.P12311661519908098213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288708 (n + 3) + ((n : ℤ) - 1)

end

end A306683.P12311661519908098213

/-! ## A306683.P2071428806085193668

`A288712(n+3)+n-1`
-/

namespace A306683.P2071428806085193668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288712 (n + 3) + ((n : ℤ) - 1)

end

end A306683.P2071428806085193668

/-! ## A306683.P15669850882480498660

`A187580(2*(n+1))-n`
-/

namespace A306683.P15669850882480498660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187580 (2 * (n + 1)) - (n : ℤ)

end

end A306683.P15669850882480498660

/-! ## A306683.P7165858715984719133

`A163801(2*n+1)+n+2`
-/

namespace A306683.P7165858715984719133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163801 (2 * n + 1) + (n + 2 : ℤ)

end

end A306683.P7165858715984719133

/-!
# A306684: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of 2/(1 - x + sqrt(1 - 2*x + (1-4*k)*x^2)).

The programs for A306684, there is no canonical definition to state claims against.
-/

/-! ## A306684.P4143589581301807712

`A357681(n)+A052409(A186695(n+1))`
-/

namespace A306684.P4143589581301807712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357681 n + A052409 (A186695 (n + 1)).toNat

end

end A306684.P4143589581301807712

/-! ## A306684.P13002182126343779742

`A287216(n)+A186034(A022167(n))`
-/

namespace A306684.P13002182126343779742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 n + A186034 (A022167 n).toNat

end

end A306684.P13002182126343779742

/-! ## A306684.P2531522754798312375

`A000005(A140998(n)^A357681(n))`
-/

namespace A306684.P2531522754798312375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A140998 n : ℚ) ^ (A357681 n : ℤ))).toNat

end

end A306684.P2531522754798312375

/-! ## A306684.P4513626607163413612

`A004709(A084097(n)^A084097(n+3))`
-/

namespace A306684.P4513626607163413612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (SequenceMachineLib.roundAway ((A084097 n : ℚ) ^ (A084097 (n + 3) : ℤ))).toNat

end

end A306684.P4513626607163413612

/-! ## A306684.P12273403953298698676

`A266285(A362839(n)%A168339(3*(n+1)))`
-/

namespace A306684.P12273403953298698676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266285 (Int.tmod (A362839 n) (A168339 (3 * (n + 1)))).toNat

end

end A306684.P12273403953298698676

/-!
# A306686: Values of n such that 9^n ends in n, or expomorphic numbers relative to "base" 9.

The programs for A306686, there is no canonical definition to state claims against.
-/

/-! ## A306686.P10774106080205875816

`∑[record[A011557(n)*A133619(n)]]`
-/

namespace A306686.P10774106080205875816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n * A133619 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306686.P10774106080205875816

/-! ## A306686.P13841002346525419323

`∑[A011557(A001633(n+1))*A133619(n)]`
-/

namespace A306686.P13841002346525419323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (A001633 (n + 1)).toNat * A133619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306686.P13841002346525419323

/-!
# A306687: Triangular array read by rows: The sum of squares of the number of common points in all pairs of lattice paths from (0,0) to (x,y), for 0 <= y <= x (the unnormalized second moment).

The programs for A306687, there is no canonical definition to state claims against.
-/

/-! ## A306687.P2368964068879247402

`A324010(A245300(n))`
-/

namespace A306687.P2368964068879247402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324010 (A245300 n).toNat

end

end A306687.P2368964068879247402

/-! ## A306687.P18274278758447241971

`A324010(A323999(n+1)%A271919(n+1))`
-/

namespace A306687.P18274278758447241971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324010 (Int.tmod (A323999 (n + 1)) (A271919 (n + 1))).toNat

end

end A306687.P18274278758447241971

/-!
# A306689: Integers m with decimal expansion m = abc...z such that m is a multiple of both az and za; z may not be zero.

The programs for A306689, there is no canonical definition to state claims against.
-/

/-! ## A306689.P13968326289532488976

`A382337(A043320(n+2))`
-/

namespace A306689.P13968326289532488976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382337 (A043320 (n + 2)).toNat

end

end A306689.P13968326289532488976

/-! ## A306689.P1299735072301192128

`A382337(A044917(n+2))`
-/

namespace A306689.P1299735072301192128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382337 (A044917 (n + 2)).toNat

end

end A306689.P1299735072301192128

/-! ## A306689.P1073740282475449466

`A075617(A382337(n+2))`
-/

namespace A306689.P1073740282475449466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075617 (A382337 (n + 2)).toNat

end

end A306689.P1073740282475449466

/-! ## A306689.P166823692112717884

`A382337(A161953(n+2))`
-/

namespace A306689.P166823692112717884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382337 (A161953 (n + 2)).toNat

end

end A306689.P166823692112717884

/-! ## A306689.P6882808223289251419

`A382337(A187829(n+2))`
-/

namespace A306689.P6882808223289251419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382337 (A187829 (n + 2)).toNat

end

end A306689.P6882808223289251419

/-!
# A306691: Expansion of Product_{k>=1} (1 + x^k * (1 - x)).

The programs for A306691, there is no canonical definition to state claims against.
-/

/-! ## A306691.P8328926136682432143

`A125090(record[A101950(n)])%5`
-/

namespace A306691.P8328926136682432143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125090 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) 5

end

end A306691.P8328926136682432143

/-! ## A306691.P3722999683215297400

`A286656(A179042(n))`
-/

namespace A306691.P3722999683215297400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286656 (A179042 n).toNat

end

end A306691.P3722999683215297400

/-! ## A306691.P16081544655912171513

`A089643(A184262(n+1))-A004526(n)`
-/

namespace A306691.P16081544655912171513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089643 (A184262 (n + 1)).toNat - A004526 n

end

end A306691.P16081544655912171513

/-! ## A306691.P7843507219604189505

`A114116(A056000(n)-A277443(n+1))`
-/

namespace A306691.P7843507219604189505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114116 (A056000 n - A277443 (n + 1)).toNat

end

end A306691.P7843507219604189505

/-! ## A306691.P7474308676329198556

`A001221(2*n+5)-A162642(A210344(n))`
-/

namespace A306691.P7474308676329198556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * n + 5) - A162642 (A210344 n).toNat

end

end A306691.P7474308676329198556

/-!
# A306692: The maximum number of minimal dominating sets in a tree with n vertices.

The programs for A306692, there is no canonical definition to state claims against.
-/

/-! ## A306692.P16491428845843051541

`A063655(A011782(n))-A035363(n)`
-/

namespace A306692.P16491428845843051541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (A011782 n).toNat - A035363 n

end

end A306692.P16491428845843051541

/-! ## A306692.P5406062826621978718

`A063655(A011782(n))-A240145(n)`
-/

namespace A306692.P5406062826621978718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (A011782 n).toNat - A240145 (n + 81)

end

end A306692.P5406062826621978718

/-! ## A306692.P6048043054362420373

`A063655(A011782(n))-A240146(n)`
-/

namespace A306692.P6048043054362420373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (A011782 n).toNat - A240146 (n + 100)

end

end A306692.P6048043054362420373

/-! ## A306692.P1221738838297057417

`A064989(A068911(n)+2*A038754(n))-A035363(n)`
-/

namespace A306692.P1221738838297057417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A068911 n + 2 * A038754 n).toNat - A035363 n

end

end A306692.P1221738838297057417

/-! ## A306692.P16416908832749942106

`A000194(Δ[A027958(n+1)]+2)`
-/

namespace A306692.P16416908832749942106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (f1 (n + 1) - f1 n + 2).toNat

end

end A306692.P16416908832749942106

/-!
# A306693: a(n) is the least strongly refactorable multiple of n if any, or a(n) = -1 otherwise.

The programs for A306693, there is no canonical definition to state claims against.
-/

/-! ## A306693.P14192024576170071694

`A009230(A306585(n+1))`
-/

namespace A306693.P14192024576170071694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009230 (A306585 (n + 1)).toNat

end

end A306693.P14192024576170071694

/-! ## A306693.P4828514027102742904

`A278222(A042245(n)-A287316(n))`
-/

namespace A306693.P4828514027102742904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A042245 n - A287316 n).toNat

end

end A306693.P4828514027102742904

/-!
# A306694: a(n) is the denominator of log(A014963(n))/log(n) if n > 1 and a(1) = 1.

The programs for A306694, the canonical program `A306694.P11546645608635060446` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306694 has offset 1).

The definition of A306694 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306694.P11546645608635060446

`ceil((n+1)*∏{e}[n+1, #/(n+1)])`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A306694

/-- `ceil((n+1)*∏{e}[n+1, #/(n+1)])` -/
def P11546645608635060446.Spec : Prop :=
  ∀ n, P11546645608635060446.a n = A306694 (n + 1)

theorem P11546645608635060446.correct : P11546645608635060446.Spec := by
  intro n
  simp only [A306694, Nat.add_sub_cancel]

end A306694

/-! ## A306694.P16182229730944265013

`ceil((n+1)/∏{e}[n+1, (n+1)/#])`
-/

namespace A306694.P16182229730944265013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (Nat.factorization (f1 n) p : ℚ))⌉

end

end A306694.P16182229730944265013

namespace A306694

/-- `ceil((n+1)/∏{e}[n+1, (n+1)/#])` -/
def P16182229730944265013.Spec : Prop :=
  ∀ n, P16182229730944265013.a n = A306694 (n + 1)

end A306694

/-! ## A306694.P9293289399451627618

`∏{e}[A100994(n+1), #]`
-/

namespace A306694.P9293289399451627618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100994 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A306694.P9293289399451627618

namespace A306694

/-- `∏{e}[A100994(n+1), #]` -/
def P9293289399451627618.Spec : Prop :=
  ∀ n, (P9293289399451627618.a n : ℤ) = A306694 (n + 1)

end A306694

/-! ## A306694.P15047005486149237900

`A005361(A100994(n+1))`
-/

namespace A306694.P15047005486149237900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A100994 (n + 1)).toNat

end

end A306694.P15047005486149237900

namespace A306694

/-- `A005361(A100994(n+1))` -/
def P15047005486149237900.Spec : Prop :=
  ∀ n, P15047005486149237900.a n = A306694 (n + 1)

end A306694

/-! ## A306694.P16240057542233059092

`A028310(A100995(n+1))`
-/

namespace A306694.P16240057542233059092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A100995 (n + 1)).toNat

end

end A306694.P16240057542233059092

namespace A306694

/-- `A028310(A100995(n+1))` -/
def P16240057542233059092.Spec : Prop :=
  ∀ n, P16240057542233059092.a n = A306694 (n + 1)

end A306694

/-! ## A306694.P1369500930656067913

`A000006(A369031(n+1))`
-/

namespace A306694.P1369500930656067913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A369031 (n + 1)).toNat

end

end A306694.P1369500930656067913

namespace A306694

/-- `A000006(A369031(n+1))` -/
def P1369500930656067913.Spec : Prop :=
  ∀ n, P1369500930656067913.a n = A306694 (n + 1)

end A306694

/-! ## A306694.P1159567271496158662

`A137734(A100995(n+1)²)`
-/

namespace A306694.P1159567271496158662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A100995 (n + 1) ^ 2).toNat

end

end A306694.P1159567271496158662

namespace A306694

/-- `A137734(A100995(n+1)²)` -/
def P1159567271496158662.Spec : Prop :=
  ∀ n, P1159567271496158662.a n = A306694 (n + 1)

end A306694

/-! ## A306694.P7653579950997732670

`A100995(A048671(n+1))+1`
-/

namespace A306694.P7653579950997732670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (A048671 (n + 1)).toNat + 1

end

end A306694.P7653579950997732670

namespace A306694

/-- `A100995(A048671(n+1))+1` -/
def P7653579950997732670.Spec : Prop :=
  ∀ n, P7653579950997732670.a n = A306694 (n + 1)

end A306694

/-! ## A306694.P15390836094158434892

`A325765(A100994(n+1)-1)`
-/

namespace A306694.P15390836094158434892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325765 (A100994 (n + 1) - 1).toNat

end

end A306694.P15390836094158434892

namespace A306694

/-- `A325765(A100994(n+1)-1)` -/
def P15390836094158434892.Spec : Prop :=
  ∀ n, P15390836094158434892.a n = A306694 (n + 1)

end A306694

/-! ## A306694.P16900825247422469828

`A061395(2*A369031(n+1))`
-/

namespace A306694.P16900825247422469828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A369031 (n + 1)).toNat

end

end A306694.P16900825247422469828

namespace A306694

/-- `A061395(2*A369031(n+1))` -/
def P16900825247422469828.Spec : Prop :=
  ∀ n, P16900825247422469828.a n = A306694 (n + 1)

end A306694

/-! ## A306694.P17289569715070169572

`A325765(n*A069513(n+1))`
-/

namespace A306694.P17289569715070169572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325765 ((n : ℤ) * A069513 (n + 1)).toNat

end

end A306694.P17289569715070169572

namespace A306694

/-- `A325765(n*A069513(n+1))` -/
def P17289569715070169572.Spec : Prop :=
  ∀ n, P17289569715070169572.a n = A306694 (n + 1)

end A306694

/-! ## A306694.P1577896660056359765

`∏{d}[A100995(n+1), A014963(#)]`
-/

namespace A306694.P1577896660056359765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A306694.P1577896660056359765

namespace A306694

/-- `∏{d}[A100995(n+1), A014963(#)]` -/
def P1577896660056359765.Spec : Prop :=
  ∀ n, P1577896660056359765.a n = A306694 (n + 1)

end A306694

/-! ## A306694.P6715043634393537509

`A056692(gcd(n+1, A069859(n+1)))`
-/

namespace A306694.P6715043634393537509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056692 (Int.gcd (n + 1 : ℤ) (A069859 (n + 1)))

end

end A306694.P6715043634393537509

namespace A306694

/-- `A056692(gcd(n+1, A069859(n+1)))` -/
def P6715043634393537509.Spec : Prop :=
  ∀ n, P6715043634393537509.a n = A306694 (n + 1)

end A306694

/-! ## A306694.P7743526184797306714

`gcd(A073811(n+1), A079872(n+1))`
-/

namespace A306694.P7743526184797306714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073811 (n + 1)) (A079872 (n + 1))

end

end A306694.P7743526184797306714

namespace A306694

/-- `gcd(A073811(n+1), A079872(n+1))` -/
def P7743526184797306714.Spec : Prop :=
  ∀ n, (P7743526184797306714.a n : ℤ) = A306694 (n + 1)

end A306694

/-! ## A306694.P10290523879957610202

`∏{e}[A014963(n+1), A001222(#+n)]`
-/

namespace A306694.P10290523879957610202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 (Nat.factorization (f1 n).natAbs p + n)

end

end A306694.P10290523879957610202

namespace A306694

/-- `∏{e}[A014963(n+1), A001222(#+n)]` -/
def P10290523879957610202.Spec : Prop :=
  ∀ n, P10290523879957610202.a n = A306694 (n + 1)

end A306694

/-! ## A306694.P7793352918218049997

`∏{e}[A014963(n+1), A000005(n+1)-#]`
-/

namespace A306694.P7793352918218049997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A000005 (n + 1) - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A306694.P7793352918218049997

namespace A306694

/-- `∏{e}[A014963(n+1), A000005(n+1)-#]` -/
def P7793352918218049997.Spec : Prop :=
  ∀ n, P7793352918218049997.a n = A306694 (n + 1)

end A306694

/-! ## A306694.P13587769188068975368

`∏{e}[A014963(n+1), #*A033273(n+1)]`
-/

namespace A306694.P13587769188068975368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℤ) * A033273 (n + 1)

end

end A306694.P13587769188068975368

namespace A306694

/-- `∏{e}[A014963(n+1), #*A033273(n+1)]` -/
def P13587769188068975368.Spec : Prop :=
  ∀ n, P13587769188068975368.a n = A306694 (n + 1)

end A306694

/-! ## A306694.P466054103042475646

`floor(sqrt((A001222(n+1)*A069513(n+1))²+2))`
-/

namespace A306694.P466054103042475646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((A001222 (n + 1) * A069513 (n + 1)) ^ 2 + 2)

end

end A306694.P466054103042475646

namespace A306694

/-- `floor(sqrt((A001222(n+1)*A069513(n+1))²+2))` -/
def P466054103042475646.Spec : Prop :=
  ∀ n, P466054103042475646.a n = A306694 (n + 1)

end A306694

/-! ## A306694.P1716988235722542899

`A001222(floor(sqrt(n*n*A268340(n+1)+1))+1)`
-/

namespace A306694.P1716988235722542899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.sqrt ((n : ℤ) * ((n : ℤ) * A268340 (n + 1)) + 1) + 1).toNat

end

end A306694.P1716988235722542899

namespace A306694

/-- `A001222(floor(sqrt(n*n*A268340(n+1)+1))+1)` -/
def P1716988235722542899.Spec : Prop :=
  ∀ n, P1716988235722542899.a n = A306694 (n + 1)

end A306694

/-! ## A306694.P6152008415538058819

`A000005(A100994(n+1)/A014963(n+1))`
-/

namespace A306694.P6152008415538058819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A100994 (n + 1) : ℚ) / (A014963 (n + 1) : ℚ))).toNat

end

end A306694.P6152008415538058819

namespace A306694

/-- `A000005(A100994(n+1)/A014963(n+1))` -/
def P6152008415538058819.Spec : Prop :=
  ∀ n, P6152008415538058819.a n = A306694 (n + 1)

end A306694

/-!
# A306695: a(n) = gcd(n, psi(n)).

The programs for A306695, the canonical program `A306695.P3980179616297842556` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306695 has offset 1).

The definition of A306695 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A306695.P3980179616297842556

`gcd(n+1, A001615(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A306695

/-- `gcd(n+1, A001615(n+1))` -/
def P3980179616297842556.Spec : Prop :=
  ∀ n, (P3980179616297842556.a n : ℤ) = A306695 (n + 1)

theorem P3980179616297842556.correct : P3980179616297842556.Spec := by
  intro n
  simp only [A306695, Nat.add_sub_cancel]

end A306695

/-! ## A306695.P2981441516265992834

`(n+1)/A332881(n+1)`
-/

namespace A306695.P2981441516265992834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A332881 (n + 1) : ℚ)

end

end A306695.P2981441516265992834

namespace A306695

/-- `(n+1)/A332881(n+1)` -/
def P2981441516265992834.Spec : Prop :=
  ∀ n, P2981441516265992834.a n = (A306695 (n + 1) : ℚ)

end A306695

/-! ## A306695.P7517909282297793607

`gcd(A131738(n), A158523(n+1))`
-/

namespace A306695.P7517909282297793607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131738 n) (A158523 (n + 1))

end

end A306695.P7517909282297793607

namespace A306695

/-- `gcd(A131738(n), A158523(n+1))` -/
def P7517909282297793607.Spec : Prop :=
  ∀ n, (P7517909282297793607.a n : ℤ) = A306695 (n + 1)

end A306695

/-! ## A306695.P9258957748729048524

`(n+1)/A017666(A007947(n+1))`
-/

namespace A306695.P9258957748729048524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A017666 (A007947 (n + 1)).toNat : ℚ)

end

end A306695.P9258957748729048524

namespace A306695

/-- `(n+1)/A017666(A007947(n+1))` -/
def P9258957748729048524.Spec : Prop :=
  ∀ n, P9258957748729048524.a n = (A306695 (n + 1) : ℚ)

end A306695

/-! ## A306695.P17342373969664170667

`A001615(n+1)/A332880(n+1)`
-/

namespace A306695.P17342373969664170667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) : ℚ) / (A332880 (n + 1) : ℚ)

end

end A306695.P17342373969664170667

namespace A306695

/-- `A001615(n+1)/A332880(n+1)` -/
def P17342373969664170667.Spec : Prop :=
  ∀ n, P17342373969664170667.a n = (A306695 (n + 1) : ℚ)

end A306695

/-! ## A306695.P15760360990046715329

`gcd(A000027(n+1), A253628(n+1))`
-/

namespace A306695.P15760360990046715329
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A253628 (n + 1))

end

end A306695.P15760360990046715329

namespace A306695

/-- `gcd(A000027(n+1), A253628(n+1))` -/
def P15760360990046715329.Spec : Prop :=
  ∀ n, (P15760360990046715329.a n : ℤ) = A306695 (n + 1)

end A306695

/-! ## A306695.P3004652774268351529

`A003557(n+1)*A126795(A007947(n+1))`
-/

namespace A306695.P3004652774268351529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A126795 (A007947 (n + 1)).toNat

end

end A306695.P3004652774268351529

namespace A306695

/-- `A003557(n+1)*A126795(A007947(n+1))` -/
def P3004652774268351529.Spec : Prop :=
  ∀ n, P3004652774268351529.a n = A306695 (n + 1)

end A306695

/-! ## A306695.P6119853944900747302

`A001615(n+1)/A017665(A007947(n+1))`
-/

namespace A306695.P6119853944900747302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) : ℚ) / (A017665 (A007947 (n + 1)).toNat : ℚ)

end

end A306695.P6119853944900747302

namespace A306695

/-- `A001615(n+1)/A017665(A007947(n+1))` -/
def P6119853944900747302.Spec : Prop :=
  ∀ n, P6119853944900747302.a n = (A306695 (n + 1) : ℚ)

end A306695

/-! ## A306695.P6124536418210546133

`gcd(A000027(A000027(n+1)), A306927(n+1))`
-/

namespace A306695.P6124536418210546133
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (A000027 (n + 1)).toNat) (A306927 (n + 1))

end

end A306695.P6124536418210546133

namespace A306695

/-- `gcd(A000027(A000027(n+1)), A306927(n+1))` -/
def P6124536418210546133.Spec : Prop :=
  ∀ n, (P6124536418210546133.a n : ℤ) = A306695 (n + 1)

end A306695

/-! ## A306695.P3152347378676662630

`A003557(n+1)*A126795(n+1)/A003557(A126795(n+1))`
-/

namespace A306695.P3152347378676662630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003557 (n + 1) * A126795 (n + 1) : ℚ) / (A003557 (A126795 (n + 1)).toNat : ℚ)

end

end A306695.P3152347378676662630

namespace A306695

/-- `A003557(n+1)*A126795(n+1)/A003557(A126795(n+1))` -/
def P3152347378676662630.Spec : Prop :=
  ∀ n, P3152347378676662630.a n = (A306695 (n + 1) : ℚ)

end A306695

/-! ## A306695.P15463684340649651778

`A003557((n+1)*A325385(A007947(n+1)))`
-/

namespace A306695.P15463684340649651778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 ((n + 1 : ℤ) * A325385 (A007947 (n + 1)).toNat).toNat

end

end A306695.P15463684340649651778

namespace A306695

/-- `A003557((n+1)*A325385(A007947(n+1)))` -/
def P15463684340649651778.Spec : Prop :=
  ∀ n, P15463684340649651778.a n = A306695 (n + 1)

end A306695

/-! ## A306695.P16800128044854926689

`gcd(A075828(n+1), A342917(n+1))`
-/

namespace A306695.P16800128044854926689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A075828 (n + 1)) (A342917 (n + 1))

end

end A306695.P16800128044854926689

namespace A306695

/-- `gcd(A075828(n+1), A342917(n+1))` -/
def P16800128044854926689.Spec : Prop :=
  ∀ n, (P16800128044854926689.a n : ℤ) = A306695 (n + 1)

end A306695

/-! ## A306695.P9401306546851871292

`(n+1)/A348037(A078615(n+1))`
-/

namespace A306695.P9401306546851871292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A348037 (A078615 (n + 1)).toNat : ℚ)

end

end A306695.P9401306546851871292

namespace A306695

/-- `(n+1)/A348037(A078615(n+1))` -/
def P9401306546851871292.Spec : Prop :=
  ∀ n, P9401306546851871292.a n = (A306695 (n + 1) : ℚ)

end A306695

/-! ## A306695.P2354384149302506607

`(n+1)/A370784((n+1)²)`
-/

namespace A306695.P2354384149302506607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A370784 ((n + 1) ^ 2) : ℚ)

end

end A306695.P2354384149302506607

namespace A306695

/-- `(n+1)/A370784((n+1)²)` -/
def P2354384149302506607.Spec : Prop :=
  ∀ n, P2354384149302506607.a n = (A306695 (n + 1) : ℚ)

end A306695

/-! ## A306695.P6090836896932812724

`A003557((n+1)*A007947(A003959(n+1)))`
-/

namespace A306695.P6090836896932812724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 ((n + 1 : ℤ) * A007947 (A003959 (n + 1)).toNat).toNat

end

end A306695.P6090836896932812724

namespace A306695

/-- `A003557((n+1)*A007947(A003959(n+1)))` -/
def P6090836896932812724.Spec : Prop :=
  ∀ n, P6090836896932812724.a n = A306695 (n + 1)

end A306695

/-! ## A306695.P1801829400613490916

`A003557((n+1)*A007947(A048250(n+1)))`
-/

namespace A306695.P1801829400613490916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 ((n + 1 : ℤ) * A007947 (A048250 (n + 1)).toNat).toNat

end

end A306695.P1801829400613490916

namespace A306695

/-- `A003557((n+1)*A007947(A048250(n+1)))` -/
def P1801829400613490916.Spec : Prop :=
  ∀ n, P1801829400613490916.a n = A306695 (n + 1)

end A306695

/-! ## A306695.P13804024973470458235

`A003557((n+1)*A007947(A064478(n+1)))`
-/

namespace A306695.P13804024973470458235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 ((n + 1 : ℤ) * A007947 (A064478 (n + 1)).toNat).toNat

end

end A306695.P13804024973470458235

namespace A306695

/-- `A003557((n+1)*A007947(A064478(n+1)))` -/
def P13804024973470458235.Spec : Prop :=
  ∀ n, P13804024973470458235.a n = A306695 (n + 1)

end A306695

/-! ## A306695.P2014007466492711070

`A003557((n+1)*A080398(A007947(n+1)))`
-/

namespace A306695.P2014007466492711070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 ((n + 1 : ℤ) * A080398 (A007947 (n + 1)).toNat).toNat

end

end A306695.P2014007466492711070

namespace A306695

/-- `A003557((n+1)*A080398(A007947(n+1)))` -/
def P2014007466492711070.Spec : Prop :=
  ∀ n, P2014007466492711070.a n = A306695 (n + 1)

end A306695

/-!
# A306696: Lexicographically earliest sequence of nonnegative terms such that for any n > 0 and k > 0, if a(n) >= a(n+k), then a(n+2*k) <> a(n+k).

The programs for A306696, there is no canonical definition to state claims against.
-/

/-! ## A306696.P11695916455021633039

`A064547(A260443(n+1))-1`
-/

namespace A306696.P11695916455021633039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A260443 (n + 1)).toNat - 1

end

end A306696.P11695916455021633039

/-! ## A306696.P12880649406889526015

`A001221(A249769(floor(n/(xor(n, n+1)+1))+1))`
-/

namespace A306696.P12880649406889526015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A249769 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat).toNat

end

end A306696.P12880649406889526015

/-! ## A306696.P8721633083862718742

`A071330((floor(n/(xor(n, n+1)+1))+1)%A003459(n+1))`
-/

namespace A306696.P8721633083862718742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071330 (Int.tmod (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1) (A003459 (n + 1))).toNat

end

end A306696.P8721633083862718742

/-! ## A306696.P7710459010525174083

`A071330(floor(n/(xor(n, n+1)+1))+1)%A239515(2*n+5)`
-/

namespace A306696.P7710459010525174083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071330 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat) (A239515 (2 * n + 5))

end

end A306696.P7710459010525174083

/-! ## A306696.P398872917309888227

`A071330(A336934(n+1)%A128165(2*(n+2)))`
-/

namespace A306696.P398872917309888227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071330 (Int.tmod (A336934 (n + 1)) (A128165 (2 * (n + 2)))).toNat

end

end A306696.P398872917309888227

/-!
# A306697: Square array T(n, k) read by antidiagonals, n > 0 and k > 0: T(n, k) is obtained by applying a Minkowski sum to sets related to the Fermi-Dirac factorizations of n and of k (see Comments for precise definition).

The programs for A306697, there is no canonical definition to state claims against.
-/

/-! ## A306697.P17689642881674116905

`A062759(A297845(n+1))`
-/

namespace A306697.P17689642881674116905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062759 (A297845 (n + 1)).toNat

end

end A306697.P17689642881674116905

/-! ## A306697.P12983436459333873253

`lcm(A329329(n+1), A343033(n+1))`
-/

namespace A306697.P12983436459333873253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A329329 (n + 1)) (A343033 (n + 1))

end

end A306697.P12983436459333873253

/-! ## A306697.P16256939622984031367

`sqrt(A297845(n+1)*A329329(n+1))`
-/

namespace A306697.P16256939622984031367
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A297845 (n + 1) * A329329 (n + 1) : ℝ)

end

end A306697.P16256939622984031367

/-! ## A306697.P2024797914050542904

`A297845(n+1)%Δ[A070237(n+4)]`
-/

namespace A306697.P2024797914050542904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070237 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297845 (n + 1)) (f1 (n + 1) - f1 n)

end

end A306697.P2024797914050542904

/-! ## A306697.P1089918801280360628

`A053164(4*n+3)*A329329(n+1)`
-/

namespace A306697.P1089918801280360628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053164 (4 * n + 3) * A329329 (n + 1)

end

end A306697.P1089918801280360628

/-! ## A306697.P7875371862807324909

`A287215(A004198(n))*A329329(n+1)`
-/

namespace A306697.P7875371862807324909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287215 (A004198 n).toNat * A329329 (n + 1)

end

end A306697.P7875371862807324909

/-! ## A306697.P12282785328269153331

`A287215(A331902(n))*A329329(n+1)`
-/

namespace A306697.P12282785328269153331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287215 (A331902 n).toNat * A329329 (n + 1)

end

end A306697.P12282785328269153331

/-! ## A306697.P11897347901767857313

`A287215(A341840(n))*A329329(n+1)`
-/

namespace A306697.P11897347901767857313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287215 (A341840 n).toNat * A329329 (n + 1)

end

end A306697.P11897347901767857313

/-! ## A306697.P15105650903949442924

`A297845(n+1)%A008587(A019567(n))`
-/

namespace A306697.P15105650903949442924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297845 (n + 1)) (A008587 (A019567 n).toNat)

end

end A306697.P15105650903949442924

/-! ## A306697.P6896282568982325304

`lcm(A007913(A009998(n)), A329329(n+1))`
-/

namespace A306697.P6896282568982325304
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007913 (A009998 n).toNat) (A329329 (n + 1))

end

end A306697.P6896282568982325304

/-!
# A306698: Recamán-like sequence: a(0) = 0: for n > 0, a(n) = a(n-1) - 2*n if positive and not already in the sequence, otherwise a(n) = a(n-1) + n.

The programs for A306698, there is no canonical definition to state claims against.
-/

/-! ## A306698.P1066535980246612735

`∑[n*A061347(A050343(n))]`
-/

namespace A306698.P1066535980246612735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A061347 (A050343 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306698.P1066535980246612735

/-! ## A306698.P13301776610019739744

`a(n-1)+(n*A061347(A050343(n)))%A027379(n)` with `a(0)=0`
-/

namespace A306698.P13301776610019739744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Int.tmod ((n : ℤ) * A061347 (A050343 n).toNat) (A027379 n)

end

end A306698.P13301776610019739744

/-! ## A306698.P10472812447218344254

`a(n-1)*A000034(2*n)+n*A061347(A050343(n))` with `a(0)=0`
-/

namespace A306698.P10472812447218344254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) * A000034 (2 * n) + (n : ℤ) * A061347 (A050343 n).toNat

end

end A306698.P10472812447218344254

/-! ## A306698.P16283825256636383868

`∑[n*A061347(A251075(n))]`
-/

namespace A306698.P16283825256636383868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A061347 (A251075 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306698.P16283825256636383868

/-! ## A306698.P14462912487892917565

`∑[A061347(A348066(n+1)*A329356(n)+2)*n]`
-/

namespace A306698.P14462912487892917565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (A348066 (n + 1) * A329356 n + 2).toNat * (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306698.P14462912487892917565

