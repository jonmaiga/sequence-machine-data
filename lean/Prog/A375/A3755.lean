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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A375500: a(n) = Sum_{k=0..n} A001595(k)^2.

The programs for A375500, the canonical program `A375500.P6330890797218212587` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375500 has offset 0).

The definition of A375500 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375500.P6330890797218212587

`∑[∑[a(n-1)+a(n-2)]²]` with `a(0)=1, a(1)=0, a(2)=2`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A375500

/-- `∑[∑[a(n-1)+a(n-2)]²]` -/
def P6330890797218212587.Spec : Prop :=
  ∀ n, (P6330890797218212587.a n : ℤ) = A375500 n

theorem P6330890797218212587.correct : P6330890797218212587.Spec := by
  intro n
  simp only [A375500]

end A375500

/-! ## A375500.P1985947807547553506

`∑[A001595(n)²]`
-/

namespace A375500.P1985947807547553506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375500.P1985947807547553506

namespace A375500

/-- `∑[A001595(n)²]` -/
def P1985947807547553506.Spec : Prop :=
  ∀ n, P1985947807547553506.a n = A375500 n

end A375500

/-! ## A375500.P1815487097805567528

`∑[∑[A006355(n)]²]`
-/

namespace A375500.P1815487097805567528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375500.P1815487097805567528

namespace A375500

/-- `∑[∑[A006355(n)]²]` -/
def P1815487097805567528.Spec : Prop :=
  ∀ n, P1815487097805567528.a n = A375500 n

theorem P1815487097805567528.correct : P1815487097805567528.Spec := by
  intro n
  simp only [A375500, Nat.add_sub_cancel, A375500.P1815487097805567528.f2, A375500.P1815487097805567528.f1, A375500.P1815487097805567528.a, A375500.P6330890797218212587.f2, A375500.P6330890797218212587.f1, A375500.P6330890797218212587.a, A006355, A006355.P1385237304681338080.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A375500

/-! ## A375500.P11388571638989815596

`∑[A128587(n+3)²]`
-/

namespace A375500.P11388571638989815596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128587 (n + 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375500.P11388571638989815596

namespace A375500

/-- `∑[A128587(n+3)²]` -/
def P11388571638989815596.Spec : Prop :=
  ∀ n, P11388571638989815596.a n = A375500 n

end A375500

/-! ## A375500.P9229816314109535373

`∑[(3-A288603(n))²]`
-/

namespace A375500.P9229816314109535373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A288603 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375500.P9229816314109535373

namespace A375500

/-- `∑[(3-A288603(n))²]` -/
def P9229816314109535373.Spec : Prop :=
  ∀ n, P9229816314109535373.a n = A375500 n

end A375500

/-! ## A375500.P16578976201161096367

`∑[(A019274(n+1)+1)²]`
-/

namespace A375500.P16578976201161096367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A019274 (n + 1) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375500.P16578976201161096367

namespace A375500

/-- `∑[(A019274(n+1)+1)²]` -/
def P16578976201161096367.Spec : Prop :=
  ∀ n, P16578976201161096367.a n = A375500 n

end A375500

/-! ## A375500.P958305113046172051

`∑[(1-A055389(n+1))²]`
-/

namespace A375500.P958305113046172051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A055389 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375500.P958305113046172051

namespace A375500

/-- `∑[(1-A055389(n+1))²]` -/
def P958305113046172051.Spec : Prop :=
  ∀ n, P958305113046172051.a n = A375500 n

end A375500

/-! ## A375500.P17870629825115928709

`∑[(2-A001588(n+1))²]`
-/

namespace A375500.P17870629825115928709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A001588 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375500.P17870629825115928709

namespace A375500

/-- `∑[(2-A001588(n+1))²]` -/
def P17870629825115928709.Spec : Prop :=
  ∀ n, P17870629825115928709.a n = A375500 n

end A375500

/-! ## A375500.P3506101283282587917

`∑[(A001611(n)-A020695(n))²]`
-/

namespace A375500.P3506101283282587917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001611 n - A020695 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375500.P3506101283282587917

namespace A375500

/-- `∑[(A001611(n)-A020695(n))²]` -/
def P3506101283282587917.Spec : Prop :=
  ∀ n, P3506101283282587917.a n = A375500 n

end A375500

/-!
# A375501: a(n) = Sum_{k=0..n} (-1)^k*A001595(k)^2.

The programs for A375501, the canonical program `A375501.P6564674146108838587` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375501 has offset 0).

The definition of A375501 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375501.P16070550904887308722

`∑[A001595(n)²/(-1)^n]`
-/

namespace A375501.P16070550904887308722
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001595 n ^ 2 : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375501.P16070550904887308722

namespace A375501

/-- `∑[A001595(n)²/(-1)^n]` -/
def P16070550904887308722.Spec : Prop :=
  ∀ n, P16070550904887308722.a n = (A375501 n : ℚ)

end A375501

/-! ## A375501.P6564674146108838587

`∑[A128587(n+3)²*A033999(n)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A375501

/-- `∑[A128587(n+3)²*A033999(n)]` -/
def P6564674146108838587.Spec : Prop :=
  ∀ n, P6564674146108838587.a n = A375501 n

theorem P6564674146108838587.correct : P6564674146108838587.Spec := by
  intro n
  simp only [A375501]

end A375501

/-!
# A375504: Triangle read by rows: T(n,k) is the number of crystallized linear chord diagrams on n chords with k short chords.

The programs for A375504, there is no canonical definition to state claims against.
-/

/-! ## A375504.P13158657048684391928

`A225620(A039599(n)%A129477(2*n+1))`
-/

namespace A375504.P13158657048684391928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225620 (Int.tmod (A039599 n) (A129477 (2 * n + 1))).toNat

end

end A375504.P13158657048684391928

/-!
# A375505: Number of crystallized linear chord diagrams on n chords.

The programs for A375505, there is no canonical definition to state claims against.
-/

/-! ## A375505.P4361577079848291267

`A037915(A091200(n)+A052852(n))`
-/

namespace A375505.P4361577079848291267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037915 (A091200 n + A052852 n).toNat

end

end A375505.P4361577079848291267

/-! ## A375505.P5262019789496482829

`A082288(A000142(n)*A138526(n))`
-/

namespace A375505.P5262019789496482829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082288 (A000142 n * A138526 n).toNat

end

end A375505.P5262019789496482829

/-!
# A375507: a(1) = 1. For n > 1; a(n) is equal to a(n-1) plus the decimal value of the concatenation of the first n-1 digits of the sequence.

The programs for A375507, there is no canonical definition to state claims against.
-/

/-! ## A375507.P4463875174486563331

`A187388(A002275(n)+1)`
-/

namespace A375507.P4463875174486563331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187388 (A002275 n + 1).toNat

end

end A375507.P4463875174486563331

/-!
# A375508: Begin A160649 with n instead of 2; a(n) is the position in the new sequence at which it generates the same numbers as A160649 or a(n)=0 if it doesn't.

The programs for A375508, there is no canonical definition to state claims against.
-/

/-! ## A375508.P15939938230671987021

`gcd(A005153(A346426(3*n)), A144155(n))`
-/

namespace A375508.P15939938230671987021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005153 (A346426 (3 * n)).toNat) (A144155 n)

end

end A375508.P15939938230671987021

/-! ## A375508.P7156952928538056832

`A331416(A256976(n))+1`
-/

namespace A375508.P7156952928538056832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331416 (A256976 n).toNat + 1

end

end A375508.P7156952928538056832

/-! ## A375508.P3083647503995520506

`A098666(A032189(n+2))`
-/

namespace A375508.P3083647503995520506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098666 (A032189 (n + 2)).toNat

end

end A375508.P3083647503995520506

/-! ## A375508.P16045363579875778596

`A144553(n+1)+A000002(A192415(n))`
-/

namespace A375508.P16045363579875778596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144553 (n + 1) + A000002 (A192415 n).toNat

end

end A375508.P16045363579875778596

/-! ## A375508.P12106601034746314478

`A228525(A191529(n+4)+A003242(n))`
-/

namespace A375508.P12106601034746314478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228525 (A191529 (n + 4) + A003242 n).toNat

end

end A375508.P12106601034746314478

/-!
# A375510: Fringe indices of Zernike polynomials.

The programs for A375510, the canonical program `A375510.P4398942062596491998` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375510 has offset 0).

The definition of A375510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375510.P4398942062596491998

`A185725(n+1)-A068344(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A375510

/-- `A185725(n+1)-A068344(n)` -/
def P4398942062596491998.Spec : Prop :=
  ∀ n, P4398942062596491998.a n = A375510 n

theorem P4398942062596491998.correct : P4398942062596491998.Spec := by
  intro n
  simp only [A375510]

end A375510

/-! ## A375510.P10621755646028107685

`A060734(n+1)+A060736(n+1)-A213922(n+1)`
-/

namespace A375510.P10621755646028107685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060734 (n + 1) + (A060736 (n + 1) - A213922 (n + 1))

end

end A375510.P10621755646028107685

namespace A375510

/-- `A060734(n+1)+A060736(n+1)-A213922(n+1)` -/
def P10621755646028107685.Spec : Prop :=
  ∀ n, P10621755646028107685.a n = A375510 n

end A375510

/-! ## A375510.P10632751552429064048

`A185725(A038722(n+1))`
-/

namespace A375510.P10632751552429064048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185725 (A038722 (n + 1)).toNat

end

end A375510.P10632751552429064048

namespace A375510

/-- `A185725(A038722(n+1))` -/
def P10632751552429064048.Spec : Prop :=
  ∀ n, P10632751552429064048.a n = A375510 n

end A375510

/-! ## A375510.P17461140020755009743

`A210535(n+1)+A003984(n)²`
-/

namespace A375510.P17461140020755009743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210535 (n + 1) + A003984 n ^ 2

end

end A375510.P17461140020755009743

namespace A375510

/-- `A210535(n+1)+A003984(n)²` -/
def P17461140020755009743.Spec : Prop :=
  ∀ n, P17461140020755009743.a n = A375510 n

end A375510

/-! ## A375510.P10684178106764945079

`A024000(A253146(n+1))+A051125(n+1)²`
-/

namespace A375510.P10684178106764945079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A253146 (n + 1)).toNat + A051125 (n + 1) ^ 2

end

end A375510.P10684178106764945079

namespace A375510

/-- `A024000(A253146(n+1))+A051125(n+1)²` -/
def P10684178106764945079.Spec : Prop :=
  ∀ n, P10684178106764945079.a n = A375510 n

end A375510

/-! ## A375510.P11299753006563800386

`A020703(A213922(n+1))`
-/

namespace A375510.P11299753006563800386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A213922 (n + 1)).toNat

