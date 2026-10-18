import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C013
import Seq.B001.C001
import Seq.B001.C004
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B004.C000
import Seq.B005.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C017
import Seq.Opaque.C021
import Seq.Opaque.C022

/-!
# A036100: Centered cube numbers: (n+1)^22 + n^22.

The programs for A036100, the canonical program `A036100.P9526219666505486895` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036100 has offset 0).

The definition of A036100 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^22+n^22` (program `A036100.P9526219666505486895`, by `A036100.P9526219666505486895.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036100.P9526219666505486895

`(n+1)^22+n^22`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036100

/-- `(n+1)^22+n^22` -/
def P9526219666505486895.Spec : Prop :=
  ∀ n, (P9526219666505486895.a n : ℤ) = A036100 n

theorem P9526219666505486895.correct : P9526219666505486895.Spec := by
  intro n
  simp only [A036100]

end A036100

/-!
# A036101: 

The programs for A036101, there is no canonical definition to state claims against.
-/

/-! ## A036101.P8464827539331932447

`(n+1)^23+n^23`
-/

namespace A036101.P8464827539331932447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 23 + n ^ 23

end

end A036101.P8464827539331932447

/-! ## A036101.P10899351889624398076

`record[Δ[A001057(n)^23]]`
-/

namespace A036101.P10899351889624398076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n ^ 23

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036101.P10899351889624398076

/-! ## A036101.P11937480672108918683

`record[∑[A001057(A004442(n))^23]]`
-/

namespace A036101.P11937480672108918683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A004442 n).toNat ^ 23

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036101.P11937480672108918683

/-!
# A036102: 

The programs for A036102, there is no canonical definition to state claims against.
-/

/-! ## A036102.P10979115331135799931

`(n+1)^24+n^24`
-/

namespace A036102.P10979115331135799931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 24 + n ^ 24

end

end A036102.P10979115331135799931

/-!
# A036110: A summarize Fibonacci sequence starting with a(0)=2 and a(1)=2: summarize the previous two terms!.

The programs for A036110, there is no canonical definition to state claims against.
-/

/-! ## A036110.P6768938966716722342

`2*A064989(A014507(n))`
-/

namespace A036110.P6768938966716722342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064989 (A014507 n).toNat

end

end A036110.P6768938966716722342

/-!
# A036116: Numbers n such that the number of distinct primes dividing n is a square.

The programs for A036116, the canonical program `A036116.P17962530961175835312` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036116 has offset 1).

The definition of A036116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4563 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036116.P17962530961175835312

