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
import Seq.B000.C017
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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A354902: a(n) = 2*n^2 - 6*n + 11 for n > 1 with a(0)=1 and a(1)=3.

The programs for A354902, the canonical program `A354902.P5285620969740128723` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354902 has offset 0).

The definition of A354902 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A354902.P5285620969740128723

`a(n-1)+4*(n-2)` with `a(0)=1, a(1)=3, a(2)=7`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A354902

/-- `a(n-1)+4*(n-2)` -/
def P5285620969740128723.Spec : Prop :=
  ∀ n, P5285620969740128723.a n = A354902 n

theorem P5285620969740128723.correct : P5285620969740128723.Spec := by
  intro n
  simp only [A354902]

end A354902

/-! ## A354902.P3208604853342701390

`∑[a(n-1)+4]` with `a(0)=1, a(1)=2, a(2)=4, a(3)=4`
-/

namespace A354902.P3208604853342701390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 4] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354902.P3208604853342701390

namespace A354902

/-- `∑[a(n-1)+4]` -/
def P3208604853342701390.Spec : Prop :=
  ∀ n, (P3208604853342701390.a n : ℤ) = A354902 n

end A354902

/-! ## A354902.P8047284594246895135

`∑[(n-2)*a(2-A000038(n))]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A354902.P8047284594246895135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n f1 =>
  ((n : ℤ) - 2) * f1 (2 - A000038 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354902.P8047284594246895135

namespace A354902

/-- `∑[(n-2)*a(2-A000038(n))]` -/
def P8047284594246895135.Spec : Prop :=
  ∀ n, P8047284594246895135.a n = A354902 n

end A354902

/-! ## A354902.P9536419824077271954

`A096376(n)-A116728(n+1)`
-/

namespace A354902.P9536419824077271954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096376 n - A116728 (n + 1)

end

end A354902.P9536419824077271954

namespace A354902

/-- `A096376(n)-A116728(n+1)` -/
def P9536419824077271954.Spec : Prop :=
  ∀ n, P9536419824077271954.a n = A354902 n

end A354902

/-! ## A354902.P6403663072090730015

`A116735(n+2)-A116728(n+1)`
-/

namespace A354902.P6403663072090730015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116735 (n + 2) - A116728 (n + 1)

end

end A354902.P6403663072090730015

namespace A354902

/-- `A116735(n+2)-A116728(n+1)` -/
def P6403663072090730015.Spec : Prop :=
  ∀ n, P6403663072090730015.a n = A354902 n

end A354902

/-! ## A354902.P5451761472715099267

`∑[A245092(record[A267046(n)])]`
-/

namespace A354902.P5451761472715099267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267046 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354902.P5451761472715099267

namespace A354902

/-- `∑[A245092(record[A267046(n)])]` -/
def P5451761472715099267.Spec : Prop :=
  ∀ n, P5451761472715099267.a n = A354902 n

end A354902

/-! ## A354902.P14986210578395052

`A001844(n)-A130824(A004275(n))`
-/

namespace A354902.P14986210578395052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n - A130824 (A004275 n).toNat

end

end A354902.P14986210578395052

namespace A354902

/-- `A001844(n)-A130824(A004275(n))` -/
def P14986210578395052.Spec : Prop :=
  ∀ n, P14986210578395052.a n = A354902 n

end A354902

/-! ## A354902.P11272383986180743660

`A001844(n)-A004275(2*A004275(n))`
-/

namespace A354902.P11272383986180743660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n - A004275 (2 * A004275 n).toNat

end

end A354902.P11272383986180743660

namespace A354902

/-- `A001844(n)-A004275(2*A004275(n))` -/
def P11272383986180743660.Spec : Prop :=
  ∀ n, P11272383986180743660.a n = A354902 n

end A354902

/-! ## A354902.P3831001340146479373

`∑[A140472(record[A225055(n+1)])]`
-/

namespace A354902.P3831001340146479373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225055 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140472 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354902.P3831001340146479373

namespace A354902

/-- `∑[A140472(record[A225055(n+1)])]` -/
def P3831001340146479373.Spec : Prop :=
  ∀ n, P3831001340146479373.a n = A354902 n

end A354902

/-! ## A354902.P4790002902454193595

`A131098(A016028(n+1))`
-/

namespace A354902.P4790002902454193595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (A016028 (n + 1)).toNat

end

end A354902.P4790002902454193595

namespace A354902

/-- `A131098(A016028(n+1))` -/
def P4790002902454193595.Spec : Prop :=
  ∀ n, P4790002902454193595.a n = A354902 n

end A354902

/-! ## A354902.P13983867400659914416

`A005843(∑[2*(n-a(2%n))])-1` with `a(0)=1, a(1)=1`
-/

namespace A354902.P13983867400659914416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * ((n : ℤ) - f1 (2 % n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A354902.P13983867400659914416

namespace A354902

/-- `A005843(∑[2*(n-a(2%n))])-1` -/
def P13983867400659914416.Spec : Prop :=
  ∀ n, P13983867400659914416.a n = A354902 n

end A354902

/-! ## A354902.P4651994205961086912

`A004274(2*A016028(n+1)-1)`
-/

namespace A354902.P4651994205961086912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (2 * A016028 (n + 1) - 1).toNat

end

end A354902.P4651994205961086912

namespace A354902

/-- `A004274(2*A016028(n+1)-1)` -/
def P4651994205961086912.Spec : Prop :=
  ∀ n, P4651994205961086912.a n = A354902 n

end A354902

/-! ## A354902.P428116835310296437

`A004273(A118403(n)+A057427(n))`
-/

namespace A354902.P428116835310296437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A118403 n + A057427 n).toNat

end

end A354902.P428116835310296437

namespace A354902

/-- `A004273(A118403(n)+A057427(n))` -/
def P428116835310296437.Spec : Prop :=
  ∀ n, P428116835310296437.a n = A354902 n

end A354902

/-! ## A354902.P5265410288411322603

`A004274(A016028(n+1)+A016028(n+1)-1)`
-/

namespace A354902.P5265410288411322603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A016028 (n + 1) + (A016028 (n + 1) - 1)).toNat

end

end A354902.P5265410288411322603

namespace A354902

/-- `A004274(A016028(n+1)+A016028(n+1)-1)` -/
def P5265410288411322603.Spec : Prop :=
  ∀ n, P5265410288411322603.a n = A354902 n

end A354902

/-!
# A354904: Numbers k such that the k-th composition in standard order is not the sequence of run-sums of any other composition.

The programs for A354904, there is no canonical definition to state claims against.
-/

/-! ## A354904.P3536679568915551300

`comp[∪[A333489(n+1), A023717(n)]]`
-/

namespace A354904.P3536679568915551300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333489 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A354904.P3536679568915551300

/-! ## A354904.P14379934116898668630

`lt[A004748(A278219(n)), A255488(n)]`
-/

namespace A354904.P14379934116898668630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004748 (A278219 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255488 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A354904.P14379934116898668630

/-! ## A354904.P15921552893399292241

`∩[A337250(n+1), A348612(n+1)]`
-/

namespace A354904.P15921552893399292241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354904.P15921552893399292241

/-! ## A354904.P3183374220707860912

`A349797(2*n+3)+comp[A354912(n)]`
-/

namespace A354904.P3183374220707860912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354912 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349797 (2 * n + 3) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A354904.P3183374220707860912

/-! ## A354904.P17382060085721269782

`comp[A354912(n)]*A356224(2*n+3)`
-/

namespace A354904.P17382060085721269782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354912 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) * A356224 (2 * n + 3)

end

end A354904.P17382060085721269782

/-!
# A354906: Position of first appearance of n in A354579 = Number of distinct run-lengths of standard compositions.

The programs for A354906, there is no canonical definition to state claims against.
-/

/-! ## A354906.P14123193034253781604

`A000010(A217391(n)+n)-1`
-/

namespace A354906.P14123193034253781604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A217391 n + (n : ℤ)).toNat - 1

end

end A354906.P14123193034253781604

/-!
# A354907: Number of distinct sums of contiguous constant subsequences (partial runs) of the n-th composition in standard order.

The programs for A354907, there is no canonical definition to state claims against.
-/

/-! ## A354907.P4546498171822655248

`A000120(n)-A092573(A268199(n))`
-/

namespace A354907.P4546498171822655248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A092573 (A268199 n).toNat

end

end A354907.P4546498171822655248

/-! ## A354907.P13588528536225234841

`and(A333224(A327097(n+1)), A354582(n))`
-/

namespace A354907.P13588528536225234841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A333224 (A327097 (n + 1)).toNat) (A354582 n)

end

end A354907.P13588528536225234841

/-! ## A354907.P9777689138124846204

`A000120(A160552(n)%A160558(2*(n+2)))`
-/

namespace A354907.P9777689138124846204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.tmod (A160552 n) (A160558 (2 * (n + 2)))).toNat

end

end A354907.P9777689138124846204

/-! ## A354907.P12173244055827593405

`A163848(A000041(n))%A335458(n)`
-/

namespace A354907.P12173244055827593405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163848 (A000041 n).toNat) (A335458 n)

end

end A354907.P12173244055827593405

/-! ## A354907.P6544210748392338777

`A000120(n)-A083919(A139063(n+3))`
-/

namespace A354907.P6544210748392338777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A083919 (A139063 (n + 3)).toNat

end

end A354907.P6544210748392338777

/-!
# A354908: Numbers k such that the k-th composition in standard order (graded reverse-lexicographic, A066099) is collapsible.

The programs for A354908, there is no canonical definition to state claims against.
-/

/-! ## A354908.P10869327583662091948

`A353848(A055645(n)+1)`
-/

namespace A354908.P10869327583662091948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353848 (A055645 n + 1).toNat

end

end A354908.P10869327583662091948

/-! ## A354908.P3607841632483884832

`A353857(A055645(n)+1)`
-/

namespace A354908.P3607841632483884832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353857 (A055645 n + 1).toNat

end

end A354908.P3607841632483884832

/-! ## A354908.P6064379521963277331

`eq[A016030(n), A353849(n)]`
-/

namespace A354908.P6064379521963277331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016030 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353849 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354908.P6064379521963277331

/-! ## A354908.P14217133418590517652

`eq[A016288(n), A353849(n)]`
-/

namespace A354908.P14217133418590517652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016288 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353849 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354908.P14217133418590517652

/-! ## A354908.P14561297453851140793

`record[A353848(A354584(n+1))]`
-/

namespace A354908.P14561297453851140793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353848 (A354584 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354908.P14561297453851140793

/-!
# A354909: Number of integer compositions of n that are not the run-sums of any other composition.

The programs for A354909, there is no canonical definition to state claims against.
-/

/-! ## A354909.P13203395106850205396

`ceil(2^(n-1))-A354910(n)`
-/

namespace A354909.P13203395106850205396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - A354910 n

end

end A354909.P13203395106850205396

/-! ## A354909.P14893468290465004749

`abs(A011782(n)-A354910(n))`
-/

namespace A354909.P14893468290465004749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011782 n - A354910 n|

end

end A354909.P14893468290465004749

/-! ## A354909.P4174014719993911323

`A011782(n)-(floor(2^(n+1)/(n+1))-A296773(floor(2^n/(n+1))))`
-/

namespace A354909.P4174014719993911323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - (⌊(2 ^ (n + 1) : ℚ) / (n + 1 : ℚ)⌋ - A296773 ⌊(2 ^ n : ℚ) / (n + 1 : ℚ)⌋.toNat)

end

end A354909.P4174014719993911323

/-! ## A354909.P4881902961266975863

`A054404(A245013(n+2)*A301706(n+1))`
-/

namespace A354909.P4881902961266975863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A245013 (n + 2) * A301706 (n + 1)).toNat

end

end A354909.P4881902961266975863

/-! ## A354909.P13620822444824643149

`(2-C(2, n²))^(n-1)-(A374680(n)+A191322(A374667(n+1)))`
-/

namespace A354909.P13620822444824643149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.choose 2 (n ^ 2) : ℤ) : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (A374680 n + A191322 (A374667 (n + 1)).toNat : ℚ)

end

end A354909.P13620822444824643149

/-!
# A354910: Number of compositions of n that are the run-sums of some other composition.

The programs for A354910, there is no canonical definition to state claims against.
-/

/-! ## A354910.P13360253695803319375

`ceil(2^(n-1))-A354909(n)`
-/

namespace A354910.P13360253695803319375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - A354909 n

end

end A354910.P13360253695803319375

/-! ## A354910.P14628374535947155631

`abs(A011782(n)-A354909(n))`
-/

namespace A354910.P14628374535947155631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011782 n - A354909 n|

end

end A354910.P14628374535947155631

/-! ## A354910.P15681678750116528556

`A000799(n+1)-A322794(A000383(n))`
-/

namespace A354910.P15681678750116528556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000799 (n + 1) - A322794 (A000383 n).toNat

end

end A354910.P15681678750116528556

/-! ## A354910.P8586568652004794641

`floor(2^(n+1)/(n+1))-A296773(floor(2^n/(n+1)))`
-/

namespace A354910.P8586568652004794641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ (n + 1) : ℚ) / (n + 1 : ℚ)⌋ - A296773 ⌊(2 ^ n : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A354910.P8586568652004794641

/-! ## A354910.P4761068455318793596

`floor(2^(n+1)/(n+1))-A344606(A143543(n+1))`
-/

namespace A354910.P4761068455318793596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ (n + 1) : ℚ) / (n + 1 : ℚ)⌋ - A344606 (A143543 (n + 1)).toNat

end

end A354910.P4761068455318793596

/-!
# A354911: Number of factorizations of n into relatively prime prime-powers.

The programs for A354911, there is no canonical definition to state claims against.
-/

/-! ## A354911.P15412653418198946896

`A077462(xor((n+1)/∏{p}[n+1, #], ∏{p}[n+1, (n+1)/#]%(n+1)))`
-/

namespace A354911.P15412653418198946896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (Int.xor (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (Int.tmod (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))) (n + 1 : ℤ))).toNat

end

end A354911.P15412653418198946896

/-! ## A354911.P8380298113203054012

`lcm(A000688(n+1), A322452(n+1))`
-/

namespace A354911.P8380298113203054012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000688 (n + 1)) (A322452 (n + 1))

end

end A354911.P8380298113203054012

/-! ## A354911.P17558165660236823508

`and(-A322452(n+1), A322453(n+1))`
-/

namespace A354911.P17558165660236823508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A322452 (n + 1)) (A322453 (n + 1))

end

end A354911.P17558165660236823508

/-! ## A354911.P17353072381946741105

`and(-A322452(n+1), A351219(n+1))`
-/

namespace A354911.P17353072381946741105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A322452 (n + 1)) (A351219 (n + 1))

end

end A354911.P17353072381946741105

/-! ## A354911.P1254626166809670668

`floor(A000688(n+1)/A133790(n+1))`
-/

namespace A354911.P1254626166809670668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000688 (n + 1) : ℚ) / (A133790 (n + 1) : ℚ)⌋

end

end A354911.P1254626166809670668

/-! ## A354911.P7592235366294943201

`C(A000688(n+1), A014963(n+1)²²)`
-/

namespace A354911.P7592235366294943201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000688 (n + 1)).toNat ((A014963 (n + 1) ^ 2) ^ 2).toNat

end

end A354911.P7592235366294943201

/-! ## A354911.P1057147968809492544

`A000688(n+1)*A002865(∑{p}[n+1, gcd(n, #)])`
-/

namespace A354911.P1057147968809492544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1) * A002865 (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p)

end

end A354911.P1057147968809492544

/-! ## A354911.P1756741954102502104

`A000688(n+1)*A030308(A034444(n+1))`
-/

namespace A354911.P1756741954102502104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1) * A030308 (A034444 (n + 1)).toNat

end

end A354911.P1756741954102502104

/-! ## A354911.P3790532592150643707

`A000688(n+1)*A008683(A066048(n+1))`
-/

namespace A354911.P3790532592150643707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1) * A008683 (A066048 (n + 1)).toNat

end

end A354911.P3790532592150643707

/-! ## A354911.P11335397642133223676

`A000688(n+1)*A063524(A014963(n+1))`
-/

namespace A354911.P11335397642133223676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1) * A063524 (A014963 (n + 1)).toNat

end

end A354911.P11335397642133223676

/-!
# A354912: Numbers k such that the k-th composition in standard order is the sequence of run-sums of some other composition.

The programs for A354912, there is no canonical definition to state claims against.
-/

/-! ## A354912.P15491869862958583998

`comp[A354904(n+1)]`
-/

namespace A354912.P15491869862958583998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A354912.P15491869862958583998

/-! ## A354912.P1165560265509478594

`∪[A333489(n+1), A023717(n)]`
-/

namespace A354912.P1165560265509478594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A354912.P1165560265509478594

/-! ## A354912.P12545134817217653907

`comp[∩[A337250(n+1), A348612(n+1)]]`
-/

namespace A354912.P12545134817217653907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337250 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348612 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A354912.P12545134817217653907

/-! ## A354912.P13224594880998823865

`lt[A255488(n), A004748(A278219(n))]`
-/

namespace A354912.P13224594880998823865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255488 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004748 (A278219 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A354912.P13224594880998823865

/-! ## A354912.P6572547969208407923

`eq[A014082(2*n+1), A014082(A001055(n+1))]`
-/

namespace A354912.P6572547969208407923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 (A001055 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354912.P6572547969208407923

/-! ## A354912.P17266167166150584587

`lt[0, A354578(n)]`
-/

namespace A354912.P17266167166150584587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354578 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A354912.P17266167166150584587

/-!
# A354913: Nonzero coefficient with smallest index in polynomial p_n(x), where p_n(x) = Product_{i={-1,1}} p_{n-1}(x + i*sqrt(prime(n))), starting with p_0(x) = x.

The programs for A354913, there is no canonical definition to state claims against.
-/

/-! ## A354913.P6285566958236387855

`A153731(A080465(n)+A011782(n))`
-/

namespace A354913.P6285566958236387855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153731 (A080465 (n + 10) + A011782 n).toNat

end

end A354913.P6285566958236387855

/-!
# A354914: The least cost to reach n using additions and multiplications, where multiplication is free.

The programs for A354914, there is no canonical definition to state claims against.
-/

/-! ## A354914.P2236717664059024027

`A001221(A053191(n+1)*A330461(n))`
-/

namespace A354914.P2236717664059024027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A053191 (n + 1) * A330461 n).toNat

end

end A354914.P2236717664059024027

/-! ## A354914.P2803631251606631037

`A332992(A204928(n+1)²)`
-/

namespace A354914.P2803631251606631037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332992 (A204928 (n + 1) ^ 2).toNat

end

end A354914.P2803631251606631037

/-! ## A354914.P310285365419862745

`A332992((n+1)*A204928(n+1))`
-/

namespace A354914.P310285365419862745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332992 ((n + 1 : ℤ) * A204928 (n + 1)).toNat

end

end A354914.P310285365419862745

/-! ## A354914.P6369994929287121048

`A332999((n+1)*A204928(n+1))`
-/

namespace A354914.P6369994929287121048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332999 ((n + 1 : ℤ) * A204928 (n + 1)).toNat

end

end A354914.P6369994929287121048

/-! ## A354914.P998435505914449892

`A332992(A204928(n+1)^ceil(atan(n)))`
-/

namespace A354914.P998435505914449892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332992 (SequenceMachineLib.roundAway ((A204928 (n + 1) : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat

end

end A354914.P998435505914449892

/-!
# A354918: a(n) = A344005(n) mod 2, where A344005(n) is the smallest positive m such that n divides the oblong number m*(m+1).

The programs for A354918, there is no canonical definition to state claims against.
-/

/-! ## A354918.P7870998779309731014

`A000035(A344005(n+1))`
-/

namespace A354918.P7870998779309731014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A344005 (n + 1)).toNat

end

end A354918.P7870998779309731014

/-! ## A354918.P15149799503877314489

`A354985(n+1)%2`
-/

namespace A354918.P15149799503877314489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354985 (n + 1)) 2

end

end A354918.P15149799503877314489

/-! ## A354918.P5774576886574376019

`A354920(lcm(2, n+1))`
-/

namespace A354918.P5774576886574376019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354920 (Nat.lcm 2 (n + 1))

end

end A354918.P5774576886574376019

/-! ## A354918.P5376982687697680143

`floor(sqrt(A345988(n+1)))%2`
-/

namespace A354918.P5376982687697680143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A345988 (n + 1))) 2

end

end A354918.P5376982687697680143

/-! ## A354918.P11280733376061811114

`A000035(A354985(n+1))`
-/

namespace A354918.P11280733376061811114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A354985 (n + 1)).toNat

end

end A354918.P11280733376061811114

/-! ## A354918.P15378283950552958939

`A343999(A026741(n+1))`
-/

namespace A354918.P15378283950552958939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343999 (A026741 (n + 1)).toNat

end

end A354918.P15378283950552958939

/-! ## A354918.P11220910658705403319

`A354920(A109043(n+1))`
-/

namespace A354918.P11220910658705403319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354920 (A109043 (n + 1)).toNat

end

end A354918.P11220910658705403319

/-! ## A354918.P2075651735420241197

`and(A158388(n), A344005(n+1))`
-/

namespace A354918.P2075651735420241197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 n) (A344005 (n + 1))

end

end A354918.P2075651735420241197

/-! ## A354918.P15915339255745732403

`and(A158388(n), A354985(n+1))`
-/

namespace A354918.P15915339255745732403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 n) (A354985 (n + 1))

end

end A354918.P15915339255745732403

/-! ## A354918.P18325488221120473539

`2-A000034(A344005(n+1)+1)`
-/

namespace A354918.P18325488221120473539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000034 (A344005 (n + 1) + 1).toNat

end

end A354918.P18325488221120473539

/-! ## A354918.P5202282349236574254

`and(A051119(A028233(n+1)), A344005(n+1))`
-/

namespace A354918.P5202282349236574254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051119 (A028233 (n + 1)).toNat) (A344005 (n + 1))

end

end A354918.P5202282349236574254

/-! ## A354918.P11354178451204040047

`and(A051119(A100994(n+1)), A344005(n+1))`
-/

namespace A354918.P11354178451204040047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051119 (A100994 (n + 1)).toNat) (A344005 (n + 1))

end

end A354918.P11354178451204040047

/-! ## A354918.P13173946759545176915

`A000035(A354920(n+1)+1+n)`
-/

namespace A354918.P13173946759545176915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A354920 (n + 1) + 1 + (n : ℤ)).toNat

end

end A354918.P13173946759545176915

/-! ## A354918.P3106999040373659999

`A000035(A182665(n+1)+1+n)`
-/

namespace A354918.P3106999040373659999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A182665 (n + 1) + 1 + (n : ℤ)).toNat

end

end A354918.P3106999040373659999

/-! ## A354918.P13603077439397287012

`and(A236398(A051119(2*(n+1))), A344005(n+1))`
-/

namespace A354918.P13603077439397287012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A236398 (A051119 (2 * (n + 1))).toNat) (A344005 (n + 1))

end

end A354918.P13603077439397287012

/-! ## A354918.P8597641150127315633

`and(A000034(A146076(n+1)), A344005(n+1))`
-/

namespace A354918.P8597641150127315633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000034 (A146076 (n + 1)).toNat) (A344005 (n + 1))

end

end A354918.P8597641150127315633

/-! ## A354918.P264920790464988932

`and(A077860(n), A344005(n+1))`
-/

namespace A354918.P264920790464988932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077860 n) (A344005 (n + 1))

end

end A354918.P264920790464988932

/-! ## A354918.P16098295369516569144

`and(A077860(n), A354985(n+1))`
-/

namespace A354918.P16098295369516569144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077860 n) (A354985 (n + 1))

end

end A354918.P16098295369516569144

/-! ## A354918.P5007178301998978497

`and(A083318(n), A344005(n+1))`
-/

namespace A354918.P5007178301998978497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083318 n) (A344005 (n + 1))

end

end A354918.P5007178301998978497

/-! ## A354918.P5553253240834889765

`and(A083318(n), A354985(n+1))`
-/

namespace A354918.P5553253240834889765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083318 n) (A354985 (n + 1))

end

end A354918.P5553253240834889765

/-!
# A354919: Positions of odd terms in A344005.

The programs for A354919, there is no canonical definition to state claims against.
-/

/-! ## A354919.P16002024464629329055

`lt[0, A354918(n+1)]+1`
-/

namespace A354919.P16002024464629329055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354918 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A354919.P16002024464629329055

/-! ## A354919.P16140893788067842117

`eq[n%2, A354920(n+1)]+1`
-/

namespace A354919.P16140893788067842117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354920 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354919.P16140893788067842117

/-! ## A354919.P9870784996641314746

