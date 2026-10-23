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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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

/-!
# A287100: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 243", based on the 5-celled von Neumann neighborhood.

The programs for A287100, there is no canonical definition to state claims against.
-/

/-! ## A287100.P427731486354956273

`A052410(A287188(n))-A004526(A185274(n))`
-/

namespace A287100.P427731486354956273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A287188 n).toNat - A004526 (A185274 n).toNat

end

end A287100.P427731486354956273

/-! ## A287100.P3567452563957312587

`A000265(A287101(n))`
-/

namespace A287100.P3567452563957312587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A287101 n).toNat

end

end A287100.P3567452563957312587

/-! ## A287100.P10485610780608909895

`A000265(A287189(n))`
-/

namespace A287100.P10485610780608909895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A287189 n).toNat

end

end A287100.P10485610780608909895

/-! ## A287100.P18323881806640418656

`A287188(n*A036297(n)!)`
-/

namespace A287100.P18323881806640418656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287188 (n * Nat.factorial (A036297 n).toNat)

end

end A287100.P18323881806640418656

/-! ## A287100.P8612926911433531619

`A287188(n)%Δ[A075976(n)]`
-/

namespace A287100.P8612926911433531619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075976 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287188 n) (f1 (n + 1) - f1 n)

end

end A287100.P8612926911433531619

/-!
# A287101: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 243", based on the 5-celled von Neumann neighborhood.

The programs for A287101, there is no canonical definition to state claims against.
-/

/-! ## A287101.P8370740360191020954

`A052410(A287189(n))`
-/

namespace A287101.P8370740360191020954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A287189 n).toNat

end

end A287101.P8370740360191020954

/-! ## A287101.P16644733364663858697

`filter[A287189(n), A093719(#)]`
-/

namespace A287101.P16644733364663858697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A287101.P16644733364663858697

/-! ## A287101.P13821504488469800702

`filter[A287189(n), A127254(#)]`
-/

namespace A287101.P13821504488469800702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A127254 (f1 j).toNat = 1) n)

end

end A287101.P13821504488469800702

/-! ## A287101.P3935341148502597807

`filter[A287189(n), A175192(#)]`
-/

namespace A287101.P3935341148502597807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A175192 (f1 j).toNat = 1) n)

end

end A287101.P3935341148502597807

/-! ## A287101.P17586864960048566494

`filter[A287189(n), A254651(#)]`
-/

namespace A287101.P17586864960048566494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A254651 (f1 j).toNat = 1) n)

end

end A287101.P17586864960048566494

/-!
# A287103: Positions of 0 in A288710; complement of A288712.

The programs for A287103, there is no canonical definition to state claims against.
-/

/-! ## A287103.P4613509220332069072

`comp[A288755(n+1)-1]+1`
-/

namespace A287103.P4613509220332069072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288755 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A287103.P4613509220332069072

/-! ## A287103.P4974587414640912771

`eq[0, A288710(n+1)]+1`
-/

namespace A287103.P4974587414640912771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288710 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287103.P4974587414640912771

/-! ## A287103.P5205604585665201375

`lt[n*A288710(A028310(n)), n]`
-/

namespace A287103.P5205604585665201375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A288710 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A287103.P5205604585665201375

/-! ## A287103.P16411962093710364175

`record[n+1-A000005(n+1)*A288710(n+1)]`
-/

namespace A287103.P16411962093710364175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000005 (n + 1) * A288710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287103.P16411962093710364175

/-! ## A287103.P7394046881022454543

`record[n+1-A288710(n+1)*A288755(n+1)]`
-/

namespace A287103.P7394046881022454543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A288710 (n + 1) * A288755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287103.P7394046881022454543

/-! ## A287103.P7190724129314413396

`record[n+1-A288710(n+1)*A288927(n+1)]`
-/

namespace A287103.P7190724129314413396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A288710 (n + 1) * A288927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287103.P7190724129314413396

/-! ## A287103.P15412688107888186851

`record[n+1-A288710(n+1)*A288925(n)]`
-/

namespace A287103.P15412688107888186851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A288710 (n + 1) * A288925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287103.P15412688107888186851

/-!
# A287104: Start with 0 and repeatedly substitute 0->10, 1->12, 2->0.

The programs for A287104, the canonical program `A287104.P16075678606677278216` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287104 has offset 1).

The definition of A287104 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8053 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287104.P16075678606677278216

`record[and(2*n+1, n+1)]%4`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A287104

/-- `record[and(2*n+1, n+1)]%4` -/
def P16075678606677278216.Spec : Prop :=
  ∀ n, (P16075678606677278216.a n : ℤ) = A287104 (n + 1)

theorem P16075678606677278216.correct : P16075678606677278216.Spec := by
  intro n
  simp only [A287104, Nat.add_sub_cancel]

end A287104

/-! ## A287104.P17951403626171639621

`and(3, record[and(2*n+1, n+1)])`
-/

namespace A287104.P17951403626171639621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n + 1) (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A287104.P17951403626171639621

namespace A287104

/-- `and(3, record[and(2*n+1, n+1)])` -/
def P17951403626171639621.Spec : Prop :=
  ∀ n, (P17951403626171639621.a n : ℤ) = A287104 (n + 1)

end A287104

/-! ## A287104.P1352445865632090913

`A007877(record[and(2*n+1, n+1)])`
-/

namespace A287104.P1352445865632090913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n + 1) (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A287104.P1352445865632090913

namespace A287104

/-- `A007877(record[and(2*n+1, n+1)])` -/
def P1352445865632090913.Spec : Prop :=
  ∀ n, P1352445865632090913.a n = A287104 (n + 1)

end A287104

/-! ## A287104.P2226643259743896902

`A010873(record[and(n+1, Δ[n²])])`
-/

namespace A287104.P2226643259743896902
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A287104.P2226643259743896902

namespace A287104

/-- `A010873(record[and(n+1, Δ[n²])])` -/
def P2226643259743896902.Spec : Prop :=
  ∀ n, P2226643259743896902.a n = A287104 (n + 1)

end A287104

/-! ## A287104.P17990234426703777487

`A010873(record[A163618(n+1)])`
-/

namespace A287104.P17990234426703777487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163618 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A287104.P17990234426703777487

namespace A287104

/-- `A010873(record[A163618(n+1)])` -/
def P17990234426703777487.Spec : Prop :=
  ∀ n, P17990234426703777487.a n = A287104 (n + 1)

end A287104

/-!
# A287105: Positions of 0 in A287104.

The programs for A287105, the canonical program `A287105.P8825308527181193328` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287105 has offset 1).

The definition of A287105 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287105.P8825308527181193328

`A287075(n+1)-n`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A287105

/-- `A287075(n+1)-n` -/
def P8825308527181193328.Spec : Prop :=
  ∀ n, P8825308527181193328.a n = A287105 (n + 1)

theorem P8825308527181193328.correct : P8825308527181193328.Spec := by
  intro n
  simp only [A287105, Nat.add_sub_cancel]

end A287105

/-! ## A287105.P13514528984223767201

`∑[4-A287104(n+1)]`
-/

namespace A287105.P13514528984223767201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A287104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287105.P13514528984223767201

namespace A287105

/-- `∑[4-A287104(n+1)]` -/
def P13514528984223767201.Spec : Prop :=
  ∀ n, P13514528984223767201.a n = A287105 (n + 1)

end A287105

/-! ## A287105.P11249750900061301464

`A287075(n+1)+A001489(n+1)+1`
-/

namespace A287105.P11249750900061301464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287075 (n + 1) + A001489 (n + 1) + 1

end

end A287105.P11249750900061301464

namespace A287105

/-- `A287075(n+1)+A001489(n+1)+1` -/
def P11249750900061301464.Spec : Prop :=
  ∀ n, P11249750900061301464.a n = A287105 (n + 1)

end A287105

/-! ## A287105.P16249479851041934770

`A287106(A287074(n+1)-n)-1`
-/

namespace A287105.P16249479851041934770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287106 (A287074 (n + 1) - (n : ℤ)).toNat - 1

end

end A287105.P16249479851041934770

namespace A287105

/-- `A287106(A287074(n+1)-n)-1` -/
def P16249479851041934770.Spec : Prop :=
  ∀ n, P16249479851041934770.a n = A287105 (n + 1)

end A287105

/-! ## A287105.P3517739503845580454

`eq[1, A287104(n+2)+1]+2`
-/

namespace A287105.P3517739503845580454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287104 (n + 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A287105.P3517739503845580454

namespace A287105

/-- `eq[1, A287104(n+2)+1]+2` -/
def P3517739503845580454.Spec : Prop :=
  ∀ n, (P3517739503845580454.a n : ℤ) = A287105 (n + 1)

end A287105

/-! ## A287105.P2262226598587342981

`eq[0, A287104(A028310(n))]`
-/

namespace A287105.P2262226598587342981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287104 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287105.P2262226598587342981

namespace A287105

/-- `eq[0, A287104(A028310(n))]` -/
def P2262226598587342981.Spec : Prop :=
  ∀ n, (P2262226598587342981.a n : ℤ) = A287105 (n + 1)

end A287105

/-! ## A287105.P8003352852296375891

`eq[0, A287104(A000007(n)+n)]`
-/

namespace A287105.P8003352852296375891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287104 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287105.P8003352852296375891

namespace A287105

/-- `eq[0, A287104(A000007(n)+n)]` -/
def P8003352852296375891.Spec : Prop :=
  ∀ n, (P8003352852296375891.a n : ℤ) = A287105 (n + 1)

end A287105

/-!
# A287106: Positions of 1 in A287104.

The programs for A287106, the canonical program `A287106.P12211031677089213963` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287106 has offset 1).

The definition of A287106 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4302 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287106.P4841017468477102846

`A287107(n+1)-record[n+1-A287072(n+1)]`
-/

namespace A287106.P4841017468477102846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A287072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287107 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287106.P4841017468477102846

namespace A287106

/-- `A287107(n+1)-record[n+1-A287072(n+1)]` -/
def P4841017468477102846.Spec : Prop :=
  ∀ n, P4841017468477102846.a n = A287106 (n + 1)

end A287106

/-! ## A287106.P12211031677089213963

`eq[1, A287104(n+1)]+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A287106

/-- `eq[1, A287104(n+1)]+1` -/
def P12211031677089213963.Spec : Prop :=
  ∀ n, (P12211031677089213963.a n : ℤ) = A287106 (n + 1)

theorem P12211031677089213963.correct : P12211031677089213963.Spec := by
  intro n
  simp only [A287106, Nat.add_sub_cancel]

end A287106

/-! ## A287106.P18315897702466945482

`eq[n, A028310(n)*A287104(A028310(n))]`
-/

namespace A287106.P18315897702466945482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A287104 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287106.P18315897702466945482

namespace A287106

/-- `eq[n, A028310(n)*A287104(A028310(n))]` -/
def P18315897702466945482.Spec : Prop :=
  ∀ n, (P18315897702466945482.a n : ℤ) = A287106 (n + 1)

end A287106

/-! ## A287106.P10762720167069300091

`A287074(n+1)-A287104(A287074(n+1)-1)`
-/

namespace A287106.P10762720167069300091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287074 (n + 1) - A287104 (A287074 (n + 1) - 1).toNat

end

end A287106.P10762720167069300091

namespace A287106

/-- `A287074(n+1)-A287104(A287074(n+1)-1)` -/
def P10762720167069300091.Spec : Prop :=
  ∀ n, P10762720167069300091.a n = A287106 (n + 1)

end A287106

/-! ## A287106.P6820410358900562540

`(A287073(A287073(n+1)+1)+n)%A287107(n+1)`
-/

namespace A287106.P6820410358900562540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287073 (A287073 (n + 1) + 1).toNat + (n : ℤ)) (A287107 (n + 1))

end

end A287106.P6820410358900562540

namespace A287106

/-- `(A287073(A287073(n+1)+1)+n)%A287107(n+1)` -/
def P6820410358900562540.Spec : Prop :=
  ∀ n, P6820410358900562540.a n = A287106 (n + 1)

end A287106

/-! ## A287106.P7398855829466878885

`record[n+1-A287072(A287074(n+1)-1)]`
-/

namespace A287106.P7398855829466878885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A287072 (A287074 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287106.P7398855829466878885

namespace A287106

/-- `record[n+1-A287072(A287074(n+1)-1)]` -/
def P7398855829466878885.Spec : Prop :=
  ∀ n, P7398855829466878885.a n = A287106 (n + 1)

end A287106

/-!
# A287107: Positions of 2 in A287104.

The programs for A287107, the canonical program `A287107.P12993006803381746333` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287107 has offset 1).

The definition of A287107 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4996 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287107.P12993006803381746333

`A287073(n+1)+A156077(A013947(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A287107

/-- `A287073(n+1)+A156077(A013947(n+1))` -/
def P12993006803381746333.Spec : Prop :=
  ∀ n, P12993006803381746333.a n = A287107 (n + 1)

theorem P12993006803381746333.correct : P12993006803381746333.Spec := by
  intro n
  simp only [A287107, Nat.add_sub_cancel]

end A287107

/-! ## A287107.P16966128983427019043

`A287105(A287106(n+1))-A287073(n+1)`
-/

namespace A287107.P16966128983427019043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287105 (A287106 (n + 1)).toNat - A287073 (n + 1)

end

end A287107.P16966128983427019043

namespace A287107

/-- `A287105(A287106(n+1))-A287073(n+1)` -/
def P16966128983427019043.Spec : Prop :=
  ∀ n, P16966128983427019043.a n = A287107 (n + 1)

end A287107

/-! ## A287107.P15048236899244973422

`A287105(eq[1, A287104(n+1)]+1)-A287073(n+1)`
-/

namespace A287107.P15048236899244973422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287105 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - A287073 (n + 1)

end

end A287107.P15048236899244973422

namespace A287107

/-- `A287105(eq[1, A287104(n+1)]+1)-A287073(n+1)` -/
def P15048236899244973422.Spec : Prop :=
  ∀ n, P15048236899244973422.a n = A287107 (n + 1)

end A287107

/-! ## A287107.P9055847708140637110

`A287073(n+1)+A287104(A287105(n+1)+1)+n`
-/

namespace A287107.P9055847708140637110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287073 (n + 1) + (A287104 (A287105 (n + 1) + 1).toNat + (n : ℤ))

end

end A287107.P9055847708140637110

namespace A287107

/-- `A287073(n+1)+A287104(A287105(n+1)+1)+n` -/
def P9055847708140637110.Spec : Prop :=
  ∀ n, P9055847708140637110.a n = A287107 (n + 1)

end A287107

/-! ## A287107.P6881184177171327262

`eq[2, A287104(n+1)]+1`
-/

namespace A287107.P6881184177171327262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287104 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287107.P6881184177171327262

namespace A287107

/-- `eq[2, A287104(n+1)]+1` -/
def P6881184177171327262.Spec : Prop :=
  ∀ n, (P6881184177171327262.a n : ℤ) = A287107 (n + 1)

end A287107

/-! ## A287107.P71827485879043113

`eq[2, A287104(A028310(n))]`
-/

namespace A287107.P71827485879043113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287104 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287107.P71827485879043113

namespace A287107

/-- `eq[2, A287104(A028310(n))]` -/
def P71827485879043113.Spec : Prop :=
  ∀ n, (P71827485879043113.a n : ℤ) = A287107 (n + 1)

end A287107

/-! ## A287107.P15255780794826393300

`eq[2, A287104(A000007(n)+n)]`
-/

namespace A287107.P15255780794826393300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287104 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287107.P15255780794826393300

namespace A287107

/-- `eq[2, A287104(A000007(n)+n)]` -/
def P15255780794826393300.Spec : Prop :=
  ∀ n, (P15255780794826393300.a n : ℤ) = A287107 (n + 1)

end A287107

/-! ## A287107.P7533860759931383428

`A287073(n+1)+A287072(A287075(n+1)+1)+n`
-/

namespace A287107.P7533860759931383428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287073 (n + 1) + (A287072 (A287075 (n + 1) + 1).toNat + (n : ℤ))

end

end A287107.P7533860759931383428

namespace A287107

/-- `A287073(n+1)+A287072(A287075(n+1)+1)+n` -/
def P7533860759931383428.Spec : Prop :=
  ∀ n, P7533860759931383428.a n = A287107 (n + 1)

end A287107

/-! ## A287107.P7078394492866423543

`A008619(2*(A287073(n+1)+n))`
-/

namespace A287107.P7078394492866423543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * (A287073 (n + 1) + (n : ℤ))).toNat

end

end A287107.P7078394492866423543

namespace A287107

/-- `A008619(2*(A287073(n+1)+n))` -/
def P7078394492866423543.Spec : Prop :=
  ∀ n, P7078394492866423543.a n = A287107 (n + 1)

end A287107

/-!
# A287108: 1-limiting word of the morphism 0->10, 1->21, 2->0.

The programs for A287108, there is no canonical definition to state claims against.
-/

/-! ## A287108.P947932922349291002

`(A106686(n)^A059196(n+1))%3`
-/

namespace A287108.P947932922349291002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A106686 n : ℚ) ^ (A059196 (n + 1) : ℤ))) 3

end

end A287108.P947932922349291002

/-! ## A287108.P7359544255191985060

`A106686(n)%A226895(A102480(n))`
-/

namespace A287108.P7359544255191985060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106686 n) (A226895 (A102480 n).toNat)

end

end A287108.P7359544255191985060

/-! ## A287108.P12132932051136163229

`and(A006337(n+1), A286689(A001405(n)))`
-/

namespace A287108.P12132932051136163229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006337 (n + 1)) (A286689 (A001405 n).toNat)

end

end A287108.P12132932051136163229

/-! ## A287108.P8995597602961153805

`and(A006337(n+1), A318736(A020646(3*n)))`
-/

namespace A287108.P8995597602961153805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006337 (n + 1)) (A318736 (A020646 (3 * n)).toNat)

end

end A287108.P8995597602961153805

/-!
# A287109: Positions of 0 in A287108.

The programs for A287109, there is no canonical definition to state claims against.
-/

/-! ## A287109.P6505577764113913273

`A287163(n+1)-n`
-/

namespace A287109.P6505577764113913273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287163 (n + 1) - (n : ℤ)

end

end A287109.P6505577764113913273

/-! ## A287109.P10553327374491138297

`A287158(A287158(n+1))+1-A287158(n+1)`
-/

namespace A287109.P10553327374491138297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287158 (A287158 (n + 1)).toNat + (1 - A287158 (n + 1))

end

end A287109.P10553327374491138297

/-! ## A287109.P13340918726033225977

`eq[0, A287108(n+1)]+1`
-/

namespace A287109.P13340918726033225977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287108 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287109.P13340918726033225977

/-! ## A287109.P11000805708294388374

`eq[0, A287108(A028310(n))]`
-/

namespace A287109.P11000805708294388374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287108 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287109.P11000805708294388374

/-! ## A287109.P6559437958757996306

`eq[2, A245553(n+1)]+1-n`
-/

namespace A287109.P6559437958757996306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + (1 - (n : ℤ))

end

end A287109.P6559437958757996306

/-! ## A287109.P11717544381270766332

`eq[2, A287160(n+1)]+1-n`
-/

namespace A287109.P11717544381270766332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + (1 - (n : ℤ))

end

end A287109.P11717544381270766332

/-!
# A287110: Positions of 1 in A287108.

The programs for A287110, there is no canonical definition to state claims against.
-/

/-! ## A287110.P7484366631734804079

`eq[1, A287108(n+1)]+1`
-/

namespace A287110.P7484366631734804079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287108 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287110.P7484366631734804079

/-! ## A287110.P15803888226322516124

`record[-A001489(n+1)^A287108(n+1)]`
-/

namespace A287110.P15803888226322516124
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A001489 (n + 1) : ℚ) ^ (A287108 (n + 1) : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287110.P15803888226322516124

/-! ## A287110.P8858738700148495161

`eq[n, A028310(n)*A287108(A028310(n))]`
-/

namespace A287110.P8858738700148495161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A287108 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287110.P8858738700148495161

/-! ## A287110.P11938535471860250504

`A287157(A287161(n+1))-A287162(A287161(n+1))`
-/

namespace A287110.P11938535471860250504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287157 (A287161 (n + 1)).toNat - A287162 (A287161 (n + 1)).toNat

end

end A287110.P11938535471860250504

/-! ## A287110.P14905902738658676302

`A287158(A287159(n+1))%A287159(n+1)+n+1`
-/

namespace A287110.P14905902738658676302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287158 (A287159 (n + 1)).toNat) (A287159 (n + 1)) + (n + 1 : ℤ)

end

end A287110.P14905902738658676302

/-! ## A287110.P17107269933529914877

`record[A001057(A287108(n+1)+A005843(n))]`
-/

namespace A287110.P17107269933529914877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A287108 (n + 1) + A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287110.P17107269933529914877

/-! ## A287110.P14472209274491224094

`A049084(p?[A000040(n+1)*A287108(n+1)])`
-/

namespace A287110.P14472209274491224094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A287108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A287110.P14472209274491224094

/-!
# A287111: Positions of 2 in A287108.

The programs for A287111, there is no canonical definition to state claims against.
-/

/-! ## A287111.P9899422223474284561

`A287157(n+1)+n`
-/

namespace A287111.P9899422223474284561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287157 (n + 1) + (n : ℤ)

end

end A287111.P9899422223474284561

/-! ## A287111.P16341627949977578665

`A287162(A287162(n+1))+1-A287162(n+1)+n`
-/

namespace A287111.P16341627949977578665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287162 (A287162 (n + 1)).toNat + (1 - A287162 (n + 1)) + (n : ℤ)

end

end A287111.P16341627949977578665

/-! ## A287111.P9832905956290420298

`eq[0, A287156(n+1)]+n+1`
-/

namespace A287111.P9832905956290420298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287156 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (n + 1)

end

end A287111.P9832905956290420298

