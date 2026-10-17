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
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
import Seq.Opaque.C026

/-!
# A269902: T(n,k)=Number of nXk 0..6 arrays with some element plus some horizontally or vertically adjacent neighbor totalling six exactly once.

The programs for A269902, there is no canonical definition to state claims against.
-/

/-! ## A269902.P6884691961329957565

`7*A123895(A024271(n))`
-/

namespace A269902.P6884691961329957565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A123895 (A024271 n).toNat

end

end A269902.P6884691961329957565

/-!
# A269903: Integers n such that A002110(n) / 2 is the sum of 4 but no fewer nonzero squares.

The programs for A269903, the canonical program `A269903.P4765007722614101742` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269903 has offset 1).

The definition of A269903 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2509 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269903.P4765007722614101742

`eq[4, and(6, A126084(n))]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A269903

/-- `eq[4, and(6, A126084(n))]` -/
def P4765007722614101742.Spec : Prop :=
  ∀ n, (P4765007722614101742.a n : ℤ) = A269903 (n + 1)

theorem P4765007722614101742.correct : P4765007722614101742.Spec := by
  intro n
  simp only [A269903, Nat.add_sub_cancel]

end A269903

/-! ## A269903.P12245115191248792814

`eq[14, A002110(n)%16]`
-/

namespace A269903.P12245115191248792814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002110 n) 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269903.P12245115191248792814

namespace A269903

/-- `eq[14, A002110(n)%16]` -/
def P12245115191248792814.Spec : Prop :=
  ∀ n, (P12245115191248792814.a n : ℤ) = A269903 (n + 1)

end A269903

/-! ## A269903.P3097953348662651368

`eq[12, and(12, A006862(n))]`
-/

namespace A269903.P3097953348662651368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 12 (A006862 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269903.P3097953348662651368

namespace A269903

/-- `eq[12, and(12, A006862(n))]` -/
def P3097953348662651368.Spec : Prop :=
  ∀ n, (P3097953348662651368.a n : ℤ) = A269903 (n + 1)

end A269903

/-!
# A269906: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 1", based on the 5-celled von Neumann neighborhood.

The programs for A269906, the canonical program `A269906.P6903779190407349025` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269906 has offset 0).

The definition of A269906 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A269906.P6903779190407349025

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=1, a(1)=4, a(2)=1, a(3)=44, a(4)=1, a(5)=116`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A269906

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P6903779190407349025.Spec : Prop :=
  ∀ n, P6903779190407349025.a n = A269906 n

theorem P6903779190407349025.correct : P6903779190407349025.Spec := by
  intro n
  simp only [A269906]

end A269906

/-! ## A269906.P8651564530065697614

`(∑[8*n]-4)^and(1, n)`
-/

namespace A269906.P8651564530065697614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 4) ^ Nat.land 1 n

end

end A269906.P8651564530065697614

namespace A269906

/-- `(∑[8*n]-4)^and(1, n)` -/
def P8651564530065697614.Spec : Prop :=
  ∀ n, P8651564530065697614.a n = A269906 n

end A269906

/-! ## A269906.P1211067982380192119

`gcd(5-Δ[n²]², and(1, n+1))`
-/

namespace A269906.P1211067982380192119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (5 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) (Nat.land 1 (n + 1) : ℤ)

end

end A269906.P1211067982380192119

namespace A269906

/-- `gcd(5-Δ[n²]², and(1, n+1))` -/
def P1211067982380192119.Spec : Prop :=
  ∀ n, (P1211067982380192119.a n : ℤ) = A269906 n

end A269906

/-! ## A269906.P11478893409739190865

`gcd(5-(2*n+1)², (n+1)%2)`
-/

namespace A269906.P11478893409739190865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (5 - ((2 * n + 1) ^ 2 : ℤ)) (((n + 1) % 2 : ℕ) : ℤ)

end

end A269906.P11478893409739190865

namespace A269906

/-- `gcd(5-(2*n+1)², (n+1)%2)` -/
def P11478893409739190865.Spec : Prop :=
  ∀ n, (P11478893409739190865.a n : ℤ) = A269906 n

end A269906

/-! ## A269906.P5825962405662241358

`A269910(n)-n%2`
-/

namespace A269906.P5825962405662241358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269910 n - ((n % 2 : ℕ) : ℤ)

end

end A269906.P5825962405662241358

namespace A269906

/-- `A269910(n)-n%2` -/
def P5825962405662241358.Spec : Prop :=
  ∀ n, P5825962405662241358.a n = A269906 n

end A269906

/-! ## A269906.P17624896612974562103

`abs(3-A272007(n))-1`
-/

namespace A269906.P17624896612974562103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A272007 n| - 1

end

end A269906.P17624896612974562103

namespace A269906

/-- `abs(3-A272007(n))-1` -/
def P17624896612974562103.Spec : Prop :=
  ∀ n, P17624896612974562103.a n = A269906 n

end A269906

/-! ## A269906.P3571115305496558325

`A269910(n)-A000035(n)`
-/

namespace A269906.P3571115305496558325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269910 n - A000035 n

end

end A269906.P3571115305496558325

namespace A269906

/-- `A269910(n)-A000035(n)` -/
def P3571115305496558325.Spec : Prop :=
  ∀ n, P3571115305496558325.a n = A269906 n

end A269906

/-! ## A269906.P2846569167076133237

`A269910(n)-char[A109613(n)]`
-/

namespace A269906.P2846569167076133237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269910 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A269906.P2846569167076133237

namespace A269906

/-- `A269910(n)-char[A109613(n)]` -/
def P2846569167076133237.Spec : Prop :=
  ∀ n, P2846569167076133237.a n = A269906 n

end A269906

/-! ## A269906.P14157271239699106283

`and(A168330(n+1), A269910(n))`
-/

namespace A269906.P14157271239699106283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A168330 (n + 1)) (A269910 n)

end

end A269906.P14157271239699106283

namespace A269906

/-- `and(A168330(n+1), A269910(n))` -/
def P14157271239699106283.Spec : Prop :=
  ∀ n, P14157271239699106283.a n = A269906 n

end A269906

/-! ## A269906.P7882350737338030437

`and(A269910(n), A327767(n+1))`
-/

namespace A269906.P7882350737338030437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A269910 n) (A327767 (n + 1))

end

end A269906.P7882350737338030437

namespace A269906

/-- `and(A269910(n), A327767(n+1))` -/
def P7882350737338030437.Spec : Prop :=
  ∀ n, P7882350737338030437.a n = A269906 n

end A269906

/-! ## A269906.P17119582128373148693

`xor(A000035(A267354(n)), A269910(n))`
-/

namespace A269906.P17119582128373148693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 (A267354 n).toNat) (A269910 n)

end

end A269906.P17119582128373148693

namespace A269906

/-- `xor(A000035(A267354(n)), A269910(n))` -/
def P17119582128373148693.Spec : Prop :=
  ∀ n, P17119582128373148693.a n = A269906 n

end A269906

/-! ## A269906.P8817926494927739997

`xor(A000035(A266256(n+4)), A269910(n))`
-/

namespace A269906.P8817926494927739997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 (A266256 (n + 4)).toNat) (A269910 n)

end

end A269906.P8817926494927739997

namespace A269906

/-- `xor(A000035(A266256(n+4)), A269910(n))` -/
def P8817926494927739997.Spec : Prop :=
  ∀ n, P8817926494927739997.a n = A269906 n

end A269906

/-! ## A269906.P8996908623637597555

`A271060(n)-A010675(n)`
-/

namespace A269906.P8996908623637597555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271060 n - A010675 n

end

end A269906.P8996908623637597555

namespace A269906

/-- `A271060(n)-A010675(n)` -/
def P8996908623637597555.Spec : Prop :=
  ∀ n, P8996908623637597555.a n = A269906 n

end A269906

/-! ## A269906.P4004967806848046397

`A269909(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A269906.P4004967806848046397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269909 (n - 1) + a (n - 1)

end

end A269906.P4004967806848046397

namespace A269906

/-- `A269909(n-1)+a(n-1)` -/
def P4004967806848046397.Spec : Prop :=
  ∀ n, P4004967806848046397.a n = A269906 n

end A269906

/-! ## A269906.P13128573052263341442

`Δ[A269908(n)]-A269909(n)`
-/

namespace A269906.P13128573052263341442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A269909 n

end

end A269906.P13128573052263341442

namespace A269906

/-- `Δ[A269908(n)]-A269909(n)` -/
def P13128573052263341442.Spec : Prop :=
  ∀ n, P13128573052263341442.a n = A269906 n

end A269906

/-! ## A269906.P15776425982464503082

`A269908(n+1)-(A269909(n)+A269908(n))`
-/

namespace A269906.P15776425982464503082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269908 (n + 1) - (A269909 n + A269908 n)

end

end A269906.P15776425982464503082

namespace A269906

/-- `A269908(n+1)-(A269909(n)+A269908(n))` -/
def P15776425982464503082.Spec : Prop :=
  ∀ n, P15776425982464503082.a n = A269906 n

end A269906

/-! ## A269906.P14513113198965066890

`gcd(A056594(n), A269913(n))`
-/

namespace A269906.P14513113198965066890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056594 n) (A269913 n)

end

end A269906.P14513113198965066890

namespace A269906

/-- `gcd(A056594(n), A269913(n))` -/
def P14513113198965066890.Spec : Prop :=
  ∀ n, (P14513113198965066890.a n : ℤ) = A269906 n

end A269906

/-! ## A269906.P18088392256897801877

`and(A168330(n+1), A265056(n))`
-/

namespace A269906.P18088392256897801877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A168330 (n + 1)) (A265056 n)

end

end A269906.P18088392256897801877

namespace A269906

/-- `and(A168330(n+1), A265056(n))` -/
def P18088392256897801877.Spec : Prop :=
  ∀ n, P18088392256897801877.a n = A269906 n

end A269906

/-! ## A269906.P18025220528113687281

`and(A265056(n), A327767(n+1))`
-/

namespace A269906.P18025220528113687281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A265056 n) (A327767 (n + 1))

end

end A269906.P18025220528113687281

namespace A269906

/-- `and(A265056(n), A327767(n+1))` -/
def P18025220528113687281.Spec : Prop :=
  ∀ n, P18025220528113687281.a n = A269906 n

end A269906

/-! ## A269906.P5056435092612086232

`A265056(n*A000035(n))-A000035(n)`
-/

namespace A269906.P5056435092612086232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265056 ((n : ℤ) * A000035 n).toNat - A000035 n

end

end A269906.P5056435092612086232

namespace A269906

/-- `A265056(n*A000035(n))-A000035(n)` -/
def P5056435092612086232.Spec : Prop :=
  ∀ n, P5056435092612086232.a n = A269906 n

end A269906

/-!
# A269907: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 1", based on the 5-celled von Neumann neighborhood.

The programs for A269907, the canonical program `A269907.P12577551976673132196` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269907 has offset 0).

The definition of A269907 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A269907.P12577551976673132196

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=4, a(2)=44, a(3)=220`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A269907

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P12577551976673132196.Spec : Prop :=
  ∀ n, P12577551976673132196.a n = A269907 n

theorem P12577551976673132196.correct : P12577551976673132196.Spec := by
  intro n
  simp only [A269907]

end A269907

/-! ## A269907.P12380457780295308732

`lcm(4, a(n-1)+or(3, 2^n))` with `a(0)=1`
-/

namespace A269907.P12380457780295308732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 4 (a (n - 1) + Nat.lor 3 (2 ^ n))

end

end A269907.P12380457780295308732

namespace A269907

/-- `lcm(4, a(n-1)+or(3, 2^n))` -/
def P12380457780295308732.Spec : Prop :=
  ∀ n, (P12380457780295308732.a n : ℤ) = A269907 n

end A269907

/-! ## A269907.P10843437625456389174

`4*or(a(n-1)+7, a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A269907.P10843437625456389174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 * Nat.lor (a (n - 1) + 7) (a (n - 2))

end

end A269907.P10843437625456389174

namespace A269907

/-- `4*or(a(n-1)+7, a(n-2))` -/
def P10843437625456389174.Spec : Prop :=
  ∀ n, (P10843437625456389174.a n : ℤ) = A269907 n

end A269907

/-! ## A269907.P11771029311617996889

`or(2^(n+2)-4, ∑[ceil(atan(n))^n]²)`
-/

namespace A269907.P11771029311617996889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n : ℝ)⌉ ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((2 ^ (n + 2) : ℤ) - 4) ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A269907.P11771029311617996889

namespace A269907

/-- `or(2^(n+2)-4, ∑[ceil(atan(n))^n]²)` -/
def P11771029311617996889.Spec : Prop :=
  ∀ n, P11771029311617996889.a n = A269907 n

end A269907

/-! ## A269907.P2849652240467516645

`A165665(n)+a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A269907.P2849652240467516645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A165665 n + a (n - 1)

end

end A269907.P2849652240467516645

namespace A269907

/-- `A165665(n)+a(n-1)` -/
def P2849652240467516645.Spec : Prop :=
  ∀ n, P2849652240467516645.a n = A269907 n

end A269907

/-! ## A269907.P3009888818118658526

`A269911(n)+A057428(n)`
-/

namespace A269907.P3009888818118658526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269911 n + A057428 n

end

end A269907.P3009888818118658526

namespace A269907

/-- `A269911(n)+A057428(n)` -/
def P3009888818118658526.Spec : Prop :=
  ∀ n, P3009888818118658526.a n = A269907 n

end A269907

/-! ## A269907.P789716489371476636

`A269911(n)-A057427(n)`
-/

namespace A269907.P789716489371476636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269911 n - A057427 n

end

end A269907.P789716489371476636

namespace A269907

/-- `A269911(n)-A057427(n)` -/
def P789716489371476636.Spec : Prop :=
  ∀ n, P789716489371476636.a n = A269907 n

end A269907

/-! ## A269907.P16850561373328719244

`A273832(n)-A157928(n)`
-/

namespace A269907.P16850561373328719244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273832 n - A157928 n

end

end A269907.P16850561373328719244

namespace A269907

/-- `A273832(n)-A157928(n)` -/
def P16850561373328719244.Spec : Prop :=
  ∀ n, P16850561373328719244.a n = A269907 n

end A269907

/-! ## A269907.P12342599081592643309

`A270935(n)/A373565(n)`
-/

namespace A269907.P12342599081592643309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270935 n : ℚ) / (A373565 n : ℚ)

end

end A269907.P12342599081592643309

namespace A269907

/-- `A270935(n)/A373565(n)` -/
def P12342599081592643309.Spec : Prop :=
  ∀ n, P12342599081592643309.a n = (A269907 n : ℚ)

end A269907

/-! ## A269907.P960498266525898518

`lcm(A123932(n), A156589(n))`
-/

namespace A269907.P960498266525898518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A123932 n) (A156589 n)

end

end A269907.P960498266525898518

namespace A269907

/-- `lcm(A123932(n), A156589(n))` -/
def P960498266525898518.Spec : Prop :=
  ∀ n, (P960498266525898518.a n : ℤ) = A269907 n

end A269907

/-! ## A269907.P9663999864027154023

`A273310(n)+4*A157928(n)`
-/

namespace A269907.P9663999864027154023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273310 n + 4 * A157928 n

end

end A269907.P9663999864027154023

namespace A269907

/-- `A273310(n)+4*A157928(n)` -/
def P9663999864027154023.Spec : Prop :=
  ∀ n, P9663999864027154023.a n = A269907 n

end A269907

/-! ## A269907.P12894977941836392977

`A271061(n)-4*A057427(n)`
-/

namespace A269907.P12894977941836392977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271061 n - 4 * A057427 n

end

end A269907.P12894977941836392977

namespace A269907

/-- `A271061(n)-4*A057427(n)` -/
def P12894977941836392977.Spec : Prop :=
  ∀ n, P12894977941836392977.a n = A269907 n

end A269907

/-! ## A269907.P3114796628115531141

`A270935(n)/A000041(C(2, n))`
-/

namespace A269907.P3114796628115531141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270935 n : ℚ) / (A000041 (Nat.choose 2 n) : ℚ)

end

end A269907.P3114796628115531141

namespace A269907

/-- `A270935(n)/A000041(C(2, n))` -/
def P3114796628115531141.Spec : Prop :=
  ∀ n, P3114796628115531141.a n = (A269907 n : ℚ)

end A269907

/-! ## A269907.P4195760505139288939

`or(A095121(n)², A028399(n+2))`
-/

namespace A269907.P4195760505139288939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A095121 n ^ 2) (A028399 (n + 2))

end

end A269907.P4195760505139288939

namespace A269907

/-- `or(A095121(n)², A028399(n+2))` -/
def P4195760505139288939.Spec : Prop :=
  ∀ n, P4195760505139288939.a n = A269907 n

end A269907

/-! ## A269907.P15426716784878828362

`or((2-A000007(n))², A273310(n))`
-/

namespace A269907.P15426716784878828362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((2 - A000007 n) ^ 2) (A273310 n)

end

end A269907.P15426716784878828362

namespace A269907

/-- `or((2-A000007(n))², A273310(n))` -/
def P15426716784878828362.Spec : Prop :=
  ∀ n, P15426716784878828362.a n = A269907 n

end A269907

/-! ## A269907.P7243078758264067100

`A060867(n+1)-5*A057427(n)`
-/

namespace A269907.P7243078758264067100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060867 (n + 1) - 5 * A057427 n

end

end A269907.P7243078758264067100

namespace A269907

/-- `A060867(n+1)-5*A057427(n)` -/
def P7243078758264067100.Spec : Prop :=
  ∀ n, P7243078758264067100.a n = A269907 n

end A269907

/-! ## A269907.P1915580712529484694

`A269911(n)-and(1, A069051(n+1))`
-/