`eq[1, A354985(n+1)%2]+1`
-/

namespace A354919.P9870784996641314746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354985 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354919.P9870784996641314746

/-! ## A354919.P18200933068417741720

`filter[A065090(n+1), A354918(#)]`
-/

namespace A354919.P18200933068417741720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354918 (f1 j).toNat = 1) n)

end

end A354919.P18200933068417741720

/-! ## A354919.P5939830703169418952

`filter[A171581(n+1), A354918(#)]`
-/

namespace A354919.P5939830703169418952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354918 (f1 j).toNat = 1) n)

end

end A354919.P5939830703169418952

/-! ## A354919.P10249414967385941127

`filter[A173905(n+2), A354918(#)]`
-/

namespace A354919.P10249414967385941127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354918 (f1 j).toNat = 1) n)

end

end A354919.P10249414967385941127

/-! ## A354919.P13025152407496903882

`filter[A338924(n+1), A354918(#)]`
-/

namespace A354919.P13025152407496903882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354918 (f1 j).toNat = 1) n)

end

end A354919.P13025152407496903882

/-! ## A354919.P17311130778843782497

`filter[A073900(n+1), A354918(#)]`
-/

namespace A354919.P17311130778843782497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354918 (f1 j).toNat = 1) n)

end

end A354919.P17311130778843782497

/-! ## A354919.P16647208878687212141

`filter[A073899(n+1), A354918(#)]`
-/

namespace A354919.P16647208878687212141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354918 (f1 j).toNat = 1) n)

end

end A354919.P16647208878687212141

/-! ## A354919.P14148170117356896680

`filter[A101513(n+1), A354918(#)]`
-/

namespace A354919.P14148170117356896680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354918 (f1 j).toNat = 1) n)

end

end A354919.P14148170117356896680

/-! ## A354919.P14649978195020306757

`filter[A089088(n), A354918(#)]`
-/

namespace A354919.P14649978195020306757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354918 (f1 j).toNat = 1) n)

end

end A354919.P14649978195020306757

/-! ## A354919.P12868901157150923182

`filter[A137621(n+1), A354918(#)]`
-/

namespace A354919.P12868901157150923182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354918 (f1 j).toNat = 1) n)

end

end A354919.P12868901157150923182

/-! ## A354919.P16833477983749221832

`filter[A133398(n+1), A354918(#)]`
-/

namespace A354919.P16833477983749221832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354918 (f1 j).toNat = 1) n)

end

end A354919.P16833477983749221832

/-! ## A354919.P10798827167299229118

`eq[1, A000035(A354985(n+1))]+1`
-/

namespace A354919.P10798827167299229118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A354985 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354919.P10798827167299229118

/-! ## A354919.P9551125922824832638

`lt[0, A344005(n+1)%2]+1`
-/

namespace A354919.P9551125922824832638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344005 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A354919.P9551125922824832638

/-! ## A354919.P15265444142843910114

`eq[1, floor(sqrt(A345988(n+1)))%2]+1`
-/

namespace A354919.P15265444142843910114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A345988 (n + 1))) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354919.P15265444142843910114

/-! ## A354919.P12165712277102082925

`eq[1, A354920(A109043(n+1))]+1`
-/

namespace A354919.P12165712277102082925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354920 (A109043 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354919.P12165712277102082925

/-! ## A354919.P1107345739994241007

`eq[n, A028310(n)*A354918(A028310(n))]`
-/

namespace A354919.P1107345739994241007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A354918 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354919.P1107345739994241007

/-! ## A354919.P9607798296324477745

`filter[A305810(n+1), A354918(#)]`
-/

namespace A354919.P9607798296324477745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354918 (f1 j).toNat = 1) n)

end

end A354919.P9607798296324477745

/-!
# A354920: a(n) = A182665(n) mod 2, where A182665(n) is the greatest x < n such that n divides x*(x-1).

The programs for A354920, there is no canonical definition to state claims against.
-/

/-! ## A354920.P10604525416669566463

`A000035(A182665(n+1))`
-/

namespace A354920.P10604525416669566463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A182665 (n + 1)).toNat

end

end A354920.P10604525416669566463

/-! ## A354920.P6716708473786146747

`(A344005(n+1)+1+n)%2`
-/

namespace A354920.P6716708473786146747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344005 (n + 1) + 1 + (n : ℤ)) 2

end

end A354920.P6716708473786146747

/-! ## A354920.P15655463829095561121

`(round(sqrt(A345988(n+1)))+n+1)%2`
-/

namespace A354920.P15655463829095561121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A345988 (n + 1) : ℝ)) + (n + 1 : ℤ)) 2

end

end A354920.P15655463829095561121

/-! ## A354920.P8595469503584126131

`and(A054977(n), A182665(n+1))`
-/

namespace A354920.P8595469503584126131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054977 n) (A182665 (n + 1))

end

end A354920.P8595469503584126131

/-! ## A354920.P11841836702555176033

`and(A057427(n), A182665(n+1))`
-/

namespace A354920.P11841836702555176033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A182665 (n + 1))

end

end A354920.P11841836702555176033

/-! ## A354920.P11000068803754950933

`and(A093148(n), A182665(n+1))`
-/

namespace A354920.P11000068803754950933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A093148 n) (A182665 (n + 1))

end

end A354920.P11000068803754950933

/-! ## A354920.P15014664489302899629

`and(1, A344005(n+1)+A000034(n))`
-/

namespace A354920.P15014664489302899629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A344005 (n + 1) + A000034 n)

end

end A354920.P15014664489302899629

/-! ## A354920.P12084237761944414066

`and(1, A344005(n+1)+A028233(n+1))`
-/

namespace A354920.P12084237761944414066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A344005 (n + 1) + A028233 (n + 1))

end

end A354920.P12084237761944414066

/-! ## A354920.P2832029587262178038

`A000034(A344005(n+1)+A000034(n))-1`
-/

namespace A354920.P2832029587262178038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A344005 (n + 1) + A000034 n).toNat - 1

end

end A354920.P2832029587262178038

/-! ## A354920.P13574895067730091040

`A000035(A354918(n+1)+1+n)`
-/

namespace A354920.P13574895067730091040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A354918 (n + 1) + 1 + (n : ℤ)).toNat

end

end A354920.P13574895067730091040

/-! ## A354920.P1071778584318354790

`A000035(A344005(n+1)+1+n)`
-/

namespace A354920.P1071778584318354790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A344005 (n + 1) + 1 + (n : ℤ)).toNat

end

end A354920.P1071778584318354790

/-! ## A354920.P2233082380280993350

`A000035(A354985(n+1)+1+n)`
-/

namespace A354920.P2233082380280993350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A354985 (n + 1) + 1 + (n : ℤ)).toNat

end

end A354920.P2233082380280993350

/-! ## A354920.P3136577762650939227

`2-A000034(A344005(n+1)+n)`
-/

namespace A354920.P3136577762650939227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000034 (A344005 (n + 1) + (n : ℤ)).toNat

end

end A354920.P3136577762650939227

/-! ## A354920.P13571891676979814051

`A011765(2*(A354918(n+1)+n))`
-/

namespace A354920.P13571891676979814051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011765 (2 * (A354918 (n + 1) + (n : ℤ))).toNat

end

end A354920.P13571891676979814051

/-! ## A354920.P9131932911314532616

`and(A052552(n), A182665(n+1))`
-/

namespace A354920.P9131932911314532616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052552 n) (A182665 (n + 1))

end

end A354920.P9131932911314532616

/-! ## A354920.P6395106477372725027

`and(A077860(n), A182665(n+1))`
-/

namespace A354920.P6395106477372725027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077860 n) (A182665 (n + 1))

end

end A354920.P6395106477372725027

/-! ## A354920.P12404752036883101366

`and(A127904(n), A182665(n+1))`
-/

namespace A354920.P12404752036883101366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127904 n) (A182665 (n + 1))

end

end A354920.P12404752036883101366

/-! ## A354920.P1447852241161658938

`and(A000051(n), A182665(n+1))`
-/

namespace A354920.P1447852241161658938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000051 n) (A182665 (n + 1))

end

end A354920.P1447852241161658938

/-! ## A354920.P15081376216313971043

`and(A082605(n), A182665(n+1))`
-/

namespace A354920.P15081376216313971043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A082605 n) (A182665 (n + 1))

end

end A354920.P15081376216313971043

/-!
# A354921: Positions of odd terms in A182665.

The programs for A354921, there is no canonical definition to state claims against.
-/

/-! ## A354921.P16095044556041222630

`lt[0, A354920(n+1)]+1`
-/

namespace A354921.P16095044556041222630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354920 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A354921.P16095044556041222630

/-! ## A354921.P2631230355076924896

`eq[1, A354920(n+2)]+2`
-/

namespace A354921.P2631230355076924896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354920 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A354921.P2631230355076924896

/-! ## A354921.P3839440992113587723

`eq[n%2, A354918(n+1)]+1`
-/

namespace A354921.P3839440992113587723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354918 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354921.P3839440992113587723

/-! ## A354921.P6372206554680767522

`filter[n+1, A354920(#)]`
-/

namespace A354921.P6372206554680767522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354920 (f1 j) = 1) n)

end

end A354921.P6372206554680767522

/-! ## A354921.P13402787516612003779

`eq[1, A182665(n+1)%2]+1`
-/

namespace A354921.P13402787516612003779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182665 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354921.P13402787516612003779

/-! ## A354921.P14857141867562158485

`lt[0, A354920(A028310(n))]`
-/

namespace A354921.P14857141867562158485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354920 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A354921.P14857141867562158485

/-! ## A354921.P6469746188290646351

`eq[A000035(n), A354918(n+1)]+1`
-/

namespace A354921.P6469746188290646351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354918 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A354921.P6469746188290646351

/-! ## A354921.P6556512454748940524

`eq[A354985(n+1)%2, A000035(n)]+1`
-/

namespace A354921.P6556512454748940524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354985 (n + 1)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A354921.P6556512454748940524

/-! ## A354921.P9387450355040571458

`eq[A000035(A354985(n+1)), A000035(n)]+1`
-/

namespace A354921.P9387450355040571458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A354985 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A354921.P9387450355040571458

/-! ## A354921.P15373976468471229080

`lt[0, and(A033622(n), A182665(n+1))]+1`
-/

namespace A354921.P15373976468471229080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033622 n) (A182665 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A354921.P15373976468471229080

/-!
# A354922: Positions of even terms in A182665.

The programs for A354922, there is no canonical definition to state claims against.
-/

/-! ## A354922.P13736860111103406411

`eq[0, A354920(n+1)]+1`
-/

namespace A354922.P13736860111103406411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354920 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354922.P13736860111103406411

/-! ## A354922.P4313871737716951658

`lt[A354920(abs(1-n)+1), 1]`
-/

namespace A354922.P4313871737716951658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354920 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A354922.P4313871737716951658

/-! ## A354922.P14760183783923727570

`lt[A354920(-xor(n, -1)), 1]+1`
-/

namespace A354922.P14760183783923727570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354920 (-Int.xor (n : ℤ) (-1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A354922.P14760183783923727570

/-! ## A354922.P15191722354883589242

`eq[(n+1)%2, A354918(n+1)]+1`
-/

namespace A354922.P15191722354883589242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354918 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354922.P15191722354883589242

/-! ## A354922.P9153102987516993829

`lt[A354920(ceil((2*n+1)/2)), 1]+1`
-/

namespace A354922.P9153102987516993829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354920 ⌈(2 * n + 1 : ℚ) / 2⌉.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A354922.P9153102987516993829

/-! ## A354922.P88764259183166175

`eq[1, gcd(2, A344005(n+1)+n)]+1`
-/

namespace A354922.P88764259183166175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A344005 (n + 1) + (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A354922.P88764259183166175

/-! ## A354922.P14360984799126791561

`eq[0, A182665(n+1)%2]+1`
-/

namespace A354922.P14360984799126791561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182665 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354922.P14360984799126791561

/-! ## A354922.P4392615944364221494

`eq[and(1, n), A354918(A028310(n))]`
-/

namespace A354922.P4392615944364221494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354918 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354922.P4392615944364221494

/-! ## A354922.P18250592337863778891

`eq[A000035(n), A354918(A028310(n))]`
-/

namespace A354922.P18250592337863778891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354918 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354922.P18250592337863778891

/-!
# A354923: a(n) = 1 if n is either a power of prime or 2*prime, otherwise 0.

The programs for A354923, the canonical program `A354923.P18081959809145531847` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354923 has offset 1).

The definition of A354923 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354923.P3620059129307341972

`C(2, A333783(n+1))`
-/

namespace A354923.P3620059129307341972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A333783 (n + 1)).toNat

end

end A354923.P3620059129307341972

namespace A354923

/-- `C(2, A333783(n+1))` -/
def P3620059129307341972.Spec : Prop :=
  ∀ n, (P3620059129307341972.a n : ℤ) = A354923 (n + 1)

end A354923

/-! ## A354923.P14631035974040116294

`round(1/A230798(n+1))`
-/

namespace A354923.P14631035974040116294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A230798 (n + 1) : ℚ))

end

end A354923.P14631035974040116294

namespace A354923

/-- `round(1/A230798(n+1))` -/
def P14631035974040116294.Spec : Prop :=
  ∀ n, P14631035974040116294.a n = A354923 (n + 1)

end A354923

/-! ## A354923.P11383556197630984637

`C(n%2, A281116(n+1))`
-/

namespace A354923.P11383556197630984637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n % 2) (A281116 (n + 1)).toNat

end

end A354923.P11383556197630984637

namespace A354923

/-- `C(n%2, A281116(n+1))` -/
def P11383556197630984637.Spec : Prop :=
  ∀ n, (P11383556197630984637.a n : ℤ) = A354923 (n + 1)

end A354923

/-! ## A354923.P15592320581962320695

`C(val(n+1, 2), A089233(n+1)²)`
-/

namespace A354923.P15592320581962320695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.valuation (n + 1) 2) (A089233 (n + 1) ^ 2).toNat

end

end A354923.P15592320581962320695

namespace A354923

/-- `C(val(n+1, 2), A089233(n+1)²)` -/
def P15592320581962320695.Spec : Prop :=
  ∀ n, (P15592320581962320695.a n : ℤ) = A354923 (n + 1)

end A354923

/-! ## A354923.P11216408324044976328

`A354924(A089247(n+1))`
-/

namespace A354923.P11216408324044976328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354924 (A089247 (n + 1)).toNat

end

end A354923.P11216408324044976328

namespace A354923

/-- `A354924(A089247(n+1))` -/
def P11216408324044976328.Spec : Prop :=
  ∀ n, P11216408324044976328.a n = A354923 (n + 1)

end A354923

/-! ## A354923.P3621429401996222749

`A000045(C(2, A230798(n+1)))`
-/

namespace A354923.P3621429401996222749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (A230798 (n + 1)).toNat)

end

end A354923.P3621429401996222749

namespace A354923

/-- `A000045(C(2, A230798(n+1)))` -/
def P3621429401996222749.Spec : Prop :=
  ∀ n, P3621429401996222749.a n = A354923 (n + 1)

end A354923

/-! ## A354923.P7916618325458729497

`A126760(C(2, A230798(n+1)))`
-/

namespace A354923.P7916618325458729497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (Nat.choose 2 (A230798 (n + 1)).toNat)

end

end A354923.P7916618325458729497

namespace A354923

/-- `A126760(C(2, A230798(n+1)))` -/
def P7916618325458729497.Spec : Prop :=
  ∀ n, P7916618325458729497.a n = A354923 (n + 1)

end A354923

/-! ## A354923.P14505210958900335123

`C(Δ[A008619(n)], A281116(n+1))`
-/

namespace A354923.P14505210958900335123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat (A281116 (n + 1)).toNat

end

end A354923.P14505210958900335123

namespace A354923

/-- `C(Δ[A008619(n)], A281116(n+1))` -/
def P14505210958900335123.Spec : Prop :=
  ∀ n, (P14505210958900335123.a n : ℤ) = A354923 (n + 1)

end A354923

/-! ## A354923.P15121315382007897228

`A354924(n+1)*A384667(n+1)`
-/

namespace A354923.P15121315382007897228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354924 (n + 1) * A384667 (n + 1)

end

end A354923.P15121315382007897228

namespace A354923

/-- `A354924(n+1)*A384667(n+1)` -/
def P15121315382007897228.Spec : Prop :=
  ∀ n, P15121315382007897228.a n = A354923 (n + 1)

end A354923

/-! ## A354923.P10595046644114832673

`C(A081810(n+1), A081805(n+1))`
-/

namespace A354923.P10595046644114832673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A081810 (n + 1)).toNat (A081805 (n + 1)).toNat

end

end A354923.P10595046644114832673

namespace A354923

/-- `C(A081810(n+1), A081805(n+1))` -/
def P10595046644114832673.Spec : Prop :=
  ∀ n, (P10595046644114832673.a n : ℤ) = A354923 (n + 1)

end A354923

/-! ## A354923.P17362622542170599088

`and(A066636(n+1), A354924(n+1))`
-/

namespace A354923.P17362622542170599088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066636 (n + 1)) (A354924 (n + 1))

end

end A354923.P17362622542170599088

namespace A354923

/-- `and(A066636(n+1), A354924(n+1))` -/
def P17362622542170599088.Spec : Prop :=
  ∀ n, P17362622542170599088.a n = A354923 (n + 1)

end A354923

/-! ## A354923.P35092926429091927

`and(A309004(n+1), A354924(n+1))`
-/

namespace A354923.P35092926429091927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A309004 (n + 1)) (A354924 (n + 1))

end

end A354923.P35092926429091927

namespace A354923

/-- `and(A309004(n+1), A354924(n+1))` -/
def P35092926429091927.Spec : Prop :=
  ∀ n, P35092926429091927.a n = A354923 (n + 1)

end A354923

/-! ## A354923.P4902092562710933461

`and(A327528(n+1), A354924(n+1))`
-/

namespace A354923.P4902092562710933461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A327528 (n + 1)) (A354924 (n + 1))

end

end A354923.P4902092562710933461

namespace A354923

/-- `and(A327528(n+1), A354924(n+1))` -/
def P4902092562710933461.Spec : Prop :=
  ∀ n, P4902092562710933461.a n = A354923 (n + 1)

end A354923

/-! ## A354923.P6240458364789970204

`round(A304181(n+1)/A068794(n+1))`
-/

namespace A354923.P6240458364789970204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A304181 (n + 1) : ℚ) / (A068794 (n + 1) : ℚ))

end

end A354923.P6240458364789970204

namespace A354923

/-- `round(A304181(n+1)/A068794(n+1))` -/
def P6240458364789970204.Spec : Prop :=
  ∀ n, P6240458364789970204.a n = A354923 (n + 1)

end A354923

/-! ## A354923.P18081959809145531847

`C(A007814(n+1), C(A008480(n+1), 2))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A354923

/-- `C(A007814(n+1), C(A008480(n+1), 2))` -/
def P18081959809145531847.Spec : Prop :=
  ∀ n, (P18081959809145531847.a n : ℤ) = A354923 (n + 1)

theorem P18081959809145531847.correct : P18081959809145531847.Spec := by
  intro n
  simp only [A354923, Nat.add_sub_cancel]

end A354923

/-! ## A354923.P9894951330395253183

`A165573(C(A000034(n), A008480(n+1)))`
-/

namespace A354923.P9894951330395253183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165573 (Nat.choose (A000034 n).toNat (A008480 (n + 1)).toNat)

end

end A354923.P9894951330395253183

namespace A354923

/-- `A165573(C(A000034(n), A008480(n+1)))` -/
def P9894951330395253183.Spec : Prop :=
  ∀ n, P9894951330395253183.a n = A354923 (n + 1)

end A354923

/-! ## A354923.P8815390479870612011

`C(A353378(A061142(n+1)), A353378(n+1))`
-/

namespace A354923.P8815390479870612011
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A353378 (A061142 (n + 1)).toNat).toNat (A353378 (n + 1)).toNat

end

end A354923.P8815390479870612011

namespace A354923

/-- `C(A353378(A061142(n+1)), A353378(n+1))` -/
def P8815390479870612011.Spec : Prop :=
  ∀ n, (P8815390479870612011.a n : ℤ) = A354923 (n + 1)

end A354923

/-! ## A354923.P2060542261928275343

`A059841(A000265(n+2)%A178637(n+1))`
-/

namespace A354923.P2060542261928275343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (Int.tmod (A000265 (n + 2)) (A178637 (n + 1))).toNat

end

end A354923.P2060542261928275343

namespace A354923

/-- `A059841(A000265(n+2)%A178637(n+1))` -/
def P2060542261928275343.Spec : Prop :=
  ∀ n, P2060542261928275343.a n = A354923 (n + 1)

end A354923

/-! ## A354923.P9826300080998350080

`C(A318808(A068794(n+1)), A318808(n+1))`
-/

namespace A354923.P9826300080998350080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A318808 (A068794 (n + 1)).toNat).toNat (A318808 (n + 1)).toNat

end

end A354923.P9826300080998350080

namespace A354923

/-- `C(A318808(A068794(n+1)), A318808(n+1))` -/
def P9826300080998350080.Spec : Prop :=
  ∀ n, (P9826300080998350080.a n : ℤ) = A354923 (n + 1)

end A354923

/-!
# A354924: a(n) = 1 if A047994(n) is equal to A344005(n), otherwise 0.

The programs for A354924, the canonical program `A354924.P17452870257802639278` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354924 has offset 1).

The definition of A354924 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354924.P17382725840059734290

`C(2, A346607(n+1))`
-/

namespace A354924.P17382725840059734290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A346607 (n + 1)).toNat

end

end A354924.P17382725840059734290

namespace A354924

/-- `C(2, A346607(n+1))` -/
def P17382725840059734290.Spec : Prop :=
  ∀ n, (P17382725840059734290.a n : ℤ) = A354924 (n + 1)

end A354924

/-! ## A354924.P4789373599495468905

`floor(1/A354986(n+1))`
-/

namespace A354924.P4789373599495468905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A354986 (n + 1) : ℚ)⌋

end

end A354924.P4789373599495468905

namespace A354924

/-- `floor(1/A354986(n+1))` -/
def P4789373599495468905.Spec : Prop :=
  ∀ n, P4789373599495468905.a n = A354924 (n + 1)

end A354924

/-! ## A354924.P11934012887653059820

`round(1/A051119(n+1))`
-/

namespace A354924.P11934012887653059820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A051119 (n + 1) : ℚ))

end

end A354924.P11934012887653059820

namespace A354924

/-- `round(1/A051119(n+1))` -/
def P11934012887653059820.Spec : Prop :=
  ∀ n, P11934012887653059820.a n = A354924 (n + 1)

end A354924

/-! ## A354924.P9281405543658046148

`round(1/A052128(n+1))`
-/

namespace A354924.P9281405543658046148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A052128 (n + 1) : ℚ))

end

end A354924.P9281405543658046148

namespace A354924

/-- `round(1/A052128(n+1))` -/
def P9281405543658046148.Spec : Prop :=
  ∀ n, P9281405543658046148.a n = A354924 (n + 1)

end A354924

/-! ## A354924.P9907187206806481242

`round(1/A284600(n+1))`
-/

namespace A354924.P9907187206806481242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A284600 (n + 1) : ℚ))

end

end A354924.P9907187206806481242

namespace A354924

/-- `round(1/A284600(n+1))` -/
def P9907187206806481242.Spec : Prop :=
  ∀ n, P9907187206806481242.a n = A354924 (n + 1)

end A354924

/-! ## A354924.P1736131204704108457

`round(1/A345992(n+1))`
-/

namespace A354924.P1736131204704108457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A345992 (n + 1) : ℚ))

end

end A354924.P1736131204704108457

namespace A354924

/-- `round(1/A345992(n+1))` -/
def P1736131204704108457.Spec : Prop :=
  ∀ n, P1736131204704108457.a n = A354924 (n + 1)

end A354924

/-! ## A354924.P14445910800013694968

`round(sqrt(acot(A334019(n+1))))`
-/

namespace A354924.P14445910800013694968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (SequenceMachineLib.acot (A334019 (n + 1) : ℝ)))

end

end A354924.P14445910800013694968

namespace A354924

/-- `round(sqrt(acot(A334019(n+1))))` -/
def P14445910800013694968.Spec : Prop :=
  ∀ n, P14445910800013694968.a n = A354924 (n + 1)

end A354924

/-! ## A354924.P9911245206688364706

`round(A053585(n+1)/(n+1))`
-/

namespace A354924.P9911245206688364706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A053585 (n + 1) : ℚ) / (n + 1 : ℚ))

end

end A354924.P9911245206688364706

namespace A354924

/-- `round(A053585(n+1)/(n+1))` -/
def P9911245206688364706.Spec : Prop :=
  ∀ n, P9911245206688364706.a n = A354924 (n + 1)

end A354924

/-! ## A354924.P17452870257802639278

`A010055(A026741(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A354924

/-- `A010055(A026741(n+1))` -/
def P17452870257802639278.Spec : Prop :=
  ∀ n, P17452870257802639278.a n = A354924 (n + 1)

theorem P17452870257802639278.correct : P17452870257802639278.Spec := by
  intro n
  simp only [A354924, Nat.add_sub_cancel]

end A354924

/-! ## A354924.P17305101297637649583

`A010055(A214682(n+1))`
-/

namespace A354924.P17305101297637649583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (A214682 (n + 1)).toNat

end

end A354924.P17305101297637649583

namespace A354924

/-- `A010055(A214682(n+1))` -/
def P17305101297637649583.Spec : Prop :=
  ∀ n, P17305101297637649583.a n = A354924 (n + 1)

end A354924

/-! ## A354924.P15299886908967349956

`A010055(A252463(n+1))`
-/

namespace A354924.P15299886908967349956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (A252463 (n + 1)).toNat

end

end A354924.P15299886908967349956

namespace A354924

/-- `A010055(A252463(n+1))` -/
def P15299886908967349956.Spec : Prop :=
  ∀ n, P15299886908967349956.a n = A354924 (n + 1)

end A354924

/-! ## A354924.P3204553099931426267

`A000007(A346607(n+1))`
-/

namespace A354924.P3204553099931426267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A346607 (n + 1)).toNat

end

end A354924.P3204553099931426267

namespace A354924

/-- `A000007(A346607(n+1))` -/
def P3204553099931426267.Spec : Prop :=
  ∀ n, P3204553099931426267.a n = A354924 (n + 1)

end A354924

/-! ## A354924.P6519314913102417789

`A000045(C(2, A345992(n+1)))`
-/

namespace A354924.P6519314913102417789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (A345992 (n + 1)).toNat)

