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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
# A300401: Array T(n,k) = n*(binomial(k, 2) + 1) + k*(binomial(n, 2) + 1) read by antidiagonals.

The programs for A300401, the canonical program `A300401.P1723382779798005769` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300401 has offset 0).

The definition of A300401 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300401.P1723382779798005769

`A139600(A061579(n))+A139600(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A300401

/-- `A139600(A061579(n))+A139600(n)` -/
def P1723382779798005769.Spec : Prop :=
  ∀ n, P1723382779798005769.a n = A300401 n

theorem P1723382779798005769.correct : P1723382779798005769.Spec := by
  intro n
  simp only [A300401]

end A300401

/-! ## A300401.P15477099308051842536

`A139600(A114327(n)+n)+A139600(n)`
-/

namespace A300401.P15477099308051842536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 (A114327 n + (n : ℤ)).toNat + A139600 n

end

end A300401.P15477099308051842536

namespace A300401

/-- `A139600(A114327(n)+n)+A139600(n)` -/
def P15477099308051842536.Spec : Prop :=
  ∀ n, P15477099308051842536.a n = A300401 n

end A300401

/-! ## A300401.P12750259802923169392

`A139600(n)+A139600(∑[A198954(n)-1])`
-/

namespace A300401.P12750259802923169392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 n + A139600 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A300401.P12750259802923169392

namespace A300401

/-- `A139600(n)+A139600(∑[A198954(n)-1])` -/
def P12750259802923169392.Spec : Prop :=
  ∀ n, P12750259802923169392.a n = A300401 n

end A300401

/-! ## A300401.P12443505567285651905

`A134394(n+1)+A139600(n)-A077028(n)`
-/

namespace A300401.P12443505567285651905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134394 (n + 1) + (A139600 n - A077028 n)

end

end A300401.P12443505567285651905

namespace A300401

/-- `A134394(n+1)+A139600(n)-A077028(n)` -/
def P12443505567285651905.Spec : Prop :=
  ∀ n, P12443505567285651905.a n = A300401 n

end A300401

/-! ## A300401.P3185672458804015610

`A139600(A002378(n)%A014132(n+1))+A139600(n)`
-/

namespace A300401.P3185672458804015610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat + A139600 n

end

end A300401.P3185672458804015610

namespace A300401

/-- `A139600(A002378(n)%A014132(n+1))+A139600(n)` -/
def P3185672458804015610.Spec : Prop :=
  ∀ n, P3185672458804015610.a n = A300401 n

end A300401

/-! ## A300401.P13066788573652492913

`A139600(A038722(n+2))+A139600(n)`
-/

namespace A300401.P13066788573652492913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 (A038722 (n + 2)).toNat + A139600 n

end

end A300401.P13066788573652492913

namespace A300401

/-- `A139600(A038722(n+2))+A139600(n)` -/
def P13066788573652492913.Spec : Prop :=
  ∀ n, P13066788573652492913.a n = A300401 n

end A300401

/-!
# A300406: Primes of the form 13*2^n + 1.

The programs for A300406, there is no canonical definition to state claims against.
-/

/-! ## A300406.P15910905091437405324

`A168596(A032356(n+1))`
-/

namespace A300406.P15910905091437405324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168596 (A032356 (n + 1)).toNat

end

end A300406.P15910905091437405324

/-! ## A300406.P9230215505469925758

`A168596(2*A002257(n+1))`
-/

namespace A300406.P9230215505469925758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168596 (2 * A002257 (n + 1)).toNat

end

end A300406.P9230215505469925758

/-!
# A300409: Number of centered triangular numbers dividing n.

The programs for A300409, the canonical program `A300409.P17132749189029347074` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300409 has offset 1).

The definition of A300409 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3825 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300409.P17132749189029347074

`∑{d}[n+1, A073424(3*#-2)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A300409

/-- `∑{d}[n+1, A073424(3*#-2)]` -/
def P17132749189029347074.Spec : Prop :=
  ∀ n, P17132749189029347074.a n = A300409 (n + 1)

theorem P17132749189029347074.correct : P17132749189029347074.Spec := by
  intro n
  simp only [A300409, Nat.add_sub_cancel]

end A300409

/-! ## A300409.P1136907942500796659

`∑{d}[n+1, A097806(3*(#-1))]`
-/

namespace A300409.P1136907942500796659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A097806 (3 * ((d : ℤ) - 1)).toNat

end

end A300409.P1136907942500796659

namespace A300409

/-- `∑{d}[n+1, A097806(3*(#-1))]` -/
def P1136907942500796659.Spec : Prop :=
  ∀ n, P1136907942500796659.a n = A300409 (n + 1)

end A300409

/-! ## A300409.P15614124186568494985

`∑{d}[n+1, A103451(3*#-2)]`
-/

namespace A300409.P15614124186568494985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A103451 (3 * d - 2)

end

end A300409.P15614124186568494985

namespace A300409

/-- `∑{d}[n+1, A103451(3*#-2)]` -/
def P15614124186568494985.Spec : Prop :=
  ∀ n, P15614124186568494985.a n = A300409 (n + 1)

end A300409

/-! ## A300409.P3903881009841296584

`∑{d}[n+1, A010054(3*#-2)]`
-/

namespace A300409.P3903881009841296584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010054 (3 * d - 2)

end

end A300409.P3903881009841296584

namespace A300409

/-- `∑{d}[n+1, A010054(3*#-2)]` -/
def P3903881009841296584.Spec : Prop :=
  ∀ n, P3903881009841296584.a n = A300409 (n + 1)

end A300409

/-! ## A300409.P16438955349749062278

`∑{d}[n+1, A005369(6*#-4)]`
-/

namespace A300409.P16438955349749062278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A005369 (6 * d - 4)

end

end A300409.P16438955349749062278

namespace A300409

/-- `∑{d}[n+1, A005369(6*#-4)]` -/
def P16438955349749062278.Spec : Prop :=
  ∀ n, P16438955349749062278.a n = A300409 (n + 1)

end A300409

/-!
# A300410: Number of centered square numbers dividing n.

The programs for A300410, the canonical program `A300410.P13384018005390243384` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300410 has offset 1).

The definition of A300410 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300410.P13384018005390243384

`∑{d}[n+1, A003982(#-1)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A300410

/-- `∑{d}[n+1, A003982(#-1)]` -/
def P13384018005390243384.Spec : Prop :=
  ∀ n, P13384018005390243384.a n = A300410 (n + 1)

theorem P13384018005390243384.correct : P13384018005390243384.Spec := by
  intro n
  simp only [A300410, Nat.add_sub_cancel]

end A300410

/-! ## A300410.P12964721095527369587

`∑{d}[4*(n+1), A098108(#-1)]`
-/

namespace A300410.P12964721095527369587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A098108 (d - 1)

end

end A300410.P12964721095527369587

namespace A300410

/-- `∑{d}[4*(n+1), A098108(#-1)]` -/
def P12964721095527369587.Spec : Prop :=
  ∀ n, P12964721095527369587.a n = A300410 (n + 1)

end A300410

/-! ## A300410.P3120734573293959413

`∑{d}[n+1, A244612(2*(#-1)+1)]`
-/

namespace A300410.P3120734573293959413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A244612 (2 * ((d : ℤ) - 1) + 1).toNat

end

end A300410.P3120734573293959413

namespace A300410

/-- `∑{d}[n+1, A244612(2*(#-1)+1)]` -/
def P3120734573293959413.Spec : Prop :=
  ∀ n, P3120734573293959413.a n = A300410 (n + 1)

end A300410

/-! ## A300410.P9457871597983675002

`∑{d}[n+1, A000007(#%A038722(#))]`
-/

namespace A300410.P9457871597983675002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000007 (Int.tmod (d : ℤ) (A038722 d)).toNat

end

end A300410.P9457871597983675002

namespace A300410

/-- `∑{d}[n+1, A000007(#%A038722(#))]` -/
def P9457871597983675002.Spec : Prop :=
  ∀ n, P9457871597983675002.a n = A300410 (n + 1)

end A300410

/-! ## A300410.P13605967262849935390

`∑{d}[n+1, A010052(2*#-1)]`
-/

namespace A300410.P13605967262849935390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010052 (2 * d - 1)

end

end A300410.P13605967262849935390

namespace A300410

/-- `∑{d}[n+1, A010052(2*#-1)]` -/
def P13605967262849935390.Spec : Prop :=
  ∀ n, P13605967262849935390.a n = A300410 (n + 1)

end A300410

/-!
# A300411: a(0) = a(1) = 1; a(n) = [x^n] Product_{k=1..n-1} 1/(1 - a(k)*x^a(k)).

The programs for A300411, there is no canonical definition to state claims against.
-/

/-! ## A300411.P5498058887207873663

`A293807(n)+A076020(A059481(n))`
-/

namespace A300411.P5498058887207873663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293807 n + A076020 (A059481 n).toNat

end

end A300411.P5498058887207873663

/-! ## A300411.P3463938430596157949

`A324091(A088518(n))+A293807(n)`
-/

namespace A300411.P3463938430596157949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324091 (A088518 n).toNat + A293807 n

end

end A300411.P3463938430596157949

/-!
# A300412: a(n) = [x^n] Product_{k>=1} ((1 + n*x^k)/(1 - n*x^k))^k.

The programs for A300412, there is no canonical definition to state claims against.
-/

/-! ## A300412.P3747668496351693436

`A004277(n*A004525(A215706(n)))`
-/

namespace A300412.P3747668496351693436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 ((n : ℤ) * A004525 (A215706 n).toNat).toNat

end

end A300412.P3747668496351693436

/-! ## A300412.P11986947146804674429

`A004277(n*A065033(A215706(n)))`
-/

namespace A300412.P11986947146804674429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 ((n : ℤ) * A065033 (A215706 n).toNat).toNat

end

end A300412.P11986947146804674429

/-!
# A300414: Expansion of Product_{k>=2} (1 + x^Fibonacci(k))/(1 - x^Fibonacci(k)).

The programs for A300414, there is no canonical definition to state claims against.
-/

/-! ## A300414.P17930271858775644755

`A298303(A389617(n+2))`
-/

namespace A300414.P17930271858775644755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298303 (A389617 (n + 2)).toNat

end

end A300414.P17930271858775644755

/-! ## A300414.P10788506017646964162

`A008680(A137679(2*n+1))+eq[1, A307449(n+1)]+1`
-/

namespace A300414.P10788506017646964162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307449 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008680 (A137679 (2 * n + 1)).toNat + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A300414.P10788506017646964162

/-! ## A300414.P3699023674924656702

`A096491(A048492(n))`
-/

namespace A300414.P3699023674924656702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096491 (A048492 n).toNat

end

end A300414.P3699023674924656702

/-! ## A300414.P2357078806066741225

`A096491(A006776(n+1))`
-/

namespace A300414.P2357078806066741225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096491 (A006776 (n + 1)).toNat

end

end A300414.P2357078806066741225

/-! ## A300414.P17890658474353853366

`A175107(A015724(n+1))`
-/

namespace A300414.P17890658474353853366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175107 (A015724 (n + 1)).toNat

end

end A300414.P17890658474353853366

/-!
# A300415: Expansion of Product_{k>=2} (1 + x^k)/(1 - x^k).

The programs for A300415, there is no canonical definition to state claims against.
-/

/-! ## A300415.P6733133662404526035

`A211971(n)-a(n-1)` with `a(0)=1`
-/

namespace A300415.P6733133662404526035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A211971 n - a (n - 1)

end

end A300415.P6733133662404526035

/-! ## A300415.P5459311859934132720

`abs(∑[A033999(n)*A211971(n)])`
-/

namespace A300415.P5459311859934132720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A211971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A300415.P5459311859934132720

/-! ## A300415.P1577273338794525569

`A211971(n+1)+A207641(n)-A207641(n+1)`
-/

namespace A300415.P1577273338794525569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211971 (n + 1) + (A207641 n - A207641 (n + 1))

end

end A300415.P1577273338794525569

/-! ## A300415.P8160187128540725474

`2*A207641(n)-A015128(n)`
-/

namespace A300415.P8160187128540725474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A207641 n - A015128 n

end

end A300415.P8160187128540725474

/-! ## A300415.P3316905585742543449

`Δ[A015128(n)-A207641(n)]`
-/

namespace A300415.P3316905585742543449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015128 n - A207641 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A300415.P3316905585742543449

/-!
# A300416: Number of prime Eisenstein integers z = x - y*w^2 with |z| <= n and where w = -1/2 + i*sqrt(3)/2 is a primitive cube root of unity.

The programs for A300416, there is no canonical definition to state claims against.
-/

/-! ## A300416.P11232460552005632020

`A135462((n+1)²)/6`
-/

namespace A300416.P11232460552005632020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135462 ((n + 1) ^ 2) : ℚ) / 6

end

end A300416.P11232460552005632020

/-! ## A300416.P17817696888082144812

`A008615(A135462((n+1)²))`
-/

namespace A300416.P17817696888082144812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A135462 ((n + 1) ^ 2)).toNat

end

end A300416.P17817696888082144812

/-! ## A300416.P1084097118701116827

`∑[A008615(Δ[A135462(n²)])]`
-/

namespace A300416.P1084097118701116827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135462 (n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300416.P1084097118701116827

/-! ## A300416.P6547059187761301233

`∑[A112689(Δ[A135462(n²)])]`
-/

namespace A300416.P6547059187761301233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135462 (n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300416.P6547059187761301233

/-! ## A300416.P409374055136476629

`∑[A255591(Δ[A135462(n²)])]`
-/

namespace A300416.P409374055136476629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135462 (n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300416.P409374055136476629

/-! ## A300416.P17174371458395678960

`∑[A134324(n)/6]`
-/

namespace A300416.P17174371458395678960
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134324 n : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300416.P17174371458395678960

/-! ## A300416.P7890003595204534545

`A008615(∑[A134324(n)])`
-/

namespace A300416.P7890003595204534545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A300416.P7890003595204534545

/-! ## A300416.P13465263189720652520

`A112689(∑[A134324(n)])`
-/

namespace A300416.P13465263189720652520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A300416.P13465263189720652520

/-! ## A300416.P3967102640570336264

`A255591(∑[A134324(n)])`
-/

namespace A300416.P3967102640570336264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A300416.P3967102640570336264

/-! ## A300416.P7838072575387307908

`∑[A103221(A134324(n)+1)]`
-/

namespace A300416.P7838072575387307908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A134324 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300416.P7838072575387307908

/-!
# A300418: Number of semiprime Fermat pseudoprimes to base 2 (A214305) less than 10^n.

The programs for A300418, there is no canonical definition to state claims against.
-/

/-! ## A300418.P2992741744950406127

`A173817(a(n-1)+n+1)+1` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A300418.P2992741744950406127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  A173817 (a (n - 1) + (n : ℤ) + 1).toNat + 1

end

end A300418.P2992741744950406127

/-! ## A300418.P5482618159279201990

`A347793(A178703(n))`
-/

namespace A300418.P5482618159279201990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347793 (A178703 n).toNat

end

end A300418.P5482618159279201990

/-!
# A300419: Smallest nonnegative number k such that k can be written in exactly n ways as x^2 + xy + y^2 where x and y are positive integers, with x >= y.

The programs for A300419, there is no canonical definition to state claims against.
-/

/-! ## A300419.P17992493506756877467

`A374094(n)%A008804(A217799(n))`
-/

namespace A300419.P17992493506756877467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A374094 n) (A008804 (A217799 n).toNat)

end

end A300419.P17992493506756877467

/-!
# A300420: Number of n X n 0..1 arrays with every element equal to 1, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300420, there is no canonical definition to state claims against.
-/

/-! ## A300420.P3248766245161877022

`A300427(∑[4*n]+1)`
-/

namespace A300420.P3248766245161877022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300427 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300420.P3248766245161877022

/-! ## A300420.P4439467736369052269

`record[A003982(n)*A300427(n+1)]`
-/

namespace A300420.P4439467736369052269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A300427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300420.P4439467736369052269

/-! ## A300420.P1843668054216231554

`A300427(A001844(n))+A056967(n)`
-/

namespace A300420.P1843668054216231554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300427 (A001844 n).toNat + A056967 n

end

end A300420.P1843668054216231554

/-! ## A300420.P1579273502286104830

`A007318(∑[n])*A300427(A001844(n))`
-/

namespace A300420.P1579273502286104830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A300427 (A001844 n).toNat

end

end A300420.P1579273502286104830

/-! ## A300420.P11303765831817265331

`A000045(A014963(4*n+2))*A300427(A001844(n))`
-/

namespace A300420.P11303765831817265331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A014963 (4 * n + 2)).toNat * A300427 (A001844 n).toNat

end

end A300420.P11303765831817265331

/-!
# A300421: Number of n X 2 0..1 arrays with every element equal to 1, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300421, the canonical program `A300421.P16607099955426857431` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300421 has offset 1).

The definition of A300421 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300421.P16607099955426857431

`3*a(n-1)+a(n-2)-3*a(n-4)-2*a(n-5)-a(n-6)` with `a(0)=1, a(1)=3, a(2)=10, a(3)=30, a(4)=96, a(5)=307, a(6)=981`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A300421

/-- `3*a(n-1)+a(n-2)-3*a(n-4)-2*a(n-5)-a(n-6)` -/
def P16607099955426857431.Spec : Prop :=
  ∀ n, P16607099955426857431.a n = A300421 (n + 1)

theorem P16607099955426857431.correct : P16607099955426857431.Spec := by
  intro n
  simp only [A300421, Nat.add_sub_cancel]

end A300421

/-! ## A300421.P10059886969283791683

`A300427(∑[n+1]+2)`
-/

namespace A300421.P10059886969283791683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300427 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A300421.P10059886969283791683

namespace A300421

/-- `A300427(∑[n+1]+2)` -/
def P10059886969283791683.Spec : Prop :=
  ∀ n, P10059886969283791683.a n = A300421 (n + 1)

end A300421

/-! ## A300421.P12150499576366546143

`A300689(∑[n+1]+2)`
-/

namespace A300421.P12150499576366546143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300689 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A300421.P12150499576366546143

namespace A300421

/-- `A300689(∑[n+1]+2)` -/
def P12150499576366546143.Spec : Prop :=
  ∀ n, P12150499576366546143.a n = A300421 (n + 1)

end A300421

/-! ## A300421.P9860928854717658417

`record[gcd(A238727(n), A300427(n+1))]`
-/

namespace A300421.P9860928854717658417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A238727 n) (A300427 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300421.P9860928854717658417

namespace A300421

/-- `record[gcd(A238727(n), A300427(n+1))]` -/
def P9860928854717658417.Spec : Prop :=
  ∀ n, (P9860928854717658417.a n : ℤ) = A300421 (n + 1)

end A300421

/-! ## A300421.P2852335716162745892

`A300612(∑[n+1]+2)`
-/

namespace A300421.P2852335716162745892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300612 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A300421.P2852335716162745892

namespace A300421

/-- `A300612(∑[n+1]+2)` -/
def P2852335716162745892.Spec : Prop :=
  ∀ n, P2852335716162745892.a n = A300421 (n + 1)

end A300421

/-!
# A300422: Number of n X 3 0..1 arrays with every element equal to 1, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300422, there is no canonical definition to state claims against.
-/

/-! ## A300422.P1551495416290850113

`A300427(∑[n+2]+4)`
-/

namespace A300422.P1551495416290850113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300427 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A300422.P1551495416290850113

/-! ## A300422.P16100850617013818520

`lcm((-1)^n, A300427(A167614(n+1)))`
-/

namespace A300422.P16100850617013818520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A300427 (A167614 (n + 1)).toNat)

end

end A300422.P16100850617013818520

/-! ## A300422.P9109825077643891615

`A300427(A167614(n+1))+A011738(n)`
-/

namespace A300422.P9109825077643891615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300427 (A167614 (n + 1)).toNat + A011738 n

end

end A300422.P9109825077643891615

/-! ## A300422.P9165504390969332584

`A300427(A167614(n+1))+A137579(n)`
-/

namespace A300422.P9165504390969332584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300427 (A167614 (n + 1)).toNat + A137579 n

end

end A300422.P9165504390969332584

/-! ## A300422.P10781221013742919092

`A300427(A167614(n+1))+A185284(n)`
-/

namespace A300422.P10781221013742919092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300427 (A167614 (n + 1)).toNat + A185284 n

end

end A300422.P10781221013742919092

/-!
# A300423: Number of nX4 0..1 arrays with every element equal to 1, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300423, there is no canonical definition to state claims against.
-/

/-! ## A300423.P7137108738979025017

`A300427(A052905(n)+9)`
-/

namespace A300423.P7137108738979025017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300427 (A052905 n + 9).toNat

end

end A300423.P7137108738979025017

/-! ## A300423.P10883985890712881316

`A300427(A055999(n)+10)`
-/

namespace A300423.P10883985890712881316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300427 (A055999 n + 10).toNat

end

end A300423.P10883985890712881316

/-! ## A300423.P12445570082946904488

`A300427(A167614(n+2)+1)`
-/

namespace A300423.P12445570082946904488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300427 (A167614 (n + 2) + 1).toNat

end

end A300423.P12445570082946904488

/-! ## A300423.P8893907360104541753

`A300427(A112355(n+1)+4)`
-/

namespace A300423.P8893907360104541753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300427 (A112355 (n + 1) + 4).toNat

end

end A300423.P8893907360104541753

/-! ## A300423.P6732922292096667938

`A300427(A167487(n+2)-3)`
-/

namespace A300423.P6732922292096667938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300427 (A167487 (n + 2) - 3).toNat

end

end A300423.P6732922292096667938

/-!
# A300424: Number of nX5 0..1 arrays with every element equal to 1, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300424, there is no canonical definition to state claims against.
-/

/-! ## A300424.P9876986115456355324

`A300427(A167499(n+3))`
-/

namespace A300424.P9876986115456355324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300427 (A167499 (n + 3)).toNat

end

end A300424.P9876986115456355324

/-! ## A300424.P9379772601285960784

`A300427(A155212(n)+13)`
-/

namespace A300424.P9379772601285960784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300427 (A155212 n + 13).toNat

end

end A300424.P9379772601285960784

/-! ## A300424.P5085375623646509976

`A300427(A056000(n)+15)`
-/

namespace A300424.P5085375623646509976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300427 (A056000 n + 15).toNat

end

end A300424.P5085375623646509976

/-! ## A300424.P8671668321976547455

`A300427(Δ[A264443(n)])`
-/

namespace A300424.P8671668321976547455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300427 (f1 (n + 1) - f1 n).toNat

end

end A300424.P8671668321976547455

/-! ## A300424.P15134430258706183192

`A300427(A374005(n+1))`
-/

namespace A300424.P15134430258706183192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300427 (A374005 (n + 1)).toNat

end

end A300424.P15134430258706183192

/-!
# A300425: Number of nX6 0..1 arrays with every element equal to 1, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300425, there is no canonical definition to state claims against.
-/

/-! ## A300425.P14473707056026102877

`A300427(eq[7, A131818(n+1)])`
-/

namespace A300425.P14473707056026102877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300425.P14473707056026102877

/-! ## A300425.P3310070818009027706

`A300427(A374007(n+1))`
-/

namespace A300425.P3310070818009027706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300427 (A374007 (n + 1)).toNat

end

end A300425.P3310070818009027706

/-! ## A300425.P17518574746885524050

`A300427(A052905(n+3))`
-/

namespace A300425.P17518574746885524050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300427 (A052905 (n + 3)).toNat

end

end A300425.P17518574746885524050

/-! ## A300425.P10271208140440888753

`A300427(eq[3, A219347(n)])`
-/

namespace A300425.P10271208140440888753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300425.P10271208140440888753

/-! ## A300425.P15398055263657027544

`A300427(eq[5, A193592(n)])`
-/

namespace A300425.P15398055263657027544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300425.P15398055263657027544

/-!
# A300426: Number of nX7 0..1 arrays with every element equal to 1, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300426, there is no canonical definition to state claims against.
-/

/-! ## A300426.P16498200539759618636

`A300427(A167487(n+5))`
-/

namespace A300426.P16498200539759618636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300427 (A167487 (n + 5)).toNat

end

end A300426.P16498200539759618636

/-! ## A300426.P12672395282253510081

`A300427(eq[8, A131818(n+1)])`
-/

namespace A300426.P12672395282253510081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300426.P12672395282253510081

/-! ## A300426.P9480006994837010238

`A300427(A167499(n+6)-(n+5))`
-/

namespace A300426.P9480006994837010238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300427 (A167499 (n + 6) - (n + 5 : ℤ)).toNat

end

end A300426.P9480006994837010238

/-! ## A300426.P13121435927689023247

`A300427(A374008(n+1))`
-/

namespace A300426.P13121435927689023247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300427 (A374008 (n + 1)).toNat

end

end A300426.P13121435927689023247

/-! ## A300426.P13109811508197052071

`A300427(eq[4, A219347(n)])`
-/

namespace A300426.P13109811508197052071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300426.P13109811508197052071

/-!
# A300427: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300427, there is no canonical definition to state claims against.
-/

/-! ## A300427.P14820916755969371185

`A300689(n+1)-A010894(A009766(n))`
-/

namespace A300427.P14820916755969371185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300689 (n + 1) - A010894 ((A009766 n).toNat + 21)

end

end A300427.P14820916755969371185

/-! ## A300427.P15495060825153030655

`A300689(n+1)-A014954(A053802(n))`
-/

namespace A300427.P15495060825153030655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300689 (n + 1) - A014954 (A053802 n).toNat

end

end A300427.P15495060825153030655

/-! ## A300427.P12845627115501369471

`A300689(n+1)-A109527(A054907(n))`
-/

namespace A300427.P12845627115501369471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300689 (n + 1) - A109527 (A054907 n).toNat

end

end A300427.P12845627115501369471

/-! ## A300427.P336702942426838032

`A300689(n+1)-A067898(A174127(n))`
-/

namespace A300427.P336702942426838032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300689 (n + 1) - A067898 (A174127 n).toNat

end

end A300427.P336702942426838032

/-! ## A300427.P1802791353805059899

`A001055(A101791(n+1))*A300689(n+1)`
-/

namespace A300427.P1802791353805059899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A101791 (n + 1)).toNat * A300689 (n + 1)