end

end A375510.P11299753006563800386

namespace A375510

/-- `A020703(A213922(n+1))` -/
def P11299753006563800386.Spec : Prop :=
  ∀ n, P11299753006563800386.a n = A375510 n

end A375510

/-! ## A375510.P11401990877740337891

`A020703(A253146(n+1)+A003984(n)²)`
-/

namespace A375510.P11401990877740337891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A253146 (n + 1) + A003984 n ^ 2).toNat

end

end A375510.P11401990877740337891

namespace A375510

/-- `A020703(A253146(n+1)+A003984(n)²)` -/
def P11401990877740337891.Spec : Prop :=
  ∀ n, P11401990877740337891.a n = A375510 n

end A375510

/-! ## A375510.P1672148921515588705

`A185725(A064790(A060736(n+1)))`
-/

namespace A375510.P1672148921515588705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185725 (A064790 (A060736 (n + 1)).toNat).toNat

end

end A375510.P1672148921515588705

namespace A375510

/-- `A185725(A064790(A060736(n+1)))` -/
def P1672148921515588705.Spec : Prop :=
  ∀ n, P1672148921515588705.a n = A375510 n

end A375510

/-! ## A375510.P15939211369302590235

`A060736(A064790(A213922(A064790(A060734(n+1)))))`
-/

namespace A375510.P15939211369302590235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060736 (A064790 (A213922 (A064790 (A060734 (n + 1)).toNat).toNat).toNat).toNat

end

end A375510.P15939211369302590235

namespace A375510

/-- `A060736(A064790(A213922(A064790(A060734(n+1)))))` -/
def P15939211369302590235.Spec : Prop :=
  ∀ n, P15939211369302590235.a n = A375510 n

end A375510

/-! ## A375510.P13668289929289739338

`A377850(A176988(n))`
-/

namespace A375510.P13668289929289739338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377850 (A176988 n).toNat

end

end A375510.P13668289929289739338

namespace A375510

/-- `A377850(A176988(n))` -/
def P13668289929289739338.Spec : Prop :=
  ∀ n, P13668289929289739338.a n = A375510 n

end A375510

/-!
# A375511: a(n) is the common difference in the longest arithmetic progression of semiprimes ending in the n-th semiprime. If there is more than one such arithmetic progression, the smallest difference is chosen.

The programs for A375511, there is no canonical definition to state claims against.
-/

/-! ## A375511.P10857419493680808640

`A376115(A001358(n+2))`
-/

namespace A375511.P10857419493680808640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376115 (A001358 (n + 2)).toNat

end

end A375511.P10857419493680808640

/-!
# A375512: a(n) is the number of distinct compositions of four positive integers x, u, v, y (x < u <= v < y) for which x + u + v + y = n and u*v = x*y.

The programs for A375512, there is no canonical definition to state claims against.
-/

/-! ## A375512.P8419977949243099039

`A284256(A126010(n)+A000045(n))`
-/

namespace A375512.P8419977949243099039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284256 (A126010 n + A000045 n).toNat

end

end A375512.P8419977949243099039

/-! ## A375512.P2663355198381335359

`A284256(xor(A000045(n), A126010(n)))`
-/

namespace A375512.P2663355198381335359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284256 (Int.xor (A000045 n) (A126010 n)).toNat

end

end A375512.P2663355198381335359

/-! ## A375512.P5903442001837388991

`A284256(A000122(n+4)+A000045(n))`
-/

namespace A375512.P5903442001837388991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284256 (A000122 (n + 4) + A000045 n).toNat

end

end A375512.P5903442001837388991

/-! ## A375512.P15621897270245835374

`A284258(or(A000045(n), A192490(n+1)))`
-/

namespace A375512.P15621897270245835374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284258 (Int.lor (A000045 n) (A192490 (n + 1))).toNat

end

end A375512.P15621897270245835374

/-! ## A375512.P12142241643369591950

`A284258(or(A000045(n), A176723(3*(n+1))))`
-/

namespace A375512.P12142241643369591950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284258 (Int.lor (A000045 n) (A176723 (3 * (n + 1)))).toNat

end

end A375512.P12142241643369591950

/-!
# A375513: Irregular triangle read by rows in which row n lists the iterates of the sigma_0(x) map starting at n, until a fixed point is reached, where sigma_0(x) is the number-of-divisors function (A000005).

The programs for A375513, there is no canonical definition to state claims against.
-/

/-! ## A375513.P4282004111989035335

`A325239(n+1)+A248805(A319414(n+1))`
-/

namespace A375513.P4282004111989035335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325239 (n + 1) + A248805 (A319414 (n + 1)).toNat

end

end A375513.P4282004111989035335

/-! ## A375513.P3108361124115405865

`A325239(n+1)-A374093(A323861(n+1))`
-/

namespace A375513.P3108361124115405865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325239 (n + 1) - A374093 (A323861 (n + 1)).toNat

end

end A375513.P3108361124115405865

/-!
# A375516: a(n) is the denominator of Sum_{k = 1..n} 1 / (k*A374663(k)).

The programs for A375516, there is no canonical definition to state claims against.
-/

/-! ## A375516.P5869820872980638042

`(a(n-1)/(n-a(n-1)%n)+1)*a(n-1)` with `a(0)=1`
-/

namespace A375516.P5869820872980638042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) / ((n : ℤ) - Int.tmod (SequenceMachineLib.roundAway (a (n - 1))) (n : ℤ) : ℚ) + 1) * a (n - 1)

end

end A375516.P5869820872980638042

/-! ## A375516.P3348670843805985697

`A374983(n)+1`
-/

namespace A375516.P3348670843805985697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374983 n + 1

end

end A375516.P3348670843805985697

/-! ## A375516.P2959415889737646160

`A003418(n)*A375520(n)`
-/

namespace A375516.P2959415889737646160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n * A375520 n

end

end A375516.P2959415889737646160

/-! ## A375516.P10510387874492320675

`∏[A375791(n)]-A375518(n)`
-/

namespace A375516.P10510387874492320675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A375518 n

end

end A375516.P10510387874492320675

/-! ## A375516.P1388055909088325898

`A271954(n)+∑[A375518(n)]-A375518(n)`
-/

namespace A375516.P1388055909088325898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271954 n + (∑ j ∈ Finset.range (n + 1), f1 j - A375518 n)

end

end A375516.P1388055909088325898

/-!
# A375517: a(n) = A375516(n)/n.

The programs for A375517, there is no canonical definition to state claims against.
-/

/-! ## A375517.P13367291198195319427

