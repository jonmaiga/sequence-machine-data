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
import Seq.B000.C028
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
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
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

/-!
# A050700: Composite numbers n smaller than their decimal reverse but having the same number of prime factors.

The programs for A050700, there is no canonical definition to state claims against.
-/

/-! ## A050700.P13306911802497957823

`record[A050699(n+1)%A004086(A050699(n+1))]`
-/

namespace A050700.P13306911802497957823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050699 (n + 1)) (A004086 (A050699 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050700.P13306911802497957823

/-! ## A050700.P6934193227963337279

`∩[A050699(n+1), A071589(n+1)]`
-/

namespace A050700.P6934193227963337279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050700.P6934193227963337279

/-! ## A050700.P4022490946630105159

`∩[A050699(n+1), A131058(n+1)]`
-/

namespace A050700.P4022490946630105159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050700.P4022490946630105159

/-! ## A050700.P12725030706954105364

`∩[A050699(n+1), A102827(n)]`
-/

namespace A050700.P12725030706954105364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102827 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050700.P12725030706954105364

/-! ## A050700.P7617618730364094334

`∩[A050699(n+1), A239016(n+1)]`
-/

namespace A050700.P7617618730364094334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050700.P7617618730364094334

/-!
# A050701: If composite k and its reverse are different and have same number of prime factors, then the larger of them is a term of the sequence.

The programs for A050701, there is no canonical definition to state claims against.
-/

/-! ## A050701.P6611842590538428446

`∩[A050699(n+1), A071590(n+1)]`
-/

namespace A050701.P6611842590538428446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050701.P6611842590538428446

/-! ## A050701.P6718214691278230319

`∩[A050699(n+1), A267771(n+1)]`
-/

namespace A050701.P6718214691278230319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050701.P6718214691278230319

/-! ## A050701.P14925965659107383830

`∩[A097393(n+1), A267771(n+1)]`
-/

namespace A050701.P14925965659107383830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050701.P14925965659107383830

/-!
# A050702: Nonprime numbers n such that n and n-reversed (<>n and no leading zeros) have the same number of prime factors and these prime factors (palindromes allowed here) are also reversals of each other.

The programs for A050702, there is no canonical definition to state claims against.
-/

/-! ## A050702.P977925906264238115

`∩[A097393(n+1), A267510(n+1)]`
-/

namespace A050702.P977925906264238115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050702.P977925906264238115

/-! ## A050702.P5165639115533354894

`∩[A085751(n+1), A346290(n+1)]`
-/

namespace A050702.P5165639115533354894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050702.P5165639115533354894

/-! ## A050702.P9823573382379745263

`∩[A097393(n+1), A346290(n+1)]`
-/

namespace A050702.P9823573382379745263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050702.P9823573382379745263

/-! ## A050702.P14837504373230431003

`∩[A239307(n+1), A346290(n+1)]`
-/

namespace A050702.P14837504373230431003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239307 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050702.P14837504373230431003

/-!
# A050703: Numbers that when added to the sum of their prime factors (with multiplicity) become prime.

The programs for A050703, the canonical program `A050703.P11636492065280123511` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050703 has offset 1).

The definition of A050703 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3808 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050703.P5980414201379029952

`eq[1, A001222(A001414(n+1)+n+1)]+1`
-/

namespace A050703.P5980414201379029952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001414 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A050703.P5980414201379029952

namespace A050703

/-- `eq[1, A001222(A001414(n+1)+n+1)]+1` -/
def P5980414201379029952.Spec : Prop :=
  ∀ n, (P5980414201379029952.a n : ℤ) = A050703 (n + 1)

end A050703

/-! ## A050703.P14283955329293675029

`eq[2, A000005(A001414(n+1)+n+1)]+1`
-/

namespace A050703.P14283955329293675029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001414 (n + 1) + (n : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A050703.P14283955329293675029

namespace A050703

/-- `eq[2, A000005(A001414(n+1)+n+1)]+1` -/
def P14283955329293675029.Spec : Prop :=
  ∀ n, (P14283955329293675029.a n : ℤ) = A050703 (n + 1)

end A050703

/-! ## A050703.P11636492065280123511

`eq[1, A319713(A001414(n+1)+n+1)]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A050703

/-- `eq[1, A319713(A001414(n+1)+n+1)]+1` -/
def P11636492065280123511.Spec : Prop :=
  ∀ n, (P11636492065280123511.a n : ℤ) = A050703 (n + 1)

theorem P11636492065280123511.correct : P11636492065280123511.Spec := by
  intro n
  simp only [A050703, Nat.add_sub_cancel]

end A050703

/-! ## A050703.P6272381100573960817

`eq[1, A018845(n+2)]+2`
-/

namespace A050703.P6272381100573960817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018845 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A050703.P6272381100573960817

namespace A050703

/-- `eq[1, A018845(n+2)]+2` -/
def P6272381100573960817.Spec : Prop :=
  ∀ n, (P6272381100573960817.a n : ℤ) = A050703 (n + 1)

end A050703

/-! ## A050703.P11507705705231485533

`A171463(eq[1, A018845(n+2)])`
-/

namespace A050703.P11507705705231485533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018845 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050703.P11507705705231485533

namespace A050703

/-- `A171463(eq[1, A018845(n+2)])` -/
def P11507705705231485533.Spec : Prop :=
  ∀ n, P11507705705231485533.a n = A050703 (n + 1)

end A050703

/-! ## A050703.P16870705924974950685

`eq[1, A001222(A075254(n+1))]+1`
-/

namespace A050703.P16870705924974950685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A075254 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A050703.P16870705924974950685

namespace A050703

/-- `eq[1, A001222(A075254(n+1))]+1` -/
def P16870705924974950685.Spec : Prop :=
  ∀ n, (P16870705924974950685.a n : ℤ) = A050703 (n + 1)

end A050703

/-! ## A050703.P10078440436240299309

`eq[1, A018845(A233583(n+1))]`
-/

namespace A050703.P10078440436240299309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018845 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050703.P10078440436240299309

namespace A050703

/-- `eq[1, A018845(A233583(n+1))]` -/
def P10078440436240299309.Spec : Prop :=
  ∀ n, (P10078440436240299309.a n : ℤ) = A050703 (n + 1)

end A050703

/-!
# A050704: Composite numbers k with the property that k minus the sum of the prime factors of k is prime.

The programs for A050704, the canonical program `A050704.P1369494930655348781` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050704 has offset 1).

The definition of A050704 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1350 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050704.P1369494930655348781

`eq[1, A105700(A075255(n+1))]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A050704

/-- `eq[1, A105700(A075255(n+1))]+1` -/
def P1369494930655348781.Spec : Prop :=
  ∀ n, (P1369494930655348781.a n : ℤ) = A050704 (n + 1)

theorem P1369494930655348781.correct : P1369494930655348781.Spec := by
  intro n
  simp only [A050704, Nat.add_sub_cancel]

end A050704

/-! ## A050704.P14332049290818706472

`A078442(A034263(n))+A001414(A199013(n+1))`
-/

namespace A050704.P14332049290818706472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078442 (A034263 n).toNat + A001414 (A199013 (n + 1)).toNat

end

end A050704.P14332049290818706472

namespace A050704

/-- `A078442(A034263(n))+A001414(A199013(n+1))` -/
def P14332049290818706472.Spec : Prop :=
  ∀ n, P14332049290818706472.a n = A050704 (n + 1)

end A050704

/-! ## A050704.P14695102579341466751

`A001414(A199013(n+1))*A342460(A309310(n+1))`
-/

namespace A050704.P14695102579341466751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A199013 (n + 1)).toNat * A342460 (A309310 (n + 1)).toNat

end

end A050704.P14695102579341466751

namespace A050704

/-- `A001414(A199013(n+1))*A342460(A309310(n+1))` -/
def P14695102579341466751.Spec : Prop :=
  ∀ n, P14695102579341466751.a n = A050704 (n + 1)

end A050704

/-!
# A050705: Composite number such that when the sum of its prime factors is added or subtracted it results in a prime.

The programs for A050705, there is no canonical definition to state claims against.
-/

/-! ## A050705.P4447092748239803742

`∪[Δ[A177791(n+1)], A337028(n+1)]`
-/

namespace A050705.P4447092748239803742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177791 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A050705.P4447092748239803742

/-! ## A050705.P14784405082756787751

`∩[A050703(n+1), A050704(n+1)]`
-/

namespace A050705.P14784405082756787751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050705.P14784405082756787751

/-! ## A050705.P7176655736268082071

`∩[eq[1, A018845(n+2)]+2, A050704(n+1)]`
-/

namespace A050705.P7176655736268082071
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018845 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A050705.P7176655736268082071

/-! ## A050705.P8779430093873435463

`A050703(record[A134332(2*(n+1))])`
-/

namespace A050705.P8779430093873435463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134332 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050703 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050705.P8779430093873435463

/-! ## A050705.P13727246436558986058

`A050704(A325097(n+3)%A161592(n+1))`
-/

namespace A050705.P13727246436558986058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050704 (Int.tmod (A325097 (n + 3)) (A161592 (n + 1))).toNat

end

end A050705.P13727246436558986058

/-!
# A050706: Composites c that reach a prime after 2 iterations of c-> c+sum of prime factors of c.

The programs for A050706, there is no canonical definition to state claims against.
-/

/-! ## A050706.P15396433642910497966

`A095191(A048645(n+1)%A057874(n))`
-/

namespace A050706.P15396433642910497966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095191 (Int.tmod (A048645 (n + 1)) (A057874 n)).toNat

end

end A050706.P15396433642910497966

/-! ## A050706.P7028732331139990620

`A095191(A284207(n+1)+A048645(n+1))`
-/

namespace A050706.P7028732331139990620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095191 (A284207 (n + 1) + A048645 (n + 1)).toNat

end

end A050706.P7028732331139990620

/-! ## A050706.P12503526493169569500

`A095191(A048645(n+1))%A216378(n+5)`
-/

namespace A050706.P12503526493169569500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095191 (A048645 (n + 1)).toNat) (A216378 (n + 5))

end

end A050706.P12503526493169569500

/-!
# A050711: Inserting a digit '1' between adjacent digits of n makes a prime.

The programs for A050711, there is no canonical definition to state claims against.
-/

/-! ## A050711.P17017387182304463706

`A118759(A331116(n+1))`
-/

namespace A050711.P17017387182304463706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A331116 (n + 1)).toNat

end

end A050711.P17017387182304463706

/-! ## A050711.P6005974981615055372

`A000188(A331116(n+1)²)`
-/

namespace A050711.P6005974981615055372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A331116 (n + 1) ^ 2).toNat

end

end A050711.P6005974981615055372

/-! ## A050711.P12394992489062146660

`A000194(A331116(n+1)²)`
-/

namespace A050711.P12394992489062146660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A331116 (n + 1) ^ 2).toNat

end

end A050711.P12394992489062146660

/-! ## A050711.P6013256703618540124

`A000196(A331116(n+1)²)`
-/

namespace A050711.P6013256703618540124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A331116 (n + 1) ^ 2).toNat

end

end A050711.P6013256703618540124

/-! ## A050711.P7819217382057533848

`A019554(A331116(n+1)²)`
-/

namespace A050711.P7819217382057533848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A331116 (n + 1) ^ 2).toNat

end

end A050711.P7819217382057533848

/-!
# A050712: Inserting a digit '2' between adjacent digits of n makes a prime.

The programs for A050712, there is no canonical definition to state claims against.
-/

/-! ## A050712.P6215399174155737851

`A118759(A304247(n+11))`
-/

namespace A050712.P6215399174155737851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A304247 (n + 11)).toNat

end

end A050712.P6215399174155737851

/-! ## A050712.P10167013663552307527

`A137734(A304247(n+11)²)`
-/

namespace A050712.P10167013663552307527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A304247 (n + 11) ^ 2).toNat

end

end A050712.P10167013663552307527

/-! ## A050712.P579337276309974519

`A304244(A004885(n+1)+11)`
-/

namespace A050712.P579337276309974519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304244 (A004885 (n + 1) + 11).toNat

end

end A050712.P579337276309974519

/-! ## A050712.P7066822769125382342

`A304244(A004896(n+1)+11)`
-/

namespace A050712.P7066822769125382342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304244 (A004896 (n + 1) + 11).toNat

end

end A050712.P7066822769125382342

/-! ## A050712.P8157721300344884993

`∩[A236403(n+1), A304244(n+1)]`
-/

namespace A050712.P8157721300344884993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050712.P8157721300344884993

/-!
# A050713: Inserting a digit '3' between adjacent digits of n makes a prime.

The programs for A050713, there is no canonical definition to state claims against.
-/

/-! ## A050713.P9008024937869845501

`A304248(A187829(n+1)+10)`
-/

namespace A050713.P9008024937869845501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304248 (A187829 (n + 1) + 10).toNat

end

end A050713.P9008024937869845501

/-! ## A050713.P16046057494862474260

`∩[A236403(n+1), A304248(n+1)]`
-/

namespace A050713.P16046057494862474260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050713.P16046057494862474260

/-! ## A050713.P13169056618666893426

`A118759(∪[A164329(3*n+1), A217063(n+1)])`
-/

namespace A050713.P13169056618666893426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164329 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217063 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A050713.P13169056618666893426

/-! ## A050713.P16965759655779965630

`A157996(n+1)+A010894(A310439(n))`
-/

namespace A050713.P16965759655779965630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (n + 1) + A010894 ((A310439 n).toNat + 21)

end

end A050713.P16965759655779965630

/-! ## A050713.P7806663076758026717

`A157996(n+1)+A010894(A312979(n))`
-/

namespace A050713.P7806663076758026717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (n + 1) + A010894 ((A312979 n).toNat + 21)

end

end A050713.P7806663076758026717

/-!
# A050714: Inserting a digit '4' between adjacent digits of n makes a prime.

The programs for A050714, there is no canonical definition to state claims against.
-/

/-! ## A050714.P4482260066056280509

`A332261(A077168(n)+10)`
-/

namespace A050714.P4482260066056280509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332261 (A077168 n + 10).toNat

end

end A050714.P4482260066056280509

/-! ## A050714.P5200434023162353822

`filter[A332261(n+1), A377191(#)]`
-/

namespace A050714.P5200434023162353822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377191 (f1 j).toNat = 1) n)

end

end A050714.P5200434023162353822

/-! ## A050714.P14236384086679108909

`∩[A236403(n+1), A332261(n+1)]`
-/

namespace A050714.P14236384086679108909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050714.P14236384086679108909

/-! ## A050714.P16950215837383793338

`∩[A332261(n+1), A348517(n+1)]`
-/

namespace A050714.P16950215837383793338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050714.P16950215837383793338

/-!
# A050716: Inserting a digit '6' between all adjacent digits of k makes a prime.

The programs for A050716, there is no canonical definition to state claims against.
-/

/-! ## A050716.P6546316481111040281

`A217046(∑[2^and(16, n)])`
-/

namespace A050716.P6546316481111040281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.land 16 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217046 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A050716.P6546316481111040281

/-! ## A050716.P15354265381384439011

`A217046(n+1)%A006203(n+1)`
-/

namespace A050716.P15354265381384439011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217046 (n + 1)) (A006203 (n + 1))

end

end A050716.P15354265381384439011

/-! ## A050716.P1053623574217818581

`A217046(A187829(n+1))`
-/

namespace A050716.P1053623574217818581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217046 (A187829 (n + 1)).toNat

end

end A050716.P1053623574217818581

/-! ## A050716.P4973184562987891003

`A216455(A217046(n+1))`
-/

namespace A050716.P4973184562987891003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216455 (A217046 (n + 1)).toNat

end

end A050716.P4973184562987891003

/-! ## A050716.P16772163450136000899

`A217096(A376754(n+1))+A217046(n+1)`
-/

namespace A050716.P16772163450136000899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217096 (A376754 (n + 1)).toNat + A217046 (n + 1)

end

end A050716.P16772163450136000899

/-!
# A050717: Inserting a digit '7' between adjacent digits of n makes a prime.

The programs for A050717, there is no canonical definition to state claims against.
-/

/-! ## A050717.P9664490465044255901

`A016945(n)+A010726(A049311(n+1))`
-/

namespace A050717.P9664490465044255901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n + A010726 (A049311 (n + 1)).toNat

end

end A050717.P9664490465044255901

/-! ## A050717.P13924256191425064684

`A105159(A159288(n))+A005101(n+1)`
-/

namespace A050717.P13924256191425064684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105159 (A159288 n).toNat + A005101 (n + 1)

end

