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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C032
import Seq.B000.C037
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C044
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
import Seq.B001.C013
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
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A332800: Number of permutations sigma of [n] such that (sigma(k) mod sigma(k+1)) <= (sigma(k+1) mod sigma(k+2)) for 1 <= k <= n - 2.

The programs for A332800, there is no canonical definition to state claims against.
-/

/-! ## A332800.P731177576779908558

`A371256(A148452(n+1))`
-/

namespace A332800.P731177576779908558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371256 (A148452 (n + 1)).toNat

end

end A332800.P731177576779908558

/-! ## A332800.P15363021435660487044

`A055086(∑{d}[A004527(n), #])`
-/

namespace A332800.P15363021435660487044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A332800.P15363021435660487044

/-! ## A332800.P1912969239663718233

`A116939(floor(sqrt(A109231(n+1)^n)))`
-/

namespace A332800.P1912969239663718233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 (Int.sqrt (A109231 (n + 1) ^ n)).toNat

end

end A332800.P1912969239663718233

/-! ## A332800.P15475573072055110561

`A353391(A011897(n))+A008466(n)`
-/

namespace A332800.P15475573072055110561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353391 (A011897 n).toNat + A008466 n

end

end A332800.P15475573072055110561

/-!
# A332801: a(n) is the number of even results of n mod k, for 1 < k < n.

The programs for A332801, the canonical program `A332801.P14319272458868434347` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332801 has offset 1).

The definition of A332801 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332801.P14319272458868434347

`A111775(n+1)+n-2-a(n-1)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A332801

/-- `A111775(n+1)+n-2-a(n-1)` -/
def P14319272458868434347.Spec : Prop :=
  ∀ n, P14319272458868434347.a n = A332801 (n + 1)

theorem P14319272458868434347.correct : P14319272458868434347.Spec := by
  intro n
  simp only [A332801, Nat.add_sub_cancel]

end A332801

/-! ## A332801.P12446432493288885751

`A140106(A072614(n+1)+n)`
-/

namespace A332801.P12446432493288885751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A072614 (n + 1) + (n : ℤ)).toNat

end

end A332801.P12446432493288885751

namespace A332801

/-- `A140106(A072614(n+1)+n)` -/
def P12446432493288885751.Spec : Prop :=
  ∀ n, P12446432493288885751.a n = A332801 (n + 1)

end A332801

/-! ## A332801.P2374616749861631643

`floor((A072614(A028310(n)+1)+n)/2)-1`
-/

namespace A332801.P2374616749861631643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A072614 (A028310 n + 1).toNat + (n : ℤ) : ℚ) / 2⌋ - 1

end

end A332801.P2374616749861631643

namespace A332801

/-- `floor((A072614(A028310(n)+1)+n)/2)-1` -/
def P2374616749861631643.Spec : Prop :=
  ∀ n, P2374616749861631643.a n = A332801 (n + 1)

end A332801

/-! ## A332801.P11589968450360725312

`floor((A072614(A000007(n)+1+n)+n)/2)-1`
-/

namespace A332801.P11589968450360725312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A072614 (A000007 n + 1 + (n : ℤ)).toNat + (n : ℤ) : ℚ) / 2⌋ - 1

end

end A332801.P11589968450360725312

namespace A332801

/-- `floor((A072614(A000007(n)+1+n)+n)/2)-1` -/
def P11589968450360725312.Spec : Prop :=
  ∀ n, P11589968450360725312.a n = A332801 (n + 1)

end A332801

/-! ## A332801.P8952054370065138758

`floor((A072614(A003056(∑[n]+1)+1)+n)/2)-1`
-/

namespace A332801.P8952054370065138758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A072614 (A003056 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1).toNat + (n : ℤ) : ℚ) / 2⌋ - 1

end

end A332801.P8952054370065138758

namespace A332801

/-- `floor((A072614(A003056(∑[n]+1)+1)+n)/2)-1` -/
def P8952054370065138758.Spec : Prop :=
  ∀ n, P8952054370065138758.a n = A332801 (n + 1)

end A332801

/-!
# A332802: a(n) is the smallest q such that the number of nonnegative k <= q, possessing the property that k + k*q - q is a square, is equal to 2^n.

The programs for A332802, there is no canonical definition to state claims against.
-/

/-! ## A332802.P15668144822884819246

`A102476(n)-1`
-/

namespace A332802.P15668144822884819246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102476 n - 1

end

end A332802.P15668144822884819246

/-! ## A332802.P5831203564402764502

`A144432(A070939(n))+A102476(n)`
-/

namespace A332802.P5831203564402764502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144432 (A070939 n).toNat + A102476 n

end

end A332802.P5831203564402764502

/-! ## A332802.P4840147293682256457

`A133314(A050320(n+1))+A102476(n)`
-/

namespace A332802.P4840147293682256457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133314 (A050320 (n + 1)).toNat + A102476 n

end

end A332802.P4840147293682256457

/-! ## A332802.P9199199069952617263

`A341028(A316782(n+1))+A102476(n)`
-/

namespace A332802.P9199199069952617263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341028 (A316782 (n + 1)).toNat + A102476 n

end

end A332802.P9199199069952617263

/-! ## A332802.P12000077079955237717

`A223486(A006504(n+1))+A102476(n)`
-/

namespace A332802.P12000077079955237717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223486 (A006504 (n + 1)).toNat + A102476 n

end

end A332802.P12000077079955237717

/-!
# A332804: Lexicographically earliest sequence such that the terms' cumulative sum and the sequence itself have the same digit succession (duplicated terms and zeros allowed).

The programs for A332804, there is no canonical definition to state claims against.
-/

/-! ## A332804.P15403849864160622977

`runs[A005878(runs[A153066(n+4)])]`
-/

namespace A332804.P15403849864160622977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153066 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005878 (SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A332804.P15403849864160622977

/-! ## A332804.P8405677945311530050

`runs[A049820(runs[A153066(n+4)])]`
-/

namespace A332804.P8405677945311530050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153066 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A332804.P8405677945311530050

/-! ## A332804.P7547576313042154120

`runs[A129134(runs[A153066(n+4)])]`
-/

namespace A332804.P7547576313042154120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153066 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129134 (SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A332804.P7547576313042154120

/-! ## A332804.P4442454662084466351

`runs[A346509(runs[A153066(n+4)])]`
-/

namespace A332804.P4442454662084466351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153066 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346509 (SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A332804.P4442454662084466351

/-! ## A332804.P1836791381951340493

`runs[A365312(runs[A153066(n+4)])]`
-/

namespace A332804.P1836791381951340493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153066 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365312 (SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A332804.P1836791381951340493

/-!
# A332805: a(n) = A000720(A332806(n)).

The programs for A332805, there is no canonical definition to state claims against.
-/

/-! ## A332805.P12099073979234799100

`A000720(A332806(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332805.P12099073979234799100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A332806 (n + 1)).toNat

end

end A332805.P12099073979234799100

/-! ## A332805.P7879856456650363190

`A332894(A000040(n+1))`
-/

namespace A332805.P7879856456650363190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332894 (A000040 (n + 1)).toNat

end

end A332805.P7879856456650363190

/-! ## A332805.P10672863963286988801

`A332894(A008578(n+2))`
-/

namespace A332805.P10672863963286988801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332894 (A008578 (n + 2)).toNat

end

end A332805.P10672863963286988801

/-! ## A332805.P7274664245337474990

`A332894(record[A006530(n+2)])`
-/

namespace A332805.P7274664245337474990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332894 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A332805.P7274664245337474990

/-! ## A332805.P11647266639676729891

`A332894(record[A020639(n+2)])`
-/

namespace A332805.P11647266639676729891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332894 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A332805.P11647266639676729891

/-! ## A332805.P11891256878518163696

`A332894(A100484(n+1)/2)`
-/

namespace A332805.P11891256878518163696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332894 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A332805.P11891256878518163696

/-! ## A332805.P10878518701946534567

`A332894(A332806(A332807(n+1)))`
-/

namespace A332805.P10878518701946534567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332894 (A332806 (A332807 (n + 1)).toNat).toNat

end

end A332805.P10878518701946534567

/-! ## A332805.P12676152172124080926

`A332894(A073846(2*(n+1)))`
-/

namespace A332805.P12676152172124080926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332894 (A073846 (2 * (n + 1))).toNat

end

end A332805.P12676152172124080926

/-! ## A332805.P8557706841149348256

`A000720(p?[A332808(n+1)])`
-/

namespace A332805.P8557706841149348256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A332805.P8557706841149348256

/-! ## A332805.P14998213250776051991

`A061395(p?[A332808(n+1)])`
-/

namespace A332805.P14998213250776051991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A332805.P14998213250776051991

/-! ## A332805.P6365239641130323984

`A332894(A332808(A108546(n+1)))`
-/

namespace A332805.P6365239641130323984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332894 (A332808 (A108546 (n + 1)).toNat).toNat

end

end A332805.P6365239641130323984

/-! ## A332805.P7873894006849102389

`A332899(p?[record[A351233(n)]])`
-/

namespace A332805.P7873894006849102389
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351233 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332899 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A332805.P7873894006849102389

/-! ## A332805.P13585294757573042366

`A332899(record[A006530(n+2)])`
-/

namespace A332805.P13585294757573042366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332899 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A332805.P13585294757573042366

/-! ## A332805.P7790434849761739523

`A332899(record[A020639(n+2)])`
-/

namespace A332805.P7790434849761739523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332899 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A332805.P7790434849761739523

/-! ## A332805.P5884710540002626380

`A332899(A100484(n+1)/2)`
-/

namespace A332805.P5884710540002626380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332899 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A332805.P5884710540002626380

/-! ## A332805.P7766451238358634816

`A332899(A001747(n+2)/2)`
-/

namespace A332805.P7766451238358634816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332899 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

end

end A332805.P7766451238358634816

/-! ## A332805.P8302829173688764715

`A332899(A006530(A001749(n+1)))`
-/

namespace A332805.P8302829173688764715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332899 (A006530 (A001749 (n + 1)).toNat).toNat

end

end A332805.P8302829173688764715

/-! ## A332805.P4644995355927598312

`A332899(A006530(A062876(n+1)))`
-/

namespace A332805.P4644995355927598312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332899 (A006530 (A062876 (n + 1)).toNat).toNat

end

end A332805.P4644995355927598312

/-! ## A332805.P9835149415587132870

`A332899(A332808(A332819(A108546(n+2))))`
-/

namespace A332805.P9835149415587132870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332899 (A332808 (A332819 (A108546 (n + 2)).toNat).toNat).toNat

end

end A332805.P9835149415587132870

/-! ## A332805.P15042565913328436034

`A332899(A100484(n+1))`
-/

namespace A332805.P15042565913328436034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332899 (A100484 (n + 1)).toNat

end

end A332805.P15042565913328436034

/-!
# A332806: Permutation of primes, inverse of A108546.

The programs for A332806, there is no canonical definition to state claims against.
-/

/-! ## A332806.P3768633354825007629

`A000040(A332805(n+1))`
-/

namespace A332806.P3768633354825007629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A332805 (n + 1)).toNat

end

end A332806.P3768633354825007629

/-! ## A332806.P4528964538291539869

`A108546(A332805(A332805(A332805(A332807(n+1)))))`
-/

namespace A332806.P4528964538291539869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108546 (A332805 (A332805 (A332805 (A332807 (n + 1)).toNat).toNat).toNat).toNat

end

end A332806.P4528964538291539869

/-! ## A332806.P4981855994708116065

`A108546(A332805(A332805(A267100(A267100(n+1)))))`
-/

namespace A332806.P4981855994708116065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108546 (A332805 (A332805 (A267100 (A267100 (n + 1)).toNat).toNat).toNat).toNat

end

end A332806.P4981855994708116065

/-! ## A332806.P8116641688225990148

`A267101(A267100(A332805(A267097(A080147(n+1)))))`
-/

namespace A332806.P8116641688225990148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267101 (A267100 (A332805 (A267097 (A080147 (n + 1)).toNat).toNat).toNat).toNat

end

end A332806.P8116641688225990148

/-! ## A332806.P4341871293775277573

`A000040(A332894(A000040(n+1)))`
-/

namespace A332806.P4341871293775277573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A332894 (A000040 (n + 1)).toNat).toNat

end

end A332806.P4341871293775277573

/-! ## A332806.P13189233898722807718

`A073846(2*A332805(n+1))`
-/

namespace A332806.P13189233898722807718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A332805 (n + 1)).toNat

end

end A332806.P13189233898722807718

/-! ## A332806.P9934809725150772659

`p?[A332808(n+1)]`
-/

namespace A332806.P9934809725150772659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A332806.P9934809725150772659

/-! ## A332806.P14155391932823412095

`A332808(A000040(n+1))`
-/

namespace A332806.P14155391932823412095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A000040 (n + 1)).toNat

end

end A332806.P14155391932823412095

/-! ## A332806.P14346791797864321081

`A332808(A008578(n+2))`
-/

namespace A332806.P14346791797864321081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A008578 (n + 2)).toNat

end

end A332806.P14346791797864321081

/-! ## A332806.P5638909381252017138

`A332808(A182986(n+2))`
-/

namespace A332806.P5638909381252017138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A182986 (n + 2)).toNat

end

end A332806.P5638909381252017138

/-! ## A332806.P1032147343581574989

`A332808(record[A006530(n+2)])`
-/

namespace A332806.P1032147343581574989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A332806.P1032147343581574989

/-! ## A332806.P11435201284670886154

`A332808(record[A020639(n+2)])`
-/

namespace A332806.P11435201284670886154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A332806.P11435201284670886154

/-! ## A332806.P11069132957351383546

`A332808(A073846(2*(n+1)))`
-/

namespace A332806.P11069132957351383546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A073846 (2 * (n + 1))).toNat

end

end A332806.P11069132957351383546

/-! ## A332806.P16188998615185397152

`filter[A332808(n+1), A010051(#)]`
-/

namespace A332806.P16188998615185397152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A332806.P16188998615185397152

/-! ## A332806.P11482492716740454784

`A332808(A332808(A108546(n+1)))`
-/

namespace A332806.P11482492716740454784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A332808 (A108546 (n + 1)).toNat).toNat

end

end A332806.P11482492716740454784

/-! ## A332806.P15584353841916116160

`A267101(A267100(A332805(A267107(A267107(n+1)))))`
-/

namespace A332806.P15584353841916116160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267101 (A267100 (A332805 (A267107 (A267107 (n + 1)).toNat).toNat).toNat).toNat

end

end A332806.P15584353841916116160

/-! ## A332806.P12067209629311051597

`A332808(record[A014963(n+2)])`
-/

namespace A332806.P12067209629311051597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A332806.P12067209629311051597

/-! ## A332806.P14363354575407454555

`A267099(A267101(A332805(A267107(A267107(n+1)))))`
-/

namespace A332806.P14363354575407454555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (A267101 (A332805 (A267107 (A267107 (n + 1)).toNat).toNat).toNat).toNat

end

end A332806.P14363354575407454555

/-! ## A332806.P16279028395091990016

`A000040(A332899(A001747(n+2)))`
-/

namespace A332806.P16279028395091990016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A332899 (A001747 (n + 2)).toNat).toNat

end

end A332806.P16279028395091990016

/-! ## A332806.P12897188982906157049

`A332808(A332808(A332819(A111745(n+1))))`
-/

namespace A332806.P12897188982906157049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A332808 (A332819 (A111745 (n + 1)).toNat).toNat).toNat

end

end A332806.P12897188982906157049

/-!
# A332807: a(n) = A000720(A108546(n)).

The programs for A332807, there is no canonical definition to state claims against.
-/

/-! ## A332807.P2416311110733901523

`A000720(A108546(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332807.P2416311110733901523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A108546 (n + 1)).toNat

end

end A332807.P2416311110733901523

/-! ## A332807.P159988606021041199

`A061395(A108546(abs(xor(n, -1))))`
-/

namespace A332807.P159988606021041199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A108546 |Int.xor (n : ℤ) (-1)|.toNat).toNat

end

end A332807.P159988606021041199

/-! ## A332807.P14322191448403042788

`A061395(xor(1, A108546(n+1))+1)`
-/

namespace A332807.P14322191448403042788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.xor 1 (A108546 (n + 1)) + 1).toNat

end

end A332807.P14322191448403042788

/-! ## A332807.P17609157534249190977

`A061395(A332893(A108546(n+2)))`
-/

namespace A332807.P17609157534249190977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A332893 (A108546 (n + 2)).toNat).toNat

end

end A332807.P17609157534249190977

/-! ## A332807.P11738118534875725788

`A061395(2*A108546(n+1))`
-/

namespace A332807.P11738118534875725788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A108546 (n + 1)).toNat

end

end A332807.P11738118534875725788

/-! ## A332807.P12565893607548979122

`A061395(A108546(n+1)+A108546(n+1))`
-/

namespace A332807.P12565893607548979122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A108546 (n + 1) + A108546 (n + 1)).toNat

end

end A332807.P12565893607548979122

/-! ## A332807.P962148910829782237

`A000720(A108548(A000040(n+1)))`
-/

namespace A332807.P962148910829782237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A108548 (A000040 (n + 1)).toNat).toNat

end

end A332807.P962148910829782237

/-! ## A332807.P361256729259812325

`A000720(A108548(A108548(A332806(n+1))))`
-/

namespace A332807.P361256729259812325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A108548 (A108548 (A332806 (n + 1)).toNat).toNat).toNat

end

end A332807.P361256729259812325

/-! ## A332807.P15622187746337910002

`A332899(A108548(A108546(A108548(A332808(n+1)))))`
-/

namespace A332807.P15622187746337910002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332899 (A108548 (A108546 (A108548 (A332808 (n + 1)).toNat).toNat).toNat).toNat

end

end A332807.P15622187746337910002

/-! ## A332807.P6901777028038025935

`A036234(A108546(n+1)-1)`
-/

namespace A332807.P6901777028038025935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A108546 (n + 1) - 1).toNat

end

end A332807.P6901777028038025935

/-! ## A332807.P1202295052870407768

`∑{d}[A108546(n+1), A055396(#)]`
-/

namespace A332807.P1202295052870407768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A055396 d

end

end A332807.P1202295052870407768

/-! ## A332807.P13454750317268946463

`A049084(A108546(2*n+1-n))`
-/

namespace A332807.P13454750317268946463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A108546 (2 * n + 1 - n)).toNat

end

end A332807.P13454750317268946463

/-! ## A332807.P15570644078620597279

`A252464(2*A108546(n+1)-A108546(n+1))`
-/

namespace A332807.P15570644078620597279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (2 * A108546 (n + 1) - A108546 (n + 1)).toNat

end

end A332807.P15570644078620597279

/-! ## A332807.P5178801089136775355

`A049084(A108548(A108546(A332805(n+1))))`
-/

namespace A332807.P5178801089136775355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A108548 (A108546 (A332805 (n + 1)).toNat).toNat).toNat

end

end A332807.P5178801089136775355

/-! ## A332807.P4868951853580850681

`A252464(A108546(A332897(A108546(2*n+1))))`
-/

namespace A332807.P4868951853580850681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (A108546 (A332897 (A108546 (2 * n + 1)).toNat).toNat).toNat

end

end A332807.P4868951853580850681

/-! ## A332807.P2855178107617714712

`A332899(A108548(A332819(A111745(n+1))))`
-/

namespace A332807.P2855178107617714712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332899 (A108548 (A332819 (A111745 (n + 1)).toNat).toNat).toNat

end

end A332807.P2855178107617714712

/-! ## A332807.P2431786504076668807

`A003963(2*A108546(n+1))`
-/

namespace A332807.P2431786504076668807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A108546 (n + 1)).toNat

end

end A332807.P2431786504076668807

/-! ## A332807.P10427045360798433502

`A252464(2*A108546(n+1))-1`
-/

namespace A332807.P10427045360798433502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (2 * A108546 (n + 1)).toNat - 1

end

end A332807.P10427045360798433502

/-! ## A332807.P11396546554775237533

`A000720(A108548(A332212(A332210(n+1))))`
-/

namespace A332807.P11396546554775237533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A108548 (A332212 (A332210 (n + 1)).toNat).toNat).toNat

end

end A332807.P11396546554775237533

/-! ## A332807.P2396071020962284683

`A344616(9*A108546(n+1))`
-/

namespace A332807.P2396071020962284683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (9 * A108546 (n + 1)).toNat

end

end A332807.P2396071020962284683

/-!
# A332808: Fully multiplicative with a(p) = A332806(A000720(p)).

The programs for A332808, there is no canonical definition to state claims against.
-/

/-! ## A332808.P7912555638875944428

`∏{e}[A181821(n+1), A332806(#)]`
-/

namespace A332808.P7912555638875944428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A332806 (Nat.factorization (f1 n).natAbs p)

end

end A332808.P7912555638875944428

/-! ## A332808.P6939977032024107527

`∏{e}[A181821(n+1), A000040(A332805(#))]`
-/

namespace A332808.P6939977032024107527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (A332805 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A332808.P6939977032024107527

/-!
# A332809: Number of distinct integers encountered on possible paths from n to 1 when iterating the nondeterministic map k -> k - k/p, where p is any of the prime factors of k.

The programs for A332809, there is no canonical definition to state claims against.
-/

/-! ## A332809.P11988933598382270377

`n+1-A332810(n+1)`
-/

namespace A332809.P11988933598382270377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A332810 (n + 1)

end

end A332809.P11988933598382270377

/-! ## A332809.P9597781136419173093

`A334112(n+1)+A000005(n+1)`
-/

namespace A332809.P9597781136419173093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334112 (n + 1) + A000005 (n + 1)

end

end A332809.P9597781136419173093

/-! ## A332809.P5291829542304146315

`∑[A332902(n+1)]`
-/

namespace A332809.P5291829542304146315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332809.P5291829542304146315

/-! ## A332809.P7800434410556404833

`1-A332810(n+1)+n`
-/

namespace A332809.P7800434410556404833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A332810 (n + 1) + (n : ℤ)

end

end A332809.P7800434410556404833

/-! ## A332809.P14090152577953443365

`A334112(n+1)+∏{e}[n+1, #+1]`
-/

namespace A332809.P14090152577953443365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334112 (n + 1) + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A332809.P14090152577953443365

/-! ## A332809.P2991293916284428869

`A024000(A332810(n+1))+n`
-/

namespace A332809.P2991293916284428869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A332810 (n + 1)).toNat + (n : ℤ)

end

end A332809.P2991293916284428869

/-! ## A332809.P2248905432031545953

`A006218(n+1)+A334112(n+1)-A006218(n)`
-/

namespace A332809.P2248905432031545953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) + (A334112 (n + 1) - A006218 n)

end

end A332809.P2248905432031545953

/-! ## A332809.P8352837802752264608

`A334112(n+1)+∑{d}[n+1, A014673(A014673(#))]`
-/

namespace A332809.P8352837802752264608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334112 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A014673 (A014673 d).toNat

end

end A332809.P8352837802752264608

/-! ## A332809.P17469232641143239294

`A072627(n+1)+A334112(n+1)+A072628(n+1)`
-/

namespace A332809.P17469232641143239294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (n + 1) + (A334112 (n + 1) + A072628 (n + 1))

end

end A332809.P17469232641143239294

/-! ## A332809.P2901567153408268166

`A334112(n+1)+A008836(n+1)*A329484(n+1)`
-/

namespace A332809.P2901567153408268166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334112 (n + 1) + A008836 (n + 1) * A329484 (n + 1)

end

end A332809.P2901567153408268166

/-! ## A332809.P12066173207792150700

`A011782(n+1)+A334112(n+1)-A349094(n+1)`
-/

namespace A332809.P12066173207792150700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) + (A334112 (n + 1) - A349094 (n + 1))

end

end A332809.P12066173207792150700

/-!
# A332810: Number of integers in range 1..n that are not encountered on any of the possible paths from n to 1 when iterating with nondeterministic map k -> k - k/p, where p is any prime factor of k.

The programs for A332810, there is no canonical definition to state claims against.
-/

/-! ## A332810.P8267178655339054245

`n+1-A332809(n+1)`
-/

namespace A332810.P8267178655339054245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A332809 (n + 1)

end

end A332810.P8267178655339054245

/-! ## A332810.P4121080575576849401

`∑[1-A332902(n+1)]`
-/

namespace A332810.P4121080575576849401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A332902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332810.P4121080575576849401

/-! ## A332810.P3319521645005336897

`1-A332809(n+1)+n`
-/

namespace A332810.P3319521645005336897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A332809 (n + 1) + (n : ℤ)

end

end A332810.P3319521645005336897

/-! ## A332810.P14681266955930671180

`n-∑{d}[n+1, n²%#]-A334112(n+1)`
-/

namespace A332810.P14681266955930671180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ d ∈ Nat.divisors (f1 n), n ^ 2 % d : ℕ) : ℤ) - A334112 (n + 1)

end

end A332810.P14681266955930671180

/-! ## A332810.P14284345345160983681

`n-A023443(A332809(n+1))`
-/

namespace A332810.P14284345345160983681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A332809 (n + 1)).toNat

end

end A332810.P14284345345160983681