`A375516(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A375517.P13367291198195319427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375516 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A375517.P13367291198195319427

/-! ## A375517.P2820667879114272208

`(A374983(n+1)+1)/(n+1)`
-/

namespace A375517.P2820667879114272208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374983 (n + 1) + 1 : ℚ) / (n + 1 : ℚ)

end

end A375517.P2820667879114272208

/-! ## A375517.P15622757317829175603

`(A387027(n+1)-A003418(n+1))*A375520(n+1)`
-/

namespace A375517.P15622757317829175603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A387027 (n + 1) - A003418 (n + 1)) * A375520 (n + 1)

end

end A375517.P15622757317829175603

/-!
# A375518: First differences of A375516.

The programs for A375518, there is no canonical definition to state claims against.
-/

/-! ## A375518.P6766133187563343586

`Δ[A374983(n)]`
-/

namespace A375518.P6766133187563343586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A375518.P6766133187563343586

/-! ## A375518.P10580678904959785675

`Δ[A375516(n)]`
-/

namespace A375518.P10580678904959785675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A375518.P10580678904959785675

/-! ## A375518.P2198301901004415189

`A374983(n+1)-A374983(n)`
-/

namespace A375518.P2198301901004415189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374983 (n + 1) - A374983 n

end

end A375518.P2198301901004415189

/-! ## A375518.P18293330335613571850

`A375516(n+1)-A375516(n)`
-/

namespace A375518.P18293330335613571850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375516 (n + 1) - A375516 n

end

end A375518.P18293330335613571850

/-! ## A375518.P10857503674012078150

`A375517(n+1)/A374663(n+1)*A375516(n)`
-/

namespace A375518.P10857503674012078150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375517 (n + 1) : ℚ) / (A374663 (n + 1) : ℚ) * (A375516 n : ℚ)

end

end A375518.P10857503674012078150

/-!
# A375519: Number of positive integers with Pisano period equal to n.

The programs for A375519, there is no canonical definition to state claims against.
-/

/-! ## A375519.P17787192475967214989

`A083913(A083913(n+1)+A036469(2*(n+1)))`
-/

namespace A375519.P17787192475967214989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083913 (A083913 (n + 1) + A036469 (2 * (n + 1))).toNat

end

end A375519.P17787192475967214989

/-! ## A375519.P11514495164098212294

`A284256(A285321(2*(n+2))+81)`
-/

namespace A375519.P11514495164098212294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284256 (A285321 (2 * (n + 2)) + 81).toNat

end

end A375519.P11514495164098212294

/-! ## A375519.P14542810703765980406

`A337599(A358566(n+3)+A014571(2*n))`
-/

namespace A375519.P14542810703765980406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337599 (A358566 (n + 3) + A014571 (2 * n)).toNat

end

end A375519.P14542810703765980406

/-! ## A375519.P14781463234690897143

`A365832(lt[A058137(n+4), A106856(3*n+2)])`
-/

namespace A375519.P14781463234690897143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058137 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106856 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365832 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A375519.P14781463234690897143

/-!
# A375520: a(n) = A375516(n)/LCM{1,...,n}.

The programs for A375520, there is no canonical definition to state claims against.
-/

/-! ## A375520.P8958267303511208184

`A375516(n)/A003418(n)`
-/

namespace A375520.P8958267303511208184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375516 n : ℚ) / (A003418 n : ℚ)

end

end A375520.P8958267303511208184

/-! ## A375520.P6062851136210555450

`(A374983(n)+1)/A003418(n)`
-/

namespace A375520.P6062851136210555450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374983 n + 1 : ℚ) / (A003418 n : ℚ)

end

end A375520.P6062851136210555450

/-! ## A375520.P12940111599068237748

`A375516(n)/A139550(comp[xor(n, 2*n+1)])`
-/

namespace A375520.P12940111599068237748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375516 n : ℚ) / (A139550 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ)

end

end A375520.P12940111599068237748

/-! ## A375520.P618524581649132118

`(∏[A375791(n)]-A375518(n))/A003418(n)`
-/

namespace A375520.P618524581649132118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375791 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j - A375518 n : ℤ) : ℚ) / (A003418 n : ℚ)

end

end A375520.P618524581649132118

/-!
# A375521: a(n) is the numerator of Sum_{k = 1..n} 1 / (k*A375781(k)).

The programs for A375521, there is no canonical definition to state claims against.
-/

/-! ## A375521.P6656746554730002048

`A375522(n)-A378375(n+1)`
-/

namespace A375521.P6656746554730002048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375522 n - A378375 (n + 1)

end

end A375521.P6656746554730002048

/-! ## A375521.P1298257042509334773

`A375522(n)-Δ[A020756(n+1)]`
-/

namespace A375521.P1298257042509334773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375522 n - (f1 (n + 1) - f1 n)

end

end A375521.P1298257042509334773

/-! ## A375521.P4715721480053767332

`A375522(n)-A003650(2*(n+2))`
-/

namespace A375521.P4715721480053767332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375522 n - A003650 (2 * (n + 2))

end

end A375521.P4715721480053767332

/-! ## A375521.P16801029012997003192

`A375522(n)-A110280(A059905(n))`
-/

namespace A375521.P16801029012997003192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375522 n - A110280 (A059905 n).toNat

end

end A375521.P16801029012997003192

/-! ## A375521.P8371966498786644744

`A375522(n)-A003557(A220053(n+1))`
-/

namespace A375521.P8371966498786644744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375522 n - A003557 (A220053 (n + 1)).toNat

end

end A375521.P8371966498786644744

/-!
# A375522: a(n) is the denominator of Sum_{k = 1..n} 1 / (k*A375781(k)).

The programs for A375522, there is no canonical definition to state claims against.
-/

/-! ## A375522.P1975893517644064993

`A378375(n+1)+A375521(n)`
-/

namespace A375522.P1975893517644064993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378375 (n + 1) + A375521 n

end

end A375522.P1975893517644064993

/-! ## A375522.P18388530965352642005

`A375521(n)+A000016(A326046(n+1))`
-/

namespace A375522.P18388530965352642005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375521 n + A000016 (A326046 (n + 1)).toNat

end

end A375522.P18388530965352642005

/-! ## A375522.P8280272929688519224

`A375521(n)+A322866(A137649(n+1))`
-/

namespace A375522.P8280272929688519224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375521 n + A322866 (A137649 (n + 1)).toNat

end

end A375522.P8280272929688519224

/-!
# A375524: a(n) = denominator of Sum_{i=1..n} 1/A171397(i).

The programs for A375524, there is no canonical definition to state claims against.
-/

/-! ## A375524.P4787403866823732805

`A002805(lt[0, ∏{digits}[n, #]]%A120358(2*n+1))`
-/

namespace A375524.P4787403866823732805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (Int.tmod (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) (A120358 (2 * n + 1))).toNat

end

end A375524.P4787403866823732805

/-! ## A375524.P11025329302326793649

`A002805(∑[A290759(n)^A140727(n+1)])`
-/

namespace A375524.P11025329302326793649
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290759 n : ℚ) ^ (A140727 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A375524.P11025329302326793649

/-! ## A375524.P1767535902441395469

`A002805(A067251(n+1)%A061954(n+3))`
-/

namespace A375524.P1767535902441395469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (Int.tmod (A067251 (n + 1)) (A061954 (n + 3))).toNat

end

end A375524.P1767535902441395469

/-! ## A375524.P15085872631394155234

`A002805(∑[∏{e}[A232112(n)+1, #!]])`
-/

namespace A375524.P15085872631394155234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232112 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorial (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A375524.P15085872631394155234

/-! ## A375524.P1004660344574121721

`A002805(A052382(n+1)%A268448(2*(n+1)))`
-/

namespace A375524.P1004660344574121721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (Int.tmod (A052382 (n + 1)) (A268448 (2 * (n + 1)))).toNat

end

end A375524.P1004660344574121721

/-!
# A375526: a(n) = denominator of Sum_{i=1..n} 1/A031216(i).

The programs for A375526, there is no canonical definition to state claims against.
-/

/-! ## A375526.P13011327283492825880

`filter[A000793(2*n), A005369(#)]`
-/

namespace A375526.P13011327283492825880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000793 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005369 (f1 j).toNat = 1) n)

end

end A375526.P13011327283492825880

/-! ## A375526.P7594050354037730859

`A119312(A217379(n+2))`
-/

namespace A375526.P7594050354037730859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119312 (A217379 (n + 2)).toNat

end

end A375526.P7594050354037730859

/-!
# A375528: a(n) = denominator of Sum_{k = 1..n} 1 / (A000959(k)*A375527(k)).

The programs for A375528, there is no canonical definition to state claims against.
-/

/-! ## A375528.P10396408284244379618

`∏[record[A045778(A175773(2*(n+1)))]]`
-/

namespace A375528.P10396408284244379618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A175773 (2 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A375528.P10396408284244379618

/-!
# A375529: Lexicographically earliest sequence of positive integers a(1), a(2), a(3), ... such that for any n > 0, Sum_{k = 1..n} prime(k)/a(k) < 1.

The programs for A375529, there is no canonical definition to state claims against.
-/

/-! ## A375529.P13765487194588799241

`Δ[A007504(n)]*A375530(n)+1`
-/

namespace A375529.P13765487194588799241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A375530 n + 1

end

end A375529.P13765487194588799241

/-!
# A375530: a(n) is the denominator of Sum_{k = 1..n} prime(k) / A375529(k).

The programs for A375530, there is no canonical definition to state claims against.
-/

/-! ## A375530.P16568001682276032846

`floor(A375529(n+1)/A000040(n+1))`
-/

namespace A375530.P16568001682276032846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A375529 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)⌋

end

end A375530.P16568001682276032846

/-!
# A375531: Lexicographically earliest sequence of positive integers a(1), a(2), a(3), ... such that for any n > 0, Sum_{k = 1..n} k!/a(k) < 1.

The programs for A375531, there is no canonical definition to state claims against.
-/

/-! ## A375531.P16561366051569827362

`(n+1)!*A375532(n)+1`
-/

namespace A375531.P16561366051569827362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A375532 n + 1

end

end A375531.P16561366051569827362

/-! ## A375531.P5903540772659112395

`(n+1)*(a(n-1)²-a(n-1))+1` with `a(0)=2`
-/

namespace A375531.P5903540772659112395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (n + 1 : ℤ) * (a (n - 1) ^ 2 - a (n - 1)) + 1

end

end A375531.P5903540772659112395

/-!
# A375532: a(n) is the denominator of Sum_{k = 1..n} k! / A375531(k).

The programs for A375532, there is no canonical definition to state claims against.
-/

/-! ## A375532.P17089477417338084472

`a(n-1)+a(n-1)²*n!` with `a(0)=1`
-/

namespace A375532.P17089477417338084472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (n - 1) ^ 2 * Nat.factorial n

end

end A375532.P17089477417338084472

/-!
# A375533: a(n) = numerator of Sum_{i=1..n} 1/A038603(i).

The programs for A375533, there is no canonical definition to state claims against.
-/

/-! ## A375533.P5366410054485580034

`A003415(A375534(n))`
-/

namespace A375533.P5366410054485580034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A375534 n).toNat

end

end A375533.P5366410054485580034

/-!
# A375534: a(n) = denominator of Sum_{i=1..n} 1/A038603(i).

The programs for A375534, there is no canonical definition to state claims against.
-/

/-! ## A375534.P10247593655291553474

`a(n-1)*A038603(n)` with `a(0)=1`
-/

namespace A375534.P10247593655291553474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A038603 n

end

end A375534.P10247593655291553474

/-! ## A375534.P8956848390374961645

`∏[record[A121042(A006530(n+1))]]`
-/

namespace A375534.P8956848390374961645
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121042 (A006530 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A375534.P8956848390374961645

/-! ## A375534.P7377273266292166990

`∏[∪[A038603(n+1), A282012(n)]]`
-/

namespace A375534.P7377273266292166990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282012 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A375534.P7377273266292166990

/-! ## A375534.P4204369997372505771

`∏[∪[A038603(n+1), A283074(n+1)]]`
-/

namespace A375534.P4204369997372505771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283074 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A375534.P4204369997372505771

/-! ## A375534.P7201289042136911238

`A375533(n+1)-A038603(n+1)*A375533(n)`
-/

namespace A375534.P7201289042136911238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375533 (n + 1) - A038603 (n + 1) * A375533 n

end

end A375534.P7201289042136911238

/-!
# A375535: a(n) = n - A075860(n).

The programs for A375535, there is no canonical definition to state claims against.
-/

/-! ## A375535.P13553391085474929950

`n+1-A075860(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A375535.P13553391085474929950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A075860 (n + 1)

end

end A375535.P13553391085474929950

/-! ## A375535.P4409025310059091883

`n-A023443(A075860(n+1))`
-/

namespace A375535.P4409025310059091883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A075860 (n + 1)).toNat

end

end A375535.P4409025310059091883

/-! ## A375535.P12155230175929279581

`A022958(A075860(n+1)+1)+n`
-/

namespace A375535.P12155230175929279581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 (A075860 (n + 1) + 1).toNat + (n : ℤ)

end

end A375535.P12155230175929279581

/-! ## A375535.P18231233978608614750

`A001489(A075860(n+1))+A000027(n+1)`
-/

namespace A375535.P18231233978608614750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A075860 (n + 1)).toNat + A000027 (n + 1)

end

end A375535.P18231233978608614750

/-! ## A375535.P11506957899645668373

`n+1-A008472(A088865(A088865(n+1)))`
-/

namespace A375535.P11506957899645668373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A008472 (A088865 (A088865 (n + 1)).toNat).toNat

end

end A375535.P11506957899645668373

/-!
# A375536: The maximum exponent in the prime factorization of the largest 5-smooth divisor of n.

The programs for A375536, the canonical program `A375536.P10078658063554449520` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375536 has offset 1).

The definition of A375536 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A375536.P10078658063554449520

`A051903(A355582(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A375536

/-- `A051903(A355582(n+1))` -/
def P10078658063554449520.Spec : Prop :=
  ∀ n, P10078658063554449520.a n = A375536 (n + 1)

theorem P10078658063554449520.correct : P10078658063554449520.Spec := by
  intro n
  simp only [A375536, Nat.add_sub_cancel]

end A375536

/-! ## A375536.P16194046802283087714

`A051903(gcd(30^∑{e}[n+1, #], xor(n, -1)))`
-/

namespace A375536.P16194046802283087714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (Int.gcd (30 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℤ) (Int.xor (n : ℤ) (-1)))

end

end A375536.P16194046802283087714

namespace A375536

/-- `A051903(gcd(30^∑{e}[n+1, #], xor(n, -1)))` -/
def P16194046802283087714.Spec : Prop :=
  ∀ n, P16194046802283087714.a n = A375536 (n + 1)

end A375536

/-! ## A375536.P8716115764303257780

`A051903(lcm(A065331(n+1), A132741(n+1)))`
-/

namespace A375536.P8716115764303257780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (Int.lcm (A065331 (n + 1)) (A132741 (n + 1)))

end

end A375536.P8716115764303257780

namespace A375536

/-- `A051903(lcm(A065331(n+1), A132741(n+1)))` -/
def P8716115764303257780.Spec : Prop :=
  ∀ n, P8716115764303257780.a n = A375536 (n + 1)

end A375536

/-! ## A375536.P7386981557245219786

`A375537(A034856(n+2))`
-/

namespace A375536.P7386981557245219786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375537 (A034856 (n + 2)).toNat

end

end A375536.P7386981557245219786

namespace A375536

/-- `A375537(A034856(n+2))` -/
def P7386981557245219786.Spec : Prop :=
  ∀ n, P7386981557245219786.a n = A375536 (n + 1)

end A375536

/-! ## A375536.P1578961290748040442

`A375537(A055999(n)+4)`
-/

namespace A375536.P1578961290748040442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375537 (A055999 n + 4).toNat

end

end A375536.P1578961290748040442

namespace A375536

/-- `A375537(A055999(n)+4)` -/
def P1578961290748040442.Spec : Prop :=
  ∀ n, P1578961290748040442.a n = A375536 (n + 1)

end A375536

/-! ## A375536.P16102688018921177804

`A051903(A060904(n+1)*A244416(n+1))`
-/

namespace A375536.P16102688018921177804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A060904 (n + 1) * A244416 (n + 1)).toNat

end

end A375536.P16102688018921177804

namespace A375536

/-- `A051903(A060904(n+1)*A244416(n+1))` -/
def P16102688018921177804.Spec : Prop :=
  ∀ n, P16102688018921177804.a n = A375536 (n + 1)

end A375536

/-! ## A375536.P706798737798951809

`C(A051903(n+1), A100936(A020639(n+1)))`
-/

namespace A375536.P706798737798951809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051903 (n + 1)).toNat (A100936 (A020639 (n + 1)).toNat).toNat

end

end A375536.P706798737798951809

namespace A375536

/-- `C(A051903(n+1), A100936(A020639(n+1)))` -/
def P706798737798951809.Spec : Prop :=
  ∀ n, (P706798737798951809.a n : ℤ) = A375536 (n + 1)

end A375536

/-! ## A375536.P14984343334223094778

`C(A051903(n+1), A370399(A285109(n+1)/(n+1)))`
-/

namespace A375536.P14984343334223094778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051903 (n + 1)).toNat (A370399 (SequenceMachineLib.roundAway ((A285109 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat).toNat

end

end A375536.P14984343334223094778

namespace A375536

/-- `C(A051903(n+1), A370399(A285109(n+1)/(n+1)))` -/
def P14984343334223094778.Spec : Prop :=
  ∀ n, (P14984343334223094778.a n : ℤ) = A375536 (n + 1)

end A375536

/-! ## A375536.P8923199236551922154

`A051628(lcm(n+1, A064614(n+1)))`
-/

namespace A375536.P8923199236551922154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051628 (Int.lcm (n + 1 : ℤ) (A064614 (n + 1)))

end

end A375536.P8923199236551922154

namespace A375536

/-- `A051628(lcm(n+1, A064614(n+1)))` -/
def P8923199236551922154.Spec : Prop :=
  ∀ n, P8923199236551922154.a n = A375536 (n + 1)

end A375536

/-!
# A375537: Square array A(n, k) (n, k >= 1) read by antidiagonals in ascending order: A(n, k) = Max_{i = 1..n} v_prime(i)(k), where v_p(k) is the p-adic valuation of k.

The programs for A375537, there is no canonical definition to state claims against.
-/

/-! ## A375537.P8032671851327751013

`A340691(A054582(n))-A078926(n+1)`
-/

namespace A375537.P8032671851327751013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340691 (A054582 n).toNat - A078926 (n + 1)

end

end A375537.P8032671851327751013

/-! ## A375537.P9721399359029247075

`A081221(A253588(n+1))`
-/

namespace A375537.P9721399359029247075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081221 (A253588 (n + 1)).toNat

end

end A375537.P9721399359029247075

/-! ## A375537.P3110275297250362323

`A001899(A033918(n+1))%A033925(n+1)`
-/

namespace A375537.P3110275297250362323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001899 (A033918 (n + 1)).toNat) (A033925 (n + 1))

end

end A375537.P3110275297250362323

/-! ## A375537.P12176037612613718595

`A001222(gcd(A002260(n+1), A144858(n+1)))`
-/

namespace A375537.P12176037612613718595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A002260 (n + 1)) (A144858 (n + 1)))

end

end A375537.P12176037612613718595

/-! ## A375537.P1278536653790646225

`A031007(A224114(n+1))%4`
-/

namespace A375537.P1278536653790646225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031007 (A224114 (n + 1)).toNat) 4