end

end A300427.P1802791353805059899

/-!
# A300428: a(n) is the least positive k such that the binary representation of n appears as a substring in the binary representation of 1/k (ignoring the radix point and adding trailing zeros if necessary in case of a terminating expansion).

The programs for A300428, there is no canonical definition to state claims against.
-/

/-! ## A300428.P6292073407644781428

`A102351(or(A102376(n+1), A332899(n+1))-1)`
-/

namespace A300428.P6292073407644781428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102351 (Int.lor (A102376 (n + 1)) (A332899 (n + 1)) - 1).toNat

end

end A300428.P6292073407644781428

/-! ## A300428.P7928102791836785598

`A300691(∑[n]+1)`
-/

namespace A300428.P7928102791836785598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300691 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300428.P7928102791836785598

/-! ## A300428.P1338718232784615032

`or(1, A300691(A000124(n)))`
-/

namespace A300428.P1338718232784615032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A300691 (A000124 n).toNat)

end

end A300428.P1338718232784615032

/-! ## A300428.P2682271330518034634

`and(15, A146790(A117366(n+1)))`
-/

namespace A300428.P2682271330518034634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 15 (A146790 (A117366 (n + 1)).toNat)

end

end A300428.P2682271330518034634

/-! ## A300428.P7561941779234916415

`A048793(A000217((lcm(4, n+1)/4)²))`
-/

namespace A300428.P7561941779234916415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048793 (A000217 (SequenceMachineLib.roundAway (((Nat.lcm 4 (n + 1) : ℚ) / 4) ^ 2)).toNat).toNat

end

end A300428.P7561941779234916415

/-!
# A300429: Number of n X n 0..1 arrays with every element equal to 1, 2 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300429, there is no canonical definition to state claims against.
-/

/-! ## A300429.P15628230862837872662

`A300435(∑[4*n]+1)`
-/