/-! ## A332810.P5247910802208084860

`A049820(n+1)-A334112(n+1)`
-/

namespace A332810.P5247910802208084860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) - A334112 (n + 1)

end

end A332810.P5247910802208084860

/-! ## A332810.P8467897229857337555

`A062968(n+1)-(A334112(n+1)+1)`
-/

namespace A332810.P8467897229857337555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062968 (n + 1) - (A334112 (n + 1) + 1)

end

end A332810.P8467897229857337555

/-! ## A332810.P113250227878276773

`1-(A334112(n+1)+A000005(n+1))+n`
-/

namespace A332810.P113250227878276773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A334112 (n + 1) + A000005 (n + 1)) + (n : ℤ)

end

end A332810.P113250227878276773

/-!
# A332811: a(n) = A243071(A332808(n)).

The programs for A332811, there is no canonical definition to state claims against.
-/

/-! ## A332811.P1430963672101320107

`A332895(n+1)+A332896(n+1)`
-/

namespace A332811.P1430963672101320107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332895 (n + 1) + A332896 (n + 1)

end

end A332811.P1430963672101320107

/-! ## A332811.P7296804986658548297

`A243071(A332808(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332811.P7296804986658548297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A332808 (n + 1)).toNat

end

end A332811.P7296804986658548297

/-! ## A332811.P633228998066229740

`∑{d}[A332808(n+1), A297171(#)]`
-/

namespace A332811.P633228998066229740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297171 d

end

end A332811.P633228998066229740

/-! ## A332811.P18389513786369663441

`A243071(∏{e}[A181821(n+1), A332806(#)])`
-/

namespace A332811.P18389513786369663441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A332806 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A332811.P18389513786369663441

/-! ## A332811.P6926463502995184498

`A243071(A108548(A243071(A108548(A332817(n+1)))))`
-/

namespace A332811.P6926463502995184498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A108548 (A243071 (A108548 (A332817 (n + 1)).toNat).toNat).toNat).toNat

end

end A332811.P6926463502995184498

/-!
# A332812: Numbers n for which A156552(n) == 2 (mod 3).

The programs for A332812, the canonical program `A332812.P16891690950029650625` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332812 has offset 1).

The definition of A332812 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332812.P16891690950029650625

`lt[1, A329903(n+1)]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A332812

/-- `lt[1, A329903(n+1)]+1` -/
def P16891690950029650625.Spec : Prop :=
  ∀ n, (P16891690950029650625.a n : ℤ) = A332812 (n + 1)

theorem P16891690950029650625.correct : P16891690950029650625.Spec := by
  intro n
  simp only [A332812, Nat.add_sub_cancel]

end A332812

/-! ## A332812.P1071894247442426704

`eq[2, A329903(n+2)]+2`
-/

namespace A332812.P1071894247442426704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329903 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A332812.P1071894247442426704

namespace A332812

/-- `eq[2, A329903(n+2)]+2` -/
def P1071894247442426704.Spec : Prop :=
  ∀ n, (P1071894247442426704.a n : ℤ) = A332812 (n + 1)

end A332812

/-! ## A332812.P2981349323772104652

`record[n/a(A329903(n))]` with `a(0)=3, a(1)=2`
-/

namespace A332812.P2981349323772104652
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  (n : ℚ) / f1 (A329903 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332812.P2981349323772104652

namespace A332812

/-- `record[n/a(A329903(n))]` -/
def P2981349323772104652.Spec : Prop :=
  ∀ n, P2981349323772104652.a n = (A332812 (n + 1) : ℚ)

end A332812

/-! ## A332812.P12570657133888297849

`eq[-1, A332814(n+1)]+1`
-/

namespace A332812.P12570657133888297849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332814 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A332812.P12570657133888297849

namespace A332812

/-- `eq[-1, A332814(n+1)]+1` -/
def P12570657133888297849.Spec : Prop :=
  ∀ n, (P12570657133888297849.a n : ℤ) = A332812 (n + 1)

end A332812

/-! ## A332812.P8845300399893910415

`eq[A353269(2*(n+1)), A353269(n+1)]+1`
-/

namespace A332812.P8845300399893910415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353269 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353269 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A332812.P8845300399893910415

namespace A332812

/-- `eq[A353269(2*(n+1)), A353269(n+1)]+1` -/
def P8845300399893910415.Spec : Prop :=
  ∀ n, (P8845300399893910415.a n : ℤ) = A332812 (n + 1)

end A332812

/-! ## A332812.P4489410611776984943

`lt[2, A275987(and(n, A332814(n+1))+1)]+1`
-/

namespace A332812.P4489410611776984943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275987 (Int.land (n : ℤ) (A332814 (n + 1)) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A332812.P4489410611776984943

namespace A332812

/-- `lt[2, A275987(and(n, A332814(n+1))+1)]+1` -/
def P4489410611776984943.Spec : Prop :=
  ∀ n, (P4489410611776984943.a n : ℤ) = A332812 (n + 1)

end A332812

/-! ## A332812.P544474799309129981

`lt[A332814(A028310(n))+1, 1]`
-/

namespace A332812.P544474799309129981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332814 (A028310 n).toNat + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A332812.P544474799309129981

namespace A332812

/-- `lt[A332814(A028310(n))+1, 1]` -/
def P544474799309129981.Spec : Prop :=
  ∀ n, (P544474799309129981.a n : ℤ) = A332812 (n + 1)

end A332812

/-! ## A332812.P13851245336987793619

`eq[2, A156552(n+1)%3]+1`
-/

namespace A332812.P13851245336987793619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156552 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A332812.P13851245336987793619

namespace A332812

/-- `eq[2, A156552(n+1)%3]+1` -/
def P13851245336987793619.Spec : Prop :=
  ∀ n, (P13851245336987793619.a n : ℤ) = A332812 (n + 1)

end A332812

/-!
# A332813: a(n) = A048675(n) mod 3.

The programs for A332813, the canonical program `A332813.P10985166550549235178` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332813 has offset 1).

The definition of A332813 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A332813.P10985166550549235178

`A048675(n+1)%3`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A332813

/-- `A048675(n+1)%3` -/
def P10985166550549235178.Spec : Prop :=
  ∀ n, P10985166550549235178.a n = A332813 (n + 1)

theorem P10985166550549235178.correct : P10985166550549235178.Spec := by
  intro n
  simp only [A332813, Nat.add_sub_cancel]

end A332813

/-! ## A332813.P5944924483194597877

`A010872(A048675(n+1))`
-/

namespace A332813.P5944924483194597877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A048675 (n + 1)).toNat

end

end A332813.P5944924483194597877

namespace A332813

/-- `A010872(A048675(n+1))` -/
def P5944924483194597877.Spec : Prop :=
  ∀ n, P5944924483194597877.a n = A332813 (n + 1)

end A332813

/-! ## A332813.P9628398009990433204

`col(A332823(n+1)+6)`
-/

namespace A332813.P9628398009990433204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (A332823 (n + 1) + 6).toNat

end

end A332813.P9628398009990433204

namespace A332813

/-- `col(A332823(n+1)+6)` -/
def P9628398009990433204.Spec : Prop :=
  ∀ n, (P9628398009990433204.a n : ℤ) = A332813 (n + 1)

end A332813

/-! ## A332813.P9965666244270477116

`A332823(3*(n+1))+1`
-/

namespace A332813.P9965666244270477116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332823 (3 * (n + 1)) + 1

end

end A332813.P9965666244270477116

namespace A332813

/-- `A332823(3*(n+1))+1` -/
def P9965666244270477116.Spec : Prop :=
  ∀ n, P9965666244270477116.a n = A332813 (n + 1)

end A332813

/-! ## A332813.P2698720911059260037

`(A195017(n+1)%3+3)%3`
-/

namespace A332813.P2698720911059260037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A195017 (n + 1)) 3 + 3) 3

end

end A332813.P2698720911059260037

namespace A332813

/-- `(A195017(n+1)%3+3)%3` -/
def P2698720911059260037.Spec : Prop :=
  ∀ n, P2698720911059260037.a n = A332813 (n + 1)

end A332813

/-! ## A332813.P18045855333330643532

`(A195017(n+1)+A017162(n))%3`
-/

namespace A332813.P18045855333330643532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195017 (n + 1) + A017162 n) 3

end

end A332813.P18045855333330643532

namespace A332813

/-- `(A195017(n+1)+A017162(n))%3` -/
def P18045855333330643532.Spec : Prop :=
  ∀ n, P18045855333330643532.a n = A332813 (n + 1)

end A332813

/-! ## A332813.P991882642726422347

`(A156552(n+1)-A323905(n+1))%3`
-/

namespace A332813.P991882642726422347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156552 (n + 1) - A323905 (n + 1)) 3

end

end A332813.P991882642726422347

namespace A332813

/-- `(A156552(n+1)-A323905(n+1))%3` -/
def P991882642726422347.Spec : Prop :=
  ∀ n, P991882642726422347.a n = A332813 (n + 1)

theorem P991882642726422347.correct : P991882642726422347.Spec := by
  intro n
  simp only [A332813, Nat.add_sub_cancel, A332813.P991882642726422347.a, A332813.P10985166550549235178.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A156552, A156552.P4268073137713085227.a, A323905, A323905.P339970777162455812.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A297108, A297108.P15990807296291497671.a, A131577, A131577.P3998309598604981540.a, A297109, A297109.P1496811488439761658.f1, A297109.P1496811488439761658.a, A364557, A364557.P16113127302810243144.a, A049084, A049084.P10934933317972537770.a, A297167, A297167.P13113550866660970867.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A332813

/-! ## A332813.P17533306632287278374

`Δ[A336415(n)]%3`
-/

namespace A332813.P17533306632287278374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 3

end

end A332813.P17533306632287278374

namespace A332813

/-- `Δ[A336415(n)]%3` -/
def P17533306632287278374.Spec : Prop :=
  ∀ n, P17533306632287278374.a n = A332813 (n + 1)

end A332813

/-! ## A332813.P282462045564525640

`(A292382(n+1)+A292380(n+1)-A323905(n+1))%3`
-/

namespace A332813.P282462045564525640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292382 (n + 1) + A292380 (n + 1) - A323905 (n + 1)) 3

end

end A332813.P282462045564525640

namespace A332813

/-- `(A292382(n+1)+A292380(n+1)-A323905(n+1))%3` -/
def P282462045564525640.Spec : Prop :=
  ∀ n, P282462045564525640.a n = A332813 (n + 1)

end A332813

/-! ## A332813.P6751153480523858724

`A090882(n+1)%3`
-/

namespace A332813.P6751153480523858724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090882 (n + 1)) 3

end

end A332813.P6751153480523858724

namespace A332813

/-- `A090882(n+1)%3` -/
def P6751153480523858724.Spec : Prop :=
  ∀ n, P6751153480523858724.a n = A332813 (n + 1)

end A332813

/-! ## A332813.P17301825619900761892

`A329903(A332462(n+1))`
-/

namespace A332813.P17301825619900761892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329903 (A332462 (n + 1)).toNat

end

end A332813.P17301825619900761892

namespace A332813

/-- `A329903(A332462(n+1))` -/
def P17301825619900761892.Spec : Prop :=
  ∀ n, P17301825619900761892.a n = A332813 (n + 1)

end A332813

/-!
# A332814: a(n) is -1, 0, or +1 such that a(n) == A156552(n) (mod 3).

The programs for A332814, the canonical program `A332814.P5107622216486189293` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332814 has offset 1).

The definition of A332814 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A332814.P17659448376005598417

`A332823(A332462(n+1))`
-/

namespace A332814.P17659448376005598417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332823 (A332462 (n + 1)).toNat

end

end A332814.P17659448376005598417

namespace A332814

/-- `A332823(A332462(n+1))` -/
def P17659448376005598417.Spec : Prop :=
  ∀ n, P17659448376005598417.a n = A332814 (n + 1)

end A332814

/-! ## A332814.P3134526950831907610

`A332823(A332461(n+1))`
-/

namespace A332814.P3134526950831907610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332823 (A332461 (n + 1)).toNat

end

end A332814.P3134526950831907610

namespace A332814

/-- `A332823(A332461(n+1))` -/
def P3134526950831907610.Spec : Prop :=
  ∀ n, P3134526950831907610.a n = A332814 (n + 1)

end A332814

/-! ## A332814.P5107622216486189293

`A102283(A156552(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A332814

/-- `A102283(A156552(n+1))` -/
def P5107622216486189293.Spec : Prop :=
  ∀ n, P5107622216486189293.a n = A332814 (n + 1)

theorem P5107622216486189293.correct : P5107622216486189293.Spec := by
  intro n
  simp only [A332814, Nat.add_sub_cancel]

end A332814

/-! ## A332814.P1669254779868989719

`1-A329903(2*(n+1))`
-/

namespace A332814.P1669254779868989719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A329903 (2 * (n + 1))

end

end A332814.P1669254779868989719

namespace A332814

/-- `1-A329903(2*(n+1))` -/
def P1669254779868989719.Spec : Prop :=
  ∀ n, P1669254779868989719.a n = A332814 (n + 1)

end A332814

/-! ## A332814.P3105057969384404359

`floor(acot(1-A329903(n+1)))`
-/

namespace A332814.P3105057969384404359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (1 - A329903 (n + 1) : ℝ)⌋

end

end A332814.P3105057969384404359

namespace A332814

/-- `floor(acot(1-A329903(n+1)))` -/
def P3105057969384404359.Spec : Prop :=
  ∀ n, P3105057969384404359.a n = A332814 (n + 1)

end A332814

/-! ## A332814.P18336959542905149476

`A332823(A335423(n+1))`
-/

namespace A332814.P18336959542905149476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332823 (A335423 (n + 1)).toNat

end

end A332814.P18336959542905149476

namespace A332814

/-- `A332823(A335423(n+1))` -/
def P18336959542905149476.Spec : Prop :=
  ∀ n, P18336959542905149476.a n = A332814 (n + 1)

end A332814

/-! ## A332814.P28284144949027211

`A332813(2*A335423(n+1))-1`
-/

namespace A332814.P28284144949027211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332813 (2 * A335423 (n + 1)).toNat - 1

end

end A332814.P28284144949027211

namespace A332814

/-- `A332813(2*A335423(n+1))-1` -/
def P28284144949027211.Spec : Prop :=
  ∀ n, P28284144949027211.a n = A332814 (n + 1)

end A332814

/-! ## A332814.P4940320326763265153

`∑{d}[n+1, A008683(#)*A353364((n+1)/#)]`
-/

namespace A332814.P4940320326763265153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A353364 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332814.P4940320326763265153

namespace A332814

/-- `∑{d}[n+1, A008683(#)*A353364((n+1)/#)]` -/
def P4940320326763265153.Spec : Prop :=
  ∀ n, P4940320326763265153.a n = A332814 (n + 1)

end A332814

/-! ## A332814.P8617126567796167956

`A353307(n+1)-A353307(A064989(n+1))`
-/

namespace A332814.P8617126567796167956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353307 (n + 1) - A353307 (A064989 (n + 1)).toNat

end

end A332814.P8617126567796167956

namespace A332814

/-- `A353307(n+1)-A353307(A064989(n+1))` -/
def P8617126567796167956.Spec : Prop :=
  ∀ n, P8617126567796167956.a n = A332814 (n + 1)

end A332814

/-! ## A332814.P11244768724917934665

`A353307(n+1)-A353307(A003961(n+1))`
-/

namespace A332814.P11244768724917934665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353307 (n + 1) - A353307 (A003961 (n + 1)).toNat

end

end A332814.P11244768724917934665

namespace A332814

/-- `A353307(n+1)-A353307(A003961(n+1))` -/
def P11244768724917934665.Spec : Prop :=
  ∀ n, P11244768724917934665.a n = A332814 (n + 1)

end A332814

/-! ## A332814.P10097626541838000997

`A243071(2*(n+1))%3-1`
-/

namespace A332814.P10097626541838000997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243071 (2 * (n + 1))) 3 - 1

end

end A332814.P10097626541838000997

namespace A332814

/-- `A243071(2*(n+1))%3-1` -/
def P10097626541838000997.Spec : Prop :=
  ∀ n, P10097626541838000997.a n = A332814 (n + 1)

end A332814

/-! ## A332814.P1185736193214791947

`A332823(A332460(n+1))`
-/

namespace A332814.P1185736193214791947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332823 (A332460 (n + 1)).toNat

end

end A332814.P1185736193214791947

namespace A332814

/-- `A332823(A332460(n+1))` -/
def P1185736193214791947.Spec : Prop :=
  ∀ n, P1185736193214791947.a n = A332814 (n + 1)

end A332814

/-! ## A332814.P13589201299592071599

`A332813(2*A332460(n+1))-1`
-/

namespace A332814.P13589201299592071599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332813 (2 * A332460 (n + 1)).toNat - 1

end

end A332814.P13589201299592071599

namespace A332814

/-- `A332813(2*A332460(n+1))-1` -/
def P13589201299592071599.Spec : Prop :=
  ∀ n, P13589201299592071599.a n = A332814 (n + 1)

end A332814

/-! ## A332814.P2555904630000520514

`A332813(A335423(n+1)²)-A332813(A335423(n+1))`
-/

namespace A332814.P2555904630000520514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332813 (A335423 (n + 1) ^ 2).toNat - A332813 (A335423 (n + 1)).toNat

end

end A332814.P2555904630000520514

namespace A332814

/-- `A332813(A335423(n+1)²)-A332813(A335423(n+1))` -/
def P2555904630000520514.Spec : Prop :=
  ∀ n, P2555904630000520514.a n = A332814 (n + 1)

end A332814

/-!
# A332815: a(n) = A108548(A005940(1+n)).

The programs for A332815, there is no canonical definition to state claims against.
-/

/-! ## A332815.P16826353467221993254

`A108548(A005940(1+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332815.P16826353467221993254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108548 (A005940 (1 + n)).toNat

end

end A332815.P16826353467221993254

/-! ## A332815.P6403070224728633396

`A332817(A054429(2*n+1))/2`
-/

namespace A332815.P6403070224728633396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332817 (A054429 (2 * n + 1)).toNat : ℚ) / 2

end

end A332815.P6403070224728633396

/-! ## A332815.P6109091145928287310

`A332808(A005940(n+1))`
-/

namespace A332815.P6109091145928287310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A005940 (n + 1)).toNat

end

end A332815.P6109091145928287310

/-! ## A332815.P2076610460759254578

`A108548(A364499(n+1)+1+n)`
-/

namespace A332815.P2076610460759254578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108548 (A364499 (n + 1) + 1 + (n : ℤ)).toNat

end

end A332815.P2076610460759254578

/-! ## A332815.P4399856810436680504

`A108548(A324641(n+1)-A324640(n+1))`
-/

namespace A332815.P4399856810436680504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108548 (A324641 (n + 1) - A324640 (n + 1)).toNat

end

end A332815.P4399856810436680504

/-! ## A332815.P16373566286891723411

`A332817(A332816(A332817(n)))`
-/

namespace A332815.P16373566286891723411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332817 (A332816 (A332817 n).toNat).toNat

end

end A332815.P16373566286891723411

/-!
# A332816: a(n) = A156552(A332808(n)).

The programs for A332816, there is no canonical definition to state claims against.
-/

/-! ## A332816.P11032854758011987722

`A156552(A332808(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332816.P11032854758011987722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A332808 (n + 1)).toNat

end

end A332816.P11032854758011987722

/-! ## A332816.P7956278713439830550

`∑{d}[A332808(n+1), A297112(#)]`
-/

namespace A332816.P7956278713439830550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297112 d

end

end A332816.P7956278713439830550

/-! ## A332816.P17498115174246558679

`xor(A005941(A332808(n+1)), A038712(n+1))`
-/

namespace A332816.P17498115174246558679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005941 (A332808 (n + 1)).toNat) (A038712 (n + 1))

end

end A332816.P17498115174246558679

/-! ## A332816.P14155103117156154618

`A005941(A332808(n+1))-A092412(2*n+1)`
-/

namespace A332816.P14155103117156154618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005941 (A332808 (n + 1)).toNat - A092412 (2 * n + 1)

end

end A332816.P14155103117156154618

/-! ## A332816.P1030241152592404895

`A005941(A332808(n+1))-A001222(A002144(n+1))`
-/

namespace A332816.P1030241152592404895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005941 (A332808 (n + 1)).toNat - A001222 (A002144 (n + 1)).toNat

end

end A332816.P1030241152592404895

/-! ## A332816.P9633575615441476717

`A005941(A332808(n+1))-A001222(A003627(n+1))`
-/

namespace A332816.P9633575615441476717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005941 (A332808 (n + 1)).toNat - A001222 (A003627 (n + 1)).toNat

end

end A332816.P9633575615441476717

/-! ## A332816.P2343461374398582756

`A005941(A332808(n+1))-A001222(A005145(n+1))`
-/

namespace A332816.P2343461374398582756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005941 (A332808 (n + 1)).toNat - A001222 (A005145 (n + 1)).toNat

end

end A332816.P2343461374398582756

/-! ## A332816.P11062257946265259710

`A005941(A332808(n+1))-A008683(A005117(n+1))²`
-/

namespace A332816.P11062257946265259710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005941 (A332808 (n + 1)).toNat - A008683 (A005117 (n + 1)).toNat ^ 2

end

end A332816.P11062257946265259710

/-! ## A332816.P17719530714082153080

`A005941(A332808(n+1))-A001222(A181424(n+1))`
-/

namespace A332816.P17719530714082153080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005941 (A332808 (n + 1)).toNat - A001222 (A181424 (n + 1)).toNat

end

end A332816.P17719530714082153080

/-!
# A332817: a(n) = A108548(A163511(n)).

The programs for A332817, there is no canonical definition to state claims against.
-/

/-! ## A332817.P4375338841589438267

`A108548(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332817.P4375338841589438267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108548 (A163511 n).toNat

end

end A332817.P4375338841589438267

/-! ## A332817.P6551700364437318203

`A332815(A286546(n)+A233279(n))`
-/

namespace A332817.P6551700364437318203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332815 (A286546 n + A233279 n).toNat

end

end A332817.P6551700364437318203

/-! ## A332817.P14682614369110642657

`A332815(xor(A233279(n), A292600(n)))`
-/

namespace A332817.P14682614369110642657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332815 (Int.xor (A233279 n) (A292600 n)).toNat

end

end A332817.P14682614369110642657

/-! ## A332817.P8057945340960643853

`A332815(A092569(2*n)/2)`
-/

namespace A332817.P8057945340960643853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332815 (SequenceMachineLib.roundAway ((A092569 (2 * n) : ℚ) / 2)).toNat

end

end A332817.P8057945340960643853

/-! ## A332817.P3832480976520295843

`A332808(A163511(2*n-n))`
-/

namespace A332817.P3832480976520295843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A163511 (2 * n - n)).toNat

end

end A332817.P3832480976520295843

/-! ## A332817.P4408834435558017477

`A332808(or(A000007(n), A163511(n)))`
-/

namespace A332817.P4408834435558017477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (Int.lor (A000007 n) (A163511 n)).toNat

end

end A332817.P4408834435558017477

/-! ## A332817.P18220106581066765712

`A332808(A163511(n)+A000007(n+1))`
-/

namespace A332817.P18220106581066765712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A163511 n + A000007 (n + 1)).toNat

end

end A332817.P18220106581066765712

/-! ## A332817.P10595734670977813171

`A235027(2*A163511(n))/2`
-/

namespace A332817.P10595734670977813171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235027 (2 * A163511 n).toNat : ℚ) / 2

end

end A332817.P10595734670977813171

/-! ## A332817.P6142736642499680091

`A332808(2*A163511(n))/2`
-/

namespace A332817.P6142736642499680091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332808 (2 * A163511 n).toNat : ℚ) / 2

end

end A332817.P6142736642499680091

/-! ## A332817.P9726701949453243854

`A108548(A332213(A332214(n)))`
-/

namespace A332817.P9726701949453243854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108548 (A332213 (A332214 n).toNat).toNat

end

end A332817.P9726701949453243854

/-! ## A332817.P18421882211272475554

`A235027(A163511(sqrt(A000290(n))))`
-/

namespace A332817.P18421882211272475554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (A163511 (SequenceMachineLib.roundAway (Real.sqrt (A000290 n : ℝ))).toNat).toNat

end

end A332817.P18421882211272475554

/-! ## A332817.P16662150706639664167

`A235027(A163511(n)%A059100(n))`
-/

namespace A332817.P16662150706639664167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (Int.tmod (A163511 n) (A059100 n)).toNat

end

end A332817.P16662150706639664167

/-! ## A332817.P18267914021564365042

`A235027(lcm(A065357(n), A163511(n)))`
-/

namespace A332817.P18267914021564365042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (Int.lcm (A065357 n) (A163511 n))

end

end A332817.P18267914021564365042

/-! ## A332817.P5298557513057349381

`A235027(2*A163511(n)-A163511(n))`
-/

namespace A332817.P5298557513057349381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (2 * A163511 n - A163511 n).toNat

end

end A332817.P5298557513057349381

/-! ## A332817.P4855615825555951462

`A235027(A163511(n))%A024406(n+1)`
-/

namespace A332817.P4855615825555951462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235027 (A163511 n).toNat) (A024406 (n + 1))

end

end A332817.P4855615825555951462

/-! ## A332817.P508399284461645521

`A332815(A332811(A332815(n)))`
-/

namespace A332817.P508399284461645521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332815 (A332811 (A332815 n).toNat).toNat

end

end A332817.P508399284461645521

/-!
# A332818: a(n) = A108548(A003961(A332808(n))).

The programs for A332818, there is no canonical definition to state claims against.
-/

/-! ## A332818.P3707597718547966280

`A108548(A003961(A332808(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332818.P3707597718547966280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108548 (A003961 (A332808 (n + 1)).toNat).toNat

end

end A332818.P3707597718547966280

/-! ## A332818.P11780356813761733780

`A389082(n+1)/A000203(n+1)`
-/

namespace A332818.P11780356813761733780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389082 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ)

end

end A332818.P11780356813761733780

/-! ## A332818.P9304124659842998365

`∑{d}[n+1, A008683(#)*A389073((n+1)/#)]`
-/

namespace A332818.P9304124659842998365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A389073 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332818.P9304124659842998365

/-! ## A332818.P8861857997124700205

`A389082(n+1)/(A009194(n+1)*A017665(n+1))`
-/

namespace A332818.P8861857997124700205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389082 (n + 1) : ℚ) / (A009194 (n + 1) * A017665 (n + 1) : ℚ)

end

end A332818.P8861857997124700205

/-! ## A332818.P16609257277269256300

`A348746(A332893(A348746(n+1)))`
-/

namespace A332818.P16609257277269256300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348746 (A332893 (A348746 (n + 1)).toNat).toNat

end

end A332818.P16609257277269256300

/-! ## A332818.P15417386455084708150

`A348746(A332819(A348746(n+1)))`
-/

namespace A332818.P15417386455084708150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348746 (A332819 (A348746 (n + 1)).toNat).toNat

end

end A332818.P15417386455084708150

/-! ## A332818.P15461001774739992402

`A332819(A354202(n+1))`
-/

namespace A332818.P15461001774739992402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332819 (A354202 (n + 1)).toNat

end

end A332818.P15461001774739992402

/-! ## A332818.P9352800227159919503

`A332893(or(1, A354202(n+1)))`
-/

namespace A332818.P9352800227159919503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332893 (Int.lor 1 (A354202 (n + 1))).toNat

end

end A332818.P9352800227159919503

/-! ## A332818.P7927076184247568875

`A332819(∑{d}[n+1, A354204(#)])`
-/

namespace A332818.P7927076184247568875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332819 (∑ d ∈ Nat.divisors (f1 n), A354204 d).toNat

end

end A332818.P7927076184247568875

/-! ## A332818.P5960462386095362280

`A332893(∑{d}[n+1, A354204(#)])`
-/

namespace A332818.P5960462386095362280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332893 (∑ d ∈ Nat.divisors (f1 n), A354204 d).toNat

end

end A332818.P5960462386095362280

/-! ## A332818.P5263249445496235338

`A332893(A354202(n+1)+char[1])`
-/

namespace A332818.P5263249445496235338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332893 (A354202 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A332818.P5263249445496235338

/-!
# A332819: a(n) = A108548(A064989(A332808(n))).

The programs for A332819, there is no canonical definition to state claims against.
-/

/-! ## A332819.P1594816120360812588

`A108548(A064989(A332808(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332819.P1594816120360812588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108548 (A064989 (A332808 (n + 1)).toNat).toNat

end

end A332819.P1594816120360812588

/-! ## A332819.P17037646752801345360

`A332893(A000265(n+1))`
-/

namespace A332819.P17037646752801345360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332893 (A000265 (n + 1)).toNat

end

end A332819.P17037646752801345360

/-! ## A332819.P18342418098657800543

`A332893(A153733(n)+1)`
-/

namespace A332819.P18342418098657800543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332893 (A153733 n + 1).toNat

end

end A332819.P18342418098657800543

/-! ## A332819.P4105278071014800284

`A332893(A322250(n+1)+1)`
-/

namespace A332819.P4105278071014800284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332893 (A322250 (n + 1) + 1).toNat

end

end A332819.P4105278071014800284

/-! ## A332819.P4920033596948288976

`A332893(A259445(n+1)/A000034(n))`
-/

namespace A332819.P4920033596948288976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332893 (SequenceMachineLib.roundAway ((A259445 (n + 1) : ℚ) / (A000034 n : ℚ))).toNat

end

end A332819.P4920033596948288976

/-! ## A332819.P11281652615512644366

`A332893(A259445(2*(n+1))/2)`
-/

namespace A332819.P11281652615512644366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332893 (SequenceMachineLib.roundAway ((A259445 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A332819.P11281652615512644366

/-! ## A332819.P6430925126121342573

`A348747(A332818(A348747(n+1)))`
-/

namespace A332819.P6430925126121342573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348747 (A332818 (A348747 (n + 1)).toNat).toNat

end

end A332819.P6430925126121342573

/-! ## A332819.P1887136979394897608

`A354203(A332818(n+1))`
-/

namespace A332819.P1887136979394897608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354203 (A332818 (n + 1)).toNat

end

end A332819.P1887136979394897608

/-! ## A332819.P2828229456822082994

`A332893(A276234(n+1)²)/A332893(A276234(n+1))`
-/

namespace A332819.P2828229456822082994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332893 (A276234 (n + 1) ^ 2).toNat : ℚ) / (A332893 (A276234 (n + 1)).toNat : ℚ)

end

end A332819.P2828229456822082994

/-!
# A332820: Integers in the multiplicative subgroup of positive rationals generated by the products of two consecutive primes and the cubes of primes. Numbers k for which A048675(k) is a multiple of three.

The programs for A332820, the canonical program `A332820.P18117801028397222777` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332820 has offset 1).

The definition of A332820 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332820.P18117801028397222777

`eq[4, a(A332813(n))²]` with `a(0)=2`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A332820

/-- `eq[4, a(A332813(n))²]` -/
def P18117801028397222777.Spec : Prop :=
  ∀ n, (P18117801028397222777.a n : ℤ) = A332820 (n + 1)

theorem P18117801028397222777.correct : P18117801028397222777.Spec := by
  intro n
  simp only [A332820, Nat.add_sub_cancel]

end A332820

/-! ## A332820.P7706684990473433017

`eq[0, A332813(n+1)]+1`
-/

namespace A332820.P7706684990473433017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332813 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A332820.P7706684990473433017

namespace A332820

/-- `eq[0, A332813(n+1)]+1` -/
def P7706684990473433017.Spec : Prop :=
  ∀ n, (P7706684990473433017.a n : ℤ) = A332820 (n + 1)

end A332820

/-! ## A332820.P15586527295031763684

`eq[0, A332823(n+1)]+1`
-/

namespace A332820.P15586527295031763684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332823 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A332820.P15586527295031763684

namespace A332820

/-- `eq[0, A332823(n+1)]+1` -/
def P15586527295031763684.Spec : Prop :=
  ∀ n, (P15586527295031763684.a n : ℤ) = A332820 (n + 1)

end A332820

/-! ## A332820.P12327041247164661746

`lt[0, A353350(n+1)]+1`
-/

namespace A332820.P12327041247164661746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353350 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A332820.P12327041247164661746

namespace A332820

/-- `lt[0, A353350(n+1)]+1` -/
def P12327041247164661746.Spec : Prop :=
  ∀ n, (P12327041247164661746.a n : ℤ) = A332820 (n + 1)

end A332820

/-! ## A332820.P1361219244493208210

`lt[0, A353353(n+1)]+1`
-/

namespace A332820.P1361219244493208210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353353 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A332820.P1361219244493208210

namespace A332820

/-- `lt[0, A353353(n+1)]+1` -/
def P1361219244493208210.Spec : Prop :=
  ∀ n, (P1361219244493208210.a n : ℤ) = A332820 (n + 1)

end A332820

/-! ## A332820.P7272027667205034201

`eq[2, A000032(a(A332813(n)))]` with `a(0)=0`
-/

namespace A332820.P7272027667205034201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000032 (f2 (A332813 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A332820.P7272027667205034201

namespace A332820

/-- `eq[2, A000032(a(A332813(n)))]` -/
def P7272027667205034201.Spec : Prop :=
  ∀ n, (P7272027667205034201.a n : ℤ) = A332820 (n + 1)

end A332820

/-! ## A332820.P10361409442566233625

`eq[2, A000040(a(A332813(n)))]` with `a(0)=1`
-/

namespace A332820.P10361409442566233625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000040 (f2 (A332813 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A332820.P10361409442566233625

namespace A332820

/-- `eq[2, A000040(a(A332813(n)))]` -/
def P10361409442566233625.Spec : Prop :=
  ∀ n, (P10361409442566233625.a n : ℤ) = A332820 (n + 1)

end A332820

/-! ## A332820.P16125117223067829502

`eq[2, A000010(a(A332813(n)))]` with `a(0)=3`
-/

namespace A332820.P16125117223067829502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000010 (f2 (A332813 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A332820.P16125117223067829502

namespace A332820

/-- `eq[2, A000010(a(A332813(n)))]` -/
def P16125117223067829502.Spec : Prop :=
  ∀ n, (P16125117223067829502.a n : ℤ) = A332820 (n + 1)

end A332820

/-! ## A332820.P4570991431403272827

`eq[2, A000045(a(A332813(n)))]` with `a(0)=3`
-/

namespace A332820.P4570991431403272827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000045 (f2 (A332813 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A332820.P4570991431403272827

namespace A332820

/-- `eq[2, A000045(a(A332813(n)))]` -/
def P4570991431403272827.Spec : Prop :=
  ∀ n, (P4570991431403272827.a n : ℤ) = A332820 (n + 1)

end A332820

/-! ## A332820.P10305734122369306209

`filter[A018252(n+1), A353350(#)]`
-/

namespace A332820.P10305734122369306209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353350 (f1 j).toNat = 1) n)

end

end A332820.P10305734122369306209

namespace A332820

/-- `filter[A018252(n+1), A353350(#)]` -/
def P10305734122369306209.Spec : Prop :=
  ∀ n, P10305734122369306209.a n = A332820 (n + 1)

end A332820

/-! ## A332820.P11739517152144957276

`filter[A101513(n+1), A353350(#)]`
-/

namespace A332820.P11739517152144957276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353350 (f1 j).toNat = 1) n)

end

end A332820.P11739517152144957276

namespace A332820

/-- `filter[A101513(n+1), A353350(#)]` -/
def P11739517152144957276.Spec : Prop :=
  ∀ n, P11739517152144957276.a n = A332820 (n + 1)

end A332820

/-! ## A332820.P9643567489315499065

`filter[A056653(n+1), A353350(#)]`
-/

namespace A332820.P9643567489315499065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353350 (f1 j).toNat = 1) n)