end

end A375537.P1278536653790646225

/-!
# A375540: a(n) = 2^n * n! * [x^n] (1/2 - exp(-x))^n.

The programs for A375540, there is no canonical definition to state claims against.
-/

/-! ## A375540.P3207257996639829336

`A394444(∑[4*n])`
-/

namespace A375540.P3207257996639829336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394444 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A375540.P3207257996639829336

/-!
# A375542: a(n) = n! * [x^n] (-2 - exp(-x))^n.

The programs for A375542, there is no canonical definition to state claims against.
-/

/-! ## A375542.P13190230717380289543

`A301301(A005329(n)-1)`
-/

namespace A375542.P13190230717380289543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301301 (A005329 n - 1).toNat

end

end A375542.P13190230717380289543

/-!
# A375543: Sylvester primes. Yet another proof of the infinity of primes.

The programs for A375543, there is no canonical definition to state claims against.
-/

/-! ## A375543.P7529459509918216171

`A000040(A375545(n+1))`
-/

namespace A375543.P7529459509918216171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A375545 (n + 1)).toNat

end

end A375543.P7529459509918216171

/-! ## A375543.P14720796131844490879

`A008578(A375545(n+1)+1)`
-/

namespace A375543.P14720796131844490879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A375545 (n + 1) + 1).toNat

end

end A375543.P14720796131844490879

/-! ## A375543.P3830319229887204520

`A182986(A375545(n+1)+1)`
-/

namespace A375543.P3830319229887204520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A375545 (n + 1) + 1).toNat

end

end A375543.P3830319229887204520

/-! ## A375543.P9089163842279280065

`A126263(∑[A022896(n+1)!])`
-/

namespace A375543.P9089163842279280065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A022896 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126263 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A375543.P9089163842279280065

/-!
# A375545: Indices of the Sylvester primes (A375543) in the primes (A000040).

The programs for A375545, there is no canonical definition to state claims against.
-/

/-! ## A375545.P10089341207637177509

`A000720(A375543(n+1))`
-/

namespace A375545.P10089341207637177509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A375543 (n + 1)).toNat

end

end A375545.P10089341207637177509

/-! ## A375545.P3257343565610449860

`A061395(A375543(n+1)+A058348(n+1))`
-/

namespace A375545.P3257343565610449860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A375543 (n + 1) + A058348 (n + 1)).toNat

end

end A375545.P3257343565610449860

/-! ## A375545.P15451553831719856782

`A353483(n+1)+A061395(A375543(n+1))`
-/

namespace A375545.P15451553831719856782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353483 (n + 1) + A061395 (A375543 (n + 1)).toNat

end

end A375545.P15451553831719856782

/-! ## A375545.P2515576039704581490

`A061395(A375543(n+1))%A147970(n+1)`
-/

namespace A375545.P2515576039704581490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A375543 (n + 1)).toNat) (A147970 (n + 1))

end

end A375545.P2515576039704581490

/-! ## A375545.P13923701166596092201

`A061395(A375543(n+1)%A206484(n+4))`
-/

namespace A375545.P13923701166596092201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A375543 (n + 1)) (A206484 (n + 4))).toNat

end

end A375545.P13923701166596092201

/-!
# A375546: Triangle read by rows: T(n, k) = Sum_{d|n} d * A375467(d, k) for n > 0, T(0, 0) = 1.

The programs for A375546, there is no canonical definition to state claims against.
-/

/-! ## A375546.P11762491832950375537

`A244317(A256069(n))`
-/

namespace A375546.P11762491832950375537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244317 (A256069 n).toNat

end

end A375546.P11762491832950375537

/-! ## A375546.P3696591240257190840

`A282691(A269939(n))`
-/

namespace A375546.P3696591240257190840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282691 (A269939 n).toNat

end

end A375546.P3696591240257190840

/-! ## A375546.P10295849068754151315

`A309236(A289546(n))`
-/

namespace A375546.P10295849068754151315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309236 (A289546 n).toNat

end

end A375546.P10295849068754151315

/-! ## A375546.P14179535697187728762

`A352104(A387597(n))`
-/

namespace A375546.P14179535697187728762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352104 (A387597 n).toNat

end

end A375546.P14179535697187728762

/-! ## A375546.P16076328875064952972

`A005811(A135313(n)²)`
-/

namespace A375546.P16076328875064952972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A135313 n ^ 2).toNat

end

end A375546.P16076328875064952972

/-!
# A375547: Row sums of A375546.

The programs for A375547, there is no canonical definition to state claims against.
-/

/-! ## A375547.P9366522155521414107

`A300124(∑[ceil(xor(1, n)/6)²])`
-/

namespace A375547.P9366522155521414107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 n : ℚ) / 6⌉ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300124 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A375547.P9366522155521414107

/-! ## A375547.P6961952908608398787

`A014419(A060089(n))`
-/

namespace A375547.P6961952908608398787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014419 (A060089 n).toNat

end

end A375547.P6961952908608398787

/-!
# A375548: a(n) is the least prime number of the form n mod (10^k) for some k > 0, or 0 if no such prime number exists.

The programs for A375548, there is no canonical definition to state claims against.
-/

/-! ## A375548.P9320092983668152488

`A331097(n)%A255603(A101321(2*(n+1)))`
-/

namespace A375548.P9320092983668152488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331097 n) (A255603 (A101321 (2 * (n + 1))).toNat)

end

end A375548.P9320092983668152488

/-! ## A375548.P9756735624693510474

`C(A211396(n), A157397(A191562(n+1)))`
-/

namespace A375548.P9756735624693510474
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A211396 n).toNat (A157397 (A191562 (n + 1)).toNat).toNat

end

end A375548.P9756735624693510474

/-! ## A375548.P7078965305615551292

`A211396(n)%A189394(A003963(3*n+4))`
-/