namespace A269907.P1915580712529484694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269911 n - Int.land 1 (A069051 (n + 1))

end

end A269907.P1915580712529484694

namespace A269907

/-- `A269911(n)-and(1, A069051(n+1))` -/
def P1915580712529484694.Spec : Prop :=
  ∀ n, P1915580712529484694.a n = A269907 n

end A269907

/-! ## A269907.P11822833225565628122

`xor(A178334(A178334(n)²), A269911(n))`
-/

namespace A269907.P11822833225565628122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A178334 (A178334 n ^ 2).toNat) (A269911 n)

end

end A269907.P11822833225565628122

namespace A269907

/-- `xor(A178334(A178334(n)²), A269911(n))` -/
def P11822833225565628122.Spec : Prop :=
  ∀ n, P11822833225565628122.a n = A269907 n

end A269907

/-! ## A269907.P8851681929313857652

`A273310(n)+A273405(n)-A273309(n)`
-/

namespace A269907.P8851681929313857652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273310 n + (A273405 n - A273309 n)

end

end A269907.P8851681929313857652

namespace A269907

/-- `A273310(n)+A273405(n)-A273309(n)` -/
def P8851681929313857652.Spec : Prop :=
  ∀ n, P8851681929313857652.a n = A269907 n

end A269907

/-! ## A269907.P5258347188055844811

`A095121(n)²+A154251(n)-A094373(n)`
-/

namespace A269907.P5258347188055844811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n ^ 2 + (A154251 n - A094373 n)

end

end A269907.P5258347188055844811

namespace A269907

/-- `A095121(n)²+A154251(n)-A094373(n)` -/
def P5258347188055844811.Spec : Prop :=
  ∀ n, P5258347188055844811.a n = A269907 n

end A269907

/-!
# A269908: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 1", based on the 5-celled von Neumann neighborhood.

The programs for A269908, the canonical program `A269908.P7339070416601374082` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269908 has offset 0).

The definition of A269908 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3428 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269908.P12428412974926561257

`∑[(∑[8*n]-4)^and(1, n)]`
-/

namespace A269908.P12428412974926561257
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 4) ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269908.P12428412974926561257

namespace A269908

/-- `∑[(∑[8*n]-4)^and(1, n)]` -/
def P12428412974926561257.Spec : Prop :=
  ∀ n, P12428412974926561257.a n = A269908 n

end A269908

/-! ## A269908.P7339070416601374082

`∑[gcd(5-Δ[n²]², and(1, n+1))]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A269908

/-- `∑[gcd(5-Δ[n²]², and(1, n+1))]` -/
def P7339070416601374082.Spec : Prop :=
  ∀ n, (P7339070416601374082.a n : ℤ) = A269908 n

theorem P7339070416601374082.correct : P7339070416601374082.Spec := by
  intro n
  simp only [A269908]

end A269908

/-! ## A269908.P17495730063215624438

`a(n-1)+((2*n+1)²-5)^and(1, n)` with `a(0)=1`
-/

namespace A269908.P17495730063215624438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (((2 * n + 1) ^ 2 : ℤ) - 5) ^ Nat.land 1 n

end

end A269908.P17495730063215624438

namespace A269908

/-- `a(n-1)+((2*n+1)²-5)^and(1, n)` -/
def P17495730063215624438.Spec : Prop :=
  ∀ n, P17495730063215624438.a n = A269908 n

end A269908

/-! ## A269908.P16023877461411984504

`∑[A269910(n)-and(1, n)]`
-/

namespace A269908.P16023877461411984504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269910 n - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269908.P16023877461411984504

namespace A269908

/-- `∑[A269910(n)-and(1, n)]` -/
def P16023877461411984504.Spec : Prop :=
  ∀ n, P16023877461411984504.a n = A269908 n

end A269908

/-! ## A269908.P10400884205930782780

`∑[A269910(n)-A000035(n)]`
-/

namespace A269908.P10400884205930782780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269910 n - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269908.P10400884205930782780

namespace A269908

/-- `∑[A269910(n)-A000035(n)]` -/
def P10400884205930782780.Spec : Prop :=
  ∀ n, P10400884205930782780.a n = A269908 n

end A269908

/-! ## A269908.P18051319186292050810

`∑[A272007(n)-4]+4`
-/

namespace A269908.P18051319186292050810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272007 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A269908.P18051319186292050810

namespace A269908

/-- `∑[A272007(n)-4]+4` -/
def P18051319186292050810.Spec : Prop :=
  ∀ n, P18051319186292050810.a n = A269908 n

end A269908

/-! ## A269908.P17427175937803090786

`∑[A269906(n)]`
-/

namespace A269908.P17427175937803090786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269908.P17427175937803090786

namespace A269908

/-- `∑[A269906(n)]` -/
def P17427175937803090786.Spec : Prop :=
  ∀ n, P17427175937803090786.a n = A269908 n

end A269908

/-! ## A269908.P11012152676619286554

`A272009(n)-4*n`
-/

namespace A269908.P11012152676619286554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272009 n - (4 * n : ℤ)

end

end A269908.P11012152676619286554

namespace A269908

/-- `A272009(n)-4*n` -/
def P11012152676619286554.Spec : Prop :=
  ∀ n, P11012152676619286554.a n = A269908 n

end A269908

/-! ## A269908.P4237305270892104078

`A271062(n)-A168273(n+1)`
-/

namespace A269908.P4237305270892104078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271062 n - A168273 (n + 1)

end

end A269908.P4237305270892104078

namespace A269908

/-- `A271062(n)-A168273(n+1)` -/
def P4237305270892104078.Spec : Prop :=
  ∀ n, P4237305270892104078.a n = A269908 n

end A269908

/-! ## A269908.P7921061548671363001

`A269912(n)-A110654(n)`
-/

namespace A269908.P7921061548671363001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269912 n - A110654 n

end

end A269908.P7921061548671363001

namespace A269908

/-- `A269912(n)-A110654(n)` -/
def P7921061548671363001.Spec : Prop :=
  ∀ n, P7921061548671363001.a n = A269908 n

end A269908

/-! ## A269908.P18276911571299537888

`∑[A088440(A273405(n))]`
-/

namespace A269908.P18276911571299537888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088440 (A273405 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269908.P18276911571299537888

namespace A269908

/-- `∑[A088440(A273405(n))]` -/
def P18276911571299537888.Spec : Prop :=
  ∀ n, P18276911571299537888.a n = A269908 n

end A269908

/-!
# A269909: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 1", based on the 5-celled von Neumann neighborhood.

The programs for A269909, the canonical program `A269909.P10602987874060615478` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269909 has offset 0).

The definition of A269909 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269909.P18242633921279956067

`Δ[((2*n+1)²-5)^and(1, n)]`
-/

namespace A269909.P18242633921279956067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1) ^ 2 : ℤ) - 5) ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269909.P18242633921279956067

namespace A269909

/-- `Δ[((2*n+1)²-5)^and(1, n)]` -/
def P18242633921279956067.Spec : Prop :=
  ∀ n, P18242633921279956067.a n = A269909 n

end A269909

/-! ## A269909.P10602987874060615478

`Δ[gcd(5-Δ[n²]², and(1, n+1))]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A269909

/-- `Δ[gcd(5-Δ[n²]², and(1, n+1))]` -/
def P10602987874060615478.Spec : Prop :=
  ∀ n, P10602987874060615478.a n = A269909 n

theorem P10602987874060615478.correct : P10602987874060615478.Spec := by
  intro n
  simp only [A269909]

end A269909

/-! ## A269909.P5958987260618180693

`xor(4, Δ[((2*n+1)²-2)*and(1, n)])`
-/

namespace A269909.P5958987260618180693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1) ^ 2 : ℤ) - 2) * (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (f1 (n + 1) - f1 n)

end

end A269909.P5958987260618180693

namespace A269909

/-- `xor(4, Δ[((2*n+1)²-2)*and(1, n)])` -/
def P5958987260618180693.Spec : Prop :=
  ∀ n, P5958987260618180693.a n = A269909 n

end A269909

/-! ## A269909.P4714421986951253944

`Δ[A269906(n)]`
-/

namespace A269909.P4714421986951253944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269909.P4714421986951253944

namespace A269909

/-- `Δ[A269906(n)]` -/
def P4714421986951253944.Spec : Prop :=
  ∀ n, P4714421986951253944.a n = A269909 n

end A269909

/-! ## A269909.P12220168415422637718

`xor(4, A271064(n))`
-/

namespace A269909.P12220168415422637718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (A271064 n)

end

end A269909.P12220168415422637718

namespace A269909

/-- `xor(4, A271064(n))` -/
def P12220168415422637718.Spec : Prop :=
  ∀ n, P12220168415422637718.a n = A269909 n

end A269909

/-! ## A269909.P16590203760698253379

`xor(4, Δ[A271060(n)])`
-/

namespace A269909.P16590203760698253379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (f1 (n + 1) - f1 n)

end

end A269909.P16590203760698253379

namespace A269909

/-- `xor(4, Δ[A271060(n)])` -/
def P16590203760698253379.Spec : Prop :=
  ∀ n, P16590203760698253379.a n = A269909 n

end A269909

/-! ## A269909.P6839051702274090866

`Δ[A269910(n)+gcd(2, n)]`
-/

namespace A269909.P6839051702274090866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269910 n + (Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269909.P6839051702274090866

namespace A269909

/-- `Δ[A269910(n)+gcd(2, n)]` -/
def P6839051702274090866.Spec : Prop :=
  ∀ n, P6839051702274090866.a n = A269909 n

end A269909

/-! ## A269909.P14335025521478205841

`Δ[xor(1, A266258(n+1)²)]`
-/

namespace A269909.P14335025521478205841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A266258 (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269909.P14335025521478205841

namespace A269909

/-- `Δ[xor(1, A266258(n+1)²)]` -/
def P14335025521478205841.Spec : Prop :=
  ∀ n, P14335025521478205841.a n = A269909 n

end A269909

/-! ## A269909.P1043089764574633297

`Δ[A086955(A266303(n))]`
-/

namespace A269909.P1043089764574633297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086955 (A266303 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269909.P1043089764574633297

namespace A269909

/-- `Δ[A086955(A266303(n))]` -/
def P1043089764574633297.Spec : Prop :=
  ∀ n, P1043089764574633297.a n = A269909 n

end A269909

/-! ## A269909.P9770989333199513937

`Δ[A269910(n)-A000035(n)]`
-/

namespace A269909.P9770989333199513937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269910 n - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269909.P9770989333199513937

namespace A269909

/-- `Δ[A269910(n)-A000035(n)]` -/
def P9770989333199513937.Spec : Prop :=
  ∀ n, P9770989333199513937.a n = A269909 n

end A269909

/-! ## A269909.P3311736234234772246

`A269906(n+1)-A269906(n)`
-/

namespace A269909.P3311736234234772246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269906 (n + 1) - A269906 n

end

end A269909.P3311736234234772246

namespace A269909

/-- `A269906(n+1)-A269906(n)` -/
def P3311736234234772246.Spec : Prop :=
  ∀ n, P3311736234234772246.a n = A269909 n

end A269909

/-! ## A269909.P16832740899686286805

`A269913(n)-A033999(n)`
-/

namespace A269909.P16832740899686286805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269913 n - A033999 n

end

end A269909.P16832740899686286805

namespace A269909

/-- `A269913(n)-A033999(n)` -/
def P16832740899686286805.Spec : Prop :=
  ∀ n, P16832740899686286805.a n = A269909 n

end A269909

/-! ## A269909.P1827420127136847371

`xor(A176415(n), A269913(n))`
-/

namespace A269909.P1827420127136847371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A176415 n) (A269913 n)

end

end A269909.P1827420127136847371

namespace A269909

/-- `xor(A176415(n), A269913(n))` -/
def P1827420127136847371.Spec : Prop :=
  ∀ n, P1827420127136847371.a n = A269909 n

end A269909

/-! ## A269909.P17744175368064522190

`A269913(n)-A056594(2*n)`
-/

namespace A269909.P17744175368064522190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269913 n - A056594 (2 * n)

end

end A269909.P17744175368064522190

namespace A269909

/-- `A269913(n)-A056594(2*n)` -/
def P17744175368064522190.Spec : Prop :=
  ∀ n, P17744175368064522190.a n = A269909 n

end A269909

/-! ## A269909.P238137907304635292

`A272010(n)%(∑[n+1]+1)²`
-/

namespace A269909.P238137907304635292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272010 n) (((∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2 : ℕ) : ℤ)

end

end A269909.P238137907304635292

namespace A269909

/-- `A272010(n)%(∑[n+1]+1)²` -/
def P238137907304635292.Spec : Prop :=
  ∀ n, P238137907304635292.a n = A269909 n

end A269909

/-! ## A269909.P12999581511768936199

`Δ[(A265056(n)-2)*A000035(n)]`
-/

namespace A269909.P12999581511768936199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A265056 n - 2) * A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269909.P12999581511768936199

namespace A269909

/-- `Δ[(A265056(n)-2)*A000035(n)]` -/
def P12999581511768936199.Spec : Prop :=
  ∀ n, P12999581511768936199.a n = A269909 n

end A269909

/-! ## A269909.P16984989446282238357

`Δ[A272007(n)-A272007(2*n)]`
-/

namespace A269909.P16984989446282238357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272007 n - A272007 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269909.P16984989446282238357

namespace A269909

/-- `Δ[A272007(n)-A272007(2*n)]` -/
def P16984989446282238357.Spec : Prop :=
  ∀ n, P16984989446282238357.a n = A269909 n

end A269909

/-! ## A269909.P586209549084884657

`A269907(n+1)+A272010(n)-A270935(n+1)`
-/

namespace A269909.P586209549084884657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269907 (n + 1) + (A272010 n - A270935 (n + 1))

end

end A269909.P586209549084884657

namespace A269909

/-- `A269907(n+1)+A272010(n)-A270935(n+1)` -/
def P586209549084884657.Spec : Prop :=
  ∀ n, P586209549084884657.a n = A269909 n

end A269909

/-! ## A269909.P4342893438876976768

`Δ[A088440(A273405(n))]`
-/

namespace A269909.P4342893438876976768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088440 (A273405 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269909.P4342893438876976768

namespace A269909

/-- `Δ[A088440(A273405(n))]` -/
def P4342893438876976768.Spec : Prop :=
  ∀ n, P4342893438876976768.a n = A269909 n

end A269909

/-!
# A269910: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 3", based on the 5-celled von Neumann neighborhood.

The programs for A269910, the canonical program `A269910.P285311053357349813` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269910 has offset 0).

The definition of A269910 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A269910.P285311053357349813

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=1, a(1)=5, a(2)=1, a(3)=45, a(4)=1, a(5)=117`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A269910

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P285311053357349813.Spec : Prop :=
  ∀ n, P285311053357349813.a n = A269910 n

theorem P285311053357349813.correct : P285311053357349813.Spec := by
  intro n
  simp only [A269910]

end A269910

/-! ## A269910.P3367811015590020058

`(∑[8*n]-3)^(n%2)`
-/

namespace A269910.P3367811015590020058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3) ^ (n % 2)

end

end A269910.P3367811015590020058

namespace A269910

/-- `(∑[8*n]-3)^(n%2)` -/
def P3367811015590020058.Spec : Prop :=
  ∀ n, P3367811015590020058.a n = A269910 n

end A269910

/-! ## A269910.P12058850061687863224

`(∑[8*n]-3)^and(1, n)`
-/

namespace A269910.P12058850061687863224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3) ^ Nat.land 1 n

end

end A269910.P12058850061687863224

namespace A269910

/-- `(∑[8*n]-3)^and(1, n)` -/
def P12058850061687863224.Spec : Prop :=
  ∀ n, P12058850061687863224.a n = A269910 n

end A269910

/-! ## A269910.P14226677627712626694

`gcd((2*n+1)²-4, (n+1)%2)`
-/

namespace A269910.P14226677627712626694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((2 * n + 1) ^ 2 : ℤ) - 4) (((n + 1) % 2 : ℕ) : ℤ)

end

end A269910.P14226677627712626694

namespace A269910

/-- `gcd((2*n+1)²-4, (n+1)%2)` -/
def P14226677627712626694.Spec : Prop :=
  ∀ n, (P14226677627712626694.a n : ℤ) = A269910 n

end A269910

/-! ## A269910.P9815003301816214180

`or(1, ((2*n+1)²-5)^and(1, n))`
-/

namespace A269910.P9815003301816214180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((((2 * n + 1) ^ 2 : ℤ) - 5) ^ Nat.land 1 n)

end

end A269910.P9815003301816214180

namespace A269910

/-- `or(1, ((2*n+1)²-5)^and(1, n))` -/
def P9815003301816214180.Spec : Prop :=
  ∀ n, P9815003301816214180.a n = A269910 n

end A269910

/-! ## A269910.P11080499705539252471

`(n²-1+n)*4*and(1, n)+1`
-/

namespace A269910.P11080499705539252471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - 1 + (n : ℤ)) * (4 * Nat.land 1 n : ℤ) + 1

end

end A269910.P11080499705539252471

namespace A269910

/-- `(n²-1+n)*4*and(1, n)+1` -/
def P11080499705539252471.Spec : Prop :=
  ∀ n, P11080499705539252471.a n = A269910 n

end A269910

/-! ## A269910.P5749556194935059726

`(xor(1, -n)-n)²-(a(n-1)+3)` with `a(0)=1`
-/

namespace A269910.P5749556194935059726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.xor 1 (-(n : ℤ)) - (n : ℤ)) ^ 2 - (a (n - 1) + 3)

end

end A269910.P5749556194935059726

namespace A269910

/-- `(xor(1, -n)-n)²-(a(n-1)+3)` -/
def P5749556194935059726.Spec : Prop :=
  ∀ n, P5749556194935059726.a n = A269910 n

end A269910

/-! ## A269910.P8421819230122371301

`(xor(1, -n)-n)²-3-a(n-1)` with `a(0)=1`
-/

namespace A269910.P8421819230122371301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.xor 1 (-(n : ℤ)) - (n : ℤ)) ^ 2 - 3 - a (n - 1)

end

end A269910.P8421819230122371301

namespace A269910

/-- `(xor(1, -n)-n)²-3-a(n-1)` -/
def P8421819230122371301.Spec : Prop :=
  ∀ n, P8421819230122371301.a n = A269910 n

end A269910

/-! ## A269910.P6227557134541140020

`A347634(xor(3, 2*n)+1)-3`
-/

namespace A269910.P6227557134541140020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347634 (Nat.xor 3 (2 * n) + 1) - 3

end

end A269910.P6227557134541140020

namespace A269910

/-- `A347634(xor(3, 2*n)+1)-3` -/
def P6227557134541140020.Spec : Prop :=
  ∀ n, P6227557134541140020.a n = A269910 n

end A269910

/-! ## A269910.P2626318886540352613

`(n²-1+n)*and(4, A004767(n))+1`
-/

namespace A269910.P2626318886540352613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - 1 + (n : ℤ)) * Int.land 4 (A004767 n) + 1

end

end A269910.P2626318886540352613

namespace A269910

/-- `(n²-1+n)*and(4, A004767(n))+1` -/
def P2626318886540352613.Spec : Prop :=
  ∀ n, P2626318886540352613.a n = A269910 n

end A269910

/-! ## A269910.P9633983585054953559

`(2*n-1)^and(1, n)*A266072(n+2)`
-/

namespace A269910.P9633983585054953559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 1) ^ Nat.land 1 n * A266072 (n + 2)

end

end A269910.P9633983585054953559

namespace A269910

/-- `(2*n-1)^and(1, n)*A266072(n+2)` -/
def P9633983585054953559.Spec : Prop :=
  ∀ n, P9633983585054953559.a n = A269910 n

end A269910

/-! ## A269910.P9423947890905014607

`A266072(n+2)*A266072(n)`
-/

namespace A269910.P9423947890905014607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266072 (n + 2) * A266072 n

end

end A269910.P9423947890905014607

namespace A269910

/-- `A266072(n+2)*A266072(n)` -/
def P9423947890905014607.Spec : Prop :=
  ∀ n, P9423947890905014607.a n = A269910 n

end A269910

/-! ## A269910.P11769038832278727734

`or(1, A269906(n))`
-/

namespace A269910.P11769038832278727734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A269906 n)

end

end A269910.P11769038832278727734

namespace A269910

/-- `or(1, A269906(n))` -/
def P11769038832278727734.Spec : Prop :=
  ∀ n, P11769038832278727734.a n = A269910 n

end A269910

/-! ## A269910.P5051429080082977207

`A269906(n)+A000035(n)`
-/

namespace A269910.P5051429080082977207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269906 n + A000035 n

end

end A269910.P5051429080082977207

namespace A269910

/-- `A269906(n)+A000035(n)` -/
def P5051429080082977207.Spec : Prop :=
  ∀ n, P5051429080082977207.a n = A269910 n

end A269910

/-! ## A269910.P5485751539767614324

`A271060(n)-A010674(n)`
-/

namespace A269910.P5485751539767614324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271060 n - A010674 n

end

end A269910.P5485751539767614324

namespace A269910

/-- `A271060(n)-A010674(n)` -/
def P5485751539767614324.Spec : Prop :=
  ∀ n, P5485751539767614324.a n = A269910 n

end A269910

/-! ## A269910.P3150082253854295561

`A269912(n+1)-(A269913(n)+A269912(n))`
-/

namespace A269910.P3150082253854295561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269912 (n + 1) - (A269913 n + A269912 n)

end

end A269910.P3150082253854295561

namespace A269910

/-- `A269912(n+1)-(A269913(n)+A269912(n))` -/
def P3150082253854295561.Spec : Prop :=
  ∀ n, P3150082253854295561.a n = A269910 n

end A269910

/-! ## A269910.P8044992724662893751

`A265056(n*and(1, n))`
-/

namespace A269910.P8044992724662893751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265056 (n * Nat.land 1 n)

end

end A269910.P8044992724662893751

namespace A269910

/-- `A265056(n*and(1, n))` -/
def P8044992724662893751.Spec : Prop :=
  ∀ n, P8044992724662893751.a n = A269910 n

end A269910

/-! ## A269910.P15500488897043175766

`A265056(Δ[A008794(n)])`
-/

namespace A269910.P15500488897043175766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265056 (f1 (n + 1) - f1 n).toNat

end

end A269910.P15500488897043175766

namespace A269910

/-- `A265056(Δ[A008794(n)])` -/
def P15500488897043175766.Spec : Prop :=
  ∀ n, P15500488897043175766.a n = A269910 n

end A269910

/-! ## A269910.P17410458939399292122

`A265056(n*A000035(n))`
-/

namespace A269910.P17410458939399292122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265056 ((n : ℤ) * A000035 n).toNat

end

end A269910.P17410458939399292122

namespace A269910

/-- `A265056(n*A000035(n))` -/
def P17410458939399292122.Spec : Prop :=
  ∀ n, P17410458939399292122.a n = A269910 n

end A269910

/-! ## A269910.P11651049242315047660

`gcd(A056594(n), A265056(n))`
-/

namespace A269910.P11651049242315047660
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056594 n) (A265056 n)

end

end A269910.P11651049242315047660

namespace A269910

/-- `gcd(A056594(n), A265056(n))` -/
def P11651049242315047660.Spec : Prop :=
  ∀ n, (P11651049242315047660.a n : ℤ) = A269910 n

end A269910

/-!
# A269911: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 3", based on the 5-celled von Neumann neighborhood.

The programs for A269911, the canonical program `A269911.P16105922397690164358` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269911 has offset 0).

The definition of A269911 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A269911.P16105922397690164358

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=5, a(2)=45, a(3)=221`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A269911

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P16105922397690164358.Spec : Prop :=
  ∀ n, P16105922397690164358.a n = A269911 n

theorem P16105922397690164358.correct : P16105922397690164358.Spec := by
  intro n
  simp only [A269911]

end A269911

/-! ## A269911.P6085798710589216768

`abs(∑[2^n]²-3)-1`
-/

namespace A269911.P6085798710589216768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - 3| - 1

end

end A269911.P6085798710589216768

namespace A269911

/-- `abs(∑[2^n]²-3)-1` -/
def P6085798710589216768.Spec : Prop :=
  ∀ n, P6085798710589216768.a n = A269911 n

end A269911

/-! ## A269911.P12601514781054282267

`xor(∑[4^n-2^n], ∑[2^n*∑[2^n]])`
-/

namespace A269911.P12601514781054282267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - (2 ^ n : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A269911.P12601514781054282267

namespace A269911

/-- `xor(∑[4^n-2^n], ∑[2^n*∑[2^n]])` -/
def P12601514781054282267.Spec : Prop :=
  ∀ n, P12601514781054282267.a n = A269911 n

end A269911

/-! ## A269911.P3727862842040944173

`or(1, A269907(n))`
-/

namespace A269911.P3727862842040944173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A269907 n)

end

end A269911.P3727862842040944173

namespace A269911

/-- `or(1, A269907(n))` -/
def P3727862842040944173.Spec : Prop :=
  ∀ n, P3727862842040944173.a n = A269911 n

end A269911

/-! ## A269911.P15037732906063519204

`or(1, A273832(n))`
-/

namespace A269911.P15037732906063519204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A273832 n)

end

end A269911.P15037732906063519204

namespace A269911

/-- `or(1, A273832(n))` -/
def P15037732906063519204.Spec : Prop :=
  ∀ n, P15037732906063519204.a n = A269911 n

end A269911

/-! ## A269911.P9736291723838509657

`abs(2-abs(A093112(n+1)))`
-/

namespace A269911.P9736291723838509657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 - |A093112 (n + 1)|)|

