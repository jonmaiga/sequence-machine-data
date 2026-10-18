import SequenceMachineLib.Basic
import Seq.B000.C006
import Seq.B000.C010
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C003
import Seq.B002.C001
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.Opaque.C001
import Seq.Opaque.C005

/-!
# A070400: a(n) = 6^n mod 37.

The programs for A070400, the canonical program `A070400.P10185152292824196824` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070400 has offset 0).

The definition of A070400 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070400.P10185152292824196824

`a(n-4)` with `a(0)=1, a(1)=6, a(2)=36, a(3)=31`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070400

/-- `a(n-4)` -/
def P10185152292824196824.Spec : Prop :=
  ∀ n, (P10185152292824196824.a n : ℤ) = A070400 n

theorem P10185152292824196824.correct : P10185152292824196824.Spec := by
  intro n
  simp only [A070400]

end A070400

/-!
# A070401: a(n) = 6^n mod 47.

The programs for A070401, the canonical program `A070401.P11422309779595177985` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070401 has offset 0).

The definition of A070401 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070401.P11422309779595177985

`(6*a(n-1))%47` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070401

/-- `(6*a(n-1))%47` -/
def P11422309779595177985.Spec : Prop :=
  ∀ n, (P11422309779595177985.a n : ℤ) = A070401 n

theorem P11422309779595177985.correct : P11422309779595177985.Spec := by
  intro n
  simp only [A070401]

end A070401

/-!
# A070402: a(n) = 2^n mod 5.

The programs for A070402, the canonical program `A070402.P14652274366504996575` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070402 has offset 0).

The definition of A070402 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070402.P14652274366504996575

`a(n-1)-a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070402

/-- `a(n-1)-a(n-2)+a(n-3)` -/
def P14652274366504996575.Spec : Prop :=
  ∀ n, P14652274366504996575.a n = A070402 n

theorem P14652274366504996575.correct : P14652274366504996575.Spec := by
  intro n
  simp only [A070402]

end A070402

/-!
# A070403: a(n) = 7^n mod 9.

The programs for A070403, the canonical program `A070403.P17916869300024313800` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070403 has offset 0).

The definition of A070403 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070403.P17916869300024313800

`a(n-3)` with `a(0)=1, a(1)=7, a(2)=4`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070403

/-- `a(n-3)` -/
def P17916869300024313800.Spec : Prop :=
  ∀ n, (P17916869300024313800.a n : ℤ) = A070403 n

theorem P17916869300024313800.correct : P17916869300024313800.Spec := by
  intro n
  simp only [A070403]

end A070403

/-!
# A070404: a(n) = 7^n mod 11.

The programs for A070404, the canonical program `A070404.P9842961580031254777` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070404 has offset 0).

The definition of A070404 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070404.P9842961580031254777

`a(n-10)` with `a(0)=1, a(1)=7, a(2)=5, a(3)=2, a(4)=3, a(5)=10, a(6)=4, a(7)=6, a(8)=9, a(9)=8`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070404

/-- `a(n-10)` -/
def P9842961580031254777.Spec : Prop :=
  ∀ n, (P9842961580031254777.a n : ℤ) = A070404 n

theorem P9842961580031254777.correct : P9842961580031254777.Spec := by
  intro n
  simp only [A070404]

end A070404

/-!
# A070405: a(n) = 7^n mod 13.

The programs for A070405, the canonical program `A070405.P9978818919327121131` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070405 has offset 0).

The definition of A070405 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070405.P9978818919327121131

`a(n-1)-a(n-6)+a(n-7)` with `a(0)=1, a(1)=7, a(2)=10, a(3)=5, a(4)=9, a(5)=11, a(6)=12`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070405

/-- `a(n-1)-a(n-6)+a(n-7)` -/
def P9978818919327121131.Spec : Prop :=
  ∀ n, P9978818919327121131.a n = A070405 n

theorem P9978818919327121131.correct : P9978818919327121131.Spec := by
  intro n
  simp only [A070405]

end A070405

/-!
# A070406: a(n) = 7^n mod 15.

The programs for A070406, the canonical program `A070406.P16511783930150534217` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070406 has offset 0).

The definition of A070406 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070406.P16511783930150534217

`a(n-4)` with `a(0)=1, a(1)=7, a(2)=4, a(3)=13`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070406

/-- `a(n-4)` -/
def P16511783930150534217.Spec : Prop :=
  ∀ n, (P16511783930150534217.a n : ℤ) = A070406 n

theorem P16511783930150534217.correct : P16511783930150534217.Spec := by
  intro n
  simp only [A070406]

end A070406

/-!
# A070407: a(n) = 7^n mod 17.

The programs for A070407, the canonical program `A070407.P62203253580032942` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070407 has offset 0).

The definition of A070407 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070407.P62203253580032942

`a(n-1)-a(n-8)+a(n-9)` with `a(0)=1, a(1)=7, a(2)=15, a(3)=3, a(4)=4, a(5)=11, a(6)=9, a(7)=12, a(8)=16`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070407

/-- `a(n-1)-a(n-8)+a(n-9)` -/
def P62203253580032942.Spec : Prop :=
  ∀ n, P62203253580032942.a n = A070407 n

theorem P62203253580032942.correct : P62203253580032942.Spec := by
  intro n
  simp only [A070407]

end A070407

/-!
# A070408: a(n) = 7^n mod 22.

The programs for A070408, the canonical program `A070408.P11540405188456264859` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070408 has offset 0).

The definition of A070408 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070408.P11540405188456264859

`a(n-10)` with `a(0)=1, a(1)=7, a(2)=5, a(3)=13, a(4)=3, a(5)=21, a(6)=15, a(7)=17, a(8)=9, a(9)=19`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070408

/-- `a(n-10)` -/
def P11540405188456264859.Spec : Prop :=
  ∀ n, (P11540405188456264859.a n : ℤ) = A070408 n

theorem P11540405188456264859.correct : P11540405188456264859.Spec := by
  intro n
  simp only [A070408]

end A070408

/-!
# A070409: a(n) = 7^n mod 23.

The programs for A070409, the canonical program `A070409.P296099454881216925` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070409 has offset 0).

The definition of A070409 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070409.P296099454881216925

`(99*a(n-1))%23` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070409

/-- `(99*a(n-1))%23` -/
def P296099454881216925.Spec : Prop :=
  ∀ n, (P296099454881216925.a n : ℤ) = A070409 n

theorem P296099454881216925.correct : P296099454881216925.Spec := by
  intro n
  simp only [A070409]

end A070409

/-!
# A070410: a(n) = 7^n mod 25.

The programs for A070410, the canonical program `A070410.P11898094663944204915` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070410 has offset 0).

The definition of A070410 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070410.P11898094663944204915

`a(n-4)` with `a(0)=1, a(1)=7, a(2)=24, a(3)=18`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070410

/-- `a(n-4)` -/
def P11898094663944204915.Spec : Prop :=
  ∀ n, (P11898094663944204915.a n : ℤ) = A070410 n

theorem P11898094663944204915.correct : P11898094663944204915.Spec := by
  intro n
  simp only [A070410]

end A070410

/-!
# A070411: a(n) = 7^n mod 26.

The programs for A070411, the canonical program `A070411.P12190021387445766757` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070411 has offset 0).

The definition of A070411 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070411.P12190021387445766757

`a(n-1)-a(n-6)+a(n-7)` with `a(0)=1, a(1)=7, a(2)=23, a(3)=5, a(4)=9, a(5)=11, a(6)=25`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070411

/-- `a(n-1)-a(n-6)+a(n-7)` -/
def P12190021387445766757.Spec : Prop :=
  ∀ n, P12190021387445766757.a n = A070411 n

theorem P12190021387445766757.correct : P12190021387445766757.Spec := by
  intro n
  simp only [A070411]

end A070411

/-!
# A070412: a(n) = 7^n mod 27.

The programs for A070412, the canonical program `A070412.P17195710593601807091` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070412 has offset 0).

The definition of A070412 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070412.P17195710593601807091

`a(n-9)` with `a(0)=1, a(1)=7, a(2)=22, a(3)=19, a(4)=25, a(5)=13, a(6)=10, a(7)=16, a(8)=4`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070412

/-- `a(n-9)` -/
def P17195710593601807091.Spec : Prop :=
  ∀ n, (P17195710593601807091.a n : ℤ) = A070412 n

theorem P17195710593601807091.correct : P17195710593601807091.Spec := by
  intro n
  simp only [A070412]

end A070412

/-!
# A070413: a(n) = 7^n mod 29.

The programs for A070413, the canonical program `A070413.P2607222986699651498` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070413 has offset 0).

The definition of A070413 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070413.P2607222986699651498

`a(n-7)` with `a(0)=1, a(1)=7, a(2)=20, a(3)=24, a(4)=23, a(5)=16, a(6)=25`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070413

/-- `a(n-7)` -/
def P2607222986699651498.Spec : Prop :=
  ∀ n, (P2607222986699651498.a n : ℤ) = A070413 n

theorem P2607222986699651498.correct : P2607222986699651498.Spec := by
  intro n
  simp only [A070413]

end A070413

/-!
# A070414: a(n) = 7^n mod 30.

The programs for A070414, the canonical program `A070414.P9920014016832554360` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070414 has offset 0).

The definition of A070414 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070414.P9920014016832554360

`a(n-4)` with `a(0)=1, a(1)=7, a(2)=19, a(3)=13`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070414

/-- `a(n-4)` -/
def P9920014016832554360.Spec : Prop :=
  ∀ n, (P9920014016832554360.a n : ℤ) = A070414 n

theorem P9920014016832554360.correct : P9920014016832554360.Spec := by
  intro n
  simp only [A070414]

end A070414

/-!
# A070415: a(n) = 7^n mod 31.

The programs for A070415, the canonical program `A070415.P7018097374851862185` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070415 has offset 0).

The definition of A070415 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070415.P7018097374851862185

`(7*a(n-1))%31` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070415

/-- `(7*a(n-1))%31` -/
def P7018097374851862185.Spec : Prop :=
  ∀ n, (P7018097374851862185.a n : ℤ) = A070415 n

theorem P7018097374851862185.correct : P7018097374851862185.Spec := by
  intro n
  simp only [A070415]

end A070415

/-!
# A070416: a(n) = 7^n mod 32.

The programs for A070416, the canonical program `A070416.P11537922546914434429` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070416 has offset 0).

The definition of A070416 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070416.P11537922546914434429

`a(n-4)` with `a(0)=1, a(1)=7, a(2)=17, a(3)=23`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070416

/-- `a(n-4)` -/
def P11537922546914434429.Spec : Prop :=
  ∀ n, (P11537922546914434429.a n : ℤ) = A070416 n

theorem P11537922546914434429.correct : P11537922546914434429.Spec := by
  intro n
  simp only [A070416]

end A070416

/-!
# A070417: a(n) = 7^n mod 33.

The programs for A070417, the canonical program `A070417.P9623908105772476278` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070417 has offset 0).

The definition of A070417 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070417.P9623908105772476278

`a(n-10)` with `a(0)=1, a(1)=7, a(2)=16, a(3)=13, a(4)=25, a(5)=10, a(6)=4, a(7)=28, a(8)=31, a(9)=19`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070417

/-- `a(n-10)` -/
def P9623908105772476278.Spec : Prop :=
  ∀ n, (P9623908105772476278.a n : ℤ) = A070417 n

theorem P9623908105772476278.correct : P9623908105772476278.Spec := by
  intro n
  simp only [A070417]

end A070417

/-!
# A070418: Numbers k such that k and phi(k) have the same number of divisors.

The programs for A070418, the canonical program `A070418.P12910822427567143407` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070418 has offset 1).

The definition of A070418 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1409 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070418.P12910822427567143407

`eq[A000005(n+1), A000005(A000010(n+1))]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A070418

