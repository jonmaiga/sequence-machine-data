import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
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
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A145100: Integers in which no more than half the digits (rounded up) are the same, for all bases up to ten.

The programs for A145100, there is no canonical definition to state claims against.
-/

/-! ## A145100.P10651053671084685611

`A145101(∑[A053501(n)])`
-/

namespace A145100.P10651053671084685611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145101 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A145100.P10651053671084685611

/-! ## A145100.P14311985601024296060

`A145101(A043316(n+1))`
-/

namespace A145100.P14311985601024296060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145101 (A043316 (n + 1)).toNat

end

end A145100.P14311985601024296060

/-! ## A145100.P4198041850291022759

`A145101(A044913(n+1))`
-/

namespace A145100.P4198041850291022759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145101 (A044913 (n + 1)).toNat

end

end A145100.P4198041850291022759

/-! ## A145100.P10589812723538905061

`A145101(A049872(n+1))`
-/

namespace A145100.P10589812723538905061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145101 (A049872 (n + 1)).toNat

end

end A145100.P10589812723538905061

/-! ## A145100.P13136758311505397330

`A145101(A055649(n)+1)`
-/

namespace A145100.P13136758311505397330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145101 (A055649 n + 1).toNat

end

end A145100.P13136758311505397330

/-!
# A145101: Integers in which no digit occurs more than once more often than any other digit and not all repeated digits are identical, for all bases up to ten.

The programs for A145101, there is no canonical definition to state claims against.
-/

/-! ## A145101.P4651852508884933202

`A145100(lt[A322390(2*n+5), A027170(3*n)])`
-/

namespace A145101.P4651852508884933202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322390 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027170 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145100 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A145101.P4651852508884933202

/-! ## A145101.P6422104509602036965

`∩[A145100(n+1), A182942(n+1)]`
-/

namespace A145101.P6422104509602036965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145101.P6422104509602036965

/-! ## A145101.P805307399119852146

`A145100(∑[A131361(n)!])`
-/

namespace A145101.P805307399119852146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A131361 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145100 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A145101.P805307399119852146

/-! ## A145101.P15860836133729064568

`A145100(A249157(n+1)+1)`
-/

namespace A145101.P15860836133729064568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145100 (A249157 (n + 1) + 1).toNat

end

end A145101.P15860836133729064568

/-! ## A145101.P6453917382082782124

`A145100(∑[A299581(n+1)!])`
-/

namespace A145101.P6453917382082782124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A299581 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145100 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A145101.P6453917382082782124

/-!
# A145102: a(0) = a(1) = 1. a(n+1) = floor(n*a(n)/a(n-1)), for n >= 1.

The programs for A145102, the canonical program `A145102.P7689803388026553490` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145102 has offset 0).

The definition of A145102 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145102.P7689803388026553490

`floor((n-1)*a(n-1)/a(n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A145102

/-- `floor((n-1)*a(n-1)/a(n-2))` -/
def P7689803388026553490.Spec : Prop :=
  ∀ n, P7689803388026553490.a n = A145102 n

theorem P7689803388026553490.correct : P7689803388026553490.Spec := by
  intro n
  simp only [A145102]

end A145102

/-!
# A145103: a(0) = a(1) = 1. a(n+1) = ceiling(n*a(n)/a(n-1)), for n >= 1.

The programs for A145103, the canonical program `A145103.P16545817494106508859` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145103 has offset 0).

The definition of A145103 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145103.P16545817494106508859

`ceil((n-1)*a(n-1)/a(n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A145103

/-- `ceil((n-1)*a(n-1)/a(n-2))` -/
def P16545817494106508859.Spec : Prop :=
  ∀ n, P16545817494106508859.a n = A145103 n

theorem P16545817494106508859.correct : P16545817494106508859.Spec := by
  intro n
  simp only [A145103]

end A145103

/-!
# A145105: a(n) = n if n is prime or a perfect number, otherwise a(n) = 0.

The programs for A145105, there is no canonical definition to state claims against.
-/

/-! ## A145105.P217242242581290827

`(n+1)*round(∑{p}[n+1, #²]/lcm(n+1, ∑{d}[n+1, #]))`
-/

namespace A145105.P217242242581290827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * SequenceMachineLib.roundAway (((∑ p ∈ Nat.primeFactors (f1 n), p ^ 2 : ℕ) : ℚ) / (Nat.lcm (n + 1) (∑ d ∈ Nat.divisors (f2 n), d) : ℚ))

end

end A145105.P217242242581290827

/-! ## A145105.P3473692517363282049

`(n+1)*A323153(n+1)`
-/

namespace A145105.P3473692517363282049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A323153 (n + 1)

end

end A145105.P3473692517363282049

/-! ## A145105.P4324197628343121703

`(n+1)*char[A053813(n+1)-1]`
-/

namespace A145105.P4324197628343121703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A145105.P4324197628343121703

/-! ## A145105.P16680734017584241197

`(n+1)*char[eq[1, A003023(n+1)]]`
-/

namespace A145105.P16680734017584241197
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003023 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f1 j = n then 1 else 0)

end

end A145105.P16680734017584241197

/-! ## A145105.P16195052433436522463

`(n+1)*char[eq[1, A243473(n+1)]]`
-/

namespace A145105.P16195052433436522463
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243473 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f1 j = n then 1 else 0)

end

end A145105.P16195052433436522463

/-! ## A145105.P12023279342310223460

`(n+1)*char[eq[1, A325826(n+1)]]`
-/

namespace A145105.P12023279342310223460
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325826 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f1 j = n then 1 else 0)

end

end A145105.P12023279342310223460

/-! ## A145105.P15305039963477252928

`((n+1)*A323152(n+1))%(2*n+1)`
-/

namespace A145105.P15305039963477252928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * A323152 (n + 1)) (2 * n + 1 : ℤ)

end

end A145105.P15305039963477252928

/-! ## A145105.P1744002963652309954

`(n+1)*char[record[gcd(n, 2-A000203(n+1))]]`
-/

namespace A145105.P1744002963652309954
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (2 - A000203 (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f1 j = n then 1 else 0)

end

end A145105.P1744002963652309954

/-! ## A145105.P498865189763621411

`(n+1)*A154272(A098007(n+1))`
-/

namespace A145105.P498865189763621411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A154272 (A098007 (n + 1)).toNat

end

end A145105.P498865189763621411

/-! ## A145105.P5203941071642365427

`(n+1)*A010058(A325826(n+1))`
-/

namespace A145105.P5203941071642365427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010058 (A325826 (n + 1)).toNat

end

end A145105.P5203941071642365427

/-!
# A145106: Numbers n such that 6^n+5 is prime.

The programs for A145106, there is no canonical definition to state claims against.
-/

/-! ## A145106.P18063435379921610976

`lt[A013600(n+1), 6]+1`
-/

namespace A145106.P18063435379921610976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013600 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A145106.P18063435379921610976

/-! ## A145106.P4088544317362839047

`eq[C(2, n+2), A008612(A013600(n))]`
-/

namespace A145106.P4088544317362839047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A013600 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A145106.P4088544317362839047

/-! ## A145106.P4483952549861174574

`eq[A000007(n), A008612(A013600(n))]`
-/

namespace A145106.P4483952549861174574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A013600 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145106.P4483952549861174574

/-! ## A145106.P4659690121707591830

`eq[A000038(n), A008612(A013600(n))]`
-/

namespace A145106.P4659690121707591830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A013600 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145106.P4659690121707591830

/-! ## A145106.P5915248131544963472

`eq[A057427(n), A239963(A013600(n))]`
-/

namespace A145106.P5915248131544963472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239963 (A013600 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145106.P5915248131544963472

/-!
# A145108: Multiples of 4 that are primally tight and have strictly ascending powers.

The programs for A145108, there is no canonical definition to state claims against.
-/

/-! ## A145108.P13845006029058776193

`∩[2*A133809(n+2), A133809(n+2)]`
-/

namespace A145108.P13845006029058776193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133809 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133809 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145108.P13845006029058776193

/-! ## A145108.P10813383684679274134

`∩[A085127(n+1), A133809(n+1)]`
-/

namespace A145108.P10813383684679274134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145108.P10813383684679274134

/-! ## A145108.P7076920462980885480

`∩[A133809(n+1), A390010(n+1)]`
-/

namespace A145108.P7076920462980885480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145108.P7076920462980885480

/-! ## A145108.P3169044485886798691

`∩[A080366(n+1), A133809(n+1)]`
-/

namespace A145108.P3169044485886798691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145108.P3169044485886798691

/-! ## A145108.P11053374086213174008

`filter[A133809(n+2), A358680(#)]`
-/

namespace A145108.P11053374086213174008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133809 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358680 (f1 j).toNat = 1) n)

end

end A145108.P11053374086213174008

/-!
# A145109: a(n) = 2*n * core(2*n).

The programs for A145109, the canonical program `A145109.P11563009872990415514` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145109 has offset 1).

The definition of A145109 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145109.P11563009872990415514

`2*(n+1)*A007913(2*(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A145109

/-- `2*(n+1)*A007913(2*(n+1))` -/
def P11563009872990415514.Spec : Prop :=
  ∀ n, P11563009872990415514.a n = A145109 (n + 1)

theorem P11563009872990415514.correct : P11563009872990415514.Spec := by
  intro n
  simp only [A145109, Nat.add_sub_cancel]

end A145109

/-! ## A145109.P3914885600064792657

`A053143(2*(n+1))`
-/

namespace A145109.P3914885600064792657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053143 (2 * (n + 1))

end

end A145109.P3914885600064792657

namespace A145109

/-- `A053143(2*(n+1))` -/
def P3914885600064792657.Spec : Prop :=
  ∀ n, P3914885600064792657.a n = A145109 (n + 1)

end A145109

/-! ## A145109.P5344922340011316833

`lcm(2, A038388(n+1))²`
-/

namespace A145109.P5344922340011316833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A038388 (n + 1)) ^ 2

end

end A145109.P5344922340011316833

namespace A145109

/-- `lcm(2, A038388(n+1))²` -/
def P5344922340011316833.Spec : Prop :=
  ∀ n, (P5344922340011316833.a n : ℤ) = A145109 (n + 1)

end A145109

/-! ## A145109.P17168905657804133697

`(1-A242219(n+1)+n)²`
-/

namespace A145109.P17168905657804133697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A242219 (n + 1) + (n : ℤ)) ^ 2

end

end A145109.P17168905657804133697

namespace A145109

/-- `(1-A242219(n+1)+n)²` -/
def P17168905657804133697.Spec : Prop :=
  ∀ n, P17168905657804133697.a n = A145109 (n + 1)

end A145109

/-! ## A145109.P15249832923749006540

`(2*(n+1))²/A008833(2*(n+1))`
-/

namespace A145109.P15249832923749006540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1)) ^ 2 : ℚ) / (A008833 (2 * (n + 1)) : ℚ)

end

end A145109.P15249832923749006540

namespace A145109

/-- `(2*(n+1))²/A008833(2*(n+1))` -/
def P15249832923749006540.Spec : Prop :=
  ∀ n, P15249832923749006540.a n = (A145109 (n + 1) : ℚ)

end A145109

/-! ## A145109.P11354698183972124295

`2*A007913(n+1)*A073675(n+1)`
-/

namespace A145109.P11354698183972124295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007913 (n + 1) * A073675 (n + 1))

end

end A145109.P11354698183972124295

namespace A145109

/-- `2*A007913(n+1)*A073675(n+1)` -/
def P11354698183972124295.Spec : Prop :=
  ∀ n, P11354698183972124295.a n = A145109 (n + 1)

end A145109

/-! ## A145109.P863017505307451155

`1/A008833(2*(n+1))*A016742(n+1)`
-/

namespace A145109.P863017505307451155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A008833 (2 * (n + 1)) : ℚ) * (A016742 (n + 1) : ℚ)

end

end A145109.P863017505307451155

namespace A145109

/-- `1/A008833(2*(n+1))*A016742(n+1)` -/
def P863017505307451155.Spec : Prop :=
  ∀ n, P863017505307451155.a n = (A145109 (n + 1) : ℚ)

end A145109

/-! ## A145109.P17563612874716311938

`A019554(2*(n+1))²`
-/

namespace A145109.P17563612874716311938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (2 * (n + 1)) ^ 2

end

end A145109.P17563612874716311938

namespace A145109

/-- `A019554(2*(n+1))²` -/
def P17563612874716311938.Spec : Prop :=
  ∀ n, P17563612874716311938.a n = A145109 (n + 1)

end A145109

/-! ## A145109.P8754101972175849796

`A011262(A350390(2*(n+1)))`
-/

namespace A145109.P8754101972175849796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011262 (A350390 (2 * (n + 1))).toNat

end

end A145109.P8754101972175849796

namespace A145109

/-- `A011262(A350390(2*(n+1)))` -/
def P8754101972175849796.Spec : Prop :=
  ∀ n, P8754101972175849796.a n = A145109 (n + 1)

end A145109

/-! ## A145109.P1625060021532209828

`A064549(A350390(2*n+2))`
-/

namespace A145109.P1625060021532209828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (A350390 (2 * n + 2)).toNat

end

end A145109.P1625060021532209828

namespace A145109

/-- `A064549(A350390(2*n+2))` -/
def P1625060021532209828.Spec : Prop :=
  ∀ n, P1625060021532209828.a n = A145109 (n + 1)

end A145109

/-! ## A145109.P10527592563147240613

`A000290(A019554(n+2+n))`
-/

namespace A145109.P10527592563147240613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A019554 (n + 2 + n)).toNat

end

end A145109.P10527592563147240613

namespace A145109

/-- `A000290(A019554(n+2+n))` -/
def P10527592563147240613.Spec : Prop :=
  ∀ n, P10527592563147240613.a n = A145109 (n + 1)

end A145109

/-! ## A145109.P10431406374157369600

`A186646(2*A038388(n+1))²`
-/

namespace A145109.P10431406374157369600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186646 (2 * A038388 (n + 1)).toNat ^ 2

end

end A145109.P10431406374157369600

namespace A145109

/-- `A186646(2*A038388(n+1))²` -/
def P10431406374157369600.Spec : Prop :=
  ∀ n, P10431406374157369600.a n = A145109 (n + 1)

end A145109

/-! ## A145109.P11999750672773896045

`A000290(A242219(n+1)-(n+1))`
-/

namespace A145109.P11999750672773896045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A242219 (n + 1) - (n + 1 : ℤ)).toNat

end

end A145109.P11999750672773896045

namespace A145109

/-- `A000290(A242219(n+1)-(n+1))` -/
def P11999750672773896045.Spec : Prop :=
  ∀ n, P11999750672773896045.a n = A145109 (n + 1)

end A145109

/-! ## A145109.P10672378969545140165

`(A004277(n+1)/A000188(2*(n+1)))²`
-/

namespace A145109.P10672378969545140165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A004277 (n + 1) : ℚ) / (A000188 (2 * (n + 1)) : ℚ)) ^ 2

end

end A145109.P10672378969545140165

namespace A145109

/-- `(A004277(n+1)/A000188(2*(n+1)))²` -/
def P10672378969545140165.Spec : Prop :=
  ∀ n, P10672378969545140165.a n = (A145109 (n + 1) : ℚ)

end A145109

/-! ## A145109.P9090651598670084799

`(A005843(n+1)/A000188(2*(n+1)))²`
-/

namespace A145109.P9090651598670084799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A005843 (n + 1) : ℚ) / (A000188 (2 * (n + 1)) : ℚ)) ^ 2

end

end A145109.P9090651598670084799

namespace A145109

/-- `(A005843(n+1)/A000188(2*(n+1)))²` -/
def P9090651598670084799.Spec : Prop :=
  ∀ n, P9090651598670084799.a n = (A145109 (n + 1) : ℚ)

end A145109

/-! ## A145109.P16547569689964429148

`A016742(n+1)/A000188(2*(n+1))²`
-/

namespace A145109.P16547569689964429148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016742 (n + 1) : ℚ) / (A000188 (2 * (n + 1)) ^ 2 : ℚ)

end

end A145109.P16547569689964429148

namespace A145109

/-- `A016742(n+1)/A000188(2*(n+1))²` -/
def P16547569689964429148.Spec : Prop :=
  ∀ n, P16547569689964429148.a n = (A145109 (n + 1) : ℚ)

end A145109

/-! ## A145109.P2752416443324724044

`A008833(2*(n+1))*A055491(2*(n+1))`
-/

namespace A145109.P2752416443324724044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (2 * (n + 1)) * A055491 (2 * (n + 1))

end

end A145109.P2752416443324724044

namespace A145109

/-- `A008833(2*(n+1))*A055491(2*(n+1))` -/
def P2752416443324724044.Spec : Prop :=
  ∀ n, P2752416443324724044.a n = A145109 (n + 1)

end A145109

/-! ## A145109.P5473048597038114740

`A007947(2*(n+1))*A350390(2*(n+1))`
-/

namespace A145109.P5473048597038114740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (2 * (n + 1)) * A350390 (2 * (n + 1))

end

end A145109.P5473048597038114740

namespace A145109

/-- `A007947(2*(n+1))*A350390(2*(n+1))` -/
def P5473048597038114740.Spec : Prop :=
  ∀ n, P5473048597038114740.a n = A145109 (n + 1)

end A145109

/-!
# A145111: Square array A(n,k) of numbers of length n binary words with fewer than k 0-digits between any pair of consecutive 1-digits (n,k >= 0), read by antidiagonals.

The programs for A145111, there is no canonical definition to state claims against.
-/

/-! ## A145111.P2068836046936357201

`A216274(n)+A185284(A238352(n))`
-/

namespace A145111.P2068836046936357201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216274 n + A185284 (A238352 n).toNat

end

end A145111.P2068836046936357201

/-! ## A145111.P6345588643499450241

`A216274(n)+A151795(A128175(n+1))`
-/

namespace A145111.P6345588643499450241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216274 n + A151795 (A128175 (n + 1)).toNat

end

end A145111.P6345588643499450241

/-! ## A145111.P12036985194509283813

`A001222(2^A216274(n))`
-/

namespace A145111.P12036985194509283813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A216274 n : ℤ))).toNat

end

end A145111.P12036985194509283813

/-! ## A145111.P4942151505675155841

`gcd(A094783(n+1), A216274(n))`
-/

namespace A145111.P4942151505675155841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A094783 (n + 1)) (A216274 n)

end

end A145111.P4942151505675155841

/-! ## A145111.P9704940493564844555

`and(A157358(n+1), A216274(n))`
-/

namespace A145111.P9704940493564844555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A157358 (n + 1)) (A216274 n)

end

end A145111.P9704940493564844555

/-!
# A145112: Numbers of length n binary words with fewer than 4 0-digits between any pair of consecutive 1-digits.

The programs for A145112, the canonical program `A145112.P13827109005882501140` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145112 has offset 0).

The definition of A145112 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 351 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145112.P13827109005882501140

`2*a(n-1)-a(n-5)+1` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A145112

/-- `2*a(n-1)-a(n-5)+1` -/
def P13827109005882501140.Spec : Prop :=
  ∀ n, P13827109005882501140.a n = A145112 n

theorem P13827109005882501140.correct : P13827109005882501140.Spec := by
  intro n
  simp only [A145112]

end A145112

/-! ## A145112.P153691691221509321

`∑[∑[A000078(n+2)]]+1`
-/

namespace A145112.P153691691221509321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A145112.P153691691221509321

namespace A145112

/-- `∑[∑[A000078(n+2)]]+1` -/
def P153691691221509321.Spec : Prop :=
  ∀ n, P153691691221509321.a n = A145112 n

end A145112

/-! ## A145112.P15238645454074508255

`A107066(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A145112.P15238645454074508255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A107066 (n - 1) + a (n - 1)

end

end A145112.P15238645454074508255

namespace A145112

/-- `A107066(n-1)+a(n-1)` -/
def P15238645454074508255.Spec : Prop :=
  ∀ n, P15238645454074508255.a n = A145112 n

end A145112

/-! ## A145112.P756201922108548031

`∑[∑[A001631(n+1)]]+a(n-1)` with `a(0)=1`
-/

namespace A145112.P756201922108548031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001631 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A145112.P756201922108548031

namespace A145112

/-- `∑[∑[A001631(n+1)]]+a(n-1)` -/
def P756201922108548031.Spec : Prop :=
  ∀ n, P756201922108548031.a n = A145112 n

end A145112

/-! ## A145112.P12243505748828611595

`A000078(n+1)+A196875(n+2)+A001630(n+1)`
-/

namespace A145112.P12243505748828611595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (n + 1) + (A196875 (n + 2) + A001630 (n + 1))

end

end A145112.P12243505748828611595

namespace A145112

/-- `A000078(n+1)+A196875(n+2)+A001630(n+1)` -/
def P12243505748828611595.Spec : Prop :=
  ∀ n, P12243505748828611595.a n = A145112 n

end A145112

/-! ## A145112.P5840003864610015460

`∑[A107066(n)]+1-A107066(n)`
-/

namespace A145112.P5840003864610015460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107066 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A107066 n)