end

end A269911.P9736291723838509657

namespace A269911

/-- `abs(2-abs(A093112(n+1)))` -/
def P9736291723838509657.Spec : Prop :=
  ∀ n, P9736291723838509657.a n = A269911 n

end A269911

/-! ## A269911.P9940841811419226910

`abs(1-abs(5-A191341(n+1)))`
-/

namespace A269911.P9940841811419226910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - |5 - A191341 (n + 1)|)|

end

end A269911.P9940841811419226910

namespace A269911

/-- `abs(1-abs(5-A191341(n+1)))` -/
def P9940841811419226910.Spec : Prop :=
  ∀ n, P9940841811419226910.a n = A269911 n

end A269911

/-! ## A269911.P15532828851060588775

`abs(2-abs(∑[A000079(n)]²-2))`
-/

namespace A269911.P15532828851060588775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 - |(∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - 2|)|

end

end A269911.P15532828851060588775

namespace A269911

/-- `abs(2-abs(∑[A000079(n)]²-2))` -/
def P15532828851060588775.Spec : Prop :=
  ∀ n, P15532828851060588775.a n = A269911 n

end A269911

/-! ## A269911.P14835679637667709546

`abs(2-abs(A000225(n+1)²-2))`
-/

namespace A269911.P14835679637667709546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 - |A000225 (n + 1) ^ 2 - 2|)|

end

end A269911.P14835679637667709546

namespace A269911

/-- `abs(2-abs(A000225(n+1)²-2))` -/
def P14835679637667709546.Spec : Prop :=
  ∀ n, P14835679637667709546.a n = A269911 n

end A269911

/-! ## A269911.P9911854286211427518

`and(a(n-1), ∑[2^n])*A048578(n)` with `a(0)=1`
-/

namespace A269911.P9911854286211427518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (a (n - 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A048578 n

end

end A269911.P9911854286211427518

namespace A269911

/-- `and(a(n-1), ∑[2^n])*A048578(n)` -/
def P9911854286211427518.Spec : Prop :=
  ∀ n, P9911854286211427518.a n = A269911 n

end A269911

/-! ## A269911.P7902061848163482604

`and(A093112(n+1), A141725(n))`
-/

namespace A269911.P7902061848163482604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A093112 (n + 1)) (A141725 n)

end

end A269911.P7902061848163482604

namespace A269911

/-- `and(A093112(n+1), A141725(n))` -/
def P7902061848163482604.Spec : Prop :=
  ∀ n, P7902061848163482604.a n = A269911 n

end A269911

/-! ## A269911.P16392982774455729245

`or(A271051(2*n), A271055(n))`
-/

namespace A269911.P16392982774455729245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A271051 (2 * n)) (A271055 n)

end

end A269911.P16392982774455729245

namespace A269911

/-- `or(A271051(2*n), A271055(n))` -/
def P16392982774455729245.Spec : Prop :=
  ∀ n, P16392982774455729245.a n = A269911 n

end A269911

/-! ## A269911.P618589751125918373

`∑[lcm(A063759(2*n), A083329(n))]`
-/

namespace A269911.P618589751125918373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A063759 (2 * n)) (A083329 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269911.P618589751125918373

namespace A269911

/-- `∑[lcm(A063759(2*n), A083329(n))]` -/
def P618589751125918373.Spec : Prop :=
  ∀ n, (P618589751125918373.a n : ℤ) = A269911 n

end A269911

/-! ## A269911.P6560095470388052270

`(A132738(n)-n)*Δ[A132738(n)]`
-/

namespace A269911.P6560095470388052270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A132738 n - (n : ℤ)) * (f1 (n + 1) - f1 n)

end

end A269911.P6560095470388052270

namespace A269911

/-- `(A132738(n)-n)*Δ[A132738(n)]` -/
def P6560095470388052270.Spec : Prop :=
  ∀ n, P6560095470388052270.a n = A269911 n

end A269911

/-! ## A269911.P3221145426825885020

`or(A028399(n+2)+1, A095121(n)²)`
-/

namespace A269911.P3221145426825885020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A028399 (n + 2) + 1) (A095121 n ^ 2)

end

end A269911.P3221145426825885020

namespace A269911

/-- `or(A028399(n+2)+1, A095121(n)²)` -/
def P3221145426825885020.Spec : Prop :=
  ∀ n, P3221145426825885020.a n = A269911 n

end A269911

/-! ## A269911.P7548861534564858226

`and(A290073(2*n+1)-A284353(n+1), A284353(2*n+1))`
-/

namespace A269911.P7548861534564858226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A290073 (2 * n + 1) - A284353 (n + 1)) (A284353 (2 * n + 1))

end

end A269911.P7548861534564858226

namespace A269911

/-- `and(A290073(2*n+1)-A284353(n+1), A284353(2*n+1))` -/
def P7548861534564858226.Spec : Prop :=
  ∀ n, P7548861534564858226.a n = A269911 n

end A269911

/-!
# A269912: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 3", based on the 5-celled von Neumann neighborhood.

The programs for A269912, the canonical program `A269912.P15061895687565313829` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269912 has offset 0).

The definition of A269912 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3158 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269912.P3926653242472457474

`∑[(∑[8*n]-3)^(n%2)]`
-/

namespace A269912.P3926653242472457474
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 3) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269912.P3926653242472457474

namespace A269912

/-- `∑[(∑[8*n]-3)^(n%2)]` -/
def P3926653242472457474.Spec : Prop :=
  ∀ n, P3926653242472457474.a n = A269912 n

end A269912

/-! ## A269912.P15061895687565313829

`∑[and(∑[8*n]-3, (-1)^n)]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A269912

/-- `∑[and(∑[8*n]-3, (-1)^n)]` -/
def P15061895687565313829.Spec : Prop :=
  ∀ n, P15061895687565313829.a n = A269912 n

theorem P15061895687565313829.correct : P15061895687565313829.Spec := by
  intro n
  simp only [A269912]

end A269912

/-! ## A269912.P8220741364493267927

`∑[((2*n+1)²-4)^and(1, n)]`
-/

namespace A269912.P8220741364493267927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1) ^ 2 : ℤ) - 4) ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269912.P8220741364493267927

namespace A269912

/-- `∑[((2*n+1)²-4)^and(1, n)]` -/
def P8220741364493267927.Spec : Prop :=
  ∀ n, P8220741364493267927.a n = A269912 n

end A269912

/-! ## A269912.P13715592947064234963

`∑[gcd(4-Δ[n²]², and(1, n+1))]`
-/

namespace A269912.P13715592947064234963
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (4 - ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2) (Nat.land 1 (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269912.P13715592947064234963

namespace A269912

/-- `∑[gcd(4-Δ[n²]², and(1, n+1))]` -/
def P13715592947064234963.Spec : Prop :=
  ∀ n, (P13715592947064234963.a n : ℤ) = A269912 n

end A269912

/-! ## A269912.P17720025354650919155

`a(n-1)+((2*n+1)²-4)^and(1, n)` with `a(0)=1`
-/

namespace A269912.P17720025354650919155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (((2 * n + 1) ^ 2 : ℤ) - 4) ^ Nat.land 1 n

end

end A269912.P17720025354650919155

namespace A269912

/-- `a(n-1)+((2*n+1)²-4)^and(1, n)` -/
def P17720025354650919155.Spec : Prop :=
  ∀ n, P17720025354650919155.a n = A269912 n

end A269912

/-! ## A269912.P7857171592300436345

`∑[A269910(n)]`
-/

namespace A269912.P7857171592300436345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269912.P7857171592300436345

namespace A269912

/-- `∑[A269910(n)]` -/
def P7857171592300436345.Spec : Prop :=
  ∀ n, P7857171592300436345.a n = A269912 n

end A269912

/-! ## A269912.P10171869347649543027

`∑[or(1, A269906(n))]`
-/

namespace A269912.P10171869347649543027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A269906 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269912.P10171869347649543027

namespace A269912

/-- `∑[or(1, A269906(n))]` -/
def P10171869347649543027.Spec : Prop :=
  ∀ n, P10171869347649543027.a n = A269912 n

end A269912

/-! ## A269912.P9691036693320932181

`A269908(n)+∑[char[2*n+1]]`
-/

namespace A269912.P9691036693320932181
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269908 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A269912.P9691036693320932181

namespace A269912

/-- `A269908(n)+∑[char[2*n+1]]` -/
def P9691036693320932181.Spec : Prop :=
  ∀ n, P9691036693320932181.a n = A269912 n

end A269912

/-! ## A269912.P11407580622435187682

`∑[(n²-1+n)*and(4, A004767(n))+1]`
-/

namespace A269912.P11407580622435187682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - 1 + (n : ℤ)) * Int.land 4 (A004767 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269912.P11407580622435187682

namespace A269912

/-- `∑[(n²-1+n)*and(4, A004767(n))+1]` -/
def P11407580622435187682.Spec : Prop :=
  ∀ n, P11407580622435187682.a n = A269912 n

end A269912

/-! ## A269912.P10484152666198828556

`∑[(2*n-1)^and(1, n)*A266072(n+2)]`
-/

namespace A269912.P10484152666198828556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 1) ^ Nat.land 1 n * A266072 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269912.P10484152666198828556

namespace A269912

/-- `∑[(2*n-1)^and(1, n)*A266072(n+2)]` -/
def P10484152666198828556.Spec : Prop :=
  ∀ n, P10484152666198828556.a n = A269912 n

end A269912

/-! ## A269912.P4938110192071745382

`∑[A269906(n)+A000035(n)]`
-/

namespace A269912.P4938110192071745382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269906 n + A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269912.P4938110192071745382

namespace A269912

/-- `∑[A269906(n)+A000035(n)]` -/
def P4938110192071745382.Spec : Prop :=
  ∀ n, P4938110192071745382.a n = A269912 n

end A269912

/-! ## A269912.P8321664665131861293

`A272009(n)-A047355(n+1)`
-/

namespace A269912.P8321664665131861293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272009 n - A047355 (n + 1)

end

end A269912.P8321664665131861293

namespace A269912

/-- `A272009(n)-A047355(n+1)` -/
def P8321664665131861293.Spec : Prop :=
  ∀ n, P8321664665131861293.a n = A269912 n

end A269912

/-! ## A269912.P8709994232682765957

`∑[A269906(n)%A269906(n+2)+1]`
-/

namespace A269912.P8709994232682765957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269906 n) (A269906 (n + 2)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269912.P8709994232682765957

namespace A269912

/-- `∑[A269906(n)%A269906(n+2)+1]` -/
def P8709994232682765957.Spec : Prop :=
  ∀ n, P8709994232682765957.a n = A269912 n

end A269912

/-! ## A269912.P10021367253780306935

`∑[A265056(Δ[A008794(n)])]`
-/

namespace A269912.P10021367253780306935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265056 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269912.P10021367253780306935

namespace A269912

/-- `∑[A265056(Δ[A008794(n)])]` -/
def P10021367253780306935.Spec : Prop :=
  ∀ n, P10021367253780306935.a n = A269912 n

end A269912

/-! ## A269912.P5833058472710344491

`∑[A265056(n*A000035(n))]`
-/

namespace A269912.P5833058472710344491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265056 ((n : ℤ) * A000035 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269912.P5833058472710344491

namespace A269912

/-- `∑[A265056(n*A000035(n))]` -/
def P5833058472710344491.Spec : Prop :=
  ∀ n, P5833058472710344491.a n = A269912 n

end A269912

/-! ## A269912.P2299576603372216311

`∑[A265056(n*A059841(n+1))]`
-/

namespace A269912.P2299576603372216311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265056 ((n : ℤ) * A059841 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269912.P2299576603372216311

namespace A269912

/-- `∑[A265056(n*A059841(n+1))]` -/
def P2299576603372216311.Spec : Prop :=
  ∀ n, P2299576603372216311.a n = A269912 n

end A269912

/-!
# A269913: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 3", based on the 5-celled von Neumann neighborhood.

The programs for A269913, the canonical program `A269913.P1836565538651151771` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269913 has offset 0).

The definition of A269913 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3157 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269913.P7446306241859537513

`Δ[4*(n²+n)^(n%2)]`
-/

namespace A269913.P7446306241859537513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n ^ 2 + n) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A269913.P7446306241859537513

namespace A269913

/-- `Δ[4*(n²+n)^(n%2)]` -/
def P7446306241859537513.Spec : Prop :=
  ∀ n, P7446306241859537513.a n = A269913 n

end A269913

/-! ## A269913.P7741386087375734960

`Δ[((2*n+1)²-4)^and(1, n)]`
-/

namespace A269913.P7741386087375734960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1) ^ 2 : ℤ) - 4) ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269913.P7741386087375734960

namespace A269913

/-- `Δ[((2*n+1)²-4)^and(1, n)]` -/
def P7741386087375734960.Spec : Prop :=
  ∀ n, P7741386087375734960.a n = A269913 n

end A269913

/-! ## A269913.P1836565538651151771

`Δ[(n²-1+n)*4*and(1, n)]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A269913