/-- `eq[A000005(n+1), A000005(A000010(n+1))]+1` -/
def P12910822427567143407.Spec : Prop :=
  ∀ n, (P12910822427567143407.a n : ℤ) = A070418 (n + 1)

theorem P12910822427567143407.correct : P12910822427567143407.Spec := by
  intro n
  simp only [A070418, Nat.add_sub_cancel]

end A070418

/-! ## A070418.P1323507054996505763

`eq[A000005(n+1), A062821(n+1)]+1`
-/

namespace A070418.P1323507054996505763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A070418.P1323507054996505763

namespace A070418

/-- `eq[A000005(n+1), A062821(n+1)]+1` -/
def P1323507054996505763.Spec : Prop :=
  ∀ n, (P1323507054996505763.a n : ℤ) = A070418 (n + 1)

end A070418

/-! ## A070418.P12076570762242934746

`eq[A032741(A000010(n+1)), A032741(n+1)]+1`
-/

namespace A070418.P12076570762242934746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A070418.P12076570762242934746

namespace A070418

/-- `eq[A032741(A000010(n+1)), A032741(n+1)]+1` -/
def P12076570762242934746.Spec : Prop :=
  ∀ n, (P12076570762242934746.a n : ℤ) = A070418 (n + 1)

end A070418

/-! ## A070418.P13806447775709358942

`eq[A035116(A000010(n+1)), A035116(n+1)]+1`
-/

namespace A070418.P13806447775709358942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035116 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035116 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A070418.P13806447775709358942

namespace A070418

/-- `eq[A035116(A000010(n+1)), A035116(n+1)]+1` -/
def P13806447775709358942.Spec : Prop :=
  ∀ n, (P13806447775709358942.a n : ℤ) = A070418 (n + 1)

end A070418

/-! ## A070418.P7315005749180465134

`eq[A062011(A000010(n+1)), A062011(n+1)]+1`
-/

namespace A070418.P7315005749180465134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A070418.P7315005749180465134

namespace A070418

/-- `eq[A062011(A000010(n+1)), A062011(n+1)]+1` -/
def P7315005749180465134.Spec : Prop :=
  ∀ n, (P7315005749180465134.a n : ℤ) = A070418 (n + 1)

end A070418

/-! ## A070418.P9017257177365095756

`eq[A334954(A000010(n+1)), A334954(n+1)]+1`
-/

namespace A070418.P9017257177365095756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A070418.P9017257177365095756

namespace A070418

/-- `eq[A334954(A000010(n+1)), A334954(n+1)]+1` -/
def P9017257177365095756.Spec : Prop :=
  ∀ n, (P9017257177365095756.a n : ℤ) = A070418 (n + 1)

end A070418

/-! ## A070418.P3172638836964613188

`eq[∏{e}[n+1, #+1], A112329(4*A000010(n+1))]+1`
-/