namespace A300429.P15628230862837872662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300435 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300429.P15628230862837872662

/-! ## A300429.P16428845204170125052

`record[A300435(A272267(n+1))]`
-/

namespace A300429.P16428845204170125052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300435 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300429.P16428845204170125052

/-! ## A300429.P10123002853939630318

`record[A300435(A330613(n+1))]`
-/

namespace A300429.P10123002853939630318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300435 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300429.P10123002853939630318

/-! ## A300429.P4457004978824903580

`A300435(A001844(n))+char[11]`
-/

namespace A300429.P4457004978824903580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300435 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300429.P4457004978824903580

/-! ## A300429.P18164131007117463700

`record[A003982(n)*A300435(n+1)]`
-/

namespace A300429.P18164131007117463700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A300435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300429.P18164131007117463700

/-!
# A300430: Number of nX3 0..1 arrays with every element equal to 1, 2 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300430, there is no canonical definition to state claims against.
-/

/-! ## A300430.P4067384069963189835

`A300435(∑[n+2]+4)`
-/

namespace A300430.P4067384069963189835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300435 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A300430.P4067384069963189835

/-! ## A300430.P14132601008833818171

`A300435(A167614(n+1))+char[21]`
-/

namespace A300430.P14132601008833818171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300435 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300430.P14132601008833818171

/-! ## A300430.P5619341254672164476

`record[gcd(A090181(n), A300435(n+3))]`
-/

namespace A300430.P5619341254672164476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A090181 n) (A300435 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300430.P5619341254672164476

/-! ## A300430.P9880406614697326278

`A300435(A000124(n+2)+2)+char[25]`
-/

namespace A300430.P9880406614697326278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300435 (A000124 (n + 2) + 2).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300430.P9880406614697326278

/-! ## A300430.P16159895317214431745

`gcd(A000038(n), A300435(A167614(n+1)))`
-/

namespace A300430.P16159895317214431745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A300435 (A167614 (n + 1)).toNat)

end

end A300430.P16159895317214431745

/-!
# A300431: Number of nX4 0..1 arrays with every element equal to 1, 2 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300431, there is no canonical definition to state claims against.
-/

/-! ## A300431.P16148428600553254604

`A300435(∑[n+3]+7)`
-/

namespace A300431.P16148428600553254604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300435 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A300431.P16148428600553254604

/-! ## A300431.P10800565679710917331

`A300435(A000217(n+3)+4)+char[20]`
-/

namespace A300431.P10800565679710917331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300435 (A000217 (n + 3) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300431.P10800565679710917331

/-! ## A300431.P4944748182467338691

`gcd(n, n+1)*A300435(A052905(n)+9)`
-/

namespace A300431.P4944748182467338691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A300435 (A052905 n + 9).toNat

end

end A300431.P4944748182467338691

/-! ## A300431.P6128486984235075419

`A007318(C(2, n))*A300435(A000217(n+3)+4)`
-/

namespace A300431.P6128486984235075419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A300435 (A000217 (n + 3) + 4).toNat

end

end A300431.P6128486984235075419

/-! ## A300431.P107469782163855739

`A000108(C(n, 47))*A300435(A000217(n+3)+4)`
-/

namespace A300431.P107469782163855739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose n 47) * A300435 (A000217 (n + 3) + 4).toNat

end

end A300431.P107469782163855739

/-!
# A300432: Number of nX5 0..1 arrays with every element equal to 1, 2 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300432, there is no canonical definition to state claims against.
-/

/-! ## A300432.P13816771362046712048

`A300435(∑[n+4]+11)`
-/

namespace A300432.P13816771362046712048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300435 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A300432.P13816771362046712048

/-! ## A300432.P6774895774773353999

`A300435(A056000(n)+15)+char[23]`
-/

namespace A300432.P6774895774773353999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300435 (A056000 n + 15).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300432.P6774895774773353999

/-! ## A300432.P14338583342010599094

`A007318(C(2, n))*A300435(A056000(n)+15)`
-/

namespace A300432.P14338583342010599094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A300435 (A056000 n + 15).toNat

end

end A300432.P14338583342010599094

/-! ## A300432.P1394131012567499235

`A007318(and(1, -n))*A300435(A056000(n)+15)`
-/

namespace A300432.P1394131012567499235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * A300435 (A056000 n + 15).toNat

end

end A300432.P1394131012567499235

/-! ## A300432.P10884152964122047917

`A300435(A056000(n)+15)%A000032(4*(n+1))`
-/

namespace A300432.P10884152964122047917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300435 (A056000 n + 15).toNat) (A000032 (4 * (n + 1)))

end

end A300432.P10884152964122047917

/-!
# A300433: Number of nX6 0..1 arrays with every element equal to 1, 2 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300433, there is no canonical definition to state claims against.
-/

/-! ## A300433.P2260842930545244593

`A300435(A374007(n+1))`
-/

namespace A300433.P2260842930545244593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300435 (A374007 (n + 1)).toNat

end

end A300433.P2260842930545244593

/-! ## A300433.P3358100182288627764

`A300435(A056115(n)+21)`
-/

namespace A300433.P3358100182288627764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300435 (A056115 n + 21).toNat

end

end A300433.P3358100182288627764

/-! ## A300433.P11121321460924078391

`A300435(A167499(n+4)+1)`
-/

namespace A300433.P11121321460924078391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300435 (A167499 (n + 4) + 1).toNat

end

end A300433.P11121321460924078391

/-! ## A300433.P9982985349426834333

`A300435(A167614(n+4)+3)`
-/

namespace A300433.P9982985349426834333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300435 (A167614 (n + 4) + 3).toNat

end

end A300433.P9982985349426834333

/-! ## A300433.P12882756687321718494

`A300435(A133263(n+5)+4)`
-/

namespace A300433.P12882756687321718494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300435 (A133263 (n + 5) + 4).toNat

end

end A300433.P12882756687321718494

/-!
# A300434: Number of nX7 0..1 arrays with every element equal to 1, 2 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300434, there is no canonical definition to state claims against.
-/

/-! ## A300434.P13030798745926277162

`A300435(A374008(n+1))`
-/

namespace A300434.P13030798745926277162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300435 (A374008 (n + 1)).toNat

end

end A300434.P13030798745926277162

/-! ## A300434.P7006362706211145364

`A300435(A167487(n+5))`
-/

namespace A300434.P7006362706211145364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300435 (A167487 (n + 5)).toNat

end

end A300434.P7006362706211145364

/-! ## A300434.P2951323194321100661

`A300435(A056119(n)+28)`
-/

namespace A300434.P2951323194321100661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300435 (A056119 n + 28).toNat

end

end A300434.P2951323194321100661

/-! ## A300434.P7486600310417754791

`A300435(A166136(n+5)+1)`
-/

namespace A300434.P7486600310417754791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300435 (A166136 (n + 5) + 1).toNat

end

end A300434.P7486600310417754791

/-! ## A300434.P15778687749140990458

`A300435(A000124(n+6)+6)`
-/

namespace A300434.P15778687749140990458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300435 (A000124 (n + 6) + 6).toNat

end

end A300434.P15778687749140990458

/-!
# A300435: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300435, there is no canonical definition to state claims against.
-/

/-! ## A300435.P8751252900932142022

`A300769(n+1)-A326684(A059117(n))`
-/

namespace A300435.P8751252900932142022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300769 (n + 1) - A326684 (A059117 n).toNat

end

end A300435.P8751252900932142022

/-! ## A300435.P7617464590116087123

`A300769(n+1)%A089696(n)`
-/

namespace A300435.P7617464590116087123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300769 (n + 1)) (A089696 n)

end

end A300435.P7617464590116087123

/-! ## A300435.P17779519676424948971

`A300769(n+1)+A000038(A003410(n))`
-/

namespace A300435.P17779519676424948971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300769 (n + 1) + A000038 (A003410 n).toNat

end

end A300435.P17779519676424948971

/-! ## A300435.P3786183102332475015

`A185115(A364218(2*n+1))*A300769(n+1)`
-/

namespace A300435.P3786183102332475015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185115 (A364218 (2 * n + 1)).toNat * A300769 (n + 1)

end

end A300435.P3786183102332475015

/-! ## A300435.P14117521330869218388

`filter[A300769(n+1), A385395(#)]`
-/

namespace A300435.P14117521330869218388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A385395 (f1 j).toNat = 1) n)

end

end A300435.P14117521330869218388

/-!
# A300436: Number of odd p-trees of weight n (all proper terminal subtrees have odd weight).

The programs for A300436, there is no canonical definition to state claims against.
-/

/-! ## A300436.P15021656872868857708

`A322111(n)-A004524(gcd(1-n, floor(n/2)))`
-/

namespace A300436.P15021656872868857708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322111 n - A004524 (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋)

end

end A300436.P15021656872868857708

/-! ## A300436.P9847499182369634099

`A322111(n)-A022307(A097331(n))`
-/

namespace A300436.P9847499182369634099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322111 n - A022307 (A097331 n).toNat

end

end A300436.P9847499182369634099

/-! ## A300436.P15860608793060039015

`A322111(n)-A188172(A000213(n))`
-/

namespace A300436.P15860608793060039015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322111 n - A188172 (A000213 n).toNat

end

end A300436.P15860608793060039015

/-! ## A300436.P6865617393633348380

`A322111(n)-A079694(A048673(n+1))`
-/

namespace A300436.P6865617393633348380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322111 n - A079694 (A048673 (n + 1)).toNat

end

end A300436.P6865617393633348380

/-! ## A300436.P5880723695088381208

`A322111(n)-A194447(A080575(n+1))`
-/

namespace A300436.P5880723695088381208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322111 n - A194447 (A080575 (n + 1)).toNat

end

end A300436.P5880723695088381208

/-!
# A300437: Triangle T(nu,m) read by rows: The number of N-color odd self-inverse compositions of (2*nu+1) into (2*m+1) parts.

The programs for A300437, there is no canonical definition to state claims against.
-/

/-! ## A300437.P189592478239769099

`A213718(A381555(n))`
-/

namespace A300437.P189592478239769099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213718 (A381555 n).toNat

end

end A300437.P189592478239769099

/-! ## A300437.P5750210094031728510

`A128908(A187829(n+1))+A105438(n)`
-/

namespace A300437.P5750210094031728510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128908 (A187829 (n + 1)).toNat + A105438 n

end

end A300437.P5750210094031728510

/-! ## A300437.P6797210175037370810

`A069777(n)+2*A208671(A187829(n+1))`
-/

namespace A300437.P6797210175037370810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069777 n + 2 * A208671 (A187829 (n + 1)).toNat

end

end A300437.P6797210175037370810

/-! ## A300437.P8762031168133280973

`A128908(n+1)+A208727(A187829(n+1))+1`
-/

namespace A300437.P8762031168133280973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128908 (n + 1) + (A208727 (A187829 (n + 1)).toNat + 1)

end

end A300437.P8762031168133280973

/-! ## A300437.P7858378624230102402

`A208671(A187829(n+1))+A208671(n+1)+A069777(n)`
-/

namespace A300437.P7858378624230102402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208671 (A187829 (n + 1)).toNat + (A208671 (n + 1) + A069777 n)

end

end A300437.P7858378624230102402

/-!
# A300438: Expansion of (1+x)^3/(1-x-2*x^2-x^3+x^4).

The programs for A300438, the canonical program `A300438.P4500026604228643279` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300438 has offset 0).

The definition of A300438 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x+3x^2+x^3)/(1-x-2x^2-x^3+x^4))` (program `A300438.P4500026604228643279`, by `A300438.P4500026604228643279.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A300438.P4500026604228643279