end

end A145112.P5840003864610015460

namespace A145112

/-- `∑[A107066(n)]+1-A107066(n)` -/
def P5840003864610015460.Spec : Prop :=
  ∀ n, P5840003864610015460.a n = A145112 n

end A145112

/-! ## A145112.P11166098049100630271

`A145111(A034856(n+3)+n+2)`
-/

namespace A145112.P11166098049100630271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145111 (A034856 (n + 3) + (n + 2 : ℤ)).toNat

end

end A145112.P11166098049100630271

namespace A145112

/-- `A145111(A034856(n+3)+n+2)` -/
def P11166098049100630271.Spec : Prop :=
  ∀ n, P11166098049100630271.a n = A145112 n

end A145112

/-! ## A145112.P10629489433641473987

`A145111(A167614(n+2)+A005408(n))`
-/

namespace A145112.P10629489433641473987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145111 (A167614 (n + 2) + A005408 n).toNat

end

end A145112.P10629489433641473987

namespace A145112

/-- `A145111(A167614(n+2)+A005408(n))` -/
def P10629489433641473987.Spec : Prop :=
  ∀ n, P10629489433641473987.a n = A145112 n

end A145112

/-! ## A145112.P5923453678018279427

`∑[A140996(∑[n]+1)]`
-/

namespace A145112.P5923453678018279427
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145112.P5923453678018279427

namespace A145112

/-- `∑[A140996(∑[n]+1)]` -/
def P5923453678018279427.Spec : Prop :=
  ∀ n, P5923453678018279427.a n = A145112 n

end A145112

/-!
# A145113: Numbers of length n binary words with fewer than 5 0-digits between any pair of consecutive 1-digits.

The programs for A145113, the canonical program `A145113.P4629338991481446635` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145113 has offset 0).

The definition of A145113 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145113.P4629338991481446635

`∑[A001949(n+4)]+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A145113

/-- `∑[A001949(n+4)]+1` -/
def P4629338991481446635.Spec : Prop :=
  ∀ n, P4629338991481446635.a n = A145113 n

theorem P4629338991481446635.correct : P4629338991481446635.Spec := by
  intro n
  simp only [A145113]

end A145113

/-! ## A145113.P18404359200677398126

`∑[∑[A001591(n+3)]]+1`
-/

namespace A145113.P18404359200677398126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001591 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A145113.P18404359200677398126

namespace A145113

/-- `∑[∑[A001591(n+3)]]+1` -/
def P18404359200677398126.Spec : Prop :=
  ∀ n, P18404359200677398126.a n = A145113 n

end A145113

/-! ## A145113.P3952040438435711942

`∑[∑[∑[A124312(n+2)]]]+1`
-/

namespace A145113.P3952040438435711942
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124312 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A145113.P3952040438435711942

namespace A145113

/-- `∑[∑[∑[A124312(n+2)]]]+1` -/
def P3952040438435711942.Spec : Prop :=
  ∀ n, P3952040438435711942.a n = A145113 n

end A145113

/-! ## A145113.P16756836148607229542

`record[A145111(A055999(n))]`
-/

namespace A145113.P16756836148607229542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145111 (A055999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145113.P16756836148607229542

namespace A145113

/-- `record[A145111(A055999(n))]` -/
def P16756836148607229542.Spec : Prop :=
  ∀ n, P16756836148607229542.a n = A145113 n

end A145113

/-! ## A145113.P17888229747334195183

`A145111(A134227(n+4))`
-/

namespace A145113.P17888229747334195183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145111 (A134227 (n + 4)).toNat

end

end A145113.P17888229747334195183

namespace A145113

/-- `A145111(A134227(n+4))` -/
def P17888229747334195183.Spec : Prop :=
  ∀ n, P17888229747334195183.a n = A145113 n

end A145113

/-! ## A145113.P1953890692083272751

`record[A145111(A005843(n)+A000096(n))]`
-/

namespace A145113.P1953890692083272751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145111 (A005843 n + A000096 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145113.P1953890692083272751

namespace A145113

/-- `record[A145111(A005843(n)+A000096(n))]` -/
def P1953890692083272751.Spec : Prop :=
  ∀ n, P1953890692083272751.a n = A145113 n

end A145113

/-! ## A145113.P6081768824291394445

`A145111(A004767(n+2)+A000124(n+2))`
-/

namespace A145113.P6081768824291394445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145111 (A004767 (n + 2) + A000124 (n + 2)).toNat

end

end A145113.P6081768824291394445

namespace A145113

/-- `A145111(A004767(n+2)+A000124(n+2))` -/
def P6081768824291394445.Spec : Prop :=
  ∀ n, P6081768824291394445.a n = A145113 n

end A145113

/-!
# A145114: Numbers of length n binary words with fewer than 6 0-digits between any pair of consecutive 1-digits.

The programs for A145114, the canonical program `A145114.P16873409523997510308` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145114 has offset 0).

The definition of A145114 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145114.P16873409523997510308

`∑[∑[A001592(n+4)]]+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A145114

/-- `∑[∑[A001592(n+4)]]+1` -/
def P16873409523997510308.Spec : Prop :=
  ∀ n, P16873409523997510308.a n = A145114 n

theorem P16873409523997510308.correct : P16873409523997510308.Spec := by
  intro n
  simp only [A145114]

end A145114

/-! ## A145114.P12298842595336821788

`A172316(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A145114.P12298842595336821788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A172316 (n - 1) + a (n - 1)

end

end A145114.P12298842595336821788

namespace A145114

/-- `A172316(n-1)+a(n-1)` -/
def P12298842595336821788.Spec : Prop :=
  ∀ n, P12298842595336821788.a n = A145114 n

end A145114

/-! ## A145114.P12070023584096418889

`∑[A172316(round(sqrt(n²+1))-1)]`
-/

namespace A145114.P12070023584096418889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172316 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145114.P12070023584096418889

namespace A145114

/-- `∑[A172316(round(sqrt(n²+1))-1)]` -/
def P12070023584096418889.Spec : Prop :=
  ∀ n, P12070023584096418889.a n = A145114 n

end A145114

/-! ## A145114.P7665057193344207608

`∑[A172316(n)]+1-A172316(n)`
-/

namespace A145114.P7665057193344207608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A172316 n)

end

end A145114.P7665057193344207608

namespace A145114

/-- `∑[A172316(n)]+1-A172316(n)` -/
def P7665057193344207608.Spec : Prop :=
  ∀ n, P7665057193344207608.a n = A145114 n

end A145114

/-! ## A145114.P3085285397013159171

`A145111(A155212(n+3)+1)`
-/

namespace A145114.P3085285397013159171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145111 (A155212 (n + 3) + 1).toNat

end

end A145114.P3085285397013159171

namespace A145114

/-- `A145111(A155212(n+3)+1)` -/
def P3085285397013159171.Spec : Prop :=
  ∀ n, P3085285397013159171.a n = A145114 n

end A145114

/-! ## A145114.P1892991392961284595

`A145111(A046691(n+5)-3)`
-/

namespace A145114.P1892991392961284595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145111 (A046691 (n + 5) - 3).toNat

end

end A145114.P1892991392961284595

namespace A145114

/-- `A145111(A046691(n+5)-3)` -/
def P1892991392961284595.Spec : Prop :=
  ∀ n, P1892991392961284595.a n = A145114 n

end A145114

/-! ## A145114.P12558512150546571721

`A145111(A000124(n+7)-8)`
-/

namespace A145114.P12558512150546571721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145111 (A000124 (n + 7) - 8).toNat

end

end A145114.P12558512150546571721

namespace A145114

/-- `A145111(A000124(n+7)-8)` -/
def P12558512150546571721.Spec : Prop :=
  ∀ n, P12558512150546571721.a n = A145114 n

end A145114

/-! ## A145114.P9256920530903996459

`A145111(A103517(n+4)+A046691(n+3))`
-/

namespace A145114.P9256920530903996459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145111 (A103517 (n + 4) + A046691 (n + 3)).toNat

end

end A145114.P9256920530903996459

namespace A145114

/-- `A145111(A103517(n+4)+A046691(n+3))` -/
def P9256920530903996459.Spec : Prop :=
  ∀ n, P9256920530903996459.a n = A145114 n

end A145114

/-!
# A145115: Numbers of length n binary words with fewer than 7 0-digits between any pair of consecutive 1-digits.

The programs for A145115, the canonical program `A145115.P4941057793060244869` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145115 has offset 0).

The definition of A145115 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145115.P333816493400490503

`A172317(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A145115.P333816493400490503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A172317 (n - 1) + a (n - 1)

end

end A145115.P333816493400490503

namespace A145115

/-- `A172317(n-1)+a(n-1)` -/
def P333816493400490503.Spec : Prop :=
  ∀ n, P333816493400490503.a n = A145115 n

end A145115

/-! ## A145115.P8271156227033837093

`∑[A172317(round(sqrt(n²+1))-1)]`
-/

namespace A145115.P8271156227033837093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172317 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145115.P8271156227033837093

namespace A145115

/-- `∑[A172317(round(sqrt(n²+1))-1)]` -/
def P8271156227033837093.Spec : Prop :=
  ∀ n, P8271156227033837093.a n = A145115 n

end A145115

/-! ## A145115.P4941057793060244869

`∑[∑[A066178(n)]-A066178(n)]+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A145115

/-- `∑[∑[A066178(n)]-A066178(n)]+1` -/
def P4941057793060244869.Spec : Prop :=
  ∀ n, P4941057793060244869.a n = A145115 n

theorem P4941057793060244869.correct : P4941057793060244869.Spec := by
  intro n
  simp only [A145115]

end A145115

/-! ## A145115.P16116861209234466856

`∑[A172317(n)]+1-A172317(n)`
-/

namespace A145115.P16116861209234466856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A172317 n)

end

end A145115.P16116861209234466856

namespace A145115

/-- `∑[A172317(n)]+1-A172317(n)` -/
def P16116861209234466856.Spec : Prop :=
  ∀ n, P16116861209234466856.a n = A145115 n

end A145115

/-! ## A145115.P4780651923396307797

`A145111(A155212(n+4))`
-/

namespace A145115.P4780651923396307797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145111 (A155212 (n + 4)).toNat

end

end A145115.P4780651923396307797

namespace A145115

/-- `A145111(A155212(n+4))` -/
def P4780651923396307797.Spec : Prop :=
  ∀ n, P4780651923396307797.a n = A145115 n

end A145115

/-! ## A145115.P10062870415481564777

`A145111(A000217(n+8)-8)`
-/

namespace A145115.P10062870415481564777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145111 (A000217 (n + 8) - 8).toNat

end

end A145115.P10062870415481564777

namespace A145115

/-- `A145111(A000217(n+8)-8)` -/
def P10062870415481564777.Spec : Prop :=
  ∀ n, P10062870415481564777.a n = A145115 n

end A145115

/-! ## A145115.P13926466539759471539

`A145111(A000124(n+8)-9)`
-/

namespace A145115.P13926466539759471539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145111 (A000124 (n + 8) - 9).toNat

end

end A145115.P13926466539759471539

namespace A145115

/-- `A145111(A000124(n+8)-9)` -/
def P13926466539759471539.Spec : Prop :=
  ∀ n, P13926466539759471539.a n = A145115 n

end A145115

/-! ## A145115.P466774853417643675

`A145111(A167614(n+5)+A004277(n+2))`
-/

namespace A145115.P466774853417643675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145111 (A167614 (n + 5) + A004277 (n + 2)).toNat

end

end A145115.P466774853417643675

namespace A145115

/-- `A145111(A167614(n+5)+A004277(n+2))` -/
def P466774853417643675.Spec : Prop :=
  ∀ n, P466774853417643675.a n = A145115 n

end A145115

/-! ## A145115.P4645007990593538832

`A145111(A167614(n+5)+A005843(n+2))`
-/

namespace A145115.P4645007990593538832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145111 (A167614 (n + 5) + A005843 (n + 2)).toNat

end

end A145115.P4645007990593538832

namespace A145115

/-- `A145111(A167614(n+5)+A005843(n+2))` -/
def P4645007990593538832.Spec : Prop :=
  ∀ n, P4645007990593538832.a n = A145115 n

end A145115

/-!
# A145116: Numbers of length n binary words with fewer than 8 0-digits between any pair of consecutive 1-digits.

The programs for A145116, the canonical program `A145116.P789416026559526475` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145116 has offset 0).

The definition of A145116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145116.P789416026559526475

`A172318(n-1)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A145116

/-- `A172318(n-1)+a(n-1)` -/
def P789416026559526475.Spec : Prop :=
  ∀ n, P789416026559526475.a n = A145116 n

theorem P789416026559526475.correct : P789416026559526475.Spec := by
  intro n
  simp only [A145116]

end A145116

/-! ## A145116.P2851013769346016070

`∑[A172318(log2(A011782(n)))]`
-/

namespace A145116.P2851013769346016070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172318 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145116.P2851013769346016070

namespace A145116

/-- `∑[A172318(log2(A011782(n)))]` -/
def P2851013769346016070.Spec : Prop :=
  ∀ n, P2851013769346016070.a n = A145116 n

end A145116

/-! ## A145116.P9984197716047287854

`∑[A172318(n)]+1-A172318(n)`
-/

namespace A145116.P9984197716047287854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A172318 n)

end

end A145116.P9984197716047287854

namespace A145116

/-- `∑[A172318(n)]+1-A172318(n)` -/
def P9984197716047287854.Spec : Prop :=
  ∀ n, P9984197716047287854.a n = A145116 n

end A145116

/-! ## A145116.P3867709887877627777

`A145111(A155212(n+5)-1)`
-/

namespace A145116.P3867709887877627777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145111 (A155212 (n + 5) - 1).toNat

end

end A145116.P3867709887877627777

namespace A145116

/-- `A145111(A155212(n+5)-1)` -/
def P3867709887877627777.Spec : Prop :=
  ∀ n, P3867709887877627777.a n = A145116 n

end A145116

/-! ## A145116.P16431365839300762470

`A145111(A000217(n+9)-9)`
-/

namespace A145116.P16431365839300762470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145111 (A000217 (n + 9) - 9).toNat

end

end A145116.P16431365839300762470

namespace A145116

/-- `A145111(A000217(n+9)-9)` -/
def P16431365839300762470.Spec : Prop :=
  ∀ n, P16431365839300762470.a n = A145116 n

end A145116

/-! ## A145116.P1461389276036592449

`A145111(A000124(n+9)-10)`
-/

namespace A145116.P1461389276036592449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145111 (A000124 (n + 9) - 10).toNat

end

end A145116.P1461389276036592449

namespace A145116

/-- `A145111(A000124(n+9)-10)` -/
def P1461389276036592449.Spec : Prop :=
  ∀ n, P1461389276036592449.a n = A145116 n

end A145116

/-! ## A145116.P135448490243889012

`A145111(A167614(n+6)+A005408(n+2))`
-/

namespace A145116.P135448490243889012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145111 (A167614 (n + 6) + A005408 (n + 2)).toNat

end

end A145116.P135448490243889012

namespace A145116

/-- `A145111(A167614(n+6)+A005408(n+2))` -/
def P135448490243889012.Spec : Prop :=
  ∀ n, P135448490243889012.a n = A145116 n

end A145116

/-! ## A145116.P15304262118516324788

`A145111(A005408(n+3)+A000124(n+7))`
-/

namespace A145116.P15304262118516324788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145111 (A005408 (n + 3) + A000124 (n + 7)).toNat

end

end A145116.P15304262118516324788

namespace A145116

/-- `A145111(A005408(n+3)+A000124(n+7))` -/
def P15304262118516324788.Spec : Prop :=
  ∀ n, P15304262118516324788.a n = A145116 n

end A145116

/-! ## A145116.P527675743588564816

`A145111(A103517(n+5)+A046691(n+5))`
-/

namespace A145116.P527675743588564816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145111 (A103517 (n + 5) + A046691 (n + 5)).toNat

end

end A145116.P527675743588564816

namespace A145116

/-- `A145111(A103517(n+5)+A046691(n+5))` -/
def P527675743588564816.Spec : Prop :=
  ∀ n, P527675743588564816.a n = A145116 n

end A145116

/-!
# A145117: Numbers of length n binary words with fewer than 9 0-digits between any pair of consecutive 1-digits.

The programs for A145117, the canonical program `A145117.P14926614837438717936` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145117 has offset 0).

The definition of A145117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145117.P14926614837438717936

`∑[∑[A104144(n+7)]]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A145117

/-- `∑[∑[A104144(n+7)]]+1` -/
def P14926614837438717936.Spec : Prop :=
  ∀ n, P14926614837438717936.a n = A145117 n

theorem P14926614837438717936.correct : P14926614837438717936.Spec := by
  intro n
  simp only [A145117]

end A145117

/-! ## A145117.P12544387152052876237

`A172319(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A145117.P12544387152052876237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A172319 (n - 1) + a (n - 1)

end

end A145117.P12544387152052876237

namespace A145117

/-- `A172319(n-1)+a(n-1)` -/
def P12544387152052876237.Spec : Prop :=
  ∀ n, P12544387152052876237.a n = A145117 n

end A145117

/-! ## A145117.P15958061905827367785

`∑[A172319(round(sqrt(n²+1))-1)]`
-/

namespace A145117.P15958061905827367785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172319 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145117.P15958061905827367785

namespace A145117

/-- `∑[A172319(round(sqrt(n²+1))-1)]` -/
def P15958061905827367785.Spec : Prop :=
  ∀ n, P15958061905827367785.a n = A145117 n

end A145117

/-! ## A145117.P14396606833966799431

`∑[A172319(n)]+1-A172319(n)`
-/

namespace A145117.P14396606833966799431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A172319 n)

end

end A145117.P14396606833966799431

namespace A145117

/-- `∑[A172319(n)]+1-A172319(n)` -/
def P14396606833966799431.Spec : Prop :=
  ∀ n, P14396606833966799431.a n = A145117 n

end A145117

/-! ## A145117.P9627023360276965559

`A145111(A056000(n+6))`
-/

namespace A145117.P9627023360276965559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145111 (A056000 (n + 6)).toNat

end

end A145117.P9627023360276965559

namespace A145117

/-- `A145111(A056000(n+6))` -/
def P9627023360276965559.Spec : Prop :=
  ∀ n, P9627023360276965559.a n = A145117 n

end A145117

/-! ## A145117.P10312936913278231936

`A145111(A155212(n+6)-2)`
-/

namespace A145117.P10312936913278231936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145111 (A155212 (n + 6) - 2).toNat

end

end A145117.P10312936913278231936

namespace A145117

/-- `A145111(A155212(n+6)-2)` -/
def P10312936913278231936.Spec : Prop :=
  ∀ n, P10312936913278231936.a n = A145117 n

end A145117

/-! ## A145117.P3389835788639792554

`A145111(A046691(n+8)-6)`
-/

namespace A145117.P3389835788639792554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145111 (A046691 (n + 8) - 6).toNat

end

end A145117.P3389835788639792554

namespace A145117

/-- `A145111(A046691(n+8)-6)` -/
def P3389835788639792554.Spec : Prop :=
  ∀ n, P3389835788639792554.a n = A145117 n

end A145117

/-! ## A145117.P5060700825728461308

`A145111(A167614(n+7)+A004277(n+3))`
-/

namespace A145117.P5060700825728461308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145111 (A167614 (n + 7) + A004277 (n + 3)).toNat

end

end A145117.P5060700825728461308

namespace A145117

/-- `A145111(A167614(n+7)+A004277(n+3))` -/
def P5060700825728461308.Spec : Prop :=
  ∀ n, P5060700825728461308.a n = A145117 n

end A145117

/-! ## A145117.P15558910509976743148

`A145111(A004767(n+5)+A000124(n+6))`
-/

namespace A145117.P15558910509976743148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145111 (A004767 (n + 5) + A000124 (n + 6)).toNat

end

end A145117.P15558910509976743148

namespace A145117

/-- `A145111(A004767(n+5)+A000124(n+6))` -/
def P15558910509976743148.Spec : Prop :=
  ∀ n, P15558910509976743148.a n = A145117 n

end A145117

/-! ## A145117.P15342281557241603893

`A145111(A005408(n+4)+A000217(n+8))`
-/

namespace A145117.P15342281557241603893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145111 (A005408 (n + 4) + A000217 (n + 8)).toNat

end

end A145117.P15342281557241603893

namespace A145117