end

end A332820.P9643567489315499065

namespace A332820

/-- `filter[A056653(n+1), A353350(#)]` -/
def P9643567489315499065.Spec : Prop :=
  ∀ n, P9643567489315499065.a n = A332820 (n + 1)

end A332820

/-! ## A332820.P8742347470179783796

`filter[A065090(n+1), A353350(#)]`
-/

namespace A332820.P8742347470179783796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353350 (f1 j).toNat = 1) n)

end

end A332820.P8742347470179783796

namespace A332820

/-- `filter[A065090(n+1), A353350(#)]` -/
def P8742347470179783796.Spec : Prop :=
  ∀ n, P8742347470179783796.a n = A332820 (n + 1)

end A332820

/-! ## A332820.P4051416554492135030

`filter[A073900(n+1), A353350(#)]`
-/

namespace A332820.P4051416554492135030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353350 (f1 j).toNat = 1) n)

end

end A332820.P4051416554492135030

namespace A332820

/-- `filter[A073900(n+1), A353350(#)]` -/
def P4051416554492135030.Spec : Prop :=
  ∀ n, P4051416554492135030.a n = A332820 (n + 1)

end A332820

/-! ## A332820.P7690288699320554327

`filter[A073899(n+1), A353350(#)]`
-/

namespace A332820.P7690288699320554327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353350 (f1 j).toNat = 1) n)

end

end A332820.P7690288699320554327

namespace A332820

/-- `filter[A073899(n+1), A353350(#)]` -/
def P7690288699320554327.Spec : Prop :=
  ∀ n, P7690288699320554327.a n = A332820 (n + 1)

end A332820

/-! ## A332820.P16082113934814446089

`filter[A089088(n), A353350(#)]`
-/

namespace A332820.P16082113934814446089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353350 (f1 j).toNat = 1) n)

end

end A332820.P16082113934814446089

namespace A332820

/-- `filter[A089088(n), A353350(#)]` -/
def P16082113934814446089.Spec : Prop :=
  ∀ n, P16082113934814446089.a n = A332820 (n + 1)

end A332820

/-! ## A332820.P6306068865874296665

`filter[A084408(n+1), A353350(#)]`
-/

namespace A332820.P6306068865874296665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353350 (f1 j).toNat = 1) n)

end

end A332820.P6306068865874296665

namespace A332820

/-- `filter[A084408(n+1), A353350(#)]` -/
def P6306068865874296665.Spec : Prop :=
  ∀ n, P6306068865874296665.a n = A332820 (n + 1)

end A332820

/-! ## A332820.P3843478836197145562

`filter[A077157(n), A353350(#)]`
-/

namespace A332820.P3843478836197145562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353350 (f1 j).toNat = 1) n)

end

end A332820.P3843478836197145562

namespace A332820

/-- `filter[A077157(n), A353350(#)]` -/
def P3843478836197145562.Spec : Prop :=
  ∀ n, P3843478836197145562.a n = A332820 (n + 1)

end A332820

/-! ## A332820.P3530466284173448804

`filter[A083197(n+1), A353350(#)]`
-/

namespace A332820.P3530466284173448804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353350 (f1 j).toNat = 1) n)

end

end A332820.P3530466284173448804

namespace A332820

/-- `filter[A083197(n+1), A353350(#)]` -/
def P3530466284173448804.Spec : Prop :=
  ∀ n, P3530466284173448804.a n = A332820 (n + 1)

end A332820

/-! ## A332820.P10979187833576749145

`filter[A073846(n+1), A353350(#)]`
-/

namespace A332820.P10979187833576749145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353350 (f1 j).toNat = 1) n)

end

end A332820.P10979187833576749145

namespace A332820

/-- `filter[A073846(n+1), A353350(#)]` -/
def P10979187833576749145.Spec : Prop :=
  ∀ n, P10979187833576749145.a n = A332820 (n + 1)

end A332820

/-!
# A332821: One part of a 3-way classification of the positive integers. Numbers n for which A048675(n) == 1 (mod 3).

The programs for A332821, there is no canonical definition to state claims against.
-/

/-! ## A332821.P7448001175804089231

`eq[2, sqrt(a(A332813(n)))]` with `a(0)=16`
-/