`ogf((1+3x+3x^2+x^3)/(1-x-2x^2-x^3+x^4))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A300438

/-- `ogf((1+3x+3x^2+x^3)/(1-x-2x^2-x^3+x^4))` -/
def P4500026604228643279.Spec : Prop :=
  ∀ n, P4500026604228643279.a n = A300438 n

theorem P4500026604228643279.correct : P4500026604228643279.Spec := by
  intro n
  simp only [A300438]

end A300438

/-! ## A300438.P3184794850660893755

`ceil(sqrt(A202822(4^n)))`
-/

namespace A300438.P3184794850660893755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A202822 (4 ^ n) : ℝ)⌉

end

end A300438.P3184794850660893755

namespace A300438

/-- `ceil(sqrt(A202822(4^n)))` -/
def P3184794850660893755.Spec : Prop :=
  ∀ n, P3184794850660893755.a n = A300438 n

end A300438

/-! ## A300438.P2646447855433688699

`A185195(A117614(n))`
-/

namespace A300438.P2646447855433688699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185195 (A117614 n).toNat

end

end A300438.P2646447855433688699

namespace A300438

/-- `A185195(A117614(n))` -/
def P2646447855433688699.Spec : Prop :=
  ∀ n, P2646447855433688699.a n = A300438 n

end A300438

/-!
# A300439: Number of odd enriched p-trees of weight n (all outdegrees are odd).

The programs for A300439, there is no canonical definition to state claims against.
-/

/-! ## A300439.P17456527833002146080

`A089646(A104722(n))+n%5*floor(n/5)`
-/

namespace A300439.P17456527833002146080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089646 (A104722 n).toNat + ((n % 5 : ℕ) : ℤ) * ⌊(n : ℚ) / 5⌋

end

end A300439.P17456527833002146080

/-!
# A300440: Number of odd strict trees of weight n (all outdegrees are odd).

The programs for A300440, there is no canonical definition to state claims against.
-/

/-! ## A300440.P11838448490586123119

`A000196(A025424(A126348(n)+4))`
-/

namespace A300440.P11838448490586123119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A025424 (A126348 n + 4).toNat).toNat

end

end A300440.P11838448490586123119

/-! ## A300440.P14715118420625221375

`ceil(A084077(n)/A003208(n))`
-/

namespace A300440.P14715118420625221375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A084077 n : ℚ) / (A003208 n : ℚ)⌉

end

end A300440.P14715118420625221375

/-!
# A300441: Number of the integers 4^k*(4*u(m)^2+1) (k,m = 0,1,2,...) such that n^2 - 4^k*(4*u(m)^2+1) can be written as the sum of two squares, where u(0) = 0, u(1) = 1, and u(j+1) = 4*u(j) - u(j-1) for j = 1,2,3,....

The programs for A300441, there is no canonical definition to state claims against.
-/

/-! ## A300441.P5207527729383346463

`A329870(A000593(3*(n+1)))`
-/

namespace A300441.P5207527729383346463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329870 (A000593 (3 * (n + 1))).toNat

end

end A300441.P5207527729383346463

/-! ## A300441.P3596046871632231432

`A046072(A071160(A007733(n+1)))`
-/

namespace A300441.P3596046871632231432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046072 (A071160 (A007733 (n + 1)).toNat).toNat

end

end A300441.P3596046871632231432

/-! ## A300441.P7382660662033909494

`A316556(A000124(A121443(n+1)²))`
-/

namespace A300441.P7382660662033909494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316556 (A000124 (A121443 (n + 1) ^ 2).toNat).toNat

end

end A300441.P7382660662033909494

/-! ## A300441.P13552232032740186292

`A331244(A366892(n+1))`
-/

namespace A300441.P13552232032740186292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331244 (A366892 (n + 1)).toNat

end

end A300441.P13552232032740186292

/-! ## A300441.P7211097856975874152

`A259579(A365859(n+1))`
-/

namespace A300441.P7211097856975874152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259579 (A365859 (n + 1)).toNat

end

end A300441.P7211097856975874152

/-!
# A300442: Number of binary strict trees of weight n.

The programs for A300442, there is no canonical definition to state claims against.
-/

/-! ## A300442.P10775724313256340828

`A152536(n)-A018843(∑[A094587(n)])`
-/

namespace A300442.P10775724313256340828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152536 n - A018843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A300442.P10775724313256340828

/-! ## A300442.P17874272581661156886

`A257639(A186944(n+1)+A062272(n))`
-/

namespace A300442.P17874272581661156886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A186944 (n + 1) + A062272 n).toNat

end

end A300442.P17874272581661156886

/-! ## A300442.P18066938494462727674

`A304872(5*(a(n-2)-a(n-4)))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=6`
-/

namespace A300442.P18066938494462727674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 3, 6] fun n a =>
  A304872 (5 * (a (n - 2) - a (n - 4))).toNat

end

end A300442.P18066938494462727674

/-! ## A300442.P9454319477362560538

`A127288(A036591(n))`
-/

namespace A300442.P9454319477362560538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127288 (A036591 n).toNat

end

end A300442.P9454319477362560538

/-! ## A300442.P17359113241565316393

`A127288(A036592(n))`
-/

namespace A300442.P17359113241565316393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127288 (A036592 n).toNat

end

end A300442.P17359113241565316393

/-!
# A300445: a(n) is the maximum value of the quartet index of a bifurcating rooted tree with n leaves.

The programs for A300445, the canonical program `A300445.P13747078896398474872` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300445 has offset 1).

The definition of A300445 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A300445.P13747078896398474872

`a(floor((n+1)/2)-1)+a(ceil((n+1)/2)-1)+C(floor((n+1)/2), 2)*C(ceil((n+1)/2), 2)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A300445

/-- `a(floor((n+1)/2)-1)+a(ceil((n+1)/2)-1)+C(floor((n+1)/2), 2)*C(ceil((n+1)/2), 2)` -/
def P13747078896398474872.Spec : Prop :=
  ∀ n, (P13747078896398474872.a n : ℤ) = A300445 (n + 1)

theorem P13747078896398474872.correct : P13747078896398474872.Spec := by
  intro n
  simp only [A300445, Nat.add_sub_cancel]

end A300445

/-! ## A300445.P14297042083113511061

`A232779(∑[A069905(n)²])`
-/

namespace A300445.P14297042083113511061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232779 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A300445.P14297042083113511061

namespace A300445

/-- `A232779(∑[A069905(n)²])` -/
def P14297042083113511061.Spec : Prop :=
  ∀ n, P14297042083113511061.a n = A300445 (n + 1)

end A300445

/-! ## A300445.P5721067660849861850

`∑[∑[A262403(A005664(n))]]`
-/

namespace A300445.P5721067660849861850
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262403 (A005664 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300445.P5721067660849861850

namespace A300445

/-- `∑[∑[A262403(A005664(n))]]` -/
def P5721067660849861850.Spec : Prop :=
  ∀ n, P5721067660849861850.a n = A300445 (n + 1)

end A300445

/-! ## A300445.P595895686666703413

`A232779(∑[A127034(n+1)²])`
-/

namespace A300445.P595895686666703413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127034 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232779 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A300445.P595895686666703413

namespace A300445

/-- `A232779(∑[A127034(n+1)²])` -/
def P595895686666703413.Spec : Prop :=
  ∀ n, P595895686666703413.a n = A300445 (n + 1)

end A300445

/-! ## A300445.P9362206147032705658

`round(A289974(3*n)/A006862(n+4))`
-/

namespace A300445.P9362206147032705658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A289974 (3 * n) : ℚ) / (A006862 (n + 4) : ℚ))

end

end A300445.P9362206147032705658

namespace A300445

/-- `round(A289974(3*n)/A006862(n+4))` -/
def P9362206147032705658.Spec : Prop :=
  ∀ n, P9362206147032705658.a n = A300445 (n + 1)

end A300445

/-!
# A300448: Number of the integers 4^k*m with k >= 0 and m = 1, 2, 5 such that n^2 - 4^k*m can be written as the sum of two squares.

The programs for A300448, there is no canonical definition to state claims against.
-/

/-! ## A300448.P18443564684402396561

`A301471(n+1)+A107577(A115569(n+1))`
-/

namespace A300448.P18443564684402396561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301471 (n + 1) + A107577 (A115569 (n + 1)).toNat

end

end A300448.P18443564684402396561

/-! ## A300448.P2634537425823033614

`A001222(A000204(n+1)*A278243(n+1))`
-/

namespace A300448.P2634537425823033614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000204 (n + 1) * A278243 (n + 1)).toNat

end

end A300448.P2634537425823033614

/-! ## A300448.P14260763972267346023

`A001222(A000204(n+1)*A284012(n+1))`
-/

namespace A300448.P14260763972267346023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000204 (n + 1) * A284012 (n + 1)).toNat

end

end A300448.P14260763972267346023

/-! ## A300448.P17493222312981800393

`A051064(n+1)+A057526(A037283(n+1))+A000035(n)`
-/

namespace A300448.P17493222312981800393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (n + 1) + (A057526 (A037283 (n + 1)).toNat + A000035 n)

end

end A300448.P17493222312981800393

/-! ## A300448.P13772675681347887714

`A057526(A037283(n+1)*A051064(n+1))+A000034(n)`
-/

namespace A300448.P13772675681347887714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057526 (A037283 (n + 1) * A051064 (n + 1)).toNat + A000034 n

end

end A300448.P13772675681347887714

/-!
# A300451: a(n) = (3*n^2 - 3*n + 8)*2^(n - 3).

The programs for A300451, the canonical program `A300451.P599725316536960796` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300451 has offset 0).

The definition of A300451 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n²-3*n+8)*2^(n-3)` (program `A300451.P18214670422254006715`, by `A300451.P18214670422254006715.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A300451.P18190231632994674223

`(3/4*C(n, 2)+1)*2^n`
-/

namespace A300451.P18190231632994674223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 : ℚ) / 4 * (Nat.choose n 2 : ℚ) + 1) * (2 ^ n : ℚ)

end

end A300451.P18190231632994674223

namespace A300451

/-- `(3/4*C(n, 2)+1)*2^n` -/
def P18190231632994674223.Spec : Prop :=
  ∀ n, P18190231632994674223.a n = (A300451 n : ℚ)

end A300451

/-! ## A300451.P18214670422254006715

`(3*n²-3*n+8)*2^(n-3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A300451.P18214670422254006715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n ^ 2 : ℤ) - (3 * n : ℤ) + 8 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)

end

end A300451.P18214670422254006715

namespace A300451

/-- `(3*n²-3*n+8)*2^(n-3)` -/
def P18214670422254006715.Spec : Prop :=
  ∀ n, P18214670422254006715.a n = (A300451 n : ℚ)

theorem P18214670422254006715.correct : P18214670422254006715.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A300451, Nat.add_sub_cancel, A300451.P18214670422254006715.a, A300451.P599725316536960796.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A300451, Nat.add_sub_cancel, A300451.P18214670422254006715.a, A300451.P599725316536960796.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A300451

/-! ## A300451.P10007439299098318215

`2*a(n-1)+3*(n-1)*2^(n-2)` with `a(0)=1`
-/

namespace A300451.P10007439299098318215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + (3 * ((n : ℤ) - 1) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A300451.P10007439299098318215

namespace A300451

/-- `2*a(n-1)+3*(n-1)*2^(n-2)` -/
def P10007439299098318215.Spec : Prop :=
  ∀ n, P10007439299098318215.a n = (A300451 n : ℚ)

end A300451

/-! ## A300451.P599725316536960796

`6*a(n-1)-12*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=2, a(2)=7`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A300451

/-- `6*a(n-1)-12*a(n-2)+8*a(n-3)` -/
def P599725316536960796.Spec : Prop :=
  ∀ n, P599725316536960796.a n = A300451 n

theorem P599725316536960796.correct : P599725316536960796.Spec := by
  intro n
  simp only [A300451]

end A300451

/-! ## A300451.P10962868555706586296

`A295288(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A300451.P10962868555706586296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A295288 (n - 1) + a (n - 1)

end

end A300451.P10962868555706586296

namespace A300451

/-- `A295288(n-1)+a(n-1)` -/
def P10962868555706586296.Spec : Prop :=
  ∀ n, P10962868555706586296.a n = A300451 n

end A300451

/-! ## A300451.P17269212036183808518

`A081908(n)+A001815(n)`
-/

namespace A300451.P17269212036183808518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081908 n + A001815 n

end

end A300451.P17269212036183808518

namespace A300451

/-- `A081908(n)+A001815(n)` -/
def P17269212036183808518.Spec : Prop :=
  ∀ n, P17269212036183808518.a n = A300451 n

end A300451

/-! ## A300451.P190324695663312998

`A127276(n)+A084899(n)`
-/

namespace A300451.P190324695663312998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127276 n + A084899 n

end

end A300451.P190324695663312998

namespace A300451

/-- `A127276(n)+A084899(n)` -/
def P190324695663312998.Spec : Prop :=
  ∀ n, P190324695663312998.a n = A300451 n

end A300451

/-! ## A300451.P7865849169226178961

`A159964(n)+A089658(n)`
-/

namespace A300451.P7865849169226178961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159964 n + A089658 n

end

end A300451.P7865849169226178961

namespace A300451

/-- `A159964(n)+A089658(n)` -/
def P7865849169226178961.Spec : Prop :=
  ∀ n, P7865849169226178961.a n = A300451 n

end A300451

/-! ## A300451.P11819074183579780439

`A178987(n)+A072863(n)`
-/

namespace A300451.P11819074183579780439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178987 n + A072863 n

end

end A300451.P11819074183579780439

namespace A300451

/-- `A178987(n)+A072863(n)` -/
def P11819074183579780439.Spec : Prop :=
  ∀ n, P11819074183579780439.a n = A300451 n

end A300451

/-! ## A300451.P18411194637950941352

`A136530(n)-A058922(n+1)`
-/

namespace A300451.P18411194637950941352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136530 n - A058922 (n + 1)

end

end A300451.P18411194637950941352

namespace A300451

/-- `A136530(n)-A058922(n+1)` -/
def P18411194637950941352.Spec : Prop :=
  ∀ n, P18411194637950941352.a n = A300451 n

end A300451

/-! ## A300451.P14848126574563221345

`A053730(n)+A001815(n)/2`
-/

namespace A300451.P14848126574563221345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053730 n : ℚ) + (A001815 n : ℚ) / 2

end

end A300451.P14848126574563221345

namespace A300451

/-- `A053730(n)+A001815(n)/2` -/
def P14848126574563221345.Spec : Prop :=
  ∀ n, P14848126574563221345.a n = (A300451 n : ℚ)

end A300451

/-! ## A300451.P14757446786028985946

`(A053730(n)+A052481(n))/2`
-/

namespace A300451.P14757446786028985946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053730 n + A052481 n : ℚ) / 2

end

end A300451.P14757446786028985946

namespace A300451

/-- `(A053730(n)+A052481(n))/2` -/
def P14757446786028985946.Spec : Prop :=
  ∀ n, P14757446786028985946.a n = (A300451 n : ℚ)

end A300451

/-! ## A300451.P6796098737151130898

`A052481(n)-A001815(n)/2`
-/

namespace A300451.P6796098737151130898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052481 n : ℚ) - (A001815 n : ℚ) / 2

end

end A300451.P6796098737151130898

namespace A300451

/-- `A052481(n)-A001815(n)/2` -/
def P6796098737151130898.Spec : Prop :=
  ∀ n, P6796098737151130898.a n = (A300451 n : ℚ)

end A300451

/-! ## A300451.P15886108585796488709

`A001787(n)+A178987(n)+A081908(n)`
-/

namespace A300451.P15886108585796488709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n + (A178987 n + A081908 n)

end

end A300451.P15886108585796488709

namespace A300451

/-- `A001787(n)+A178987(n)+A081908(n)` -/
def P15886108585796488709.Spec : Prop :=
  ∀ n, P15886108585796488709.a n = A300451 n

end A300451

/-! ## A300451.P12609843250301696894

`A001788(n)+A081908(n)-A001787(n)`
-/

namespace A300451.P12609843250301696894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 n + (A081908 n - A001787 n)

end

end A300451.P12609843250301696894

namespace A300451

/-- `A001788(n)+A081908(n)-A001787(n)` -/
def P12609843250301696894.Spec : Prop :=
  ∀ n, P12609843250301696894.a n = A300451 n

end A300451

/-! ## A300451.P3497788063486390615

`A000079(n)+A052481(n)-A081908(n)`
-/

namespace A300451.P3497788063486390615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A052481 n - A081908 n)

end

end A300451.P3497788063486390615

namespace A300451