end

end A354924.P6519314913102417789

namespace A354924

/-- `A000045(C(2, A345992(n+1)))` -/
def P6519314913102417789.Spec : Prop :=
  ∀ n, P6519314913102417789.a n = A354924 (n + 1)

end A354924

/-! ## A354924.P9466164561081406573

`A000045(C(2, A345994(n+1)))`
-/

namespace A354924.P9466164561081406573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (A345994 (n + 1)).toNat)

end

end A354924.P9466164561081406573

namespace A354924

/-- `A000045(C(2, A345994(n+1)))` -/
def P9466164561081406573.Spec : Prop :=
  ∀ n, P9466164561081406573.a n = A354924 (n + 1)

end A354924

/-! ## A354924.P12399346666031989238

`xor(A043545(n), A354108(n+1))`
-/

namespace A354924.P12399346666031989238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A043545 n) (A354108 (n + 1))

end

end A354924.P12399346666031989238

namespace A354924

/-- `xor(A043545(n), A354108(n+1))` -/
def P12399346666031989238.Spec : Prop :=
  ∀ n, P12399346666031989238.a n = A354924 (n + 1)

end A354924

/-! ## A354924.P6828083625276777300

`∑{d}[A354986(n+1), A008683(#)]`
-/

namespace A354924.P6828083625276777300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d

end

end A354924.P6828083625276777300

namespace A354924

/-- `∑{d}[A354986(n+1), A008683(#)]` -/
def P6828083625276777300.Spec : Prop :=
  ∀ n, P6828083625276777300.a n = A354924 (n + 1)

end A354924

/-! ## A354924.P17039760034955632218

`A354981(n+1)+A010055(n+1)`
-/

namespace A354924.P17039760034955632218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354981 (n + 1) + A010055 (n + 1)

end

end A354924.P17039760034955632218

namespace A354924

/-- `A354981(n+1)+A010055(n+1)` -/
def P17039760034955632218.Spec : Prop :=
  ∀ n, P17039760034955632218.a n = A354924 (n + 1)

end A354924

/-! ## A354924.P2053455016229623016

`A297382(n+1)-A354108(n+1)`
-/

namespace A354924.P2053455016229623016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297382 (n + 1) - A354108 (n + 1)

end

end A354924.P2053455016229623016

namespace A354924

/-- `A297382(n+1)-A354108(n+1)` -/
def P2053455016229623016.Spec : Prop :=
  ∀ n, P2053455016229623016.a n = A354924 (n + 1)

end A354924

/-! ## A354924.P6356403760434370446

`and(A322318(n+1), A340363(n+1))`
-/

namespace A354924.P6356403760434370446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A322318 (n + 1)) (A340363 (n + 1))

end

end A354924.P6356403760434370446

namespace A354924

/-- `and(A322318(n+1), A340363(n+1))` -/
def P6356403760434370446.Spec : Prop :=
  ∀ n, P6356403760434370446.a n = A354924 (n + 1)

end A354924

/-! ## A354924.P229974581333994289

`and(A322320(n+1), A340363(n+1))`
-/

namespace A354924.P229974581333994289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A322320 (n + 1)) (A340363 (n + 1))

end

end A354924.P229974581333994289

namespace A354924

/-- `and(A322320(n+1), A340363(n+1))` -/
def P229974581333994289.Spec : Prop :=
  ∀ n, P229974581333994289.a n = A354924 (n + 1)

end A354924

/-!
# A354925: Union of powers of primes and even semiprimes.

The programs for A354925, the canonical program `A354925.P4096689344031635237` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354925 has offset 1).

The definition of A354925 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354925.P2183140518749126560

`∪[A058363(n+1), A061345(n)]`
-/

namespace A354925.P2183140518749126560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A354925.P2183140518749126560

namespace A354925

/-- `∪[A058363(n+1), A061345(n)]` -/
def P2183140518749126560.Spec : Prop :=
  ∀ n, (P2183140518749126560.a n : ℤ) = A354925 (n + 1)

end A354925

/-! ## A354925.P10407988432635975964

`∪[A000961(n+1), A001747(n+1)]`
-/

namespace A354925.P10407988432635975964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A354925.P10407988432635975964

namespace A354925

/-- `∪[A000961(n+1), A001747(n+1)]` -/
def P10407988432635975964.Spec : Prop :=
  ∀ n, (P10407988432635975964.a n : ℤ) = A354925 (n + 1)

end A354925

/-! ## A354925.P11775813802825936067

`∪[A085118(n+1), A000961(n+1)]`
-/

namespace A354925.P11775813802825936067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A354925.P11775813802825936067

namespace A354925

/-- `∪[A085118(n+1), A000961(n+1)]` -/
def P11775813802825936067.Spec : Prop :=
  ∀ n, (P11775813802825936067.a n : ℤ) = A354925 (n + 1)

end A354925

/-! ## A354925.P4096689344031635237

`∪[A001747(n+1), A225657(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A354925

/-- `∪[A001747(n+1), A225657(n+1)]` -/
def P4096689344031635237.Spec : Prop :=
  ∀ n, (P4096689344031635237.a n : ℤ) = A354925 (n + 1)

theorem P4096689344031635237.correct : P4096689344031635237.Spec := by
  intro n
  simp only [A354925, Nat.add_sub_cancel]

end A354925

/-! ## A354925.P15793885544836840841

`lt[0, A354923(n+1)]+1`
-/

namespace A354925.P15793885544836840841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354923 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A354925.P15793885544836840841

namespace A354925

/-- `lt[0, A354923(n+1)]+1` -/
def P15793885544836840841.Spec : Prop :=
  ∀ n, (P15793885544836840841.a n : ℤ) = A354925 (n + 1)

end A354925

/-! ## A354925.P4543848131629350737

`filter[A324109(n+1), A354923(#)]`
-/

namespace A354925.P4543848131629350737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A354925.P4543848131629350737

namespace A354925

/-- `filter[A324109(n+1), A354923(#)]` -/
def P4543848131629350737.Spec : Prop :=
  ∀ n, P4543848131629350737.a n = A354925 (n + 1)

end A354925

/-! ## A354925.P16065323460511518238

`filter[A285801(n+1), A354923(#)]`
-/

namespace A354925.P16065323460511518238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A354925.P16065323460511518238

namespace A354925

/-- `filter[A285801(n+1), A354923(#)]` -/
def P16065323460511518238.Spec : Prop :=
  ∀ n, P16065323460511518238.a n = A354925 (n + 1)

end A354925

/-! ## A354925.P3301477941279228201

`filter[A354144(n+1), A340363(#)]`
-/

namespace A354925.P3301477941279228201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A354925.P3301477941279228201

namespace A354925

/-- `filter[A354144(n+1), A340363(#)]` -/
def P3301477941279228201.Spec : Prop :=
  ∀ n, P3301477941279228201.a n = A354925 (n + 1)

end A354925

/-! ## A354925.P12367072531069712769

`filter[A354144(n+1), A340372(#)]`
-/

namespace A354925.P12367072531069712769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340372 (f1 j).toNat = 1) n)

end

end A354925.P12367072531069712769

namespace A354925

/-- `filter[A354144(n+1), A340372(#)]` -/
def P12367072531069712769.Spec : Prop :=
  ∀ n, P12367072531069712769.a n = A354925 (n + 1)

end A354925

/-! ## A354925.P16320553154493193004

`filter[A354144(n+1), A354923(#)]`
-/

namespace A354925.P16320553154493193004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A354925.P16320553154493193004

namespace A354925

/-- `filter[A354144(n+1), A354923(#)]` -/
def P16320553154493193004.Spec : Prop :=
  ∀ n, P16320553154493193004.a n = A354925 (n + 1)

end A354925

/-! ## A354925.P532180646467660058

`filter[A354144(n+1), A354924(#)]`
-/

namespace A354925.P532180646467660058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A354925.P532180646467660058

namespace A354925

/-- `filter[A354144(n+1), A354924(#)]` -/
def P532180646467660058.Spec : Prop :=
  ∀ n, P532180646467660058.a n = A354925 (n + 1)

end A354925

/-! ## A354925.P17212539799244866213

`∩[A285801(n+1), A354144(n+1)]`
-/

namespace A354925.P17212539799244866213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354925.P17212539799244866213

namespace A354925

/-- `∩[A285801(n+1), A354144(n+1)]` -/
def P17212539799244866213.Spec : Prop :=
  ∀ n, (P17212539799244866213.a n : ℤ) = A354925 (n + 1)

end A354925

/-! ## A354925.P15401044165445925

`filter[A085156(n+1), A354923(#)]`
-/

namespace A354925.P15401044165445925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A354925.P15401044165445925

namespace A354925

/-- `filter[A085156(n+1), A354923(#)]` -/
def P15401044165445925.Spec : Prop :=
  ∀ n, P15401044165445925.a n = A354925 (n + 1)

end A354925

/-! ## A354925.P18347785117034815613

`filter[A085156(n+1), A354924(#)]`
-/

namespace A354925.P18347785117034815613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A354925.P18347785117034815613

namespace A354925

/-- `filter[A085156(n+1), A354924(#)]` -/
def P18347785117034815613.Spec : Prop :=
  ∀ n, P18347785117034815613.a n = A354925 (n + 1)

end A354925

/-! ## A354925.P10028354042167093922

`filter[A318991(n+1), A354923(#)]`
-/

namespace A354925.P10028354042167093922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A354925.P10028354042167093922

namespace A354925

/-- `filter[A318991(n+1), A354923(#)]` -/
def P10028354042167093922.Spec : Prop :=
  ∀ n, P10028354042167093922.a n = A354925 (n + 1)

end A354925

/-! ## A354925.P17249279667535325392

`filter[A070915(n+1), A354923(#)]`
-/

namespace A354925.P17249279667535325392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A354925.P17249279667535325392

namespace A354925

/-- `filter[A070915(n+1), A354923(#)]` -/
def P17249279667535325392.Spec : Prop :=
  ∀ n, P17249279667535325392.a n = A354925 (n + 1)

end A354925

/-! ## A354925.P11404709454122341261

`lt[A326067(n+1), 3]+1`
-/

namespace A354925.P11404709454122341261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326067 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A354925.P11404709454122341261

namespace A354925

/-- `lt[A326067(n+1), 3]+1` -/
def P11404709454122341261.Spec : Prop :=
  ∀ n, (P11404709454122341261.a n : ℤ) = A354925 (n + 1)

end A354925

/-! ## A354925.P14259818741192259508

`lt[A333783(n+1), 3]+1`
-/

namespace A354925.P14259818741192259508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333783 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A354925.P14259818741192259508

namespace A354925

/-- `lt[A333783(n+1), 3]+1` -/
def P14259818741192259508.Spec : Prop :=
  ∀ n, (P14259818741192259508.a n : ℤ) = A354925 (n + 1)

end A354925

/-! ## A354925.P2685503599721087350

`filter[A303554(n+1), A340363(#)]`
-/

namespace A354925.P2685503599721087350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A354925.P2685503599721087350

namespace A354925

/-- `filter[A303554(n+1), A340363(#)]` -/
def P2685503599721087350.Spec : Prop :=
  ∀ n, P2685503599721087350.a n = A354925 (n + 1)

end A354925

/-! ## A354925.P12886855503629553643

`filter[A303554(n+1), A340372(#)]`
-/

namespace A354925.P12886855503629553643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340372 (f1 j).toNat = 1) n)

end

end A354925.P12886855503629553643

namespace A354925

/-- `filter[A303554(n+1), A340372(#)]` -/
def P12886855503629553643.Spec : Prop :=
  ∀ n, P12886855503629553643.a n = A354925 (n + 1)

end A354925

/-!
# A354926: a(n) = 1 if n is a product of three distinct primes, otherwise 0.

The programs for A354926, the canonical program `A354926.P5218698462307225601` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354926 has offset 1).

The definition of A354926 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A101605, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A354926.P5218698462307225601

`A008966(n+1)*A101605(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A354926

/-- `A008966(n+1)*A101605(n+1)` -/
def P5218698462307225601.Spec : Prop :=
  ∀ n, P5218698462307225601.a n = A354926 (n + 1)

theorem P5218698462307225601.correct : P5218698462307225601.Spec := by
  intro n
  simp only [A354926, Nat.add_sub_cancel]

end A354926

/-! ## A354926.P11665339709278172516

`C(A123074(n+1), 6)`
-/

namespace A354926.P11665339709278172516
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A123074 (n + 1)).toNat 6

end

end A354926.P11665339709278172516

namespace A354926

/-- `C(A123074(n+1), 6)` -/
def P11665339709278172516.Spec : Prop :=
  ∀ n, (P11665339709278172516.a n : ℤ) = A354926 (n + 1)

end A354926

/-! ## A354926.P4310943073108797517

`val(A002033(n)+1, 14)`
-/

namespace A354926.P4310943073108797517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A002033 n + 1).toNat 14

end

end A354926.P4310943073108797517

namespace A354926

/-- `val(A002033(n)+1, 14)` -/
def P4310943073108797517.Spec : Prop :=
  ∀ n, (P4310943073108797517.a n : ℤ) = A354926 (n + 1)

end A354926

/-! ## A354926.P260200258386983292

`char[A007304(n+1)-1]`
-/

namespace A354926.P260200258386983292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A354926.P260200258386983292

namespace A354926

/-- `char[A007304(n+1)-1]` -/
def P260200258386983292.Spec : Prop :=
  ∀ n, (P260200258386983292.a n : ℤ) = A354926 (n + 1)

end A354926

/-! ## A354926.P12244818561389657855

`char[eq[3, A090885(n+1)]]`
-/

namespace A354926.P12244818561389657855
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090885 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354926.P12244818561389657855

namespace A354926

/-- `char[eq[3, A090885(n+1)]]` -/
def P12244818561389657855.Spec : Prop :=
  ∀ n, (P12244818561389657855.a n : ℤ) = A354926 (n + 1)

end A354926

/-! ## A354926.P1631591732856851502

`char[eq[3, A143519(n+1)]]`
-/

namespace A354926.P1631591732856851502
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143519 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354926.P1631591732856851502

namespace A354926

/-- `char[eq[3, A143519(n+1)]]` -/
def P1631591732856851502.Spec : Prop :=
  ∀ n, (P1631591732856851502.a n : ℤ) = A354926 (n + 1)

end A354926

/-! ## A354926.P16472592472941362736

`char[eq[3, A317145(n+1)]]`
-/

namespace A354926.P16472592472941362736
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317145 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354926.P16472592472941362736

namespace A354926

/-- `char[eq[3, A317145(n+1)]]` -/
def P16472592472941362736.Spec : Prop :=
  ∀ n, (P16472592472941362736.a n : ℤ) = A354926 (n + 1)

end A354926

/-! ## A354926.P2266308793068841827

`char[eq[4, A281116(n+1)]]`
-/

namespace A354926.P2266308793068841827
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354926.P2266308793068841827

namespace A354926

/-- `char[eq[4, A281116(n+1)]]` -/
def P2266308793068841827.Spec : Prop :=
  ∀ n, (P2266308793068841827.a n : ℤ) = A354926 (n + 1)

end A354926

/-! ## A354926.P11521801590684933973

`char[eq[8, A181819(n+1)]]`
-/

namespace A354926.P11521801590684933973
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354926.P11521801590684933973

namespace A354926

/-- `char[eq[8, A181819(n+1)]]` -/
def P11521801590684933973.Spec : Prop :=
  ∀ n, (P11521801590684933973.a n : ℤ) = A354926 (n + 1)

end A354926

/-! ## A354926.P3407319131516366415

`char[eq[8, A295279(n+1)]]`
-/

namespace A354926.P3407319131516366415
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295279 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354926.P3407319131516366415

namespace A354926

/-- `char[eq[8, A295279(n+1)]]` -/
def P3407319131516366415.Spec : Prop :=
  ∀ n, (P3407319131516366415.a n : ℤ) = A354926 (n + 1)

end A354926

/-! ## A354926.P9679144296900673415

`char[eq[8, A318469(n+1)]]`
-/

namespace A354926.P9679144296900673415
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318469 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354926.P9679144296900673415

namespace A354926

/-- `char[eq[8, A318469(n+1)]]` -/
def P9679144296900673415.Spec : Prop :=
  ∀ n, (P9679144296900673415.a n : ℤ) = A354926 (n + 1)

end A354926

/-! ## A354926.P2004643219888804561

`char[eq[8, A318470(n+1)]]`
-/

namespace A354926.P2004643219888804561
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318470 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354926.P2004643219888804561

namespace A354926

/-- `char[eq[8, A318470(n+1)]]` -/
def P2004643219888804561.Spec : Prop :=
  ∀ n, (P2004643219888804561.a n : ℤ) = A354926 (n + 1)

end A354926

/-! ## A354926.P9250581808700452364

`char[eq[8, A328705(n+1)]]`
-/

namespace A354926.P9250581808700452364
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328705 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354926.P9250581808700452364

namespace A354926

/-- `char[eq[8, A328705(n+1)]]` -/
def P9250581808700452364.Spec : Prop :=
  ∀ n, (P9250581808700452364.a n : ℤ) = A354926 (n + 1)

end A354926

/-! ## A354926.P793028402389141828

`char[eq[9, A101296(n+1)]]`
-/

namespace A354926.P793028402389141828
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354926.P793028402389141828

namespace A354926

/-- `char[eq[9, A101296(n+1)]]` -/
def P793028402389141828.Spec : Prop :=
  ∀ n, (P793028402389141828.a n : ℤ) = A354926 (n + 1)

end A354926

/-! ## A354926.P2397913804519917839

`val(A007318(∏{e}[n+1, C(2, #²)]), 3)`
-/

namespace A354926.P2397913804519917839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007318 (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose 2 (Nat.factorization (f1 n) p ^ 2))).toNat 3

end

end A354926.P2397913804519917839

namespace A354926

/-- `val(A007318(∏{e}[n+1, C(2, #²)]), 3)` -/
def P2397913804519917839.Spec : Prop :=
  ∀ n, (P2397913804519917839.a n : ℤ) = A354926 (n + 1)

end A354926

/-! ## A354926.P14079495668567534441

`val(A000108(∏{e}[n+1, C(2, #²)]), 11)`
-/

namespace A354926.P14079495668567534441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000108 (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose 2 (Nat.factorization (f1 n) p ^ 2))).toNat 11

end

end A354926.P14079495668567534441

namespace A354926

/-- `val(A000108(∏{e}[n+1, C(2, #²)]), 11)` -/
def P14079495668567534441.Spec : Prop :=
  ∀ n, (P14079495668567534441.a n : ℤ) = A354926 (n + 1)

end A354926

/-! ## A354926.P13183926921914772568

`C(A090030(∑{e}[n+1, #]+1), (n+1)/∏{p}[n+1, #])`
-/

namespace A354926.P13183926921914772568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A090030 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1)).toNat (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

end

end A354926.P13183926921914772568

namespace A354926

/-- `C(A090030(∑{e}[n+1, #]+1), (n+1)/∏{p}[n+1, #])` -/
def P13183926921914772568.Spec : Prop :=
  ∀ n, (P13183926921914772568.a n : ℤ) = A354926 (n + 1)

end A354926

/-! ## A354926.P4738167941537016532

`A000007(xor(5, A238745(n+1)))`
-/

namespace A354926.P4738167941537016532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor 5 (A238745 (n + 1))).toNat

end

end A354926.P4738167941537016532

namespace A354926

/-- `A000007(xor(5, A238745(n+1)))` -/
def P4738167941537016532.Spec : Prop :=
  ∀ n, P4738167941537016532.a n = A354926 (n + 1)

end A354926

/-! ## A354926.P3434077304133614173

`val(A000040(A320887(n+1)), 11)`
-/

namespace A354926.P3434077304133614173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (A320887 (n + 1)).toNat).toNat 11

end

end A354926.P3434077304133614173

namespace A354926

/-- `val(A000040(A320887(n+1)), 11)` -/
def P3434077304133614173.Spec : Prop :=
  ∀ n, (P3434077304133614173.a n : ℤ) = A354926 (n + 1)

end A354926

/-! ## A354926.P3526148547600716968

`A008683(or(48, A046523(n+1)))`
-/

namespace A354926.P3526148547600716968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.lor 48 (A046523 (n + 1))).toNat

end

end A354926.P3526148547600716968

namespace A354926

/-- `A008683(or(48, A046523(n+1)))` -/
def P3526148547600716968.Spec : Prop :=
  ∀ n, P3526148547600716968.a n = A354926 (n + 1)

end A354926

/-!
# A354927: a(n) = 1 if the product of divisors of n is n^2, otherwise 0.

The programs for A354927, the canonical program `A354927.P9536107206795731212` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354927 has offset 1).

The definition of A354927 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354927.P6568449264976659157

`char[A007422(n+1)-1]`
-/

namespace A354927.P6568449264976659157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A354927.P6568449264976659157

namespace A354927

/-- `char[A007422(n+1)-1]` -/
def P6568449264976659157.Spec : Prop :=
  ∀ n, (P6568449264976659157.a n : ℤ) = A354927 (n + 1)

end A354927

/-! ## A354927.P2799122372854685176

`and(1, C(5, A181819(n+1)))`
-/

namespace A354927.P2799122372854685176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.choose 5 (A181819 (n + 1)).toNat)

end

end A354927.P2799122372854685176

namespace A354927

/-- `and(1, C(5, A181819(n+1)))` -/
def P2799122372854685176.Spec : Prop :=
  ∀ n, (P2799122372854685176.a n : ℤ) = A354927 (n + 1)

end A354927

/-! ## A354927.P9536107206795731212

`val(A140482(n+1), n+3)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A354927

/-- `val(A140482(n+1), n+3)` -/
def P9536107206795731212.Spec : Prop :=
  ∀ n, (P9536107206795731212.a n : ℤ) = A354927 (n + 1)

theorem P9536107206795731212.correct : P9536107206795731212.Spec := by
  intro n
  simp only [A354927, Nat.add_sub_cancel]

end A354927

/-! ## A354927.P18178206004385974793

`A072670(C(5, ∏{e}[n+1, #+1]))`
-/

namespace A354927.P18178206004385974793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 (Nat.choose 5 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)))

end

end A354927.P18178206004385974793

namespace A354927

/-- `A072670(C(5, ∏{e}[n+1, #+1]))` -/
def P18178206004385974793.Spec : Prop :=
  ∀ n, P18178206004385974793.a n = A354927 (n + 1)

end A354927

/-! ## A354927.P14220722219644291663

`val(A323871(∏{e}[n+1, #+1])+1, 2)`
-/

namespace A354927.P14220722219644291663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A323871 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) + 1).toNat 2

end

end A354927.P14220722219644291663

namespace A354927