`eq[1, A008683(A259936(n+1))]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A036116

/-- `eq[1, A008683(A259936(n+1))]+1` -/
def P17962530961175835312.Spec : Prop :=
  ∀ n, (P17962530961175835312.a n : ℤ) = A036116 (n + 1)

theorem P17962530961175835312.correct : P17962530961175835312.Spec := by
  intro n
  simp only [A036116, Nat.add_sub_cancel]

end A036116

/-! ## A036116.P7438236973144889881

`record[(n+1)/(A327076(A259936(n+1)+1)-1)]`
-/

namespace A036116.P7438236973144889881
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A327076 (A259936 (n + 1) + 1).toNat - 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036116.P7438236973144889881

namespace A036116

/-- `record[(n+1)/(A327076(A259936(n+1)+1)-1)]` -/
def P7438236973144889881.Spec : Prop :=
  ∀ n, P7438236973144889881.a n = (A036116 (n + 1) : ℚ)

end A036116

/-! ## A036116.P13787802411359530110

`record[(n+1)^val(A083399(n+1)+1, 3)]`
-/

namespace A036116.P13787802411359530110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ SequenceMachineLib.valuation (A083399 (n + 1) + 1).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036116.P13787802411359530110

namespace A036116

/-- `record[(n+1)^val(A083399(n+1)+1, 3)]` -/
def P13787802411359530110.Spec : Prop :=
  ∀ n, (P13787802411359530110.a n : ℤ) = A036116 (n + 1)

end A036116

/-! ## A036116.P11074005122997604067

`lt[A179835(A034444(n+1)²), 1]+1`
-/

namespace A036116.P11074005122997604067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179835 (A034444 (n + 1) ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A036116.P11074005122997604067

namespace A036116

/-- `lt[A179835(A034444(n+1)²), 1]+1` -/
def P11074005122997604067.Spec : Prop :=
  ∀ n, (P11074005122997604067.a n : ℤ) = A036116 (n + 1)

end A036116

/-! ## A036116.P3873917000354818864

`record[lcm(n+1, A279329(A007875(n+1)))]`
-/

namespace A036116.P3873917000354818864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A279329 (A007875 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036116.P3873917000354818864

namespace A036116

/-- `record[lcm(n+1, A279329(A007875(n+1)))]` -/
def P3873917000354818864.Spec : Prop :=
  ∀ n, (P3873917000354818864.a n : ℤ) = A036116 (n + 1)

end A036116

/-! ## A036116.P11627990899400273503

`eq[2, A030496(A034444(n+1)²+1)]+1`
-/

namespace A036116.P11627990899400273503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030496 (A034444 (n + 1) ^ 2 + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036116.P11627990899400273503

namespace A036116

/-- `eq[2, A030496(A034444(n+1)²+1)]+1` -/
def P11627990899400273503.Spec : Prop :=
  ∀ n, (P11627990899400273503.a n : ℤ) = A036116 (n + 1)

end A036116

/-! ## A036116.P13469585641528452866

`record[A008683(A259936(n+1))*A008619(2*n)]`
-/

namespace A036116.P13469585641528452866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A259936 (n + 1)).toNat * A008619 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036116.P13469585641528452866

namespace A036116

/-- `record[A008683(A259936(n+1))*A008619(2*n)]` -/
def P13469585641528452866.Spec : Prop :=
  ∀ n, P13469585641528452866.a n = A036116 (n + 1)

end A036116

/-! ## A036116.P1480434199901096142

`eq[1, A087802(n+1)%3]+1`
-/

namespace A036116.P1480434199901096142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087802 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036116.P1480434199901096142

namespace A036116

/-- `eq[1, A087802(n+1)%3]+1` -/
def P1480434199901096142.Spec : Prop :=
  ∀ n, (P1480434199901096142.a n : ℤ) = A036116 (n + 1)

end A036116

/-!
# A036117: a(n) = 2^n mod 11.

The programs for A036117, the canonical program `A036117.P2628498476153642686` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036117 has offset 0).

The definition of A036117 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036117.P2628498476153642686

`a(n-1)-a(n-5)+a(n-6)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=5, a(5)=10`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036117

/-- `a(n-1)-a(n-5)+a(n-6)` -/
def P2628498476153642686.Spec : Prop :=
  ∀ n, P2628498476153642686.a n = A036117 n

theorem P2628498476153642686.correct : P2628498476153642686.Spec := by
  intro n
  simp only [A036117]

end A036117

/-!
# A036118: a(n) = 2^n mod 13.

The programs for A036118, the canonical program `A036118.P12126511094456112330` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036118 has offset 0).

The definition of A036118 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036118.P12126511094456112330

`a(n-1)-a(n-6)+a(n-7)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=3, a(5)=6, a(6)=12`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036118

/-- `a(n-1)-a(n-6)+a(n-7)` -/
def P12126511094456112330.Spec : Prop :=
  ∀ n, P12126511094456112330.a n = A036118 n

theorem P12126511094456112330.correct : P12126511094456112330.Spec := by
  intro n
  simp only [A036118]

end A036118

/-!
# A036119: a(n) = 3^n mod 17.

The programs for A036119, the canonical program `A036119.P1353517311341971522` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036119 has offset 0).

The definition of A036119 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036119.P1353517311341971522

`a(n-1)-a(n-8)+a(n-9)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=10, a(4)=13, a(5)=5, a(6)=15, a(7)=11, a(8)=16`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036119

/-- `a(n-1)-a(n-8)+a(n-9)` -/
def P1353517311341971522.Spec : Prop :=
  ∀ n, P1353517311341971522.a n = A036119 n

theorem P1353517311341971522.correct : P1353517311341971522.Spec := by
  intro n
  simp only [A036119]

end A036119

/-!
# A036120: a(n) = 2^n mod 19.

The programs for A036120, the canonical program `A036120.P9142741214439934238` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036120 has offset 0).

The definition of A036120 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036120.P9142741214439934238

`a(n-1)-a(n-9)+a(n-10)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16, a(5)=13, a(6)=7, a(7)=14, a(8)=9, a(9)=18`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036120

/-- `a(n-1)-a(n-9)+a(n-10)` -/
def P9142741214439934238.Spec : Prop :=
  ∀ n, P9142741214439934238.a n = A036120 n

theorem P9142741214439934238.correct : P9142741214439934238.Spec := by
  intro n
  simp only [A036120]

end A036120

/-!
# A036121: 5^n mod 23.

The programs for A036121, the canonical program `A036121.P3665828333546767609` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036121 has offset 0).

The definition of A036121 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036121.P3665828333546767609

`(5*a(n-1))%23` with `a(0)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036121