end A050717.P13924256191425064684

/-! ## A050717.P13128481786113941348

`A016945(n+1)+A004018(A000143(n))`
-/

namespace A050717.P13128481786113941348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 (n + 1) + A004018 (A000143 n).toNat

end

end A050717.P13128481786113941348

/-! ## A050717.P6247658339863104446

`A053150(A000244(n))+A005101(n+1)`
-/

namespace A050717.P6247658339863104446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053150 (A000244 n).toNat + A005101 (n + 1)

end

end A050717.P6247658339863104446

/-! ## A050717.P10570475171785786691

`A077196(A000142(n))+A005101(n+1)`
-/

namespace A050717.P10570475171785786691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077196 (A000142 n).toNat + A005101 (n + 1)

end

end A050717.P10570475171785786691

/-!
# A050719: Inserting a digit '9' between adjacent digits of n makes a prime.

The programs for A050719, there is no canonical definition to state claims against.
-/

/-! ## A050719.P4546044207390683030

`lt[A324543(n+1), A303338(A335235(n+1))]`
-/

namespace A050719.P4546044207390683030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303338 (A335235 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050719.P4546044207390683030

/-!
# A050720: Number of nonzero palindromes of length n containing the digit '0'.

The programs for A050720, the canonical program `A050720.P2053884758720307842` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050720 has offset 1).

The definition of A050720 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050720.P2053884758720307842