namespace A375548.P7078965305615551292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211396 n) (A189394 (A003963 (3 * n + 4)).toNat)

end

end A375548.P7078965305615551292

/-!
# A375549: Series expansion of (x - 1)^3/(2*x - 1)^5.

The programs for A375549, the canonical program `A375549.P17442778380587490585` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375549 has offset 0).

The definition of A375549 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375549.P17442778380587490585

`(n+1)*(n+6)*(n²+15*n+32)*2^(n-6)/3`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A375549

/-- `(n+1)*(n+6)*(n²+15*n+32)*2^(n-6)/3` -/
def P17442778380587490585.Spec : Prop :=
  ∀ n, P17442778380587490585.a n = (A375549 n : ℚ)

end A375549

/-! ## A375549.P14051773444598036931

`∑[∑[A169792(n)]]`
-/

namespace A375549.P14051773444598036931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169792 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375549.P14051773444598036931

namespace A375549

/-- `∑[∑[A169792(n)]]` -/
def P14051773444598036931.Spec : Prop :=
  ∀ n, P14051773444598036931.a n = A375549 n

end A375549

/-! ## A375549.P2929300902365877915

`∑[A055589(n+1)]`
-/

namespace A375549.P2929300902365877915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375549.P2929300902365877915

namespace A375549

/-- `∑[A055589(n+1)]` -/
def P2929300902365877915.Spec : Prop :=
  ∀ n, P2929300902365877915.a n = A375549 n

end A375549

/-! ## A375549.P8153542493526418471

`∑[record[A055589(A028242(n))]]`
-/

namespace A375549.P8153542493526418471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055589 (A028242 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375549.P8153542493526418471

namespace A375549

/-- `∑[record[A055589(A028242(n))]]` -/
def P8153542493526418471.Spec : Prop :=
  ∀ n, P8153542493526418471.a n = A375549 n

end A375549

/-! ## A375549.P10174210890143506113

`A055589(n+2)-A049612(n+2)`
-/

namespace A375549.P10174210890143506113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055589 (n + 2) - A049612 (n + 2)

end

end A375549.P10174210890143506113

namespace A375549

/-- `A055589(n+2)-A049612(n+2)` -/
def P10174210890143506113.Spec : Prop :=
  ∀ n, P10174210890143506113.a n = A375549 n

end A375549

/-! ## A375549.P1390691183642096036

`A272099(A167614(n+2))`
-/

namespace A375549.P1390691183642096036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272099 (A167614 (n + 2)).toNat

end

end A375549.P1390691183642096036

namespace A375549

/-- `A272099(A167614(n+2))` -/
def P1390691183642096036.Spec : Prop :=
  ∀ n, P1390691183642096036.a n = A375549 n

end A375549

/-! ## A375549.P6545429311574171481

`record[A055807(A167499(n))]`
-/

namespace A375549.P6545429311574171481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (A167499 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375549.P6545429311574171481

namespace A375549

/-- `record[A055807(A167499(n))]` -/
def P6545429311574171481.Spec : Prop :=
  ∀ n, P6545429311574171481.a n = A375549 n

end A375549

/-!
# A375550: Triangle read by rows: T(m, n, k) = binomial(n + 1, n - k)*hypergeom([m, k - n], [k + 2], -1) for m = 4.

The programs for A375550, there is no canonical definition to state claims against.
-/

/-! ## A375550.P5628257197441400818

`2*A055584(n)-A055252(n)`
-/

namespace A375550.P5628257197441400818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055584 n - A055252 n

end

end A375550.P5628257197441400818

/-! ## A375550.P4033372061656030293

`A055584(comp[∑[n]])`
-/

namespace A375550.P4033372061656030293
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055584 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A375550.P4033372061656030293

/-! ## A375550.P17282890289444369428

`gcd(A000038(n), A055584(A014132(n+1)))`
-/

namespace A375550.P17282890289444369428
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A055584 (A014132 (n + 1)).toNat)

end

end A375550.P17282890289444369428

/-! ## A375550.P13230804678057030841

`A055584(A014132(n+1))+A000038(n+1)`
-/

namespace A375550.P13230804678057030841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055584 (A014132 (n + 1)).toNat + A000038 (n + 1)

end

end A375550.P13230804678057030841

/-! ## A375550.P1332665450421685186

`A055584(A014132(n+1))%A091135(n)`
-/

namespace A375550.P1332665450421685186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055584 (A014132 (n + 1)).toNat) (A091135 n)

end

end A375550.P1332665450421685186

/-! ## A375550.P18301625547777936027

`and(A055580(n+3), A055584(A014132(n+1)))`
-/

namespace A375550.P18301625547777936027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055580 (n + 3)) (A055584 (A014132 (n + 1)).toNat)

end

end A375550.P18301625547777936027

/-!
# A375551: a(n) = Sum_{k=0..n} k XOR n-k, where XOR is the bitwise exclusive disjunction. Row sums of A003987.

The programs for A375551, the canonical program `A375551.P17811213240839334410` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375551 has offset 0).

The definition of A375551 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099027, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A375551.P17811213240839334410

`2*A099027(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A375551

/-- `2*A099027(n)` -/
def P17811213240839334410.Spec : Prop :=
  ∀ n, P17811213240839334410.a n = A375551 n

theorem P17811213240839334410.correct : P17811213240839334410.Spec := by
  intro n
  simp only [A375551]

end A375551

/-! ## A375551.P5272571714857393075

`2*∑[∑[n*∑{e}[xor(n, -n), 2-#]]]`
-/

namespace A375551.P5272571714857393075
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ p ∈ Nat.primeFactors (f3 n).natAbs, (2 - (Nat.factorization (f3 n).natAbs p : ℤ)))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A375551.P5272571714857393075

namespace A375551

/-- `2*∑[∑[n*∑{e}[xor(n, -n), 2-#]]]` -/
def P5272571714857393075.Spec : Prop :=
  ∀ n, P5272571714857393075.a n = A375551 n

end A375551

/-! ## A375551.P2737981983718637980

`∑[A046092(n)-A249153(n)]`
-/

namespace A375551.P2737981983718637980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n - A249153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375551.P2737981983718637980

namespace A375551

/-- `∑[A046092(n)-A249153(n)]` -/
def P2737981983718637980.Spec : Prop :=
  ∀ n, P2737981983718637980.a n = A375551 n

end A375551

/-! ## A375551.P10516119432592754238

`2*(A000292(n)-A090889(n))`
-/

namespace A375551.P10516119432592754238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000292 n - A090889 n)

end

end A375551.P10516119432592754238

namespace A375551

/-- `2*(A000292(n)-A090889(n))` -/
def P10516119432592754238.Spec : Prop :=
  ∀ n, P10516119432592754238.a n = A375551 n

end A375551

/-! ## A375551.P9796658058082665833

`∑[∑[A005843(n)*A088705(n)]]`
-/

namespace A375551.P9796658058082665833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n * A088705 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375551.P9796658058082665833

namespace A375551

/-- `∑[∑[A005843(n)*A088705(n)]]` -/
def P9796658058082665833.Spec : Prop :=
  ∀ n, P9796658058082665833.a n = A375551 n

end A375551

/-! ## A375551.P15965225865929384039

`A000292(n)+A099027(n)-A090889(n)`
-/

namespace A375551.P15965225865929384039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n + (A099027 n - A090889 n)

end

end A375551.P15965225865929384039

namespace A375551

/-- `A000292(n)+A099027(n)-A090889(n)` -/
def P15965225865929384039.Spec : Prop :=
  ∀ n, P15965225865929384039.a n = A375551 n

end A375551

/-! ## A375551.P2592788558797965506

`A005843(A099027(n))`
-/

namespace A375551.P2592788558797965506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A099027 n).toNat

end

end A375551.P2592788558797965506

namespace A375551

/-- `A005843(A099027(n))` -/
def P2592788558797965506.Spec : Prop :=
  ∀ n, P2592788558797965506.a n = A375551 n

end A375551

/-! ## A375551.P13813913096824038663

`A052928(A099027(n)+A099027(n))`
-/

namespace A375551.P13813913096824038663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A099027 n + A099027 n).toNat

end

end A375551.P13813913096824038663

namespace A375551

/-- `A052928(A099027(n)+A099027(n))` -/
def P13813913096824038663.Spec : Prop :=
  ∀ n, P13813913096824038663.a n = A375551 n

end A375551

/-!
# A375554: Row sums of A375555.

The programs for A375554, there is no canonical definition to state claims against.
-/

/-! ## A375554.P9370575058882088651

`A108602((n+1)!)+1`
-/

namespace A375554.P9370575058882088651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108602 (Nat.factorial (n + 1)) + 1

end

end A375554.P9370575058882088651

/-! ## A375554.P12135475273457613167

`A108602(∏[n+1])+1`
-/

namespace A375554.P12135475273457613167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108602 (∏ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A375554.P12135475273457613167

/-! ## A375554.P17375233841835315948

`A172251(A063253(n+1))`
-/

namespace A375554.P17375233841835315948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172251 (A063253 (n + 1)).toNat

end

end A375554.P17375233841835315948

/-!
# A375555: Triangle read by rows: T(n, k) = abs(A181937(k, n)), where A181937 are the André numbers, for 0 <= k <= n.

The programs for A375555, there is no canonical definition to state claims against.
-/

/-! ## A375555.P18136347099410974847

`A000005(A215204(n)^A025581(n))`
-/

namespace A375555.P18136347099410974847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A215204 n : ℚ) ^ (A025581 n : ℤ))).toNat

end

end A375555.P18136347099410974847

/-! ## A375555.P15360149672020806275

`A084938(n%A245171(2*n))`
-/

namespace A375555.P15360149672020806275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (Int.tmod (n : ℤ) (A245171 (2 * n))).toNat

end

end A375555.P15360149672020806275

/-!
# A375556: Expansion of e.g.f. 1 / (1 + x * log(1 - x^3/6)).

The programs for A375556, there is no canonical definition to state claims against.
-/

/-! ## A375556.P4423024979311900187

`A128582(A375558(n))*A375587(n)`
-/

namespace A375556.P4423024979311900187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128582 (A375558 n).toNat * A375587 n

end

end A375556.P4423024979311900187

/-! ## A375556.P16248775131587401785

`A005361(A000108(n))*A375587(n)`
-/

namespace A375556.P16248775131587401785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A000108 n).toNat * A375587 n

end

end A375556.P16248775131587401785

/-! ## A375556.P9822821875930562172

`A071625(A123106(n))*A351156(n)`
-/

namespace A375556.P9822821875930562172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (A123106 (n + 62)).toNat * A351156 n

end

end A375556.P9822821875930562172

/-! ## A375556.P20202752260115566