namespace A070418.P3172638836964613188
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (4 * A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n + 1

end

end A070418.P3172638836964613188

namespace A070418

/-- `eq[∏{e}[n+1, #+1], A112329(4*A000010(n+1))]+1` -/
def P3172638836964613188.Spec : Prop :=
  ∀ n, (P3172638836964613188.a n : ℤ) = A070418 (n + 1)

end A070418

/-!
# A070419: a(n) = 7^n mod 36.

The programs for A070419, the canonical program `A070419.P11348679197052352720` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070419 has offset 0).

The definition of A070419 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070419.P11348679197052352720

`a(n-6)` with `a(0)=1, a(1)=7, a(2)=13, a(3)=19, a(4)=25, a(5)=31`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070419

/-- `a(n-6)` -/
def P11348679197052352720.Spec : Prop :=
  ∀ n, (P11348679197052352720.a n : ℤ) = A070419 n

theorem P11348679197052352720.correct : P11348679197052352720.Spec := by
  intro n
  simp only [A070419]

end A070419

/-!
# A070420: a(n) = 7^n mod 37.

The programs for A070420, the canonical program `A070420.P1308532024172838749` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070420 has offset 0).

The definition of A070420 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070420.P1308532024172838749

`a(n-9)` with `a(0)=1, a(1)=7, a(2)=12, a(3)=10, a(4)=33, a(5)=9, a(6)=26, a(7)=34, a(8)=16`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070420

/-- `a(n-9)` -/
def P1308532024172838749.Spec : Prop :=
  ∀ n, (P1308532024172838749.a n : ℤ) = A070420 n

theorem P1308532024172838749.correct : P1308532024172838749.Spec := by
  intro n
  simp only [A070420]

end A070420

/-!
# A070421: a(n) = 7^n mod 38.

The programs for A070421, the canonical program `A070421.P10270292036796713250` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070421 has offset 0).

The definition of A070421 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070421.P10270292036796713250

`a(n-3)` with `a(0)=1, a(1)=7, a(2)=11`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070421

/-- `a(n-3)` -/
def P10270292036796713250.Spec : Prop :=
  ∀ n, (P10270292036796713250.a n : ℤ) = A070421 n

theorem P10270292036796713250.correct : P10270292036796713250.Spec := by
  intro n
  simp only [A070421]

end A070421

/-!
# A070422: a(n) = 7^n mod 39.

The programs for A070422, the canonical program `A070422.P6538264564158119359` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070422 has offset 0).

The definition of A070422 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070422.P6538264564158119359

`a(n-2)-a(n-4)+a(n-6)-a(n-8)+a(n-10)` with `a(0)=1, a(1)=7, a(2)=10, a(3)=31, a(4)=22, a(5)=37, a(6)=25, a(7)=19, a(8)=16, a(9)=34`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070422

/-- `a(n-2)-a(n-4)+a(n-6)-a(n-8)+a(n-10)` -/
def P6538264564158119359.Spec : Prop :=
  ∀ n, P6538264564158119359.a n = A070422 n

theorem P6538264564158119359.correct : P6538264564158119359.Spec := by
  intro n
  simp only [A070422]

end A070422

/-!
# A070423: a(n) = 7^n mod 40.

The programs for A070423, the canonical program `A070423.P6058490411443126669` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070423 has offset 0).

The definition of A070423 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070423.P6058490411443126669

`a(n-4)` with `a(0)=1, a(1)=7, a(2)=9, a(3)=23`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070423

/-- `a(n-4)` -/
def P6058490411443126669.Spec : Prop :=
  ∀ n, (P6058490411443126669.a n : ℤ) = A070423 n

theorem P6058490411443126669.correct : P6058490411443126669.Spec := by
  intro n
  simp only [A070423]

end A070423

/-!
# A070424: a(n) = 7^n mod 41.

The programs for A070424, the canonical program `A070424.P12751588888354665045` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070424 has offset 0).

The definition of A070424 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070424.P12751588888354665045

`(7*a(n-1))%41` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070424

/-- `(7*a(n-1))%41` -/
def P12751588888354665045.Spec : Prop :=
  ∀ n, (P12751588888354665045.a n : ℤ) = A070424 n

theorem P12751588888354665045.correct : P12751588888354665045.Spec := by
  intro n
  simp only [A070424]

end A070424

/-!
# A070425: a(n) = 7^n mod 43.

The programs for A070425, the canonical program `A070425.P16354183869889664659` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070425 has offset 0).

The definition of A070425 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070425.P16354183869889664659

`a(n-6)` with `a(0)=1, a(1)=7, a(2)=6, a(3)=42, a(4)=36, a(5)=37`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070425

/-- `a(n-6)` -/
def P16354183869889664659.Spec : Prop :=
  ∀ n, (P16354183869889664659.a n : ℤ) = A070425 n

theorem P16354183869889664659.correct : P16354183869889664659.Spec := by
  intro n
  simp only [A070425]

end A070425

/-!
# A070426: a(n) = 7^n mod 44.

The programs for A070426, the canonical program `A070426.P10521480670665855542` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070426 has offset 0).

The definition of A070426 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070426.P10521480670665855542

`a(n-10)` with `a(0)=1, a(1)=7, a(2)=5, a(3)=35, a(4)=25, a(5)=43, a(6)=37, a(7)=39, a(8)=9, a(9)=19`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070426

/-- `a(n-10)` -/
def P10521480670665855542.Spec : Prop :=
  ∀ n, (P10521480670665855542.a n : ℤ) = A070426 n

theorem P10521480670665855542.correct : P10521480670665855542.Spec := by
  intro n
  simp only [A070426]

end A070426

/-!
# A070427: a(n) = 7^n mod 45.

The programs for A070427, the canonical program `A070427.P12609492843314836004` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070427 has offset 0).

The definition of A070427 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070427.P12609492843314836004

`(7*a(n-1))%45` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070427

/-- `(7*a(n-1))%45` -/
def P12609492843314836004.Spec : Prop :=
  ∀ n, (P12609492843314836004.a n : ℤ) = A070427 n

theorem P12609492843314836004.correct : P12609492843314836004.Spec := by
  intro n
  simp only [A070427]

end A070427

/-!
# A070428: Number of perfect powers (A001597) not exceeding 10^n.

The programs for A070428, there is no canonical definition to state claims against.
-/

/-! ## A070428.P2993744112618736945

`∑[A294602(∑[A306357(2*n+3)])]`
-/

namespace A070428.P2993744112618736945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306357 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294602 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070428.P2993744112618736945

/-! ## A070428.P14816111476803455556

`xor(∑[A089797(3*(n+1))], A026816(3*(n+1)))`
-/

namespace A070428.P14816111476803455556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089797 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A026816 (3 * (n + 1)))

end

end A070428.P14816111476803455556

/-!
# A070429: a(n) = 7^n mod 47.

The programs for A070429, the canonical program `A070429.P1262805709070676905` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070429 has offset 0).

The definition of A070429 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070429.P1262805709070676905

`(7*a(n-1))%47` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070429

/-- `(7*a(n-1))%47` -/
def P1262805709070676905.Spec : Prop :=
  ∀ n, (P1262805709070676905.a n : ℤ) = A070429 n

theorem P1262805709070676905.correct : P1262805709070676905.Spec := by
  intro n
  simp only [A070429]