/-- `(5*a(n-1))%23` -/
def P3665828333546767609.Spec : Prop :=
  ∀ n, (P3665828333546767609.a n : ℤ) = A036121 n

theorem P3665828333546767609.correct : P3665828333546767609.Spec := by
  intro n
  simp only [A036121]

end A036121

/-!
# A036122: a(n) = 2^n mod 29.

The programs for A036122, the canonical program `A036122.P15361918239627470997` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036122 has offset 0).

The definition of A036122 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 589 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036122.P15361918239627470997

`A070344(17*n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A036122

/-- `A070344(17*n)` -/
def P15361918239627470997.Spec : Prop :=
  ∀ n, P15361918239627470997.a n = A036122 n

theorem P15361918239627470997.correct : P15361918239627470997.Spec := by
  intro n
  simp only [A036122]

end A036122

/-!
# A036123: a(n) = 3^n mod 31.

The programs for A036123, the canonical program `A036123.P4876234955971820171` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036123 has offset 0).

The definition of A036123 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036123.P4876234955971820171

`(3*a(n-1))%31` with `a(0)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036123

/-- `(3*a(n-1))%31` -/
def P4876234955971820171.Spec : Prop :=
  ∀ n, (P4876234955971820171.a n : ℤ) = A036123 n

theorem P4876234955971820171.correct : P4876234955971820171.Spec := by
  intro n
  simp only [A036123]

end A036123

/-!
# A036124: a(n) = 2^n mod 37.

The programs for A036124, the canonical program `A036124.P11320737138088081315` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036124 has offset 0).

The definition of A036124 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036124.P11320737138088081315

`(2*a(n-1))%37` with `a(0)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036124

/-- `(2*a(n-1))%37` -/
def P11320737138088081315.Spec : Prop :=
  ∀ n, (P11320737138088081315.a n : ℤ) = A036124 n

theorem P11320737138088081315.correct : P11320737138088081315.Spec := by
  intro n
  simp only [A036124]

end A036124

/-!
# A036125: a(n) = 6^n mod 41.

The programs for A036125, the canonical program `A036125.P15090397676086787765` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036125 has offset 0).

The definition of A036125 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036125.P15090397676086787765

`(6*a(n-1))%41` with `a(0)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036125

/-- `(6*a(n-1))%41` -/
def P15090397676086787765.Spec : Prop :=
  ∀ n, (P15090397676086787765.a n : ℤ) = A036125 n

theorem P15090397676086787765.correct : P15090397676086787765.Spec := by
  intro n
  simp only [A036125]

end A036125

/-!
# A036126: a(n) = 3^n mod 43.

The programs for A036126, the canonical program `A036126.P15487474494530532571` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036126 has offset 0).

The definition of A036126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036126.P15487474494530532571