/-- `A145111(A005408(n+4)+A000217(n+8))` -/
def P15342281557241603893.Spec : Prop :=
  ∀ n, P15342281557241603893.a n = A145117 n

end A145117

/-! ## A145117.P10727471890984707204

`A145111(A016777(n+5)+A000124(n+7))`
-/

namespace A145117.P10727471890984707204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145111 (A016777 (n + 5) + A000124 (n + 7)).toNat

end

end A145117.P10727471890984707204

namespace A145117

/-- `A145111(A016777(n+5)+A000124(n+7))` -/
def P10727471890984707204.Spec : Prop :=
  ∀ n, P10727471890984707204.a n = A145117 n

end A145117

/-!
# A145119: a(n) = Product_{k=1..n-1} (ceiling(n/k) - ceiling(n/k) mod 2).

The programs for A145119, there is no canonical definition to state claims against.
-/

/-! ## A145119.P10133425172385470089

`record[A060632(A182222(n))]*A065033(n)`
-/

namespace A145119.P10133425172385470089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (A182222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A065033 n

end

end A145119.P10133425172385470089

/-! ## A145119.P10186821295083605813

`record[A060632(A238750(n))]*A065033(n)`
-/

namespace A145119.P10186821295083605813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (A238750 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A065033 n

end

end A145119.P10186821295083605813

/-! ## A145119.P5301678312491828281

`A293484(2*∏[∏{d}[n, 1/#+1]])`
-/

namespace A145119.P5301678312491828281
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), (1 / (d : ℚ) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293484 (SequenceMachineLib.roundAway (2 * (∏ j ∈ Finset.range (n + 1), f1 j))).toNat

end

end A145119.P5301678312491828281

/-! ## A145119.P13515867860962071067

`A333787(A276368(n))`
-/

namespace A145119.P13515867860962071067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333787 (A276368 n).toNat

end

end A145119.P13515867860962071067

/-!
# A145120: Numbers X such that (X^2-19)/57 is a square.

The programs for A145120, there is no canonical definition to state claims against.
-/

/-! ## A145120.P13423493131342963466

`38*A145123(n+1)`
-/

namespace A145120.P13423493131342963466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  38 * A145123 (n + 1)

end

end A145120.P13423493131342963466

/-!
# A145121: Numbers n such that there exists x in N : (x+19)^3-x^3=n^2.

The programs for A145121, there is no canonical definition to state claims against.
-/

/-! ## A145121.P16526603798383123062

`361*A145123(n+1)`
-/

namespace A145121.P16526603798383123062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  361 * A145123 (n + 1)

end

end A145121.P16526603798383123062

/-!
# A145122: Numbers X such that (X+19)^3-X^3 is a square.

The programs for A145122, there is no canonical definition to state claims against.
-/

/-! ## A145122.P16378135130444889789

`19*A145124(n+1)`
-/

namespace A145122.P16378135130444889789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  19 * A145124 (n + 1)

end

end A145122.P16378135130444889789

/-!
# A145123: Numbers n such that there exists x in N : (x+1)^3-x^3=19*n^2.

The programs for A145123, there is no canonical definition to state claims against.
-/

/-! ## A145123.P16038608581101908198

`A041425(2*n)`
-/

namespace A145123.P16038608581101908198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041425 (2 * n)

end

end A145123.P16038608581101908198

/-! ## A145123.P824993589302775605

`A042763(2*n)`
-/

namespace A145123.P824993589302775605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042763 (2 * n)

end

end A145123.P824993589302775605

/-! ## A145123.P9984329411942051607

`record[A041425(n)/A033999(n)]`
-/

namespace A145123.P9984329411942051607
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041425 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145123.P9984329411942051607

/-! ## A145123.P16744049395565860436

`record[A042763(n)/A266327(n)]`
-/

namespace A145123.P16744049395565860436
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042763 n : ℚ) / (A266327 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145123.P16744049395565860436

/-! ## A145123.P5079738659067584323

`A041099(A016789(2*n))/2`
-/

namespace A145123.P5079738659067584323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041099 (A016789 (2 * n)).toNat : ℚ) / 2

end

end A145123.P5079738659067584323

/-!
# A145124: Numbers x such that there exists n in N : (x+1)^3-x^3=19*n^2.

The programs for A145124, there is no canonical definition to state claims against.
-/

/-! ## A145124.P6606417247916630126

`floor(A145694(n+1)/2)`
-/

namespace A145124.P6606417247916630126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A145694 (n + 1) : ℚ) / 2⌋

end

end A145124.P6606417247916630126

/-! ## A145124.P588669573662515722

`A145122(n+1)/19`
-/

namespace A145124.P588669573662515722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145122 (n + 1) : ℚ) / 19

end

end A145124.P588669573662515722

/-! ## A145124.P6441783540242936303

`floor(A041424(2*n)/6)`
-/

namespace A145124.P6441783540242936303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A041424 (2 * n) : ℚ) / 6⌋

end

end A145124.P6441783540242936303

/-! ## A145124.P11572172331956784923

`floor(Δ[A174759(n+1)/30]/2)`
-/

namespace A145124.P11572172331956784923
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174759 (n + 1) : ℚ) / 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n) / 2⌋

end

end A145124.P11572172331956784923

/-! ## A145124.P3002233675923696539

`A145122(n+1)%(1-A145694(n+1))`
-/

namespace A145124.P3002233675923696539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145122 (n + 1)) (1 - A145694 (n + 1))

end

end A145124.P3002233675923696539

/-!
# A145125: Primes of the form 4n^2-4n+653.

The programs for A145125, there is no canonical definition to state claims against.
-/

/-! ## A145125.P4232273101388773550

`A145202(1-(1-n)%(n+1))`
-/

namespace A145125.P4232273101388773550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145202 (1 - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A145125.P4232273101388773550

/-! ## A145125.P10256142903563981916

`A145202((2*n)%(n+1)+1)`
-/

namespace A145125.P10256142903563981916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145202 (2 * n % (n + 1) + 1)

end

end A145125.P10256142903563981916

/-! ## A145125.P1650866588528998162

`A145202(n-ceil(n/(n+1))+1)`
-/

namespace A145125.P1650866588528998162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145202 ((n : ℤ) - ⌈(n : ℚ) / (n + 1 : ℚ)⌉ + 1).toNat

end

end A145125.P1650866588528998162

/-! ## A145125.P4133681054935535699

`lcm(A033999(n), A145202(A028310(n)))`
-/

namespace A145125.P4133681054935535699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A145202 (A028310 n).toNat)

end

end A145125.P4133681054935535699

/-! ## A145125.P9184723053026626828

`A145202(A028310(n))%A274042(n+1)`
-/

namespace A145125.P9184723053026626828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145202 (A028310 n).toNat) (A274042 (n + 1))

end

end A145125.P9184723053026626828

/-! ## A145125.P7854533700209327185

`A145202(A028310(n))+A010059(A000069(n+1))`
-/

namespace A145125.P7854533700209327185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145202 (A028310 n).toNat + A010059 (A000069 (n + 1)).toNat

end

end A145125.P7854533700209327185

/-! ## A145125.P4334478953129276898

`A145202(A028310(n))+A010059(A065621(n+1))`
-/

namespace A145125.P4334478953129276898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145202 (A028310 n).toNat + A010059 (A065621 (n + 1)).toNat

end

end A145125.P4334478953129276898

/-!
# A145126: a(n) = 1 + (6 + (11 + (6 + n)*n)*n)*n/24.

The programs for A145126, the canonical program `A145126.P13807080772124324529` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145126 has offset 0).

The definition of A145126 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+(6+(11+(6+n)*n)*n)*n/24` (program `A145126.P6677109831619382078`, by `A145126.P6677109831619382078.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A145126.P13807080772124324529

`C(n+3, 4)+1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A145126

/-- `C(n+3, 4)+1` -/
def P13807080772124324529.Spec : Prop :=
  ∀ n, (P13807080772124324529.a n : ℤ) = A145126 n

theorem P13807080772124324529.correct : P13807080772124324529.Spec := by
  intro n
  simp only [A145126]

end A145126

/-! ## A145126.P6677109831619382078

`1+(6+(11+(6+n)*n)*n)*n/24`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A145126.P6677109831619382078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + ((6 + (11 + (6 + n) * n) * n) * n : ℚ) / 24

end

end A145126.P6677109831619382078

namespace A145126

/-- `1+(6+(11+(6+n)*n)*n)*n/24` -/
def P6677109831619382078.Spec : Prop :=
  ∀ n, P6677109831619382078.a n = (A145126 n : ℚ)

theorem P6677109831619382078.correct : P6677109831619382078.Spec := by
  intro n
  simp only [A145126, Nat.add_sub_cancel, A145126.P6677109831619382078.a, A145126.P13807080772124324529.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A145126

/-! ## A145126.P4221218889447063218

`-xor(-1, ∑[∑[∑[n]]])`
-/

namespace A145126.P4221218889447063218
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A145126.P4221218889447063218

namespace A145126

/-- `-xor(-1, ∑[∑[∑[n]]])` -/
def P4221218889447063218.Spec : Prop :=
  ∀ n, P4221218889447063218.a n = A145126 n

end A145126

/-! ## A145126.P1550497990906471623

`ceil(1/acot(∑[∑[∑[n]]]))`
-/

namespace A145126.P1550497990906471623
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉

end

end A145126.P1550497990906471623

namespace A145126

/-- `ceil(1/acot(∑[∑[∑[n]]]))` -/
def P1550497990906471623.Spec : Prop :=
  ∀ n, P1550497990906471623.a n = A145126 n

end A145126

/-! ## A145126.P11746086216535546567

`∑[round(1/acot(∑[∑[n]]))]`
-/

namespace A145126.P11746086216535546567
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145126.P11746086216535546567

namespace A145126

/-- `∑[round(1/acot(∑[∑[n]]))]` -/
def P11746086216535546567.Spec : Prop :=
  ∀ n, P11746086216535546567.a n = A145126 n

end A145126

/-! ## A145126.P3072780393548156499

`∑[∑[∑[n]]^floor(atan(n))]`
-/

namespace A145126.P3072780393548156499
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145126.P3072780393548156499

namespace A145126

/-- `∑[∑[∑[n]]^floor(atan(n))]` -/
def P3072780393548156499.Spec : Prop :=
  ∀ n, P3072780393548156499.a n = (A145126 n : ℚ)

end A145126

/-! ## A145126.P3828064303872874071

`∑[∑[n²]-a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A145126.P3828064303872874071
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145126.P3828064303872874071

namespace A145126

/-- `∑[∑[n²]-a(n-1)]` -/
def P3828064303872874071.Spec : Prop :=
  ∀ n, P3828064303872874071.a n = A145126 n

end A145126

/-! ## A145126.P14979047920401598171

`floor(n-∑[a(n-1)-∑[n]])` with `a(0)=-1, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A145126.P14979047920401598171
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 0] fun n f1 =>
  f1 (n - 1) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145126.P14979047920401598171

namespace A145126

/-- `floor(n-∑[a(n-1)-∑[n]])` -/
def P14979047920401598171.Spec : Prop :=
  ∀ n, P14979047920401598171.a n = A145126 n

end A145126

/-! ## A145126.P9620588356098105667

`∑[n-∑[a(n-1)-n]]` with `a(0)=-1, a(1)=1, a(2)=-2`
-/

namespace A145126.P9620588356098105667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1, 1, -2] fun n f2 =>
  f2 (n - 1) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145126.P9620588356098105667

namespace A145126

/-- `∑[n-∑[a(n-1)-n]]` -/
def P9620588356098105667.Spec : Prop :=
  ∀ n, P9620588356098105667.a n = A145126 n

end A145126

/-! ## A145126.P14282540236257012122

`∑[A003600(n)-n]`
-/

namespace A145126.P14282540236257012122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003600 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145126.P14282540236257012122

namespace A145126

/-- `∑[A003600(n)-n]` -/
def P14282540236257012122.Spec : Prop :=
  ∀ n, P14282540236257012122.a n = A145126 n

end A145126

/-! ## A145126.P11001370074925923400

`(n*A000292(n+1)+4)/4`
-/

namespace A145126.P11001370074925923400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A000292 (n + 1) + 4 : ℚ) / 4

end

end A145126.P11001370074925923400

namespace A145126

/-- `(n*A000292(n+1)+4)/4` -/
def P11001370074925923400.Spec : Prop :=
  ∀ n, P11001370074925923400.a n = (A145126 n : ℚ)

theorem P11001370074925923400.correct : P11001370074925923400.Spec := by
  intro n
  simp only [A145126, Nat.add_sub_cancel, A145126.P11001370074925923400.a, A145126.P13807080772124324529.a, A000292, A000292.P18322089543142633594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A145126

/-! ## A145126.P12867174423026991219

`∑[A000292(A028310(n))]`
-/

namespace A145126.P12867174423026991219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145126.P12867174423026991219

namespace A145126

/-- `∑[A000292(A028310(n))]` -/
def P12867174423026991219.Spec : Prop :=
  ∀ n, P12867174423026991219.a n = A145126 n

end A145126

/-! ## A145126.P7332066964022699144

`Δ[A154322(n)]`
-/

namespace A145126.P7332066964022699144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154322 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A145126.P7332066964022699144

namespace A145126

/-- `Δ[A154322(n)]` -/
def P7332066964022699144.Spec : Prop :=
  ∀ n, P7332066964022699144.a n = A145126 n

theorem P7332066964022699144.correct : P7332066964022699144.Spec := by
  intro n
  simp only [A145126, Nat.add_sub_cancel, A145126.P7332066964022699144.f1, A145126.P7332066964022699144.a, A145126.P13807080772124324529.a, A154322, A154322.P6081290869120484246.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A145126

/-! ## A145126.P8810259526188890748

`Δ[A161701(n+2)]`
-/

namespace A145126.P8810259526188890748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161701 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A145126.P8810259526188890748

namespace A145126

/-- `Δ[A161701(n+2)]` -/
def P8810259526188890748.Spec : Prop :=
  ∀ n, P8810259526188890748.a n = A145126 n

theorem P8810259526188890748.correct : P8810259526188890748.Spec := by
  intro n
  simp only [A145126, Nat.add_sub_cancel, A145126.P8810259526188890748.f1, A145126.P8810259526188890748.a, A145126.P13807080772124324529.a, A161701, A161701.P6099894981914730520.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A145126

/-! ## A145126.P17814641862878693430

`A051677(∑[n]+1)`
-/

namespace A145126.P17814641862878693430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051677 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A145126.P17814641862878693430

namespace A145126

/-- `A051677(∑[n]+1)` -/
def P17814641862878693430.Spec : Prop :=
  ∀ n, P17814641862878693430.a n = A145126 n

end A145126

/-! ## A145126.P10650549449034369830

`A008748(∑[n]+n)`
-/

namespace A145126.P10650549449034369830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008748 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A145126.P10650549449034369830

namespace A145126

/-- `A008748(∑[n]+n)` -/
def P10650549449034369830.Spec : Prop :=
  ∀ n, P10650549449034369830.a n = A145126 n

end A145126

/-! ## A145126.P3994660337905308195

`A152950(∑[n+1])/3`
-/

namespace A145126.P3994660337905308195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152950 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3

end

end A145126.P3994660337905308195

namespace A145126

/-- `A152950(∑[n+1])/3` -/
def P3994660337905308195.Spec : Prop :=
  ∀ n, P3994660337905308195.a n = (A145126 n : ℚ)

end A145126

/-! ## A145126.P7126582002384261412

`A046127(A000124(n+1))/A014206(n+1)`
-/

namespace A145126.P7126582002384261412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046127 (A000124 (n + 1)).toNat : ℚ) / (A014206 (n + 1) : ℚ)

end

end A145126.P7126582002384261412

namespace A145126

/-- `A046127(A000124(n+1))/A014206(n+1)` -/
def P7126582002384261412.Spec : Prop :=
  ∀ n, P7126582002384261412.a n = (A145126 n : ℚ)

end A145126

/-! ## A145126.P3176728182419688179

`∑[A026148(∑[n+3])]`
-/

namespace A145126.P3176728182419688179
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145126.P3176728182419688179

namespace A145126

/-- `∑[A026148(∑[n+3])]` -/
def P3176728182419688179.Spec : Prop :=
  ∀ n, P3176728182419688179.a n = A145126 n

end A145126

/-! ## A145126.P12351977648350264268

`∑[A061676(∑[n+3])]`
-/

namespace A145126.P12351977648350264268
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061676 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145126.P12351977648350264268

namespace A145126

/-- `∑[A061676(∑[n+3])]` -/
def P12351977648350264268.Spec : Prop :=
  ∀ n, P12351977648350264268.a n = A145126 n

end A145126

/-!
# A145127: a(n) = 1 + (144 + (50 + (35 + (10 + n)*n)*n)*n)*n/120.

The programs for A145127, the canonical program `A145127.P6868547568372436535` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145127 has offset 0).

The definition of A145127 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145127.P6868547568372436535

`1+(144+(50+(35+(10+n)*n)*n)*n)*n/120`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A145127

/-- `1+(144+(50+(35+(10+n)*n)*n)*n)*n/120` -/
def P6868547568372436535.Spec : Prop :=
  ∀ n, P6868547568372436535.a n = (A145127 n : ℚ)

end A145127

/-! ## A145127.P14250436361329543234

`∑[C(n+3, 4)+1]`
-/

namespace A145127.P14250436361329543234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 4 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145127.P14250436361329543234

namespace A145127

/-- `∑[C(n+3, 4)+1]` -/
def P14250436361329543234.Spec : Prop :=
  ∀ n, (P14250436361329543234.a n : ℤ) = A145127 n

end A145127

/-! ## A145127.P6949175483074687895

`∑[∑[n²]+a(n-2)]` with `a(0)=1, a(1)=2`
-/

namespace A145127.P6949175483074687895
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145127.P6949175483074687895

namespace A145127

/-- `∑[∑[n²]+a(n-2)]` -/
def P6949175483074687895.Spec : Prop :=
  ∀ n, (P6949175483074687895.a n : ℤ) = A145127 n

end A145127

/-! ## A145127.P7441822066995899418

`∑[1-∑[∑[a(n-1)-n]]]` with `a(0)=0`
-/

namespace A145127.P7441822066995899418
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f3 =>
  f3 (n - 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145127.P7441822066995899418

namespace A145127

/-- `∑[1-∑[∑[a(n-1)-n]]]` -/
def P7441822066995899418.Spec : Prop :=
  ∀ n, P7441822066995899418.a n = A145127 n

end A145127

/-! ## A145127.P10995261835383884591

`∑[A145126(n)]`
-/

namespace A145127.P10995261835383884591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145127.P10995261835383884591

namespace A145127

/-- `∑[A145126(n)]` -/
def P10995261835383884591.Spec : Prop :=
  ∀ n, P10995261835383884591.a n = A145127 n

end A145127

/-! ## A145127.P16360997863380706747

`∑[A101338(n+1)-(n+1)]`
-/

namespace A145127.P16360997863380706747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101338 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145127.P16360997863380706747

namespace A145127

/-- `∑[A101338(n+1)-(n+1)]` -/
def P16360997863380706747.Spec : Prop :=
  ∀ n, P16360997863380706747.a n = A145127 n

end A145127

/-! ## A145127.P6998527972549114050

`Δ[A000579(n+4)+(n²+n)/2]`
-/

namespace A145127.P6998527972549114050
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000579 (n + 4) : ℚ) + (n ^ 2 + n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A145127.P6998527972549114050

namespace A145127

/-- `Δ[A000579(n+4)+(n²+n)/2]` -/
def P6998527972549114050.Spec : Prop :=
  ∀ n, P6998527972549114050.a n = (A145127 n : ℚ)

end A145127

/-!
# A145128: a(n) = 1 + (1200 + (634 + (225 + (85 + (15 + n)*n)*n)*n)*n)*n/720.

The programs for A145128, the canonical program `A145128.P696980081590588387` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145128 has offset 0).

The definition of A145128 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145128.P696980081590588387

`∑[∑[∑[∑[∑[n]]]+1]]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A145128

/-- `∑[∑[∑[∑[∑[n]]]+1]]` -/
def P696980081590588387.Spec : Prop :=
  ∀ n, (P696980081590588387.a n : ℤ) = A145128 n

theorem P696980081590588387.correct : P696980081590588387.Spec := by
  intro n
  simp only [A145128]

end A145128

/-! ## A145128.P14463703872983354302

`A145127(n)+a(n-1)` with `a(0)=1`
-/

namespace A145128.P14463703872983354302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A145127 n + a (n - 1)

end

end A145128.P14463703872983354302

namespace A145128

/-- `A145127(n)+a(n-1)` -/
def P14463703872983354302.Spec : Prop :=
  ∀ n, P14463703872983354302.a n = A145128 n

end A145128

/-! ## A145128.P15138173130810809773

`a(n-1)+A323228(n)+n` with `a(0)=1`
-/

namespace A145128.P15138173130810809773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A323228 n + (n : ℤ))