end A070429

/-!
# A070430: a(n) = n^2 mod 5.

The programs for A070430, the canonical program `A070430.P13649630533228626573` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070430 has offset 0).

The definition of A070430 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070430.P13649630533228626573

`n²%5`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070430

/-- `n²%5` -/
def P13649630533228626573.Spec : Prop :=
  ∀ n, (P13649630533228626573.a n : ℤ) = A070430 n

theorem P13649630533228626573.correct : P13649630533228626573.Spec := by
  intro n
  simp only [A070430]

end A070430

/-!
# A070431: a(n) = n^2 mod 6.

The programs for A070431, the canonical program `A070431.P7600090919849270006` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070431 has offset 0).

The definition of A070431 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070431.P7600090919849270006

`n²%6`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070431

/-- `n²%6` -/
def P7600090919849270006.Spec : Prop :=
  ∀ n, (P7600090919849270006.a n : ℤ) = A070431 n

theorem P7600090919849270006.correct : P7600090919849270006.Spec := by
  intro n
  simp only [A070431]

end A070431

/-!
# A070432: Period 4: repeat [0, 1, 4, 1]; a(n) = n^2 mod 8.

The programs for A070432, the canonical program `A070432.P9608462224796550643` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070432 has offset 0).

The definition of A070432 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070432.P9608462224796550643

`n²%8`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070432

/-- `n²%8` -/
def P9608462224796550643.Spec : Prop :=
  ∀ n, (P9608462224796550643.a n : ℤ) = A070432 n

theorem P9608462224796550643.correct : P9608462224796550643.Spec := by
  intro n
  simp only [A070432]

end A070432

/-!
# A070433: a(n) = n^2 mod 9.

The programs for A070433, the canonical program `A070433.P14281554298463016556` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070433 has offset 0).

The definition of A070433 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070433.P14281554298463016556

`n²%9`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070433

/-- `n²%9` -/
def P14281554298463016556.Spec : Prop :=
  ∀ n, (P14281554298463016556.a n : ℤ) = A070433 n

theorem P14281554298463016556.correct : P14281554298463016556.Spec := by
  intro n
  simp only [A070433]

end A070433

/-!
# A070434: a(n) = n^2 mod 11.

The programs for A070434, the canonical program `A070434.P15416121312503829875` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070434 has offset 0).

The definition of A070434 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070434.P15416121312503829875

`n²%11`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070434

/-- `n²%11` -/
def P15416121312503829875.Spec : Prop :=
  ∀ n, (P15416121312503829875.a n : ℤ) = A070434 n

theorem P15416121312503829875.correct : P15416121312503829875.Spec := by
  intro n
  simp only [A070434]

end A070434

/-!
# A070435: a(n) = n^2 mod 12, or alternately n^4 mod 12.

The programs for A070435, the canonical program `A070435.P1693440915559612720` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070435 has offset 0).

The definition of A070435 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070435.P1693440915559612720

`n²%12`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070435

/-- `n²%12` -/
def P1693440915559612720.Spec : Prop :=
  ∀ n, (P1693440915559612720.a n : ℤ) = A070435 n

theorem P1693440915559612720.correct : P1693440915559612720.Spec := by
  intro n
  simp only [A070435]

end A070435

/-!
# A070436: a(n) = n^2 mod 13.

The programs for A070436, the canonical program `A070436.P14723731776833475700` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070436 has offset 0).

The definition of A070436 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070436.P14723731776833475700

`n²%13`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070436

/-- `n²%13` -/
def P14723731776833475700.Spec : Prop :=
  ∀ n, (P14723731776833475700.a n : ℤ) = A070436 n

theorem P14723731776833475700.correct : P14723731776833475700.Spec := by
  intro n
  simp only [A070436]

end A070436

/-!
# A070437: a(n) = n^2 mod 14.

The programs for A070437, the canonical program `A070437.P17439045342879117999` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070437 has offset 0).

The definition of A070437 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070437.P17439045342879117999

`n²%14`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070437

/-- `n²%14` -/
def P17439045342879117999.Spec : Prop :=
  ∀ n, (P17439045342879117999.a n : ℤ) = A070437 n

theorem P17439045342879117999.correct : P17439045342879117999.Spec := by
  intro n
  simp only [A070437]

end A070437

/-!
# A070438: a(n) = n^2 mod 15.

The programs for A070438, the canonical program `A070438.P8580065970173098769` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070438 has offset 0).

The definition of A070438 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070438.P8580065970173098769

`n²%15`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070438

/-- `n²%15` -/
def P8580065970173098769.Spec : Prop :=
  ∀ n, (P8580065970173098769.a n : ℤ) = A070438 n

theorem P8580065970173098769.correct : P8580065970173098769.Spec := by
  intro n
  simp only [A070438]

end A070438

/-!
# A070439: a(n) = n^2 mod 16.

The programs for A070439, the canonical program `A070439.P9262648694973607488` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070439 has offset 0).

The definition of A070439 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070439.P9262648694973607488

`n²%16`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070439

/-- `n²%16` -/
def P9262648694973607488.Spec : Prop :=
  ∀ n, (P9262648694973607488.a n : ℤ) = A070439 n

theorem P9262648694973607488.correct : P9262648694973607488.Spec := by
  intro n
  simp only [A070439]

end A070439

/-!
# A070440: a(n) = n^2 mod 18.

The programs for A070440, the canonical program `A070440.P16252927356344110559` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070440 has offset 0).

The definition of A070440 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070440.P16252927356344110559

`n²%18`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070440

/-- `n²%18` -/
def P16252927356344110559.Spec : Prop :=
  ∀ n, (P16252927356344110559.a n : ℤ) = A070440 n

theorem P16252927356344110559.correct : P16252927356344110559.Spec := by
  intro n
  simp only [A070440]

end A070440

/-!
# A070441: n^2 mod 19.

The programs for A070441, the canonical program `A070441.P4860380538418349536` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070441 has offset 0).

The definition of A070441 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070441.P4860380538418349536

`n²%19`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070441

/-- `n²%19` -/
def P4860380538418349536.Spec : Prop :=
  ∀ n, (P4860380538418349536.a n : ℤ) = A070441 n

theorem P4860380538418349536.correct : P4860380538418349536.Spec := by
  intro n
  simp only [A070441]

end A070441

/-!
# A070442: a(n) = n^2 mod 20.

The programs for A070442, the canonical program `A070442.P1642344981458505647` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070442 has offset 0).

The definition of A070442 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070442.P1642344981458505647

`n²%20`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070442

/-- `n²%20` -/
def P1642344981458505647.Spec : Prop :=
  ∀ n, (P1642344981458505647.a n : ℤ) = A070442 n

theorem P1642344981458505647.correct : P1642344981458505647.Spec := by
  intro n
  simp only [A070442]

end A070442

/-!
# A070443: a(n) = n^2 mod 21.

The programs for A070443, the canonical program `A070443.P6660383300507350232` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070443 has offset 0).

The definition of A070443 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070443.P6660383300507350232

`n²%21`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070443

/-- `n²%21` -/
def P6660383300507350232.Spec : Prop :=
  ∀ n, (P6660383300507350232.a n : ℤ) = A070443 n

theorem P6660383300507350232.correct : P6660383300507350232.Spec := by
  intro n
  simp only [A070443]

end A070443

/-!
# A070444: a(n) = n^2 mod 22.