/-- `val(A323871(∏{e}[n+1, #+1])+1, 2)` -/
def P14220722219644291663.Spec : Prop :=
  ∀ n, (P14220722219644291663.a n : ℤ) = A354927 (n + 1)

end A354927

/-! ## A354927.P8367999776255919732

`val(A323871(∑{d}[n+1, gcd(n, #)])+1, 2)`
-/

namespace A354927.P8367999776255919732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A323871 (∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d) + 1).toNat 2

end

end A354927.P8367999776255919732

namespace A354927

/-- `val(A323871(∑{d}[n+1, gcd(n, #)])+1, 2)` -/
def P8367999776255919732.Spec : Prop :=
  ∀ n, (P8367999776255919732.a n : ℤ) = A354927 (n + 1)

end A354927

/-! ## A354927.P11700921928989350208

`val(A000005(n+1)+2*(n+1), n+3)`
-/

namespace A354927.P11700921928989350208
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000005 (n + 1) + (2 * (n + 1) : ℤ)).toNat (n + 3)

end

end A354927.P11700921928989350208

namespace A354927

/-- `val(A000005(n+1)+2*(n+1), n+3)` -/
def P11700921928989350208.Spec : Prop :=
  ∀ n, (P11700921928989350208.a n : ℤ) = A354927 (n + 1)

end A354927

/-! ## A354927.P12292727158983062859

`A010056(A062011(n+1))`
-/

namespace A354927.P12292727158983062859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (A062011 (n + 1)).toNat

end

end A354927.P12292727158983062859

namespace A354927

/-- `A010056(A062011(n+1))` -/
def P12292727158983062859.Spec : Prop :=
  ∀ n, P12292727158983062859.a n = A354927 (n + 1)

end A354927

/-! ## A354927.P5197363197653104186

`A154281(A000005(n+1))`
-/

namespace A354927.P5197363197653104186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154281 (A000005 (n + 1)).toNat

end

end A354927.P5197363197653104186

namespace A354927

/-- `A154281(A000005(n+1))` -/
def P5197363197653104186.Spec : Prop :=
  ∀ n, P5197363197653104186.a n = A354927 (n + 1)

end A354927

/-! ## A354927.P5465757232072492456

`A113428(A032741(n+1)²)`
-/

namespace A354927.P5465757232072492456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113428 (A032741 (n + 1) ^ 2).toNat

end

end A354927.P5465757232072492456

namespace A354927

/-- `A113428(A032741(n+1)²)` -/
def P5465757232072492456.Spec : Prop :=
  ∀ n, P5465757232072492456.a n = A354927 (n + 1)

end A354927

/-! ## A354927.P16020705126071979124

`A010056(2*A000005(n+1))`
-/

namespace A354927.P16020705126071979124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (2 * A000005 (n + 1)).toNat

end

end A354927.P16020705126071979124

namespace A354927

/-- `A010056(2*A000005(n+1))` -/
def P16020705126071979124.Spec : Prop :=
  ∀ n, P16020705126071979124.a n = A354927 (n + 1)

end A354927

/-! ## A354927.P16517571649613839332

`A000035(C(5, A101296(n+1)))`
-/

namespace A354927.P16517571649613839332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Nat.choose 5 (A101296 (n + 1)).toNat)

end

end A354927.P16517571649613839332

namespace A354927

/-- `A000035(C(5, A101296(n+1)))` -/
def P16517571649613839332.Spec : Prop :=
  ∀ n, P16517571649613839332.a n = A354927 (n + 1)

end A354927

/-! ## A354927.P2027267267945516879

`A023531((1-A000005(n+1))²)`
-/

namespace A354927.P2027267267945516879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 ((1 - A000005 (n + 1)) ^ 2).toNat

end

end A354927.P2027267267945516879

namespace A354927

/-- `A023531((1-A000005(n+1))²)` -/
def P2027267267945516879.Spec : Prop :=
  ∀ n, P2027267267945516879.a n = A354927 (n + 1)

end A354927

/-! ## A354927.P12033141840779583426

`char[eq[A049240(n+1), A072670(n)]]`
-/

namespace A354927.P12033141840779583426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354927.P12033141840779583426

namespace A354927

/-- `char[eq[A049240(n+1), A072670(n)]]` -/
def P12033141840779583426.Spec : Prop :=
  ∀ n, (P12033141840779583426.a n : ℤ) = A354927 (n + 1)

end A354927

/-! ## A354927.P15731398618202855072

`A192687(2*A000005(n+1)-1)`
-/

namespace A354927.P15731398618202855072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192687 (2 * A000005 (n + 1) - 1).toNat

end

end A354927.P15731398618202855072

namespace A354927

/-- `A192687(2*A000005(n+1)-1)` -/
def P15731398618202855072.Spec : Prop :=
  ∀ n, P15731398618202855072.a n = A354927 (n + 1)

end A354927

/-! ## A354927.P9320669087308299983

`A256432(2*(A000005(n+1)-1))`
-/

namespace A354927.P9320669087308299983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256432 (2 * (A000005 (n + 1) - 1)).toNat

end

end A354927.P9320669087308299983

namespace A354927

/-- `A256432(2*(A000005(n+1)-1))` -/
def P9320669087308299983.Spec : Prop :=
  ∀ n, P9320669087308299983.a n = A354927 (n + 1)

end A354927

/-! ## A354927.P6388161289381283066

`C(2, A328631(A000005(n+1)+2))`
-/

namespace A354927.P6388161289381283066
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A328631 (A000005 (n + 1) + 2).toNat).toNat

end

end A354927.P6388161289381283066

namespace A354927

/-- `C(2, A328631(A000005(n+1)+2))` -/
def P6388161289381283066.Spec : Prop :=
  ∀ n, (P6388161289381283066.a n : ℤ) = A354927 (n + 1)

end A354927

/-! ## A354927.P16839260841689767821

`A171588(C(5, A000005(n+1))+1)`
-/

namespace A354927.P16839260841689767821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171588 (Nat.choose 5 (A000005 (n + 1)).toNat + 1)

end

end A354927.P16839260841689767821

namespace A354927

/-- `A171588(C(5, A000005(n+1))+1)` -/
def P16839260841689767821.Spec : Prop :=
  ∀ n, P16839260841689767821.a n = A354927 (n + 1)

end A354927

/-! ## A354927.P16806182632321793712

`and(1, A277536(2*A000005(n+1)))`
-/

namespace A354927.P16806182632321793712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A277536 (2 * A000005 (n + 1)).toNat)

end

end A354927.P16806182632321793712

namespace A354927

/-- `and(1, A277536(2*A000005(n+1)))` -/
def P16806182632321793712.Spec : Prop :=
  ∀ n, P16806182632321793712.a n = A354927 (n + 1)

end A354927

/-! ## A354927.P12622834102111455398

`A131802(n+1)*A353799(n+1)`
-/

namespace A354927.P12622834102111455398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131802 (n + 1) * A353799 (n + 1)

end

end A354927.P12622834102111455398

namespace A354927

/-- `A131802(n+1)*A353799(n+1)` -/
def P12622834102111455398.Spec : Prop :=
  ∀ n, P12622834102111455398.a n = A354927 (n + 1)

end A354927

/-!
# A354928: Numbers k such that A047994(k) = A344005(k).

The programs for A354928, there is no canonical definition to state claims against.
-/

/-! ## A354928.P5925947441772350287

`filter[n+1, A354924(#)]`
-/

namespace A354928.P5925947441772350287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j) = 1) n)

end

end A354928.P5925947441772350287

/-! ## A354928.P8913441449858907917

`eq[0, A346607(n+1)]+1`
-/

namespace A354928.P8913441449858907917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346607 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354928.P8913441449858907917

/-! ## A354928.P17556337331259471152

`lt[0, A354924(n+1)]+1`
-/

namespace A354928.P17556337331259471152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354924 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A354928.P17556337331259471152

/-! ## A354928.P2717133559725178638

`eq[1, A354986(n+1)]+1`
-/

namespace A354928.P2717133559725178638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354986 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354928.P2717133559725178638

/-! ## A354928.P1521085607352543288

`lt[A322989(n+1), 2]+1`
-/

namespace A354928.P1521085607352543288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322989 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A354928.P1521085607352543288

/-! ## A354928.P2368147367038267358

`lt[A051119(n+1), 3]+1`
-/

namespace A354928.P2368147367038267358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A354928.P2368147367038267358

/-! ## A354928.P5589992468290662563

`lt[A284600(n+1), 3]+1`
-/

namespace A354928.P5589992468290662563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284600 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A354928.P5589992468290662563

/-! ## A354928.P12403182112669004559

`lt[A345994(n+1), 3]+1`
-/

namespace A354928.P12403182112669004559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345994 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A354928.P12403182112669004559

/-! ## A354928.P14647310193840687550

`lt[A001221(lcm(2, n+1)/2), 2]+1`
-/

namespace A354928.P14647310193840687550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 1) : ℚ) / 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A354928.P14647310193840687550

/-! ## A354928.P7379796560884709409

`lt[A001221((n+1)/(n%2+1)), 2]+1`
-/

namespace A354928.P7379796560884709409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((n % 2 + 1 : ℕ) : ℚ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A354928.P7379796560884709409

/-!
# A354929: Numbers of the form 2*p^e, with p an odd prime and e >= 2.

The programs for A354929, there is no canonical definition to state claims against.
-/

/-! ## A354929.P11203360746495137262

`2*A244623(n+2)`
-/

namespace A354929.P11203360746495137262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A244623 (n + 2)

end

end A354929.P11203360746495137262

/-! ## A354929.P15301576922549296322

`A244623(n+2)+∩[A244623(n+1), A244623(n+2)]`
-/

namespace A354929.P15301576922549296322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244623 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244623 (n + 2) + (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A354929.P15301576922549296322

/-! ## A354929.P18145965023546982478

`record[lcm(2, A025475(n+4))]`
-/

namespace A354929.P18145965023546982478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A025475 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354929.P18145965023546982478

/-! ## A354929.P7456927706202764652

`2*∩[A025475(n+2), A075109(n+2)]`
-/

namespace A354929.P7456927706202764652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075109 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354929.P7456927706202764652

/-! ## A354929.P15571926790099451706

`2*∩[A075109(n+2), A134611(n+2)]`
-/

namespace A354929.P15571926790099451706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075109 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134611 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354929.P15571926790099451706

/-! ## A354929.P16228949560209280040

`2*∩[A025475(n+2), A062739(n+2)]`
-/

namespace A354929.P16228949560209280040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354929.P16228949560209280040

/-! ## A354929.P3960812605227462496

`lcm(A244623(n+2), A259578(A259604(n+1)))`
-/

namespace A354929.P3960812605227462496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A244623 (n + 2)) (A259578 (A259604 (n + 1)).toNat)

end

end A354929.P3960812605227462496

/-! ## A354929.P7747888275045174478

`∩[A325359(n+1), A389145(n+1)]`
-/

namespace A354929.P7747888275045174478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354929.P7747888275045174478

/-! ## A354929.P5008167800078499180

`∩[A057109(n+1), A278568(n+1)]`
-/

namespace A354929.P5008167800078499180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354929.P5008167800078499180

/-! ## A354929.P477992849427673304

`record[lcm(1-6/2, A163813(n+5))]`
-/

namespace A354929.P477992849427673304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (1 - (6 : ℚ) / 2)) (A163813 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354929.P477992849427673304

/-!
# A354930: Square array where the row n lists all nonnegative numbers k for which A345992(k) = n, read by falling antidiagonals.

The programs for A354930, there is no canonical definition to state claims against.
-/

/-! ## A354930.P15189407619733668708

`A002260(n+1)*A354940(n+1)`
-/

namespace A354930.P15189407619733668708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A354940 (n + 1)

end

end A354930.P15189407619733668708

/-! ## A354930.P5306368651934582385

`(A002262(n)+1)*A354940(n+1)`
-/

namespace A354930.P5306368651934582385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A354940 (n + 1)

end

end A354930.P5306368651934582385

/-! ## A354930.P6278062982535698430

`A057555(Δ[n²])*A354940(n+1)`
-/

namespace A354930.P6278062982535698430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A354940 (n + 1)

end

end A354930.P6278062982535698430

/-! ## A354930.P18380257961187649043

`(val(A130328(n), 2)+1)*A354940(n+1)`
-/

namespace A354930.P18380257961187649043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A130328 n).toNat 2 + 1 : ℤ) * A354940 (n + 1)

end

end A354930.P18380257961187649043

/-! ## A354930.P4937291481797571212

`∏{e}[A059268(n), #+1]*A354940(n+1)`
-/

namespace A354930.P4937291481797571212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℤ) * A354940 (n + 1)

end

end A354930.P4937291481797571212

/-! ## A354930.P7651654943313616973

`(round(sqrt(2*n+1))-A025581(n))*A354940(n+1)`
-/

namespace A354930.P7651654943313616973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)) - A025581 n) * A354940 (n + 1)

end

end A354930.P7651654943313616973

/-! ## A354930.P14078956421269135984

`A000005(A059268(n))*A354940(n+1)`
-/

namespace A354930.P14078956421269135984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat * A354940 (n + 1)

end

end A354930.P14078956421269135984

/-! ## A354930.P5129185687598061617

`A026100(A026098(n+1))*A354940(n+1)`
-/

namespace A354930.P5129185687598061617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026100 (A026098 (n + 1)).toNat * A354940 (n + 1)

end

end A354930.P5129185687598061617

/-! ## A354930.P6064231703016877794

`lcm(A002260(A000027(n+1)), A354940(n+1))`
-/

namespace A354930.P6064231703016877794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002260 (A000027 (n + 1)).toNat) (A354940 (n + 1))

end

end A354930.P6064231703016877794

/-! ## A354930.P16959162990298597519

`(A182814(n)%A002024(n+1)+1)*A354940(n+1)`
-/

namespace A354930.P16959162990298597519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A182814 n) (A002024 (n + 1)) + 1) * A354940 (n + 1)

end

end A354930.P16959162990298597519

/-!
# A354931: a(n) = the least k for which A345992(k) = n.

The programs for A354931, there is no canonical definition to state claims against.
-/

/-! ## A354931.P18126085160178758100

`(n+1)*A354932(n+1)`
-/

namespace A354931.P18126085160178758100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A354932 (n + 1)

end

end A354931.P18126085160178758100

/-! ## A354931.P12612770087102986477

`lcm(A000027(n+1), A354932(n+1))`
-/

namespace A354931.P12612770087102986477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (n + 1)) (A354932 (n + 1))

end

end A354931.P12612770087102986477

/-! ## A354931.P12583926410890962294

`lcm(A305897(A004277(n)), A354932(n+1))`
-/

namespace A354931.P12583926410890962294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A305897 (A004277 n).toNat) (A354932 (n + 1))

end

end A354931.P12583926410890962294

/-! ## A354931.P2138411632351872048

`(n+1)*A025492(A345941(2*(n+2))^(∑{e}[(n+1)*(n+2), #]-1))`
-/

namespace A354931.P2138411632351872048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A025492 (SequenceMachineLib.roundAway ((A345941 (2 * (n + 2)) : ℚ) ^ (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - 1 : ℤ))).toNat

end

end A354931.P2138411632351872048

/-! ## A354931.P4594451886474072221

`(n+1)*A354940(∑[n+1])`
-/

namespace A354931.P4594451886474072221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A354940 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A354931.P4594451886474072221

/-!
# A354932: a(n) = 1/n * {the least k for which A345992(k) = n}.

The programs for A354932, there is no canonical definition to state claims against.
-/

/-! ## A354932.P8655633376914596106

`A354931(n+1)/(n+1)`
-/

namespace A354932.P8655633376914596106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354931 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A354932.P8655633376914596106

/-! ## A354932.P13530021779447267935

`A354988(A354931(C(n+1, n)))+1+n`
-/

namespace A354932.P13530021779447267935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354988 (A354931 (Nat.choose (n + 1) n)).toNat + 1 + (n : ℤ)

end

end A354932.P13530021779447267935

/-! ## A354932.P17241073390058792007

`A354988(A354931(abs(xor(n, -1))))+1+n`
-/

namespace A354932.P17241073390058792007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354988 (A354931 |Int.xor (n : ℤ) (-1)|.toNat).toNat + 1 + (n : ℤ)

end

end A354932.P17241073390058792007

/-! ## A354932.P674244418850170742

`A354988(A354931(-xor(n, -1)))+n+1`
-/

namespace A354932.P674244418850170742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354988 (A354931 (-Int.xor (n : ℤ) (-1)).toNat).toNat + (n + 1 : ℤ)

end

end A354932.P674244418850170742

/-! ## A354932.P12413350060500551152

`A354988(A354931(1-char[2]+n))+1+n`
-/

namespace A354932.P12413350060500551152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354988 (A354931 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat).toNat + 1 + (n : ℤ)

end

end A354932.P12413350060500551152

/-! ## A354932.P9241985918320180731

`A354988(A354931(n+1))+A000027(n+1)`
-/

namespace A354932.P9241985918320180731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354988 (A354931 (n + 1)).toNat + A000027 (n + 1)

end

end A354932.P9241985918320180731

/-! ## A354932.P7512454214940137754

`A354988(A354931(n+1))-A001478(n+1)`
-/

namespace A354932.P7512454214940137754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354988 (A354931 (n + 1)).toNat - A001478 (n + 1)

end

end A354932.P7512454214940137754

/-! ## A354932.P16933566274988591699

`A354988(A354931(n+1))+A004273(n+1)-n`
-/

namespace A354932.P16933566274988591699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354988 (A354931 (n + 1)).toNat + (A004273 (n + 1) - (n : ℤ))

end

end A354932.P16933566274988591699

/-! ## A354932.P9428975624935806096

`(A354988(A354931(n+1))+1+n)%A331755(n+2)`
-/

namespace A354932.P9428975624935806096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354988 (A354931 (n + 1)).toNat + 1 + (n : ℤ)) (A331755 (n + 2))

end

end A354932.P9428975624935806096

/-! ## A354932.P9403701699089503504

`A345993(A354931(n+1))`
-/

namespace A354932.P9403701699089503504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345993 (A354931 (n + 1)).toNat

end

end A354932.P9403701699089503504

/-!
# A354933: a(1) = 1; for n > 1, a(n) = n / the largest divisor of n that is coprime to a larger divisor of n.

The programs for A354933, there is no canonical definition to state claims against.
-/

/-! ## A354933.P13772573256113614755

`A052128(n+1)+A076388(n+1)`
-/

namespace A354933.P13772573256113614755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052128 (n + 1) + A076388 (n + 1)

end

end A354933.P13772573256113614755

/-! ## A354933.P17655738741130339276

`(n+1)/A052128(n+1)`
-/

namespace A354933.P17655738741130339276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A052128 (n + 1) : ℚ)

end

end A354933.P17655738741130339276

/-! ## A354933.P9255480367573585345

`A354995(n+1)+A034699(n+1)`
-/

namespace A354933.P9255480367573585345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354995 (n + 1) + A034699 (n + 1)

end

end A354933.P9255480367573585345

/-! ## A354933.P11755917859863878644

`A354995(n+1)+(n+1)/A284600(n+1)`
-/

namespace A354933.P11755917859863878644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354995 (n + 1) : ℚ) + (n + 1 : ℚ) / (A284600 (n + 1) : ℚ)

end

end A354933.P11755917859863878644

/-! ## A354933.P3798051093170105301

`A002034(n+1)+A354995(n+1)+A057110(n+1)`
-/

namespace A354933.P3798051093170105301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (n + 1) + (A354995 (n + 1) + A057110 (n + 1))

end

end A354933.P3798051093170105301

/-! ## A354933.P2073719551734417034

`A354995(n+1)+A304233(n+1)/A034684(n+1)`
-/

namespace A354933.P2073719551734417034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354995 (n + 1) : ℚ) + (A304233 (n + 1) : ℚ) / (A034684 (n + 1) : ℚ)

end

end A354933.P2073719551734417034

/-! ## A354933.P2288465981605820894

`A354995(n+1)+A006530(n+1)+A057110(n+1)+A057108(n+1)`
-/

namespace A354933.P2288465981605820894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354995 (n + 1) + (A006530 (n + 1) + (A057110 (n + 1) + A057108 (n + 1)))

end

end A354933.P2288465981605820894

/-! ## A354933.P16694906295433741082

`A354995(n+1)+A210208(A210241(n+1))`
-/

namespace A354933.P16694906295433741082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354995 (n + 1) + A210208 (A210241 (n + 1)).toNat

end

end A354933.P16694906295433741082

/-! ## A354933.P6364799117734371151

`A354995(n+1)+A210208(∑[A073093(n+1)])`
-/

namespace A354933.P6364799117734371151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354995 (n + 1) + A210208 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A354933.P6364799117734371151

/-! ## A354933.P10701967838669201648

`A354995(n+1)+A210208(A022559(n+1)+n+1)`
-/

namespace A354933.P10701967838669201648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354995 (n + 1) + A210208 (A022559 (n + 1) + (n + 1 : ℤ)).toNat

end

end A354933.P10701967838669201648

/-! ## A354933.P227327672996041047

`A354995(n+1)+gcd(n+1, A081472(n+1))`
-/

namespace A354933.P227327672996041047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354995 (n + 1) + (Int.gcd (n + 1 : ℤ) (A081472 (n + 1)) : ℤ)

end

end A354933.P227327672996041047

/-! ## A354933.P3105345975369748512

`A234575(A052128(n+1)+A000217(n))`
-/

namespace A354933.P3105345975369748512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A052128 (n + 1) + A000217 n).toNat

end

end A354933.P3105345975369748512

/-! ## A354933.P2378420194678072867

`A054531(A052128(n+1)+A000217(n))`
-/

namespace A354933.P2378420194678072867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A052128 (n + 1) + A000217 n).toNat

end

end A354933.P2378420194678072867

/-!
# A354934: Row 4 of A354940: Numbers k for which A345992(k) = 4, divided by 4.

The programs for A354934, there is no canonical definition to state claims against.
-/

/-! ## A354934.P2049118577664626297

`record[A343996(8*n+10)]`
-/