end

end A145128.P15138173130810809773

namespace A145128

/-- `a(n-1)+A323228(n)+n` -/
def P15138173130810809773.Spec : Prop :=
  ∀ n, P15138173130810809773.a n = A145128 n

end A145128

/-! ## A145128.P15244853346400316114

`∑[A027658(n)]-A000292(n)`
-/

namespace A145128.P15244853346400316114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027658 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000292 n

end

end A145128.P15244853346400316114

namespace A145128

/-- `∑[A027658(n)]-A000292(n)` -/
def P15244853346400316114.Spec : Prop :=
  ∀ n, P15244853346400316114.a n = A145128 n

end A145128

/-! ## A145128.P13802838414817396950

`or(∑[A145127(n)], A000007(n))`
-/

namespace A145128.P13802838414817396950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A145128.P13802838414817396950

namespace A145128

/-- `or(∑[A145127(n)], A000007(n))` -/
def P13802838414817396950.Spec : Prop :=
  ∀ n, P13802838414817396950.a n = A145128 n

end A145128

/-! ## A145128.P8464459703503793212

`A257200(n+1)-A005582(n)`
-/

namespace A145128.P8464459703503793212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257200 (n + 1) - A005582 n

end

end A145128.P8464459703503793212

namespace A145128

/-- `A257200(n+1)-A005582(n)` -/
def P8464459703503793212.Spec : Prop :=
  ∀ n, P8464459703503793212.a n = A145128 n

end A145128

/-! ## A145128.P6341962833305741345

`A000217(n+1)+A166189(n)-A001769(n)`
-/

namespace A145128.P6341962833305741345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A166189 n - A001769 n)

end

end A145128.P6341962833305741345

namespace A145128

/-- `A000217(n+1)+A166189(n)-A001769(n)` -/
def P6341962833305741345.Spec : Prop :=
  ∀ n, P6341962833305741345.a n = A145128 n

end A145128

/-! ## A145128.P8307465083269381558

`A145129(n+1)-(A145129(n)+A145127(n+1))`
-/

namespace A145128.P8307465083269381558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145129 (n + 1) - (A145129 n + A145127 (n + 1))

end

end A145128.P8307465083269381558

namespace A145128

/-- `A145129(n+1)-(A145129(n)+A145127(n+1))` -/
def P8307465083269381558.Spec : Prop :=
  ∀ n, P8307465083269381558.a n = A145128 n

end A145128

/-! ## A145128.P1748715572534041926

`A027658(n)+A000579(n+4)`
-/

namespace A145128.P1748715572534041926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027658 n + A000579 (n + 4)

end

end A145128.P1748715572534041926

namespace A145128

/-- `A027658(n)+A000579(n+4)` -/
def P1748715572534041926.Spec : Prop :=
  ∀ n, P1748715572534041926.a n = A145128 n

end A145128

/-! ## A145128.P12274403205563196060

`A000579(n+5)+A000217(n+1)`
-/

namespace A145128.P12274403205563196060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 5) + A000217 (n + 1)

end

end A145128.P12274403205563196060

namespace A145128

/-- `A000579(n+5)+A000217(n+1)` -/
def P12274403205563196060.Spec : Prop :=
  ∀ n, P12274403205563196060.a n = A145128 n

end A145128

/-! ## A145128.P14817222985226475509

`A000579(n+5)+record[A008795(n)]`
-/

namespace A145128.P14817222985226475509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 5) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145128.P14817222985226475509

namespace A145128

/-- `A000579(n+5)+record[A008795(n)]` -/
def P14817222985226475509.Spec : Prop :=
  ∀ n, P14817222985226475509.a n = A145128 n

end A145128

/-! ## A145128.P2595898139177253685

`∑[A145127(n)]%A005010(n)`
-/

namespace A145128.P2595898139177253685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A005010 n)

end

end A145128.P2595898139177253685

namespace A145128

/-- `∑[A145127(n)]%A005010(n)` -/
def P2595898139177253685.Spec : Prop :=
  ∀ n, P2595898139177253685.a n = A145128 n

end A145128

/-! ## A145128.P18381146612864029755

`A038722(A000124(n))+A000579(n+5)`
-/

namespace A145128.P18381146612864029755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A000124 n).toNat + A000579 (n + 5)

end

end A145128.P18381146612864029755

namespace A145128

/-- `A038722(A000124(n))+A000579(n+5)` -/
def P18381146612864029755.Spec : Prop :=
  ∀ n, P18381146612864029755.a n = A145128 n

end A145128

/-! ## A145128.P16360222274410054450

`A253145(n)+A007318(A133263(n+5)+4)`
-/

namespace A145128.P16360222274410054450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n + A007318 (A133263 (n + 5) + 4).toNat

end

end A145128.P16360222274410054450

namespace A145128

/-- `A253145(n)+A007318(A133263(n+5)+4)` -/
def P16360222274410054450.Spec : Prop :=
  ∀ n, P16360222274410054450.a n = A145128 n

end A145128

/-! ## A145128.P16591456044268218779

`A253145(n)+A007318(A046691(n+3)+10)`
-/

namespace A145128.P16591456044268218779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n + A007318 (A046691 (n + 3) + 10).toNat

end

end A145128.P16591456044268218779

namespace A145128

/-- `A253145(n)+A007318(A046691(n+3)+10)` -/
def P16591456044268218779.Spec : Prop :=
  ∀ n, P16591456044268218779.a n = A145128 n

end A145128

/-!
# A145129: a(n) = 1 + (9960 + (6804 + (2464 + (735 + (175 + (21 + n)*n)*n)*n)*n)*n)*n/5040.

The programs for A145129, the canonical program `A145129.P11302167375084164950` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145129 has offset 0).

The definition of A145129 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145129.P11302167375084164950

`∑[∑[∑[∑[∑[∑[n]]]+1]]]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A145129

/-- `∑[∑[∑[∑[∑[∑[n]]]+1]]]` -/
def P11302167375084164950.Spec : Prop :=
  ∀ n, (P11302167375084164950.a n : ℤ) = A145129 n

theorem P11302167375084164950.correct : P11302167375084164950.Spec := by
  intro n
  simp only [A145129]

end A145129

/-! ## A145129.P9241553934832846397

`or(∑[A145128(n)], char[1])`
-/

namespace A145129.P9241553934832846397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145128 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A145129.P9241553934832846397

namespace A145129

/-- `or(∑[A145128(n)], char[1])` -/
def P9241553934832846397.Spec : Prop :=
  ∀ n, P9241553934832846397.a n = A145129 n

end A145129

/-! ## A145129.P1489311766151831325

`∑[A145128(n)]%A145130(n)`
-/

namespace A145129.P1489311766151831325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A145130 n)

end

end A145129.P1489311766151831325

namespace A145129

/-- `∑[A145128(n)]%A145130(n)` -/
def P1489311766151831325.Spec : Prop :=
  ∀ n, P1489311766151831325.a n = A145129 n

end A145129

/-! ## A145129.P11971148812813835114

`A133252(n)+A098992(n+1)`
-/

namespace A145129.P11971148812813835114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133252 n + A098992 (n + 1)

end

end A145129.P11971148812813835114

namespace A145129

/-- `A133252(n)+A098992(n+1)` -/
def P11971148812813835114.Spec : Prop :=
  ∀ n, P11971148812813835114.a n = A145129 n

end A145129

/-! ## A145129.P6891409040238306321

`lcm(∑[A145128(n)], A348039(n+1))`
-/

namespace A145129.P6891409040238306321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145128 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A348039 (n + 1))

end

end A145129.P6891409040238306321

namespace A145129

/-- `lcm(∑[A145128(n)], A348039(n+1))` -/
def P6891409040238306321.Spec : Prop :=
  ∀ n, (P6891409040238306321.a n : ℤ) = A145129 n

end A145129

/-! ## A145129.P8938350107999565790

`A145130(n+1)-(A145130(n)+A145128(n+1))`
-/

namespace A145129.P8938350107999565790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145130 (n + 1) - (A145130 n + A145128 (n + 1))

end

end A145129.P8938350107999565790

namespace A145129

/-- `A145130(n+1)-(A145130(n)+A145128(n+1))` -/
def P8938350107999565790.Spec : Prop :=
  ∀ n, P8938350107999565790.a n = A145129 n

end A145129

/-! ## A145129.P16688390131961860917

`A000292(n+1)+A120410(n)/A120409(n+1)`
-/

namespace A145129.P16688390131961860917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000292 (n + 1) : ℚ) + (A120410 n : ℚ) / (A120409 (n + 1) : ℚ)

end

end A145129.P16688390131961860917

namespace A145129

/-- `A000292(n+1)+A120410(n)/A120409(n+1)` -/
def P16688390131961860917.Spec : Prop :=
  ∀ n, P16688390131961860917.a n = (A145129 n : ℚ)

end A145129

/-! ## A145129.P898659316641589859

`lcm(∑[A145128(n)], A242179(n))`
-/

namespace A145129.P898659316641589859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145128 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A242179 n)

end

end A145129.P898659316641589859

namespace A145129

/-- `lcm(∑[A145128(n)], A242179(n))` -/
def P898659316641589859.Spec : Prop :=
  ∀ n, (P898659316641589859.a n : ℤ) = A145129 n

end A145129

/-! ## A145129.P6328746837652780189

`A145153(A000217(n+9)-(n+1))`
-/

namespace A145129.P6328746837652780189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145153 (A000217 (n + 9) - (n + 1 : ℤ)).toNat

end

end A145129.P6328746837652780189

namespace A145129

/-- `A145153(A000217(n+9)-(n+1))` -/
def P6328746837652780189.Spec : Prop :=
  ∀ n, P6328746837652780189.a n = A145129 n

end A145129

/-!
# A145130: a(n) = 2 + (89040 + (71868 + (29932 + (8449 + (1960 + (322 + (28 + n)*n)*n)*n)*n)*n)*n)*n/40320.

The programs for A145130, the canonical program `A145130.P7628917393484858361` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145130 has offset 0).

The definition of A145130 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145130.P7628917393484858361

`∑[∑[∑[∑[∑[∑[∑[n]]]+1]]]]+1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A145130

/-- `∑[∑[∑[∑[∑[∑[∑[n]]]+1]]]]+1` -/
def P7628917393484858361.Spec : Prop :=
  ∀ n, (P7628917393484858361.a n : ℤ) = A145130 n

theorem P7628917393484858361.correct : P7628917393484858361.Spec := by
  intro n
  simp only [A145130]

end A145130

/-! ## A145130.P7009008774479629366

`∑[A145129(n)+A000007(n)]`
-/

namespace A145130.P7009008774479629366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145129 n + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145130.P7009008774479629366

namespace A145130

/-- `∑[A145129(n)+A000007(n)]` -/
def P7009008774479629366.Spec : Prop :=
  ∀ n, P7009008774479629366.a n = A145130 n

end A145130

/-! ## A145130.P6966625001263776309

`∑[A054977(n)*A145129(n)]`
-/

namespace A145130.P6966625001263776309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A145129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145130.P6966625001263776309

namespace A145130

/-- `∑[A054977(n)*A145129(n)]` -/
def P6966625001263776309.Spec : Prop :=
  ∀ n, P6966625001263776309.a n = A145130 n

end A145130

/-! ## A145130.P16922260562803397061

`∑[A145129(n)+A064538(n)%2]`
-/

namespace A145130.P16922260562803397061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145129 n + Int.tmod (A064538 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145130.P16922260562803397061

namespace A145130

/-- `∑[A145129(n)+A064538(n)%2]` -/
def P16922260562803397061.Spec : Prop :=
  ∀ n, P16922260562803397061.a n = A145130 n

end A145130

/-! ## A145130.P15588750261200644108

`∑[gcd(2, A004273(n))*A145129(n)]`
-/

namespace A145130.P15588750261200644108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A004273 n) : ℤ) * A145129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145130.P15588750261200644108

namespace A145130

/-- `∑[gcd(2, A004273(n))*A145129(n)]` -/
def P15588750261200644108.Spec : Prop :=
  ∀ n, P15588750261200644108.a n = A145130 n

end A145130

/-! ## A145130.P6458927371107035388

`∑[A000079(floor(1/(n+1)))*A145129(n)]`
-/

namespace A145130.P6458927371107035388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 ⌊1 / (n + 1 : ℚ)⌋.toNat * A145129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145130.P6458927371107035388

namespace A145130

/-- `∑[A000079(floor(1/(n+1)))*A145129(n)]` -/
def P6458927371107035388.Spec : Prop :=
  ∀ n, P6458927371107035388.a n = A145130 n

end A145130

/-!
# A145131: Expansion of x/((1 - x - x^4)*(1 - x)^2).

The programs for A145131, the canonical program `A145131.P13912360163709560678` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145131 has offset 0).

The definition of A145131 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x/(1-3x+3x^2-x^3-x^4+2x^5-x^6))` (program `A145131.P13912360163709560678`, by `A145131.P13912360163709560678.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A145131.P13912360163709560678

`ogf(x/(1-3x+3x^2-x^3-x^4+2x^5-x^6))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A145131

/-- `ogf(x/(1-3x+3x^2-x^3-x^4+2x^5-x^6))` -/
def P13912360163709560678.Spec : Prop :=
  ∀ n, P13912360163709560678.a n = A145131 n

theorem P13912360163709560678.correct : P13912360163709560678.Spec := by
  intro n
  simp only [A145131]

end A145131

/-! ## A145131.P17754166862729577454

`a(n-1)+a(n-4)+n` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6`
-/

namespace A145131.P17754166862729577454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 6] fun n a =>
  a (n - 1) + (a (n - 4) + n)

end

end A145131.P17754166862729577454

namespace A145131

/-- `a(n-1)+a(n-4)+n` -/
def P17754166862729577454.Spec : Prop :=
  ∀ n, (P17754166862729577454.a n : ℤ) = A145131 n

end A145131

/-! ## A145131.P16208144298404055097

`∑[A098578(n)]`
-/

namespace A145131.P16208144298404055097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145131.P16208144298404055097

namespace A145131

/-- `∑[A098578(n)]` -/
def P16208144298404055097.Spec : Prop :=
  ∀ n, P16208144298404055097.a n = A145131 n

end A145131

/-! ## A145131.P5894951427519530398

`∑[∑[A003269(n)]]`
-/

namespace A145131.P5894951427519530398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145131.P5894951427519530398

namespace A145131

/-- `∑[∑[A003269(n)]]` -/
def P5894951427519530398.Spec : Prop :=
  ∀ n, P5894951427519530398.a n = A145131 n

end A145131

/-! ## A145131.P11565296467039802281

`∑[∑[A017898(n+3)]]`
-/

namespace A145131.P11565296467039802281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145131.P11565296467039802281

namespace A145131

/-- `∑[∑[A017898(n+3)]]` -/
def P11565296467039802281.Spec : Prop :=
  ∀ n, P11565296467039802281.a n = A145131 n

end A145131

/-! ## A145131.P5528262488203922036

`∑[record[A017898(n)-1]]`
-/

namespace A145131.P5528262488203922036
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145131.P5528262488203922036

namespace A145131

/-- `∑[record[A017898(n)-1]]` -/
def P5528262488203922036.Spec : Prop :=
  ∀ n, P5528262488203922036.a n = A145131 n

end A145131

/-! ## A145131.P6859816101033671687

`A145132(n+1)-(A145132(n)+A098578(n+1))`
-/

namespace A145131.P6859816101033671687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145132 (n + 1) - (A145132 n + A098578 (n + 1))

end

end A145131.P6859816101033671687

namespace A145131

/-- `A145132(n+1)-(A145132(n)+A098578(n+1))` -/
def P6859816101033671687.Spec : Prop :=
  ∀ n, P6859816101033671687.a n = A145131 n

end A145131

/-! ## A145131.P40097763256683911

`∑[∑[A145153(A034856(n+1))]]`
-/

namespace A145131.P40097763256683911
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145153 (A034856 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145131.P40097763256683911

namespace A145131

/-- `∑[∑[A145153(A034856(n+1))]]` -/
def P40097763256683911.Spec : Prop :=
  ∀ n, P40097763256683911.a n = A145131 n

end A145131

/-! ## A145131.P11003964831813037345

`∑[A145153(∑[n+3])]`
-/

namespace A145131.P11003964831813037345
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145153 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145131.P11003964831813037345

namespace A145131

/-- `∑[A145153(∑[n+3])]` -/
def P11003964831813037345.Spec : Prop :=
  ∀ n, P11003964831813037345.a n = A145131 n

end A145131

/-! ## A145131.P17753578544176837491

`A048516(A167614(n+2)+2)`
-/

namespace A145131.P17753578544176837491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048516 (A167614 (n + 2) + 2).toNat

end

end A145131.P17753578544176837491

namespace A145131

/-- `A048516(A167614(n+2)+2)` -/
def P17753578544176837491.Spec : Prop :=
  ∀ n, P17753578544176837491.a n = A145131 n

end A145131

/-! ## A145131.P13525768938676285465

`A145153(A000217(n+4)-4)`
-/

namespace A145131.P13525768938676285465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145153 (A000217 (n + 4) - 4).toNat

end

end A145131.P13525768938676285465

namespace A145131

/-- `A145153(A000217(n+4)-4)` -/
def P13525768938676285465.Spec : Prop :=
  ∀ n, P13525768938676285465.a n = A145131 n

end A145131

/-!
# A145132: Expansion of x/((1 - x - x^4)*(1 - x)^3).

The programs for A145132, the canonical program `A145132.P18215905581370902032` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145132 has offset 0).

The definition of A145132 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x/(1-4x+6x^2-4x^3+3x^5-3x^6+x^7))` (program `A145132.P18215905581370902032`, by `A145132.P18215905581370902032.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A145132.P18215905581370902032