The programs for A070444, the canonical program `A070444.P15371062373712899472` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070444 has offset 0).

The definition of A070444 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070444.P15371062373712899472

`n²%22`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070444

/-- `n²%22` -/
def P15371062373712899472.Spec : Prop :=
  ∀ n, (P15371062373712899472.a n : ℤ) = A070444 n

theorem P15371062373712899472.correct : P15371062373712899472.Spec := by
  intro n
  simp only [A070444]

end A070444

/-!
# A070445: a(n) = n^2 mod 23.

The programs for A070445, the canonical program `A070445.P16316496943072602847` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070445 has offset 0).

The definition of A070445 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070445.P16316496943072602847

`n²%23`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070445

/-- `n²%23` -/
def P16316496943072602847.Spec : Prop :=
  ∀ n, (P16316496943072602847.a n : ℤ) = A070445 n

theorem P16316496943072602847.correct : P16316496943072602847.Spec := by
  intro n
  simp only [A070445]

end A070445

/-!
# A070446: a(n) = n^2 mod 24.

The programs for A070446, the canonical program `A070446.P1017940539263783076` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070446 has offset 0).

The definition of A070446 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070446.P1017940539263783076

`n²%24`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070446

/-- `n²%24` -/
def P1017940539263783076.Spec : Prop :=
  ∀ n, (P1017940539263783076.a n : ℤ) = A070446 n

theorem P1017940539263783076.correct : P1017940539263783076.Spec := by
  intro n
  simp only [A070446]

end A070446

/-!
# A070447: a(n) = n^2 mod 25.

The programs for A070447, the canonical program `A070447.P9554645578152341771` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070447 has offset 0).

The definition of A070447 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070447.P9554645578152341771

`n²%25`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070447

/-- `n²%25` -/
def P9554645578152341771.Spec : Prop :=
  ∀ n, (P9554645578152341771.a n : ℤ) = A070447 n

theorem P9554645578152341771.correct : P9554645578152341771.Spec := by
  intro n
  simp only [A070447]

end A070447

/-!
# A070448: a(n) = n^2 mod 26.

The programs for A070448, the canonical program `A070448.P1904474002317019673` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070448 has offset 0).

The definition of A070448 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070448.P1904474002317019673

`n²%26`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070448

/-- `n²%26` -/
def P1904474002317019673.Spec : Prop :=
  ∀ n, (P1904474002317019673.a n : ℤ) = A070448 n

theorem P1904474002317019673.correct : P1904474002317019673.Spec := by
  intro n
  simp only [A070448]

end A070448

/-!
# A070449: a(n) = n^2 mod 27.

The programs for A070449, the canonical program `A070449.P12849106193043106442` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070449 has offset 0).

The definition of A070449 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070449.P12849106193043106442

`n²%27`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070449

/-- `n²%27` -/
def P12849106193043106442.Spec : Prop :=
  ∀ n, (P12849106193043106442.a n : ℤ) = A070449 n

theorem P12849106193043106442.correct : P12849106193043106442.Spec := by
  intro n
  simp only [A070449]

end A070449

/-!
# A070450: a(n) = n^2 mod 28.

The programs for A070450, the canonical program `A070450.P2505732787251683723` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070450 has offset 0).

The definition of A070450 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070450.P2505732787251683723

`n²%28`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070450

/-- `n²%28` -/
def P2505732787251683723.Spec : Prop :=
  ∀ n, (P2505732787251683723.a n : ℤ) = A070450 n

theorem P2505732787251683723.correct : P2505732787251683723.Spec := by
  intro n
  simp only [A070450]

end A070450

/-!
# A070451: a(n) = n^2 mod 29.

The programs for A070451, the canonical program `A070451.P1104831304241860584` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070451 has offset 0).

The definition of A070451 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070451.P1104831304241860584

`n²%29`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070451

/-- `n²%29` -/
def P1104831304241860584.Spec : Prop :=
  ∀ n, (P1104831304241860584.a n : ℤ) = A070451 n

theorem P1104831304241860584.correct : P1104831304241860584.Spec := by
  intro n
  simp only [A070451]

end A070451

/-!
# A070452: a(n) = n^2 mod 30.

The programs for A070452, the canonical program `A070452.P13779430467128966169` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070452 has offset 0).

The definition of A070452 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070452.P13779430467128966169

`n²%30`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070452

/-- `n²%30` -/
def P13779430467128966169.Spec : Prop :=
  ∀ n, (P13779430467128966169.a n : ℤ) = A070452 n

theorem P13779430467128966169.correct : P13779430467128966169.Spec := by
  intro n
  simp only [A070452]

end A070452

/-!
# A070453: a(n) = n^2 mod 31.

The programs for A070453, the canonical program `A070453.P1534849703903125308` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070453 has offset 0).

The definition of A070453 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070453.P1534849703903125308

`n²%31`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070453

/-- `n²%31` -/
def P1534849703903125308.Spec : Prop :=
  ∀ n, (P1534849703903125308.a n : ℤ) = A070453 n

theorem P1534849703903125308.correct : P1534849703903125308.Spec := by
  intro n
  simp only [A070453]

end A070453

/-!
# A070454: a(n) = n^2 mod 32.

The programs for A070454, the canonical program `A070454.P3554147580359124617` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070454 has offset 0).

The definition of A070454 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070454.P3554147580359124617

`n²%32`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070454

/-- `n²%32` -/
def P3554147580359124617.Spec : Prop :=
  ∀ n, (P3554147580359124617.a n : ℤ) = A070454 n

theorem P3554147580359124617.correct : P3554147580359124617.Spec := by
  intro n
  simp only [A070454]

end A070454

/-!
# A070455: a(n) = n^2 mod 33.

The programs for A070455, the canonical program `A070455.P8665083248690279238` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070455 has offset 0).

The definition of A070455 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070455.P8665083248690279238

`n²%33`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070455

/-- `n²%33` -/
def P8665083248690279238.Spec : Prop :=
  ∀ n, (P8665083248690279238.a n : ℤ) = A070455 n

theorem P8665083248690279238.correct : P8665083248690279238.Spec := by
  intro n
  simp only [A070455]

end A070455

/-!
# A070456: a(n) = n^2 mod 34.

The programs for A070456, the canonical program `A070456.P14992319796054944826` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070456 has offset 0).

The definition of A070456 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070456.P14992319796054944826

`n²%34`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070456

/-- `n²%34` -/
def P14992319796054944826.Spec : Prop :=
  ∀ n, (P14992319796054944826.a n : ℤ) = A070456 n

theorem P14992319796054944826.correct : P14992319796054944826.Spec := by
  intro n
  simp only [A070456]

end A070456

/-!
# A070457: a(n) = n^2 mod 35.

The programs for A070457, the canonical program `A070457.P6679630281650522601` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070457 has offset 0).

The definition of A070457 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070457.P6679630281650522601

`n²%35`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070457

/-- `n²%35` -/
def P6679630281650522601.Spec : Prop :=
  ∀ n, (P6679630281650522601.a n : ℤ) = A070457 n

theorem P6679630281650522601.correct : P6679630281650522601.Spec := by
  intro n
  simp only [A070457]

end A070457

/-!
# A070458: a(n) = n^2 mod 36.

The programs for A070458, the canonical program `A070458.P14288912970409848613` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070458 has offset 0).