`(3*a(n-1))%43` with `a(0)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036126

/-- `(3*a(n-1))%43` -/
def P15487474494530532571.Spec : Prop :=
  ∀ n, (P15487474494530532571.a n : ℤ) = A036126 n

theorem P15487474494530532571.correct : P15487474494530532571.Spec := by
  intro n
  simp only [A036126]

end A036126

/-!
# A036127: a(n) = 5^n mod 47.

The programs for A036127, the canonical program `A036127.P14687054879537443389` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036127 has offset 0).

The definition of A036127 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036127.P14687054879537443389

`(5*a(n-1))%47` with `a(0)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036127

/-- `(5*a(n-1))%47` -/
def P14687054879537443389.Spec : Prop :=
  ∀ n, (P14687054879537443389.a n : ℤ) = A036127 n

theorem P14687054879537443389.correct : P14687054879537443389.Spec := by
  intro n
  simp only [A036127]

end A036127

/-!
# A036128: a(n) = 2^n mod 53.

The programs for A036128, the canonical program `A036128.P1738307648306409330` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036128 has offset 0).

The definition of A036128 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036128.P1738307648306409330

`(2*a(n-1))%53` with `a(0)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036128

/-- `(2*a(n-1))%53` -/
def P1738307648306409330.Spec : Prop :=
  ∀ n, (P1738307648306409330.a n : ℤ) = A036128 n

theorem P1738307648306409330.correct : P1738307648306409330.Spec := by
  intro n
  simp only [A036128]

end A036128

/-!
# A036129: a(n) = 2^n mod 59.

The programs for A036129, the canonical program `A036129.P18014451821212564442` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036129 has offset 0).

The definition of A036129 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036129.P18014451821212564442

`(2*a(n-1))%59` with `a(0)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036129

/-- `(2*a(n-1))%59` -/
def P18014451821212564442.Spec : Prop :=
  ∀ n, (P18014451821212564442.a n : ℤ) = A036129 n

theorem P18014451821212564442.correct : P18014451821212564442.Spec := by
  intro n
  simp only [A036129]

end A036129

/-!
# A036130: a(n) = 2^n mod 61.

The programs for A036130, the canonical program `A036130.P12452583498296051354` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036130 has offset 0).

The definition of A036130 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036130.P12452583498296051354

`(2*a(n-1))%61` with `a(0)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036130

/-- `(2*a(n-1))%61` -/
def P12452583498296051354.Spec : Prop :=
  ∀ n, (P12452583498296051354.a n : ℤ) = A036130 n

theorem P12452583498296051354.correct : P12452583498296051354.Spec := by
  intro n
  simp only [A036130]

end A036130

/-!
# A036131: a(n) = 2^n mod 67.

The programs for A036131, the canonical program `A036131.P17622766726569543646` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036131 has offset 0).

The definition of A036131 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036131.P17622766726569543646

`(2*a(n-1))%67` with `a(0)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036131

/-- `(2*a(n-1))%67` -/
def P17622766726569543646.Spec : Prop :=
  ∀ n, (P17622766726569543646.a n : ℤ) = A036131 n

theorem P17622766726569543646.correct : P17622766726569543646.Spec := by
  intro n
  simp only [A036131]

end A036131

/-!
# A036132: a(n) = 7^n mod 71.

The programs for A036132, the canonical program `A036132.P323121095900928580` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036132 has offset 0).

The definition of A036132 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036132.P323121095900928580

`(a(n-1)+6*a(n-1))%71` with `a(0)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036132

/-- `(a(n-1)+6*a(n-1))%71` -/
def P323121095900928580.Spec : Prop :=
  ∀ n, (P323121095900928580.a n : ℤ) = A036132 n

theorem P323121095900928580.correct : P323121095900928580.Spec := by
  intro n
  simp only [A036132]

end A036132

/-!
# A036133: a(n) = 5^n mod 73.

The programs for A036133, the canonical program `A036133.P7173657356476162474` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036133 has offset 0).

The definition of A036133 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036133.P7173657356476162474

`(5*a(n-1))%73` with `a(0)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036133

/-- `(5*a(n-1))%73` -/
def P7173657356476162474.Spec : Prop :=
  ∀ n, (P7173657356476162474.a n : ℤ) = A036133 n

theorem P7173657356476162474.correct : P7173657356476162474.Spec := by
  intro n
  simp only [A036133]

end A036133