`ogf(x/(1-4x+6x^2-4x^3+3x^5-3x^6+x^7))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A145132

/-- `ogf(x/(1-4x+6x^2-4x^3+3x^5-3x^6+x^7))` -/
def P18215905581370902032.Spec : Prop :=
  ∀ n, P18215905581370902032.a n = A145132 n

theorem P18215905581370902032.correct : P18215905581370902032.Spec := by
  intro n
  simp only [A145132]

end A145132

/-! ## A145132.P2192275927502773416

`∑[a(n-1)+a(n-4)+n]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6`
-/

namespace A145132.P2192275927502773416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 6] fun n f1 =>
  f1 (n - 1) + (f1 (n - 4) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145132.P2192275927502773416

namespace A145132

/-- `∑[a(n-1)+a(n-4)+n]` -/
def P2192275927502773416.Spec : Prop :=
  ∀ n, (P2192275927502773416.a n : ℤ) = A145132 n

end A145132

/-! ## A145132.P12800773149029322449

`∑[A145131(n)]`
-/

namespace A145132.P12800773149029322449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145132.P12800773149029322449

namespace A145132

/-- `∑[A145131(n)]` -/
def P12800773149029322449.Spec : Prop :=
  ∀ n, P12800773149029322449.a n = A145132 n

end A145132

/-! ## A145132.P13092985422227485190

`∑[∑[A098578(n)]]`
-/

namespace A145132.P13092985422227485190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098578 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145132.P13092985422227485190

namespace A145132

/-- `∑[∑[A098578(n)]]` -/
def P13092985422227485190.Spec : Prop :=
  ∀ n, P13092985422227485190.a n = A145132 n

end A145132

/-! ## A145132.P4557298851194410100

`∑[∑[∑[A003269(n)]]]`
-/

namespace A145132.P4557298851194410100
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145132.P4557298851194410100

namespace A145132

/-- `∑[∑[∑[A003269(n)]]]` -/
def P4557298851194410100.Spec : Prop :=
  ∀ n, P4557298851194410100.a n = A145132 n

end A145132

/-! ## A145132.P12967355438431162069

`∑[∑[∑[A017898(n+3)]]]`
-/

namespace A145132.P12967355438431162069
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145132.P12967355438431162069

namespace A145132

/-- `∑[∑[∑[A017898(n+3)]]]` -/
def P12967355438431162069.Spec : Prop :=
  ∀ n, P12967355438431162069.a n = A145132 n

end A145132

/-! ## A145132.P3323095533730901425

`A145133(n+1)-(A145133(n)+A145131(n+1))`
-/

namespace A145132.P3323095533730901425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145133 (n + 1) - (A145133 n + A145131 (n + 1))

end

end A145132.P3323095533730901425

namespace A145132

/-- `A145133(n+1)-(A145133(n)+A145131(n+1))` -/
def P3323095533730901425.Spec : Prop :=
  ∀ n, P3323095533730901425.a n = A145132 n

end A145132

/-! ## A145132.P2189018746332949476

`∑[∑[A145153(∑[n+3])]]`
-/

namespace A145132.P2189018746332949476
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145153 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145132.P2189018746332949476

namespace A145132

/-- `∑[∑[A145153(∑[n+3])]]` -/
def P2189018746332949476.Spec : Prop :=
  ∀ n, P2189018746332949476.a n = A145132 n

end A145132

/-!
# A145133: Expansion of x/((1 - x - x^4)*(1 - x)^4).

The programs for A145133, the canonical program `A145133.P12711152605573693428` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145133 has offset 0).

The definition of A145133 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x/(1-5x+10x^2-10x^3+4x^4+3x^5-6x^6+4x^7-x^8))` (program `A145133.P12711152605573693428`, by `A145133.P12711152605573693428.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A145133.P12711152605573693428

`ogf(x/(1-5x+10x^2-10x^3+4x^4+3x^5-6x^6+4x^7-x^8))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A145133

/-- `ogf(x/(1-5x+10x^2-10x^3+4x^4+3x^5-6x^6+4x^7-x^8))` -/
def P12711152605573693428.Spec : Prop :=
  ∀ n, P12711152605573693428.a n = A145133 n

theorem P12711152605573693428.correct : P12711152605573693428.Spec := by
  intro n
  simp only [A145133]

end A145133

/-! ## A145133.P8726914425827298928

`∑[∑[a(n-1)+a(n-4)+n]]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6`
-/

namespace A145133.P8726914425827298928
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 6] fun n f2 =>
  f2 (n - 1) + (f2 (n - 4) + n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145133.P8726914425827298928

namespace A145133

/-- `∑[∑[a(n-1)+a(n-4)+n]]` -/
def P8726914425827298928.Spec : Prop :=
  ∀ n, (P8726914425827298928.a n : ℤ) = A145133 n

end A145133

/-! ## A145133.P17401826155735928892

`∑[A145132(n)]`
-/

namespace A145133.P17401826155735928892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145132 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145133.P17401826155735928892

namespace A145133

/-- `∑[A145132(n)]` -/
def P17401826155735928892.Spec : Prop :=
  ∀ n, P17401826155735928892.a n = A145133 n

end A145133

/-! ## A145133.P4392371288613804950

`∑[∑[A145131(n)]]`
-/

namespace A145133.P4392371288613804950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145131 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145133.P4392371288613804950

namespace A145133

/-- `∑[∑[A145131(n)]]` -/
def P4392371288613804950.Spec : Prop :=
  ∀ n, P4392371288613804950.a n = A145133 n

end A145133

/-! ## A145133.P12316169312314805678

`∑[∑[∑[A098578(n)]]]`
-/

namespace A145133.P12316169312314805678
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145133.P12316169312314805678

namespace A145133

/-- `∑[∑[∑[A098578(n)]]]` -/
def P12316169312314805678.Spec : Prop :=
  ∀ n, P12316169312314805678.a n = A145133 n

end A145133

/-! ## A145133.P1705104799623239020

`A145134(n+1)-(A145134(n)+A145132(n+1))`
-/

namespace A145133.P1705104799623239020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145134 (n + 1) - (A145134 n + A145132 (n + 1))

end

end A145133.P1705104799623239020

namespace A145133

/-- `A145134(n+1)-(A145134(n)+A145132(n+1))` -/
def P1705104799623239020.Spec : Prop :=
  ∀ n, P1705104799623239020.a n = A145133 n

end A145133

/-!
# A145134: Expansion of x/((1 - x - x^4)*(1 - x)^5).

The programs for A145134, the canonical program `A145134.P9960458525758057993` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145134 has offset 0).

The definition of A145134 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x/(1-6x+15x^2-20x^3+14x^4-x^5-9x^6+10x^7-5x^8+x^9))` (program `A145134.P9960458525758057993`, by `A145134.P9960458525758057993.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A145134.P9960458525758057993

`ogf(x/(1-6x+15x^2-20x^3+14x^4-x^5-9x^6+10x^7-5x^8+x^9))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A145134

/-- `ogf(x/(1-6x+15x^2-20x^3+14x^4-x^5-9x^6+10x^7-5x^8+x^9))` -/
def P9960458525758057993.Spec : Prop :=
  ∀ n, P9960458525758057993.a n = A145134 n

theorem P9960458525758057993.correct : P9960458525758057993.Spec := by
  intro n
  simp only [A145134]

end A145134

/-! ## A145134.P15860341986669531450

`∑[∑[∑[∑[∑[a(n-1)+a(n-4)]]]]]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A145134.P15860341986669531450
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1] fun n f5 =>
  f5 (n - 1) + f5 (n - 4)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145134.P15860341986669531450

namespace A145134

/-- `∑[∑[∑[∑[∑[a(n-1)+a(n-4)]]]]]` -/
def P15860341986669531450.Spec : Prop :=
  ∀ n, (P15860341986669531450.a n : ℤ) = A145134 n

end A145134

/-! ## A145134.P11621676807099701475

`∑[A145133(n)]`
-/

namespace A145134.P11621676807099701475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145134.P11621676807099701475

namespace A145134

/-- `∑[A145133(n)]` -/
def P11621676807099701475.Spec : Prop :=
  ∀ n, P11621676807099701475.a n = A145134 n

end A145134

/-! ## A145134.P14383961901793092589

`∑[∑[A145132(n)]]`
-/

namespace A145134.P14383961901793092589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145132 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145134.P14383961901793092589

namespace A145134

/-- `∑[∑[A145132(n)]]` -/
def P14383961901793092589.Spec : Prop :=
  ∀ n, P14383961901793092589.a n = A145134 n

end A145134

/-! ## A145134.P7944322188038965815

`∑[∑[∑[A145131(n)]]]`
-/

namespace A145134.P7944322188038965815
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145131 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145134.P7944322188038965815

namespace A145134

/-- `∑[∑[∑[A145131(n)]]]` -/
def P7944322188038965815.Spec : Prop :=
  ∀ n, P7944322188038965815.a n = A145134 n

end A145134

/-! ## A145134.P910539216474689843

`∑[∑[∑[∑[A098578(n)]]]]`
-/

namespace A145134.P910539216474689843
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098578 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145134.P910539216474689843

namespace A145134

/-- `∑[∑[∑[∑[A098578(n)]]]]` -/
def P910539216474689843.Spec : Prop :=
  ∀ n, P910539216474689843.a n = A145134 n

end A145134

/-! ## A145134.P8596856321027184250

`A145135(n+1)-(A145135(n)+A145133(n+1))`
-/

namespace A145134.P8596856321027184250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145135 (n + 1) - (A145135 n + A145133 (n + 1))

end

end A145134.P8596856321027184250

namespace A145134

/-- `A145135(n+1)-(A145135(n)+A145133(n+1))` -/
def P8596856321027184250.Spec : Prop :=
  ∀ n, P8596856321027184250.a n = A145134 n

end A145134

/-!
# A145135: Expansion of x/((1 - x - x^4)*(1 - x)^6).

The programs for A145135, the canonical program `A145135.P2369763809087599516` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145135 has offset 0).

The definition of A145135 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x/(1-7x+21x^2-35x^3+34x^4-15x^5-8x^6+19x^7-15x^8+6x^9-x^10))` (program `A145135.P2369763809087599516`, by `A145135.P2369763809087599516.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A145135.P2369763809087599516

`ogf(x/(1-7x+21x^2-35x^3+34x^4-15x^5-8x^6+19x^7-15x^8+6x^9-x^10))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A145135

/-- `ogf(x/(1-7x+21x^2-35x^3+34x^4-15x^5-8x^6+19x^7-15x^8+6x^9-x^10))` -/
def P2369763809087599516.Spec : Prop :=
  ∀ n, P2369763809087599516.a n = A145135 n

theorem P2369763809087599516.correct : P2369763809087599516.Spec := by
  intro n
  simp only [A145135]

end A145135

/-! ## A145135.P10864149458472935381

`∑[A145134(n)]`
-/

namespace A145135.P10864149458472935381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145135.P10864149458472935381

namespace A145135

/-- `∑[A145134(n)]` -/
def P10864149458472935381.Spec : Prop :=
  ∀ n, P10864149458472935381.a n = A145135 n

end A145135

/-! ## A145135.P12774140983000914853

`∑[∑[A145133(n)]]`
-/

namespace A145135.P12774140983000914853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145133 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145135.P12774140983000914853

namespace A145135

/-- `∑[∑[A145133(n)]]` -/
def P12774140983000914853.Spec : Prop :=
  ∀ n, P12774140983000914853.a n = A145135 n

end A145135

/-! ## A145135.P9684421763409538986

`∑[∑[∑[A145132(n)]]]`
-/

namespace A145135.P9684421763409538986
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145135.P9684421763409538986

namespace A145135

/-- `∑[∑[∑[A145132(n)]]]` -/
def P9684421763409538986.Spec : Prop :=
  ∀ n, P9684421763409538986.a n = A145135 n

end A145135

/-! ## A145135.P5814839988402519593

`∑[∑[∑[∑[A145131(n)]]]]`
-/

namespace A145135.P5814839988402519593
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145131 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145135.P5814839988402519593

namespace A145135

/-- `∑[∑[∑[∑[A145131(n)]]]]` -/
def P5814839988402519593.Spec : Prop :=
  ∀ n, P5814839988402519593.a n = A145135 n

end A145135

/-! ## A145135.P4047532294734314393

`A145136(n)-A145136(A005843(n)%(n+1))`
-/

namespace A145135.P4047532294734314393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145136 n - A145136 (Int.tmod (A005843 n) (n + 1 : ℤ)).toNat

end

end A145135.P4047532294734314393

namespace A145135

/-- `A145136(n)-A145136(A005843(n)%(n+1))` -/
def P4047532294734314393.Spec : Prop :=
  ∀ n, P4047532294734314393.a n = A145135 n

end A145135

/-! ## A145135.P5108453640105597334

`A145136(n+1)-(A145136(n)+A145134(n+1))`
-/

namespace A145135.P5108453640105597334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145136 (n + 1) - (A145136 n + A145134 (n + 1))

end

end A145135.P5108453640105597334

namespace A145135

/-- `A145136(n+1)-(A145136(n)+A145134(n+1))` -/
def P5108453640105597334.Spec : Prop :=
  ∀ n, P5108453640105597334.a n = A145135 n

end A145135

/-!
# A145136: Expansion of x/((1 - x - x^4)*(1 - x)^7).

The programs for A145136, the canonical program `A145136.P16839983959438257715` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145136 has offset 0).

The definition of A145136 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x/(1-8x+28x^2-56x^3+69x^4-49x^5+7x^6+27x^7-34x^8+21x^9-7x^10+x^11))` (program `A145136.P16839983959438257715`, by `A145136.P16839983959438257715.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A145136.P16839983959438257715

`ogf(x/(1-8x+28x^2-56x^3+69x^4-49x^5+7x^6+27x^7-34x^8+21x^9-7x^10+x^11))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A145136

/-- `ogf(x/(1-8x+28x^2-56x^3+69x^4-49x^5+7x^6+27x^7-34x^8+21x^9-7x^10+x^11))` -/
def P16839983959438257715.Spec : Prop :=
  ∀ n, P16839983959438257715.a n = A145136 n

theorem P16839983959438257715.correct : P16839983959438257715.Spec := by
  intro n
  simp only [A145136]

end A145136

/-! ## A145136.P11305681542846819968

`∑[A145135(n)]`
-/

namespace A145136.P11305681542846819968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145135 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145136.P11305681542846819968

namespace A145136

/-- `∑[A145135(n)]` -/
def P11305681542846819968.Spec : Prop :=
  ∀ n, P11305681542846819968.a n = A145136 n

end A145136

/-! ## A145136.P5335138362471937149

`∑[∑[A145134(n)]]`
-/

namespace A145136.P5335138362471937149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145134 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145136.P5335138362471937149

namespace A145136

/-- `∑[∑[A145134(n)]]` -/
def P5335138362471937149.Spec : Prop :=
  ∀ n, P5335138362471937149.a n = A145136 n

end A145136

/-! ## A145136.P851908648646252994

`∑[∑[∑[A145133(n)]]]`
-/

namespace A145136.P851908648646252994
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145133 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145136.P851908648646252994

namespace A145136

/-- `∑[∑[∑[A145133(n)]]]` -/
def P851908648646252994.Spec : Prop :=
  ∀ n, P851908648646252994.a n = A145136 n

end A145136

/-! ## A145136.P5632177800894398900

`∑[∑[∑[∑[A145132(n)]]]]`
-/

namespace A145136.P5632177800894398900
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145132 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145136.P5632177800894398900

namespace A145136

/-- `∑[∑[∑[∑[A145132(n)]]]]` -/
def P5632177800894398900.Spec : Prop :=
  ∀ n, P5632177800894398900.a n = A145136 n

end A145136

/-! ## A145136.P8708398129825254299

`∑[∑[∑[∑[∑[A145131(n)]]]]]`
-/

namespace A145136.P8708398129825254299
noncomputable section

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145131 n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145136.P8708398129825254299

namespace A145136

/-- `∑[∑[∑[∑[∑[A145131(n)]]]]]` -/
def P8708398129825254299.Spec : Prop :=
  ∀ n, P8708398129825254299.a n = A145136 n

end A145136

/-! ## A145136.P3775552714683030430

`Δ[A145137(n)]-A145135(n+1)`
-/

namespace A145136.P3775552714683030430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A145135 (n + 1)

end

end A145136.P3775552714683030430

namespace A145136

/-- `Δ[A145137(n)]-A145135(n+1)` -/
def P3775552714683030430.Spec : Prop :=
  ∀ n, P3775552714683030430.a n = A145136 n

end A145136

/-! ## A145136.P6851857855467565566

`Δ[A145137(n)-A145135(n)]-A145135(n)`
-/

namespace A145136.P6851857855467565566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145137 n - A145135 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A145135 n

end

end A145136.P6851857855467565566

namespace A145136

/-- `Δ[A145137(n)-A145135(n)]-A145135(n)` -/
def P6851857855467565566.Spec : Prop :=
  ∀ n, P6851857855467565566.a n = A145136 n

end A145136

/-!
# A145137: Expansion of x/((1 - x - x^4)*(1 - x)^8).

The programs for A145137, the canonical program `A145137.P8579127292406980359` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145137 has offset 0).

The definition of A145137 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 686 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145137.P8579127292406980359