`ogf((9x^2+9x^3)/(1-19x^2+90x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A050720

/-- `ogf((9x^2+9x^3)/(1-19x^2+90x^4))` -/
def P2053884758720307842.Spec : Prop :=
  ∀ n, P2053884758720307842.a n = A050720 (n + 1)

theorem P2053884758720307842.correct : P2053884758720307842.Spec := by
  intro n
  simp only [A050720, Nat.add_sub_cancel]

end A050720

/-! ## A050720.P14054325350750293886

`3*3*A016189(floor(n/2))`
-/

namespace A050720.P14054325350750293886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (3 * A016189 ⌊(n : ℚ) / 2⌋.toNat)

end

end A050720.P14054325350750293886

namespace A050720

/-- `3*3*A016189(floor(n/2))` -/
def P14054325350750293886.Spec : Prop :=
  ∀ n, P14054325350750293886.a n = A050720 (n + 1)

end A050720

/-! ## A050720.P8329318588459092372

`A050686(n+1)-(3^floor(n/2))²`
-/

namespace A050720.P8329318588459092372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050686 (n + 1) : ℚ) - ((3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)) ^ 2

end

end A050720.P8329318588459092372

namespace A050720

/-- `A050686(n+1)-(3^floor(n/2))²` -/
def P8329318588459092372.Spec : Prop :=
  ∀ n, P8329318588459092372.a n = (A050720 (n + 1) : ℚ)

end A050720

/-! ## A050720.P12919649661422287587

`9*A016189(A004526(n))`
-/

namespace A050720.P12919649661422287587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A016189 (A004526 n).toNat

end

end A050720.P12919649661422287587

namespace A050720

/-- `9*A016189(A004526(n))` -/
def P12919649661422287587.Spec : Prop :=
  ∀ n, P12919649661422287587.a n = A050720 (n + 1)

end A050720

/-! ## A050720.P3001167456146490558

`Δ[A050685(A028310(n))]`
-/

namespace A050720.P3001167456146490558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050685 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050720.P3001167456146490558

namespace A050720

/-- `Δ[A050685(A028310(n))]` -/
def P3001167456146490558.Spec : Prop :=
  ∀ n, P3001167456146490558.a n = A050720 (n + 1)

end A050720

/-! ## A050720.P655693093088695341

`Δ[A050685(A065033(2*n))]`
-/

namespace A050720.P655693093088695341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050685 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050720.P655693093088695341

namespace A050720

/-- `Δ[A050685(A065033(2*n))]` -/
def P655693093088695341.Spec : Prop :=
  ∀ n, P655693093088695341.a n = A050720 (n + 1)

end A050720

/-! ## A050720.P13248982218017684067

`Δ[A050685(A008619(A004273(n)))]`
-/

namespace A050720.P13248982218017684067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050685 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050720.P13248982218017684067

namespace A050720

/-- `Δ[A050685(A008619(A004273(n)))]` -/
def P13248982218017684067.Spec : Prop :=
  ∀ n, P13248982218017684067.a n = A050720 (n + 1)

end A050720

/-! ## A050720.P16852642106995839016

`A050685(n+1)-A050685(A028310(n))`
-/

namespace A050720.P16852642106995839016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050685 (n + 1) - A050685 (A028310 n).toNat

end

end A050720.P16852642106995839016

namespace A050720

/-- `A050685(n+1)-A050685(A028310(n))` -/
def P16852642106995839016.Spec : Prop :=
  ∀ n, P16852642106995839016.a n = A050720 (n + 1)

end A050720

/-! ## A050720.P9588568111789192715

`A050685(n+1)-A050685(A065033(2*n))`
-/

namespace A050720.P9588568111789192715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050685 (n + 1) - A050685 (A065033 (2 * n)).toNat

end

end A050720.P9588568111789192715

namespace A050720

/-- `A050685(n+1)-A050685(A065033(2*n))` -/
def P9588568111789192715.Spec : Prop :=
  ∀ n, P9588568111789192715.a n = A050720 (n + 1)

end A050720

/-! ## A050720.P11313045032997660984

`Δ[A050685(n+1)]%A050686(n+1)`
-/

namespace A050720.P11313045032997660984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A050686 (n + 1))

end

end A050720.P11313045032997660984

namespace A050720

/-- `Δ[A050685(n+1)]%A050686(n+1)` -/
def P11313045032997660984.Spec : Prop :=
  ∀ n, P11313045032997660984.a n = A050720 (n + 1)

end A050720

/-! ## A050720.P13765866994773040714

`Δ[A050685(A143182(∑[n]-n))]`
-/

namespace A050720.P13765866994773040714
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050685 (A143182 (∑ j ∈ Finset.range (n + 1), f2 j - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050720.P13765866994773040714

namespace A050720

/-- `Δ[A050685(A143182(∑[n]-n))]` -/
def P13765866994773040714.Spec : Prop :=
  ∀ n, P13765866994773040714.a n = A050720 (n + 1)

end A050720

/-! ## A050720.P15262487855214727164

`Δ[A050685(A007318(A000124(n)))]`
-/

namespace A050720.P15262487855214727164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050685 (A007318 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050720.P15262487855214727164

namespace A050720

/-- `Δ[A050685(A007318(A000124(n)))]` -/
def P15262487855214727164.Spec : Prop :=
  ∀ n, P15262487855214727164.a n = A050720 (n + 1)

end A050720

/-! ## A050720.P17138261622545095963

`A050685(n+1)-A050685(A137734(n²))`
-/

namespace A050720.P17138261622545095963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050685 (n + 1) - A050685 (A137734 (n ^ 2)).toNat

end

end A050720.P17138261622545095963

namespace A050720

/-- `A050685(n+1)-A050685(A137734(n²))` -/
def P17138261622545095963.Spec : Prop :=
  ∀ n, P17138261622545095963.a n = A050720 (n + 1)

end A050720

/-! ## A050720.P7246245857962160360

`Δ[A050685(A137734(n²))]`
-/

namespace A050720.P7246245857962160360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050685 (A137734 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050720.P7246245857962160360

namespace A050720

/-- `Δ[A050685(A137734(n²))]` -/
def P7246245857962160360.Spec : Prop :=
  ∀ n, P7246245857962160360.a n = A050720 (n + 1)

end A050720

/-!
# A050721: Primes arising in A083571.

The programs for A050721, there is no canonical definition to state claims against.
-/

/-! ## A050721.P14743294779186625112

`A008509(A083571(n+1))`
-/

namespace A050721.P14743294779186625112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008509 (A083571 (n + 1)).toNat

end

end A050721.P14743294779186625112

/-!
# A050722: Palindromic triangular numbers arising from A050721 and A083571.

The programs for A050722, there is no canonical definition to state claims against.
-/

/-! ## A050722.P14418474683545028887

`C(A050721(n+1)+1, 2)`
-/

namespace A050722.P14418474683545028887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A050721 (n + 1) + 1).toNat 2

end

end A050722.P14418474683545028887

/-!
# A050723: Numbers k such that the decimal expansion of 2^k contains no pair of consecutive equal digits (probably finite).

The programs for A050723, there is no canonical definition to state claims against.
-/

/-! ## A050723.P12987297324222638763

`log2(A050732(n+1))`
-/

namespace A050723.P12987297324222638763
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A050732 (n + 1) : ℝ)

end

end A050723.P12987297324222638763

/-! ## A050723.P6573045309251164695

`val(A050732(A000027(n+1)), 2)`
-/

namespace A050723.P6573045309251164695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A050732 (A000027 (n + 1)).toNat).toNat 2

end

end A050723.P6573045309251164695

/-! ## A050723.P10760289667696171431

`record[val(A050732(A002260(n+1)), 2)]`
-/

namespace A050723.P10760289667696171431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A050732 (A002260 (n + 1)).toNat).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050723.P10760289667696171431

/-! ## A050723.P6207244128704279569

`val(A050732(n+1), A001316(A001316(n)))`
-/

namespace A050723.P6207244128704279569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A050732 (n + 1)).toNat (A001316 (A001316 n).toNat).toNat

end

end A050723.P6207244128704279569

/-! ## A050723.P12617457041957559010

`val(A050732(n+1), A001222(A000040(n+1)²))`
-/

namespace A050723.P12617457041957559010
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A050732 (n + 1)).toNat (A001222 (A000040 (n + 1) ^ 2).toNat).toNat

end

end A050723.P12617457041957559010

/-!
# A050724: Numbers k such that the decimal expansion of 3^k contains no pair of consecutive equal digits (probably finite).

The programs for A050724, there is no canonical definition to state claims against.
-/

/-! ## A050724.P6217817122317971905

`val(A050733(n), 3)`
-/

namespace A050724.P6217817122317971905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A050733 n).toNat 3

end

end A050724.P6217817122317971905

/-!
# A050725: Decimal expansion of 4^n contains no pair of consecutive equal digits (probably finite).

The programs for A050725, there is no canonical definition to state claims against.
-/

/-! ## A050725.P12557016663834912300

`record[A025480(A050723(n+1))]`
-/

namespace A050725.P12557016663834912300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A050723 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050725.P12557016663834912300

/-! ## A050725.P526278099440737573

`record[A142150(A050723(n+2))]`
-/

namespace A050725.P526278099440737573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A050723 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050725.P526278099440737573

/-! ## A050725.P12994510496228726168

`A025480(∩[2*n, A050723(n+1)])`
-/

namespace A050725.P12994510496228726168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050723 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A050725.P12994510496228726168

/-! ## A050725.P18116429803368186242

`∩[A050723(n+1), A005843(n)]/2`
-/

namespace A050725.P18116429803368186242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A050725.P18116429803368186242

/-! ## A050725.P10378480562975620210

`record[A273943(A050723(n+1))]%A000108(n+1)`
-/

namespace A050725.P10378480562975620210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A050723 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A000108 (n + 1))

end

end A050725.P10378480562975620210

/-!
# A050726: Decimal expansion of 5^n contains no pair of consecutive equal digits (probably finite).

The programs for A050726, there is no canonical definition to state claims against.
-/

/-! ## A050726.P3357463449437435454

`eq[1, A091255(A117571(n))]`
-/

namespace A050726.P3357463449437435454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091255 (A117571 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050726.P3357463449437435454

/-! ## A050726.P13442434816020929050

`lt[0, A025448(A344180(n))]`
-/

namespace A050726.P13442434816020929050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025448 (A344180 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A050726.P13442434816020929050

/-! ## A050726.P10933862070129602317

`lt[A191582(A144074(n)), 2]`
-/

namespace A050726.P10933862070129602317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191582 (A144074 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A050726.P10933862070129602317

/-! ## A050726.P6907383798321538418

`record[gcd(n, A029319(A244479(n)))]`
-/

namespace A050726.P6907383798321538418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A029319 (A244479 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050726.P6907383798321538418

/-! ## A050726.P17153161637250066445

`eq[2, A106054(A328083(n+1))]`
-/

namespace A050726.P17153161637250066445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106054 (A328083 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050726.P17153161637250066445

/-!
# A050729: Decimal expansion of 8^n contains no pair of consecutive equal digits (probably finite).

The programs for A050729, there is no canonical definition to state claims against.
-/

/-! ## A050729.P4223816889727579530

`val(A050738(n), 8)`
-/

namespace A050729.P4223816889727579530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A050738 n).toNat 8

end

end A050729.P4223816889727579530

/-! ## A050729.P14956583499130822562

`record[A263390(A050723(n+1))]`
-/

namespace A050729.P14956583499130822562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263390 (A050723 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050729.P14956583499130822562

/-!
# A050730: Decimal expansion of 9^n contains no pair of consecutive equal digits (probably finite).

The programs for A050730, there is no canonical definition to state claims against.
-/

/-! ## A050730.P17168156554190252446

`val(A050739(n), 9)`
-/

namespace A050730.P17168156554190252446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A050739 n).toNat 9

end

end A050730.P17168156554190252446

/-! ## A050730.P15618794971297166150

`lt[A335870(A007504(n)), 34]`
-/

namespace A050730.P15618794971297166150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335870 (A007504 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  34

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A050730.P15618794971297166150

/-! ## A050730.P2605959829004666821

`record[A025480(A050724(n+1))]`
-/

namespace A050730.P2605959829004666821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A050724 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050730.P2605959829004666821

/-! ## A050730.P6625745769602859068

`record[A165111(n)+A089049(n)]`
-/

namespace A050730.P6625745769602859068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165111 n + A089049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050730.P6625745769602859068

/-! ## A050730.P14229411767891473806

`record[A324660(n)%A029112(n)]`
-/

namespace A050730.P14229411767891473806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324660 n) (A029112 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050730.P14229411767891473806

/-!
# A050732: Numbers of form 2^k (for values of k see A050723) containing no pair of consecutive equal digits (probably finite).

The programs for A050732, there is no canonical definition to state claims against.
-/

/-! ## A050732.P18009774725229084654

`2^A050723(n+1)`
-/

namespace A050732.P18009774725229084654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A050723 (n + 1) : ℤ)

end

end A050732.P18009774725229084654

/-! ## A050732.P2826506689558411912

`A000079(A050723(n+1))`
-/

namespace A050732.P2826506689558411912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A050723 (n + 1)).toNat

end

end A050732.P2826506689558411912

/-! ## A050732.P13268698027583722405

`record[2^A050723(A126759(n))]`
-/

namespace A050732.P13268698027583722405
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A050723 (A126759 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050732.P13268698027583722405

/-! ## A050732.P9343314601267284722

`A131577(A050723(n+1)+1)`
-/

namespace A050732.P9343314601267284722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A050723 (n + 1) + 1).toNat

end

end A050732.P9343314601267284722

/-! ## A050732.P4109506779467648298

`A034008(A050723(n+1)+2)`
-/

namespace A050732.P4109506779467648298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A050723 (n + 1) + 2).toNat

end

end A050732.P4109506779467648298

/-!
# A050733: Numbers of form 3^k (values of k see A050724) containing no pair of consecutive equal digits (probably finite).

The programs for A050733, there is no canonical definition to state claims against.
-/

/-! ## A050733.P18415452788676990059

`3^A050724(n+1)`
-/

namespace A050733.P18415452788676990059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A050724 (n + 1) : ℤ)

end

end A050733.P18415452788676990059

/-! ## A050733.P17829118662071082236

`A000244(A050724(n+1))`
-/

namespace A050733.P17829118662071082236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A050724 (n + 1)).toNat

end

end A050733.P17829118662071082236

/-! ## A050733.P11515947194516168304

`A140429(A050724(n+1)+1)`
-/

namespace A050733.P11515947194516168304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 (A050724 (n + 1) + 1).toNat

end

end A050733.P11515947194516168304

/-! ## A050733.P5165179258351345997

`A038754(2*A050724(n+1))`
-/

namespace A050733.P5165179258351345997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (2 * A050724 (n + 1)).toNat

end

end A050733.P5165179258351345997

/-! ## A050733.P8116922042781214121

`A108411(2*A050724(n+1))`
-/

namespace A050733.P8116922042781214121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 (2 * A050724 (n + 1)).toNat

end

end A050733.P8116922042781214121

/-!
# A050734: Numbers of form 4^k (values of k see A050725) containing no pair of consecutive equal digits (probably finite).

The programs for A050734, there is no canonical definition to state claims against.
-/

/-! ## A050734.P8303679805789559035

`4^A050725(n)`
-/

namespace A050734.P8303679805789559035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A050725 (n + 1) : ℤ)

end

end A050734.P8303679805789559035

/-! ## A050734.P6292729788918545233

`A000302(A050725(n))`
-/

namespace A050734.P6292729788918545233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A050725 (n + 1)).toNat

end

end A050734.P6292729788918545233

/-! ## A050734.P589015096591535303

`A000079(2*A050725(n))`
-/

namespace A050734.P589015096591535303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * A050725 (n + 1)).toNat

end

end A050734.P589015096591535303

/-! ## A050734.P2691676734702883853

`A056450(2*A050725(n))`
-/

namespace A050734.P2691676734702883853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056450 (2 * A050725 (n + 1)).toNat

end

end A050734.P2691676734702883853

/-! ## A050734.P7259190593915007484

`A084221(2*A050725(n))`
-/

namespace A050734.P7259190593915007484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084221 (2 * A050725 (n + 1)).toNat

end

end A050734.P7259190593915007484

/-!
# A050735: Numbers of form 5^k (values of k see A050726) containing no pair of consecutive equal digits (probably finite).

The programs for A050735, there is no canonical definition to state claims against.
-/

/-! ## A050735.P6130057935053584659

`5^A050726(n)`
-/

namespace A050735.P6130057935053584659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A050726 n : ℤ)

end

end A050735.P6130057935053584659

/-! ## A050735.P15605317120241404074

`A000351(A050726(n))`
-/

namespace A050735.P15605317120241404074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A050726 n).toNat

end

end A050735.P15605317120241404074

/-! ## A050735.P8976401691376403501

`5^eq[1, A091255(A117571(n))]`
-/

namespace A050735.P8976401691376403501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091255 (A117571 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050735.P8976401691376403501

/-! ## A050735.P6569966638358097339

`5^eq[1, A025448(A344180(n))]`
-/

namespace A050735.P6569966638358097339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025448 (A344180 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050735.P6569966638358097339

/-! ## A050735.P7705165299857471327

`5^eq[2, A106054(A328083(n+1))]`
-/

namespace A050735.P7705165299857471327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106054 (A328083 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050735.P7705165299857471327

/-!
# A050736: Numbers of form 6^k (values of k see A050727) containing no pair of consecutive equal digits (probably finite).

The programs for A050736, there is no canonical definition to state claims against.
-/

/-! ## A050736.P5943893607222702429

`6^A050727(n+1)`
-/

namespace A050736.P5943893607222702429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A050727 (n + 1) : ℤ)

end

end A050736.P5943893607222702429

/-! ## A050736.P6595107134466897656

`A000400(A050727(n+1))`
-/

namespace A050736.P6595107134466897656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 (A050727 (n + 1)).toNat

end

end A050736.P6595107134466897656

/-! ## A050736.P9250832721271851586

`A056452(2*A050727(n+1))`
-/

namespace A050736.P9250832721271851586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056452 (2 * A050727 (n + 1)).toNat

end

end A050736.P9250832721271851586

/-! ## A050736.P4009643625297581125

`record[6^A352897(A352892(n+1))]`
-/

namespace A050736.P4009643625297581125
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A352897 (A352892 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050736.P4009643625297581125

/-!
# A050737: Numbers of form 7^k (values of k see A050728) containing no pair of consecutive equal digits (probably finite).

The programs for A050737, there is no canonical definition to state claims against.
-/

/-! ## A050737.P9688834281262907757

`7^A050728(n)`
-/

namespace A050737.P9688834281262907757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A050728 n : ℤ)

end

end A050737.P9688834281262907757

/-! ## A050737.P12516926966874937012

`A000420(A050728(n))`
-/

namespace A050737.P12516926966874937012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (A050728 n).toNat

end

end A050737.P12516926966874937012

/-! ## A050737.P16823587514117196095

`A024075(A050728(n))+A008835(n+1)`
-/

namespace A050737.P16823587514117196095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024075 (A050728 n).toNat + A008835 (n + 1)

end

end A050737.P16823587514117196095

/-! ## A050737.P16967937248347428764

`7^lt[A342999(n+1), 12]`
-/

namespace A050737.P16967937248347428764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342999 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A050737.P16967937248347428764

/-! ## A050737.P17625922202409542115

`7^A000523(A052542(n))`
-/

namespace A050737.P17625922202409542115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A000523 (A052542 n).toNat : ℤ)

end

end A050737.P17625922202409542115

/-!
# A050738: Numbers of form 8^k (values of k see A050729) containing no pair of consecutive equal digits (probably finite).

The programs for A050738, there is no canonical definition to state claims against.
-/

/-! ## A050738.P7814829726945944223

`8^A050729(n)`
-/

namespace A050738.P7814829726945944223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ (A050729 n : ℤ)

end

end A050738.P7814829726945944223

/-! ## A050738.P5372022427894019064

`A000079(3*A050729(n))`
-/

namespace A050738.P5372022427894019064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (3 * A050729 n).toNat

end

end A050738.P5372022427894019064

/-! ## A050738.P17610763496463640127

`∩[A050732(n+1), A017929(n)]`
-/

namespace A050738.P17610763496463640127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017929 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050738.P17610763496463640127

/-! ## A050738.P4707868737567178838

`∩[A050732(n+1), A017930(n)]`
-/

namespace A050738.P4707868737567178838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017930 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050738.P4707868737567178838

/-! ## A050738.P382025399295844037

`∩[A050732(n+1), A096886(n)]`
-/

namespace A050738.P382025399295844037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096886 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050738.P382025399295844037

/-!
# A050739: Numbers of form 9^k (values of k see A050730) containing no pair of consecutive equal digits (probably finite).

The programs for A050739, there is no canonical definition to state claims against.
-/

/-! ## A050739.P5083209404833392273

`9^A050730(n)`
-/

namespace A050739.P5083209404833392273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) ^ (A050730 n : ℤ)

end

end A050739.P5083209404833392273

/-! ## A050739.P449087132120985940

`record[(-3)^A050724(n+1)]`
-/

namespace A050739.P449087132120985940
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-3 : ℚ) ^ (A050724 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050739.P449087132120985940

/-! ## A050739.P15348729605180213071

`∩[A000244(n)², A050733(n)]`
-/

namespace A050739.P15348729605180213071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050733 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050739.P15348729605180213071

/-! ## A050739.P3139756498901046166

`∩[A000244(2*n), A050733(n)]`
-/

namespace A050739.P3139756498901046166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050733 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050739.P3139756498901046166

/-! ## A050739.P12482529135945544731

`A050733(comp[Δ[A050749(n+1)]])`
-/

namespace A050739.P12482529135945544731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050749 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050733 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A050739.P12482529135945544731

/-!
# A050740: Numbers of form 11^k (values of k see A050731) containing no pair of consecutive equal digits (probably finite).

The programs for A050740, there is no canonical definition to state claims against.
-/

/-! ## A050740.P2932458791581739913

`11^A050731(n)`
-/

namespace A050740.P2932458791581739913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 : ℚ) ^ (A050731 n : ℤ)

end

end A050740.P2932458791581739913

/-! ## A050740.P17653618376369073131

`11^A181523(A081175(n+1))`
-/

namespace A050740.P17653618376369073131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 : ℚ) ^ (A181523 (A081175 (n + 1)).toNat : ℤ)

end

end A050740.P17653618376369073131

/-! ## A050740.P18112450055468397735

`A001020(lt[A060724(n+1), A180620(n+1)])`
-/

namespace A050740.P18112450055468397735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A050740.P18112450055468397735

/-! ## A050740.P11766521351629072183

`A033047(2^ceil(5*n/3))`
-/

namespace A050740.P11766521351629072183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033047 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈5 * ((n : ℚ) / 3)⌉ : ℤ))).toNat

end

end A050740.P11766521351629072183

/-!
# A050741: Numbers k such that the decimal expansion of k^2 contains no pair of consecutive equal digits.

The programs for A050741, there is no canonical definition to state claims against.
-/

/-! ## A050741.P7901997889611718310

`sqrt(A050749(n+1))`
-/

namespace A050741.P7901997889611718310
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A050749 (n + 1) : ℝ)

end

end A050741.P7901997889611718310

/-! ## A050741.P4568301743821583503

`A056926(A050749(1+n)+char[1])`
-/

namespace A050741.P4568301743821583503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A050749 (1 + n) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A050741.P4568301743821583503

/-! ## A050741.P4680904696694252286

`A056926(A050749(n+1)*A054977(n))`
-/

namespace A050741.P4680904696694252286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A050749 (n + 1) * A054977 n).toNat

end

end A050741.P4680904696694252286

/-! ## A050741.P5086434831478150141

`A056926(A050749(n+1)*A057427(n))`
-/

namespace A050741.P5086434831478150141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A050749 (n + 1) * A057427 n).toNat

end

end A050741.P5086434831478150141

/-! ## A050741.P579705945456535535

`A056926(A050749(n+1)/A054977(n))`
-/

namespace A050741.P579705945456535535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (SequenceMachineLib.roundAway ((A050749 (n + 1) : ℚ) / (A054977 n : ℚ))).toNat

end

end A050741.P579705945456535535

/-! ## A050741.P1307961087929666891

`A001222(A007918(n))*A056926(A050749(n+1))`
-/

namespace A050741.P1307961087929666891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007918 n).toNat * A056926 (A050749 (n + 1)).toNat

end

end A050741.P1307961087929666891

/-! ## A050741.P12015623738194199476

`A001221(A327277(n+1))*A056926(A050749(n+1))`
-/

namespace A050741.P12015623738194199476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A327277 (n + 1)).toNat * A056926 (A050749 (n + 1)).toNat

end

end A050741.P12015623738194199476

/-! ## A050741.P7410132697361055295

`eq[1, A196368(n²)]`
-/

namespace A050741.P7410132697361055295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050741.P7410132697361055295

/-! ## A050741.P5739927576666052058

`sqrt(record[A321802(n²)])`
-/

namespace A050741.P5739927576666052058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 (n ^ 2)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)

end

end A050741.P5739927576666052058

/-!
# A050742: Numbers k such that the decimal expansion of k^3 contains no pair of consecutive equal digits.

The programs for A050742, there is no canonical definition to state claims against.
-/

/-! ## A050742.P3540245439808492600

`A050750(n+1)^(1/3)`
-/

namespace A050742.P3540245439808492600
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A050750 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A050742.P3540245439808492600

/-! ## A050742.P9452709540232042639

`A100196(ceil(sqrt(A050750(n+1))))`
-/

namespace A050742.P9452709540232042639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 ⌈Real.sqrt (A050750 (n + 1) : ℝ)⌉.toNat

end

end A050742.P9452709540232042639

/-! ## A050742.P4901037877702379469

`eq[A016389(A030669(n+1)), A055641(n)]`
-/

namespace A050742.P4901037877702379469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016389 (A030669 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050742.P4901037877702379469

/-! ## A050742.P13399778129501517801

`lt[A241831(n), A327832(A212191(2*(n+1)))]`
-/

namespace A050742.P13399778129501517801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241831 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327832 (A212191 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050742.P13399778129501517801

/-!
# A050743: Numbers k such that the decimal expansion of k^4 contains no pair of consecutive equal digits.

The programs for A050743, there is no canonical definition to state claims against.
-/

/-! ## A050743.P8398115900862972401

`sqrt(sqrt(A050751(n)))`
-/

namespace A050743.P8398115900862972401
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A050751 n : ℝ))

end

end A050743.P8398115900862972401

/-! ## A050743.P15408793113425312619

`record[A056926(A050741(n+1))]`
-/

namespace A050743.P15408793113425312619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A050741 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050743.P15408793113425312619

/-! ## A050743.P7336216624551191

`lt[A057168(3*n+4), A057614(A153679(n+1))]`
-/

namespace A050743.P7336216624551191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057614 (A153679 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050743.P7336216624551191

/-! ## A050743.P4842930463853099559

`lt[A327539(A343335(2*(n+1))), 20]`
-/

namespace A050743.P4842930463853099559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327539 (A343335 (2 * (n + 1))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A050743.P4842930463853099559

/-! ## A050743.P14522558946959326698

`lt[A027750(A180000(n)), A304742(2*(n+2))]`
-/

namespace A050743.P14522558946959326698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (A180000 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304742 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050743.P14522558946959326698

/-!
# A050744: Numbers k such that the decimal expansion of k^5 contains no pair of consecutive equal digits.

The programs for A050744, there is no canonical definition to state claims against.
-/

/-! ## A050744.P11599929060428654186

`A050752(n)^(1/5)`
-/

namespace A050744.P11599929060428654186
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A050752 n : ℝ) ^ ((1 : ℚ) / 5 : ℝ)

end

end A050744.P11599929060428654186

/-!
# A050745: Numbers k such that the decimal expansion of k^6 contains no pair of consecutive equal digits.

The programs for A050745, there is no canonical definition to state claims against.
-/

/-! ## A050745.P7848242861008205855

`A050753(n)^(1/6)`
-/

namespace A050745.P7848242861008205855
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A050753 n : ℝ) ^ ((1 : ℚ) / 6 : ℝ)

end

end A050745.P7848242861008205855

/-! ## A050745.P1043242944897712639

`record[A056926(A050742(n+1))]`
-/

namespace A050745.P1043242944897712639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A050742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050745.P1043242944897712639

/-!
# A050746: Numbers k such that the decimal expansion of k^7 contains no pair of consecutive equal digits.

The programs for A050746, there is no canonical definition to state claims against.
-/

/-! ## A050746.P2336308367363529445

`A050754(n)^(1/7)`
-/

namespace A050746.P2336308367363529445
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A050754 n : ℝ) ^ ((1 : ℚ) / 7 : ℝ)

end

end A050746.P2336308367363529445

/-!
# A050747: Numbers k such that the decimal expansion of k^8 contains no pair of consecutive equal digits.

The programs for A050747, there is no canonical definition to state claims against.
-/

/-! ## A050747.P13919291730700743007

`root(A050755(n), 8)`
-/

namespace A050747.P13919291730700743007
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A050755 n : ℝ) ^ (1 / (8 : ℝ))

end

end A050747.P13919291730700743007

/-! ## A050747.P5982465241033766734

`record[A056926(A050743(n+1))]`
-/

namespace A050747.P5982465241033766734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A050743 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050747.P5982465241033766734

/-!
# A050748: Numbers k such that the decimal expansion of k^9 contains no pair of consecutive equal digits.

The programs for A050748, there is no canonical definition to state claims against.
-/

/-! ## A050748.P8040925606709898268

`A050756(n)^(1/9)`
-/

namespace A050748.P8040925606709898268
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A050756 n : ℝ) ^ ((1 : ℚ) / 9 : ℝ)

end

end A050748.P8040925606709898268

/-!
# A050749: Squares containing no pair of consecutive equal digits.

The programs for A050749, there is no canonical definition to state claims against.
-/

/-! ## A050749.P17980396363421226346

`A050741(n+1)²`
-/

namespace A050749.P17980396363421226346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050741 (n + 1) ^ 2

end

end A050749.P17980396363421226346

/-! ## A050749.P8193930422738213476

`A050741(Δ[n²]-n)^2`
-/

namespace A050749.P8193930422738213476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050741 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat ^ 2

end

end A050749.P8193930422738213476

/-! ## A050749.P9985779108592928863

`(A033999(n)*A050741(Δ[n²]-n))²`
-/

namespace A050749.P9985779108592928863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033999 n * A050741 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat) ^ 2

end

end A050749.P9985779108592928863

/-! ## A050749.P8900958732093637422

`A050741(A000027(n+1))*A050741(n+1)`
-/

namespace A050749.P8900958732093637422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050741 (A000027 (n + 1)).toNat * A050741 (n + 1)

end

end A050749.P8900958732093637422

/-! ## A050749.P1697983863466813775

`and(A050741(n+1)*A050741(n+1), A057428(n))`
-/

namespace A050749.P1697983863466813775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050741 (n + 1) * A050741 (n + 1)) (A057428 n)

end

end A050749.P1697983863466813775

/-! ## A050749.P12531635149900901138

`record[A050741(A152271(n))²]`
-/

namespace A050749.P12531635149900901138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050741 (A152271 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050749.P12531635149900901138

/-! ## A050749.P12875191079490702789

`record[A050741(A152271(n))]*A050741(n+1)`
-/

namespace A050749.P12875191079490702789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050741 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A050741 (n + 1)

end

end A050749.P12875191079490702789

/-! ## A050749.P9339506443986558732

`A000290(A050741(A000290(n+1)/(n+1)))`
-/

namespace A050749.P9339506443986558732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A050741 (SequenceMachineLib.roundAway ((A000290 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat).toNat

end

end A050749.P9339506443986558732

/-! ## A050749.P18246917464001799786

`record[A050741(A134478(n))²]`
-/

namespace A050749.P18246917464001799786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050741 (A134478 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050749.P18246917464001799786

/-! ## A050749.P10159418232317456923

`record[A050741(A134478(n))]*A050741(n+1)`
-/

namespace A050749.P10159418232317456923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050741 (A134478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A050741 (n + 1)

end

end A050749.P10159418232317456923

/-!
# A050750: Cubes containing no pair of consecutive equal digits.

The programs for A050750, there is no canonical definition to state claims against.
-/

/-! ## A050750.P3953633782880364317

`A050742(n+1)^3`
-/

namespace A050750.P3953633782880364317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050742 (n + 1) ^ 3

end

end A050750.P3953633782880364317

/-! ## A050750.P12393885060842032311

`(A050742(n+1)*A057077(n))²*A050742(n+1)`
-/

namespace A050750.P12393885060842032311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A050742 (n + 1) * A057077 n) ^ 2 * A050742 (n + 1)

end

end A050750.P12393885060842032311

/-! ## A050750.P6494868317774795162

`A000578(A050742(n+1))`
-/

namespace A050750.P6494868317774795162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A050742 (n + 1)).toNat

end

end A050750.P6494868317774795162

/-! ## A050750.P12129141057217457716

`A034828(2*A050742(n+1))`
-/

namespace A050750.P12129141057217457716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (2 * A050742 (n + 1)).toNat

end

end A050750.P12129141057217457716

/-! ## A050750.P11268039446937131557

`A081276(2*A050742(n+1))`
-/

namespace A050750.P11268039446937131557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081276 (2 * A050742 (n + 1)).toNat

end

end A050750.P11268039446937131557

/-!
# A050751: Fourth powers containing no pair of consecutive equal digits.

The programs for A050751, there is no canonical definition to state claims against.
-/

/-! ## A050751.P2018936924316513251

`A050743(n+1)^4`
-/

namespace A050751.P2018936924316513251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050743 (n + 1) ^ 4

end

end A050751.P2018936924316513251

/-! ## A050751.P12872590101521832554

`A050743(Δ[n²]-n)²²`
-/

namespace A050751.P12872590101521832554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A050743 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat ^ 2) ^ 2

end

end A050751.P12872590101521832554

/-! ## A050751.P16474793590604261480

`A000038(n+1)+A050743(n+1)²²`
-/

namespace A050751.P16474793590604261480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + (A050743 (n + 1) ^ 2) ^ 2

end

end A050751.P16474793590604261480

/-! ## A050751.P12036316134086923791

`(A050743(n+1)²%(A005993(n)+1))²`
-/

namespace A050751.P12036316134086923791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050743 (n + 1) ^ 2) (A005993 n + 1) ^ 2

end

end A050751.P12036316134086923791

/-! ## A050751.P14090312114438467346

`(A008683(8*n+4)+A050743(n+1)²)²`
-/

namespace A050751.P14090312114438467346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008683 (8 * n + 4) + A050743 (n + 1) ^ 2) ^ 2

end

end A050751.P14090312114438467346

/-! ## A050751.P9966730829942529371

`A050743(n+1)²²*A010054(floor(1/(n+1)))`
-/

namespace A050751.P9966730829942529371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A050743 (n + 1) ^ 2) ^ 2 * A010054 ⌊1 / (n + 1 : ℚ)⌋.toNat

end

end A050751.P9966730829942529371

/-! ## A050751.P4585620705727140872

`A050743(n+1)²²*A069359(A006530(n+1))`
-/

namespace A050751.P4585620705727140872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A050743 (n + 1) ^ 2) ^ 2 * A069359 (A006530 (n + 1)).toNat

end

end A050751.P4585620705727140872

/-! ## A050751.P13330726414375812619

`(A000035(2*n)+A050743(n+1)²)²`
-/

namespace A050751.P13330726414375812619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 (2 * n) + A050743 (n + 1) ^ 2) ^ 2

end

end A050751.P13330726414375812619

/-! ## A050751.P4959029354128596145

`record[A050743(A126759(n))²²]`
-/

namespace A050751.P4959029354128596145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A050743 (A126759 n).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050751.P4959029354128596145

/-! ## A050751.P4940875912205797312

`A000583(A050743(n+1))`
-/

namespace A050751.P4940875912205797312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A050743 (n + 1)).toNat

end

end A050751.P4940875912205797312

/-! ## A050751.P3034736315178293371

`record[A050743(A056926(n+1))²²]`
-/

namespace A050751.P3034736315178293371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A050743 (A056926 (n + 1)).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050751.P3034736315178293371

/-! ## A050751.P16564646416393630951

`A050743(n+1)²²%A089817(n)`
-/

namespace A050751.P16564646416393630951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A050743 (n + 1) ^ 2) ^ 2) (A089817 n)

end

end A050751.P16564646416393630951

/-!
# A050752: Fifth powers containing no pair of consecutive equal digits.

The programs for A050752, there is no canonical definition to state claims against.
-/

/-! ## A050752.P15934049831540198251

`A050744(n+1)^5`
-/

namespace A050752.P15934049831540198251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050744 (n + 1) ^ 5

end

end A050752.P15934049831540198251

/-! ## A050752.P1154135533027493561

`A000584(A050744(n+1))`
-/

namespace A050752.P1154135533027493561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (A050744 (n + 1)).toNat

end

end A050752.P1154135533027493561

/-!
# A050753: Sixth powers containing no pair of consecutive equal digits.

The programs for A050753, there is no canonical definition to state claims against.
-/

/-! ## A050753.P11746641830772964644

`A050745(n+1)^6`
-/

namespace A050753.P11746641830772964644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050745 (n + 1) ^ 6

end

end A050753.P11746641830772964644

/-! ## A050753.P3690254495570304097

`A001014(A050745(n+1))`
-/

namespace A050753.P3690254495570304097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 (A050745 (n + 1)).toNat

end

end A050753.P3690254495570304097

/-! ## A050753.P1818370046610774154

`∩[A050750(n+1), A001014(n)]`
-/

namespace A050753.P1818370046610774154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050753.P1818370046610774154

/-! ## A050753.P11899379251756752388

`∩[A004853(n+1), A050750(n+1)]`
-/

namespace A050753.P11899379251756752388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050753.P11899379251756752388

/-! ## A050753.P2290415696528163480

`∩[A050750(n+1), A065733(n)]`
-/

namespace A050753.P2290415696528163480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065733 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050753.P2290415696528163480

/-!
# A050754: Seventh powers containing no pair of consecutive equal digits.

The programs for A050754, there is no canonical definition to state claims against.
-/

/-! ## A050754.P17414583930801418865

`A050746(n+1)^7`
-/

namespace A050754.P17414583930801418865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050746 (n + 1) ^ 7

end

end A050754.P17414583930801418865

/-! ## A050754.P1091415531773104973

`A001015(A050746(n+1))`
-/

namespace A050754.P1091415531773104973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 (A050746 (n + 1)).toNat

end

end A050754.P1091415531773104973

/-! ## A050754.P15595018854311258990

`A039203(A187829(n+1))^7`
-/

namespace A050754.P15595018854311258990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039203 (A187829 (n + 1)).toNat ^ 7

end

end A050754.P15595018854311258990

/-! ## A050754.P12821001483129979516

`lt[A263563(3*n+2), A114315(3*n+2)]^7`
-/

namespace A050754.P12821001483129979516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263563 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114315 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 7

end

end A050754.P12821001483129979516

/-! ## A050754.P8610100992362531189

`lt[A194265(3*n+1), A224651(3*n+2)]^7`
-/

namespace A050754.P8610100992362531189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194265 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224651 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 7

end

end A050754.P8610100992362531189

/-!
# A050755: Eighth powers containing no pair of consecutive equal digits.

The programs for A050755, there is no canonical definition to state claims against.
-/

/-! ## A050755.P535973551235682518

`A050747(n+1)^8`
-/

namespace A050755.P535973551235682518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050747 (n + 1) ^ 8

end

end A050755.P535973551235682518

/-! ## A050755.P10745902011498276654

`A050747(A000027(n+1))²²²`
-/

namespace A050755.P10745902011498276654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A050747 (A000027 (n + 1)).toNat ^ 2) ^ 2) ^ 2

end

end A050755.P10745902011498276654

/-! ## A050755.P12314442513166255177

`A001016(A050747(n+1))`
-/

namespace A050755.P12314442513166255177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001016 (A050747 (n + 1)).toNat

end

end A050755.P12314442513166255177

/-! ## A050755.P3419844889933501799

`A000583(A050747(abs(xor(n, -1))))²`
-/

namespace A050755.P3419844889933501799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A050747 |Int.xor (n : ℤ) (-1)|.toNat).toNat ^ 2

end

end A050755.P3419844889933501799

/-! ## A050755.P5883577304617827128

`∩[n²²², A050751(n)]`
-/

namespace A050755.P5883577304617827128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050751 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050755.P5883577304617827128

/-! ## A050755.P7809709188621139967

`∩[A050743(n+1), n²]²²`
-/

namespace A050755.P7809709188621139967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050743 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n ^ 2) ^ 2

end

end A050755.P7809709188621139967

/-! ## A050755.P17580568566777216504

`∩[A050751(n), A001016(n)]`
-/

namespace A050755.P17580568566777216504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050751 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001016 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050755.P17580568566777216504

/-!
# A050756: Ninth powers containing no pair of consecutive equal digits.

The programs for A050756, there is no canonical definition to state claims against.
-/

/-! ## A050756.P4031461321211177040

`A050748(1+n)^9`
-/

namespace A050756.P4031461321211177040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050748 (1 + n) ^ 9

end

end A050756.P4031461321211177040

/-! ## A050756.P10949416738989579802

`A001017(A050748(n+1))`
-/

namespace A050756.P10949416738989579802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A050748 (n + 1)).toNat

end

end A050756.P10949416738989579802

/-! ## A050756.P15955549768940143587

`A009714(9*A050748(n+1))`
-/

namespace A050756.P15955549768940143587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009714 (9 * A050748 (n + 1)).toNat

end

end A050756.P15955549768940143587

/-! ## A050756.P10588354468441251810

`A036494(A050748(n+1)²)`
-/

namespace A050756.P10588354468441251810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036494 (A050748 (n + 1) ^ 2).toNat

end

end A050756.P10588354468441251810

/-! ## A050756.P6576349972954520972

`∩[A001017(n), A050750(n+1)]`
-/

namespace A050756.P6576349972954520972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050756.P6576349972954520972

/-!
# A050757: Primes containing no pair of consecutive equal digits.

The programs for A050757, there is no canonical definition to state claims against.
-/

/-! ## A050757.P7573437770462827406

`p?[A043096(n+1)]`
-/

namespace A050757.P7573437770462827406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A050757.P7573437770462827406

/-! ## A050757.P18361414803415463985

`record[A006530(A043096(n+3))]`
-/

namespace A050757.P18361414803415463985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A043096 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050757.P18361414803415463985

/-! ## A050757.P1588288384180826655

`filter[A043096(n+2), A010051(#)]`
-/

namespace A050757.P1588288384180826655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A050757.P1588288384180826655

/-! ## A050757.P9946086206454529620

`∩[A000040(n+1), A043096(n+1)]`
-/

namespace A050757.P9946086206454529620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050757.P9946086206454529620

/-! ## A050757.P16367140721360898032

`∩[A006093(n+1)+1, A043096(n+1)]`
-/

namespace A050757.P16367140721360898032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050757.P16367140721360898032

/-! ## A050757.P3471974704453543853

`∩[A008864(n+1)-1, A043096(n+1)]`
-/

namespace A050757.P3471974704453543853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050757.P3471974704453543853

/-! ## A050757.P3392255566352265198

`p?[record[A321801(n)]]`
-/

namespace A050757.P3392255566352265198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321801 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A050757.P3392255566352265198

/-! ## A050757.P14888691188726678596

`p?[record[A321802(n)]]`
-/

namespace A050757.P14888691188726678596
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A050757.P14888691188726678596

/-! ## A050757.P2464613772072185677

`p?[record[A337864(n)]]`
-/

namespace A050757.P2464613772072185677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337864 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A050757.P2464613772072185677

/-! ## A050757.P4990193930636182779

`p?[record[A351868(n)]]`
-/

namespace A050757.P4990193930636182779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351868 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A050757.P4990193930636182779

/-! ## A050757.P4235275225115544944

`p?[n*A196368(n)]`
-/

namespace A050757.P4235275225115544944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A196368 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A050757.P4235275225115544944

/-! ## A050757.P8619711882434562293

`p?[(n+1)*A043284(n+1)]`
-/

namespace A050757.P8619711882434562293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A043284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A050757.P8619711882434562293

/-! ## A050757.P13543241170444183562

`eq[A003415(n), A196368(n)]`
-/

namespace A050757.P13543241170444183562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050757.P13543241170444183562

/-! ## A050757.P10871227625479382111

`eq[A018783(n), A196368(n)]`
-/

namespace A050757.P10871227625479382111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050757.P10871227625479382111

/-! ## A050757.P13739667318781921367

`eq[A032741(n), A196368(n)]`
-/

namespace A050757.P13739667318781921367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050757.P13739667318781921367

/-! ## A050757.P12726668535125529897

`eq[n, A321801(A007918(n))]`
-/

namespace A050757.P12726668535125529897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321801 (A007918 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050757.P12726668535125529897

/-! ## A050757.P9538154567290523226

`eq[A007918(n), A321802(n)]`
-/

namespace A050757.P9538154567290523226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050757.P9538154567290523226

/-! ## A050757.P2558365104079377978

`eq[A007918(n), A337864(n)]`
-/

namespace A050757.P2558365104079377978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337864 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050757.P2558365104079377978

/-! ## A050757.P1308851428860460559

`eq[A007918(n), A351868(n)]`
-/

namespace A050757.P1308851428860460559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351868 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050757.P1308851428860460559

/-!
# A050758: Primes containing at least one pair of consecutive equal digits.

The programs for A050758, there is no canonical definition to state claims against.
-/

/-! ## A050758.P3605926542884888993

`p?[A171901(n+1)]`
-/

namespace A050758.P3605926542884888993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A050758.P3605926542884888993

/-! ## A050758.P10576251751501689053

`filter[A171901(n+1), A010051(#)]`
-/

namespace A050758.P10576251751501689053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A050758.P10576251751501689053

/-! ## A050758.P17313511495762560747

`filter[A171901(n+1), A323152(#)]`
-/

namespace A050758.P17313511495762560747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A050758.P17313511495762560747

/-! ## A050758.P17768199372810500078

`filter[A171901(n+1), A323153(#)]`
-/

namespace A050758.P17768199372810500078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A050758.P17768199372810500078

/-! ## A050758.P11540002385895432018

`∩[A000040(n+1), A171901(n+1)]`
-/

namespace A050758.P11540002385895432018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050758.P11540002385895432018

/-! ## A050758.P1076019936724953074

`∩[A004139(n+1), A171901(n+1)]`
-/

namespace A050758.P1076019936724953074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050758.P1076019936724953074

/-! ## A050758.P4302823095094754926

`∩[A006005(n+1), A171901(n+1)]`
-/

namespace A050758.P4302823095094754926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050758.P4302823095094754926

/-! ## A050758.P12111172207985413319

`∩[A008578(n+1), A171901(n+1)]`
-/

namespace A050758.P12111172207985413319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050758.P12111172207985413319

/-! ## A050758.P9574927771278130189

`∩[A033946(n+1), A171901(n+1)]`
-/

namespace A050758.P9574927771278130189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050758.P9574927771278130189

/-! ## A050758.P14988192062486850739

`∩[A045319(n+1), A171901(n+1)]`
-/

namespace A050758.P14988192062486850739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050758.P14988192062486850739

/-! ## A050758.P14565920399529677118

`∩[A045344(n+1), A171901(n+1)]`
-/

namespace A050758.P14565920399529677118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050758.P14565920399529677118

/-! ## A050758.P2809580080517097641

`∩[A046022(n+1), A171901(n+1)]`
-/

namespace A050758.P2809580080517097641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050758.P2809580080517097641

/-! ## A050758.P8555967630403519077

`∩[A053813(n+1), A171901(n+1)]`
-/

namespace A050758.P8555967630403519077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050758.P8555967630403519077

/-! ## A050758.P8840085572872988060

`∩[A065091(n+1), A171901(n+1)]`
-/

namespace A050758.P8840085572872988060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050758.P8840085572872988060

/-! ## A050758.P6559461962512113393

`∩[A067126(n+1), A171901(n+1)]`
-/

namespace A050758.P6559461962512113393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050758.P6559461962512113393

/-! ## A050758.P11978799609906658622

`∩[A083249(n+1), A171901(n+1)]`
-/

namespace A050758.P11978799609906658622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050758.P11978799609906658622

/-! ## A050758.P2205045634230937339

`∩[A138837(n+1), A171901(n+1)]`
-/

namespace A050758.P2205045634230937339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050758.P2205045634230937339

/-! ## A050758.P15105327332161414978

`∩[A161346(n+1), A171901(n+1)]`
-/

namespace A050758.P15105327332161414978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050758.P15105327332161414978

/-! ## A050758.P10278757678514071304

`∩[A174090(n+1), A171901(n+1)]`
-/

namespace A050758.P10278757678514071304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050758.P10278757678514071304

/-! ## A050758.P12199514124709836987

`∩[A171901(n+1), A193339(n+1)]`
-/

namespace A050758.P12199514124709836987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050758.P12199514124709836987

/-!
# A050759: Numbers k such that the decimal expansion of (k^2 + k)/2 (the k-th triangular number) contains no pair of consecutive equal digits.

The programs for A050759, there is no canonical definition to state claims against.
-/

/-! ## A050759.P15013583186345774461

`floor(sqrt(2*A050760(n+1)))`
-/

namespace A050759.P15013583186345774461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A050760 (n + 1))

end

end A050759.P15013583186345774461

/-! ## A050759.P4282062812727073974

`ceil(sqrt(2*A050760(n+1))-A057427(n))`
-/

namespace A050759.P4282062812727073974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A050760 (n + 1) : ℝ) - (A057427 n : ℝ)⌉

end

end A050759.P4282062812727073974

/-! ## A050759.P1477715459679359281

`round(A057428(n)²*sqrt(2*A050760(n+1)))`
-/

namespace A050759.P1477715459679359281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A057428 n ^ 2 : ℝ) * Real.sqrt (2 * A050760 (n + 1) : ℝ))