/-- `A000079(n)+A052481(n)-A081908(n)` -/
def P3497788063486390615.Spec : Prop :=
  ∀ n, P3497788063486390615.a n = A300451 n

end A300451

/-! ## A300451.P1801282955564681220

`A104270(n+1)+A053730(n)-A072863(n)`
-/

namespace A300451.P1801282955564681220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104270 (n + 1) + (A053730 n - A072863 n)

end

end A300451.P1801282955564681220

namespace A300451

/-- `A104270(n+1)+A053730(n)-A072863(n)` -/
def P1801282955564681220.Spec : Prop :=
  ∀ n, P1801282955564681220.a n = A300451 n

end A300451

/-! ## A300451.P12208411358389061892

`A081908(n+1)+A178987(n)-A081908(n)`
-/

namespace A300451.P12208411358389061892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081908 (n + 1) + (A178987 n - A081908 n)

end

end A300451.P12208411358389061892

namespace A300451

/-- `A081908(n+1)+A178987(n)-A081908(n)` -/
def P12208411358389061892.Spec : Prop :=
  ∀ n, P12208411358389061892.a n = A300451 n

end A300451

/-! ## A300451.P16958748084893846811

`A053730(n+1)+A072863(n)-A084264(n+1)`
-/

namespace A300451.P16958748084893846811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053730 (n + 1) + (A072863 n - A084264 (n + 1))

end

end A300451.P16958748084893846811

namespace A300451

/-- `A053730(n+1)+A072863(n)-A084264(n+1)` -/
def P16958748084893846811.Spec : Prop :=
  ∀ n, P16958748084893846811.a n = A300451 n

end A300451

/-! ## A300451.P959567671714441497

`A081908(n+1)+A104270(n+1)-A190050(n+1)`
-/

namespace A300451.P959567671714441497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081908 (n + 1) + (A104270 (n + 1) - A190050 (n + 1))

end

end A300451.P959567671714441497

namespace A300451

/-- `A081908(n+1)+A104270(n+1)-A190050(n+1)` -/
def P959567671714441497.Spec : Prop :=
  ∀ n, P959567671714441497.a n = A300451 n

end A300451

/-!
# A300452: Logarithmic transform of the cubes A000578.

The programs for A300452, there is no canonical definition to state claims against.
-/

/-! ## A300452.P17234441611451194229

`A308484(∑[n+3])`
-/

namespace A300452.P17234441611451194229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308484 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A300452.P17234441611451194229

/-! ## A300452.P13708129198480846102

`A308484(A141214(n))%A155200(n)`
-/

namespace A300452.P13708129198480846102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308484 (A141214 n).toNat) (A155200 n)

end

end A300452.P13708129198480846102

/-!
# A300453: Irregular triangle read by rows: row n consists of the coefficients of the expansion of the polynomial (x + 1)^n + x^2 - 1.

The programs for A300453, there is no canonical definition to state claims against.
-/

/-! ## A300453.P7420875090744001127

`A323587(A047920(n))%A070864(n+1)`
-/

namespace A300453.P7420875090744001127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323587 (A047920 n).toNat) (A070864 (n + 1))

end

end A300453.P7420875090744001127

/-! ## A300453.P16124724458345530961

`(A242200(A195183(3*(n+1)))+A017173(3*n+2))%A194987(2*n+3)`
-/

namespace A300453.P16124724458345530961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242200 (A195183 (3 * (n + 1))).toNat + A017173 (3 * n + 2)) (A194987 (2 * n + 3))

end

end A300453.P16124724458345530961

/-! ## A300453.P13503535805470596766

`A209318(n)*A328615(A000225(n+2))`
-/

namespace A300453.P13503535805470596766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209318 n * A328615 (A000225 (n + 2)).toNat

end

end A300453.P13503535805470596766

/-! ## A300453.P5493144216850354074

`A213911(A194365(n+2)*A349271(2*n+5))`
-/

namespace A300453.P5493144216850354074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (A194365 (n + 2) * A349271 (2 * n + 5)).toNat

end

end A300453.P5493144216850354074

/-! ## A300453.P10344471155745461359

`A126436(Δ[A000879(n+2)])`
-/

namespace A300453.P10344471155745461359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000879 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126436 (f1 (n + 1) - f1 n).toNat

end

end A300453.P10344471155745461359

/-!
# A300454: Irregular triangle read by rows: row n consists of the coefficients of the expansion of the polynomial 2*(x + 1)^(n + 1) + x^3 + 2*x^2 - x - 2.

The programs for A300454, there is no canonical definition to state claims against.
-/

/-! ## A300454.P12420618394370448755

`and(A058798(n)+A002840(2*n+7), A000265(n+1))`
-/

namespace A300454.P12420618394370448755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A058798 n + A002840 (2 * n + 7)) (A000265 (n + 1))

end

end A300454.P12420618394370448755

/-!
# A300456: a(n) = [x^n] Product_{k=1..n} ((1 + x^k)/(1 - x^k))^(n^k).

The programs for A300456, there is no canonical definition to state claims against.
-/

/-! ## A300456.P10777468876408485531

`A000010(A035282(∏[Δ[n²]]))`
-/

namespace A300456.P10777468876408485531
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A035282 (∏ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A300456.P10777468876408485531

/-!
# A300459: Number of n X n 0..1 arrays with every element equal to 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300459, there is no canonical definition to state claims against.
-/

/-! ## A300459.P13129719894791609140

`A300465(∑[4*n]+1)`
-/

namespace A300459.P13129719894791609140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300465 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300459.P13129719894791609140

/-! ## A300459.P5583902701611581501

`record[A203994(n+1)*A300465(n+1)]`
-/

namespace A300459.P5583902701611581501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A300465 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300459.P5583902701611581501

/-! ## A300459.P5427384556092687715

`A057427(n)*A300465(A001844(n))`
-/

namespace A300459.P5427384556092687715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A300465 (A001844 n).toNat

end

end A300459.P5427384556092687715

/-! ## A300459.P14901463833058792482

`A007318(∑[n])*A300465(A001844(n))`
-/

namespace A300459.P14901463833058792482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A300465 (A001844 n).toNat

end

end A300459.P14901463833058792482

/-! ## A300459.P6878527014221086745

`A000040(n+1)%2*A300465(A001844(n))`
-/

namespace A300459.P6878527014221086745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A300465 (A001844 n).toNat

end

end A300459.P6878527014221086745

/-!
# A300460: Number of nX3 0..1 arrays with every element equal to 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300460, there is no canonical definition to state claims against.
-/

/-! ## A300460.P16457530979701098477

`A300465(∑[n+2]+4)`
-/

namespace A300460.P16457530979701098477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300465 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A300460.P16457530979701098477

/-! ## A300460.P1991161522693043668

`A300465(A027379(n)+6)%(5^n)`
-/

namespace A300460.P1991161522693043668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300465 (A027379 n + 6).toNat) (5 ^ n : ℤ)

end

end A300460.P1991161522693043668

/-! ## A300460.P3931503507585891129

`A057427(n)*A300465(A027379(n)+6)`
-/

namespace A300460.P3931503507585891129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A300465 (A027379 n + 6).toNat

end

end A300460.P3931503507585891129

/-! ## A300460.P943329193161488584

`A057427(n)*A300465(A055998(n)+6)`
-/

namespace A300460.P943329193161488584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A300465 (A055998 n + 6).toNat

end

end A300460.P943329193161488584

/-! ## A300460.P2854643123004728784

`A300465(A167614(n+1))%A000351(n)`
-/

namespace A300460.P2854643123004728784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300465 (A167614 (n + 1)).toNat) (A000351 n)

end

end A300460.P2854643123004728784

/-!
# A300461: Number of nX4 0..1 arrays with every element equal to 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300461, there is no canonical definition to state claims against.
-/

/-! ## A300461.P12948305716377404506

`A300465(A374004(n+1))`
-/

namespace A300461.P12948305716377404506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300465 (A374004 (n + 1)).toNat

end

end A300461.P12948305716377404506

/-! ## A300461.P5860158941117191651

`A300465(A052905(n)+9)`
-/

namespace A300461.P5860158941117191651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300465 (A052905 n + 9).toNat

end

end A300461.P5860158941117191651

/-! ## A300461.P9211015581080316818

`A300465(A055999(n)+10)`
-/

namespace A300461.P9211015581080316818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300465 (A055999 n + 10).toNat

end

end A300461.P9211015581080316818

/-! ## A300461.P5022692504864272987

`A300465(A167614(n+2)+1)`
-/

namespace A300461.P5022692504864272987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300465 (A167614 (n + 2) + 1).toNat

end

end A300461.P5022692504864272987

/-! ## A300461.P14988336798558262633

`A300465(A167499(n+2)-1)`
-/

namespace A300461.P14988336798558262633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300465 (A167499 (n + 2) - 1).toNat

end

end A300461.P14988336798558262633

/-!
# A300462: Number of nX5 0..1 arrays with every element equal to 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300462, there is no canonical definition to state claims against.
-/

/-! ## A300462.P3902559768837899086

`A300465(A374005(n+1))`
-/

namespace A300462.P3902559768837899086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300465 (A374005 (n + 1)).toNat

end

end A300462.P3902559768837899086

/-! ## A300462.P11443616987467713442

`A300465(A056000(n)+15)`
-/

namespace A300462.P11443616987467713442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300465 (A056000 n + 15).toNat

end

end A300462.P11443616987467713442

/-! ## A300462.P1007195539146891291

`A300465(A000124(n+4)+4)`
-/

namespace A300462.P1007195539146891291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300465 (A000124 (n + 4) + 4).toNat

end

end A300462.P1007195539146891291

/-! ## A300462.P6480214377467184014

`A300465(A000217(n+4)+5)`
-/

namespace A300462.P6480214377467184014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300465 (A000217 (n + 4) + 5).toNat

end

end A300462.P6480214377467184014

/-! ## A300462.P7566615240084633960

`A300465(A052905(n+1)+10)`
-/

namespace A300462.P7566615240084633960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300465 (A052905 (n + 1) + 10).toNat

end

end A300462.P7566615240084633960

/-!
# A300463: Number of nX6 0..1 arrays with every element equal to 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300463, there is no canonical definition to state claims against.
-/

/-! ## A300463.P358975626381955481

`A300465(A374007(n+1))`
-/

namespace A300463.P358975626381955481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300465 (A374007 (n + 1)).toNat

end

end A300463.P358975626381955481

/-! ## A300463.P1438231454496608230

`A300465(eq[7, A131818(n+1)])`
-/

namespace A300463.P1438231454496608230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300463.P1438231454496608230

/-! ## A300463.P2241155821606196214

`A300465(eq[10, A185782(n+1)]-(2*n+1))`
-/

namespace A300463.P2241155821606196214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - (2 * n + 1))

end

end A300463.P2241155821606196214

/-! ## A300463.P16211394529966272482

`A300465(A052905(n+3))`
-/

namespace A300463.P16211394529966272482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300465 (A052905 (n + 3)).toNat

end

end A300463.P16211394529966272482

/-! ## A300463.P11696563100531014714

`A300465(eq[3, A219347(n)])`
-/

namespace A300463.P11696563100531014714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300463.P11696563100531014714

/-!
# A300464: Number of nX7 0..1 arrays with every element equal to 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300464, there is no canonical definition to state claims against.
-/

/-! ## A300464.P3981897560732798116

`A300465(A374008(n+1))`
-/

namespace A300464.P3981897560732798116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300465 (A374008 (n + 1)).toNat

end

end A300464.P3981897560732798116

/-! ## A300464.P4249046062858420718

`A300465(A000217(n+6)+7)`
-/

namespace A300464.P4249046062858420718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300465 (A000217 (n + 6) + 7).toNat

end

end A300464.P4249046062858420718

/-! ## A300464.P16219241606625661150

`A300465(eq[8, A131818(n+1)])`
-/

namespace A300464.P16219241606625661150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300464.P16219241606625661150

/-! ## A300464.P15991813804610601291

`A300465(eq[4, A219347(n)])`
-/

namespace A300464.P15991813804610601291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300464.P15991813804610601291

/-! ## A300464.P8690990141771066142

`A300465(eq[6, A193592(n)])`
-/

namespace A300464.P8690990141771066142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300464.P8690990141771066142

/-!
# A300465: T(n,k)=Number of nXk 0..1 arrays with every element equal to 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300465, there is no canonical definition to state claims against.
-/

/-! ## A300465.P17564090898324151106

`and(A207916(A146772(n)), A300646(n+1))`
-/

namespace A300465.P17564090898324151106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A207916 (A146772 n).toNat) (A300646 (n + 1))

end

end A300465.P17564090898324151106

/-! ## A300465.P10076672312895427912

`and(A257328(A354789(n)), A300646(n+1))`
-/

namespace A300465.P10076672312895427912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A257328 (A354789 n).toNat) (A300646 (n + 1))

end

end A300465.P10076672312895427912

/-! ## A300465.P15944433235798509960

`and(A073040(A065733(n+1)), A300646(n+1))`
-/

namespace A300465.P15944433235798509960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A073040 (A065733 (n + 1)).toNat) (A300646 (n + 1))

end

end A300465.P15944433235798509960

/-! ## A300465.P1786509872293814494

`and(A029836(A001678(n)), A301400(n+1))`
-/

namespace A300465.P1786509872293814494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029836 (A001678 n).toNat) (A301400 (n + 1))

end

end A300465.P1786509872293814494

/-! ## A300465.P16112063960583274210

`and(A054385(A002385(n+1)), A300646(n+1))`
-/

namespace A300465.P16112063960583274210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054385 (A002385 (n + 1)).toNat) (A300646 (n + 1))

end

end A300465.P16112063960583274210

/-!
# A300466: Number of n X n 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300466, there is no canonical definition to state claims against.
-/

/-! ## A300466.P16731162122685120364

`A300472(∑[4*n]+1)`
-/

namespace A300466.P16731162122685120364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300472 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300466.P16731162122685120364

/-! ## A300466.P10974509433820247975

`record[and(A185917(n+1), A300472(n+1))]`
-/