The definition of A070458 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070458.P14288912970409848613

`n²%36`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070458

/-- `n²%36` -/
def P14288912970409848613.Spec : Prop :=
  ∀ n, (P14288912970409848613.a n : ℤ) = A070458 n

theorem P14288912970409848613.correct : P14288912970409848613.Spec := by
  intro n
  simp only [A070458]

end A070458

/-!
# A070459: a(n) = n^2 mod 37.

The programs for A070459, the canonical program `A070459.P4750342145577487435` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070459 has offset 0).

The definition of A070459 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070459.P4750342145577487435

`n²%37`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070459

/-- `n²%37` -/
def P4750342145577487435.Spec : Prop :=
  ∀ n, (P4750342145577487435.a n : ℤ) = A070459 n

theorem P4750342145577487435.correct : P4750342145577487435.Spec := by
  intro n
  simp only [A070459]

end A070459

/-!
# A070460: a(n) = n^2 mod 38.

The programs for A070460, the canonical program `A070460.P3703919912887073839` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070460 has offset 0).

The definition of A070460 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070460.P3703919912887073839

`n²%38`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070460

/-- `n²%38` -/
def P3703919912887073839.Spec : Prop :=
  ∀ n, (P3703919912887073839.a n : ℤ) = A070460 n

theorem P3703919912887073839.correct : P3703919912887073839.Spec := by
  intro n
  simp only [A070460]

end A070460

/-!
# A070461: a(n) = n^2 mod 39.

The programs for A070461, the canonical program `A070461.P5661713765493042901` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070461 has offset 0).

The definition of A070461 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070461.P5661713765493042901

`n²%39`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070461

/-- `n²%39` -/
def P5661713765493042901.Spec : Prop :=
  ∀ n, (P5661713765493042901.a n : ℤ) = A070461 n

theorem P5661713765493042901.correct : P5661713765493042901.Spec := by
  intro n
  simp only [A070461]

end A070461

/-!
# A070462: a(n) = n^2 mod 40.

The programs for A070462, the canonical program `A070462.P16236734377597102239` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070462 has offset 0).

The definition of A070462 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070462.P16236734377597102239

`n²%40`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070462

/-- `n²%40` -/
def P16236734377597102239.Spec : Prop :=
  ∀ n, (P16236734377597102239.a n : ℤ) = A070462 n

theorem P16236734377597102239.correct : P16236734377597102239.Spec := by
  intro n
  simp only [A070462]

end A070462

/-!
# A070463: a(n) = n^2 mod 41.

The programs for A070463, the canonical program `A070463.P14379443800512940319` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070463 has offset 0).

The definition of A070463 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070463.P14379443800512940319

`n²%41`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070463

/-- `n²%41` -/
def P14379443800512940319.Spec : Prop :=
  ∀ n, (P14379443800512940319.a n : ℤ) = A070463 n

theorem P14379443800512940319.correct : P14379443800512940319.Spec := by
  intro n
  simp only [A070463]

end A070463

/-!
# A070464: a(n) = n^2 mod 42.

The programs for A070464, the canonical program `A070464.P17171655340112419714` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070464 has offset 0).

The definition of A070464 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070464.P17171655340112419714

`n²%42`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070464

/-- `n²%42` -/
def P17171655340112419714.Spec : Prop :=
  ∀ n, (P17171655340112419714.a n : ℤ) = A070464 n

theorem P17171655340112419714.correct : P17171655340112419714.Spec := by
  intro n
  simp only [A070464]

end A070464

/-!
# A070465: a(n) = n^2 mod 43.

The programs for A070465, the canonical program `A070465.P7988870738206295563` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070465 has offset 0).

The definition of A070465 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070465.P7988870738206295563

`n²%43`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070465

/-- `n²%43` -/
def P7988870738206295563.Spec : Prop :=
  ∀ n, (P7988870738206295563.a n : ℤ) = A070465 n

theorem P7988870738206295563.correct : P7988870738206295563.Spec := by
  intro n
  simp only [A070465]

end A070465

/-!
# A070466: a(n) = n^2 mod 44.

The programs for A070466, the canonical program `A070466.P13847128071308558702` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070466 has offset 0).

The definition of A070466 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070466.P13847128071308558702

`n²%44`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070466

/-- `n²%44` -/
def P13847128071308558702.Spec : Prop :=
  ∀ n, (P13847128071308558702.a n : ℤ) = A070466 n

theorem P13847128071308558702.correct : P13847128071308558702.Spec := by
  intro n
  simp only [A070466]

end A070466

/-!
# A070467: a(n) = n^2 mod 45.

The programs for A070467, the canonical program `A070467.P11888127687101422727` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070467 has offset 0).

The definition of A070467 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070467.P11888127687101422727

`n²%45`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070467

/-- `n²%45` -/
def P11888127687101422727.Spec : Prop :=
  ∀ n, (P11888127687101422727.a n : ℤ) = A070467 n

theorem P11888127687101422727.correct : P11888127687101422727.Spec := by
  intro n
  simp only [A070467]

end A070467

/-!
# A070468: a(n) = n^2 mod 46.

The programs for A070468, the canonical program `A070468.P3082328316912602767` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070468 has offset 0).

The definition of A070468 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070468.P3082328316912602767

`n²%46`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070468

/-- `n²%46` -/
def P3082328316912602767.Spec : Prop :=
  ∀ n, (P3082328316912602767.a n : ℤ) = A070468 n

theorem P3082328316912602767.correct : P3082328316912602767.Spec := by
  intro n
  simp only [A070468]

end A070468

/-!
# A070469: a(n) = n^2 mod 47.

The programs for A070469, the canonical program `A070469.P10040318588050845139` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070469 has offset 0).

The definition of A070469 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070469.P10040318588050845139

`n²%47`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070469

/-- `n²%47` -/
def P10040318588050845139.Spec : Prop :=
  ∀ n, (P10040318588050845139.a n : ℤ) = A070469 n

theorem P10040318588050845139.correct : P10040318588050845139.Spec := by
  intro n
  simp only [A070469]

end A070469

/-!
# A070470: a(n) = n^2 mod 48.

The programs for A070470, the canonical program `A070470.P5252652761751043201` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070470 has offset 0).

The definition of A070470 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070470.P5252652761751043201

`n²%48`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070470

/-- `n²%48` -/
def P5252652761751043201.Spec : Prop :=
  ∀ n, (P5252652761751043201.a n : ℤ) = A070470 n

theorem P5252652761751043201.correct : P5252652761751043201.Spec := by
  intro n
  simp only [A070470]

end A070470

/-!
# A070471: a(n) = n^3 mod 5.

The programs for A070471, the canonical program `A070471.P4265815756706654454` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070471 has offset 0).

The definition of A070471 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070471.P4265815756706654454

`a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2, a(4)=4`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070471

/-- `a(n-5)` -/
def P4265815756706654454.Spec : Prop :=
  ∀ n, (P4265815756706654454.a n : ℤ) = A070471 n

theorem P4265815756706654454.correct : P4265815756706654454.Spec := by
  intro n
  simp only [A070471]

end A070471

/-!
# A070472: a(n) = n^3 mod 7.

The programs for A070472, the canonical program `A070472.P14240066263563040876` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070472 has offset 0).

The definition of A070472 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070472.P14240066263563040876

`(n^3)%7`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070472