namespace A332821.P7448001175804089231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℝ := SequenceMachineLib.rec [16] fun n f2 =>
  Real.sqrt (f2 (A332813 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A332821.P7448001175804089231

/-! ## A332821.P13091011398181315528

`eq[1, A332813(n+1)]+1`
-/

namespace A332821.P13091011398181315528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332813 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A332821.P13091011398181315528

/-! ## A332821.P616493926748702728

`lt[0, A332823(n+1)]+1`
-/

namespace A332821.P616493926748702728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332823 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A332821.P616493926748702728

/-! ## A332821.P5813764162597669896

`record[n*A332823(n+2)+2]`
-/

namespace A332821.P5813764162597669896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A332823 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332821.P5813764162597669896

/-! ## A332821.P6961301451634277268

`lt[1, A332813(2*(n+1))]+1`
-/

namespace A332821.P6961301451634277268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332813 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A332821.P6961301451634277268

/-! ## A332821.P15753141428653925361

`eq[1, A353350(3*(n+1))]+1`
-/

namespace A332821.P15753141428653925361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353350 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A332821.P15753141428653925361

/-! ## A332821.P11102096472646930497

`eq[1, A332813(floor(2/acot(n))-n)]`
-/

namespace A332821.P11102096472646930497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332813 (⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A332821.P11102096472646930497

/-! ## A332821.P4625947509974349594

`lt[1, A332813(A028310(n)²)]`
-/

namespace A332821.P4625947509974349594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332813 (A028310 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A332821.P4625947509974349594

/-! ## A332821.P15588283469957962087

`lt[1, A332813(A028310(2*n))]`
-/

namespace A332821.P15588283469957962087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332813 (A028310 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A332821.P15588283469957962087

/-! ## A332821.P15030394905801480177

`eq[3, A000032(a(A332813(n)))]` with `a(0)=0`
-/

namespace A332821.P15030394905801480177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000032 (f2 (A332813 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A332821.P15030394905801480177

/-!
# A332822: One part of a 3-way classification of the positive integers. Numbers n for which A048675(n) == 2 (mod 3).

The programs for A332822, there is no canonical definition to state claims against.
-/

/-! ## A332822.P3634464349872591567

`lt[sqrt(a(A332813(n))), 2]` with `a(0)=16`
-/

namespace A332822.P3634464349872591567
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [16] fun n f1 =>
  Real.sqrt (f1 (A332813 n).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A332822.P3634464349872591567

/-! ## A332822.P7473437959163735310

`lt[A332823(1+n), 0]+1`
-/

namespace A332822.P7473437959163735310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332823 (1 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A332822.P7473437959163735310

/-! ## A332822.P12477748971028596280

`lt[1, A332813(n+1)]+1`
-/

namespace A332822.P12477748971028596280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332813 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A332822.P12477748971028596280

/-! ## A332822.P2701374018215910780

`eq[2, A332813(n+2)]+2`
-/

namespace A332822.P2701374018215910780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332813 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A332822.P2701374018215910780

/-! ## A332822.P12696568582983184022

`eq[1, A353350(2*(n+1))]+1`
-/

namespace A332822.P12696568582983184022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353350 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A332822.P12696568582983184022

/-! ## A332822.P2318580838070639966

`eq[2, A332813(floor(2/acot(n))-n)]`
-/

namespace A332822.P2318580838070639966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332813 (⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A332822.P2318580838070639966

/-! ## A332822.P11677542659158445248

`eq[1, A332823(2*(n+2))+1]+2`
-/

namespace A332822.P11677542659158445248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332823 (2 * (n + 2)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A332822.P11677542659158445248

/-! ## A332822.P4300135216220396737

`lt[1, A332813(A028310(n))]`
-/

namespace A332822.P4300135216220396737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332813 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A332822.P4300135216220396737

/-! ## A332822.P11815631666021667229

`lt[3, A000032(a(A332813(n)))]` with `a(0)=0`
-/

namespace A332822.P11815631666021667229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000032 (f2 (A332813 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A332822.P11815631666021667229

/-! ## A332822.P1236459047076291178

`lt[3, A000040(a(A332813(n)))]` with `a(0)=1`
-/

namespace A332822.P1236459047076291178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000040 (f2 (A332813 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A332822.P1236459047076291178

/-!
# A332823: A 3-way classification indicator generated by the products of two consecutive primes and the cubes of primes. a(n) is -1, 0, or 1 such that a(n) == A048675(n) (mod 3).

The programs for A332823, the canonical program `A332823.P6707942267644391447` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332823 has offset 1).

The definition of A332823 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A332823.P18384993690897331310

`A102283(A067029(n+1)*(2-A000035(A055396(n+1)))+a(A028234(n+1)-1))` with `a(0)=0, a(1)=1`
-/

namespace A332823.P18384993690897331310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A102283 (A067029 (n + 1) * (2 - A000035 (A055396 (n + 1)).toNat) + a (A028234 (n + 1) - 1).toNat).toNat

end

end A332823.P18384993690897331310

namespace A332823

/-- `A102283(A067029(n+1)*(2-A000035(A055396(n+1)))+a(A028234(n+1)-1))` -/
def P18384993690897331310.Spec : Prop :=
  ∀ n, P18384993690897331310.a n = A332823 (n + 1)

end A332823

/-! ## A332823.P13383877457692400153

`A332814(A332462(n+1))`
-/

namespace A332823.P13383877457692400153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332814 (A332462 (n + 1)).toNat

end

end A332823.P13383877457692400153

namespace A332823

/-- `A332814(A332462(n+1))` -/
def P13383877457692400153.Spec : Prop :=
  ∀ n, P13383877457692400153.a n = A332823 (n + 1)

end A332823

/-! ## A332823.P6707942267644391447

`A102283(A048675(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A332823

/-- `A102283(A048675(n+1))` -/
def P6707942267644391447.Spec : Prop :=
  ∀ n, P6707942267644391447.a n = A332823 (n + 1)

theorem P6707942267644391447.correct : P6707942267644391447.Spec := by
  intro n
  simp only [A332823, Nat.add_sub_cancel]

end A332823

/-! ## A332823.P17646662738177154157

`A332813(2*(n+1))-1`
-/

namespace A332823.P17646662738177154157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332813 (2 * (n + 1)) - 1

end

end A332823.P17646662738177154157

namespace A332823

/-- `A332813(2*(n+1))-1` -/
def P17646662738177154157.Spec : Prop :=
  ∀ n, P17646662738177154157.a n = A332823 (n + 1)

end A332823

/-! ## A332823.P332500145949123232

`floor(acot(1-A332813(n+1)))`
-/

namespace A332823.P332500145949123232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (1 - A332813 (n + 1) : ℝ)⌋

end

end A332823.P332500145949123232

namespace A332823

/-- `floor(acot(1-A332813(n+1)))` -/
def P332500145949123232.Spec : Prop :=
  ∀ n, P332500145949123232.a n = A332823 (n + 1)

end A332823

/-! ## A332823.P13613700341314327091

`A353350(3*(n+1))-A353350(2*(n+1))`
-/

namespace A332823.P13613700341314327091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353350 (3 * (n + 1)) - A353350 (2 * (n + 1))

end

end A332823.P13613700341314327091

namespace A332823

/-- `A353350(3*(n+1))-A353350(2*(n+1))` -/
def P13613700341314327091.Spec : Prop :=
  ∀ n, P13613700341314327091.a n = A332823 (n + 1)

end A332823

/-! ## A332823.P373087248545308363

`∑{d}[n+1, A008683(#)*A353354((n+1)/#)]`
-/

namespace A332823.P373087248545308363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A353354 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332823.P373087248545308363

namespace A332823

/-- `∑{d}[n+1, A008683(#)*A353354((n+1)/#)]` -/
def P373087248545308363.Spec : Prop :=
  ∀ n, P373087248545308363.a n = A332823 (n + 1)

end A332823

/-! ## A332823.P12778519428069224266

`A163532(A000040(gcd(n, n+1))*A332813(n+1))`
-/

namespace A332823.P12778519428069224266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163532 (A000040 (Nat.gcd n (n + 1)) * A332813 (n + 1)).toNat

end

end A332823.P12778519428069224266

namespace A332823

/-- `A163532(A000040(gcd(n, n+1))*A332813(n+1))` -/
def P12778519428069224266.Spec : Prop :=
  ∀ n, P12778519428069224266.a n = A332823 (n + 1)

end A332823

/-! ## A332823.P6895562786156638402

`A102283(A001222((n+1)*A248101(n+1)))`
-/

namespace A332823.P6895562786156638402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A001222 ((n + 1 : ℤ) * A248101 (n + 1)).toNat).toNat

end

end A332823.P6895562786156638402

namespace A332823

/-- `A102283(A001222((n+1)*A248101(n+1)))` -/
def P6895562786156638402.Spec : Prop :=
  ∀ n, P6895562786156638402.a n = A332823 (n + 1)

end A332823

/-! ## A332823.P17878747307404858911

`1-A329903(2*A332462(n+1))`
-/

namespace A332823.P17878747307404858911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A329903 (2 * A332462 (n + 1)).toNat

end

end A332823.P17878747307404858911

namespace A332823

/-- `1-A329903(2*A332462(n+1))` -/
def P17878747307404858911.Spec : Prop :=
  ∀ n, P17878747307404858911.a n = A332823 (n + 1)

end A332823

/-!
# A332824: a(n) = Product_{d|n} A019565(phi(d)), where phi is Euler totient function A000010.

The programs for A332824, there is no canonical definition to state claims against.
-/

/-! ## A332824.P3995307497976322347

`A318834(n+1)*A332825(n+1)`
-/

namespace A332824.P3995307497976322347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318834 (n + 1) * A332825 (n + 1)

end

end A332824.P3995307497976322347

/-! ## A332824.P4336345642324088961

`∏{d}[1+n, A332825(#)]`
-/

namespace A332824.P4336345642324088961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A332825 d

end

end A332824.P4336345642324088961

/-! ## A332824.P16008953563759359391

`∏{d}[n+1, A019565(A000010(#))]`
-/

namespace A332824.P16008953563759359391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A019565 (A000010 d).toNat

end

end A332824.P16008953563759359391

/-! ## A332824.P9992455332140527129

`A019565(Δ[A002088(n)])*A318834(n+1)`
-/

namespace A332824.P9992455332140527129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (f1 (n + 1) - f1 n).toNat * A318834 (n + 1)

end

end A332824.P9992455332140527129

/-! ## A332824.P17127785672538705916

`A019565(A000010(n+1))*A318834(n+1)`
-/

namespace A332824.P17127785672538705916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A000010 (n + 1)).toNat * A318834 (n + 1)

end

end A332824.P17127785672538705916

/-!
# A332825: a(n) = A019565(phi(n)).

The programs for A332825, there is no canonical definition to state claims against.
-/

/-! ## A332825.P6396882644627850939

`A019565(A000010(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332825.P6396882644627850939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A000010 (n + 1)).toNat

end

end A332825.P6396882644627850939

/-! ## A332825.P3590730155100768658

`A332824(n+1)/A318834(n+1)`
-/

namespace A332825.P3590730155100768658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332824 (n + 1) : ℚ) / (A318834 (n + 1) : ℚ)

end

end A332825.P3590730155100768658

/-! ## A332825.P10140314992042467776

`A019565((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A332825.P10140314992042467776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

end

end A332825.P10140314992042467776

/-! ## A332825.P6825918264910430072

`A019565(Δ[A002088(n)])`
-/

namespace A332825.P6825918264910430072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (f1 (n + 1) - f1 n).toNat

end

end A332825.P6825918264910430072

/-! ## A332825.P5503825646516399366

`A019565(Δ[A005728(n)])`
-/

namespace A332825.P5503825646516399366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (f1 (n + 1) - f1 n).toNat

end

end A332825.P5503825646516399366

/-! ## A332825.P15972137435019768460

`A019565(A349137(Δ[n²]))`
-/

namespace A332825.P15972137435019768460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A332825.P15972137435019768460

/-! ## A332825.P3084081407215215100

`A019565(sqrt(A127473(n+1)))`
-/

namespace A332825.P3084081407215215100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (SequenceMachineLib.roundAway (Real.sqrt (A127473 (n + 1) : ℝ))).toNat

end

end A332825.P3084081407215215100

/-! ## A332825.P10689497213731452677

`A019565(Δ[A100449(n)/4])`
-/

namespace A332825.P10689497213731452677
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100449 n : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A332825.P10689497213731452677

/-! ## A332825.P14500386708991494435

`A019565(A039649(n+1)-1)`
-/

namespace A332825.P14500386708991494435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A039649 (n + 1) - 1).toNat

end

end A332825.P14500386708991494435

/-! ## A332825.P1411040540777521557

`A019565(n-A219428(n+1))`
-/

namespace A332825.P1411040540777521557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 ((n : ℤ) - A219428 (n + 1)).toNat

end

end A332825.P1411040540777521557

/-! ## A332825.P14182014404926481187

`A019565(1-A051953(n+1)+n)`
-/

namespace A332825.P14182014404926481187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (1 - A051953 (n + 1) + (n : ℤ)).toNat

end

end A332825.P14182014404926481187

/-! ## A332825.P14995684912259691747

`A019565(A002618(n+1)/(n+1))`
-/

namespace A332825.P14995684912259691747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (SequenceMachineLib.roundAway ((A002618 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A332825.P14995684912259691747

/-! ## A332825.P9446582077827918692

`A339809(n+1-A051953(n+1))+1`
-/

namespace A332825.P9446582077827918692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 ((n + 1 : ℤ) - A051953 (n + 1)).toNat + 1

end

end A332825.P9446582077827918692

/-! ## A332825.P14093013138926314979

`A303760(A303768((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]))`
-/

namespace A332825.P14093013138926314979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303760 (A303768 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat).toNat

end

end A332825.P14093013138926314979

/-! ## A332825.P2383276408056146059

`A019565(A002088(n+1)-A002088(n))`
-/

namespace A332825.P2383276408056146059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A002088 (n + 1) - A002088 n).toNat

end

end A332825.P2383276408056146059

/-! ## A332825.P6569527565538533475

`A019565(n-∑{#}[n, 1-floor(1/gcd(n+1, #))]+1)`
-/

namespace A332825.P6569527565538533475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 ((n : ℤ) - ∑ k ∈ Finset.range (f1 n + 1), (1 - ⌊1 / (Nat.gcd (n + 1) k : ℚ)⌋) + 1).toNat

end

end A332825.P6569527565538533475

/-! ## A332825.P16197309410983393070

`A336322(A048848(n+1))`
-/

namespace A332825.P16197309410983393070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336322 (A048848 (n + 1)).toNat

end

end A332825.P16197309410983393070

/-! ## A332825.P18357935355352244352

`A019565(A282634(∑[n]+1))`
-/

namespace A332825.P18357935355352244352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A282634 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A332825.P18357935355352244352

/-!
# A332827: Lexicographically earliest infinite sequence such that a(i) = a(j) => f(i) = f(j), where f(n) = A003557(A332824(n)) for all other numbers, except f(1) = 0.

The programs for A332827, there is no canonical definition to state claims against.
-/

/-! ## A332827.P13384966730912381721

`gcd(A151622(3*n+1), A325811(n+1))`
-/

namespace A332827.P13384966730912381721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151622 (3 * n + 1)) (A325811 (n + 1))

end

end A332827.P13384966730912381721

/-! ## A332827.P15732940448002742395

`gcd(A151818(A091204(n)), A325811(n+1))`
-/

namespace A332827.P15732940448002742395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151818 (A091204 n).toNat) (A325811 (n + 1))

end

end A332827.P15732940448002742395

/-! ## A332827.P5886748961582224398

`A325811(n+1)/A325825(A262472(n+1))`
-/

namespace A332827.P5886748961582224398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325811 (n + 1) : ℚ) / (A325825 (A262472 (n + 1)).toNat : ℚ)

end

end A332827.P5886748961582224398

/-! ## A332827.P13674042622322203252

`A325811(n+1)%A099149(A125101(n+1))`
-/

namespace A332827.P13674042622322203252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325811 (n + 1)) (A099149 (A125101 (n + 1)).toNat)

end

end A332827.P13674042622322203252

/-! ## A332827.P18248743527435808181

`A325811(A077168(n))`
-/

namespace A332827.P18248743527435808181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325811 (A077168 n).toNat

end

end A332827.P18248743527435808181

/-!
# A332828: Expansion of (x + x^2 + x^6 - x^7)/(1 - x^2 + x^4 - x^6 + x^8) in powers of x.

The programs for A332828, the canonical program `A332828.P2773212519312207886` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332828 has offset 0).

The definition of A332828 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+x^2+x^6-x^7)/(1-x^2+x^4-x^6+x^8))` (program `A332828.P2773212519312207886`, by `A332828.P2773212519312207886.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A332828.P2773212519312207886

`ogf((x+x^2+x^6-x^7)/(1-x^2+x^4-x^6+x^8))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A332828

/-- `ogf((x+x^2+x^6-x^7)/(1-x^2+x^4-x^6+x^8))` -/
def P2773212519312207886.Spec : Prop :=
  ∀ n, P2773212519312207886.a n = A332828 n

theorem P2773212519312207886.correct : P2773212519312207886.Spec := by
  intro n
  simp only [A332828]

end A332828

/-!
# A332829: Number of compositions of n such that the difference between adjacent parts is at least two.

The programs for A332829, there is no canonical definition to state claims against.
-/

/-! ## A332829.P15729598361503893364

`A000196(A000055(n+3))-A268374(3*n+1)`
-/

namespace A332829.P15729598361503893364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000055 (n + 3)).toNat - A268374 (3 * n + 1)

end

end A332829.P15729598361503893364

/-! ## A332829.P247210699285328461

`A291294(n+1)-A003056(A291294(n+1))`
-/

namespace A332829.P247210699285328461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291294 (n + 1) - A003056 (A291294 (n + 1)).toNat

end

end A332829.P247210699285328461

/-! ## A332829.P12583374506528534505

`A028785(A278706(n))-A003056(A291294(n+1))`
-/

namespace A332829.P12583374506528534505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028785 (A278706 n).toNat - A003056 (A291294 (n + 1)).toNat

end

end A332829.P12583374506528534505

/-! ## A332829.P12299567427638945249

`A056556(A089880(n))`
-/

namespace A332829.P12299567427638945249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A089880 n).toNat

end

end A332829.P12299567427638945249

/-! ## A332829.P815431880370719599

`A105224(A302919(n+1))`
-/

namespace A332829.P815431880370719599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A302919 (n + 1)).toNat

end

end A332829.P815431880370719599

/-!
# A332831: Numbers whose unsorted prime signature is neither weakly increasing nor weakly decreasing.

The programs for A332831, there is no canonical definition to state claims against.
-/

/-! ## A332831.P15058888110457873851

`∩[A071365(n+1), A112769(n+1)]`
-/

namespace A332831.P15058888110457873851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332831.P15058888110457873851

/-! ## A332831.P2850569513458520639

`∪[A332282(n+1), A332642(n+1)]`
-/

namespace A332831.P2850569513458520639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332642 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332831.P2850569513458520639

/-! ## A332831.P5040054241166284829

`A103653(A043318(n+1))`
-/

namespace A332831.P5040054241166284829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103653 (A043318 (n + 1)).toNat

end

end A332831.P5040054241166284829

/-! ## A332831.P7095173179150261557

`A103653(A044915(n+1))`
-/

namespace A332831.P7095173179150261557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103653 (A044915 (n + 1)).toNat

end

end A332831.P7095173179150261557

/-! ## A332831.P17176395197483534612

`A103653(A055647(n+1))`
-/

namespace A332831.P17176395197483534612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103653 (A055647 (n + 1)).toNat

end

end A332831.P17176395197483534612

/-!
# A332832: Heinz numbers of integer partitions whose negated first differences (assuming the last part is zero) are not unimodal.

The programs for A332832, there is no canonical definition to state claims against.
-/

/-! ## A332832.P10862002559836754928

`∪[A065201(n+1), A083255(n+1)]`
-/

namespace A332832.P10862002559836754928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332832.P10862002559836754928

/-! ## A332832.P9704546033864842752

`∪[A065201(n+1), A168355(n+1)]`
-/

namespace A332832.P9704546033864842752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332832.P9704546033864842752

/-! ## A332832.P1123505653959379956

`∪[A079814(2*n+5), A065201(n+1)]`
-/

namespace A332832.P1123505653959379956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079814 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332832.P1123505653959379956

/-!
# A332833: Number of compositions of n whose run-lengths are neither weakly increasing nor weakly decreasing.

The programs for A332833, there is no canonical definition to state claims against.
-/

/-! ## A332833.P1817100522783380734

`ceil(2^(n-1))-A332835(n)`
-/

namespace A332833.P1817100522783380734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - A332835 n

end

end A332833.P1817100522783380734

/-! ## A332833.P2740080976321465517

`A288133(n+1)-(A332835(n)+n)`
-/

namespace A332833.P2740080976321465517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288133 (n + 1) - (A332835 n + (n : ℤ))

end

end A332833.P2740080976321465517

/-! ## A332833.P12779237449009948639

`A001523(n)+A115981(n)-A332835(n)`
-/

namespace A332833.P12779237449009948639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001523 n + (A115981 n - A332835 n)

end

end A332833.P12779237449009948639

/-! ## A332833.P13022364626203892425

`(A000079(n)-A332835(n))%A157823(n)`
-/

namespace A332833.P13022364626203892425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n - A332835 n) (A157823 n)

end

end A332833.P13022364626203892425

/-! ## A332833.P4099641085615470496

`(A129952(n+1)-A332835(n))%A129952(n)`
-/

namespace A332833.P4099641085615470496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129952 (n + 1) - A332835 n) (A129952 n)

end

end A332833.P4099641085615470496

/-!
# A332834: Number of compositions of n that are neither weakly increasing nor weakly decreasing.

The programs for A332834, there is no canonical definition to state claims against.
-/

/-! ## A332834.P8730897950223177703

`A056823(n)-A144300(A028310(n))`
-/

namespace A332834.P8730897950223177703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056823 n - A144300 (A028310 n).toNat

end

end A332834.P8730897950223177703

/-! ## A332834.P91149595334969371

`A011782(n)-(A167934(n)+A000065(n))`
-/

namespace A332834.P91149595334969371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - (A167934 n + A000065 n)

end

end A332834.P91149595334969371

/-! ## A332834.P5815194922055983347

`A056469(n)-(A167934(n)+A052810(n))`
-/

namespace A332834.P5815194922055983347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n - (A167934 n + A052810 n)

end

end A332834.P5815194922055983347

/-! ## A332834.P13233925698849537909

`A011782(n)-(A194805(n)+A167928(n))`
-/

namespace A332834.P13233925698849537909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - (A194805 n + A167928 n)

end

end A332834.P13233925698849537909

/-! ## A332834.P9572629693269050458

`A011782(n)-(A218004(n)+A167930(n))`
-/

namespace A332834.P9572629693269050458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - (A218004 n + A167930 n)

end

end A332834.P9572629693269050458

/-! ## A332834.P6573405107416982282

`Δ[A131577(n)]-(A194805(n)+A167928(n))`
-/

namespace A332834.P6573405107416982282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A194805 n + A167928 n)

end

end A332834.P6573405107416982282

/-!
# A332835: Number of compositions of n whose run-lengths are either weakly increasing or weakly decreasing.

The programs for A332835, there is no canonical definition to state claims against.
-/

/-! ## A332835.P9738311349751645841

`2*A332836(n)-A329738(n)`
-/

namespace A332835.P9738311349751645841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A332836 n - A329738 n

end

end A332835.P9738311349751645841

/-! ## A332835.P905025457403938599

`ceil(2^(n-1))-A332833(n)`
-/

namespace A332835.P905025457403938599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - A332833 n

end

end A332835.P905025457403938599

/-! ## A332835.P10361461124079661242

`abs(A011782(n)-A332833(n))`
-/

namespace A332835.P10361461124079661242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011782 n - A332833 n|

end

end A332835.P10361461124079661242

/-! ## A332835.P10922208030526158301

`A332726(n)+A332727(n)-A332833(n)`
-/

namespace A332835.P10922208030526158301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332726 n + (A332727 n - A332833 n)

end

end A332835.P10922208030526158301

/-! ## A332835.P9178012438928806095

`A332836(n)+A332871(n)-A332833(n)`
-/

namespace A332835.P9178012438928806095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332836 n + (A332871 n - A332833 n)

end

end A332835.P9178012438928806095

/-!
# A332836: Number of compositions of n whose run-lengths are weakly increasing.

The programs for A332836, there is no canonical definition to state claims against.
-/

/-! ## A332836.P12873170005034875867

`(A332835(n)+A329738(n))/2`
-/

namespace A332836.P12873170005034875867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332835 n + A329738 n : ℚ) / 2

end

end A332836.P12873170005034875867

/-! ## A332836.P6213822499537751182

`ceil(2^(n-1))-A332871(round(sqrt(n²+1)))`
-/

namespace A332836.P6213822499537751182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - A332871 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A332836.P6213822499537751182

/-! ## A332836.P11369206869576992409

`abs(A011782(n)-A332871(n))`
-/

namespace A332836.P11369206869576992409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011782 n - A332871 n|

end

end A332836.P11369206869576992409

/-! ## A332836.P73374325698138037

`A332726(n)+A332727(n)-A332871(n)`
-/

namespace A332836.P73374325698138037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332726 n + (A332727 n - A332871 n)

end

end A332836.P73374325698138037

/-! ## A332836.P14108500415573853172

`(A011782(n)-A332871(n))/ceil(1/A000041(n))`
-/

namespace A332836.P14108500415573853172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 n - A332871 n : ℚ) / (⌈1 / (A000041 n : ℚ)⌉ : ℚ)

end

end A332836.P14108500415573853172

/-! ## A332836.P15412975515995749113

`floor(A000225(n)/2)-A332871(n)+1`
-/

namespace A332836.P15412975515995749113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000225 n : ℚ) / 2⌋ - A332871 n + 1

end

end A332836.P15412975515995749113

/-!
# A332838: Numbers k such that -tau(k)^2 == tau(k) mod k where tau = A000005.

The programs for A332838, there is no canonical definition to state claims against.
-/

/-! ## A332838.P9222544574334985269

`lt[A002378(A000005(n+1))%(n+1), 1]+1`
-/

namespace A332838.P9222544574334985269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002378 (A000005 (n + 1)).toNat) (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A332838.P9222544574334985269

/-! ## A332838.P3242399635568836678

`record[A052126(A307557(n))]`
-/

namespace A332838.P3242399635568836678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A307557 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332838.P3242399635568836678

/-! ## A332838.P10274265533634954424

`A280584(A094372(n+1))`
-/

namespace A332838.P10274265533634954424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280584 (A094372 (n + 1)).toNat

end

end A332838.P10274265533634954424

/-!
# A332840: Number of fixed-point free involutions in a fixed Sylow 2-subgroup of the symmetric group of degree 2n.

The programs for A332840, there is no canonical definition to state claims against.
-/

/-! ## A332840.P17124725596422858489

`A332869(floor(n/2))`
-/

namespace A332840.P17124725596422858489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332869 ⌊(n : ℚ) / 2⌋.toNat

end

end A332840.P17124725596422858489

/-! ## A332840.P15289360937278398455

`or(1, A332869(A004526(n)))`
-/

namespace A332840.P15289360937278398455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A332869 (A004526 n).toNat)

end

end A332840.P15289360937278398455

/-! ## A332840.P14467029534148344032

`gcd(2, A022166(n))*A332869(A004526(n))`
-/

namespace A332840.P14467029534148344032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A022166 n) : ℤ) * A332869 (A004526 n).toNat

end

end A332840.P14467029534148344032

/-! ## A332840.P16905615503662240596

`gcd(5, A000032(n))*A332869(A004526(n))`
-/

namespace A332840.P16905615503662240596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 5 (A000032 n) : ℤ) * A332869 (A004526 n).toNat

end

end A332840.P16905615503662240596

/-! ## A332840.P7226911402366784370

`A332869(A004526(n))%A000032(2*n)`
-/

namespace A332840.P7226911402366784370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332869 (A004526 n).toNat) (A000032 (2 * n))

end

end A332840.P7226911402366784370

/-! ## A332840.P7408991057853636052

`A007318(∑[n])*A332869(A004526(n))`
-/

namespace A332840.P7408991057853636052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A332869 (A004526 n).toNat

end

end A332840.P7408991057853636052

/-!
# A332842: Initial digit of n-th superfactorial.

The programs for A332842, there is no canonical definition to state claims against.
-/

/-! ## A332842.P6217621580999608232

`A268059(A283254(n)+n)`
-/

namespace A332842.P6217621580999608232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268059 (A283254 n + (n : ℤ)).toNat

end

end A332842.P6217621580999608232

/-! ## A332842.P425275813922148981

`gcd(A000120(A217379(n+1)), A217390(n+1))`
-/

namespace A332842.P425275813922148981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000120 (A217379 (n + 1)).toNat) (A217390 (n + 1))

end

end A332842.P425275813922148981

/-! ## A332842.P12492539340655454739

`A237271(A008307(n+5)*A109955(3*n+1))`
-/

namespace A332842.P12492539340655454739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A008307 (n + 5) * A109955 (3 * n + 1)).toNat

end

end A332842.P12492539340655454739

/-!
# A332844: Dirichlet g.f.: zeta(s) * zeta(s-1) * zeta(2*s).

The programs for A332844, the canonical program `A332844.P2225322885813015674` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332844 has offset 1).

The definition of A332844 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A332844.P13946362363456606963

`∑{d}[n+1, A076752(#)]`
-/

namespace A332844.P13946362363456606963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A076752 d

end

end A332844.P13946362363456606963

namespace A332844

/-- `∑{d}[n+1, A076752(#)]` -/
def P13946362363456606963.Spec : Prop :=
  ∀ n, P13946362363456606963.a n = A332844 (n + 1)

end A332844

/-! ## A332844.P9896408899708245672

`∑{d}[n+1, A046951((n+1)/#)*#]`
-/

namespace A332844.P9896408899708245672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (d : ℤ)

end

end A332844.P9896408899708245672

namespace A332844

/-- `∑{d}[n+1, A046951((n+1)/#)*#]` -/
def P9896408899708245672.Spec : Prop :=
  ∀ n, P9896408899708245672.a n = A332844 (n + 1)

end A332844

/-! ## A332844.P2225322885813015674

`∑{d}[n+1, A010052((n+1)/#)*A000203(#)]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A332844

/-- `∑{d}[n+1, A010052((n+1)/#)*A000203(#)]` -/
def P2225322885813015674.Spec : Prop :=
  ∀ n, P2225322885813015674.a n = A332844 (n + 1)

theorem P2225322885813015674.correct : P2225322885813015674.Spec := by
  intro n
  simp only [A332844, Nat.add_sub_cancel]

end A332844

/-! ## A332844.P7544850285820813342

`∑{d}[n+1, A124315((n+1)/#)*A000010(#)]`
-/

namespace A332844.P7544850285820813342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A124315 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A000010 d

end

end A332844.P7544850285820813342

namespace A332844

/-- `∑{d}[n+1, A124315((n+1)/#)*A000010(#)]` -/
def P7544850285820813342.Spec : Prop :=
  ∀ n, P7544850285820813342.a n = A332844 (n + 1)

end A332844

/-! ## A332844.P7541936295168557228

`∑{d}[n+1, A206369((n+1)/#)*A000005(#)]`
-/

namespace A332844.P7541936295168557228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A206369 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A000005 d

end

end A332844.P7541936295168557228

namespace A332844

/-- `∑{d}[n+1, A206369((n+1)/#)*A000005(#)]` -/
def P7541936295168557228.Spec : Prop :=
  ∀ n, P7541936295168557228.a n = A332844 (n + 1)

end A332844

/-! ## A332844.P15704850100828171173

`A344442(n+1)+1+n`
-/

namespace A332844.P15704850100828171173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344442 (n + 1) + 1 + (n : ℤ)

end

end A332844.P15704850100828171173

namespace A332844

/-- `A344442(n+1)+1+n` -/
def P15704850100828171173.Spec : Prop :=
  ∀ n, P15704850100828171173.a n = A332844 (n + 1)

theorem P15704850100828171173.correct : P15704850100828171173.Spec := by
  intro n
  simp only [A332844, Nat.add_sub_cancel, A332844.P15704850100828171173.a, A332844.P2225322885813015674.f1, A332844.P2225322885813015674.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A344442, A344442.P16917334550170264371.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A332844

/-! ## A332844.P17019517797793676195

`A347091(n+1)-A347090(n+1)`
-/

namespace A332844.P17019517797793676195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347091 (n + 1) - A347090 (n + 1)

end

end A332844.P17019517797793676195

namespace A332844

/-- `A347091(n+1)-A347090(n+1)` -/
def P17019517797793676195.Spec : Prop :=
  ∀ n, P17019517797793676195.a n = A332844 (n + 1)

theorem P17019517797793676195.correct : P17019517797793676195.Spec := by
  intro n
  simp only [A332844, Nat.add_sub_cancel, A332844.P17019517797793676195.a, A332844.P2225322885813015674.f1, A332844.P2225322885813015674.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A347090, A347090.P2915293843078708431.f1, A347090.P2915293843078708431.a, A347091, A347091.P10465094588197524565.a, A046692, A046692.P11257548500229714198.f1, A046692.P11257548500229714198.a, A271102, A271102.P3010353493992336101.f1, A271102.P3010353493992336101.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A332844

/-! ## A332844.P9084608405740278962

`∑{d}[n+1, A007429(#)*A008836((n+1)/#)]`
-/

namespace A332844.P9084608405740278962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A008836 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332844.P9084608405740278962

namespace A332844

/-- `∑{d}[n+1, A007429(#)*A008836((n+1)/#)]` -/
def P9084608405740278962.Spec : Prop :=
  ∀ n, P9084608405740278962.a n = A332844 (n + 1)

end A332844

/-! ## A332844.P5037386857603943292

`∑{d}[n+1, A007913(#)*A035316((n+1)/#)]`
-/

namespace A332844.P5037386857603943292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007913 d * A035316 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332844.P5037386857603943292

namespace A332844

/-- `∑{d}[n+1, A007913(#)*A035316((n+1)/#)]` -/
def P5037386857603943292.Spec : Prop :=
  ∀ n, P5037386857603943292.a n = A332844 (n + 1)

end A332844

/-! ## A332844.P3310438783935556694

`∑{d}[n+1, A007425(#)*A074722((n+1)/#)]`
-/

namespace A332844.P3310438783935556694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A074722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332844.P3310438783935556694

namespace A332844

/-- `∑{d}[n+1, A007425(#)*A074722((n+1)/#)]` -/
def P3310438783935556694.Spec : Prop :=
  ∀ n, P3310438783935556694.a n = A332844 (n + 1)

end A332844

/-! ## A332844.P14859386165907537480

`∑{d}[n+1, A000010((n+1)/#)*A124315(#)]`
-/

namespace A332844.P14859386165907537480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A124315 d

end

end A332844.P14859386165907537480

namespace A332844

/-- `∑{d}[n+1, A000010((n+1)/#)*A124315(#)]` -/
def P14859386165907537480.Spec : Prop :=
  ∀ n, P14859386165907537480.a n = A332844 (n + 1)

end A332844

/-! ## A332844.P15967703551361893890

`∑{d}[n+1, A007430(#)*A158522((n+1)/#)]`
-/

namespace A332844.P15967703551361893890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007430 d * A158522 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332844.P15967703551361893890

namespace A332844

/-- `∑{d}[n+1, A007430(#)*A158522((n+1)/#)]` -/
def P15967703551361893890.Spec : Prop :=
  ∀ n, P15967703551361893890.a n = A332844 (n + 1)

end A332844

/-! ## A332844.P16424486047582358869

`∑{d}[n+1, A078429(#)*A092520((n+1)/#)]`
-/

namespace A332844.P16424486047582358869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078429 d * A092520 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332844.P16424486047582358869

namespace A332844

/-- `∑{d}[n+1, A078429(#)*A092520((n+1)/#)]` -/
def P16424486047582358869.Spec : Prop :=
  ∀ n, P16424486047582358869.a n = A332844 (n + 1)

end A332844

/-! ## A332844.P9121943434106840985

`∑{d}[n+1, A002131(#)*A326813((n+1)/#)]`
-/

namespace A332844.P9121943434106840985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002131 d * A326813 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332844.P9121943434106840985

namespace A332844

/-- `∑{d}[n+1, A002131(#)*A326813((n+1)/#)]` -/
def P9121943434106840985.Spec : Prop :=
  ∀ n, P9121943434106840985.a n = A332844 (n + 1)

end A332844

/-! ## A332844.P11577222047089891213

`∑{d}[n+1, A034761(#)*A323363((n+1)/#)]`
-/

namespace A332844.P11577222047089891213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034761 d * A323363 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332844.P11577222047089891213

namespace A332844

/-- `∑{d}[n+1, A034761(#)*A323363((n+1)/#)]` -/
def P11577222047089891213.Spec : Prop :=
  ∀ n, P11577222047089891213.a n = A332844 (n + 1)

end A332844

/-! ## A332844.P5563851115630311888

`∑{d}[n+1, A038712(#)*A328373((n+1)/#)]`
-/

namespace A332844.P5563851115630311888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038712 d * A328373 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332844.P5563851115630311888

namespace A332844

/-- `∑{d}[n+1, A038712(#)*A328373((n+1)/#)]` -/
def P5563851115630311888.Spec : Prop :=
  ∀ n, P5563851115630311888.a n = A332844 (n + 1)

end A332844

/-! ## A332844.P10550754567766251255

`∑{d}[n+1, A060724(#)*A329484((n+1)/#)]`
-/

namespace A332844.P10550754567766251255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060724 d * A329484 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332844.P10550754567766251255

namespace A332844

/-- `∑{d}[n+1, A060724(#)*A329484((n+1)/#)]` -/
def P10550754567766251255.Spec : Prop :=
  ∀ n, P10550754567766251255.a n = A332844 (n + 1)

end A332844

/-! ## A332844.P6864887153787470862

`∑{d}[n+1, A065704(#)*A335115((n+1)/#)]`
-/

namespace A332844.P6864887153787470862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065704 d * A335115 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332844.P6864887153787470862

namespace A332844

/-- `∑{d}[n+1, A065704(#)*A335115((n+1)/#)]` -/
def P6864887153787470862.Spec : Prop :=
  ∀ n, P6864887153787470862.a n = A332844 (n + 1)

end A332844

/-!
# A332845: a(n) = (-1)^omega(n) * Sum_{k=1..n} (-1)^omega(n/gcd(n, k)), where omega = A001221.

The programs for A332845, the canonical program `A332845.P10082072270735624864` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332845 has offset 1).

The definition of A332845 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332845.P10082072270735624864

`(-1)^A001221(n+1)*∑{d}[n+1, (-1)^A001221(#)*A000010(#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A332845

/-- `(-1)^A001221(n+1)*∑{d}[n+1, (-1)^A001221(#)*A000010(#)]` -/
def P10082072270735624864.Spec : Prop :=
  ∀ n, P10082072270735624864.a n = (A332845 (n + 1) : ℚ)

end A332845

/-! ## A332845.P12248937167506877775

`(-1)^A001221(n+1)*∑{#}[n, (-1)^A001221((n+1)/gcd(n+1, #))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332845.P12248937167506877775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A001221 (n + 1) : ℤ) * (∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ (A001221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.gcd (n + 1) k : ℚ))).toNat : ℤ))

end

end A332845.P12248937167506877775

namespace A332845

/-- `(-1)^A001221(n+1)*∑{#}[n, (-1)^A001221((n+1)/gcd(n+1, #))]` -/
def P12248937167506877775.Spec : Prop :=
  ∀ n, P12248937167506877775.a n = (A332845 (n + 1) : ℚ)

end A332845

/-! ## A332845.P14692915694369959227

`(-1)^A001221(n+1)*∑{#}[n, (-1)^A001221((n+1)/gcd(n+1, #+1))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332845.P14692915694369959227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A001221 (n + 1) : ℤ) * (∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ (A001221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.gcd (n + 1) (k + 1) : ℚ))).toNat : ℤ))

end

end A332845.P14692915694369959227

namespace A332845

/-- `(-1)^A001221(n+1)*∑{#}[n, (-1)^A001221((n+1)/gcd(n+1, #+1))]` -/
def P14692915694369959227.Spec : Prop :=
  ∀ n, P14692915694369959227.a n = (A332845 (n + 1) : ℚ)

end A332845

/-! ## A332845.P9529205208160552298

`∏{p}[n+1, #^val(n+1, #)-2]`
-/

namespace A332845.P9529205208160552298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((p ^ SequenceMachineLib.valuation (n + 1) p : ℤ) - 2)

end

end A332845.P9529205208160552298

namespace A332845

/-- `∏{p}[n+1, #^val(n+1, #)-2]` -/
def P9529205208160552298.Spec : Prop :=
  ∀ n, P9529205208160552298.a n = A332845 (n + 1)

end A332845

/-! ## A332845.P2817904327307993361

`A379119(n+1)-A008472(A000079(n))`
-/

namespace A332845.P2817904327307993361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379119 (n + 1) - A008472 (A000079 n).toNat

end

end A332845.P2817904327307993361

namespace A332845

/-- `A379119(n+1)-A008472(A000079(n))` -/
def P2817904327307993361.Spec : Prop :=
  ∀ n, P2817904327307993361.a n = A332845 (n + 1)

end A332845

/-!
# A332846: a(1) = 1; a(n+1) = Sum_{k=1..n} a(k) * ceiling(n/k).

The programs for A332846, there is no canonical definition to state claims against.
-/

/-! ## A332846.P9281098197990910881

`A345913(A232464(n))+A001519(n)`
-/

namespace A332846.P9281098197990910881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345913 (A232464 n).toNat + A001519 n

end

end A332846.P9281098197990910881

/-! ## A332846.P9378596067199919775

`A092423(n)-A188068(A092465(n))`
-/

namespace A332846.P9378596067199919775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092423 n - A188068 (A092465 n).toNat

end

end A332846.P9378596067199919775

/-! ## A332846.P14900120911461445363

`A003056(A027322(n))`
-/

namespace A332846.P14900120911461445363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A027322 n).toNat

end

end A332846.P14900120911461445363

/-!
# A332848: Primes p such that (3*p+q)/2, (p+3*q)/2, (3*q+r)/2 and (q+3*r)/2 are all prime, where q and r are the next primes after p.

The programs for A332848, there is no canonical definition to state claims against.
-/

/-! ## A332848.P12410077627066269669

`∩[A329151(n+1), A151799(A329151(n+1))]`
-/

namespace A332848.P12410077627066269669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (A329151 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332848.P12410077627066269669

/-!
# A332849: a(n) = prime(n)^prime(n+1) + prime(n) + prime(n+1).

The programs for A332849, the canonical program `A332849.P5328959665071373614` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332849 has offset 1).

The definition of A332849 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332849.P5328959665071373614

`A053089(n+1)+A001043(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A332849

/-- `A053089(n+1)+A001043(n+1)` -/
def P5328959665071373614.Spec : Prop :=
  ∀ n, P5328959665071373614.a n = A332849 (n + 1)

theorem P5328959665071373614.correct : P5328959665071373614.Spec := by
  intro n
  simp only [A332849, Nat.add_sub_cancel]

end A332849

/-! ## A332849.P10874718142471902292

`A000040(n+1)^A000040(n+2)+A000040(n+1)+A000040(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332849.P10874718142471902292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) ^ (A000040 (n + 2) : ℤ) + (A000040 (n + 1) : ℚ) + (A000040 (n + 2) : ℚ)

end

end A332849.P10874718142471902292

namespace A332849

/-- `A000040(n+1)^A000040(n+2)+A000040(n+1)+A000040(n+2)` -/
def P10874718142471902292.Spec : Prop :=
  ∀ n, P10874718142471902292.a n = (A332849 (n + 1) : ℚ)

end A332849

/-! ## A332849.P4091296668307173034

`A001043(n+1)+record[A006530(n+2)]^p?[2*n+1]`
-/

namespace A332849.P4091296668307173034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

end

end A332849.P4091296668307173034

namespace A332849

/-- `A001043(n+1)+record[A006530(n+2)]^p?[2*n+1]` -/
def P4091296668307173034.Spec : Prop :=
  ∀ n, P4091296668307173034.a n = A332849 (n + 1)

end A332849

/-! ## A332849.P6635931249838715741

`A001043(n+1)+record[A020639(n+2)]^p?[2*n+1]`
-/

namespace A332849.P6635931249838715741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

end

end A332849.P6635931249838715741

namespace A332849

/-- `A001043(n+1)+record[A020639(n+2)]^p?[2*n+1]` -/
def P6635931249838715741.Spec : Prop :=
  ∀ n, P6635931249838715741.a n = A332849 (n + 1)

end A332849

/-! ## A332849.P430233658466027727

`A000040(n+1)+A053089(n+1)+A000040(n+2)`
-/

namespace A332849.P430233658466027727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A053089 (n + 1) + A000040 (n + 2))

end

end A332849.P430233658466027727

namespace A332849

/-- `A000040(n+1)+A053089(n+1)+A000040(n+2)` -/
def P430233658466027727.Spec : Prop :=
  ∀ n, P430233658466027727.a n = A332849 (n + 1)

theorem P430233658466027727.correct : P430233658466027727.Spec := by
  intro n
  simp only [A332849, Nat.add_sub_cancel, A332849.P430233658466027727.a, A332849.P5328959665071373614.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A053089, A053089.P7340105326366583281.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A332849

/-!
# A332851: Number of entries in the second cycles of all permutations of [n] when cycles are ordered by decreasing lengths.

The programs for A332851, there is no canonical definition to state claims against.
-/

/-! ## A332851.P1463498972731510295

`A322384(2+∑[n+1])`
-/

namespace A332851.P1463498972731510295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (2 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A332851.P1463498972731510295

/-! ## A332851.P12102013967441070026

`record[A322384(n+round(sqrt(2*n))+1)]`
-/

namespace A332851.P12102013967441070026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 ((n : ℤ) + SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332851.P12102013967441070026

/-! ## A332851.P2403396427412433290

`record[gcd(A039991(n), A322384(n+1))]`
-/

namespace A332851.P2403396427412433290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A039991 n) (A322384 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332851.P2403396427412433290

/-! ## A332851.P2543793804467887085

`record[and(A318144(n), A322384(n+1))]`
-/

namespace A332851.P2543793804467887085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A318144 n) (A322384 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332851.P2543793804467887085

/-! ## A332851.P18272076266989799891

`record[or(A103452(n), A322384(n+1))]`
-/

namespace A332851.P18272076266989799891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A103452 n) (A322384 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332851.P18272076266989799891

/-!
# A332852: Number of entries in the third cycles of all permutations of [n] when cycles are ordered by decreasing lengths.

The programs for A332852, there is no canonical definition to state claims against.
-/

/-! ## A332852.P16331682256936507782

`A322384(∑[n+2]+4)`
-/

namespace A332852.P16331682256936507782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A332852.P16331682256936507782

/-! ## A332852.P981709655056881909

`gcd(A000038(n), A322384(A167614(n+1)))`
-/

namespace A332852.P981709655056881909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A322384 (A167614 (n + 1)).toNat)

end

end A332852.P981709655056881909

/-! ## A332852.P11874341860355916046

`lcm(A033999(n), A322384(A167614(n+1)))`
-/

namespace A332852.P11874341860355916046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A322384 (A167614 (n + 1)).toNat)

end

end A332852.P11874341860355916046

/-! ## A332852.P10429618044956568428

`or(A000007(n), A322384(A167614(n+1)))`
-/

namespace A332852.P10429618044956568428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A322384 (A167614 (n + 1)).toNat)

end

end A332852.P10429618044956568428

/-! ## A332852.P17532857131222719607

`A322384(A167614(n+1))%A232409(n+1)`
-/

namespace A332852.P17532857131222719607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322384 (A167614 (n + 1)).toNat) (A232409 (n + 1))

end

end A332852.P17532857131222719607

/-!
# A332853: Number of entries in the fourth cycles of all permutations of [n] when cycles are ordered by decreasing lengths.

The programs for A332853, there is no canonical definition to state claims against.
-/

/-! ## A332853.P15024262099803589558

`A322384(A052905(n)+9)`
-/

namespace A332853.P15024262099803589558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (A052905 n + 9).toNat

end

end A332853.P15024262099803589558

/-! ## A332853.P11664341735686340797

`A322384(A055999(n)+10)`
-/

namespace A332853.P11664341735686340797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (A055999 n + 10).toNat

end

end A332853.P11664341735686340797

/-! ## A332853.P11651654057389035715

`A322384(A167614(n+2)+1)`
-/

namespace A332853.P11651654057389035715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (A167614 (n + 2) + 1).toNat

end

end A332853.P11651654057389035715

/-! ## A332853.P1112593139431438396

`A322384(A167499(n+2)-1)`
-/

namespace A332853.P1112593139431438396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (A167499 (n + 2) - 1).toNat

end

end A332853.P1112593139431438396

/-! ## A332853.P13156676359555847613

`A322384(A167487(n+2)-3)`
-/

namespace A332853.P13156676359555847613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (A167487 (n + 2) - 3).toNat

end

end A332853.P13156676359555847613

/-! ## A332853.P16545071115663724141

`A322384(A000096(n+2)+5)`
-/

namespace A332853.P16545071115663724141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (A000096 (n + 2) + 5).toNat

end

end A332853.P16545071115663724141

/-! ## A332853.P18395297141701757163

`A322384(eq[2, A141169(n)]+1)`
-/

namespace A332853.P18395297141701757163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A332853.P18395297141701757163

/-!
# A332854: Number of entries in the fifth cycles of all permutations of [n] when cycles are ordered by decreasing lengths.

The programs for A332854, there is no canonical definition to state claims against.
-/

/-! ## A332854.P4646111655968821873

`A322384(A167499(n+3))`
-/

namespace A332854.P4646111655968821873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (A167499 (n + 3)).toNat

end

end A332854.P4646111655968821873

/-! ## A332854.P8637187477764057638

`A322384(A167614(n+3)+2)`
-/

namespace A332854.P8637187477764057638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (A167614 (n + 3) + 2).toNat

end

end A332854.P8637187477764057638

/-! ## A332854.P8711306301962249970

`A322384(A000217(n+4)+5)`
-/

namespace A332854.P8711306301962249970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (A000217 (n + 4) + 5).toNat

end

end A332854.P8711306301962249970

/-! ## A332854.P10239978738110540146

`A322384(A055998(n+2)+8)`
-/

namespace A332854.P10239978738110540146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (A055998 (n + 2) + 8).toNat

end

end A332854.P10239978738110540146

/-! ## A332854.P13005412518903394929

`A322384(A167487(n+2)+n+2)`
-/

namespace A332854.P13005412518903394929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (A167487 (n + 2) + (n + 2 : ℤ)).toNat

end

end A332854.P13005412518903394929

/-! ## A332854.P5286936251965664426

`A322384(A000124(n+5)-(n+1))`
-/

namespace A332854.P5286936251965664426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A332854.P5286936251965664426

/-!
# A332855: Number of entries in the sixth cycles of all permutations of [n] when cycles are ordered by decreasing lengths.

The programs for A332855, there is no canonical definition to state claims against.
-/

/-! ## A332855.P15717536527371130483

`A322384(A056115(n)+21)`
-/

namespace A332855.P15717536527371130483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (A056115 n + 21).toNat

end

end A332855.P15717536527371130483

/-! ## A332855.P12315975602612402918

`A322384(A167499(n+4)+1)`
-/

namespace A332855.P12315975602612402918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (A167499 (n + 4) + 1).toNat

end

end A332855.P12315975602612402918

/-! ## A332855.P5807218467655113921

`A322384(A000217(n+5)+6)`
-/

namespace A332855.P5807218467655113921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (A000217 (n + 5) + 6).toNat

end

end A332855.P5807218467655113921

/-! ## A332855.P9185836333451716900

`A322384(eq[6, A130270(n+1)])`
-/

namespace A332855.P9185836333451716900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A332855.P9185836333451716900

/-! ## A332855.P6355184457457179281

`A322384(eq[7, A131818(n+1)])`
-/

namespace A332855.P6355184457457179281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A332855.P6355184457457179281

/-!
# A332856: Number of entries in the seventh cycles of all permutations of [n] when cycles are ordered by decreasing lengths.

The programs for A332856, there is no canonical definition to state claims against.
-/

/-! ## A332856.P9841853041836511449

`A322384(A167487(n+5))`
-/

namespace A332856.P9841853041836511449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (A167487 (n + 5)).toNat

end

end A332856.P9841853041836511449

/-! ## A332856.P12508964815472147441

`A322384(A056119(n)+28)`
-/

namespace A332856.P12508964815472147441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (A056119 n + 28).toNat

end

end A332856.P12508964815472147441

/-! ## A332856.P9487286116412200356

`A322384(A167499(n+5)+2)`
-/

namespace A332856.P9487286116412200356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (A167499 (n + 5) + 2).toNat

end

end A332856.P9487286116412200356

/-! ## A332856.P13458676243681034506

`A322384(A027379(n+4)+10)`
-/

namespace A332856.P13458676243681034506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (A027379 (n + 4) + 10).toNat

end

end A332856.P13458676243681034506

/-! ## A332856.P12466859646491401811

`A322384(eq[8, A131818(n+1)])`
-/

namespace A332856.P12466859646491401811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A332856.P12466859646491401811

/-!
# A332857: Number of entries in the eighth cycles of all permutations of [n] when cycles are ordered by decreasing lengths.

The programs for A332857, there is no canonical definition to state claims against.
-/

/-! ## A332857.P13626514305358387042

`A322384(eq[13, A066657(n)])`
-/

namespace A332857.P13626514305358387042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A332857.P13626514305358387042

/-! ## A332857.P8248226249515588226

`A322384(A000096(n+6)+9)`
-/

namespace A332857.P8248226249515588226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (A000096 (n + 6) + 9).toNat

end

end A332857.P8248226249515588226

/-! ## A332857.P687684006581278132

`A322384(A000217(n+7)+8)`
-/

namespace A332857.P687684006581278132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (A000217 (n + 7) + 8).toNat

end

end A332857.P687684006581278132

/-! ## A332857.P4658562355153841531

`A322384(eq[9, A131818(n+1)])`
-/

namespace A332857.P4658562355153841531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A332857.P4658562355153841531

/-! ## A332857.P13836758602750963307

`A322384(eq[13, A141169(n)]+1)`
-/

namespace A332857.P13836758602750963307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A332857.P13836758602750963307

/-!
# A332858: Number of entries in the ninth cycles of all permutations of [n] when cycles are ordered by decreasing lengths.

The programs for A332858, there is no canonical definition to state claims against.
-/

/-! ## A332858.P4770795996388664855

`A322384(eq[17, A066657(n)])`
-/

namespace A332858.P4770795996388664855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A332858.P4770795996388664855

/-! ## A332858.P16685816379848994476

`A322384(eq[10, A131818(n+1)])`
-/

namespace A332858.P16685816379848994476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A332858.P16685816379848994476

/-! ## A332858.P14780111775302374602

`A322384(eq[10, A135223(n+1)])`
-/

namespace A332858.P14780111775302374602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A332858.P14780111775302374602

/-! ## A332858.P4781482027392228231

`A322384(A046691(n+7)-n+4)`
-/

namespace A332858.P4781482027392228231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (A046691 (n + 7) - (n : ℤ) + 4).toNat

end

end A332858.P4781482027392228231

/-! ## A332858.P11546703756682374825

`A322384(A000124(n+10)-10-xor(1, 2*n))`
-/

namespace A332858.P11546703756682374825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (A000124 (n + 10) - 10 - (Nat.xor 1 (2 * n) : ℤ)).toNat

end

end A332858.P11546703756682374825

/-!
# A332859: Number of entries in the tenth cycles of all permutations of [n] when cycles are ordered by decreasing lengths.

The programs for A332859, there is no canonical definition to state claims against.
-/

/-! ## A332859.P376517592228135806

`A322384(A000217(n+9)+10)`
-/

namespace A332859.P376517592228135806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (A000217 (n + 9) + 10).toNat

end

end A332859.P376517592228135806

/-! ## A332859.P5546543832321996389

`A322384(eq[10, A130270(n+1)])`
-/

namespace A332859.P5546543832321996389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A332859.P5546543832321996389

/-! ## A332859.P15794028472106655898

`A322384(eq[11, A131818(n+1)])`
-/

namespace A332859.P15794028472106655898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A332859.P15794028472106655898

/-! ## A332859.P10653372098225775039

`A322384(eq[11, A004736(n+1)]-A005843(n))`
-/

namespace A332859.P10653372098225775039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A005843 n).toNat

end

end A332859.P10653372098225775039

/-! ## A332859.P1381872506081949408

`A322384(eq[10, A256910(n)])`
-/

namespace A332859.P1381872506081949408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A332859.P1381872506081949408

/-!
# A332860: a(n) is the least prime p such that p+prime(n) has exactly n prime factors, counted with multiplicity.

The programs for A332860, there is no canonical definition to state claims against.
-/

/-! ## A332860.P2940950232924855613

`A174010(A321424(n)+A011782(n))`
-/

namespace A332860.P2940950232924855613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174010 (A321424 n + A011782 n).toNat

end

end A332860.P2940950232924855613

/-! ## A332860.P3334340188447998891

`A174010(or(A011782(n), A208243(n+5)))`
-/

namespace A332860.P3334340188447998891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174010 (Int.lor (A011782 n) (A208243 (n + 5))).toNat

end

end A332860.P3334340188447998891

/-!
# A332861: Primes p with the property that if q<p is the least part of a partition of p into primes, then p has at least one other prime partition with the same least part.

The programs for A332861, there is no canonical definition to state claims against.
-/

/-! ## A332861.P11899385715380906881

`A233134(A274384(n+1)%A180015(n+1))`
-/

namespace A332861.P11899385715380906881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233134 (Int.tmod (A274384 (n + 1)) (A180015 (n + 1))).toNat

end

end A332861.P11899385715380906881

/-!
# A332863: Total binary weight squared of all A005251(n) binary sequences of length n not containing any isolated 1's.

The programs for A332863, the canonical program `A332863.P15738836866367521469` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332863 has offset 0).

The definition of A332863 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332863.P15738836866367521469

`ogf((4x^2-7x^3+4x^4+3x^5-x^6)/(1-6x+15x^2-23x^3+27x^4-24x^5+16x^6-9x^7+3x^8-x^9))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A332863

/-- `ogf((4x^2-7x^3+4x^4+3x^5-x^6)/(1-6x+15x^2-23x^3+27x^4-24x^5+16x^6-9x^7+3x^8-x^9))` -/
def P15738836866367521469.Spec : Prop :=
  ∀ n, P15738836866367521469.a n = A332863 n

theorem P15738836866367521469.correct : P15738836866367521469.Spec := by
  intro n
  simp only [A332863]

end A332863

/-! ## A332863.P1702030080975696780

`∑{#}[n-1, (#+1)²*A097230(C(n+1, 2)+#+1)]`
-/

namespace A332863.P1702030080975696780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ((k + 1) ^ 2 : ℤ) * A097230 (Nat.choose (n + 1) 2 + (k + 1))

end

end A332863.P1702030080975696780

namespace A332863

/-- `∑{#}[n-1, (#+1)²*A097230(C(n+1, 2)+#+1)]` -/
def P1702030080975696780.Spec : Prop :=
  ∀ n, P1702030080975696780.a n = A332863 n

end A332863

/-!
# A332864: Lexicographically earliest sequence of positive integers with the property that the distance between the first appearance of n and the first appearance of n+1 is a(n).

The programs for A332864, there is no canonical definition to state claims against.
-/

/-! ## A332864.P1523115303013030442

`A339012(∑[record[A038208(n)]])`
-/

namespace A332864.P1523115303013030442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038208 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339012 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A332864.P1523115303013030442

/-! ## A332864.P13860728078489256039

`gcd(Δ[A303264(n+1)], A000267(n))`
-/

namespace A332864.P13860728078489256039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303264 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000267 n)

end

end A332864.P13860728078489256039

/-! ## A332864.P1847929997842301075

`gcd(A025581(A097332(n)), A094727(n+1))`
-/

namespace A332864.P1847929997842301075
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 (A097332 n).toNat) (A094727 (n + 1))

end

end A332864.P1847929997842301075

/-! ## A332864.P7820499285413200632

`A007318(A055570(2*n)+A007318(n+3))`
-/

namespace A332864.P7820499285413200632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A055570 (2 * n) + A007318 (n + 3)).toNat

end

end A332864.P7820499285413200632

/-! ## A332864.P17900968927420433000

`gcd(A070939(A341660(n+1)), A211785(n+1))`
-/

namespace A332864.P17900968927420433000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A070939 (A341660 (n + 1)).toNat) (A211785 (n + 1))

end

end A332864.P17900968927420433000

/-!
# A332865: Number of placements of zero or more dominoes on the n X n grid where no two empty squares are horizontally adjacent.

The programs for A332865, there is no canonical definition to state claims against.
-/

/-! ## A332865.P15328583278003085625

`A332862(∑[4*n]+1)`
-/

namespace A332865.P15328583278003085625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332862 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A332865.P15328583278003085625

/-! ## A332865.P11428216056679137680

`record[A003982(n)*A332862(n+1)]`
-/

namespace A332865.P11428216056679137680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A332862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332865.P11428216056679137680

/-! ## A332865.P1145470375969894848

`A332862(A001844(n))^A178334(n)`
-/

namespace A332865.P1145470375969894848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332862 (A001844 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A332865.P1145470375969894848

/-! ## A332865.P1241242513828872951

`lcm(A087960(n), A332862(A001844(n)))`
-/

namespace A332865.P1241242513828872951
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A332862 (A001844 n).toNat)

end

end A332865.P1241242513828872951

/-! ## A332865.P18133448536247704001

`A007318(C(2, n+1))*A332862(A001844(n))`
-/

namespace A332865.P18133448536247704001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 1)) * A332862 (A001844 n).toNat

end

end A332865.P18133448536247704001

/-!
# A332867: a(n) = minimal positive k such that the concatenation of decimal digits 1,2,...,n is a divisor of the concatenation of n+1,n+2,...,n+k.

The programs for A332867, there is no canonical definition to state claims against.
-/

/-! ## A332867.P964261343831039608

`A400666(A002473(n+1))-(n+1)`
-/

namespace A332867.P964261343831039608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400666 (A002473 (n + 1)).toNat - (n + 1 : ℤ)

end

end A332867.P964261343831039608

/-! ## A332867.P16967302923247649032

`A400666(A240237(n+1))-(n+1)`
-/

namespace A332867.P16967302923247649032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400666 (A240237 (n + 1)).toNat - (n + 1 : ℤ)

end

end A332867.P16967302923247649032

/-! ## A332867.P4551618859441339559

`A400666(A058183(A058183(n+1)))-(n+1)`
-/

namespace A332867.P4551618859441339559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400666 (A058183 (A058183 (n + 1)).toNat).toNat - (n + 1 : ℤ)

end

end A332867.P4551618859441339559

/-!
# A332868: Number of involutions (plus identity) in a fixed Sylow 2-subgroup of the symmetric group of degree 2n.

The programs for A332868, there is no canonical definition to state claims against.
-/

/-! ## A332868.P13236735882477692307

`A332759(2*n)`
-/

namespace A332868.P13236735882477692307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332759 (2 * n)

end

end A332868.P13236735882477692307

/-! ## A332868.P15449506656124528978

`record[A332759(n)-char[1]]`
-/

namespace A332868.P15449506656124528978
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332759 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332868.P15449506656124528978

/-! ## A332868.P1593136664400439259

`record[A332759(lcm(2, n)/2)]`
-/

namespace A332868.P1593136664400439259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332759 (SequenceMachineLib.roundAway ((Nat.lcm 2 n : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332868.P1593136664400439259

/-! ## A332868.P6606810235936611799

`record[A332759(n/gcd(2, n))]`
-/

namespace A332868.P6606810235936611799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332759 (SequenceMachineLib.roundAway ((n : ℚ) / (Nat.gcd 2 n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332868.P6606810235936611799

/-! ## A332868.P5678462319385855802

`record[A332759(A008616(n))]`
-/

namespace A332868.P5678462319385855802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332759 (A008616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332868.P5678462319385855802

/-!
# A332869: Number of fixed-point free involutions in a fixed Sylow 2-subgroup of the symmetric group of degree 4n.

The programs for A332869, there is no canonical definition to state claims against.
-/

/-! ## A332869.P15865130417020186610

`A332840(2*n)`
-/

namespace A332869.P15865130417020186610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332840 (2 * n)

end

end A332869.P15865130417020186610

/-! ## A332869.P12593727456877616059

`record[A332840(n)-char[1]]`
-/

namespace A332869.P12593727456877616059
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332840 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332869.P12593727456877616059

/-! ## A332869.P13528260824908436218

`record[A332840(and(n, n-1))]`
-/

namespace A332869.P13528260824908436218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332840 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332869.P13528260824908436218

/-! ## A332869.P2448724412402478503

`record[A332840(ceil(xor(1, n)/2))]`
-/

namespace A332869.P2448724412402478503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332840 ⌈(Nat.xor 1 n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332869.P2448724412402478503

/-! ## A332869.P18423368091226707706

`record[A332840(round(xor(1, n)/6))]`
-/

namespace A332869.P18423368091226707706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332840 (SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332869.P18423368091226707706

/-!
# A332870: Number of compositions of n that are neither unimodal nor is their negation.

The programs for A332870, there is no canonical definition to state claims against.
-/

/-! ## A332870.P1245152004596701701

`A115981(n)+A332669(n)-A332834(n)`
-/

namespace A332870.P1245152004596701701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115981 n + (A332669 n - A332834 n)

end

end A332870.P1245152004596701701

/-! ## A332870.P10672857682857325659

`A329362(C(n, 6))+C(n, 6)`
-/

namespace A332870.P10672857682857325659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329362 (Nat.choose n 6) + (Nat.choose n 6 : ℤ)

end

end A332870.P10672857682857325659

/-! ## A332870.P6549282141309666539

`A085854(A289600(n))`
-/

namespace A332870.P6549282141309666539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085854 (A289600 n).toNat

end

end A332870.P6549282141309666539

/-! ## A332870.P10895894672313669741

`A003056(∑[A055999(C(n, 6))])`
-/

namespace A332870.P10895894672313669741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055999 (Nat.choose n 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A332870.P10895894672313669741

/-! ## A332870.P7086422177975042980

`A278182(A000579(n))+A000579(n)`
-/

namespace A332870.P7086422177975042980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278182 (A000579 n).toNat + A000579 n

end

end A332870.P7086422177975042980

/-!
# A332871: Number of compositions of n whose run-lengths are not weakly increasing.

The programs for A332871, there is no canonical definition to state claims against.
-/

/-! ## A332871.P10270120601517030503

`A011782(n)-A332836(n)`
-/

namespace A332871.P10270120601517030503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A332836 n

end

end A332871.P10270120601517030503

/-! ## A332871.P8632384326011479486

`A288133(n+1)-(A332836(n)+n)`
-/

namespace A332871.P8632384326011479486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288133 (n + 1) - (A332836 n + (n : ℤ))

end

end A332871.P8632384326011479486

/-! ## A332871.P5366388382497524254

`A016116(A004273(n))-A332836(n)`
-/

namespace A332871.P5366388382497524254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A004273 n).toNat - A332836 n

end

end A332871.P5366388382497524254

/-! ## A332871.P6881786370614000045

`A016116(A004275(n))-A332836(n)`
-/

namespace A332871.P6881786370614000045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A004275 n).toNat - A332836 n

end

end A332871.P6881786370614000045

/-! ## A332871.P911999666114804925

`A332726(n)+A332727(n)-A332836(n)`
-/

namespace A332871.P911999666114804925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332726 n + (A332727 n - A332836 n)

end

end A332871.P911999666114804925

/-! ## A332871.P17077935658115327179

`Δ[A056469(n)]-A332836(n)`
-/

namespace A332871.P17077935658115327179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A332836 n

end

end A332871.P17077935658115327179

/-! ## A332871.P662760169488479431

`Δ[A094373(n)]-A332836(n)`
-/

namespace A332871.P662760169488479431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A332836 n

end

end A332871.P662760169488479431

/-!
# A332872: Number of ordered set partitions of {1..n} where no element of any block is greater than any element of a non-adjacent consecutive block.

The programs for A332872, there is no canonical definition to state claims against.
-/

/-! ## A332872.P2599181065391345014

`ogf((1-3x+x^2)/(1-4x+2x^2))`
-/

namespace A332872.P2599181065391345014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 1] [1, -4, 2] n

end

end A332872.P2599181065391345014

/-! ## A332872.P11353479851850270956

`ceil((sqrt(2)+2)^n/4)`
-/

namespace A332872.P11353479851850270956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sqrt (2 : ℝ) + 2) ^ n / 4⌉

end

end A332872.P11353479851850270956

/-! ## A332872.P17327305266590085302

`floor((2+sqrt(2))*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A332872.P17327305266590085302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌊(2 + Real.sqrt (2 : ℝ)) * (a (n - 1) : ℝ)⌋

end

end A332872.P17327305266590085302

/-! ## A332872.P7679399414415334595

`round((sqrt(2)+2)*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A332872.P7679399414415334595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 2) * (a (n - 1) : ℝ))

end

end A332872.P7679399414415334595

/-! ## A332872.P9372160361380428707

`ceil((2+sqrt(2))*a(n-1))-1` with `a(0)=1, a(1)=1`
-/

namespace A332872.P9372160361380428707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌈(2 + Real.sqrt (2 : ℝ)) * (a (n - 1) : ℝ)⌉ - 1

end

end A332872.P9372160361380428707

/-!
# A332873: Number of non-unimodal, non-co-unimodal sequences of length n covering an initial interval of positive integers.

The programs for A332873, there is no canonical definition to state claims against.
-/

/-! ## A332873.P15035882708919749359

`lcm(C(n, 4), A307165(n+1))`
-/

namespace A332873.P15035882708919749359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.choose n 4 : ℤ) (A307165 (n + 1))

end

end A332873.P15035882708919749359

/-! ## A332873.P14055989300481854644

`A079694(A000307(n))`
-/

namespace A332873.P14055989300481854644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079694 (A000307 n).toNat

end

end A332873.P14055989300481854644

/-!
# A332874: Number of strict compositions of n that are neither unimodal nor is their negation.

The programs for A332874, there is no canonical definition to state claims against.
-/

/-! ## A332874.P5780407100734058130

`2*A072707(n)-A333149(n)`
-/

namespace A332874.P5780407100734058130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072707 n - A333149 n

end

end A332874.P5780407100734058130

/-! ## A332874.P2913158165822724838

`A072707(n)+A333147(n)-A072706(n)`
-/

namespace A332874.P2913158165822724838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072707 n + (A333147 n - A072706 n)

end

end A332874.P2913158165822724838

/-! ## A332874.P1694607653991824128

`A333149(n)-A005843(A333149(n)-A072707(n))`
-/

namespace A332874.P1694607653991824128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333149 n - A005843 (A333149 n - A072707 n).toNat

end

end A332874.P1694607653991824128

/-! ## A332874.P9513345325094051511

`A005843(A072707(n)-A333149(n)/2)`
-/

namespace A332874.P9513345325094051511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.roundAway ((A072707 n : ℚ) - (A333149 n : ℚ) / 2)).toNat

end

end A332874.P9513345325094051511

/-! ## A332874.P827456892134314747

`A005843(A072707(n))-A333149(n)`
-/

namespace A332874.P827456892134314747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A072707 n).toNat - A333149 n

end

end A332874.P827456892134314747

/-!
# A332875: Sizes of maximal weakly increasing subsequences of A000002.

The programs for A332875, the canonical program `A332875.P11519112769782522596` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332875 has offset 1).

The definition of A332875 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332875.P11519112769782522596

`A000002(2*(n+1)-1)+A000002(2*(n+1))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A332875

/-- `A000002(2*(n+1)-1)+A000002(2*(n+1))` -/
def P11519112769782522596.Spec : Prop :=
  ∀ n, P11519112769782522596.a n = A332875 (n + 1)

theorem P11519112769782522596.correct : P11519112769782522596.Spec := by
  intro n
  simp only [A332875, Nat.add_sub_cancel]

end A332875

/-! ## A332875.P12207745116090528440

`A100429(n+1)+A100428(n+1)`
-/

namespace A332875.P12207745116090528440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100429 (n + 1) + A100428 (n + 1)

end

end A332875.P12207745116090528440

namespace A332875

/-- `A100429(n+1)+A100428(n+1)` -/
def P12207745116090528440.Spec : Prop :=
  ∀ n, P12207745116090528440.a n = A332875 (n + 1)

theorem P12207745116090528440.correct : P12207745116090528440.Spec := by
  intro n
  simp only [A332875, Nat.add_sub_cancel, A332875.P12207745116090528440.a, A332875.P11519112769782522596.a, A000002, A000002.P13330532946811820297.a, A100428, A100428.P16186461630446330392.a, A100429, A100429.P11083441272266622495.f1, A100429.P11083441272266622495.a, A022303, A022303.P17975327773394940798.f1, A022303.P17975327773394940798.a, A156253, A156253.P16782691293242481478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A332875

/-! ## A332875.P9139254437631532577

`A100428(n+1)+A022303(comp[2*n+5]+2)`
-/

namespace A332875.P9139254437631532577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100428 (n + 1) + A022303 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2)

end

end A332875.P9139254437631532577

namespace A332875

/-- `A100428(n+1)+A022303(comp[2*n+5]+2)` -/
def P9139254437631532577.Spec : Prop :=
  ∀ n, P9139254437631532577.a n = A332875 (n + 1)

end A332875

/-! ## A332875.P2445487899897957408

`A100428(n+1)+A054977(A249093(2*(n+1)))`
-/

namespace A332875.P2445487899897957408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100428 (n + 1) + A054977 (A249093 (2 * (n + 1))).toNat

end

end A332875.P2445487899897957408

namespace A332875

/-- `A100428(n+1)+A054977(A249093(2*(n+1)))` -/
def P2445487899897957408.Spec : Prop :=
  ∀ n, P2445487899897957408.a n = A332875 (n + 1)

end A332875

/-! ## A332875.P1647525466565975856

`A100428(n+1)+A054977(A249094(2*(n+1)))`
-/

namespace A332875.P1647525466565975856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100428 (n + 1) + A054977 (A249094 (2 * (n + 1))).toNat

end

end A332875.P1647525466565975856

namespace A332875

/-- `A100428(n+1)+A054977(A249094(2*(n+1)))` -/
def P1647525466565975856.Spec : Prop :=
  ∀ n, P1647525466565975856.a n = A332875 (n + 1)

end A332875

/-! ## A332875.P6238293980129495582

`A100428(n+1)+A054977(abs(A249507(2*(n+1))))`
-/

namespace A332875.P6238293980129495582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100428 (n + 1) + A054977 |A249507 (2 * (n + 1))|.toNat

end

end A332875.P6238293980129495582

namespace A332875

/-- `A100428(n+1)+A054977(abs(A249507(2*(n+1))))` -/
def P6238293980129495582.Spec : Prop :=
  ∀ n, P6238293980129495582.a n = A332875 (n + 1)

end A332875

/-! ## A332875.P11783628278509645275

`A100428(n+1)+A054977(A249507(2*(n+1))²)`
-/

namespace A332875.P11783628278509645275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100428 (n + 1) + A054977 (A249507 (2 * (n + 1)) ^ 2).toNat

end

end A332875.P11783628278509645275

namespace A332875

/-- `A100428(n+1)+A054977(A249507(2*(n+1))²)` -/
def P11783628278509645275.Spec : Prop :=
  ∀ n, P11783628278509645275.a n = A332875 (n + 1)

end A332875

/-! ## A332875.P17922240726237645053

`A100428(n+1)+A000038(A249093(2*n+2))!`
-/

namespace A332875.P17922240726237645053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100428 (n + 1) + (Nat.factorial (A000038 (A249093 (2 * n + 2)).toNat).toNat : ℤ)

end

end A332875.P17922240726237645053

namespace A332875

/-- `A100428(n+1)+A000038(A249093(2*n+2))!` -/
def P17922240726237645053.Spec : Prop :=
  ∀ n, P17922240726237645053.a n = A332875 (n + 1)

end A332875

/-! ## A332875.P11305820402147574031

`A156264(A249093(2*(n+1))+7)+A100428(n+1)`
-/

namespace A332875.P11305820402147574031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156264 (A249093 (2 * (n + 1)) + 7).toNat + A100428 (n + 1)

end

end A332875.P11305820402147574031

namespace A332875

/-- `A156264(A249093(2*(n+1))+7)+A100428(n+1)` -/
def P11305820402147574031.Spec : Prop :=
  ∀ n, P11305820402147574031.a n = A332875 (n + 1)

end A332875

/-! ## A332875.P9537662509172694597

`A100428(n+1)+A001285(C(3, A249093(2*(n+1))))`
-/

namespace A332875.P9537662509172694597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100428 (n + 1) + A001285 (Nat.choose 3 (A249093 (2 * (n + 1))).toNat)

end

end A332875.P9537662509172694597

namespace A332875

/-- `A100428(n+1)+A001285(C(3, A249093(2*(n+1))))` -/
def P9537662509172694597.Spec : Prop :=
  ∀ n, P9537662509172694597.a n = A332875 (n + 1)

end A332875

/-! ## A332875.P12002906852953206157

`A100428(n+1)+A156242(n+1)-A156243(n+1)`
-/

namespace A332875.P12002906852953206157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100428 (n + 1) + (A156242 (n + 1) - A156243 (n + 1))

end

end A332875.P12002906852953206157

namespace A332875

/-- `A100428(n+1)+A156242(n+1)-A156243(n+1)` -/
def P12002906852953206157.Spec : Prop :=
  ∀ n, P12002906852953206157.a n = A332875 (n + 1)

end A332875

/-! ## A332875.P10874857965823315930

`A100428(n+1)+A001285(A249093(2*(n+1))²+2)`
-/

namespace A332875.P10874857965823315930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100428 (n + 1) + A001285 (A249093 (2 * (n + 1)) ^ 2 + 2).toNat

end

end A332875.P10874857965823315930

namespace A332875

/-- `A100428(n+1)+A001285(A249093(2*(n+1))²+2)` -/
def P10874857965823315930.Spec : Prop :=
  ∀ n, P10874857965823315930.a n = A332875 (n + 1)

end A332875

/-! ## A332875.P11036658320079130622

`A100428(n+1)+A001285(A249094(2*(n+1))²+2)`
-/

namespace A332875.P11036658320079130622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100428 (n + 1) + A001285 (A249094 (2 * (n + 1)) ^ 2 + 2).toNat

end

end A332875.P11036658320079130622

namespace A332875

/-- `A100428(n+1)+A001285(A249094(2*(n+1))²+2)` -/
def P11036658320079130622.Spec : Prop :=
  ∀ n, P11036658320079130622.a n = A332875 (n + 1)

end A332875

/-! ## A332875.P8164143356075399345

`A100429(n+1)+A156243(n+1)%A156242(A028310(n))`
-/

namespace A332875.P8164143356075399345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100429 (n + 1) + Int.tmod (A156243 (n + 1)) (A156242 (A028310 n).toNat)

end

end A332875.P8164143356075399345

namespace A332875

/-- `A100429(n+1)+A156243(n+1)%A156242(A028310(n))` -/
def P8164143356075399345.Spec : Prop :=
  ∀ n, P8164143356075399345.a n = A332875 (n + 1)

end A332875

/-! ## A332875.P17738526366500632545

`Δ[A156243(n+1)-A100428(n+1)]`
-/

namespace A332875.P17738526366500632545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156243 (n + 1) - A100428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332875.P17738526366500632545

namespace A332875

/-- `Δ[A156243(n+1)-A100428(n+1)]` -/
def P17738526366500632545.Spec : Prop :=
  ∀ n, P17738526366500632545.a n = A332875 (n + 1)

end A332875

/-! ## A332875.P1016047679481445167

`A100428(n+1)+A000002(2*(n+1))`
-/

namespace A332875.P1016047679481445167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100428 (n + 1) + A000002 (2 * (n + 1))

end

end A332875.P1016047679481445167

namespace A332875

/-- `A100428(n+1)+A000002(2*(n+1))` -/
def P1016047679481445167.Spec : Prop :=
  ∀ n, P1016047679481445167.a n = A332875 (n + 1)

end A332875

/-! ## A332875.P7515154795483537426

`A100429(n+1)+A000002(2*n+1)`
-/

namespace A332875.P7515154795483537426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100429 (n + 1) + A000002 (2 * n + 1)

end

end A332875.P7515154795483537426

namespace A332875

/-- `A100429(n+1)+A000002(2*n+1)` -/
def P7515154795483537426.Spec : Prop :=
  ∀ n, P7515154795483537426.a n = A332875 (n + 1)

end A332875

/-! ## A332875.P17244117189362416742

`(A000002(2*(n+1))+A000002(2*n+1))%5`
-/

namespace A332875.P17244117189362416742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000002 (2 * (n + 1)) + A000002 (2 * n + 1)) 5

end

end A332875.P17244117189362416742

namespace A332875

/-- `(A000002(2*(n+1))+A000002(2*n+1))%5` -/
def P17244117189362416742.Spec : Prop :=
  ∀ n, P17244117189362416742.a n = A332875 (n + 1)

end A332875

/-! ## A332875.P8146124550724788956

`(A000002(2*(n+1))+A000002(2*n+1))*A156728(A054353(n+1))`
-/

namespace A332875.P8146124550724788956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000002 (2 * (n + 1)) + A000002 (2 * n + 1)) * A156728 (A054353 (n + 1)).toNat

end

end A332875.P8146124550724788956

namespace A332875

/-- `(A000002(2*(n+1))+A000002(2*n+1))*A156728(A054353(n+1))` -/
def P8146124550724788956.Spec : Prop :=
  ∀ n, P8146124550724788956.a n = A332875 (n + 1)

end A332875

/-! ## A332875.P3260452635187588654

`A333229(Δ[n²])`
-/

namespace A332875.P3260452635187588654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333229 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A332875.P3260452635187588654

namespace A332875

/-- `A333229(Δ[n²])` -/
def P3260452635187588654.Spec : Prop :=
  ∀ n, P3260452635187588654.a n = A332875 (n + 1)

end A332875

/-!
# A332876: a(n) is the smallest positive multiple of n whose decimal expansion includes a digit (other than a trailing zero) whose removal yields a proper multiple of n.

The programs for A332876, there is no canonical definition to state claims against.
-/

/-! ## A332876.P14945453102029134066

`A362987(A207380(n+1))`
-/

namespace A332876.P14945453102029134066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362987 (A207380 (n + 1)).toNat

end

end A332876.P14945453102029134066

/-!
# A332877: Arrange the first n primes in a circle in any order. a(n) is the minimum value of the largest product of two consecutive primes out of all possible orders.

The programs for A332877, there is no canonical definition to state claims against.
-/

/-! ## A332877.P8125299592021511566

`record[A333747(n+1)%A241362(n+1)]`
-/

namespace A332877.P8125299592021511566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333747 (n + 1)) (A241362 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332877.P8125299592021511566

/-! ## A332877.P9791049597971117524

`A087112(lt[A058150(n+2), A379733(n+1)])`
-/

namespace A332877.P9791049597971117524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058150 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087112 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A332877.P9791049597971117524

/-! ## A332877.P3342961852317742151

`record[A339116(n+2)%A005897(A052335(2*n))]`
-/

namespace A332877.P3342961852317742151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339116 (n + 2)) (A005897 (A052335 (2 * n)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332877.P3342961852317742151

/-! ## A332877.P9566379890267706058

`record[A333747(A135010(n+4))]%A124538(2*(n+2))`
-/

namespace A332877.P9566379890267706058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333747 (A135010 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A124538 (2 * (n + 2)))

end

end A332877.P9566379890267706058

/-! ## A332877.P4906144229740262602

`record[A333747(A135010(n+4)%A257315(3*n+4))]`
-/

namespace A332877.P4906144229740262602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333747 (Int.tmod (A135010 (n + 4)) (A257315 (3 * n + 4))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332877.P4906144229740262602

/-!
# A332880: If n = Product (p_j^k_j) then a(n) = numerator of Product (1 + 1/p_j).

The programs for A332880, the canonical program `A332880.P6186133636698672336` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332880 has offset 1).

The definition of A332880 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332880.P6186133636698672336

`A001615(n+1)/A306695(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A332880

/-- `A001615(n+1)/A306695(n+1)` -/
def P6186133636698672336.Spec : Prop :=
  ∀ n, P6186133636698672336.a n = (A332880 (n + 1) : ℚ)

end A332880

/-! ## A332880.P2668556379968897224

`A017665(∏{p}[n+1, #])`
-/

namespace A332880.P2668556379968897224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A332880.P2668556379968897224

namespace A332880

/-- `A017665(∏{p}[n+1, #])` -/
def P2668556379968897224.Spec : Prop :=
  ∀ n, P2668556379968897224.a n = A332880 (n + 1)

end A332880

/-! ## A332880.P17809143562407855355

`A322965(∏{p}[n+1, #])`
-/

namespace A332880.P17809143562407855355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322965 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A332880.P17809143562407855355

namespace A332880

/-- `A322965(∏{p}[n+1, #])` -/
def P17809143562407855355.Spec : Prop :=
  ∀ n, P17809143562407855355.a n = A332880 (n + 1)

end A332880

/-! ## A332880.P5112113524807885534

`A332882(∏{p}[n+1, #])`
-/

namespace A332880.P5112113524807885534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332882 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A332880.P5112113524807885534

namespace A332880

/-- `A332882(∏{p}[n+1, #])` -/
def P5112113524807885534.Spec : Prop :=
  ∀ n, P5112113524807885534.a n = A332880 (n + 1)

end A332880

/-! ## A332880.P14326548336044616360

`A389447(∏{p}[n+1, #])`
-/

namespace A332880.P14326548336044616360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389447 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A332880.P14326548336044616360

namespace A332880

/-- `A389447(∏{p}[n+1, #])` -/
def P14326548336044616360.Spec : Prop :=
  ∀ n, P14326548336044616360.a n = A332880 (n + 1)

end A332880

/-! ## A332880.P12850318228162053923

`A017665(A007947(n+1))`
-/

namespace A332880.P12850318228162053923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (A007947 (n + 1)).toNat

end

end A332880.P12850318228162053923

namespace A332880

/-- `A017665(A007947(n+1))` -/
def P12850318228162053923.Spec : Prop :=
  ∀ n, P12850318228162053923.a n = A332880 (n + 1)

end A332880

/-! ## A332880.P9759219117608289587

`A017665(sqrt(A078615(n+1)))`
-/

namespace A332880.P9759219117608289587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (SequenceMachineLib.roundAway (Real.sqrt (A078615 (n + 1) : ℝ))).toNat

end

end A332880.P9759219117608289587

namespace A332880

/-- `A017665(sqrt(A078615(n+1)))` -/
def P9759219117608289587.Spec : Prop :=
  ∀ n, P9759219117608289587.a n = A332880 (n + 1)

end A332880

/-! ## A332880.P699873576308476563

`A322965((n+1)/A003557(n+1))`
-/

namespace A332880.P699873576308476563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322965 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A332880.P699873576308476563

namespace A332880

/-- `A322965((n+1)/A003557(n+1))` -/
def P699873576308476563.Spec : Prop :=
  ∀ n, P699873576308476563.a n = A332880 (n + 1)

end A332880

/-! ## A332880.P5682191592319914412

`A332882((n+1)/A003557(n+1))`
-/

namespace A332880.P5682191592319914412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332882 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A332880.P5682191592319914412

namespace A332880

/-- `A332882((n+1)/A003557(n+1))` -/
def P5682191592319914412.Spec : Prop :=
  ∀ n, P5682191592319914412.a n = A332880 (n + 1)

end A332880

/-! ## A332880.P17609702554733297302

`A332882(A007947(2*n+1-n))`
-/

namespace A332880.P17609702554733297302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332882 (A007947 (2 * n + 1 - n)).toNat

end

end A332880.P17609702554733297302

namespace A332880

/-- `A332882(A007947(2*n+1-n))` -/
def P17609702554733297302.Spec : Prop :=
  ∀ n, P17609702554733297302.a n = A332880 (n + 1)

end A332880

/-! ## A332880.P2697708146209752769

`A048250(n+1)/A009194(∏{p}[n+1, #])`
-/

namespace A332880.P2697708146209752769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) : ℚ) / (A009194 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ)

end

end A332880.P2697708146209752769

namespace A332880

/-- `A048250(n+1)/A009194(∏{p}[n+1, #])` -/
def P2697708146209752769.Spec : Prop :=
  ∀ n, P2697708146209752769.a n = (A332880 (n + 1) : ℚ)

end A332880

/-! ## A332880.P16903963191615513372

`A048250(n+1)/A325385(∏{p}[n+1, #])`
-/

namespace A332880.P16903963191615513372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) : ℚ) / (A325385 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ)

end

end A332880.P16903963191615513372

namespace A332880

/-- `A048250(n+1)/A325385(∏{p}[n+1, #])` -/
def P16903963191615513372.Spec : Prop :=
  ∀ n, P16903963191615513372.a n = (A332880 (n + 1) : ℚ)

end A332880

/-! ## A332880.P7398748882123414916

`A048250(n+1)/A325813(∏{p}[n+1, #])`
-/

namespace A332880.P7398748882123414916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) : ℚ) / (A325813 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ)

end

end A332880.P7398748882123414916

namespace A332880

/-- `A048250(n+1)/A325813(∏{p}[n+1, #])` -/
def P7398748882123414916.Spec : Prop :=
  ∀ n, P7398748882123414916.a n = (A332880 (n + 1) : ℚ)

end A332880

/-! ## A332880.P6152013572441589705

`A048250(n+1)/A325975(∏{p}[n+1, #])`
-/

namespace A332880.P6152013572441589705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) : ℚ) / (A325975 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ)

end

end A332880.P6152013572441589705

namespace A332880

/-- `A048250(n+1)/A325975(∏{p}[n+1, #])` -/
def P6152013572441589705.Spec : Prop :=
  ∀ n, P6152013572441589705.a n = (A332880 (n + 1) : ℚ)

end A332880

/-! ## A332880.P10596429845446023998

`A322965(A351517(n+1)*A351518(n+1))`
-/

namespace A332880.P10596429845446023998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322965 (A351517 (n + 1) * A351518 (n + 1)).toNat

end

end A332880.P10596429845446023998

namespace A332880

/-- `A322965(A351517(n+1)*A351518(n+1))` -/
def P10596429845446023998.Spec : Prop :=
  ∀ n, P10596429845446023998.a n = A332880 (n + 1)

end A332880

/-! ## A332880.P6740883312243808870

`A048250(n+1)/A126795(A007947(n+1))`
-/

namespace A332880.P6740883312243808870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) : ℚ) / (A126795 (A007947 (n + 1)).toNat : ℚ)

end

end A332880.P6740883312243808870

namespace A332880

/-- `A048250(n+1)/A126795(A007947(n+1))` -/
def P6740883312243808870.Spec : Prop :=
  ∀ n, P6740883312243808870.a n = (A332880 (n + 1) : ℚ)

end A332880

/-! ## A332880.P7497769900984398450

`A322965(A007947((n+1)/A000188(n+1)))`
-/

namespace A332880.P7497769900984398450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322965 (A007947 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000188 (n + 1) : ℚ))).toNat).toNat