/-! ## A287111.P14887680114104239278

`lt[1, A287108(n+1)]+1`
-/

namespace A287111.P14887680114104239278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287108 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A287111.P14887680114104239278

/-! ## A287111.P10421284459111196236

`eq[2, A287108(A028310(n))]`
-/

namespace A287111.P10421284459111196236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287108 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287111.P10421284459111196236

/-! ## A287111.P13239561059910915244

`eq[2, A287108(A233583(n+1))]`
-/

namespace A287111.P13239561059910915244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287108 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287111.P13239561059910915244

/-!
# A287112: 1-limiting word of the morphism 0->10, 1->20, 2->0.

The programs for A287112, there is no canonical definition to state claims against.
-/

/-! ## A287112.P3522833450761769269

`lcm(A080843(n+14), A275806(A337819(n+1)))`
-/

namespace A287112.P3522833450761769269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A080843 (n + 14)) (A275806 (A337819 (n + 1)).toNat)

end

end A287112.P3522833450761769269

/-! ## A287112.P1667302698795890493

`A080843(n+14)+A000038(A061906(n))`
-/

namespace A287112.P1667302698795890493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 (n + 14) + A000038 (A061906 n).toNat

end

end A287112.P1667302698795890493

/-! ## A287112.P10319177047839729966

`and(A002146(A002146(n)), A080843(n+14))`
-/

namespace A287112.P10319177047839729966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002146 (A002146 n).toNat) (A080843 (n + 14))

end

end A287112.P10319177047839729966

/-! ## A287112.P16594080321295557861

`A080843(n+14)+A000007(A061906(n)+1)`
-/

namespace A287112.P16594080321295557861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 (n + 14) + A000007 (A061906 n + 1).toNat

end

end A287112.P16594080321295557861

/-! ## A287112.P15346817386191986067

`A171386(A246955(n+2))+A080843(n+14)`
-/

namespace A287112.P15346817386191986067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171386 (A246955 (n + 2)).toNat + A080843 (n + 14)

end

end A287112.P15346817386191986067

/-! ## A287112.P16711930193889703069

`A078315(A110835(n+1))*A080843(n+14)`
-/

namespace A287112.P16711930193889703069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078315 (A110835 (n + 1)).toNat * A080843 (n + 14)

end

end A287112.P16711930193889703069

/-! ## A287112.P16921100546804277787

`A080843(n+14)*A113308(A006530(n+2))`
-/

namespace A287112.P16921100546804277787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 (n + 14) * A113308 (A006530 (n + 2)).toNat

end

end A287112.P16921100546804277787

/-! ## A287112.P4496298704317743471

`A080843(n+14)^A051904(A006416(n+2))`
-/

namespace A287112.P4496298704317743471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080843 (n + 14) : ℚ) ^ (A051904 (A006416 (n + 2)).toNat : ℤ)

end

end A287112.P4496298704317743471

/-! ## A287112.P301576733233398722

`A286998(A342351(n+1)-2)`
-/

namespace A287112.P301576733233398722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286998 (A342351 (n + 1) - 2).toNat

end

end A287112.P301576733233398722

/-! ## A287112.P4395657347005871377

`A080843(A319969(A322410(n))+n+1)`
-/

namespace A287112.P4395657347005871377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 (A319969 (A322410 n).toNat + (n + 1 : ℤ)).toNat

end

end A287112.P4395657347005871377

/-!
# A287113: Positions of 0 in A287112.

The programs for A287113, there is no canonical definition to state claims against.
-/

/-! ## A287113.P12759853520104545742

`∑[gcd(2, A347290(n+1))]`
-/

namespace A287113.P12759853520104545742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A347290 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287113.P12759853520104545742

/-! ## A287113.P10425575189241523848

`∑[2-A286998(A286998(n+1)+n+1)]`
-/

namespace A287113.P10425575189241523848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A286998 (A286998 (n + 1) + (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287113.P10425575189241523848

/-! ## A287113.P13986604547669308827

`A140098(A287176(n+1))+1-A287176(n+1)`
-/

namespace A287113.P13986604547669308827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140098 (A287176 (n + 1)).toNat + (1 - A287176 (n + 1))

end

end A287113.P13986604547669308827

/-! ## A287113.P5231234749841401365

`eq[0, A287112(n+1)]+1`
-/

namespace A287113.P5231234749841401365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287112 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287113.P5231234749841401365

/-! ## A287113.P3486760046778262517

`eq[3, A002707(a(A287112(n)))]` with `a(0)=2, a(1)=1`
-/

namespace A287113.P3486760046778262517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A002707 (f2 (A287112 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287113.P3486760046778262517

/-! ## A287113.P7905782005569978232

`eq[1, A102419(a(A287112(n)))]` with `a(0)=2, a(1)=3`
-/

namespace A287113.P7905782005569978232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f2 =>
  A102419 (f2 (A287112 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287113.P7905782005569978232

/-! ## A287113.P9124953831376135983

`eq[3, A162486(a(A287112(n)))]` with `a(0)=1, a(1)=2`
-/

namespace A287113.P9124953831376135983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  A162486 (f2 (A287112 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287113.P9124953831376135983

/-!
# A287114: Positions of 1 in A287112.

The programs for A287114, there is no canonical definition to state claims against.
-/

/-! ## A287114.P6056390233781342293

`A316324(n+1)+1-n`
-/

namespace A287114.P6056390233781342293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316324 (n + 1) + (1 - (n : ℤ))

end

end A287114.P6056390233781342293

/-! ## A287114.P578427419521018582

`record[xor(3, n)]-∑[A287174(n+1)]`
-/

namespace A287114.P578427419521018582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A287114.P578427419521018582

/-! ## A287114.P3313068044445501655

`1-n+A287177(n+1)-A286999(n+1)`
-/

namespace A287114.P3313068044445501655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) + (A287177 (n + 1) - A286999 (n + 1))

end

end A287114.P3313068044445501655

/-! ## A287114.P13612512489938771388

`eq[1, A305389(n)]+1-n`
-/

namespace A287114.P13612512489938771388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + (1 - (n : ℤ))

end

end A287114.P13612512489938771388

/-! ## A287114.P13674898923918781653

`A287113(A286999(n+1))-1`
-/

namespace A287114.P13674898923918781653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287113 (A286999 (n + 1)).toNat - 1

end

end A287114.P13674898923918781653

/-! ## A287114.P8156447685711932993

`eq[1, A287112(n+1)]+1`
-/

namespace A287114.P8156447685711932993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287112 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287114.P8156447685711932993

/-!
# A287115: Positions of 2 in A287112.

The programs for A287115, there is no canonical definition to state claims against.
-/

/-! ## A287115.P13103366336497509526

`A140098(A287000(n+1))+n`
-/

namespace A287115.P13103366336497509526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140098 (A287000 (n + 1)).toNat + (n : ℤ)

end

end A287115.P13103366336497509526

/-! ## A287115.P18349945315235511164

`A287114(A287175(n+1))-2`
-/

namespace A287115.P18349945315235511164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287114 (A287175 (n + 1)).toNat - 2

end

end A287115.P18349945315235511164

/-! ## A287115.P13093247990782388900

`A184820(A287000(n+1))`
-/

namespace A287115.P13093247990782388900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184820 (A287000 (n + 1)).toNat

end

end A287115.P13093247990782388900

/-! ## A287115.P18107542257046234039

`lt[1, A287112(n+1)]+1`
-/

namespace A287115.P18107542257046234039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287112 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A287115.P18107542257046234039

/-! ## A287115.P13405666613686904936

`eq[2, A287112(n+2)]+2`
-/

namespace A287115.P13405666613686904936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287112 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A287115.P13405666613686904936

/-! ## A287115.P13057571439458911410

`eq[1, A102419(a(A287112(n)))]` with `a(0)=3, a(1)=3`
-/

namespace A287115.P13057571439458911410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f2 =>
  A102419 (f2 (A287112 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287115.P13057571439458911410

/-! ## A287115.P10354019905559285305

`eq[2, A287112(A008619(A004273(n)))]`
-/

namespace A287115.P10354019905559285305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287112 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287115.P10354019905559285305

/-! ## A287115.P2836497382419830740

`eq[2, A287112(A233583(n+1))]`
-/

namespace A287115.P2836497382419830740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287112 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287115.P2836497382419830740

/-!
# A287117: Numbers with no odd prime binary proper prefixes.

The programs for A287117, the canonical program `A287117.P12363309979779094861` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287117 has offset 1).

The definition of A287117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 552 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287117.P12363309979779094861

`eq[n, n*a(A292596(n))]` with `a(0)=1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A287117

/-- `eq[n, n*a(A292596(n))]` -/
def P12363309979779094861.Spec : Prop :=
  ∀ n, (P12363309979779094861.a n : ℤ) = A287117 (n + 1)

theorem P12363309979779094861.correct : P12363309979779094861.Spec := by
  intro n
  simp only [A287117, Nat.add_sub_cancel]

end A287117

/-! ## A287117.P18033553053167033205

`eq[1, A160571(A292596(n+1))]+1`
-/

namespace A287117.P18033553053167033205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160571 (A292596 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287117.P18033553053167033205

namespace A287117

/-- `eq[1, A160571(A292596(n+1))]+1` -/
def P18033553053167033205.Spec : Prop :=
  ∀ n, (P18033553053167033205.a n : ℤ) = A287117 (n + 1)

end A287117

/-! ## A287117.P14346929739171951557

`eq[A292596(n+1), A292598(n+1)]+1`
-/

namespace A287117.P14346929739171951557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292598 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A287117.P14346929739171951557

namespace A287117

/-- `eq[A292596(n+1), A292598(n+1)]+1` -/
def P14346929739171951557.Spec : Prop :=
  ∀ n, (P14346929739171951557.a n : ℤ) = A287117 (n + 1)

end A287117

/-! ## A287117.P1883130803865998672

`record[A000027(n+1)/A160571(A292596(n+1))]`
-/

namespace A287117.P1883130803865998672
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A160571 (A292596 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287117.P1883130803865998672

namespace A287117

/-- `record[A000027(n+1)/A160571(A292596(n+1))]` -/
def P1883130803865998672.Spec : Prop :=
  ∀ n, P1883130803865998672.a n = (A287117 (n + 1) : ℚ)

end A287117

/-! ## A287117.P12132235649263413788

`eq[A010051(A000265(n+1)), A292596(n+1)]+1`
-/

namespace A287117.P12132235649263413788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A000265 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292596 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A287117.P12132235649263413788

namespace A287117

/-- `eq[A010051(A000265(n+1)), A292596(n+1)]+1` -/
def P12132235649263413788.Spec : Prop :=
  ∀ n, (P12132235649263413788.a n : ℤ) = A287117 (n + 1)

end A287117

/-!
# A287118: Numbers k such that A284644(k) = A284644(k-1) = A284644(k-2) = A284644(k-3).

The programs for A287118, there is no canonical definition to state claims against.
-/

/-! ## A287118.P8970556167792077593

`A194161(A250655(n+2))`
-/

namespace A287118.P8970556167792077593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194161 (A250655 (n + 2)).toNat

end

end A287118.P8970556167792077593

/-!
# A287120: Number of non-attacking bishop positions on a 3 X n chessboard.

The programs for A287120, there is no canonical definition to state claims against.
-/

/-! ## A287120.P4533051752396255235

`A193350(A201644(n+4))+A020992(2*(n+1))`
-/

namespace A287120.P4533051752396255235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193350 (A201644 (n + 4)).toNat + A020992 (2 * (n + 1))

end

end A287120.P4533051752396255235

/-!
# A287121: 0-limiting word of the morphism 0->10, 1->20, 2->1.

The programs for A287121, there is no canonical definition to state claims against.
-/

/-! ## A287121.P12550098074778957727

`A273132(n+4)%A276330(A256557(n+4))`
-/

namespace A287121.P12550098074778957727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273132 (n + 4)) (A276330 (A256557 (n + 4)).toNat)

end

end A287121.P12550098074778957727

/-! ## A287121.P9017593670923038146

`A060588(lcm(A025487(2*n+5), A320770(n)))`
-/

namespace A287121.P9017593670923038146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060588 (Int.lcm (A025487 (2 * n + 5)) (A320770 n))

end

end A287121.P9017593670923038146

/-! ## A287121.P12966990834382832716

`A013948(A004655(n))%3`
-/

namespace A287121.P12966990834382832716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013948 (A004655 n).toNat) 3

end

end A287121.P12966990834382832716

/-! ## A287121.P11943836480542458726

`A091297(gcd(A042950(n), A305474(n+1)))`
-/

namespace A287121.P11943836480542458726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091297 (Int.gcd (A042950 n) (A305474 (n + 1)))

end

end A287121.P11943836480542458726

/-!
# A287122: Positions of 0 in A287121.

The programs for A287122, there is no canonical definition to state claims against.
-/

/-! ## A287122.P13315912067924127972

`∑[Δ[comp[A287182(n+1)]]+1]`
-/

namespace A287122.P13315912067924127972
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287182 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287122.P13315912067924127972

/-! ## A287122.P8878388338638673403

`eq[0, A287121(n+1)]+1`
-/

namespace A287122.P8878388338638673403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287121 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287122.P8878388338638673403

/-! ## A287122.P1137135936162584255

`eq[1, A265068(a(A287121(n)))]` with `a(0)=0, a(1)=2`
-/

namespace A287122.P1137135936162584255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  A265068 (f2 (A287121 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287122.P1137135936162584255

/-! ## A287122.P11864673833336250516

`eq[1, A297836(a(A287121(n)))]` with `a(0)=0, a(1)=2`
-/

namespace A287122.P11864673833336250516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  A297836 (f2 (A287121 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287122.P11864673833336250516

/-! ## A287122.P12851668439768463574

`eq[1, A305298(a(A287121(n)))]` with `a(0)=0, a(1)=2`
-/

namespace A287122.P12851668439768463574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  A305298 (f2 (A287121 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287122.P12851668439768463574

/-! ## A287122.P14205035289346832241

`eq[1, A048498(a(A287121(n)))]` with `a(0)=0, a(1)=18`
-/

namespace A287122.P14205035289346832241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 18] fun n f2 =>
  A048498 (f2 (A287121 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287122.P14205035289346832241

/-! ## A287122.P16375876302830588167

`eq[1, A218544(a(A287121(n)))]` with `a(0)=0, a(1)=18`
-/

namespace A287122.P16375876302830588167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 18] fun n f2 =>
  A218544 (f2 (A287121 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287122.P16375876302830588167

/-! ## A287122.P6385476411247506117

`eq[1, A001222(a(A287121(n)))]` with `a(0)=2, a(1)=18`
-/

namespace A287122.P6385476411247506117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 18] fun n f2 =>
  A001222 (f2 (A287121 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287122.P6385476411247506117

/-!
# A287123: Positions of 1 in A287121.

The programs for A287123, there is no canonical definition to state claims against.
-/

/-! ## A287123.P9110395064578306848

`eq[1, A287121(n+1)]+1`
-/

namespace A287123.P9110395064578306848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287121 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287123.P9110395064578306848

/-! ## A287123.P6100989473871765189

`eq[1, a(A287121(n))/2]` with `a(0)=0, a(1)=2`
-/

namespace A287123.P6100989473871765189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  f2 (A287121 n).toNat / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A287123.P6100989473871765189

/-! ## A287123.P14171904207811502380

`eq[1, A218544(a(A287121(n)))]` with `a(0)=18, a(1)=0`
-/

namespace A287123.P14171904207811502380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [18, 0] fun n f2 =>
  A218544 (f2 (A287121 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287123.P14171904207811502380

/-! ## A287123.P4939513295836585586

`eq[1, A007318(a(A287121(n)))]` with `a(0)=29, a(1)=0`
-/

namespace A287123.P4939513295836585586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [29, 0] fun n f2 =>
  A007318 (f2 (A287121 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287123.P4939513295836585586

/-! ## A287123.P11902915733538866992

`eq[1, A048498(a(A287121(n)))]` with `a(0)=2, a(1)=0, a(2)=18`
-/

namespace A287123.P11902915733538866992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 18] fun n f2 =>
  A048498 (f2 (A287121 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287123.P11902915733538866992

/-! ## A287123.P1532615154972945178

`A056239(p?[A008864(n+1)-A287121(n+1)])`
-/

namespace A287123.P1532615154972945178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - A287121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A287123.P1532615154972945178

/-! ## A287123.P10287774481406534362

`eq[1, A287121(A233583(n+1))]`
-/

namespace A287123.P10287774481406534362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287121 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287123.P10287774481406534362

/-!
# A287124: Positions of 2 in A287121.

The programs for A287124, there is no canonical definition to state claims against.
-/

/-! ## A287124.P2290536080697920634

`eq[2, A287121(n+1)]+1`
-/

namespace A287124.P2290536080697920634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287121 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287124.P2290536080697920634

/-! ## A287124.P462924575219427571

`eq[1, log2(a(A287121(n)))]` with `a(0)=4, a(1)=1`
-/

namespace A287124.P462924575219427571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.rec [4, 1] fun n f2 =>
  Real.logb 2 (f2 (A287121 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A287124.P462924575219427571

/-! ## A287124.P14204363885740028978

`eq[1, A218544(a(A287121(n)))]` with `a(0)=2, a(1)=1, a(2)=0`
-/

namespace A287124.P14204363885740028978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 0] fun n f2 =>
  A218544 (f2 (A287121 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287124.P14204363885740028978

/-! ## A287124.P4927770733066075628

`A008619(record[n*A287121(n+1)])`
-/

namespace A287124.P4927770733066075628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A287121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A287124.P4927770733066075628

/-! ## A287124.P11267731650329946414

`A028242(record[n*A287121(n+1)])`
-/

namespace A287124.P11267731650329946414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A287121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A287124.P11267731650329946414

/-! ## A287124.P15740428417029567976

`A110514(record[n*A287121(n+1)])`
-/

namespace A287124.P15740428417029567976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A287121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A287124.P15740428417029567976

/-! ## A287124.P10355349571298065969

`A131732(record[n*A287121(n+1)])`
-/

namespace A287124.P10355349571298065969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A287121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A287124.P10355349571298065969

/-!
# A287125: Fixed point of the mapping 00->001, 1->110, starting with 00.

The programs for A287125, there is no canonical definition to state claims against.
-/

/-! ## A287125.P12196331265907453320

`char[A287127(n+1)-1]`
-/

namespace A287125.P12196331265907453320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287127 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A287125.P12196331265907453320

/-! ## A287125.P13759203005755920269

`char[comp[A287126(n+1)-1]]`
-/

namespace A287125.P13759203005755920269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287126 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A287125.P13759203005755920269

/-! ## A287125.P7065256553011678446

`char[abs(A287127(Δ[n²]-n)-1)]`
-/

namespace A287125.P7065256553011678446
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A287127 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat - 1|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A287125.P7065256553011678446

/-! ## A287125.P8230206073993541580

`1-char[A287126(xor(1, n)+1)-1]`
-/

namespace A287125.P8230206073993541580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287126 (Nat.xor 1 n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A287125.P8230206073993541580

/-! ## A287125.P10870626867034301387

`1-char[A287126(abs(xor(n, -2)))-1]`
-/

namespace A287125.P10870626867034301387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287126 |Int.xor (n : ℤ) (-2)|.toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A287125.P10870626867034301387

/-! ## A287125.P18137987950302940589

`char[A001478(n+1)+A287127(n+1)+n]`
-/

namespace A287125.P18137987950302940589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A287127 (n + 1) + (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A287125.P18137987950302940589

/-! ## A287125.P11638924999576023691

`char[A317950(gcd(n, n+1))+A287127(n+1)]`
-/

namespace A287125.P11638924999576023691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317950 (Nat.gcd n (n + 1)) + A287127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A287125.P11638924999576023691

/-! ## A287125.P15097343482645713014

`A002264(Δ[A287126(A028310(n))])`
-/

namespace A287125.P15097343482645713014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287126 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (f1 (n + 1) - f1 n).toNat

end

end A287125.P15097343482645713014

/-! ## A287125.P2825742891815143998

`A122200(Δ[comp[A287126(n+1)+n]])`
-/

namespace A287125.P2825742891815143998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287126 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122200 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A287125.P2825742891815143998

/-! ## A287125.P7443952968446380871

`A288375(Δ[comp[A287126(n+1)+n]])`
-/

namespace A287125.P7443952968446380871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287126 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288375 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A287125.P7443952968446380871

/-! ## A287125.P17567320676148883167

`1-A001221(Δ[comp[A287126(n+1)+n]])`
-/

namespace A287125.P17567320676148883167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287126 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001221 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A287125.P17567320676148883167

/-! ## A287125.P12282224749356632365

`A294448(Δ[comp[A287126(n+1)+n]]+2)`
-/

namespace A287125.P12282224749356632365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287126 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294448 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2).toNat

end

end A287125.P12282224749356632365

/-! ## A287125.P17137521220698188340

`1-char[A287126(A194922(n+1))-1]`
-/

namespace A287125.P17137521220698188340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287126 (A194922 (n + 1)).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A287125.P17137521220698188340

/-!
# A287126: Positions of 0 in A287125; complement of A287127.

The programs for A287126, there is no canonical definition to state claims against.
-/

/-! ## A287126.P14116365695514975030

`lt[A287125(n+1), 1]+1`
-/

namespace A287126.P14116365695514975030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287125 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A287126.P14116365695514975030

/-! ## A287126.P7696887061304603429

`lt[n*char[A287127(n+1)], n]`
-/

namespace A287126.P7696887061304603429
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287127 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A287126.P7696887061304603429

/-! ## A287126.P1320276057632140908

`lt[n*A287125(A028310(n)), n]`
-/

namespace A287126.P1320276057632140908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A287125 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A287126.P1320276057632140908

/-! ## A287126.P4808343842184408848

`record[n+1-A107959(n)*A287125(n+1)]`
-/

namespace A287126.P4808343842184408848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A107959 n * A287125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287126.P4808343842184408848

/-! ## A287126.P4015448677281369184

`record[(n+1)/A064986(n*A287125(n+1))]`
-/

namespace A287126.P4015448677281369184
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A064986 ((n : ℤ) * A287125 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287126.P4015448677281369184

/-! ## A287126.P17893932567614758201

`record[n+1-A005117(n+1)*A287125(n+1)]`
-/

namespace A287126.P17893932567614758201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A005117 (n + 1) * A287125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287126.P17893932567614758201

/-! ## A287126.P811140368053174266

`record[n+1-A102700(n+1)*A287125(n+1)]`
-/

namespace A287126.P811140368053174266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A102700 (n + 1) * A287125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287126.P811140368053174266

/-! ## A287126.P15267001763410533642

`lt[A287125(A028310(n)), A057427(n)]`
-/

namespace A287126.P15267001763410533642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287125 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A287126.P15267001763410533642

/-! ## A287126.P14140937541977839975

`A000720(p?[A287125(n+1)+A000040(n+1)])`
-/

namespace A287126.P14140937541977839975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287125 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A287126.P14140937541977839975

/-! ## A287126.P9620093424448227072

`A061395(p?[A287125(n+1)+A000040(n+1)])`
-/

namespace A287126.P9620093424448227072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287125 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A287126.P9620093424448227072

/-!
# A287127: Positions of 1 in A287125; complement of A287126.

The programs for A287127, there is no canonical definition to state claims against.
-/

/-! ## A287127.P15816479713427890600

`comp[A287126(n+1)-1]+1`
-/

namespace A287127.P15816479713427890600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287126 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A287127.P15816479713427890600

/-! ## A287127.P5915855606053174327

`filter[n+1, A287125(#)]`
-/

namespace A287127.P5915855606053174327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A287125 (f1 j) = 1) n)

end

end A287127.P5915855606053174327

/-! ## A287127.P12838200421011231519

`eq[1, A287125(n+1)]+1`
-/

namespace A287127.P12838200421011231519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287125 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287127.P12838200421011231519

/-! ## A287127.P15314731337856773192

`lt[0, A287125(A028310(n))]`
-/

namespace A287127.P15314731337856773192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287125 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A287127.P15314731337856773192

/-! ## A287127.P6187165781037036911

`A000720(p?[A000040(n+1)*A287125(n+1)])`
-/

namespace A287127.P6187165781037036911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A287125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A287127.P6187165781037036911

/-! ## A287127.P14767551891522295284

`A061395(p?[A000040(n+1)*A287125(n+1)])`
-/

namespace A287127.P14767551891522295284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A287125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A287127.P14767551891522295284

/-! ## A287127.P15614811177171220278

`eq[1, A287125(A065033(2*n))]`
-/

namespace A287127.P15614811177171220278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287125 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287127.P15614811177171220278

/-! ## A287127.P10397217344513629828

`eq[1, A287125(A233583(n+1))]`
-/

namespace A287127.P10397217344513629828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287125 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287127.P10397217344513629828

/-!
# A287128: a(n) = 3*a(n-1) - 2*a(n-2) + 2*a(n-3) - 4*a(n-4) + 2*a(n-5), where a(0) = 2, a(1) =3, a(2) = 6, a(3)=13, a(4) = 29.

The programs for A287128, the canonical program `A287128.P17807603395079252034` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287128 has offset 0).

The definition of A287128 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287128.P17807603395079252034

`3*a(n-1)-2*a(n-2)+2*a(n-3)-4*a(n-4)+2*a(n-5)` with `a(0)=2, a(1)=3, a(2)=6, a(3)=13, a(4)=29`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A287128

/-- `3*a(n-1)-2*a(n-2)+2*a(n-3)-4*a(n-4)+2*a(n-5)` -/
def P17807603395079252034.Spec : Prop :=
  ∀ n, P17807603395079252034.a n = A287128 n

theorem P17807603395079252034.correct : P17807603395079252034.Spec := by
  intro n
  simp only [A287128]

end A287128

/-! ## A287128.P9374089993024931786

`A287126(a(n-1)+1)-3` with `a(0)=2`
-/

namespace A287128.P9374089993024931786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A287126 (a (n - 1) + 1).toNat - 3

end

end A287128.P9374089993024931786

namespace A287128

/-- `A287126(a(n-1)+1)-3` -/
def P9374089993024931786.Spec : Prop :=
  ∀ n, P9374089993024931786.a n = A287128 n

end A287128

/-! ## A287128.P9123316242474510866

`A289436(A287126(2*a(n-1)-1))` with `a(0)=2`
-/

namespace A287128.P9123316242474510866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A289436 (A287126 (2 * a (n - 1) - 1).toNat).toNat

end

end A287128.P9123316242474510866

namespace A287128

/-- `A289436(A287126(2*a(n-1)-1))` -/
def P9123316242474510866.Spec : Prop :=
  ∀ n, P9123316242474510866.a n = A287128 n

end A287128

/-! ## A287128.P13208291791761688754

`A325352(ceil(2^(n-1)))+floor((9/4)^n)`
-/

namespace A287128.P13208291791761688754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325352 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat + ⌊((9 : ℚ) / 4) ^ n⌋

end

end A287128.P13208291791761688754

namespace A287128

/-- `A325352(ceil(2^(n-1)))+floor((9/4)^n)` -/
def P13208291791761688754.Spec : Prop :=
  ∀ n, P13208291791761688754.a n = A287128 n

end A287128

/-!
# A287129: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 245", based on the 5-celled von Neumann neighborhood.

The programs for A287129, there is no canonical definition to state claims against.
-/

/-! ## A287129.P18429066107047782843

`A288020(n)-char[2]`
-/

namespace A287129.P18429066107047782843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288020 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A287129.P18429066107047782843

/-! ## A287129.P5117317650301329965

`A266678(n)*A288020(n)`
-/

namespace A287129.P5117317650301329965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266678 n * A288020 n

end

end A287129.P5117317650301329965

/-! ## A287129.P9579417955470127333

`xor(A185012(n), A288020(n))`
-/

namespace A287129.P9579417955470127333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185012 n) (A288020 n)

end

end A287129.P9579417955470127333

/-! ## A287129.P9107369399877701079

`lcm(A171905(n+1), A288020(n))`
-/

namespace A287129.P9107369399877701079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A171905 (n + 1)) (A288020 n)

end

end A287129.P9107369399877701079

/-! ## A287129.P9967246194857532201

`xor(char[A142602(n+1)], A288020(n))`
-/

namespace A287129.P9967246194857532201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142602 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A288020 n)

end

end A287129.P9967246194857532201

/-! ## A287129.P302511776448721916

`xor(char[A020639(2*(n+1))], A288020(n))`
-/

namespace A287129.P302511776448721916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A288020 n)

end

end A287129.P302511776448721916

/-! ## A287129.P5110597411430450688

`A081753(A081753(n)+2)*A288020(n)`
-/

namespace A287129.P5110597411430450688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A081753 n + 2).toNat * A288020 n

end

end A287129.P5110597411430450688

/-!
# A287130: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 245", based on the 5-celled von Neumann neighborhood.

The programs for A287130, there is no canonical definition to state claims against.
-/

/-! ## A287130.P10202202603606794771

`(1-char[2])*A288761(n)`
-/

namespace A287130.P10202202603606794771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A288761 n

end

end A287130.P10202202603606794771

/-! ## A287130.P10801629574312501102

`lcm(A288699(n), A288761(n))`
-/

namespace A287130.P10801629574312501102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A288699 n) (A288761 n)

end

end A287130.P10801629574312501102

/-! ## A287130.P5777146416627240406

`A288761(n-A185012(n))-A185012(n)`
-/

namespace A287130.P5777146416627240406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288761 ((n : ℤ) - A185012 n).toNat - A185012 n

end

end A287130.P5777146416627240406

/-! ## A287130.P2433114058044275803

`A266678(n)*A288761(n)*A266678(n)`
-/

namespace A287130.P2433114058044275803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266678 n * A288761 n * A266678 n

end

end A287130.P2433114058044275803

/-! ## A287130.P1003072594766122177

`A288761(n)/A288762(n)*A287131(n)`
-/

namespace A287130.P1003072594766122177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288761 n : ℚ) / (A288762 n : ℚ) * (A287131 n : ℚ)