namespace A354934.P2049118577664626297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343996 (8 * n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354934.P2049118577664626297

/-! ## A354934.P2286492097152549676

`eq[2, A344764(2*(n+1))]+1`
-/

namespace A354934.P2286492097152549676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344764 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354934.P2286492097152549676

/-! ## A354934.P10654360727724120953

`eq[n, A011772(2*(n+1))]+1`
-/

namespace A354934.P10654360727724120953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354934.P10654360727724120953

/-! ## A354934.P14474601579613720175

`eq[n, A343997(2*(n+1))]+1`
-/

namespace A354934.P14474601579613720175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343997 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354934.P14474601579613720175

/-! ## A354934.P16529302341380051262

`eq[2, A344764(A004277(n))]`
-/

namespace A354934.P16529302341380051262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344764 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354934.P16529302341380051262

/-! ## A354934.P8589332459213060895

`eq[4, A345992(A008574(n))]`
-/

namespace A354934.P8589332459213060895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345992 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354934.P8589332459213060895

/-! ## A354934.P11725425644870806599

`A004525(eq[2, A344764(n+1)])`
-/

namespace A354934.P11725425644870806599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A354934.P11725425644870806599

/-! ## A354934.P170571838129126843

`A065033(eq[2, A344764(n+1)])`
-/

namespace A354934.P170571838129126843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A354934.P170571838129126843

/-! ## A354934.P1134132639298951863

`eq[2, A344764(A028310(2*n))]`
-/

namespace A354934.P1134132639298951863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344764 (A028310 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354934.P1134132639298951863

/-! ## A354934.P15284549444633076861

`eq[2, A344764(A028310(n))]/2`
-/

namespace A354934.P15284549444633076861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344764 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A354934.P15284549444633076861

/-!
# A354935: Row 5 of A354940: Numbers k for which A345992(k) = 5, divided by 5.

The programs for A354935, there is no canonical definition to state claims against.
-/

/-! ## A354935.P5384037742032253803

`round(eq[7, A345992(n+1)+2]/5)`
-/

namespace A354935.P5384037742032253803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345992 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 5)

end

end A354935.P5384037742032253803

/-! ## A354935.P12563601357257851385

`eq[5, A345992(A008706(n))]`
-/

namespace A354935.P12563601357257851385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345992 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354935.P12563601357257851385

/-! ## A354935.P15943608740862408459

`eq[7, A345992(A000007(n)+n)+2]/5`
-/

namespace A354935.P15943608740862408459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345992 (A000007 n + (n : ℤ)).toNat + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 5

end

end A354935.P15943608740862408459

/-! ## A354935.P13147546840704305427

`A354940(A167499(n+3))`
-/

namespace A354935.P13147546840704305427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354940 (A167499 (n + 3)).toNat

end

end A354935.P13147546840704305427

/-! ## A354935.P14885546616319484451

`A354940(A155212(n)+13)`
-/

namespace A354935.P14885546616319484451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354940 (A155212 n + 13).toNat

end

end A354935.P14885546616319484451

/-!
# A354936: Row 6 of A354940: Numbers k for which A345992(k) = 6, divided by 6.

The programs for A354936, there is no canonical definition to state claims against.
-/

/-! ## A354936.P1785249501640596981

`record[A336650(3*n+7)]`
-/

namespace A354936.P1785249501640596981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336650 (3 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354936.P1785249501640596981

/-! ## A354936.P5193847705067267168

`record[A008475(6*n+7)]`
-/

namespace A354936.P5193847705067267168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (6 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354936.P5193847705067267168

/-! ## A354936.P8306684377210212475

`record[A028233(6*n+7)]`
-/

namespace A354936.P8306684377210212475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (6 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354936.P8306684377210212475

/-! ## A354936.P14888974943317094047

`record[A034699(6*n+7)]`
-/

namespace A354936.P14888974943317094047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (6 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354936.P14888974943317094047

/-! ## A354936.P9363526294496452392

`record[A053585(6*n+7)]`
-/

namespace A354936.P9363526294496452392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (6 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354936.P9363526294496452392

/-! ## A354936.P2562942004287747121

`record[A066296(6*n+7)]`
-/

namespace A354936.P2562942004287747121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066296 (6 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354936.P2562942004287747121

/-! ## A354936.P10985904518604084561

`record[A100994(6*n+7)]`
-/

namespace A354936.P10985904518604084561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100994 (6 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354936.P10985904518604084561

/-! ## A354936.P12204279515197945318

`record[A304181(6*n+7)]`
-/

namespace A354936.P12204279515197945318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304181 (6 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354936.P12204279515197945318

/-! ## A354936.P15982843733304108966

`filter[2*n+1, A354982(#)]`
-/

namespace A354936.P15982843733304108966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354982 (f1 j) = 1) n)

end

end A354936.P15982843733304108966

/-! ## A354936.P13566057569021412220

`record[A068794(6*(n+1)+1)]`
-/

namespace A354936.P13566057569021412220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068794 (6 * (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354936.P13566057569021412220

/-!
# A354937: Row 7 of A354940: Numbers k for which A345992(k) = 7, divided by 7.

The programs for A354937, there is no canonical definition to state claims against.
-/

/-! ## A354937.P3606353583236157328

`A108852(A354645(n))+A075449(n+1)`
-/

namespace A354937.P3606353583236157328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108852 (A354645 n).toNat + A075449 (n + 1)

end

end A354937.P3606353583236157328

/-! ## A354937.P15949365843177059031

`A322201(A245790(n))+A190079(n+1)`
-/

namespace A354937.P15949365843177059031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322201 (A245790 n).toNat + A190079 (n + 1)

end

end A354937.P15949365843177059031

/-! ## A354937.P12459847998183515245

`A287410(n+1)+A007862(A279197(n+3))`
-/

namespace A354937.P12459847998183515245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287410 (n + 1) + A007862 (A279197 (n + 3)).toNat

end

end A354937.P12459847998183515245

/-! ## A354937.P13325968047713917420

`A367613(3*n+2)*A367623(A367655(n))`
-/

namespace A354937.P13325968047713917420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367613 (3 * n + 2) * A367623 (A367655 n).toNat

end

end A354937.P13325968047713917420

/-! ## A354937.P9741117492218108431

`∑[A074459(A074451(n+1)+A074408(n+1))]`
-/

namespace A354937.P9741117492218108431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074459 (A074451 (n + 1) + A074408 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354937.P9741117492218108431

/-!
# A354938: Row 8 of A354940: Numbers k for which A345992(k) = 8, divided by 8.

The programs for A354938, there is no canonical definition to state claims against.
-/

/-! ## A354938.P9530818518269368271

`eq[4, A344764(4*(n+1))]+1`
-/

namespace A354938.P9530818518269368271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344764 (4 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354938.P9530818518269368271

/-! ## A354938.P17761735641544198324

`eq[4, A344764(A008574(n))]`
-/

namespace A354938.P17761735641544198324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344764 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354938.P17761735641544198324

/-! ## A354938.P16872329263972351842

`eq[4, A344764(A004277(2*n))]`
-/

namespace A354938.P16872329263972351842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344764 (A004277 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354938.P16872329263972351842

/-! ## A354938.P14327762228512806842

`eq[4, A344764(A028310(4*n))]`
-/

namespace A354938.P14327762228512806842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344764 (A028310 (4 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354938.P14327762228512806842

/-! ## A354938.P17656124331087910291

`(eq[4, A344764(A004277(n+1))]+1)/2`
-/

namespace A354938.P17656124331087910291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344764 (A004277 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℚ) / 2

end

end A354938.P17656124331087910291

/-!
# A354939: Row 9 of A354940: Numbers k for which A345992(k) = 9, divided by 9.

The programs for A354939, there is no canonical definition to state claims against.
-/

/-! ## A354939.P17402641120585396898

`∑[A281855(7*n+2)]+3`
-/

namespace A354939.P17402641120585396898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281855 (7 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A354939.P17402641120585396898

/-! ## A354939.P12599567457432149960

`record[A348684(3*n+1)]+n+3`
-/

namespace A354939.P12599567457432149960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348684 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n + 3 : ℤ)

end

end A354939.P12599567457432149960

/-! ## A354939.P6250514433567630689

`A001414(A076506(n+3)/2)`
-/

namespace A354939.P6250514433567630689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.roundAway ((A076506 (n + 3) : ℚ) / 2)).toNat

end

end A354939.P6250514433567630689

/-! ## A354939.P585489147906990925

`∑[A001222(A024814(16*n+15))]`
-/

namespace A354939.P585489147906990925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A024814 (16 * n + 15)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354939.P585489147906990925

/-! ## A354939.P15340459390825009084

`A016789(n+1)-A000035(A000032(n)²)`
-/

namespace A354939.P15340459390825009084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (n + 1) - A000035 (A000032 n ^ 2).toNat

end

end A354939.P15340459390825009084

/-!
# A354940: Square array A(n, k) = A354930(n, k)/n, read by falling antidiagonals.

The programs for A354940, there is no canonical definition to state claims against.
-/

/-! ## A354940.P17355273129064258402

`A345993(A354930(n+1))`
-/

namespace A354940.P17355273129064258402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345993 (A354930 (n + 1)).toNat

end

end A354940.P17355273129064258402

/-! ## A354940.P18144915432556827930

`A354930(n+1)/A002260(n+1)`
-/

namespace A354940.P18144915432556827930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354930 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A354940.P18144915432556827930

/-! ## A354940.P16338576645351091918

`A354930(n+1)/(A002262(n)+1)`
-/

namespace A354940.P16338576645351091918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354930 (n + 1) : ℚ) / (A002262 n + 1 : ℚ)

end

end A354940.P16338576645351091918

/-! ## A354940.P16033972405515204592

`A354930(n+1)/A057555(2*n+1)`
-/

namespace A354940.P16033972405515204592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354930 (n + 1) : ℚ) / (A057555 (2 * n + 1) : ℚ)

end

end A354940.P16033972405515204592

/-! ## A354940.P8966756745146184456

`A354930(n+1)/A000005(A059268(n))`
-/

namespace A354940.P8966756745146184456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354930 (n + 1) : ℚ) / (A000005 (A059268 n).toNat : ℚ)

end

end A354940.P8966756745146184456

/-! ## A354940.P15709554520020839348

`A354930(n+1)/A026100(A026098(n+1))`
-/

namespace A354940.P15709554520020839348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354930 (n + 1) : ℚ) / (A026100 (A026098 (n + 1)).toNat : ℚ)

end

end A354940.P15709554520020839348

/-!
# A354941: a(n) = Sum_{k=0..n} binomial(n,k)^3 * k! * (-2)^(n-k).

The programs for A354941, there is no canonical definition to state claims against.
-/

/-! ## A354941.P9692434444658484423

`A121466(A258311(n))-A108029(n+1)`
-/

namespace A354941.P9692434444658484423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121466 (A258311 n).toNat - A108029 (n + 1)

end

end A354941.P9692434444658484423

/-!
# A354944: a(n) = Sum_{k=0..n} binomial(n,k)^3 * k! * (-n)^(n-k).

The programs for A354944, there is no canonical definition to state claims against.
-/

/-! ## A354944.P1959880829593041178

`A073792(A264910(n)*A302545(n))`
-/

namespace A354944.P1959880829593041178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073792 (A264910 n * A302545 n).toNat

end

end A354944.P1959880829593041178

/-!
# A354946: a(n) = gcd(A001923(n),n^n).

The programs for A354946, there is no canonical definition to state claims against.
-/

/-! ## A354946.P4284535597823007046

`gcd(∑[n^n]-1, (n+1)²²)`
-/

namespace A354946.P4284535597823007046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) (((n + 1) ^ 2) ^ 2 : ℤ)

end

end A354946.P4284535597823007046

/-!
# A354948: Square array read by upwards antidiagonals: T(n,k) = k-th digit after the radix point in the expansion of 1/n in golden ratio base phi where n and k both >= 1 and phi = (1+sqrt(5))/2.

The programs for A354948, there is no canonical definition to state claims against.
-/

/-! ## A354948.P2979526057883305038

`A124761(round(A257244(2*n+5)/A007652(n+1)))`
-/

namespace A354948.P2979526057883305038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (SequenceMachineLib.roundAway ((A257244 (2 * n + 5) : ℚ) / (A007652 (n + 1) : ℚ))).toNat

end

end A354948.P2979526057883305038

/-! ## A354948.P7044270346109542453

`C(A306008(A233427(n)), A007652(n+1))`
-/

namespace A354948.P7044270346109542453
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A306008 (A233427 n).toNat).toNat (A007652 (n + 1)).toNat

end

end A354948.P7044270346109542453

/-! ## A354948.P3373036831714647818

`val(A051797(A326641(2*n+1)²), 11)`
-/

namespace A354948.P3373036831714647818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A051797 (A326641 (2 * n + 1) ^ 2).toNat).toNat 11

end

end A354948.P3373036831714647818

/-! ## A354948.P754278492302126122

`A179827(A372877(n)+A075498(n+1))`
-/

namespace A354948.P754278492302126122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179827 (A372877 n + A075498 (n + 1)).toNat

end

end A354948.P754278492302126122

/-! ## A354948.P4150795572602837818

`A166486(A224988(n+1)%A008275(n+1))`
-/

namespace A354948.P4150795572602837818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (Int.tmod (A224988 (n + 1)) (A008275 (n + 1))).toNat

end

end A354948.P4150795572602837818

/-!
# A354951: The number of squarefree abundant numbers whose largest prime divisor is prime(n).

The programs for A354951, there is no canonical definition to state claims against.
-/

/-! ## A354951.P7902804869752612228

`A003986(A222660(n+1))`
-/

namespace A354951.P7902804869752612228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 (A222660 (n + 1)).toNat

end

end A354951.P7902804869752612228

/-! ## A354951.P7530677633565354292

`A161205(A056841(n+1))-1`
-/

namespace A354951.P7530677633565354292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (A056841 (n + 1)).toNat - 1

end

end A354951.P7530677633565354292

/-! ## A354951.P10802565127403775320

`A316355(A056841(n+1)-1)`
-/

namespace A354951.P10802565127403775320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 (A056841 (n + 1) - 1).toNat

end

end A354951.P10802565127403775320

/-! ## A354951.P10846317211584947581

`A316355(A114296(n)-A007318(n))`
-/

namespace A354951.P10846317211584947581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 (A114296 n - A007318 n).toNat

end

end A354951.P10846317211584947581

/-! ## A354951.P8675752103699698593

`A105309(n)-A351846(A149127(n))`
-/

namespace A354951.P8675752103699698593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105309 n - A351846 (A149127 n).toNat

end

end A354951.P8675752103699698593

/-!
# A354955: Perfect powers j^k, such that k is the exponent of 2 in the factorization of j^k.

The programs for A354955, there is no canonical definition to state claims against.
-/

/-! ## A354955.P929984513339709233

`4*A354956(n+1)`
-/

namespace A354955.P929984513339709233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A354956 (n + 1)

end

end A354955.P929984513339709233

/-! ## A354955.P13248883881880913025

`A008574(A354956(n+1))`
-/

namespace A354955.P13248883881880913025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A354956 (n + 1)).toNat

end

end A354955.P13248883881880913025

/-! ## A354955.P4109318600682143958

`A008586(A354956(C(n+1, n)))`
-/

namespace A354955.P4109318600682143958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A354956 (Nat.choose (n + 1) n)).toNat

end

end A354955.P4109318600682143958

/-! ## A354955.P525726160703691774

`A008586(A354956(n+1)+A000007(n+4))`
-/

namespace A354955.P525726160703691774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A354956 (n + 1) + A000007 (n + 4)).toNat

end

end A354955.P525726160703691774

/-! ## A354955.P2971140357261371894

`∩[A319180(n+1), A008586(A354956(n+1))]`
-/

namespace A354955.P2971140357261371894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A354956 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354955.P2971140357261371894

/-!
# A354956: a(n) = A354955(n)/4.

The programs for A354956, there is no canonical definition to state claims against.
-/

/-! ## A354956.P322858265490336713

`A354955(n+1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A354956.P322858265490336713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354955 (n + 1) : ℚ) / 4

end

end A354956.P322858265490336713

/-! ## A354956.P11676119139117163028

`A110962(A354955(n+1))`
-/

namespace A354956.P11676119139117163028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (A354955 (n + 1)).toNat

end

end A354956.P11676119139117163028

/-! ## A354956.P16264011173366545226

`A008621(A354955(n+1)-1)`
-/

namespace A354956.P16264011173366545226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A354955 (n + 1) - 1).toNat

end

end A354956.P16264011173366545226

/-! ## A354956.P1496247983799012434

`A003602(A354955(n+1)-2)`
-/

namespace A354956.P1496247983799012434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A354955 (n + 1) - 2).toNat

end

end A354956.P1496247983799012434

/-! ## A354956.P8807347854927045721

`A002265(A354955(n+1)-1)+1`
-/

namespace A354956.P8807347854927045721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A354955 (n + 1) - 1).toNat + 1

end

end A354956.P8807347854927045721

/-!
# A354958: Coordination sequence for the Manhattan hexagonal lattice with respect to the point (X=0, Y=1).

The programs for A354958, there is no canonical definition to state claims against.
-/

/-! ## A354958.P11994748370682182143

`A294178(2*A296368(2*n)-A298036(2*n)-A294178(n))`
-/

namespace A354958.P11994748370682182143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294178 (2 * A296368 (2 * n) - A298036 (2 * n) - A294178 n).toNat

end

end A354958.P11994748370682182143

/-! ## A354958.P7956617470792909967

`∏{e}[A089693(n+1), A005408(#)]`
-/

namespace A354958.P7956617470792909967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A005408 (Nat.factorization (f1 n).natAbs p)

end

end A354958.P7956617470792909967

/-! ## A354958.P14356884773559844484

`A048691(A089693(n+1))`
-/

namespace A354958.P14356884773559844484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (A089693 (n + 1)).toNat

end

end A354958.P14356884773559844484

/-! ## A354958.P12990647267673244189

`∑{d}[A089693(n+1), A034444(#)]`
-/

namespace A354958.P12990647267673244189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A034444 d

end

end A354958.P12990647267673244189

/-! ## A354958.P10948178137113702776

`A000005(A089693(n+1)²)`
-/

namespace A354958.P10948178137113702776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A089693 (n + 1) ^ 2).toNat

end

end A354958.P10948178137113702776

/-!
# A354959: Tetration bases with a constant convergence speed >= 3.

The programs for A354959, there is no canonical definition to state claims against.
-/

/-! ## A354959.P13909436902059890765

`lt[2, A373387(n)]`
-/

namespace A354959.P13909436902059890765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A354959.P13909436902059890765

/-!
# A354961: Coordination sequence for the Manhattan cubic lattice.

The programs for A354961, there is no canonical definition to state claims against.
-/

/-! ## A354961.P6362525229444376610

`A342191(A054519(n)+A000326(n))`
-/

namespace A354961.P6362525229444376610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342191 (A054519 n + A000326 n).toNat

end

end A354961.P6362525229444376610

/-! ## A354961.P11976400158605047525

`A342191(A337766(n+1)+A070169(n))`
-/

namespace A354961.P11976400158605047525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342191 (A337766 (n + 1) + A070169 n).toNat

end

end A354961.P11976400158605047525

/-!
# A354962: Number of acyclic n-multidigraphs on n labeled vertices.

The programs for A354962, there is no canonical definition to state claims against.
-/

/-! ## A354962.P17853552605055086919

`A339768(∑[4*n])`
-/

namespace A354962.P17853552605055086919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339768 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A354962.P17853552605055086919

/-! ## A354962.P15293697541594529458

`or(1, A339768(A046092(n)))`
-/

namespace A354962.P15293697541594529458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A339768 (A046092 n).toNat)

end

end A354962.P15293697541594529458

/-! ## A354962.P13820177779071117526

`A254609(n)*A339768(A046092(n))`
-/

namespace A354962.P13820177779071117526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254609 n * A339768 (A046092 n).toNat

end

end A354962.P13820177779071117526

/-! ## A354962.P4866115995177425766

`gcd(A000038(n), A339768(A046092(n)))`
-/

namespace A354962.P4866115995177425766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A339768 (A046092 n).toNat)

end

end A354962.P4866115995177425766

/-! ## A354962.P1109212212388000053

`A339768(A046092(n))+A000038(n+1)`
-/

namespace A354962.P1109212212388000053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339768 (A046092 n).toNat + A000038 (n + 1)

end

end A354962.P1109212212388000053

/-!
# A354963: G.f. A(x) satisfies: 2 = Sum_{n=-oo..+oo} x^(2*n) * (A(x) - x^n)^n * (1 - x^n*A(x))^n.

The programs for A354963, there is no canonical definition to state claims against.
-/

/-! ## A354963.P12303039286269645479

`A214263(A057177(n+1))+A149179(n)`
-/

namespace A354963.P12303039286269645479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214263 (A057177 (n + 1)).toNat + A149179 n

end

end A354963.P12303039286269645479

/-! ## A354963.P13461126786526720904

`A240467(A149169(n+1))+A149179(n)`
-/

namespace A354963.P13461126786526720904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240467 (A149169 (n + 1)).toNat + A149179 n

end

end A354963.P13461126786526720904

/-! ## A354963.P12406618965056462208

`A240467(A149218(n+1))+A149179(n)`
-/

namespace A354963.P12406618965056462208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240467 (A149218 (n + 1)).toNat + A149179 n

end

end A354963.P12406618965056462208

/-!
# A354967: Square array A(n, k), n > 0, k >= 0, read by antidiagonals upwards; A(n, k) is the image of n after k iterates of the prime function (A000040).

The programs for A354967, there is no canonical definition to state claims against.
-/

/-! ## A354967.P13110945452735050214

`A000720(A377173(n+1))`
-/

namespace A354967.P13110945452735050214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A377173 (n + 1)).toNat

end

end A354967.P13110945452735050214

/-! ## A354967.P4466060150389959268

`A316524(A377173(n+1)%A171495(n))`
-/

namespace A354967.P4466060150389959268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (Int.tmod (A377173 (n + 1)) (A171495 n)).toNat

end

end A354967.P4466060150389959268

/-! ## A354967.P8874676975434954493

`A316524(A377173(n+1))%A006522(n+4)`
-/

namespace A354967.P8874676975434954493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316524 (A377173 (n + 1)).toNat) (A006522 (n + 4))

end

end A354967.P8874676975434954493

/-! ## A354967.P15661689080947341208

`∑{d}[A377173(n+1), A055396(#)]`
-/

namespace A354967.P15661689080947341208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A055396 d

end

end A354967.P15661689080947341208

/-! ## A354967.P11182533265442957525

`A056239(∑{p}[A377173(n+1), #])`
-/

namespace A354967.P11182533265442957525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A354967.P11182533265442957525

/-!
# A354968: Triangle read by rows: T(n, k) = n*k*(n+k)*(n-k)/6.

The programs for A354968, the canonical program `A354968.P5289782423154033668` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354968 has offset 2).

The definition of A354968 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354968.P5289782423154033668

`A057103(n+2)/24`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A354968

/-- `A057103(n+2)/24` -/
def P5289782423154033668.Spec : Prop :=
  ∀ n, P5289782423154033668.a n = (A354968 (n + 2) : ℚ)

end A354968

/-! ## A354968.P15635258476475939601

`A107984(∑[char[∑[n]]]²-(n+1))`
-/

namespace A354968.P15635258476475939601
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107984 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A354968.P15635258476475939601

namespace A354968

/-- `A107984(∑[char[∑[n]]]²-(n+1))` -/
def P15635258476475939601.Spec : Prop :=
  ∀ n, P15635258476475939601.a n = A354968 (n + 2)

end A354968

/-! ## A354968.P745639763542476386

`A060789(A001283(n+2)*A003991(n+1))`
-/

namespace A354968.P745639763542476386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (A001283 (n + 2) * A003991 (n + 1)).toNat

end

end A354968.P745639763542476386

namespace A354968

/-- `A060789(A001283(n+2)*A003991(n+1))` -/
def P745639763542476386.Spec : Prop :=
  ∀ n, P745639763542476386.a n = A354968 (n + 2)

end A354968

/-! ## A354968.P949112667985986459

`A194698(A057103(n+2))`
-/

namespace A354968.P949112667985986459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (A057103 (n + 2)).toNat

end

end A354968.P949112667985986459

namespace A354968

/-- `A194698(A057103(n+2))` -/
def P949112667985986459.Spec : Prop :=
  ∀ n, P949112667985986459.a n = A354968 (n + 2)

end A354968

/-!
# A354969: For prime partition (k_1, k_2, ..., k_i) of the number x, let the conjugate partition be (m_1, m_2, ... , m_j). If n = k_1 * k_2 * ... * k_i, then a(n) = m1 * m2 * ... * m_j.

The programs for A354969, there is no canonical definition to state claims against.
-/

/-! ## A354969.P13427266750881335637

`A329382(A064988(n+2))`
-/

namespace A354969.P13427266750881335637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329382 (A064988 (n + 2)).toNat

end

end A354969.P13427266750881335637

/-! ## A354969.P11341191779819551426

`A001222(n+2)^p?[A332292(n)]`
-/

namespace A354969.P11341191779819551426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332292 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 2) : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A354969.P11341191779819551426

/-! ## A354969.P6174992217006512640

`A001222((n+2)^A329382(n+2))`
-/

namespace A354969.P6174992217006512640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n + 2 : ℚ) ^ (A329382 (n + 2) : ℤ))).toNat

end

end A354969.P6174992217006512640

/-! ## A354969.P15271190625634365168

`A001222(n+2)^A090822(∑[∑{d}[n+1, #^3]])`
-/

namespace A354969.P15271190625634365168
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d ^ 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 2) : ℚ) ^ (A090822 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A354969.P15271190625634365168

/-! ## A354969.P5370616777250854428

`A001222(n+2)^A020639(A286207(n))`
-/

namespace A354969.P5370616777250854428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 2) : ℚ) ^ (A020639 (A286207 n).toNat : ℤ)

end

end A354969.P5370616777250854428

/-!
# A354971: a(1)=1, a(2)=0; for n > 2, a(n) is the number of times a(n - 1 - a(n-1)) has appeared in the sequence.

The programs for A354971, there is no canonical definition to state claims against.
-/

/-! ## A354971.P2029066795745208223

`A357943(n+1)%A303369(A151800(n))`
-/

namespace A354971.P2029066795745208223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357943 (n + 1)) (A303369 (A151800 n).toNat)

end

end A354971.P2029066795745208223

/-! ## A354971.P7544345309988424494

`A258266(A357943(n+1))%A357950(n+1)`
-/

namespace A354971.P7544345309988424494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258266 (A357943 (n + 1)).toNat) (A357950 (n + 1))

end

end A354971.P7544345309988424494

/-! ## A354971.P11702002812418947908

`A357943(A258266(n+1))%A288247(n+3)`
-/

namespace A354971.P11702002812418947908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357943 (A258266 (n + 1)).toNat) (A288247 (n + 3))

end

end A354971.P11702002812418947908

/-! ## A354971.P1089911925576049591

`A303369(A357943(n+1))%A288247(n+3)`
-/

namespace A354971.P1089911925576049591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303369 (A357943 (n + 1)).toNat) (A288247 (n + 3))

end

end A354971.P1089911925576049591