end

end A050759.P1477715459679359281

/-! ## A050759.P13145704343163679532

`round(A000038(n+1)+sqrt(2*A050760(n+1)))`
-/

namespace A050759.P13145704343163679532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000038 (n + 1) : ℝ) + Real.sqrt (2 * A050760 (n + 1) : ℝ))

end

end A050759.P13145704343163679532

/-! ## A050759.P15367033472669443894

`A080098(A050760(n+1))`
-/

namespace A050759.P15367033472669443894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A050760 (n + 1)).toNat

end

end A050759.P15367033472669443894

/-! ## A050759.P14929835585274984111

`eq[1, A196368(∑[n])]`
-/

namespace A050759.P14929835585274984111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050759.P14929835585274984111

/-! ## A050759.P7459747659741977306

`eq[∑[n], A321802(∑[n])]`
-/

namespace A050759.P7459747659741977306
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 (∑ j ∈ Finset.range (n + 1), f4 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050759.P7459747659741977306

/-! ## A050759.P16435107462241711263

`eq[C(n+1, 2), A351868(C(n+1, 2))]`
-/

namespace A050759.P16435107462241711263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351868 (Nat.choose (n + 1) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050759.P16435107462241711263

/-! ## A050759.P5307997605108587421

`A003056(A050760(n+1))`
-/

namespace A050759.P5307997605108587421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A050760 (n + 1)).toNat

end

end A050759.P5307997605108587421

/-! ## A050759.P11162699256205400701

`A003056(record[A321802(A000217(n))])`
-/

namespace A050759.P11162699256205400701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050759.P11162699256205400701

/-!
# A050760: Triangular numbers whose decimal expansion contains no pair of consecutive equal digits.

The programs for A050760, there is no canonical definition to state claims against.
-/

/-! ## A050760.P8737342735873232146

`C(A050759(n+1)+1, 2)`
-/

namespace A050760.P8737342735873232146
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A050759 (n + 1) + 1).toNat 2