end

end A332880.P7497769900984398450

namespace A332880

/-- `A322965(A007947((n+1)/A000188(n+1)))` -/
def P7497769900984398450.Spec : Prop :=
  ∀ n, P7497769900984398450.a n = A332880 (n + 1)

end A332880

/-! ## A332880.P2675754551663260278

`A048250(n+1)/A007947(n+1)*A332881(n+1)`
-/

namespace A332880.P2675754551663260278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ) * (A332881 (n + 1) : ℚ)

end

end A332880.P2675754551663260278

namespace A332880

/-- `A048250(n+1)/A007947(n+1)*A332881(n+1)` -/
def P2675754551663260278.Spec : Prop :=
  ∀ n, P2675754551663260278.a n = (A332880 (n + 1) : ℚ)

end A332880

/-! ## A332880.P15865854990601037256

`A001615(n+1)/gcd(A000027(n+1), A001615(n+1))`
-/

namespace A332880.P15865854990601037256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) : ℚ) / (Int.gcd (A000027 (n + 1)) (A001615 (n + 1)) : ℚ)

end

end A332880.P15865854990601037256

namespace A332880

/-- `A001615(n+1)/gcd(A000027(n+1), A001615(n+1))` -/
def P15865854990601037256.Spec : Prop :=
  ∀ n, P15865854990601037256.a n = (A332880 (n + 1) : ℚ)