namespace A300466.P10974509433820247975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185917 (n + 1)) (A300472 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300466.P10974509433820247975

/-! ## A300466.P9649276775551727870

`A300472(A001844(n))+A054900(n)`
-/

namespace A300466.P9649276775551727870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300472 (A001844 n).toNat + A054900 n

end

end A300466.P9649276775551727870

/-! ## A300466.P3011179504619304255

`A300472(A001844(n))+A185284(n)`
-/

namespace A300466.P3011179504619304255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300472 (A001844 n).toNat + A185284 n

end

end A300466.P3011179504619304255

/-! ## A300466.P2169533595696020734

`gcd(A000038(n), A300472(A001844(n)))`
-/

namespace A300466.P2169533595696020734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A300472 (A001844 n).toNat)

end

end A300466.P2169533595696020734

/-!
# A300467: Number of n X 3 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300467, there is no canonical definition to state claims against.
-/

/-! ## A300467.P8300713484298720529

`A300472(∑[n+2]+4)`
-/

namespace A300467.P8300713484298720529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300472 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A300467.P8300713484298720529

/-! ## A300467.P17145457335268866044

`A300472(A167614(n+1))+A025469(n)`
-/

namespace A300467.P17145457335268866044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300472 (A167614 (n + 1)).toNat + A025469 n

end

end A300467.P17145457335268866044

/-! ## A300467.P13730252553398371344

`A300472(A167614(n+1))+A185284(n)`
-/

namespace A300467.P13730252553398371344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300472 (A167614 (n + 1)).toNat + A185284 n

end

end A300467.P13730252553398371344

/-! ## A300467.P10431684799763556484

`lcm(A033999(n), A300472(A167614(n+1)))`
-/

namespace A300467.P10431684799763556484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A300472 (A167614 (n + 1)).toNat)

end

end A300467.P10431684799763556484

/-! ## A300467.P17686309593235029546

`or(A102683(n), A300472(A167614(n+1)))`
-/

namespace A300467.P17686309593235029546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102683 n) (A300472 (A167614 (n + 1)).toNat)

end

end A300467.P17686309593235029546

/-!
# A300468: Number of nX4 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300468, there is no canonical definition to state claims against.
-/

/-! ## A300468.P15123816018191996510

`A300472(A374004(n+1))`
-/

namespace A300468.P15123816018191996510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300472 (A374004 (n + 1)).toNat

end

end A300468.P15123816018191996510

/-! ## A300468.P17288400657583967596

`A300472(A141214(n)+7)`
-/

namespace A300468.P17288400657583967596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300472 (A141214 n + 7).toNat

end

end A300468.P17288400657583967596

/-! ## A300468.P11223941273356000627

`A300472(A052905(n)+9)`
-/

namespace A300468.P11223941273356000627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300472 (A052905 n + 9).toNat

end

end A300468.P11223941273356000627

/-! ## A300468.P16374765027188031687

`A300472(A055999(n)+10)`
-/

namespace A300468.P16374765027188031687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300472 (A055999 n + 10).toNat

end

end A300468.P16374765027188031687

/-! ## A300468.P11718061663825449514

`A300472(A167614(n+2)+1)`
-/

namespace A300468.P11718061663825449514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300472 (A167614 (n + 2) + 1).toNat

end

end A300468.P11718061663825449514

/-!
# A300469: Number of nX5 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300469, there is no canonical definition to state claims against.
-/

/-! ## A300469.P7101713700329896691

`A300472(A374005(n+1))`
-/

namespace A300469.P7101713700329896691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300472 (A374005 (n + 1)).toNat

end

end A300469.P7101713700329896691

/-! ## A300469.P8870363298242516558

`A300472(A167499(n+3))`
-/

namespace A300469.P8870363298242516558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300472 (A167499 (n + 3)).toNat

end

end A300469.P8870363298242516558

/-! ## A300469.P11163924684603922762

`A300472(A155212(n)+13)`
-/

namespace A300469.P11163924684603922762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300472 (A155212 n + 13).toNat

end

end A300469.P11163924684603922762

/-! ## A300469.P18222229456358077145

`A300472(A056000(n)+15)`
-/

namespace A300469.P18222229456358077145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300472 (A056000 n + 15).toNat

end

end A300469.P18222229456358077145

/-! ## A300469.P64885230233676498

`A300472(A000124(n+4)+4)`
-/

namespace A300469.P64885230233676498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300472 (A000124 (n + 4) + 4).toNat

end

end A300469.P64885230233676498

/-!
# A300470: Number of n X 6 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300470, there is no canonical definition to state claims against.
-/

/-! ## A300470.P15511797603623136813

`A300472(A374007(n+1))`
-/

namespace A300470.P15511797603623136813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300472 (A374007 (n + 1)).toNat

end

end A300470.P15511797603623136813

/-! ## A300470.P9731668960728985928

`A300472(eq[7, A131818(n+1)])`
-/

namespace A300470.P9731668960728985928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300472 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300470.P9731668960728985928

/-! ## A300470.P6491050098320508350

`A300472(Δ[A023545(n+1)]+10)`
-/

namespace A300470.P6491050098320508350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300472 (f1 (n + 1) - f1 n + 10).toNat

end

end A300470.P6491050098320508350

/-! ## A300470.P11856648344795915829

`A300472(A052905(n+3))`
-/

namespace A300470.P11856648344795915829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300472 (A052905 (n + 3)).toNat

end

end A300470.P11856648344795915829

/-! ## A300470.P15601087048655958325

`A300472(eq[3, A219347(n)])`
-/

namespace A300470.P15601087048655958325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300472 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300470.P15601087048655958325

/-!
# A300471: Number of n X 7 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300471, there is no canonical definition to state claims against.
-/

/-! ## A300471.P12574914822760311123

`A300472(A374008(n+1))`
-/

namespace A300471.P12574914822760311123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300472 (A374008 (n + 1)).toNat

end

end A300471.P12574914822760311123

/-! ## A300471.P14839035501602665397

`A300472(A056119(n)+28)`
-/

namespace A300471.P14839035501602665397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300472 (A056119 n + 28).toNat

end

end A300471.P14839035501602665397

/-! ## A300471.P5113845387332569366

`A300472(eq[8, A131818(n+1)])`
-/

namespace A300471.P5113845387332569366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300472 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300471.P5113845387332569366

/-! ## A300471.P16998438176615886121

`A300472(eq[4, A219347(n)])`
-/

namespace A300471.P16998438176615886121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300472 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300471.P16998438176615886121

/-! ## A300471.P15460193572489356501

`A300472(eq[6, A193592(n)])`
-/

namespace A300471.P15460193572489356501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300472 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300471.P15460193572489356501

/-!
# A300472: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300472, there is no canonical definition to state claims against.
-/

/-! ## A300472.P4808060786420684943

`A326105(n+1)-A321936(A001263(n+1))²`
-/

namespace A300472.P4808060786420684943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326105 (n + 1) - A321936 (A001263 (n + 1)).toNat ^ 2

end

end A300472.P4808060786420684943

/-! ## A300472.P10358293432465933323

`A326105(n+1)-A014707(A022171(n))`
-/

namespace A300472.P10358293432465933323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326105 (n + 1) - A014707 (A022171 n).toNat

end

end A300472.P10358293432465933323

/-! ## A300472.P9972000707515414135

`A326105(n+1)-A336355(A336351(n+5))`
-/

namespace A300472.P9972000707515414135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326105 (n + 1) - A336355 (A336351 (n + 5)).toNat

end

end A300472.P9972000707515414135

/-! ## A300472.P18204472052000897420

`xor(A326105(n+1), A333487(A008277(n+1)))`
-/

namespace A300472.P18204472052000897420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A326105 (n + 1)) (A333487 (A008277 (n + 1)).toNat)

end

end A300472.P18204472052000897420

/-! ## A300472.P4911465553422023005

`A301450(n+1)-A001222(A334709(n+1)!)`
-/

namespace A300472.P4911465553422023005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301450 (n + 1) - A001222 (Nat.factorial (A334709 (n + 1)).toNat)

end

end A300472.P4911465553422023005

/-!
# A300473: Numbers k with the property that k^2 + 21k + 1 is prime.

The programs for A300473, the canonical program `A300473.P3318194151720719150` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300473 has offset 1).

The definition of A300473 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300473.P3625018070551942965

`eq[1, A001222(n*(n+21)+1)]`
-/

namespace A300473.P3625018070551942965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n * (n + 21) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A300473.P3625018070551942965

namespace A300473

/-- `eq[1, A001222(n*(n+21)+1)]` -/
def P3625018070551942965.Spec : Prop :=
  ∀ n, (P3625018070551942965.a n : ℤ) = A300473 (n + 1)

end A300473

/-! ## A300473.P3318194151720719150