/-- `Δ[(n²-1+n)*4*and(1, n)]` -/
def P1836565538651151771.Spec : Prop :=
  ∀ n, P1836565538651151771.a n = A269913 n

theorem P1836565538651151771.correct : P1836565538651151771.Spec := by
  intro n
  simp only [A269913]

end A269913

/-! ## A269913.P8923431817573260968

`Δ[4*gcd(n²+n, (n+1)%2)]`
-/

namespace A269913.P8923431817573260968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.gcd (n ^ 2 + n) ((n + 1) % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A269913.P8923431817573260968

namespace A269913

/-- `Δ[4*gcd(n²+n, (n+1)%2)]` -/
def P8923431817573260968.Spec : Prop :=
  ∀ n, P8923431817573260968.a n = A269913 n

end A269913

/-! ## A269913.P4119361845759545649

`Δ[A269910(n)]`
-/

namespace A269913.P4119361845759545649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269913.P4119361845759545649

namespace A269913

/-- `Δ[A269910(n)]` -/
def P4119361845759545649.Spec : Prop :=
  ∀ n, P4119361845759545649.a n = A269913 n

end A269913

/-! ## A269913.P207829351070682055

`Δ[lcm(4, A271060(n))]`
-/

namespace A269913.P207829351070682055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A271060 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A269913.P207829351070682055

namespace A269913

/-- `Δ[lcm(4, A271060(n))]` -/
def P207829351070682055.Spec : Prop :=
  ∀ n, P207829351070682055.a n = A269913 n

end A269913

/-! ## A269913.P17452567946115938272

`Δ[or(1, A269906(n))]`
-/

namespace A269913.P17452567946115938272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A269906 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269913.P17452567946115938272

namespace A269913

/-- `Δ[or(1, A269906(n))]` -/
def P17452567946115938272.Spec : Prop :=
  ∀ n, P17452567946115938272.a n = A269913 n

end A269913

/-! ## A269913.P4757282345284577484

`Δ[(2*n-1)^and(1, n)*A266072(n+2)]`
-/

namespace A269913.P4757282345284577484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 1) ^ Nat.land 1 n * A266072 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269913.P4757282345284577484

namespace A269913

/-- `Δ[(2*n-1)^and(1, n)*A266072(n+2)]` -/
def P4757282345284577484.Spec : Prop :=
  ∀ n, P4757282345284577484.a n = A269913 n

end A269913

/-! ## A269913.P8817839405070346570

`Δ[A066106(A266303(n))]`
-/

namespace A269913.P8817839405070346570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066106 (A266303 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269913.P8817839405070346570

namespace A269913

/-- `Δ[A066106(A266303(n))]` -/
def P8817839405070346570.Spec : Prop :=
  ∀ n, P8817839405070346570.a n = A269913 n

end A269913

/-! ## A269913.P10286937704376872610

`A269909(n)+A033999(n)`
-/

namespace A269913.P10286937704376872610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269909 n + A033999 n

end

end A269913.P10286937704376872610

namespace A269913

/-- `A269909(n)+A033999(n)` -/
def P10286937704376872610.Spec : Prop :=
  ∀ n, P10286937704376872610.a n = A269913 n

end A269913

/-! ## A269913.P3791569509334217552

`A271064(n)-A174971(n)`
-/

namespace A269913.P3791569509334217552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271064 n - A174971 n

end

end A269913.P3791569509334217552

namespace A269913

/-- `A271064(n)-A174971(n)` -/
def P3791569509334217552.Spec : Prop :=
  ∀ n, P3791569509334217552.a n = A269913 n

end A269913

/-! ## A269913.P11946938405178233082

`xor(A010703(n), A271064(n))`
-/

namespace A269913.P11946938405178233082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010703 n) (A271064 n)

end

end A269913.P11946938405178233082

namespace A269913

/-- `xor(A010703(n), A271064(n))` -/
def P11946938405178233082.Spec : Prop :=
  ∀ n, P11946938405178233082.a n = A269913 n

end A269913

/-! ## A269913.P17206831034203520383

`xor(A176415(n), A269909(n))`
-/

namespace A269913.P17206831034203520383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A176415 n) (A269909 n)

end

end A269913.P17206831034203520383

namespace A269913

/-- `xor(A176415(n), A269909(n))` -/
def P17206831034203520383.Spec : Prop :=
  ∀ n, P17206831034203520383.a n = A269913 n

end A269913

/-! ## A269913.P9257894355848441275

`Δ[A269906(n)+A000034(n)]`
-/

namespace A269913.P9257894355848441275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269906 n + A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269913.P9257894355848441275

namespace A269913

/-- `Δ[A269906(n)+A000034(n)]` -/
def P9257894355848441275.Spec : Prop :=
  ∀ n, P9257894355848441275.a n = A269913 n

end A269913

/-! ## A269913.P7249949270336862692

`Δ[A269906(n)+A000035(n)]`
-/

namespace A269913.P7249949270336862692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269906 n + A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269913.P7249949270336862692

namespace A269913

/-- `Δ[A269906(n)+A000035(n)]` -/
def P7249949270336862692.Spec : Prop :=
  ∀ n, P7249949270336862692.a n = A269913 n

end A269913

/-! ## A269913.P6754930164560392094

`A269910(n+1)-A269910(n)`
-/

namespace A269913.P6754930164560392094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269910 (n + 1) - A269910 n

end

end A269913.P6754930164560392094

namespace A269913

/-- `A269910(n+1)-A269910(n)` -/
def P6754930164560392094.Spec : Prop :=
  ∀ n, P6754930164560392094.a n = A269913 n

end A269913

/-! ## A269913.P2269376208787695541

`Δ[A271060(n)-A059855(n+2)]`
-/

namespace A269913.P2269376208787695541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271060 n - A059855 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269913.P2269376208787695541

namespace A269913

/-- `Δ[A271060(n)-A059855(n+2)]` -/
def P2269376208787695541.Spec : Prop :=
  ∀ n, P2269376208787695541.a n = A269913 n

end A269913

/-! ## A269913.P10012873437348542958

`Δ[A265056(Δ[A008794(n)])]`
-/

namespace A269913.P10012873437348542958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265056 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269913.P10012873437348542958

namespace A269913

/-- `Δ[A265056(Δ[A008794(n)])]` -/
def P10012873437348542958.Spec : Prop :=
  ∀ n, P10012873437348542958.a n = A269913 n

end A269913

/-! ## A269913.P606112713104261921

`Δ[A265056(n*A000035(n))]`
-/

namespace A269913.P606112713104261921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265056 ((n : ℤ) * A000035 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269913.P606112713104261921

namespace A269913

/-- `Δ[A265056(n*A000035(n))]` -/
def P606112713104261921.Spec : Prop :=
  ∀ n, P606112713104261921.a n = A269913 n

end A269913

/-! ## A269913.P14642980587317112197

`Δ[A265056(Δ[A004526(n)²])]`
-/

namespace A269913.P14642980587317112197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265056 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269913.P14642980587317112197

namespace A269913

/-- `Δ[A265056(Δ[A004526(n)²])]` -/
def P14642980587317112197.Spec : Prop :=
  ∀ n, P14642980587317112197.a n = A269913 n

end A269913

/-!
# A269914: Number of ternary strings of length n with maximal run length two containing 112.

The programs for A269914, there is no canonical definition to state claims against.
-/

/-! ## A269914.P8647342860212474194

`A168044(3*a(n-1))` with `a(0)=1`
-/

namespace A269914.P8647342860212474194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A168044 (3 * a (n - 1)).toNat

end

end A269914.P8647342860212474194

/-! ## A269914.P5313401292853289973

`A167692(3*a(n-1))/2` with `a(0)=1`
-/

namespace A269914.P5313401292853289973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A167692 (SequenceMachineLib.roundAway (3 * a (n - 1))).toNat : ℚ) / 2

end

end A269914.P5313401292853289973

/-!
# A269915: Number of ternary strings of length n with maximal run length three containing 1112.

The programs for A269915, there is no canonical definition to state claims against.
-/

/-! ## A269915.P18341689555476317993

`A125229(A221440(n+1))`
-/

namespace A269915.P18341689555476317993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125229 (A221440 (n + 1)).toNat

end

end A269915.P18341689555476317993

/-!
# A269916: Number of ternary strings of length n with maximal run length four containing 11112.

The programs for A269916, there is no canonical definition to state claims against.
-/

/-! ## A269916.P13516725720887620471

`A002264(A293579(n+2)-n)`
-/

namespace A269916.P13516725720887620471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A293579 (n + 2) - (n : ℤ)).toNat

end

end A269916.P13516725720887620471

/-! ## A269916.P6223678219728960064

`xor(A081038(n), A180601(4^n))`
-/

namespace A269916.P6223678219728960064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A081038 n) (A180601 (4 ^ n))

end

end A269916.P6223678219728960064

/-!
# A269917: Number of ternary strings of length n with maximal run length five containing 111112.

The programs for A269917, there is no canonical definition to state claims against.
-/

/-! ## A269917.P5511975858660798587

`A081038(n)-A180601(3^n)`
-/

namespace A269917.P5511975858660798587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081038 n - A180601 (3 ^ n)

end

end A269917.P5511975858660798587

/-! ## A269917.P10487010589718017197

`(2*n+3)*3^(n-1)-A180601(A000244(n))`
-/

namespace A269917.P10487010589718017197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (A180601 (A000244 n).toNat : ℚ)

end

end A269917.P10487010589718017197

/-! ## A269917.P6536126381071078737

`(2*n+3)*3^(n-1)-A180601(A140429(n+1))`
-/

namespace A269917.P6536126381071078737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (A180601 (A140429 (n + 1)).toNat : ℚ)

end

end A269917.P6536126381071078737

/-!
# A269918: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 822", based on the 5-celled von Neumann neighborhood.

The programs for A269918, there is no canonical definition to state claims against.
-/

/-! ## A269918.P10252244891962962919