`∑[A145136(n)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A145137

/-- `∑[A145136(n)]` -/
def P8579127292406980359.Spec : Prop :=
  ∀ n, P8579127292406980359.a n = A145137 n

theorem P8579127292406980359.correct : P8579127292406980359.Spec := by
  intro n
  simp only [A145137]

end A145137

/-! ## A145137.P3641770677957092739

`∑[∑[A145135(n)]]`
-/

namespace A145137.P3641770677957092739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145135 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145137.P3641770677957092739

namespace A145137

/-- `∑[∑[A145135(n)]]` -/
def P3641770677957092739.Spec : Prop :=
  ∀ n, P3641770677957092739.a n = A145137 n

end A145137

/-! ## A145137.P11434135141199330225

`∑[∑[∑[A145134(n)]]]`
-/

namespace A145137.P11434135141199330225
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145134 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145137.P11434135141199330225

namespace A145137

/-- `∑[∑[∑[A145134(n)]]]` -/
def P11434135141199330225.Spec : Prop :=
  ∀ n, P11434135141199330225.a n = A145137 n

end A145137

/-! ## A145137.P16569939372184656789

`A145153(A000217(n+10)-10)`
-/

namespace A145137.P16569939372184656789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145153 (A000217 (n + 10) - 10).toNat

end

end A145137.P16569939372184656789

namespace A145137

/-- `A145153(A000217(n+10)-10)` -/
def P16569939372184656789.Spec : Prop :=
  ∀ n, P16569939372184656789.a n = A145137 n

end A145137

/-! ## A145137.P9319857044991502185

`A145153(A161680(n+11)-10)`
-/

namespace A145137.P9319857044991502185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145153 (A161680 (n + 11) - 10).toNat

end

end A145137.P9319857044991502185

namespace A145137

/-- `A145153(A161680(n+11)-10)` -/
def P9319857044991502185.Spec : Prop :=
  ∀ n, P9319857044991502185.a n = A145137 n

end A145137

/-!
# A145138: Main diagonal of square array A145153.

The programs for A145138, there is no canonical definition to state claims against.
-/

/-! ## A145138.P1199290665450164746

`A145153(∑[4*n])`
-/

namespace A145138.P1199290665450164746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145153 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A145138.P1199290665450164746

/-! ## A145138.P9599169036901471164

`record[A145153(A226725(n+1))]`
-/

namespace A145138.P9599169036901471164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145153 (A226725 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145138.P9599169036901471164

/-! ## A145138.P2642577586120189050

`record[A145153(n*A008619(n))]`
-/

namespace A145138.P2642577586120189050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145153 ((n : ℤ) * A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145138.P2642577586120189050

/-! ## A145138.P14576984000941446327

`record[gcd(A008482(n), A145153(n))]`
-/

namespace A145138.P14576984000941446327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A145153 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145138.P14576984000941446327

/-! ## A145138.P12012484710088178660

`record[A145153(n*A032742(n+2))]`
-/

namespace A145138.P12012484710088178660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145153 ((n : ℤ) * A032742 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145138.P12012484710088178660

/-! ## A145138.P12083872360703750323

`record[A145153(2*n)-A008482(2*n)²]`
-/

namespace A145138.P12083872360703750323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145153 (2 * n) - A008482 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145138.P12083872360703750323

/-! ## A145138.P7236867555775762708

`record[A145153(A057979((n+1)²))]`
-/

namespace A145138.P7236867555775762708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145153 (A057979 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145138.P7236867555775762708

/-! ## A145138.P8888817877908327629

`record[A145153(A032742((n+2)²-1))]`
-/

namespace A145138.P8888817877908327629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145153 (A032742 ((n + 2) ^ 2 - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145138.P8888817877908327629

/-!
# A145139: Antidiagonal sums of A145153.

The programs for A145139, the canonical program `A145139.P5888254130982327348` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145139 has offset 0).

The definition of A145139 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145139.P5888254130982327348

`3*a(n-1)-2*a(n-2)+a(n-4)-2*a(n-5)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=4`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A145139

/-- `3*a(n-1)-2*a(n-2)+a(n-4)-2*a(n-5)` -/
def P5888254130982327348.Spec : Prop :=
  ∀ n, P5888254130982327348.a n = A145139 n

theorem P5888254130982327348.correct : P5888254130982327348.Spec := by
  intro n
  simp only [A145139]

end A145139

/-! ## A145139.P2344389267080409273

`∑[A008617(∑[A255047(n)])]`
-/

namespace A145139.P2344389267080409273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145139.P2344389267080409273

namespace A145139

/-- `∑[A008617(∑[A255047(n)])]` -/
def P2344389267080409273.Spec : Prop :=
  ∀ n, P2344389267080409273.a n = A145139 n

end A145139

/-! ## A145139.P9209267051023822504

`∑[A008617(A000325(n+1))]`
-/

namespace A145139.P9209267051023822504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A000325 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145139.P9209267051023822504

namespace A145139

/-- `∑[A008617(A000325(n+1))]` -/
def P9209267051023822504.Spec : Prop :=
  ∀ n, P9209267051023822504.a n = A145139 n

end A145139

/-! ## A145139.P16766801507892756269

`∑[A008617(A276345(2^n))]`
-/

namespace A145139.P16766801507892756269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A276345 (2 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145139.P16766801507892756269

namespace A145139

/-- `∑[A008617(A276345(2^n))]` -/
def P16766801507892756269.Spec : Prop :=
  ∀ n, P16766801507892756269.a n = A145139 n

end A145139

/-! ## A145139.P1146932281284292826

`∑[A008617(A126646(n)-n)]`
-/

namespace A145139.P1146932281284292826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A126646 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145139.P1146932281284292826

namespace A145139

/-- `∑[A008617(A126646(n)-n)]` -/
def P1146932281284292826.Spec : Prop :=
  ∀ n, P1146932281284292826.a n = A145139 n

end A145139

/-!
# A145142: Triangle T(n,k), n>=1, 0<=k<=n-1, read by rows: T(n,k)/(n-1)! is the coefficient of x^k in polynomial p_n for the n-th row sequence of A145153.

The programs for A145142, there is no canonical definition to state claims against.
-/

/-! ## A145142.P6579645571312765755

`A372973(n)%A373006(A351973(n))`
-/

namespace A145142.P6579645571312765755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372973 n) (A373006 (A351973 n).toNat)

end

end A145142.P6579645571312765755

/-! ## A145142.P10805529101327794996

`or(A132393(n), A180969(A182894(n)))`
-/

namespace A145142.P10805529101327794996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A132393 n) (A180969 (A182894 n).toNat)

end

end A145142.P10805529101327794996

/-! ## A145142.P6343613901309392031

`or(A180969(A182894(n)), A264433(n))`
-/

namespace A145142.P6343613901309392031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A180969 (A182894 n).toNat) (A264433 n)

end

end A145142.P6343613901309392031

/-! ## A145142.P6311801780479326989

`or(A180969(A182894(n)), A352363(n))`
-/

namespace A145142.P6311801780479326989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A180969 (A182894 n).toNat) (A352363 n)

end

end A145142.P6311801780479326989

/-! ## A145142.P15346308482991547598

`gcd(A132393(n), A364106(A000079(n)))`
-/

namespace A145142.P15346308482991547598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A132393 n) (A364106 (A000079 n).toNat)

end

end A145142.P15346308482991547598

/-!
# A145143: 1st column of A145142.

The programs for A145143, there is no canonical definition to state claims against.
-/

/-! ## A145143.P12922002976086152405

`A145142(∑[n+1]+2)`
-/

namespace A145143.P12922002976086152405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145142 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A145143.P12922002976086152405

/-! ## A145143.P2752451659027696122

`gcd(A014067(n), A145142(A000096(n)+3))`
-/

namespace A145143.P2752451659027696122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014067 n) (A145142 (A000096 n + 3).toNat)

end

end A145143.P2752451659027696122

/-! ## A145143.P4283191276029798799

`or(A145142(A000096(n)+3), A151909(n))`
-/

namespace A145143.P4283191276029798799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A145142 (A000096 n + 3).toNat) (A151909 n)

end

end A145143.P4283191276029798799

/-! ## A145143.P13786474024192863930

`or(A000007(n), A145142(A167487(n)-5))`
-/

namespace A145143.P13786474024192863930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A145142 (A167487 n - 5).toNat)

end

end A145143.P13786474024192863930

/-! ## A145143.P2086837501282659436

`A057427(A241686(n+1))*A145142(A167487(n)-5)`
-/

namespace A145143.P2086837501282659436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A241686 (n + 1)).toNat * A145142 (A167487 n - 5).toNat

end

end A145143.P2086837501282659436

/-!
# A145144: 2nd column of A145142.

The programs for A145144, there is no canonical definition to state claims against.
-/

/-! ## A145144.P9551398627239272086

`A145142(∑[n+2]+4)`
-/

namespace A145144.P9551398627239272086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145142 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A145144.P9551398627239272086

/-! ## A145144.P4145639617288004886

`record[A145142(A000217(n)+3)]`
-/

namespace A145144.P4145639617288004886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145142 (A000217 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145144.P4145639617288004886

/-! ## A145144.P12343560418420598804

`record[and(A133607(n), A145142(n+1))]`
-/

namespace A145144.P12343560418420598804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A133607 n) (A145142 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145144.P12343560418420598804

/-! ## A145144.P11575113532569597404

`record[A145142(A080036(A080036(n)))]`
-/

namespace A145144.P11575113532569597404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145142 (A080036 (A080036 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145144.P11575113532569597404

/-! ## A145144.P10921027388971251292

`A145142(A167614(n+1))+A025438(n)`
-/

namespace A145144.P10921027388971251292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145142 (A167614 (n + 1)).toNat + A025438 n

end

end A145144.P10921027388971251292

/-!
# A145145: 3rd column of A145142.

The programs for A145145, there is no canonical definition to state claims against.
-/

/-! ## A145145.P12173703798490317106

`A145142(A141214(n)+7)`
-/

namespace A145145.P12173703798490317106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145142 (A141214 n + 7).toNat

end

end A145145.P12173703798490317106

/-! ## A145145.P8028545176047032555

`A145142(A052905(n)+9)`
-/

namespace A145145.P8028545176047032555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145142 (A052905 n + 9).toNat

end

end A145145.P8028545176047032555

/-! ## A145145.P339984950334548953

`A145142(A055999(n)+10)`
-/

namespace A145145.P339984950334548953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145142 (A055999 n + 10).toNat

end

end A145145.P339984950334548953

/-! ## A145145.P17825936577216632684

`record[A145142(A167499(n)-1)]`
-/

namespace A145145.P17825936577216632684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145142 (A167499 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145145.P17825936577216632684

/-! ## A145145.P14865183156983531161

`A145142(A167614(n+2)+1)`
-/

namespace A145145.P14865183156983531161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145142 (A167614 (n + 2) + 1).toNat

end

end A145145.P14865183156983531161

/-!
# A145146: 4th column of A145142.

The programs for A145146, there is no canonical definition to state claims against.
-/

/-! ## A145146.P3208588395619929102

`A145142(A155212(n)+13)`
-/

namespace A145146.P3208588395619929102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145142 (A155212 n + 13).toNat

end

end A145146.P3208588395619929102

/-! ## A145146.P9442420977898068573

`A145142(eq[7, A066657(n)])`
-/

namespace A145146.P9442420977898068573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A145146.P9442420977898068573

/-! ## A145146.P9178178090126376144

`A145142(A000217(n+4)+5)`
-/

namespace A145146.P9178178090126376144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145142 (A000217 (n + 4) + 5).toNat

end

end A145146.P9178178090126376144

/-! ## A145146.P8649593452314391152

`A145142(eq[6, A131818(n+1)])`
-/

namespace A145146.P8649593452314391152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A145146.P8649593452314391152

/-! ## A145146.P16325525748121826689

`A145142(A167614(n+2)+n+6)`
-/

namespace A145146.P16325525748121826689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145142 (A167614 (n + 2) + (n + 6 : ℤ)).toNat

end

end A145146.P16325525748121826689

/-!
# A145147: 5th column of A145142.

The programs for A145147, there is no canonical definition to state claims against.
-/

/-! ## A145147.P15892420856657570144

`A145142(A000217(n+5)+6)`
-/

namespace A145147.P15892420856657570144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145142 (A000217 (n + 5) + 6).toNat

end

end A145147.P15892420856657570144

/-! ## A145147.P6533172557576192308

`A145142(A034856(n+4)+8)`
-/

namespace A145147.P6533172557576192308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145142 (A034856 (n + 4) + 8).toNat

end

end A145147.P6533172557576192308

/-! ## A145147.P16177033027100041173

`A145142(A175631(n+7)+7)`
-/

namespace A145147.P16177033027100041173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145142 (A175631 (n + 7) + 7).toNat

end

end A145147.P16177033027100041173

/-! ## A145147.P14417861732370416335

`A145142(A246172(n+1)+20)`
-/

namespace A145147.P14417861732370416335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145142 (A246172 (n + 1) + 20).toNat

end

end A145147.P14417861732370416335

/-! ## A145147.P11418477279310166771

`A145142(eq[7, A131818(n+1)])`
-/

namespace A145147.P11418477279310166771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A145147.P11418477279310166771

/-!
# A145148: 6th column of A145142.

The programs for A145148, there is no canonical definition to state claims against.
-/

/-! ## A145148.P16129041864916078454

`A145142(A056119(n)+28)`
-/

namespace A145148.P16129041864916078454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145142 (A056119 n + 28).toNat

end

end A145148.P16129041864916078454

/-! ## A145148.P12607968524757915090

`A145142(eq[11, A066657(n)])`
-/

namespace A145148.P12607968524757915090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A145148.P12607968524757915090

/-! ## A145148.P9670775633995651684

`A145142(A167499(n+5)+2)`
-/

namespace A145148.P9670775633995651684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145142 (A167499 (n + 5) + 2).toNat

end

end A145148.P9670775633995651684

/-! ## A145148.P8157498619425254462

`A145142(A034856(n+5)+9)`
-/

namespace A145148.P8157498619425254462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145142 (A034856 (n + 5) + 9).toNat

end

end A145148.P8157498619425254462

/-! ## A145148.P2914209209233855321

`A145142(A052905(n+3)+12)`
-/

namespace A145148.P2914209209233855321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145142 (A052905 (n + 3) + 12).toNat

end

end A145148.P2914209209233855321

/-!
# A145149: 7th column of A145142.

The programs for A145149, there is no canonical definition to state claims against.
-/

/-! ## A145149.P6061582018124592934

`A145142(eq[13, A066657(n)])`
-/

namespace A145149.P6061582018124592934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A145149.P6061582018124592934

/-! ## A145149.P2863208750640540759

`A145142(eq[9, A131818(n+1)])`
-/

namespace A145149.P2863208750640540759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A145149.P2863208750640540759

/-! ## A145149.P56865364139223417

`A145142(A133263(ϕ²-(ϕ-n)+7)-(n+2))`
-/

namespace A145149.P56865364139223417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145142 (A133263 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)) + 7)).toNat - (n + 2 : ℤ)).toNat

end

end A145149.P56865364139223417

/-!
# A145150: 8th column of A145142.

The programs for A145150, there is no canonical definition to state claims against.
-/

/-! ## A145150.P14407278124242585981

`A145142(eq[17, A066657(n)])`
-/

namespace A145150.P14407278124242585981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A145150.P14407278124242585981

/-! ## A145150.P11304481013693661415

`A145142(A000217(n+8)+9)`
-/

namespace A145150.P11304481013693661415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145142 (A000217 (n + 8) + 9).toNat

end

end A145150.P11304481013693661415

/-! ## A145150.P11174316811949254198

`A145142(eq[10, A131818(n+1)])`
-/

namespace A145150.P11174316811949254198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A145150.P11174316811949254198

/-! ## A145150.P8183965945734210455

`A145142(eq[8, A144328(n+1)]+1)`
-/

namespace A145150.P8183965945734210455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A145150.P8183965945734210455

/-! ## A145150.P7198170345029016524

`A145142(eq[10, A195663(n)]-2*n)`
-/

namespace A145150.P7198170345029016524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2 * n)

end

end A145150.P7198170345029016524

/-!
# A145151: 9th column of A145142.

The programs for A145151, there is no canonical definition to state claims against.
-/

/-! ## A145151.P2844548592360278447

`A145142(A253145(n+8)+10)`
-/

namespace A145151.P2844548592360278447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145142 (A253145 (n + 8) + 10).toNat

end

end A145151.P2844548592360278447

/-! ## A145151.P2394616231420055597

`A145142(A161680(n+10)+10)`
-/

namespace A145151.P2394616231420055597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145142 (A161680 (n + 10) + 10).toNat

end

end A145151.P2394616231420055597

/-! ## A145151.P9180386885581440727

`A145142(eq[9, A002262(n)]+1)`
-/

namespace A145151.P9180386885581440727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A145151.P9180386885581440727

/-! ## A145151.P12625798341130125521

`A145142(eq[11, A131818(n+1)])`
-/

namespace A145151.P12625798341130125521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A145151.P12625798341130125521

/-! ## A145151.P599064166284999501

`A145142(A000124(n+10)-(n+1))`
-/

namespace A145151.P599064166284999501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145142 (A000124 (n + 10) - (n + 1 : ℤ)).toNat

end

end A145151.P599064166284999501

/-!
# A145152: Triangle T(k,m), k>= - 3, 1<=m<=k + 4, read by rows: T(k,m) is the coefficient of a_k(n - m) in the recursive evaluation of a_k(n), where a_k is the k - th column sequence of A145153.

The programs for A145152, there is no canonical definition to state claims against.
-/

/-! ## A145152.P15648945518071768060

`A213620(n)%A193238(A260831(n+1))`
-/

namespace A145152.P15648945518071768060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213620 n) (A193238 (A260831 (n + 1)).toNat)

end

end A145152.P15648945518071768060

/-!
# A145153: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where sequence a_k of column k is the expansion of x/((1 - x - x^4)*(1 - x)^(k - 1)).

The programs for A145153, there is no canonical definition to state claims against.
-/

/-! ## A145153.P10455430542974623253

`A144903(n)-A048994(A348221(n))`
-/

namespace A145153.P10455430542974623253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144903 n - A048994 (A348221 n).toNat

end

end A145153.P10455430542974623253

/-! ## A145153.P4734067466716556371

`A008620(A034851(n))-A284656(A318390(n+1))`
-/

namespace A145153.P4734067466716556371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A034851 n).toNat - A284656 (A318390 (n + 1)).toNat

end

end A145153.P4734067466716556371

/-! ## A145153.P13049309616694366992

`A025459(A295390(n)+4)`
-/

namespace A145153.P13049309616694366992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025459 (A295390 n + 4).toNat

end

end A145153.P13049309616694366992

/-! ## A145153.P8662506831633005440

`or(A004197(n), A094186(A145901(n)))`
-/

namespace A145153.P8662506831633005440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004197 n) (A094186 (A145901 n).toNat)

end

end A145153.P8662506831633005440

/-! ## A145153.P6468019056501463667

`A077042(n)-A010054(A095400(n+1))`
-/

namespace A145153.P6468019056501463667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 n - A010054 (A095400 (n + 1)).toNat

end

end A145153.P6468019056501463667

/-!
# A145154: Coefficients in expansion of Eisenstein series E_1.

The programs for A145154, the canonical program `A145154.P3148683332276423765` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145154 has offset 0).

The definition of A145154 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145154.P3148683332276423765

`and(5, -(Δ[A007504(n)]²+1))*∏{e}[n, #+1]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A145154

/-- `and(5, -(Δ[A007504(n)]²+1))*∏{e}[n, #+1]` -/
def P3148683332276423765.Spec : Prop :=
  ∀ n, P3148683332276423765.a n = A145154 n

theorem P3148683332276423765.correct : P3148683332276423765.Spec := by
  intro n
  simp only [A145154]

end A145154

/-! ## A145154.P215965858619867584

`4*A000005(2*n-gcd(n, a(n-1)*∑[n]))` with `a(0)=1`
-/

namespace A145154.P215965858619867584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * A000005 (2 * n - Int.gcd (n : ℤ) (a (n - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)))

end

end A145154.P215965858619867584

namespace A145154

/-- `4*A000005(2*n-gcd(n, a(n-1)*∑[n]))` -/
def P215965858619867584.Spec : Prop :=
  ∀ n, P215965858619867584.a n = A145154 n

end A145154

/-! ## A145154.P2092482238265796065

`lcm(2, A014963(a(n-1)))²*A000005(n)` with `a(0)=1`
-/

namespace A145154.P2092482238265796065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 2 (A014963 (a (n - 1)).toNat) ^ 2 : ℤ) * A000005 n

end

end A145154.P2092482238265796065

namespace A145154

/-- `lcm(2, A014963(a(n-1)))²*A000005(n)` -/
def P2092482238265796065.Spec : Prop :=
  ∀ n, P2092482238265796065.a n = A145154 n

end A145154

/-! ## A145154.P11074385125502079157

`A000032(and(2, a(n-1)))²*A000005(n)` with `a(0)=1`
-/

namespace A145154.P11074385125502079157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000032 (Int.land 2 (a (n - 1))).toNat ^ 2 * A000005 n

end

end A145154.P11074385125502079157

namespace A145154

/-- `A000032(and(2, a(n-1)))²*A000005(n)` -/
def P11074385125502079157.Spec : Prop :=
  ∀ n, P11074385125502079157.a n = A145154 n

end A145154

/-! ## A145154.P15942969769472531519

`A000005(n)/a(n-1)*A008574(a(n-1))` with `a(0)=1`
-/

namespace A145154.P15942969769472531519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A000005 n : ℚ) / a (n - 1) * (A008574 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ)

end

end A145154.P15942969769472531519

namespace A145154

/-- `A000005(n)/a(n-1)*A008574(a(n-1))` -/
def P15942969769472531519.Spec : Prop :=
  ∀ n, P15942969769472531519.a n = (A145154 n : ℚ)

end A145154

/-! ## A145154.P1285649910957818349

`A131577(A000005(2*n+1))²%12*∏{e}[n, #+1]`
-/

namespace A145154.P1285649910957818349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131577 (A000005 (2 * n + 1)).toNat ^ 2) 12 * ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A145154.P1285649910957818349

namespace A145154

/-- `A131577(A000005(2*n+1))²%12*∏{e}[n, #+1]` -/
def P1285649910957818349.Spec : Prop :=
  ∀ n, P1285649910957818349.a n = A145154 n

end A145154

/-! ## A145154.P18078961263521094542

`A000005(n)*A160900(A083895(a(n-1)+1)+1)` with `a(0)=1`
-/

namespace A145154.P18078961263521094542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 n * A160900 (A083895 (a (n - 1) + 1).toNat + 1).toNat

end

end A145154.P18078961263521094542

namespace A145154

/-- `A000005(n)*A160900(A083895(a(n-1)+1)+1)` -/
def P18078961263521094542.Spec : Prop :=
  ∀ n, P18078961263521094542.a n = A145154 n

end A145154

/-! ## A145154.P15711426549279876712

`A000005(A076396(n+1))²*A000005(A028310(n))`
-/

namespace A145154.P15711426549279876712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A076396 (n + 1)).toNat ^ 2 * A000005 (A028310 n).toNat

end

end A145154.P15711426549279876712

namespace A145154

/-- `A000005(A076396(n+1))²*A000005(A028310(n))` -/
def P15711426549279876712.Spec : Prop :=
  ∀ n, P15711426549279876712.a n = A145154 n

end A145154

/-! ## A145154.P17656018017277300522

`A000005(A076397(n+1))²*A000005(A028310(n))`
-/

namespace A145154.P17656018017277300522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A076397 (n + 1)).toNat ^ 2 * A000005 (A028310 n).toNat

end

end A145154.P17656018017277300522

namespace A145154

/-- `A000005(A076397(n+1))²*A000005(A028310(n))` -/
def P17656018017277300522.Spec : Prop :=
  ∀ n, P17656018017277300522.a n = A145154 n

end A145154

/-! ## A145154.P15928407489945787322

`A000005(A090368(n+1))²*A000005(A028310(n))`
-/

namespace A145154.P15928407489945787322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A090368 (n + 1)).toNat ^ 2 * A000005 (A028310 n).toNat

end

end A145154.P15928407489945787322

namespace A145154

/-- `A000005(A090368(n+1))²*A000005(A028310(n))` -/
def P15928407489945787322.Spec : Prop :=
  ∀ n, P15928407489945787322.a n = A145154 n

end A145154

/-! ## A145154.P1590909570225227097

`A000005(A008578(n+1))²*A000005(A028310(n))`
-/

namespace A145154.P1590909570225227097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008578 (n + 1)).toNat ^ 2 * A000005 (A028310 n).toNat

end

end A145154.P1590909570225227097

namespace A145154

/-- `A000005(A008578(n+1))²*A000005(A028310(n))` -/
def P1590909570225227097.Spec : Prop :=
  ∀ n, P1590909570225227097.a n = A145154 n

end A145154

/-! ## A145154.P6857107675473354939

`A000005(A006005(n+1))²*A000005(A028310(n))`
-/

namespace A145154.P6857107675473354939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006005 (n + 1)).toNat ^ 2 * A000005 (A028310 n).toNat

end

end A145154.P6857107675473354939

namespace A145154

/-- `A000005(A006005(n+1))²*A000005(A028310(n))` -/
def P6857107675473354939.Spec : Prop :=
  ∀ n, P6857107675473354939.a n = A145154 n

end A145154

/-! ## A145154.P625139576642393401

`A246063(A210067(2*n))²*∏{e}[n, #+1]`
-/

namespace A145154.P625139576642393401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246063 (A210067 (2 * n)).toNat ^ 2 * ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A145154.P625139576642393401

namespace A145154

/-- `A246063(A210067(2*n))²*∏{e}[n, #+1]` -/
def P625139576642393401.Spec : Prop :=
  ∀ n, P625139576642393401.a n = A145154 n

end A145154

/-! ## A145154.P3384067864555015811

`A131577(A086161(n+1))²%12*∏{e}[n, #+1]`
-/

namespace A145154.P3384067864555015811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131577 (A086161 (n + 1)).toNat ^ 2) 12 * ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A145154.P3384067864555015811

namespace A145154

/-- `A131577(A086161(n+1))²%12*∏{e}[n, #+1]` -/
def P3384067864555015811.Spec : Prop :=
  ∀ n, P3384067864555015811.a n = A145154 n

end A145154

/-! ## A145154.P14406172155309027992

`A131577(ceil((n+1)/ϕ))²%12*∏{e}[n, #+1]`
-/

namespace A145154.P14406172155309027992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131577 ⌈(n + 1 : ℝ) / Real.goldenRatio⌉.toNat ^ 2) 12 * ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A145154.P14406172155309027992

namespace A145154

/-- `A131577(ceil((n+1)/ϕ))²%12*∏{e}[n, #+1]` -/
def P14406172155309027992.Spec : Prop :=
  ∀ n, P14406172155309027992.a n = A145154 n

end A145154

/-! ## A145154.P4622966079741586795