`eq[1, A010051(n*(n+21)+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A300473

/-- `eq[1, A010051(n*(n+21)+1)]` -/
def P3318194151720719150.Spec : Prop :=
  ∀ n, (P3318194151720719150.a n : ℤ) = A300473 (n + 1)

theorem P3318194151720719150.correct : P3318194151720719150.Spec := by
  intro n
  simp only [A300473, Nat.add_sub_cancel]

end A300473

/-! ## A300473.P16222168472327112579

`eq[2, A000005(n*(n+21)+1)]`
-/

namespace A300473.P16222168472327112579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n * (n + 21) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A300473.P16222168472327112579

namespace A300473

/-- `eq[2, A000005(n*(n+21)+1)]` -/
def P16222168472327112579.Spec : Prop :=
  ∀ n, (P16222168472327112579.a n : ℤ) = A300473 (n + 1)

end A300473

/-! ## A300473.P13332678940548136161

`eq[2, A077462(n*(n+21)+1)]`
-/

namespace A300473.P13332678940548136161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (n * (n + 21) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A300473.P13332678940548136161

namespace A300473

/-- `eq[2, A077462(n*(n+21)+1)]` -/
def P13332678940548136161.Spec : Prop :=
  ∀ n, (P13332678940548136161.a n : ℤ) = A300473 (n + 1)

end A300473

/-! ## A300473.P4850564413672330007

`eq[n*(n+21), A000010(n*(n+21)+1)]`
-/

namespace A300473.P4850564413672330007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 21)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n * (n + 21) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A300473.P4850564413672330007

namespace A300473

/-- `eq[n*(n+21), A000010(n*(n+21)+1)]` -/
def P4850564413672330007.Spec : Prop :=
  ∀ n, (P4850564413672330007.a n : ℤ) = A300473 (n + 1)

end A300473

/-! ## A300473.P12677097913806258112

`eq[1, A000005(A132763(n)+1)/2]`
-/

namespace A300473.P12677097913806258112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A132763 n + 1).toNat : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A300473.P12677097913806258112

namespace A300473

/-- `eq[1, A000005(A132763(n)+1)/2]` -/
def P12677097913806258112.Spec : Prop :=
  ∀ n, (P12677097913806258112.a n : ℤ) = A300473 (n + 1)

end A300473

/-! ## A300473.P13045764946755362498

`eq[A000010(A132763(n)+1), A132763(n)]`
-/

namespace A300473.P13045764946755362498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A132763 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132763 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A300473.P13045764946755362498

namespace A300473

/-- `eq[A000010(A132763(n)+1), A132763(n)]` -/
def P13045764946755362498.Spec : Prop :=
  ∀ n, (P13045764946755362498.a n : ℤ) = A300473 (n + 1)

end A300473

/-! ## A300473.P6831675250708649842

`eq[1, A046079(n*(n+21)+1)]`
-/

namespace A300473.P6831675250708649842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (n * (n + 21) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A300473.P6831675250708649842

namespace A300473

/-- `eq[1, A046079(n*(n+21)+1)]` -/
def P6831675250708649842.Spec : Prop :=
  ∀ n, (P6831675250708649842.a n : ℤ) = A300473 (n + 1)

end A300473

/-! ## A300473.P3428433469859018772

`eq[1, A173442(n*(n+21)+1)]`
-/

namespace A300473.P3428433469859018772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173442 (n * (n + 21) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A300473.P3428433469859018772

namespace A300473

/-- `eq[1, A173442(n*(n+21)+1)]` -/
def P3428433469859018772.Spec : Prop :=
  ∀ n, (P3428433469859018772.a n : ℤ) = A300473 (n + 1)

end A300473

/-!
# A300474: Number of partitions of the square resulting from a sequence of n n-sections, each of which divides any part perpendicular to any of the axes.

The programs for A300474, there is no canonical definition to state claims against.
-/

/-! ## A300474.P16303087436995550167

`A022998(A011782(n))*A091144(n)`
-/

namespace A300474.P16303087436995550167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A011782 n).toNat * A091144 n

end

end A300474.P16303087436995550167

/-! ## A300474.P10138583808413260421

`A022998(A011782(n))*A070914(2*n²)`
-/

namespace A300474.P10138583808413260421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A011782 n).toNat * A070914 (2 * n ^ 2)

end

end A300474.P10138583808413260421

/-! ## A300474.P4451113240184483944

`A300613(n)/n^n*A022998(A011782(n))`
-/

namespace A300474.P4451113240184483944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300613 n : ℚ) / (n ^ n : ℚ) * (A022998 (A011782 n).toNat : ℚ)

end

end A300474.P4451113240184483944

/-! ## A300474.P11637052984215801236

`A022998(A011782(n))/A002061(n)*A014062(n)`
-/

namespace A300474.P11637052984215801236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022998 (A011782 n).toNat : ℚ) / (A002061 n : ℚ) * (A014062 n : ℚ)

end

end A300474.P11637052984215801236

/-! ## A300474.P5016626775997489366

`2*A014062(n)/A051890(n)*A022998(A011782(n))`
-/

namespace A300474.P5016626775997489366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A014062 n : ℚ) / (A051890 n : ℚ) * (A022998 (A011782 n).toNat : ℚ)

end

end A300474.P5016626775997489366

/-!
# A300475: a(n) is the least positive k such that the binary representation n appears in front of the binary representation of 1/k (ignoring the radix point and the leading zeros and adding trailing zeros if necessary in case of a terminating expansion).

The programs for A300475, there is no canonical definition to state claims against.
-/

/-! ## A300475.P4158027416887881097

`A000265(A140957(n)*A309734(n+1))`
-/

namespace A300475.P4158027416887881097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A140957 n * A309734 (n + 1)).toNat

end

end A300475.P4158027416887881097

/-! ## A300475.P7191215656681318212

`A000265(lcm(A140957(n), A309734(n+1)))`
-/

namespace A300475.P7191215656681318212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.lcm (A140957 n) (A309734 (n + 1)))

end

end A300475.P7191215656681318212

/-! ## A300475.P10098681728001567410

`A109754(∑[n])+A000265(A309734(n+1))`
-/

namespace A300475.P10098681728001567410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109754 (∑ j ∈ Finset.range (n + 1), f1 j) + A000265 (A309734 (n + 1)).toNat

end

end A300475.P10098681728001567410

/-! ## A300475.P8254267458150532742

`A000265(A309734(n+1))%A050973(A120213(n))`
-/

namespace A300475.P8254267458150532742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000265 (A309734 (n + 1)).toNat) (A050973 (A120213 n).toNat)

end

end A300475.P8254267458150532742

/-! ## A300475.P3355506669307554370

`A007949(A162832(n+1))+A000265(A309734(n+1))`
-/

namespace A300475.P3355506669307554370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A162832 (n + 1)).toNat + A000265 (A309734 (n + 1)).toNat

end

end A300475.P3355506669307554370

/-! ## A300475.P9978360605512950249

`A000034(A000123(n+1))*A000265(A309734(n+1))`
-/

namespace A300475.P9978360605512950249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A000123 (n + 1)).toNat * A000265 (A309734 (n + 1)).toNat

end

end A300475.P9978360605512950249

/-!
# A300476: Numbers the square of which can be written as a sum of four nonzero bi-quadratics.

The programs for A300476, there is no canonical definition to state claims against.
-/

/-! ## A300476.P13138065259472634045

`record[A056926(A003338(n+1))]`
-/

namespace A300476.P13138065259472634045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A003338 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300476.P13138065259472634045

/-! ## A300476.P8184912188380100806

`record[A056926(A047715(n+1))]`
-/

namespace A300476.P8184912188380100806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A047715 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300476.P8184912188380100806

/-! ## A300476.P14636139287007474622

`eq[4, A002377(n^ceil(atan(n)))]`
-/

namespace A300476.P14636139287007474622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A300476.P14636139287007474622

/-! ## A300476.P9716394447822963883

`eq[4, A002377((n+1)²)]+1`
-/

namespace A300476.P9716394447822963883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A300476.P9716394447822963883

/-! ## A300476.P5509162695412757756

`eq[4, A002377(round(sqrt(n^4+1)))]`
-/

namespace A300476.P5509162695412757756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 4 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A300476.P5509162695412757756

/-!
# A300477: Number of positive integers k with 1 < k < n such that n^k + k^n is prime.

The programs for A300477, there is no canonical definition to state claims against.
-/

/-! ## A300477.P10140492116801374695

`A336835(or(A175127(n+2), A175137(n+1)))`
-/

namespace A300477.P10140492116801374695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336835 (Int.lor (A175127 (n + 2)) (A175137 (n + 1))).toNat

end

end A300477.P10140492116801374695

/-! ## A300477.P4091431134864774380

`A341618(or(A175127(n+2), A175137(n+1)))`
-/

namespace A300477.P4091431134864774380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341618 (Int.lor (A175127 (n + 2)) (A175137 (n + 1))).toNat

end

end A300477.P4091431134864774380

/-! ## A300477.P8216523326406210100

`A252464(n+1)%A001285(A072706(n))`
-/

namespace A300477.P8216523326406210100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252464 (n + 1)) (A001285 (A072706 n).toNat)

end

end A300477.P8216523326406210100

/-! ## A300477.P1301973414193771774

`A285625(lcm(A001749(n+1), A008619(n)))`
-/

namespace A300477.P1301973414193771774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285625 (Int.lcm (A001749 (n + 1)) (A008619 n))

end

end A300477.P1301973414193771774

/-! ## A300477.P9202246570477936032

`A222379(A051162(n))%A001285(A072706(n))`
-/

namespace A300477.P9202246570477936032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222379 (A051162 n).toNat) (A001285 (A072706 n).toNat)

end

end A300477.P9202246570477936032

/-!
# A300479: Numbers k such that k is the uphi(k)-th composite number, where uphi is the unitary totient function.

The programs for A300479, there is no canonical definition to state claims against.
-/

/-! ## A300479.P11365861488772953500

`eq[A047994(n+1), A065855(n+1)]+1`
-/

namespace A300479.P11365861488772953500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A300479.P11365861488772953500

/-! ## A300479.P4226308603929262000

`A293754(eq[A047994(n+1), A065855(n+1)])`
-/

namespace A300479.P4226308603929262000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293754 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A300479.P4226308603929262000

/-! ## A300479.P10175513012373773714

`A293754(eq[1-A323410(n+1)+n, A065855(n+1)])`
-/

namespace A300479.P10175513012373773714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A323410 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293754 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A300479.P10175513012373773714

/-!
# A300482: a(n) = 2 * Integral_{t>=0} T_n(t/2) * exp(-t) * dt, n>=0, where T_n(x) is n-th Chebyshev polynomial of first kind.

The programs for A300482, there is no canonical definition to state claims against.
-/

/-! ## A300482.P15069353193153032643

`A300480(∑[n]+n)`
-/

namespace A300482.P15069353193153032643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300480 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A300482.P15069353193153032643

/-! ## A300482.P10504210882650811443

`A300481(∑[n]+n)`
-/

namespace A300482.P10504210882650811443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300481 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A300482.P10504210882650811443

/-! ## A300482.P2801459240043368165

`abs(A300481(A000096(n)))`
-/

namespace A300482.P2801459240043368165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A300481 (A000096 n).toNat|

end

end A300482.P2801459240043368165

/-! ## A300482.P615724854087087071

`abs(A300481(Δ[A005581(n)]))`
-/

namespace A300482.P615724854087087071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A300481 (f1 (n + 1) - f1 n).toNat|

end

end A300482.P615724854087087071

/-! ## A300482.P1048519996188460822

`abs(A300481(record[A061579(n)]))`
-/

namespace A300482.P1048519996188460822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A300481 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A300482.P1048519996188460822

/-!
# A300483: a(n) = 2 * Integral_{t>=0} T_n((t+1)/2) * exp(-t) * dt, n>=0, where T_n(x) is n-th Chebyshev polynomial of first kind.

The programs for A300483, there is no canonical definition to state claims against.
-/

/-! ## A300483.P3054387906058378618

`A300480(∑[n+2]-1)`
-/

namespace A300483.P3054387906058378618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300480 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A300483.P3054387906058378618

/-! ## A300483.P13367203616787820075

`A300480(A034856(n+1))+char[9]`
-/

namespace A300483.P13367203616787820075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300480 (A034856 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300483.P13367203616787820075

/-! ## A300483.P12562343563500306366

`A053632(n)*A300480(A034856(n+1))`
-/

namespace A300483.P12562343563500306366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053632 n * A300480 (A034856 (n + 1)).toNat

end

end A300483.P12562343563500306366

/-! ## A300483.P7521475252066621903

`gcd(A000038(n), A300480(A034856(n+1)))`
-/

namespace A300483.P7521475252066621903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A300480 (A034856 (n + 1)).toNat)

end

end A300483.P7521475252066621903

/-! ## A300483.P3268338139389812685

`lcm(A054977(n), A300480(A034856(n+1)))`
-/

namespace A300483.P3268338139389812685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A300480 (A034856 (n + 1)).toNat)

end

end A300483.P3268338139389812685

/-!
# A300484: a(n) = 2 * Integral_{t>=0} T_n(t/2+1) * exp(-t) * dt, n>=0, where T_n(x) is n-th Chebyshev polynomial of first kind.

The programs for A300484, there is no canonical definition to state claims against.
-/

/-! ## A300484.P16171313604178055180

`A155857(round(sqrt(n²+1))-1)+A155857(n)`
-/

namespace A300484.P16171313604178055180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155857 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - 1).toNat + A155857 n

end

end A300484.P16171313604178055180

/-! ## A300484.P7926871955364296677

`A300480(∑[n+3])`
-/

namespace A300484.P7926871955364296677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300480 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A300484.P7926871955364296677

/-! ## A300484.P3783832664178383306

`A300480(A141214(n))+char[9]`
-/

namespace A300484.P3783832664178383306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300480 (A141214 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300484.P3783832664178383306

/-! ## A300484.P15680599932133455773

`record[A300480(lt[A127672(n), 0])]`
-/

namespace A300484.P15680599932133455773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127672 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300480 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300484.P15680599932133455773

/-! ## A300484.P804115696618833103

`record[A300480(n)/A130534(n+2)]`
-/

namespace A300484.P804115696618833103
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300480 n : ℚ) / (A130534 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300484.P804115696618833103

/-!
# A300485: a(n) = 2 * Integral_{t>=0} T_n((t-1)/2) * exp(-t) * dt, n>=0, where T_n(x) is n-th Chebyshev polynomial of first kind.

The programs for A300485, there is no canonical definition to state claims against.
-/

/-! ## A300485.P7122807712237456113

`A300481(∑[n+2]-1)`
-/

namespace A300485.P7122807712237456113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300481 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A300485.P7122807712237456113

/-! ## A300485.P3804841666114690761

`A007318(∑[n])*A300481(A034856(n+1))`
-/

namespace A300485.P3804841666114690761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A300481 (A034856 (n + 1)).toNat

end

end A300485.P3804841666114690761

/-! ## A300485.P16469708110304610680

`A300481(A034856(n+1))%A000032(n+2)²`
-/

namespace A300485.P16469708110304610680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300481 (A034856 (n + 1)).toNat) (A000032 (n + 2) ^ 2)

end

end A300485.P16469708110304610680

/-! ## A300485.P17318396643931402167

`A300481(A034856(n+1))+A008683(4*(n+2))`
-/

namespace A300485.P17318396643931402167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300481 (A034856 (n + 1)).toNat + A008683 (4 * (n + 2))

end

end A300485.P17318396643931402167

/-! ## A300485.P6349571110274880652

`A001222(A000010(n+1)+1)*A300481(A034856(n+1))`
-/

namespace A300485.P6349571110274880652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000010 (n + 1) + 1).toNat * A300481 (A034856 (n + 1)).toNat

end

end A300485.P6349571110274880652

/-!
# A300486: Number of relatively prime or monic partitions of n.

The programs for A300486, there is no canonical definition to state claims against.
-/

/-! ## A300486.P12245032465902883258

`A057427(n)+A000837(n+1)`
-/

namespace A300486.P12245032465902883258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A000837 (n + 1)

end

end A300486.P12245032465902883258

/-! ## A300486.P7682325008650201949

`A302698(n+1)+A052810(n)`
-/

namespace A300486.P7682325008650201949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302698 (n + 1) + A052810 n

end

end A300486.P7682325008650201949

/-! ## A300486.P7330933242626298303

`A000837(n+1)-A057428(n)`
-/

namespace A300486.P7330933242626298303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (n + 1) - A057428 n

end

end A300486.P7330933242626298303

/-! ## A300486.P4325877366225924929

`A157928(n+1)+A000837(n+1)`
-/

namespace A300486.P4325877366225924929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (n + 1) + A000837 (n + 1)

end

end A300486.P4325877366225924929

/-! ## A300486.P6185718044244906824

`A000837(n+1)+1-A000007(n)`
-/

namespace A300486.P6185718044244906824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (n + 1) + (1 - A000007 n)

end

end A300486.P6185718044244906824

/-! ## A300486.P5251752772698819987

`A000837(n+1)+A057428(2*n)²`
-/

namespace A300486.P5251752772698819987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (n + 1) + A057428 (2 * n) ^ 2

end

end A300486.P5251752772698819987

/-! ## A300486.P14046209728442181050

`A000837(n+1)%∑[A000837(n)]+1`
-/

namespace A300486.P14046209728442181050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000837 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A300486.P14046209728442181050

/-! ## A300486.P12238332582931837498

`A000837(n+1)+1-A036987(2*n)`
-/

namespace A300486.P12238332582931837498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (n + 1) + (1 - A036987 (2 * n))

end

end A300486.P12238332582931837498

/-! ## A300486.P14896097574712028229

`A000837(n+1)+and(1, A049001(n+1))`
-/

namespace A300486.P14896097574712028229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (n + 1) + Int.land 1 (A049001 (n + 1))

end

end A300486.P14896097574712028229

/-! ## A300486.P16588712083410905911

`A000837(n+1)+∑{e}[A006530(2*n+1), #]`
-/

namespace A300486.P16588712083410905911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A300486.P16588712083410905911

/-! ## A300486.P17374917174173431067

`floor(A000837(n+1)+atan(A000837(2*n+1)))`
-/

namespace A300486.P17374917174173431067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000837 (n + 1) : ℝ) + Real.arctan (A000837 (2 * n + 1) : ℝ)⌋

end

end A300486.P17374917174173431067

/-! ## A300486.P16487786020994268015

`2*n+1+A000837(n+1)-A028310(2*n)`
-/

namespace A300486.P16487786020994268015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) + (A000837 (n + 1) - A028310 (2 * n))

end

end A300486.P16487786020994268015

/-! ## A300486.P17562552852408741264

`A279060(A279060(n))+A000837(n+1)`
-/

namespace A300486.P17562552852408741264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279060 (A279060 n).toNat + A000837 (n + 1)

end

end A300486.P17562552852408741264

/-! ## A300486.P3031082976526106329

`A052409(A005117(n+1))+A000837(n+1)`
-/

namespace A300486.P3031082976526106329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A005117 (n + 1)).toNat + A000837 (n + 1)

end

end A300486.P3031082976526106329

/-! ## A300486.P11817455393720254240

`A052409(A052410(n+1))+A000837(n+1)`
-/

namespace A300486.P11817455393720254240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A052410 (n + 1)).toNat + A000837 (n + 1)

end

end A300486.P11817455393720254240

/-! ## A300486.P7862035525293163702

`A018783(A139421(n+1))+A000837(n+1)`
-/

namespace A300486.P7862035525293163702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (A139421 (n + 1)).toNat + A000837 (n + 1)

end