/-- `(n^3)%7` -/
def P14240066263563040876.Spec : Prop :=
  ∀ n, (P14240066263563040876.a n : ℤ) = A070472 n

theorem P14240066263563040876.correct : P14240066263563040876.Spec := by
  intro n
  simp only [A070472]

end A070472

/-!
# A070473: a(n) = n^3 mod 11.

The programs for A070473, the canonical program `A070473.P1856165689597305854` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070473 has offset 0).

The definition of A070473 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070473.P1856165689597305854

`(n^3)%11`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070473

/-- `(n^3)%11` -/
def P1856165689597305854.Spec : Prop :=
  ∀ n, (P1856165689597305854.a n : ℤ) = A070473 n

theorem P1856165689597305854.correct : P1856165689597305854.Spec := by
  intro n
  simp only [A070473]

end A070473

/-!
# A070474: a(n) = n^3 mod 12, n^5 mod 12.

The programs for A070474, the canonical program `A070474.P11317956512109003332` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070474 has offset 0).

The definition of A070474 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070474.P11317956512109003332

`(n^3)%12`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070474

/-- `(n^3)%12` -/
def P11317956512109003332.Spec : Prop :=
  ∀ n, (P11317956512109003332.a n : ℤ) = A070474 n

theorem P11317956512109003332.correct : P11317956512109003332.Spec := by
  intro n
  simp only [A070474]

end A070474

/-!
# A070475: a(n) = n^3 mod 13.

The programs for A070475, the canonical program `A070475.P16400688187319052371` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070475 has offset 0).

The definition of A070475 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070475.P16400688187319052371

`(n^3)%13`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070475

/-- `(n^3)%13` -/
def P16400688187319052371.Spec : Prop :=
  ∀ n, (P16400688187319052371.a n : ℤ) = A070475 n

theorem P16400688187319052371.correct : P16400688187319052371.Spec := by
  intro n
  simp only [A070475]

end A070475

/-!
# A070476: a(n) = n^3 mod 14.

The programs for A070476, the canonical program `A070476.P252285564294123969` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070476 has offset 0).

The definition of A070476 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070476.P252285564294123969

`(n^3)%14`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070476

/-- `(n^3)%14` -/
def P252285564294123969.Spec : Prop :=
  ∀ n, (P252285564294123969.a n : ℤ) = A070476 n

theorem P252285564294123969.correct : P252285564294123969.Spec := by
  intro n
  simp only [A070476]

end A070476

/-!
# A070477: a(n) = n^3 mod 15.

The programs for A070477, the canonical program `A070477.P2339843795242381386` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070477 has offset 0).

The definition of A070477 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070477.P2339843795242381386

`(n^3)%15`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070477

/-- `(n^3)%15` -/
def P2339843795242381386.Spec : Prop :=
  ∀ n, (P2339843795242381386.a n : ℤ) = A070477 n

theorem P2339843795242381386.correct : P2339843795242381386.Spec := by
  intro n
  simp only [A070477]

end A070477

/-!
# A070478: a(n) = n^3 mod 16.

The programs for A070478, the canonical program `A070478.P15547874119884835980` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070478 has offset 0).

The definition of A070478 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070478.P15547874119884835980

`(n^3)%16`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070478

/-- `(n^3)%16` -/
def P15547874119884835980.Spec : Prop :=
  ∀ n, (P15547874119884835980.a n : ℤ) = A070478 n

theorem P15547874119884835980.correct : P15547874119884835980.Spec := by
  intro n
  simp only [A070478]

end A070478

/-!
# A070479: a(n) = n^3 mod 17.

The programs for A070479, the canonical program `A070479.P300612867029587473` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070479 has offset 0).

The definition of A070479 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070479.P300612867029587473

`(n^3)%17`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070479

/-- `(n^3)%17` -/
def P300612867029587473.Spec : Prop :=
  ∀ n, (P300612867029587473.a n : ℤ) = A070479 n

theorem P300612867029587473.correct : P300612867029587473.Spec := by
  intro n
  simp only [A070479]

end A070479

/-!
# A070480: a(n) = n^3 mod 18.

The programs for A070480, the canonical program `A070480.P5020635013362298801` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070480 has offset 0).

The definition of A070480 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070480.P5020635013362298801

`a(n-6)` with `a(0)=0, a(1)=1, a(2)=8, a(3)=9, a(4)=10, a(5)=17`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070480

/-- `a(n-6)` -/
def P5020635013362298801.Spec : Prop :=
  ∀ n, (P5020635013362298801.a n : ℤ) = A070480 n

theorem P5020635013362298801.correct : P5020635013362298801.Spec := by
  intro n
  simp only [A070480]

end A070480

/-!
# A070481: a(n) = n^3 mod 19.

The programs for A070481, the canonical program `A070481.P17088839584122307562` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070481 has offset 0).

The definition of A070481 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070481.P17088839584122307562

`(n^3)%19`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070481

/-- `(n^3)%19` -/
def P17088839584122307562.Spec : Prop :=
  ∀ n, (P17088839584122307562.a n : ℤ) = A070481 n

theorem P17088839584122307562.correct : P17088839584122307562.Spec := by
  intro n
  simp only [A070481]

end A070481

/-!
# A070482: a(n) = n^3 mod 20.

The programs for A070482, the canonical program `A070482.P10743472904273330781` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070482 has offset 0).

The definition of A070482 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070482.P10743472904273330781

`(n^3)%20`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070482

/-- `(n^3)%20` -/
def P10743472904273330781.Spec : Prop :=
  ∀ n, (P10743472904273330781.a n : ℤ) = A070482 n

theorem P10743472904273330781.correct : P10743472904273330781.Spec := by
  intro n
  simp only [A070482]

end A070482

/-!
# A070483: a(n) = n^3 mod 21.

The programs for A070483, the canonical program `A070483.P198801577822908280` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070483 has offset 0).

The definition of A070483 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070483.P198801577822908280

`(n^3)%21`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070483

/-- `(n^3)%21` -/
def P198801577822908280.Spec : Prop :=
  ∀ n, (P198801577822908280.a n : ℤ) = A070483 n

theorem P198801577822908280.correct : P198801577822908280.Spec := by
  intro n
  simp only [A070483]

end A070483

/-!
# A070484: a(n) = n^3 mod 22.

The programs for A070484, the canonical program `A070484.P4214967371165184301` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070484 has offset 0).

The definition of A070484 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070484.P4214967371165184301

`(n^3)%22`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070484

/-- `(n^3)%22` -/
def P4214967371165184301.Spec : Prop :=
  ∀ n, (P4214967371165184301.a n : ℤ) = A070484 n

theorem P4214967371165184301.correct : P4214967371165184301.Spec := by
  intro n
  simp only [A070484]

end A070484

/-!
# A070485: a(n) = n^3 mod 23.

The programs for A070485, the canonical program `A070485.P14876895893566334667` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070485 has offset 0).

The definition of A070485 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070485.P14876895893566334667

`(n^3)%23`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070485

/-- `(n^3)%23` -/
def P14876895893566334667.Spec : Prop :=
  ∀ n, (P14876895893566334667.a n : ℤ) = A070485 n

theorem P14876895893566334667.correct : P14876895893566334667.Spec := by
  intro n
  simp only [A070485]

end A070485

/-!
# A070486: a(n) = n^3 mod 24 (or equivalently, n^5 mod 24).