end

end A287130.P1003072594766122177

/-!
# A287131: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 245", based on the 5-celled von Neumann neighborhood.

The programs for A287131, there is no canonical definition to state claims against.
-/

/-! ## A287131.P13949957711830005536

`A288762(n)-char[2]`
-/

namespace A287131.P13949957711830005536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288762 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A287131.P13949957711830005536

/-! ## A287131.P5079641956785414579

`A266678(n)*A288762(n)`
-/

namespace A287131.P5079641956785414579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266678 n * A288762 n

end

end A287131.P5079641956785414579

/-! ## A287131.P740349109989379395

`and(A287192(n), A288762(n))`
-/

namespace A287131.P740349109989379395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A287192 n) (A288762 n)

end

end A287131.P740349109989379395

/-! ## A287131.P3453025824984646005

`xor(A185012(n), A288762(n))`
-/

namespace A287131.P3453025824984646005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185012 n) (A288762 n)

end

end A287131.P3453025824984646005

/-! ## A287131.P17148559046672256406

`lcm(A171905(n+1), A288762(n))`
-/

namespace A287131.P17148559046672256406
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A171905 (n + 1)) (A288762 n)

end

end A287131.P17148559046672256406

/-! ## A287131.P10588179004388738887

`A171905(n+1)*A288762(n*A171905(n+1))`
-/

namespace A287131.P10588179004388738887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171905 (n + 1) * A288762 ((n : ℤ) * A171905 (n + 1)).toNat

end

end A287131.P10588179004388738887

/-! ## A287131.P15009588913181032254

`A288762(n)%A266699(n)`
-/

namespace A287131.P15009588913181032254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288762 n) (A266699 n)

end

end A287131.P15009588913181032254

/-!
# A287132: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 245", based on the 5-celled von Neumann neighborhood.

The programs for A287132, the canonical program `A287132.P3849054294059386704` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287132 has offset 0).

The definition of A287132 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287132.P4141931226693396931

`(1-char[2])*A288763(n)`
-/

namespace A287132.P4141931226693396931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A288763 n

end

end A287132.P4141931226693396931

namespace A287132

/-- `(1-char[2])*A288763(n)` -/
def P4141931226693396931.Spec : Prop :=
  ∀ n, P4141931226693396931.a n = A287132 n

end A287132

/-! ## A287132.P14977823100562732372

`A288763(n-char[2])-char[2]`
-/

namespace A287132.P14977823100562732372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288763 (n - (if ∃ j, f1 j = n then 1 else 0)) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A287132.P14977823100562732372

namespace A287132

/-- `A288763(n-char[2])-char[2]` -/
def P14977823100562732372.Spec : Prop :=
  ∀ n, P14977823100562732372.a n = A287132 n

end A287132

/-! ## A287132.P5969849827965299285

`lcm(A288699(n), A288763(n))`
-/

namespace A287132.P5969849827965299285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A288699 n) (A288763 n)

end

end A287132.P5969849827965299285

namespace A287132

/-- `lcm(A288699(n), A288763(n))` -/
def P5969849827965299285.Spec : Prop :=
  ∀ n, (P5969849827965299285.a n : ℤ) = A287132 n

end A287132

/-! ## A287132.P3849054294059386704

`and(A287193(n), A288763(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A287132

/-- `and(A287193(n), A288763(n))` -/
def P3849054294059386704.Spec : Prop :=
  ∀ n, P3849054294059386704.a n = A287132 n

theorem P3849054294059386704.correct : P3849054294059386704.Spec := by
  intro n
  simp only [A287132]

end A287132

/-! ## A287132.P14524002219709541269

`A288763(n)%A299447(n+1)`
-/

namespace A287132.P14524002219709541269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288763 n) (A299447 (n + 1))

end

end A287132.P14524002219709541269

namespace A287132

/-- `A288763(n)%A299447(n+1)` -/
def P14524002219709541269.Spec : Prop :=
  ∀ n, P14524002219709541269.a n = A287132 n

end A287132

/-! ## A287132.P2072324606257887879

`A288763(n)%A221172(n)`
-/

namespace A287132.P2072324606257887879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288763 n) (A221172 n)

end

end A287132.P2072324606257887879

namespace A287132

/-- `A288763(n)%A221172(n)` -/
def P2072324606257887879.Spec : Prop :=
  ∀ n, P2072324606257887879.a n = A287132 n

end A287132

/-! ## A287132.P15166667963873187278

`and(A267614(n), A288763(n))`
-/

namespace A287132.P15166667963873187278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267614 n) (A288763 n)

end

end A287132.P15166667963873187278

namespace A287132

/-- `and(A267614(n), A288763(n))` -/
def P15166667963873187278.Spec : Prop :=
  ∀ n, P15166667963873187278.a n = A287132 n

end A287132

/-! ## A287132.P9953971866745028721

`and(A263245(n), A288763(n))`
-/

namespace A287132.P9953971866745028721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A263245 n) (A288763 n)

end

end A287132.P9953971866745028721

namespace A287132

/-- `and(A263245(n), A288763(n))` -/
def P9953971866745028721.Spec : Prop :=
  ∀ n, P9953971866745028721.a n = A287132 n

end A287132

/-! ## A287132.P16495081287831493739

`and(A267935(n), A288763(n))`
-/

namespace A287132.P16495081287831493739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267935 n) (A288763 n)

end

end A287132.P16495081287831493739

namespace A287132

/-- `and(A267935(n), A288763(n))` -/
def P16495081287831493739.Spec : Prop :=
  ∀ n, P16495081287831493739.a n = A287132 n

end A287132

/-! ## A287132.P752804455669023730

`and(A086827(n+1), A288763(n))`
-/

namespace A287132.P752804455669023730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086827 (n + 1)) (A288763 n)

end

end A287132.P752804455669023730

namespace A287132

/-- `and(A086827(n+1), A288763(n))` -/
def P752804455669023730.Spec : Prop :=
  ∀ n, P752804455669023730.a n = A287132 n

end A287132

/-!
# A287133: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 246", based on the 5-celled von Neumann neighborhood.

The programs for A287133, there is no canonical definition to state claims against.
-/

/-! ## A287133.P16450398911646689184

`A007088(A287135(n))`
-/

namespace A287133.P16450398911646689184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287135 n).toNat

end

end A287133.P16450398911646689184

/-! ## A287133.P10432791174682393665

`A185544(2*A287135(n))`
-/

namespace A287133.P10432791174682393665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287135 n).toNat

end

end A287133.P10432791174682393665

/-! ## A287133.P10597061120108944026

`A112867(A383372(n))`
-/

namespace A287133.P10597061120108944026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112867 (A383372 n).toNat

end

end A287133.P10597061120108944026

/-! ## A287133.P5156497125964374596

`A112867(∑[A168049(n)])`
-/

namespace A287133.P5156497125964374596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112867 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A287133.P5156497125964374596

/-!
# A287134: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 246", based on the 5-celled von Neumann neighborhood.

The programs for A287134, there is no canonical definition to state claims against.
-/

/-! ## A287134.P3520542901080383099

`A007088(A287136(n))`
-/

namespace A287134.P3520542901080383099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287136 n).toNat

end

end A287134.P3520542901080383099

/-! ## A287134.P9103879811424173756

`A185544(2*A287136(n))`
-/

namespace A287134.P9103879811424173756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287136 n).toNat

end

end A287134.P9103879811424173756

/-! ## A287134.P12893908344894111231

`A007088(∏[gcd(14, A321674(n+2))])`
-/

namespace A287134.P12893908344894111231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 14 (A321674 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A287134.P12893908344894111231

/-! ## A287134.P7590160956800750382

`lcm(A112867(A259117(n+2)), A286508(n))`
-/

namespace A287134.P7590160956800750382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A112867 (A259117 (n + 2)).toNat) (A286508 n)

end

end A287134.P7590160956800750382

/-!
# A287136: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 246", based on the 5-celled von Neumann neighborhood.

The programs for A287136, there is no canonical definition to state claims against.
-/

/-! ## A287136.P2962850551942259977

`lcm(A002024(A111235(n+1)), A060546(n))`
-/

namespace A287136.P2962850551942259977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002024 (A111235 (n + 1)).toNat) (A060546 n)

end

end A287136.P2962850551942259977

/-! ## A287136.P4372830179189793353

`Δ[A163511(Δ[A018391(n+4)])]`
-/

namespace A287136.P4372830179189793353
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018391 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287136.P4372830179189793353

/-! ## A287136.P4792522545755833932

`A060546(n)*A124389(A052907(n))`
-/

namespace A287136.P4792522545755833932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n * A124389 (A052907 n).toNat

end

end A287136.P4792522545755833932

/-! ## A287136.P2734017928841798262

`lcm(A002635(A009543(n)), A060546(n))`
-/

namespace A287136.P2734017928841798262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002635 (A009543 n).toNat) (A060546 n)

end

end A287136.P2734017928841798262

/-!
# A287137: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 249", based on the 5-celled von Neumann neighborhood.

The programs for A287137, there is no canonical definition to state claims against.
-/

/-! ## A287137.P1844343074509341841

`A007088(A287139(n))`
-/

namespace A287137.P1844343074509341841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287139 n).toNat

end

end A287137.P1844343074509341841

/-! ## A287137.P654359188469707683

`A185544(2*A287139(n))`
-/

namespace A287137.P654359188469707683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287139 n).toNat

end

end A287137.P654359188469707683

/-! ## A287137.P9350627170851098886

`A288768(n)-A007095(A184955((3-n)²))`
-/

namespace A287137.P9350627170851098886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288768 n - A007095 (A184955 ((3 - (n : ℤ)) ^ 2).toNat).toNat

end

end A287137.P9350627170851098886

/-!
# A287138: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 249", based on the 5-celled von Neumann neighborhood.

The programs for A287138, there is no canonical definition to state claims against.
-/

/-! ## A287138.P8899934927806181873

`A007088(A287140(n))`
-/

namespace A287138.P8899934927806181873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287140 n).toNat

end

end A287138.P8899934927806181873

/-! ## A287138.P8203230120573999764

`A185544(2*A287140(n))`
-/

namespace A287138.P8203230120573999764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287140 n).toNat

end

end A287138.P8203230120573999764

/-! ## A287138.P1886023533789951393

`A185544(A287140(n)+A287140(n))`
-/

namespace A287138.P1886023533789951393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A287140 n + A287140 n).toNat

end

end A287138.P1886023533789951393

/-! ## A287138.P3312810331902401474

`A288702(or(A004869(n+1), A030102(n)))`
-/

namespace A287138.P3312810331902401474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288702 (Int.lor (A004869 (n + 1)) (A030102 n)).toNat

end

end A287138.P3312810331902401474

/-!
# A287139: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 249", based on the 5-celled von Neumann neighborhood.

The programs for A287139, there is no canonical definition to state claims against.
-/

/-! ## A287139.P14924126141895230323

`or(A006519(n+1), A288704(A087051(n)))`
-/

namespace A287139.P14924126141895230323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006519 (n + 1)) (A288704 (A087051 n).toNat)

end

end A287139.P14924126141895230323

/-! ## A287139.P14778273832037481991

`or(A079242(A033677(n+1)), A288704(n))`
-/

namespace A287139.P14778273832037481991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A079242 (A033677 (n + 1)).toNat) (A288704 n)

end

end A287139.P14778273832037481991

/-! ## A287139.P6496759787527697859

`A288803(n)-A065335(A271870(n))`
-/

namespace A287139.P6496759787527697859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288803 n - A065335 (A271870 n).toNat

end

end A287139.P6496759787527697859

/-! ## A287139.P14009884777690968662

`A287096(n)+A098804(A139526(n+2))`
-/

namespace A287139.P14009884777690968662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287096 n + A098804 (A139526 (n + 2)).toNat

end

end A287139.P14009884777690968662

/-!
# A287140: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 249", based on the 5-celled von Neumann neighborhood.

The programs for A287140, there is no canonical definition to state claims against.
-/

/-! ## A287140.P18189014002613468300

`or(A057637(A323949(n)), A288705(n))`
-/

namespace A287140.P18189014002613468300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057637 (A323949 n).toNat) (A288705 n)

end

end A287140.P18189014002613468300

/-!
# A287141: Numbers of closed affine (a.k.a. BCK) lambda terms of natural size n.

The programs for A287141, there is no canonical definition to state claims against.
-/

/-! ## A287141.P2233895476164312608

`A098357(A212422(n+1))`
-/

namespace A287141.P2233895476164312608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098357 (A212422 (n + 1)).toNat

end

end A287141.P2233895476164312608

/-! ## A287141.P12544897773725347274

`A342382(A097779(n+1))`
-/

namespace A287141.P12544897773725347274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342382 (A097779 (n + 1)).toNat

end

end A287141.P12544897773725347274

/-! ## A287141.P3590356492182528087

`A000196(A189565(n)+2)-1`
-/

namespace A287141.P3590356492182528087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A189565 n + 2).toNat - 1

end

end A287141.P3590356492182528087

/-! ## A287141.P7545407671612591907

`∑[A147447(n+1)%A147483(3*n+1)]`
-/

namespace A287141.P7545407671612591907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147447 (n + 1)) (A147483 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287141.P7545407671612591907

/-! ## A287141.P15987965843309049711

`∑[A147449(2*(n+2))%A147483(3*n+1)]`
-/

namespace A287141.P15987965843309049711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147449 (2 * (n + 2))) (A147483 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287141.P15987965843309049711

/-!
# A287142: Least k such that the number of pairs of consecutive divisors of k equals n.

The programs for A287142, there is no canonical definition to state claims against.
-/

/-! ## A287142.P1342879208703248348

`A088726(A129308(a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A287142.P1342879208703248348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A088726 (A129308 (a (n - 1)).toNat).toNat

end

end A287142.P1342879208703248348

/-! ## A287142.P6794096066786555590

`A328450(A129308(A328450(n)))`
-/

namespace A287142.P6794096066786555590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328450 (A129308 (A328450 n).toNat).toNat

end

end A287142.P6794096066786555590

/-! ## A287142.P9459095551258153774

`A328450(C(A060126(n), A008406(n+1)))`
-/

namespace A287142.P9459095551258153774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328450 (Nat.choose (A060126 n).toNat (A008406 (n + 1)).toNat)

end

end A287142.P9459095551258153774

/-! ## A287142.P11432108363313447289

`A328450(A008406(n+1)²*A060126(n))`
-/

namespace A287142.P11432108363313447289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328450 (A008406 (n + 1) ^ 2 * A060126 n).toNat

end

end A287142.P11432108363313447289

/-!
# A287143: Expansion of x*(1 + 3*x + x^2)/((1 - x)^5*(1 + x)^4).

The programs for A287143, the canonical program `A287143.P12007516420090174931` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287143 has offset 0).

The definition of A287143 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+3x^2+x^3)/(1-x-4x^2+4x^3+6x^4-6x^5-4x^6+4x^7+x^8-x^9))` (program `A287143.P12007516420090174931`, by `A287143.P12007516420090174931.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A287143.P12007516420090174931