/-!
# A036134: a(n) = 3^n mod 79.

The programs for A036134, the canonical program `A036134.P2381753777645845354` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036134 has offset 0).

The definition of A036134 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036134.P2381753777645845354

`(3*a(n-1))%79` with `a(0)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036134

/-- `(3*a(n-1))%79` -/
def P2381753777645845354.Spec : Prop :=
  ∀ n, (P2381753777645845354.a n : ℤ) = A036134 n

theorem P2381753777645845354.correct : P2381753777645845354.Spec := by
  intro n
  simp only [A036134]

end A036134

/-!
# A036135: a(n) = 2^n mod 83.

The programs for A036135, the canonical program `A036135.P6589999945360916256` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036135 has offset 0).

The definition of A036135 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036135.P6589999945360916256

`(2*a(n-1))%83` with `a(0)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036135

/-- `(2*a(n-1))%83` -/
def P6589999945360916256.Spec : Prop :=
  ∀ n, (P6589999945360916256.a n : ℤ) = A036135 n

theorem P6589999945360916256.correct : P6589999945360916256.Spec := by
  intro n
  simp only [A036135]

end A036135

/-!
# A036136: a(n) = 3^n mod 89.

The programs for A036136, the canonical program `A036136.P1806144567344527114` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036136 has offset 0).

The definition of A036136 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036136.P1806144567344527114

`(3*a(n-1))%89` with `a(0)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036136

/-- `(3*a(n-1))%89` -/
def P1806144567344527114.Spec : Prop :=
  ∀ n, (P1806144567344527114.a n : ℤ) = A036136 n

theorem P1806144567344527114.correct : P1806144567344527114.Spec := by
  intro n
  simp only [A036136]

end A036136

/-!
# A036137: a(n) = 5^n mod 97.

The programs for A036137, the canonical program `A036137.P9131181342303073359` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036137 has offset 0).

The definition of A036137 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036137.P9131181342303073359

`(5*a(n-1))%97` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036137

/-- `(5*a(n-1))%97` -/
def P9131181342303073359.Spec : Prop :=
  ∀ n, (P9131181342303073359.a n : ℤ) = A036137 n

theorem P9131181342303073359.correct : P9131181342303073359.Spec := by
  intro n
  simp only [A036137]

end A036137

/-!
# A036138: a(n) = 2^n mod 101.

The programs for A036138, there is no canonical definition to state claims against.
-/

/-! ## A036138.P3247253235508623656

`(2^n)%A134809(C(2, n)+1)`
-/

namespace A036138.P3247253235508623656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 ^ n : ℤ) (A134809 (Nat.choose 2 n + 1))

end

end A036138.P3247253235508623656

/-!
# A036139: a(n) = 5^n mod 103.

The programs for A036139, the canonical program `A036139.P12226429817620247209` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036139 has offset 0).

The definition of A036139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036139.P12226429817620247209

`(5*a(n-1))%103` with `a(0)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036139

/-- `(5*a(n-1))%103` -/
def P12226429817620247209.Spec : Prop :=
  ∀ n, (P12226429817620247209.a n : ℤ) = A036139 n

theorem P12226429817620247209.correct : P12226429817620247209.Spec := by
  intro n
  simp only [A036139]

end A036139

/-!
# A036140: a(n) = 2^n mod 107.

The programs for A036140, the canonical program `A036140.P17553244430417077579` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036140 has offset 0).

The definition of A036140 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036140.P17553244430417077579