`A327405(A001519(n))*A351156(n)`
-/

namespace A375556.P20202752260115566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327405 (A001519 n).toNat * A351156 n

end

end A375556.P20202752260115566

/-! ## A375556.P11631271277075523875

`A228351(A151526(n+1))*A375587(n)`
-/

namespace A375556.P11631271277075523875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228351 (A151526 (n + 1)).toNat * A375587 n

end

end A375556.P11631271277075523875

/-!
# A375557: Expansion of e.g.f. 1 / (1 - x * log(1 + x^2/2)).

The programs for A375557, there is no canonical definition to state claims against.
-/

/-! ## A375557.P88381575386692447

`A059095(A179984(n))*A375167(n)`
-/

namespace A375557.P88381575386692447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059095 (A179984 n).toNat * A375167 n

end

end A375557.P88381575386692447

/-! ## A375557.P387480591589200190

`A131561(A222919(n+1))*A375167(n)`
-/

namespace A375557.P387480591589200190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131561 (A222919 (n + 1)).toNat * A375167 n

end

end A375557.P387480591589200190

/-! ## A375557.P15860182749211839512

`A062157(A375129(n+1))*A375167(n)`
-/

namespace A375557.P15860182749211839512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A375129 (n + 1)).toNat * A375167 n

end

end A375557.P15860182749211839512

/-! ## A375557.P16613336189919174681

`A375149(A375130(n+1))*A375167(n)`
-/

namespace A375557.P16613336189919174681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375149 (A375130 (n + 1)).toNat * A375167 n

end

end A375557.P16613336189919174681

/-!
# A375558: Expansion of e.g.f. 1 / (1 + x * log(1 - x^4/24)).

The programs for A375558, there is no canonical definition to state claims against.
-/

/-! ## A375558.P6257204075686270591

`gcd(A054524(A257607(n)), A375560(n))`
-/

namespace A375558.P6257204075686270591
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054524 (A257607 n).toNat) (A375560 n)

end

end A375558.P6257204075686270591

/-! ## A375558.P17590468319092044052

`A339265(A057370(n+1))*A375560(n)`
-/

namespace A375558.P17590468319092044052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339265 (A057370 (n + 1)).toNat * A375560 n

end

end A375558.P17590468319092044052

/-! ## A375558.P4572891632537411844

`A195909(A147377(n+1))*A375560(n)`
-/

namespace A375558.P4572891632537411844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195909 (A147377 (n + 1)).toNat * A375560 n

end

end A375558.P4572891632537411844

/-! ## A375558.P16096829981939679659

`sqrt(A375560(n)^A284464(2*n+1))`
-/

namespace A375558.P16096829981939679659
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A375560 n : ℚ) ^ (A284464 (2 * n + 1) : ℤ) : ℝ)

end

end A375558.P16096829981939679659

/-! ## A375558.P3059258884135812338

`A008683(A099167(n))*A375560(n)`
-/

namespace A375558.P3059258884135812338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A099167 n).toNat * A375560 n

end

end A375558.P3059258884135812338

/-!
# A375559: L starts out as the list of positive integers; at the n-th iteration, a(n) is set to L(1); then L(1) is moved to its new position in L, in between the first two elements that it has never before been next to; repeat at the second step.

The programs for A375559, there is no canonical definition to state claims against.
-/

/-! ## A375559.P16778640599739125339

`A280710(A002387(n))+A023123(n+1)`
-/

namespace A375559.P16778640599739125339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280710 (A002387 n).toNat + A023123 (n + 1)

end

end A375559.P16778640599739125339

/-! ## A375559.P12028207270898351659

`A118276(n+1)+A056626(A151256(n))`
-/

namespace A375559.P12028207270898351659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118276 (n + 1) + A056626 (A151256 n).toNat

end

end A375559.P12028207270898351659

/-! ## A375559.P13870666572531585293

`A221151(A103220(n))+A023119(n+1)`
-/

namespace A375559.P13870666572531585293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221151 (A103220 n).toNat + A023119 (n + 1)

end

end A375559.P13870666572531585293

/-! ## A375559.P16511412632155072181

`A333487(A000041(n+1))+A023123(n+1)`
-/

namespace A375559.P16511412632155072181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333487 (A000041 (n + 1)).toNat + A023123 (n + 1)

end

end A375559.P16511412632155072181

/-! ## A375559.P2567343770985006914

`A288377(A182692(n+2))+A023119(n+1)`
-/

namespace A375559.P2567343770985006914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288377 (A182692 (n + 2)).toNat + A023119 (n + 1)

end

end A375559.P2567343770985006914

/-!
# A375560: Expansion of e.g.f. 1 / (1 - x * log(1 + x^4/24)).

The programs for A375560, there is no canonical definition to state claims against.
-/

/-! ## A375560.P2250309318358713602

`A008683(A099167(n))*A375558(n)`
-/

namespace A375560.P2250309318358713602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A099167 n).toNat * A375558 n

end

end A375560.P2250309318358713602

/-! ## A375560.P688157364072475355

`A008683(A090084(n+1))*A375558(n)`
-/

namespace A375560.P688157364072475355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A090084 (n + 1)).toNat * A375558 n

end

end A375560.P688157364072475355

/-!
# A375561: Expansion of e.g.f. 1 / (1 + x * log(1 - x^2)).

The programs for A375561, there is no canonical definition to state claims against.
-/

/-! ## A375561.P3958170299181738159

`A034444(A036447(n))*A375167(n)`
-/

namespace A375561.P3958170299181738159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A036447 n).toNat * A375167 n

end

end A375561.P3958170299181738159

/-! ## A375561.P1898256991072002882

`A060128(A053556(n))*A375588(n)`
-/

namespace A375561.P1898256991072002882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060128 (A053556 n).toNat * A375588 n

end

end A375561.P1898256991072002882

/-! ## A375561.P14921636083024849745

`A026513(A107591(n))*A357966(n)`
-/

namespace A375561.P14921636083024849745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026513 (A107591 n).toNat * A357966 n

end

end A375561.P14921636083024849745

/-! ## A375561.P2225016907331188110

`A130784(A000245(n))*A375588(n)`
-/

namespace A375561.P2225016907331188110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130784 (A000245 n).toNat * A375588 n

end

end A375561.P2225016907331188110

/-! ## A375561.P6598607420737711147

`A050603(A132745(n))*A357966(n)`
-/

namespace A375561.P6598607420737711147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (A132745 n).toNat * A357966 n

end

end A375561.P6598607420737711147

/-!
# A375562: Expansion of e.g.f. 1 / (1 + x * log(1 - x^3)).

The programs for A375562, there is no canonical definition to state claims against.
-/

/-! ## A375562.P11845933988454681740

`A049419(A266232(n))*A375589(n)`
-/

namespace A375562.P11845933988454681740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A266232 n).toNat * A375589 n

end

end A375562.P11845933988454681740

/-! ## A375562.P9359864851226682883

`A088569(A006958(n+1))*A353227(n)`
-/

namespace A375562.P9359864851226682883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088569 (A006958 (n + 1)).toNat * A353227 n

end

end A375562.P9359864851226682883

/-! ## A375562.P10769031406666860223

`A375571(A375595(n+1))*A375589(n)`
-/

namespace A375562.P10769031406666860223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375571 (A375595 (n + 1)).toNat * A375589 n

end

end A375562.P10769031406666860223

/-! ## A375562.P9237219659699804602

`A118914(A000041(2*(n+1)))*A353227(n)`
-/

namespace A375562.P9237219659699804602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118914 (A000041 (2 * (n + 1))).toNat * A353227 n

end

end A375562.P9237219659699804602

/-! ## A375562.P900930693149001641

`A118914(A000041(2*(n+1)))*A357967(n)*A080576(3*(n+1))`
-/

namespace A375562.P900930693149001641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118914 (A000041 (2 * (n + 1))).toNat * A357967 n * A080576 (3 * (n + 1))

end

end A375562.P900930693149001641

/-!
# A375563: a(1) = 1; for n > 1, a(n) is the smallest unused positive number that shares a factor with a(n-1) if a(n-1) is prime, otherwise a(n) is coprime to a(n-1).

The programs for A375563, there is no canonical definition to state claims against.
-/

/-! ## A375563.P756973459180442727

`A384045(n+1)-A316867(A051164(n))`
-/

namespace A375563.P756973459180442727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384045 (n + 1) - A316867 (A051164 n).toNat

end

end A375563.P756973459180442727

/-!
# A375568: a(n) = denominator(A006571(n)/A366450(n)) if A366450(n) != 0, otherwise 1.

The programs for A375568, there is no canonical definition to state claims against.
-/

/-! ## A375568.P9460688997568821910

`gcd((n+1)/∏{p}[n+1, #], A153452(A066564(3*(n+1))))`
-/

namespace A375568.P9460688997568821910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (A153452 (A066564 (3 * (n + 1))).toNat)

end

end A375568.P9460688997568821910

/-! ## A375568.P12417030224348641599

`gcd(A083349(n), A174110(n))`
-/

namespace A375568.P12417030224348641599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A083349 n) (A174110 n)

end

end A375568.P12417030224348641599

/-! ## A375568.P11484499449013840170

`gcd((n+1)/∏{p}[n+1, #], A139275(A057732(n+1)))`
-/

namespace A375568.P11484499449013840170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (A139275 (A057732 (n + 1)).toNat)

end

end A375568.P11484499449013840170

/-! ## A375568.P8686835540683165342

`gcd(A000189(n+1), A091226(A331571(n)))`
-/

namespace A375568.P8686835540683165342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000189 (n + 1)) (A091226 (A331571 n).toNat)

end

end A375568.P8686835540683165342

/-! ## A375568.P3406638075304150536

`A000189(n+1)%A369695(A079366(2*n+3))`
-/

namespace A375568.P3406638075304150536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000189 (n + 1)) (A369695 (A079366 (2 * n + 3)).toNat)

end

end A375568.P3406638075304150536

/-!
# A375569: a(n) = number of minimum dominating sets in the stacked prism graph C_n X P_n.

The programs for A375569, there is no canonical definition to state claims against.
-/

/-! ## A375569.P1061672569337531240

`A375566(A001844(n)*A247976(n+1))`
-/

namespace A375569.P1061672569337531240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375566 (A001844 n * A247976 (n + 1)).toNat

end

end A375569.P1061672569337531240

/-!
# A375570: Smallest m such that A008949(m,k) = n for some k.

The programs for A375570, there is no canonical definition to state claims against.
-/

/-! ## A375570.P9255632686459606804

`A264034(n)-A230698(A250408(n+1))+n`
-/

namespace A375570.P9255632686459606804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264034 n - A230698 (A250408 (n + 1)).toNat + (n : ℤ)