`ogf((x+3x^2+x^3)/(1-x-4x^2+4x^3+6x^4-6x^5-4x^6+4x^7+x^8-x^9))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A287143

/-- `ogf((x+3x^2+x^3)/(1-x-4x^2+4x^3+6x^4-6x^5-4x^6+4x^7+x^8-x^9))` -/
def P12007516420090174931.Spec : Prop :=
  ∀ n, P12007516420090174931.a n = A287143 n

theorem P12007516420090174931.correct : P12007516420090174931.Spec := by
  intro n
  simp only [A287143]

end A287143

/-! ## A287143.P3696424980961276882

`∑[A188067(n)+∑[A110654(n)]]`
-/

namespace A287143.P3696424980961276882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188067 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287143.P3696424980961276882

namespace A287143

/-- `∑[A188067(n)+∑[A110654(n)]]` -/
def P3696424980961276882.Spec : Prop :=
  ∀ n, P3696424980961276882.a n = A287143 n

end A287143

/-! ## A287143.P12497199751390103233

`∑[A006918(n)+A000292(A142150(n))]`
-/

namespace A287143.P12497199751390103233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n + A000292 (A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287143.P12497199751390103233

namespace A287143

/-- `∑[A006918(n)+A000292(A142150(n))]` -/
def P12497199751390103233.Spec : Prop :=
  ∀ n, P12497199751390103233.a n = A287143 n

end A287143

/-! ## A287143.P12381973008325290773

`∑[A006918(n)/2*A020639(A017197(n))]`
-/

namespace A287143.P12381973008325290773
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006918 n : ℚ) / 2 * (A020639 (A017197 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287143.P12381973008325290773

namespace A287143

/-- `∑[A006918(n)/2*A020639(A017197(n))]` -/
def P12381973008325290773.Spec : Prop :=
  ∀ n, P12381973008325290773.a n = (A287143 n : ℚ)

end A287143

/-! ## A287143.P367641859578837789

`A330299(n+4)+A000332(A110654(n)+3)`
-/

namespace A287143.P367641859578837789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330299 (n + 4) + A000332 (A110654 n + 3).toNat

end

end A287143.P367641859578837789

namespace A287143

/-- `A330299(n+4)+A000332(A110654(n)+3)` -/
def P367641859578837789.Spec : Prop :=
  ∀ n, P367641859578837789.a n = A287143 n

end A287143

/-! ## A287143.P10008344881359036998

`A330299(n+4)+A000332(A008619(n+5))`
-/

namespace A287143.P10008344881359036998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330299 (n + 4) + A000332 (A008619 (n + 5)).toNat

end

end A287143.P10008344881359036998

namespace A287143

/-- `A330299(n+4)+A000332(A008619(n+5))` -/
def P10008344881359036998.Spec : Prop :=
  ∀ n, P10008344881359036998.a n = A287143 n

end A287143

/-! ## A287143.P16071187139143692580

`A330299(n+4)+A000332(A123108(n+7))`
-/

namespace A287143.P16071187139143692580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330299 (n + 4) + A000332 (A123108 (n + 7)).toNat

end

end A287143.P16071187139143692580

namespace A287143

/-- `A330299(n+4)+A000332(A123108(n+7))` -/
def P16071187139143692580.Spec : Prop :=
  ∀ n, P16071187139143692580.a n = A287143 n

end A287143

/-!
# A287146: Number of partitions of n into distinct parts such that the absolute difference between any part and the sum of all smaller parts is not larger than one.

The programs for A287146, there is no canonical definition to state claims against.
-/

/-! ## A287146.P15141464804351619831

`A352516(A151800(3*n)*A307223(n+1))`
-/

namespace A287146.P15141464804351619831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352516 (A151800 (3 * n) * A307223 (n + 1)).toNat

end

end A287146.P15141464804351619831

/-! ## A287146.P14711927807232882427

`A085838(A329278(n)%A090034(n))`
-/

namespace A287146.P14711927807232882427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085838 (Int.tmod (A329278 n) (A090034 n)).toNat

end

end A287146.P14711927807232882427

/-! ## A287146.P13690531010702516488

`A322338(A059894(3*n+1)+4)`
-/

namespace A287146.P13690531010702516488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322338 (A059894 (3 * n + 1) + 4).toNat

end

end A287146.P13690531010702516488

/-! ## A287146.P10694316443522338209

`A131964(A005811(n)^A086063(n))`
-/

namespace A287146.P10694316443522338209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131964 (SequenceMachineLib.roundAway ((A005811 n : ℚ) ^ (A086063 n : ℤ))).toNat

end

end A287146.P10694316443522338209

/-! ## A287146.P11290341871839610627

`A108934(A255468(n)%A008458(n))`
-/

namespace A287146.P11290341871839610627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108934 (Int.tmod (A255468 n) (A008458 n)).toNat

end

end A287146.P11290341871839610627

/-!
# A287147: Primes p that set a new record for the size of the smallest b > 1 such that b^(p-1) == 1 (mod p^2).

The programs for A287147, there is no canonical definition to state claims against.
-/

/-! ## A287147.P5363594536658531070

`record[p?[A071585(A261275(n))]]`
-/

namespace A287147.P5363594536658531070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A261275 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287147.P5363594536658531070

/-! ## A287147.P14263661878423102186

`record[p?[A066657(A093422(n+1))]]`
-/

namespace A287147.P14263661878423102186
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 (A093422 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287147.P14263661878423102186

/-!
# A287148: Number of compositions (ordered partitions) of 2*n-1 into primes of form x^2 + y^2.

The programs for A287148, there is no canonical definition to state claims against.
-/

/-! ## A287148.P12646492156926698170

`A282971(Δ[n²])`
-/

namespace A287148.P12646492156926698170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282971 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A287148.P12646492156926698170

/-! ## A287148.P1490212700690099608

`or(char[2], A282971(2*n+1))`
-/

namespace A287148.P1490212700690099608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A282971 (2 * n + 1))

end

end A287148.P1490212700690099608

/-! ## A287148.P10419461887635640823

`A282971(2*n+1)+A000007(n+2)`
-/

namespace A287148.P10419461887635640823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282971 (2 * n + 1) + A000007 (n + 2)

end

end A287148.P10419461887635640823

/-! ## A287148.P13788866094140956833

`A282971(n+1+n)%(3^n)`
-/

namespace A287148.P13788866094140956833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282971 (n + 1 + n)) (3 ^ n : ℤ)

end

end A287148.P13788866094140956833

/-! ## A287148.P9662282609871447700

`A282971(2*n+1)+A185284(A263234(n+1))`
-/

namespace A287148.P9662282609871447700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282971 (2 * n + 1) + A185284 (A263234 (n + 1)).toNat

end

end A287148.P9662282609871447700

/-!
# A287149: Number of arrangements of n circles in the affine plane having only one island or region, which is formed by the union of all solid circles of the arrangement.

The programs for A287149, there is no canonical definition to state claims against.
-/

/-! ## A287149.P14638958359707577677

`ceil(∑[(n!/2)²])`
-/

namespace A287149.P14638958359707577677
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℚ) / 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A287149.P14638958359707577677

/-!
# A287150: Fairest turn sequence for 3 players where the probability of a win for a player on his turn approaches 0.

The programs for A287150, there is no canonical definition to state claims against.
-/

/-! ## A287150.P783695460001573919

`A014192(A078715(n+1))%3`
-/

namespace A287150.P783695460001573919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014192 (A078715 (n + 1)).toNat) 3

end

end A287150.P783695460001573919

/-! ## A287150.P7210236239083323570

`A287401(∑[A227343(A007732(n+1))²])`
-/

namespace A287150.P7210236239083323570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227343 (A007732 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287401 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A287150.P7210236239083323570

/-! ## A287150.P14173015545802098070

`A189463(xor(A298598(n+4), A345000(3*n)))`
-/

namespace A287150.P14173015545802098070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189463 (Int.xor (A298598 (n + 4)) (A345000 (3 * n))).toNat

end

end A287150.P14173015545802098070

/-! ## A287150.P5678898111324178862

`A258206(2*(n+2))%4`
-/

namespace A287150.P5678898111324178862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258206 (2 * (n + 2))) 4

end

end A287150.P5678898111324178862

/-! ## A287150.P191159295581454237

`A057985(record[A231227(2*n+1)])`
-/

namespace A287150.P191159295581454237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231227 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057985 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A287150.P191159295581454237

/-!
# A287151: Array read by antidiagonals: T(m,n) = number of nonzero m X n binary arrays with all 1's connected.

The programs for A287151, there is no canonical definition to state claims against.
-/

/-! ## A287151.P15075628233446276843

`A231829(n+1)+A137579(A143007(n))`
-/

namespace A287151.P15075628233446276843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231829 (n + 1) + A137579 (A143007 n).toNat

end

end A287151.P15075628233446276843

/-! ## A287151.P1833784357486640560

`A231829(n+1)+A184973(A103919(3*n))`
-/

namespace A287151.P1833784357486640560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231829 (n + 1) + A184973 (A103919 (3 * n)).toNat

end

end A287151.P1833784357486640560

/-! ## A287151.P14974395356534554482

`A231829(n+1)+A137579(A178472(n+2))`
-/

namespace A287151.P14974395356534554482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231829 (n + 1) + A137579 (A178472 (n + 2)).toNat

end

end A287151.P14974395356534554482

/-! ## A287151.P3107709544800642629

`A231829(A004896(n+2))`
-/

namespace A287151.P3107709544800642629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231829 (A004896 (n + 2)).toNat

end

end A287151.P3107709544800642629

/-! ## A287151.P6783125344650824446

`A231829(A004907(n+2))`
-/

namespace A287151.P6783125344650824446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231829 (A004907 (n + 2)).toNat

end

end A287151.P6783125344650824446

/-!
# A287154: Number of simple disconnected integral graphs on n vertices.

The programs for A287154, there is no canonical definition to state claims against.
-/

/-! ## A287154.P5302865834347261663

`A077027(n+1)-A064731(n+1)`
-/

namespace A287154.P5302865834347261663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077027 (n + 1) - A064731 (n + 1)

end

end A287154.P5302865834347261663

/-! ## A287154.P4957143087893454255

`A077027(n+1)-(A001349(n+1)-A241842(n+1))`
-/

namespace A287154.P4957143087893454255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077027 (n + 1) - (A001349 (n + 1) - A241842 (n + 1))

end

end A287154.P4957143087893454255

/-! ## A287154.P13258087573742308400

`A077027(n+1)+A241842(n+1)-A201922(A000124(n))`
-/

namespace A287154.P13258087573742308400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077027 (n + 1) + (A241842 (n + 1) - A201922 (A000124 n).toNat)

end

end A287154.P13258087573742308400

/-! ## A287154.P11193270074623932216

`A077027(n+1)-(A304311(A000096(n+1))-A241842(n+1))`
-/

namespace A287154.P11193270074623932216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077027 (n + 1) - (A304311 (A000096 (n + 1)).toNat - A241842 (n + 1))

end

end A287154.P11193270074623932216

/-! ## A287154.P6339438542326825564

`A077027(n+1)-(A000088(n+1)-(A241842(n+1)+A000719(n+1)))`
-/

namespace A287154.P6339438542326825564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077027 (n + 1) - (A000088 (n + 1) - (A241842 (n + 1) + A000719 (n + 1)))

end

end A287154.P6339438542326825564

/-!
# A287155: a(1) = 1 by convention. a(2) = a(3) = a(4) = 2; a(n) = a(a(n-1)) + a(n-a(n-1)) for n > 4.

The programs for A287155, the canonical program `A287155.P9814254827623713706` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287155 has offset 1).

The definition of A287155 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-1)-1)+a(n-a(n-1))` (program `A287155.P9814254827623713706`, by `A287155.P9814254827623713706.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A287155.P9814254827623713706

`a(a(n-1)-1)+a(n-a(n-1))` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A287155

/-- `a(a(n-1)-1)+a(n-a(n-1))` -/
def P9814254827623713706.Spec : Prop :=
  ∀ n, (P9814254827623713706.a n : ℤ) = A287155 (n + 1)

theorem P9814254827623713706.correct : P9814254827623713706.Spec := by
  intro n
  simp only [A287155, Nat.add_sub_cancel]

end A287155

/-! ## A287155.P277709551210500271

`∏{e}[A000079(n), A289256(#)]`
-/

namespace A287155.P277709551210500271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A289256 (Nat.factorization (f1 n).natAbs p)

end

end A287155.P277709551210500271

namespace A287155

/-- `∏{e}[A000079(n), A289256(#)]` -/
def P277709551210500271.Spec : Prop :=
  ∀ n, P277709551210500271.a n = A287155 (n + 1)

end A287155

/-! ## A287155.P10477288018810172519

`∏{e}[A122803(n), A289256(#)]`
-/

namespace A287155.P10477288018810172519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A289256 (Nat.factorization (f1 n).natAbs p)

end

end A287155.P10477288018810172519

namespace A287155

/-- `∏{e}[A122803(n), A289256(#)]` -/
def P10477288018810172519.Spec : Prop :=
  ∀ n, P10477288018810172519.a n = A287155 (n + 1)

end A287155

/-! ## A287155.P2660702420816717545

`∏{e}[Δ[A000225(n)], A289256(#)]`
-/

namespace A287155.P2660702420816717545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A289256 (Nat.factorization (f1 n).natAbs p)

end

end A287155.P2660702420816717545

namespace A287155

/-- `∏{e}[Δ[A000225(n)], A289256(#)]` -/
def P2660702420816717545.Spec : Prop :=
  ∀ n, P2660702420816717545.a n = A287155 (n + 1)

end A287155

/-!
# A287156: 2-limiting word of the morphism 0->10, 1->21, 2->0.

The programs for A287156, there is no canonical definition to state claims against.
-/

/-! ## A287156.P8286146034391469050

`A049472(6*A250120(n²)+2)%3`
-/

namespace A287156.P8286146034391469050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049472 (6 * A250120 (n ^ 2) + 2).toNat) 3

end

end A287156.P8286146034391469050

/-! ## A287156.P7274658116785175954

`A007304(A090835(n+4))%3`
-/

namespace A287156.P7274658116785175954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007304 (A090835 (n + 4)).toNat) 3

end

end A287156.P7274658116785175954

/-! ## A287156.P3621467408500865559

`A257992(A379514(n+1)+A135530(n+4))`
-/

namespace A287156.P3621467408500865559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (A379514 (n + 1) + A135530 (n + 4)).toNat

end

end A287156.P3621467408500865559

/-! ## A287156.P2257116016723217581

`A036586(A276055(2*n)-A036578(2*n+3))`
-/

namespace A287156.P2257116016723217581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036586 (A276055 (2 * n) - A036578 (2 * n + 3)).toNat

end

end A287156.P2257116016723217581

/-!
# A287157: Positions of 0 in A287156.

The programs for A287157, there is no canonical definition to state claims against.
-/

/-! ## A287157.P8374837005035373639

`A287111(n+1)-n`
-/

namespace A287157.P8374837005035373639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287111 (n + 1) - (n : ℤ)

end

end A287157.P8374837005035373639

/-! ## A287157.P17186373003541138045

`A287162(A287162(n+1))+1-A287162(n+1)`
-/

namespace A287157.P17186373003541138045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287162 (A287162 (n + 1)).toNat + (1 - A287162 (n + 1))

end

end A287157.P17186373003541138045

/-! ## A287157.P4388510848594793318

`eq[0, A287156(n+1)]+1`
-/

namespace A287157.P4388510848594793318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287156 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287157.P4388510848594793318

/-! ## A287157.P11900213400050801075

`eq[2, A287156(a(A287156(n)))]` with `a(0)=1, a(1)=5, a(2)=5`
-/

namespace A287157.P11900213400050801075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 5] fun n f2 =>
  A287156 (f2 (A287156 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287157.P11900213400050801075

/-! ## A287157.P16416327187338368876

`eq[0, A287156(A000007(n)+n)]`
-/

namespace A287157.P16416327187338368876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287156 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287157.P16416327187338368876

/-! ## A287157.P7388448052024925858

`eq[2, A287108(n+1)]+1-n`
-/

namespace A287157.P7388448052024925858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + (1 - (n : ℤ))

end

end A287157.P7388448052024925858

/-!
# A287158: Positions of 1 in A287156.

The programs for A287158, there is no canonical definition to state claims against.
-/

/-! ## A287158.P89604176619130858

`eq[1, A287156(n+1)]+1`
-/

namespace A287158.P89604176619130858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287156 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287158.P89604176619130858

/-! ## A287158.P16244130780327535664

`record[n/a(A287156(n))]` with `a(0)=2, a(1)=1`
-/

namespace A287158.P16244130780327535664
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  (n : ℚ) / f1 (A287156 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287158.P16244130780327535664

/-! ## A287158.P4301657209131263570

`eq[1, A287156(A000007(n)+n)]`
-/

namespace A287158.P4301657209131263570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287156 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287158.P4301657209131263570

/-! ## A287158.P10321828082063748759

`eq[2, A287156(a(A287156(n)))]` with `a(0)=5, a(1)=1`
-/

namespace A287158.P10321828082063748759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5, 1] fun n f2 =>
  A287156 (f2 (A287156 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287158.P10321828082063748759

/-! ## A287158.P396280947775176579

`A287161(A287109(n+1))-A287110(A287109(n+1))`
-/

namespace A287158.P396280947775176579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287161 (A287109 (n + 1)).toNat - A287110 (A287109 (n + 1)).toNat

end

end A287158.P396280947775176579

/-! ## A287158.P6575365970422699971

`eq[1, A287156(A003056(A000124(n)))]`
-/

namespace A287158.P6575365970422699971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287156 (A003056 (A000124 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287158.P6575365970422699971

/-!
# A287159: Positions of 2 in A287156.

The programs for A287159, there is no canonical definition to state claims against.
-/

/-! ## A287159.P3347058480392033920

`A287161(n+1)+n`
-/

namespace A287159.P3347058480392033920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287161 (n + 1) + (n : ℤ)

end

end A287159.P3347058480392033920

/-! ## A287159.P17442291624866523019

`A287110(A287110(n+1))+n+1-A287110(n+1)`
-/

namespace A287159.P17442291624866523019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287110 (A287110 (n + 1)).toNat + ((n + 1 : ℤ) - A287110 (n + 1))

end

end A287159.P17442291624866523019

/-! ## A287159.P17406681762655774303

`eq[1, A245553(n+1)]+1+n`
-/

namespace A287159.P17406681762655774303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245553 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 + n

end

end A287159.P17406681762655774303

/-! ## A287159.P5111721245228985800

`eq[1, A287160(n+1)+1]+n+1`
-/

namespace A287159.P5111721245228985800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287160 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (n + 1)

end

end A287159.P5111721245228985800

/-! ## A287159.P9358878247520904033

`lt[1, A287156(n+1)]+1`
-/

namespace A287159.P9358878247520904033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287156 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A287159.P9358878247520904033

/-! ## A287159.P8958580285206796585

`record[(n+1)*A287156(n+2)-n]`
-/

namespace A287159.P8958580285206796585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A287156 (n + 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287159.P8958580285206796585

/-!
# A287160: 0-limiting word of the morphism 0->10, 1->21, 2->0.

The programs for A287160, there is no canonical definition to state claims against.
-/

/-! ## A287160.P3894205167472184318

`10%A245553(n+1)²`
-/

namespace A287160.P3894205167472184318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 10 (A245553 (n + 1) ^ 2)

end

end A287160.P3894205167472184318

/-! ## A287160.P15344687867549070092

`A008346(and(A000466(n), A245553(n+1)))`
-/

namespace A287160.P15344687867549070092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008346 (Int.land (A000466 n) (A245553 (n + 1))).toNat

end

end A287160.P15344687867549070092

/-! ## A287160.P14165040747577832899

`A028242(and(A000466(n), A245553(n+1)))`
-/

namespace A287160.P14165040747577832899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.land (A000466 n) (A245553 (n + 1))).toNat

end

end A287160.P14165040747577832899

/-! ## A287160.P3214789744100079057

`A106140(and(A000466(n), A245553(n+1)))`
-/

namespace A287160.P3214789744100079057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106140 (Int.land (A000466 n) (A245553 (n + 1))).toNat

end

end A287160.P3214789744100079057

/-! ## A287160.P13121423258934949223

`A110658(and(A000466(n), A245553(n+1)))`
-/

namespace A287160.P13121423258934949223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110658 (Int.land (A000466 n) (A245553 (n + 1))).toNat

end

end A287160.P13121423258934949223

/-! ## A287160.P9590745713150748528

`A296064(and(A000466(n), A245553(n+1)))`
-/

namespace A287160.P9590745713150748528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296064 (Int.land (A000466 n) (A245553 (n + 1))).toNat

end

end A287160.P9590745713150748528

/-! ## A287160.P5184614472650312726

`A000732(and(A000466(n), A245553(n+1)))%3`
-/

namespace A287160.P5184614472650312726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000732 (Int.land (A000466 n) (A245553 (n + 1))).toNat) 3

end

end A287160.P5184614472650312726

/-! ## A287160.P13649621034118377492

`A005408(and(A000466(n), A245553(n+1)))%3`
-/

namespace A287160.P13649621034118377492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 (Int.land (A000466 n) (A245553 (n + 1))).toNat) 3

end

end A287160.P13649621034118377492

/-! ## A287160.P779195277918271057

`5%A000203(and(A000466(n), A245553(n+1)))`
-/

namespace A287160.P779195277918271057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (A000203 (Int.land (A000466 n) (A245553 (n + 1))).toNat)

end

end A287160.P779195277918271057

/-!
# A287161: Positions of 0 in A287160.

The programs for A287161, there is no canonical definition to state claims against.
-/

/-! ## A287161.P1352519674734842015

`A287159(n+1)-n`
-/

namespace A287161.P1352519674734842015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287159 (n + 1) - (n : ℤ)

end

end A287161.P1352519674734842015

/-! ## A287161.P2986421604480187494

`A287110(A287110(n+1))+1-A287110(n+1)`
-/

namespace A287161.P2986421604480187494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287110 (A287110 (n + 1)).toNat + (1 - A287110 (n + 1))

end

end A287161.P2986421604480187494

/-! ## A287161.P13152253538607154021

`eq[0, A287160(n+1)]+1`
-/

namespace A287161.P13152253538607154021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287160 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287161.P13152253538607154021

/-! ## A287161.P7601799167922090500

`eq[1, A245553(n+1)]+1`
-/

namespace A287161.P7601799167922090500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245553 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287161.P7601799167922090500

/-! ## A287161.P15436296980027831748

`record[n+1-A018252(n+1)*A287160(n+1)]`
-/

namespace A287161.P15436296980027831748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A018252 (n + 1) * A287160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287161.P15436296980027831748

/-! ## A287161.P11517167731272879999

`record[n+1-A134808(n+1)*A287160(n+1)]`
-/

namespace A287161.P11517167731272879999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A134808 (n + 1) * A287160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287161.P11517167731272879999

/-!
# A287162: Positions of 1 in A287160.

The programs for A287162, there is no canonical definition to state claims against.
-/

/-! ## A287162.P4482443015695141487

`A287111(n+1)-eq[2, gcd(2, A287108(n+1))]`
-/

namespace A287162.P4482443015695141487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A287108 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287111 (n + 1) - (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ)

end

end A287162.P4482443015695141487

/-! ## A287162.P17337141695382827193

`eq[1, A287160(n+1)]+1`
-/

namespace A287162.P17337141695382827193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287160 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287162.P17337141695382827193

/-! ## A287162.P11895707754267559036

`lt[2, A245553(n+1)]+1`
-/

namespace A287162.P11895707754267559036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245553 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A287162.P11895707754267559036

/-! ## A287162.P17053955508925100991

`A344180(eq[1, A287160(A344180(n))])`
-/

namespace A287162.P17053955508925100991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287160 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287162.P17053955508925100991

/-! ## A287162.P2539872674355199166

`A287109(A287157(n+1))-A287158(A287157(n+1))`
-/

namespace A287162.P2539872674355199166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287109 (A287157 (n + 1)).toNat - A287158 (A287157 (n + 1)).toNat

end

end A287162.P2539872674355199166

/-! ## A287162.P4763237040260332940

`eq[1, A287160(A233583(n+1))]`
-/

namespace A287162.P4763237040260332940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287160 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287162.P4763237040260332940

/-!
# A287163: Positions of 2 in A287160.

The programs for A287163, there is no canonical definition to state claims against.
-/

/-! ## A287163.P11076036490820804518

`A287109(n+1)+n`
-/

namespace A287163.P11076036490820804518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287109 (n + 1) + (n : ℤ)

end

end A287163.P11076036490820804518

/-! ## A287163.P16563600683407606400

`A287158(A287158(n+1))+n+1-A287158(n+1)`
-/

namespace A287163.P16563600683407606400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287158 (A287158 (n + 1)).toNat + ((n + 1 : ℤ) - A287158 (n + 1))

end

end A287163.P16563600683407606400

/-! ## A287163.P12773087073594797429

`eq[0, A287108(n+1)]+1+n`
-/

namespace A287163.P12773087073594797429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287108 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 + n

end

end A287163.P12773087073594797429

/-! ## A287163.P14552719554313336223

`eq[2, A245553(n+1)]+1`
-/

namespace A287163.P14552719554313336223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245553 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287163.P14552719554313336223

/-! ## A287163.P7971534939620099191

`lt[1, A287160(n+1)]+1`
-/

namespace A287163.P7971534939620099191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287160 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A287163.P7971534939620099191

/-! ## A287163.P8615770503196747529

`record[(n+1)*A287160(n+2)-n]`
-/

namespace A287163.P8615770503196747529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A287160 (n + 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287163.P8615770503196747529

/-!
# A287164: Primes having a unique partition into three squares.

The programs for A287164, there is no canonical definition to state claims against.
-/

/-! ## A287164.P9660465195390350961

`p?[A094739(n+1)]`
-/

namespace A287164.P9660465195390350961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A287164.P9660465195390350961

/-! ## A287164.P8626346227087144466

`p?[A094942(n+1)]`
-/

namespace A287164.P8626346227087144466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A287164.P8626346227087144466

/-! ## A287164.P6549755769172030006

`p?[eq[1, A000164(n)]]`
-/

namespace A287164.P6549755769172030006
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A287164.P6549755769172030006

/-! ## A287164.P4376459941610793997

`eq[A000164(n), A003415(n)]`
-/

namespace A287164.P4376459941610793997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A287164.P4376459941610793997

/-! ## A287164.P17085766976032083849

`eq[A000164(n), A018783(n)]`
-/

namespace A287164.P17085766976032083849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A287164.P17085766976032083849

/-!
# A287168: Number of non-attacking bishop positions on a cylindrical 3 X 2n chessboard.

The programs for A287168, there is no canonical definition to state claims against.
-/

/-! ## A287168.P16682313711745098091

`A061703(n)^(2%A000051(n))`
-/

namespace A287168.P16682313711745098091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061703 n : ℚ) ^ (Int.tmod 2 (A000051 n) : ℤ)

end

end A287168.P16682313711745098091

/-! ## A287168.P193505730135591573

`A061703(n)^A010673(A060264(n))`
-/

namespace A287168.P193505730135591573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061703 n : ℚ) ^ (A010673 (A060264 n).toNat : ℤ)

end

end A287168.P193505730135591573

/-! ## A287168.P17315354414394084290

`A061703(n)^A293516(A005385(n+1))`
-/

namespace A287168.P17315354414394084290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061703 n : ℚ) ^ (A293516 (A005385 (n + 1)).toNat : ℤ)

end

end A287168.P17315354414394084290

/-! ## A287168.P9646891816799240773

`(A061703(n)^A178489(n))²`
-/

namespace A287168.P9646891816799240773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A061703 n : ℚ) ^ (A178489 n : ℤ)) ^ 2