/-!
# A354973: a(0)=0; for n > 0, a(n) = 2*a(n-1) if n-1 is prime, a(n-1) + 1 otherwise.

The programs for A354973, there is no canonical definition to state claims against.
-/

/-! ## A354973.P11062547291373646397

`eq[A065280(n+1), A173276(n)]`
-/

namespace A354973.P11062547291373646397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173276 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354973.P11062547291373646397

/-! ## A354973.P330830707214423895

`record[A178904(n)-A320659(n+4)]`
-/

namespace A354973.P330830707214423895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178904 n - A320659 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354973.P330830707214423895

/-! ## A354973.P7581772941079448237

`lt[A153733(floor(2*n/5)), A089053(n)]`
-/

namespace A354973.P7581772941079448237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 ⌊2 * ((n : ℚ) / 5)⌋.toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089053 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A354973.P7581772941079448237

/-! ## A354973.P17967437429603378737

`eq[A209862(A350630(n+1)), A350630(n+1)]`
-/

namespace A354973.P17967437429603378737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209862 (A350630 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350630 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354973.P17967437429603378737

/-! ## A354973.P15757273682208722286

`record[A007780(n+1)%ceil(A109128(n)/2)]`
-/

namespace A354973.P15757273682208722286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007780 (n + 1)) ⌈(A109128 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354973.P15757273682208722286

/-!
# A354974: Distance LQnR(n) (A334819) from n.

The programs for A354974, there is no canonical definition to state claims against.
-/

/-! ## A354974.P2987016532047192211

`3-A334819(n+3)+n`
-/

namespace A354974.P2987016532047192211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A334819 (n + 3) + (n : ℤ)

end

end A354974.P2987016532047192211

/-! ## A354974.P5556717766408963430

`A009056(n+1)%A334819(n+3)`
-/

namespace A354974.P5556717766408963430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009056 (n + 1)) (A334819 (n + 3))

end

end A354974.P5556717766408963430

/-! ## A354974.P12245632513216514617

`A171463(n+1)%A334819(n+3)`
-/

namespace A354974.P12245632513216514617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171463 (n + 1)) (A334819 (n + 3))

end

end A354974.P12245632513216514617

/-! ## A354974.P13720603863308255734

`A052938(A005408(n))%A334819(n+3)`
-/

namespace A354974.P13720603863308255734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052938 (A005408 n).toNat) (A334819 (n + 3))

end

end A354974.P13720603863308255734

/-! ## A354974.P9809685819681809850

`A052938(A028310(2*n+1))%A334819(n+3)`
-/

namespace A354974.P9809685819681809850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052938 (A028310 (2 * n + 1)).toNat) (A334819 (n + 3))

end

end A354974.P9809685819681809850

/-! ## A354974.P8617764415917786372

`A193592(A334819(n+3)+A000096(n))`
-/

namespace A354974.P8617764415917786372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (A334819 (n + 3) + A000096 n).toNat

end

end A354974.P8617764415917786372

/-!
# A354977: Triangle read by rows. T(n, k) = Sum_{j=0..n}((-1)^(n-j)*binomial(n, j)*j^(n+k)) / n!.

The programs for A354977, there is no canonical definition to state claims against.
-/

/-! ## A354977.P6869558760032315123

`A106800(A245300(n))`
-/

namespace A354977.P6869558760032315123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106800 (A245300 n).toNat

end

end A354977.P6869558760032315123

/-! ## A354977.P12724650117110173265

`A048993(A245300(n)+A025581(n))`
-/

namespace A354977.P12724650117110173265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A245300 n + A025581 n).toNat

end

end A354977.P12724650117110173265

/-! ## A354977.P14178326585234361763

`A151512(A245300(n)+A025466(n))`
-/

namespace A354977.P14178326585234361763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151512 (A245300 n + A025466 n).toNat

end

end A354977.P14178326585234361763

/-! ## A354977.P8545032790743341361

`A151511(A245300(n)+A025581(n))`
-/

namespace A354977.P8545032790743341361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151511 (A245300 n + A025581 n).toNat

end

end A354977.P8545032790743341361

/-! ## A354977.P2312535900346391947

`A151512(A245300(A130706(n)+n))`
-/

namespace A354977.P2312535900346391947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151512 (A245300 (A130706 n + (n : ℤ)).toNat).toNat

end

end A354977.P2312535900346391947

/-!
# A354978: a(n) = Sum_{k=0..n} Stirling2(k + n, n), row sums of A354977.

The programs for A354978, there is no canonical definition to state claims against.
-/

/-! ## A354978.P17566912417271536532

`A137596(∑[4*n])`
-/

namespace A354978.P17566912417271536532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137596 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A354978.P17566912417271536532

/-! ## A354978.P1127891402530958099

`A137649(A004277(n²))`
-/

namespace A354978.P1127891402530958099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137649 (A004277 (n ^ 2)).toNat

end

end A354978.P1127891402530958099

/-! ## A354978.P9565342657088035906

`A137649(A028310(3*n)+A014107(n))`
-/

namespace A354978.P9565342657088035906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137649 (A028310 (3 * n) + A014107 n).toNat

end

end A354978.P9565342657088035906

/-!
# A354979: Triangle read by rows. T(n, k) = |Stirling1(k + n, n)|.

The programs for A354979, there is no canonical definition to state claims against.
-/

/-! ## A354979.P15674535630617019760

`abs(A054654(A245300(n)))`
-/

namespace A354979.P15674535630617019760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054654 (A245300 n).toNat|

end

end A354979.P15674535630617019760

/-! ## A354979.P14134184352880847409

`A132393(A245300(n)+A025581(n))`
-/

namespace A354979.P14134184352880847409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (A245300 n + A025581 n).toNat

end

end A354979.P14134184352880847409

/-! ## A354979.P4914742173017945246

`gcd(A000038(n), A054654(A245300(n)))`
-/

namespace A354979.P4914742173017945246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A054654 (A245300 n).toNat)

end

end A354979.P4914742173017945246

/-! ## A354979.P11123269721231913077

`lcm(A020985(n), A054654(A245300(n)))`
-/

namespace A354979.P11123269721231913077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A054654 (A245300 n).toNat)

end

end A354979.P11123269721231913077

/-! ## A354979.P14373753260786490214

`A132393(A004736(n+1)+A245300(n)-1)`
-/

namespace A354979.P14373753260786490214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (A004736 (n + 1) + (A245300 n - 1)).toNat

end

end A354979.P14373753260786490214

/-!
# A354980: a(n) = Sum_{k=0..n} |Stirling1(k + n, n)|, row sums of A354979.

The programs for A354980, there is no canonical definition to state claims against.
-/

/-! ## A354980.P17737295857833758986

`abs(A101559(A001105(n)+1))`
-/

namespace A354980.P17737295857833758986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A101559 (A001105 n + 1).toNat|

end

end A354980.P17737295857833758986

/-!
# A354981: a(n) = 1 if n = 2 * p^k, with p an odd prime and k >= 1, otherwise 0.

The programs for A354981, the canonical program `A354981.P5770451458096678403` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354981 has offset 1).

The definition of A354981 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354981.P5440879498892327340

`char[eq[2, A051119(n+1)]]`
-/

namespace A354981.P5440879498892327340
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354981.P5440879498892327340

namespace A354981

/-- `char[eq[2, A051119(n+1)]]` -/
def P5440879498892327340.Spec : Prop :=
  ∀ n, (P5440879498892327340.a n : ℤ) = A354981 (n + 1)

end A354981

/-! ## A354981.P15115745750345646666

`char[eq[2, A330692(n+1)]]`
-/

namespace A354981.P15115745750345646666
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330692 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354981.P15115745750345646666

namespace A354981

/-- `char[eq[2, A330692(n+1)]]` -/
def P15115745750345646666.Spec : Prop :=
  ∀ n, (P15115745750345646666.a n : ℤ) = A354981 (n + 1)

end A354981

/-! ## A354981.P8708008511912644011

`char[eq[2, A345992(n+1)]]`
-/

namespace A354981.P8708008511912644011
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345992 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354981.P8708008511912644011

namespace A354981

/-- `char[eq[2, A345992(n+1)]]` -/
def P8708008511912644011.Spec : Prop :=
  ∀ n, (P8708008511912644011.a n : ℤ) = A354981 (n + 1)

end A354981

/-! ## A354981.P72397801413011389

`char[eq[2, A345994(n+1)]]`
-/

namespace A354981.P72397801413011389
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345994 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354981.P72397801413011389

namespace A354981

/-- `char[eq[2, A345994(n+1)]]` -/
def P72397801413011389.Spec : Prop :=
  ∀ n, (P72397801413011389.a n : ℤ) = A354981 (n + 1)

end A354981

/-! ## A354981.P7348333320339136809

`char[eq[3, A334019(n+1)]]`
-/

namespace A354981.P7348333320339136809
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334019 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354981.P7348333320339136809

namespace A354981

/-- `char[eq[3, A334019(n+1)]]` -/
def P7348333320339136809.Spec : Prop :=
  ∀ n, (P7348333320339136809.a n : ℤ) = A354981 (n + 1)

end A354981

/-! ## A354981.P15857274206575866789

`char[eq[6, A304182(n+1)]]`
-/

namespace A354981.P15857274206575866789
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304182 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354981.P15857274206575866789

namespace A354981

/-- `char[eq[6, A304182(n+1)]]` -/
def P15857274206575866789.Spec : Prop :=
  ∀ n, (P15857274206575866789.a n : ℤ) = A354981 (n + 1)

end A354981

/-! ## A354981.P5770451458096678403

`and(n, 1-A354108(n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A354981

/-- `and(n, 1-A354108(n+1))` -/
def P5770451458096678403.Spec : Prop :=
  ∀ n, P5770451458096678403.a n = A354981 (n + 1)

theorem P5770451458096678403.correct : P5770451458096678403.Spec := by
  intro n
  simp only [A354981, Nat.add_sub_cancel]

end A354981

/-! ## A354981.P803739491151959593

`and(1, n*A122411(n+1))`
-/

namespace A354981.P803739491151959593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n : ℤ) * A122411 (n + 1))

end

end A354981.P803739491151959593

namespace A354981

/-- `and(1, n*A122411(n+1))` -/
def P803739491151959593.Spec : Prop :=
  ∀ n, P803739491151959593.a n = A354981 (n + 1)

end A354981

/-! ## A354981.P10631725856275348164

`and(1, n*A131233(n+1))`
-/

namespace A354981.P10631725856275348164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n : ℤ) * A131233 (n + 1))

end

end A354981.P10631725856275348164

namespace A354981

/-- `and(1, n*A131233(n+1))` -/
def P10631725856275348164.Spec : Prop :=
  ∀ n, P10631725856275348164.a n = A354981 (n + 1)

end A354981

/-! ## A354981.P17915189150317917983

`and(∑[∑[n]], A215480(n+1))`
-/

namespace A354981.P17915189150317917983
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A215480 (n + 1))

end

end A354981.P17915189150317917983

namespace A354981

/-- `and(∑[∑[n]], A215480(n+1))` -/
def P17915189150317917983.Spec : Prop :=
  ∀ n, P17915189150317917983.a n = A354981 (n + 1)

end A354981

/-! ## A354981.P10877251214305598471

`A174275(A152271(n))`
-/

namespace A354981.P10877251214305598471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174275 (A152271 n).toNat

end

end A354981.P10877251214305598471

namespace A354981

/-- `A174275(A152271(n))` -/
def P10877251214305598471.Spec : Prop :=
  ∀ n, P10877251214305598471.a n = A354981 (n + 1)

end A354981

/-! ## A354981.P13364452169988483284

`A025441(A304182(n+1)-1)`
-/

namespace A354981.P13364452169988483284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 (A304182 (n + 1) - 1).toNat

end

end A354981.P13364452169988483284

namespace A354981

/-- `A025441(A304182(n+1)-1)` -/
def P13364452169988483284.Spec : Prop :=
  ∀ n, P13364452169988483284.a n = A354981 (n + 1)

end A354981

/-! ## A354981.P7871382052964955760

`A157228(A304182(n+1)+19)`
-/

namespace A354981.P7871382052964955760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157228 (A304182 (n + 1) + 19).toNat

end

end A354981.P7871382052964955760

namespace A354981

/-- `A157228(A304182(n+1)+19)` -/
def P7871382052964955760.Spec : Prop :=
  ∀ n, P7871382052964955760.a n = A354981 (n + 1)

end A354981

/-! ## A354981.P8920670513095092485

`A000007(xor(2, A345992(n+1)))`
-/

namespace A354981.P8920670513095092485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor 2 (A345992 (n + 1))).toNat

end

end A354981.P8920670513095092485

namespace A354981

/-- `A000007(xor(2, A345992(n+1)))` -/
def P8920670513095092485.Spec : Prop :=
  ∀ n, P8920670513095092485.a n = A354981 (n + 1)

end A354981

/-! ## A354981.P6441766164657996730

`A003815(n)*A383277(n+1)`
-/

namespace A354981.P6441766164657996730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 n * A383277 (n + 1)

end

end A354981.P6441766164657996730

namespace A354981

/-- `A003815(n)*A383277(n+1)` -/
def P6441766164657996730.Spec : Prop :=
  ∀ n, P6441766164657996730.a n = A354981 (n + 1)

end A354981

/-! ## A354981.P2378649851753940472

`A211487(n+1)*A231600(n)`
-/

namespace A354981.P2378649851753940472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211487 (n + 1) * A231600 n

end

end A354981.P2378649851753940472

namespace A354981

/-- `A211487(n+1)*A231600(n)` -/
def P2378649851753940472.Spec : Prop :=
  ∀ n, P2378649851753940472.a n = A354981 (n + 1)

end A354981

/-! ## A354981.P9469460292301326839

`A138376(n)*A383277(n+1)`
-/

namespace A354981.P9469460292301326839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138376 n * A383277 (n + 1)

end

end A354981.P9469460292301326839

namespace A354981

/-- `A138376(n)*A383277(n+1)` -/
def P9469460292301326839.Spec : Prop :=
  ∀ n, P9469460292301326839.a n = A354981 (n + 1)

end A354981

/-! ## A354981.P6468373157986913825

`A166514(n)*A383277(n+1)`
-/

namespace A354981.P6468373157986913825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166514 n * A383277 (n + 1)

end

end A354981.P6468373157986913825

namespace A354981

/-- `A166514(n)*A383277(n+1)` -/
def P6468373157986913825.Spec : Prop :=
  ∀ n, P6468373157986913825.a n = A354981 (n + 1)

end A354981

/-! ## A354981.P11115552960960726768

`A231600(n*A354924(n+1))`
-/

namespace A354981.P11115552960960726768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231600 ((n : ℤ) * A354924 (n + 1)).toNat

end

end A354981.P11115552960960726768

namespace A354981

/-- `A231600(n*A354924(n+1))` -/
def P11115552960960726768.Spec : Prop :=
  ∀ n, P11115552960960726768.a n = A354981 (n + 1)

end A354981

/-! ## A354981.P2254159782355344401

`A000217(n)%A076820(n+1)`
-/

namespace A354981.P2254159782355344401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 n) (A076820 (n + 1))

end

end A354981.P2254159782355344401

namespace A354981

/-- `A000217(n)%A076820(n+1)` -/
def P2254159782355344401.Spec : Prop :=
  ∀ n, P2254159782355344401.a n = A354981 (n + 1)

end A354981

/-!
# A354982: a(n) = 1 if n is a prime power congruent to 1 (mod 3), otherwise 0.

The programs for A354982, the canonical program `A354982.P1033425350819671687` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354982 has offset 1).

The definition of A354982 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069513, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A354982.P1033425350819671687

`A069513(n+1)*A079978(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A354982

/-- `A069513(n+1)*A079978(n)` -/
def P1033425350819671687.Spec : Prop :=
  ∀ n, P1033425350819671687.a n = A354982 (n + 1)

theorem P1033425350819671687.correct : P1033425350819671687.Spec := by
  intro n
  simp only [A354982, Nat.add_sub_cancel]

end A354982

/-! ## A354982.P1368815731125617669

`A354983(3*(n+1))`
-/

namespace A354982.P1368815731125617669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354983 (3 * (n + 1))

end

end A354982.P1368815731125617669

namespace A354982

/-- `A354983(3*(n+1))` -/
def P1368815731125617669.Spec : Prop :=
  ∀ n, P1368815731125617669.a n = A354982 (n + 1)

end A354982

/-! ## A354982.P6443978609729827506

`char[A137827(n+1)-1]`
-/

namespace A354982.P6443978609729827506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A354982.P6443978609729827506

namespace A354982

/-- `char[A137827(n+1)-1]` -/
def P6443978609729827506.Spec : Prop :=
  ∀ n, (P6443978609729827506.a n : ℤ) = A354982 (n + 1)

end A354982

/-! ## A354982.P224132088082081428

`char[record[A047994(3*n+4)]]`
-/

namespace A354982.P224132088082081428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (3 * n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A354982.P224132088082081428

namespace A354982

/-- `char[record[A047994(3*n+4)]]` -/
def P224132088082081428.Spec : Prop :=
  ∀ n, (P224132088082081428.a n : ℤ) = A354982 (n + 1)

end A354982

/-! ## A354982.P9574083128063543849

`char[eq[1-n%3, A001221(n+1)]]`
-/

namespace A354982.P9574083128063543849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n % 3 : ℕ) : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354982.P9574083128063543849

namespace A354982

/-- `char[eq[1-n%3, A001221(n+1)]]` -/
def P9574083128063543849.Spec : Prop :=
  ∀ n, (P9574083128063543849.a n : ℤ) = A354982 (n + 1)

end A354982

/-! ## A354982.P13725826880049152036

`A174282(A092200(n))`
-/

namespace A354982.P13725826880049152036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174282 (A092200 n).toNat

end

end A354982.P13725826880049152036

namespace A354982

/-- `A174282(A092200(n))` -/
def P13725826880049152036.Spec : Prop :=
  ∀ n, P13725826880049152036.a n = A354982 (n + 1)

end A354982

/-! ## A354982.P4795320794626651371

`A057078(n)*A174282(n+1)`
-/

namespace A354982.P4795320794626651371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 n * A174282 (n + 1)

end

end A354982.P4795320794626651371

namespace A354982

/-- `A057078(n)*A174282(n+1)` -/
def P4795320794626651371.Spec : Prop :=
  ∀ n, P4795320794626651371.a n = A354982 (n + 1)

end A354982

/-! ## A354982.P4458585863732587690

`A060398(n)*A174282(n+1)`
-/

namespace A354982.P4458585863732587690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060398 n * A174282 (n + 1)

end

end A354982.P4458585863732587690

namespace A354982

/-- `A060398(n)*A174282(n+1)` -/
def P4458585863732587690.Spec : Prop :=
  ∀ n, P4458585863732587690.a n = A354982 (n + 1)

end A354982

/-! ## A354982.P11791680607528127615

`A174282(n*A079978(n)+1)`
-/

namespace A354982.P11791680607528127615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174282 ((n : ℤ) * A079978 n + 1).toNat

end

end A354982.P11791680607528127615

namespace A354982

/-- `A174282(n*A079978(n)+1)` -/
def P11791680607528127615.Spec : Prop :=
  ∀ n, P11791680607528127615.a n = A354982 (n + 1)

end A354982

/-! ## A354982.P13299526454676983775

`A174282(2-A204418(n)+n)`
-/

namespace A354982.P13299526454676983775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174282 (2 - A204418 n + (n : ℤ)).toNat

end

end A354982.P13299526454676983775

namespace A354982

/-- `A174282(2-A204418(n)+n)` -/
def P13299526454676983775.Spec : Prop :=
  ∀ n, P13299526454676983775.a n = A354982 (n + 1)

end A354982

/-! ## A354982.P16340415633534907145

`A174282(n+1)*A204418(n)`
-/

namespace A354982.P16340415633534907145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174282 (n + 1) * A204418 n

end

end A354982.P16340415633534907145

namespace A354982

/-- `A174282(n+1)*A204418(n)` -/
def P16340415633534907145.Spec : Prop :=
  ∀ n, P16340415633534907145.a n = A354982 (n + 1)

end A354982

/-! ## A354982.P8068732722553735777

`A174282(2-(A204418(n)-n))`
-/

namespace A354982.P8068732722553735777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174282 (2 - (A204418 n - (n : ℤ))).toNat

end

end A354982.P8068732722553735777

namespace A354982

/-- `A174282(2-(A204418(n)-n))` -/
def P8068732722553735777.Spec : Prop :=
  ∀ n, P8068732722553735777.a n = A354982 (n + 1)

end A354982

/-! ## A354982.P161626842968967332

`A007875(n+1)%A099837(n)`
-/

namespace A354982.P161626842968967332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007875 (n + 1)) (A099837 n)

end

end A354982.P161626842968967332

namespace A354982

/-- `A007875(n+1)%A099837(n)` -/
def P161626842968967332.Spec : Prop :=
  ∀ n, P161626842968967332.a n = A354982 (n + 1)

end A354982

/-! ## A354982.P5143300794276572935

`and(A007729(n), A069513(n+1))`
-/

namespace A354982.P5143300794276572935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007729 n) (A069513 (n + 1))

end

end A354982.P5143300794276572935

namespace A354982

/-- `and(A007729(n), A069513(n+1))` -/
def P5143300794276572935.Spec : Prop :=
  ∀ n, P5143300794276572935.a n = A354982 (n + 1)

end A354982

/-! ## A354982.P9532486931422588648

`A137893(n+1)*A174282(n+1)`
-/

namespace A354982.P9532486931422588648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137893 (n + 1) * A174282 (n + 1)

end

end A354982.P9532486931422588648

namespace A354982

/-- `A137893(n+1)*A174282(n+1)` -/
def P9532486931422588648.Spec : Prop :=
  ∀ n, P9532486931422588648.a n = A354982 (n + 1)

end A354982

/-! ## A354982.P9214281255249211029

`A141212(n+1)*A174282(n+1)`
-/

namespace A354982.P9214281255249211029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141212 (n + 1) * A174282 (n + 1)

end

end A354982.P9214281255249211029

namespace A354982

/-- `A141212(n+1)*A174282(n+1)` -/
def P9214281255249211029.Spec : Prop :=
  ∀ n, P9214281255249211029.a n = A354982 (n + 1)

end A354982

/-! ## A354982.P5633513150828399138

`A001222(A014963(n+1))*char[3*n]`
-/

namespace A354982.P5633513150828399138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A014963 (n + 1)).toNat * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A354982.P5633513150828399138

namespace A354982

/-- `A001222(A014963(n+1))*char[3*n]` -/
def P5633513150828399138.Spec : Prop :=
  ∀ n, P5633513150828399138.a n = A354982 (n + 1)

end A354982

/-! ## A354982.P888651967143849003

`A001221(A014963(∏{p}[(n+1)*char[3*n], #]))`
-/

namespace A354982.P888651967143849003
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A014963 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A354982.P888651967143849003

namespace A354982

/-- `A001221(A014963(∏{p}[(n+1)*char[3*n], #]))` -/
def P888651967143849003.Spec : Prop :=
  ∀ n, P888651967143849003.a n = A354982 (n + 1)

end A354982

/-! ## A354982.P17067622472331659893

`A174282(A130481(n+1))`
-/

namespace A354982.P17067622472331659893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174282 (A130481 (n + 1)).toNat

end

end A354982.P17067622472331659893

namespace A354982

/-- `A174282(A130481(n+1))` -/
def P17067622472331659893.Spec : Prop :=
  ∀ n, P17067622472331659893.a n = A354982 (n + 1)

end A354982

/-! ## A354982.P36537983083780874

`A174282((n+1)*A010875(2*n+1))`
-/

namespace A354982.P36537983083780874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174282 ((n + 1 : ℤ) * A010875 (2 * n + 1)).toNat

end

end A354982.P36537983083780874

namespace A354982

/-- `A174282((n+1)*A010875(2*n+1))` -/
def P36537983083780874.Spec : Prop :=
  ∀ n, P36537983083780874.a n = A354982 (n + 1)

end A354982

/-!
# A354983: a(n) = 1 if n is thrice a prime power congruent to 1 (mod 3), otherwise 0.

The programs for A354983, there is no canonical definition to state claims against.
-/

/-! ## A354983.P1061362589428926449

`char[eq[floor(n/3), A344005(n+1)]]`
-/

namespace A354983.P1061362589428926449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344005 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354983.P1061362589428926449

/-! ## A354983.P2932056357561790462

`val(A062584(A345992(n+1)), 3)`
-/

namespace A354983.P2932056357561790462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A062584 (A345992 (n + 1)).toNat).toNat 3

end

end A354983.P2932056357561790462

/-! ## A354983.P4661781479697701489