end

end A375570.P9255632686459606804

/-!
# A375571: a(n) is the unique integer k such that A008949(A375570(n),k) = n.

The programs for A375571, there is no canonical definition to state claims against.
-/

/-! ## A375571.P16151749825875354393

`A357138(A085150(n+1))*A357138(n)`
-/

namespace A375571.P16151749825875354393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357138 (A085150 (n + 1)).toNat * A357138 n

end

end A375571.P16151749825875354393

/-! ## A375571.P2317320502666116642

`A334029(n)^A033715(A122670(n))`
-/

namespace A375571.P2317320502666116642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334029 n : ℚ) ^ (A033715 (A122670 n).toNat : ℤ)

end

end A375571.P2317320502666116642

/-! ## A375571.P16219662065571890008

`gcd(A093971(A122888(n)), A124769(n))`
-/

namespace A375571.P16219662065571890008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A093971 (A122888 n).toNat) (A124769 n)

end

end A375571.P16219662065571890008

/-! ## A375571.P9078038661451230672

`gcd(A334029(n), A334032(A328901(n)))`
-/

namespace A375571.P9078038661451230672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A334029 n) (A334032 (A328901 n).toNat)

end

end A375571.P9078038661451230672

/-! ## A375571.P3754294903279257388

`A334297(n)^A121361(A357681(3*n+4))`
-/

namespace A375571.P3754294903279257388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334297 n : ℚ) ^ (A121361 (A357681 (3 * n + 4)).toNat : ℤ)

end

end A375571.P3754294903279257388

/-!
# A375572: Numbers occurring at least twice in Bernoulli's triangle A008949.

The programs for A375572, there is no canonical definition to state claims against.
-/

/-! ## A375572.P17522148390674072091

`lt[A302971(n), A302971(A268716(n))]`
-/

namespace A375572.P17522148390674072091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302971 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302971 (A268716 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375572.P17522148390674072091

/-!
# A375577: Array read by ascending antidiagonals: A(n,k) = k^n + k*n + 1.

The programs for A375577, there is no canonical definition to state claims against.
-/

/-! ## A375577.P10227979804480469255

`A077028(n)+A004248(n)`
-/

namespace A375577.P10227979804480469255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n + A004248 n

end

end A375577.P10227979804480469255

/-! ## A375577.P16552734708382164860

`A004247(n)+A004248(n)+1`
-/

namespace A375577.P16552734708382164860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n + (A004248 n + 1)

end

end A375577.P16552734708382164860

/-! ## A375577.P8701562402221849225

`A244580(A098568(n))+A097805(n)`
-/

namespace A375577.P8701562402221849225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244580 (A098568 n).toNat + A097805 n

end

end A375577.P8701562402221849225

/-! ## A375577.P1825005757036778094

`A185274(A152176(n+1))+A029635(n)`
-/

namespace A375577.P1825005757036778094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185274 (A152176 (n + 1)).toNat + A029635 n

end

end A375577.P1825005757036778094

/-! ## A375577.P4192233399890159552

`A029635(n)+A025465(A000009(3*n))`
-/

namespace A375577.P4192233399890159552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n + A025465 (A000009 (3 * n)).toNat

end

end A375577.P4192233399890159552

/-!
# A375578: Antidiagonal sums of A375577.

The programs for A375578, there is no canonical definition to state claims against.
-/

/-! ## A375578.P17228446472384042329

`A167991(A150912(n))`
-/

namespace A375578.P17228446472384042329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167991 (A150912 n).toNat

end

end A375578.P17228446472384042329

/-! ## A375578.P9602521510644399925

`A330060(A014743(n+1))`
-/

namespace A375578.P9602521510644399925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330060 (A014743 (n + 1)).toNat

end

end A375578.P9602521510644399925

/-! ## A375578.P12215835023900021980

`A342191(A017992(n+1))`
-/

namespace A375578.P12215835023900021980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342191 (A017992 (n + 1)).toNat

end

end A375578.P12215835023900021980

/-!
# A375580: a(n) is the number of partitions n = x + y + z of positive integers such that x*y*z is a perfect cube.

The programs for A375580, there is no canonical definition to state claims against.
-/

/-! ## A375580.P1056570791443198357

`val(A181808(2*n+5), Δ[A040040(2*n+3)])`
-/

namespace A375580.P1056570791443198357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A181808 (2 * n + 5)).toNat (f1 (n + 1) - f1 n).toNat

end

end A375580.P1056570791443198357

/-! ## A375580.P9348819739983130205

`∑[A003309(A362618(3*n+5))%3-A001285(n)]`
-/

namespace A375580.P9348819739983130205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003309 (A362618 (3 * n + 5)).toNat) 3 - A001285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375580.P9348819739983130205

/-! ## A375580.P11303837318471130795

`A379958(A261651(n+1))`
-/

namespace A375580.P11303837318471130795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379958 (A261651 (n + 1)).toNat

end

end A375580.P11303837318471130795

/-! ## A375580.P13550831871469821121

`A391614(A251711(n+1))`
-/

namespace A375580.P13550831871469821121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391614 (A251711 (n + 1)).toNat

end

end A375580.P13550831871469821121

/-! ## A375580.P14065226495083601877

`A011689(A263927(n+2))`
-/

namespace A375580.P14065226495083601877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011689 (A263927 (n + 2)).toNat

end

end A375580.P14065226495083601877

/-!
# A375582: a(n) is the number of ways n can be written as a sum of a practical number and two decagonal numbers.

The programs for A375582, there is no canonical definition to state claims against.
-/

/-! ## A375582.P14014028526369339739

`A001221(A163088(n)+A163058(n+1))`
-/

namespace A375582.P14014028526369339739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A163088 n + A163058 (n + 1)).toNat

end

end A375582.P14014028526369339739

/-! ## A375582.P11079286568879118568

`A124766(A237591(n+1)+A197679(n+1))`
-/

namespace A375582.P11079286568879118568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (A237591 (n + 1) + A197679 (n + 1)).toNat

end

end A375582.P11079286568879118568

/-! ## A375582.P6830915833049143759

`gcd(A001222(A252658(n+1)+1), A056849(2*(n+1)))`
-/

namespace A375582.P6830915833049143759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (A252658 (n + 1) + 1).toNat) (A056849 (2 * (n + 1)))

end

end A375582.P6830915833049143759

/-! ## A375582.P10810881666586368187

`A001511(∏{e}[4*A108330(n+1), #])`
-/

namespace A375582.P10810881666586368187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A108330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A375582.P10810881666586368187

/-! ## A375582.P8458568142395398592

`(A241601(n)-A108330(n+1))%2+2`
-/

namespace A375582.P8458568142395398592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241601 n - A108330 (n + 1)) 2 + 2

end

end A375582.P8458568142395398592

/-!
# A375583: a(n) is the number of ways n can be written as a sum of a practical number and two 11-gonal numbers.

The programs for A375583, there is no canonical definition to state claims against.
-/

/-! ## A375583.P15078815571272498639

`C(A358619(2*(n+1)), A358619(A103314(n)))`
-/

namespace A375583.P15078815571272498639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A358619 (2 * (n + 1))).toNat (A358619 (A103314 n).toNat).toNat

end

end A375583.P15078815571272498639

/-!
# A375585: Number of ASCII letter 'A' bytes that when compressed with zlib generate a new record longest compressed byte stream.

The programs for A375585, there is no canonical definition to state claims against.
-/

/-! ## A375585.P17204420823048946886

`4^a(n-1)+6` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A375585.P17204420823048946886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 4] fun n a =>
  4 ^ a (n - 1) + 6

end

end A375585.P17204420823048946886

/-!
# A375586: Expansion of e.g.f. 1 / (1 + x - x * exp(x^2/2)).

The programs for A375586, there is no canonical definition to state claims against.
-/

/-! ## A375586.P7119288000013506115

`A072550(A326083(n))*A375591(n)`
-/

namespace A375586.P7119288000013506115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072550 (A326083 n).toNat * A375591 n

end

end A375586.P7119288000013506115

/-! ## A375586.P6956582153277626488

`A375167(n)/A094840(A392349(n))`
-/

namespace A375586.P6956582153277626488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375167 n : ℚ) / (A094840 (A392349 n).toNat : ℚ)

end

end A375586.P6956582153277626488

/-! ## A375586.P14743089063306804486

`A375167(n)/A124766(A004111(n+1))`
-/

namespace A375586.P14743089063306804486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375167 n : ℚ) / (A124766 (A004111 (n + 1)).toNat : ℚ)

end

end A375586.P14743089063306804486

/-! ## A375586.P13324980461731942301

`A375167(n)/A329316(A093371(n+1))`
-/

namespace A375586.P13324980461731942301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375167 n : ℚ) / (A329316 (A093371 (n + 1)).toNat : ℚ)

end

end A375586.P13324980461731942301

/-! ## A375586.P14527811212418933131

`A066099(A375573(n+3))*A375591(n)`
-/

namespace A375586.P14527811212418933131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A375573 (n + 3)).toNat * A375591 n

end

end A375586.P14527811212418933131

/-!
# A375587: Expansion of e.g.f. 1 / (1 + x - x * exp(x^3/6)).

The programs for A375587, there is no canonical definition to state claims against.
-/

/-! ## A375587.P197740267543131420

`A375556(n)/A001285(A000129(n))`
-/

namespace A375587.P197740267543131420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375556 n : ℚ) / (A001285 (A000129 n).toNat : ℚ)

end

end A375587.P197740267543131420

/-! ## A375587.P11303617221296469967

`A055457(A054975(n+3))*A375592(n)`
-/

namespace A375587.P11303617221296469967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055457 (A054975 (n + 3)).toNat * A375592 n

end

end A375587.P11303617221296469967

/-! ## A375587.P1118866292409843628

`A375556(n)/A053797(A054975(n+3))`
-/

namespace A375587.P1118866292409843628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375556 n : ℚ) / (A053797 (A054975 (n + 3)).toNat : ℚ)

end

end A375587.P1118866292409843628

/-! ## A375587.P15733900434055446777

`A053797(A105544(n))*A375592(n)`
-/

namespace A375587.P15733900434055446777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053797 (A105544 n).toNat * A375592 n

end

end A375587.P15733900434055446777

/-! ## A375587.P9739446559170934907

`A300979(A293214(n+1))*A375592(n)`
-/

namespace A375587.P9739446559170934907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300979 (A293214 (n + 1)).toNat * A375592 n

end

end A375587.P9739446559170934907

/-!
# A375588: Expansion of e.g.f. 1 / (1 + x - x * exp(x^2)).

The programs for A375588, there is no canonical definition to state claims against.
-/