end

end A287168.P9646891816799240773

/-! ## A287168.P12616464455786149853

`A061703(n)^A107286(A033583(n))`
-/

namespace A287168.P12616464455786149853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061703 n : ℚ) ^ (A107286 (A033583 n).toNat : ℤ)

end

end A287168.P12616464455786149853

/-!
# A287169: Number of non-attacking king positions on a cylindrical 3 X 2n chessboard.

The programs for A287169, the canonical program `A287169.P17828971576127066043` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287169 has offset 0).

The definition of A287169 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287169.P5019167067338295262

`gcd(A107334(2*n)+1, floor(acot(n)))`
-/

namespace A287169.P5019167067338295262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A107334 (2 * n) + 1) ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A287169.P5019167067338295262

namespace A287169

/-- `gcd(A107334(2*n)+1, floor(acot(n)))` -/
def P5019167067338295262.Spec : Prop :=
  ∀ n, (P5019167067338295262.a n : ℤ) = A287169 n

end A287169

/-! ## A287169.P16741294083200026395

`xor(A054977(n), A107334(2*n))`
-/

namespace A287169.P16741294083200026395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A054977 n) (A107334 (2 * n))

end

end A287169.P16741294083200026395

namespace A287169

/-- `xor(A054977(n), A107334(2*n))` -/
def P16741294083200026395.Spec : Prop :=
  ∀ n, P16741294083200026395.a n = A287169 n

end A287169

/-! ## A287169.P17828971576127066043

`xor(A014963(4*n+2), A107334(2*n))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A287169

/-- `xor(A014963(4*n+2), A107334(2*n))` -/
def P17828971576127066043.Spec : Prop :=
  ∀ n, P17828971576127066043.a n = A287169 n

theorem P17828971576127066043.correct : P17828971576127066043.Spec := by
  intro n
  simp only [A287169]

end A287169

/-! ## A287169.P2065757463950602669

`(A107334(2*n)+1)%A199750(n)`
-/

namespace A287169.P2065757463950602669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107334 (2 * n) + 1) (A199750 n)

end

end A287169.P2065757463950602669

namespace A287169

/-- `(A107334(2*n)+1)%A199750(n)` -/
def P2065757463950602669.Spec : Prop :=
  ∀ n, P2065757463950602669.a n = A287169 n

end A287169

/-! ## A287169.P12149782994289718409

`(A107334(2*n)+1)*a(A001222(A162390(n))-1)` with `a(0)=1`
-/

namespace A287169.P12149782994289718409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A107334 (2 * n) + 1) * a (A001222 (A162390 n).toNat - 1).toNat

end

end A287169.P12149782994289718409

namespace A287169

/-- `(A107334(2*n)+1)*a(A001222(A162390(n))-1)` -/
def P12149782994289718409.Spec : Prop :=
  ∀ n, P12149782994289718409.a n = A287169 n

end A287169

/-!
# A287170: a(n) = number of runs of consecutive prime numbers among the prime divisors of n.

The programs for A287170, the canonical program `A287170.P3735047358035407124` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287170 has offset 1).

The definition of A287170 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087207, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A287170.P3735047358035407124

`A069010(A087207(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A287170

/-- `A069010(A087207(n+1))` -/
def P3735047358035407124.Spec : Prop :=
  ∀ n, P3735047358035407124.a n = A287170 (n + 1)

theorem P3735047358035407124.correct : P3735047358035407124.Spec := by
  intro n
  simp only [A287170, Nat.add_sub_cancel]

end A287170

/-! ## A287170.P3821624507250720163

`A306446(∏{p}[n+1, #])`
-/

namespace A287170.P3821624507250720163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306446 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A287170.P3821624507250720163

namespace A287170

/-- `A306446(∏{p}[n+1, #])` -/
def P3821624507250720163.Spec : Prop :=
  ∀ n, P3821624507250720163.a n = A287170 (n + 1)

end A287170

/-! ## A287170.P8803329496837344836

`A306446(A007947(n+1))`
-/

namespace A287170.P8803329496837344836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306446 (A007947 (n + 1)).toNat

end

end A287170.P8803329496837344836

namespace A287170

/-- `A306446(A007947(n+1))` -/
def P8803329496837344836.Spec : Prop :=
  ∀ n, P8803329496837344836.a n = A287170 (n + 1)

end A287170

/-! ## A287170.P11528900924813819680

`A306446(A302138(n+1))`
-/

namespace A287170.P11528900924813819680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306446 (A302138 (n + 1)).toNat

end

end A287170.P11528900924813819680

namespace A287170

/-- `A306446(A302138(n+1))` -/
def P11528900924813819680.Spec : Prop :=
  ∀ n, P11528900924813819680.a n = A287170 (n + 1)

end A287170

/-! ## A287170.P16612302716428356062

`A306446(A328915(n+1))`
-/

namespace A287170.P16612302716428356062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306446 (A328915 (n + 1)).toNat

end

end A287170.P16612302716428356062

namespace A287170

/-- `A306446(A328915(n+1))` -/
def P16612302716428356062.Spec : Prop :=
  ∀ n, P16612302716428356062.a n = A287170 (n + 1)

end A287170

/-! ## A287170.P5842547038430238369

`A306446(A372379(n+1))`
-/

namespace A287170.P5842547038430238369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306446 (A372379 (n + 1)).toNat

end

end A287170.P5842547038430238369

namespace A287170

/-- `A306446(A372379(n+1))` -/
def P5842547038430238369.Spec : Prop :=
  ∀ n, P5842547038430238369.a n = A287170 (n + 1)

end A287170

/-! ## A287170.P14825656738910592741

`A306446(sqrt(A078615(n+1)))`
-/

namespace A287170.P14825656738910592741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306446 (SequenceMachineLib.roundAway (Real.sqrt (A078615 (n + 1) : ℝ))).toNat

end

end A287170.P14825656738910592741

namespace A287170

/-- `A306446(sqrt(A078615(n+1)))` -/
def P14825656738910592741.Spec : Prop :=
  ∀ n, P14825656738910592741.a n = A287170 (n + 1)

end A287170

/-! ## A287170.P10961911365533912736

`A073490(n+1)+A057427(n)`
-/

namespace A287170.P10961911365533912736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (n + 1) + A057427 n

end

end A287170.P10961911365533912736

namespace A287170

/-- `A073490(n+1)+A057427(n)` -/
def P10961911365533912736.Spec : Prop :=
  ∀ n, P10961911365533912736.a n = A287170 (n + 1)

end A287170

/-! ## A287170.P5023902473296236781

`A073490(n+1)-A057428(n)`
-/

namespace A287170.P5023902473296236781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (n + 1) - A057428 n

end

end A287170.P5023902473296236781

namespace A287170

/-- `A073490(n+1)-A057428(n)` -/
def P5023902473296236781.Spec : Prop :=
  ∀ n, P5023902473296236781.a n = A287170 (n + 1)

end A287170

/-! ## A287170.P15171052324294619288

`A356229(n+1)-A232991(n)`
-/

namespace A287170.P15171052324294619288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356229 (n + 1) - A232991 n

end

end A287170.P15171052324294619288

namespace A287170

/-- `A356229(n+1)-A232991(n)` -/
def P15171052324294619288.Spec : Prop :=
  ∀ n, P15171052324294619288.a n = A287170 (n + 1)

end A287170

/-! ## A287170.P14241339388657786480

`A073490(n+1)+1-A000007(n)`
-/

namespace A287170.P14241339388657786480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (n + 1) + (1 - A000007 n)

end

end A287170.P14241339388657786480

namespace A287170

/-- `A073490(n+1)+1-A000007(n)` -/
def P14241339388657786480.Spec : Prop :=
  ∀ n, P14241339388657786480.a n = A287170 (n + 1)

end A287170

/-! ## A287170.P15976099140400863447

`A073490(n+1)+n/A028310(n)`
-/

namespace A287170.P15976099140400863447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073490 (n + 1) : ℚ) + (n : ℚ) / (A028310 n : ℚ)

end

end A287170.P15976099140400863447

namespace A287170

/-- `A073490(n+1)+n/A028310(n)` -/
def P15976099140400863447.Spec : Prop :=
  ∀ n, P15976099140400863447.a n = (A287170 (n + 1) : ℚ)

end A287170

/-! ## A287170.P9909024366695115575

`A073490(n+1)+char[A320012(n+1)]`
-/

namespace A287170.P9909024366695115575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320012 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A287170.P9909024366695115575

namespace A287170

/-- `A073490(n+1)+char[A320012(n+1)]` -/
def P9909024366695115575.Spec : Prop :=
  ∀ n, P9909024366695115575.a n = A287170 (n + 1)

end A287170

/-! ## A287170.P5701644160499258477

`A073490(n+1)+A005171(2*(n+1))`
-/

namespace A287170.P5701644160499258477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (n + 1) + A005171 (2 * (n + 1))

end

end A287170.P5701644160499258477

namespace A287170

/-- `A073490(n+1)+A005171(2*(n+1))` -/
def P5701644160499258477.Spec : Prop :=
  ∀ n, P5701644160499258477.a n = A287170 (n + 1)

end A287170

/-! ## A287170.P12838073097702843629

`A073490(n+1)+A001222(A027748(n+1))`
-/

namespace A287170.P12838073097702843629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (n + 1) + A001222 (A027748 (n + 1)).toNat

end

end A287170.P12838073097702843629

namespace A287170

/-- `A073490(n+1)+A001222(A027748(n+1))` -/
def P12838073097702843629.Spec : Prop :=
  ∀ n, P12838073097702843629.a n = A287170 (n + 1)

end A287170

/-! ## A287170.P11226603646830974983

`A073490(n+1)+A051903(A007947(n+1))`
-/

namespace A287170.P11226603646830974983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (n + 1) + A051903 (A007947 (n + 1)).toNat

end

end A287170.P11226603646830974983

namespace A287170

/-- `A073490(n+1)+A051903(A007947(n+1))` -/
def P11226603646830974983.Spec : Prop :=
  ∀ n, P11226603646830974983.a n = A287170 (n + 1)

end A287170

/-! ## A287170.P7562088749878094348

`A001221(n+1)-A001221(A322361(n+1))`
-/

namespace A287170.P7562088749878094348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A001221 (A322361 (n + 1)).toNat

end

end A287170.P7562088749878094348

namespace A287170

/-- `A001221(n+1)-A001221(A322361(n+1))` -/
def P7562088749878094348.Spec : Prop :=
  ∀ n, P7562088749878094348.a n = A287170 (n + 1)

end A287170

/-! ## A287170.P15258267456505484028

`A001221(n+1)-A001221(A330749(n+1))`
-/

namespace A287170.P15258267456505484028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A001221 (A330749 (n + 1)).toNat

end

end A287170.P15258267456505484028

namespace A287170

/-- `A001221(n+1)-A001221(A330749(n+1))` -/
def P15258267456505484028.Spec : Prop :=
  ∀ n, P15258267456505484028.a n = A287170 (n + 1)

end A287170

/-! ## A287170.P3791221454818647887

`A073490(n+1)+A001222(A034444(A034444(n+1)))`
-/

namespace A287170.P3791221454818647887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (n + 1) + A001222 (A034444 (A034444 (n + 1)).toNat).toNat

end

end A287170.P3791221454818647887

namespace A287170

/-- `A073490(n+1)+A001222(A034444(A034444(n+1)))` -/
def P3791221454818647887.Spec : Prop :=
  ∀ n, P3791221454818647887.a n = A287170 (n + 1)

end A287170

/-! ## A287170.P6568478211846139837

`A073490(n+1)+A001221(A000961(n+1))`
-/

namespace A287170.P6568478211846139837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (n + 1) + A001221 (A000961 (n + 1)).toNat

end

end A287170.P6568478211846139837

namespace A287170

/-- `A073490(n+1)+A001221(A000961(n+1))` -/
def P6568478211846139837.Spec : Prop :=
  ∀ n, P6568478211846139837.a n = A287170 (n + 1)

end A287170

/-!
# A287173: Unitary practical numbers that are nonsquarefree.

The programs for A287173, there is no canonical definition to state claims against.
-/

/-! ## A287173.P1955867858951555760

`∩[A286652(n+1), A292705(n+1)]`
-/

namespace A287173.P1955867858951555760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292705 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287173.P1955867858951555760

/-! ## A287173.P16936846142860262086

`∩[A286652(n+1), A335140(n+1)]`
-/

namespace A287173.P16936846142860262086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287173.P16936846142860262086

/-! ## A287173.P3615334631678894208

`∩[A286652(n+1), A335201(n+1)]`
-/

namespace A287173.P3615334631678894208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287173.P3615334631678894208

/-! ## A287173.P7938534633472053215

`∩[A286652(n+1), A379030(n+1)]`
-/

namespace A287173.P7938534633472053215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287173.P7938534633472053215

/-! ## A287173.P2736586576636304708

`∩[2*A071365(n+1), A286652(n+1)]`
-/

namespace A287173.P2736586576636304708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A071365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287173.P2736586576636304708

/-!
# A287174: 2-limiting word of the morphism 0->10, 1->20, 2->0.

The programs for A287174, there is no canonical definition to state claims against.
-/

/-! ## A287174.P1291172932711631925

`A286998(A342351(n+1)+11)`
-/

namespace A287174.P1291172932711631925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286998 (A342351 (n + 1) + 11).toNat

end

end A287174.P1291172932711631925

/-! ## A287174.P11559376748847645186

`A286998(A342351(n+12))`
-/

namespace A287174.P11559376748847645186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286998 (A342351 (n + 12)).toNat

end

end A287174.P11559376748847645186

/-! ## A287174.P7524536931258163601

`A080843(A319972(A319968(n+1))-(n+1))`
-/

namespace A287174.P7524536931258163601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 (A319972 (A319968 (n + 1)).toNat - (n + 1 : ℤ)).toNat

end

end A287174.P7524536931258163601

/-! ## A287174.P9893725681871283474

`A080843(A319972(A319969(n+1))-(n+1))`
-/

namespace A287174.P9893725681871283474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 (A319972 (A319969 (n + 1)).toNat - (n + 1 : ℤ)).toNat

end

end A287174.P9893725681871283474

/-! ## A287174.P8380553074310331635

`and(A007510(A328188(3*n+1)), A080843(n+3))`
-/

namespace A287174.P8380553074310331635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007510 (A328188 (3 * n + 1)).toNat) (A080843 (n + 3))

end

end A287174.P8380553074310331635

/-!
# A287175: Positions of 0 in A287174.

The programs for A287175, there is no canonical definition to state claims against.
-/

/-! ## A287175.P4421016608970180625

`∑[A004426(a(A287112(n+1)))]` with `a(0)=2, a(1)=2, a(2)=1`
-/