end

end A050760.P8737342735873232146

/-! ## A050760.P12598931078930517691

`A000217(A050759(n+1))`
-/

namespace A050760.P12598931078930517691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A050759 (n + 1)).toNat

end

end A050760.P12598931078930517691

/-! ## A050760.P13025462446829230420

`(A050759(n+1)+A050759(n+1)²)/A040000(n)`
-/

namespace A050760.P13025462446829230420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050759 (n + 1) + A050759 (n + 1) ^ 2 : ℚ) / (A040000 n : ℚ)

end

end A050760.P13025462446829230420

/-! ## A050760.P17863210679857909701

`A161680(A050759(n+1)+1)`
-/

namespace A050760.P17863210679857909701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A050759 (n + 1) + 1).toNat

end

end A050760.P17863210679857909701

/-! ## A050760.P2238170731815736314

`A133263(A050759(n+1))-A040000(n)`
-/

namespace A050760.P2238170731815736314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 (A050759 (n + 1)).toNat - A040000 n

end

end A050760.P2238170731815736314

/-! ## A050760.P14059715748618192649

`A000124(A050759(n+1))-A020985(n)²`
-/

namespace A050760.P14059715748618192649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A050759 (n + 1)).toNat - A020985 n ^ 2

end

end A050760.P14059715748618192649

/-! ## A050760.P10484632306105442889

`A165326(4*n+10)+A000124(A050759(n+1))`
-/

namespace A050760.P10484632306105442889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (4 * n + 10) + A000124 (A050759 (n + 1)).toNat

end

end A050760.P10484632306105442889

/-! ## A050760.P5963287605499546815

`∩[A043096(n+1), A000217(n)]`
-/

namespace A050760.P5963287605499546815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050760.P5963287605499546815

/-! ## A050760.P17930527110898273294

`record[A321801(∑[n])]`
-/

namespace A050760.P17930527110898273294
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321801 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050760.P17930527110898273294

/-! ## A050760.P2162200381527223695

`record[A321802(∑[n])]`
-/

namespace A050760.P2162200381527223695
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050760.P2162200381527223695

/-! ## A050760.P9503340779718863973

`record[A337864(∑[n])]`
-/

namespace A050760.P9503340779718863973
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337864 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050760.P9503340779718863973

/-! ## A050760.P10002812717506452195

`filter[A000217(n), A196368(#)]`
-/

namespace A050760.P10002812717506452195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A050760.P10002812717506452195

/-! ## A050760.P218858719135056268

`eq[A008949(n), A196368(n)]`
-/

namespace A050760.P218858719135056268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050760.P218858719135056268

/-! ## A050760.P2494248403131971331

`eq[A013609(n), A196368(n)]`
-/

namespace A050760.P2494248403131971331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050760.P2494248403131971331

/-! ## A050760.P5930000943139189024

`filter[A043096(n+1), A010054(#)]`
-/

namespace A050760.P5930000943139189024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010054 (f1 j).toNat = 1) n)

end

end A050760.P5930000943139189024

/-! ## A050760.P29156166708325636

`filter[A161680(n+1), A196368(#)]`
-/

namespace A050760.P29156166708325636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A050760.P29156166708325636

/-! ## A050760.P7921148424423159980

`filter[A075303(2*n), A196368(#)]`
-/

namespace A050760.P7921148424423159980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075303 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A050760.P7921148424423159980

/-! ## A050760.P14707223075371815687

`filter[A124093(2*n), A196368(#)]`
-/

namespace A050760.P14707223075371815687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124093 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A050760.P14707223075371815687

/-! ## A050760.P18062486288454540534

`filter[A131259(2*n), A196368(#)]`
-/

namespace A050760.P18062486288454540534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131259 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A050760.P18062486288454540534

/-! ## A050760.P6921027601017822131

`filter[A160791(2*n), A196368(#)]`
-/

namespace A050760.P6921027601017822131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160791 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A050760.P6921027601017822131

/-!
# A050762: Fibonacci numbers containing no pair of consecutive equal digits (probably finite).

The programs for A050762, there is no canonical definition to state claims against.
-/

/-! ## A050762.P17509203224898912419

`A000045(A050761(n))`
-/

namespace A050762.P17509203224898912419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A050761 n).toNat

end

end A050762.P17509203224898912419

/-! ## A050762.P2352494329043651726

`A212804(A050761(n)+1)`
-/

namespace A050762.P2352494329043651726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A050761 n + 1).toNat

end

end A050762.P2352494329043651726

/-! ## A050762.P7302770089207638989

`A053602(2*A050761(n))`
-/

namespace A050762.P7302770089207638989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * A050761 n).toNat

end

end A050762.P7302770089207638989

/-! ## A050762.P12954381171687701073

`A103609(2*A050761(n))`
-/

namespace A050762.P12954381171687701073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * A050761 n).toNat

end

end A050762.P12954381171687701073

/-! ## A050762.P15160830230429992591

`A103609(A050761(n)+A050761(n))`
-/

namespace A050762.P15160830230429992591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A050761 n + A050761 n).toNat

end

end A050762.P15160830230429992591

/-!
# A050764: Numbers of form k^k (for values of k see A050763) containing no pair of consecutive equal digits (probably finite).

The programs for A050764, there is no canonical definition to state claims against.
-/

/-! ## A050764.P17638415122850203549

`record[A000312(A072344(2*(n+2)))]`
-/

namespace A050764.P17638415122850203549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A072344 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050764.P17638415122850203549

/-! ## A050764.P9890711499337067539

`A000312(∑[A114968(2*n+3)!])`
-/

namespace A050764.P9890711499337067539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A114968 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A050764.P9890711499337067539

/-! ## A050764.P1127961713186085463

`record[gcd(n^n, A364272(n))]`
-/

namespace A050764.P1127961713186085463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ n : ℤ) (A364272 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050764.P1127961713186085463

/-!
# A050767: Let f(m) = smallest composite number that takes m steps of "add prime factors to number" to reach a prime and g(m) be the prime that is reached. Sequence gives values of g(m), sorted and duplicates removed.

The programs for A050767, there is no canonical definition to state claims against.
-/

/-! ## A050767.P15122722733141667791

`∩[A182175(A340610(n+1)), A085724(n+2)]`
-/

namespace A050767.P15122722733141667791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182175 (A340610 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085724 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050767.P15122722733141667791

/-!
# A050768: Iterated procedure 'composite k added to sum of its prime factors reaches a prime' yields 1 skipped prime.

The programs for A050768, there is no canonical definition to state claims against.
-/

/-! ## A050768.P8344967131706298246

`eq[A075254(A028310(n)), A101300(n)]`
-/

namespace A050768.P8344967131706298246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075254 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101300 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050768.P8344967131706298246

/-!
# A050770: Iterated procedure 'composite k added to sum of its prime factors reaches a prime' yields 3 skipped primes.

The programs for A050770, there is no canonical definition to state claims against.
-/

/-! ## A050770.P11749055865876242281

`eq[A075254(n+1), A101300(A101300(n))]+1`
-/

namespace A050770.P11749055865876242281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101300 (A101300 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A050770.P11749055865876242281

/-!
# A050778: Primes that are ending primes after the iterated procedure of 'composite added to the sum of its prime factors reaches a prime'.

The programs for A050778, there is no canonical definition to state claims against.
-/

/-! ## A050778.P14784179104648605907

`p?[lt[A266220(n), A346377(n+1)]+1]`
-/

namespace A050778.P14784179104648605907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266220 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346377 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A050778.P14784179104648605907

/-! ## A050778.P8784708225212339672

`lt[A076694(n+1), A346377(n+1)]+1`
-/

namespace A050778.P8784708225212339672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346377 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A050778.P8784708225212339672

/-! ## A050778.P14941045605733820117

`lt[A191558(n+1), A346377(n+1)]+1`
-/

namespace A050778.P14941045605733820117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346377 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A050778.P14941045605733820117

/-! ## A050778.P12429611343873854786

`A034694(lt[A076694(n+1), A346377(n+1)])`
-/

namespace A050778.P12429611343873854786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A050778.P12429611343873854786

/-! ## A050778.P18024138885511974553

`A034694(lt[A191558(n+1), A346377(n+1)])`
-/

namespace A050778.P18024138885511974553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A050778.P18024138885511974553

/-!
# A050779: Primes that are not ending primes after the iterated procedure of 'composite added to the sum of its prime factors reaches a prime'.

The programs for A050779, the canonical program `A050779.P2908600926508751376` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050779 has offset 1).

The definition of A050779 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1090 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050779.P849709167550052835

`p?[A191749(n+1)]`
-/

namespace A050779.P849709167550052835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A050779.P849709167550052835

namespace A050779

/-- `p?[A191749(n+1)]` -/
def P849709167550052835.Spec : Prop :=
  ∀ n, P849709167550052835.a n = A050779 (n + 1)

end A050779

/-! ## A050779.P2908600926508751376

`p?[comp[A001414(n+1)+1+n]]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A050779

/-- `p?[comp[A001414(n+1)+1+n]]` -/
def P2908600926508751376.Spec : Prop :=
  ∀ n, (P2908600926508751376.a n : ℤ) = A050779 (n + 1)

theorem P2908600926508751376.correct : P2908600926508751376.Spec := by
  intro n
  simp only [A050779, Nat.add_sub_cancel]

end A050779

/-! ## A050779.P16531033415788534233

`filter[A191749(n+1), A010051(#)]`
-/

namespace A050779.P16531033415788534233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A050779.P16531033415788534233

namespace A050779

/-- `filter[A191749(n+1), A010051(#)]` -/
def P16531033415788534233.Spec : Prop :=
  ∀ n, P16531033415788534233.a n = A050779 (n + 1)

end A050779

/-! ## A050779.P3486382274096185774

`∩[A000040(n+1), A191749(n+1)]`
-/

namespace A050779.P3486382274096185774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050779.P3486382274096185774

namespace A050779

/-- `∩[A000040(n+1), A191749(n+1)]` -/
def P3486382274096185774.Spec : Prop :=
  ∀ n, (P3486382274096185774.a n : ℤ) = A050779 (n + 1)

end A050779

/-! ## A050779.P13316585000463854988

`∩[A001751(n+1), A191749(n+1)]`
-/

namespace A050779.P13316585000463854988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050779.P13316585000463854988

namespace A050779

/-- `∩[A001751(n+1), A191749(n+1)]` -/
def P13316585000463854988.Spec : Prop :=
  ∀ n, (P13316585000463854988.a n : ℤ) = A050779 (n + 1)

end A050779

/-! ## A050779.P10728426601045160988

`∩[A051948(n+1), A191749(n+1)]`
-/

namespace A050779.P10728426601045160988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050779.P10728426601045160988

namespace A050779

/-- `∩[A051948(n+1), A191749(n+1)]` -/
def P10728426601045160988.Spec : Prop :=
  ∀ n, (P10728426601045160988.a n : ℤ) = A050779 (n + 1)

end A050779

/-! ## A050779.P1333291369569736082

`∩[A085118(n+1), A191749(n+1)]`
-/

namespace A050779.P1333291369569736082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050779.P1333291369569736082

namespace A050779

/-- `∩[A085118(n+1), A191749(n+1)]` -/
def P1333291369569736082.Spec : Prop :=
  ∀ n, (P1333291369569736082.a n : ℤ) = A050779 (n + 1)

end A050779

/-! ## A050779.P17051640348303936526

`∩[A116974(n+1), A191749(n+1)]`
-/

namespace A050779.P17051640348303936526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050779.P17051640348303936526

namespace A050779

/-- `∩[A116974(n+1), A191749(n+1)]` -/
def P17051640348303936526.Spec : Prop :=
  ∀ n, (P17051640348303936526.a n : ℤ) = A050779 (n + 1)

end A050779

/-! ## A050779.P16775521971200478276

`∩[A175787(n+1), A191749(n+1)]`
-/

namespace A050779.P16775521971200478276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050779.P16775521971200478276

namespace A050779

/-- `∩[A175787(n+1), A191749(n+1)]` -/
def P16775521971200478276.Spec : Prop :=
  ∀ n, (P16775521971200478276.a n : ℤ) = A050779 (n + 1)

end A050779

/-! ## A050779.P7531458312100806243

`∩[A182986(n+1), A191749(n+1)]`
-/

namespace A050779.P7531458312100806243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050779.P7531458312100806243

namespace A050779

/-- `∩[A182986(n+1), A191749(n+1)]` -/
def P7531458312100806243.Spec : Prop :=
  ∀ n, (P7531458312100806243.a n : ℤ) = A050779 (n + 1)

end A050779

/-! ## A050779.P17284448105744415007

`∩[A191749(n+1), A198273(n+1)]`
-/

namespace A050779.P17284448105744415007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050779.P17284448105744415007

namespace A050779

/-- `∩[A191749(n+1), A198273(n+1)]` -/
def P17284448105744415007.Spec : Prop :=
  ∀ n, (P17284448105744415007.a n : ℤ) = A050779 (n + 1)

end A050779

/-! ## A050779.P7349870284306019131

`p?[lt[A346377(n+1), 1]+1]`
-/

namespace A050779.P7349870284306019131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346377 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A050779.P7349870284306019131

namespace A050779

/-- `p?[lt[A346377(n+1), 1]+1]` -/
def P7349870284306019131.Spec : Prop :=
  ∀ n, (P7349870284306019131.a n : ℤ) = A050779 (n + 1)

end A050779

/-! ## A050779.P10500628660854371501

`filter[A191749(n+2), A080339(#)]`
-/

namespace A050779.P10500628660854371501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191749 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A050779.P10500628660854371501

namespace A050779

/-- `filter[A191749(n+2), A080339(#)]` -/
def P10500628660854371501.Spec : Prop :=
  ∀ n, P10500628660854371501.a n = A050779 (n + 1)

end A050779

/-! ## A050779.P11743012033746901094

`p?[gcd(A089026(n+1), A346377(n+1))]`
-/

namespace A050779.P11743012033746901094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A089026 (n + 1)) (A346377 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A050779.P11743012033746901094

namespace A050779

/-- `p?[gcd(A089026(n+1), A346377(n+1))]` -/
def P11743012033746901094.Spec : Prop :=
  ∀ n, (P11743012033746901094.a n : ℤ) = A050779 (n + 1)

end A050779

/-! ## A050779.P4209828057038661377

`record[gcd(A001414(n+2), A346377(n+2))]`
-/

namespace A050779.P4209828057038661377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001414 (n + 2)) (A346377 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050779.P4209828057038661377

namespace A050779

/-- `record[gcd(A001414(n+2), A346377(n+2))]` -/
def P4209828057038661377.Spec : Prop :=
  ∀ n, (P4209828057038661377.a n : ℤ) = A050779 (n + 1)

end A050779

/-! ## A050779.P1455924471593981746

`eq[A346247(n+1), A346377(n+1)]+1`
-/

namespace A050779.P1455924471593981746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346377 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A050779.P1455924471593981746

namespace A050779

/-- `eq[A346247(n+1), A346377(n+1)]+1` -/
def P1455924471593981746.Spec : Prop :=
  ∀ n, (P1455924471593981746.a n : ℤ) = A050779 (n + 1)

end A050779

/-! ## A050779.P11550700029364007555

`A034694(lt[A346377(n+1)+A076694(n+1), 1])`
-/

namespace A050779.P11550700029364007555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346377 (n + 1) + A076694 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A050779.P11550700029364007555

namespace A050779

/-- `A034694(lt[A346377(n+1)+A076694(n+1), 1])` -/
def P11550700029364007555.Spec : Prop :=
  ∀ n, P11550700029364007555.a n = A050779 (n + 1)

end A050779

/-! ## A050779.P2959340801093915268

`∩[A169647(n+1), A191749(n+1)]`
-/

namespace A050779.P2959340801093915268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169647 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050779.P2959340801093915268

namespace A050779

/-- `∩[A169647(n+1), A191749(n+1)]` -/
def P2959340801093915268.Spec : Prop :=
  ∀ n, (P2959340801093915268.a n : ℤ) = A050779 (n + 1)

end A050779

/-! ## A050779.P16843657919268461076

`∩[A191749(n+1), A240960(n+1)]`
-/

namespace A050779.P16843657919268461076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050779.P16843657919268461076

namespace A050779

/-- `∩[A191749(n+1), A240960(n+1)]` -/
def P16843657919268461076.Spec : Prop :=
  ∀ n, (P16843657919268461076.a n : ℤ) = A050779 (n + 1)

end A050779

/-!
# A050780: Numbers k such that sopfr(k) = sopfr(k + sopfr(k)).

The programs for A050780, there is no canonical definition to state claims against.
-/

/-! ## A050780.P16489895893572494607

`A050781(n)-A107463(A050781(n))`
-/

namespace A050780.P16489895893572494607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050781 n - A107463 (A050781 n).toNat

end

end A050780.P16489895893572494607

/-! ## A050780.P7356116896113765956

`A075255(A050781(n))`
-/

namespace A050780.P7356116896113765956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075255 (A050781 n).toNat

end

end A050780.P7356116896113765956

/-!
# A050781: Numbers k such that sopfr(k) = sopfr(k - sopfr(k)).

The programs for A050781, there is no canonical definition to state claims against.
-/

/-! ## A050781.P1162739308041724724

`A107463(A050780(n+1))+A050780(n+1)`
-/

namespace A050781.P1162739308041724724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (A050780 (n + 1)).toNat + A050780 (n + 1)

end

end A050781.P1162739308041724724

/-! ## A050781.P15343908695767973849

`A075254(A050780(n+1))`
-/

namespace A050781.P15343908695767973849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075254 (A050780 (n + 1)).toNat

end

end A050781.P15343908695767973849

/-!
# A050782: Smallest positive multiplier m such that m*n is palindromic (or zero if no such m exists).

The programs for A050782, there is no canonical definition to state claims against.
-/

/-! ## A050782.P3859063146559677359

`A020485(n)/A028310(n)`
-/

namespace A050782.P3859063146559677359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020485 n : ℚ) / (A028310 n : ℚ)

end

end A050782.P3859063146559677359

/-! ## A050782.P9855071332963384409

`2/A004277(n)*A020485(n)`
-/

namespace A050782.P9855071332963384409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A004277 n : ℚ) * (A020485 n : ℚ)

end

end A050782.P9855071332963384409

/-! ## A050782.P3788273718792228850

`A020485(n)/(A000007(n)+n)`
-/

namespace A050782.P3788273718792228850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020485 n : ℚ) / (A000007 n + (n : ℤ) : ℚ)

end

end A050782.P3788273718792228850

/-! ## A050782.P180723219529656722

`A020485(n)/gcd(n, A008574(n))`
-/

namespace A050782.P180723219529656722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020485 n : ℚ) / (Int.gcd (n : ℤ) (A008574 n) : ℚ)