`A330725(C(3, A345992(n+1)))`
-/

namespace A354983.P4661781479697701489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 (Nat.choose 3 (A345992 (n + 1)).toNat)

end

end A354983.P4661781479697701489

/-! ## A354983.P18409161851924398359

`A000007(xor(3, A345992(n+1)))`
-/

namespace A354983.P18409161851924398359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor 3 (A345992 (n + 1))).toNat

end

end A354983.P18409161851924398359

/-! ## A354983.P7728185190050512051

`char[eq[A034699(n+1), A286577(n)]]`
-/

namespace A354983.P7728185190050512051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286577 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354983.P7728185190050512051

/-! ## A354983.P2568668247250024612

`char[eq[A002264(n), A354985(n+1)]]`
-/

namespace A354983.P2568668247250024612
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354985 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354983.P2568668247250024612

/-! ## A354983.P2917491656235572828

`A000007(xor(floor(n/3), A344005(n+1)))`
-/

namespace A354983.P2917491656235572828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor ⌊(n : ℚ) / 3⌋ (A344005 (n + 1))).toNat

end

end A354983.P2917491656235572828

/-! ## A354983.P2880316342500248741

`val(A347175(n+1), A274615(A326691(n+1)))`
-/

namespace A354983.P2880316342500248741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A347175 (n + 1)).toNat (A274615 (A326691 (n + 1)).toNat).toNat

end

end A354983.P2880316342500248741

/-! ## A354983.P5023946947796006720

`val(A115302(A004151(n+1)), 9)`
-/

namespace A354983.P5023946947796006720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A115302 (A004151 (n + 1)).toNat).toNat 9

end

end A354983.P5023946947796006720

/-! ## A354983.P2078267380010489863

`and(char[A017185(n)], A324687(n))`
-/

namespace A354983.P2078267380010489863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A324687 n)

end

end A354983.P2078267380010489863

/-!
# A354984: Numbers that are 3 * prime powers congruent to 1 (mod 3).

The programs for A354984, there is no canonical definition to state claims against.
-/

/-! ## A354984.P13673653657283223273

`3*A137827(n+1)`
-/

namespace A354984.P13673653657283223273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A137827 (n + 1)

end

end A354984.P13673653657283223273

/-! ## A354984.P15161675576121594361

`lcm(A137827(n+1), A174971(n))`
-/

namespace A354984.P15161675576121594361
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A137827 (n + 1)) (A174971 n)

end

end A354984.P15161675576121594361

/-! ## A354984.P413834572549318427

`record[3*A008475(3*n+4)]`
-/

namespace A354984.P413834572549318427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A008475 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354984.P413834572549318427

/-! ## A354984.P14529239900021184744

`record[3*A034699(3*n+4)]`
-/

namespace A354984.P14529239900021184744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A034699 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354984.P14529239900021184744

/-! ## A354984.P6707946062012482337

`filter[A270672(n+2), A354983(#)]`
-/

namespace A354984.P6707946062012482337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270672 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354983 (f1 j).toNat = 1) n)

end

end A354984.P6707946062012482337

/-! ## A354984.P637826067229592901

`filter[A017197(n), A354983(#)]`
-/

namespace A354984.P637826067229592901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354983 (f1 j).toNat = 1) n)

end

end A354984.P637826067229592901

/-! ## A354984.P5304134334400534940

`filter[A055041(n+1), A354983(#)]`
-/

namespace A354984.P5304134334400534940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354983 (f1 j).toNat = 1) n)

end

end A354984.P5304134334400534940

/-! ## A354984.P13468641582800868270

`filter[A026229(n+1), A354983(#)]`
-/

namespace A354984.P13468641582800868270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354983 (f1 j).toNat = 1) n)

end

end A354984.P13468641582800868270

/-! ## A354984.P1258914177826354767

`filter[A155504(n+1), A354983(#)]`
-/

namespace A354984.P1258914177826354767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354983 (f1 j).toNat = 1) n)

end

end A354984.P1258914177826354767

/-! ## A354984.P14495567172595328817

`filter[A234904(n+1), A354983(#)]`
-/

namespace A354984.P14495567172595328817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354983 (f1 j).toNat = 1) n)

end

end A354984.P14495567172595328817

/-! ## A354984.P5841414177828160429

`filter[A329575(n+1), A354983(#)]`
-/

namespace A354984.P5841414177828160429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354983 (f1 j).toNat = 1) n)

end

end A354984.P5841414177828160429

/-! ## A354984.P10831240215430769008

`eq[1, A354983(n+1)]+1`
-/

namespace A354984.P10831240215430769008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354983 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354984.P10831240215430769008

/-! ## A354984.P11841508499423613240

`filter[A024614(n+1), A354983(#)]`
-/

namespace A354984.P11841508499423613240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354983 (f1 j).toNat = 1) n)

end

end A354984.P11841508499423613240

/-! ## A354984.P17469110122151467571

`filter[A300332(n+1), A354983(#)]`
-/

namespace A354984.P17469110122151467571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354983 (f1 j).toNat = 1) n)

end

end A354984.P17469110122151467571

/-! ## A354984.P9194778057906299388

`filter[A003136(n+2), A354983(#)]`
-/

namespace A354984.P9194778057906299388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354983 (f1 j).toNat = 1) n)

end

end A354984.P9194778057906299388

/-! ## A354984.P13902941516331514332

`filter[A261953(n), A354983(#)]`
-/

namespace A354984.P13902941516331514332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354983 (f1 j).toNat = 1) n)

end

end A354984.P13902941516331514332

/-! ## A354984.P7835238701376267612

`filter[A016051(n+1), A354983(#)]`
-/

namespace A354984.P7835238701376267612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354983 (f1 j).toNat = 1) n)

end

end A354984.P7835238701376267612

/-! ## A354984.P15036766301864524036

`filter[A203016(n+1), A354983(#)]`
-/

namespace A354984.P15036766301864524036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354983 (f1 j).toNat = 1) n)

end

end A354984.P15036766301864524036

/-! ## A354984.P6267929572562401765

`filter[A085060(2*n), A354983(#)]`
-/

namespace A354984.P6267929572562401765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085060 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354983 (f1 j).toNat = 1) n)

end

end A354984.P6267929572562401765

/-! ## A354984.P77363929255491588

`filter[A261954(2*n), A354983(#)]`
-/

namespace A354984.P77363929255491588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261954 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354983 (f1 j).toNat = 1) n)

end

end A354984.P77363929255491588

/-!
# A354985: a(n) = gcd(A047994(n), A344005(n)).

The programs for A354985, there is no canonical definition to state claims against.
-/

/-! ## A354985.P6914076511972912708

`A344969(A026741(n+1))`
-/

namespace A354985.P6914076511972912708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344969 (A026741 (n + 1)).toNat

end

end A354985.P6914076511972912708

/-! ## A354985.P17090748888532015503

`A344969((n+1)/A000034(n))`
-/

namespace A354985.P17090748888532015503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344969 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000034 n : ℚ))).toNat

end

end A354985.P17090748888532015503

/-! ## A354985.P11326221886152982193

`A047994(n+1)/A354986(n+1)`
-/

namespace A354985.P11326221886152982193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047994 (n + 1) : ℚ) / (A354986 (n + 1) : ℚ)

end

end A354985.P11326221886152982193

/-! ## A354985.P5129244726096583949

`A344005(n+1)/A354987(n+1)`
-/

namespace A354985.P5129244726096583949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344005 (n + 1) : ℚ) / (A354987 (n + 1) : ℚ)

end

end A354985.P5129244726096583949

/-! ## A354985.P3322144516050786509

`gcd(A047994(n+1), A344005(n+1))`
-/

namespace A354985.P3322144516050786509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A047994 (n + 1)) (A344005 (n + 1))

end

end A354985.P3322144516050786509

/-! ## A354985.P8231143965782623107

`(A346607(n+1)+A344005(n+1))/A354986(n+1)`
-/

namespace A354985.P8231143965782623107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346607 (n + 1) + A344005 (n + 1) : ℚ) / (A354986 (n + 1) : ℚ)

end

end A354985.P8231143965782623107

/-! ## A354985.P17759703917198347966

`(A047994(n+1)-A346607(n+1))/A354987(n+1)`
-/

namespace A354985.P17759703917198347966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047994 (n + 1) - A346607 (n + 1) : ℚ) / (A354987 (n + 1) : ℚ)

end

end A354985.P17759703917198347966

/-! ## A354985.P14059248294859017483

`A345992(n+1)*A345998(n+1)/A354987(n+1)`
-/

namespace A354985.P14059248294859017483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345992 (n + 1) * A345998 (n + 1) : ℚ) / (A354987 (n + 1) : ℚ)

end

end A354985.P14059248294859017483

/-!
# A354986: a(n) = A047994(n) / gcd(A047994(n), A344005(n)).

The programs for A354986, there is no canonical definition to state claims against.
-/

/-! ## A354986.P7592775420341351473

`A047994(n+1)/A354985(n+1)`
-/

namespace A354986.P7592775420341351473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047994 (n + 1) : ℚ) / (A354985 (n + 1) : ℚ)

end

end A354986.P7592775420341351473

/-! ## A354986.P9339941564189094782

`A344971(A026741(n+1))`
-/

namespace A354986.P9339941564189094782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344971 (A026741 (n + 1)).toNat

end

end A354986.P9339941564189094782

/-! ## A354986.P13992465753867784790

`A344875(A026741(n+1))/A354985(n+1)`
-/

namespace A354986.P13992465753867784790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344875 (A026741 (n + 1)).toNat : ℚ) / (A354985 (n + 1) : ℚ)

end

end A354986.P13992465753867784790

/-! ## A354986.P15700749950057368082

`(A346607(n+1)+A344005(n+1))/A354985(n+1)`
-/

namespace A354986.P15700749950057368082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346607 (n + 1) + A344005 (n + 1) : ℚ) / (A354985 (n + 1) : ℚ)

end

end A354986.P15700749950057368082

/-! ## A354986.P2664928566229026526

`A354987(n+1)+A346607(n+1)/A354985(n+1)`
-/

namespace A354986.P2664928566229026526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354987 (n + 1) : ℚ) + (A346607 (n + 1) : ℚ) / (A354985 (n + 1) : ℚ)

end

end A354986.P2664928566229026526

/-! ## A354986.P12058160972628193034

`A047994(n+1)/A344005(n+1)*A354987(n+1)`
-/

namespace A354986.P12058160972628193034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047994 (n + 1) : ℚ) / (A344005 (n + 1) : ℚ) * (A354987 (n + 1) : ℚ)

end

end A354986.P12058160972628193034

/-!
# A354987: a(n) = A344005(n) / gcd(A047994(n), A344005(n)).

The programs for A354987, there is no canonical definition to state claims against.
-/

/-! ## A354987.P1738325241173331273

`A344005(n+1)/A354985(n+1)`
-/

namespace A354987.P1738325241173331273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344005 (n + 1) : ℚ) / (A354985 (n + 1) : ℚ)

end

end A354987.P1738325241173331273

/-! ## A354987.P13310753065096415000

`A344970(floor(n/(n%2+1))+1)`
-/

namespace A354987.P13310753065096415000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344970 (⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋ + 1).toNat

end

end A354987.P13310753065096415000

/-! ## A354987.P3869854349823855535

`A344970(A026741(n+1))`
-/

namespace A354987.P3869854349823855535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344970 (A026741 (n + 1)).toNat

end

end A354987.P3869854349823855535

/-! ## A354987.P559780725946797701

`A344970((n+1)/A000034(n))`
-/

namespace A354987.P559780725946797701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344970 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000034 n : ℚ))).toNat

end

end A354987.P559780725946797701

/-! ## A354987.P3134999030071475058

`A344970(gcd(A000217(n), (n+1)²))`
-/

namespace A354987.P3134999030071475058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344970 (Int.gcd (A000217 n) ((n + 1) ^ 2 : ℤ))

end

end A354987.P3134999030071475058

/-! ## A354987.P14517930157093428489

`(A047994(n+1)-A346607(n+1))/A354985(n+1)`
-/

namespace A354987.P14517930157093428489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047994 (n + 1) - A346607 (n + 1) : ℚ) / (A354985 (n + 1) : ℚ)

end

end A354987.P14517930157093428489

/-! ## A354987.P16016895645548730884

`A354986(n+1)-A346607(n+1)/A354985(n+1)`
-/

namespace A354987.P16016895645548730884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354986 (n + 1) : ℚ) - (A346607 (n + 1) : ℚ) / (A354985 (n + 1) : ℚ)

end

end A354987.P16016895645548730884

/-! ## A354987.P52045837488555566

`A344005(n+1)/A047994(n+1)*A354986(n+1)`
-/

namespace A354987.P52045837488555566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344005 (n + 1) : ℚ) / (A047994 (n + 1) : ℚ) * (A354986 (n + 1) : ℚ)

end

end A354987.P52045837488555566

/-! ## A354987.P1766435416388049628

`A345992(A345988(n+1))/A354985(n+1)`
-/

namespace A354987.P1766435416388049628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345992 (A345988 (n + 1)).toNat : ℚ) / (A354985 (n + 1) : ℚ)

end

end A354987.P1766435416388049628

/-!
# A354988: a(n) = A345993(n) - A345992(n).

The programs for A354988, there is no canonical definition to state claims against.
-/

/-! ## A354988.P11660149742954203507

`A345993(n+1)-A345992(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A354988.P11660149742954203507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345993 (n + 1) - A345992 (n + 1)

end

end A354988.P11660149742954203507

/-! ## A354988.P8564617900208706495

`A345993(n+1)-gcd(n+1, A182665(n+1))`
-/

namespace A354988.P8564617900208706495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345993 (n + 1) - (Int.gcd (n + 1 : ℤ) (A182665 (n + 1)) : ℤ)

end

end A354988.P8564617900208706495

/-! ## A354988.P14765076589247394004

`A345993(n+1)-gcd(A131738(n), A344005(n+1))`
-/

namespace A354988.P14765076589247394004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345993 (n + 1) - (Int.gcd (A131738 n) (A344005 (n + 1)) : ℤ)

end

end A354988.P14765076589247394004

/-! ## A354988.P10369266603381052943

`A345993(n+1)-gcd(A344005(n+1)², A153152(n))`
-/

namespace A354988.P10369266603381052943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345993 (n + 1) - (Int.gcd (A344005 (n + 1) ^ 2) (A153152 n) : ℤ)

end

end A354988.P10369266603381052943

/-! ## A354988.P18378747714732826195

`A345993(n+1)-A344005(n+1)/A345998(n+1)`
-/

namespace A354988.P18378747714732826195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345993 (n + 1) : ℚ) - (A344005 (n + 1) : ℚ) / (A345998 (n + 1) : ℚ)

end

end A354988.P18378747714732826195

/-! ## A354988.P14859996927865364459

`A345993(n+1)-(A345994(n+1)+A346596(n+1)-A345993(n+1))`
-/

namespace A354988.P14859996927865364459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345993 (n + 1) - (A345994 (n + 1) + (A346596 (n + 1) - A345993 (n + 1)))

end

end A354988.P14859996927865364459

/-! ## A354988.P10585731579707535625

`A345993(n+1)-A344005(n+1)/A344006(n+1)*A345999(n+1)`
-/

namespace A354988.P10585731579707535625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345993 (n + 1) : ℚ) - (A344005 (n + 1) : ℚ) / (A344006 (n + 1) : ℚ) * (A345999 (n + 1) : ℚ)

end

end A354988.P10585731579707535625

/-! ## A354988.P13420599456619416287

`A345993(n+1)-A356166(A191002(n+1))/A345993(n+1)`
-/

namespace A354988.P13420599456619416287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345993 (n + 1) : ℚ) - (A356166 (A191002 (n + 1)).toNat : ℚ) / (A345993 (n + 1) : ℚ)

end

end A354988.P13420599456619416287

/-! ## A354988.P17098085818865159323

`A345993(n+1)-A242415(A242415(n+1))/A345993(n+1)`
-/

namespace A354988.P17098085818865159323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345993 (n + 1) : ℚ) - (A242415 (A242415 (n + 1)).toNat : ℚ) / (A345993 (n + 1) : ℚ)

end

end A354988.P17098085818865159323

/-!
# A354989: a(n) = 1 if A345993(n) < A345992(n), otherwise 0.

The programs for A354989, there is no canonical definition to state claims against.
-/

/-! ## A354989.P5155961009712014438

`char[lt[A354988(n+1), 0]]`
-/

namespace A354989.P5155961009712014438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354988 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354989.P5155961009712014438

/-! ## A354989.P7731130586764476785

`char[lt[A345993(n+1)², n]]`
-/

namespace A354989.P7731130586764476785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345993 (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354989.P7731130586764476785

/-! ## A354989.P10162362643337747537

`floor(A354988(n+1)/A007777(n))²`
-/

namespace A354989.P10162362643337747537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A354988 (n + 1) : ℚ) / (A007777 n : ℚ)⌋ ^ 2

end

end A354989.P10162362643337747537

/-! ## A354989.P16552163129135230676

`floor(A354988(n+1)/A250120(n))²`
-/

namespace A354989.P16552163129135230676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A354988 (n + 1) : ℚ) / (A250120 n : ℚ)⌋ ^ 2

end

end A354989.P16552163129135230676

/-! ## A354989.P7001660149091488244

`floor(A354988(n+1)/A299269(n))²`
-/

namespace A354989.P7001660149091488244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A354988 (n + 1) : ℚ) / (A299269 n : ℚ)⌋ ^ 2

end

end A354989.P7001660149091488244

/-! ## A354989.P13374881634382501621

`floor(A354988(n+1)/A301293(n))²`
-/

namespace A354989.P13374881634382501621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A354988 (n + 1) : ℚ) / (A301293 n : ℚ)⌋ ^ 2

end

end A354989.P13374881634382501621

/-! ## A354989.P14248498759829203814

`char[lt[A345993(n+1), A354933(n+1)]]`
-/

namespace A354989.P14248498759829203814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345993 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354933 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354989.P14248498759829203814

/-! ## A354989.P10036336816459296006

`(A344005(n+1)+1)%A346596(n+1)`
-/

namespace A354989.P10036336816459296006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344005 (n + 1) + 1) (A346596 (n + 1))

end

end A354989.P10036336816459296006

/-! ## A354989.P2792074173587104261

`1-C(A345994(n+1), A345992(n+1))`
-/

namespace A354989.P2792074173587104261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose (A345994 (n + 1)).toNat (A345992 (n + 1)).toNat : ℤ)

end

end A354989.P2792074173587104261

/-! ## A354989.P15500701966938122764

`C(n, C(A345993(n+1), A345992(n+1))²)`
-/

namespace A354989.P15500701966938122764
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.choose (A345993 (n + 1)).toNat (A345992 (n + 1)).toNat ^ 2)

end

end A354989.P15500701966938122764

/-! ## A354989.P9577383956394857911

`(1-A182665(n+1)+n)²%A345994(n+1)`
-/

namespace A354989.P9577383956394857911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((1 - A182665 (n + 1) + (n : ℤ)) ^ 2) (A345994 (n + 1))

end

end A354989.P9577383956394857911

/-! ## A354989.P3361634204267938393

`A011772((n+1)/gcd(2, n+1))²%A345994(n+1)`
-/

namespace A354989.P3361634204267938393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011772 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.gcd 2 (n + 1) : ℚ))).toNat ^ 2) (A345994 (n + 1))

end

end A354989.P3361634204267938393

/-! ## A354989.P6710269608773782761

`A345969(C(A345994(n+1), A345992(n+1)))`
-/

namespace A354989.P6710269608773782761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345969 (Nat.choose (A345994 (n + 1)).toNat (A345992 (n + 1)).toNat)

end

end A354989.P6710269608773782761

/-! ## A354989.P1773128762094356513

`(floor(A345994(n+1)/(A345993(n+1)-A354988(n+1)))+1)%2`
-/

namespace A354989.P1773128762094356513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊(A345994 (n + 1) : ℚ) / (A345993 (n + 1) - A354988 (n + 1) : ℚ)⌋ + 1) 2

end

end A354989.P1773128762094356513

/-!
# A354990: Ordinal transform of A344005, where A344005(n) is the smallest positive integer m such that n divides m*(m+1).

The programs for A354990, there is no canonical definition to state claims against.
-/

/-! ## A354990.P16228255024752740615

`A354991(n+1)+A332671(A052147(n+1))`
-/

namespace A354990.P16228255024752740615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354991 (n + 1) + A332671 (A052147 (n + 1)).toNat

end

end A354990.P16228255024752740615

/-! ## A354990.P7117167677726517118

`A119479(A119479(n+1))*A331177(n+1)`
-/

namespace A354990.P7117167677726517118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119479 (A119479 (n + 1)).toNat * A331177 (n + 1)

end

end A354990.P7117167677726517118

/-! ## A354990.P3567059139135880076

`A171905(A171888(n+1))*A331177(n+1)`
-/

namespace A354990.P3567059139135880076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171905 (A171888 (n + 1)).toNat * A331177 (n + 1)

end

end A354990.P3567059139135880076

/-! ## A354990.P12557677101281709020

`A331177(n+1)*A331182(A077724(n+2))`
-/

namespace A354990.P12557677101281709020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331177 (n + 1) * A331182 (A077724 (n + 2)).toNat

end

end A354990.P12557677101281709020

/-! ## A354990.P4713101396230745768

`A354991(n+1)+A000035(A185077(2*(n+2)))`
-/

namespace A354990.P4713101396230745768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354991 (n + 1) + A000035 (A185077 (2 * (n + 2))).toNat

end

end A354990.P4713101396230745768

/-!
# A354991: Number of divisors d of n for which A344005(d) = A344005(n), where A344005(n) is the smallest positive integer m such that n divides m*(m+1).

The programs for A354991, there is no canonical definition to state claims against.
-/

/-! ## A354991.P3376681840145167991

`A000005(n+1)-A354992(n+1)`
-/

namespace A354991.P3376681840145167991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A354992 (n + 1)

end

end A354991.P3376681840145167991

/-! ## A354991.P11869571052875529935

`∏{e}[n+1, #+1]-A354992(round(sqrt(n²+1))+1)`
-/

namespace A354991.P11869571052875529935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A354992 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat

end

end A354991.P11869571052875529935

/-! ## A354991.P16220342758385022043

`Δ[A006218(n)]-A354992(n+1)`
-/

namespace A354991.P16220342758385022043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A354992 (n + 1)

end

end A354991.P16220342758385022043

/-! ## A354991.P10547628630572421369

`A344589(n+1)+A344590(n+1)-A354992(n+1)`
-/

namespace A354991.P10547628630572421369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344589 (n + 1) + (A344590 (n + 1) - A354992 (n + 1))

end

end A354991.P10547628630572421369

/-! ## A354991.P2806478799554232345

`A345935(n+1)+A345936(n+1)-A354992(n+1)`
-/

namespace A354991.P2806478799554232345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345935 (n + 1) + (A345936 (n + 1) - A354992 (n + 1))

end

end A354991.P2806478799554232345

/-! ## A354991.P9488446791270939423

`A000005(gcd(A309836(n+1), A354999(n+1)))`
-/

namespace A354991.P9488446791270939423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A309836 (n + 1)) (A354999 (n + 1)))

end

end A354991.P9488446791270939423

/-!
# A354992: Number of divisors d of n for which A344005(d) < A344005(n), where A344005(n) is the smallest positive integer m such that n divides m*(m+1).

The programs for A354992, there is no canonical definition to state claims against.
-/

/-! ## A354992.P16235036659494917174

`A000005(n+1)-A354991(n+1)`
-/

namespace A354992.P16235036659494917174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A354991 (n + 1)

end

end A354992.P16235036659494917174

/-! ## A354992.P10718632170963775191

`Δ[A006218(n)]-A354991(n+1)`
-/

namespace A354992.P10718632170963775191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A354991 (n + 1)

end

end A354992.P10718632170963775191

/-! ## A354992.P2139412074532747429

`Δ[A054519(n)]-A354991(n+1)`
-/

namespace A354992.P2139412074532747429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A354991 (n + 1)

end

end A354992.P2139412074532747429

/-! ## A354992.P4374902077839091007

`abs(Δ[A139432(n)])-A354991(n+1)`
-/

namespace A354992.P4374902077839091007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139432 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - A354991 (n + 1)

end

end A354992.P4374902077839091007

/-! ## A354992.P7751742191514617352

`∑{d}[n+1, A020639(2*#)]/2-A354991(n+1)`
-/

namespace A354992.P7751742191514617352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A020639 (2 * d) : ℤ) : ℚ) / 2 - (A354991 (n + 1) : ℚ)

end

end A354992.P7751742191514617352