namespace A287175.P4421016608970180625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 1] fun n f1 =>
  A004426 (f1 (A287112 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287175.P4421016608970180625

/-! ## A287175.P811145634842518727

`∑[A007306(a(A287112(n+1)))]` with `a(0)=2, a(1)=2, a(2)=1`
-/

namespace A287175.P811145634842518727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 1] fun n f1 =>
  A007306 (f1 (A287112 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287175.P811145634842518727

/-! ## A287175.P11652709801639815306

`∑[A014963(a(A287112(n+1)))]` with `a(0)=2, a(1)=2, a(2)=1`
-/

namespace A287175.P11652709801639815306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 1] fun n f1 =>
  A014963 (f1 (A287112 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287175.P11652709801639815306

/-! ## A287175.P10321512787377977258

`∑[2-A287112(A287112(n+1)+n+1)]`
-/

namespace A287175.P10321512787377977258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A287112 (A287112 (n + 1) + (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287175.P10321512787377977258

/-! ## A287175.P14413540676128264332

`A140098(A287000(n+1))+1-A287000(n+1)`
-/

namespace A287175.P14413540676128264332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140098 (A287000 (n + 1)).toNat + (1 - A287000 (n + 1))

end

end A287175.P14413540676128264332

/-! ## A287175.P14994244211184828250

`record[A177962(Δ[A316324(n+2)]+1)+n]`
-/

namespace A287175.P14994244211184828250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316324 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177962 (f2 (n + 1) - f2 n + 1).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287175.P14994244211184828250

/-!
# A287176: Positions of 1 in A287174.

The programs for A287176, there is no canonical definition to state claims against.
-/

/-! ## A287176.P6818773864643201167

`A107792(n+1)+n`
-/

namespace A287176.P6818773864643201167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107792 (n + 1) + (n : ℤ)

end

end A287176.P6818773864643201167

/-! ## A287176.P16780465958983072069

`A107790(n+1)-n`
-/

namespace A287176.P16780465958983072069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107790 (n + 1) - (n : ℤ)

end

end A287176.P16780465958983072069

/-! ## A287176.P13528910527252946405

`A316326(n+1)+1+n`
-/

namespace A287176.P13528910527252946405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316326 (n + 1) + 1 + (n : ℤ)

end

end A287176.P13528910527252946405

/-! ## A287176.P16796106711436372706

`lt[2, A305389(n)]+1+n`
-/

namespace A287176.P16796106711436372706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305389 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 + n

end

end A287176.P16796106711436372706

/-! ## A287176.P10803746169041182241

`∑[A107796(abs(1-n))]+n`
-/

namespace A287176.P10803746169041182241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107796 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A287176.P10803746169041182241

/-! ## A287176.P1206313920908189835

`∑[3-A286998(n+1)]+n`
-/

namespace A287176.P1206313920908189835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A286998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A287176.P1206313920908189835

/-! ## A287176.P9131723266221317194

`A004767(n)-∑[A286998(n+1)]`
-/

namespace A287176.P9131723266221317194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287176.P9131723266221317194

/-! ## A287176.P6480459756938331929

`∑[xor(A157532(n+1), A286998(n+1))]+1+n`
-/

namespace A287176.P6480459756938331929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A157532 (n + 1)) (A286998 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A287176.P6480459756938331929

/-! ## A287176.P2463457865585404537

`eq[1, A305390(n)]+1-n`
-/

namespace A287176.P2463457865585404537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + (1 - (n : ℤ))

end

end A287176.P2463457865585404537

/-! ## A287176.P7591955372968223176

`A287175(A287113(n+1))-1`
-/

namespace A287176.P7591955372968223176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287175 (A287113 (n + 1)).toNat - 1

end

end A287176.P7591955372968223176

/-! ## A287176.P16679586314763716287

`A020725(A316326(n+1))+n`
-/

namespace A287176.P16679586314763716287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A316326 (n + 1)).toNat + (n : ℤ)

end

end A287176.P16679586314763716287

/-! ## A287176.P11283308825892784846

`lt[gcd(A123667(2*n+3), A287174(n+1)), 2]+1`
-/

namespace A287176.P11283308825892784846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A123667 (2 * n + 3)) (A287174 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A287176.P11283308825892784846

/-!
# A287177: Positions of 2 in A287174.

The programs for A287177, there is no canonical definition to state claims against.
-/

/-! ## A287177.P4330139086340238408

`A140100(A287114(n+1))+n`
-/

namespace A287177.P4330139086340238408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140100 (A287114 (n + 1)).toNat + (n : ℤ)

end

end A287177.P4330139086340238408

/-! ## A287177.P2334673473418080609

`A316324(n+1)+A286999(n+1)`
-/

namespace A287177.P2334673473418080609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316324 (n + 1) + A286999 (n + 1)

end

end A287177.P2334673473418080609

/-! ## A287177.P11012981055560068812

`A286999(n+1)+eq[1, A305389(n)]`
-/

namespace A287177.P11012981055560068812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286999 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A287177.P11012981055560068812

/-! ## A287177.P1768752910417905338

`A287176(A286999(n+1))-2`
-/

namespace A287177.P1768752910417905338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287176 (A286999 (n + 1)).toNat - 2

end

end A287177.P1768752910417905338

/-! ## A287177.P18181721413535991655

`A184820(A287114(n+1))`
-/

namespace A287177.P18181721413535991655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184820 (A287114 (n + 1)).toNat

end

end A287177.P18181721413535991655

/-! ## A287177.P2008158046151918465

`A285667(A316324(n+1)+1)`
-/

namespace A287177.P2008158046151918465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285667 (A316324 (n + 1) + 1).toNat

end

end A287177.P2008158046151918465

/-! ## A287177.P6408485286277621118

`A285667(A287114(n+1)+n)`
-/

namespace A287177.P6408485286277621118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285667 (A287114 (n + 1) + (n : ℤ)).toNat

end

end A287177.P6408485286277621118

/-! ## A287177.P7707966364335550245

`A263449(eq[2, A287174(A263449(n))])`
-/

namespace A287177.P7707966364335550245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287174 (A263449 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287177.P7707966364335550245

/-!
# A287178: Smallest number such that the circular adjacent sum set has no multiple entries.

The programs for A287178, there is no canonical definition to state claims against.
-/

/-! ## A287178.P1161850999279880621

`A000007(n)+Δ[A034757(A028310(n))]`
-/

namespace A287178.P1161850999279880621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034757 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A287178.P1161850999279880621

/-! ## A287178.P1436769787370118542

`Δ[A034757(A028310(n))%A001845(n)]`
-/

namespace A287178.P1436769787370118542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034757 (A028310 n).toNat) (A001845 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287178.P1436769787370118542

/-! ## A287178.P10687816764782852889

`Δ[A034757(A028310(n))-A014963(4*n+2)]`
-/

namespace A287178.P10687816764782852889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034757 (A028310 n).toNat - A014963 (4 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287178.P10687816764782852889

/-! ## A287178.P8169399612669665656

`Δ[A034757(A028310(n))+A000040(n+1)%2]`
-/

namespace A287178.P8169399612669665656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034757 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287178.P8169399612669665656

/-! ## A287178.P11851761334745773359

`A034757(n+1)+A000007(n)-A034757(A028310(n))`
-/

namespace A287178.P11851761334745773359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034757 (n + 1) + (A000007 n - A034757 (A028310 n).toNat)

end

end A287178.P11851761334745773359

/-! ## A287178.P9610807361031201682

`A020639(2*a(n-1))*A101274(A028310(n))` with `a(0)=1`
-/

namespace A287178.P9610807361031201682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020639 (2 * a (n - 1)).toNat * A101274 (A028310 n).toNat

end

end A287178.P9610807361031201682

/-! ## A287178.P18059338591362462910

`Δ[A034757(A028310(n))+A008683(3*(n+1)²)]`
-/

namespace A287178.P18059338591362462910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034757 (A028310 n).toNat + A008683 (3 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287178.P18059338591362462910

/-! ## A287178.P8667273153716150432

`Δ[A034757(A028310(n))+A002828(n²)]`
-/

namespace A287178.P8667273153716150432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034757 (A028310 n).toNat + A002828 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287178.P8667273153716150432

/-!
# A287179: 1-limiting word of the morphism 0->10, 1->20, 2->1.

The programs for A287179, there is no canonical definition to state claims against.
-/

/-! ## A287179.P5339779079866305590

`A054845(A106000(A222210(n)+7))`
-/

namespace A287179.P5339779079866305590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 (A106000 (A222210 n + 7).toNat).toNat

end

end A287179.P5339779079866305590

/-! ## A287179.P1918373745548744195

`A365921(A051801(n)%A384390(n+1))`
-/

namespace A287179.P1918373745548744195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365921 (Int.tmod (A051801 n) (A384390 (n + 1))).toNat

end

end A287179.P1918373745548744195

/-! ## A287179.P15533279081199730656

`and(A238744(2*(n+1)), A238760(A238764(2*n+1)))`
-/

namespace A287179.P15533279081199730656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A238744 (2 * (n + 1))) (A238760 (A238764 (2 * n + 1)).toNat)

end

end A287179.P15533279081199730656

/-! ## A287179.P4068043933010879978

`A365923(A158118(n+1)+∏{digits}[n, #])`
-/

namespace A287179.P4068043933010879978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365923 (A158118 (n + 1) + ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ)).toNat

end

end A287179.P4068043933010879978

/-!
# A287180: Positions of 0 in A287179.

The programs for A287180, there is no canonical definition to state claims against.
-/

/-! ## A287180.P1182972902576261474

`eq[0, A287179(n+1)]+1`
-/

namespace A287180.P1182972902576261474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287179 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287180.P1182972902576261474

/-! ## A287180.P6899325686214445036

`eq[0, A287179(A028310(n))]`
-/

namespace A287180.P6899325686214445036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287179 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287180.P6899325686214445036

/-! ## A287180.P5654339823369860884

`eq[1, A054582(a(A287179(n)))]` with `a(0)=0, a(1)=2`
-/

namespace A287180.P5654339823369860884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  A054582 (f2 (A287179 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287180.P5654339823369860884

/-! ## A287180.P9811599553181637803

`eq[1, A029965(a(A287179(n)))]` with `a(0)=2, a(1)=4`
-/

namespace A287180.P9811599553181637803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n f2 =>
  A029965 (f2 (A287179 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287180.P9811599553181637803

/-! ## A287180.P10973469661438527851

`eq[2, A000121(a(A287179(n)))]` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A287180.P10973469661438527851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n f2 =>
  A000121 (f2 (A287179 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287180.P10973469661438527851

/-! ## A287180.P16697308574765944589

`eq[0, A287179(A233583(n+1))]`
-/

namespace A287180.P16697308574765944589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287179 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287180.P16697308574765944589

/-!
# A287181: Positions of 1 in A287179.

The programs for A287181, there is no canonical definition to state claims against.
-/

/-! ## A287181.P2726330965036306160

`eq[1, A287179(n+1)]+1`
-/

namespace A287181.P2726330965036306160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287179 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287181.P2726330965036306160

/-! ## A287181.P2242023914547251444

`eq[A057427(n), A287179(A028310(n))]`
-/

namespace A287181.P2242023914547251444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287179 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A287181.P2242023914547251444

/-! ## A287181.P3080014840000088451

`eq[A000038(n)!, A287179(A028310(n))]`
-/

namespace A287181.P3080014840000088451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000038 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287179 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287181.P3080014840000088451

/-! ## A287181.P10389241619951232802

`eq[1-A000007(n), A287179(A028310(n))]`
-/

namespace A287181.P10389241619951232802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287179 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A287181.P10389241619951232802

/-! ## A287181.P6091690860528271861

`record[A154958(A007310(n+1)-A287179(n+1))]`
-/

namespace A287181.P6091690860528271861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154958 (A007310 (n + 1) - A287179 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287181.P6091690860528271861

/-!
# A287182: Positions of 2 in A287179.

The programs for A287182, there is no canonical definition to state claims against.
-/

/-! ## A287182.P5174936902512418443

`lt[1, A287179(n+1)]+1`
-/

namespace A287182.P5174936902512418443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287179 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A287182.P5174936902512418443

/-! ## A287182.P2898327597975786707

`eq[2, A287179(abs(1-n)+1)]`
-/

namespace A287182.P2898327597975786707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287179 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287182.P2898327597975786707

/-! ## A287182.P9362723258296934914

`eq[2, A054582(a(A287179(n)))]` with `a(0)=0, a(1)=0`
-/

namespace A287182.P9362723258296934914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  A054582 (f2 (A287179 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287182.P9362723258296934914

/-! ## A287182.P5453901029122089460

`eq[2, A029965(a(A287179(n)))]` with `a(0)=1, a(1)=4`
-/

namespace A287182.P5453901029122089460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f2 =>
  A029965 (f2 (A287179 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287182.P5453901029122089460

/-! ## A287182.P2212293473023661140

`A000027(eq[2, A287179(n+1)]+1)`
-/

namespace A287182.P2212293473023661140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A287182.P2212293473023661140

/-! ## A287182.P5286290797053290073

`eq[A014963(A061142(n+1)), A287179(n+3)]+3`
-/

namespace A287182.P5286290797053290073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A061142 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287179 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 3

end

end A287182.P5286290797053290073

/-!
# A287183: Positions of 0 in A288106; complement of A287184.

The programs for A287183, there is no canonical definition to state claims against.
-/

/-! ## A287183.P6457526360698029503

`eq[0, A288106(n+1)]+1`
-/

namespace A287183.P6457526360698029503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288106 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287183.P6457526360698029503

/-! ## A287183.P13444380065342115202

`a(n-1)+A288106(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A287183.P13444380065342115202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A288106 (a (n - 1) + 1).toNat + 1)

end

end A287183.P13444380065342115202

/-! ## A287183.P10826460147856139407

`lt[n*A288106(A028310(n)), n]`
-/

namespace A287183.P10826460147856139407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A288106 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A287183.P10826460147856139407

/-! ## A287183.P15446529189841978807

`record[n+1-A000217(n*A288106(n+1))]`
-/

namespace A287183.P15446529189841978807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000217 ((n : ℤ) * A288106 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287183.P15446529189841978807

/-! ## A287183.P13608764437948598834

`record[n+1-A003056(n*A288106(n+1))]`
-/

namespace A287183.P13608764437948598834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A003056 ((n : ℤ) * A288106 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287183.P13608764437948598834

/-! ## A287183.P5307791674133883835

`lt[n*A288106(n+1), A360746(n+1)]+1`
-/

namespace A287183.P5307791674133883835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A288106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360746 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A287183.P5307791674133883835

/-! ## A287183.P7531760882823823990

`record[n+1-A000040(n+1)*A288106(n+1)]`
-/

namespace A287183.P7531760882823823990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000040 (n + 1) * A288106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287183.P7531760882823823990

/-! ## A287183.P14726524551434964256

`record[n+1-A287184(n+1)*A288106(n+1)]`
-/

namespace A287183.P14726524551434964256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A287184 (n + 1) * A288106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287183.P14726524551434964256

/-! ## A287183.P9202550720069407434

`record[n+1-A287185(n)*A288106(n+1)]`
-/

namespace A287183.P9202550720069407434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A287185 n * A288106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287183.P9202550720069407434

/-!
# A287184: Positions of 1 in A288106; complement of A287183.

The programs for A287184, there is no canonical definition to state claims against.
-/

/-! ## A287184.P2237789483917785133

`A287183(comp[A287183(n+1)-1]-n+1)-1`
-/

namespace A287184.P2237789483917785133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287183 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287183 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) + 1).toNat - 1

end

end A287184.P2237789483917785133

/-! ## A287184.P17098970064738337042

`filter[n+1, A288106(#)]`
-/

namespace A287184.P17098970064738337042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288106 (f1 j) = 1) n)

end

end A287184.P17098970064738337042

/-! ## A287184.P10909458295163392537

`eq[1, A288106(n+1)]+1`
-/

namespace A287184.P10909458295163392537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288106 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287184.P10909458295163392537

/-! ## A287184.P15238745442079909934

`record[(n+3)*A288106(n+3)]`
-/

namespace A287184.P15238745442079909934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A288106 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287184.P15238745442079909934

/-! ## A287184.P16580951448013577838

`lt[0, A288106(A028310(n))]`
-/

namespace A287184.P16580951448013577838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288106 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A287184.P16580951448013577838

/-! ## A287184.P5045092996601112318

`A344180(eq[1, A288106(A344180(n))])`
-/

namespace A287184.P5045092996601112318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288106 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287184.P5045092996601112318

/-! ## A287184.P269785369608306950

`eq[1, A288106(A233583(n+1))]`
-/

namespace A287184.P269785369608306950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288106 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287184.P269785369608306950

/-!
# A287185: a(n) = 3*a(n-2) + a(n-3) + a(n-5) - 3*a(n-6) - a(n-7), where a(0) = 2, a(1) = 4, a(2) = 7, a(3) = 14, a(4) = 25, a(5) = 47, a(6) = 88, a(7) = 166.

The programs for A287185, there is no canonical definition to state claims against.
-/

/-! ## A287185.P2195644604653216125

`A071840(A250784(n+1))`
-/

namespace A287185.P2195644604653216125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071840 (A250784 (n + 1)).toNat

end

end A287185.P2195644604653216125

/-! ## A287185.P17219180908135306660

`A054846(Δ[A069403(n)+A026743(n)])`
-/

namespace A287185.P17219180908135306660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069403 n + A026743 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (f1 (n + 1) - f1 n).toNat

end

end A287185.P17219180908135306660

/-! ## A287185.P9300433727913085133

`A367217(n+2)+A036036(A003094(n))`
-/

namespace A287185.P9300433727913085133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367217 (n + 2) + A036036 (A003094 n).toNat

end

end A287185.P9300433727913085133

/-! ## A287185.P7352123455237072909

`ceil(A183516(n+1)^acot(5))`
-/

namespace A287185.P7352123455237072909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A183516 (n + 1) : ℝ) ^ (SequenceMachineLib.acot (5 : ℝ))⌉

end

end A287185.P7352123455237072909

/-!
# A287186: Positions of 1 in A287457; complement of A287519.

The programs for A287186, there is no canonical definition to state claims against.
-/

/-! ## A287186.P12199577401547687813

`filter[n+1, A287457(#)]`
-/

namespace A287186.P12199577401547687813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A287457 (f1 j) = 1) n)

end

end A287186.P12199577401547687813

/-! ## A287186.P937358159049873680

`eq[1, A287457(n+1)]+1`
-/

namespace A287186.P937358159049873680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287457 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287186.P937358159049873680

/-! ## A287186.P4449051248659174651

`record[(n+1)*A287457(n+2)+1]`
-/

namespace A287186.P4449051248659174651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A287457 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287186.P4449051248659174651

/-! ## A287186.P16448637412971105060

`record[A000027(n+1)*A287457(n+1)]`
-/

namespace A287186.P16448637412971105060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A287457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287186.P16448637412971105060

/-! ## A287186.P14460532098152303394

`lt[A287457(n+1), A287457(A028310(n))]`
-/

namespace A287186.P14460532098152303394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287457 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A287186.P14460532098152303394

/-! ## A287186.P15202738955696319033

`lt[A287457(n+1), A287457(A287457(n+1)+n)]`
-/

namespace A287186.P15202738955696319033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287457 (A287457 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A287186.P15202738955696319033

/-! ## A287186.P5454614042757664517

`record[A008619(2*n)*A287457(n+1)]`
-/

namespace A287186.P5454614042757664517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) * A287457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287186.P5454614042757664517

/-!
# A287188: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 251", based on the 5-celled von Neumann neighborhood.

The programs for A287188, there is no canonical definition to state claims against.
-/

/-! ## A287188.P16289504078720718344

`or(1, A288770(n))`
-/

namespace A287188.P16289504078720718344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A288770 n)

end

end A287188.P16289504078720718344

/-! ## A287188.P4563120467260023626

`or(1, A288803(n))`
-/

namespace A287188.P4563120467260023626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A288803 n)

end

end A287188.P4563120467260023626

/-! ## A287188.P8389102447105086761

`A286501(and(4, n²)/2+n)`
-/

namespace A287188.P8389102447105086761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286501 (SequenceMachineLib.roundAway ((Nat.land 4 (n ^ 2) : ℚ) / 2 + (n : ℚ))).toNat

end

end A287188.P8389102447105086761

/-! ## A287188.P16712026403337792678

`A286501(and(2, and(n, n+1))+n)`
-/

namespace A287188.P16712026403337792678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286501 (Nat.land 2 (Nat.land n (n + 1)) + n)

end

end A287188.P16712026403337792678

/-! ## A287188.P12519789176586805711

`A288770(n)+A000035(n)`
-/

namespace A287188.P12519789176586805711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288770 n + A000035 n

end

end A287188.P12519789176586805711

/-! ## A287188.P1237882558577939526

`A288770(n)+log2(A000034(n))`
-/

namespace A287188.P1237882558577939526
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A288770 n : ℝ) + Real.logb 2 (A000034 n : ℝ)

end

end A287188.P1237882558577939526

/-! ## A287188.P983143907426133110

`A288770(n)+Δ[A004526(n)]`
-/

namespace A287188.P983143907426133110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288770 n + (f1 (n + 1) - f1 n)

end

end A287188.P983143907426133110

/-! ## A287188.P11171509230499054853

`A288770(n)+Δ[A008619(n)]`
-/

namespace A287188.P11171509230499054853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288770 n + (f1 (n + 1) - f1 n)

end

end A287188.P11171509230499054853

/-! ## A287188.P6945801817159264429

`A288770(n)+char[A005408(n)]`
-/

namespace A287188.P6945801817159264429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288770 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A287188.P6945801817159264429

/-! ## A287188.P13954947110871916270

`A288770(n)+A008603(n)%2`
-/

namespace A287188.P13954947110871916270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288770 n + Int.tmod (A008603 n) 2

end

end A287188.P13954947110871916270

/-! ## A287188.P16205463987651159879

`or(A286024(n), A288196(n+2))`
-/

namespace A287188.P16205463987651159879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A286024 n) (A288196 (n + 2))

end

end A287188.P16205463987651159879

/-! ## A287188.P3852908787889626377

`A288770(n)+and(n, A165326(n)²)`
-/

namespace A287188.P3852908787889626377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288770 n + Int.land (n : ℤ) (A165326 n ^ 2)

end

end A287188.P3852908787889626377

/-! ## A287188.P3643839370764453504

`A290862(xor(1, n)+1)`
-/

namespace A287188.P3643839370764453504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290862 (Nat.xor 1 n + 1)

end

end A287188.P3643839370764453504

/-! ## A287188.P1342238126128119047

`A290862(A014681(n+1))`
-/

namespace A287188.P1342238126128119047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290862 (A014681 (n + 1)).toNat

end

end A287188.P1342238126128119047

/-! ## A287188.P7070535405631419572

`A290862(A103889(n+1))`
-/

namespace A287188.P7070535405631419572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290862 (A103889 (n + 1)).toNat

end

end A287188.P7070535405631419572

/-! ## A287188.P10985376853280940067

`A290862(and(2, A060747(n))+n)`
-/

namespace A287188.P10985376853280940067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290862 (Int.land 2 (A060747 n) + (n : ℤ)).toNat

end

end A287188.P10985376853280940067

/-! ## A287188.P1963269527286488234

`A288770(n)+A027656(A027656(n²))`
-/

namespace A287188.P1963269527286488234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288770 n + A027656 (A027656 (n ^ 2)).toNat

end

end A287188.P1963269527286488234

/-!
# A287189: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 251", based on the 5-celled von Neumann neighborhood.

The programs for A287189, there is no canonical definition to state claims against.
-/

/-! ## A287189.P4001735926574593297

`or(A000079(n), A288804(n))`
-/

namespace A287189.P4001735926574593297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 n) (A288804 n)

end

end A287189.P4001735926574593297

/-! ## A287189.P12246040106093906123

`or(A122756(n), A288771(n))`
-/

namespace A287189.P12246040106093906123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122756 n) (A288771 n)

end

end A287189.P12246040106093906123

/-! ## A287189.P3577170299181278982

`or(A277867(n), A288771(n))`
-/

namespace A287189.P3577170299181278982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A277867 n) (A288771 n)

end

end A287189.P3577170299181278982

/-! ## A287189.P7565287426246442471

`or(A277867(n), A288804(n))`
-/

namespace A287189.P7565287426246442471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A277867 n) (A288804 n)

end

end A287189.P7565287426246442471

/-! ## A287189.P1413056151601460814

`or(A277928(n), A288771(n))`
-/

namespace A287189.P1413056151601460814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A277928 n) (A288771 n)

end

end A287189.P1413056151601460814

/-! ## A287189.P1519134589124098716

`or(A277936(n), A288771(n))`
-/

namespace A287189.P1519134589124098716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A277936 n) (A288771 n)

end

end A287189.P1519134589124098716

/-! ## A287189.P12908412149984595073

`or(A277928(n), A288804(n))`
-/

namespace A287189.P12908412149984595073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A277928 n) (A288804 n)

end

end A287189.P12908412149984595073

/-! ## A287189.P14157711539611741233

`or(A277929(n), A288804(n))`
-/

namespace A287189.P14157711539611741233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A277929 n) (A288804 n)

end

end A287189.P14157711539611741233

/-! ## A287189.P13830747639632442285

`or(A277936(n), A288804(n))`
-/

namespace A287189.P13830747639632442285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A277936 n) (A288804 n)

end

end A287189.P13830747639632442285

/-! ## A287189.P9446593348825090011

`or(2^n, A288804(n))%Δ[A001078(n)]`
-/

namespace A287189.P9446593348825090011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor (2 ^ n : ℤ) (A288804 n)) (f1 (n + 1) - f1 n)