end

end A050782.P180723219529656722

/-! ## A050782.P11755222950767907814

`A020485(n)/(1-A057427(n)+n)`
-/

namespace A050782.P11755222950767907814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020485 n : ℚ) / (1 - A057427 n + (n : ℤ) : ℚ)

end

end A050782.P11755222950767907814

/-! ## A050782.P14015375639780153667

`A061906(n)*A168184(n)`
-/

namespace A050782.P14015375639780153667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061906 n * A168184 n

end

end A050782.P14015375639780153667

/-! ## A050782.P643721553417781472

`char[A004086(n+1)]*A061906(n)`
-/

namespace A050782.P643721553417781472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A061906 n

end

end A050782.P643721553417781472

/-! ## A050782.P15222706793034153224

`A057427(A265525(n))*A061906(n)`
-/

namespace A050782.P15222706793034153224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A265525 n).toNat * A061906 n

end

end A050782.P15222706793034153224

/-! ## A050782.P4664708402410850975

`A020485(n)/A006370(A004277(n))`
-/

namespace A050782.P4664708402410850975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020485 n : ℚ) / (A006370 (A004277 n).toNat : ℚ)

end

end A050782.P4664708402410850975

/-! ## A050782.P6162665435807685016

`A020485(n)/A003963(eq[n+1, A006530(n+1)]+1)`
-/

namespace A050782.P6162665435807685016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020485 n : ℚ) / (A003963 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℚ)

end

end A050782.P6162665435807685016

/-! ## A050782.P16207473741039964437

`char[A032762(n+1)]*A061906(n)`
-/

namespace A050782.P16207473741039964437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032762 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A061906 n

end

end A050782.P16207473741039964437

/-! ## A050782.P13228861519579576688

`A020485(n)/(n+1-char[A340254(n+1)])`
-/

namespace A050782.P13228861519579576688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340254 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020485 n : ℚ) / ((n + 1 : ℤ) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℚ)

end

end A050782.P13228861519579576688

/-! ## A050782.P16998141004178702663

`A020485(n)/(A230642(A170896(n))+n)`
-/

namespace A050782.P16998141004178702663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020485 n : ℚ) / (A230642 (A170896 n).toNat + (n : ℤ) : ℚ)

end

end A050782.P16998141004178702663

/-! ## A050782.P4939534807569582547

`A061906(A000196(n²))-A217096(n)`
-/

namespace A050782.P4939534807569582547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061906 (A000196 (n ^ 2)).toNat - A217096 n

end

end A050782.P4939534807569582547

/-!
# A050783: Palindromes containing no pair of consecutive equal digits.

The programs for A050783, there is no canonical definition to state claims against.
-/

/-! ## A050783.P1327262543001836762

`∩[A002113(n+1), A043096(n+1)]`
-/

namespace A050783.P1327262543001836762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050783.P1327262543001836762

/-! ## A050783.P17504946839772172703

`record[A082216(A053615(n))]`
-/