`(2*a(n-1))%(16/2+99)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036140

/-- `(2*a(n-1))%(16/2+99)` -/
def P17553244430417077579.Spec : Prop :=
  ∀ n, P17553244430417077579.a n = A036140 n

theorem P17553244430417077579.correct : P17553244430417077579.Spec := by
  intro n
  simp only [A036140]

end A036140

/-!
# A036141: a(n) = 6^n mod 109.

The programs for A036141, there is no canonical definition to state claims against.
-/

/-! ## A036141.P756859515980031560

`A008588(a(n-1))%A144050((n+1)%n+1)` with `a(0)=1`
-/

namespace A036141.P756859515980031560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A008588 (a (n - 1)).toNat) (A144050 ((n + 1) % n + 1))

end

end A036141.P756859515980031560

/-!
# A036142: 3^n mod 113.

The programs for A036142, there is no canonical definition to state claims against.
-/

/-! ## A036142.P14774257537343909131

`A000244(n)%A152928(A020639(2*(n+1)))`
-/

namespace A036142.P14774257537343909131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000244 n) (A152928 (A020639 (2 * (n + 1))).toNat)

end

end A036142.P14774257537343909131

/-!
# A036143: a(n) = 3^n mod 127.

The programs for A036143, there is no canonical definition to state claims against.
-/

/-! ## A036143.P3501051633934865388

`(3*a(n-1))%A069686(gcd(n, n+1))` with `a(0)=1`
-/

namespace A036143.P3501051633934865388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (3 * a (n - 1)) (A069686 (Nat.gcd n (n + 1)))

end

end A036143.P3501051633934865388

/-!
# A036144: a(n) = 2^n mod 131.

The programs for A036144, the canonical program `A036144.P18102075490541855965` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036144 has offset 0).

The definition of A036144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036144.P18102075490541855965

`(2^n)%A142616(gcd(n, n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A036144

/-- `(2^n)%A142616(gcd(n, n+1))` -/
def P18102075490541855965.Spec : Prop :=
  ∀ n, P18102075490541855965.a n = A036144 n

theorem P18102075490541855965.correct : P18102075490541855965.Spec := by
  intro n
  simp only [A036144]

end A036144

/-!
# A036145: 3^n mod 137.

The programs for A036145, there is no canonical definition to state claims against.
-/

/-! ## A036145.P15908320135777006798

`A000244(n)%A060059(A105574(2*(n+2)))`
-/

namespace A036145.P15908320135777006798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000244 n) (A060059 (A105574 (2 * (n + 2))).toNat)

end

end A036145.P15908320135777006798

/-!
# A036146: a(n) = 2^n mod 139.

The programs for A036146, the canonical program `A036146.P11317228320841673950` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036146 has offset 0).

The definition of A036146 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036146.P11317228320841673950

`(2^n)%A196655(gcd(n, n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A036146

/-- `(2^n)%A196655(gcd(n, n+1))` -/
def P11317228320841673950.Spec : Prop :=
  ∀ n, P11317228320841673950.a n = A036146 n

theorem P11317228320841673950.correct : P11317228320841673950.Spec := by
  intro n
  simp only [A036146]

end A036146

/-!
# A036147: a(n) = 2^n mod 149.

The programs for A036147, the canonical program `A036147.P10275515469553901638` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036147 has offset 0).

The definition of A036147 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036147.P10275515469553901638

`A011782(n+1)%A100723(C(2, n)+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A036147

/-- `A011782(n+1)%A100723(C(2, n)+1)` -/
def P10275515469553901638.Spec : Prop :=
  ∀ n, P10275515469553901638.a n = A036147 n

theorem P10275515469553901638.correct : P10275515469553901638.Spec := by
  intro n
  simp only [A036147]

end A036147

/-!
# A036148: 6^n mod 151.

The programs for A036148, there is no canonical definition to state claims against.
-/

/-! ## A036148.P18062347554731795932

`(6^n)%A095745(C(2, n²)+1)`
-/

namespace A036148.P18062347554731795932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (6 ^ n : ℤ) (A095745 (Nat.choose 2 (n ^ 2) + 1))

end

end A036148.P18062347554731795932

/-!
# A036149: 5^n mod 157.

The programs for A036149, there is no canonical definition to state claims against.
-/

/-! ## A036149.P17567902795115854367

`(5*a(n-1))%A072841(A020639(2*(n+2)))` with `a(0)=1`
-/

namespace A036149.P17567902795115854367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (5 * a (n - 1)) (A072841 (A020639 (2 * (n + 2))).toNat)

end

end A036149.P17567902795115854367

/-!
# A036150: a(n) = 2^n mod 163.

The programs for A036150, the canonical program `A036150.P8677610942371788311` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036150 has offset 0).