end

end A287189.P9446593348825090011

/-! ## A287189.P1844077456387567

`or(2^n, A288771(n))%A217094(n+1)`
-/

namespace A287189.P1844077456387567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor (2 ^ n : ℤ) (A288771 n)) (A217094 (n + 1))

end

end A287189.P1844077456387567

/-!
# A287190: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 253", based on the 5-celled von Neumann neighborhood.

The programs for A287190, the canonical program `A287190.P14141146628365090120` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287190 has offset 0).

The definition of A287190 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287190.P13404294439913888483

`A266678(n)*A282002(n)`
-/

namespace A287190.P13404294439913888483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266678 n * A282002 n

end

end A287190.P13404294439913888483

namespace A287190

/-- `A266678(n)*A282002(n)` -/
def P13404294439913888483.Spec : Prop :=
  ∀ n, P13404294439913888483.a n = A287190 n

end A287190

/-! ## A287190.P10471374056908176786

`A060576(A030451(n))*A282002(n)`
-/

namespace A287190.P10471374056908176786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A030451 n).toNat * A282002 n

end

end A287190.P10471374056908176786

namespace A287190

/-- `A060576(A030451(n))*A282002(n)` -/
def P10471374056908176786.Spec : Prop :=
  ∀ n, P10471374056908176786.a n = A287190 n

end A287190

/-! ## A287190.P14141146628365090120

`A094026(and(A267352(n), A287192(n)))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A287190

/-- `A094026(and(A267352(n), A287192(n)))` -/
def P14141146628365090120.Spec : Prop :=
  ∀ n, P14141146628365090120.a n = A287190 n

theorem P14141146628365090120.correct : P14141146628365090120.Spec := by
  intro n
  simp only [A287190]

end A287190

/-! ## A287190.P2323310468996929732

`A282002(n)/A282005(n)*A287193(n)`
-/

namespace A287190.P2323310468996929732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282002 n : ℚ) / (A282005 n : ℚ) * (A287193 n : ℚ)

end

end A287190.P2323310468996929732

namespace A287190

/-- `A282002(n)/A282005(n)*A287193(n)` -/
def P2323310468996929732.Spec : Prop :=
  ∀ n, P2323310468996929732.a n = (A287190 n : ℚ)

end A287190

/-! ## A287190.P6794079604097389119

`A282002(n)%(A287131(n)+A282002(n))`
-/

namespace A287190.P6794079604097389119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282002 n) (A287131 n + A282002 n)

end

end A287190.P6794079604097389119

namespace A287190

/-- `A282002(n)%(A287131(n)+A282002(n))` -/
def P6794079604097389119.Spec : Prop :=
  ∀ n, P6794079604097389119.a n = A287190 n

end A287190

/-!
# A287191: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 253", based on the 5-celled von Neumann neighborhood.

The programs for A287191, the canonical program `A287191.P3677298343448240747` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287191 has offset 0).

The definition of A287191 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287191.P3677298343448240747

`lcm(A282003(n), A288699(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A287191

/-- `lcm(A282003(n), A288699(n))` -/
def P3677298343448240747.Spec : Prop :=
  ∀ n, (P3677298343448240747.a n : ℤ) = A287191 n

theorem P3677298343448240747.correct : P3677298343448240747.Spec := by
  intro n
  simp only [A287191]

end A287191

/-! ## A287191.P17091612318152618324

`A060576(A030451(n))*A282003(n)`
-/

namespace A287191.P17091612318152618324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A030451 n).toNat * A282003 n

end

end A287191.P17091612318152618324

namespace A287191

/-- `A060576(A030451(n))*A282003(n)` -/
def P17091612318152618324.Spec : Prop :=
  ∀ n, P17091612318152618324.a n = A287191 n

end A287191

/-! ## A287191.P24478707307978563

`A267520(A135276(n))*A282003(n)`
-/

namespace A287191.P24478707307978563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267520 (A135276 n).toNat * A282003 n

end

end A287191.P24478707307978563

namespace A287191

/-- `A267520(A135276(n))*A282003(n)` -/
def P24478707307978563.Spec : Prop :=
  ∀ n, P24478707307978563.a n = A287191 n

end A287191

/-! ## A287191.P9552708578478061790

`A000035(A056144(n+1))*A282003(n)`
-/

namespace A287191.P9552708578478061790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A056144 (n + 1)).toNat * A282003 n

end

end A287191.P9552708578478061790

namespace A287191

/-- `A000035(A056144(n+1))*A282003(n)` -/
def P9552708578478061790.Spec : Prop :=
  ∀ n, P9552708578478061790.a n = A287191 n

end A287191

/-! ## A287191.P16627548788510332247

`A081753(A081753(n)+2)*A282003(n)`
-/

namespace A287191.P16627548788510332247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A081753 n + 2).toNat * A282003 n

end

end A287191.P16627548788510332247

namespace A287191

/-- `A081753(A081753(n)+2)*A282003(n)` -/
def P16627548788510332247.Spec : Prop :=
  ∀ n, P16627548788510332247.a n = A287191 n

end A287191

/-! ## A287191.P8726558103702767168

`A282003(n)/A282005(n)*A287193(n)`
-/

namespace A287191.P8726558103702767168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282003 n : ℚ) / (A282005 n : ℚ) * (A287193 n : ℚ)

end

end A287191.P8726558103702767168

namespace A287191

/-- `A282003(n)/A282005(n)*A287193(n)` -/
def P8726558103702767168.Spec : Prop :=
  ∀ n, P8726558103702767168.a n = (A287191 n : ℚ)

end A287191

/-! ## A287191.P2812990867129619368

`A267621(A014105(n))*A282003(n)`
-/

namespace A287191.P2812990867129619368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267621 (A014105 n).toNat * A282003 n

end

end A287191.P2812990867129619368

namespace A287191

/-- `A267621(A014105(n))*A282003(n)` -/
def P2812990867129619368.Spec : Prop :=
  ∀ n, P2812990867129619368.a n = A287191 n

end A287191

/-!
# A287192: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 253", based on the 5-celled von Neumann neighborhood.

The programs for A287192, the canonical program `A287192.P9212492187600123384` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287192 has offset 0).

The definition of A287192 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287192.P1071628007970010464

`A266678(n)*A282004(n)`
-/

namespace A287192.P1071628007970010464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266678 n * A282004 n

end

end A287192.P1071628007970010464

namespace A287192

/-- `A266678(n)*A282004(n)` -/
def P1071628007970010464.Spec : Prop :=
  ∀ n, P1071628007970010464.a n = A287192 n

end A287192

/-! ## A287192.P14168403937178247257

`lcm(A282004(n), A286772(n))`
-/

namespace A287192.P14168403937178247257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A282004 n) (A286772 n)

end

end A287192.P14168403937178247257

namespace A287192

/-- `lcm(A282004(n), A286772(n))` -/
def P14168403937178247257.Spec : Prop :=
  ∀ n, (P14168403937178247257.a n : ℤ) = A287192 n

end A287192

/-! ## A287192.P1650239624115390618

`xor(A046698(n), A287197(n))`
-/

namespace A287192.P1650239624115390618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A046698 n) (A287197 n)

end

end A287192.P1650239624115390618

namespace A287192

/-- `xor(A046698(n), A287197(n))` -/
def P1650239624115390618.Spec : Prop :=
  ∀ n, P1650239624115390618.a n = A287192 n

end A287192

/-! ## A287192.P15088159378403591043

`Δ[A053438(n)]*A286772(n)`
-/

namespace A287192.P15088159378403591043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A286772 n

end

end A287192.P15088159378403591043

namespace A287192

/-- `Δ[A053438(n)]*A286772(n)` -/
def P15088159378403591043.Spec : Prop :=
  ∀ n, P15088159378403591043.a n = A287192 n

end A287192

/-! ## A287192.P4063557217281926355

`A153284(n+1)*A286772(n)`
-/

namespace A287192.P4063557217281926355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153284 (n + 1) * A286772 n

end

end A287192.P4063557217281926355

namespace A287192

/-- `A153284(n+1)*A286772(n)` -/
def P4063557217281926355.Spec : Prop :=
  ∀ n, P4063557217281926355.a n = A287192 n

end A287192

/-! ## A287192.P17783435437607420043

`or(2*A000035(n), A287131(n))`
-/

namespace A287192.P17783435437607420043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * A000035 n) (A287131 n)

end

end A287192.P17783435437607420043

namespace A287192

/-- `or(2*A000035(n), A287131(n))` -/
def P17783435437607420043.Spec : Prop :=
  ∀ n, P17783435437607420043.a n = A287192 n

end A287192

/-! ## A287192.P5945448681870477999

`or(2%A112155(n), A286772(n))`
-/

namespace A287192.P5945448681870477999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod 2 (A112155 n)) (A286772 n)

end

end A287192.P5945448681870477999

namespace A287192

/-- `or(2%A112155(n), A286772(n))` -/
def P5945448681870477999.Spec : Prop :=
  ∀ n, P5945448681870477999.a n = A287192 n

end A287192

/-! ## A287192.P1538800137776078104

`A282004(A282004(n)-A286772(n))*A286772(n)`
-/

namespace A287192.P1538800137776078104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282004 (A282004 n - A286772 n).toNat * A286772 n

end

end A287192.P1538800137776078104

namespace A287192

/-- `A282004(A282004(n)-A286772(n))*A286772(n)` -/
def P1538800137776078104.Spec : Prop :=
  ∀ n, P1538800137776078104.a n = A287192 n

end A287192

/-! ## A287192.P9212492187600123384

`5*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=2, a(2)=0, a(3)=14, a(4)=3, a(5)=62, a(6)=3`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A287192

/-- `5*a(n-2)-4*a(n-4)` -/
def P9212492187600123384.Spec : Prop :=
  ∀ n, P9212492187600123384.a n = A287192 n

theorem P9212492187600123384.correct : P9212492187600123384.Spec := by
  intro n
  simp only [A287192]

end A287192

/-! ## A287192.P15835178931445044552

`A282004(n)%A135353(n)`
-/

namespace A287192.P15835178931445044552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282004 n) (A135353 n)

end

end A287192.P15835178931445044552

namespace A287192

/-- `A282004(n)%A135353(n)` -/
def P15835178931445044552.Spec : Prop :=
  ∀ n, P15835178931445044552.a n = A287192 n

end A287192

/-!
# A287193: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 253", based on the 5-celled von Neumann neighborhood.

The programs for A287193, the canonical program `A287193.P831977986772281774` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287193 has offset 0).

The definition of A287193 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287193.P831977986772281774

`5*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=7, a(4)=24, a(5)=31, a(6)=96`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A287193

/-- `5*a(n-2)-4*a(n-4)` -/
def P831977986772281774.Spec : Prop :=
  ∀ n, P831977986772281774.a n = A287193 n

theorem P831977986772281774.correct : P831977986772281774.Spec := by
  intro n
  simp only [A287193]

end A287193

/-! ## A287193.P14297170948620775418

`(1-char[2])*A282005(n)`
-/

namespace A287193.P14297170948620775418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A282005 n

end

end A287193.P14297170948620775418

namespace A287193

/-- `(1-char[2])*A282005(n)` -/
def P14297170948620775418.Spec : Prop :=
  ∀ n, P14297170948620775418.a n = A287193 n

end A287193

/-! ## A287193.P17807615742122024334

`A282005(n)%A109784(n)`
-/

namespace A287193.P17807615742122024334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282005 n) (A109784 n)

end

end A287193.P17807615742122024334

namespace A287193

/-- `A282005(n)%A109784(n)` -/
def P17807615742122024334.Spec : Prop :=
  ∀ n, P17807615742122024334.a n = A287193 n

end A287193

/-! ## A287193.P6681891566613775012

`lcm(A282005(n), A288699(n))`
-/

namespace A287193.P6681891566613775012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A282005 n) (A288699 n)

end

end A287193.P6681891566613775012

namespace A287193

/-- `lcm(A282005(n), A288699(n))` -/
def P6681891566613775012.Spec : Prop :=
  ∀ n, (P6681891566613775012.a n : ℤ) = A287193 n

end A287193

/-! ## A287193.P10267508965479678560

`or(A286773(n), A287132(n))`
-/

namespace A287193.P10267508965479678560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A286773 n) (A287132 n)

end

end A287193.P10267508965479678560

namespace A287193

/-- `or(A286773(n), A287132(n))` -/
def P10267508965479678560.Spec : Prop :=
  ∀ n, P10267508965479678560.a n = A287193 n

end A287193

/-! ## A287193.P8436668118816708116

`and(A033999(A056144(n+1)), A282005(n))`
-/

namespace A287193.P8436668118816708116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 (A056144 (n + 1)).toNat) (A282005 n)

end

end A287193.P8436668118816708116

namespace A287193

/-- `and(A033999(A056144(n+1)), A282005(n))` -/
def P8436668118816708116.Spec : Prop :=
  ∀ n, P8436668118816708116.a n = A287193 n

end A287193

/-! ## A287193.P18390585687568327181

`A282005(A000007(n)+n)%A135353(n)`
-/

namespace A287193.P18390585687568327181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282005 (A000007 n + (n : ℤ)).toNat) (A135353 n)

end

end A287193.P18390585687568327181

namespace A287193

/-- `A282005(A000007(n)+n)%A135353(n)` -/
def P18390585687568327181.Spec : Prop :=
  ∀ n, P18390585687568327181.a n = A287193 n

end A287193

/-! ## A287193.P13172059192957193253

`and(A282005(A056144(n+1)+2), A282005(n))`
-/

namespace A287193.P13172059192957193253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A282005 (A056144 (n + 1) + 2).toNat) (A282005 n)

end

end A287193.P13172059192957193253

namespace A287193

/-- `and(A282005(A056144(n+1)+2), A282005(n))` -/
def P13172059192957193253.Spec : Prop :=
  ∀ n, P13172059192957193253.a n = A287193 n

end A287193

/-!
# A287194: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 259", based on the 5-celled von Neumann neighborhood.

The programs for A287194, the canonical program `A287194.P11056681714251016849` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287194 has offset 0).

The definition of A287194 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287194.P5577506499297605521

`lcm(11^(n%2), A277797(char[1]+n))`
-/

namespace A287194.P5577506499297605521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (11 ^ (n % 2) : ℤ) (A277797 ((if ∃ j, f1 j = n then 1 else 0) + n))

end

end A287194.P5577506499297605521

namespace A287194

/-- `lcm(11^(n%2), A277797(char[1]+n))` -/
def P5577506499297605521.Spec : Prop :=
  ∀ n, (P5577506499297605521.a n : ℤ) = A287194 n

end A287194

/-! ## A287194.P17039126223127875557

`A277797(n)+char[1]*A266705(n)`
-/

namespace A287194.P17039126223127875557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277797 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A266705 n

end

end A287194.P17039126223127875557

namespace A287194

/-- `A277797(n)+char[1]*A266705(n)` -/
def P17039126223127875557.Spec : Prop :=
  ∀ n, P17039126223127875557.a n = A287194 n

end A287194

/-! ## A287194.P891496414124828879

`A277797(n)+A287196(n)-A277798(n)`
-/

namespace A287194.P891496414124828879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277797 n + (A287196 n - A277798 n)

end

end A287194.P891496414124828879

namespace A287194

/-- `A277797(n)+A287196(n)-A277798(n)` -/
def P891496414124828879.Spec : Prop :=
  ∀ n, P891496414124828879.a n = A287194 n

end A287194

/-! ## A287194.P11056681714251016849