`A273370(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A269918.P10252244891962962919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273370 (n - 1) + a (n - 1)

end

end A269918.P10252244891962962919

/-! ## A269918.P15715335866657508266

`1+∑[A273370(n)]-A273370(n)`
-/

namespace A269918.P15715335866657508266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + (∑ j ∈ Finset.range (n + 1), f1 j - A273370 n)

end

end A269918.P15715335866657508266

/-! ## A269918.P7589514305546654836

`A005408(n)-(2*n-(∑[A273370(n)]-A273370(n)))`
-/

namespace A269918.P7589514305546654836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - ((2 * n : ℤ) - (∑ j ∈ Finset.range (n + 1), f1 j - A273370 n))

end

end A269918.P7589514305546654836

/-! ## A269918.P2503808035619352178

`Δ[A272847(n)]-A273370(n)`
-/

namespace A269918.P2503808035619352178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273370 n

end

end A269918.P2503808035619352178

/-! ## A269918.P10630580398278847052

`A272847(n+1)-(A273370(n)+A272847(n))`
-/

namespace A269918.P10630580398278847052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272847 (n + 1) - (A273370 n + A272847 n)

end

end A269918.P10630580398278847052

/-! ## A269918.P16194091286412967892

`A008619(2*(∑[A273370(n)]-A273370(n)))`
-/

namespace A269918.P16194091286412967892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * (∑ j ∈ Finset.range (n + 1), f1 j - A273370 n)).toNat

end

end A269918.P16194091286412967892

/-!
# A269919: Triangle read by rows: T(n,g) is the number of rooted maps with n edges on an orientable surface of genus g.

The programs for A269919, there is no canonical definition to state claims against.
-/

/-! ## A269919.P2202571980293838736

`A238396(record[A116942(n)])`
-/

namespace A269919.P2202571980293838736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238396 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A269919.P2202571980293838736

/-! ## A269919.P11627893327423552898

`A238396(eq[0, A340507(n)])`
-/

namespace A269919.P11627893327423552898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269919.P11627893327423552898

/-! ## A269919.P6354343910198331983

`A238396(lt[0, A238396(n)])`
-/

namespace A269919.P6354343910198331983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A269919.P6354343910198331983

/-! ## A269919.P618711309915194196

`A238396(eq[1, A306846(n)])`
-/

namespace A269919.P618711309915194196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269919.P618711309915194196

/-! ## A269919.P13492352290352824585

`A238396(eq[1, A307039(n)])`
-/

namespace A269919.P13492352290352824585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269919.P13492352290352824585

/-! ## A269919.P16298191066086351403

`A238396(record[n%(A238396(n)+n)])`
-/

namespace A269919.P16298191066086351403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A238396 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238396 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A269919.P16298191066086351403

/-!
# A269921: Triangle read by rows: T(n,f) is the number of rooted maps with n edges and f faces on an orientable surface of genus 1.

The programs for A269921, there is no canonical definition to state claims against.
-/

/-! ## A269921.P6507205810903179828

`A226641(∑[A005636(n+1)]²)`
-/

namespace A269921.P6507205810903179828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226641 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A269921.P6507205810903179828

/-!
# A269926: Number of partitions of n into rational parts i/j such that 1 <= i,j <= n and gcd(i,j) = 1.

The programs for A269926, there is no canonical definition to state claims against.
-/

/-! ## A269926.P13116874966880235731

`A066633((10^n+26)/9-n)`
-/

namespace A269926.P13116874966880235731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066633 (SequenceMachineLib.roundAway ((10 ^ n + 26 : ℚ) / 9 - (n : ℚ))).toNat

end

end A269926.P13116874966880235731

/-!
# A269927: Start with A_0 = 0, then extend by setting B_k = complement of A_k and A_{k+1} = A_k C_1 C_2 ... C_m, where m is the length of A_k and C_i = A_k if the i-th element of A_k is 1 and C_i = B_k otherwise; sequence is limit of A_k as k -> infinity.

The programs for A269927, there is no canonical definition to state claims against.
-/

/-! ## A269927.P18130149832775906208

`∑[A181153(A034693(n+1))+n]%2`
-/

namespace A269927.P18130149832775906208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181153 (A034693 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A269927.P18130149832775906208

/-! ## A269927.P2649889839196689817

`(∑[gcd(n, A275444(n))]+1)%2`
-/

namespace A269927.P2649889839196689817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A275444 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) % 2

end

end A269927.P2649889839196689817

/-! ## A269927.P606500871577580383

`A059841(∑[gcd(n, A275444(n))])`
-/

namespace A269927.P606500871577580383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A275444 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A269927.P606500871577580383

/-! ## A269927.P373015227643589677

`∑[n%A283525(A178656(n+1))]%2`
-/

namespace A269927.P373015227643589677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A283525 (A178656 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A269927.P373015227643589677

/-! ## A269927.P7814817100037625206

`A021913(lt[A118335(n+2), A352867(3*(n+1))])`
-/

namespace A269927.P7814817100037625206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118335 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352867 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A269927.P7814817100037625206

/-!
# A269928: Integers n that belong to more Pythagorean triples than preceding integers.

The programs for A269928, there is no canonical definition to state claims against.
-/

/-! ## A269928.P3653869220788273183

`A049417(lt[A188316(n), A344618(n)])`
-/

namespace A269928.P3653869220788273183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344618 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A269928.P3653869220788273183

/-!
# A269929: Records for the numbers of Pythagorean triples to which an integer belongs.

The programs for A269929, there is no canonical definition to state claims against.
-/

/-! ## A269929.P8595991042732189260

`record[A328712(n+1)+A063647(n+1)]`
-/

namespace A269929.P8595991042732189260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328712 (n + 1) + A063647 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269929.P8595991042732189260

/-! ## A269929.P1783752084124249769

`A046080(A269928(n+1))+A046079(A269928(n+1))`
-/

namespace A269929.P1783752084124249769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (A269928 (n + 1)).toNat + A046079 (A269928 (n + 1)).toNat

end

end A269929.P1783752084124249769

/-! ## A269929.P13070393408875059038

`record[A046081(n+1)]`
-/

namespace A269929.P13070393408875059038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269929.P13070393408875059038

/-! ## A269929.P4842158437221393860

`A046081(A269928(n+1))`
-/

namespace A269929.P4842158437221393860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (A269928 (n + 1)).toNat

end

end A269929.P4842158437221393860

/-! ## A269929.P4585223719075785801

`∑{d}[A269928(n+1), A024363(#)]`
-/

namespace A269929.P4585223719075785801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A024363 d

end

end A269929.P4585223719075785801

/-!
# A269930: Primes whose digits are all prime, sum of digits is prime and sum of reciprocals of digits is also prime.

The programs for A269930, there is no canonical definition to state claims against.
-/

/-! ## A269930.P6542497499046025502

`∩[A020458(n+1), A064779(n+1)]`
-/

namespace A269930.P6542497499046025502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269930.P6542497499046025502

/-! ## A269930.P18105185683163547618

`∩[A032810(n+1), A064779(n+1)]`
-/

namespace A269930.P18105185683163547618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269930.P18105185683163547618

/-! ## A269930.P11379956164005265653

`∩[A062088(n+1), A064779(n+1)]`
-/

namespace A269930.P11379956164005265653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269930.P11379956164005265653

/-! ## A269930.P612527300205781196

`∩[A064779(n+1), A110028(n+1)]`
-/

namespace A269930.P612527300205781196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064779 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269930.P612527300205781196

/-!
# A269932: Number of n X 2 0..6 arrays with some element plus some horizontally, diagonally, antidiagonally or vertically adjacent neighbor totalling six exactly once.

The programs for A269932, there is no canonical definition to state claims against.
-/

/-! ## A269932.P9334525396520664273

`A269937(∑[n+1]+2)`
-/

namespace A269932.P9334525396520664273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269937 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A269932.P9334525396520664273

/-! ## A269932.P16517422324841251029

`record[gcd(A071417(n), A269937(n+3))]`
-/

namespace A269932.P16517422324841251029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A071417 n) (A269937 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269932.P16517422324841251029

/-! ## A269932.P13404795744594306903

`A269937(A133263(n+1))*A322356(n+1)`
-/

namespace A269932.P13404795744594306903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269937 (A133263 (n + 1)).toNat * A322356 (n + 1)

end

end A269932.P13404795744594306903

/-! ## A269932.P16524667896116560895

`record[root(A269937(n+3), A269950(n))]`
-/

namespace A269932.P16524667896116560895
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A269937 (n + 3) : ℝ) ^ (1 / (A269950 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269932.P16524667896116560895

/-! ## A269932.P9110091389121896187

`record[A269937(n+3)/A136502(n)]`
-/

namespace A269932.P9110091389121896187
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269937 (n + 3) : ℚ) / (A136502 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269932.P9110091389121896187

/-!
# A269933: Number of nX3 0..6 arrays with some element plus some horizontally, diagonally, antidiagonally or vertically adjacent neighbor totalling six exactly once.

The programs for A269933, there is no canonical definition to state claims against.
-/

/-! ## A269933.P10795047672105691347

`A269937(∑[n+2]+4)`
-/

namespace A269933.P10795047672105691347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269937 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A269933.P10795047672105691347

/-! ## A269933.P3316556451558732275

`lcm(2, A269937(A167614(n+1)))`
-/

namespace A269933.P3316556451558732275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A269937 (A167614 (n + 1)).toNat)

end

end A269933.P3316556451558732275

/-! ## A269933.P16955842406167905051

`A269937(A167614(n+1))+A185236(n)`
-/

namespace A269933.P16955842406167905051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269937 (A167614 (n + 1)).toNat + A185236 n

end

end A269933.P16955842406167905051

/-! ## A269933.P14813064406650934170

`A269937(A167614(n+1))%A269898(n+1)`
-/

namespace A269933.P14813064406650934170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269937 (A167614 (n + 1)).toNat) (A269898 (n + 1))

end

end A269933.P14813064406650934170

/-! ## A269933.P12520913706178695113

`or(A269937(A167614(n+1)), A270033(n+1))`
-/

namespace A269933.P12520913706178695113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A269937 (A167614 (n + 1)).toNat) (A270033 (n + 1))

end

end A269933.P12520913706178695113

/-!
# A269934: Number of nX4 0..6 arrays with some element plus some horizontally, diagonally, antidiagonally or vertically adjacent neighbor totalling six exactly once.

The programs for A269934, there is no canonical definition to state claims against.
-/

/-! ## A269934.P318165508030246492

`A269937(A052905(n)+9)`
-/

namespace A269934.P318165508030246492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269937 (A052905 n + 9).toNat

end

end A269934.P318165508030246492

/-!
# A269937: T(n,k)=Number of nXk 0..6 arrays with some element plus some horizontally, diagonally, antidiagonally or vertically adjacent neighbor totalling six exactly once.

The programs for A269937, there is no canonical definition to state claims against.
-/

/-! ## A269937.P15207092833619123971

`A137020(n+1)-(∑[n]+1)`
-/

namespace A269937.P15207092833619123971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137020 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A269937.P15207092833619123971

/-!
# A269938: Row sums of A268434.

The programs for A269938, there is no canonical definition to state claims against.
-/

/-! ## A269938.P9112679204712462460

`or(1, A320945(n+2))`
-/

namespace A269938.P9112679204712462460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A320945 (n + 2))

end

end A269938.P9112679204712462460

/-!
# A269939: Triangle read by rows, Ward numbers T(n, k) = Sum_{m=0..k} (-1)^(m + k) * binomial(n + k, n + m) * Stirling2(n + m, m), for n >= 0, 0 <= k <= n.

The programs for A269939, there is no canonical definition to state claims against.
-/

/-! ## A269939.P17462653771414635205

`A112493(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A269939.P17462653771414635205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A112493 (n - 1) - a (n - 1)

end

end A269939.P17462653771414635205

/-! ## A269939.P10203657315075153479

`A268439(n)/A094527(n)`
-/

namespace A269939.P10203657315075153479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268439 n : ℚ) / (A094527 n : ℚ)

end

end A269939.P10203657315075153479

/-! ## A269939.P17691621418765288132

`A268439(n)/A380113(n)`
-/

namespace A269939.P17691621418765288132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268439 n : ℚ) / (A380113 n : ℚ)

end

end A269939.P17691621418765288132

/-! ## A269939.P15310549964309971924

`A358623(A245300(n))`
-/

namespace A269939.P15310549964309971924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358623 (A245300 n).toNat

end

end A269939.P15310549964309971924

/-! ## A269939.P15661097463967440707

`A268437(n)/A357013(n)`
-/

namespace A269939.P15661097463967440707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268437 n : ℚ) / (A357013 n : ℚ)

end

end A269939.P15661097463967440707

/-!
# A269940: Triangle read by rows, T(n, k) = Sum_{m=0..k} (-1)^(m + k)*binomial(n + k, n + m) * |Stirling1(n + m, m)|, for n >= 0, 0 <= k <= n.

The programs for A269940, there is no canonical definition to state claims against.
-/

/-! ## A269940.P14342650665381367033

`A112486(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A269940.P14342650665381367033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A112486 (n - 1) - a (n - 1)

end

end A269940.P14342650665381367033

/-! ## A269940.P16033909305176024369

`A268440(n)/A094527(n)`
-/

namespace A269940.P16033909305176024369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268440 n : ℚ) / (A094527 n : ℚ)

end

end A269940.P16033909305176024369

/-! ## A269940.P9439091733907179504

`A268440(n)/A380113(n)`
-/

namespace A269940.P9439091733907179504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268440 n : ℚ) / (A380113 n : ℚ)

end

end A269940.P9439091733907179504

/-! ## A269940.P14753639184133078039

`A358622(A245300(n))`
-/

namespace A269940.P14753639184133078039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358622 (A245300 n).toNat

end

end A269940.P14753639184133078039

/-! ## A269940.P14436717339304707187

`A106828(A056537(n+1)-1)`
-/

namespace A269940.P14436717339304707187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106828 (A056537 (n + 1) - 1).toNat

end

end A269940.P14436717339304707187

/-! ## A269940.P4770205108409526614

`A268438(n)/A357013(n)`
-/

namespace A269940.P4770205108409526614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268438 n : ℚ) / (A357013 n : ℚ)

end

end A269940.P4770205108409526614

/-!
# A269941: Triangle read by rows, the coefficients of the partial P-polynomials.

The programs for A269941, there is no canonical definition to state claims against.
-/

/-! ## A269941.P18098422594323397302

`Δ[A287418(Δ[A236330(3*n+2)]+1)]`
-/

namespace A269941.P18098422594323397302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236330 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287418 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269941.P18098422594323397302

/-! ## A269941.P8396083827700272921

`A162514(n)-A103997(A156953(n))`
-/

namespace A269941.P8396083827700272921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162514 n - A103997 (A156953 n).toNat

end

end A269941.P8396083827700272921

/-!
# A269942: Triangle read by rows, the coefficients of the inverse partial P-polynomials.

The programs for A269942, there is no canonical definition to state claims against.
-/

/-! ## A269942.P2107737887461571306

`A016385(A167614(n+1)-A353437(n+1))`
-/

namespace A269942.P2107737887461571306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016385 (A167614 (n + 1) - A353437 (n + 1)).toNat

end

end A269942.P2107737887461571306

/-!
# A269943: Triangle read by rows, T(n,k) = ((-1)^k*(2*n)!/4^k)*P[n,k](1/((2*n-1)*(2*n))) where P is the inverse P-transform, for n>=0 and 0<=k<=n.

The programs for A269943, there is no canonical definition to state claims against.
-/

/-! ## A269943.P13650202451170967500

`A055642(A001040(n))*A094665(n)`
-/

namespace A269943.P13650202451170967500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A001040 n).toNat * A094665 n

end

end A269943.P13650202451170967500

/-! ## A269943.P4976671959911609334

`A055642(A112842(n))*A094665(n)`
-/

namespace A269943.P4976671959911609334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A112842 n).toNat * A094665 n

end

end A269943.P4976671959911609334

/-! ## A269943.P12231286770469573322

`A088874(n)*A249739(A000110(n))`
-/

namespace A269943.P12231286770469573322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088874 n * A249739 (A000110 n).toNat

end

end A269943.P12231286770469573322

/-! ## A269943.P10492894043800461542

`A208133(A121452(n))*A304336(n)`
-/

namespace A269943.P10492894043800461542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208133 (A121452 n).toNat * A304336 n

end

end A269943.P10492894043800461542

/-! ## A269943.P287737371331972596

`A088874(n)*A351014(A274174(n))`
-/

namespace A269943.P287737371331972596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088874 n * A351014 (A274174 n).toNat

end

end A269943.P287737371331972596

/-!
# A269944: Triangle read by rows, Stirling cycle numbers of order 2, T(n, n) = 1, T(n, k) = 0 if k < 0 or k > n, otherwise T(n, k) = T(n-1, k-1) + (n-1)^2*T(n-1, k), for 0 <= k <= n.

The programs for A269944, there is no canonical definition to state claims against.
-/

/-! ## A269944.P4913684804599551333

`A008955(A056943(n))-A073424(n)`
-/

namespace A269944.P4913684804599551333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008955 (A056943 n).toNat - A073424 n

end

end A269944.P4913684804599551333

/-! ## A269944.P14795675956603700137

`or(A163352(A064045(n)²)², char[3^n-1])`
-/

namespace A269944.P14795675956603700137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A163352 (A064045 n ^ 2).toNat ^ 2) ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A269944.P14795675956603700137

/-! ## A269944.P6259251150411375045

`A293517(A143395(n))+A151755(n)`
-/

namespace A269944.P6259251150411375045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293517 (A143395 n).toNat + A151755 n

end

end A269944.P6259251150411375045

/-! ## A269944.P721059606435136683

`A354794(n)+A326545(A269940(n))`
-/

namespace A269944.P721059606435136683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354794 n + A326545 (A269940 n).toNat

end

end A269944.P721059606435136683

/-! ## A269944.P11234950685627241440

`A000196(A132393(n)^A067693(n))`
-/

namespace A269944.P11234950685627241440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway ((A132393 n : ℚ) ^ (A067693 n : ℤ))).toNat

end

end A269944.P11234950685627241440

/-!
# A269945: Triangle read by rows. Stirling set numbers of order 2, T(n, n) = 1, T(n, k) = 0 if k < 0 or k > n, otherwise T(n, k) = T(n-1, k-1) + k^2*T(n-1, k), for 0 <= k <= n.

The programs for A269945, there is no canonical definition to state claims against.
-/

/-! ## A269945.P18363707640771424783

`A304336(n)/A088218(A002262(n))`
-/

namespace A269945.P18363707640771424783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304336 n : ℚ) / (A088218 (A002262 n).toNat : ℚ)

end

end A269945.P18363707640771424783

/-! ## A269945.P12357153850958665506

`A304336(n)/A088218(A144328(n+1))`
-/

namespace A269945.P12357153850958665506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304336 n : ℚ) / (A088218 (A144328 (n + 1)).toNat : ℚ)

end

end A269945.P12357153850958665506

/-! ## A269945.P8549154989181835149

`A387597(n)/A392337(n)*A394692(n)`
-/

namespace A269945.P8549154989181835149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A387597 n : ℚ) / (A392337 n : ℚ) * (A394692 n : ℚ)

end

end A269945.P8549154989181835149

/-! ## A269945.P16176602844422833066

`A394823(n)/A130270(n+1)`
-/

namespace A269945.P16176602844422833066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A394823 n : ℚ) / (A130270 (n + 1) : ℚ)

end

end A269945.P16176602844422833066

/-! ## A269945.P344688518492337219

`A394823(n)/A144328(n+1)`
-/

namespace A269945.P344688518492337219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A394823 n : ℚ) / (A144328 (n + 1) : ℚ)

end

end A269945.P344688518492337219

/-!
# A269947: Triangle read by rows, Stirling cycle numbers of order 3, T(n,n) = 1, T(n,k) = 0 if kn, otherwise T(n,k) = T(n-1,k-1)+(n-1)^3*T(n-1,k), for n>=0 and 0<=k<=n.

The programs for A269947, there is no canonical definition to state claims against.
-/

/-! ## A269947.P8588520793126363050

`A264430(n)^Δ[A138851(n+6)]`
-/

namespace A269947.P8588520793126363050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138851 (n + 6)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264430 n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A269947.P8588520793126363050

/-! ## A269947.P1973732282927765871

`A132393(n)^A010693(A001094(n))`
-/

namespace A269947.P1973732282927765871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132393 n : ℚ) ^ (A010693 (A001094 n).toNat : ℤ)

end

end A269947.P1973732282927765871

/-! ## A269947.P443999632864162989

`A132393(n)^A000032(A105023(n))`
-/

namespace A269947.P443999632864162989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132393 n : ℚ) ^ (A000032 (A105023 n).toNat : ℤ)

end

end A269947.P443999632864162989

/-! ## A269947.P14312776462324053302

`A132393(n)^A020639(A092566(n))`
-/

namespace A269947.P14312776462324053302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132393 n : ℚ) ^ (A020639 (A092566 n).toNat : ℤ)

end

end A269947.P14312776462324053302

/-! ## A269947.P5376689245981914512

`A132393(n)^A002995(A127008(n))`
-/

namespace A269947.P5376689245981914512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132393 n : ℚ) ^ (A002995 (A127008 n).toNat : ℤ)

end

end A269947.P5376689245981914512

/-!
# A269948: Triangle read by rows, Stirling set numbers of order 3, T(n,n) = 1, T(n,k) = 0 if kn, otherwise T(n,k) = T(n-1,k-1)+k^3*T(n-1, k), for n>=0 and 0<=k<=n.

The programs for A269948, there is no canonical definition to state claims against.
-/

/-! ## A269948.P4087780032691507206

`A023001(A097805(n)^n^(n%2))`
-/

namespace A269948.P4087780032691507206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 (A097805 n ^ n ^ (n % 2)).toNat

end

end A269948.P4087780032691507206

/-! ## A269948.P6719844352884204183

`and(A256893(n), A304931(∑[4*n+5]))`
-/