The definition of A036150 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036150.P8677610942371788311

`A000079(n)%A245743(n²%(n+1)+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A036150

/-- `A000079(n)%A245743(n²%(n+1)+1)` -/
def P8677610942371788311.Spec : Prop :=
  ∀ n, P8677610942371788311.a n = A036150 n

theorem P8677610942371788311.correct : P8677610942371788311.Spec := by
  intro n
  simp only [A036150]

end A036150

/-!
# A036151: 5^n mod 167.

The programs for A036151, there is no canonical definition to state claims against.
-/

/-! ## A036151.P9028106509122896730

`A338346((n+1)*A347021(n))`
-/

namespace A036151.P9028106509122896730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338346 ((n + 1 : ℤ) * A347021 n).toNat

end

end A036151.P9028106509122896730

/-!
# A036152: a(n) = 2^n mod 173.

The programs for A036152, there is no canonical definition to state claims against.
-/

/-! ## A036152.P7628451680785555066

`A000079(n)%A084866(A085020(2*n+3))`
-/

namespace A036152.P7628451680785555066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n) (A084866 (A085020 (2 * n + 3)).toNat)

end

end A036152.P7628451680785555066

/-!
# A036155: 19^n mod 191.

The programs for A036155, there is no canonical definition to state claims against.
-/

/-! ## A036155.P12341450803879178526

`(592^n)%191`
-/

namespace A036155.P12341450803879178526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  592 ^ n % 191

end

end A036155.P12341450803879178526

/-!
# A036156: 5^n mod 193.

The programs for A036156, there is no canonical definition to state claims against.
-/

/-! ## A036156.P17126533603706395774

`A000351(n)%A133870(A185633(2*n+5))`
-/

namespace A036156.P17126533603706395774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000351 n) (A133870 (A185633 (2 * n + 5)).toNat)

end

end A036156.P17126533603706395774

/-!
# A036157: a(n) = 2^n mod 197.

The programs for A036157, there is no canonical definition to state claims against.
-/

/-! ## A036157.P13780583906621072350

`A000079(n)%A345551(A038500(3*n+1))`
-/

namespace A036157.P13780583906621072350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n) (A345551 (A038500 (3 * n + 1)).toNat)

end

end A036157.P13780583906621072350

/-!
# A036158: 3^n mod 199.

The programs for A036158, the canonical program `A036158.P5109145305531256395` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036158 has offset 0).

The definition of A036158 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036158.P5109145305531256395

`(3*a(n-1))%((42/3)²+3)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036158

/-- `(3*a(n-1))%((42/3)²+3)` -/
def P5109145305531256395.Spec : Prop :=
  ∀ n, P5109145305531256395.a n = A036158 n

theorem P5109145305531256395.correct : P5109145305531256395.Spec := by
  intro n
  simp only [A036158]

end A036158

/-!
# A036159: a(n) = 2^n mod 211.

The programs for A036159, there is no canonical definition to state claims against.
-/

/-! ## A036159.P16136564330408122101

`A000079(n)%A219467(n²%(n+1)+1)`
-/

namespace A036159.P16136564330408122101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n) (A219467 (n ^ 2 % (n + 1) + 1))

end

end A036159.P16136564330408122101

/-!
# A036160: a(n) = 3^n mod 223.

The programs for A036160, there is no canonical definition to state claims against.
-/

/-! ## A036160.P7648342944112831766

`(3*a(n-1))%A018911(A020639(2*(n+1)))` with `a(0)=1`
-/

namespace A036160.P7648342944112831766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (3 * a (n - 1)) (A018911 (A020639 (2 * (n + 1))).toNat)

end

end A036160.P7648342944112831766

/-!
# A036161: a(n) = 2^n mod 227.

The programs for A036161, the canonical program `A036161.P7228855105446020574` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036161 has offset 0).

The definition of A036161 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036161.P7228855105446020574