/-! ## A354992.P7993268982815727189

`∑{d}[n+1, 1-A000010(#)]+n+1-A354991(n+1)`
-/

namespace A354992.P7993268982815727189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - A000010 d) + (n + 1 : ℤ) - A354991 (n + 1)

end

end A354992.P7993268982815727189

/-! ## A354992.P4269002135129199376

`∑{d}[n+1, 1-#]+A000203(n+1)-A354991(n+1)`
-/

namespace A354992.P4269002135129199376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - (d : ℤ)) + A000203 (n + 1) - A354991 (n + 1)

end

end A354992.P4269002135129199376

/-! ## A354992.P10387962114298533143

`A344589(n+1)+A344590(n+1)-A354991(n+1)`
-/

namespace A354992.P10387962114298533143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344589 (n + 1) + (A344590 (n + 1) - A354991 (n + 1))

end

end A354992.P10387962114298533143

/-!
# A354993: a(n) = 1 if A344005(d) < A344005(n) for all the proper divisors d of n, otherwise 0. Here A344005(n) is the smallest positive integer m such that n divides m*(m+1).

The programs for A354993, there is no canonical definition to state claims against.
-/

/-! ## A354993.P13341205328639013660

`round(acot(A354991(n+1)))`
-/

namespace A354993.P13341205328639013660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A354991 (n + 1) : ℝ))

end

end A354993.P13341205328639013660

/-! ## A354993.P17992323465679037372

`round(acot(A354999(n+1)))`
-/

namespace A354993.P17992323465679037372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A354999 (n + 1) : ℝ))

end

end A354993.P17992323465679037372

/-! ## A354993.P14786957703474574467

`char[A354998(n+1)-1]`
-/

namespace A354993.P14786957703474574467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354998 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A354993.P14786957703474574467

/-! ## A354993.P8368551614411194624

`A292547(A354991(n+1))`
-/

namespace A354993.P8368551614411194624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292547 (A354991 (n + 1)).toNat

end

end A354993.P8368551614411194624

/-! ## A354993.P4774260405333912109

`A008683(A354991(n+1)²)`
-/

namespace A354993.P4774260405333912109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A354991 (n + 1) ^ 2).toNat

end

end A354993.P4774260405333912109

/-! ## A354993.P17370604759960231710

`A036987(A354999(n+1)²)`
-/

namespace A354993.P17370604759960231710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A354999 (n + 1) ^ 2).toNat

end

end A354993.P17370604759960231710

/-! ## A354993.P14039729253736728804

`A000007(A354999(n+1)-1)`
-/

namespace A354993.P14039729253736728804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A354999 (n + 1) - 1).toNat

end

end A354993.P14039729253736728804

/-! ## A354993.P7818200278445935863

`A048298(or(1, A354999(n+1)))`
-/

namespace A354993.P7818200278445935863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (Int.lor 1 (A354999 (n + 1))).toNat

end

end A354993.P7818200278445935863

/-! ## A354993.P4780469996891197086

`A169585(xor(1, A354999(n+1)))`
-/

namespace A354993.P4780469996891197086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 (Int.xor 1 (A354999 (n + 1))).toNat

end

end A354993.P4780469996891197086

/-! ## A354993.P11057555238501616844

`∑{d}[A354991(n+1), A008683(#)]`
-/

namespace A354993.P11057555238501616844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d

end

end A354993.P11057555238501616844

/-! ## A354993.P14069425386507094909

`∏{p}[A354991(n+1), A354989(#)]`
-/

namespace A354993.P14069425386507094909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A354989 p

end

end A354993.P14069425386507094909

/-! ## A354993.P11383855558498996592

`∏{p}[A354991(n+1), A354995(#)]`
-/

namespace A354993.P11383855558498996592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A354995 p

end

end A354993.P11383855558498996592

/-! ## A354993.P11688886432153547694

`∏{p}[A354999(n+1), A354981(#)]`
-/

namespace A354993.P11688886432153547694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A354981 p

end

end A354993.P11688886432153547694

/-! ## A354993.P16184630577807319007

`∏{p}[A354991(n+1), A354996(#)]`
-/

namespace A354993.P16184630577807319007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A354996 p

end

end A354993.P16184630577807319007

/-! ## A354993.P15872494421670758707

`∏{p}[A354999(n+1), A354989(#)]`
-/

namespace A354993.P15872494421670758707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A354989 p

end

end A354993.P15872494421670758707

/-! ## A354993.P4228348015660734232

`∏{p}[A354999(n+1), A354995(#)]`
-/

namespace A354993.P4228348015660734232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A354995 p

end

end A354993.P4228348015660734232

/-! ## A354993.P18388104461912866007

`∏{p}[A354999(n+1), A354996(#)]`
-/

namespace A354993.P18388104461912866007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A354996 p

end

end A354993.P18388104461912866007

/-! ## A354993.P15157584693030763317

`A169585(A354999(n+1)²-1)`
-/

namespace A354993.P15157584693030763317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 (A354999 (n + 1) ^ 2 - 1).toNat

end

end A354993.P15157584693030763317

/-! ## A354993.P3931360321769787454

`C(A354997(A354997(2*n+3)), A354999(n+1))`
-/

namespace A354993.P3931360321769787454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A354997 (A354997 (2 * n + 3)).toNat).toNat (A354999 (n + 1)).toNat

end

end A354993.P3931360321769787454

/-! ## A354993.P1926335577388219291

`C(A001222(n+1), A001222(n+1)*A354999(n+1))`
-/

namespace A354993.P1926335577388219291
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (n + 1)).toNat (A001222 (n + 1) * A354999 (n + 1)).toNat

end

end A354993.P1926335577388219291

/-!
# A354994: Numbers k such that A344005(d) < A344005(k) for all proper divisors d of k.

The programs for A354994, there is no canonical definition to state claims against.
-/

/-! ## A354994.P10472445651983939795

`record[A354998(n+1)]`
-/

namespace A354994.P10472445651983939795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354994.P10472445651983939795

/-! ## A354994.P5190803523638116530

`filter[n+1, A354993(#)]`
-/

namespace A354994.P5190803523638116530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354993 (f1 j) = 1) n)

end

end A354994.P5190803523638116530

/-! ## A354994.P12974172398074895076

`lt[0, A354993(n+1)]+1`
-/

namespace A354994.P12974172398074895076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354993 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A354994.P12974172398074895076

/-! ## A354994.P7295197547899201113

`eq[1, A354991(n+1)]+1`
-/

namespace A354994.P7295197547899201113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354991 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354994.P7295197547899201113

/-! ## A354994.P4884356281879789758

`eq[1, A354999(n+1)]+1`
-/

namespace A354994.P4884356281879789758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354999 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354994.P4884356281879789758

/-! ## A354994.P12010072083691586429

`record[(n+1)*A354993(n+2)+1]`
-/

namespace A354994.P12010072083691586429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A354993 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354994.P12010072083691586429

/-! ## A354994.P17891002989196071415

`eq[n, A354998(A028310(n))]`
-/

namespace A354994.P17891002989196071415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354998 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354994.P17891002989196071415

/-! ## A354994.P4953448667159993463

`eq[n, A354998(A233583(n+1))]`
-/

namespace A354994.P4953448667159993463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354998 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354994.P4953448667159993463

/-! ## A354994.P14612465510977994456

`eq[n, A354998(A007318(∑[n]+1))]`
-/

namespace A354994.P14612465510977994456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354998 (A007318 (∑ j ∈ Finset.range (n + 1), f3 j + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354994.P14612465510977994456

/-! ## A354994.P17140902135113441418

`lt[A000040(A354991(n+1)+1)+n, n+4]+1`
-/

namespace A354994.P17140902135113441418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A354991 (n + 1) + 1).toNat + (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A354994.P17140902135113441418

/-!
# A354995: a(n) = A354933(n) - A034699(n).

The programs for A354995, there is no canonical definition to state claims against.
-/

/-! ## A354995.P10045913981435008723

`A354933(n+1)-A034699(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A354995.P10045913981435008723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354933 (n + 1) - A034699 (n + 1)

end

end A354995.P10045913981435008723

/-! ## A354995.P1819840874346099582

`A354933(n+1)-(1-A081805(n+1)+n)`
-/

namespace A354995.P1819840874346099582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354933 (n + 1) - (1 - A081805 (n + 1) + (n : ℤ))

end

end A354995.P1819840874346099582

/-! ## A354995.P2941339048202150337

`A354933(n+1)-(n+1)/A284600(n+1)`
-/

namespace A354995.P2941339048202150337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354933 (n + 1) : ℚ) - (n + 1 : ℚ) / (A284600 (n + 1) : ℚ)

end

end A354995.P2941339048202150337

/-! ## A354995.P14625244864891447001

`A354933(n+1)-gcd(n+1, A139082(n+1))`
-/

namespace A354995.P14625244864891447001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354933 (n + 1) - (Int.gcd (n + 1 : ℤ) (A139082 (n + 1)) : ℤ)

end

end A354995.P14625244864891447001

/-! ## A354995.P4282686834422423250

`A354933(n+1)-(A057110(n+1)+A002034(n+1))`
-/

namespace A354995.P4282686834422423250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354933 (n + 1) - (A057110 (n + 1) + A002034 (n + 1))

end

end A354995.P4282686834422423250

/-! ## A354995.P18211845680359171693

`A354933(n+1)-A304233(n+1)/A034684(n+1)`
-/

namespace A354995.P18211845680359171693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354933 (n + 1) : ℚ) - (A304233 (n + 1) : ℚ) / (A034684 (n + 1) : ℚ)

end

end A354995.P18211845680359171693

/-! ## A354995.P11198419537714453939

`A354933(n+1)-A210208(∑[A073093(n+1)])`
-/

namespace A354995.P11198419537714453939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354933 (n + 1) - A210208 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A354995.P11198419537714453939

/-! ## A354995.P5667383687654045752

`A354933(n+1)-(A081472(n+1)-(n+1))`
-/

namespace A354995.P5667383687654045752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354933 (n + 1) - (A081472 (n + 1) - (n + 1 : ℤ))

end

end A354995.P5667383687654045752

/-! ## A354995.P12146918622132639583

`(n+1)/sqrt(A274006((n+1)²))-A052128(n+1)`
-/

namespace A354995.P12146918622132639583
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / Real.sqrt (A274006 ((n + 1) ^ 2) : ℝ) - (A052128 (n + 1) : ℝ)

end

end A354995.P12146918622132639583

/-! ## A354995.P5697651156870847616

`A345994((n+1)*A034699(n+1))-A052128(n+1)`
-/

namespace A354995.P5697651156870847616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345994 ((n + 1 : ℤ) * A034699 (n + 1)).toNat - A052128 (n + 1)

end

end A354995.P5697651156870847616

/-!
# A354996: a(n) = 1 if n > A034699(n)^2, otherwise 0, where A034699(n) is the largest prime power factor of n.

The programs for A354996, the canonical program `A354996.P15206134778227489401` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354996 has offset 1).

The definition of A354996 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354996.P1696706545082935041

`floor(A346418(n+1)/2)`
-/

namespace A354996.P1696706545082935041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A346418 (n + 1) : ℚ) / 2⌋

end

end A354996.P1696706545082935041

namespace A354996

/-- `floor(A346418(n+1)/2)` -/
def P1696706545082935041.Spec : Prop :=
  ∀ n, P1696706545082935041.a n = A354996 (n + 1)

end A354996

/-! ## A354996.P16054937926687780705

`char[A051283(n+1)-1]`
-/

namespace A354996.P16054937926687780705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051283 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A354996.P16054937926687780705

namespace A354996

/-- `char[A051283(n+1)-1]` -/
def P16054937926687780705.Spec : Prop :=
  ∀ n, (P16054937926687780705.a n : ℤ) = A354996 (n + 1)

end A354996

/-! ## A354996.P16013276072986242393

`1-A010055(A354933(n+1))`
-/

namespace A354996.P16013276072986242393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010055 (A354933 (n + 1)).toNat

end

end A354996.P16013276072986242393

namespace A354996

/-- `1-A010055(A354933(n+1))` -/
def P16013276072986242393.Spec : Prop :=
  ∀ n, P16013276072986242393.a n = A354996 (n + 1)

end A354996

/-! ## A354996.P11286560507010275522

`A329684(n)%A346418(n+1)`
-/

namespace A354996.P11286560507010275522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329684 n) (A346418 (n + 1))

end

end A354996.P11286560507010275522

namespace A354996

/-- `A329684(n)%A346418(n+1)` -/
def P11286560507010275522.Spec : Prop :=
  ∀ n, P11286560507010275522.a n = A354996 (n + 1)

end A354996

/-! ## A354996.P852234153345845635

`floor(A072504(n+1)/A072509(n))`
-/

namespace A354996.P852234153345845635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A072504 (n + 1) : ℚ) / (A072509 n : ℚ)⌋

end

end A354996.P852234153345845635

namespace A354996

/-- `floor(A072504(n+1)/A072509(n))` -/
def P852234153345845635.Spec : Prop :=
  ∀ n, P852234153345845635.a n = A354996 (n + 1)

end A354996

/-! ## A354996.P15206134778227489401

`round(A072504(n+1)/A020723(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A354996

/-- `round(A072504(n+1)/A020723(n))` -/
def P15206134778227489401.Spec : Prop :=
  ∀ n, P15206134778227489401.a n = A354996 (n + 1)

theorem P15206134778227489401.correct : P15206134778227489401.Spec := by
  intro n
  simp only [A354996, Nat.add_sub_cancel]

end A354996

/-! ## A354996.P16382973973102077539

`A000038(n)!%A346418(n+1)`
-/

namespace A354996.P16382973973102077539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (A000038 n).toNat : ℤ) (A346418 (n + 1))

end

end A354996.P16382973973102077539

namespace A354996

/-- `A000038(n)!%A346418(n+1)` -/
def P16382973973102077539.Spec : Prop :=
  ∀ n, P16382973973102077539.a n = A354996 (n + 1)

end A354996

/-! ## A354996.P8034679145673878972

`char[lt[A028310(n), A072504(n+1)]]`
-/

namespace A354996.P8034679145673878972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072504 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354996.P8034679145673878972

namespace A354996

/-- `char[lt[A028310(n), A072504(n+1)]]` -/
def P8034679145673878972.Spec : Prop :=
  ∀ n, (P8034679145673878972.a n : ℤ) = A354996 (n + 1)

end A354996

/-! ## A354996.P17384273982043992559

`A001248(n+1)%A346418(n+1)`
-/

namespace A354996.P17384273982043992559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001248 (n + 1)) (A346418 (n + 1))

end

end A354996.P17384273982043992559

namespace A354996

/-- `A001248(n+1)%A346418(n+1)` -/
def P17384273982043992559.Spec : Prop :=
  ∀ n, P17384273982043992559.a n = A354996 (n + 1)

end A354996

/-! ## A354996.P1824989423663770499

`A014963(n+1)%A346418(n+1)`
-/

namespace A354996.P1824989423663770499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014963 (n + 1)) (A346418 (n + 1))

end

end A354996.P1824989423663770499

namespace A354996

/-- `A014963(n+1)%A346418(n+1)` -/
def P1824989423663770499.Spec : Prop :=
  ∀ n, P1824989423663770499.a n = A354996 (n + 1)

end A354996

/-! ## A354996.P5544232261526434276

`char[lt[A034699(n+1), A284600(n+1)]]`
-/

namespace A354996.P5544232261526434276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284600 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354996.P5544232261526434276

namespace A354996

/-- `char[lt[A034699(n+1), A284600(n+1)]]` -/
def P5544232261526434276.Spec : Prop :=
  ∀ n, (P5544232261526434276.a n : ℤ) = A354996 (n + 1)

end A354996

/-! ## A354996.P2995219751537912171

`A000010(ceil((n+1)/∏{p}[n+1, (n+1)/#]))%A346418(n+1)`
-/

namespace A354996.P2995219751537912171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉.toNat) (A346418 (n + 1))

end

end A354996.P2995219751537912171

namespace A354996

/-- `A000010(ceil((n+1)/∏{p}[n+1, (n+1)/#]))%A346418(n+1)` -/
def P2995219751537912171.Spec : Prop :=
  ∀ n, P2995219751537912171.a n = A354996 (n + 1)

end A354996

/-! ## A354996.P10699960897810802592

`A007318(ceil((n+1)/∏{p}[n+1, (n+1)/#]))%A346418(n+1)`
-/

namespace A354996.P10699960897810802592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉.toNat) (A346418 (n + 1))

end

end A354996.P10699960897810802592

namespace A354996

/-- `A007318(ceil((n+1)/∏{p}[n+1, (n+1)/#]))%A346418(n+1)` -/
def P10699960897810802592.Spec : Prop :=
  ∀ n, P10699960897810802592.a n = A354996 (n + 1)

end A354996

/-! ## A354996.P15290547813925451667

`A057555(2*round(A072504(n+1)/A072509(n))+1)-1`
-/

namespace A354996.P15290547813925451667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (2 * SequenceMachineLib.roundAway ((A072504 (n + 1) : ℚ) / (A072509 n : ℚ)) + 1).toNat - 1

end

end A354996.P15290547813925451667

namespace A354996

/-- `A057555(2*round(A072504(n+1)/A072509(n))+1)-1` -/
def P15290547813925451667.Spec : Prop :=
  ∀ n, P15290547813925451667.a n = A354996 (n + 1)

end A354996

/-! ## A354996.P11507299171430528074

`val(A072504(n+1), A052938(A004277(n)))`
-/

namespace A354996.P11507299171430528074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A072504 (n + 1)).toNat (A052938 (A004277 n).toNat).toNat

end

end A354996.P11507299171430528074

namespace A354996

/-- `val(A072504(n+1), A052938(A004277(n)))` -/
def P11507299171430528074.Spec : Prop :=
  ∀ n, (P11507299171430528074.a n : ℤ) = A354996 (n + 1)

end A354996

/-! ## A354996.P15716969590733863582

`round(A072504(n+1)/A072509(2*(n+1)))`
-/

namespace A354996.P15716969590733863582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A072504 (n + 1) : ℚ) / (A072509 (2 * (n + 1)) : ℚ))

end

end A354996.P15716969590733863582

namespace A354996

/-- `round(A072504(n+1)/A072509(2*(n+1)))` -/
def P15716969590733863582.Spec : Prop :=
  ∀ n, P15716969590733863582.a n = A354996 (n + 1)

end A354996

/-! ## A354996.P11137593555060801378

`floor(A072504(n+1)/A233583(n+1))`
-/

namespace A354996.P11137593555060801378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A072504 (n + 1) : ℚ) / (A233583 (n + 1) : ℚ)⌋

end

end A354996.P11137593555060801378

namespace A354996

/-- `floor(A072504(n+1)/A233583(n+1))` -/
def P11137593555060801378.Spec : Prop :=
  ∀ n, P11137593555060801378.a n = A354996 (n + 1)

end A354996

/-! ## A354996.P16373887083794164644

`val(A003418(n), A254667(n+1)²)`
-/

namespace A354996.P16373887083794164644
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003418 n).toNat (A254667 (n + 1) ^ 2).toNat

end

end A354996.P16373887083794164644

namespace A354996

/-- `val(A003418(n), A254667(n+1)²)` -/
def P16373887083794164644.Spec : Prop :=
  ∀ n, (P16373887083794164644.a n : ℤ) = A354996 (n + 1)

end A354996

/-! ## A354996.P11583685175255350353

`val(A003418(n+1), A233583(n+2)²)`
-/

namespace A354996.P11583685175255350353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003418 (n + 1)).toNat (A233583 (n + 2) ^ 2).toNat

end

end A354996.P11583685175255350353

namespace A354996

/-- `val(A003418(n+1), A233583(n+2)²)` -/
def P11583685175255350353.Spec : Prop :=
  ∀ n, (P11583685175255350353.a n : ℤ) = A354996 (n + 1)

end A354996

/-!
# A354997: a(n) = A351547(n) / A351546(n).

The programs for A354997, there is no canonical definition to state claims against.
-/

/-! ## A354997.P10287254985774083712

`A351547(n+1)/A351546(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A354997.P10287254985774083712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351547 (n + 1) : ℚ) / (A351546 (n + 1) : ℚ)

end

end A354997.P10287254985774083712

/-! ## A354997.P10128037095931222536

`A351544(n+1)/A351545(n+1)`
-/

namespace A354997.P10128037095931222536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351544 (n + 1) : ℚ) / (A351545 (n + 1) : ℚ)

end

end A354997.P10128037095931222536

/-! ## A354997.P6876902463943957762

`gcd(A003961(n+1), A351547(n+1))`
-/

namespace A354997.P6876902463943957762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003961 (n + 1)) (A351547 (n + 1))

end

end A354997.P6876902463943957762

/-! ## A354997.P15343232823171918898

`gcd(A351547(n+1)², A351544(n+1))`
-/

namespace A354997.P15343232823171918898
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A351547 (n + 1) ^ 2) (A351544 (n + 1))

end

end A354997.P15343232823171918898

/-! ## A354997.P11774524289229998465

`A000203(n+1)/(A351545(n+1)*A351546(n+1))`
-/

namespace A354997.P11774524289229998465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A351545 (n + 1) * A351546 (n + 1) : ℚ)

end

end A354997.P11774524289229998465

/-! ## A354997.P8244415193034829278

`A351544(n+1)/A000203(n+1)*A351547(n+1)`
-/

namespace A354997.P8244415193034829278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351544 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) * (A351547 (n + 1) : ℚ)

end

end A354997.P8244415193034829278

/-! ## A354997.P9891742806203444995

`lcm(A342671(n+1), A351545(n+1))/A351545(n+1)`
-/

namespace A354997.P9891742806203444995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A342671 (n + 1)) (A351545 (n + 1)) : ℚ) / (A351545 (n + 1) : ℚ)

end

end A354997.P9891742806203444995

/-!
# A354998: Smallest divisor d of n for which A344005(d) = A344005(n), where A344005(n) is the smallest positive integer m such that n divides m*(m+1).

The programs for A354998, there is no canonical definition to state claims against.
-/

/-! ## A354998.P17295553587929105850

`(n+1)/A354999(n+1)`
-/

namespace A354998.P17295553587929105850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A354999 (n + 1) : ℚ)

end

end A354998.P17295553587929105850

/-! ## A354998.P3558251792482492125

`A327393(n+1)-A073424(n*n²)`
-/

namespace A354998.P3558251792482492125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327393 (n + 1) - A073424 (n * n ^ 2)

end

end A354998.P3558251792482492125

/-! ## A354998.P2103310720007123674

`(n+1)/gcd(n+1, A010553(A271006(n)))`
-/

namespace A354998.P2103310720007123674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A010553 (A271006 n).toNat) : ℚ)

end

end A354998.P2103310720007123674

/-! ## A354998.P15689277130762378539

`A327393(n+1)-A000035(A085146(n+1))`
-/

namespace A354998.P15689277130762378539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327393 (n + 1) - A000035 (A085146 (n + 1)).toNat

end

end A354998.P15689277130762378539

/-! ## A354998.P18005558075913835393

`A327393(n+1)-A049084(A127105(n+1))`
-/

namespace A354998.P18005558075913835393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327393 (n + 1) - A049084 (A127105 (n + 1)).toNat

end

end A354998.P18005558075913835393

/-!
# A354999: a(n) = n divided by the smallest divisor d of n for which A344005(d) = A344005(n), where A344005(n) is the smallest positive integer m such that n divides m*(m+1).

The programs for A354999, there is no canonical definition to state claims against.
-/

/-! ## A354999.P132106785665272497

`(n+1)/A354998(n+1)`
-/

namespace A354999.P132106785665272497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A354998 (n + 1) : ℚ)

end

end A354999.P132106785665272497

/-! ## A354999.P15632892925619803160

`A010766(A354998(n+1)+A000217(n))`
-/

namespace A354999.P15632892925619803160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A354998 (n + 1) + A000217 n).toNat

end

end A354999.P15632892925619803160

/-! ## A354999.P585714394035558958

`A344006(A344006(n+1)*A354998(n+1))`
-/

namespace A354999.P585714394035558958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344006 (A344006 (n + 1) * A354998 (n + 1)).toNat

end

end A354999.P585714394035558958

/-! ## A354999.P5078153967577710654

`gcd(n+1, A010553(A271006(n)))`
-/

namespace A354999.P5078153967577710654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A010553 (A271006 n).toNat)

end

end A354999.P5078153967577710654

/-! ## A354999.P1727187248671139755

`A327402(n+1)+A016389(A122134(n))`
-/

namespace A354999.P1727187248671139755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327402 (n + 1) + A016389 (A122134 n).toNat

end

end A354999.P1727187248671139755