end A300486.P7862035525293163702

/-! ## A300486.P14774544395205939995

`A320001(A008578(n+1))+A000837(n+1)`
-/

namespace A300486.P14774544395205939995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320001 (A008578 (n + 1)).toNat + A000837 (n + 1)

end

end A300486.P14774544395205939995

/-! ## A300486.P14582722267700879779

`A317624(A034444(n+1))+A000837(n+1)`
-/

namespace A300486.P14582722267700879779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317624 (A034444 (n + 1)).toNat + A000837 (n + 1)

end

end A300486.P14582722267700879779

/-! ## A300486.P10190748715951836071

`A289508(A302696(n+1))+A000837(n+1)`
-/

namespace A300486.P10190748715951836071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A302696 (n + 1)).toNat + A000837 (n + 1)

end

end A300486.P10190748715951836071

/-! ## A300486.P7245525009543434186

`A320001(A303809(n+1))+A000837(n+1)`
-/

namespace A300486.P7245525009543434186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320001 (A303809 (n + 1)).toNat + A000837 (n + 1)

end

end A300486.P7245525009543434186

/-!
# A300488: a(n) = n! * [x^n] -exp(n*x)*log(1 - x)/(1 - x).

The programs for A300488, there is no canonical definition to state claims against.
-/

/-! ## A300488.P10137745499168101252

`A001865(n+1)-A134980(A038106(n+1))`
-/

namespace A300488.P10137745499168101252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001865 (n + 1) - A134980 (A038106 (n + 1)).toNat

end

end A300488.P10137745499168101252

/-!
# A300489: a(n) = n! * [x^n] -log(1 - x)/(1 - n*x).

The programs for A300489, there is no canonical definition to state claims against.
-/

/-! ## A300489.P5982542514429624856

`A028391(∑[A209935(n)])`
-/

namespace A300489.P5982542514429624856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209935 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A300489.P5982542514429624856

/-!
# A300490: Expansion of e.g.f. -exp(-x)*log(1 - x)/(1 - x).

The programs for A300490, there is no canonical definition to state claims against.
-/

/-! ## A300490.P15856309339837609030

`abs(1-∑[(1-n)*a(n-1)+1])-(-1)^n-(n*(1-a(n-1))-n)` with `a(0)=0`
-/

namespace A300490.P15856309339837609030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (1 - (n : ℤ)) * f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j| - (-1) ^ n - ((n : ℤ) * (1 - a (n - 1)) - (n : ℤ))

end

end A300490.P15856309339837609030

/-! ## A300490.P14266858434671526837

`A269954(∑[n+1]+2)`
-/

namespace A300490.P14266858434671526837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269954 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A300490.P14266858434671526837

/-! ## A300490.P635722920436178424

`A002741(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A300490.P635722920436178424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A002741 n + (n : ℤ) * a (n - 1)

end

end A300490.P635722920436178424

/-! ## A300490.P894082493897769552

`A381064(n+1)+A381064(n)`
-/

namespace A300490.P894082493897769552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381064 (n + 1) + A381064 n

end

end A300490.P894082493897769552

/-! ## A300490.P5981901554493715694

`n*a(n-1)+A000757(n)-A033999(n)` with `a(0)=0`
-/

namespace A300490.P5981901554493715694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * a (n - 1) + (A000757 n - A033999 n)

end

end A300490.P5981901554493715694

/-! ## A300490.P11954400297841922867

`n*a(n-1)+A000757(n)-A055634(n)%2` with `a(0)=0`
-/

namespace A300490.P11954400297841922867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * a (n - 1) + (A000757 n - Int.tmod (A055634 n) 2)

end

end A300490.P11954400297841922867

/-!
# A300491: Expansion of e.g.f. log(1 - log(1 - x)/(1 - x)).

The programs for A300491, there is no canonical definition to state claims against.
-/

/-! ## A300491.P5031676315164776343

`A140106(A000166(n)+n)+n`
-/

namespace A300491.P5031676315164776343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A000166 n + (n : ℤ)).toNat + (n : ℤ)

end

end A300491.P5031676315164776343

/-! ## A300491.P1537673848374500882

`A004524(∑[∑{e}[n+1, #]+1]+A236438(n)-n!)`
-/

namespace A300491.P1537673848374500882
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A236438 n - (Nat.factorial n : ℤ))).toNat

end

end A300491.P1537673848374500882

/-! ## A300491.P11043847602428785482

`A004524(A004937(n)+A000166(n))`
-/

namespace A300491.P11043847602428785482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A004937 n + A000166 n).toNat

end

end A300491.P11043847602428785482

/-! ## A300491.P9344418107702295394

`A096276(n)+A004526(A000166(n))`
-/

namespace A300491.P9344418107702295394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n + A004526 (A000166 n).toNat

end

end A300491.P9344418107702295394

/-!
# A300492: Number of n X n 0..1 arrays with every element equal to 0, 1, 2 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300492, there is no canonical definition to state claims against.
-/

/-! ## A300492.P9669826880268307295

`A300498(∑[4*n]+1)`
-/

namespace A300492.P9669826880268307295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300498 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300492.P9669826880268307295

/-! ## A300492.P3874531191494291861

`record[A300498(Δ[A235355(n)])]`
-/

namespace A300492.P3874531191494291861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300498 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300492.P3874531191494291861

/-! ## A300492.P16292099362069240740

`A300498(A001844(n))+char[13]`
-/

namespace A300492.P16292099362069240740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300498 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300492.P16292099362069240740

/-! ## A300492.P1758651650161272713

`record[A003982(n)*A300498(n+1)]`
-/

namespace A300492.P1758651650161272713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A300498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300492.P1758651650161272713

/-! ## A300492.P1526082876782061632

`record[gcd(A008482(n), A300498(n+1))]`
-/

namespace A300492.P1526082876782061632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A300498 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300492.P1526082876782061632

/-!
# A300493: Number of nX3 0..1 arrays with every element equal to 0, 1, 2 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300493, there is no canonical definition to state claims against.
-/

/-! ## A300493.P2670281357908208781

`A300498(∑[n+2]+4)`
-/

namespace A300493.P2670281357908208781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300498 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A300493.P2670281357908208781

/-! ## A300493.P9811289187420311957

`A300937(∑[n+2]+4)`
-/

namespace A300493.P9811289187420311957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300937 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A300493.P9811289187420311957

/-! ## A300493.P509144766005129347

`record[A300498(n+4)/A121576(n)]`
-/

namespace A300493.P509144766005129347
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300498 (n + 4) : ℚ) / (A121576 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300493.P509144766005129347

/-! ## A300493.P12730428448894462184

`A300498(A167499(n)+n)+char[22]`
-/

namespace A300493.P12730428448894462184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300498 (A167499 n + (n : ℤ)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300493.P12730428448894462184

/-! ## A300493.P10052175794526105885

`or(char[3], A300937(A000096(n+1)+4))`
-/

namespace A300493.P10052175794526105885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A300937 (A000096 (n + 1) + 4).toNat)

end

end A300493.P10052175794526105885

/-!
# A300494: Number of nX4 0..1 arrays with every element equal to 0, 1, 2 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300494, there is no canonical definition to state claims against.
-/

/-! ## A300494.P12758178729450939357

`A300498(∑[n+3]+7)`
-/

namespace A300494.P12758178729450939357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300498 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A300494.P12758178729450939357

/-! ## A300494.P4717916513484968166

`A300498(A167614(n+2)+1)+char[20]`
-/

namespace A300494.P4717916513484968166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300498 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300494.P4717916513484968166

/-! ## A300494.P12172186275989098578

`or(char[2], A300498(A133263(n+3)+2))`
-/

namespace A300494.P12172186275989098578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A300498 (A133263 (n + 3) + 2).toNat)

end

end A300494.P12172186275989098578

/-! ## A300494.P10145222519883377658

`A007318(C(3, n))*A300498(A133263(n+3)+2)`
-/

namespace A300494.P10145222519883377658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * A300498 (A133263 (n + 3) + 2).toNat

end

end A300494.P10145222519883377658

/-! ## A300494.P5783047082977840107

`A000041(C(2, n+2))*A300498(A133263(n+3)+2)`
-/

namespace A300494.P5783047082977840107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A300498 (A133263 (n + 3) + 2).toNat

end

end A300494.P5783047082977840107

/-!
# A300495: Number of nX5 0..1 arrays with every element equal to 0, 1, 2 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300495, there is no canonical definition to state claims against.
-/

/-! ## A300495.P196351623605587765

`A300498(A374005(n+1))`
-/

namespace A300495.P196351623605587765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300498 (A374005 (n + 1)).toNat

end

end A300495.P196351623605587765

/-! ## A300495.P8835317047816241089

`A300498(A155212(n)+13)`
-/

namespace A300495.P8835317047816241089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300498 (A155212 n + 13).toNat

end

end A300495.P8835317047816241089

/-! ## A300495.P1045901490337677085

`A300498(A056000(n)+15)`
-/

namespace A300495.P1045901490337677085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300498 (A056000 n + 15).toNat

end

end A300495.P1045901490337677085

/-! ## A300495.P14971698358609418292

`A300498(eq[7, A066657(n)])`
-/

namespace A300495.P14971698358609418292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300498 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300495.P14971698358609418292

/-! ## A300495.P10727574513028031176

`A300498(A166136(n+3)-1)`
-/

namespace A300495.P10727574513028031176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300498 (A166136 (n + 3) - 1).toNat

end

end A300495.P10727574513028031176

/-!
# A300496: Number of nX6 0..1 arrays with every element equal to 0, 1, 2 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300496, there is no canonical definition to state claims against.
-/

/-! ## A300496.P17519710411354292226

`A300498(∑[n+5]+16)`
-/

namespace A300496.P17519710411354292226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300498 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A300496.P17519710411354292226

/-! ## A300496.P14346111511182802157

`A300498(A166136(n+4))+char[18]`
-/

namespace A300496.P14346111511182802157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300498 (A166136 (n + 4)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300496.P14346111511182802157

/-! ## A300496.P11141410017894664826

`A007318(C(2, n))*A300498(A166136(n+4))`
-/

namespace A300496.P11141410017894664826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A300498 (A166136 (n + 4)).toNat

end

end A300496.P11141410017894664826

/-! ## A300496.P15420938448788028331

`A000108(C(2, n+2))*A300498(A166136(n+4))`
-/

namespace A300496.P15420938448788028331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A300498 (A166136 (n + 4)).toNat

end

end A300496.P15420938448788028331

/-! ## A300496.P12626813396548144047

`A300498(A166136(n+4))/A007318(C(n+1, 2))`
-/

namespace A300496.P12626813396548144047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300498 (A166136 (n + 4)).toNat : ℚ) / (A007318 (Nat.choose (n + 1) 2) : ℚ)

end

end A300496.P12626813396548144047

/-!
# A300497: Number of nX7 0..1 arrays with every element equal to 0, 1, 2 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300497, there is no canonical definition to state claims against.
-/

/-! ## A300497.P16947924722343787457

`A300498(A374008(n+1))`
-/

namespace A300497.P16947924722343787457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300498 (A374008 (n + 1)).toNat

end

end A300497.P16947924722343787457

/-! ## A300497.P2809610933714400403

`A300498(A056119(n)+28)`
-/

namespace A300497.P2809610933714400403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300498 (A056119 n + 28).toNat

end

end A300497.P2809610933714400403

/-! ## A300497.P16109821467079825218

`A300498(eq[11, A066657(n)])`
-/

namespace A300497.P16109821467079825218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300498 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300497.P16109821467079825218

/-! ## A300497.P6848595353186657319

`A300498(A166136(n+5)+1)`
-/

namespace A300497.P6848595353186657319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300498 (A166136 (n + 5) + 1).toNat

end

end A300497.P6848595353186657319

/-! ## A300497.P11319547841631821519

`A300498(A000124(n+6)+6)`
-/

namespace A300497.P11319547841631821519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300498 (A000124 (n + 6) + 6).toNat

end

end A300497.P11319547841631821519

/-!
# A300498: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300498, there is no canonical definition to state claims against.
-/

/-! ## A300498.P4799310274851896159

`A300937(n+1)%A075935(n)`
-/

namespace A300498.P4799310274851896159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300937 (n + 1)) (A075935 n)

end

end A300498.P4799310274851896159

/-! ## A300498.P18391253594012124421

`A300937(∑[A053878(n+2)!])`
-/

namespace A300498.P18391253594012124421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A053878 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300937 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A300498.P18391253594012124421

/-! ## A300498.P18211588524871913048

`A300937(∑[A053878(n+2)^3])`
-/

namespace A300498.P18211588524871913048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053878 (n + 2) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300937 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A300498.P18211588524871913048

/-! ## A300498.P8682405364048098827

`A300937(∑[A053878(n+2)²²])`
-/

namespace A300498.P8682405364048098827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053878 (n + 2) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300937 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A300498.P8682405364048098827

/-! ## A300498.P11099271328749827989

`A300937((n+1)^A053878(n+2))`
-/

namespace A300498.P11099271328749827989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300937 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A053878 (n + 2) : ℤ))).toNat

end

end A300498.P11099271328749827989

/-!
# A300499: Number of n X n 0..1 arrays with every element equal to 0, 1, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300499, there is no canonical definition to state claims against.
-/

/-! ## A300499.P6053950206220906645

`A300506(∑[4*n]+1)`
-/

namespace A300499.P6053950206220906645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300506 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300499.P6053950206220906645

/-! ## A300499.P13919531387184853733

`record[A300506(Δ[A235355(n)])]`
-/

namespace A300499.P13919531387184853733
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300506 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300499.P13919531387184853733

/-! ## A300499.P17424831371282637925

`record[A300506(A330613(n+1))]`
-/

namespace A300499.P17424831371282637925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300506 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300499.P17424831371282637925

/-! ## A300499.P16671188897688132774

`A300506(A001844(n))+char[12]`
-/

namespace A300499.P16671188897688132774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300506 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300499.P16671188897688132774

/-! ## A300499.P7796716374310263029

`record[A003982(n)*A300506(n+1)]`
-/

namespace A300499.P7796716374310263029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A300506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300499.P7796716374310263029