end A332880

/-! ## A332880.P6236500136092082590

`A322965(A019554(A007947(A019554(n+1))))`
-/

namespace A332880.P6236500136092082590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322965 (A019554 (A007947 (A019554 (n + 1)).toNat).toNat).toNat

end

end A332880.P6236500136092082590

namespace A332880

/-- `A322965(A019554(A007947(A019554(n+1))))` -/
def P6236500136092082590.Spec : Prop :=
  ∀ n, P6236500136092082590.a n = A332880 (n + 1)

end A332880

/-!
# A332881: If n = Product (p_j^k_j) then a(n) = denominator of Product (1 + 1/p_j).

The programs for A332881, the canonical program `A332881.P13190914055989439247` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332881 has offset 1).

The definition of A332881 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332881.P13190914055989439247

`(n+1)/A306695(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A332881

/-- `(n+1)/A306695(n+1)` -/
def P13190914055989439247.Spec : Prop :=
  ∀ n, P13190914055989439247.a n = (A332881 (n + 1) : ℚ)

end A332881

/-! ## A332881.P4102581556453223884

`(n+1)/gcd(n+1, A001615(n+1))`
-/

namespace A332881.P4102581556453223884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A001615 (n + 1)) : ℚ)

end

end A332881.P4102581556453223884

namespace A332881

/-- `(n+1)/gcd(n+1, A001615(n+1))` -/
def P4102581556453223884.Spec : Prop :=
  ∀ n, P4102581556453223884.a n = (A332881 (n + 1) : ℚ)

end A332881

/-! ## A332881.P8554894844643309749

`A017666(∏{p}[n+1, #])`
-/

namespace A332881.P8554894844643309749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A332881.P8554894844643309749

namespace A332881

/-- `A017666(∏{p}[n+1, #])` -/
def P8554894844643309749.Spec : Prop :=
  ∀ n, P8554894844643309749.a n = A332881 (n + 1)

end A332881

/-! ## A332881.P1993793539244106591

`A322966(∏{p}[n+1, #])`
-/

namespace A332881.P1993793539244106591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322966 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A332881.P1993793539244106591

namespace A332881

/-- `A322966(∏{p}[n+1, #])` -/
def P1993793539244106591.Spec : Prop :=
  ∀ n, P1993793539244106591.a n = A332881 (n + 1)

end A332881

/-! ## A332881.P9417075613651195389

`A332883(∏{p}[n+1, #])`
-/

namespace A332881.P9417075613651195389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332883 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A332881.P9417075613651195389

namespace A332881

/-- `A332883(∏{p}[n+1, #])` -/
def P9417075613651195389.Spec : Prop :=
  ∀ n, P9417075613651195389.a n = A332881 (n + 1)

end A332881

/-! ## A332881.P11522054568165715022

`A349630(∏{p}[n+1, #])`
-/

namespace A332881.P11522054568165715022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349630 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A332881.P11522054568165715022

namespace A332881

/-- `A349630(∏{p}[n+1, #])` -/
def P11522054568165715022.Spec : Prop :=
  ∀ n, P11522054568165715022.a n = A332881 (n + 1)

end A332881

/-! ## A332881.P18108134326571815852

`A389448(∏{p}[n+1, #])`
-/

namespace A332881.P18108134326571815852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389448 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A332881.P18108134326571815852

namespace A332881

/-- `A389448(∏{p}[n+1, #])` -/
def P18108134326571815852.Spec : Prop :=
  ∀ n, P18108134326571815852.a n = A332881 (n + 1)

end A332881

/-! ## A332881.P15380545910178588291

`∏{p}[n+1, #]/A009194(∏{p}[n+1, #])`
-/

namespace A332881.P15380545910178588291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / (A009194 (∏ p ∈ Nat.primeFactors (f2 n), p) : ℚ)

end

end A332881.P15380545910178588291

namespace A332881

/-- `∏{p}[n+1, #]/A009194(∏{p}[n+1, #])` -/
def P15380545910178588291.Spec : Prop :=
  ∀ n, P15380545910178588291.a n = (A332881 (n + 1) : ℚ)

end A332881

/-! ## A332881.P1191489144319375884

`∏{p}[n+1, #]/A325385(∏{p}[n+1, #])`
-/

namespace A332881.P1191489144319375884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / (A325385 (∏ p ∈ Nat.primeFactors (f2 n), p) : ℚ)

end

end A332881.P1191489144319375884

namespace A332881

/-- `∏{p}[n+1, #]/A325385(∏{p}[n+1, #])` -/
def P1191489144319375884.Spec : Prop :=
  ∀ n, P1191489144319375884.a n = (A332881 (n + 1) : ℚ)

end A332881

/-! ## A332881.P3280894776652429242

`∏{p}[n+1, #]/A325813(∏{p}[n+1, #])`
-/

namespace A332881.P3280894776652429242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / (A325813 (∏ p ∈ Nat.primeFactors (f2 n), p) : ℚ)

end

end A332881.P3280894776652429242

namespace A332881

/-- `∏{p}[n+1, #]/A325813(∏{p}[n+1, #])` -/
def P3280894776652429242.Spec : Prop :=
  ∀ n, P3280894776652429242.a n = (A332881 (n + 1) : ℚ)

end A332881

/-! ## A332881.P7991643702164578219

`∏{p}[n+1, #]/A325975(∏{p}[n+1, #])`
-/

namespace A332881.P7991643702164578219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / (A325975 (∏ p ∈ Nat.primeFactors (f2 n), p) : ℚ)

end

end A332881.P7991643702164578219

namespace A332881

/-- `∏{p}[n+1, #]/A325975(∏{p}[n+1, #])` -/
def P7991643702164578219.Spec : Prop :=
  ∀ n, P7991643702164578219.a n = (A332881 (n + 1) : ℚ)

end A332881

/-! ## A332881.P9698130833950070102

`A017666(A007947(n+1))`
-/

namespace A332881.P9698130833950070102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (A007947 (n + 1)).toNat

end

end A332881.P9698130833950070102

namespace A332881

/-- `A017666(A007947(n+1))` -/
def P9698130833950070102.Spec : Prop :=
  ∀ n, P9698130833950070102.a n = A332881 (n + 1)

end A332881

/-! ## A332881.P15989995826947426853

`A017666((n+1)/A003557(n+1))`
-/

namespace A332881.P15989995826947426853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A332881.P15989995826947426853

namespace A332881

/-- `A017666((n+1)/A003557(n+1))` -/
def P15989995826947426853.Spec : Prop :=
  ∀ n, P15989995826947426853.a n = A332881 (n + 1)

end A332881

/-! ## A332881.P18230470409291503645

`A332883((n+1)/A003557(n+1))`
-/

namespace A332881.P18230470409291503645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332883 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A332881.P18230470409291503645

namespace A332881

/-- `A332883((n+1)/A003557(n+1))` -/
def P18230470409291503645.Spec : Prop :=
  ∀ n, P18230470409291503645.a n = A332881 (n + 1)

end A332881

/-! ## A332881.P5425046921361787485

`A332883(A007947(2*n+1-n))`
-/

namespace A332881.P5425046921361787485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332883 (A007947 (2 * n + 1 - n)).toNat

end

end A332881.P5425046921361787485

namespace A332881

/-- `A332883(A007947(2*n+1-n))` -/
def P5425046921361787485.Spec : Prop :=
  ∀ n, P5425046921361787485.a n = A332881 (n + 1)

end A332881

/-! ## A332881.P11523997486641428743

`A349630(A053166(A053166(n+1)))`
-/

namespace A332881.P11523997486641428743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349630 (A053166 (A053166 (n + 1)).toNat).toNat

end

end A332881.P11523997486641428743

namespace A332881

/-- `A349630(A053166(A053166(n+1)))` -/
def P11523997486641428743.Spec : Prop :=
  ∀ n, P11523997486641428743.a n = A332881 (n + 1)

end A332881

/-! ## A332881.P4590629667385675485

`A007947(n+1)/A007947(A126795(n+1))`
-/

namespace A332881.P4590629667385675485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A007947 (A126795 (n + 1)).toNat : ℚ)

end

end A332881.P4590629667385675485

namespace A332881

/-- `A007947(n+1)/A007947(A126795(n+1))` -/
def P4590629667385675485.Spec : Prop :=
  ∀ n, P4590629667385675485.a n = (A332881 (n + 1) : ℚ)

end A332881

/-! ## A332881.P3384570076833354576

`A007947(n+1)/A007947(A348929(n+1))`
-/

namespace A332881.P3384570076833354576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A007947 (A348929 (n + 1)).toNat : ℚ)