namespace A269948.P6719844352884204183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A256893 n) (A304931 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A269948.P6719844352884204183

/-! ## A269948.P13605370465586082396

`A033045(A048993(n)^A019427(n))`
-/

namespace A269948.P13605370465586082396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 (SequenceMachineLib.roundAway ((A048993 n : ℚ) ^ (A019427 n : ℤ))).toNat

end

end A269948.P13605370465586082396

/-! ## A269948.P11576282492754588658

`A023001(A097805(n)^A019427(n))`
-/

namespace A269948.P11576282492754588658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 (SequenceMachineLib.roundAway ((A097805 n : ℚ) ^ (A019427 n : ℤ))).toNat

end

end A269948.P11576282492754588658

/-! ## A269948.P9435201251515952282

`A033045(A048993(n)^A058281(n))`
-/

namespace A269948.P9435201251515952282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 (SequenceMachineLib.roundAway ((A048993 n : ℚ) ^ (A058281 n : ℤ))).toNat

end

end A269948.P9435201251515952282

/-!
# A269949: Triangle read by rows, T(n,k) = denominator(binomial(-1/2, n-k))*binomial(n-1/2, k-1/2), for n>=0 and 0<=k<=n.

The programs for A269949, there is no canonical definition to state claims against.
-/

/-! ## A269949.P16515985024630842481

`lcm(8, A046521(n))/8`
-/

namespace A269949.P16515985024630842481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 8 (A046521 n) : ℚ) / 8

end

end A269949.P16515985024630842481

/-! ## A269949.P3838956509333007038

`gcd(A046521(n), A049606(n))`
-/

namespace A269949.P3838956509333007038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046521 n) (A049606 n)

end

end A269949.P3838956509333007038

/-! ## A269949.P13592833969511800764

`gcd(2*A046521(n), A112292(n))`
-/

namespace A269949.P13592833969511800764
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A046521 n) (A112292 n)

end

end A269949.P13592833969511800764

/-! ## A269949.P14089082503797752119

`A046521(n)/A001316(A025581(n))`
-/

namespace A269949.P14089082503797752119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046521 n : ℚ) / (A001316 (A025581 n).toNat : ℚ)

end

end A269949.P14089082503797752119

/-! ## A269949.P8932666396408527546

`A046521(n)/A060632(A099375(n))`
-/

namespace A269949.P8932666396408527546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046521 n : ℚ) / (A060632 (A099375 n).toNat : ℚ)

end

end A269949.P8932666396408527546

/-! ## A269949.P16923822539329418267

`gcd(A000027(A046521(n)), A112292(n))`
-/

namespace A269949.P16923822539329418267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (A046521 n).toNat) (A112292 n)

end

end A269949.P16923822539329418267

/-!
# A269950: Triangle read by rows, T(n,k) = denominator(binomial(1/2,n-k))*binomial(n+1/2, k+1/2), for n>=0 and 0<=k<=n.

The programs for A269950, there is no canonical definition to state claims against.
-/

/-! ## A269950.P11257710274513210425

`A269949(comp[∑[n]])`
-/

namespace A269950.P11257710274513210425
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269949 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A269950.P11257710274513210425

/-! ## A269950.P49553101749899490

`or(1, A269949(A014132(n+1)))`
-/

namespace A269950.P49553101749899490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A269949 (A014132 (n + 1)).toNat)

end

end A269950.P49553101749899490

/-! ## A269950.P15793449693747735373

`gcd(A151878(n), A269949(A014132(n+1)))`
-/

namespace A269950.P15793449693747735373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151878 n) (A269949 (A014132 (n + 1)).toNat)

end

end A269950.P15793449693747735373

/-! ## A269950.P6792136263546365924

`A269949(A014132(n+1))%A000045(n+5)`
-/

namespace A269950.P6792136263546365924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269949 (A014132 (n + 1)).toNat) (A000045 (n + 5))

end

end A269950.P6792136263546365924

/-! ## A269950.P4330069080316835937

`A269949(A014132(n+1))+A000007(2*(n+1))`
-/

namespace A269950.P4330069080316835937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269949 (A014132 (n + 1)).toNat + A000007 (2 * (n + 1))

end

end A269950.P4330069080316835937

/-!
# A269951: Triangle read by rows, T(n,k) = Sum_{j=0..n} (-1)^(n-j)*C(-j,-n)*S1(j,k), S1 the Stirling cycle numbers A132393, for n>=0 and 0<=k<=n.

The programs for A269951, there is no canonical definition to state claims against.
-/

/-! ## A269951.P3330196027486119418

`A113221(A184962(n)+A004247(n))`
-/

namespace A269951.P3330196027486119418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113221 (A184962 n + A004247 n).toNat

end

end A269951.P3330196027486119418

/-! ## A269951.P549468754866264517

`A331362(A093729(n)*A156188(n))`
-/

namespace A269951.P549468754866264517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331362 (A093729 n * A156188 n).toNat

end

end A269951.P549468754866264517

/-! ## A269951.P132355828487735251

`A331362(lcm(A093729(n), A156188(n)))`
-/

namespace A269951.P132355828487735251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331362 (Int.lcm (A093729 n) (A156188 n))

end

end A269951.P132355828487735251

/-! ## A269951.P140697750042460464

`A167151(C(A271703(n), A271954(n+2)))`
-/

namespace A269951.P140697750042460464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167151 (Nat.choose (A271703 n).toNat (A271954 (n + 2)).toNat)

end

end A269951.P140697750042460464

/-! ## A269951.P8499277670845583957

`∑{d}[A245667(n), A039735(#)]`
-/

namespace A269951.P8499277670845583957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A039735 d

end

end A269951.P8499277670845583957

/-!
# A269952: Triangle read by rows, T(n,k) = Sum_{j=0..n} (-1)^(n-j)*C(-j,-n)*S2(j,k), S2 the Stirling set numbers A048993, for n>=0 and 0<=k<=n.

The programs for A269952, there is no canonical definition to state claims against.
-/

/-! ## A269952.P1543249762565379181

`A008277(n+1)-A048993(n+1)`
-/

namespace A269952.P1543249762565379181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) - A048993 (n + 1)

end

end A269952.P1543249762565379181

/-! ## A269952.P888795724923293289

`A048993(comp[∑[n]])-A048993(n+1)`
-/

namespace A269952.P888795724923293289
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A048993 (n + 1)

end

end A269952.P888795724923293289

/-! ## A269952.P2356798030484029174

`A048993(comp[C(n, 2)])+(2*n)%2-A048993(n+1)`
-/

namespace A269952.P2356798030484029174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + ((2 * n % 2 : ℕ) : ℤ) - A048993 (n + 1)

end

end A269952.P2356798030484029174

/-! ## A269952.P3088459539157971876

`A008277(n+1)-A106800(A061579(n+1))`
-/

namespace A269952.P3088459539157971876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) - A106800 (A061579 (n + 1)).toNat

end

end A269952.P3088459539157971876

/-! ## A269952.P9490686750690159453

`A048993(n)+A002262(n)*A048993(n+1)`
-/

namespace A269952.P9490686750690159453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n + A002262 n * A048993 (n + 1)

end

end A269952.P9490686750690159453

/-! ## A269952.P16567717042569729918

`A285012(comp[A061885(n)])-A048993(n+1)`
-/

namespace A269952.P16567717042569729918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285012 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - A048993 (n + 1)

end

end A269952.P16567717042569729918

/-! ## A269952.P10740968730124395377

`A008278(A038722(n+1))-A048993(n+1)`
-/

namespace A269952.P10740968730124395377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008278 (A038722 (n + 1)).toNat - A048993 (n + 1)

end

end A269952.P10740968730124395377

/-! ## A269952.P2335672099366749400

`A008278(A061579(n)+1)-A048993(n+1)`
-/

namespace A269952.P2335672099366749400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008278 (A061579 n + 1).toNat - A048993 (n + 1)

end

end A269952.P2335672099366749400

/-! ## A269952.P7427544940212799261

`A363849(n)/A007318(n)-A048993(n+1)`
-/

namespace A269952.P7427544940212799261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363849 n : ℚ) / (A007318 n : ℚ) - (A048993 (n + 1) : ℚ)

end

end A269952.P7427544940212799261

/-! ## A269952.P8816647688864115581

`A136011(A056537(n+1))-A048993(n+1)`
-/

namespace A269952.P8816647688864115581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136011 (A056537 (n + 1)).toNat - A048993 (n + 1)

end

end A269952.P8816647688864115581

/-!
# A269953: Triangle read by rows: T(n, k) = Sum_{j=0..n} binomial(-j-1, -n-1)*S1(j, k) where S1 are the Stirling cycle numbers A132393.

The programs for A269953, there is no canonical definition to state claims against.
-/

/-! ## A269953.P14696725081433232442

`A097610(n)-A014707(A270339(2*(n+2)))`
-/

namespace A269953.P14696725081433232442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097610 n - A014707 (A270339 (2 * (n + 2))).toNat

end

end A269953.P14696725081433232442

/-! ## A269953.P14090057652429198755

`(and(2, comp[∑[n]]+n)-1)*A122908(A264698(n+1))`
-/

namespace A269953.P14090057652429198755
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1) * A122908 (A264698 (n + 1)).toNat

end

end A269953.P14090057652429198755

/-! ## A269953.P8947636556464570707

`A270417(A102705(2*n+1))+and(2, comp[∑[n]]+n)-1`
-/

namespace A269953.P8947636556464570707
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (A102705 (2 * n + 1)).toNat + ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1)

end

end A269953.P8947636556464570707

/-! ## A269953.P8089891478198400755

`A097807(n)+A011745(A000129(n))`
-/

namespace A269953.P8089891478198400755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n + A011745 (A000129 n).toNat

end

end A269953.P8089891478198400755

/-! ## A269953.P13517893050019048273

`A168561(n)-A010051(A014137(n))`
-/

namespace A269953.P13517893050019048273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168561 n - A010051 (A014137 n).toNat

end

end A269953.P13517893050019048273

/-!
# A269954: Triangle read by rows, T(n,k) = Sum_{j=0..n} C(-j,-n)*S1(j,k), S1 the Stirling cycle numbers A132393, for n>=0 and 0<=k<=n.

The programs for A269954, there is no canonical definition to state claims against.
-/

/-! ## A269954.P2928610881188445683

`A228110(A059034(n))`
-/

namespace A269954.P2928610881188445683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228110 (A059034 n).toNat

end

end A269954.P2928610881188445683

/-! ## A269954.P1162746026622740869

`∑{e}[A214699(A214753(n)), #]`
-/

namespace A269954.P1162746026622740869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214699 (A214753 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A269954.P1162746026622740869

/-! ## A269954.P10501928012453374172

`A316441(4^A267617(n+1))`
-/

namespace A269954.P10501928012453374172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A267617 (n + 1) : ℤ))).toNat

end

end A269954.P10501928012453374172

/-! ## A269954.P12332207934014904465

`A122203((A122203(n)+1)*A084938(n))`
-/

namespace A269954.P12332207934014904465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122203 ((A122203 n + 1) * A084938 n).toNat

end

end A269954.P12332207934014904465

/-! ## A269954.P3015735414763804083

`A034254(n+1)-A010059(A153663(n+1))`
-/

namespace A269954.P3015735414763804083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034254 (n + 1) - A010059 (A153663 (n + 1)).toNat

end

end A269954.P3015735414763804083

/-!
# A269955: Triangle read by rows, T(n, k) = S(k, n) with S(n, n) = 1, S(0, n) = 0 and otherwise S(k,n) = Sum_{i=1..n-k+1} k^i*S(k-1, n-i), for n>=0 and 0<=k<=n.

The programs for A269955, there is no canonical definition to state claims against.
-/

/-! ## A269955.P16902750981819494481

`A102705(A285824(n))+A037957(A151511(n))`
-/

namespace A269955.P16902750981819494481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 (A285824 n).toNat + A037957 (A151511 n).toNat

end

end A269955.P16902750981819494481

/-! ## A269955.P16706661620021431181

`A053186(A048993(n)*A095121(A048993(n)))`
-/

namespace A269955.P16706661620021431181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A048993 n * A095121 (A048993 n).toNat).toNat

end

end A269955.P16706661620021431181

/-! ## A269955.P14271265874630068547

`A007954(A355350(n*a(n-1)))` with `a(0)=1`
-/

namespace A269955.P14271265874630068547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007954 (A355350 ((n : ℤ) * a (n - 1)).toNat).toNat

end

end A269955.P14271265874630068547

/-! ## A269955.P10659289945762490834

`A004275(A122542(n*a(log2(1/2)+n)))` with `a(0)=1`
-/

namespace A269955.P10659289945762490834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004275 (A122542 ((n : ℤ) * a (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ) + (n : ℝ))).toNat).toNat).toNat

end

end A269955.P10659289945762490834

/-! ## A269955.P8590311180034685194

`A048993(n)*A076259(A290550(n))`
-/

namespace A269955.P8590311180034685194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n * A076259 (A290550 n).toNat

end

end A269955.P8590311180034685194

/-!
# A269956: Triangle read by rows, T(n,k) = binomial(3*n,n+k) for n>=0 and 0<=k<=n.

The programs for A269956, the canonical program `A269956.P6629693362323519986` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269956 has offset 0).

The definition of A269956 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269956.P6629693362323519986