`xor(A000035(n), A290192(n*A000035(n)))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A287194

/-- `xor(A000035(n), A290192(n*A000035(n)))` -/
def P11056681714251016849.Spec : Prop :=
  ∀ n, P11056681714251016849.a n = A287194 n

theorem P11056681714251016849.correct : P11056681714251016849.Spec := by
  intro n
  simp only [A287194]

end A287194

/-! ## A287194.P15869597917616749394

`xor(1, A000035(n)*A290192(n))`
-/

namespace A287194.P15869597917616749394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A000035 n * A290192 n)

end

end A287194.P15869597917616749394

namespace A287194

/-- `xor(1, A000035(n)*A290192(n))` -/
def P15869597917616749394.Spec : Prop :=
  ∀ n, P15869597917616749394.a n = A287194 n

end A287194

/-! ## A287194.P5392536500053048812

`1-Δ[A287190(n)]*A000035(n)`
-/

namespace A287194.P5392536500053048812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287190 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n) * A000035 n

end

end A287194.P5392536500053048812

namespace A287194

/-- `1-Δ[A287190(n)]*A000035(n)` -/
def P5392536500053048812.Spec : Prop :=
  ∀ n, P5392536500053048812.a n = A287194 n

end A287194

/-! ## A287194.P519742494786434693

`gcd(A007088(A099895(n)), A277797(n))`
-/

namespace A287194.P519742494786434693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007088 (A099895 n).toNat) (A277797 n)

end

end A287194.P519742494786434693

namespace A287194

/-- `gcd(A007088(A099895(n)), A277797(n))` -/
def P519742494786434693.Spec : Prop :=
  ∀ n, (P519742494786434693.a n : ℤ) = A287194 n

end A287194

/-!
# A287195: Independence and clique covering number of the n-triangular honeycomb acute knight graph.

The programs for A287195, the canonical program `A287195.P15023266255875623056` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287195 has offset 1).

The definition of A287195 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287195.P15023266255875623056

`a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` with `a(0)=1, a(1)=3, a(2)=3, a(3)=5, a(4)=9, a(5)=9, a(6)=12`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A287195

/-- `a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` -/
def P15023266255875623056.Spec : Prop :=
  ∀ n, P15023266255875623056.a n = A287195 (n + 1)

theorem P15023266255875623056.correct : P15023266255875623056.Spec := by
  intro n
  simp only [A287195, Nat.add_sub_cancel]

end A287195

/-! ## A287195.P14662659516390111498

`A066377(n+2)-A092353(n+1)`
-/

namespace A287195.P14662659516390111498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066377 (n + 2) - A092353 (n + 1)

end

end A287195.P14662659516390111498

namespace A287195

/-- `A066377(n+2)-A092353(n+1)` -/
def P14662659516390111498.Spec : Prop :=
  ∀ n, P14662659516390111498.a n = A287195 (n + 1)

end A287195

/-! ## A287195.P6444467499002537762

`∑[∑[∑[(n+1)*(1-n%3)]]]`
-/

namespace A287195.P6444467499002537762
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - ((n % 3 : ℕ) : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287195.P6444467499002537762

namespace A287195

/-- `∑[∑[∑[(n+1)*(1-n%3)]]]` -/
def P6444467499002537762.Spec : Prop :=
  ∀ n, P6444467499002537762.a n = A287195 (n + 1)

end A287195

/-! ## A287195.P12648413099389761070

`∑[a(n-3)+(n+1)%3]` with `a(0)=1, a(1)=2, a(2)=0`
-/

namespace A287195.P12648413099389761070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 0] fun n f1 =>
  f1 (n - 3) + (n + 1) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287195.P12648413099389761070

namespace A287195

/-- `∑[a(n-3)+(n+1)%3]` -/
def P12648413099389761070.Spec : Prop :=
  ∀ n, (P12648413099389761070.a n : ℤ) = A287195 (n + 1)

end A287195

/-! ## A287195.P5396017536561864973

`∑[floor((2*n+3)²/3)%(n+2)]`
-/

namespace A287195.P5396017536561864973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊((2 * n + 3) ^ 2 : ℚ) / 3⌋ (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287195.P5396017536561864973

namespace A287195

/-- `∑[floor((2*n+3)²/3)%(n+2)]` -/
def P5396017536561864973.Spec : Prop :=
  ∀ n, P5396017536561864973.a n = A287195 (n + 1)

end A287195

/-! ## A287195.P3954983533442424482

`A092200(n)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=3`
-/

namespace A287195.P3954983533442424482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 3] fun n a =>
  A092200 n + a (n - 3)

end

end A287195.P3954983533442424482

namespace A287195

/-- `A092200(n)+a(n-3)` -/
def P3954983533442424482.Spec : Prop :=
  ∀ n, P3954983533442424482.a n = A287195 (n + 1)

end A287195

/-! ## A287195.P931846789425800203

`∑[A010892(n)*A099254(n)]`
-/

namespace A287195.P931846789425800203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A099254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287195.P931846789425800203

namespace A287195

/-- `∑[A010892(n)*A099254(n)]` -/
def P931846789425800203.Spec : Prop :=
  ∀ n, P931846789425800203.a n = A287195 (n + 1)

end A287195

/-! ## A287195.P12396509454262681310

`∑[lcm(A099254(n), A117441(n))]`
-/

namespace A287195.P12396509454262681310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A099254 n) (A117441 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287195.P12396509454262681310

namespace A287195

/-- `∑[lcm(A099254(n), A117441(n))]` -/
def P12396509454262681310.Spec : Prop :=
  ∀ n, (P12396509454262681310.a n : ℤ) = A287195 (n + 1)

end A287195

/-! ## A287195.P15029170078845854179

`A001840((n%3)%2+n+1)`
-/

namespace A287195.P15029170078845854179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 (n % 3 % 2 + (n + 1))

end

end A287195.P15029170078845854179

namespace A287195

/-- `A001840((n%3)%2+n+1)` -/
def P15029170078845854179.Spec : Prop :=
  ∀ n, P15029170078845854179.a n = A287195 (n + 1)

end A287195

/-! ## A287195.P11270560064468011029

`A001840(3*n+1-(2*n-char[3*n+1]))`
-/

namespace A287195.P11270560064468011029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 ((3 * n + 1 : ℤ) - ((2 * n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))).toNat

end

end A287195.P11270560064468011029

namespace A287195

/-- `A001840(3*n+1-(2*n-char[3*n+1]))` -/
def P11270560064468011029.Spec : Prop :=
  ∀ n, P11270560064468011029.a n = A287195 (n + 1)

end A287195

/-! ## A287195.P11406689199560847248

`∑[A115273(n+4)]`
-/

namespace A287195.P11406689199560847248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115273 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287195.P11406689199560847248

namespace A287195

/-- `∑[A115273(n+4)]` -/
def P11406689199560847248.Spec : Prop :=
  ∀ n, P11406689199560847248.a n = A287195 (n + 1)

end A287195

/-! ## A287195.P14080887779564071774

`A086159(2*n+1)+∑[A175676(n+2)]`
-/

namespace A287195.P14080887779564071774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086159 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287195.P14080887779564071774

namespace A287195

/-- `A086159(2*n+1)+∑[A175676(n+2)]` -/
def P14080887779564071774.Spec : Prop :=
  ∀ n, P14080887779564071774.a n = A287195 (n + 1)

end A287195

/-! ## A287195.P13544870904824103487

`A025796(2*n)+2*A025796(2*n+1)`
-/

namespace A287195.P13544870904824103487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025796 (2 * n) + 2 * A025796 (2 * n + 1)

end

end A287195.P13544870904824103487

namespace A287195

/-- `A025796(2*n)+2*A025796(2*n+1)` -/
def P13544870904824103487.Spec : Prop :=
  ∀ n, P13544870904824103487.a n = A287195 (n + 1)

end A287195

/-! ## A287195.P5209740321836396467

`A008731(A029739(n+2))`
-/

namespace A287195.P5209740321836396467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008731 (A029739 (n + 2)).toNat

end

end A287195.P5209740321836396467

namespace A287195

/-- `A008731(A029739(n+2))` -/
def P5209740321836396467.Spec : Prop :=
  ∀ n, P5209740321836396467.a n = A287195 (n + 1)

end A287195

/-! ## A287195.P5901993140184356815

`A308067(A047240(n+2)+A005408(n+3))`
-/

namespace A287195.P5901993140184356815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308067 (A047240 (n + 2) + A005408 (n + 3)).toNat

end

end A287195.P5901993140184356815

namespace A287195

/-- `A308067(A047240(n+2)+A005408(n+3))` -/
def P5901993140184356815.Spec : Prop :=
  ∀ n, P5901993140184356815.a n = A287195 (n + 1)

end A287195

/-!
# A287196: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 259", based on the 5-celled von Neumann neighborhood.

The programs for A287196, the canonical program `A287196.P12136604551129073341` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287196 has offset 0).

The definition of A287196 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287196.P12136604551129073341

`A277798(lcm(n, A260196(n)))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A287196

/-- `A277798(lcm(n, A260196(n)))` -/
def P12136604551129073341.Spec : Prop :=
  ∀ n, P12136604551129073341.a n = A287196 n

theorem P12136604551129073341.correct : P12136604551129073341.Spec := by
  intro n
  simp only [A287196]

end A287196

/-! ## A287196.P10077010355611728466

`A277798(or(n, A254667(n)))`
-/

namespace A287196.P10077010355611728466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277798 (Int.lor (n : ℤ) (A254667 n)).toNat

end

end A287196.P10077010355611728466

namespace A287196

/-- `A277798(or(n, A254667(n)))` -/
def P10077010355611728466.Spec : Prop :=
  ∀ n, P10077010355611728466.a n = A287196 n

end A287196

/-! ## A287196.P236253597408340663

`A277798(2*A254667(n)-n)`
-/

namespace A287196.P236253597408340663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277798 (2 * A254667 n - (n : ℤ)).toNat

end

end A287196.P236253597408340663

namespace A287196

/-- `A277798(2*A254667(n)-n)` -/
def P236253597408340663.Spec : Prop :=
  ∀ n, P236253597408340663.a n = A287196 n

end A287196

/-! ## A287196.P13129442014972670893

`A277798(n*A014963(∑[n+1]))`
-/

namespace A287196.P13129442014972670893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277798 ((n : ℤ) * A014963 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A287196.P13129442014972670893

namespace A287196

/-- `A277798(n*A014963(∑[n+1]))` -/
def P13129442014972670893.Spec : Prop :=
  ∀ n, P13129442014972670893.a n = A287196 n

end A287196

/-! ## A287196.P14978739694443196541

`A277798(A254667(n)+A254667(n)-n)`
-/

namespace A287196.P14978739694443196541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277798 (A254667 n + (A254667 n - (n : ℤ))).toNat

end

end A287196.P14978739694443196541

namespace A287196

/-- `A277798(A254667(n)+A254667(n)-n)` -/
def P14978739694443196541.Spec : Prop :=
  ∀ n, P14978739694443196541.a n = A287196 n

end A287196

/-! ## A287196.P8200071931489734326

`A277798(A254667(n)-(n-A254667(n)))`
-/

namespace A287196.P8200071931489734326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277798 (A254667 n - ((n : ℤ) - A254667 n)).toNat

end

end A287196.P8200071931489734326

namespace A287196

/-- `A277798(A254667(n)-(n-A254667(n)))` -/
def P8200071931489734326.Spec : Prop :=
  ∀ n, P8200071931489734326.a n = A287196 n

end A287196

/-! ## A287196.P5596947850452911060

`A277798(n)+A287194(n)-A277797(n)`
-/

namespace A287196.P5596947850452911060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277798 n + (A287194 n - A277797 n)

end

end A287196.P5596947850452911060

namespace A287196

/-- `A277798(n)+A287194(n)-A277797(n)` -/
def P5596947850452911060.Spec : Prop :=
  ∀ n, P5596947850452911060.a n = A287196 n

end A287196

/-! ## A287196.P7468487434461234283

`gcd(A059841(n)-A287194(n), A277798(n))`
-/

namespace A287196.P7468487434461234283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059841 n - A287194 n) (A277798 n)

end

end A287196.P7468487434461234283

namespace A287196

/-- `gcd(A059841(n)-A287194(n), A277798(n))` -/
def P7468487434461234283.Spec : Prop :=
  ∀ n, (P7468487434461234283.a n : ℤ) = A287196 n

end A287196

/-!
# A287197: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 259", based on the 5-celled von Neumann neighborhood.

The programs for A287197, the canonical program `A287197.P11640315673981248028` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287197 has offset 0).

The definition of A287197 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287197.P17147425844691116668

`A277799(n)^a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A287197.P17147425844691116668
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 3] fun n a =>
  (A277799 n : ℝ) ^ (a (n - 1))

end

end A287197.P17147425844691116668

namespace A287197

/-- `A277799(n)^a(n-1)` -/
def P17147425844691116668.Spec : Prop :=
  ∀ n, P17147425844691116668.a n = (A287197 n : ℝ)

end A287197

/-! ## A287197.P12205245961992954967

`A089226(n*n%2+1)-3`
-/

namespace A287197.P12205245961992954967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089226 (n * (n % 2) + 1) - 3

end

end A287197.P12205245961992954967

namespace A287197

/-- `A089226(n*n%2+1)-3` -/
def P12205245961992954967.Spec : Prop :=
  ∀ n, P12205245961992954967.a n = A287197 n

end A287197

/-! ## A287197.P11640315673981248028

`gcd(A169585(n), A277799(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A287197

/-- `gcd(A169585(n), A277799(n))` -/
def P11640315673981248028.Spec : Prop :=
  ∀ n, (P11640315673981248028.a n : ℤ) = A287197 n

theorem P11640315673981248028.correct : P11640315673981248028.Spec := by
  intro n
  simp only [A287197]

end A287197

/-! ## A287197.P3886247728059514030

`xor(A046698(n), A287192(n))`
-/

namespace A287197.P3886247728059514030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A046698 n) (A287192 n)

end

end A287197.P3886247728059514030

namespace A287197

/-- `xor(A046698(n), A287192(n))` -/
def P3886247728059514030.Spec : Prop :=
  ∀ n, P3886247728059514030.a n = A287197 n

end A287197

/-! ## A287197.P17765641940098863063

`xor(A130130(n), A282004(n))`
-/

namespace A287197.P17765641940098863063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A130130 n) (A282004 n)

end

end A287197.P17765641940098863063

namespace A287197

/-- `xor(A130130(n), A282004(n))` -/
def P17765641940098863063.Spec : Prop :=
  ∀ n, P17765641940098863063.a n = A287197 n

end A287197

/-! ## A287197.P7972290557338715958

`or(Δ[A213173(n)], A277799(n))`
-/

namespace A287197.P7972290557338715958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213173 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A277799 n)

end

end A287197.P7972290557338715958

namespace A287197

/-- `or(Δ[A213173(n)], A277799(n))` -/
def P7972290557338715958.Spec : Prop :=
  ∀ n, P7972290557338715958.a n = A287197 n

end A287197

/-! ## A287197.P1653939077666322693

`A277799(n)+3*(A254667(n)-n)`
-/

namespace A287197.P1653939077666322693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277799 n + 3 * (A254667 n - (n : ℤ))

end

end A287197.P1653939077666322693

namespace A287197

/-- `A277799(n)+3*(A254667(n)-n)` -/
def P1653939077666322693.Spec : Prop :=
  ∀ n, P1653939077666322693.a n = A287197 n

end A287197

/-! ## A287197.P7169376661821925385

`A277799(n)+A287199(n)-A277800(n)`
-/

namespace A287197.P7169376661821925385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277799 n + (A287199 n - A277800 n)

end

end A287197.P7169376661821925385

namespace A287197

/-- `A277799(n)+A287199(n)-A277800(n)` -/
def P7169376661821925385.Spec : Prop :=
  ∀ n, P7169376661821925385.a n = A287197 n

end A287197

/-! ## A287197.P5077067203965645598

`A277799(n)+A117980(A254667(n)+A117980(n))`
-/

namespace A287197.P5077067203965645598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277799 n + A117980 (A254667 n + A117980 n).toNat

end

end A287197.P5077067203965645598

namespace A287197

/-- `A277799(n)+A117980(A254667(n)+A117980(n))` -/
def P5077067203965645598.Spec : Prop :=
  ∀ n, P5077067203965645598.a n = A287197 n

end A287197

/-! ## A287197.P2726016905913513785

`xor(val(A025579(n+1), 2), A282004(n))`
-/

namespace A287197.P2726016905913513785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.valuation (A025579 (n + 1)).toNat 2 : ℤ) (A282004 n)

end

end A287197.P2726016905913513785

namespace A287197

/-- `xor(val(A025579(n+1), 2), A282004(n))` -/
def P2726016905913513785.Spec : Prop :=
  ∀ n, P2726016905913513785.a n = A287197 n

end A287197

/-! ## A287197.P3510230514730158997

`A277800(A014963(∑[n+1]))+A277799(n)`
-/

namespace A287197.P3510230514730158997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277800 (A014963 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A277799 n

end

end A287197.P3510230514730158997

namespace A287197

/-- `A277800(A014963(∑[n+1]))+A277799(n)` -/
def P3510230514730158997.Spec : Prop :=
  ∀ n, P3510230514730158997.a n = A287197 n

end A287197

/-!
# A287199: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 259", based on the 5-celled von Neumann neighborhood.

The programs for A287199, the canonical program `A287199.P5326303416809043040` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287199 has offset 0).

The definition of A287199 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287199.P2378694069234187176

`3*n%2+4*a(n-2)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=3`
-/

namespace A287199.P2378694069234187176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 4, 3] fun n a =>
  3 * (n % 2) + 4 * a (n - 2)

end

end A287199.P2378694069234187176

namespace A287199

/-- `3*n%2+4*a(n-2)` -/
def P2378694069234187176.Spec : Prop :=
  ∀ n, (P2378694069234187176.a n : ℤ) = A287199 n

end A287199

/-! ## A287199.P6413398213707332584

`A277800(2*char[1]+n)`
-/

namespace A287199.P6413398213707332584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277800 (2 * (if ∃ j, f1 j = n then 1 else 0) + n)

end

end A287199.P6413398213707332584

namespace A287199

/-- `A277800(2*char[1]+n)` -/
def P6413398213707332584.Spec : Prop :=
  ∀ n, P6413398213707332584.a n = A287199 n

end A287199

/-! ## A287199.P8130071997695413719

`A277800(char[1]+n)-char[1]`
-/

namespace A287199.P8130071997695413719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277800 ((if ∃ j, f1 j = n then 1 else 0) + n) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A287199.P8130071997695413719

namespace A287199

/-- `A277800(char[1]+n)-char[1]` -/
def P8130071997695413719.Spec : Prop :=
  ∀ n, P8130071997695413719.a n = A287199 n

end A287199

/-! ## A287199.P7354494038747306597

`A285475((xor(1, n)+n)%(n+1))`
-/

namespace A287199.P7354494038747306597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285475 ((Nat.xor 1 n + n) % (n + 1))

end

end A287199.P7354494038747306597

namespace A287199

/-- `A285475((xor(1, n)+n)%(n+1))` -/
def P7354494038747306597.Spec : Prop :=
  ∀ n, P7354494038747306597.a n = A287199 n

end A287199

/-! ## A287199.P16477286647656558930

`gcd(A169585(n), A277800(n))`
-/

namespace A287199.P16477286647656558930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A169585 n) (A277800 n)

end

end A287199.P16477286647656558930

namespace A287199

/-- `gcd(A169585(n), A277800(n))` -/
def P16477286647656558930.Spec : Prop :=
  ∀ n, (P16477286647656558930.a n : ℤ) = A287199 n

end A287199

/-! ## A287199.P17036401443375798935

`or(A117980(n+1), A277800(n))`
-/

namespace A287199.P17036401443375798935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A117980 (n + 1)) (A277800 n)

end

end A287199.P17036401443375798935

namespace A287199

/-- `or(A117980(n+1), A277800(n))` -/
def P17036401443375798935.Spec : Prop :=
  ∀ n, P17036401443375798935.a n = A287199 n

end A287199

/-! ## A287199.P6777384557062040990

`A213173(A254667(n))-A000035(n)`
-/

namespace A287199.P6777384557062040990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213173 (A254667 n).toNat - A000035 n

end

end A287199.P6777384557062040990

namespace A287199

/-- `A213173(A254667(n))-A000035(n)` -/
def P6777384557062040990.Spec : Prop :=
  ∀ n, P6777384557062040990.a n = A287199 n

end A287199

/-! ## A287199.P15486751328575160832

`A287197(n)+A277800(n)-A277799(n)`
-/

namespace A287199.P15486751328575160832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287197 n + (A277800 n - A277799 n)

end

end A287199.P15486751328575160832

namespace A287199

/-- `A287197(n)+A277800(n)-A277799(n)` -/
def P15486751328575160832.Spec : Prop :=
  ∀ n, P15486751328575160832.a n = A287199 n

end A287199

/-! ## A287199.P10793149386526579705

`A094359(n)+A094359(n+1)%A000051(n)`
-/

namespace A287199.P10793149386526579705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094359 n + Int.tmod (A094359 (n + 1)) (A000051 n)

end

end A287199.P10793149386526579705

namespace A287199

/-- `A094359(n)+A094359(n+1)%A000051(n)` -/
def P10793149386526579705.Spec : Prop :=
  ∀ n, P10793149386526579705.a n = A287199 n

end A287199

/-! ## A287199.P5326303416809043040

`5*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=3, a(4)=16, a(5)=15`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A287199

/-- `5*a(n-2)-4*a(n-4)` -/
def P5326303416809043040.Spec : Prop :=
  ∀ n, P5326303416809043040.a n = A287199 n

theorem P5326303416809043040.correct : P5326303416809043040.Spec := by
  intro n
  simp only [A287199]

end A287199

/-! ## A287199.P13414978051366887472

`A285475(n)%A058764(n)`
-/

namespace A287199.P13414978051366887472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285475 n) (A058764 n)

end

end A287199.P13414978051366887472

namespace A287199

/-- `A285475(n)%A058764(n)` -/
def P13414978051366887472.Spec : Prop :=
  ∀ n, P13414978051366887472.a n = A287199 n

end A287199

/-! ## A287199.P17525806648329916270

`A285475(n-and(2, A287193(n)))`
-/

namespace A287199.P17525806648329916270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285475 ((n : ℤ) - Int.land 2 (A287193 n)).toNat

end

end A287199.P17525806648329916270

namespace A287199

/-- `A285475(n-and(2, A287193(n)))` -/
def P17525806648329916270.Spec : Prop :=
  ∀ n, P17525806648329916270.a n = A287199 n

end A287199

/-! ## A287199.P17419375968136344468

`A285475(n-and(2, A288067(n)))`
-/

namespace A287199.P17419375968136344468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285475 ((n : ℤ) - Int.land 2 (A288067 n)).toNat

end

end A287199.P17419375968136344468

namespace A287199

/-- `A285475(n-and(2, A288067(n)))` -/
def P17419375968136344468.Spec : Prop :=
  ∀ n, P17419375968136344468.a n = A287199 n

end A287199

/-! ## A287199.P3474417049156573323

`A266516(n)%A058764(n)`
-/

namespace A287199.P3474417049156573323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266516 n) (A058764 n)

end

end A287199.P3474417049156573323

namespace A287199

/-- `A266516(n)%A058764(n)` -/
def P3474417049156573323.Spec : Prop :=
  ∀ n, P3474417049156573323.a n = A287199 n

end A287199

/-! ## A287199.P6353810515923990051

`A267036(n)%A058764(n)`
-/

namespace A287199.P6353810515923990051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267036 n) (A058764 n)

end

end A287199.P6353810515923990051

namespace A287199

/-- `A267036(n)%A058764(n)` -/
def P6353810515923990051.Spec : Prop :=
  ∀ n, P6353810515923990051.a n = A287199 n

end A287199

/-! ## A287199.P6569767364771166516

`A102363(((n+1)*A026741(n))%∑[n+1])`
-/

namespace A287199.P6569767364771166516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 (Int.tmod ((n + 1 : ℤ) * A026741 n) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A287199.P6569767364771166516

namespace A287199

/-- `A102363(((n+1)*A026741(n))%∑[n+1])` -/
def P6569767364771166516.Spec : Prop :=
  ∀ n, P6569767364771166516.a n = A287199 n

end A287199