end

end A332881.P3384570076833354576

namespace A332881

/-- `A007947(n+1)/A007947(A348929(n+1))` -/
def P3384570076833354576.Spec : Prop :=
  ∀ n, P3384570076833354576.a n = (A332881 (n + 1) : ℚ)

end A332881

/-! ## A332881.P15177703862642309870

`A007947(n+1)/A048250(n+1)*A332880(n+1)`
-/

namespace A332881.P15177703862642309870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A048250 (n + 1) : ℚ) * (A332880 (n + 1) : ℚ)

end

end A332881.P15177703862642309870

namespace A332881

/-- `A007947(n+1)/A048250(n+1)*A332880(n+1)` -/
def P15177703862642309870.Spec : Prop :=
  ∀ n, P15177703862642309870.a n = (A332881 (n + 1) : ℚ)

end A332881

/-! ## A332881.P2054285956002042708

`A007947(n+1)/A007947(A048250(n+1)/A332880(n+1))`
-/

namespace A332881.P2054285956002042708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A007947 (SequenceMachineLib.roundAway ((A048250 (n + 1) : ℚ) / (A332880 (n + 1) : ℚ))).toNat : ℚ)

end

end A332881.P2054285956002042708

namespace A332881

/-- `A007947(n+1)/A007947(A048250(n+1)/A332880(n+1))` -/
def P2054285956002042708.Spec : Prop :=
  ∀ n, P2054285956002042708.a n = (A332881 (n + 1) : ℚ)

end A332881

/-!
# A332882: If n = Product (p_j^k_j) then a(n) = numerator of Product (1 + 1/p_j^k_j).

The programs for A332882, the canonical program `A332882.P15306502482901872650` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332882 has offset 1).

The definition of A332882 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A323166, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A332882.P15306502482901872650

`A034448(n+1)/A323166(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A332882

/-- `A034448(n+1)/A323166(n+1)` -/
def P15306502482901872650.Spec : Prop :=
  ∀ n, P15306502482901872650.a n = (A332882 (n + 1) : ℚ)

end A332882

/-! ## A332882.P11788945428335098082

`lcm(n+1, A064971(n+1)/(n+1))/(n+1)`
-/

namespace A332882.P11788945428335098082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (SequenceMachineLib.roundAway ((A064971 (n + 1) : ℚ) / (n + 1 : ℚ))) : ℚ) / (n + 1 : ℚ)

end

end A332882.P11788945428335098082

namespace A332882

/-- `lcm(n+1, A064971(n+1)/(n+1))/(n+1)` -/
def P11788945428335098082.Spec : Prop :=
  ∀ n, P11788945428335098082.a n = (A332882 (n + 1) : ℚ)

end A332882

/-! ## A332882.P5956893126681016569

`(A345451(1+n)+1)/A323166(n+1)`
-/

namespace A332882.P5956893126681016569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345451 (1 + n) + 1 : ℚ) / (A323166 (n + 1) : ℚ)

end

end A332882.P5956893126681016569

namespace A332882

/-- `(A345451(1+n)+1)/A323166(n+1)` -/
def P5956893126681016569.Spec : Prop :=
  ∀ n, P5956893126681016569.a n = (A332882 (n + 1) : ℚ)

end A332882

/-! ## A332882.P5841021533768955991

`(n+1+A034460(n+1))/A323166(n+1)`
-/

namespace A332882.P5841021533768955991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) + A034460 (n + 1) : ℚ) / (A323166 (n + 1) : ℚ)

end

end A332882.P5841021533768955991

namespace A332882

/-- `(n+1+A034460(n+1))/A323166(n+1)` -/
def P5841021533768955991.Spec : Prop :=
  ∀ n, P5841021533768955991.a n = (A332882 (n + 1) : ℚ)

end A332882

/-! ## A332882.P15886592099534721704

`(A129468(n+1)+2*(n+1))/A323166(n+1)`
-/

namespace A332882.P15886592099534721704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129468 (n + 1) + (2 * (n + 1) : ℤ) : ℚ) / (A323166 (n + 1) : ℚ)

end

end A332882.P15886592099534721704

namespace A332882

/-- `(A129468(n+1)+2*(n+1))/A323166(n+1)` -/
def P15886592099534721704.Spec : Prop :=
  ∀ n, P15886592099534721704.a n = (A332882 (n + 1) : ℚ)

end A332882

/-! ## A332882.P793663672174892894

`A034448(n+1)/gcd(A034448(n+1), A131738(n))`
-/

namespace A332882.P793663672174892894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (Int.gcd (A034448 (n + 1)) (A131738 n) : ℚ)

end

end A332882.P793663672174892894

namespace A332882

/-- `A034448(n+1)/gcd(A034448(n+1), A131738(n))` -/
def P793663672174892894.Spec : Prop :=
  ∀ n, P793663672174892894.a n = (A332882 (n + 1) : ℚ)

end A332882

/-! ## A332882.P13098637569447663551

`A034448(n+1)/gcd(A034460(n+1), A129468(n+1))`
-/

namespace A332882.P13098637569447663551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (Int.gcd (A034460 (n + 1)) (A129468 (n + 1)) : ℚ)

end

end A332882.P13098637569447663551

namespace A332882

/-- `A034448(n+1)/gcd(A034460(n+1), A129468(n+1))` -/
def P13098637569447663551.Spec : Prop :=
  ∀ n, P13098637569447663551.a n = (A332882 (n + 1) : ℚ)

end A332882

/-!
# A332883: If n = Product (p_j^k_j) then a(n) = denominator of Product (1 + 1/p_j^k_j).

The programs for A332883, the canonical program `A332883.P3376569476005531227` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332883 has offset 1).

The definition of A332883 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323166, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A332883.P3376569476005531227

`(n+1)/A323166(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A332883

/-- `(n+1)/A323166(n+1)` -/
def P3376569476005531227.Spec : Prop :=
  ∀ n, P3376569476005531227.a n = (A332883 (n + 1) : ℚ)

end A332883

/-! ## A332883.P7343161945858942691

`(n+1)/gcd(n+1, A034448(n+1))`
-/

namespace A332883.P7343161945858942691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A034448 (n + 1)) : ℚ)

end

end A332883.P7343161945858942691

namespace A332883

/-- `(n+1)/gcd(n+1, A034448(n+1))` -/
def P7343161945858942691.Spec : Prop :=
  ∀ n, P7343161945858942691.a n = (A332883 (n + 1) : ℚ)

end A332883

/-! ## A332883.P12088644042012261203

`(n+1)/A034448(n+1)*A332882(n+1)`
-/

namespace A332883.P12088644042012261203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A034448 (n + 1) : ℚ) * (A332882 (n + 1) : ℚ)

end

end A332883.P12088644042012261203

namespace A332883

/-- `(n+1)/A034448(n+1)*A332882(n+1)` -/
def P12088644042012261203.Spec : Prop :=
  ∀ n, P12088644042012261203.a n = (A332883 (n + 1) : ℚ)

end A332883

/-! ## A332883.P14687056332619883434

`(n+1)/gcd(A034460(n+1), A129468(n+1))`
-/

namespace A332883.P14687056332619883434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A034460 (n + 1)) (A129468 (n + 1)) : ℚ)

end

end A332883.P14687056332619883434

namespace A332883

/-- `(n+1)/gcd(A034460(n+1), A129468(n+1))` -/
def P14687056332619883434.Spec : Prop :=
  ∀ n, P14687056332619883434.a n = (A332883 (n + 1) : ℚ)

end A332883

/-! ## A332883.P3437335707837452121

`lcm(n+1, A063919(n+1))/A063919(n+1)`
-/

namespace A332883.P3437335707837452121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A063919 (n + 1)) : ℚ) / (A063919 (n + 1) : ℚ)

end

end A332883.P3437335707837452121

namespace A332883

/-- `lcm(n+1, A063919(n+1))/A063919(n+1)` -/
def P3437335707837452121.Spec : Prop :=
  ∀ n, P3437335707837452121.a n = (A332883 (n + 1) : ℚ)

end A332883

/-!
# A332884: a(n) = -n^2 + 21*n - 1.

The programs for A332884, the canonical program `A332884.P10942697147783267681` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332884 has offset 1).

The definition of A332884 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-(n+1)²+21*(n+1)-1` (program `A332884.P10942697147783267681`, by `A332884.P10942697147783267681.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A332884.P15859374821665794913

`ogf((19-20x-x^2)/(1-3x+3x^2-x^3))`
-/

namespace A332884.P15859374821665794913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [19, -20, -1] [1, -3, 3, -1] n

end

end A332884.P15859374821665794913

namespace A332884

/-- `ogf((19-20x-x^2)/(1-3x+3x^2-x^3))` -/
def P15859374821665794913.Spec : Prop :=
  ∀ n, P15859374821665794913.a n = A332884 (n + 1)