The programs for A070486, the canonical program `A070486.P16996720898468510279` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070486 has offset 0).

The definition of A070486 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070486.P16996720898468510279

`(n^3)%24`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070486

/-- `(n^3)%24` -/
def P16996720898468510279.Spec : Prop :=
  ∀ n, (P16996720898468510279.a n : ℤ) = A070486 n

theorem P16996720898468510279.correct : P16996720898468510279.Spec := by
  intro n
  simp only [A070486]

end A070486

/-!
# A070487: a(n) = n^3 mod 25.

The programs for A070487, the canonical program `A070487.P16571631960564171466` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070487 has offset 0).

The definition of A070487 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070487.P16571631960564171466

`(n^3)%25`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070487

/-- `(n^3)%25` -/
def P16571631960564171466.Spec : Prop :=
  ∀ n, (P16571631960564171466.a n : ℤ) = A070487 n

theorem P16571631960564171466.correct : P16571631960564171466.Spec := by
  intro n
  simp only [A070487]

end A070487

/-!
# A070488: a(n) = n^3 mod 26.

The programs for A070488, the canonical program `A070488.P5835939121409521593` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070488 has offset 0).

The definition of A070488 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070488.P5835939121409521593

`(n^3)%26`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070488

/-- `(n^3)%26` -/
def P5835939121409521593.Spec : Prop :=
  ∀ n, (P5835939121409521593.a n : ℤ) = A070488 n

theorem P5835939121409521593.correct : P5835939121409521593.Spec := by
  intro n
  simp only [A070488]

end A070488

/-!
# A070489: a(n) = n^3 mod 27.

The programs for A070489, the canonical program `A070489.P5046241487446303600` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070489 has offset 0).

The definition of A070489 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070489.P5046241487446303600

`(n^3)%27`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070489

/-- `(n^3)%27` -/
def P5046241487446303600.Spec : Prop :=
  ∀ n, (P5046241487446303600.a n : ℤ) = A070489 n

theorem P5046241487446303600.correct : P5046241487446303600.Spec := by
  intro n
  simp only [A070489]

end A070489

/-!
# A070490: a(n) = n^3 mod 28.

The programs for A070490, the canonical program `A070490.P12150489907437805708` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070490 has offset 0).

The definition of A070490 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070490.P12150489907437805708

`(n^3)%28`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070490

/-- `(n^3)%28` -/
def P12150489907437805708.Spec : Prop :=
  ∀ n, (P12150489907437805708.a n : ℤ) = A070490 n

theorem P12150489907437805708.correct : P12150489907437805708.Spec := by
  intro n
  simp only [A070490]

end A070490

/-!
# A070491: a(n) = n^3 mod 29.

The programs for A070491, the canonical program `A070491.P17337301132106599161` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070491 has offset 0).

The definition of A070491 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070491.P17337301132106599161

`(n^3)%29`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070491

/-- `(n^3)%29` -/
def P17337301132106599161.Spec : Prop :=
  ∀ n, (P17337301132106599161.a n : ℤ) = A070491 n

theorem P17337301132106599161.correct : P17337301132106599161.Spec := by
  intro n
  simp only [A070491]

end A070491

/-!
# A070492: a(n) = n^3 mod 30.

The programs for A070492, the canonical program `A070492.P17042360999769823050` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070492 has offset 0).

The definition of A070492 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070492.P17042360999769823050

`(n^3)%30`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070492

/-- `(n^3)%30` -/
def P17042360999769823050.Spec : Prop :=
  ∀ n, (P17042360999769823050.a n : ℤ) = A070492 n

theorem P17042360999769823050.correct : P17042360999769823050.Spec := by
  intro n
  simp only [A070492]

end A070492

/-!
# A070493: a(n) = n^3 mod 31.

The programs for A070493, the canonical program `A070493.P15578310029288361053` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070493 has offset 0).

The definition of A070493 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070493.P15578310029288361053

`(n^3)%31`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070493

/-- `(n^3)%31` -/
def P15578310029288361053.Spec : Prop :=
  ∀ n, (P15578310029288361053.a n : ℤ) = A070493 n

theorem P15578310029288361053.correct : P15578310029288361053.Spec := by
  intro n
  simp only [A070493]

end A070493

/-!
# A070494: a(n) = n^3 mod 32.

The programs for A070494, the canonical program `A070494.P15370169801844295222` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070494 has offset 0).

The definition of A070494 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070494.P15370169801844295222

`(n^3)%32`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070494

/-- `(n^3)%32` -/
def P15370169801844295222.Spec : Prop :=
  ∀ n, (P15370169801844295222.a n : ℤ) = A070494 n

theorem P15370169801844295222.correct : P15370169801844295222.Spec := by
  intro n
  simp only [A070494]

end A070494

/-!
# A070495: a(n) = n^3 mod 33.

The programs for A070495, the canonical program `A070495.P14567310252373649029` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070495 has offset 0).

The definition of A070495 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070495.P14567310252373649029

`(n^3)%33`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070495

/-- `(n^3)%33` -/
def P14567310252373649029.Spec : Prop :=
  ∀ n, (P14567310252373649029.a n : ℤ) = A070495 n

theorem P14567310252373649029.correct : P14567310252373649029.Spec := by
  intro n
  simp only [A070495]

end A070495

/-!
# A070496: a(n) = n^3 mod 34.

The programs for A070496, the canonical program `A070496.P3985207821046093131` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070496 has offset 0).

The definition of A070496 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070496.P3985207821046093131

`(n^3)%34`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070496

/-- `(n^3)%34` -/
def P3985207821046093131.Spec : Prop :=
  ∀ n, (P3985207821046093131.a n : ℤ) = A070496 n

theorem P3985207821046093131.correct : P3985207821046093131.Spec := by
  intro n
  simp only [A070496]

end A070496

/-!
# A070497: a(n) = n^3 mod 35.

The programs for A070497, the canonical program `A070497.P15227137104459871480` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070497 has offset 0).

The definition of A070497 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070497.P15227137104459871480

`(n^3)%35`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070497

/-- `(n^3)%35` -/
def P15227137104459871480.Spec : Prop :=
  ∀ n, (P15227137104459871480.a n : ℤ) = A070497 n

theorem P15227137104459871480.correct : P15227137104459871480.Spec := by
  intro n
  simp only [A070497]

end A070497

/-!
# A070498: a(n) = n^3 mod 36.

The programs for A070498, the canonical program `A070498.P4964602231222920905` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070498 has offset 0).

The definition of A070498 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070498.P4964602231222920905

`(n^3)%36`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070498

/-- `(n^3)%36` -/
def P4964602231222920905.Spec : Prop :=
  ∀ n, (P4964602231222920905.a n : ℤ) = A070498 n

theorem P4964602231222920905.correct : P4964602231222920905.Spec := by
  intro n
  simp only [A070498]

end A070498

/-!
# A070499: a(n) = n^3 mod 37.

The programs for A070499, the canonical program `A070499.P2601940573456181473` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070499 has offset 0).

The definition of A070499 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070499.P2601940573456181473

`(n^3)%37`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A070499

/-- `(n^3)%37` -/
def P2601940573456181473.Spec : Prop :=
  ∀ n, (P2601940573456181473.a n : ℤ) = A070499 n

theorem P2601940573456181473.correct : P2601940573456181473.Spec := by
  intro n
  simp only [A070499]

end A070499