/-! ## A375588.P11222717960982781356

`A228351(A088218(n))*A357966(n)`
-/

namespace A375588.P11222717960982781356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228351 (A088218 n).toNat * A357966 n

end

end A375588.P11222717960982781356

/-! ## A375588.P9712579923929393218

`A323436(A001045(n))*A357966(n)`
-/

namespace A375588.P9712579923929393218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323436 (A001045 n).toNat * A357966 n

end

end A375588.P9712579923929393218

/-! ## A375588.P16889304012966378019

`A357966(n)*A382890(A053556(n))`
-/

namespace A375588.P16889304012966378019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357966 n * A382890 (A053556 n).toNat

end

end A375588.P16889304012966378019

/-! ## A375588.P14998667520735114043

`A375561(n)/A210961(A335436(n))`
-/

namespace A375588.P14998667520735114043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375561 n : ℚ) / (A210961 (A335436 n).toNat : ℚ)

end

end A375588.P14998667520735114043

/-! ## A375588.P13058973508291687427

`A040001(A074420(n+1))*A357966(n)`
-/

namespace A375588.P13058973508291687427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A074420 (n + 1)).toNat * A357966 n

end

end A375588.P13058973508291687427

/-!
# A375589: Expansion of e.g.f. 1 / (1 + x - x * exp(x^3)).

The programs for A375589, there is no canonical definition to state claims against.
-/

/-! ## A375589.P14515031236994391358

`A375562(n)/A238747(A000978(n+1))`
-/

namespace A375589.P14515031236994391358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375562 n : ℚ) / (A238747 (A000978 (n + 1)).toNat : ℚ)

end

end A375589.P14515031236994391358

/-! ## A375589.P8238623988791410699

`A118914(A000041(2*(n+1)))*A357967(n)`
-/

namespace A375589.P8238623988791410699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118914 (A000041 (2 * (n + 1))).toNat * A357967 n

end

end A375589.P8238623988791410699

/-! ## A375589.P5427664291681034991

`A375562(n)/A382890(A279684(n))`
-/

namespace A375589.P5427664291681034991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375562 n : ℚ) / (A382890 (A279684 n).toNat : ℚ)

end

end A375589.P5427664291681034991

/-! ## A375589.P10679609991013424600

`A357967(n)*A366902(A000682(n+1))`
-/

namespace A375589.P10679609991013424600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357967 n * A366902 (A000682 (n + 1)).toNat

end

end A375589.P10679609991013424600

/-! ## A375589.P1556497239687280004

`A081129(A301635(n+1))*A357967(n)`
-/

namespace A375589.P1556497239687280004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081129 (A301635 (n + 1)).toNat * A357967 n

end

end A375589.P1556497239687280004

/-!
# A375590: Numbers m such that there exists a nonnegative integer k for which the concatenation of m, m-1, ..., m-k is an m-digit number.

The programs for A375590, there is no canonical definition to state claims against.
-/

/-! ## A375590.P6242046705730586400

`lt[A057979(n²+2), 9*n]`
-/

namespace A375590.P6242046705730586400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (n ^ 2 + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A375590.P6242046705730586400

/-! ## A375590.P15696332492291639381

`lt[2*a(n-2)-a(n-4), A334818(n+1)]` with `a(0)=5, a(1)=0, a(2)=3, a(3)=4, a(4)=3`
-/

namespace A375590.P15696332492291639381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 0, 3, 4, 3] fun n f1 =>
  2 * f1 (n - 2) - f1 (n - 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334818 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375590.P15696332492291639381

/-! ## A375590.P2005455667067861750

`lt[A371840(A057979(n)), n]`
-/

namespace A375590.P2005455667067861750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371840 (A057979 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A375590.P2005455667067861750

/-! ## A375590.P12383535671680562130

`lt[A001057(n²), A008591(n)]`
-/

namespace A375590.P12383535671680562130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375590.P12383535671680562130

/-! ## A375590.P561761202072505642

`lt[A000700(A014682(n+2)), n+1]`
-/

namespace A375590.P561761202072505642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (A014682 (n + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A375590.P561761202072505642

/-! ## A375590.P9292144740699340004

`lt[sqrt(A052120(n+1)), A244158(n+1)]`
-/

namespace A375590.P9292144740699340004
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A052120 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244158 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A375590.P9292144740699340004

/-! ## A375590.P12693736051432755043

`lt[A023893(A014682(n)), A226492(n)]`
-/

namespace A375590.P12693736051432755043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023893 (A014682 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226492 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375590.P12693736051432755043

/-! ## A375590.P4136774191165120346

`lt[A083374(A007439(n+1)), A000584(n)]`
-/

namespace A375590.P4136774191165120346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083374 (A007439 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375590.P4136774191165120346

/-! ## A375590.P7336125112664440627

`lt[A191131(n+1), A165988(A165988(n))]`
-/

namespace A375590.P7336125112664440627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165988 (A165988 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375590.P7336125112664440627

/-!
# A375591: Expansion of e.g.f. exp( x * (exp(x^2/2) - 1) ).

The programs for A375591, there is no canonical definition to state claims against.
-/

/-! ## A375591.P5053149815343429279

`A026741(A375167(n))`
-/

namespace A375591.P5053149815343429279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A375167 n).toNat

end

end A375591.P5053149815343429279

/-! ## A375591.P17558196699606196993

`A026741(A375586(n))`
-/

namespace A375591.P17558196699606196993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A375586 n).toNat

end

end A375591.P17558196699606196993

/-! ## A375591.P4159604016923207419

`A004526(lcm(2, A375586(n)))`
-/

namespace A375591.P4159604016923207419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.lcm 2 (A375586 n))

end

end A375591.P4159604016923207419

/-! ## A375591.P18017227719076100520

`A351155(n)/A353248(A101268(n))`
-/

namespace A375591.P18017227719076100520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351155 n : ℚ) / (A353248 (A101268 n).toNat : ℚ)

end

end A375591.P18017227719076100520

/-! ## A375591.P12424424374881772422

`A375167(n)/A355741(A160747(n))`
-/

namespace A375591.P12424424374881772422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375167 n : ℚ) / (A355741 (A160747 n).toNat : ℚ)

end

end A375591.P12424424374881772422

/-!
# A375592: Expansion of e.g.f. exp( x * (exp(x^3/6) - 1) ).

The programs for A375592, there is no canonical definition to state claims against.
-/

/-! ## A375592.P13214913668390786463

`A351156(n)/A053797(A054975(n+3))`
-/

namespace A375592.P13214913668390786463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351156 n : ℚ) / (A053797 (A054975 (n + 3)).toNat : ℚ)

end

end A375592.P13214913668390786463

/-! ## A375592.P9680234795067220316

`A375556(n)/A323023(A054504(3*(n+1)))`
-/

namespace A375592.P9680234795067220316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375556 n : ℚ) / (A323023 (A054504 (3 * (n + 1))).toNat : ℚ)

end

end A375592.P9680234795067220316

/-! ## A375592.P10595557354963785800

`A222254(A351156(n))/A055642(n)`
-/

namespace A375592.P10595557354963785800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222254 (A351156 n).toNat : ℚ) / (A055642 n : ℚ)

end

end A375592.P10595557354963785800

/-! ## A375592.P14247567460645921035

`A375587(n)/A247371(A368599(n))`
-/

namespace A375592.P14247567460645921035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375587 n : ℚ) / (A247371 (A368599 n).toNat : ℚ)

end

end A375592.P14247567460645921035

/-! ## A375592.P17882003261637206016

`A026741(A161906(n+1)*A375587(n))`
-/

namespace A375592.P17882003261637206016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A161906 (n + 1) * A375587 n).toNat

end

end A375592.P17882003261637206016

/-!
# A375595: Numbers m for which the sum of all values of k satisfying the equation: m mod k = floor((m - k)/k) mod k (1 <= k <= m) exceeds 2*m.

The programs for A375595, there is no canonical definition to state claims against.
-/

/-! ## A375595.P12900237183830257030

`lt[2*n+1, A070038(n+1)]`
-/

namespace A375595.P12900237183830257030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070038 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A375595.P12900237183830257030

/-! ## A375595.P14132577542324620145

`lt[n, A004526(A070038(n+1))]`
-/

namespace A375595.P14132577542324620145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A070038 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A375595.P14132577542324620145

/-! ## A375595.P6154777678110804330

`lt[A054567(n+1), A070038(n+1)²]`
-/

namespace A375595.P6154777678110804330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070038 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375595.P6154777678110804330

/-! ## A375595.P7047823137053640047

`lt[A079588(n), A000578(A070038(n+1))]`
-/

namespace A375595.P7047823137053640047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A070038 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375595.P7047823137053640047

/-! ## A375595.P1091590060907044143

`lt[A000201(A167377(2*(n+2))), A060648(n+1)]`
-/

namespace A375595.P1091590060907044143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A167377 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060648 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375595.P1091590060907044143

/-!
# A375597: Triangle read by rows: T(n, k) = n! * 3^k * hypergeom([-k], [-n], -2/3).

The programs for A375597, there is no canonical definition to state claims against.
-/

/-! ## A375597.P3077267624124085417

`gcd(A000292(A007173(n+1)), A002943(n))`
-/

namespace A375597.P3077267624124085417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000292 (A007173 (n + 1)).toNat) (A002943 n)

end

end A375597.P3077267624124085417

/-!
# A375598: Records of A294336 and A294337.

The programs for A375598, there is no canonical definition to state claims against.
-/

/-! ## A375598.P12350464161256291962

`record[A294337(n+1)]`
-/

namespace A375598.P12350464161256291962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375598.P12350464161256291962

/-!
# A375599: The n-th record of A294336 occur at index 2^a(n).

The programs for A375599, there is no canonical definition to state claims against.
-/

/-! ## A375599.P7505931295995199316

`record[A344834(A364463(n))]`
-/

namespace A375599.P7505931295995199316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344834 (A364463 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375599.P7505931295995199316

/-! ## A375599.P2288597217156907593

`eq[A073711(n), A211993(n+1)]`
-/

namespace A375599.P2288597217156907593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073711 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211993 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A375599.P2288597217156907593

/-! ## A375599.P10203655022002630725

`eq[A211993(n+1), A366806(n)]`
-/

namespace A375599.P10203655022002630725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366806 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A375599.P10203655022002630725

/-! ## A375599.P3174100526966667669

`eq[A211993(n+1), A366874(n)]`
-/

namespace A375599.P3174100526966667669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366874 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A375599.P3174100526966667669

/-! ## A375599.P1685173523000489710

`eq[A211993(n+1), A366881(n)]`
-/

namespace A375599.P1685173523000489710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A375599.P1685173523000489710