end A332884

/-! ## A332884.P10942697147783267681

`-(n+1)²+21*(n+1)-1`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A332884

/-- `-(n+1)²+21*(n+1)-1` -/
def P10942697147783267681.Spec : Prop :=
  ∀ n, P10942697147783267681.a n = A332884 (n + 1)

theorem P10942697147783267681.correct : P10942697147783267681.Spec := by
  intro n
  simp only [A332884, Nat.add_sub_cancel]

end A332884

/-! ## A332884.P13102172943929872563

`∑[20-floor(2/acot(n))]`
-/

namespace A332884.P13102172943929872563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 - ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332884.P13102172943929872563

namespace A332884

/-- `∑[20-floor(2/acot(n))]` -/
def P13102172943929872563.Spec : Prop :=
  ∀ n, P13102172943929872563.a n = A332884 (n + 1)

end A332884

/-! ## A332884.P6180297010973405206

`∑[21-ceil(2/acot(n))]`
-/

namespace A332884.P6180297010973405206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  21 - ⌈2 / SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332884.P6180297010973405206

namespace A332884

/-- `∑[21-ceil(2/acot(n))]` -/
def P6180297010973405206.Spec : Prop :=
  ∀ n, P6180297010973405206.a n = A332884 (n + 1)

end A332884

/-! ## A332884.P17070865512257303253

`∑[a(n-1)-2]` with `a(0)=19, a(1)=18`
-/

namespace A332884.P17070865512257303253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [19, 18] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332884.P17070865512257303253

namespace A332884

/-- `∑[a(n-1)-2]` -/
def P17070865512257303253.Spec : Prop :=
  ∀ n, P17070865512257303253.a n = A332884 (n + 1)

end A332884

/-! ## A332884.P13810925825470639255

`or(1, 19-n*(n-19))`
-/

namespace A332884.P13810925825470639255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (19 - (n : ℤ) * ((n : ℤ) - 19))

end

end A332884.P13810925825470639255

namespace A332884

/-- `or(1, 19-n*(n-19))` -/
def P13810925825470639255.Spec : Prop :=
  ∀ n, P13810925825470639255.a n = A332884 (n + 1)

end A332884

/-! ## A332884.P8356589126571680224

`-xor(1, ∑[2*(n-10)])`
-/

namespace A332884.P8356589126571680224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A332884.P8356589126571680224

namespace A332884

/-- `-xor(1, ∑[2*(n-10)])` -/
def P8356589126571680224.Spec : Prop :=
  ∀ n, P8356589126571680224.a n = A332884 (n + 1)

end A332884

/-! ## A332884.P427771568930071918

`∑[19-A004273(n)]`
-/

namespace A332884.P427771568930071918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  19 - A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332884.P427771568930071918

namespace A332884

/-- `∑[19-A004273(n)]` -/
def P427771568930071918.Spec : Prop :=
  ∀ n, P427771568930071918.a n = A332884 (n + 1)

end A332884

/-! ## A332884.P7790199940828308966

`∑[20-A004277(n)]`
-/

namespace A332884.P7790199940828308966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 - A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332884.P7790199940828308966

namespace A332884

/-- `∑[20-A004277(n)]` -/
def P7790199940828308966.Spec : Prop :=
  ∀ n, P7790199940828308966.a n = A332884 (n + 1)

end A332884

/-! ## A332884.P1568537488709366075

`∑[20-A004275(n+1)]`
-/

namespace A332884.P1568537488709366075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 - A004275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332884.P1568537488709366075

namespace A332884

/-- `∑[20-A004275(n+1)]` -/
def P1568537488709366075.Spec : Prop :=
  ∀ n, P1568537488709366075.a n = A332884 (n + 1)

end A332884

/-! ## A332884.P5801937485433311319

`-((n+1)*A023462(n)+1)`
-/

namespace A332884.P5801937485433311319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n + 1 : ℤ) * A023462 n + 1)

end

end A332884.P5801937485433311319

namespace A332884

/-- `-((n+1)*A023462(n)+1)` -/
def P5801937485433311319.Spec : Prop :=
  ∀ n, P5801937485433311319.a n = A332884 (n + 1)

theorem P5801937485433311319.correct : P5801937485433311319.Spec := by
  intro n
  simp only [A332884, Nat.add_sub_cancel, A332884.P5801937485433311319.a, A332884.P10942697147783267681.a, A023462, A023462.P15873733340913758828.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A332884

/-! ## A332884.P7652908140629849636

`∑[20-A028310(2*n)]`
-/

namespace A332884.P7652908140629849636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 - A028310 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332884.P7652908140629849636

namespace A332884

/-- `∑[20-A028310(2*n)]` -/
def P7652908140629849636.Spec : Prop :=
  ∀ n, P7652908140629849636.a n = A332884 (n + 1)

end A332884

/-! ## A332884.P15570195415050551049

`∑[19-record[A064680(n)/2]]`
-/

namespace A332884.P15570195415050551049
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064680 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  19 - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332884.P15570195415050551049

namespace A332884

/-- `∑[19-record[A064680(n)/2]]` -/
def P15570195415050551049.Spec : Prop :=
  ∀ n, P15570195415050551049.a n = (A332884 (n + 1) : ℚ)

end A332884

/-! ## A332884.P5075730672893886383

`∑[19-A002265(record[2*A064680(n)])]`
-/

namespace A332884.P5075730672893886383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064680 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  19 - A002265 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332884.P5075730672893886383

namespace A332884

/-- `∑[19-A002265(record[2*A064680(n)])]` -/
def P5075730672893886383.Spec : Prop :=
  ∀ n, P5075730672893886383.a n = A332884 (n + 1)

end A332884

/-!
# A332885: a(0) = a(1) = 1; a(n) = a(n-2) + Sum_{k=0..n-2} binomial(n-2,k) * a(k).

The programs for A332885, there is no canonical definition to state claims against.
-/

/-! ## A332885.P10873831354845692633

`floor(sqrt(A296205(n!)))`
-/

namespace A332885.P10873831354845692633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A296205 (Nat.factorial n))

end

end A332885.P10873831354845692633

/-! ## A332885.P8957929811414870358

`round(sqrt(A232499(n!)))`
-/

namespace A332885.P8957929811414870358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A232499 (Nat.factorial n) : ℝ))

end

end A332885.P8957929811414870358

/-! ## A332885.P6161533367185621707

`ceil(sqrt(A138623(n!)/17)/2)`
-/

namespace A332885.P6161533367185621707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A138623 (Nat.factorial n) : ℚ) / 17 : ℝ) / 2⌉

end

end A332885.P6161533367185621707

/-! ## A332885.P8620543634360645275

`A230490(A148038(n))`
-/

namespace A332885.P8620543634360645275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230490 (A148038 n).toNat

end

end A332885.P8620543634360645275

/-!
# A332886: a(n) is the number of partition numbers that divide the n-th partition number (counted without multiplicity).

The programs for A332886, there is no canonical definition to state claims against.
-/

/-! ## A332886.P16549207886385385887

`A236103(A000041(n))`
-/

namespace A332886.P16549207886385385887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236103 (A000041 n).toNat

end

end A332886.P16549207886385385887

/-! ## A332886.P3667187465778192959

`A236103(A213598(n))`
-/

namespace A332886.P3667187465778192959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236103 (A213598 n).toNat

end

end A332886.P3667187465778192959

/-! ## A332886.P13239378040442861801

`A236103(A330643(n))`
-/

namespace A332886.P13239378040442861801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236103 (A330643 n).toNat

end

end A332886.P13239378040442861801

/-! ## A332886.P12379238362562688225

`A236103(sqrt(A001255(n)))`
-/

namespace A332886.P12379238362562688225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236103 (SequenceMachineLib.roundAway (Real.sqrt (A001255 n : ℝ))).toNat

end

end A332886.P12379238362562688225

/-! ## A332886.P5567830383317761470

`A236103(∑[A002865(n)])`
-/

namespace A332886.P5567830383317761470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236103 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A332886.P5567830383317761470

/-!
# A332887: a(n) is the number of partition numbers > 1 that are proper divisors of the n-th partition number.

The programs for A332887, there is no canonical definition to state claims against.
-/

/-! ## A332887.P11469356069722348528

`A332886(n+2)-2`
-/

namespace A332887.P11469356069722348528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332886 (n + 2) - 2

end

end A332887.P11469356069722348528

/-! ## A332887.P10221624099357257248

`A023444(A332886(n+2))`
-/

namespace A332887.P10221624099357257248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A332886 (n + 2)).toNat

end

end A332887.P10221624099357257248

/-! ## A332887.P14497399844719843

`A139399(2^A332886(n+2))`
-/

namespace A332887.P14497399844719843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A332886 (n + 2) : ℤ))).toNat

end

end A332887.P14497399844719843

/-! ## A332887.P9953456167366301259

`A349355(A001316(n+1))+A332886(n+2)`
-/

namespace A332887.P9953456167366301259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349355 (A001316 (n + 1)).toNat + A332886 (n + 2)

end

end A332887.P9953456167366301259

/-! ## A332887.P3052113866421998217

`A354359(A164368(n+1))+A332886(n+2)`
-/

namespace A332887.P3052113866421998217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354359 (A164368 (n + 1)).toNat + A332886 (n + 2)

end

end A332887.P3052113866421998217

/-!
# A332888: a(n) = number of strict partition numbers that divide the n-th strict partition number.

The programs for A332888, there is no canonical definition to state claims against.
-/

/-! ## A332888.P17509704114522146163

`∑{d}[A000009(n), A167393(#)]`
-/

namespace A332888.P17509704114522146163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A167393 d

end

end A332888.P17509704114522146163

/-! ## A332888.P18257606159003978614

`∑{d}[A081360(n), A167393(#)]`
-/

namespace A332888.P18257606159003978614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A167393 d

end

end A332888.P18257606159003978614

/-! ## A332888.P7858347761465059390

`∑{d}[∑[A087897(n)], A167393(#)]`
-/

namespace A332888.P7858347761465059390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A167393 d

end

end A332888.P7858347761465059390

/-! ## A332888.P10064535633950609654

`∑{d}[A111133(n)+1, A167393(#)]`
-/

namespace A332888.P10064535633950609654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A167393 d

end

end A332888.P10064535633950609654

/-! ## A332888.P1758049191867866381

`∑{d}[A035457(2*n), A167393(#)]`
-/

namespace A332888.P1758049191867866381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A167393 d

end

end A332888.P1758049191867866381

/-! ## A332888.P13232287881048585443

`∑{d}[ceil(A333147(n)/2), A167393(#)]`
-/

namespace A332888.P13232287881048585443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A333147 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A167393 d

end

end A332888.P13232287881048585443

/-! ## A332888.P9432296148597770238

`∑{d}[A000041(n)-A047967(n), A167393(#)]`
-/

namespace A332888.P9432296148597770238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A047967 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A167393 d

end

end A332888.P9432296148597770238

/-!
# A332889: a(n) = number of strict partition numbers >1 that are proper divisors of the n-th strict partition number.

The programs for A332889, there is no canonical definition to state claims against.
-/

/-! ## A332889.P17211573085176981810

`A332888(n+3)-2`
-/

namespace A332889.P17211573085176981810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332888 (n + 3) - 2

end

end A332889.P17211573085176981810

/-! ## A332889.P950049513754641349

`A289207(A332888(n+3))`
-/

namespace A332889.P950049513754641349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A332888 (n + 3)).toNat

end

end A332889.P950049513754641349

/-! ## A332889.P820409139146374193

`A354186(A000040(n+1))+A332888(n+3)`
-/

namespace A332889.P820409139146374193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354186 (A000040 (n + 1)).toNat + A332888 (n + 3)

end

end A332889.P820409139146374193

/-! ## A332889.P2367954225236680471

`A354186(A006567(n+1))+A332888(n+3)`
-/

namespace A332889.P2367954225236680471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354186 (A006567 (n + 1)).toNat + A332888 (n + 3)

end

end A332889.P2367954225236680471

/-! ## A332889.P16606939611326058535

`A354186(A359612(n+2))+A332888(n+3)`
-/

namespace A332889.P16606939611326058535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354186 (A359612 (n + 2)).toNat + A332888 (n + 3)

end

end A332889.P16606939611326058535

/-! ## A332889.P16778388323470120124

`A354186(A006093(n+1)+1)+A332888(n+3)`
-/

namespace A332889.P16778388323470120124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354186 (A006093 (n + 1) + 1).toNat + A332888 (n + 3)

end

end A332889.P16778388323470120124

/-! ## A332889.P11926769167599829958

`A354186(A008578(3*n+4))+A332888(n+3)`
-/

namespace A332889.P11926769167599829958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354186 (A008578 (3 * n + 4)).toNat + A332888 (n + 3)

end

end A332889.P11926769167599829958

/-!
# A332893: a(1) = 1, a(2n) = n, a(2n+1) = A332819(2n+1).

The programs for A332893, there is no canonical definition to state claims against.
-/

/-! ## A332893.P15037100336536177102

`A152271(n)*A332819(A141310(n))`
-/

namespace A332893.P15037100336536177102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n * A332819 (A141310 n).toNat

end

end A332893.P15037100336536177102

/-! ## A332893.P3384226881291656623

`A133265(n)/2*A332819(A141310(n))`
-/

namespace A332893.P3384226881291656623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133265 n : ℚ) / 2 * (A332819 (A141310 n).toNat : ℚ)

end

end A332893.P3384226881291656623

/-! ## A332893.P1812588022187748629

`A332819(A141310(n))+A142150(xor(1, n))`
-/

namespace A332893.P1812588022187748629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332819 (A141310 n).toNat + A142150 (Nat.xor 1 n)

end

end A332893.P1812588022187748629

/-! ## A332893.P12345235571477974922

`(A093178(n)+1)/2*A332819(A141310(n))`
-/

namespace A332893.P12345235571477974922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093178 n + 1 : ℚ) / 2 * (A332819 (A141310 n).toNat : ℚ)

end

end A332893.P12345235571477974922

/-! ## A332893.P4494730788718648150

`A332819(A141310(n))+A004526(A124625(n))`
-/

namespace A332893.P4494730788718648150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332819 (A141310 n).toNat + A004526 (A124625 n).toNat

end

end A332893.P4494730788718648150

/-! ## A332893.P9670533923870830567

`A332819(n+1)+A152271(n)-A332819(A152271(n))`
-/

namespace A332893.P9670533923870830567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332819 (n + 1) + (A152271 n - A332819 (A152271 n).toNat)

end

end A332893.P9670533923870830567

/-! ## A332893.P12283531306267995748

`A142150(A133265(n))*A332819(A141310(n))`
-/

namespace A332893.P12283531306267995748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A133265 n).toNat * A332819 (A141310 n).toNat

end

end A332893.P12283531306267995748

/-! ## A332893.P13578596157373122879

`lcm(A057979(n+2), A332819(A141310(n)))`
-/

namespace A332893.P13578596157373122879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057979 (n + 2)) (A332819 (A141310 n).toNat)

end

end A332893.P13578596157373122879

/-! ## A332893.P5072235807726666089

`A108548(A252463(A332808(n+1)))`
-/

namespace A332893.P5072235807726666089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108548 (A252463 (A332808 (n + 1)).toNat).toNat

end

end A332893.P5072235807726666089

/-!
# A332894: a(1) = 0, a(2n) = 1 + a(n), a(2n+1) = 1 + a(A332819(2n+1)); also binary width of terms of A332816.

The programs for A332894, there is no canonical definition to state claims against.
-/

/-! ## A332894.P3986289362850608164

`A252464(A332808(n+1))`
-/

namespace A332894.P3986289362850608164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (A332808 (n + 1)).toNat

end

end A332894.P3986289362850608164

/-! ## A332894.P15069043607897623444

`A332899(n+1)+A252736(n+1)`
-/

namespace A332894.P15069043607897623444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332899 (n + 1) + A252736 (n + 1)

end

end A332894.P15069043607897623444

/-! ## A332894.P20674416593701985

`floor(log2(A332811(2*(n+1))))`
-/

namespace A332894.P20674416593701985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A332811 (2 * (n + 1))).toNat

end

end A332894.P20674416593701985

/-! ## A332894.P9666830673641398718

`floor(log2(A332816(2*(n+1))))`
-/

namespace A332894.P9666830673641398718
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A332816 (2 * (n + 1))).toNat

end

end A332894.P9666830673641398718

/-! ## A332894.P17416389803254740952

`floor(log2(A332895(2*(n+1))))`
-/

namespace A332894.P17416389803254740952
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A332895 (2 * (n + 1))).toNat

end

end A332894.P17416389803254740952

/-!
# A332895: a(1) = 0, a(2) = 1, and for n > 2, a(n) = 2*a(A332893(n)) + [n == 1 (mod 4)].

The programs for A332895, there is no canonical definition to state claims against.
-/

/-! ## A332895.P12937402154051831535

`A332811(n+1)-A332896(n+1)`
-/

namespace A332895.P12937402154051831535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332811 (n + 1) - A332896 (n + 1)

end

end A332895.P12937402154051831535

/-! ## A332895.P16636113374622308826

`xor(A332811(A000027(n+1)), A332896(n+1))`
-/

namespace A332895.P16636113374622308826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A332811 (A000027 (n + 1)).toNat) (A332896 (n + 1))

end

end A332895.P16636113374622308826

/-! ## A332895.P9956698404834227907

`xor(A332811(-A001478(n+1)), A332896(n+1))`
-/

namespace A332895.P9956698404834227907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A332811 (-A001478 (n + 1)).toNat) (A332896 (n + 1))

end

end A332895.P9956698404834227907

/-! ## A332895.P7138835952245207707

`A243071(A332808(n+1))-A332896(n+1)`
-/

namespace A332895.P7138835952245207707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A332808 (n + 1)).toNat - A332896 (n + 1)

end

end A332895.P7138835952245207707

/-! ## A332895.P86541157271838356

`xor(A332811(n+1), A332896(n+1))%A198275(n)`
-/

namespace A332895.P86541157271838356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (A332811 (n + 1)) (A332896 (n + 1))) (A198275 n)

end

end A332895.P86541157271838356

/-!
# A332896: a(1) = 0, and for n > 1, a(n) = 2*a(A332893(n)) + [n == 3 (mod 4)].

The programs for A332896, there is no canonical definition to state claims against.
-/

/-! ## A332896.P5009675999762455419

`A332811(n+1)-A332895(n+1)`
-/

namespace A332896.P5009675999762455419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332811 (n + 1) - A332895 (n + 1)

end

end A332896.P5009675999762455419

/-! ## A332896.P16180790398031019939

`xor(A332811(A000027(n+1)), A332895(n+1))`
-/

namespace A332896.P16180790398031019939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A332811 (A000027 (n + 1)).toNat) (A332895 (n + 1))

end

end A332896.P16180790398031019939

/-! ## A332896.P12836127917703664533

`xor(A332811(A025480(2*(n+1))), A332895(n+1))`
-/

namespace A332896.P12836127917703664533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A332811 (A025480 (2 * (n + 1))).toNat) (A332895 (n + 1))

end

end A332896.P12836127917703664533

/-! ## A332896.P14354330549539400911

`A243071(A332808(n+1))-A332895(n+1)`
-/

namespace A332896.P14354330549539400911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A332808 (n + 1)).toNat - A332895 (n + 1)

end

end A332896.P14354330549539400911

/-! ## A332896.P15259270279155186895

`∑{d}[A332808(n+1), A297171(#)]-A332895(n+1)`
-/

namespace A332896.P15259270279155186895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297171 d - A332895 (n + 1)

end

end A332896.P15259270279155186895

/-!
# A332897: a(1) = 0, a(2) = 1, and for n > 2, a(n) = a(A332893(n)) + [n == 1 (mod 4)].

The programs for A332897, there is no canonical definition to state claims against.
-/

/-! ## A332897.P8501664236199844605

`A000120(A332895(n+1))`
-/

namespace A332897.P8501664236199844605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A332895 (n + 1)).toNat

end

end A332897.P8501664236199844605

/-! ## A332897.P14515606299895192788

`A332899(n+1)-A332898(n+1)`
-/

namespace A332897.P14515606299895192788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332899 (n + 1) - A332898 (n + 1)

end

end A332897.P14515606299895192788

/-! ## A332897.P16297202424005442565

`A061395(A332808(n+1))-A332898(n+1)`
-/

namespace A332897.P16297202424005442565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A332808 (n + 1)).toNat - A332898 (n + 1)

end

end A332897.P16297202424005442565

/-! ## A332897.P10927996510720382881

`A332894(n+1)-(A332898(n+1)+A252736(n+1))`
-/

namespace A332897.P10927996510720382881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332894 (n + 1) - (A332898 (n + 1) + A252736 (n + 1))

end

end A332897.P10927996510720382881

/-! ## A332897.P17912692733861026062

`A332997(A332811(n+1))`
-/

namespace A332897.P17912692733861026062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332997 (A332811 (n + 1)).toNat

end

end A332897.P17912692733861026062

/-! ## A332897.P18330604288165024733

`A332997(A332896(n+1)+A332895(n+1))`
-/

namespace A332897.P18330604288165024733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332997 (A332896 (n + 1) + A332895 (n + 1)).toNat

end

end A332897.P18330604288165024733

/-!
# A332898: a(1) = 0, and for n > 1, a(n) = a(A332893(n)) + [n == 3 (mod 4)].

The programs for A332898, there is no canonical definition to state claims against.
-/

/-! ## A332898.P13755928320243435290

`A000120(A332896(n+1))`
-/

namespace A332898.P13755928320243435290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A332896 (n + 1)).toNat

end

end A332898.P13755928320243435290

/-! ## A332898.P5629880973274126150

`A332899(n+1)-A332897(n+1)`
-/

namespace A332898.P5629880973274126150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332899 (n + 1) - A332897 (n + 1)

end

end A332898.P5629880973274126150

/-! ## A332898.P12763569789143844364

`A061395(A332808(n+1))-A332897(n+1)`
-/

namespace A332898.P12763569789143844364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A332808 (n + 1)).toNat - A332897 (n + 1)

end

end A332898.P12763569789143844364

/-! ## A332898.P16334114290100678611

`A332897((n+1)²)-A332897(n+1)`
-/

namespace A332898.P16334114290100678611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332897 ((n + 1) ^ 2) - A332897 (n + 1)

end

end A332898.P16334114290100678611

/-! ## A332898.P10462416365561889415

`A332998(A332811(n+1))`
-/

namespace A332898.P10462416365561889415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332998 (A332811 (n + 1)).toNat

end

end A332898.P10462416365561889415

/-! ## A332898.P5251589916278395432

`A332998(A332896(n+1)+A332895(n+1))`
-/

namespace A332898.P5251589916278395432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332998 (A332896 (n + 1) + A332895 (n + 1)).toNat

end

end A332898.P5251589916278395432

/-! ## A332898.P2589188007956841928

`A332899(n+1)-A332997(A332811(n+1))`
-/

namespace A332898.P2589188007956841928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332899 (n + 1) - A332997 (A332811 (n + 1)).toNat

end

end A332898.P2589188007956841928

/-!
# A332899: a(1) = 0, and for n > 2, a(n) = a(A332893(n)) + A000035(n).

The programs for A332899, there is no canonical definition to state claims against.
-/

/-! ## A332899.P7331209940097886202

`A061395(A332808(n+1))`
-/

namespace A332899.P7331209940097886202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A332808 (n + 1)).toNat

end

end A332899.P7331209940097886202

/-! ## A332899.P924965825570326021

`A332897(n+1)+A332898(n+1)`
-/

namespace A332899.P924965825570326021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332897 (n + 1) + A332898 (n + 1)

end

end A332899.P924965825570326021

/-! ## A332899.P2970883749430494315

`A000120(A332811(n+1))`
-/

namespace A332899.P2970883749430494315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A332811 (n + 1)).toNat

end

end A332899.P2970883749430494315

/-! ## A332899.P6862620285432246944

`A332894(n+1)-A252736(n+1)`
-/

namespace A332899.P6862620285432246944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332894 (n + 1) - A252736 (n + 1)

end

end A332899.P6862620285432246944

/-! ## A332899.P14039193494006632993

`A332897((n+1)²)`
-/

namespace A332899.P14039193494006632993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332897 ((n + 1) ^ 2)

end

end A332899.P14039193494006632993

/-! ## A332899.P1683796043084512925

`A332897(∑[2*n+1])%(n+1)`
-/

namespace A332899.P1683796043084512925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332897 (∑ j ∈ Finset.range (n + 1), f1 j)) (n + 1 : ℤ)

end

end A332899.P1683796043084512925

/-! ## A332899.P17719915696049837140

`A332816(A332815(A332897((n+1)*(n+1))))`
-/

namespace A332899.P17719915696049837140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332816 (A332815 (A332897 ((n + 1) * (n + 1))).toNat).toNat

end

end A332899.P17719915696049837140

/-! ## A332899.P11434339367127757326

`A290251(A332816(n+1))`
-/

namespace A332899.P11434339367127757326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 (A332816 (n + 1)).toNat

end

end A332899.P11434339367127757326