`A074909(A083920(n)+A279891(n)²)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A269956

/-- `A074909(A083920(n)+A279891(n)²)` -/
def P6629693362323519986.Spec : Prop :=
  ∀ n, P6629693362323519986.a n = A269956 n

theorem P6629693362323519986.correct : P6629693362323519986.Spec := by
  intro n
  simp only [A269956]

end A269956

/-! ## A269956.P15850561315271158312

`A007318(A068377(A002024(n+1))+n)`
-/

namespace A269956.P15850561315271158312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A068377 (A002024 (n + 1)).toNat + (n : ℤ)).toNat

end

end A269956.P15850561315271158312

namespace A269956

/-- `A007318(A068377(A002024(n+1))+n)` -/
def P15850561315271158312.Spec : Prop :=
  ∀ n, P15850561315271158312.a n = A269956 n

end A269956

/-! ## A269956.P1258492651123843294

`A007318(A002378(2*A003056(n))+n)`
-/

namespace A269956.P1258492651123843294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A002378 (2 * A003056 n).toNat + (n : ℤ)).toNat

end

end A269956.P1258492651123843294

namespace A269956

/-- `A007318(A002378(2*A003056(n))+n)` -/
def P1258492651123843294.Spec : Prop :=
  ∀ n, P1258492651123843294.a n = A269956 n

end A269956

/-! ## A269956.P6945409415349764375

`A007318(A060798(2*A003056(n)+1)+n)`
-/

namespace A269956.P6945409415349764375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A060798 (2 * A003056 n + 1).toNat + (n : ℤ)).toNat

end

end A269956.P6945409415349764375

namespace A269956

/-- `A007318(A060798(2*A003056(n)+1)+n)` -/
def P6945409415349764375.Spec : Prop :=
  ∀ n, P6945409415349764375.a n = A269956 n

end A269956

/-! ## A269956.P9450288645092085588

`A097805(A007401(n+1)+A131507(n)²)`
-/

namespace A269956.P9450288645092085588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A007401 (n + 1) + A131507 n ^ 2).toNat

end

end A269956.P9450288645092085588

namespace A269956

/-- `A097805(A007401(n+1)+A131507(n)²)` -/
def P9450288645092085588.Spec : Prop :=
  ∀ n, P9450288645092085588.a n = A269956 n

end A269956

/-!
# A269958: Number of tilings of an 8 X 3n rectangle using 8n trominoes of any shape.

The programs for A269958, there is no canonical definition to state claims against.
-/

/-! ## A269958.P16661711588030819352

`record[A233320(A155212(n)-1)]`
-/

namespace A269958.P16661711588030819352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233320 (A155212 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269958.P16661711588030819352

/-! ## A269958.P13302324816546823557

`record[A233320(A052905(n)+n)]`
-/

namespace A269958.P13302324816546823557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233320 (A052905 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269958.P13302324816546823557

/-!
# A269960: Integers n such that the n-th golden rectangle number is the sum of 4 but no fewer nonzero squares.

The programs for A269960, there is no canonical definition to state claims against.
-/

/-! ## A269960.P7036903614975988728

`lt[A028387(n), A138988(A151898(n+2)²)]`
-/

namespace A269960.P7036903614975988728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138988 (A151898 (n + 2) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A269960.P7036903614975988728

/-! ## A269960.P1792751386748201913

`A016969(n)-A105592(A036370(2*(n+1)))`
-/

namespace A269960.P1792751386748201913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n - A105592 (A036370 (2 * (n + 1))).toNat

end

end A269960.P1792751386748201913

/-! ## A269960.P7054467729180335652

`record[6*n+4-A034521(2*n+1)]`
-/

namespace A269960.P7054467729180335652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 4 : ℤ) - A034521 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269960.P7054467729180335652

/-! ## A269960.P17324992552650056564

`eq[A135694(n), A174431(n)]`
-/

namespace A269960.P17324992552650056564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135694 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174431 (n + 1753)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269960.P17324992552650056564

/-! ## A269960.P3555810008512561324

`eq[3, A020639(A118759(n+17))]`
-/

namespace A269960.P3555810008512561324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A118759 (n + 17)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269960.P3555810008512561324

/-!
# A269961: Decimal representation of the n-th iteration of Conway's Game of Life starting with two adjacent two-way infinite rows of ON cells.

The programs for A269961, there is no canonical definition to state claims against.
-/

/-! ## A269961.P17135303716534622391

`A048735(A267365(n+1))`
-/

namespace A269961.P17135303716534622391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048735 (A267365 (n + 1)).toNat

end

end A269961.P17135303716534622391

/-!
# A269962: Start with a square; at each stage add a square at each expandable vertex so that the ratio of the side of the squares at stage n+1 and at stage n is the golden ratio phi=0.618...; a(n) is the number of squares at n-th stage.

The programs for A269962, the canonical program `A269962.P8111660266029043890` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269962 has offset 1).

The definition of A269962 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 276 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269962.P8111660266029043890

`∑[A339124(n)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A269962

/-- `∑[A339124(n)]` -/
def P8111660266029043890.Spec : Prop :=
  ∀ n, P8111660266029043890.a n = A269962 (n + 1)

theorem P8111660266029043890.correct : P8111660266029043890.Spec := by
  intro n
  simp only [A269962, Nat.add_sub_cancel]

end A269962

/-! ## A269962.P9162643519597250548

`A339124(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A269962.P9162643519597250548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A339124 n + a (A023443 n).toNat

end

end A269962.P9162643519597250548

namespace A269962

/-- `A339124(n)+a(A023443(n))` -/
def P9162643519597250548.Spec : Prop :=
  ∀ n, P9162643519597250548.a n = A269962 (n + 1)

end A269962

/-! ## A269962.P4328177617710793155

`A339124(A000027(n))+a(n-1)` with `a(0)=1`
-/

namespace A269962.P4328177617710793155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A339124 (A000027 n).toNat + a (n - 1)

end

end A269962.P4328177617710793155

namespace A269962

/-- `A339124(A000027(n))+a(n-1)` -/
def P4328177617710793155.Spec : Prop :=
  ∀ n, P4328177617710793155.a n = A269962 (n + 1)

end A269962

/-! ## A269962.P8948960000205077308

`A339124(A028310(n))+a(n-1)` with `a(0)=1`
-/

namespace A269962.P8948960000205077308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A339124 (A028310 n).toNat + a (n - 1)

end

end A269962.P8948960000205077308

namespace A269962

/-- `A339124(A028310(n))+a(n-1)` -/
def P8948960000205077308.Spec : Prop :=
  ∀ n, P8948960000205077308.a n = A269962 (n + 1)

end A269962

/-! ## A269962.P11364024858995404272

`A339124(n)+a(A005843(n)-(n+1))` with `a(0)=1`
-/

namespace A269962.P11364024858995404272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A339124 n + a (A005843 n - (n + 1 : ℤ)).toNat

end

end A269962.P11364024858995404272

namespace A269962

/-- `A339124(n)+a(A005843(n)-(n+1))` -/
def P11364024858995404272.Spec : Prop :=
  ∀ n, P11364024858995404272.a n = A269962 (n + 1)

end A269962

/-!
# A269963: Start with a square; at each stage add a square at each expandable vertex so that the ratio of the side of the squares at stage n+1 and at stage n is the golden ratio phi=0.618...; a(n) is the number of squares in a portion of the n-th stage (see below).

The programs for A269963, the canonical program `A269963.P4004851519121291661` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269963 has offset 1).

The definition of A269963 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A269963.P4004851519121291661

`2*a(n-1)+a(n-2)-2*a(n-3)+2*a(n-4)+2*a(n-5)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=16, a(4)=37`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A269963

/-- `2*a(n-1)+a(n-2)-2*a(n-3)+2*a(n-4)+2*a(n-5)` -/
def P4004851519121291661.Spec : Prop :=
  ∀ n, P4004851519121291661.a n = A269963 (n + 1)

theorem P4004851519121291661.correct : P4004851519121291661.Spec := by
  intro n
  simp only [A269963, Nat.add_sub_cancel]

end A269963

/-! ## A269963.P18151230940331415718

`∑[2*A269964(n+1)-1]`
-/

namespace A269963.P18151230940331415718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A269964 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269963.P18151230940331415718

namespace A269963

/-- `∑[2*A269964(n+1)-1]` -/
def P18151230940331415718.Spec : Prop :=
  ∀ n, P18151230940331415718.a n = A269963 (n + 1)

end A269963

/-! ## A269963.P15079682849933461921

`∑[or(-1, A035363(n))+2*A269964(n+1)]`
-/

namespace A269963.P15079682849933461921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-1) (A035363 n) + 2 * A269964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269963.P15079682849933461921

namespace A269963

/-- `∑[or(-1, A035363(n))+2*A269964(n+1)]` -/
def P15079682849933461921.Spec : Prop :=
  ∀ n, P15079682849933461921.a n = A269963 (n + 1)

end A269963

/-! ## A269963.P415438445483119306

`∑[A163747(C(n, n²)+1)+2*A269964(n+1)]`
-/

namespace A269963.P415438445483119306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163747 (Nat.choose n (n ^ 2) + 1) + 2 * A269964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269963.P415438445483119306

namespace A269963

/-- `∑[A163747(C(n, n²)+1)+2*A269964(n+1)]` -/
def P415438445483119306.Spec : Prop :=
  ∀ n, P415438445483119306.a n = A269963 (n + 1)

end A269963

/-! ## A269963.P16968260672881495628

`∑[A008683(A007353(n+1))+2*A269964(n+1)]`
-/

namespace A269963.P16968260672881495628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007353 (n + 1)).toNat + 2 * A269964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269963.P16968260672881495628

namespace A269963

/-- `∑[A008683(A007353(n+1))+2*A269964(n+1)]` -/
def P16968260672881495628.Spec : Prop :=
  ∀ n, P16968260672881495628.a n = A269963 (n + 1)

end A269963

/-!
# A269964: Start with a square; at each stage add a square at each expandable vertex so that the ratio of the side of the squares at stage n+1 and at stage n is the golden ratio phi=0.618...; a(n) is the number of squares in a portion of the n-th stage (see below).

The programs for A269964, the canonical program `A269964.P3716349903523619803` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269964 has offset 1).

The definition of A269964 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A269964.P3716349903523619803

`3*a(n-1)-a(n-2)-3*a(n-3)+4*a(n-4)-2*a(n-6)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=5, a(4)=11, a(5)=23`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A269964

/-- `3*a(n-1)-a(n-2)-3*a(n-3)+4*a(n-4)-2*a(n-6)` -/
def P3716349903523619803.Spec : Prop :=
  ∀ n, P3716349903523619803.a n = A269964 (n + 1)

theorem P3716349903523619803.correct : P3716349903523619803.Spec := by
  intro n
  simp only [A269964, Nat.add_sub_cancel]

end A269964

/-! ## A269964.P6903207997984533952

`A269963(n+1)-A025480(∑[A339124(n)])`
-/

namespace A269964.P6903207997984533952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269963 (n + 1) - A025480 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A269964.P6903207997984533952

namespace A269964

/-- `A269963(n+1)-A025480(∑[A339124(n)])` -/
def P6903207997984533952.Spec : Prop :=
  ∀ n, P6903207997984533952.a n = A269964 (n + 1)

end A269964

/-! ## A269964.P6881410514427675384

`A269963(n+1)-A059169(∑[A339124(n)])`
-/

namespace A269964.P6881410514427675384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269963 (n + 1) - A059169 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A269964.P6881410514427675384

namespace A269964

/-- `A269963(n+1)-A059169(∑[A339124(n)])` -/
def P6881410514427675384.Spec : Prop :=
  ∀ n, P6881410514427675384.a n = A269964 (n + 1)

end A269964

/-! ## A269964.P7466096311268936105

`A269963(n+1)-A025480(A269962(n+1))`
-/

namespace A269964.P7466096311268936105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269963 (n + 1) - A025480 (A269962 (n + 1)).toNat

end

end A269964.P7466096311268936105

namespace A269964

/-- `A269963(n+1)-A025480(A269962(n+1))` -/
def P7466096311268936105.Spec : Prop :=
  ∀ n, P7466096311268936105.a n = A269964 (n + 1)

end A269964

/-!
# A269965: Start with a square; at each stage add a square at each expandable vertex so that the ratio of the side of the squares at stage n+1 and at stage n is the golden ratio phi=0.618...; a(n) is the number of squares in a portion of the n-th stage (see below).

The programs for A269965, the canonical program `A269965.P4222994371102283308` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269965 has offset 5).

The definition of A269965 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A269965.P4222994371102283308

`3*a(n-1)-a(n-2)-3*a(n-3)+4*a(n-4)-2*a(n-6)` with `a(0)=1, a(1)=3, a(2)=10, a(3)=26, a(4)=63, a(5)=145`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A269965

/-- `3*a(n-1)-a(n-2)-3*a(n-3)+4*a(n-4)-2*a(n-6)` -/
def P4222994371102283308.Spec : Prop :=
  ∀ n, P4222994371102283308.a n = A269965 (n + 5)

theorem P4222994371102283308.correct : P4222994371102283308.Spec := by
  intro n
  simp only [A269965, Nat.add_sub_cancel]

end A269965

/-! ## A269965.P14830687852529245929

`∑[A269963(n+1)]`
-/

namespace A269965.P14830687852529245929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269965.P14830687852529245929

namespace A269965

/-- `∑[A269963(n+1)]` -/
def P14830687852529245929.Spec : Prop :=
  ∀ n, P14830687852529245929.a n = A269965 (n + 5)

end A269965

/-! ## A269965.P17589285806681448171

`∑[∑[2*A269964(n+1)-1]]`
-/

namespace A269965.P17589285806681448171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A269964 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269965.P17589285806681448171

namespace A269965

/-- `∑[∑[2*A269964(n+1)-1]]` -/
def P17589285806681448171.Spec : Prop :=
  ∀ n, P17589285806681448171.a n = A269965 (n + 5)

end A269965

/-! ## A269965.P7499178969604203848

`∑[record[A269963(A134478(n))]]`
-/

namespace A269965.P7499178969604203848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269963 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269965.P7499178969604203848

namespace A269965

/-- `∑[record[A269963(A134478(n))]]` -/
def P7499178969604203848.Spec : Prop :=
  ∀ n, P7499178969604203848.a n = A269965 (n + 5)

end A269965

/-! ## A269965.P11822773905267231378

`∑[record[A269963(A144968(n))]]`
-/

namespace A269965.P11822773905267231378
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269963 (A144968 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269965.P11822773905267231378

namespace A269965

/-- `∑[record[A269963(A144968(n))]]` -/
def P11822773905267231378.Spec : Prop :=
  ∀ n, P11822773905267231378.a n = A269965 (n + 5)

end A269965

/-! ## A269965.P6002093973385840824

`∑[record[A269963(A318274(n))]]`
-/

namespace A269965.P6002093973385840824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269963 (A318274 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269965.P6002093973385840824

namespace A269965

/-- `∑[record[A269963(A318274(n))]]` -/
def P6002093973385840824.Spec : Prop :=
  ∀ n, P6002093973385840824.a n = A269965 (n + 5)

end A269965

/-!
# A269966: Integers n such that the n-th golden rectangle number is the sum of 2 nonzero squares.

The programs for A269966, there is no canonical definition to state claims against.
-/

/-! ## A269966.P10901053978484181934

`∩[A124134(n+1)-1, A124134(n+2)]`
-/

namespace A269966.P10901053978484181934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124134 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124134 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269966.P10901053978484181934

/-! ## A269966.P3446168673967357168

`A346132(A206332(n+1)+A184974(n))`
-/

namespace A269966.P3446168673967357168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346132 (A206332 (n + 1) + A184974 n).toNat

end

end A269966.P3446168673967357168

/-!
# A269967: Indices of zeros in A269783.

The programs for A269967, there is no canonical definition to state claims against.
-/

/-! ## A269967.P14492049617315043070

`eq[0, A269783(n)]`
-/

namespace A269967.P14492049617315043070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269783 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269967.P14492049617315043070

/-! ## A269967.P11636316752935447611

`lt[A040002(abs(A269783(n))), 3]`
-/

namespace A269967.P11636316752935447611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 |A269783 n|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A269967.P11636316752935447611

/-! ## A269967.P1973807698272198055

`lt[A269783(n)², A056753(2*n)]`
-/

namespace A269967.P1973807698272198055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269783 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056753 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A269967.P1973807698272198055

/-! ## A269967.P17468468541172637356

`lt[abs(A269783(n)), A164965(3*(n+1))]`
-/

namespace A269967.P17468468541172637356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A269783 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164965 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A269967.P17468468541172637356

/-! ## A269967.P15021069568884176891

`lt[A269783(n)², A329314(n)]`
-/

namespace A269967.P15021069568884176891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269783 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329314 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A269967.P15021069568884176891

/-!
# A269970: Factorial-nested interval sequence of 1/e.

The programs for A269970, there is no canonical definition to state claims against.
-/

/-! ## A269970.P7578238632166522425

`A051064(∑[A004962(2*n+1)])`
-/

namespace A269970.P7578238632166522425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004962 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A269970.P7578238632166522425

/-! ## A269970.P9159858778041885712

`A168570(A002943(A043718(n+1)))`
-/

namespace A269970.P9159858778041885712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168570 (A002943 (A043718 (n + 1)).toNat).toNat

end

end A269970.P9159858778041885712

/-! ## A269970.P3414759007001742843

`A051064(A153679(2*n+1)+A000124(2*n+1))`
-/

namespace A269970.P3414759007001742843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (A153679 (2 * n + 1) + A000124 (2 * n + 1)).toNat

end

end A269970.P3414759007001742843

/-! ## A269970.P2701969791295487303

`A051064(A153679(2*n+3))*A051064(n+1)`
-/

namespace A269970.P2701969791295487303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (A153679 (2 * n + 3)).toNat * A051064 (n + 1)

end

end A269970.P2701969791295487303

/-! ## A269970.P5743017863984857297

`val(A140673((n+1)*Δ[n^3]), 3)`
-/

namespace A269970.P5743017863984857297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A140673 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat).toNat 3

end

end A269970.P5743017863984857297

/-!
# A269971: Factorial-nested interval sequence of e-2.

The programs for A269971, there is no canonical definition to state claims against.
-/

/-! ## A269971.P7947770125045808678

`A259154(31*A051432(n))`
-/

namespace A269971.P7947770125045808678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259154 (31 * A051432 n).toNat

end

end A269971.P7947770125045808678

/-! ## A269971.P16714947346389486081

`A048821(A157192(n)*A288118(n+1))`
-/

namespace A269971.P16714947346389486081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048821 (A157192 n * A288118 (n + 1)).toNat

end

end A269971.P16714947346389486081

/-! ## A269971.P15050156761072571227

`gcd(record[A089239(n)], A298640(n))`
-/

namespace A269971.P15050156761072571227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089239 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A298640 n)

end

end A269971.P15050156761072571227

/-! ## A269971.P5382268334478499915

`A051903(A001157(n+1)*A284036(n+1))`
-/

namespace A269971.P5382268334478499915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A001157 (n + 1) * A284036 (n + 1)).toNat

end

end A269971.P5382268334478499915

/-! ## A269971.P15923235510325525872

`gcd(A007494(n), A365663(A219694(n+3)))`
-/

namespace A269971.P15923235510325525872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007494 n) (A365663 (A219694 (n + 3)).toNat)

end

end A269971.P15923235510325525872

/-!
# A269972: Factorial-nested interval sequence of 1/Pi.

The programs for A269972, there is no canonical definition to state claims against.
-/

/-! ## A269972.P594592781750741960

`A036037(A286941(n+1)+A060818(n))`
-/

namespace A269972.P594592781750741960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036037 (A286941 (n + 1) + A060818 n).toNat

end

end A269972.P594592781750741960

/-! ## A269972.P14072009276467428675

`gcd(A046691(A143961(n)), A047345(n+1))`
-/

namespace A269972.P14072009276467428675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046691 (A143961 n).toNat) (A047345 (n + 1))

end

end A269972.P14072009276467428675

/-! ## A269972.P18087549436835924009

`A000189(A145704(n)+A139936(5*n+3))`
-/

namespace A269972.P18087549436835924009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (A145704 n + A139936 (5 * n + 3)).toNat

end

end A269972.P18087549436835924009

/-! ## A269972.P14268256121936400289

`gcd(A051903(A095669(n)), A055999(n))`
-/

namespace A269972.P14268256121936400289
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051903 (A095669 n).toNat) (A055999 n)

end

end A269972.P14268256121936400289

/-! ## A269972.P14411384662300564217

`gcd(A248079(A200756(n+1)), A248086(n))`
-/

namespace A269972.P14411384662300564217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A248079 (A200756 (n + 1)).toNat) (A248086 n)

end

end A269972.P14411384662300564217

/-!
# A269973: Factorial-nested interval sequence of Pi-3.

The programs for A269973, there is no canonical definition to state claims against.
-/

/-! ## A269973.P14425391497388196356

`A325542(A308528(n+1)+2*n)`
-/

namespace A269973.P14425391497388196356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325542 (A308528 (n + 1) + (2 * n : ℤ)).toNat

end

end A269973.P14425391497388196356

/-! ## A269973.P14535357911448931438

`A325542(A308528(n+1)+n+n)`
-/

namespace A269973.P14535357911448931438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325542 (A308528 (n + 1) + (n : ℤ) + (n : ℤ)).toNat

end

end A269973.P14535357911448931438

/-!
# A269974: Factorial-nested interval sequence of sqrt(1/2).

The programs for A269974, there is no canonical definition to state claims against.
-/

/-! ## A269974.P16218651304037091303

`A269975(abs(1-n)+1)`
-/

namespace A269974.P16218651304037091303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269975 (|1 - (n : ℤ)| + 1).toNat

end

end A269974.P16218651304037091303

/-! ## A269974.P3839008444114933699

`gcd(C(2, n), A269975(A028310(n)))`
-/

namespace A269974.P3839008444114933699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 n : ℤ) (A269975 (A028310 n).toNat)

end

end A269974.P3839008444114933699

/-! ## A269974.P11854185633990149390

`A269975(A028310(n))-A000007(n)`
-/

namespace A269974.P11854185633990149390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269975 (A028310 n).toNat - A000007 n

end

end A269974.P11854185633990149390

/-! ## A269974.P7883536184083870438

`A269975(A028310(n))/A054977(n)`
-/

namespace A269974.P7883536184083870438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269975 (A028310 n).toNat : ℚ) / (A054977 n : ℚ)

end

end A269974.P7883536184083870438

/-! ## A269974.P14301336885003275857

`gcd(A000122(n), A269975(A028310(n)))`
-/

namespace A269974.P14301336885003275857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000122 n) (A269975 (A028310 n).toNat)

end

end A269974.P14301336885003275857

/-! ## A269974.P14383940144220528483

`A269975(A028310(n))-A008683((n+1)²)`
-/

namespace A269974.P14383940144220528483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269975 (A028310 n).toNat - A008683 ((n + 1) ^ 2)

end

end A269974.P14383940144220528483

/-! ## A269974.P8224125366056510652

`A269975(A028310(n))/A014963(4*n+2)`
-/

namespace A269974.P8224125366056510652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269975 (A028310 n).toNat : ℚ) / (A014963 (4 * n + 2) : ℚ)

end

end A269974.P8224125366056510652

/-! ## A269974.P15005811863467381717

`A269975(A028310(n))^and(1, A000040(n+1))`
-/

namespace A269974.P15005811863467381717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269975 (A028310 n).toNat : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A269974.P15005811863467381717

/-! ## A269974.P17767713598585730240

`A269975(A028310(n))^A001221(A001316(n))`
-/

namespace A269974.P17767713598585730240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269975 (A028310 n).toNat : ℚ) ^ (A001221 (A001316 n).toNat : ℤ)

end

end A269974.P17767713598585730240

/-! ## A269974.P10080463222363179153

`A020639(A000010(n+2))+A269975(A028310(n))-2`
-/

namespace A269974.P10080463222363179153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 2)).toNat + (A269975 (A028310 n).toNat - 2)

end

end A269974.P10080463222363179153

/-!
# A269975: Factorial-nested interval sequence of -1 + sqrt(2).

The programs for A269975, there is no canonical definition to state claims against.
-/

/-! ## A269975.P12512498862382168021

`A269974(n+2)`
-/

namespace A269975.P12512498862382168021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269974 (n + 2)

end

end A269975.P12512498862382168021

/-! ## A269975.P9308797290940301963

`dr(A269974(2-A001489(n)))`
-/

namespace A269975.P9308797290940301963
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A269974 (2 - A001489 n).toNat)

end

end A269975.P9308797290940301963

/-! ## A269975.P13349020131372848011

`A269974(2-char[1]-A001489(n))-char[1]`
-/

namespace A269975.P13349020131372848011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269974 (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - A001489 n).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A269975.P13349020131372848011

/-! ## A269975.P10092271118309618905

`gcd(A000038(n), A269974(2-A001489(n)))`
-/

namespace A269975.P10092271118309618905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A269974 (2 - A001489 n).toNat)

end

end A269975.P10092271118309618905

/-! ## A269975.P4459672344273310192

`A077129(n)%2*A269974(2-A001489(n))`
-/

namespace A269975.P4459672344273310192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077129 n) 2 * A269974 (2 - A001489 n).toNat

end

end A269975.P4459672344273310192

/-! ## A269975.P344923479202168128

`A007318(C(2, n))*A269974(2-A001489(n))`
-/

namespace A269975.P344923479202168128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A269974 (2 - A001489 n).toNat

end

end A269975.P344923479202168128

/-! ## A269975.P12030886315676754287

`A269974(2-A001489(n))/A007318(C(3, n))`
-/

namespace A269975.P12030886315676754287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269974 (2 - A001489 n).toNat : ℚ) / (A007318 (Nat.choose 3 n) : ℚ)

end

end A269975.P12030886315676754287

/-! ## A269975.P18406689316737408142

`A000041(and(1, 1-n))*A269974(2-A001489(n))`
-/

namespace A269975.P18406689316737408142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.land 1 (1 - (n : ℤ))).toNat * A269974 (2 - A001489 n).toNat

end

end A269975.P18406689316737408142

/-! ## A269975.P18281967426564561188

`A007318(and(1, 1-n))*A269974(2-A001489(n))`
-/

namespace A269975.P18281967426564561188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (1 - (n : ℤ))).toNat * A269974 (2 - A001489 n).toNat

end

end A269975.P18281967426564561188

/-! ## A269975.P11119214575901217343

`A000010(((-1)^n)²)*A269974(2-A001489(n))`
-/

namespace A269975.P11119214575901217343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (((-1) ^ n) ^ 2).toNat * A269974 (2 - A001489 n).toNat

end

end A269975.P11119214575901217343

/-!
# A269976: Factorial-nested interval sequence of sqrt(1/3).

The programs for A269976, there is no canonical definition to state claims against.
-/

/-! ## A269976.P10743293008856144037

`A279316(A213290(n)+n)`
-/

namespace A269976.P10743293008856144037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279316 (A213290 n + (n : ℤ)).toNat

end

end A269976.P10743293008856144037

/-! ## A269976.P10407197891626551995

`A308184(A095365(n+2)+1)`
-/

namespace A269976.P10407197891626551995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308184 (A095365 (n + 2) + 1).toNat

end

end A269976.P10407197891626551995

/-! ## A269976.P13808377805544568344

`A270788(A008747(∑[A000267(n)]))`
-/

namespace A269976.P13808377805544568344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270788 (A008747 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A269976.P13808377805544568344

/-!
# A269977: Factorial-nested interval sequence of -1 + sqrt(3).

The programs for A269977, there is no canonical definition to state claims against.
-/

/-! ## A269977.P9930818398736811215

`gcd(A140720(n+12), A206028(n+13))`
-/

namespace A269977.P9930818398736811215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A140720 (n + 12)) (A206028 (n + 13))

end

end A269977.P9930818398736811215

/-! ## A269977.P15935803141268322471

`gcd(p?[A089605(n)], A089645(3*n+2))`
-/

namespace A269977.P15935803141268322471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089605 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A089645 (3 * n + 2))

end

end A269977.P15935803141268322471

/-! ## A269977.P1720626275371705152

`gcd(A167614(A005898(n)), A311804(n))`
-/

namespace A269977.P1720626275371705152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A167614 (A005898 n).toNat) (A311804 n)

end

end A269977.P1720626275371705152

/-! ## A269977.P3762568309399501758

`A059359(gcd(A291737(n), A311328(n)))`
-/

namespace A269977.P3762568309399501758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059359 (Int.gcd (A291737 n) (A311328 n))

end

end A269977.P3762568309399501758

/-! ## A269977.P16760434495451788054

`A162320(A000032(n+1)*A083312(n+1))`
-/

namespace A269977.P16760434495451788054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162320 (A000032 (n + 1) * A083312 (n + 1)).toNat

end

end A269977.P16760434495451788054

/-!
# A269978: Factorial-nested interval sequence of 1/phi, where phi = golden ratio (A001622).

The programs for A269978, there is no canonical definition to state claims against.
-/

/-! ## A269978.P1710600090730301006

`A134017(and((-1)^n, A037952(n)))`
-/

namespace A269978.P1710600090730301006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134017 (Int.land ((-1) ^ n) (A037952 n)).toNat

end

end A269978.P1710600090730301006

/-! ## A269978.P18234814911500818000

`gcd(A237881(A005246(n)), A290323(n+1))`
-/

namespace A269978.P18234814911500818000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A237881 (A005246 n).toNat) (A290323 (n + 1))

end

end A269978.P18234814911500818000

/-! ## A269978.P784615640574845429

`gcd(A101296(n+1), A328434(A333943(n+1)))`
-/

namespace A269978.P784615640574845429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A101296 (n + 1)) (A328434 (A333943 (n + 1)).toNat)

end

end A269978.P784615640574845429

/-! ## A269978.P9686601762731688367

`gcd(A000037(A069778(n+4)), A276150(n+2))`
-/

namespace A269978.P9686601762731688367
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000037 (A069778 (n + 4)).toNat) (A276150 (n + 2))

end

end A269978.P9686601762731688367

/-! ## A269978.P15002590717268840577

`gcd(A082498(A286566(3*n+1)), A360953(3*n+5))`
-/

namespace A269978.P15002590717268840577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A082498 (A286566 (3 * n + 1)).toNat) (A360953 (3 * n + 5))

end

end A269978.P15002590717268840577

/-!
# A269982: Factorial fractility of n.

The programs for A269982, there is no canonical definition to state claims against.
-/

/-! ## A269982.P4645353715077071876

`A019269(A257446(n+1)-A046125(n+3))`
-/

namespace A269982.P4645353715077071876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019269 (A257446 (n + 1) - A046125 (n + 3)).toNat

end

end A269982.P4645353715077071876

/-! ## A269982.P7335487845274808582

`A001221(A280568(n)+A020732(n))`
-/

namespace A269982.P7335487845274808582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A280568 n + A020732 n).toNat

end

end A269982.P7335487845274808582

/-! ## A269982.P8545940576385664561

`A001221(A056759(n+1)+A056734(n+1))`
-/

namespace A269982.P8545940576385664561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A056759 (n + 1) + A056734 (n + 1)).toNat

end

end A269982.P8545940576385664561

/-! ## A269982.P7133806669105005270

`A064372(A056759(n+1)+A056734(n+1))`
-/

namespace A269982.P7133806669105005270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064372 (A056759 (n + 1) + A056734 (n + 1)).toNat

end

end A269982.P7133806669105005270

/-! ## A269982.P1289628643959226967

`A162642(A162763(n+1)+A000712(n+1))`
-/

namespace A269982.P1289628643959226967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162642 (A162763 (n + 1) + A000712 (n + 1)).toNat

end

end A269982.P1289628643959226967

/-!
# A269983: Numbers k having factorial fractility A269982(k) = 1.

The programs for A269983, there is no canonical definition to state claims against.
-/

/-! ## A269983.P9489264559852418936

`eq[1, A269982(n+2)]+2`
-/

namespace A269983.P9489264559852418936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269982 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A269983.P9489264559852418936

/-! ## A269983.P9537109559994197677

`record[A020725(n+1)/A269982(n+2)]`
-/

namespace A269983.P9537109559994197677
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020725 (n + 1) : ℚ) / (A269982 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269983.P9537109559994197677

/-! ## A269983.P11044581343253970195

`A028310(record[(n+2)/A269982(n+2)])`
-/

namespace A269983.P11044581343253970195
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A269982 (n + 2) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A269983.P11044581343253970195

/-! ## A269983.P16325800795623865655

`record[A063932(n+2)/A269982(n+2)]`
-/

namespace A269983.P16325800795623865655
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063932 (n + 2) : ℚ) / (A269982 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269983.P16325800795623865655

/-! ## A269983.P6392943884596307293

`record[A133622(2*(n+1))/A269982(n+2)]`
-/

namespace A269983.P6392943884596307293
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133622 (2 * (n + 1)) : ℚ) / (A269982 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269983.P6392943884596307293

/-!
# A269984: Numbers k having factorial fractility A269982(k) = 2.

The programs for A269984, there is no canonical definition to state claims against.
-/

/-! ## A269984.P7324304584044963058

`eq[2, A269982(n+2)]+2`
-/

namespace A269984.P7324304584044963058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269982 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A269984.P7324304584044963058

/-! ## A269984.P11253466952208797442

`eq[2, A269982(n*a(n%2))]` with `a(0)=1, a(1)=1`
-/

namespace A269984.P11253466952208797442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  A269982 ((n : ℤ) * f2 (n % 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269984.P11253466952208797442

/-! ## A269984.P990616052618572076

`eq[2, A269982(gcd(n, n*a(n-1)))]` with `a(0)=1, a(1)=1`
-/

namespace A269984.P990616052618572076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  A269982 (Int.gcd (n : ℤ) ((n : ℤ) * f2 (n - 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269984.P990616052618572076

/-! ## A269984.P8364897633363029213

`eq[2, A269982(A233583(n+1))]`
-/

namespace A269984.P8364897633363029213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269982 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269984.P8364897633363029213

/-! ## A269984.P15647770237558627305

`A009056(eq[2, A269982(n+2)])`
-/

namespace A269984.P15647770237558627305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269982 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269984.P15647770237558627305

/-! ## A269984.P324031927863211971

`A171463(eq[2, A269982(n+2)])`
-/

namespace A269984.P324031927863211971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269982 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269984.P324031927863211971

/-! ## A269984.P16126295808084574290

`A243427(eq[2, A269982(n+2)])`
-/

namespace A269984.P16126295808084574290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269982 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269984.P16126295808084574290

/-!
# A269985: Numbers k having factorial fractility A269982(k) = 3.

The programs for A269985, there is no canonical definition to state claims against.
-/

/-! ## A269985.P2412669339199497268

`eq[3, A269982(n+2)]+2`
-/

namespace A269985.P2412669339199497268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269982 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A269985.P2412669339199497268

/-! ## A269985.P16834894871159738231

`eq[3, A269982(gcd(n, n*a(n-1)))]` with `a(0)=1, a(1)=1`
-/

namespace A269985.P16834894871159738231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  A269982 (Int.gcd (n : ℤ) ((n : ℤ) * f2 (n - 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269985.P16834894871159738231

/-! ## A269985.P829756233060543672

`eq[3, A269982(A233583(n+1))]`
-/

namespace A269985.P829756233060543672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269982 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269985.P829756233060543672

/-! ## A269985.P14743452688316554780

`A009056(eq[3, A269982(n+2)])`
-/

namespace A269985.P14743452688316554780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269982 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269985.P14743452688316554780

/-! ## A269985.P15737260487715767115

`A171463(eq[3, A269982(n+2)])`
-/

namespace A269985.P15737260487715767115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269982 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269985.P15737260487715767115

/-! ## A269985.P5288380046043433184

`A243427(eq[3, A269982(n+2)])`
-/

namespace A269985.P5288380046043433184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269982 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269985.P5288380046043433184

/-!
# A269986: Numbers k having factorial fractility A269982(k) = 4.

The programs for A269986, there is no canonical definition to state claims against.
-/

/-! ## A269986.P4879722282358666796

`eq[4, A269982(n+2)]+2`
-/

namespace A269986.P4879722282358666796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269982 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A269986.P4879722282358666796

/-! ## A269986.P13198723563592251388

`eq[4, A269982(n*a(n%2))]` with `a(0)=1, a(1)=1`
-/

namespace A269986.P13198723563592251388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  A269982 ((n : ℤ) * f2 (n % 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269986.P13198723563592251388

/-! ## A269986.P8664701777002858255

`eq[4, A269982(A233583(n+1))]`
-/

namespace A269986.P8664701777002858255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269982 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269986.P8664701777002858255

/-! ## A269986.P10379907636774252126

`A009056(eq[4, A269982(n+2)])`
-/

namespace A269986.P10379907636774252126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269982 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269986.P10379907636774252126

/-! ## A269986.P12881255732173437147

`A171463(eq[4, A269982(n+2)])`
-/

namespace A269986.P12881255732173437147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269982 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269986.P12881255732173437147

/-! ## A269986.P15574969926885862247

`A243427(eq[4, A269982(n+2)])`
-/

namespace A269986.P15574969926885862247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269982 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269986.P15574969926885862247

/-!
# A269987: Numbers k having factorial fractility A269982(k) = 5.

The programs for A269987, there is no canonical definition to state claims against.
-/

/-! ## A269987.P1606105502873365452

`eq[5, A269982(n+2)]+2`
-/

namespace A269987.P1606105502873365452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269982 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A269987.P1606105502873365452

/-! ## A269987.P3213916763909757023

`eq[5, A269982(A233583(n+1))]`
-/

namespace A269987.P3213916763909757023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269982 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269987.P3213916763909757023

/-! ## A269987.P18107217636647315517

`A009056(eq[5, A269982(n+2)])`
-/

namespace A269987.P18107217636647315517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269982 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269987.P18107217636647315517

/-! ## A269987.P9537689639516820773

`A171463(eq[5, A269982(n+2)])`
-/

namespace A269987.P9537689639516820773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269982 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269987.P9537689639516820773

/-! ## A269987.P3054566750864002713

`A243427(eq[5, A269982(n+2)])`
-/

namespace A269987.P3054566750864002713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269982 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269987.P3054566750864002713

/-!
# A269988: Numbers k having factorial fractility A269982(k) = 6.

The programs for A269988, there is no canonical definition to state claims against.
-/

/-! ## A269988.P16748497643702233862

`eq[6, A269982(n+2)]+2`
-/

namespace A269988.P16748497643702233862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269982 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A269988.P16748497643702233862

/-! ## A269988.P6807457420458232783

`eq[6, A269982(A233583(n+1))]`
-/

namespace A269988.P6807457420458232783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269982 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269988.P6807457420458232783

/-! ## A269988.P14539272050659785657

`A009056(eq[6, A269982(n+2)])`
-/

namespace A269988.P14539272050659785657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269982 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269988.P14539272050659785657

/-! ## A269988.P13745849479922889459

`A171463(eq[6, A269982(n+2)])`
-/

namespace A269988.P13745849479922889459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269982 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269988.P13745849479922889459

/-! ## A269988.P16620967714252017965

`A243427(eq[6, A269982(n+2)])`
-/

namespace A269988.P16620967714252017965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269982 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269988.P16620967714252017965

/-!
# A269993: Denominators of r-Egyptian fraction expansion for sqrt(1/2), where r = (1,1/2,1/3,1/4,...)

The programs for A269993, there is no canonical definition to state claims against.
-/

/-! ## A269993.P6239719626236900177

`A263028(A225156(n+1))+A000041(n)`
-/

namespace A269993.P6239719626236900177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263028 (A225156 (n + 1)).toNat + A000041 n

end

end A269993.P6239719626236900177

/-!
# A269996: Denominators of r-Egyptian fraction expansion for sqrt(3) - 1, where r = (1,1/2,1/3,1/4,...)

The programs for A269996, there is no canonical definition to state claims against.
-/

/-! ## A269996.P7037472423611843139

`A098855(2^n+1)`
-/

namespace A269996.P7037472423611843139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098855 (2 ^ n + 1)

end

end A269996.P7037472423611843139