`A004277(2*∏{e}[n, #+1]%A155590(n))`
-/

namespace A145154.P4622966079741586795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * Int.tmod ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A155590 n)).toNat

end

end A145154.P4622966079741586795

namespace A145154

/-- `A004277(2*∏{e}[n, #+1]%A155590(n))` -/
def P4622966079741586795.Spec : Prop :=
  ∀ n, P4622966079741586795.a n = A145154 n

end A145154

/-!
# A145155: Coefficients in expansion of Delta'(q).

The programs for A145155, there is no canonical definition to state claims against.
-/

/-! ## A145155.P15831936823792994128

`(n+1)*A000594(n+1)`
-/

namespace A145155.P15831936823792994128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000594 (n + 1)

end

end A145155.P15831936823792994128

/-! ## A145155.P14491533897129462522

`round(A000027(n+1)/acot(A000594(n+1)))`
-/

namespace A145155.P14491533897129462522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000027 (n + 1) : ℝ) / SequenceMachineLib.acot (A000594 (n + 1) : ℝ))

end

end A145155.P14491533897129462522

/-! ## A145155.P8402142094553438589

`(n+1)*∑{d}[n+1, A008683(#)*A034777((n+1)/#)]`
-/

namespace A145155.P8402142094553438589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), A008683 d * A034777 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat)

end

end A145155.P8402142094553438589

/-! ## A145155.P15418525142311754269

`A000594(A008619(2*n))*A008619(2*n)`
-/

namespace A145155.P15418525142311754269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (A008619 (2 * n)).toNat * A008619 (2 * n)

end

end A145155.P15418525142311754269

/-! ## A145155.P10288452876569164558

`A000594(A028242(2*n))*A028242(2*n)`
-/

namespace A145155.P10288452876569164558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (A028242 (2 * n)).toNat * A028242 (2 * n)

end

end A145155.P10288452876569164558

/-! ## A145155.P6177212655383810591

`(n+1)*A292781(A075349(n+2))`
-/

namespace A145155.P6177212655383810591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A292781 (A075349 (n + 2)).toNat

end

end A145155.P6177212655383810591

/-! ## A145155.P1769277094222064886

`(n+1)*A055978(4*(n+1))`
-/

namespace A145155.P1769277094222064886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A055978 (4 * (n + 1))

end

end A145155.P1769277094222064886

/-!
# A145156: Number of Greek-key tours on a 5 X n board; i.e., self-avoiding walks on 5 X n grid starting in top left corner.

The programs for A145156, there is no canonical definition to state claims against.
-/

/-! ## A145156.P3997198949107780196

`A378938(A374005(n+1))`
-/

namespace A145156.P3997198949107780196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378938 (A374005 (n + 1)).toNat

end

end A145156.P3997198949107780196

/-! ## A145156.P17297482863761665343

`A378938(A166136(n+3)-1)`
-/

namespace A145156.P17297482863761665343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378938 (A166136 (n + 3) - 1).toNat

end

end A145156.P17297482863761665343

/-! ## A145156.P13265030900788805313

`A378938(A055999(n+1)+11)`
-/

namespace A145156.P13265030900788805313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378938 (A055999 (n + 1) + 11).toNat

end

end A145156.P13265030900788805313

/-! ## A145156.P10078212836371691334

`A378938(A008585(n+3)+∑[n+2])`
-/

namespace A145156.P10078212836371691334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378938 (A008585 (n + 3) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A145156.P10078212836371691334

/-! ## A145156.P16679992993415807289

`A378938(eq[A039683(n+4), A066247(n+1)])`
-/

namespace A145156.P16679992993415807289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039683 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378938 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A145156.P16679992993415807289

/-!
# A145157: Number of Greek-key tours on an n X n board; i.e., self-avoiding walks on n X n grid starting in top left corner.

The programs for A145157, there is no canonical definition to state claims against.
-/

/-! ## A145157.P12715673930286361413

`A378938((n+1)²+n²)`
-/

namespace A145157.P12715673930286361413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378938 ((n + 1) ^ 2 + n ^ 2)

end

end A145157.P12715673930286361413

/-! ## A145157.P1560564519735908122

`A378938(A001844(n))+A011745(n)`
-/

namespace A145157.P1560564519735908122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378938 (A001844 n).toNat + A011745 n

end

end A145157.P1560564519735908122

/-! ## A145157.P4527543897995107916

`A378938(A001844(n))%A055514(n+1)`
-/

namespace A145157.P4527543897995107916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A378938 (A001844 n).toNat) (A055514 (n + 1))

end

end A145157.P4527543897995107916

/-!
# A145158: G.f. A(x) satisfies A(x/A(x)^2) = 1/(1-x).

The programs for A145158, there is no canonical definition to state claims against.
-/

/-! ## A145158.P2534603736871977263

`A005206(A006789(n)²)`
-/

namespace A145158.P2534603736871977263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A006789 n ^ 2).toNat

end

end A145158.P2534603736871977263

/-! ## A145158.P1104016524164974837

`A005378(A006789(n)²)`
-/

namespace A145158.P1104016524164974837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (A006789 n ^ 2).toNat

end

end A145158.P1104016524164974837

/-!
# A145159: G.f. A(x) satisfies A(x/A(x)) = 1/(1-x)^2.

The programs for A145159, there is no canonical definition to state claims against.
-/

/-! ## A145159.P3592180161829357748

`A242031(A001515(n))+A027868(n)`
-/

namespace A145159.P3592180161829357748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242031 (A001515 n).toNat + A027868 n

end

end A145159.P3592180161829357748

/-! ## A145159.P14789208356212691420

`A059555(A084870(n))-A002605(n)`
-/

namespace A145159.P14789208356212691420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059555 (A084870 n).toNat - A002605 n

end

end A145159.P14789208356212691420

/-!
# A145160: G.f. A(x) satisfies A(x/A(x)^3) = 1/(1-x).

The programs for A145160, there is no canonical definition to state claims against.
-/

/-! ## A145160.P9157042198260932551

`A091974(A130715(n+1))+floor(acot(n))-1`
-/

namespace A145160.P9157042198260932551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091974 (A130715 (n + 1)).toNat + (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

end

end A145160.P9157042198260932551

/-! ## A145160.P15291268390436160626

`A091974(A130715(n+1))-A095827(n+1)`
-/

namespace A145160.P15291268390436160626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091974 (A130715 (n + 1)).toNat - A095827 (n + 1)

end

end A145160.P15291268390436160626

/-!
# A145161: G.f. A(x) satisfies A(x/A(x)) = 1/(1-x)^3.

The programs for A145161, there is no canonical definition to state claims against.
-/

/-! ## A145161.P2376310515642836068

`round(A030326((n+2)^n+1)/2)`
-/

namespace A145161.P2376310515642836068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A030326 ((n + 2) ^ n + 1) : ℚ) / 2)

end

end A145161.P2376310515642836068

/-!
# A145162: G.f. A(x) satisfies A(x/A(x)^4) = 1/(1-x).

The programs for A145162, there is no canonical definition to state claims against.
-/

/-! ## A145162.P13529951467848055792

`∏{p}[A339234(n+1)², #]`
-/

namespace A145162.P13529951467848055792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339234 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A145162.P13529951467848055792

/-!
# A145163: G.f. A(x) satisfies A(x/A(x)^2) = 1/(1-x)^2.

The programs for A145163, there is no canonical definition to state claims against.
-/

/-! ## A145163.P17060086357833893110

`A028391(∏{e}[n+1, #+1]+n!*C(2*n, n))`
-/

namespace A145163.P17060086357833893110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + Nat.factorial n * Nat.choose (2 * n) n)

end

end A145163.P17060086357833893110

/-!
# A145164: G.f. A(x) satisfies A(x/A(x)) = 1/(1-x)^4.

The programs for A145164, there is no canonical definition to state claims against.
-/

/-! ## A145164.P10405109356301682122

`A007095(A318005(n+1)+char[4])`
-/

namespace A145164.P10405109356301682122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A318005 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A145164.P10405109356301682122

/-!
# A145165: G.f. A(x) satisfies A(x/A(x)^5) = 1/(1-x).

The programs for A145165, there is no canonical definition to state claims against.
-/

/-! ## A145165.P4778256560557782702

`A315212(C(n!, 2))`
-/

namespace A145165.P4778256560557782702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315212 (Nat.choose (Nat.factorial n) 2)

end

end A145165.P4778256560557782702

/-!
# A145167: G.f. A(x) satisfies A(x/A(x)^6) = 1/(1-x).

The programs for A145167, there is no canonical definition to state claims against.
-/

/-! ## A145167.P6780652998028474039

`A191251(∏[A225477(n)]-n)`
-/

namespace A145167.P6780652998028474039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225477 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191251 (∏ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A145167.P6780652998028474039

/-!
# A145168: G.f. A(x) satisfies A(x/A(x)^3) = 1/(1-x)^2.

The programs for A145168, there is no canonical definition to state claims against.
-/

/-! ## A145168.P16237006326784711205

`A339298(n+1)-A011371(A145161(n))`
-/

namespace A145168.P16237006326784711205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339298 (n + 1) - A011371 (A145161 n).toNat

end

end A145168.P16237006326784711205

/-!
# A145171: Triangle read by rows: left half of trinomial triangle (A027907) modulo 3.

The programs for A145171, there is no canonical definition to state claims against.
-/

/-! ## A145171.P2319709766192513891

`A111808(n+1)%3`
-/

namespace A145171.P2319709766192513891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111808 (n + 1)) 3

end

end A145171.P2319709766192513891

/-! ## A145171.P1892016418180388040

`A094531(∑[2*n]%comp[∑[n]])%3`
-/

namespace A145171.P1892016418180388040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094531 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)) 3

end

end A145171.P1892016418180388040

/-! ## A145171.P12374619610796206652

`A027907(eq[0, floor(2*sqrt(n))%2])%3`
-/

namespace A145171.P12374619610796206652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027907 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) 3

end

end A145171.P12374619610796206652

/-! ## A145171.P4999916244323240635

`A293171(∑[char[∑[n]]]²-n-1)%3`
-/

namespace A145171.P4999916244323240635
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293171 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat) 3

end

end A145171.P4999916244323240635

/-! ## A145171.P4813822400048715117

`A010872(A111808(n+1))`
-/

namespace A145171.P4813822400048715117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A111808 (n + 1)).toNat

end

end A145171.P4813822400048715117

/-! ## A145171.P16908575901589111534

`A027907(A063656(n))%3`
-/

namespace A145171.P16908575901589111534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027907 (A063656 n).toNat) 3

end

end A145171.P16908575901589111534

/-! ## A145171.P2770114498027448132

`A013609(A292564(n))%3`
-/

namespace A145171.P2770114498027448132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013609 (A292564 n).toNat) 3

end

end A145171.P2770114498027448132

/-! ## A145171.P14541969279017228572

`A082601(A245300(n))%3`
-/

namespace A145171.P14541969279017228572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082601 (A245300 n).toNat) 3

end

end A145171.P14541969279017228572

/-! ## A145171.P17350238510563337342

`A272868(n)%3`
-/

namespace A145171.P17350238510563337342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272868 n) 3

end

end A145171.P17350238510563337342

/-!
# A145176: Numerators of coefficients in series expansion of 1/(Bernoulli trial entropy).

The programs for A145176, there is no canonical definition to state claims against.
-/

/-! ## A145176.P12936582192027027915

`A155457(A072407(n+1))`
-/

namespace A145176.P12936582192027027915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155457 (A072407 (n + 1)).toNat

end

end A145176.P12936582192027027915

/-! ## A145176.P8321887650622487976

`or(1, A089850(A221388(n+1)))`
-/

namespace A145176.P8321887650622487976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A089850 (A221388 (n + 1)).toNat)

end

end A145176.P8321887650622487976

/-! ## A145176.P7152735154117484372

`A181657(A119308(n)-A108913(n))`
-/

namespace A145176.P7152735154117484372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181657 (A119308 n - A108913 n).toNat

end

end A145176.P7152735154117484372

/-! ## A145176.P8425365375364042076

`A159314(A035441(n+1)*A333755(n))`
-/

namespace A145176.P8425365375364042076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159314 (A035441 (n + 1) * A333755 n).toNat

end

end A145176.P8425365375364042076

/-! ## A145176.P11706765432789287535

`A332954(A277410(n+1)*A344649(n))`
-/

namespace A145176.P11706765432789287535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 (A277410 (n + 1) * A344649 n).toNat

end

end A145176.P11706765432789287535

/-!
# A145180: 

The programs for A145180, there is no canonical definition to state claims against.
-/

/-! ## A145180.P1056502560695649792

`(a(n-1)²+3)*a(n-1)` with `a(0)=6`
-/

namespace A145180.P1056502560695649792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  (a (n - 1) ^ 2 + 3) * a (n - 1)

end

end A145180.P1056502560695649792

/-!
# A145181: 

The programs for A145181, there is no canonical definition to state claims against.
-/

/-! ## A145181.P16215834102092037469

`(a(n-1)²+3)*a(n-1)` with `a(0)=7`
-/

namespace A145181.P16215834102092037469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  (a (n - 1) ^ 2 + 3) * a (n - 1)

end

end A145181.P16215834102092037469

/-!
# A145182: 

The programs for A145182, there is no canonical definition to state claims against.
-/

/-! ## A145182.P6296658154239731161

`(a(n-1)²+3)*a(n-1)` with `a(0)=8`
-/

namespace A145182.P6296658154239731161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  (a (n - 1) ^ 2 + 3) * a (n - 1)

end

end A145182.P6296658154239731161

/-!
# A145183: 

The programs for A145183, there is no canonical definition to state claims against.
-/

/-! ## A145183.P15888889430635809884

`(a(n-1)²+3)*a(n-1)` with `a(0)=9`
-/

namespace A145183.P15888889430635809884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  (a (n - 1) ^ 2 + 3) * a (n - 1)

end

end A145183.P15888889430635809884

/-!
# A145184: 

The programs for A145184, there is no canonical definition to state claims against.
-/

/-! ## A145184.P12498749114925722583

`(a(n-1)²+3)*a(n-1)` with `a(0)=10`
-/

namespace A145184.P12498749114925722583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [10] fun n a =>
  (a (n - 1) ^ 2 + 3) * a (n - 1)

end

end A145184.P12498749114925722583

/-!
# A145185: 

The programs for A145185, there is no canonical definition to state claims against.
-/

/-! ## A145185.P3405490103767726862

`A000032(5*3^n)`
-/

namespace A145185.P3405490103767726862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (5 * 3 ^ n)

end

end A145185.P3405490103767726862

/-!
# A145186: 

The programs for A145186, there is no canonical definition to state claims against.
-/

/-! ## A145186.P13478661276236621670

`(a(n-1)²+3)*a(n-1)` with `a(0)=12`
-/

namespace A145186.P13478661276236621670
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [12] fun n a =>
  (a (n - 1) ^ 2 + 3) * a (n - 1)

end

end A145186.P13478661276236621670

/-!
# A145187: 

The programs for A145187, there is no canonical definition to state claims against.
-/

/-! ## A145187.P14887904880388869501

`(a(n-1)²+3)*a(n-1)` with `a(0)=13`
-/

namespace A145187.P14887904880388869501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [13] fun n a =>
  (a (n - 1) ^ 2 + 3) * a (n - 1)

end

end A145187.P14887904880388869501

/-!
# A145188: 

The programs for A145188, there is no canonical definition to state claims against.
-/

/-! ## A145188.P7499629121608089494

`(a(n-1)²+3)*a(n-1)` with `a(0)=14`
-/

namespace A145188.P7499629121608089494
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [14] fun n a =>
  (a (n - 1) ^ 2 + 3) * a (n - 1)

end

end A145188.P7499629121608089494

/-!
# A145189: 

The programs for A145189, there is no canonical definition to state claims against.
-/

/-! ## A145189.P4620748940778504179

`(a(n-1)²+3)*a(n-1)` with `a(0)=15`
-/

namespace A145189.P4620748940778504179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [15] fun n a =>
  (a (n - 1) ^ 2 + 3) * a (n - 1)

end

end A145189.P4620748940778504179

/-!
# A145190: Numbers k such that phi(1)*phi(2)*...*phi(k) / k is an integer, where phi(k) is the totient function (A000010).

The programs for A145190, the canonical program `A145190.P17626600670453877125` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145190 has offset 1).

The definition of A145190 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145190.P6094282379964587779

`record[gcd(n+1, A064449(n+1))]`
-/

namespace A145190.P6094282379964587779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A064449 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145190.P6094282379964587779

namespace A145190

/-- `record[gcd(n+1, A064449(n+1))]` -/
def P6094282379964587779.Spec : Prop :=
  ∀ n, (P6094282379964587779.a n : ℤ) = A145190 (n + 1)

end A145190

/-! ## A145190.P1310101580941971471

`record[gcd(A064449(n+1), A131738(n))]`
-/