namespace A050783.P17504946839772172703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 (A053615 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050783.P17504946839772172703

/-! ## A050783.P14947528451924640717

`record[A082216(A055087(n))]`
-/

namespace A050783.P14947528451924640717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 (A055087 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050783.P14947528451924640717

/-! ## A050783.P7260187256083960480

`A062279(record[A082216(n)])`
-/

namespace A050783.P7260187256083960480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062279 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050783.P7260187256083960480

/-! ## A050783.P4096666359359691852

`record[A321802(A047813(n))]`
-/

namespace A050783.P4096666359359691852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 (A047813 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050783.P4096666359359691852

/-! ## A050783.P18209773636596004116

`record[A321802(A056142(n))]`
-/

namespace A050783.P18209773636596004116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 (A056142 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050783.P18209773636596004116

/-! ## A050783.P11430520590376144076

`record[A321802(A261914(n))]`
-/

namespace A050783.P11430520590376144076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 (A261914 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050783.P11430520590376144076

/-! ## A050783.P11068899416359422119

`record[A321802(A262038(n))]`
-/

namespace A050783.P11068899416359422119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 (A262038 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050783.P11068899416359422119

/-! ## A050783.P8595806109246903972

`filter[A056142(n), A196368(#)]`
-/

namespace A050783.P8595806109246903972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A050783.P8595806109246903972

/-! ## A050783.P16832856348665268726

`eq[n, A056142(A137564(n))]`
-/

namespace A050783.P16832856348665268726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 (A137564 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050783.P16832856348665268726

/-!
# A050784: Palindromic primes containing no pair of consecutive equal digits.

The programs for A050784, there is no canonical definition to state claims against.
-/

/-! ## A050784.P7687591056092004810

`∩[A002385(n+1), A050783(n+1)]`
-/

namespace A050784.P7687591056092004810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050784.P7687591056092004810

/-! ## A050784.P13836810213223933282

`∩[A050783(n+1), A072299(n+1)]`
-/

namespace A050784.P13836810213223933282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050784.P13836810213223933282

/-! ## A050784.P13135699639410963184

`∩[A050783(n+1), A232183(n+1)]`
-/

namespace A050784.P13135699639410963184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050784.P13135699639410963184

/-! ## A050784.P7187428127849730329

`∩[A050783(n+1), A180440(n+1)]`
-/

namespace A050784.P7187428127849730329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050784.P7187428127849730329

/-! ## A050784.P9918692635153489809

`∩[A050783(n+1), A077652(n+1)]`
-/

namespace A050784.P9918692635153489809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050784.P9918692635153489809

/-! ## A050784.P17736912623012145061

`p?[A050783(n+1)]`
-/

namespace A050784.P17736912623012145061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A050784.P17736912623012145061

/-! ## A050784.P3715258171359752878

`record[A006530(A050783(n+3))]`
-/

namespace A050784.P3715258171359752878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A050783 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050784.P3715258171359752878

/-! ## A050784.P653233880344788593

`p?[A056525(A043096(n+2))]`
-/

namespace A050784.P653233880344788593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A043096 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A050784.P653233880344788593

/-! ## A050784.P17733794172632326254

`filter[A050783(n+2), A010051(#)]`
-/

namespace A050784.P17733794172632326254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050783 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A050784.P17733794172632326254

/-! ## A050784.P14520367849361838258

`∩[A050783(n+1), A141263(n+1)]`
-/

namespace A050784.P14520367849361838258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050784.P14520367849361838258

/-!
# A050785: Palindromes containing at least one pair of consecutive equal digits.

The programs for A050785, the canonical program `A050785.P8631574494052876975` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050785 has offset 1).

The definition of A050785 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050785.P10886033104268387300

`∩[A002113(n+1), A171901(n+1)]`
-/

namespace A050785.P10886033104268387300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050785.P10886033104268387300

namespace A050785

/-- `∩[A002113(n+1), A171901(n+1)]` -/
def P10886033104268387300.Spec : Prop :=
  ∀ n, (P10886033104268387300.a n : ℤ) = A050785 (n + 1)

end A050785

/-! ## A050785.P5703213292043931507

`∩[A110751(n+1), A171901(n+1)]`
-/

namespace A050785.P5703213292043931507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050785.P5703213292043931507

namespace A050785

/-- `∩[A110751(n+1), A171901(n+1)]` -/
def P5703213292043931507.Spec : Prop :=
  ∀ n, (P5703213292043931507.a n : ℤ) = A050785 (n + 1)

end A050785

/-! ## A050785.P16001490271634448535

`∩[A171901(n+1), A335779(n+1)]`
-/

namespace A050785.P16001490271634448535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050785.P16001490271634448535

namespace A050785

/-- `∩[A171901(n+1), A335779(n+1)]` -/
def P16001490271634448535.Spec : Prop :=
  ∀ n, (P16001490271634448535.a n : ℤ) = A050785 (n + 1)

end A050785

/-! ## A050785.P8159271357903964415

`A262038(10*A048307(n+1))`
-/

namespace A050785.P8159271357903964415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (10 * A048307 (n + 1)).toNat

end

end A050785.P8159271357903964415

namespace A050785

/-- `A262038(10*A048307(n+1))` -/
def P8159271357903964415.Spec : Prop :=
  ∀ n, P8159271357903964415.a n = A050785 (n + 1)

end A050785

/-! ## A050785.P3130338215546253168

`A345110(A033023(n+1))`
-/

namespace A050785.P3130338215546253168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345110 (A033023 (n + 1)).toNat

end

end A050785.P3130338215546253168

namespace A050785

/-- `A345110(A033023(n+1))` -/
def P3130338215546253168.Spec : Prop :=
  ∀ n, P3130338215546253168.a n = A050785 (n + 1)

end A050785

/-! ## A050785.P8631574494052876975

`A262037(A239019(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A050785

/-- `A262037(A239019(n+1))` -/
def P8631574494052876975.Spec : Prop :=
  ∀ n, P8631574494052876975.a n = A050785 (n + 1)

theorem P8631574494052876975.correct : P8631574494052876975.Spec := by
  intro n
  simp only [A050785, Nat.add_sub_cancel]

end A050785

/-! ## A050785.P9378131893106761129

`A028310(A082810(n+10))`
-/

namespace A050785.P9378131893106761129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A082810 (n + 10)).toNat

end

end A050785.P9378131893106761129

namespace A050785

/-- `A028310(A082810(n+10))` -/
def P9378131893106761129.Spec : Prop :=
  ∀ n, P9378131893106761129.a n = A050785 (n + 1)

end A050785

/-! ## A050785.P8453689229517869625

`record[A047813(A115853(n+1))]`
-/

namespace A050785.P8453689229517869625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A115853 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050785.P8453689229517869625

namespace A050785

/-- `record[A047813(A115853(n+1))]` -/
def P8453689229517869625.Spec : Prop :=
  ∀ n, P8453689229517869625.a n = A050785 (n + 1)

end A050785

/-! ## A050785.P7086627700935925930

`record[A047813(A171901(n+1))]`
-/

namespace A050785.P7086627700935925930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A171901 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050785.P7086627700935925930

namespace A050785

/-- `record[A047813(A171901(n+1))]` -/
def P7086627700935925930.Spec : Prop :=
  ∀ n, P7086627700935925930.a n = A050785 (n + 1)

end A050785

/-! ## A050785.P2245231373533852468

`filter[A115853(n+1), A136522(#)]`
-/

namespace A050785.P2245231373533852468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A050785.P2245231373533852468

namespace A050785

/-- `filter[A115853(n+1), A136522(#)]` -/
def P2245231373533852468.Spec : Prop :=
  ∀ n, P2245231373533852468.a n = A050785 (n + 1)

end A050785

/-! ## A050785.P17190607015131609715

`filter[A171901(n+1), A136522(#)]`
-/

namespace A050785.P17190607015131609715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A050785.P17190607015131609715

namespace A050785

/-- `filter[A171901(n+1), A136522(#)]` -/
def P17190607015131609715.Spec : Prop :=
  ∀ n, P17190607015131609715.a n = A050785 (n + 1)

end A050785

/-! ## A050785.P59128744001730954

`filter[A299792(n+2), A136522(#)]`
-/

namespace A050785.P59128744001730954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299792 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A050785.P59128744001730954

namespace A050785

/-- `filter[A299792(n+2), A136522(#)]` -/
def P59128744001730954.Spec : Prop :=
  ∀ n, P59128744001730954.a n = A050785 (n + 1)

end A050785

/-! ## A050785.P6140995875968413041

`eq[A196368(n)+1, A136522(n)]`
-/

namespace A050785.P6140995875968413041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050785.P6140995875968413041

namespace A050785

/-- `eq[A196368(n)+1, A136522(n)]` -/
def P6140995875968413041.Spec : Prop :=
  ∀ n, (P6140995875968413041.a n : ℤ) = A050785 (n + 1)

end A050785

/-! ## A050785.P1126573132442681207

`record[A321800(A262038(10*(n+1)))]`
-/

namespace A050785.P1126573132442681207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A262038 (10 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050785.P1126573132442681207

namespace A050785

/-- `record[A321800(A262038(10*(n+1)))]` -/
def P1126573132442681207.Spec : Prop :=
  ∀ n, P1126573132442681207.a n = A050785 (n + 1)

end A050785

/-! ## A050785.P3626934163575837426

`∩[A038687(n+1), A082810(n+1)]`
-/

namespace A050785.P3626934163575837426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050785.P3626934163575837426

namespace A050785

/-- `∩[A038687(n+1), A082810(n+1)]` -/
def P3626934163575837426.Spec : Prop :=
  ∀ n, (P3626934163575837426.a n : ℤ) = A050785 (n + 1)

end A050785

/-! ## A050785.P13594452907942691482

`∩[A068191(n+1), A082810(n+1)]`
-/

namespace A050785.P13594452907942691482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050785.P13594452907942691482

namespace A050785

/-- `∩[A068191(n+1), A082810(n+1)]` -/
def P13594452907942691482.Spec : Prop :=
  ∀ n, (P13594452907942691482.a n : ℤ) = A050785 (n + 1)

end A050785

/-! ## A050785.P379541184528960768

`A082810(n+10)+A000038(A008645(n+1))`
-/

namespace A050785.P379541184528960768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082810 (n + 10) + A000038 (A008645 (n + 1)).toNat

end

end A050785.P379541184528960768

namespace A050785

/-- `A082810(n+10)+A000038(A008645(n+1))` -/
def P379541184528960768.Spec : Prop :=
  ∀ n, P379541184528960768.a n = A050785 (n + 1)

end A050785

/-!
# A050786: Palindromic primes containing at least one pair of consecutive equal digits.

The programs for A050786, there is no canonical definition to state claims against.
-/

/-! ## A050786.P11117716956671265106

`∩[A002385(n+1), A050785(n+1)]`
-/

namespace A050786.P11117716956671265106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050786.P11117716956671265106

/-! ## A050786.P4612217918863252461

`∩[A050785(n+1), A072299(n+1)]`
-/

namespace A050786.P4612217918863252461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050786.P4612217918863252461

/-! ## A050786.P16461666636146774212

`∩[A050785(n+1), A350836(n+1)]`
-/

namespace A050786.P16461666636146774212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050786.P16461666636146774212

/-! ## A050786.P4526703545577330351

`∩[A050785(n+1), A232183(n+1)]`
-/

namespace A050786.P4526703545577330351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050786.P4526703545577330351

/-! ## A050786.P16554303414204274206

`∩[A050785(n+1), A325323(n+1)]`
-/

namespace A050786.P16554303414204274206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050786.P16554303414204274206

/-! ## A050786.P8443290096786142121

`∩[A050785(n+1), A069217(n+1)]`
-/

namespace A050786.P8443290096786142121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050786.P8443290096786142121

/-! ## A050786.P3352811634086431175

`∩[A050785(n+1), A180440(n+1)]`
-/

namespace A050786.P3352811634086431175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050786.P3352811634086431175

/-!
# A050787: Consider the Diophantine equation x^3 + y^3 = z^3 - 1 (0 < x < y < z) or 'Fermat near misses'. Arrange solutions by increasing values of z. Sequence gives values of z.

The programs for A050787, there is no canonical definition to state claims against.
-/

/-! ## A050787.P13875026260150953398

`ceil(root(A050790(n+1), 3))`
-/

namespace A050787.P13875026260150953398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A050790 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉

end

end A050787.P13875026260150953398

/-! ## A050787.P7560818874876116108

`root(A304042(n)+A050790(n+1), 3)`
-/

namespace A050787.P7560818874876116108
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A304042 n + A050790 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A050787.P7560818874876116108

/-! ## A050787.P15503127365267604027

`floor(A033999(2*n)+root(A050790(n+1), 3))`
-/

namespace A050787.P15503127365267604027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033999 (2 * n) : ℝ) + (A050790 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A050787.P15503127365267604027

/-! ## A050787.P11136964295808598018

`floor(root(A050790(n+1), 3)+A024000(n)+n)`
-/

namespace A050787.P11136964295808598018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A050790 (n + 1) : ℝ) ^ (1 / (3 : ℝ)) + (A024000 n + (n : ℤ) : ℝ)⌋

end

end A050787.P11136964295808598018

/-! ## A050787.P13101371758762456718

`floor(root(A050790(n+1), 3)+A034452(n+1)+1)`
-/

namespace A050787.P13101371758762456718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A050790 (n + 1) : ℝ) ^ (1 / (3 : ℝ)) + (A034452 (n + 1) + 1 : ℝ)⌋

end

end A050787.P13101371758762456718

/-!
# A050790: Consider the Diophantine equation x^3 + y^3 = z^3 - 1 (x < y < z) or 'Fermat near misses'. Arrange solutions by increasing values of z. Sequence gives values of x^3 + y^3 = z^3 - 1.

The programs for A050790, there is no canonical definition to state claims against.
-/

/-! ## A050790.P8188549710384913099

`A050787(n+1)^3-1`
-/

namespace A050790.P8188549710384913099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050787 (n + 1) ^ 3 - 1

end

end A050790.P8188549710384913099

/-! ## A050790.P2626914574132050687

`root(A050787(n+1), 1/3)-A014712(n)`
-/

namespace A050790.P2626914574132050687
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A050787 (n + 1) : ℝ) ^ (1 / ((1 : ℚ) / 3 : ℝ)) - (A014712 n : ℝ)

end

end A050790.P2626914574132050687

/-! ## A050790.P8785101980624074720

`or(-1, A000041(n))+A050787(n+1)^3`
-/

namespace A050790.P8785101980624074720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-1) (A000041 n) + A050787 (n + 1) ^ 3

end

end A050790.P8785101980624074720

/-! ## A050790.P3686131352315562724

`A008683(A060395(n))+A050787(n+1)^3`
-/

namespace A050790.P3686131352315562724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A060395 n).toNat + A050787 (n + 1) ^ 3

end

end A050790.P3686131352315562724

/-! ## A050790.P10506765722377775621

`A008683(A006450(n+1))+A050787(n+1)^3`
-/

namespace A050790.P10506765722377775621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A006450 (n + 1)).toNat + A050787 (n + 1) ^ 3

end

end A050790.P10506765722377775621

/-!
# A050791: Consider the Diophantine equation x^3 + y^3 = z^3 + 1 (1 < x < y < z) or 'Fermat near misses'. Sequence gives values of z in monotonic increasing order.

The programs for A050791, there is no canonical definition to state claims against.
-/

/-! ## A050791.P12320683784398591933

`round(root(A050794(n+1), 3))`
-/

namespace A050791.P12320683784398591933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A050794 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))

end

end A050791.P12320683784398591933

/-! ## A050791.P2836648541657653415

`A028310(floor(root(A050794(n+1), 3)))`
-/

namespace A050791.P2836648541657653415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ⌊(A050794 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋.toNat

end

end A050791.P2836648541657653415

/-! ## A050791.P14526126653452545259

`A065033(2*floor(root(A050794(n+1), 3)))`
-/

namespace A050791.P14526126653452545259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * ⌊(A050794 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋).toNat

end

end A050791.P14526126653452545259

/-!
# A050792: Consider the Diophantine equation x^3 + y^3 = z^3 + 1 (1 < x < y < z) or 'Fermat near misses'. Arrange solutions by increasing values of z (see A050791). Sequence gives values of x.

The programs for A050792, there is no canonical definition to state claims against.
-/

/-! ## A050792.P7044336206009715770

`A050793(n+1)-A259753(n+1)`
-/

namespace A050792.P7044336206009715770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050793 (n + 1) - A259753 (n + 1)

end

end A050792.P7044336206009715770

/-!
# A050793: Consider the Diophantine equation x^3 + y^3 = z^3 + 1 (1<x<y<z) or 'Fermat near misses'. Arrange solutions by increasing values of z (see A050791), and increasing values of y in case of ties. Sequence gives values of y.

The programs for A050793, there is no canonical definition to state claims against.
-/

/-! ## A050793.P15718562753065558118

`A259753(n+1)+A050792(n+1)`
-/

namespace A050793.P15718562753065558118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259753 (n + 1) + A050792 (n + 1)

end

end A050793.P15718562753065558118

/-!
# A050794: Consider the Diophantine equation x^3 + y^3 = z^3 + 1 (1 < x < y < z) or 'Fermat near misses'. Arrange solutions by increasing values of z (see A050791). Sequence gives values of x^3 + y^3 = z^3 + 1. For corresponding values of x, y, z see A050792, A050793, A050791 respectively.

The programs for A050794, there is no canonical definition to state claims against.
-/

/-! ## A050794.P10683081379843009743

`A050791(1+n)^3+1`
-/

namespace A050794.P10683081379843009743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050791 (1 + n) ^ 3 + 1

end

end A050794.P10683081379843009743

/-! ## A050794.P8427565912129409864

`A000578(A050791(ϕ²-(ϕ-n)))+1`
-/

namespace A050794.P8427565912129409864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A050791 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat).toNat + 1

end

end A050794.P8427565912129409864

/-! ## A050794.P18159758133054161113

`A000578(round(sqrt(A050791(n+1)²+1)))+1`
-/

namespace A050794.P18159758133054161113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.roundAway (Real.sqrt (A050791 (n + 1) ^ 2 + 1 : ℝ))).toNat + 1

end

end A050794.P18159758133054161113

/-! ## A050794.P6471350456108794032

`A001511(2*n+1)+A000578(A050791(n+1))`
-/

namespace A050794.P6471350456108794032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1) + A000578 (A050791 (n + 1)).toNat

end

end A050794.P6471350456108794032

/-!
# A050795: Numbers n such that n^2 - 1 is expressible as the sum of two nonzero squares in at least one way.

The programs for A050795, the canonical program `A050795.P10925690759410066325` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050795 has offset 1).

The definition of A050795 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050795.P10925690759410066325

`2*A140612(n+2)+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A050795

/-- `2*A140612(n+2)+1` -/
def P10925690759410066325.Spec : Prop :=
  ∀ n, P10925690759410066325.a n = A050795 (n + 1)

theorem P10925690759410066325.correct : P10925690759410066325.Spec := by
  intro n
  simp only [A050795, Nat.add_sub_cancel]

end A050795

/-! ## A050795.P2658600408117833390

`ceil(sqrt(8*A073613(n+2)))`
-/

namespace A050795.P2658600408117833390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (8 * A073613 (n + 2) : ℝ)⌉

end

end A050795.P2658600408117833390

namespace A050795

/-- `ceil(sqrt(8*A073613(n+2)))` -/
def P2658600408117833390.Spec : Prop :=
  ∀ n, P2658600408117833390.a n = A050795 (n + 1)

end A050795

/-! ## A050795.P9194572700624239937

`ceil(sqrt(A050799(n)))`
-/

namespace A050795.P9194572700624239937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A050799 n : ℝ)⌉

end

end A050795.P9194572700624239937

namespace A050795

/-- `ceil(sqrt(A050799(n)))` -/
def P9194572700624239937.Spec : Prop :=
  ∀ n, P9194572700624239937.a n = A050795 (n + 1)

end A050795

/-! ## A050795.P4290000621100849796

`∩[A128106(n+2)-1, A166687(n+2)]`
-/

namespace A050795.P4290000621100849796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128106 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166687 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050795.P4290000621100849796

namespace A050795

/-- `∩[A128106(n+2)-1, A166687(n+2)]` -/
def P4290000621100849796.Spec : Prop :=
  ∀ n, (P4290000621100849796.a n : ℤ) = A050795 (n + 1)

end A050795

/-! ## A050795.P2806115161408099804

`A005408(A140612(n+2))`
-/

namespace A050795.P2806115161408099804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A140612 (n + 2)).toNat

end

end A050795.P2806115161408099804

namespace A050795

/-- `A005408(A140612(n+2))` -/
def P2806115161408099804.Spec : Prop :=
  ∀ n, P2806115161408099804.a n = A050795 (n + 1)

end A050795

/-! ## A050795.P4964378989625869522

`A060747(A140612(n+2)+1)`
-/

namespace A050795.P4964378989625869522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A140612 (n + 2) + 1).toNat

end

end A050795.P4964378989625869522

namespace A050795

/-- `A060747(A140612(n+2)+1)` -/
def P4964378989625869522.Spec : Prop :=
  ∀ n, P4964378989625869522.a n = A050795 (n + 1)

end A050795

/-! ## A050795.P8004414253862901581

`A020725(floor(sqrt(A050799(n))))`
-/

namespace A050795.P8004414253862901581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (Int.sqrt (A050799 n)).toNat

end

end A050795.P8004414253862901581

namespace A050795

/-- `A020725(floor(sqrt(A050799(n))))` -/
def P8004414253862901581.Spec : Prop :=
  ∀ n, P8004414253862901581.a n = A050795 (n + 1)

end A050795

/-! ## A050795.P11907595267004118842

`A008619(4*A140612(n+2))`
-/

namespace A050795.P11907595267004118842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (4 * A140612 (n + 2)).toNat

end

end A050795.P11907595267004118842

namespace A050795

/-- `A008619(4*A140612(n+2))` -/
def P11907595267004118842.Spec : Prop :=
  ∀ n, P11907595267004118842.a n = A050795 (n + 1)

end A050795

/-! ## A050795.P4220700213127905614

`A131843(A073613(n+2))`
-/

namespace A050795.P4220700213127905614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131843 (A073613 (n + 2)).toNat

end

end A050795.P4220700213127905614

namespace A050795

/-- `A131843(A073613(n+2))` -/
def P4220700213127905614.Spec : Prop :=
  ∀ n, P4220700213127905614.a n = A050795 (n + 1)

end A050795

/-!
# A050796: Numbers n such that n^2 + 1 is expressible as the sum of two nonzero squares in at least one way (the trivial solution n^2 + 1 = n^2 + 1^2 is not counted).

The programs for A050796, the canonical program `A050796.P11538834227986178576` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050796 has offset 1).

The definition of A050796 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8250 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050796.P14756461172970500310

`floor(sqrt(A050800(n+1)))`
-/

namespace A050796.P14756461172970500310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A050800 (n + 1))

end

end A050796.P14756461172970500310

namespace A050796

/-- `floor(sqrt(A050800(n+1)))` -/
def P14756461172970500310.Spec : Prop :=
  ∀ n, P14756461172970500310.a n = A050796 (n + 1)

end A050796

/-! ## A050796.P3538680416655969992

`lt[C(2, a(n-1)), A193330(n)]` with `a(0)=3`
-/

namespace A050796.P3538680416655969992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  Nat.choose 2 (f1 (n - 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A050796.P3538680416655969992

namespace A050796

/-- `lt[C(2, a(n-1)), A193330(n)]` -/
def P3538680416655969992.Spec : Prop :=
  ∀ n, (P3538680416655969992.a n : ℤ) = A050796 (n + 1)

end A050796

/-! ## A050796.P5465000033570032071

`lt[A250069(n+1), A152948(n+1)]+1`
-/

namespace A050796.P5465000033570032071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152948 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A050796.P5465000033570032071

namespace A050796

/-- `lt[A250069(n+1), A152948(n+1)]+1` -/
def P5465000033570032071.Spec : Prop :=
  ∀ n, (P5465000033570032071.a n : ℤ) = A050796 (n + 1)

end A050796

/-! ## A050796.P2328886364961391914

`lt[A014442(n+1)-1-A033638(n), 1]+1`
-/

namespace A050796.P2328886364961391914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (n + 1) - 1 - A033638 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A050796.P2328886364961391914

namespace A050796

/-- `lt[A014442(n+1)-1-A033638(n), 1]+1` -/
def P2328886364961391914.Spec : Prop :=
  ∀ n, (P2328886364961391914.a n : ℤ) = A050796 (n + 1)

end A050796

/-! ## A050796.P11538834227986178576

`eq[A000038(n), A156297(A333167(n))]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A050796