`A000079(n)%A171140(A017305(n+1)-A017305(n))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A036161

/-- `A000079(n)%A171140(A017305(n+1)-A017305(n))` -/
def P7228855105446020574.Spec : Prop :=
  ∀ n, P7228855105446020574.a n = A036161 n

theorem P7228855105446020574.correct : P7228855105446020574.Spec := by
  intro n
  simp only [A036161]

end A036161

/-!
# A036162: a(n) = 6^n mod 229.

The programs for A036162, the canonical program `A036162.P12897788177034337327` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036162 has offset 0).

The definition of A036162 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036162.P12897788177034337327

`A000400(n)%229`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A036162

/-- `A000400(n)%229` -/
def P12897788177034337327.Spec : Prop :=
  ∀ n, P12897788177034337327.a n = A036162 n

theorem P12897788177034337327.correct : P12897788177034337327.Spec := by
  intro n
  simp only [A036162]

end A036162

/-!
# A036163: Log base 3 (n) mod 17.

The programs for A036163, there is no canonical definition to state claims against.
-/

/-! ## A036163.P6780768120869801788

`A054503(n+35)`
-/

namespace A036163.P6780768120869801788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054503 (n + 35)

end

end A036163.P6780768120869801788

/-!
# A036164: Log base 5 (n) mod 23.

The programs for A036164, there is no canonical definition to state claims against.
-/

/-! ## A036164.P8493724867184136672

`A054503(n+69)`
-/

namespace A036164.P8493724867184136672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054503 (n + 69)

end

end A036164.P8493724867184136672

/-!
# A036165: Log base 2 (n) mod 29.

The programs for A036165, there is no canonical definition to state claims against.
-/

/-! ## A036165.P15269437826488789097

`A054503(n+91)`
-/

namespace A036165.P15269437826488789097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054503 (n + 91)

end

end A036165.P15269437826488789097

/-!
# A036166: Log base 3 (n) mod 31.

The programs for A036166, there is no canonical definition to state claims against.
-/

/-! ## A036166.P3849796995604402534

`A054503(119+n)`
-/

namespace A036166.P3849796995604402534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054503 (119 + n)

end

end A036166.P3849796995604402534

/-!
# A036168: Log base 6 (n) mod 41.

The programs for A036168, there is no canonical definition to state claims against.
-/

/-! ## A036168.P3089540873916321972

`A054503(185+n)`
-/

namespace A036168.P3089540873916321972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054503 (185 + n)

end

end A036168.P3089540873916321972

/-!
# A036177: Log base 3 (n) mod 79.

The programs for A036177, there is no canonical definition to state claims against.
-/

/-! ## A036177.P6464983082917765216

`A054503(691+n)`
-/

namespace A036177.P6464983082917765216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054503 (691 + n)

end

end A036177.P6464983082917765216

/-!
# A036178: Log base 2 (n) mod 83.

The programs for A036178, there is no canonical definition to state claims against.
-/

/-! ## A036178.P15409653992954702912

`A054503(769+n)`
-/

namespace A036178.P15409653992954702912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054503 (769 + n)

end

end A036178.P15409653992954702912

/-!
# A036190: Log base 2 (n) mod 149.

The programs for A036190, there is no canonical definition to state claims against.
-/

/-! ## A036190.P14949086006304122586

`and(A133630(n+4), A142147(n!))`
-/

namespace A036190.P14949086006304122586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A133630 (n + 4)) (A142147 (Nat.factorial n))

end

end A036190.P14949086006304122586

/-!
# A036196: Log base 2 (n) mod 179.

The programs for A036196, there is no canonical definition to state claims against.
-/

/-! ## A036196.P9286176788853265125

`A165085(lcm(A005408(n), A165104(n+5))-4)`
-/

namespace A036196.P9286176788853265125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165085 (Int.lcm (A005408 n) (A165104 (n + 5)) - 4)

end

end A036196.P9286176788853265125

/-!
# A036197: Log base 2 (n) mod 181.

The programs for A036197, there is no canonical definition to state claims against.
-/

/-! ## A036197.P9651831722609088301

`A238896(or(∏{e}[n+1, #+1], A077526(n+1)))`
-/

namespace A036197.P9651831722609088301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238896 (Int.lor ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A077526 (n + 1))).toNat

end

end A036197.P9651831722609088301