namespace A145190.P1310101580941971471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064449 (n + 1)) (A131738 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145190.P1310101580941971471

namespace A145190

/-- `record[gcd(A064449(n+1), A131738(n))]` -/
def P1310101580941971471.Spec : Prop :=
  ∀ n, (P1310101580941971471.a n : ℤ) = A145190 (n + 1)

end A145190

/-! ## A145190.P17626600670453877125

`lt[A217863(n+1)%(n+1), 1]+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A145190

/-- `lt[A217863(n+1)%(n+1), 1]+1` -/
def P17626600670453877125.Spec : Prop :=
  ∀ n, (P17626600670453877125.a n : ℤ) = A145190 (n + 1)

theorem P17626600670453877125.correct : P17626600670453877125.Spec := by
  intro n
  simp only [A145190, Nat.add_sub_cancel]

end A145190

/-! ## A145190.P1243926542000852157

`record[gcd(A000027(n+1), A217863(n+1))]`
-/

namespace A145190.P1243926542000852157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A217863 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145190.P1243926542000852157

namespace A145190

/-- `record[gcd(A000027(n+1), A217863(n+1))]` -/
def P1243926542000852157.Spec : Prop :=
  ∀ n, (P1243926542000852157.a n : ℤ) = A145190 (n + 1)

end A145190

/-! ## A145190.P9676623356432219016

`lt[A006530(∏{p}[n²², #])², A000203(n+1)]`
-/

namespace A145190.P9676623356432219016
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f2 n), p) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A145190.P9676623356432219016

namespace A145190

/-- `lt[A006530(∏{p}[n²², #])², A000203(n+1)]` -/
def P9676623356432219016.Spec : Prop :=
  ∀ n, (P9676623356432219016.a n : ℤ) = A145190 (n + 1)

end A145190

/-!
# A145193: Omega(6n-1) + Omega(6n+1).

The programs for A145193, the canonical program `A145193.P13347138772381315816` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145193 has offset 1).

The definition of A145193 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A145193.P13347138772381315816

`A001222(6*(n+1)-1)+A001222(6*(n+1)+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A145193

/-- `A001222(6*(n+1)-1)+A001222(6*(n+1)+1)` -/
def P13347138772381315816.Spec : Prop :=
  ∀ n, P13347138772381315816.a n = A145193 (n + 1)

theorem P13347138772381315816.correct : P13347138772381315816.Spec := by
  intro n
  simp only [A145193, Nat.add_sub_cancel]

end A145193

/-! ## A145193.P8376591785655177236

`A091304(3*n+4)+A091304(3*(n+1))`
-/

namespace A145193.P8376591785655177236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091304 (3 * n + 4) + A091304 (3 * (n + 1))

end

end A145193.P8376591785655177236

namespace A145193

/-- `A091304(3*n+4)+A091304(3*(n+1))` -/
def P8376591785655177236.Spec : Prop :=
  ∀ n, P8376591785655177236.a n = A145193 (n + 1)

end A145193

/-! ## A145193.P687872083470521110

`A193295(6*(n+1))`
-/

namespace A145193.P687872083470521110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193295 (6 * (n + 1))

end

end A145193.P687872083470521110

namespace A145193

/-- `A193295(6*(n+1))` -/
def P687872083470521110.Spec : Prop :=
  ∀ n, P687872083470521110.a n = A145193 (n + 1)

end A145193

/-! ## A145193.P11879251304435799221

`∑{e}[A278160(A016969(n)), #]`
-/

namespace A145193.P11879251304435799221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278160 (A016969 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A145193.P11879251304435799221

namespace A145193

/-- `∑{e}[A278160(A016969(n)), #]` -/
def P11879251304435799221.Spec : Prop :=
  ∀ n, (P11879251304435799221.a n : ℤ) = A145193 (n + 1)

end A145193

/-! ## A145193.P1998301417549739343

`dr(A193295(A008458(n+1)))`
-/

namespace A145193.P1998301417549739343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A193295 (A008458 (n + 1)).toNat)

end

end A145193.P1998301417549739343

namespace A145193

/-- `dr(A193295(A008458(n+1)))` -/
def P1998301417549739343.Spec : Prop :=
  ∀ n, (P1998301417549739343.a n : ℤ) = A145193 (n + 1)

end A145193

/-! ## A145193.P10448722724155429481

`A193295(Δ[A003215(n)])%10`
-/

namespace A145193.P10448722724155429481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193295 (f1 (n + 1) - f1 n).toNat) 10

end

end A145193.P10448722724155429481

namespace A145193

/-- `A193295(Δ[A003215(n)])%10` -/
def P10448722724155429481.Spec : Prop :=
  ∀ n, P10448722724155429481.a n = A145193 (n + 1)

end A145193

/-! ## A145193.P8955711362060723419

`A193295(Δ[A003215(n)])+A000007(n+1)`
-/

namespace A145193.P8955711362060723419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193295 (f1 (n + 1) - f1 n).toNat + A000007 (n + 1)

end

end A145193.P8955711362060723419

namespace A145193

/-- `A193295(Δ[A003215(n)])+A000007(n+1)` -/
def P8955711362060723419.Spec : Prop :=
  ∀ n, P8955711362060723419.a n = A145193 (n + 1)

end A145193

/-! ## A145193.P10618980056703377353

`A000034(2*n)*A193295(Δ[A003215(n)])`
-/

namespace A145193.P10618980056703377353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A193295 (f1 (n + 1) - f1 n).toNat

end

end A145193.P10618980056703377353

namespace A145193

/-- `A000034(2*n)*A193295(Δ[A003215(n)])` -/
def P10618980056703377353.Spec : Prop :=
  ∀ n, P10618980056703377353.a n = A145193 (n + 1)

end A145193

/-! ## A145193.P5290603933552244155

`∑{e}[1-(6*(n+1))², #]`
-/

namespace A145193.P5290603933552244155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((6 * (n + 1)) ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A145193.P5290603933552244155

namespace A145193

/-- `∑{e}[1-(6*(n+1))², #]` -/
def P5290603933552244155.Spec : Prop :=
  ∀ n, (P5290603933552244155.a n : ℤ) = A145193 (n + 1)

end A145193

/-! ## A145193.P11936974113313052314

`∑{e}[A136017(n+1), #]%7`
-/

namespace A145193.P11936974113313052314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136017 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) % 7

end

end A145193.P11936974113313052314

namespace A145193

/-- `∑{e}[A136017(n+1), #]%7` -/
def P11936974113313052314.Spec : Prop :=
  ∀ n, (P11936974113313052314.a n : ℤ) = A145193 (n + 1)

end A145193

/-! ## A145193.P15438595883468685807

`A051022(∑{e}[A136017(n+1), #])`
-/

namespace A145193.P15438595883468685807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A145193.P15438595883468685807

namespace A145193

/-- `A051022(∑{e}[A136017(n+1), #])` -/
def P15438595883468685807.Spec : Prop :=
  ∀ n, P15438595883468685807.a n = A145193 (n + 1)

end A145193

/-! ## A145193.P11369149401144136943

`A049872(∑{e}[A016910(n+1)-1, #])`
-/

namespace A145193.P11369149401144136943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016910 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049872 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A145193.P11369149401144136943

namespace A145193

/-- `A049872(∑{e}[A016910(n+1)-1, #])` -/
def P11369149401144136943.Spec : Prop :=
  ∀ n, P11369149401144136943.a n = A145193 (n + 1)

end A145193

/-! ## A145193.P13202421719538094665

`A007953(∑{e}[A000466(3*(n+1)), #])`
-/

namespace A145193.P13202421719538094665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000466 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A145193.P13202421719538094665

namespace A145193

/-- `A007953(∑{e}[A000466(3*(n+1)), #])` -/
def P13202421719538094665.Spec : Prop :=
  ∀ n, P13202421719538094665.a n = A145193 (n + 1)

end A145193

/-!
# A145194: Least k for which Omega(6k-1) + Omega(6k+1) >= n.

The programs for A145194, there is no canonical definition to state claims against.
-/

/-! ## A145194.P16059187806462319399

`A087160(A350520(n))`
-/

namespace A145194.P16059187806462319399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087160 (A350520 n).toNat

end

end A145194.P16059187806462319399

/-! ## A145194.P4596617012249501541

`A268236(A292548(n))`
-/

namespace A145194.P4596617012249501541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268236 (A292548 n).toNat

end

end A145194.P4596617012249501541

/-!
# A145195: Odd composite numbers n with property that at least one prime divisor p of n is a substring of the binary representation of n.

The programs for A145195, there is no canonical definition to state claims against.
-/

/-! ## A145195.P16066785555695075313

`eq[A107393(n), A292438(A335795(n))]`
-/

namespace A145195.P16066785555695075313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (A335795 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145195.P16066785555695075313

/-! ## A145195.P14360445930451972305

`lt[A101119(A008000(n)), A333627(n)]`
-/

namespace A145195.P14360445930451972305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101119 (A008000 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333627 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A145195.P14360445930451972305

/-! ## A145195.P367927466066459921

`lt[A350883(n+2), A350883(A000120(n))]`
-/

namespace A145195.P367927466066459921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350883 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350883 (A000120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A145195.P367927466066459921

/-!
# A145196: Partial sums of number of primes < n-th-prime p such that p+4 is prime.

The programs for A145196, there is no canonical definition to state claims against.
-/

/-! ## A145196.P7540891629650964481

`∑[A139789(n+1)]`
-/

namespace A145196.P7540891629650964481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145196.P7540891629650964481

/-! ## A145196.P4591311461364524876

`∑[A098429(A006093(n+1))]`
-/

namespace A145196.P4591311461364524876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098429 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145196.P4591311461364524876

/-! ## A145196.P11166833645605756713

`∑[A098429(A008578(n+1))]`
-/

namespace A145196.P11166833645605756713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098429 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145196.P11166833645605756713

/-! ## A145196.P17747726766540066572

`∑[A098429(A015919(n+1))]`
-/

namespace A145196.P17747726766540066572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098429 (A015919 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145196.P17747726766540066572

/-! ## A145196.P11027879540626227184

`∑[A098429(A075643(n+1))]`
-/

namespace A145196.P11027879540626227184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098429 (A075643 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145196.P11027879540626227184

/-! ## A145196.P1705444638447444011

`∑[A098429(A112925(n+1))]`
-/

namespace A145196.P1705444638447444011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098429 (A112925 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145196.P1705444638447444011

/-! ## A145196.P13757782729673855519

`∑[A098429(A157604(n+1))]`
-/

namespace A145196.P13757782729673855519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098429 (A157604 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145196.P13757782729673855519

/-! ## A145196.P5931474657793658678

`∑[A098429(Δ[A007504(n)]-1)]`
-/

namespace A145196.P5931474657793658678
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098429 (f2 (n + 1) - f2 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145196.P5931474657793658678

/-! ## A145196.P8606566232893947564

`∑[A098429(record[A000010(n+1)])]`
-/

namespace A145196.P8606566232893947564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098429 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145196.P8606566232893947564

/-! ## A145196.P15948515791307020718

`∑[A098429(record[A006530(n+1)])]`
-/

namespace A145196.P15948515791307020718
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098429 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145196.P15948515791307020718

/-!
# A145197: Partial sums of number of primes < n-th prime p such that p+2 is prime.

The programs for A145197, the canonical program `A145197.P10770595906087753619` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145197 has offset 1).

The definition of A145197 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145197.P14937766322374022707

`∑[A082462(n+1)]`
-/

namespace A145197.P14937766322374022707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145197.P14937766322374022707

namespace A145197

/-- `∑[A082462(n+1)]` -/
def P14937766322374022707.Spec : Prop :=
  ∀ n, P14937766322374022707.a n = A145197 (n + 1)

end A145197

/-! ## A145197.P9345557883156919870

`∑[n-A074239(n)]`
-/

namespace A145197.P9345557883156919870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A074239 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145197.P9345557883156919870

namespace A145197

/-- `∑[n-A074239(n)]` -/
def P9345557883156919870.Spec : Prop :=
  ∀ n, P9345557883156919870.a n = A145197 (n + 1)

end A145197

/-! ## A145197.P6376372793032031062

`∑[∑[char[A155752(n+1)]]]`
-/

namespace A145197.P6376372793032031062
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155752 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145197.P6376372793032031062

namespace A145197

/-- `∑[∑[char[A155752(n+1)]]]` -/
def P6376372793032031062.Spec : Prop :=
  ∀ n, (P6376372793032031062.a n : ℤ) = A145197 (n + 1)

end A145197

/-! ## A145197.P14909509010624030198

`∑[∑[val(A163981(n+1), 2)]]`
-/

namespace A145197.P14909509010624030198
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A163981 (n + 1)).toNat 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145197.P14909509010624030198

namespace A145197

/-- `∑[∑[val(A163981(n+1), 2)]]` -/
def P14909509010624030198.Spec : Prop :=
  ∀ n, (P14909509010624030198.a n : ℤ) = A145197 (n + 1)

end A145197

/-! ## A145197.P10770595906087753619

`∑[n-∑[A106002(n+1)]]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A145197

/-- `∑[n-∑[A106002(n+1)]]` -/
def P10770595906087753619.Spec : Prop :=
  ∀ n, P10770595906087753619.a n = A145197 (n + 1)

theorem P10770595906087753619.correct : P10770595906087753619.Spec := by
  intro n
  simp only [A145197, Nat.add_sub_cancel]

end A145197

/-! ## A145197.P11602520994968307352

`∑[∑[A062301(n+2)]]`
-/

namespace A145197.P11602520994968307352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062301 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145197.P11602520994968307352

namespace A145197

/-- `∑[∑[A062301(n+2)]]` -/
def P11602520994968307352.Spec : Prop :=
  ∀ n, P11602520994968307352.a n = A145197 (n + 1)

end A145197

/-! ## A145197.P16436613316688456281

`∑[A071538(p?[xor(2, n)])]`
-/

namespace A145197.P16436613316688456281
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145197.P16436613316688456281

namespace A145197

/-- `∑[A071538(p?[xor(2, n)])]` -/
def P16436613316688456281.Spec : Prop :=
  ∀ n, P16436613316688456281.a n = A145197 (n + 1)

end A145197

/-! ## A145197.P3694580271754341731

`∑[A071538(A000040(n+1))]`
-/

namespace A145197.P3694580271754341731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145197.P3694580271754341731

namespace A145197

/-- `∑[A071538(A000040(n+1))]` -/
def P3694580271754341731.Spec : Prop :=
  ∀ n, P3694580271754341731.a n = A145197 (n + 1)

end A145197

/-! ## A145197.P18203053306253168262

`∑[∑[A100821(n+1)]]`
-/

namespace A145197.P18203053306253168262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100821 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145197.P18203053306253168262

namespace A145197

/-- `∑[∑[A100821(n+1)]]` -/
def P18203053306253168262.Spec : Prop :=
  ∀ n, P18203053306253168262.a n = A145197 (n + 1)

end A145197

/-! ## A145197.P16344474652607314767

`∑[∑[1-A100810(n+1)]]`
-/

namespace A145197.P16344474652607314767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A100810 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145197.P16344474652607314767

namespace A145197

/-- `∑[∑[1-A100810(n+1)]]` -/
def P16344474652607314767.Spec : Prop :=
  ∀ n, P16344474652607314767.a n = A145197 (n + 1)

end A145197

/-!
# A145198: a(n) is the least number not already in the sequence and not the product of consecutive terms in the sequence.

The programs for A145198, there is no canonical definition to state claims against.
-/

/-! ## A145198.P13411674301354449123

`comp[A145278(n+1)-1]+1`
-/

namespace A145198.P13411674301354449123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145278 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A145198.P13411674301354449123

/-! ## A145198.P6995119040314426011

`eq[char[A145278(n+1)], A000007(n)]`
-/

namespace A145198.P6995119040314426011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145278 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A145198.P6995119040314426011

/-! ## A145198.P7404329053806923337

`eq[char[A145278(n+1)], A000038(n)]`
-/

namespace A145198.P7404329053806923337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145278 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A145198.P7404329053806923337

/-! ## A145198.P4983155797310198844

`eq[A154955(n+2)², char[A145278(n+1)]]`
-/

namespace A145198.P4983155797310198844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 2) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145278 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A145198.P4983155797310198844

/-! ## A145198.P9104195043907455437

`eq[A000079(n)%2, char[A145278(n+1)]]`
-/

namespace A145198.P9104195043907455437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145278 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A145198.P9104195043907455437

/-!
# A145199: Nonsquarefree numbers k such that k+1 is prime.

The programs for A145199, the canonical program `A145199.P16128091297052967479` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145199 has offset 1).

The definition of A145199 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049092, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A145199.P16128091297052967479

`A049092(n+1)-1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A145199

/-- `A049092(n+1)-1` -/
def P16128091297052967479.Spec : Prop :=
  ∀ n, P16128091297052967479.a n = A145199 (n + 1)

theorem P16128091297052967479.correct : P16128091297052967479.Spec := by
  intro n
  simp only [A145199, Nat.add_sub_cancel]

end A145199

/-! ## A145199.P10197671692343439075

`p?[A013929(n+1)+1]-1`
-/

namespace A145199.P10197671692343439075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A145199.P10197671692343439075

namespace A145199

/-- `p?[A013929(n+1)+1]-1` -/
def P10197671692343439075.Spec : Prop :=
  ∀ n, P10197671692343439075.a n = A145199 (n + 1)

end A145199

/-! ## A145199.P11076325018741055204

`xor(abs(A008836(n+1)), A049092(n+1))`
-/

namespace A145199.P11076325018741055204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor |A008836 (n + 1)| (A049092 (n + 1))

end

end A145199.P11076325018741055204

namespace A145199

/-- `xor(abs(A008836(n+1)), A049092(n+1))` -/
def P11076325018741055204.Spec : Prop :=
  ∀ n, P11076325018741055204.a n = A145199 (n + 1)

end A145199

/-! ## A145199.P14909224241341291927

`∩[A013929(n+1), A165972(n+1)]`
-/

namespace A145199.P14909224241341291927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145199.P14909224241341291927

namespace A145199

/-- `∩[A013929(n+1), A165972(n+1)]` -/
def P14909224241341291927.Spec : Prop :=
  ∀ n, (P14909224241341291927.a n : ℤ) = A145199 (n + 1)

end A145199

/-! ## A145199.P7536660980631943282

`A065091(lt[1, A240473(n+1)])-1`
-/

namespace A145199.P7536660980631943282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A145199.P7536660980631943282

namespace A145199

/-- `A065091(lt[1, A240473(n+1)])-1` -/
def P7536660980631943282.Spec : Prop :=
  ∀ n, P7536660980631943282.a n = A145199 (n + 1)

end A145199

/-! ## A145199.P11381138643943578849

`∩[A006093(n+1), A013929(n+1)]`
-/

namespace A145199.P11381138643943578849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145199.P11381138643943578849

namespace A145199

/-- `∩[A006093(n+1), A013929(n+1)]` -/
def P11381138643943578849.Spec : Prop :=
  ∀ n, (P11381138643943578849.a n : ℤ) = A145199 (n + 1)

end A145199

/-! ## A145199.P5177202522441314049

`∩[A013929(n+1), A068499(n+1)]`
-/

namespace A145199.P5177202522441314049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145199.P5177202522441314049

namespace A145199

/-- `∩[A013929(n+1), A068499(n+1)]` -/
def P5177202522441314049.Spec : Prop :=
  ∀ n, (P5177202522441314049.a n : ℤ) = A145199 (n + 1)

end A145199

/-! ## A145199.P6893734967166824643

`p?[gcd(n+2, A008683(n+1))]-1`
-/

namespace A145199.P6893734967166824643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A008683 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1

end

end A145199.P6893734967166824643

namespace A145199

/-- `p?[gcd(n+2, A008683(n+1))]-1` -/
def P6893734967166824643.Spec : Prop :=
  ∀ n, P6893734967166824643.a n = A145199 (n + 1)

end A145199

/-! ## A145199.P5391467165303945942

`A000010(A049092(n+1))`
-/

namespace A145199.P5391467165303945942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A049092 (n + 1)).toNat

end

end A145199.P5391467165303945942

namespace A145199

/-- `A000010(A049092(n+1))` -/
def P5391467165303945942.Spec : Prop :=
  ∀ n, P5391467165303945942.a n = A145199 (n + 1)

end A145199

/-! ## A145199.P6729201909431110962

`record[A006530(A013929(n+1)+1)]-1`
-/

namespace A145199.P6729201909431110962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A013929 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A145199.P6729201909431110962

namespace A145199

/-- `record[A006530(A013929(n+1)+1)]-1` -/
def P6729201909431110962.Spec : Prop :=
  ∀ n, P6729201909431110962.a n = A145199 (n + 1)

end A145199

/-! ## A145199.P3802526773219867570

`record[A020639(A013929(n+1)+1)-1]`
-/

namespace A145199.P3802526773219867570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A013929 (n + 1) + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145199.P3802526773219867570

namespace A145199

/-- `record[A020639(A013929(n+1)+1)-1]` -/
def P3802526773219867570.Spec : Prop :=
  ∀ n, P3802526773219867570.a n = A145199 (n + 1)

end A145199

/-! ## A145199.P12988426492708763653

`p?[A105570(n)+1]-1`
-/

namespace A145199.P12988426492708763653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A145199.P12988426492708763653

namespace A145199

/-- `p?[A105570(n)+1]-1` -/
def P12988426492708763653.Spec : Prop :=
  ∀ n, P12988426492708763653.a n = A145199 (n + 1)

end A145199

/-! ## A145199.P4577712459231592824

`filter[A039915(n+1), A087049(#)]`
-/

namespace A145199.P4577712459231592824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A145199.P4577712459231592824

namespace A145199

/-- `filter[A039915(n+1), A087049(#)]` -/
def P4577712459231592824.Spec : Prop :=
  ∀ n, P4577712459231592824.a n = A145199 (n + 1)

end A145199

/-! ## A145199.P11622635950040464533

`filter[A006093(n+2), A087049(#)]`
-/

namespace A145199.P11622635950040464533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A145199.P11622635950040464533

namespace A145199

/-- `filter[A006093(n+2), A087049(#)]` -/
def P11622635950040464533.Spec : Prop :=
  ∀ n, P11622635950040464533.a n = A145199 (n + 1)

end A145199

/-! ## A145199.P1453752011035518485

`filter[A006093(n+2), A105234(#)]`
-/

namespace A145199.P1453752011035518485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A145199.P1453752011035518485

namespace A145199

/-- `filter[A006093(n+2), A105234(#)]` -/
def P1453752011035518485.Spec : Prop :=
  ∀ n, P1453752011035518485.a n = A145199 (n + 1)

end A145199

/-! ## A145199.P164310013126415932

`filter[A039915(n+2), A105234(#)]`
-/

namespace A145199.P164310013126415932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039915 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A145199.P164310013126415932

namespace A145199

/-- `filter[A039915(n+2), A105234(#)]` -/
def P164310013126415932.Spec : Prop :=
  ∀ n, P164310013126415932.a n = A145199 (n + 1)

end A145199

/-! ## A145199.P7800717287745788234

`filter[A068499(n+2), A087049(#)]`
-/

namespace A145199.P7800717287745788234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068499 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A145199.P7800717287745788234

namespace A145199

/-- `filter[A068499(n+2), A087049(#)]` -/
def P7800717287745788234.Spec : Prop :=
  ∀ n, P7800717287745788234.a n = A145199 (n + 1)

end A145199

/-! ## A145199.P14301677390534979437

`filter[A165972(n+2), A087049(#)]`
-/

namespace A145199.P14301677390534979437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165972 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A145199.P14301677390534979437

namespace A145199

/-- `filter[A165972(n+2), A087049(#)]` -/
def P14301677390534979437.Spec : Prop :=
  ∀ n, P14301677390534979437.a n = A145199 (n + 1)

end A145199

/-! ## A145199.P13821879782561942228

`filter[A165972(n+2), A105234(#)]`
-/

namespace A145199.P13821879782561942228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165972 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A145199.P13821879782561942228

namespace A145199

/-- `filter[A165972(n+2), A105234(#)]` -/
def P13821879782561942228.Spec : Prop :=
  ∀ n, P13821879782561942228.a n = A145199 (n + 1)

end A145199

/-! ## A145199.P8869991345174114257

`filter[A156037(n+3), A087049(#)]`
-/

namespace A145199.P8869991345174114257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A145199.P8869991345174114257

namespace A145199

/-- `filter[A156037(n+3), A087049(#)]` -/
def P8869991345174114257.Spec : Prop :=
  ∀ n, P8869991345174114257.a n = A145199 (n + 1)

end A145199