/-- `eq[A000038(n), A156297(A333167(n))]` -/
def P11538834227986178576.Spec : Prop :=
  ∀ n, (P11538834227986178576.a n : ℤ) = A050796 (n + 1)

theorem P11538834227986178576.correct : P11538834227986178576.Spec := by
  intro n
  simp only [A050796, Nat.add_sub_cancel]

end A050796

/-! ## A050796.P13560871372669753204

`eq[A000122(n)%2, A156297(A333167(n))]`
-/

namespace A050796.P13560871372669753204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000122 n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156297 (A333167 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050796.P13560871372669753204

namespace A050796

/-- `eq[A000122(n)%2, A156297(A333167(n))]` -/
def P13560871372669753204.Spec : Prop :=
  ∀ n, (P13560871372669753204.a n : ℤ) = A050796 (n + 1)

end A050796

/-! ## A050796.P3359135732486436122

`eq[A156297(A333167(n)), A327172(2*n+1)]`
-/

namespace A050796.P3359135732486436122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156297 (A333167 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327172 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050796.P3359135732486436122

namespace A050796

/-- `eq[A156297(A333167(n)), A327172(2*n+1)]` -/
def P3359135732486436122.Spec : Prop :=
  ∀ n, (P3359135732486436122.a n : ℤ) = A050796 (n + 1)

end A050796

/-! ## A050796.P1528854380649938362

`eq[A000007(n), A156297(A333167(n))]`
-/

namespace A050796.P1528854380649938362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156297 (A333167 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050796.P1528854380649938362

namespace A050796

/-- `eq[A000007(n), A156297(A333167(n))]` -/
def P1528854380649938362.Spec : Prop :=
  ∀ n, (P1528854380649938362.a n : ℤ) = A050796 (n + 1)

end A050796

/-! ## A050796.P7614694794585689652

`eq[A156297(A333167(n)), A157187(2*n)]`
-/

namespace A050796.P7614694794585689652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156297 (A333167 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157187 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050796.P7614694794585689652

namespace A050796

/-- `eq[A156297(A333167(n)), A157187(2*n)]` -/
def P7614694794585689652.Spec : Prop :=
  ∀ n, (P7614694794585689652.a n : ℤ) = A050796 (n + 1)

end A050796

/-! ## A050796.P12940222394967479042

`eq[A000007(n), A010051(A228564(n))]`
-/

namespace A050796.P12940222394967479042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A228564 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050796.P12940222394967479042

namespace A050796

/-- `eq[A000007(n), A010051(A228564(n))]` -/
def P12940222394967479042.Spec : Prop :=
  ∀ n, (P12940222394967479042.a n : ℤ) = A050796 (n + 1)

end A050796

/-! ## A050796.P3257744907717846094

`eq[A000038(n), A010051(A228564(n))]`
-/

namespace A050796.P3257744907717846094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A228564 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050796.P3257744907717846094

namespace A050796

/-- `eq[A000038(n), A010051(A228564(n))]` -/
def P3257744907717846094.Spec : Prop :=
  ∀ n, (P3257744907717846094.a n : ℤ) = A050796 (n + 1)

end A050796

/-! ## A050796.P6183906518150189702

`eq[A010051(2*(n+1)), A010051(A228564(n))]`
-/

namespace A050796.P6183906518150189702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A228564 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050796.P6183906518150189702

namespace A050796

/-- `eq[A010051(2*(n+1)), A010051(A228564(n))]` -/
def P6183906518150189702.Spec : Prop :=
  ∀ n, (P6183906518150189702.a n : ℤ) = A050796 (n + 1)

end A050796

/-! ## A050796.P16426233074217715022

`eq[2, gcd(2, A168065(n²+1))]`
-/

namespace A050796.P16426233074217715022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A168065 (n ^ 2 + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050796.P16426233074217715022

namespace A050796

/-- `eq[2, gcd(2, A168065(n²+1))]` -/
def P16426233074217715022.Spec : Prop :=
  ∀ n, (P16426233074217715022.a n : ℤ) = A050796 (n + 1)

end A050796

/-! ## A050796.P5244271642377873420

`eq[A005171(2*(n+1)), A005171(A228564(n))]`
-/

namespace A050796.P5244271642377873420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A228564 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050796.P5244271642377873420

namespace A050796

/-- `eq[A005171(2*(n+1)), A005171(A228564(n))]` -/
def P5244271642377873420.Spec : Prop :=
  ∀ n, (P5244271642377873420.a n : ℤ) = A050796 (n + 1)

end A050796

/-! ## A050796.P18391091951494811115

`record[(n+1)*A305439(A299150((n+1)²+1)+1)]`
-/

namespace A050796.P18391091951494811115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A305439 (A299150 ((n + 1) ^ 2 + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050796.P18391091951494811115

namespace A050796

/-- `record[(n+1)*A305439(A299150((n+1)²+1)+1)]` -/
def P18391091951494811115.Spec : Prop :=
  ∀ n, P18391091951494811115.a n = A050796 (n + 1)

end A050796

/-!
# A050797: Numbers n such that n^2 - 1 is expressible as the sum of two nonzero squares in exactly one way.

The programs for A050797, there is no canonical definition to state claims against.
-/

/-! ## A050797.P160024827973086928

`eq[12^((n+1)%2), A025435(A001971(n))]`
-/

namespace A050797.P160024827973086928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 ^ ((n + 1) % 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (A001971 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050797.P160024827973086928

/-! ## A050797.P1200405739392495274

`eq[A000034(n), A000925(A008795(n))]`
-/

namespace A050797.P1200405739392495274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 (A008795 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050797.P1200405739392495274

/-! ## A050797.P14429822502797537443

`eq[A025435(A001971(n)), A158416(n)]`
-/

namespace A050797.P14429822502797537443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (A001971 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050797.P14429822502797537443

/-! ## A050797.P11742324018360778838

`eq[A000925(A008795(n)), A266258(n)]`
-/

namespace A050797.P11742324018360778838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 (A008795 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266258 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050797.P11742324018360778838

/-! ## A050797.P6526044916122594359

`eq[A020639(n+1), A000925(A008795(n))]`
-/

namespace A050797.P6526044916122594359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 (A008795 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050797.P6526044916122594359

/-!
# A050798: Numbers n such that m = n^2 + 1 is expressible as the sum of two nonzero squares in exactly two ways.

The programs for A050798, the canonical program `A050798.P8630715380825418408` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050798 has offset 1).

The definition of A050798 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3816 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050798.P8630715380825418408

`eq[gcd(6, A158478(n)), A193330(n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A050798

/-- `eq[gcd(6, A158478(n)), A193330(n)]` -/
def P8630715380825418408.Spec : Prop :=
  ∀ n, (P8630715380825418408.a n : ℤ) = A050798 (n + 1)

theorem P8630715380825418408.correct : P8630715380825418408.Spec := by
  intro n
  simp only [A050798, Nat.add_sub_cancel]

end A050798

/-! ## A050798.P14109895568796696314

`eq[A158478(n+1), A193330(n+1)]+1`
-/

namespace A050798.P14109895568796696314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A050798.P14109895568796696314

namespace A050798

/-- `eq[A158478(n+1), A193330(n+1)]+1` -/
def P14109895568796696314.Spec : Prop :=
  ∀ n, (P14109895568796696314.a n : ℤ) = A050798 (n + 1)

end A050798

/-! ## A050798.P12308143120114888367

`eq[A158478(A000038(n)+n), A193330(n)]`
-/

namespace A050798.P12308143120114888367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158478 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050798.P12308143120114888367

namespace A050798

/-- `eq[A158478(A000038(n)+n), A193330(n)]` -/
def P12308143120114888367.Spec : Prop :=
  ∀ n, (P12308143120114888367.a n : ℤ) = A050798 (n + 1)

end A050798

/-! ## A050798.P12292363042870806040

`eq[A158478(n)-A000038(n), A193330(n)]`
-/

namespace A050798.P12292363042870806040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158478 n - A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050798.P12292363042870806040

namespace A050798

/-- `eq[A158478(n)-A000038(n), A193330(n)]` -/
def P12292363042870806040.Spec : Prop :=
  ∀ n, (P12292363042870806040.a n : ℤ) = A050798 (n + 1)

end A050798

/-! ## A050798.P16269969251418829589

`eq[A158478(A000007(n)+n), A193330(n)]`
-/

namespace A050798.P16269969251418829589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158478 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050798.P16269969251418829589

namespace A050798

/-- `eq[A158478(A000007(n)+n), A193330(n)]` -/
def P16269969251418829589.Spec : Prop :=
  ∀ n, (P16269969251418829589.a n : ℤ) = A050798 (n + 1)

end A050798

/-! ## A050798.P12145257742422613469

`eq[A158478(n)-A000007(n), A193330(n)]`
-/

namespace A050798.P12145257742422613469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158478 n - A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050798.P12145257742422613469

namespace A050798

/-- `eq[A158478(n)-A000007(n), A193330(n)]` -/
def P12145257742422613469.Spec : Prop :=
  ∀ n, (P12145257742422613469.a n : ℤ) = A050798 (n + 1)

end A050798

/-! ## A050798.P709605818321875022

`eq[A107286(A008486(n)), A193330(n)]`
-/

namespace A050798.P709605818321875022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A008486 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050798.P709605818321875022

namespace A050798

/-- `eq[A107286(A008486(n)), A193330(n)]` -/
def P709605818321875022.Spec : Prop :=
  ∀ n, (P709605818321875022.a n : ℤ) = A050798 (n + 1)

end A050798

/-! ## A050798.P5615134814542612235

`eq[A193330(n), A266593(A266593(n))]`
-/

namespace A050798.P5615134814542612235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266593 (A266593 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050798.P5615134814542612235

namespace A050798

/-- `eq[A193330(n), A266593(A266593(n))]` -/
def P5615134814542612235.Spec : Prop :=
  ∀ n, (P5615134814542612235.a n : ℤ) = A050798 (n + 1)

end A050798

/-! ## A050798.P2752012078213325563

`eq[A158478(n), A193330(A233583(n+1))]`
-/

namespace A050798.P2752012078213325563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158478 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050798.P2752012078213325563

namespace A050798

/-- `eq[A158478(n), A193330(A233583(n+1))]` -/
def P2752012078213325563.Spec : Prop :=
  ∀ n, (P2752012078213325563.a n : ℤ) = A050798 (n + 1)

end A050798

/-! ## A050798.P13889141548958639811

`eq[n², n^A087436(n²+1)]`
-/

namespace A050798.P13889141548958639811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A087436 (n ^ 2 + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A050798.P13889141548958639811

namespace A050798

/-- `eq[n², n^A087436(n²+1)]` -/
def P13889141548958639811.Spec : Prop :=
  ∀ n, (P13889141548958639811.a n : ℤ) = A050798 (n + 1)

end A050798

/-! ## A050798.P7195421390392970351

`record[(n+1)*A320815(A054844((n+1)²+1))]`
-/

namespace A050798.P7195421390392970351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A320815 (A054844 ((n + 1) ^ 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050798.P7195421390392970351

namespace A050798

/-- `record[(n+1)*A320815(A054844((n+1)²+1))]` -/
def P7195421390392970351.Spec : Prop :=
  ∀ n, P7195421390392970351.a n = A050798 (n + 1)

end A050798

/-!
# A050799: Values of n^2 - 1 resulting from A050795.

The programs for A050799, the canonical program `A050799.P9551313652604683105` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050799 has offset 0).

The definition of A050799 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1347 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050799.P9898996035600785173

`8*A073613(n+2)`
-/

namespace A050799.P9898996035600785173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A073613 (n + 2)

end

end A050799.P9898996035600785173

namespace A050799

/-- `8*A073613(n+2)` -/
def P9898996035600785173.Spec : Prop :=
  ∀ n, P9898996035600785173.a n = A050799 n

end A050799

/-! ## A050799.P9551313652604683105

`A050795(n+1)²-1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A050799

/-- `A050795(n+1)²-1` -/
def P9551313652604683105.Spec : Prop :=
  ∀ n, P9551313652604683105.a n = A050799 n

theorem P9551313652604683105.correct : P9551313652604683105.Spec := by
  intro n
  simp only [A050799]

end A050799

/-! ## A050799.P7402689747531451681

`(2*A140612(n+2)+1)²-1`
-/

namespace A050799.P7402689747531451681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A140612 (n + 2) + 1) ^ 2 - 1

end

end A050799.P7402689747531451681

namespace A050799

/-- `(2*A140612(n+2)+1)²-1` -/
def P7402689747531451681.Spec : Prop :=
  ∀ n, P7402689747531451681.a n = A050799 n

end A050799

/-! ## A050799.P8737845095065224143

`A005408(A140612(n+2))²-1`
-/

namespace A050799.P8737845095065224143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A140612 (n + 2)).toNat ^ 2 - 1

end

end A050799.P8737845095065224143

namespace A050799

/-- `A005408(A140612(n+2))²-1` -/
def P8737845095065224143.Spec : Prop :=
  ∀ n, P8737845095065224143.a n = A050799 n

end A050799

/-! ## A050799.P2605862584481847223

`A033996(A140612(n+2))`
-/

namespace A050799.P2605862584481847223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033996 (A140612 (n + 2)).toNat

end

end A050799.P2605862584481847223

namespace A050799

/-- `A033996(A140612(n+2))` -/
def P2605862584481847223.Spec : Prop :=
  ∀ n, P2605862584481847223.a n = A050799 n

end A050799

/-! ## A050799.P5974691095180743627

`A039720(A050795(n+1))`
-/

namespace A050799.P5974691095180743627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039720 (A050795 (n + 1)).toNat

end

end A050799.P5974691095180743627

namespace A050799

/-- `A039720(A050795(n+1))` -/
def P5974691095180743627.Spec : Prop :=
  ∀ n, P5974691095180743627.a n = A050799 n

end A050799

/-! ## A050799.P2368009218441223678

`A005563(A050795(n+1)-1)`
-/

namespace A050799.P2368009218441223678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (A050795 (n + 1) - 1).toNat

end

end A050799.P2368009218441223678

namespace A050799

/-- `A005563(A050795(n+1)-1)` -/
def P2368009218441223678.Spec : Prop :=
  ∀ n, P2368009218441223678.a n = A050799 n

end A050799

/-! ## A050799.P9312317078418438643

`A005563(2*A140612(n+2))`
-/

namespace A050799.P9312317078418438643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (2 * A140612 (n + 2)).toNat

end

end A050799.P9312317078418438643

namespace A050799

/-- `A005563(2*A140612(n+2))` -/
def P9312317078418438643.Spec : Prop :=
  ∀ n, P9312317078418438643.a n = A050799 n

end A050799

/-! ## A050799.P13191332427965345547

`A013654(2*A140612(n+2))`
-/

namespace A050799.P13191332427965345547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013654 (2 * A140612 (n + 2)).toNat

end

end A050799.P13191332427965345547

namespace A050799

/-- `A013654(2*A140612(n+2))` -/
def P13191332427965345547.Spec : Prop :=
  ∀ n, P13191332427965345547.a n = A050799 n

end A050799

/-! ## A050799.P17113469977368567744

`∩[A082982(n+1), A081351(n)]`
-/

namespace A050799.P17113469977368567744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081351 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050799.P17113469977368567744

namespace A050799

/-- `∩[A082982(n+1), A081351(n)]` -/
def P17113469977368567744.Spec : Prop :=
  ∀ n, (P17113469977368567744.a n : ℤ) = A050799 n

end A050799

