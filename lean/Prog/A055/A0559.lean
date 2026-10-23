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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A055900: Column 4 of triangle A055898.

The programs for A055900, there is no canonical definition to state claims against.
-/

/-! ## A055900.P5677058055093667854

`A055898(eq[4, A002262(n)])`
-/

namespace A055900.P5677058055093667854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055900.P5677058055093667854

/-! ## A055900.P959068487738101952

`A055898(A167499(n+3)-1)`
-/

namespace A055900.P959068487738101952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055898 (A167499 (n + 3) - 1).toNat

end

end A055900.P959068487738101952

/-! ## A055900.P10417828527538937878

`A055898(A027379(n+2)+7)`
-/

namespace A055900.P10417828527538937878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055898 (A027379 (n + 2) + 7).toNat

end

end A055900.P10417828527538937878

/-! ## A055900.P7371338532582269821

`A055898(eq[5, A002260(n+1)])`
-/

namespace A055900.P7371338532582269821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055900.P7371338532582269821

/-! ## A055900.P7036087211610370178

`A055898(eq[2, A144328(n+1)-2])`
-/

namespace A055900.P7036087211610370178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055900.P7036087211610370178

/-! ## A055900.P10182818955101246281

`A055898(eq[2, A144328(n+1)/2])`
-/

namespace A055900.P10182818955101246281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144328 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055898 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A055900.P10182818955101246281

/-! ## A055900.P10881344916699183967

`A055898(A000217(n+5)-(n+1))`
-/

namespace A055900.P10881344916699183967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055898 (A000217 (n + 5) - (n + 1 : ℤ)).toNat

end

end A055900.P10881344916699183967

/-!
# A055901: Column 5 of triangle A055898.

The programs for A055901, there is no canonical definition to state claims against.
-/

/-! ## A055901.P5559038627893070969

`A055898(eq[5, A002262(n)])`
-/

namespace A055901.P5559038627893070969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055901.P5559038627893070969

/-! ## A055901.P12861235057467673104

`A055898(A000124(n+5)+4)`
-/

namespace A055901.P12861235057467673104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055898 (A000124 (n + 5) + 4).toNat

end

end A055901.P12861235057467673104

/-! ## A055901.P13618600360477467089

`A055898(A000217(n+5)+5)`
-/

namespace A055901.P13618600360477467089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055898 (A000217 (n + 5) + 5).toNat

end

end A055901.P13618600360477467089

/-! ## A055901.P1523345619053161076

`A055898(A027379(n+3)+8)`
-/

namespace A055901.P1523345619053161076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055898 (A027379 (n + 3) + 8).toNat

end

end A055901.P1523345619053161076

/-! ## A055901.P5253912536564682665

`A055898(eq[6, A002260(n+1)])`
-/

namespace A055901.P5253912536564682665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055901.P5253912536564682665

/-!
# A055902: Column 6 of triangle A055898.

The programs for A055902, there is no canonical definition to state claims against.
-/

/-! ## A055902.P7204127431724081056

`A055898(eq[6, A002262(n)])`
-/

namespace A055902.P7204127431724081056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055902.P7204127431724081056

/-! ## A055902.P10318360099175882146

`A055898(eq[64, A059268(n)])`
-/

namespace A055902.P10318360099175882146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055902.P10318360099175882146

/-! ## A055902.P5708013530291814107

`A055898(A161680(n+7)+6)`
-/

namespace A055902.P5708013530291814107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055898 (A161680 (n + 7) + 6).toNat

end

end A055902.P5708013530291814107

/-! ## A055902.P2344116277479025734

`A055898(eq[6, A144328(n+1)])`
-/

namespace A055902.P2344116277479025734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055902.P2344116277479025734

/-! ## A055902.P9688643124564559625

`A055898(eq[7, A002260(n+1)])`
-/

namespace A055902.P9688643124564559625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055902.P9688643124564559625

/-!
# A055903: Column 7 of triangle A055898.

The programs for A055903, there is no canonical definition to state claims against.
-/

/-! ## A055903.P7708238789653686123

`A055898(eq[7, A002262(n)])`
-/

namespace A055903.P7708238789653686123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055903.P7708238789653686123

/-! ## A055903.P15253570557422684810

`A055898(A000124(n+7)+6)`
-/

namespace A055903.P15253570557422684810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055898 (A000124 (n + 7) + 6).toNat

end

end A055903.P15253570557422684810

/-! ## A055903.P8511340814612956353

`A055898(A000096(n+6)+8)`
-/

namespace A055903.P8511340814612956353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055898 (A000096 (n + 6) + 8).toNat

end

end A055903.P8511340814612956353

/-! ## A055903.P7946436865212899512

`A055898(eq[8, A002260(n+1)])`
-/

namespace A055903.P7946436865212899512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055903.P7946436865212899512

/-! ## A055903.P6741888854144592342

`A055898(A000217(n+8)-(n+1))`
-/

namespace A055903.P6741888854144592342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055898 (A000217 (n + 8) - (n + 1 : ℤ)).toNat

end

end A055903.P6741888854144592342

/-!
# A055904: Column 8 of triangle A055898.

The programs for A055904, there is no canonical definition to state claims against.
-/

/-! ## A055904.P3930683551816137828

`A055898(eq[8, A002262(n)])`
-/

namespace A055904.P3930683551816137828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055904.P3930683551816137828

/-! ## A055904.P11002198350803133735

`A055898(A000096(n+7)+9)`
-/

namespace A055904.P11002198350803133735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055898 (A000096 (n + 7) + 9).toNat

end

end A055904.P11002198350803133735

/-! ## A055904.P1781301440654850708

`A055898(eq[8, A144328(n+1)])`
-/

namespace A055904.P1781301440654850708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055904.P1781301440654850708

/-! ## A055904.P12314627782711781253

`A055898(eq[9, A002260(n+1)])`
-/

namespace A055904.P12314627782711781253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055904.P12314627782711781253

/-! ## A055904.P2850572061544428004

`A055898(A152947(n+11)-(n+2))`
-/

namespace A055904.P2850572061544428004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055898 (A152947 (n + 11) - (n + 2 : ℤ)).toNat

end

end A055904.P2850572061544428004

/-!
# A055906: Column 0 of triangle A055905.

The programs for A055906, there is no canonical definition to state claims against.
-/

/-! ## A055906.P17464110231751355536

`A055905(∑[n])`
-/

namespace A055906.P17464110231751355536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055905 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055906.P17464110231751355536

/-! ## A055906.P17683951568111748195

`or(A000007(n), A055905(A000217(n)))`
-/

namespace A055906.P17683951568111748195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A055905 (A000217 n).toNat)

end

end A055906.P17683951568111748195

/-! ## A055906.P3422960786608243737

`or(A036987(n), A055905(A000217(n)))`
-/

namespace A055906.P3422960786608243737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036987 n) (A055905 (A000217 n).toNat)

end

end A055906.P3422960786608243737

/-! ## A055906.P17501487550542376226

`xor(A000007(n+1), A055905(A000217(n)))`
-/

namespace A055906.P17501487550542376226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (n + 1)) (A055905 (A000217 n).toNat)

end

end A055906.P17501487550542376226

/-! ## A055906.P2715159366702073437

`A007318(C(2, n))*A055905(A000217(n))`
-/

namespace A055906.P2715159366702073437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A055905 (A000217 n).toNat

end

end A055906.P2715159366702073437

/-! ## A055906.P11769078271492048746

`or(A016116(n)%2, A055905(A000217(n)))`
-/

namespace A055906.P11769078271492048746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A016116 n) 2) (A055905 (A000217 n).toNat)

end

end A055906.P11769078271492048746

/-! ## A055906.P10370088093607222517

`A055905(A000217(n))^gcd(2, A000040(n+1))`
-/

namespace A055906.P10370088093607222517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055905 (A000217 n).toNat ^ Int.gcd 2 (A000040 (n + 1))

end

end A055906.P10370088093607222517

/-! ## A055906.P16252281595728243329

`A055905(A000217(n))*A342007(A228035(n))`
-/

namespace A055906.P16252281595728243329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055905 (A000217 n).toNat * A342007 (A228035 n).toNat

end

end A055906.P16252281595728243329

/-! ## A055906.P15222029525876910584

`A055905(A000217(n))*A339890(A244175(n+1))`
-/

namespace A055906.P15222029525876910584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055905 (A000217 n).toNat * A339890 (A244175 (n + 1)).toNat

end

end A055906.P15222029525876910584

/-!
# A055907: Triangle: number of directed site animals on hexagonal net (honeycomb) with n total sites and k sites supported in one particular way.

The programs for A055907, there is no canonical definition to state claims against.
-/

/-! ## A055907.P15106902438719059057

`A128966(n)+A025442(A331568(n))`
-/

namespace A055907.P15106902438719059057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128966 n + A025442 (A331568 n).toNat

end

end A055907.P15106902438719059057

/-! ## A055907.P2211922274116490824

`A001462(A238688(n))%A090573(n)`
-/

namespace A055907.P2211922274116490824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001462 (A238688 n).toNat) (A090573 n)

end

end A055907.P2211922274116490824

/-! ## A055907.P18076987021898742475

`A000695(A342890(n))%A080542(n+1)`
-/

namespace A055907.P18076987021898742475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000695 (A342890 n).toNat) (A080542 (n + 1))

end

end A055907.P18076987021898742475

/-! ## A055907.P7084925670018164934

`A255582(A026637(n))%A271490(n+1)`
-/

namespace A055907.P7084925670018164934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255582 (A026637 n).toNat) (A271490 (n + 1))

end

end A055907.P7084925670018164934

/-! ## A055907.P1512582963925641631

`A119755(A119732(n))%A362622(n+1)`
-/

namespace A055907.P1512582963925641631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119755 (A119732 n).toNat) (A362622 (n + 1))

end

end A055907.P1512582963925641631

/-!
# A055908: Column 2 of triangle A055907.

The programs for A055908, the canonical program `A055908.P4931710580693188596` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055908 has offset 2).

The definition of A055908 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055908.P4931710580693188596

`∑[∑[∑[A178804(n+1)]]]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A055908

/-- `∑[∑[∑[A178804(n+1)]]]` -/
def P4931710580693188596.Spec : Prop :=
  ∀ n, P4931710580693188596.a n = A055908 (n + 2)

theorem P4931710580693188596.correct : P4931710580693188596.Spec := by
  intro n
  simp only [A055908, Nat.add_sub_cancel]

end A055908

/-! ## A055908.P12444224271741597043

`∑[∑[A001399(ceil(3*n/2))]]`
-/

namespace A055908.P12444224271741597043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 ⌈3 * ((n : ℚ) / 2)⌉.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055908.P12444224271741597043

namespace A055908

/-- `∑[∑[A001399(ceil(3*n/2))]]` -/
def P12444224271741597043.Spec : Prop :=
  ∀ n, P12444224271741597043.a n = A055908 (n + 2)

end A055908

/-! ## A055908.P5238228647127956795

`∑[A008804(n)+A006918(n)]`
-/

namespace A055908.P5238228647127956795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 n + A006918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055908.P5238228647127956795

namespace A055908

/-- `∑[A008804(n)+A006918(n)]` -/
def P5238228647127956795.Spec : Prop :=
  ∀ n, P5238228647127956795.a n = A055908 (n + 2)

end A055908

/-! ## A055908.P8394764552922469348

`∑[∑[A211520(n+3)]]`
-/

namespace A055908.P8394764552922469348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211520 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055908.P8394764552922469348

namespace A055908

/-- `∑[∑[A211520(n+3)]]` -/
def P8394764552922469348.Spec : Prop :=
  ∀ n, P8394764552922469348.a n = A055908 (n + 2)

end A055908

/-! ## A055908.P12080813776138000247

`∑[∑[A211540(A001651(n+4))]]`
-/

namespace A055908.P12080813776138000247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 (A001651 (n + 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055908.P12080813776138000247

namespace A055908

/-- `∑[∑[A211540(A001651(n+4))]]` -/
def P12080813776138000247.Spec : Prop :=
  ∀ n, P12080813776138000247.a n = A055908 (n + 2)

end A055908

/-! ## A055908.P144732254525667675

`∑[A008670(2*n+1+n)]`
-/

namespace A055908.P144732254525667675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008670 (2 * n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055908.P144732254525667675

namespace A055908

/-- `∑[A008670(2*n+1+n)]` -/
def P144732254525667675.Spec : Prop :=
  ∀ n, P144732254525667675.a n = A055908 (n + 2)

end A055908

/-!
# A055909: Column 3 of triangle A055907.

The programs for A055909, there is no canonical definition to state claims against.
-/

/-! ## A055909.P13138897865353177153

`A055907(∑[n+3]+6)`
-/

namespace A055909.P13138897865353177153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055907 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A055909.P13138897865353177153

/-! ## A055909.P12508225921096587022

`A054846(A001848(n)+A000254(n))`
-/

namespace A055909.P12508225921096587022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A001848 n + A000254 n).toNat

end

end A055909.P12508225921096587022

/-!
# A055910: Column 4 of triangle A055907.

The programs for A055910, there is no canonical definition to state claims against.
-/

/-! ## A055910.P5062540507033005831

`A055907(∑[n+4]+10)`
-/

namespace A055910.P5062540507033005831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055907 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A055910.P5062540507033005831

/-!
# A055911: Column 5 of triangle A055907.

The programs for A055911, there is no canonical definition to state claims against.
-/

/-! ## A055911.P16012335361918696738

`A055907(A167499(n+4))`
-/

namespace A055911.P16012335361918696738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055907 (A167499 (n + 4)).toNat

end

end A055911.P16012335361918696738

/-! ## A055911.P4527522033827114173

`A055907(eq[5, A002262(n)])`
-/

namespace A055911.P4527522033827114173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055907 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055911.P4527522033827114173

/-!
# A055912: Column 6 of triangle A055907.

The programs for A055912, there is no canonical definition to state claims against.
-/

/-! ## A055912.P3260104176834117319

`A055907(A056119(n)+27)`
-/

namespace A055912.P3260104176834117319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055907 (A056119 n + 27).toNat

end

end A055912.P3260104176834117319

/-!
# A055916: Coefficients of a polynomial used in calculation of A055913.

The programs for A055916, there is no canonical definition to state claims against.
-/

/-! ## A055916.P8965969089179234472

`A324695(floor((ϕ^n)²))+record[xor(n, 2*n)]`
-/

namespace A055916.P8965969089179234472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324695 ⌊(Real.goldenRatio ^ n) ^ 2⌋.toNat + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A055916.P8965969089179234472

/-!
# A055917: Coefficients of a polynomial used in calculation of A055914.

The programs for A055917, there is no canonical definition to state claims against.
-/

/-! ## A055917.P13946906846014063130

`A022290(A001629(3*n+2))`
-/

namespace A055917.P13946906846014063130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A001629 (3 * n + 2)).toNat

end

end A055917.P13946906846014063130

/-!
# A055918: Coefficients of a polynomial used in calculation of A055915.

The programs for A055918, there is no canonical definition to state claims against.
-/

/-! ## A055918.P9255829430956573192

`A355168(∑[∑[A071206(2*(n+2))]])`
-/

namespace A055918.P9255829430956573192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071206 (2 * (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355168 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A055918.P9255829430956573192

/-!
# A055919: Number of directed site animals on hexagonal net (honeycomb) with n sites.

The programs for A055919, there is no canonical definition to state claims against.
-/

/-! ## A055919.P16139488113252059071

`∑[A279891(Δ[A186360(n)])]`
-/

namespace A055919.P16139488113252059071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186360 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279891 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055919.P16139488113252059071

/-! ## A055919.P14812679885092858123

`A014137(n)+A001462(A024037(n))`
-/

namespace A055919.P14812679885092858123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n + A001462 (A024037 n).toNat

end

end A055919.P14812679885092858123

/-! ## A055919.P9933775096135042200

`A178936(n)+A000194(A003947(n))`
-/

namespace A055919.P9933775096135042200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178936 n + A000194 (A003947 n).toNat

end

end A055919.P9933775096135042200

/-!
# A055920: Susceptibility series H_4 for 2-dimensional Ising model (divided by 2) for 1 particle excitation.

The programs for A055920, there is no canonical definition to state claims against.
-/

/-! ## A055920.P12132600603361051944

`A055856(n)-A068385(A054410(n))`
-/

namespace A055920.P12132600603361051944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055856 n - A068385 (A054410 n).toNat

end

end A055920.P12132600603361051944

/-! ## A055920.P10866736610082202626

`A055856(n)-A068385(A151132(n))`
-/

namespace A055920.P10866736610082202626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055856 n - A068385 (A151132 n).toNat

end

end A055920.P10866736610082202626

/-!
# A055921: Array giving susceptibility of 2-dimensional Ising model for 1 particle excitation (read by antidiagonals).

The programs for A055921, there is no canonical definition to state claims against.
-/

/-! ## A055921.P14385025701417189927

`A000010(A131883(A132200(n)²))`
-/

namespace A055921.P14385025701417189927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A131883 (A132200 n ^ 2).toNat).toNat

end

end A055921.P14385025701417189927

/-! ## A055921.P16221899236264239695

`A092089(A292563(n)^A008288(n))`
-/

namespace A055921.P16221899236264239695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092089 (SequenceMachineLib.roundAway ((A292563 n : ℚ) ^ (A008288 n : ℤ))).toNat

end

end A055921.P16221899236264239695

/-! ## A055921.P4305668333902426486

`A001616(A008578(n+1)*A173882(n))`
-/

namespace A055921.P4305668333902426486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001616 (A008578 (n + 1) * A173882 n).toNat

end

end A055921.P4305668333902426486

/-! ## A055921.P15662720626836109501

`A006530(A000079(n))*A109168(A174124(n))`
-/

namespace A055921.P15662720626836109501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000079 n).toNat * A109168 (A174124 n).toNat

end

end A055921.P15662720626836109501

/-!
# A055923: Number of partitions of n in which each part occurs a prime number (or 0) times.

The programs for A055923, there is no canonical definition to state claims against.
-/

/-! ## A055923.P12399022612773792843

`A339221(eq[A056674(n+1), A091247(n)])`
-/

namespace A055923.P12399022612773792843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339221 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A055923.P12399022612773792843

/-!
# A055924: Exponential transform of Stirling1 triangle A008275.

The programs for A055924, there is no canonical definition to state claims against.
-/

/-! ## A055924.P792555940167129306

`A000110(A002260(n+1))*A008275(n+1)`
-/

namespace A055924.P792555940167129306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A002260 (n + 1)).toNat * A008275 (n + 1)

end

end A055924.P792555940167129306

/-! ## A055924.P5381377155509855090

`A008275(n+1)*A285013(A158405(n+1))`
-/

namespace A055924.P5381377155509855090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008275 (n + 1) * A285013 (A158405 (n + 1)).toNat

end

end A055924.P5381377155509855090

/-! ## A055924.P10363680698408770464

`A000110(A349520(2*n+1))*A008275(n+1)`
-/

namespace A055924.P10363680698408770464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A349520 (2 * n + 1)).toNat * A008275 (n + 1)

end

end A055924.P10363680698408770464

/-! ## A055924.P17677133014754804734

`A008275(n+1)/A008277(n+1)*A055896(n+1)`
-/

namespace A055924.P17677133014754804734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008275 (n + 1) : ℚ) / (A008277 (n + 1) : ℚ) * (A055896 (n + 1) : ℚ)

end

end A055924.P17677133014754804734

/-! ## A055924.P5123737843383712599

`A000110(A002260(n+1))*A008276(A038722(n+1))`
-/

namespace A055924.P5123737843383712599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A002260 (n + 1)).toNat * A008276 (A038722 (n + 1)).toNat

end

end A055924.P5123737843383712599

/-! ## A055924.P10723449328001414145

`A008276(A038722(n+1))*A285013(A158405(n+1))`
-/

namespace A055924.P10723449328001414145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008276 (A038722 (n + 1)).toNat * A285013 (A158405 (n + 1)).toNat

end

end A055924.P10723449328001414145

/-! ## A055924.P8053590074587572954

`A008276(A061579(n)+1)*A285013(A158405(n+1))`
-/

namespace A055924.P8053590074587572954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008276 (A061579 n + 1).toNat * A285013 (A158405 (n + 1)).toNat

end

end A055924.P8053590074587572954

/-! ## A055924.P4918112441138613964

`A048594(n+1)/A166350(n+1)*A000110(A002260(n+1))`
-/

namespace A055924.P4918112441138613964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048594 (n + 1) : ℚ) / (A166350 (n + 1) : ℚ) * (A000110 (A002260 (n + 1)).toNat : ℚ)

end

end A055924.P4918112441138613964

/-! ## A055924.P13552469023802677492

`A048594(n+1)/A166350(n+1)*A285013(A158405(n+1))`
-/

namespace A055924.P13552469023802677492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048594 (n + 1) : ℚ) / (A166350 (n + 1) : ℚ) * (A285013 (A158405 (n + 1)).toNat : ℚ)

end

end A055924.P13552469023802677492

/-! ## A055924.P671393983612058181

`A008275(n+1)*A050315(A099627(n))`
-/

namespace A055924.P671393983612058181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008275 (n + 1) * A050315 (A099627 n).toNat

end

end A055924.P671393983612058181

/-!
# A055925: Exponential reciprocal of A055924.

The programs for A055925, there is no canonical definition to state claims against.
-/

/-! ## A055925.P7286484406544476910

`A000587(A002260(n+1))*A008275(n+1)`
-/

namespace A055925.P7286484406544476910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000587 (A002260 (n + 1)).toNat * A008275 (n + 1)

end

end A055925.P7286484406544476910

/-! ## A055925.P13774016262667852275

`A000587(A002260(n+1))*A008276(A038722(n+1))`
-/

namespace A055925.P13774016262667852275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000587 (A002260 (n + 1)).toNat * A008276 (A038722 (n + 1)).toNat

end

end A055925.P13774016262667852275

/-! ## A055925.P17139249311947361228

`A000587(A002260(n+1))*A008276(A061579(n)+1)`
-/

namespace A055925.P17139249311947361228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000587 (A002260 (n + 1)).toNat * A008276 (A061579 n + 1).toNat

end

end A055925.P17139249311947361228

/-! ## A055925.P9590760544107374450

`A000587(A103406(n)/A007318(n))*A008275(n+1)`
-/

namespace A055925.P9590760544107374450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000587 (SequenceMachineLib.roundAway ((A103406 n : ℚ) / (A007318 n : ℚ))).toNat * A008275 (n + 1)

end

end A055925.P9590760544107374450

/-! ## A055925.P13657879805896067909

`A000587(A002260(n+1))/A140756(n+1)*A028421(n)`
-/

namespace A055925.P13657879805896067909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000587 (A002260 (n + 1)).toNat : ℚ) / (A140756 (n + 1) : ℚ) * (A028421 n : ℚ)

end

end A055925.P13657879805896067909

/-! ## A055925.P2069742669834343510

`A048594(n+1)/A166350(n+1)*A000587(A002260(n+1))`
-/

namespace A055925.P2069742669834343510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048594 (n + 1) : ℚ) / (A166350 (n + 1) : ℚ) * (A000587 (A002260 (n + 1)).toNat : ℚ)

end

end A055925.P2069742669834343510

/-! ## A055925.P5824338783423037520

`A000587(A002260(n+1))*A039683(n+1)/A130321(n)`
-/

namespace A055925.P5824338783423037520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000587 (A002260 (n + 1)).toNat * A039683 (n + 1) : ℚ) / (A130321 n : ℚ)

end

end A055925.P5824338783423037520

/-! ## A055925.P2460280364418047586

`A000587(A002260(n+1))*A051141(n+1)/A140303(n)`
-/

namespace A055925.P2460280364418047586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000587 (A002260 (n + 1)).toNat * A051141 (n + 1) : ℚ) / (A140303 n : ℚ)

end

end A055925.P2460280364418047586

/-! ## A055925.P1357962400272216260

`A000587(A002260(n+1))*A051142(n+1)/A262616(n)`
-/

namespace A055925.P1357962400272216260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000587 (A002260 (n + 1)).toNat * A051142 (n + 1) : ℚ) / (A262616 n : ℚ)

end

end A055925.P1357962400272216260

/-! ## A055925.P2147958409237119545

`A051142(n+1)/A130321(n)²*A000587(A002260(n+1))`
-/

namespace A055925.P2147958409237119545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051142 (n + 1) : ℚ) / (A130321 n ^ 2 : ℚ) * (A000587 (A002260 (n + 1)).toNat : ℚ)

end

end A055925.P2147958409237119545

/-!
# A055926: Numbers k such that {largest m such that 1, 2, ..., m divide k} is different from {largest m such that m! divides k}; numbers k which are either odd multiples of 12 or the largest m such that (m-1)! divides k is a composite number > 5.

The programs for A055926, there is no canonical definition to state claims against.
-/

/-! ## A055926.P8394505959494073276

`∪[A073762(n+1), A232743(n+1)]`
-/

namespace A055926.P8394505959494073276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232743 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055926.P8394505959494073276

/-! ## A055926.P6473445910570946038

`∩[A232742(n+1), 12*n]`
-/

namespace A055926.P6473445910570946038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232742 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A055926.P6473445910570946038

/-! ## A055926.P7664794713773279659

`∩[A014766(n+1), A232742(n+1)]`
-/

namespace A055926.P7664794713773279659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055926.P7664794713773279659

/-! ## A055926.P3744360518757842540

`filter[A232742(n+1), A355454(#)]`
-/

namespace A055926.P3744360518757842540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355454 (f1 j).toNat = 1) n)

end

end A055926.P3744360518757842540

/-! ## A055926.P8121866182251482684

`filter[A232742(n+1), A358680(#)]`
-/

namespace A055926.P8121866182251482684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358680 (f1 j).toNat = 1) n)

end

end A055926.P8121866182251482684

/-! ## A055926.P14689901189747573952

`filter[A232742(n+1), A374036(#)]`
-/

namespace A055926.P14689901189747573952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374036 (f1 j).toNat = 1) n)

end

end A055926.P14689901189747573952

/-! ## A055926.P4961301497449690972

`filter[A232742(n+1), A374045(#)]`
-/

namespace A055926.P4961301497449690972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374045 (f1 j).toNat = 1) n)

end

end A055926.P4961301497449690972

/-! ## A055926.P1309263890953820398

`filter[A232742(n+1), A073089(#)]`
-/

namespace A055926.P1309263890953820398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A073089 (f1 j).toNat = 1) n)

end

end A055926.P1309263890953820398

/-! ## A055926.P13113670941410650646

`filter[A232742(n+1), A121262(#)]`
-/

namespace A055926.P13113670941410650646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A055926.P13113670941410650646

/-! ## A055926.P14221495677799808016

`filter[A232742(n+1), A152822(#)]`
-/

namespace A055926.P14221495677799808016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A055926.P14221495677799808016

/-! ## A055926.P12913331356701920300

`filter[A232742(n+1), A319710(#)]`
-/

namespace A055926.P12913331356701920300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A055926.P12913331356701920300

/-! ## A055926.P4919235861755935421

`filter[A232742(n+1), A353494(#)]`
-/

namespace A055926.P4919235861755935421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353494 (f1 j).toNat = 1) n)

end

end A055926.P4919235861755935421

/-! ## A055926.P866121661176747473

`∩[A136724(n+1), A232742(n+1)]`
-/

namespace A055926.P866121661176747473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055926.P866121661176747473

/-! ## A055926.P4259297352725408371

`∩[A083030(n+1), A232742(n+1)]`
-/

namespace A055926.P4259297352725408371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055926.P4259297352725408371

/-! ## A055926.P17618992481929400367

`∩[A083031(n+1), A232742(n+1)]`
-/

namespace A055926.P17618992481929400367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055926.P17618992481929400367

/-! ## A055926.P16144719170002661341

`∩[A192544(n+1), A232742(n+1)]`
-/

namespace A055926.P16144719170002661341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055926.P16144719170002661341

/-! ## A055926.P11440134656223295593

`∩[A102211(n+1), A232742(n+1)]`
-/

namespace A055926.P11440134656223295593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055926.P11440134656223295593

/-! ## A055926.P17271682195515089161

`∩[A086133(n+1), A232742(n+1)]`
-/

namespace A055926.P17271682195515089161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055926.P17271682195515089161

/-!
# A055927: Numbers k such that k + 1 has one more divisor than k.

The programs for A055927, there is no canonical definition to state claims against.
-/

/-! ## A055927.P14368831134389071083

`eq[A000005(n+1)+1, A000005(n+2)]+1`
-/

namespace A055927.P14368831134389071083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A055927.P14368831134389071083

/-! ## A055927.P11385075080533847285

`eq[1, A051950(n+2)]+1`
-/

namespace A055927.P11385075080533847285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A055927.P11385075080533847285

/-! ## A055927.P15766773112670108406

`A141310(eq[1, A051950(n+2)])`
-/

namespace A055927.P15766773112670108406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055927.P15766773112670108406

/-! ## A055927.P18231305864558588865

`eq[1, A341062(n+2)]+1`
-/

namespace A055927.P18231305864558588865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341062 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A055927.P18231305864558588865

/-! ## A055927.P14263905080620005049

`A004442(eq[1, A051950(n+2)])`
-/

namespace A055927.P14263905080620005049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055927.P14263905080620005049

/-!
# A055928: Sum of square divisors of n! = sum of squares of divisors of the square root of largest square dividing n!.

The programs for A055928, the canonical program `A055928.P10393867367407220433` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055928 has offset 1).

The definition of A055928 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A055928.P7275376436798235535

`A001157(A055772(n+1))`
-/

namespace A055928.P7275376436798235535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A055772 (n + 1)).toNat

end

end A055928.P7275376436798235535

namespace A055928

/-- `A001157(A055772(n+1))` -/
def P7275376436798235535.Spec : Prop :=
  ∀ n, P7275376436798235535.a n = A055928 (n + 1)

end A055928

/-! ## A055928.P10393867367407220433

`A035316((n+1)!)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A055928

/-- `A035316((n+1)!)` -/
def P10393867367407220433.Spec : Prop :=
  ∀ n, P10393867367407220433.a n = A055928 (n + 1)

theorem P10393867367407220433.correct : P10393867367407220433.Spec := by
  intro n
  simp only [A055928, Nat.add_sub_cancel]

end A055928

/-! ## A055928.P8024587761596005299

`A001157(A000188((n+1)!))`
-/

namespace A055928.P8024587761596005299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A000188 (Nat.factorial (n + 1))).toNat

end

end A055928.P8024587761596005299

namespace A055928

/-- `A001157(A000188((n+1)!))` -/
def P8024587761596005299.Spec : Prop :=
  ∀ n, P8024587761596005299.a n = A055928 (n + 1)

end A055928

/-! ## A055928.P17122117996566688831

`∑{d}[sqrt(A055071(n+1)), #²]`
-/

namespace A055928.P17122117996566688831
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055071 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d ^ 2

end

end A055928.P17122117996566688831

namespace A055928

/-- `∑{d}[sqrt(A055071(n+1)), #²]` -/
def P17122117996566688831.Spec : Prop :=
  ∀ n, (P17122117996566688831.a n : ℤ) = A055928 (n + 1)

end A055928

/-!
# A055929: Euler totient function of the factorial of prime(n).

The programs for A055929, there is no canonical definition to state claims against.
-/

/-! ## A055929.P16645927692862439019

`A048855(p?[comp[n²]])`
-/

namespace A055929.P16645927692862439019
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048855 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A055929.P16645927692862439019

/-! ## A055929.P14119917498007259059

`A048855(A000040(n+1))`
-/

namespace A055929.P14119917498007259059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048855 (A000040 (n + 1)).toNat

end

end A055929.P14119917498007259059

/-! ## A055929.P3416948192290202001

`record[A048855(A006530(n+1))]`
-/

namespace A055929.P3416948192290202001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048855 (A006530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055929.P3416948192290202001

/-! ## A055929.P4670999762561851455

`record[A048855(A014963(n+1))]`
-/

namespace A055929.P4670999762561851455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048855 (A014963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055929.P4670999762561851455

/-! ## A055929.P6974566708316897170

`record[A048855(A020639(n+1))]`
-/

namespace A055929.P6974566708316897170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048855 (A020639 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055929.P6974566708316897170

/-!
# A055930: Number of distinct prime factors of totient of (n-th prime)!.

The programs for A055930, the canonical program `A055930.P12939233674708047952` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055930 has offset 1).

The definition of A055930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055930.P8369855835021242743

`char[1]-A107347(n+1)+n`
-/

namespace A055930.P8369855835021242743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - A107347 (n + 1) + (n : ℤ)

end

end A055930.P8369855835021242743

namespace A055930

/-- `char[1]-A107347(n+1)+n` -/
def P8369855835021242743.Spec : Prop :=
  ∀ n, P8369855835021242743.a n = A055930 (n + 1)

end A055930

/-! ## A055930.P12939233674708047952

`A217564(n)+a(n-1)` with `a(0)=0, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A055930

/-- `A217564(n)+a(n-1)` -/
def P12939233674708047952.Spec : Prop :=
  ∀ n, P12939233674708047952.a n = A055930 (n + 1)

theorem P12939233674708047952.correct : P12939233674708047952.Spec := by
  intro n
  simp only [A055930, Nat.add_sub_cancel]

end A055930

/-! ## A055930.P17224038023035984643

`A056172(A175787(n+2))`
-/

namespace A055930.P17224038023035984643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A175787 (n + 2)).toNat

end

end A055930.P17224038023035984643

namespace A055930

/-- `A056172(A175787(n+2))` -/
def P17224038023035984643.Spec : Prop :=
  ∀ n, P17224038023035984643.a n = A055930 (n + 1)

end A055930

/-! ## A055930.P14104595243781355318

`A056172(A068499(n+2)+1)`
-/

namespace A055930.P14104595243781355318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A068499 (n + 2) + 1).toNat

end

end A055930.P14104595243781355318

namespace A055930

/-- `A056172(A068499(n+2)+1)` -/
def P14104595243781355318.Spec : Prop :=
  ∀ n, P14104595243781355318.a n = A055930 (n + 1)

end A055930

/-! ## A055930.P1238645956633368774

`A000720(A076342(n+1)/2)`
-/

namespace A055930.P1238645956633368774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((A076342 (n + 1) : ℚ) / 2)).toNat

end

end A055930.P1238645956633368774

namespace A055930

/-- `A000720(A076342(n+1)/2)` -/
def P1238645956633368774.Spec : Prop :=
  ∀ n, P1238645956633368774.a n = A055930 (n + 1)

end A055930

/-! ## A055930.P15425202333729530289

`A254667(n)-A107347(n+1)`
-/

namespace A055930.P15425202333729530289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n - A107347 (n + 1)

end

end A055930.P15425202333729530289

namespace A055930

/-- `A254667(n)-A107347(n+1)` -/
def P15425202333729530289.Spec : Prop :=
  ∀ n, P15425202333729530289.a n = A055930 (n + 1)

end A055930

/-! ## A055930.P16742227625369714110

`A056172(char[1]+A000040(n+1))`
-/

namespace A055930.P16742227625369714110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + A000040 (n + 1)).toNat

end

end A055930.P16742227625369714110

namespace A055930

/-- `A056172(char[1]+A000040(n+1))` -/
def P16742227625369714110.Spec : Prop :=
  ∀ n, P16742227625369714110.a n = A055930 (n + 1)

end A055930

/-! ## A055930.P3167861306973202491

`A055679(A000040(n+1))`
-/

namespace A055930.P3167861306973202491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A000040 (n + 1)).toNat

end

end A055930.P3167861306973202491

namespace A055930

/-- `A055679(A000040(n+1))` -/
def P3167861306973202491.Spec : Prop :=
  ∀ n, P3167861306973202491.a n = A055930 (n + 1)

end A055930

/-! ## A055930.P8648346371004819737

`A055679(A006005(n+1))`
-/

namespace A055930.P8648346371004819737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A006005 (n + 1)).toNat

end

end A055930.P8648346371004819737

namespace A055930

/-- `A055679(A006005(n+1))` -/
def P8648346371004819737.Spec : Prop :=
  ∀ n, P8648346371004819737.a n = A055930 (n + 1)

end A055930

/-! ## A055930.P18017347268195085523

`A055679(A076342(n+1))`
-/

namespace A055930.P18017347268195085523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A076342 (n + 1)).toNat

end

end A055930.P18017347268195085523

namespace A055930

/-- `A055679(A076342(n+1))` -/
def P18017347268195085523.Spec : Prop :=
  ∀ n, P18017347268195085523.a n = A055930 (n + 1)

end A055930

/-! ## A055930.P13112914135560772502

`A055679(A318871(n+1))`
-/

namespace A055930.P13112914135560772502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A318871 (n + 1)).toNat

end

end A055930.P13112914135560772502

namespace A055930

/-- `A055679(A318871(n+1))` -/
def P13112914135560772502.Spec : Prop :=
  ∀ n, P13112914135560772502.a n = A055930 (n + 1)

end A055930

/-! ## A055930.P18276916490304804732

`A055679(A008578(n+2))`
-/

namespace A055930.P18276916490304804732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A008578 (n + 2)).toNat

end

end A055930.P18276916490304804732

namespace A055930

/-- `A055679(A008578(n+2))` -/
def P18276916490304804732.Spec : Prop :=
  ∀ n, P18276916490304804732.a n = A055930 (n + 1)

end A055930

/-! ## A055930.P6678521728647650898

`A055679(A068499(n+2))`
-/

namespace A055930.P6678521728647650898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A068499 (n + 2)).toNat

end

end A055930.P6678521728647650898

namespace A055930

/-- `A055679(A068499(n+2))` -/
def P6678521728647650898.Spec : Prop :=
  ∀ n, P6678521728647650898.a n = A055930 (n + 1)

end A055930

/-! ## A055930.P7788159580973237886

`A055679(A075643(n+2))`
-/

namespace A055930.P7788159580973237886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A075643 (n + 2)).toNat

end

end A055930.P7788159580973237886

namespace A055930

/-- `A055679(A075643(n+2))` -/
def P7788159580973237886.Spec : Prop :=
  ∀ n, P7788159580973237886.a n = A055930 (n + 1)

end A055930

/-! ## A055930.P5552434264717407467

`A055679(lt[0, A055671(n)])`
-/

namespace A055930.P5552434264717407467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A055930.P5552434264717407467

namespace A055930

/-- `A055679(lt[0, A055671(n)])` -/
def P5552434264717407467.Spec : Prop :=
  ∀ n, P5552434264717407467.a n = A055930 (n + 1)

end A055930

/-! ## A055930.P17490605652561276585

`A055679(eq[1, A105700(n)])`
-/

namespace A055930.P17490605652561276585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055930.P17490605652561276585

namespace A055930

/-- `A055679(eq[1, A105700(n)])` -/
def P17490605652561276585.Spec : Prop :=
  ∀ n, P17490605652561276585.a n = A055930 (n + 1)

end A055930

/-! ## A055930.P11326729113016806625

`A055679(record[A006530(n+2)])`
-/

namespace A055930.P11326729113016806625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A055930.P11326729113016806625

namespace A055930

/-- `A055679(record[A006530(n+2)])` -/
def P11326729113016806625.Spec : Prop :=
  ∀ n, P11326729113016806625.a n = A055930 (n + 1)

end A055930

/-! ## A055930.P14986070893085216507

`A055679(record[A020639(n+2)])`
-/

namespace A055930.P14986070893085216507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A055930.P14986070893085216507

namespace A055930

/-- `A055679(record[A020639(n+2)])` -/
def P14986070893085216507.Spec : Prop :=
  ∀ n, P14986070893085216507.a n = A055930 (n + 1)

end A055930

/-! ## A055930.P11864193896843769037

`A055679(A006093(n+1)+1)`
-/

namespace A055930.P11864193896843769037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A006093 (n + 1) + 1).toNat

end

end A055930.P11864193896843769037

namespace A055930

/-- `A055679(A006093(n+1)+1)` -/
def P11864193896843769037.Spec : Prop :=
  ∀ n, P11864193896843769037.a n = A055930 (n + 1)

end A055930

/-! ## A055930.P13433085379313677256

`A055679(A112925(n+1)+1)`
-/

namespace A055930.P13433085379313677256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A112925 (n + 1) + 1).toNat

end

end A055930.P13433085379313677256

namespace A055930

/-- `A055679(A112925(n+1)+1)` -/
def P13433085379313677256.Spec : Prop :=
  ∀ n, P13433085379313677256.a n = A055930 (n + 1)

end A055930

/-!
# A055931: Product of the digits of n divides the sum of the digits of n.

The programs for A055931, the canonical program `A055931.P16098682155717244574` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055931 has offset 1).

The definition of A055931 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055931.P16098682155717244574

`∩[A055933(n+1), A254621(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A055931

/-- `∩[A055933(n+1), A254621(n+1)]` -/
def P16098682155717244574.Spec : Prop :=
  ∀ n, (P16098682155717244574.a n : ℤ) = A055931 (n + 1)

theorem P16098682155717244574.correct : P16098682155717244574.Spec := by
  intro n
  simp only [A055931, Nat.add_sub_cancel]

end A055931

/-! ## A055931.P2770972901327055515

`∩[A052382(n+1), A055933(n+1)]`
-/

namespace A055931.P2770972901327055515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055931.P2770972901327055515

namespace A055931

/-- `∩[A052382(n+1), A055933(n+1)]` -/
def P2770972901327055515.Spec : Prop :=
  ∀ n, (P2770972901327055515.a n : ℤ) = A055931 (n + 1)

end A055931

/-! ## A055931.P11724018923838997994

`record[A004719(A055933(n+1))]`
-/

namespace A055931.P11724018923838997994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A055933 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055931.P11724018923838997994

namespace A055931

/-- `record[A004719(A055933(n+1))]` -/
def P11724018923838997994.Spec : Prop :=
  ∀ n, P11724018923838997994.a n = A055931 (n + 1)

end A055931

/-! ## A055931.P6242045917963641911

`filter[A055933(n+1), A168046(#)]`
-/

namespace A055931.P6242045917963641911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A055931.P6242045917963641911

namespace A055931

/-- `filter[A055933(n+1), A168046(#)]` -/
def P6242045917963641911.Spec : Prop :=
  ∀ n, P6242045917963641911.a n = A055931 (n + 1)

end A055931

/-! ## A055931.P1954205381374374497

`lt[A007953(n)%A051801(n), A168046(n)]`
-/

namespace A055931.P1954205381374374497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007953 n) (A051801 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A055931.P1954205381374374497

namespace A055931

/-- `lt[A007953(n)%A051801(n), A168046(n)]` -/
def P1954205381374374497.Spec : Prop :=
  ∀ n, (P1954205381374374497.a n : ℤ) = A055931 (n + 1)

end A055931

/-!
# A055932: Numbers all of whose prime divisors are consecutive primes starting at 2.

The programs for A055932, there is no canonical definition to state claims against.
-/

/-! ## A055932.P12479351393291391050

`sqrt(A373559(n+1))`
-/

namespace A055932.P12479351393291391050
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A373559 (n + 1) : ℝ)

end

end A055932.P12479351393291391050

/-! ## A055932.P8545184542875618546

`A376690(n)+a(n-1)` with `a(0)=1`
-/

namespace A055932.P8545184542875618546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A376690 n + a (n - 1)

end

end A055932.P8545184542875618546

/-! ## A055932.P10450782582184644796

`∪[A363814(n+1), A070175(n)]`
-/

namespace A055932.P10450782582184644796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070175 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055932.P10450782582184644796

/-! ## A055932.P17103910575198858669

`∪[A025487(n+1), A056808(n+1)]`
-/

namespace A055932.P17103910575198858669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055932.P17103910575198858669

/-! ## A055932.P8436334759059428702

`record[A071364(n+1)]`
-/

namespace A055932.P8436334759059428702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055932.P8436334759059428702

/-! ## A055932.P18213211425596140197

`∩[A073491(n+1), A151999(n+1)]`
-/

namespace A055932.P18213211425596140197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055932.P18213211425596140197

/-! ## A055932.P16962114223602535274

`∩[A073491(n+1), A174973(n+1)]`
-/

namespace A055932.P16962114223602535274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055932.P16962114223602535274

/-! ## A055932.P13396699817770391750

`∩[A073491(n+1), A239063(n+1)]`
-/

namespace A055932.P13396699817770391750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055932.P13396699817770391750

/-! ## A055932.P12808520916130013462

`∩[A073491(n+1), A267817(n+1)]`
-/

namespace A055932.P12808520916130013462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055932.P12808520916130013462

/-! ## A055932.P3490644497210638560

`∩[A073491(n+1), A290822(n+1)]`
-/

namespace A055932.P3490644497210638560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055932.P3490644497210638560

/-! ## A055932.P3185316129082664552

`∩[A073491(n+1), A331828(n+1)]`
-/

namespace A055932.P3185316129082664552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055932.P3185316129082664552

/-! ## A055932.P955242445967569018

`∩[A073491(n+1), A359420(n+1)]`
-/

namespace A055932.P955242445967569018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055932.P955242445967569018

/-! ## A055932.P4691398438965669914

`∩[A073491(n+1), A371177(n+1)]`
-/

namespace A055932.P4691398438965669914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055932.P4691398438965669914

/-! ## A055932.P15429035538425859753

`∩[A005153(n+1), A073491(n+1)]`
-/

namespace A055932.P15429035538425859753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055932.P15429035538425859753

/-! ## A055932.P13519289761814491721

`∩[A073491(n+1), A093891(n+1)]`
-/

namespace A055932.P13519289761814491721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055932.P13519289761814491721

/-! ## A055932.P8832291190441292153

`record[(n+1)*A341629(n+1)]`
-/

namespace A055932.P8832291190441292153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A341629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055932.P8832291190441292153

/-! ## A055932.P827984324639598670

`filter[A090958(n), A341629(#)]`
-/

namespace A055932.P827984324639598670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341629 (f1 j).toNat = 1) n)

end

end A055932.P827984324639598670

/-! ## A055932.P12371277618419942501

`filter[A005153(n+1), A137794(#)]`
-/

namespace A055932.P12371277618419942501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137794 (f1 j).toNat = 1) n)

end

end A055932.P12371277618419942501

/-! ## A055932.P6124315682929899294

`filter[A093891(n+1), A137794(#)]`
-/

namespace A055932.P6124315682929899294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137794 (f1 j).toNat = 1) n)

end

end A055932.P6124315682929899294

/-!
# A055933: Product of digits (not counting zeros) of n divides sum of digits of n.

The programs for A055933, the canonical program `A055933.P1168599586007844264` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055933 has offset 1).

The definition of A055933 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055933.P1168599586007844264

`eq[A007953(n)%A051801(n), A000007(n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A055933

/-- `eq[A007953(n)%A051801(n), A000007(n)]` -/
def P1168599586007844264.Spec : Prop :=
  ∀ n, (P1168599586007844264.a n : ℤ) = A055933 (n + 1)

theorem P1168599586007844264.correct : P1168599586007844264.Spec := by
  intro n
  simp only [A055933, Nat.add_sub_cancel]

end A055933

/-! ## A055933.P12173294804182401341

`eq[A061762(n)%A051801(n), A000007(n)]`
-/

namespace A055933.P12173294804182401341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061762 n) (A051801 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055933.P12173294804182401341

namespace A055933

/-- `eq[A061762(n)%A051801(n), A000007(n)]` -/
def P12173294804182401341.Spec : Prop :=
  ∀ n, (P12173294804182401341.a n : ℤ) = A055933 (n + 1)

end A055933

/-! ## A055933.P8789772844849090610

`eq[A062329(n)%A051801(n), A000038(n)]`
-/

namespace A055933.P8789772844849090610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062329 n) (A051801 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055933.P8789772844849090610

namespace A055933

/-- `eq[A062329(n)%A051801(n), A000038(n)]` -/
def P8789772844849090610.Spec : Prop :=
  ∀ n, (P8789772844849090610.a n : ℤ) = A055933 (n + 1)

end A055933

/-! ## A055933.P11848861574809995376

`lt[A347470(n)², A047813(2*n)]`
-/

namespace A055933.P11848861574809995376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347470 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A055933.P11848861574809995376

namespace A055933

/-- `lt[A347470(n)², A047813(2*n)]` -/
def P11848861574809995376.Spec : Prop :=
  ∀ n, (P11848861574809995376.a n : ℤ) = A055933 (n + 1)

end A055933

/-!
# A055934: a(0) = 1; a(n) = sum of a(j)'s, j

The programs for A055934, there is no canonical definition to state claims against.
-/

/-! ## A055934.P10214049765568811394

`A071773(A062319(n)*A248692(n+1))`
-/

namespace A055934.P10214049765568811394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (A062319 n * A248692 (n + 1)).toNat

end

end A055934.P10214049765568811394

/-! ## A055934.P2056815619416158837

`A071773(lcm(A062319(n), A248692(n+1)))`
-/

namespace A055934.P2056815619416158837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (Int.lcm (A062319 n) (A248692 (n + 1)))

end

end A055934.P2056815619416158837

/-!
# A055935: a(0)=1; a(n) = Sum_{j

The programs for A055935, there is no canonical definition to state claims against.
-/

/-! ## A055935.P18162122273161605496

`A119763(n+1)*A165070(A016779(n))`
-/

namespace A055935.P18162122273161605496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119763 (n + 1) * A165070 (A016779 n).toNat

end

end A055935.P18162122273161605496

/-! ## A055935.P1030880454647001938

`A020639(A307733(n))*A119763(n+1)`
-/

namespace A055935.P1030880454647001938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A307733 n).toNat * A119763 (n + 1)

end

end A055935.P1030880454647001938

/-! ## A055935.P13309992362201422353

`A002322(A081026(n+1)%A001216(n+1))`
-/

namespace A055935.P13309992362201422353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (Int.tmod (A081026 (n + 1)) (A001216 (n + 1))).toNat

end

end A055935.P13309992362201422353

/-! ## A055935.P546645366109863891

`A000009(gcd(A154470(2*n), A264609(3*n+1)))`
-/

namespace A055935.P546645366109863891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (Int.gcd (A154470 (2 * n)) (A264609 (3 * n + 1)))

end

end A055935.P546645366109863891

/-!
# A055936: Stereoisomeric homologs with molecular formula C_{3+n} H_{6+2n}.

The programs for A055936, there is no canonical definition to state claims against.
-/

/-! ## A055936.P1288153635481932963

`A057960(n)-A343991(3*n+1)`
-/

namespace A055936.P1288153635481932963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057960 n - A343991 (3 * n + 1)

end

end A055936.P1288153635481932963

/-! ## A055936.P14332531624347726541

`A240866(A007570(n))+A127864(n)`
-/

namespace A055936.P14332531624347726541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240866 (A007570 n).toNat + A127864 n

end

end A055936.P14332531624347726541

/-! ## A055936.P14571180767316481346

`or(A001462(A124535(n)), A002487(n))`
-/

namespace A055936.P14571180767316481346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001462 (A124535 n).toNat) (A002487 n)

end

end A055936.P14571180767316481346

/-!
# A055937: a(n) = a(n-1) * a(n-2) - 1.

The programs for A055937, the canonical program `A055937.P2009611590592190726` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055937 has offset 1).

The definition of A055937 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)-1` (program `A055937.P2009611590592190726`, by `A055937.P2009611590592190726.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A055937.P2009611590592190726

`a(n-1)*a(n-2)-1` with `a(0)=2, a(1)=2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055937

/-- `a(n-1)*a(n-2)-1` -/
def P2009611590592190726.Spec : Prop :=
  ∀ n, P2009611590592190726.a n = A055937 (n + 1)

theorem P2009611590592190726.correct : P2009611590592190726.Spec := by
  intro n
  simp only [A055937, Nat.add_sub_cancel]

end A055937

/-! ## A055937.P3899781145852682285

`lcm(a(n-1), a(n-2))-1` with `a(0)=2, a(1)=2, a(2)=3`
-/

namespace A055937.P3899781145852682285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 3] fun n a =>
  (Int.lcm (a (n - 1)) (a (n - 2)) : ℤ) - 1

end

end A055937.P3899781145852682285

namespace A055937

/-- `lcm(a(n-1), a(n-2))-1` -/
def P3899781145852682285.Spec : Prop :=
  ∀ n, P3899781145852682285.a n = A055937 (n + 1)

end A055937

/-! ## A055937.P4754326535270140349

`a(n-1)/tan(acot(a(n-2)))-1` with `a(0)=2, a(1)=2`
-/

namespace A055937.P4754326535270140349
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 1) / Real.tan (SequenceMachineLib.acot (a (n - 2))) - 1

end

end A055937.P4754326535270140349

namespace A055937

/-- `a(n-1)/tan(acot(a(n-2)))-1` -/
def P4754326535270140349.Spec : Prop :=
  ∀ n, P4754326535270140349.a n = (A055937 (n + 1) : ℝ)

end A055937

/-! ## A055937.P2637175115662691246

`a(n-1)/a(n-2)^(-1)-1` with `a(0)=2, a(1)=2`
-/

namespace A055937.P2637175115662691246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 1) / a (n - 2) ^ (-1 : ℤ) - 1

end

end A055937.P2637175115662691246

namespace A055937

/-- `a(n-1)/a(n-2)^(-1)-1` -/
def P2637175115662691246.Spec : Prop :=
  ∀ n, P2637175115662691246.a n = (A055937 (n + 1) : ℚ)

end A055937

/-! ## A055937.P5587849812543245461

`a(n-2)/(2/a(n-1)-1/a(n-1))-1` with `a(0)=2, a(1)=2`
-/

namespace A055937.P5587849812543245461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 2) / (2 / a (n - 1) - 1 / a (n - 1)) - 1

end

end A055937.P5587849812543245461

namespace A055937

/-- `a(n-2)/(2/a(n-1)-1/a(n-1))-1` -/
def P5587849812543245461.Spec : Prop :=
  ∀ n, P5587849812543245461.a n = (A055937 (n + 1) : ℚ)

end A055937

/-!
# A055938: Integers not generated by b(n) = b(floor(n/2)) + n (complement of A005187).

The programs for A055938, the canonical program `A055938.P11436454756649086681` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055938 has offset 1).

The definition of A055938 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055938.P8874902814823676087

`comp[a(floor(n/2))+n]` with `a(0)=0`
-/

namespace A055938.P8874902814823676087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A055938.P8874902814823676087

namespace A055938

/-- `comp[a(floor(n/2))+n]` -/
def P8874902814823676087.Spec : Prop :=
  ∀ n, (P8874902814823676087.a n : ℤ) = A055938 (n + 1)

end A055938

/-! ## A055938.P13589865244405445451

`comp[abs(a(n-1)+val(n, 2))]` with `a(0)=0`
-/

namespace A055938.P13589865244405445451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + SequenceMachineLib.valuation n 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A055938.P13589865244405445451

namespace A055938

/-- `comp[abs(a(n-1)+val(n, 2))]` -/
def P13589865244405445451.Spec : Prop :=
  ∀ n, (P13589865244405445451.a n : ℤ) = A055938 (n + 1)

end A055938

/-! ## A055938.P9761612674394029915

`comp[-(a(n-1)+val(n, 2))]` with `a(0)=0`
-/

namespace A055938.P9761612674394029915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  -(f1 (n - 1) + (SequenceMachineLib.valuation n 2 : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A055938.P9761612674394029915

namespace A055938

/-- `comp[-(a(n-1)+val(n, 2))]` -/
def P9761612674394029915.Spec : Prop :=
  ∀ n, (P9761612674394029915.a n : ℤ) = A055938 (n + 1)

end A055938

/-! ## A055938.P5100852253091318452

`comp[floor(a(n-1)+val(n, 2))]` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A055938.P5100852253091318452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + SequenceMachineLib.valuation n 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A055938.P5100852253091318452

namespace A055938

/-- `comp[floor(a(n-1)+val(n, 2))]` -/
def P5100852253091318452.Spec : Prop :=
  ∀ n, (P5100852253091318452.a n : ℤ) = A055938 (n + 1)

end A055938

/-! ## A055938.P15429405035852642850

`comp[ceil(a(n-1)+val(n, 2))]` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A055938.P15429405035852642850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + SequenceMachineLib.valuation n 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A055938.P15429405035852642850

namespace A055938

/-- `comp[ceil(a(n-1)+val(n, 2))]` -/
def P15429405035852642850.Spec : Prop :=
  ∀ n, (P15429405035852642850.a n : ℤ) = A055938 (n + 1)

end A055938

/-! ## A055938.P3657168405741017735

`comp[round(a(n-1)+val(n, 2))]` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A055938.P3657168405741017735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + SequenceMachineLib.valuation n 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A055938.P3657168405741017735

namespace A055938

/-- `comp[round(a(n-1)+val(n, 2))]` -/
def P3657168405741017735.Spec : Prop :=
  ∀ n, (P3657168405741017735.a n : ℤ) = A055938 (n + 1)

end A055938

/-! ## A055938.P2680216145533473452

`comp[a(n-1)+val(n, 2)+1]` with `a(0)=0`
-/

namespace A055938.P2680216145533473452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + SequenceMachineLib.valuation n 2 + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A055938.P2680216145533473452

namespace A055938

/-- `comp[a(n-1)+val(n, 2)+1]` -/
def P2680216145533473452.Spec : Prop :=
  ∀ n, (P2680216145533473452.a n : ℤ) = A055938 (n + 1)

end A055938

/-! ## A055938.P7462459213082667778

`comp[2*n-(n-a(floor(n/2)))]` with `a(0)=0`
-/

namespace A055938.P7462459213082667778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (2 * n : ℤ) - ((n : ℤ) - f1 ⌊(n : ℚ) / 2⌋.toNat)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A055938.P7462459213082667778

namespace A055938

/-- `comp[2*n-(n-a(floor(n/2)))]` -/
def P7462459213082667778.Spec : Prop :=
  ∀ n, (P7462459213082667778.a n : ℤ) = A055938 (n + 1)

end A055938

/-! ## A055938.P15484253973442126774

`comp[A005187(n)]`
-/

namespace A055938.P15484253973442126774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A055938.P15484253973442126774

namespace A055938

/-- `comp[A005187(n)]` -/
def P15484253973442126774.Spec : Prop :=
  ∀ n, (P15484253973442126774.a n : ℤ) = A055938 (n + 1)

end A055938

/-! ## A055938.P9043120408395727563

`Δ[A029715(n)]+n`
-/

namespace A055938.P9043120408395727563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A055938.P9043120408395727563

namespace A055938

/-- `Δ[A029715(n)]+n` -/
def P9043120408395727563.Spec : Prop :=
  ∀ n, P9043120408395727563.a n = A055938 (n + 1)

end A055938

/-! ## A055938.P11436454756649086681

`A045412(n+1)-1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A055938

/-- `A045412(n+1)-1` -/
def P11436454756649086681.Spec : Prop :=
  ∀ n, P11436454756649086681.a n = A055938 (n + 1)

theorem P11436454756649086681.correct : P11436454756649086681.Spec := by
  intro n
  simp only [A055938, Nat.add_sub_cancel]

end A055938

/-! ## A055938.P10434133382232749757

`2*A046699(n+2)+n`
-/

namespace A055938.P10434133382232749757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046699 (n + 2) + (n : ℤ)

end

end A055938.P10434133382232749757

namespace A055938

/-- `2*A046699(n+2)+n` -/
def P10434133382232749757.Spec : Prop :=
  ∀ n, P10434133382232749757.a n = A055938 (n + 1)

end A055938

/-! ## A055938.P10803826371754669955

`A279340(n)+a(n-1)` with `a(0)=2`
-/

namespace A055938.P10803826371754669955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A279340 n + a (n - 1)

end

end A055938.P10803826371754669955

namespace A055938

/-- `A279340(n)+a(n-1)` -/
def P10803826371754669955.Spec : Prop :=
  ∀ n, P10803826371754669955.a n = A055938 (n + 1)

end A055938

/-! ## A055938.P13074088047125875964

`A100661(n+1)+Δ[n²]`
-/

namespace A055938.P13074088047125875964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100661 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A055938.P13074088047125875964

namespace A055938

/-- `A100661(n+1)+Δ[n²]` -/
def P13074088047125875964.Spec : Prop :=
  ∀ n, P13074088047125875964.a n = A055938 (n + 1)

end A055938

/-! ## A055938.P11890653339183817891

`A080468(n+2)+2*(n+1)`
-/

namespace A055938.P11890653339183817891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080468 (n + 2) + (2 * (n + 1) : ℤ)

end

end A055938.P11890653339183817891

namespace A055938

/-- `A080468(n+2)+2*(n+1)` -/
def P11890653339183817891.Spec : Prop :=
  ∀ n, P11890653339183817891.a n = A055938 (n + 1)

end A055938

/-! ## A055938.P11587213314007180519

`A257126(n+1)+A005187(n+1)`
-/

namespace A055938.P11587213314007180519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257126 (n + 1) + A005187 (n + 1)

end

end A055938.P11587213314007180519

namespace A055938

/-- `A257126(n+1)+A005187(n+1)` -/
def P11587213314007180519.Spec : Prop :=
  ∀ n, P11587213314007180519.a n = A055938 (n + 1)

end A055938

/-! ## A055938.P2279628842660107498

`A080578(n+2)-2`
-/

namespace A055938.P2279628842660107498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080578 (n + 2) - 2

end

end A055938.P2279628842660107498

namespace A055938

/-- `A080578(n+2)-2` -/
def P2279628842660107498.Spec : Prop :=
  ∀ n, P2279628842660107498.a n = A055938 (n + 1)

end A055938

/-!
# A055939: Primes p such that p | ((p-1)/2)! + 1.

The programs for A055939, there is no canonical definition to state claims against.
-/

/-! ## A055939.P5831953346703749570

`2*A053662(n+1)+1`
-/

namespace A055939.P5831953346703749570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053662 (n + 1) + 1

end

end A055939.P5831953346703749570

/-! ## A055939.P3998104753813127911

`4*A066159(n+1)-1`
-/

namespace A055939.P3998104753813127911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A066159 (n + 1) - 1

end

end A055939.P3998104753813127911

/-! ## A055939.P8452499666961129218

`p?[and(A002145(n+1), A265643(n+1))]`
-/

namespace A055939.P8452499666961129218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002145 (n + 1)) (A265643 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055939.P8452499666961129218

/-! ## A055939.P805811825689219830

`A000265(A053662(n+1)+A053662(n+1)+1)`
-/

namespace A055939.P805811825689219830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A053662 (n + 1) + (A053662 (n + 1) + 1)).toNat

end

end A055939.P805811825689219830

/-! ## A055939.P13057574497109737611

`A067690(A326178(n+1))`
-/

namespace A055939.P13057574497109737611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067690 (A326178 (n + 1)).toNat

end

end A055939.P13057574497109737611

/-! ## A055939.P6357147211774115369

`filter[A067690(n+1), A343219(#)]`
-/

namespace A055939.P6357147211774115369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A343219 (f1 j).toNat = 1) n)

end

end A055939.P6357147211774115369

/-! ## A055939.P16857672706840259342

`filter[A067690(n+1), A347871(#)]`
-/

namespace A055939.P16857672706840259342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347871 (f1 j).toNat = 1) n)

end

end A055939.P16857672706840259342

/-! ## A055939.P9322831374261660781

`filter[A067690(n+1), A354028(#)]`
-/

namespace A055939.P9322831374261660781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354028 (f1 j).toNat = 1) n)

end

end A055939.P9322831374261660781

/-! ## A055939.P13235841672106938444

`filter[A067690(n+1), A354029(#)]`
-/

namespace A055939.P13235841672106938444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354029 (f1 j).toNat = 1) n)

end

end A055939.P13235841672106938444

/-! ## A055939.P644127299918701641

`filter[A067690(n+1), A354033(#)]`
-/

namespace A055939.P644127299918701641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354033 (f1 j).toNat = 1) n)

end

end A055939.P644127299918701641

/-! ## A055939.P10626745315710585034

`record[A067690(n+1)%A067692(2*n+3)]`
-/

namespace A055939.P10626745315710585034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067690 (n + 1)) (A067692 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055939.P10626745315710585034

/-! ## A055939.P10895449831169136938

`A014601(A053662(n+1))`
-/

namespace A055939.P10895449831169136938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (A053662 (n + 1)).toNat

end

end A055939.P10895449831169136938

/-! ## A055939.P14927232727933827678

`A004273(2*A066159(n+1))`
-/

namespace A055939.P14927232727933827678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (2 * A066159 (n + 1)).toNat

end

end A055939.P14927232727933827678

/-! ## A055939.P1818943486072100216

`A005408(A066159(n+1)+A066159(n+1)-1)`
-/

namespace A055939.P1818943486072100216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A066159 (n + 1) + (A066159 (n + 1) - 1)).toNat

end

end A055939.P1818943486072100216

/-! ## A055939.P14551035457155221301

`filter[A067690(n+1), A021913(#)]`
-/

namespace A055939.P14551035457155221301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A021913 (f1 j).toNat = 1) n)

end

end A055939.P14551035457155221301

/-! ## A055939.P10847276590849525424

`filter[A067690(n+1), A038189(#)]`
-/

namespace A055939.P10847276590849525424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A038189 (f1 j).toNat = 1) n)

end

end A055939.P10847276590849525424

/-! ## A055939.P15366931778654065800

`filter[A067690(n+1), A079261(#)]`
-/

namespace A055939.P15366931778654065800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079261 (f1 j).toNat = 1) n)

end

end A055939.P15366931778654065800

/-! ## A055939.P236556608599456127

`filter[A067690(n+1), A089013(#)]`
-/

namespace A055939.P236556608599456127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A089013 (f1 j).toNat = 1) n)

end

end A055939.P236556608599456127

/-! ## A055939.P2212983668742107746

`filter[A067690(n+1), A144598(#)]`
-/

namespace A055939.P2212983668742107746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144598 (f1 j).toNat = 1) n)

end

end A055939.P2212983668742107746

/-! ## A055939.P2029560006289918161

`filter[A067690(n+1), A267605(#)]`
-/

namespace A055939.P2029560006289918161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267605 (f1 j).toNat = 1) n)

end

end A055939.P2029560006289918161

/-!
# A055940: Counterbalanced numbers: Composite numbers k such that phi(k)/(sigma(k)-k) is an integer.

The programs for A055940, there is no canonical definition to state claims against.
-/

/-! ## A055940.P17578335068436686430

`∩[A001358(n+1), A070159(n+1)]`
-/

namespace A055940.P17578335068436686430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055940.P17578335068436686430

/-! ## A055940.P11814557247389228789

`∩[A070159(n+1), A089995(n+1)]`
-/

namespace A055940.P11814557247389228789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055940.P11814557247389228789

/-! ## A055940.P13036036565776013271

`∩[A070159(n+1), A186621(n+1)+1]`
-/

namespace A055940.P13036036565776013271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055940.P13036036565776013271

/-! ## A055940.P9589627294931954378

`∩[A070159(n+1), A088707(n+1)-1]`
-/

namespace A055940.P9589627294931954378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055940.P9589627294931954378

/-!
# A055941: a(n) = Sum_{j=0..k-1} (i(j) - j) where n = Sum_{j=0..k-1} 2^i(j).

The programs for A055941, the canonical program `A055941.P14455058881262499734` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055941 has offset 0).

The definition of A055941 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055941.P14455058881262499734

`A161511(n)-A000120(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A055941

/-- `A161511(n)-A000120(n)` -/
def P14455058881262499734.Spec : Prop :=
  ∀ n, P14455058881262499734.a n = A055941 n

theorem P14455058881262499734.correct : P14455058881262499734.Spec := by
  intro n
  simp only [A055941]

end A055941

/-! ## A055941.P16316308404273535734

`A161920(n+1)-1-A029837(n+1)`
-/

namespace A055941.P16316308404273535734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161920 (n + 1) - 1 - A029837 (n + 1)

end

end A055941.P16316308404273535734

namespace A055941

/-- `A161920(n+1)-1-A029837(n+1)` -/
def P16316308404273535734.Spec : Prop :=
  ∀ n, P16316308404273535734.a n = A055941 n

end A055941

/-! ## A055941.P4086309118374895195

`A161511(floor(n/(xor(n, n+1)+1)))`
-/

namespace A055941.P4086309118374895195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161511 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat

end

end A055941.P4086309118374895195

namespace A055941

/-- `A161511(floor(n/(xor(n, n+1)+1)))` -/
def P4086309118374895195.Spec : Prop :=
  ∀ n, P4086309118374895195.a n = A055941 n

end A055941

/-! ## A055941.P18311903435850521676

`A161511(A025480(n))`
-/

namespace A055941.P18311903435850521676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161511 (A025480 n).toNat

end

end A055941.P18311903435850521676

namespace A055941

/-- `A161511(A025480(n))` -/
def P18311903435850521676.Spec : Prop :=
  ∀ n, P18311903435850521676.a n = A055941 n

end A055941

/-! ## A055941.P7237461433901768415

`A326730(n)-A161511(n)`
-/

namespace A055941.P7237461433901768415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326730 n - A161511 n

end

end A055941.P7237461433901768415

namespace A055941

/-- `A326730(n)-A161511(n)` -/
def P7237461433901768415.Spec : Prop :=
  ∀ n, P7237461433901768415.a n = A055941 n

end A055941

/-! ## A055941.P11965311375445674654

`A161511(A000265(n+1))-1`
-/

namespace A055941.P11965311375445674654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161511 (A000265 (n + 1)).toNat - 1

end

end A055941.P11965311375445674654

namespace A055941

/-- `A161511(A000265(n+1))-1` -/
def P11965311375445674654.Spec : Prop :=
  ∀ n, P11965311375445674654.a n = A055941 n

end A055941

/-! ## A055941.P6861961308531439603

`A161511(A003602(n+1)-1)`
-/

namespace A055941.P6861961308531439603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161511 (A003602 (n + 1) - 1).toNat

end

end A055941.P6861961308531439603

namespace A055941

/-- `A161511(A003602(n+1)-1)` -/
def P6861961308531439603.Spec : Prop :=
  ∀ n, P6861961308531439603.a n = A055941 n

end A055941

/-! ## A055941.P17092106199630274221

`n-∑[A000120(n)*A088705(n)]`
-/

namespace A055941.P17092106199630274221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055941.P17092106199630274221

namespace A055941

/-- `n-∑[A000120(n)*A088705(n)]` -/
def P17092106199630274221.Spec : Prop :=
  ∀ n, P17092106199630274221.a n = A055941 n

end A055941

/-! ## A055941.P1859218539743853241

`A029931(n)-A000217(A000120(n))`
-/

namespace A055941.P1859218539743853241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 n - A000217 (A000120 n).toNat

end

end A055941.P1859218539743853241

namespace A055941

/-- `A029931(n)-A000217(A000120(n))` -/
def P1859218539743853241.Spec : Prop :=
  ∀ n, P1859218539743853241.a n = A055941 n

end A055941

/-! ## A055941.P17858889923662463508

`A029931(n)-A029931(A001316(n)-1)`
-/

namespace A055941.P17858889923662463508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 n - A029931 (A001316 n - 1).toNat

end

end A055941.P17858889923662463508

namespace A055941

/-- `A029931(n)-A029931(A001316(n)-1)` -/
def P17858889923662463508.Spec : Prop :=
  ∀ n, P17858889923662463508.a n = A055941 n

end A055941

/-! ## A055941.P18385549007991924958

`A073642(n)-A073642(A001316(n)-1)`
-/

namespace A055941.P18385549007991924958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 n - A073642 (A001316 n - 1).toNat

end

end A055941.P18385549007991924958

namespace A055941

/-- `A073642(n)-A073642(A001316(n)-1)` -/
def P18385549007991924958.Spec : Prop :=
  ∀ n, P18385549007991924958.a n = A055941 n

end A055941

/-! ## A055941.P16773096647570457802

`A281392(A030101(n+1))-1`
-/

namespace A055941.P16773096647570457802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281392 (A030101 (n + 1)).toNat - 1

end

end A055941.P16773096647570457802

namespace A055941

/-- `A281392(A030101(n+1))-1` -/
def P16773096647570457802.Spec : Prop :=
  ∀ n, P16773096647570457802.a n = A055941 n

end A055941

/-! ## A055941.P2560850123268650063

`A161511(n)+A231204(n)-A230877(n)`
-/

namespace A055941.P2560850123268650063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161511 n + (A231204 n - A230877 n)

end

end A055941.P2560850123268650063

namespace A055941

/-- `A161511(n)+A231204(n)-A230877(n)` -/
def P2560850123268650063.Spec : Prop :=
  ∀ n, P2560850123268650063.a n = A055941 n

end A055941

/-! ## A055941.P7270098608221179885

`A161511(A163575(2*(n+1)))-1`
-/

namespace A055941.P7270098608221179885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161511 (A163575 (2 * (n + 1))).toNat - 1

end

end A055941.P7270098608221179885

namespace A055941

/-- `A161511(A163575(2*(n+1)))-1` -/
def P7270098608221179885.Spec : Prop :=
  ∀ n, P7270098608221179885.a n = A055941 n

end A055941

/-! ## A055941.P11765311575928153548

`A161511(A036044(2*n+1)/2)`
-/

namespace A055941.P11765311575928153548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161511 (SequenceMachineLib.roundAway ((A036044 (2 * n + 1) : ℚ) / 2)).toNat

end

end A055941.P11765311575928153548

namespace A055941

/-- `A161511(A036044(2*n+1)/2)` -/
def P11765311575928153548.Spec : Prop :=
  ∀ n, P11765311575928153548.a n = A055941 n

end A055941

/-! ## A055941.P12673267900598782688

`A161511(A163575(2*n+1)/2)`
-/

namespace A055941.P12673267900598782688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161511 (SequenceMachineLib.roundAway ((A163575 (2 * n + 1) : ℚ) / 2)).toNat

end

end A055941.P12673267900598782688

namespace A055941

/-- `A161511(A163575(2*n+1)/2)` -/
def P12673267900598782688.Spec : Prop :=
  ∀ n, P12673267900598782688.a n = A055941 n

end A055941

/-! ## A055941.P6956808580971047639

`2*A161511(n)-A161511(A005843(n))`
-/

namespace A055941.P6956808580971047639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161511 n - A161511 (A005843 n).toNat

end

end A055941.P6956808580971047639

namespace A055941

/-- `2*A161511(n)-A161511(A005843(n))` -/
def P6956808580971047639.Spec : Prop :=
  ∀ n, P6956808580971047639.a n = A055941 n

end A055941

/-! ## A055941.P9432362300974860395

`A005843(A161511(n))-A161511(A005843(n))`
-/

namespace A055941.P9432362300974860395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A161511 n).toNat - A161511 (A005843 n).toNat

end

end A055941.P9432362300974860395

namespace A055941

/-- `A005843(A161511(n))-A161511(A005843(n))` -/
def P9432362300974860395.Spec : Prop :=
  ∀ n, P9432362300974860395.a n = A055941 n

end A055941

/-! ## A055941.P8810649643807513507

`A161511(n)-A001222(A005940(n+1))`
-/

namespace A055941.P8810649643807513507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161511 n - A001222 (A005940 (n + 1)).toNat

end

end A055941.P8810649643807513507

namespace A055941

/-- `A161511(n)-A001222(A005940(n+1))` -/
def P8810649643807513507.Spec : Prop :=
  ∀ n, P8810649643807513507.a n = A055941 n

end A055941

/-! ## A055941.P17632679704082240525

`A326844(2*A253565(n))`
-/

namespace A055941.P17632679704082240525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326844 (2 * A253565 n).toNat

end

end A055941.P17632679704082240525

namespace A055941

/-- `A326844(2*A253565(n))` -/
def P17632679704082240525.Spec : Prop :=
  ∀ n, P17632679704082240525.a n = A055941 n

end A055941

/-!
# A055942: Smallest k > 1 such that k | Sigma(k) + n.

The programs for A055942, there is no canonical definition to state claims against.
-/

/-! ## A055942.P7366360638573934729

`A055943(A275709(n)^and(1, n+1))`
-/

namespace A055942.P7366360638573934729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055943 (A275709 n ^ Nat.land 1 (n + 1)).toNat

end

end A055942.P7366360638573934729

/-! ## A055942.P15691610511267463896

`A055943(gcd(A138364(n), A275709(n)))`
-/

namespace A055942.P15691610511267463896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055943 (Int.gcd (A138364 n) (A275709 n))

end

end A055942.P15691610511267463896

/-! ## A055942.P10737145926490893643

`A055943(A275709(and(n, A062157(n))))`
-/

namespace A055942.P10737145926490893643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055943 (A275709 (Int.land (n : ℤ) (A062157 n)).toNat).toNat

end

end A055942.P10737145926490893643

/-! ## A055942.P5831335737022700416

`A055943(A275709(n))`
-/

namespace A055942.P5831335737022700416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055943 (A275709 n).toNat

end

end A055942.P5831335737022700416

/-! ## A055942.P48570196231253647

`lcm(A020639(A221464(n+1)), A087204(n))`
-/

namespace A055942.P48570196231253647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020639 (A221464 (n + 1)).toNat) (A087204 n)

end

end A055942.P48570196231253647

/-!
# A055944: a(n) = n + (reversal of base-2 digits of n) (written in base 10).

The programs for A055944, the canonical program `A055944.P9824612390251619605` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055944 has offset 0).

The definition of A055944 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A055944.P9824612390251619605

`n+A030101(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A055944

/-- `n+A030101(n)` -/
def P9824612390251619605.Spec : Prop :=
  ∀ n, P9824612390251619605.a n = A055944 n

theorem P9824612390251619605.correct : P9824612390251619605.Spec := by
  intro n
  simp only [A055944]

end A055944

/-! ## A055944.P3508325507364561571

`2*n-A055945(n)`
-/

namespace A055944.P3508325507364561571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A055945 n

end

end A055944.P3508325507364561571

namespace A055944

/-- `2*n-A055945(n)` -/
def P3508325507364561571.Spec : Prop :=
  ∀ n, P3508325507364561571.a n = A055944 n

end A055944

/-! ## A055944.P8826821729752830068

`xor(n, A175919(n))+n`
-/

namespace A055944.P8826821729752830068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A175919 n) + (n : ℤ)

end

end A055944.P8826821729752830068

namespace A055944

/-- `xor(n, A175919(n))+n` -/
def P8826821729752830068.Spec : Prop :=
  ∀ n, P8826821729752830068.a n = A055944 n

end A055944

/-! ## A055944.P16313705502469790244

`A264619(n)%(2*n+1)+n`
-/

namespace A055944.P16313705502469790244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264619 n) (2 * n + 1 : ℤ) + (n : ℤ)

end

end A055944.P16313705502469790244

namespace A055944

/-- `A264619(n)%(2*n+1)+n` -/
def P16313705502469790244.Spec : Prop :=
  ∀ n, P16313705502469790244.a n = A055944 n

end A055944

/-! ## A055944.P8508899454663908851

`A264618(n)%(2^ceil(log2(n+1)))+n`
-/

namespace A055944.P8508899454663908851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264618 n) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))) + (n : ℤ)

end

end A055944.P8508899454663908851

namespace A055944

/-- `A264618(n)%(2^ceil(log2(n+1)))+n` -/
def P8508899454663908851.Spec : Prop :=
  ∀ n, P8508899454663908851.a n = A055944 n

end A055944

/-! ## A055944.P10371445454831715129

`A280995(A006068(n))+n`
-/

namespace A055944.P10371445454831715129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280995 (A006068 n).toNat + (n : ℤ)

end

end A055944.P10371445454831715129

namespace A055944

/-- `A280995(A006068(n))+n` -/
def P10371445454831715129.Spec : Prop :=
  ∀ n, P10371445454831715129.a n = A055944 n

end A055944

/-! ## A055944.P4051219046994160570

`A003188(A378299(n))+n`
-/

namespace A055944.P4051219046994160570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A378299 n).toNat + (n : ℤ)

end

end A055944.P4051219046994160570

namespace A055944

/-- `A003188(A378299(n))+n` -/
def P4051219046994160570.Spec : Prop :=
  ∀ n, P4051219046994160570.a n = A055944 n

end A055944

/-! ## A055944.P571273042878158127

`A325402(n)+A325401(n)`
-/

namespace A055944.P571273042878158127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325402 n + A325401 n

end

end A055944.P571273042878158127

namespace A055944

/-- `A325402(n)+A325401(n)` -/
def P571273042878158127.Spec : Prop :=
  ∀ n, P571273042878158127.a n = A055944 n

end A055944

/-! ## A055944.P16651447857186372382

`A030101(n)-A001489(n)`
-/

namespace A055944.P16651447857186372382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n - A001489 n

end

end A055944.P16651447857186372382

namespace A055944

/-- `A030101(n)-A001489(n)` -/
def P16651447857186372382.Spec : Prop :=
  ∀ n, P16651447857186372382.a n = A055944 n

end A055944

/-! ## A055944.P12264244425746579044

`2*A175298(n)-A175919(n)`
-/

namespace A055944.P12264244425746579044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A175298 n - A175919 n

end

end A055944.P12264244425746579044

namespace A055944

/-- `2*A175298(n)-A175919(n)` -/
def P12264244425746579044.Spec : Prop :=
  ∀ n, P12264244425746579044.a n = A055944 n

end A055944

/-! ## A055944.P12158001710833962759

`A005843(n)-(n-A030101(n))`
-/

namespace A055944.P12158001710833962759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A030101 n)

end

end A055944.P12158001710833962759

namespace A055944

/-- `A005843(n)-(n-A030101(n))` -/
def P12158001710833962759.Spec : Prop :=
  ∀ n, P12158001710833962759.a n = A055944 n

end A055944

/-! ## A055944.P2648883731609224178

`A048701(n)-n*A003817(n)`
-/

namespace A055944.P2648883731609224178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048701 n - (n : ℤ) * A003817 n

end

end A055944.P2648883731609224178

namespace A055944

/-- `A048701(n)-n*A003817(n)` -/
def P2648883731609224178.Spec : Prop :=
  ∀ n, P2648883731609224178.a n = A055944 n

end A055944

/-! ## A055944.P8364983706453388417

`n-A030101(n)*A057428(n)`
-/

namespace A055944.P8364983706453388417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A030101 n * A057428 n

end

end A055944.P8364983706453388417

namespace A055944

/-- `n-A030101(n)*A057428(n)` -/
def P8364983706453388417.Spec : Prop :=
  ∀ n, P8364983706453388417.a n = A055944 n

end A055944

/-! ## A055944.P3644308287133043952

`and(A048701(n), A175298(n))+n`
-/

namespace A055944.P3644308287133043952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048701 n) (A175298 n) + (n : ℤ)

end

end A055944.P3644308287133043952

namespace A055944

/-- `and(A048701(n), A175298(n))+n` -/
def P3644308287133043952.Spec : Prop :=
  ∀ n, P3644308287133043952.a n = A055944 n

end A055944

/-! ## A055944.P7576724426090569391

`and(A003817(n), A264618(n))+n`
-/

namespace A055944.P7576724426090569391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 n) (A264618 n) + (n : ℤ)

end

end A055944.P7576724426090569391

namespace A055944

/-- `and(A003817(n), A264618(n))+n` -/
def P7576724426090569391.Spec : Prop :=
  ∀ n, P7576724426090569391.a n = A055944 n

end A055944

/-! ## A055944.P4509967811927292360

`and(A003817(n), A264619(n))+n`
-/

namespace A055944.P4509967811927292360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 n) (A264619 n) + (n : ℤ)

end

end A055944.P4509967811927292360

namespace A055944

/-- `and(A003817(n), A264619(n))+n` -/
def P4509967811927292360.Spec : Prop :=
  ∀ n, P4509967811927292360.a n = A055944 n

end A055944

/-! ## A055944.P236905682804908022

`A175298(n)+and(n, A264618(n))`
-/

namespace A055944.P236905682804908022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 n + Int.land (n : ℤ) (A264618 n)

end

end A055944.P236905682804908022

namespace A055944

/-- `A175298(n)+and(n, A264618(n))` -/
def P236905682804908022.Spec : Prop :=
  ∀ n, P236905682804908022.a n = A055944 n

end A055944

/-! ## A055944.P17678789501377592307

`A175298(n)+and(n, A264619(n))`
-/

namespace A055944.P17678789501377592307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 n + Int.land (n : ℤ) (A264619 n)

end

end A055944.P17678789501377592307

namespace A055944

/-- `A175298(n)+and(n, A264619(n))` -/
def P17678789501377592307.Spec : Prop :=
  ∀ n, P17678789501377592307.a n = A055944 n

end A055944

/-! ## A055944.P6647008632138833655

`and(A145341(n+1), A175298(n))+n`
-/

namespace A055944.P6647008632138833655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A145341 (n + 1)) (A175298 n) + (n : ℤ)

end

end A055944.P6647008632138833655

namespace A055944

/-- `and(A145341(n+1), A175298(n))+n` -/
def P6647008632138833655.Spec : Prop :=
  ∀ n, P6647008632138833655.a n = A055944 n

end A055944

/-! ## A055944.P9374103391844111784

`A175298(n)+A175920(n)-A175917(n)`
-/

namespace A055944.P9374103391844111784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 n + (A175920 n - A175917 n)

end

end A055944.P9374103391844111784

namespace A055944

/-- `A175298(n)+A175920(n)-A175917(n)` -/
def P9374103391844111784.Spec : Prop :=
  ∀ n, P9374103391844111784.a n = A055944 n

end A055944

/-!
# A055945: a(n) = n - (reversal of base-2 digits of n) (and then the result is written in base 10).

The programs for A055945, the canonical program `A055945.P5963763732554067333` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055945 has offset 0).

The definition of A055945 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055945.P17600186433820956698

`n-A030101(n)`
-/

namespace A055945.P17600186433820956698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A030101 n

end

end A055945.P17600186433820956698

namespace A055945

/-- `n-A030101(n)` -/
def P17600186433820956698.Spec : Prop :=
  ∀ n, P17600186433820956698.a n = A055945 n

end A055945

/-! ## A055945.P13530203135263988085

`2*n-A055944(n)`
-/

namespace A055945.P13530203135263988085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A055944 n

end

end A055945.P13530203135263988085

namespace A055945

/-- `2*n-A055944(n)` -/
def P13530203135263988085.Spec : Prop :=
  ∀ n, P13530203135263988085.a n = A055945 n

end A055945

/-! ## A055945.P17123089822434930787

`n-xor(n, A175919(n))`
-/

namespace A055945.P17123089822434930787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.xor (n : ℤ) (A175919 n)

end

end A055945.P17123089822434930787

namespace A055945

/-- `n-xor(n, A175919(n))` -/
def P17123089822434930787.Spec : Prop :=
  ∀ n, P17123089822434930787.a n = A055945 n

end A055945

/-! ## A055945.P9393158816365207524

`n-A264619(n)%(2*n+1)`
-/

namespace A055945.P9393158816365207524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (A264619 n) (2 * n + 1 : ℤ)

end

end A055945.P9393158816365207524

namespace A055945

/-- `n-A264619(n)%(2*n+1)` -/
def P9393158816365207524.Spec : Prop :=
  ∀ n, P9393158816365207524.a n = A055945 n

end A055945

/-! ## A055945.P5963763732554067333

`a(floor(n/2))+n-A038572(n)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A055945

/-- `a(floor(n/2))+n-A038572(n)` -/
def P5963763732554067333.Spec : Prop :=
  ∀ n, P5963763732554067333.a n = A055945 n

theorem P5963763732554067333.correct : P5963763732554067333.Spec := by
  intro n
  simp only [A055945]

end A055945

/-! ## A055945.P13713213384789476594

`A036044(n)-A035327(n)`
-/

namespace A055945.P13713213384789476594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 n - A035327 n

end

end A055945.P13713213384789476594

namespace A055945

/-- `A036044(n)-A035327(n)` -/
def P13713213384789476594.Spec : Prop :=
  ∀ n, P13713213384789476594.a n = A055945 n

end A055945

/-! ## A055945.P15885068281187498205

`n-A280995(A006068(n))`
-/

namespace A055945.P15885068281187498205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A280995 (A006068 n).toNat

end

end A055945.P15885068281187498205

namespace A055945

/-- `n-A280995(A006068(n))` -/
def P15885068281187498205.Spec : Prop :=
  ∀ n, P15885068281187498205.a n = A055945 n

end A055945

/-! ## A055945.P15851361941321196843

`n-A003188(A378299(n))`
-/

namespace A055945.P15851361941321196843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A003188 (A378299 n).toNat

end

end A055945.P15851361941321196843

namespace A055945

/-- `n-A003188(A378299(n))` -/
def P15851361941321196843.Spec : Prop :=
  ∀ n, P15851361941321196843.a n = A055945 n

end A055945

/-! ## A055945.P7903756710431200684

`A030101(n)*A057428(n)+n`
-/

namespace A055945.P7903756710431200684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n * A057428 n + (n : ℤ)

end

end A055945.P7903756710431200684

namespace A055945

/-- `A030101(n)*A057428(n)+n` -/
def P7903756710431200684.Spec : Prop :=
  ∀ n, P7903756710431200684.a n = A055945 n

end A055945

/-! ## A055945.P18115469877949384168

`n-A006257(A145342(n+1)-1)`
-/

namespace A055945.P18115469877949384168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A006257 (A145342 (n + 1) - 1).toNat

end

end A055945.P18115469877949384168

namespace A055945

/-- `n-A006257(A145342(n+1)-1)` -/
def P18115469877949384168.Spec : Prop :=
  ∀ n, P18115469877949384168.a n = A055945 n

end A055945

/-! ## A055945.P1699381774009001072

`n-and(A145341(n+1), A175298(n))`
-/

namespace A055945.P1699381774009001072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (A145341 (n + 1)) (A175298 n)

end

end A055945.P1699381774009001072

namespace A055945

/-- `n-and(A145341(n+1), A175298(n))` -/
def P1699381774009001072.Spec : Prop :=
  ∀ n, P1699381774009001072.a n = A055945 n

end A055945

/-! ## A055945.P6106435251136816981

`n-A004086(A081432(n))`
-/

namespace A055945.P6106435251136816981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004086 (A081432 n).toNat

end

end A055945.P6106435251136816981

namespace A055945

/-- `n-A004086(A081432(n))` -/
def P6106435251136816981.Spec : Prop :=
  ∀ n, P6106435251136816981.a n = A055945 n

end A055945

/-! ## A055945.P1915222408040142014

`n-A026741(A055944(n)-n)`
-/

namespace A055945.P1915222408040142014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A026741 (A055944 n - (n : ℤ)).toNat

end

end A055945.P1915222408040142014

namespace A055945

/-- `n-A026741(A055944(n)-n)` -/
def P1915222408040142014.Spec : Prop :=
  ∀ n, P1915222408040142014.a n = A055945 n

end A055945

/-! ## A055945.P17030607983503961377

`n-(A055944(A325402(n))-n)`
-/

namespace A055945.P17030607983503961377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A055944 (A325402 n).toNat - (n : ℤ))

end

end A055945.P17030607983503961377

namespace A055945

/-- `n-(A055944(A325402(n))-n)` -/
def P17030607983503961377.Spec : Prop :=
  ∀ n, P17030607983503961377.a n = A055945 n

end A055945

/-! ## A055945.P6254279789517768238

`n-A325401(2*n)`
-/

namespace A055945.P6254279789517768238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A325401 (2 * n)

end

end A055945.P6254279789517768238

namespace A055945

/-- `n-A325401(2*n)` -/
def P6254279789517768238.Spec : Prop :=
  ∀ n, P6254279789517768238.a n = A055945 n

end A055945

/-! ## A055945.P8925694379311668595

`A065620(A280995(2*n))+n`
-/

namespace A055945.P8925694379311668595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (A280995 (2 * n)).toNat + (n : ℤ)

end

end A055945.P8925694379311668595

namespace A055945

/-- `A065620(A280995(2*n))+n` -/
def P8925694379311668595.Spec : Prop :=
  ∀ n, P8925694379311668595.a n = A055945 n

end A055945

/-! ## A055945.P12609975164951147622

`n-A119608(Δ[n²])`
-/

namespace A055945.P12609975164951147622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A119608 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A055945.P12609975164951147622

namespace A055945

/-- `n-A119608(Δ[n²])` -/
def P12609975164951147622.Spec : Prop :=
  ∀ n, P12609975164951147622.a n = A055945 n

end A055945

/-! ## A055945.P8685350413028703354

`n-A342122(A004277(n))`
-/

namespace A055945.P8685350413028703354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A342122 (A004277 n).toNat

end

end A055945.P8685350413028703354

namespace A055945

/-- `n-A342122(A004277(n))` -/
def P8685350413028703354.Spec : Prop :=
  ∀ n, P8685350413028703354.a n = A055945 n

end A055945

/-! ## A055945.P9618123783449877042

`n-A048700(2*n+1)%(2*n+1)`
-/

namespace A055945.P9618123783449877042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (A048700 (2 * n + 1)) (2 * n + 1 : ℤ)

end

end A055945.P9618123783449877042

namespace A055945

/-- `n-A048700(2*n+1)%(2*n+1)` -/
def P9618123783449877042.Spec : Prop :=
  ∀ n, P9618123783449877042.a n = A055945 n

end A055945

/-! ## A055945.P10612461640047212821

`n-A006257(A030109(2*n+1))`
-/

namespace A055945.P10612461640047212821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A006257 (A030109 (2 * n + 1)).toNat

end

end A055945.P10612461640047212821

namespace A055945

/-- `n-A006257(A030109(2*n+1))` -/
def P10612461640047212821.Spec : Prop :=
  ∀ n, P10612461640047212821.a n = A055945 n

end A055945

/-!
# A055946: n + reversal of base 3 digits of n (written in base 10).

The programs for A055946, there is no canonical definition to state claims against.
-/

/-! ## A055946.P15979161860552938943

`n+A030102(n)`
-/

namespace A055946.P15979161860552938943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A030102 n

end

end A055946.P15979161860552938943

/-! ## A055946.P12522878023757595253

`2*n-A055947(n)`
-/

namespace A055946.P12522878023757595253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A055947 n

end

end A055946.P12522878023757595253

/-! ## A055946.P2038793119381960400

`A030102(n)-A001489(n)`
-/

namespace A055946.P2038793119381960400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 n - A001489 n

end

end A055946.P2038793119381960400

/-! ## A055946.P8375777380008299006

`A000096(n)-(∑[n]-A030102(n))`
-/

namespace A055946.P8375777380008299006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A030102 n)

end

end A055946.P8375777380008299006

/-! ## A055946.P18256124310435958222

`A056964(n)+A056965(n)-A055947(n)`
-/

namespace A055946.P18256124310435958222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 n + (A056965 n - A055947 n)

end

end A055946.P18256124310435958222

/-! ## A055946.P11014041213954179673

`n-(A055947(n)-A004488(A004488(n)))`
-/

namespace A055946.P11014041213954179673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A055947 n - A004488 (A004488 n).toNat)

end

end A055946.P11014041213954179673

/-! ## A055946.P18270365779272114406

`A030102(n)-(A030108(n)-A055958(n))`
-/

namespace A055946.P18270365779272114406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 n - (A030108 n - A055958 n)

end

end A055946.P18270365779272114406

/-! ## A055946.P687528824820481869

`A004488(n)-(A117966(n)-A030102(n))`
-/

namespace A055946.P687528824820481869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n - (A117966 n - A030102 n)

end

end A055946.P687528824820481869

/-! ## A055946.P10244626584604548812

`n-(A218858(A218858(n))-A030102(n))`
-/

namespace A055946.P10244626584604548812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A218858 (A218858 n).toNat - A030102 n)

end

end A055946.P10244626584604548812

/-! ## A055946.P5741083443073824870

`A263273(n/A038500(A028310(n)))+n`
-/

namespace A055946.P5741083443073824870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (SequenceMachineLib.roundAway ((n : ℚ) / (A038500 (A028310 n).toNat : ℚ))).toNat + (n : ℤ)

end

end A055946.P5741083443073824870

/-! ## A055946.P18184959027134516174

`n-A001489(n-A055947(n))`
-/

namespace A055946.P18184959027134516174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001489 ((n : ℤ) - A055947 n).toNat

end

end A055946.P18184959027134516174

/-! ## A055946.P11544446044221737862

`A004488(A137305(n))+n`
-/

namespace A055946.P11544446044221737862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A137305 n).toNat + (n : ℤ)

end

end A055946.P11544446044221737862

/-! ## A055946.P15420089926114136429

`A137305(n)+n-A327252(n)`
-/

namespace A055946.P15420089926114136429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137305 n + ((n : ℤ) - A327252 n)

end

end A055946.P15420089926114136429

/-! ## A055946.P11188003461971058330

`A030102(n)-(1-A265911(A265341(n)))`
-/

namespace A055946.P11188003461971058330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 n - (1 - A265911 (A265341 n).toNat)

end

end A055946.P11188003461971058330

/-! ## A055946.P14721374501815598443

`n-(A030102(n)-A030102(A265342(n)))`
-/

namespace A055946.P14721374501815598443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A030102 n - A030102 (A265342 n).toNat)

end

end A055946.P14721374501815598443

/-! ## A055946.P10356056266021420664

`A171960(A171960(4*n)+A055947(3*n))`
-/

namespace A055946.P10356056266021420664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171960 (A171960 (4 * n) + A055947 (3 * n)).toNat

end

end A055946.P10356056266021420664

/-! ## A055946.P6917836292077796112

`A030102(n)-A117966(A140263(2*n))`
-/

namespace A055946.P6917836292077796112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 n - A117966 (A140263 (2 * n)).toNat

end

end A055946.P6917836292077796112

/-! ## A055946.P10622677133698326338

`A171960(A284797(3*n))+n`
-/

namespace A055946.P10622677133698326338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171960 (A284797 (3 * n)).toNat + (n : ℤ)

end

end A055946.P10622677133698326338

/-! ## A055946.P5932900668975556069

`A171960(A284797(3*n)-n)`
-/

namespace A055946.P5932900668975556069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171960 (A284797 (3 * n) - (n : ℤ)).toNat

end

end A055946.P5932900668975556069

/-!
# A055947: n - reversal of base 3 digits of n (written in base 10).

The programs for A055947, there is no canonical definition to state claims against.
-/

/-! ## A055947.P4006889121746405356

`n-A030102(n)`
-/

namespace A055947.P4006889121746405356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A030102 n

end

end A055947.P4006889121746405356

/-! ## A055947.P4235898191681366250

`2*n-A055946(n)`
-/

namespace A055947.P4235898191681366250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A055946 n

end

end A055947.P4235898191681366250

/-! ## A055947.P4317383490131008342

`n-A055946(n%(n+1))+n`
-/

namespace A055947.P4317383490131008342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055946 (n % (n + 1)) + (n : ℤ)

end

end A055947.P4317383490131008342

/-! ## A055947.P13903358351617044876

`n-(A055946(n)+A001489(n))`
-/

namespace A055947.P13903358351617044876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A055946 n + A001489 n)

end

end A055947.P13903358351617044876

/-! ## A055947.P15862593620828209066

`A005843(n+1)-A055946(n)-2`
-/

namespace A055947.P15862593620828209066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) - A055946 n - 2

end

end A055947.P15862593620828209066

/-! ## A055947.P12728946584432233721

`n-A091684(A055946(n)-n)`
-/

namespace A055947.P12728946584432233721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A091684 (A055946 n - (n : ℤ)).toNat

end

end A055947.P12728946584432233721

/-! ## A055947.P11094219622355328128

`A001489(A055946(n)+A001489(n))+n`
-/

namespace A055947.P11094219622355328128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A055946 n + A001489 n).toNat + (n : ℤ)

end

end A055947.P11094219622355328128

/-! ## A055947.P4515418705547344980

`A001489(A055946(n)-n)-A001489(n)`
-/

namespace A055947.P4515418705547344980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A055946 n - (n : ℤ)).toNat - A001489 n

end

end A055947.P4515418705547344980

/-! ## A055947.P6677488140666615221

`n-A004488(A137305(n))`
-/

namespace A055947.P6677488140666615221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004488 (A137305 n).toNat

end

end A055947.P6677488140666615221

/-! ## A055947.P12935360011102524930

`A327252(n)+n-A137305(n)`
-/

namespace A055947.P12935360011102524930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327252 n + ((n : ℤ) - A137305 n)

end

end A055947.P12935360011102524930

/-! ## A055947.P13999094367478501698

`A284797(n)-A171960(n)`
-/

namespace A055947.P13999094367478501698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284797 n - A171960 n

end

end A055947.P13999094367478501698

/-!
# A055948: n + reversal of base 4 digits of n (written in base 10).

The programs for A055948, there is no canonical definition to state claims against.
-/

/-! ## A055948.P15357435550332670928

`n+A030103(n)`
-/

namespace A055948.P15357435550332670928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A030103 n

end

end A055948.P15357435550332670928

/-! ## A055948.P2409543591559980740

`2*n-A055949(n)`
-/

namespace A055948.P2409543591559980740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A055949 n

end

end A055948.P2409543591559980740

/-! ## A055948.P4912606270596282070

`n-A055949(n%(n+1))+n`
-/

namespace A055948.P4912606270596282070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055949 (n % (n + 1)) + (n : ℤ)

end

end A055948.P4912606270596282070

/-! ## A055948.P18331214938828478999

`A030103(n)-A001489(n)`
-/

namespace A055948.P18331214938828478999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030103 n - A001489 n

end

end A055948.P18331214938828478999

/-! ## A055948.P14516605618077741437

`A008585(n)-(A055949(n)+n)`
-/

namespace A055948.P14516605618077741437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n - (A055949 n + (n : ℤ))

end

end A055948.P14516605618077741437

/-! ## A055948.P9459325037772941483

`record[A000265(n+1)]-(A055949(n)+1)`
-/

namespace A055948.P9459325037772941483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A055949 n + 1)

end

end A055948.P9459325037772941483

/-! ## A055948.P10249532568873204225

`n-(A055949(n)-A264994(A264994(n)))`
-/

namespace A055948.P10249532568873204225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A055949 n - A264994 (A264994 n).toNat)

end

end A055948.P10249532568873204225

/-! ## A055948.P564667690188962651

`-A055949(n)%A008585(n+1)+n+n`
-/

namespace A055948.P564667690188962651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A055949 n) (A008585 (n + 1)) + (n : ℤ) + (n : ℤ)

end

end A055948.P564667690188962651

/-! ## A055948.P12822621909738825704

`n-A001489(n-A055949(n))`
-/

namespace A055948.P12822621909738825704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001489 ((n : ℤ) - A055949 n).toNat

end

end A055948.P12822621909738825704

/-!
# A055949: n - reversal of base 4 digits of n (written in base 10).

The programs for A055949, there is no canonical definition to state claims against.
-/

/-! ## A055949.P5318832935139593341

`n-A030103(n)`
-/

namespace A055949.P5318832935139593341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A030103 n

end

end A055949.P5318832935139593341

/-! ## A055949.P2816540545685274445

`2*n-A055948(n)`
-/

namespace A055949.P2816540545685274445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A055948 n

end

end A055949.P2816540545685274445

/-! ## A055949.P10622814643939456704

`n-A055948(n%(n+1))+n`
-/

namespace A055949.P10622814643939456704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055948 (n % (n + 1)) + (n : ℤ)

end

end A055949.P10622814643939456704

/-! ## A055949.P6920042921379428124

`n-(A055948(n)+A001489(n))`
-/

namespace A055949.P6920042921379428124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A055948 n + A001489 n)

end

end A055949.P6920042921379428124

/-! ## A055949.P15156739712176858975

`A063946(A063946(n))+n-A055948(n)`
-/

namespace A055949.P15156739712176858975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (A063946 n).toNat + ((n : ℤ) - A055948 n)

end

end A055949.P15156739712176858975

/-! ## A055949.P8888299126482904717

`A055956(n)-(A055948(n)-A055957(n))`
-/

namespace A055949.P8888299126482904717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055956 n - (A055948 n - A055957 n)

end

end A055949.P8888299126482904717

/-! ## A055949.P1757822442586976999

`n-(A055948(n)-A264994(A264994(n)))`
-/

namespace A055949.P1757822442586976999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A055948 n - A264994 (A264994 n).toNat)

end

end A055949.P1757822442586976999

/-! ## A055949.P17026733004383954611

`A072796(A072796(n))+n-A055948(n)`
-/

namespace A055949.P17026733004383954611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072796 (A072796 n).toNat + ((n : ℤ) - A055948 n)

end

end A055949.P17026733004383954611

/-! ## A055949.P17536835107320083957

`n-A190621(A055948(n)-n)`
-/

namespace A055949.P17536835107320083957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A190621 (A055948 n - (n : ℤ)).toNat

end

end A055949.P17536835107320083957

/-! ## A055949.P10038909785054479083

`A001489(A055948(n)+A001489(n))+n`
-/

namespace A055949.P10038909785054479083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A055948 n + A001489 n).toNat + (n : ℤ)

end

end A055949.P10038909785054479083

/-! ## A055949.P14473263759619131862

`A001489(A055948(n)-n)-A001489(n)`
-/

namespace A055949.P14473263759619131862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A055948 n - (n : ℤ)).toNat - A001489 n

end

end A055949.P14473263759619131862

/-!
# A055950: a(n) = n + reversal of base 5 digits of n (written in base 10).

The programs for A055950, there is no canonical definition to state claims against.
-/

/-! ## A055950.P15377066736028280448

`n+A030104(n)`
-/

namespace A055950.P15377066736028280448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A030104 n

end

end A055950.P15377066736028280448

/-! ## A055950.P14902320004505260279

`2*n-A055951(n)`
-/

namespace A055950.P14902320004505260279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A055951 n

end

end A055950.P14902320004505260279

/-! ## A055950.P765226423239519467

`A030104(n)-A001489(n)`
-/

namespace A055950.P765226423239519467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030104 n - A001489 n

end

end A055950.P765226423239519467

/-! ## A055950.P7047265414674158689

`A005843(n)-(n-A030104(n))`
-/

namespace A055950.P7047265414674158689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A030104 n)

end

end A055950.P7047265414674158689

/-! ## A055950.P6848874226827067037

`A000096(n)-(∑[n]-A030104(n))`
-/

namespace A055950.P6848874226827067037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A030104 n)

end

end A055950.P6848874226827067037

/-! ## A055950.P2181856774947432661

`A030104(n)-(A004086(n)-A056964(n))`
-/

namespace A055950.P2181856774947432661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030104 n - (A004086 n - A056964 n)

end

end A055950.P2181856774947432661

/-! ## A055950.P12407194495303615441

`n-(A000038(A004277(n))-A030104(n))`
-/

namespace A055950.P12407194495303615441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A000038 (A004277 n).toNat - A030104 n)

end

end A055950.P12407194495303615441

/-! ## A055950.P12775035302558040622

`A264995(n/A060904(A004277(n)))+n`
-/

namespace A055950.P12775035302558040622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264995 (SequenceMachineLib.roundAway ((n : ℚ) / (A060904 (A004277 n).toNat : ℚ))).toNat + (n : ℤ)

end

end A055950.P12775035302558040622

/-! ## A055950.P14821927833400814831

`A028900(A071241(n))`
-/

namespace A055950.P14821927833400814831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (A071241 n).toNat

end

end A055950.P14821927833400814831

/-!
# A055951: n - reversal of base 5 digits of n (written in base 10).

The programs for A055951, there is no canonical definition to state claims against.
-/

/-! ## A055951.P9781445833304761375

`n-A030104(n)`
-/

namespace A055951.P9781445833304761375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A030104 n

end

end A055951.P9781445833304761375

/-! ## A055951.P18164853159537227038

`2*n-A055950(n)`
-/

namespace A055951.P18164853159537227038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A055950 n

end

end A055951.P18164853159537227038

/-! ## A055951.P1304668680872522396

`-(A030104(n)+A001489(n))`
-/

namespace A055951.P1304668680872522396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A030104 n + A001489 n)

end

end A055951.P1304668680872522396

/-! ## A055951.P1950766131976107251

`n-(A055950(n)+A001489(n))`
-/

namespace A055951.P1950766131976107251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A055950 n + A001489 n)

end

end A055951.P1950766131976107251

/-! ## A055951.P11628697376355999939

`n-A091703(A055950(n)-n)`
-/

namespace A055951.P11628697376355999939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A091703 (A055950 n - (n : ℤ)).toNat

end

end A055951.P11628697376355999939

/-! ## A055951.P7517286963892603280

`A001489(A055950(n)+A001489(n))+n`
-/

namespace A055951.P7517286963892603280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A055950 n + A001489 n).toNat + (n : ℤ)

end

end A055951.P7517286963892603280

/-! ## A055951.P12213067306988434571

`A230865(n)-A230865(A055950(n)-n)`
-/

namespace A055951.P12213067306988434571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230865 n - A230865 (A055950 n - (n : ℤ)).toNat

end

end A055951.P12213067306988434571

/-! ## A055951.P1801301399314136002

`2*n-A028900(A071241(n))`
-/

namespace A055951.P1801301399314136002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A028900 (A071241 n).toNat

end

end A055951.P1801301399314136002

/-!
# A055952: n + reversal of base 6 digits of n (written in base 10).

The programs for A055952, there is no canonical definition to state claims against.
-/

/-! ## A055952.P13586686913891150043

`n+A030105(n)`
-/

namespace A055952.P13586686913891150043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A030105 n

end

end A055952.P13586686913891150043

/-! ## A055952.P13590589254182049768

`2*n-A055953(n)`
-/

namespace A055952.P13590589254182049768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A055953 n

end

end A055952.P13590589254182049768

/-! ## A055952.P10645177225739081185

`A030105(n)-A001489(n)`
-/

namespace A055952.P10645177225739081185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030105 n - A001489 n

end

end A055952.P10645177225739081185

/-! ## A055952.P12697116769112320285

`A005843(n)-(n-A030105(n))`
-/

namespace A055952.P12697116769112320285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A030105 n)

end

end A055952.P12697116769112320285

/-! ## A055952.P14581341567862144764

`abs(A055953(n)+A001489(n))+n`
-/

namespace A055952.P14581341567862144764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055953 n + A001489 n| + (n : ℤ)

end

end A055952.P14581341567862144764

/-! ## A055952.P9037129640969562259

`A000096(n)-(∑[n]-A030105(n))`
-/

namespace A055952.P9037129640969562259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A030105 n)

end

end A055952.P9037129640969562259

/-! ## A055952.P3764625568702090026

`A056964(n)+A056965(n)-A055953(n)`
-/

namespace A055952.P3764625568702090026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 n + (A056965 n - A055953 n)

end

end A055952.P3764625568702090026

/-! ## A055952.P15406290370178864784

`A030105(n)-(A004086(n)-A056964(n))`
-/

namespace A055952.P15406290370178864784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030105 n - (A004086 n - A056964 n)

end

end A055952.P15406290370178864784

/-! ## A055952.P5218192157303388231

`A030105(n)-(A030108(n)-A055958(n))`
-/

namespace A055952.P5218192157303388231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030105 n - (A030108 n - A055958 n)

end

end A055952.P5218192157303388231

/-! ## A055952.P6616189813250593771

`n-A001489(n-A055953(n))`
-/

namespace A055952.P6616189813250593771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001489 ((n : ℤ) - A055953 n).toNat

end

end A055952.P6616189813250593771

/-!
# A055953: n - reversal of base 6 digits of n (written in base 10).

The programs for A055953, there is no canonical definition to state claims against.
-/

/-! ## A055953.P4634720491530714011

`n-A030105(n)`
-/

namespace A055953.P4634720491530714011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A030105 n

end

end A055953.P4634720491530714011

/-! ## A055953.P15218879141875930426

`2*n-A055952(n)`
-/

namespace A055953.P15218879141875930426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A055952 n

end

end A055953.P15218879141875930426

/-! ## A055953.P11476500884323936183

`-(A030105(n)+A001489(n))`
-/

namespace A055953.P11476500884323936183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A030105 n + A001489 n)

end

end A055953.P11476500884323936183

/-! ## A055953.P13698771422637569509

`n-(A055952(n)+A001489(n))`
-/

namespace A055953.P13698771422637569509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A055952 n + A001489 n)

end

end A055953.P13698771422637569509

/-! ## A055953.P17259838619713151899

`Δ[A000290(n)]-(A055952(n)+1)`
-/

namespace A055953.P17259838619713151899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A055952 n + 1)

end

end A055953.P17259838619713151899

/-! ## A055953.P4231069985983122461

`A001489(A055952(n)+A001489(n))+n`
-/

namespace A055953.P4231069985983122461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A055952 n + A001489 n).toNat + (n : ℤ)

end

end A055953.P4231069985983122461

/-! ## A055953.P7367858976495776220

`A004277(n)-(A004277(A055952(n))-A055952(n))`
-/

namespace A055953.P7367858976495776220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - (A004277 (A055952 n).toNat - A055952 n)

end

end A055953.P7367858976495776220

/-!
# A055954: a(n) = n + reversal of base 7 digits of n (written in base 10).

The programs for A055954, there is no canonical definition to state claims against.
-/

/-! ## A055954.P13435827008730848762

`n+A030106(n)`
-/

namespace A055954.P13435827008730848762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A030106 n

end

end A055954.P13435827008730848762

/-! ## A055954.P10880561687878864381

`2*n-A055955(n)`
-/

namespace A055954.P10880561687878864381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A055955 n

end

end A055954.P10880561687878864381

/-! ## A055954.P15140067503170692215

`A030106(n)-A001489(n)`
-/

namespace A055954.P15140067503170692215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030106 n - A001489 n

end

end A055954.P15140067503170692215

/-! ## A055954.P3931609126927638638

`A005843(n)-(n-A030106(n))`
-/

namespace A055954.P3931609126927638638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A030106 n)

end

end A055954.P3931609126927638638

/-! ## A055954.P5832740429567240773

`abs(A055955(n)+A001489(n))+n`
-/

namespace A055954.P5832740429567240773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055955 n + A001489 n| + (n : ℤ)

end

end A055954.P5832740429567240773

/-! ## A055954.P3511631479981903733

`A000096(n)-(∑[n]-A030106(n))`
-/

namespace A055954.P3511631479981903733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A030106 n)

end

end A055954.P3511631479981903733

/-! ## A055954.P4922334043408886689

`A056964(n)+A056965(n)-A055955(n)`
-/

namespace A055954.P4922334043408886689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 n + (A056965 n - A055955 n)

end

end A055954.P4922334043408886689

/-! ## A055954.P13831483233683220214

`A030106(n)-(A004086(n)-A056964(n))`
-/

namespace A055954.P13831483233683220214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030106 n - (A004086 n - A056964 n)

end

end A055954.P13831483233683220214

/-! ## A055954.P11716957546567822082

`A030106(n)-A001057(2*n)`
-/

namespace A055954.P11716957546567822082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030106 n - A001057 (2 * n)

end

end A055954.P11716957546567822082

/-! ## A055954.P17541282068117503846

`n-A001489(n-A055955(n))`
-/

namespace A055954.P17541282068117503846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001489 ((n : ℤ) - A055955 n).toNat

end

end A055954.P17541282068117503846

/-! ## A055954.P17729772723064950092

`n-(A116178(∑[n])-A030106(n))`
-/

namespace A055954.P17729772723064950092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A116178 (∑ j ∈ Finset.range (n + 1), f1 j) - A030106 n)

end

end A055954.P17729772723064950092

/-! ## A055954.P7562182051635349203

`A030106(n)-A196199(n²)`
-/

namespace A055954.P7562182051635349203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030106 n - A196199 (n ^ 2)

end

end A055954.P7562182051635349203

/-! ## A055954.P5451649292127169999

`n-(A053188(n²)-A030106(n))`
-/

namespace A055954.P5451649292127169999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A053188 (n ^ 2) - A030106 n)

end

end A055954.P5451649292127169999

/-!
# A055955: a(n) = n - reversal of base 7 digits of n (written in base 10).

The programs for A055955, there is no canonical definition to state claims against.
-/

/-! ## A055955.P3302427198710662090

`n-A030106(n)`
-/

namespace A055955.P3302427198710662090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A030106 n

end

end A055955.P3302427198710662090

/-! ## A055955.P18004242296285690648

`2*n-A055954(n)`
-/

namespace A055955.P18004242296285690648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A055954 n

end

end A055955.P18004242296285690648

/-! ## A055955.P14522131259661368493

`-(A030106(n)+A001489(n))`
-/

namespace A055955.P14522131259661368493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A030106 n + A001489 n)

end

end A055955.P14522131259661368493

/-! ## A055955.P2386367546268284755

`n-(A055954(n)+A001489(n))`
-/

namespace A055955.P2386367546268284755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A055954 n + A001489 n)

end

end A055955.P2386367546268284755

/-! ## A055955.P3747796709826709653

`n-(A055954(n)-A004442(A004442(n)))`
-/

namespace A055955.P3747796709826709653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A055954 n - A004442 (A004442 n).toNat)

end

end A055955.P3747796709826709653

/-! ## A055955.P2639482156784630659

`A004277(n)-A004277(A055954(n)/2)`
-/

namespace A055955.P2639482156784630659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - A004277 (SequenceMachineLib.roundAway ((A055954 n : ℚ) / 2)).toNat

end

end A055955.P2639482156784630659

/-! ## A055955.P9608862154095411825

`A001489(A055954(n)+A001489(n))+n`
-/

namespace A055955.P9608862154095411825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A055954 n + A001489 n).toNat + (n : ℤ)

end

end A055955.P9608862154095411825

/-! ## A055955.P6987035356079042304

`A001057(2*A030106(n))+n`
-/

namespace A055955.P6987035356079042304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (2 * A030106 n).toNat + (n : ℤ)

end

end A055955.P6987035356079042304

/-! ## A055955.P5765114895731989267

`A196199(A030106(n)²)+n`
-/

namespace A055955.P5765114895731989267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 (A030106 n ^ 2).toNat + (n : ℤ)

end

end A055955.P5765114895731989267

/-!
# A055956: n + reversal of base 8 digits of n (written in base 10).

The programs for A055956, there is no canonical definition to state claims against.
-/

/-! ## A055956.P15298120827970604722

`n+A030107(n)`
-/

namespace A055956.P15298120827970604722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A030107 n

end

end A055956.P15298120827970604722

/-! ## A055956.P14757479211583856313

`2*n-A055957(n)`
-/

namespace A055956.P14757479211583856313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A055957 n

end

end A055956.P14757479211583856313

/-! ## A055956.P14687555033009158947

`A030107(n)-A001489(n)`
-/

namespace A055956.P14687555033009158947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030107 n - A001489 n

end

end A055956.P14687555033009158947

/-! ## A055956.P9004907182551878103

`A005843(n)-(n-A030107(n))`
-/

namespace A055956.P9004907182551878103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A030107 n)

end

end A055956.P9004907182551878103

/-! ## A055956.P11177722703538658009

`A000096(n)-(∑[n]-A030107(n))`
-/

namespace A055956.P11177722703538658009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A030107 n)

end

end A055956.P11177722703538658009

/-! ## A055956.P11296282358150761216

`A030107(n)-(A004086(n)-A056964(n))`
-/

namespace A055956.P11296282358150761216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030107 n - (A004086 n - A056964 n)

end

end A055956.P11296282358150761216

/-! ## A055956.P114095987307766252

`A030107(n)-(A030108(n)-A055958(n))`
-/

namespace A055956.P114095987307766252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030107 n - (A030108 n - A055958 n)

end

end A055956.P114095987307766252

/-! ## A055956.P1406176739565249141

`n-(A129308(A093178(n))-A030107(n))`
-/

namespace A055956.P1406176739565249141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A129308 (A093178 n).toNat - A030107 n)

end

end A055956.P1406176739565249141

/-! ## A055956.P1567763852795946944

`n-A001489(n-A055957(n))`
-/

namespace A055956.P1567763852795946944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001489 ((n : ℤ) - A055957 n).toNat

end

end A055956.P1567763852795946944

/-! ## A055956.P230164753692947781

`A265521(n)+A265521(A265554(n))`
-/

namespace A055956.P230164753692947781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265521 n + A265521 (A265554 n).toNat

end

end A055956.P230164753692947781

/-!
# A055957: n - reversal of base 8 digits of n (written in base 10).

The programs for A055957, there is no canonical definition to state claims against.
-/

/-! ## A055957.P17747435569570380261

`n-A030107(n)`
-/

namespace A055957.P17747435569570380261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A030107 n

end

end A055957.P17747435569570380261

/-! ## A055957.P9730927475084376389

`2*n-A055956(n)`
-/

namespace A055957.P9730927475084376389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A055956 n

end

end A055957.P9730927475084376389

/-! ## A055957.P7612715517996820566

`-(A030107(n)+A001489(n))`
-/

namespace A055957.P7612715517996820566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A030107 n + A001489 n)

end

end A055957.P7612715517996820566

/-! ## A055957.P7117748381104548144

`n-(A055956(n)+A001489(n))`
-/

namespace A055957.P7117748381104548144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A055956 n + A001489 n)

end

end A055957.P7117748381104548144

/-! ## A055957.P3931407425342703961

`A008585(n)-(A055956(n)+n)`
-/

namespace A055957.P3931407425342703961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n - (A055956 n + (n : ℤ))

end

end A055957.P3931407425342703961

/-! ## A055957.P15671216792242255578

`A001489(A055956(n)+A001489(n))+n`
-/

namespace A055957.P15671216792242255578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A055956 n + A001489 n).toNat + (n : ℤ)

end

end A055957.P15671216792242255578

/-! ## A055957.P8975535680365117193

`A004277(n)-(A004277(A055956(n))-A055956(n))`
-/

namespace A055957.P8975535680365117193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - (A004277 (A055956 n).toNat - A055956 n)

end

end A055957.P8975535680365117193

/-!
# A055958: a(n) = n + reversal of base 9 digits of n (written in base 10).

The programs for A055958, there is no canonical definition to state claims against.
-/

/-! ## A055958.P7900089302082834321

`n+A030108(n)`
-/

namespace A055958.P7900089302082834321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A030108 n

end

end A055958.P7900089302082834321

/-! ## A055958.P183230853682221470

`2*n-A055959(n)`
-/

namespace A055958.P183230853682221470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A055959 n

end

end A055958.P183230853682221470

/-! ## A055958.P11077455033870696514

`A030108(n)-A001489(n)`
-/

namespace A055958.P11077455033870696514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030108 n - A001489 n

end

end A055958.P11077455033870696514

/-! ## A055958.P13305317896717046750

`A005843(n)-(n-A030108(n))`
-/

namespace A055958.P13305317896717046750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A030108 n)

end

end A055958.P13305317896717046750

/-! ## A055958.P8816501935684857548

`A030108(n)-(A004086(n)-A056964(n))`
-/

namespace A055958.P8816501935684857548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030108 n - (A004086 n - A056964 n)

end

end A055958.P8816501935684857548

/-! ## A055958.P16073205486212628982

`A030108(n)-(A030102(n)-A055946(n))`
-/

namespace A055958.P16073205486212628982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030108 n - (A030102 n - A055946 n)

end

end A055958.P16073205486212628982

/-! ## A055958.P3090914818333929794

`A030108(n)-(A030103(n)-A055948(n))`
-/

namespace A055958.P3090914818333929794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030108 n - (A030103 n - A055948 n)

end

end A055958.P3090914818333929794

/-! ## A055958.P2257369344340884412

`A030108(n)-(A030104(n)-A055950(n))`
-/

namespace A055958.P2257369344340884412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030108 n - (A030104 n - A055950 n)

end

end A055958.P2257369344340884412

/-! ## A055958.P2243839848603788252

`A030108(n)-(A030105(n)-A055952(n))`
-/

namespace A055958.P2243839848603788252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030108 n - (A030105 n - A055952 n)

end

end A055958.P2243839848603788252

/-! ## A055958.P224444790077076887

`A030108(n)-(A030106(n)-A055954(n))`
-/

namespace A055958.P224444790077076887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030108 n - (A030106 n - A055954 n)

end

end A055958.P224444790077076887

/-! ## A055958.P14790552059034014413

`A030108(n)-(A030107(n)-A055956(n))`
-/

namespace A055958.P14790552059034014413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030108 n - (A030107 n - A055956 n)

end

end A055958.P14790552059034014413

/-! ## A055958.P2105526228314636849

`A030108(n)-(A056960(n)-A055960(n))`
-/

namespace A055958.P2105526228314636849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030108 n - (A056960 n - A055960 n)

end

end A055958.P2105526228314636849

/-! ## A055958.P7972844965877826105

`A030108(n)-(A056961(n)-A055962(n))`
-/

namespace A055958.P7972844965877826105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030108 n - (A056961 n - A055962 n)

end

end A055958.P7972844965877826105

/-! ## A055958.P14354374078528117752

`A030108(n)-(A056962(n)-A055964(n))`
-/

namespace A055958.P14354374078528117752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030108 n - (A056962 n - A055964 n)

end

end A055958.P14354374078528117752

/-! ## A055958.P11805676058548296867

`A030108(n)-(A056963(n)-A055966(n))`
-/

namespace A055958.P11805676058548296867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030108 n - (A056963 n - A055966 n)

end

end A055958.P11805676058548296867

/-! ## A055958.P17172004687694599287

`A030108(n)-A001057(2*n)`
-/

namespace A055958.P17172004687694599287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030108 n - A001057 (2 * n)

end

end A055958.P17172004687694599287

/-! ## A055958.P4033291534051325994

`A052928(n-A055959(n)+n)`
-/

namespace A055958.P4033291534051325994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 ((n : ℤ) - A055959 n + (n : ℤ)).toNat

end

end A055958.P4033291534051325994

/-! ## A055958.P12231984461054263682

`A052928(n-(A055959(n)-n))`
-/

namespace A055958.P12231984461054263682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 ((n : ℤ) - (A055959 n - (n : ℤ))).toNat

end

end A055958.P12231984461054263682

/-!
# A055959: n - reversal of base 9 digits of n (written in base 10).

The programs for A055959, there is no canonical definition to state claims against.
-/

/-! ## A055959.P6553497703023860521

`n-A030108(n)`
-/

namespace A055959.P6553497703023860521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A030108 n

end

end A055959.P6553497703023860521

/-! ## A055959.P8907579160059009550

`2*n-A055958(n)`
-/

namespace A055959.P8907579160059009550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A055958 n

end

end A055959.P8907579160059009550

/-! ## A055959.P18159786816573716023

`-(A030108(n)+A001489(n))`
-/

namespace A055959.P18159786816573716023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A030108 n + A001489 n)

end

end A055959.P18159786816573716023

/-! ## A055959.P7018387563178910480

`n-(A055958(n)+A001489(n))`
-/

namespace A055959.P7018387563178910480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A055958 n + A001489 n)

end

end A055959.P7018387563178910480

/-! ## A055959.P17322680860933767284

`A004277(n)-A004277(A055958(n)/2)`
-/

namespace A055959.P17322680860933767284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - A004277 (SequenceMachineLib.roundAway ((A055958 n : ℚ) / 2)).toNat

end

end A055959.P17322680860933767284

/-! ## A055959.P12700325341804604182

`A001489(A055958(n)+A001489(n))+n`
-/

namespace A055959.P12700325341804604182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A055958 n + A001489 n).toNat + (n : ℤ)

end

end A055959.P12700325341804604182

/-! ## A055959.P8637246040549208338

`A001057(2*A030108(n))+n`
-/

namespace A055959.P8637246040549208338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (2 * A030108 n).toNat + (n : ℤ)

end

end A055959.P8637246040549208338

/-!
# A055960: n + reversal of base 11 digits of n (written in base 10).

The programs for A055960, there is no canonical definition to state claims against.
-/

/-! ## A055960.P13339015748482413704

`n+A056960(n)`
-/

namespace A055960.P13339015748482413704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A056960 n

end

end A055960.P13339015748482413704

/-! ## A055960.P5984609032013326114

`2*n-A055961(n)`
-/

namespace A055960.P5984609032013326114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A055961 n

end

end A055960.P5984609032013326114

/-! ## A055960.P7602478634100897778

`A056960(n)-A001489(n)`
-/

namespace A055960.P7602478634100897778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056960 n - A001489 n

end

end A055960.P7602478634100897778

/-! ## A055960.P2162840100922471604

`n-(A055961(n)+A001489(n))`
-/

namespace A055960.P2162840100922471604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A055961 n + A001489 n)

end

end A055960.P2162840100922471604

/-! ## A055960.P11810138316443073484

`A005843(n)-(n-A056960(n))`
-/

namespace A055960.P11810138316443073484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A056960 n)

end

end A055960.P11810138316443073484

/-! ## A055960.P16210346258509384377

`n-A056960(n)*A057428(n)`
-/

namespace A055960.P16210346258509384377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A056960 n * A057428 n

end

end A055960.P16210346258509384377

/-! ## A055960.P16796746140137084955

`A056960(n)-(A004086(n)-A056964(n))`
-/

namespace A055960.P16796746140137084955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056960 n - (A004086 n - A056964 n)

end

end A055960.P16796746140137084955

/-! ## A055960.P17723936653575841496

`A055944(n)-(A030101(n)-A056960(n))`
-/

namespace A055960.P17723936653575841496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 n - (A030101 n - A056960 n)

end

end A055960.P17723936653575841496

/-! ## A055960.P14472900597643435447

`A055962(n)-(A056961(n)-A056960(n))`
-/

namespace A055960.P14472900597643435447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055962 n - (A056961 n - A056960 n)

end

end A055960.P14472900597643435447

/-! ## A055960.P18027502816838066423

`A055964(n)-(A056962(n)-A056960(n))`
-/

namespace A055960.P18027502816838066423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055964 n - (A056962 n - A056960 n)

end

end A055960.P18027502816838066423

/-! ## A055960.P16474080927850723255

`A055966(n)-(A056963(n)-A056960(n))`
-/

namespace A055960.P16474080927850723255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055966 n - (A056963 n - A056960 n)

end

end A055960.P16474080927850723255

/-! ## A055960.P2481489233401783099

`n-A001489(n-A055961(n))`
-/

namespace A055960.P2481489233401783099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001489 ((n : ℤ) - A055961 n).toNat

end

end A055960.P2481489233401783099

/-! ## A055960.P3542701433791564665

`n-A001057(2*A056960(n))`
-/

namespace A055960.P3542701433791564665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001057 (2 * A056960 n).toNat

end

end A055960.P3542701433791564665

/-! ## A055960.P18255239360995439023

`A056960(n)-(A217557(n)-A160638(n))`
-/

namespace A055960.P18255239360995439023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056960 n - (A217557 n - A160638 n)

end

end A055960.P18255239360995439023

/-!
# A055961: a(n) = n - (reversal of base-11 digits of n) (written in base 10).

The programs for A055961, there is no canonical definition to state claims against.
-/

/-! ## A055961.P6092806994169160739

`n-A056960(n)`
-/

namespace A055961.P6092806994169160739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A056960 n

end

end A055961.P6092806994169160739

/-! ## A055961.P8663179963363744504

`2*n-A055960(n)`
-/

namespace A055961.P8663179963363744504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A055960 n

end

end A055961.P8663179963363744504

/-! ## A055961.P16566305050611370831

`-(A056960(n)+A001489(n))`
-/

namespace A055961.P16566305050611370831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A056960 n + A001489 n)

end

end A055961.P16566305050611370831

/-! ## A055961.P4017996306559199171

`A056960(n)*A057428(n)+n`
-/

namespace A055961.P4017996306559199171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056960 n * A057428 n + (n : ℤ)

end

end A055961.P4017996306559199171

/-! ## A055961.P16770595107265129648

`A008683(A065091(n+1))*A056960(n)+n`
-/

namespace A055961.P16770595107265129648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A065091 (n + 1)).toNat * A056960 n + (n : ℤ)

end

end A055961.P16770595107265129648

/-! ## A055961.P12740389324769345021

`A004277(n)-A004277(A055960(n)/2)`
-/

namespace A055961.P12740389324769345021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - A004277 (SequenceMachineLib.roundAway ((A055960 n : ℚ) / 2)).toNat

end

end A055961.P12740389324769345021

/-! ## A055961.P6710510985268025954

`-(A056960(n)+A001057(A005843(n)))`
-/

namespace A055961.P6710510985268025954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A056960 n + A001057 (A005843 n).toNat)

end

end A055961.P6710510985268025954

/-! ## A055961.P12285659058323544227

`A001489(A055960(n)+A001489(n))+n`
-/

namespace A055961.P12285659058323544227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A055960 n + A001489 n).toNat + (n : ℤ)

end

end A055961.P12285659058323544227

/-! ## A055961.P14290323651388735239

`A004443(A004443(n))+A001489(A056960(n))`
-/

namespace A055961.P14290323651388735239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (A004443 n).toNat + A001489 (A056960 n).toNat

end

end A055961.P14290323651388735239

/-! ## A055961.P12680274403720208817

`A004277(n)-A028310(A055960(n))`
-/

namespace A055961.P12680274403720208817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - A028310 (A055960 n).toNat

end

end A055961.P12680274403720208817

/-! ## A055961.P17244874649461071332

`n-(A028310(A055960(n))-A028310(n))`
-/

namespace A055961.P17244874649461071332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A028310 (A055960 n).toNat - A028310 n)

end

end A055961.P17244874649461071332

/-! ## A055961.P4340613947762932767

`A001057(2*A056960(n))+n`
-/

namespace A055961.P4340613947762932767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (2 * A056960 n).toNat + (n : ℤ)

end

end A055961.P4340613947762932767

/-! ## A055961.P2397477048878043314

`A008683(A106015(n+1))*A056960(n)+n`
-/

namespace A055961.P2397477048878043314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A106015 (n + 1)).toNat * A056960 n + (n : ℤ)

end

end A055961.P2397477048878043314

/-!
# A055962: n + reversal of base 12 digits of n (written in base 10).

The programs for A055962, there is no canonical definition to state claims against.
-/

/-! ## A055962.P11312427098086337247

`n+A056961(n)`
-/

namespace A055962.P11312427098086337247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A056961 n

end

end A055962.P11312427098086337247

/-! ## A055962.P9176087966033067330

`2*n-A055963(n)`
-/

namespace A055962.P9176087966033067330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A055963 n

end

end A055962.P9176087966033067330

/-! ## A055962.P6937151709326408092

`A056961(n)-A001489(n)`
-/

namespace A055962.P6937151709326408092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056961 n - A001489 n

end

end A055962.P6937151709326408092

/-! ## A055962.P15035515803712477524

`abs(A005843(n)-A055963(n))`
-/

namespace A055962.P15035515803712477524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005843 n - A055963 n|

end

end A055962.P15035515803712477524

/-! ## A055962.P14506631195143664879

`n-(A055963(n)+A001489(n))`
-/

namespace A055962.P14506631195143664879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A055963 n + A001489 n)

end

end A055962.P14506631195143664879

/-! ## A055962.P14049252821957316164

`n-(A055963(A254667(n))-n)`
-/

namespace A055962.P14049252821957316164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A055963 (A254667 n).toNat - (n : ℤ))

end

end A055962.P14049252821957316164

/-! ## A055962.P14788103542205849197

`n-A056961(n)*A057428(n)`
-/

namespace A055962.P14788103542205849197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A056961 n * A057428 n

end

end A055962.P14788103542205849197

/-! ## A055962.P10264112469871496216

`2*n+A055963(n)*A057428(n)`
-/

namespace A055962.P10264112469871496216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A055963 n * A057428 n

end

end A055962.P10264112469871496216

/-! ## A055962.P16578472303766040118

`2*n+A055963(n)*A260196(n)`
-/

namespace A055962.P16578472303766040118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A055963 n * A260196 n

end

end A055962.P16578472303766040118

/-! ## A055962.P11824989242721023168

`A016742(n)-(A055963(n)+A002939(n))`
-/

namespace A055962.P11824989242721023168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 n - (A055963 n + A002939 n)

end

end A055962.P11824989242721023168

/-! ## A055962.P16696143093765007982

`A055950(n)+A055951(n)-A055963(n)`
-/

namespace A055962.P16696143093765007982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055950 n + (A055951 n - A055963 n)

end

end A055962.P16696143093765007982

/-! ## A055962.P13305812188330076923

`A055956(n)+A055957(n)-A055963(n)`
-/

namespace A055962.P13305812188330076923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055956 n + (A055957 n - A055963 n)

end

end A055962.P13305812188330076923

/-! ## A055962.P15439410785087654514

`A055966(n)+A055967(n)-A055963(n)`
-/

namespace A055962.P15439410785087654514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055966 n + (A055967 n - A055963 n)

end

end A055962.P15439410785087654514

/-! ## A055962.P1283353962590754515

`A056961(n)-(A004086(n)-A056964(n))`
-/

namespace A055962.P1283353962590754515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056961 n - (A004086 n - A056964 n)

end

end A055962.P1283353962590754515

/-! ## A055962.P15673596609087110616

`A055964(n)-(A056962(n)-A056961(n))`
-/

namespace A055962.P15673596609087110616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055964 n - (A056962 n - A056961 n)

end

end A055962.P15673596609087110616

/-! ## A055962.P164384363332050831

`abs(A055963(n)+A001489(2*n))`
-/

namespace A055962.P164384363332050831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055963 n + A001489 (2 * n)|

end

end A055962.P164384363332050831

/-! ## A055962.P10231822722316388094

`n-A001489(n-A055963(n))`
-/

namespace A055962.P10231822722316388094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001489 ((n : ℤ) - A055963 n).toNat

end

end A055962.P10231822722316388094

/-! ## A055962.P925594146372403535

`A254667(A005843(n)-A055963(n))`
-/

namespace A055962.P925594146372403535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A005843 n - A055963 n).toNat

end

end A055962.P925594146372403535

/-!
# A055963: n - reversal of base 12 digits of n (written in base 10).

The programs for A055963, there is no canonical definition to state claims against.
-/

/-! ## A055963.P1549538299196416385

`n-A056961(n)`
-/

namespace A055963.P1549538299196416385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A056961 n

end

end A055963.P1549538299196416385

/-! ## A055963.P2988253572969824160

`2*n-A055962(n)`
-/

namespace A055963.P2988253572969824160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A055962 n

end

end A055963.P2988253572969824160

/-! ## A055963.P17398735982054542557

`-(A056961(n)+A001489(n))`
-/

namespace A055963.P17398735982054542557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A056961 n + A001489 n)

end

end A055963.P17398735982054542557

/-! ## A055963.P17127503494758866358

`n-(A055962(n)+A001489(n))`
-/

namespace A055963.P17127503494758866358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A055962 n + A001489 n)

end

end A055963.P17127503494758866358

/-! ## A055963.P16056890542623670415

`A056961(n)*A057428(n)+n`
-/

namespace A055963.P16056890542623670415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056961 n * A057428 n + (n : ℤ)

end

end A055963.P16056890542623670415

/-! ## A055963.P17801322840140533908

`A004277(n)-(A055962(n)+A000007(n))`
-/

namespace A055963.P17801322840140533908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - (A055962 n + A000007 n)

end

end A055963.P17801322840140533908

/-! ## A055963.P6235434902519590337

`A055964(n)+A055965(n)-A055962(n)`
-/

namespace A055963.P6235434902519590337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055964 n + (A055965 n - A055962 n)

end

end A055963.P6235434902519590337

/-! ## A055963.P13843808042245544464

`(A004277(n)-A055962(n))%A001845(n)`
-/

namespace A055963.P13843808042245544464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004277 n - A055962 n) (A001845 n)

end

end A055963.P13843808042245544464

/-! ## A055963.P2778653022918657431

`A001489(A055962(n)+A001489(n))+n`
-/

namespace A055963.P2778653022918657431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A055962 n + A001489 n).toNat + (n : ℤ)

end

end A055963.P2778653022918657431

/-! ## A055963.P8301461155509329046

`A001489(A056961(n))+gcd(n, A002378(n))`
-/

namespace A055963.P8301461155509329046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A056961 n).toNat + (Int.gcd (n : ℤ) (A002378 n) : ℤ)

end

end A055963.P8301461155509329046

/-!
# A055964: n + reversal of hexadecimal (base 16) digits of n (written in base 10).

The programs for A055964, there is no canonical definition to state claims against.
-/

/-! ## A055964.P9197430587191495767

`n+A056962(n)`
-/

namespace A055964.P9197430587191495767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A056962 n

end

end A055964.P9197430587191495767

/-! ## A055964.P10510122533387805636

`2*n-A055965(n)`
-/

namespace A055964.P10510122533387805636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A055965 n

end

end A055964.P10510122533387805636

/-! ## A055964.P3451529988635291114

`A056962(gcd(n, 2*n))-(n-2*n)`
-/

namespace A055964.P3451529988635291114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056962 (Nat.gcd n (2 * n)) - ((n : ℤ) - (2 * n : ℤ))

end

end A055964.P3451529988635291114

/-! ## A055964.P14838441199757574855

`A056962(n)-A001489(n)`
-/

namespace A055964.P14838441199757574855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056962 n - A001489 n

end

end A055964.P14838441199757574855

/-! ## A055964.P10402571583817481050

`n-(A055965(n)+A001489(n))`
-/

namespace A055964.P10402571583817481050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A055965 n + A001489 n)

end

end A055964.P10402571583817481050

/-! ## A055964.P14143783937382994494

`n-A056962(n)*A057428(n)`
-/

namespace A055964.P14143783937382994494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A056962 n * A057428 n

end

end A055964.P14143783937382994494

/-! ## A055964.P13455643005392424800

`A004277(n)-(A055965(n)+A000007(n))`
-/

namespace A055964.P13455643005392424800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - (A055965 n + A000007 n)

end

end A055964.P13455643005392424800

/-! ## A055964.P17081986573779542523

`A056962(n)-(A004086(n)-A056964(n))`
-/

namespace A055964.P17081986573779542523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056962 n - (A004086 n - A056964 n)

end

end A055964.P17081986573779542523

/-! ## A055964.P3117544862813605843

`A055944(n)-(A030101(n)-A056962(n))`
-/

namespace A055964.P3117544862813605843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 n - (A030101 n - A056962 n)

end

end A055964.P3117544862813605843

/-! ## A055964.P55224755232430159

`A055962(n)-(A056961(n)-A056962(n))`
-/

namespace A055964.P55224755232430159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055962 n - (A056961 n - A056962 n)

end

end A055964.P55224755232430159

/-! ## A055964.P1970196722191363

`A055966(n)-(A056963(n)-A056962(n))`
-/

namespace A055964.P1970196722191363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055966 n - (A056963 n - A056962 n)

end

end A055964.P1970196722191363

/-! ## A055964.P2493843188925619997

`(A004277(n)-A055965(n))%A001845(n)`
-/

namespace A055964.P2493843188925619997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004277 n - A055965 n) (A001845 n)

end

end A055964.P2493843188925619997

/-! ## A055964.P14653039348565629201

`abs(A055965(n)+A001489(2*n))`
-/

namespace A055964.P14653039348565629201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055965 n + A001489 (2 * n)|

end

end A055964.P14653039348565629201

/-! ## A055964.P16189508892601607191

`n-A001489(n-A055965(n))`
-/

namespace A055964.P16189508892601607191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001489 ((n : ℤ) - A055965 n).toNat

end

end A055964.P16189508892601607191

/-! ## A055964.P369089844328796260

`A217558(A217558(n)+A055965(n))+n`
-/

namespace A055964.P369089844328796260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217558 (A217558 n + A055965 n).toNat + (n : ℤ)

end

end A055964.P369089844328796260

/-! ## A055964.P15259756418713474707

`A056962(n)-(A217557(n)-A160638(n))`
-/

namespace A055964.P15259756418713474707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056962 n - (A217557 n - A160638 n)

end

end A055964.P15259756418713474707

/-!
# A055965: n - reversal of hexadecimal (base 16) digits of n (written in base 10).

The programs for A055965, there is no canonical definition to state claims against.
-/

/-! ## A055965.P7112910949095832634

`n-A056962(n)`
-/

namespace A055965.P7112910949095832634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A056962 n

end

end A055965.P7112910949095832634

/-! ## A055965.P806004660074269165

`2*n-A055964(n)`
-/

namespace A055965.P806004660074269165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A055964 n

end

end A055965.P806004660074269165

/-! ## A055965.P12415158351323916124

`-(A056962(n)+A001489(n))`
-/

namespace A055965.P12415158351323916124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A056962 n + A001489 n)

end

end A055965.P12415158351323916124

/-! ## A055965.P17448094867893770900

`n-(A055964(n)+A001489(n))`
-/

namespace A055965.P17448094867893770900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A055964 n + A001489 n)

end

end A055965.P17448094867893770900

/-! ## A055965.P9985861885203296264

`A056962(n)*A057428(n)+n`
-/

namespace A055965.P9985861885203296264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056962 n * A057428 n + (n : ℤ)

end

end A055965.P9985861885203296264

/-! ## A055965.P10130276523498686591

`A004277(n)-(A055964(n)+A000007(n))`
-/

namespace A055965.P10130276523498686591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - (A055964 n + A000007 n)

end

end A055965.P10130276523498686591

/-! ## A055965.P13582677098173906097

`A001489(A055964(n)+A001489(n))+n`
-/

namespace A055965.P13582677098173906097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A055964 n + A001489 n).toNat + (n : ℤ)

end

end A055965.P13582677098173906097

/-! ## A055965.P5855038126141513623

`n-A023444(A055964(n)-A023444(n))`
-/

namespace A055965.P5855038126141513623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023444 (A055964 n - A023444 n).toNat

end

end A055965.P5855038126141513623

/-! ## A055965.P10212925011633544302

`A028310(n)-A028310(A055964(n)-n)`
-/

namespace A055965.P10212925011633544302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A028310 (A055964 n - (n : ℤ)).toNat

end

end A055965.P10212925011633544302

/-! ## A055965.P7454559238072551211

`A004277(n)-A028310(A055964(n))`
-/

namespace A055965.P7454559238072551211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - A028310 (A055964 n).toNat

end

end A055965.P7454559238072551211

/-! ## A055965.P278328862391530199

`A092533(A016825(n))-A028310(A055964(n))`
-/

namespace A055965.P278328862391530199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092533 (A016825 n).toNat - A028310 (A055964 n).toNat

end

end A055965.P278328862391530199

/-! ## A055965.P13646829718396883430

`-A056962(n)%A052955(n)+n`
-/

namespace A055965.P13646829718396883430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A056962 n) (A052955 n) + (n : ℤ)

end

end A055965.P13646829718396883430

/-!
# A055966: n + reversal of base 20 digits of n (written in base 10).

The programs for A055966, there is no canonical definition to state claims against.
-/

/-! ## A055966.P12869554954555887243

`n+A056963(n)`
-/

namespace A055966.P12869554954555887243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A056963 n

end

end A055966.P12869554954555887243

/-! ## A055966.P17885909930904234579

`2*n-A055967(n)`
-/

namespace A055966.P17885909930904234579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A055967 n

end

end A055966.P17885909930904234579

/-! ## A055966.P13940632425792454591

`A056963(n)-A001489(n)`
-/

namespace A055966.P13940632425792454591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056963 n - A001489 n

end

end A055966.P13940632425792454591

/-! ## A055966.P9189852913488901452

`n-(A055967(n)+A001489(n))`
-/

namespace A055966.P9189852913488901452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A055967 n + A001489 n)

end

end A055966.P9189852913488901452

/-! ## A055966.P14946666358895345833

`A005843(n)-(n-A056963(n))`
-/

namespace A055966.P14946666358895345833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A056963 n)

end

end A055966.P14946666358895345833

/-! ## A055966.P4937291549305706905

`n-A056963(n)*A057428(n)`
-/

namespace A055966.P4937291549305706905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A056963 n * A057428 n

end

end A055966.P4937291549305706905

/-! ## A055966.P8422618594340426693

`n--A056963(n)%A000124(n)`
-/

namespace A055966.P8422618594340426693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (-A056963 n) (A000124 n)

end

end A055966.P8422618594340426693

/-! ## A055966.P15427099308131427871

`n+1-(A055967(n)+A024000(n))`
-/

namespace A055966.P15427099308131427871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A055967 n + A024000 n)

end

end A055966.P15427099308131427871

/-! ## A055966.P5701358998487758174

`A056963(n)-(A004086(n)-A056964(n))`
-/

namespace A055966.P5701358998487758174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056963 n - (A004086 n - A056964 n)

end

end A055966.P5701358998487758174

/-! ## A055966.P12737094287471262455

`A055944(n)-(A030101(n)-A056963(n))`
-/

namespace A055966.P12737094287471262455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 n - (A030101 n - A056963 n)

end

end A055966.P12737094287471262455

/-! ## A055966.P17685226011818423744

`A055958(n)-(A030108(n)-A056963(n))`
-/

namespace A055966.P17685226011818423744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055958 n - (A030108 n - A056963 n)

end

end A055966.P17685226011818423744

/-! ## A055966.P3468467890796788386

`A055960(n)-(A056960(n)-A056963(n))`
-/

namespace A055966.P3468467890796788386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055960 n - (A056960 n - A056963 n)

end

end A055966.P3468467890796788386

/-! ## A055966.P3037171227184962480

`A055962(n)-(A056961(n)-A056963(n))`
-/

namespace A055966.P3037171227184962480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055962 n - (A056961 n - A056963 n)

end

end A055966.P3037171227184962480

/-! ## A055966.P14646187103855906244

`A055964(n)-(A056962(n)-A056963(n))`
-/

namespace A055966.P14646187103855906244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055964 n - (A056962 n - A056963 n)

end

end A055966.P14646187103855906244

/-! ## A055966.P4005708001958679320

`A023443(n+1)+n-A055967(n)`
-/

namespace A055966.P4005708001958679320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (n + 1) + ((n : ℤ) - A055967 n)

end

end A055966.P4005708001958679320

/-! ## A055966.P16316584083933941937

`n-A001489(n-A055967(n))`
-/

namespace A055966.P16316584083933941937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001489 ((n : ℤ) - A055967 n).toNat

end

end A055966.P16316584083933941937

/-! ## A055966.P5496084119069268197

`abs(A055967(n)+A001489(2*n))`
-/

namespace A055966.P5496084119069268197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055967 n + A001489 (2 * n)|

end

end A055966.P5496084119069268197

/-!
# A055967: n - reversal of base 20 digits of n (written in base 10).

The programs for A055967, there is no canonical definition to state claims against.
-/

/-! ## A055967.P14735122053365903267

`n-A056963(n)`
-/

namespace A055967.P14735122053365903267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A056963 n

end

end A055967.P14735122053365903267

/-! ## A055967.P2880680640718944251

`2*n-A055966(n)`
-/

namespace A055967.P2880680640718944251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A055966 n

end

end A055967.P2880680640718944251

/-! ## A055967.P11554874056082701924

`-(A056963(n)+A001489(n))`
-/

namespace A055967.P11554874056082701924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A056963 n + A001489 n)

end

end A055967.P11554874056082701924

/-! ## A055967.P4502839667810675925

`n-(A055966(n)+A001489(n))`
-/

namespace A055967.P4502839667810675925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A055966 n + A001489 n)

end

end A055967.P4502839667810675925

/-! ## A055967.P8485428540227899748

`A056963(n)*A057428(n)+n`
-/

namespace A055967.P8485428540227899748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056963 n * A057428 n + (n : ℤ)

end

end A055967.P8485428540227899748

/-! ## A055967.P1116074795386651925

`-A056963(n)%A000124(n)+n`
-/

namespace A055967.P1116074795386651925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A056963 n) (A000124 n) + (n : ℤ)

end

end A055967.P1116074795386651925

/-! ## A055967.P666657060646064403

`A055964(n)+A055965(n)-A055966(n)`
-/

namespace A055967.P666657060646064403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055964 n + (A055965 n - A055966 n)

end

end A055967.P666657060646064403

/-! ## A055967.P16304737769992848555

`A001489(A055966(n)+A001489(n))+n`
-/

namespace A055967.P16304737769992848555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A055966 n + A001489 n).toNat + (n : ℤ)

end

end A055967.P16304737769992848555

/-! ## A055967.P2240911084834163790

`A028310(n)-A028310(A055966(n)-n)`
-/

namespace A055967.P2240911084834163790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A028310 (A055966 n - (n : ℤ)).toNat

end

end A055967.P2240911084834163790

/-! ## A055967.P15526093603145097468

`A004277(n)-A028310(A055966(n))`
-/

namespace A055967.P15526093603145097468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - A028310 (A055966 n).toNat

end

end A055967.P15526093603145097468

/-!
# A055969: Number of unlabeled digraphs with n nodes and an odd number of arcs.

The programs for A055969, there is no canonical definition to state claims against.
-/

/-! ## A055969.P188591159346207508

`(A000273(n+1)-A003086(n+1))/2`
-/

namespace A055969.P188591159346207508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000273 (n + 1) - A003086 (n + 1) : ℚ) / 2

end

end A055969.P188591159346207508

/-! ## A055969.P18228847442289029580

`A000273(n+1)-A054928(n+1)`
-/

namespace A055969.P18228847442289029580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000273 (n + 1) - A054928 (n + 1)

end

end A055969.P18228847442289029580

/-! ## A055969.P9794458374427615275

`A003085(n+1)-A054932(n+1)`
-/

namespace A055969.P9794458374427615275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003085 (n + 1) - A054932 (n + 1)

end

end A055969.P9794458374427615275

/-! ## A055969.P3610874713692283577

`A054928(n+1)-A003086(n+1)`
-/

namespace A055969.P3610874713692283577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054928 (n + 1) - A003086 (n + 1)

end

end A055969.P3610874713692283577

/-! ## A055969.P15723734389007413142

`A003085(n+1)+A054590(n+1)-A054928(n+1)`
-/

namespace A055969.P15723734389007413142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003085 (n + 1) + (A054590 (n + 1) - A054928 (n + 1))

end

end A055969.P15723734389007413142

/-!
# A055972: Continued fraction for the number 1 + 1/(e + 1/(e^2 + 1/(e^3 + 1/(e^4 +...)))).

The programs for A055972, there is no canonical definition to state claims against.
-/

/-! ## A055972.P1367243460867728584

`A192906(A192852(2*n+3))%A192884(n+2)`
-/

namespace A055972.P1367243460867728584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A192906 (A192852 (2 * n + 3)).toNat) (A192884 (n + 2))

end

end A055972.P1367243460867728584

/-!
# A055973: Number of unlabeled digraphs with loops (relations) on n nodes and with an even number of arcs.

The programs for A055973, there is no canonical definition to state claims against.
-/

/-! ## A055973.P1101568797040165048

`(A000595(n)+A000171(2*n+1))/2`
-/

namespace A055973.P1101568797040165048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000595 n + A000171 (2 * n + 1) : ℚ) / 2

end

end A055973.P1101568797040165048

/-! ## A055973.P3730811125903317966

`A000595(n)-A055974(n)`
-/

namespace A055973.P3730811125903317966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000595 n - A055974 n

end

end A055973.P3730811125903317966

/-! ## A055973.P16621273155442330364

`A055974(n)+A000171(comp[2*n])`
-/

namespace A055973.P16621273155442330364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055974 n + A000171 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A055973.P16621273155442330364

/-! ## A055973.P162105212824563890

`2*A029849(n)-A002500(n)-A055974(n)`
-/

namespace A055973.P162105212824563890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029849 n - A002500 n - A055974 n

end

end A055973.P162105212824563890

/-! ## A055973.P5518574446787917875

`A000171(2*n+1)+2*A055974(n)-A055974(n)`
-/

namespace A055973.P5518574446787917875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000171 (2 * n + 1) + 2 * A055974 n - A055974 n

end

end A055973.P5518574446787917875

/-!
# A055974: Number of unlabeled digraphs with loops (relations) on n nodes and with an odd number of arcs.

The programs for A055974, there is no canonical definition to state claims against.
-/

/-! ## A055974.P4076879913946411261

`(A000595(n)-A000171(2*n+1))/2`
-/

namespace A055974.P4076879913946411261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000595 n - A000171 (2 * n + 1) : ℚ) / 2

end

end A055974.P4076879913946411261

/-! ## A055974.P11170668726162410760

`A000595(n)-A055973(n)`
-/

namespace A055974.P11170668726162410760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000595 n - A055973 n

end

end A055974.P11170668726162410760

/-! ## A055974.P16202893689032883243

`∑[∑[A381089(n)]]-A055973(n)`
-/

namespace A055974.P16202893689032883243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381089 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A055973 n

end

end A055974.P16202893689032883243

/-! ## A055974.P18415371106232699110

`A055973(n)-A000171(2*n+1)`
-/

namespace A055974.P18415371106232699110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055973 n - A000171 (2 * n + 1)

end

end A055974.P18415371106232699110

/-! ## A055974.P10630492287423251572

`2*A029849(n)-A002500(n)-A055973(n)`
-/

namespace A055974.P10630492287423251572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029849 n - A002500 n - A055973 n

end

end A055974.P10630492287423251572

/-!
# A055975: First differences of A003188 (decimal equivalent of the Gray Code).

The programs for A055975, the canonical program `A055975.P10208272163572520270` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055975 has offset 1).

The definition of A055975 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055975.P10208272163572520270

`(-1)^(((n+1)/2^val(n+1, 2)-1)/2)*2^val(n+1, 2)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055975

/-- `(-1)^(((n+1)/2^val(n+1, 2)-1)/2)*2^val(n+1, 2)` -/
def P10208272163572520270.Spec : Prop :=
  ∀ n, P10208272163572520270.a n = (A055975 (n + 1) : ℝ)

end A055975

/-! ## A055975.P13500949078945829021

`2^A007814(n+1)*(-1)^(((n+1)/2^A007814(n+1)-1)/2)`
-/

namespace A055975.P13500949078945829021
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A007814 (n + 1) : ℤ) : ℝ) * (-1 : ℝ) ^ (((n + 1 : ℚ) / (2 : ℚ) ^ (A007814 (n + 1) : ℤ) - 1) / 2 : ℝ)

end

end A055975.P13500949078945829021

namespace A055975

/-- `2^A007814(n+1)*(-1)^(((n+1)/2^A007814(n+1)-1)/2)` -/
def P13500949078945829021.Spec : Prop :=
  ∀ n, P13500949078945829021.a n = (A055975 (n + 1) : ℝ)

end A055975

/-! ## A055975.P4228720643578724278

`Δ[xor(n, floor(n/2))]`
-/

namespace A055975.P4228720643578724278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055975.P4228720643578724278

namespace A055975

/-- `Δ[xor(n, floor(n/2))]` -/
def P4228720643578724278.Spec : Prop :=
  ∀ n, P4228720643578724278.a n = A055975 (n + 1)

end A055975

/-! ## A055975.P6417061056194017081

`Δ[abs(xor(n, (or(1, n)-1)/2))]`
-/

namespace A055975.P6417061056194017081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (SequenceMachineLib.roundAway (((Nat.lor 1 n : ℤ) - 1 : ℚ) / 2))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055975.P6417061056194017081

namespace A055975

/-- `Δ[abs(xor(n, (or(1, n)-1)/2))]` -/
def P6417061056194017081.Spec : Prop :=
  ∀ n, P6417061056194017081.a n = A055975 (n + 1)

end A055975

/-! ## A055975.P16863900891221790454

`Δ[xor(2*n, and(n, -2))/2]`
-/

namespace A055975.P16863900891221790454
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (2 * n : ℤ) (Int.land (n : ℤ) (-2)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055975.P16863900891221790454

namespace A055975

/-- `Δ[xor(2*n, and(n, -2))/2]` -/
def P16863900891221790454.Spec : Prop :=
  ∀ n, P16863900891221790454.a n = (A055975 (n + 1) : ℚ)

end A055975

/-! ## A055975.P9922946793843573371

`gcd(2, n+1)-Δ[and(n, 2*n)]`
-/

namespace A055975.P9922946793843573371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A055975.P9922946793843573371

namespace A055975

/-- `gcd(2, n+1)-Δ[and(n, 2*n)]` -/
def P9922946793843573371.Spec : Prop :=
  ∀ n, P9922946793843573371.a n = A055975 (n + 1)

end A055975

/-! ## A055975.P4459329647455110614

`Δ[and(2*n, -n)-ceil(n/2)]`
-/

namespace A055975.P4459329647455110614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-(n : ℤ)) - ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055975.P4459329647455110614

namespace A055975

/-- `Δ[and(2*n, -n)-ceil(n/2)]` -/
def P4459329647455110614.Spec : Prop :=
  ∀ n, P4459329647455110614.a n = A055975 (n + 1)

end A055975

/-! ## A055975.P13059921851188179726

`Δ[round(xor(2*n+1, n+1)/2)]`
-/

namespace A055975.P13059921851188179726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor (2 * n + 1) (n + 1) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055975.P13059921851188179726

namespace A055975

/-- `Δ[round(xor(2*n+1, n+1)/2)]` -/
def P13059921851188179726.Spec : Prop :=
  ∀ n, P13059921851188179726.a n = A055975 (n + 1)

end A055975

/-! ## A055975.P15294091443935686996

`Δ[or(n, 2*n)-ceil(3*n/2)]`
-/

namespace A055975.P15294091443935686996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (2 * n) : ℤ) - ⌈3 * ((n : ℚ) / 2)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055975.P15294091443935686996

namespace A055975

/-- `Δ[or(n, 2*n)-ceil(3*n/2)]` -/
def P15294091443935686996.Spec : Prop :=
  ∀ n, P15294091443935686996.a n = A055975 (n + 1)

end A055975

/-! ## A055975.P15207647859076163195

`2^val(n+1, 2)*Δ[xor(n, 2*n)]%2`
-/

namespace A055975.P15207647859076163195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) * Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 2

end

end A055975.P15207647859076163195

namespace A055975

/-- `2^val(n+1, 2)*Δ[xor(n, 2*n)]%2` -/
def P15207647859076163195.Spec : Prop :=
  ∀ n, P15207647859076163195.a n = A055975 (n + 1)

end A055975

/-! ## A055975.P17949413380225279125

`and(2*n+1, n+1)-and(n, 2*(n+1))`
-/

namespace A055975.P17949413380225279125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land (2 * n + 1) (n + 1) : ℤ) - (Nat.land n (2 * (n + 1)) : ℤ)

end

end A055975.P17949413380225279125

namespace A055975

/-- `and(2*n+1, n+1)-and(n, 2*(n+1))` -/
def P17949413380225279125.Spec : Prop :=
  ∀ n, P17949413380225279125.a n = A055975 (n + 1)

end A055975

/-! ## A055975.P16748111268482782293

`Δ[A003188(n)]`
-/

namespace A055975.P16748111268482782293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055975.P16748111268482782293

namespace A055975

/-- `Δ[A003188(n)]` -/
def P16748111268482782293.Spec : Prop :=
  ∀ n, P16748111268482782293.a n = A055975 (n + 1)

end A055975

/-! ## A055975.P8822401174020938658

`Δ[A286548(n)]+1`
-/

namespace A055975.P8822401174020938658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286548 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A055975.P8822401174020938658

namespace A055975

/-- `Δ[A286548(n)]+1` -/
def P8822401174020938658.Spec : Prop :=
  ∀ n, P8822401174020938658.a n = A055975 (n + 1)

end A055975

/-! ## A055975.P17390416794774853514

`xor(1, Δ[xor(n, A110654(n))])`
-/

namespace A055975.P17390416794774853514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A110654 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (n + 1) - f1 n)

end

end A055975.P17390416794774853514

namespace A055975

/-- `xor(1, Δ[xor(n, A110654(n))])` -/
def P17390416794774853514.Spec : Prop :=
  ∀ n, P17390416794774853514.a n = A055975 (n + 1)

end A055975

/-! ## A055975.P11908925386245444187

`(A393187(n+1)-(n+1))/2`
-/

namespace A055975.P11908925386245444187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A393187 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A055975.P11908925386245444187

namespace A055975

/-- `(A393187(n+1)-(n+1))/2` -/
def P11908925386245444187.Spec : Prop :=
  ∀ n, P11908925386245444187.a n = (A055975 (n + 1) : ℚ)

end A055975

/-! ## A055975.P12664100549212183998

`Δ[A057300(A300838(n))]`
-/

namespace A055975.P12664100549212183998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A300838 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055975.P12664100549212183998

namespace A055975

/-- `Δ[A057300(A300838(n))]` -/
def P12664100549212183998.Spec : Prop :=
  ∀ n, P12664100549212183998.a n = A055975 (n + 1)

end A055975

/-! ## A055975.P15307674994434532671

`Δ[A302844(A163355(n))]`
-/

namespace A055975.P15307674994434532671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302844 (A163355 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055975.P15307674994434532671

namespace A055975

/-- `Δ[A302844(A163355(n))]` -/
def P15307674994434532671.Spec : Prop :=
  ∀ n, P15307674994434532671.a n = A055975 (n + 1)

end A055975

/-! ## A055975.P10500730251330977744

`A135517(n)*A286299(n)`
-/

namespace A055975.P10500730251330977744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135517 n * A286299 n

end

end A055975.P10500730251330977744

namespace A055975

/-- `A135517(n)*A286299(n)` -/
def P10500730251330977744.Spec : Prop :=
  ∀ n, P10500730251330977744.a n = A055975 (n + 1)

end A055975

/-! ## A055975.P5382711734538905549

`A003188(n+1)-A003188(n)`
-/

namespace A055975.P5382711734538905549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (n + 1) - A003188 n

end

end A055975.P5382711734538905549

namespace A055975

/-- `A003188(n+1)-A003188(n)` -/
def P5382711734538905549.Spec : Prop :=
  ∀ n, P5382711734538905549.a n = A055975 (n + 1)

end A055975

/-! ## A055975.P3682370613681805882

`A006519(n+1)*A034947(n+1)`
-/

namespace A055975.P3682370613681805882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A034947 (n + 1)

end

end A055975.P3682370613681805882

namespace A055975

/-- `A006519(n+1)*A034947(n+1)` -/
def P3682370613681805882.Spec : Prop :=
  ∀ n, P3682370613681805882.a n = A055975 (n + 1)

end A055975

/-!
# A055976: Remainder when (n-1)! + 1 is divided by n.

The programs for A055976, the canonical program `A055976.P16808622548665177583` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055976 has offset 1).

The definition of A055976 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055976.P16808622548665177583

`(n!+1)%(n+1)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055976

/-- `(n!+1)%(n+1)` -/
def P16808622548665177583.Spec : Prop :=
  ∀ n, (P16808622548665177583.a n : ℤ) = A055976 (n + 1)

theorem P16808622548665177583.correct : P16808622548665177583.Spec := by
  intro n
  simp only [A055976, Nat.add_sub_cancel]

end A055976

/-! ## A055976.P4818392664396811827

`dr(46%A297795(n+1))`
-/

namespace A055976.P4818392664396811827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod 46 (A297795 (n + 1)))

end

end A055976.P4818392664396811827

namespace A055976

/-- `dr(46%A297795(n+1))` -/
def P4818392664396811827.Spec : Prop :=
  ∀ n, (P4818392664396811827.a n : ℤ) = A055976 (n + 1)

end A055976

/-! ## A055976.P15806559741029693573

`A133933(n+1)%(n+1)`
-/

namespace A055976.P15806559741029693573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133933 (n + 1)) (n + 1 : ℤ)

end

end A055976.P15806559741029693573

namespace A055976

/-- `A133933(n+1)%(n+1)` -/
def P15806559741029693573.Spec : Prop :=
  ∀ n, P15806559741029693573.a n = A055976 (n + 1)

end A055976

/-! ## A055976.P15413397195536530673

`A301316(n+1)%(n+1)`
-/

namespace A055976.P15413397195536530673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301316 (n + 1)) (n + 1 : ℤ)

end

end A055976.P15413397195536530673

namespace A055976

/-- `A301316(n+1)%(n+1)` -/
def P15413397195536530673.Spec : Prop :=
  ∀ n, P15413397195536530673.a n = A055976 (n + 1)

end A055976

/-! ## A055976.P12757239917027394252

`A301317(n+1)%(n+1)`
-/

namespace A055976.P12757239917027394252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301317 (n + 1)) (n + 1 : ℤ)

end

end A055976.P12757239917027394252

namespace A055976

/-- `A301317(n+1)%(n+1)` -/
def P12757239917027394252.Spec : Prop :=
  ∀ n, P12757239917027394252.a n = A055976 (n + 1)

end A055976

/-! ## A055976.P10618068756449917963

`C(n, C(A039649(n+1), n))`
-/

namespace A055976.P10618068756449917963
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.choose (A039649 (n + 1)).toNat n)

end

end A055976.P10618068756449917963

namespace A055976

/-- `C(n, C(A039649(n+1), n))` -/
def P10618068756449917963.Spec : Prop :=
  ∀ n, (P10618068756449917963.a n : ℤ) = A055976 (n + 1)

end A055976

/-! ## A055976.P8025247645684425111

`C(n, C(A039650(n+1), n))`
-/

namespace A055976.P8025247645684425111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.choose (A039650 (n + 1)).toNat n)

end

end A055976.P8025247645684425111

namespace A055976

/-- `C(n, C(A039650(n+1), n))` -/
def P8025247645684425111.Spec : Prop :=
  ∀ n, (P8025247645684425111.a n : ℤ) = A055976 (n + 1)

end A055976

/-! ## A055976.P7604848208209806074

`C(n, C(A057859(n+1), n))`
-/

namespace A055976.P7604848208209806074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.choose (A057859 (n + 1)).toNat n)

end

end A055976.P7604848208209806074

namespace A055976

/-- `C(n, C(A057859(n+1), n))` -/
def P7604848208209806074.Spec : Prop :=
  ∀ n, (P7604848208209806074.a n : ℤ) = A055976 (n + 1)

end A055976

/-! ## A055976.P8209817968132808902

`C(n, C(A062854(n+1), n))`
-/

namespace A055976.P8209817968132808902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.choose (A062854 (n + 1)).toNat n)

end

end A055976.P8209817968132808902

namespace A055976

/-- `C(n, C(A062854(n+1), n))` -/
def P8209817968132808902.Spec : Prop :=
  ∀ n, (P8209817968132808902.a n : ℤ) = A055976 (n + 1)

end A055976

/-! ## A055976.P10069684746376904233

`C(n, C(A263027(n+1), n))`
-/

namespace A055976.P10069684746376904233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.choose (A263027 (n + 1)).toNat n)

end

end A055976.P10069684746376904233

namespace A055976

/-- `C(n, C(A263027(n+1), n))` -/
def P10069684746376904233.Spec : Prop :=
  ∀ n, (P10069684746376904233.a n : ℤ) = A055976 (n + 1)

end A055976

/-! ## A055976.P13447655299741245415

`C(n, C(A000010(n+1)+1, n))`
-/

namespace A055976.P13447655299741245415
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.choose (A000010 (n + 1) + 1).toNat n)

end

end A055976.P13447655299741245415

namespace A055976

/-- `C(n, C(A000010(n+1)+1, n))` -/
def P13447655299741245415.Spec : Prop :=
  ∀ n, (P13447655299741245415.a n : ℤ) = A055976 (n + 1)

end A055976

/-! ## A055976.P80839241862548572

`C(n, C(A006530(n+1)+1, n))`
-/

namespace A055976.P80839241862548572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.choose (A006530 (n + 1) + 1).toNat n)

end

end A055976.P80839241862548572

namespace A055976

/-- `C(n, C(A006530(n+1)+1, n))` -/
def P80839241862548572.Spec : Prop :=
  ∀ n, (P80839241862548572.a n : ℤ) = A055976 (n + 1)

end A055976

/-! ## A055976.P13169605749352438061

`C(n, C(A020639(n+1)+1, n))`
-/

namespace A055976.P13169605749352438061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.choose (A020639 (n + 1) + 1).toNat n)

end

end A055976.P13169605749352438061

namespace A055976

/-- `C(n, C(A020639(n+1)+1, n))` -/
def P13169605749352438061.Spec : Prop :=
  ∀ n, (P13169605749352438061.a n : ℤ) = A055976 (n + 1)

end A055976

/-! ## A055976.P4822056288711930016

`C(n, C(n+3, A000203(n+1)-1))`
-/

namespace A055976.P4822056288711930016
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.choose (n + 3) (A000203 (n + 1) - 1).toNat)

end

end A055976.P4822056288711930016

namespace A055976

/-- `C(n, C(n+3, A000203(n+1)-1))` -/
def P4822056288711930016.Spec : Prop :=
  ∀ n, (P4822056288711930016.a n : ℤ) = A055976 (n + 1)

end A055976

/-! ## A055976.P5130201546495820831

`C(n, C(n+3, n*A001222(n+1)))`
-/

namespace A055976.P5130201546495820831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.choose (n + 3) ((n : ℤ) * A001222 (n + 1)).toNat)

end

end A055976.P5130201546495820831

namespace A055976

/-- `C(n, C(n+3, n*A001222(n+1)))` -/
def P5130201546495820831.Spec : Prop :=
  ∀ n, (P5130201546495820831.a n : ℤ) = A055976 (n + 1)

end A055976

/-! ## A055976.P10379258535288204879

`xor(1, A061007(A028310(n)+1))`
-/

namespace A055976.P10379258535288204879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A061007 (A028310 n + 1).toNat)

end

end A055976.P10379258535288204879

namespace A055976

/-- `xor(1, A061007(A028310(n)+1))` -/
def P10379258535288204879.Spec : Prop :=
  ∀ n, P10379258535288204879.a n = A055976 (n + 1)

end A055976

/-! ## A055976.P1205929788504447644

`A019426(n)%A095248(n+1)`
-/

namespace A055976.P1205929788504447644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019426 n) (A095248 (n + 1))

end

end A055976.P1205929788504447644

namespace A055976

/-- `A019426(n)%A095248(n+1)` -/
def P1205929788504447644.Spec : Prop :=
  ∀ n, P1205929788504447644.a n = A055976 (n + 1)

end A055976

/-! ## A055976.P1757942614855184681

`A137282(n)%A095248(n+1)`
-/

namespace A055976.P1757942614855184681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137282 n) (A095248 (n + 1))

end

end A055976.P1757942614855184681

namespace A055976

/-- `A137282(n)%A095248(n+1)` -/
def P1757942614855184681.Spec : Prop :=
  ∀ n, P1757942614855184681.a n = A055976 (n + 1)

end A055976

/-! ## A055976.P13697266534754522214

`A344389(n)%A095248(n+1)`
-/

namespace A055976.P13697266534754522214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344389 n) (A095248 (n + 1))

end

end A055976.P13697266534754522214

namespace A055976

/-- `A344389(n)%A095248(n+1)` -/
def P13697266534754522214.Spec : Prop :=
  ∀ n, P13697266534754522214.a n = A055976 (n + 1)

end A055976

/-! ## A055976.P2995046671378289703

`xor(A057427(n), A061007(n+1))`
-/

namespace A055976.P2995046671378289703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A061007 (n + 1))

end

end A055976.P2995046671378289703

namespace A055976

/-- `xor(A057427(n), A061007(n+1))` -/
def P2995046671378289703.Spec : Prop :=
  ∀ n, P2995046671378289703.a n = A055976 (n + 1)

end A055976

/-!
# A055977: Numbers k such that Product_{q|k} p(q) divides p(k), where p(k) is number of unrestricted partitions of k and the product is over all distinct primes q that divide k.

The programs for A055977, there is no canonical definition to state claims against.
-/

/-! ## A055977.P13732074001625803883

`record[A291478(n+1)%A289435(n+5)]`
-/

namespace A055977.P13732074001625803883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291478 (n + 1)) (A289435 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055977.P13732074001625803883

/-! ## A055977.P15117676803625038397

`eq[A008621(A054346(n)), A048766(n)]`
-/

namespace A055977.P15117676803625038397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A054346 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055977.P15117676803625038397

/-! ## A055977.P7105596496842392777

`record[A075388(A008619(A324760(n+1)))]`
-/

namespace A055977.P7105596496842392777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075388 (A008619 (A324760 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055977.P7105596496842392777

/-! ## A055977.P11888076643809551389

`eq[A004652(A318717(n)), A175307(n+1)]`
-/

namespace A055977.P11888076643809551389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (A318717 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175307 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055977.P11888076643809551389

/-! ## A055977.P1090397591522121316

`lt[A378511(n), A378505(A210751(n+4))]`
-/

namespace A055977.P1090397591522121316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378511 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378505 (A210751 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A055977.P1090397591522121316

/-!
# A055979: Solutions (value of r) of the Diophantine equation 2*x^2 + 3*x + 2 = r^2.

The programs for A055979, the canonical program `A055979.P17944878615831155158` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055979 has offset 0).

The definition of A055979 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055979.P17944878615831155158

`34*a(n-2)-a(n-4)` with `a(0)=4, a(1)=11, a(2)=134, a(3)=373`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055979

/-- `34*a(n-2)-a(n-4)` -/
def P17944878615831155158.Spec : Prop :=
  ∀ n, P17944878615831155158.a n = A055979 n

theorem P17944878615831155158.correct : P17944878615831155158.Spec := by
  intro n
  simp only [A055979]

end A055979

/-! ## A055979.P8333005814983516084

`A006452(record[or(2, n)+1])`
-/

namespace A055979.P8333005814983516084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A055979.P8333005814983516084

namespace A055979

/-- `A006452(record[or(2, n)+1])` -/
def P8333005814983516084.Spec : Prop :=
  ∀ n, P8333005814983516084.a n = A055979 n

end A055979

/-! ## A055979.P12148301035575966340

`A006452(comp[or(2, n)]+3)`
-/

namespace A055979.P12148301035575966340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 3)

end

end A055979.P12148301035575966340

namespace A055979

/-- `A006452(comp[or(2, n)]+3)` -/
def P12148301035575966340.Spec : Prop :=
  ∀ n, P12148301035575966340.a n = A055979 n

end A055979

/-! ## A055979.P3892598909398190361

`A006452(∑[4-a(n-1)])` with `a(0)=3`
-/

namespace A055979.P3892598909398190361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A055979.P3892598909398190361

namespace A055979

/-- `A006452(∑[4-a(n-1)])` -/
def P3892598909398190361.Spec : Prop :=
  ∀ n, P3892598909398190361.a n = A055979 n

end A055979

/-! ## A055979.P2798995517444068738

`A006452(A014601(n+1))`
-/

namespace A055979.P2798995517444068738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 (A014601 (n + 1)).toNat

end

end A055979.P2798995517444068738

namespace A055979

/-- `A006452(A014601(n+1))` -/
def P2798995517444068738.Spec : Prop :=
  ∀ n, P2798995517444068738.a n = A055979 n

end A055979

/-! ## A055979.P12924690935331989365

`A006452(A154708(n+1))`
-/

namespace A055979.P12924690935331989365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 (A154708 (n + 1)).toNat

end

end A055979.P12924690935331989365

namespace A055979

/-- `A006452(A154708(n+1))` -/
def P12924690935331989365.Spec : Prop :=
  ∀ n, P12924690935331989365.a n = A055979 n

end A055979

/-! ## A055979.P3575384848303519059

`A216162(A047451(n+2))`
-/

namespace A055979.P3575384848303519059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216162 (A047451 (n + 2)).toNat

end

end A055979.P3575384848303519059

namespace A055979

/-- `A216162(A047451(n+2))` -/
def P3575384848303519059.Spec : Prop :=
  ∀ n, P3575384848303519059.a n = A055979 n

end A055979

/-! ## A055979.P1136008126289004520

`A301318(A047264(n+2))`
-/

namespace A055979.P1136008126289004520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301318 (A047264 (n + 2)).toNat

end

end A055979.P1136008126289004520

namespace A055979

/-- `A301318(A047264(n+2))` -/
def P1136008126289004520.Spec : Prop :=
  ∀ n, P1136008126289004520.a n = A055979 n

end A055979

/-! ## A055979.P13560502999561966872

`A006452(A042948(n)+3)`
-/

namespace A055979.P13560502999561966872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 (A042948 n + 3).toNat

end

end A055979.P13560502999561966872

namespace A055979

/-- `A006452(A042948(n)+3)` -/
def P13560502999561966872.Spec : Prop :=
  ∀ n, P13560502999561966872.a n = A055979 n

end A055979

/-! ## A055979.P8077100457796935819

`A006452(A098181(Δ[n²]))`
-/

namespace A055979.P8077100457796935819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 (A098181 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A055979.P8077100457796935819

namespace A055979

/-- `A006452(A098181(Δ[n²]))` -/
def P8077100457796935819.Spec : Prop :=
  ∀ n, P8077100457796935819.a n = A055979 n

end A055979

/-! ## A055979.P11215954673457970603

`A006452(∑[gcd(3, A083575(n))])`
-/

namespace A055979.P11215954673457970603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A083575 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055979.P11215954673457970603

namespace A055979

/-- `A006452(∑[gcd(3, A083575(n))])` -/
def P11215954673457970603.Spec : Prop :=
  ∀ n, P11215954673457970603.a n = A055979 n

end A055979

/-! ## A055979.P1446303953108223329

`A006452(A053438(n+1)+1)`
-/

namespace A055979.P1446303953108223329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 (A053438 (n + 1) + 1).toNat

end

end A055979.P1446303953108223329

namespace A055979

/-- `A006452(A053438(n+1)+1)` -/
def P1446303953108223329.Spec : Prop :=
  ∀ n, P1446303953108223329.a n = A055979 n

end A055979

/-! ## A055979.P5554562674739625537

`A301318(A047257(n+1)+1)`
-/

namespace A055979.P5554562674739625537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301318 (A047257 (n + 1) + 1).toNat

end

end A055979.P5554562674739625537

namespace A055979

/-- `A301318(A047257(n+1)+1)` -/
def P5554562674739625537.Spec : Prop :=
  ∀ n, P5554562674739625537.a n = A055979 n

end A055979

/-! ## A055979.P10022584784239983691

`A006452(A338062(n+2)-1)`
-/

namespace A055979.P10022584784239983691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 (A338062 (n + 2) - 1).toNat

end

end A055979.P10022584784239983691

namespace A055979

/-- `A006452(A338062(n+2)-1)` -/
def P10022584784239983691.Spec : Prop :=
  ∀ n, P10022584784239983691.a n = A055979 n

end A055979

/-! ## A055979.P15526777480895159925

`A005319(n+1)/A000034(n)-A001109(n)`
-/

namespace A055979.P15526777480895159925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005319 (n + 1) : ℚ) / (A000034 n : ℚ) - (A001109 n : ℚ)

end

end A055979.P15526777480895159925

namespace A055979

/-- `A005319(n+1)/A000034(n)-A001109(n)` -/
def P15526777480895159925.Spec : Prop :=
  ∀ n, P15526777480895159925.a n = (A055979 n : ℚ)

end A055979

/-! ## A055979.P12453459245205122783

`A001541(n+1)+A001333(n+1)*A077985(n)`
-/

namespace A055979.P12453459245205122783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 (n + 1) + A001333 (n + 1) * A077985 n

end

end A055979.P12453459245205122783

namespace A055979

/-- `A001541(n+1)+A001333(n+1)*A077985(n)` -/
def P12453459245205122783.Spec : Prop :=
  ∀ n, P12453459245205122783.a n = A055979 n

end A055979

/-!
# A055980: a(n) = floor(Sum_{i=1..n} 1/i).

The programs for A055980, the canonical program `A055980.P11010028541122949967` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055980 has offset 1).

The definition of A055980 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055980.P11010028541122949967

`floor(A001008(n+1)/A002805(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A055980

/-- `floor(A001008(n+1)/A002805(n+1))` -/
def P11010028541122949967.Spec : Prop :=
  ∀ n, P11010028541122949967.a n = A055980 (n + 1)

theorem P11010028541122949967.correct : P11010028541122949967.Spec := by
  intro n
  simp only [A055980, Nat.add_sub_cancel]

end A055980

/-! ## A055980.P10547144928696472750

`floor(∑[1/(n+1)])`
-/

namespace A055980.P10547144928696472750
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A055980.P10547144928696472750

namespace A055980

/-- `floor(∑[1/(n+1)])` -/
def P10547144928696472750.Spec : Prop :=
  ∀ n, P10547144928696472750.a n = A055980 (n + 1)

end A055980

/-! ## A055980.P5075001164636102081

`dr(ceil(∑[n/(n+1)-1]))`
-/

namespace A055980.P5075001164636102081
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (n + 1 : ℚ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A055980.P5075001164636102081

namespace A055980

/-- `dr(ceil(∑[n/(n+1)-1]))` -/
def P5075001164636102081.Spec : Prop :=
  ∀ n, (P5075001164636102081.a n : ℤ) = A055980 (n + 1)

end A055980

/-! ## A055980.P1831925304835045509

`floor(∑[2-a(n-1)^(-1)])-(n+1)` with `a(0)=2`
-/

namespace A055980.P1831925304835045509
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  2 - f1 (n - 1) ^ (-1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ - (n + 1 : ℤ)

end

end A055980.P1831925304835045509

namespace A055980

/-- `floor(∑[2-a(n-1)^(-1)])-(n+1)` -/
def P1831925304835045509.Spec : Prop :=
  ∀ n, P1831925304835045509.a n = A055980 (n + 1)

end A055980

/-! ## A055980.P16671156812044837896

`∑[char[A115515(n+1)]]`
-/

namespace A055980.P16671156812044837896
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115515 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055980.P16671156812044837896

namespace A055980

/-- `∑[char[A115515(n+1)]]` -/
def P16671156812044837896.Spec : Prop :=
  ∀ n, (P16671156812044837896.a n : ℤ) = A055980 (n + 1)

end A055980

/-! ## A055980.P357018636943869213

`∑[char[A004080(n)-1]]`
-/

namespace A055980.P357018636943869213
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004080 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055980.P357018636943869213

namespace A055980

/-- `∑[char[A004080(n)-1]]` -/
def P357018636943869213.Spec : Prop :=
  ∀ n, (P357018636943869213.a n : ℤ) = A055980 (n + 1)

end A055980

/-! ## A055980.P124864332731670315

`∑[char[∑[A339061(n)]-1]]`
-/

namespace A055980.P124864332731670315
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339061 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055980.P124864332731670315

namespace A055980

/-- `∑[char[∑[A339061(n)]-1]]` -/
def P124864332731670315.Spec : Prop :=
  ∀ n, (P124864332731670315.a n : ℤ) = A055980 (n + 1)

end A055980

/-! ## A055980.P11918447070440212929

`char[A115515(n+2)]+a(n-1)` with `a(0)=1`
-/

namespace A055980.P11918447070440212929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115515 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (n - 1)

end

end A055980.P11918447070440212929

namespace A055980

/-- `char[A115515(n+2)]+a(n-1)` -/
def P11918447070440212929.Spec : Prop :=
  ∀ n, (P11918447070440212929.a n : ℤ) = A055980 (n + 1)

end A055980

/-! ## A055980.P5147074855428500705

`floor(A022819(n+1)/(n+1))+1`
-/

namespace A055980.P5147074855428500705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A022819 (n + 1) : ℚ) / (n + 1 : ℚ)⌋ + 1

end

end A055980.P5147074855428500705

namespace A055980

/-- `floor(A022819(n+1)/(n+1))+1` -/
def P5147074855428500705.Spec : Prop :=
  ∀ n, P5147074855428500705.a n = A055980 (n + 1)

end A055980

/-! ## A055980.P7151664135541393918

`A096143(n+1)+A057428(n)`
-/

namespace A055980.P7151664135541393918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096143 (n + 1) + A057428 n

end

end A055980.P7151664135541393918

namespace A055980

/-- `A096143(n+1)+A057428(n)` -/
def P7151664135541393918.Spec : Prop :=
  ∀ n, P7151664135541393918.a n = A055980 (n + 1)

end A055980

/-! ## A055980.P8891473954242060057

`A096143(n+1)-A057427(n)`
-/

namespace A055980.P8891473954242060057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096143 (n + 1) - A057427 n

end

end A055980.P8891473954242060057

namespace A055980

/-- `A096143(n+1)-A057427(n)` -/
def P8891473954242060057.Spec : Prop :=
  ∀ n, P8891473954242060057.a n = A055980 (n + 1)

end A055980

/-! ## A055980.P6354821204327727575

`A028310(n-A238401(n))`
-/

namespace A055980.P6354821204327727575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) - A238401 n).toNat

end

end A055980.P6354821204327727575

namespace A055980

/-- `A028310(n-A238401(n))` -/
def P6354821204327727575.Spec : Prop :=
  ∀ n, P6354821204327727575.a n = A055980 (n + 1)

end A055980

/-! ## A055980.P6584970009564536022

`(A001008(n+1)-A104174(n+1))/A002805(n+1)`
-/

namespace A055980.P6584970009564536022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001008 (n + 1) - A104174 (n + 1) : ℚ) / (A002805 (n + 1) : ℚ)

end

end A055980.P6584970009564536022

namespace A055980

/-- `(A001008(n+1)-A104174(n+1))/A002805(n+1)` -/
def P6584970009564536022.Spec : Prop :=
  ∀ n, P6584970009564536022.a n = (A055980 (n + 1) : ℚ)

end A055980

/-! ## A055980.P11784386706312260812

`round(log(log(A059728(n))+2))`
-/

namespace A055980.P11784386706312260812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (Real.log (A059728 n : ℝ) + 2))

end

end A055980.P11784386706312260812

namespace A055980

/-- `round(log(log(A059728(n))+2))` -/
def P11784386706312260812.Spec : Prop :=
  ∀ n, P11784386706312260812.a n = A055980 (n + 1)

end A055980

/-! ## A055980.P18193532129834432589

`round(log(log(A211285(n))+2))`
-/

namespace A055980.P18193532129834432589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (Real.log (A211285 n : ℝ) + 2))

end

end A055980.P18193532129834432589

namespace A055980

/-- `round(log(log(A211285(n))+2))` -/
def P18193532129834432589.Spec : Prop :=
  ∀ n, P18193532129834432589.a n = A055980 (n + 1)

end A055980

/-! ## A055980.P5654213815524778979

`round(log(log(A180282(n+2))+1))`
-/

namespace A055980.P5654213815524778979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (Real.log (A180282 (n + 2) : ℝ) + 1))

end

end A055980.P5654213815524778979

namespace A055980

/-- `round(log(log(A180282(n+2))+1))` -/
def P5654213815524778979.Spec : Prop :=
  ∀ n, P5654213815524778979.a n = A055980 (n + 1)

end A055980

/-! ## A055980.P6808900141614244592

`round(log(log(A180282(n+3))))`
-/

namespace A055980.P6808900141614244592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (Real.log (A180282 (n + 3) : ℝ)))

end

end A055980.P6808900141614244592

namespace A055980

/-- `round(log(log(A180282(n+3))))` -/
def P6808900141614244592.Spec : Prop :=
  ∀ n, P6808900141614244592.a n = A055980 (n + 1)

end A055980

/-! ## A055980.P13522544777991455392

`A214075(∑[n+2]-1)`
-/

namespace A055980.P13522544777991455392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214075 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A055980.P13522544777991455392

namespace A055980

/-- `A214075(∑[n+2]-1)` -/
def P13522544777991455392.Spec : Prop :=
  ∀ n, P13522544777991455392.a n = A055980 (n + 1)

end A055980

/-! ## A055980.P8728217456035163496

`ceil(∑[1/(n+1)]-tanh(n))`
-/

namespace A055980.P8728217456035163496
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ) - Real.tanh (n : ℝ)⌉

end

end A055980.P8728217456035163496

namespace A055980

/-- `ceil(∑[1/(n+1)]-tanh(n))` -/
def P8728217456035163496.Spec : Prop :=
  ∀ n, P8728217456035163496.a n = A055980 (n + 1)

end A055980

/-!
# A055981: a(n) = ceiling(n!/d(n!)).

The programs for A055981, the canonical program `A055981.P9915863314307213301` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055981 has offset 1).

The definition of A055981 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027423, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A055981.P9915863314307213301

`ceil(A000142(n+1)/A027423(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A055981

/-- `ceil(A000142(n+1)/A027423(n+1))` -/
def P9915863314307213301.Spec : Prop :=
  ∀ n, P9915863314307213301.a n = A055981 (n + 1)

theorem P9915863314307213301.correct : P9915863314307213301.Spec := by
  intro n
  simp only [A055981, Nat.add_sub_cancel]

end A055981

/-! ## A055981.P9052130510769308124

`ceil(A125721(n+1)/2)`
-/

namespace A055981.P9052130510769308124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A125721 (n + 1) : ℚ) / 2⌉

end

end A055981.P9052130510769308124

namespace A055981

/-- `ceil(A125721(n+1)/2)` -/
def P9052130510769308124.Spec : Prop :=
  ∀ n, P9052130510769308124.a n = A055981 (n + 1)

end A055981

/-! ## A055981.P13330880639436846384

`round(A125721(floor((2*n+1)/2)+1)/2)`
-/

namespace A055981.P13330880639436846384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A125721 (⌊(2 * n + 1 : ℚ) / 2⌋ + 1).toNat : ℚ) / 2)

end

end A055981.P13330880639436846384

namespace A055981

/-- `round(A125721(floor((2*n+1)/2)+1)/2)` -/
def P13330880639436846384.Spec : Prop :=
  ∀ n, P13330880639436846384.a n = A055981 (n + 1)

end A055981

/-! ## A055981.P14873486375256833192

`round((n+1)*A000142(n)/A027423(n+1))`
-/

namespace A055981.P14873486375256833192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((A000142 n : ℚ) / (A027423 (n + 1) : ℚ)))

end

end A055981.P14873486375256833192

namespace A055981

/-- `round((n+1)*A000142(n)/A027423(n+1))` -/
def P14873486375256833192.Spec : Prop :=
  ∀ n, P14873486375256833192.a n = A055981 (n + 1)

end A055981

/-! ## A055981.P1383804002173537214

`A065033(A125721(n+1))`
-/

namespace A055981.P1383804002173537214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A125721 (n + 1)).toNat

end

end A055981.P1383804002173537214

namespace A055981

/-- `A065033(A125721(n+1))` -/
def P1383804002173537214.Spec : Prop :=
  ∀ n, P1383804002173537214.a n = A055981 (n + 1)

end A055981

/-!
# A055982: a(n+1) = a(n) converted to base 10 from base 11.

The programs for A055982, there is no canonical definition to state claims against.
-/

/-! ## A055982.P430621569409279806

`A171397(a(n-1))` with `a(0)=10`
-/

namespace A055982.P430621569409279806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  A171397 (a (n - 1)).toNat

end

end A055982.P430621569409279806

/-! ## A055982.P8987529887106154837

`A182363(n)%A034820(n)`
-/

namespace A055982.P8987529887106154837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182363 n) (A034820 n)

end

end A055982.P8987529887106154837

/-! ## A055982.P14977244338567212199

`A182363(n)^A185255(n)!`
-/

namespace A055982.P14977244338567212199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182363 n ^ Nat.factorial (A185255 n).toNat

end

end A055982.P14977244338567212199

/-! ## A055982.P14673288664039713208

`A182363(A185255(n)²²+n)`
-/

namespace A055982.P14673288664039713208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182363 ((A185255 n ^ 2) ^ 2 + (n : ℤ)).toNat

end

end A055982.P14673288664039713208

/-! ## A055982.P3044481078226219676

`A182363(lcm(n, A008683(A006955(n))))`
-/

namespace A055982.P3044481078226219676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182363 (Int.lcm (n : ℤ) (A008683 (A006955 n).toNat))

end

end A055982.P3044481078226219676

/-!
# A055983: a(n+1) = a(n) converted to base 10 from base 12.

The programs for A055983, there is no canonical definition to state claims against.
-/

/-! ## A055983.P10059748154484992381

`A102487(a(n-1)+1)` with `a(0)=10`
-/

namespace A055983.P10059748154484992381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  A102487 (a (n - 1) + 1).toNat

end

end A055983.P10059748154484992381

/-! ## A055983.P8810188579488607032

`A102487(or(1, a(n-1)))` with `a(0)=10`
-/

namespace A055983.P8810188579488607032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  A102487 (Int.lor 1 (a (n - 1))).toNat

end

end A055983.P8810188579488607032

/-! ## A055983.P16715111682451977710

`A102487(xor(1, a(n-1)))` with `a(0)=10`
-/

namespace A055983.P16715111682451977710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  A102487 (Int.xor 1 (a (n - 1))).toNat

end

end A055983.P16715111682451977710

/-! ## A055983.P15293194518537317251

`A102487(A004442(a(n-1)))` with `a(0)=10`
-/

namespace A055983.P15293194518537317251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  A102487 (A004442 (a (n - 1)).toNat).toNat

end

end A055983.P15293194518537317251

/-! ## A055983.P13835338632670261047

`A102487(A109613(a(n-1)))` with `a(0)=10`
-/

namespace A055983.P13835338632670261047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  A102487 (A109613 (a (n - 1)).toNat).toNat

end

end A055983.P13835338632670261047

/-!
# A055984: a(n+1) = a(n) converted to base 10 from base 13.

The programs for A055984, there is no canonical definition to state claims against.
-/

/-! ## A055984.P6594951864195606111

`A094823(a(n-1))` with `a(0)=10`
-/

namespace A055984.P6594951864195606111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  A094823 (a (n - 1)).toNat

end

end A055984.P6594951864195606111

/-! ## A055984.P12090797490668695598

`A016777(record[A356233(n+1)+2])`
-/

namespace A055984.P12090797490668695598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356233 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A055984.P12090797490668695598

/-! ## A055984.P15165002799637435548

`A247341(A349053(n))+A161345(n+1)`
-/

namespace A055984.P15165002799637435548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247341 (A349053 n).toNat + A161345 (n + 1)

end

end A055984.P15165002799637435548

/-! ## A055984.P711283594482296784

`lt[A209374(n+1), A008000(A228037(n))]`
-/

namespace A055984.P711283594482296784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 (A228037 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A055984.P711283594482296784

/-!
# A055986: a(n+1) = a(n) converted to base 10 from base 15.

The programs for A055986, there is no canonical definition to state claims against.
-/

/-! ## A055986.P14009568469161759429

`5*A074279(A291382(n))`
-/

namespace A055986.P14009568469161759429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A074279 (A291382 n).toNat

end

end A055986.P14009568469161759429

/-! ## A055986.P10099934429888594749

`A000930(n+3)*A109514(A351241(2*n+1))`
-/

namespace A055986.P10099934429888594749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 3) * A109514 (A351241 (2 * n + 1)).toNat

end

end A055986.P10099934429888594749

/-!
# A055987: a(n+1) = a(n) converted to base 10 from base 16, starting at a(0) = 10.

The programs for A055987, there is no canonical definition to state claims against.
-/

/-! ## A055987.P5574778336507059373

`A102489(a(n-1))` with `a(0)=10`
-/

namespace A055987.P5574778336507059373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  A102489 (a (n - 1)).toNat

end

end A055987.P5574778336507059373

/-! ## A055987.P16772319642890348219

`A229489(A097280(n))`
-/

namespace A055987.P16772319642890348219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229489 (A097280 n).toNat

end

end A055987.P16772319642890348219

/-! ## A055987.P8411975467405051679

`A016957(record[A162910(n+1)])`
-/

namespace A055987.P8411975467405051679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162910 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A055987.P8411975467405051679

/-!
# A055988: Sequence is its own 4th difference.

The programs for A055988, the canonical program `A055988.P5086677789568827713` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055988 has offset 1).

The definition of A055988 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055988.P9445073805859484231

`a(n-1)+A055991(n)` with `a(0)=1`
-/

namespace A055988.P9445073805859484231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A055991 n

end

end A055988.P9445073805859484231

namespace A055988

/-- `a(n-1)+A055991(n)` -/
def P9445073805859484231.Spec : Prop :=
  ∀ n, P9445073805859484231.a n = A055988 (n + 1)

end A055988

/-! ## A055988.P5086677789568827713

`5*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=26`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055988

/-- `5*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P5086677789568827713.Spec : Prop :=
  ∀ n, P5086677789568827713.a n = A055988 (n + 1)

theorem P5086677789568827713.correct : P5086677789568827713.Spec := by
  intro n
  simp only [A055988, Nat.add_sub_cancel]

end A055988

/-! ## A055988.P9086866717526616457

`A052535(2*n)`
-/

namespace A055988.P9086866717526616457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052535 (2 * n)

end

end A055988.P9086866717526616457

namespace A055988

/-- `A052535(2*n)` -/
def P9086866717526616457.Spec : Prop :=
  ∀ n, P9086866717526616457.a n = A055988 (n + 1)

end A055988

/-! ## A055988.P5518936803972626900

`A003269(4*n+1)`
-/

namespace A055988.P5518936803972626900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (4 * n + 1)

end

end A055988.P5518936803972626900

namespace A055988

/-- `A003269(4*n+1)` -/
def P5518936803972626900.Spec : Prop :=
  ∀ n, P5518936803972626900.a n = A055988 (n + 1)

end A055988

/-! ## A055988.P12072382862154600467

`A017898(4*(n+1))`
-/

namespace A055988.P12072382862154600467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (4 * (n + 1))

end

end A055988.P12072382862154600467

namespace A055988

/-- `A017898(4*(n+1))` -/
def P12072382862154600467.Spec : Prop :=
  ∀ n, P12072382862154600467.a n = A055988 (n + 1)

end A055988

/-! ## A055988.P16044763186852054515

`A122522(8*n+1)`
-/

namespace A055988.P16044763186852054515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122522 (8 * n + 1)

end

end A055988.P16044763186852054515

namespace A055988

/-- `A122522(8*n+1)` -/
def P16044763186852054515.Spec : Prop :=
  ∀ n, P16044763186852054515.a n = A055988 (n + 1)

end A055988

/-! ## A055988.P17855218639825225818

`record[A052535(and(n, n-1))]`
-/

namespace A055988.P17855218639825225818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052535 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055988.P17855218639825225818

namespace A055988

/-- `record[A052535(and(n, n-1))]` -/
def P17855218639825225818.Spec : Prop :=
  ∀ n, P17855218639825225818.a n = A055988 (n + 1)

end A055988

/-! ## A055988.P13357957780813247463

`A099561(4*n+3)+1`
-/

namespace A055988.P13357957780813247463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099561 (4 * n + 3) + 1

end

end A055988.P13357957780813247463

namespace A055988

/-- `A099561(4*n+3)+1` -/
def P13357957780813247463.Spec : Prop :=
  ∀ n, P13357957780813247463.a n = A055988 (n + 1)

end A055988

/-! ## A055988.P16156974738265427372

`A158943(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A055988.P16156974738265427372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A158943 (2 * n) + a (n - 1)

end

end A055988.P16156974738265427372

namespace A055988

/-- `A158943(2*n)+a(n-1)` -/
def P16156974738265427372.Spec : Prop :=
  ∀ n, P16156974738265427372.a n = A055988 (n + 1)

end A055988

/-! ## A055988.P7521776935061308675

`record[A052535(A018838(n))]`
-/

namespace A055988.P7521776935061308675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052535 (A018838 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055988.P7521776935061308675

namespace A055988

/-- `record[A052535(A018838(n))]` -/
def P7521776935061308675.Spec : Prop :=
  ∀ n, P7521776935061308675.a n = A055988 (n + 1)

end A055988

/-! ## A055988.P5722126112227697388

`∑[A003269(A004277(2*n))]`
-/

namespace A055988.P5722126112227697388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (A004277 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055988.P5722126112227697388

namespace A055988

/-- `∑[A003269(A004277(2*n))]` -/
def P5722126112227697388.Spec : Prop :=
  ∀ n, P5722126112227697388.a n = A055988 (n + 1)

end A055988

/-! ## A055988.P8111134210475389755

`∑[A017898(A062545(2*n))]`
-/

namespace A055988.P8111134210475389755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (A062545 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055988.P8111134210475389755

namespace A055988

/-- `∑[A017898(A062545(2*n))]` -/
def P8111134210475389755.Spec : Prop :=
  ∀ n, P8111134210475389755.a n = A055988 (n + 1)

end A055988

/-! ## A055988.P2164879686378074456

`record[A052535(A026741(n)+1)]`
-/

namespace A055988.P2164879686378074456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052535 (A026741 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055988.P2164879686378074456

namespace A055988

/-- `record[A052535(A026741(n)+1)]` -/
def P2164879686378074456.Spec : Prop :=
  ∀ n, P2164879686378074456.a n = A055988 (n + 1)

end A055988

/-! ## A055988.P8218161262267419028

`Δ[A099561(4*n)]`
-/

namespace A055988.P8218161262267419028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099561 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055988.P8218161262267419028

namespace A055988

/-- `Δ[A099561(4*n)]` -/
def P8218161262267419028.Spec : Prop :=
  ∀ n, P8218161262267419028.a n = A055988 (n + 1)

end A055988

/-! ## A055988.P4066628744223753403

`A226517(8*n+11)`
-/

namespace A055988.P4066628744223753403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226517 (8 * n + 11)

end

end A055988.P4066628744223753403

namespace A055988

/-- `A226517(8*n+11)` -/
def P4066628744223753403.Spec : Prop :=
  ∀ n, P4066628744223753403.a n = A055988 (n + 1)

end A055988

/-! ## A055988.P4669600458212594957

`Δ[A017898(A016825(n)-1)]`
-/

namespace A055988.P4669600458212594957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (A016825 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055988.P4669600458212594957

namespace A055988

/-- `Δ[A017898(A016825(n)-1)]` -/
def P4669600458212594957.Spec : Prop :=
  ∀ n, P4669600458212594957.a n = A055988 (n + 1)

end A055988

/-! ## A055988.P6296578948253126097

`Δ[A017898(A004767(n)-2)]`
-/

namespace A055988.P6296578948253126097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (A004767 n - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055988.P6296578948253126097

namespace A055988

/-- `Δ[A017898(A004767(n)-2)]` -/
def P6296578948253126097.Spec : Prop :=
  ∀ n, P6296578948253126097.a n = A055988 (n + 1)

end A055988

/-! ## A055988.P8292876103185968545

`A072176(2*n+3)-A072176(2*(n+1))`
-/

namespace A055988.P8292876103185968545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072176 (2 * n + 3) - A072176 (2 * (n + 1))

end

end A055988.P8292876103185968545

namespace A055988

/-- `A072176(2*n+3)-A072176(2*(n+1))` -/
def P8292876103185968545.Spec : Prop :=
  ∀ n, P8292876103185968545.a n = A055988 (n + 1)

end A055988

/-! ## A055988.P1871106105029124999

`Δ[A055989(n+1)]-A055991(n+1)`
-/

namespace A055988.P1871106105029124999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A055991 (n + 1)

end

end A055988.P1871106105029124999

namespace A055988

/-- `Δ[A055989(n+1)]-A055991(n+1)` -/
def P1871106105029124999.Spec : Prop :=
  ∀ n, P1871106105029124999.a n = A055988 (n + 1)

end A055988

/-! ## A055988.P15023627676877873128

`Δ[A158943(2*n+1)]-A158943(2*(n+1))`
-/

namespace A055988.P15023627676877873128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158943 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A158943 (2 * (n + 1))

end

end A055988.P15023627676877873128

namespace A055988

/-- `Δ[A158943(2*n+1)]-A158943(2*(n+1))` -/
def P15023627676877873128.Spec : Prop :=
  ∀ n, P15023627676877873128.a n = A055988 (n + 1)

end A055988

/-!
# A055989: a(n) is its own 4th difference.

The programs for A055989, the canonical program `A055989.P4541674479057073270` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055989 has offset 1).

The definition of A055989 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055989.P4541674479057073270

`5*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=10, a(3)=36`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055989

/-- `5*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P4541674479057073270.Spec : Prop :=
  ∀ n, P4541674479057073270.a n = A055989 (n + 1)

theorem P4541674479057073270.correct : P4541674479057073270.Spec := by
  intro n
  simp only [A055989, Nat.add_sub_cancel]

end A055989

/-! ## A055989.P16708889506867748523

`a(n-1)+A055988(n+1)` with `a(0)=1`
-/

namespace A055989.P16708889506867748523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A055988 (n + 1)

end

end A055989.P16708889506867748523

namespace A055989

/-- `a(n-1)+A055988(n+1)` -/
def P16708889506867748523.Spec : Prop :=
  ∀ n, P16708889506867748523.a n = A055989 (n + 1)

end A055989

/-! ## A055989.P13170709178142790557

`ogf((1-2x+x^2)/(1-5x+6x^2-4x^3+x^4))`
-/

namespace A055989.P13170709178142790557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -5, 6, -4, 1] n

end

end A055989.P13170709178142790557

namespace A055989

/-- `ogf((1-2x+x^2)/(1-5x+6x^2-4x^3+x^4))` -/
def P13170709178142790557.Spec : Prop :=
  ∀ n, P13170709178142790557.a n = A055989 (n + 1)

end A055989

/-! ## A055989.P8632198618307072250

`A158943(Δ[n²])`
-/

namespace A055989.P8632198618307072250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158943 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A055989.P8632198618307072250

namespace A055989

/-- `A158943(Δ[n²])` -/
def P8632198618307072250.Spec : Prop :=
  ∀ n, P8632198618307072250.a n = A055989 (n + 1)

end A055989

/-! ## A055989.P17372105043315254544

`∑[A055988(n+1)]`
-/

namespace A055989.P17372105043315254544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055989.P17372105043315254544

namespace A055989

/-- `∑[A055988(n+1)]` -/
def P17372105043315254544.Spec : Prop :=
  ∀ n, P17372105043315254544.a n = A055989 (n + 1)

end A055989

/-! ## A055989.P11871526993020698411

`∑[A052535(2*n)]`
-/

namespace A055989.P11871526993020698411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052535 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055989.P11871526993020698411

namespace A055989

/-- `∑[A052535(2*n)]` -/
def P11871526993020698411.Spec : Prop :=
  ∀ n, P11871526993020698411.a n = A055989 (n + 1)

end A055989

/-! ## A055989.P16366524264143822957

`A099561(4*(n+1))`
-/

namespace A055989.P16366524264143822957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099561 (4 * (n + 1))

end

end A055989.P16366524264143822957

namespace A055989

/-- `A099561(4*(n+1))` -/
def P16366524264143822957.Spec : Prop :=
  ∀ n, P16366524264143822957.a n = A055989 (n + 1)

end A055989

/-! ## A055989.P6287407499463111208

`A003269(4*n+2)`
-/

namespace A055989.P6287407499463111208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (4 * n + 2)

end

end A055989.P6287407499463111208

namespace A055989

/-- `A003269(4*n+2)` -/
def P6287407499463111208.Spec : Prop :=
  ∀ n, P6287407499463111208.a n = A055989 (n + 1)

end A055989

/-! ## A055989.P6372680922770678930

`A017898(4*n+5)`
-/

namespace A055989.P6372680922770678930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (4 * n + 5)

end

end A055989.P6372680922770678930

namespace A055989

/-- `A017898(4*n+5)` -/
def P6372680922770678930.Spec : Prop :=
  ∀ n, P6372680922770678930.a n = A055989 (n + 1)

end A055989

/-! ## A055989.P1089316478768378943

`A122522(8*n+3)`
-/

namespace A055989.P1089316478768378943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122522 (8 * n + 3)

end

end A055989.P1089316478768378943

namespace A055989

/-- `A122522(8*n+3)` -/
def P1089316478768378943.Spec : Prop :=
  ∀ n, P1089316478768378943.a n = A055989 (n + 1)

end A055989

/-! ## A055989.P17110777625861353839

`A014101(4*n)-a(n-1)` with `a(0)=1`
-/

namespace A055989.P17110777625861353839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014101 (4 * n) - a (n - 1)

end

end A055989.P17110777625861353839

namespace A055989

/-- `A014101(4*n)-a(n-1)` -/
def P17110777625861353839.Spec : Prop :=
  ∀ n, P17110777625861353839.a n = A055989 (n + 1)

end A055989

/-! ## A055989.P10607641908934735821

`Δ[A017898(A016825(n))]`
-/

namespace A055989.P10607641908934735821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055989.P10607641908934735821

namespace A055989

/-- `Δ[A017898(A016825(n))]` -/
def P10607641908934735821.Spec : Prop :=
  ∀ n, P10607641908934735821.a n = A055989 (n + 1)

end A055989

/-! ## A055989.P17023695462522552176

`record[A158943(A029579(n))]`
-/

namespace A055989.P17023695462522552176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158943 (A029579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055989.P17023695462522552176

namespace A055989

/-- `record[A158943(A029579(n))]` -/
def P17023695462522552176.Spec : Prop :=
  ∀ n, P17023695462522552176.a n = A055989 (n + 1)

end A055989

/-! ## A055989.P13433010053754435038

`A226517(A004770(n+2))`
-/

namespace A055989.P13433010053754435038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226517 (A004770 (n + 2)).toNat

end

end A055989.P13433010053754435038

namespace A055989

/-- `A226517(A004770(n+2))` -/
def P13433010053754435038.Spec : Prop :=
  ∀ n, P13433010053754435038.a n = A055989 (n + 1)

end A055989

/-! ## A055989.P16299633248711094835

`A226517(A004769(n)+2)`
-/

namespace A055989.P16299633248711094835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226517 (A004769 n + 2).toNat

end

end A055989.P16299633248711094835

namespace A055989

/-- `A226517(A004769(n)+2)` -/
def P16299633248711094835.Spec : Prop :=
  ∀ n, P16299633248711094835.a n = A055989 (n + 1)

end A055989

/-! ## A055989.P16096670022005081627

`A226517(A004771(n)+6)`
-/

namespace A055989.P16096670022005081627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226517 (A004771 n + 6).toNat

end

end A055989.P16096670022005081627

namespace A055989

/-- `A226517(A004771(n)+6)` -/
def P16096670022005081627.Spec : Prop :=
  ∀ n, P16096670022005081627.a n = A055989 (n + 1)

end A055989

/-! ## A055989.P7659574266308432955

`A226517(A017101(n)+10)`
-/

namespace A055989.P7659574266308432955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226517 (A017101 n + 10).toNat

end

end A055989.P7659574266308432955

namespace A055989

/-- `A226517(A017101(n)+10)` -/
def P7659574266308432955.Spec : Prop :=
  ∀ n, P7659574266308432955.a n = A055989 (n + 1)

end A055989

/-! ## A055989.P6825156162475673274

`Δ[A017898(A004767(n)-1)]`
-/

namespace A055989.P6825156162475673274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (A004767 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055989.P6825156162475673274

namespace A055989

/-- `Δ[A017898(A004767(n)-1)]` -/
def P6825156162475673274.Spec : Prop :=
  ∀ n, P6825156162475673274.a n = A055989 (n + 1)

end A055989

/-! ## A055989.P679128133736539161

`∑[∑[A003269(A004277(2*n))]]`
-/

namespace A055989.P679128133736539161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (A004277 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055989.P679128133736539161

namespace A055989

/-- `∑[∑[A003269(A004277(2*n))]]` -/
def P679128133736539161.Spec : Prop :=
  ∀ n, P679128133736539161.a n = A055989 (n + 1)

end A055989

/-! ## A055989.P14965063809507261204

`∑[∑[A017898(A062545(2*n))]]`
-/

namespace A055989.P14965063809507261204
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (A062545 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055989.P14965063809507261204

namespace A055989

/-- `∑[∑[A017898(A062545(2*n))]]` -/
def P14965063809507261204.Spec : Prop :=
  ∀ n, P14965063809507261204.a n = A055989 (n + 1)

end A055989

/-!
# A055990: a(n) is its own 4th difference.

The programs for A055990, the canonical program `A055990.P17213591609112824286` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055990 has offset 1).

The definition of A055990 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055990.P17213591609112824286

`5*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=14, a(3)=50`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055990

/-- `5*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P17213591609112824286.Spec : Prop :=
  ∀ n, P17213591609112824286.a n = A055990 (n + 1)

theorem P17213591609112824286.correct : P17213591609112824286.Spec := by
  intro n
  simp only [A055990, Nat.add_sub_cancel]

end A055990

/-! ## A055990.P6622366369705911208

`a(n-1)+A055989(n+1)` with `a(0)=1`
-/

namespace A055990.P6622366369705911208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A055989 (n + 1)

end

end A055990.P6622366369705911208

namespace A055990

/-- `a(n-1)+A055989(n+1)` -/
def P6622366369705911208.Spec : Prop :=
  ∀ n, P6622366369705911208.a n = A055990 (n + 1)

end A055990

/-! ## A055990.P15101851639515064323

`ogf((1-x)/(1-5x+6x^2-4x^3+x^4))`
-/

namespace A055990.P15101851639515064323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -5, 6, -4, 1] n

end

end A055990.P15101851639515064323

namespace A055990

/-- `ogf((1-x)/(1-5x+6x^2-4x^3+x^4))` -/
def P15101851639515064323.Spec : Prop :=
  ∀ n, P15101851639515064323.a n = A055990 (n + 1)

end A055990

/-! ## A055990.P13805082269999746153

`A052535(Δ[n²])`
-/

namespace A055990.P13805082269999746153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052535 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A055990.P13805082269999746153

namespace A055990

/-- `A052535(Δ[n²])` -/
def P13805082269999746153.Spec : Prop :=
  ∀ n, P13805082269999746153.a n = A055990 (n + 1)

end A055990

/-! ## A055990.P16758305035772700836

`∑[A055989(n+1)]`
-/

namespace A055990.P16758305035772700836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055990.P16758305035772700836

namespace A055990

/-- `∑[A055989(n+1)]` -/
def P16758305035772700836.Spec : Prop :=
  ∀ n, P16758305035772700836.a n = A055990 (n + 1)

end A055990

/-! ## A055990.P11661378301011813267

`Δ[A003269(4*n)]`
-/

namespace A055990.P11661378301011813267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055990.P11661378301011813267

namespace A055990

/-- `Δ[A003269(4*n)]` -/
def P11661378301011813267.Spec : Prop :=
  ∀ n, P11661378301011813267.a n = A055990 (n + 1)

end A055990

/-! ## A055990.P171894112510131431

`A099561(4*n+5)`
-/

namespace A055990.P171894112510131431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099561 (4 * n + 5)

end

end A055990.P171894112510131431

namespace A055990

/-- `A099561(4*n+5)` -/
def P171894112510131431.Spec : Prop :=
  ∀ n, P171894112510131431.a n = A055990 (n + 1)

end A055990

/-! ## A055990.P2176928810003478761

`A017898(4*n+6)`
-/

namespace A055990.P2176928810003478761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (4 * n + 6)

end

end A055990.P2176928810003478761

namespace A055990

/-- `A017898(4*n+6)` -/
def P2176928810003478761.Spec : Prop :=
  ∀ n, P2176928810003478761.a n = A055990 (n + 1)

end A055990

/-! ## A055990.P5193602159989347366

`∑[∑[A055988(n+1)]]`
-/

namespace A055990.P5193602159989347366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055988 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055990.P5193602159989347366

namespace A055990

/-- `∑[∑[A055988(n+1)]]` -/
def P5193602159989347366.Spec : Prop :=
  ∀ n, P5193602159989347366.a n = A055990 (n + 1)

end A055990

/-! ## A055990.P6291748498171148590

`∑[∑[A052535(2*n)]]`
-/

namespace A055990.P6291748498171148590
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052535 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055990.P6291748498171148590

namespace A055990

/-- `∑[∑[A052535(2*n)]]` -/
def P6291748498171148590.Spec : Prop :=
  ∀ n, P6291748498171148590.a n = A055990 (n + 1)

end A055990

/-! ## A055990.P15333574969113486387

`Δ[Δ[A017898(4*n)]]`
-/

namespace A055990.P15333574969113486387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (4 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055990.P15333574969113486387

namespace A055990

/-- `Δ[Δ[A017898(4*n)]]` -/
def P15333574969113486387.Spec : Prop :=
  ∀ n, P15333574969113486387.a n = A055990 (n + 1)

end A055990

/-! ## A055990.P1486761006276221955

`∑[A158943(2*n+1)]`
-/

namespace A055990.P1486761006276221955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158943 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055990.P1486761006276221955

namespace A055990

/-- `∑[A158943(2*n+1)]` -/
def P1486761006276221955.Spec : Prop :=
  ∀ n, P1486761006276221955.a n = A055990 (n + 1)

end A055990

/-! ## A055990.P11296248117704420313

`A003269(3*(n+1)+n)`
-/

namespace A055990.P11296248117704420313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (3 * (n + 1) + n)

end

end A055990.P11296248117704420313

namespace A055990

/-- `A003269(3*(n+1)+n)` -/
def P11296248117704420313.Spec : Prop :=
  ∀ n, P11296248117704420313.a n = A055990 (n + 1)

end A055990

/-! ## A055990.P2076950825753691783

`A122522(A017137(n))`
-/

namespace A055990.P2076950825753691783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122522 (A017137 n).toNat

end

end A055990.P2076950825753691783

namespace A055990

/-- `A122522(A017137(n))` -/
def P2076950825753691783.Spec : Prop :=
  ∀ n, P2076950825753691783.a n = A055990 (n + 1)

end A055990

/-! ## A055990.P13237658191539188903

`Δ[A017898(A004767(n))]`
-/

namespace A055990.P13237658191539188903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (A004767 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055990.P13237658191539188903

namespace A055990

/-- `Δ[A017898(A004767(n))]` -/
def P13237658191539188903.Spec : Prop :=
  ∀ n, P13237658191539188903.a n = A055990 (n + 1)

end A055990

/-! ## A055990.P4190946665732844623

`record[A052535(A026741(n))]`
-/

namespace A055990.P4190946665732844623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052535 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055990.P4190946665732844623

namespace A055990

/-- `record[A052535(A026741(n))]` -/
def P4190946665732844623.Spec : Prop :=
  ∀ n, P4190946665732844623.a n = A055990 (n + 1)

end A055990

/-! ## A055990.P14942772322732240194

`record[A017898(A109043(n))]`
-/

namespace A055990.P14942772322732240194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (A109043 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055990.P14942772322732240194

namespace A055990

/-- `record[A017898(A109043(n))]` -/
def P14942772322732240194.Spec : Prop :=
  ∀ n, P14942772322732240194.a n = A055990 (n + 1)

end A055990

/-! ## A055990.P11778785663813850747

`A122522(A004770(n+1))`
-/

namespace A055990.P11778785663813850747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122522 (A004770 (n + 1)).toNat

end

end A055990.P11778785663813850747

namespace A055990

/-- `A122522(A004770(n+1))` -/
def P11778785663813850747.Spec : Prop :=
  ∀ n, P11778785663813850747.a n = A055990 (n + 1)

end A055990

/-! ## A055990.P3623848047488123879

`A226517(A004771(n+1))`
-/

namespace A055990.P3623848047488123879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226517 (A004771 (n + 1)).toNat

end

end A055990.P3623848047488123879

namespace A055990

/-- `A226517(A004771(n+1))` -/
def P3623848047488123879.Spec : Prop :=
  ∀ n, P3623848047488123879.a n = A055990 (n + 1)

end A055990

/-! ## A055990.P15338848646570884418

`A226517(A004768(n)+6)`
-/

namespace A055990.P15338848646570884418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226517 (A004768 n + 6).toNat

end

end A055990.P15338848646570884418

namespace A055990

/-- `A226517(A004768(n)+6)` -/
def P15338848646570884418.Spec : Prop :=
  ∀ n, P15338848646570884418.a n = A055990 (n + 1)

end A055990

/-!
# A055991: a(n) is its own 4th difference.

The programs for A055991, the canonical program `A055991.P10667604343908027000` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055991 has offset 1).

The definition of A055991 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055991.P10667604343908027000

`5*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=19, a(3)=69`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055991

/-- `5*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P10667604343908027000.Spec : Prop :=
  ∀ n, P10667604343908027000.a n = A055991 (n + 1)

theorem P10667604343908027000.correct : P10667604343908027000.Spec := by
  intro n
  simp only [A055991, Nat.add_sub_cancel]

end A055991

/-! ## A055991.P5318522214905649987

`a(n-1)+A055990(n+1)` with `a(0)=1`
-/

namespace A055991.P5318522214905649987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A055990 (n + 1)

end

end A055991.P5318522214905649987

namespace A055991

/-- `a(n-1)+A055990(n+1)` -/
def P5318522214905649987.Spec : Prop :=
  ∀ n, P5318522214905649987.a n = A055991 (n + 1)

end A055991

/-! ## A055991.P4830406852022684098

`A055988(n+2)-A055988(n+1)`
-/

namespace A055991.P4830406852022684098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055988 (n + 2) - A055988 (n + 1)

end

end A055991.P4830406852022684098

namespace A055991

/-- `A055988(n+2)-A055988(n+1)` -/
def P4830406852022684098.Spec : Prop :=
  ∀ n, P4830406852022684098.a n = A055991 (n + 1)

end A055991

/-! ## A055991.P14589682538965581151

`ogf(1/(1-5x+6x^2-4x^3+x^4))`
-/

namespace A055991.P14589682538965581151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -5, 6, -4, 1] n

end

end A055991.P14589682538965581151

namespace A055991

/-- `ogf(1/(1-5x+6x^2-4x^3+x^4))` -/
def P14589682538965581151.Spec : Prop :=
  ∀ n, P14589682538965581151.a n = A055991 (n + 1)

end A055991

/-! ## A055991.P16575642146248349468

`∑[A055990(n+1)]`
-/

namespace A055991.P16575642146248349468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055991.P16575642146248349468

namespace A055991

/-- `∑[A055990(n+1)]` -/
def P16575642146248349468.Spec : Prop :=
  ∀ n, P16575642146248349468.a n = A055991 (n + 1)

end A055991

/-! ## A055991.P5453839300146493890

`Δ[A055988(n+1)]`
-/

namespace A055991.P5453839300146493890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055991.P5453839300146493890

namespace A055991

/-- `Δ[A055988(n+1)]` -/
def P5453839300146493890.Spec : Prop :=
  ∀ n, P5453839300146493890.a n = A055991 (n + 1)

end A055991

/-! ## A055991.P13734368720327235157

`Δ[A052535(2*n)]`
-/

namespace A055991.P13734368720327235157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052535 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055991.P13734368720327235157

namespace A055991

/-- `Δ[A052535(2*n)]` -/
def P13734368720327235157.Spec : Prop :=
  ∀ n, P13734368720327235157.a n = A055991 (n + 1)

end A055991

/-! ## A055991.P11364078879960931393

`∑[A052535(Δ[n²])]`
-/

namespace A055991.P11364078879960931393
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052535 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055991.P11364078879960931393

namespace A055991

/-- `∑[A052535(Δ[n²])]` -/
def P11364078879960931393.Spec : Prop :=
  ∀ n, P11364078879960931393.a n = A055991 (n + 1)

end A055991

/-! ## A055991.P11016216246758683628

`A158943(2*(n+1))`
-/

namespace A055991.P11016216246758683628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158943 (2 * (n + 1))

end

end A055991.P11016216246758683628

namespace A055991

/-- `A158943(2*(n+1))` -/
def P11016216246758683628.Spec : Prop :=
  ∀ n, P11016216246758683628.a n = A055991 (n + 1)

end A055991

/-! ## A055991.P17785001257932227338

`A003269(4*(n+1))`
-/

namespace A055991.P17785001257932227338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (4 * (n + 1))

end

end A055991.P17785001257932227338

namespace A055991

/-- `A003269(4*(n+1))` -/
def P17785001257932227338.Spec : Prop :=
  ∀ n, P17785001257932227338.a n = A055991 (n + 1)

end A055991

/-! ## A055991.P15198607304676959036

`A098578(4*n)+1`
-/

namespace A055991.P15198607304676959036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098578 (4 * n) + 1

end

end A055991.P15198607304676959036

namespace A055991

/-- `A098578(4*n)+1` -/
def P15198607304676959036.Spec : Prop :=
  ∀ n, P15198607304676959036.a n = A055991 (n + 1)

end A055991

/-! ## A055991.P445434002912216954

`A122522(8*(n+1))`
-/

namespace A055991.P445434002912216954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122522 (8 * (n + 1))

end

end A055991.P445434002912216954

namespace A055991

/-- `A122522(8*(n+1))` -/
def P445434002912216954.Spec : Prop :=
  ∀ n, P445434002912216954.a n = A055991 (n + 1)

end A055991

/-! ## A055991.P1016769504684926618

`A099561(4*n+6)`
-/

namespace A055991.P1016769504684926618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099561 (4 * n + 6)

end

end A055991.P1016769504684926618

namespace A055991

/-- `A099561(4*n+6)` -/
def P1016769504684926618.Spec : Prop :=
  ∀ n, P1016769504684926618.a n = A055991 (n + 1)

end A055991

/-! ## A055991.P16387949104308665915

`A017898(4*n+7)`
-/

namespace A055991.P16387949104308665915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (4 * n + 7)

end

end A055991.P16387949104308665915

namespace A055991

/-- `A017898(4*n+7)` -/
def P16387949104308665915.Spec : Prop :=
  ∀ n, P16387949104308665915.a n = A055991 (n + 1)

end A055991

/-! ## A055991.P4896620448676502667

`∑[∑[A055989(n+1)]]`
-/

namespace A055991.P4896620448676502667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055989 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055991.P4896620448676502667

namespace A055991

/-- `∑[∑[A055989(n+1)]]` -/
def P4896620448676502667.Spec : Prop :=
  ∀ n, P4896620448676502667.a n = A055991 (n + 1)

end A055991

/-! ## A055991.P18200959010014692392

`∑[A003269(lt[3, xor(n, n+1)])]`
-/

namespace A055991.P18200959010014692392
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (SequenceMachineLib.nth (fun j => f2 j < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055991.P18200959010014692392

namespace A055991

/-- `∑[A003269(lt[3, xor(n, n+1)])]` -/
def P18200959010014692392.Spec : Prop :=
  ∀ n, P18200959010014692392.a n = A055991 (n + 1)

end A055991

/-! ## A055991.P12500486245957326639

`A226517(A004768(n+1))`
-/

namespace A055991.P12500486245957326639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226517 (A004768 (n + 1)).toNat

end

end A055991.P12500486245957326639

namespace A055991

/-- `A226517(A004768(n+1))` -/
def P12500486245957326639.Spec : Prop :=
  ∀ n, P12500486245957326639.a n = A055991 (n + 1)

end A055991

/-! ## A055991.P14832641293838262790

`A226517(A004769(n)+6)`
-/

namespace A055991.P14832641293838262790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226517 (A004769 n + 6).toNat

end

end A055991.P14832641293838262790

namespace A055991

/-- `A226517(A004769(n)+6)` -/
def P14832641293838262790.Spec : Prop :=
  ∀ n, P14832641293838262790.a n = A055991 (n + 1)

end A055991

/-! ## A055991.P18110483150014913220

`A226517(A004771(n)+10)`
-/

namespace A055991.P18110483150014913220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226517 (A004771 n + 10).toNat

end

end A055991.P18110483150014913220

namespace A055991

/-- `A226517(A004771(n)+10)` -/
def P18110483150014913220.Spec : Prop :=
  ∀ n, P18110483150014913220.a n = A055991 (n + 1)

end A055991

/-! ## A055991.P16346969154647835211

`Δ[A017898(Δ[A046092(n)])]`
-/

namespace A055991.P16346969154647835211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055991.P16346969154647835211

namespace A055991

/-- `Δ[A017898(Δ[A046092(n)])]` -/
def P16346969154647835211.Spec : Prop :=
  ∀ n, P16346969154647835211.a n = A055991 (n + 1)

end A055991

/-!
# A055992: n written efficiently in natural numbers base, i.e., in form ...wxyz where n =1*z + 2*y + 3*x + 4*w + ... with z < 1, y < 2, x < 3, w < 4, ...

The programs for A055992, there is no canonical definition to state claims against.
-/

/-! ## A055992.P18192377843626377317

`filter[A001202(2*n+1), A011717(#)]`
-/

namespace A055992.P18192377843626377317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001202 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011717 (f1 j).toNat = 1) n)

end

end A055992.P18192377843626377317

/-!
# A055993: Number of square divisors of n!.

The programs for A055993, the canonical program `A055993.P16266584228034744191` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055993 has offset 1).

The definition of A055993 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A055772, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A055993.P16266584228034744191

`A000005(A055772(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A055993

/-- `A000005(A055772(n+1))` -/
def P16266584228034744191.Spec : Prop :=
  ∀ n, P16266584228034744191.a n = A055993 (n + 1)

theorem P16266584228034744191.correct : P16266584228034744191.Spec := by
  intro n
  simp only [A055993, Nat.add_sub_cancel]

end A055993

/-! ## A055993.P15854596371284395233

`A056630(n+1)+A056629(n+1)`
-/

namespace A055993.P15854596371284395233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056630 (n + 1) + A056629 (n + 1)

end

end A055993.P15854596371284395233

namespace A055993

/-- `A056630(n+1)+A056629(n+1)` -/
def P15854596371284395233.Spec : Prop :=
  ∀ n, P15854596371284395233.a n = A055993 (n + 1)

end A055993

/-! ## A055993.P8559395185712621803

`A375188(n+1)+A375187(n+1)`
-/

namespace A055993.P8559395185712621803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375188 (n + 1) + A375187 (n + 1)

end

end A055993.P8559395185712621803

namespace A055993

/-- `A375188(n+1)+A375187(n+1)` -/
def P8559395185712621803.Spec : Prop :=
  ∀ n, P8559395185712621803.a n = A055993 (n + 1)

end A055993

/-! ## A055993.P14959401241159665067

`A027423(n+1)-A056596(n+1)`
-/

namespace A055993.P14959401241159665067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027423 (n + 1) - A056596 (n + 1)

end

end A055993.P14959401241159665067

namespace A055993

/-- `A027423(n+1)-A056596(n+1)` -/
def P14959401241159665067.Spec : Prop :=
  ∀ n, P14959401241159665067.a n = A055993 (n + 1)

end A055993

/-! ## A055993.P3563920513128492906

`∑[A038024(n+1)]-A056596(n+1)`
-/

namespace A055993.P3563920513128492906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A056596 (n + 1)

end

end A055993.P3563920513128492906

namespace A055993

/-- `∑[A038024(n+1)]-A056596(n+1)` -/
def P3563920513128492906.Spec : Prop :=
  ∀ n, P3563920513128492906.a n = A055993 (n + 1)

end A055993

/-! ## A055993.P16336269972396464749

`A027423(n+1)+A056596(n+1)/A260196(n+2)`
-/

namespace A055993.P16336269972396464749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027423 (n + 1) : ℚ) + (A056596 (n + 1) : ℚ) / (A260196 (n + 2) : ℚ)

end

end A055993.P16336269972396464749

namespace A055993

/-- `A027423(n+1)+A056596(n+1)/A260196(n+2)` -/
def P16336269972396464749.Spec : Prop :=
  ∀ n, P16336269972396464749.a n = (A055993 (n + 1) : ℚ)

end A055993

/-!
# A055994: Expansion of (1+6x)/(1-x)^10.

The programs for A055994, the canonical program `A055994.P16076437157656273243` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055994 has offset 0).

The definition of A055994 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055994.P16076437157656273243

`(7*n+9)*C(n+8, 8)/9`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055994

/-- `(7*n+9)*C(n+8, 8)/9` -/
def P16076437157656273243.Spec : Prop :=
  ∀ n, P16076437157656273243.a n = (A055994 n : ℚ)

end A055994

/-! ## A055994.P16276734888373525445

`∑[∑[(n+1)*C(n+6, 6)]]`
-/

namespace A055994.P16276734888373525445
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose (n + 6) 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055994.P16276734888373525445

namespace A055994

/-- `∑[∑[(n+1)*C(n+6, 6)]]` -/
def P16276734888373525445.Spec : Prop :=
  ∀ n, (P16276734888373525445.a n : ℤ) = A055994 n

end A055994

/-! ## A055994.P1910044360801824411

`∑[∑[(n+1)*∑[∑[∑[∑[∑[n+1]]]]]]]`
-/

namespace A055994.P1910044360801824411
noncomputable section

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055994.P1910044360801824411

namespace A055994

/-- `∑[∑[(n+1)*∑[∑[∑[∑[∑[n+1]]]]]]]` -/
def P1910044360801824411.Spec : Prop :=
  ∀ n, (P1910044360801824411.a n : ℤ) = A055994 n

end A055994

/-! ## A055994.P16662991492024430974

`∑[∑[2*A027818(n)]]/2`
-/

namespace A055994.P16662991492024430974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027818 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A055994.P16662991492024430974

namespace A055994

/-- `∑[∑[2*A027818(n)]]/2` -/
def P16662991492024430974.Spec : Prop :=
  ∀ n, P16662991492024430974.a n = (A055994 n : ℚ)

end A055994

/-! ## A055994.P12603806778124961455

`2*A055848(n)-A055844(n)`
-/

namespace A055994.P12603806778124961455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055848 n - A055844 n

end

end A055994.P12603806778124961455

namespace A055994

/-- `2*A055848(n)-A055844(n)` -/
def P12603806778124961455.Spec : Prop :=
  ∀ n, P12603806778124961455.a n = A055994 n

end A055994

/-! ## A055994.P16029926036325299304

`2*A056122(n)-A056003(n)`
-/

namespace A055994.P16029926036325299304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056122 n - A056003 n

end

end A055994.P16029926036325299304

namespace A055994

/-- `2*A056122(n)-A056003(n)` -/
def P16029926036325299304.Spec : Prop :=
  ∀ n, P16029926036325299304.a n = A055994 n

end A055994

/-! ## A055994.P631361238310609143

`∑[∑[A027818(n)]]%A184547(n+1)`
-/

namespace A055994.P631361238310609143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027818 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A184547 (n + 1))

end

end A055994.P631361238310609143

namespace A055994

/-- `∑[∑[A027818(n)]]%A184547(n+1)` -/
def P631361238310609143.Spec : Prop :=
  ∀ n, P631361238310609143.a n = A055994 n

end A055994

/-! ## A055994.P3520250522294349684

`A055844(n)+A055848(n)-A055843(n)`
-/

namespace A055994.P3520250522294349684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055844 n + (A055848 n - A055843 n)

end

end A055994.P3520250522294349684

namespace A055994

/-- `A055844(n)+A055848(n)-A055843(n)` -/
def P3520250522294349684.Spec : Prop :=
  ∀ n, P3520250522294349684.a n = A055994 n

end A055994

/-! ## A055994.P13244334058740050580

`A034266(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A055994.P13244334058740050580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A034266 (n + 1) + a (n - 1)

end

end A055994.P13244334058740050580

namespace A055994

/-- `A034266(n+1)+a(n-1)` -/
def P13244334058740050580.Spec : Prop :=
  ∀ n, P13244334058740050580.a n = A055994 n

end A055994

/-! ## A055994.P16936479844940839174

`A034266(n+1)+∑[A034266(n)]`
-/

namespace A055994.P16936479844940839174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034266 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055994.P16936479844940839174

namespace A055994

/-- `A034266(n+1)+∑[A034266(n)]` -/
def P16936479844940839174.Spec : Prop :=
  ∀ n, P16936479844940839174.a n = A055994 n

end A055994

/-!
# A055995: a(n) = 64*9^(n-2), a(0) = 1, a(1) = 7.

The programs for A055995, the canonical program `A055995.P4652306832261232248` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055995 has offset 0).

The definition of A055995 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055995.P4652306832261232248

`9*a(n-1)` with `a(0)=1, a(1)=7, a(2)=64`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055995

/-- `9*a(n-1)` -/
def P4652306832261232248.Spec : Prop :=
  ∀ n, (P4652306832261232248.a n : ℤ) = A055995 n

theorem P4652306832261232248.correct : P4652306832261232248.Spec := by
  intro n
  simp only [A055995]

end A055995

/-! ## A055995.P8760632384628875981

`Δ[Δ[floor(9^(n-2))]]`
-/

namespace A055995.P8760632384628875981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(9 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055995.P8760632384628875981

namespace A055995

/-- `Δ[Δ[floor(9^(n-2))]]` -/
def P8760632384628875981.Spec : Prop :=
  ∀ n, P8760632384628875981.a n = A055995 n

end A055995

/-! ## A055995.P12551562472493729432

`floor((A188825(n+1)/6)²)`
-/

namespace A055995.P12551562472493729432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A188825 (n + 1) : ℚ) / 6) ^ 2⌋

end

end A055995.P12551562472493729432

namespace A055995

/-- `floor((A188825(n+1)/6)²)` -/
def P12551562472493729432.Spec : Prop :=
  ∀ n, P12551562472493729432.a n = A055995 n

end A055995

/-! ## A055995.P5192032168663476092

`floor((A055275(n)/A000244(n))²)`
-/

namespace A055995.P5192032168663476092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A055275 n : ℚ) / (A000244 n : ℚ)) ^ 2⌋

end

end A055995.P5192032168663476092

namespace A055995

/-- `floor((A055275(n)/A000244(n))²)` -/
def P5192032168663476092.Spec : Prop :=
  ∀ n, P5192032168663476092.a n = A055995 n

end A055995

/-! ## A055995.P15605762002945766768

`floor(A055275(n)/A001019(n)*A055275(n))`
-/

namespace A055995.P15605762002945766768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055275 n : ℚ) / (A001019 n : ℚ) * (A055275 n : ℚ)⌋

end

end A055995.P15605762002945766768

namespace A055995

/-- `floor(A055275(n)/A001019(n)*A055275(n))` -/
def P15605762002945766768.Spec : Prop :=
  ∀ n, P15605762002945766768.a n = A055995 n

end A055995

/-! ## A055995.P14662605005964353164

`floor(A055275(n)²/A001019(n))`
-/

namespace A055995.P14662605005964353164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055275 n ^ 2 : ℚ) / (A001019 n : ℚ)⌋

end

end A055995.P14662605005964353164

namespace A055995

/-- `floor(A055275(n)²/A001019(n))` -/
def P14662605005964353164.Spec : Prop :=
  ∀ n, P14662605005964353164.a n = A055995 n

end A055995

/-!
# A055996: a(n) = 81*10^(n-2), a(0)=1, a(1)=8.

The programs for A055996, the canonical program `A055996.P12898325942353887035` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055996 has offset 0).

The definition of A055996 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055996.P12898325942353887035

`10*a(n-1)` with `a(0)=1, a(1)=8, a(2)=81`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055996

/-- `10*a(n-1)` -/
def P12898325942353887035.Spec : Prop :=
  ∀ n, (P12898325942353887035.a n : ℤ) = A055996 n

theorem P12898325942353887035.correct : P12898325942353887035.Spec := by
  intro n
  simp only [A055996]

end A055996

/-! ## A055996.P8742890867353073314

`ogf((-1+2x-x^2)/(-1+10x))`
-/

namespace A055996.P8742890867353073314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -10] n

end

end A055996.P8742890867353073314

namespace A055996

/-- `ogf((-1+2x-x^2)/(-1+10x))` -/
def P8742890867353073314.Spec : Prop :=
  ∀ n, P8742890867353073314.a n = A055996 n

end A055996

/-! ## A055996.P6208036002506137318

`Δ[Δ[floor(10^(n-2))]]`
-/

namespace A055996.P6208036002506137318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055996.P6208036002506137318

namespace A055996

/-- `Δ[Δ[floor(10^(n-2))]]` -/
def P6208036002506137318.Spec : Prop :=
  ∀ n, P6208036002506137318.a n = A055996 n

end A055996

/-! ## A055996.P8188629605709997030

`Δ[A337855(n+1)]/2`
-/

namespace A055996.P8188629605709997030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337855 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A055996.P8188629605709997030

namespace A055996

/-- `Δ[A337855(n+1)]/2` -/
def P8188629605709997030.Spec : Prop :=
  ∀ n, P8188629605709997030.a n = (A055996 n : ℚ)

end A055996

/-! ## A055996.P9360824985986379000

`A164915(A034856(n+2))`
-/

namespace A055996.P9360824985986379000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164915 (A034856 (n + 2)).toNat

end

end A055996.P9360824985986379000

namespace A055996

/-- `A164915(A034856(n+2))` -/
def P9360824985986379000.Spec : Prop :=
  ∀ n, P9360824985986379000.a n = A055996 n

end A055996

/-!
# A055997: Numbers k such that k*(k - 1)/2 is a square.

The programs for A055997, the canonical program `A055997.P15322038880012547270` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055997 has offset 1).

The definition of A055997 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055997.P15322038880012547270

`6*a(n-1)-a(n-2)-2` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055997

/-- `6*a(n-1)-a(n-2)-2` -/
def P15322038880012547270.Spec : Prop :=
  ∀ n, P15322038880012547270.a n = A055997 (n + 1)

theorem P15322038880012547270.correct : P15322038880012547270.Spec := by
  intro n
  simp only [A055997, Nat.add_sub_cancel]

end A055997

/-! ## A055997.P8430744559320082501

`A001653(n+1)-A001652(n)`
-/

namespace A055997.P8430744559320082501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001653 (n + 1) - A001652 n

end

end A055997.P8430744559320082501

namespace A055997

/-- `A001653(n+1)-A001652(n)` -/
def P8430744559320082501.Spec : Prop :=
  ∀ n, P8430744559320082501.a n = A055997 (n + 1)

end A055997

/-! ## A055997.P15288299370919424722

`(a(n-1)+1)²/a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A055997.P15288299370919424722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 1) + 1) ^ 2 / a (n - 2)

end

end A055997.P15288299370919424722

namespace A055997

/-- `(a(n-1)+1)²/a(n-2)` -/
def P15288299370919424722.Spec : Prop :=
  ∀ n, P15288299370919424722.a n = (A055997 (n + 1) : ℚ)

end A055997

/-! ## A055997.P4078637035101687974

`cosh(log((sqrt(2)+1)^n))²`
-/

namespace A055997.P4078637035101687974
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (Real.log ((Real.sqrt (2 : ℝ) + 1) ^ n)) ^ 2

end

end A055997.P4078637035101687974

namespace A055997

/-- `cosh(log((sqrt(2)+1)^n))²` -/
def P4078637035101687974.Spec : Prop :=
  ∀ n, P4078637035101687974.a n = (A055997 (n + 1) : ℝ)

end A055997

/-! ## A055997.P4808704221862078115

`∑[ogf((1-5x+2x^2)/(1-6x+x^2))]`
-/

namespace A055997.P4808704221862078115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 2] [1, -6, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055997.P4808704221862078115

namespace A055997

/-- `∑[ogf((1-5x+2x^2)/(1-6x+x^2))]` -/
def P4808704221862078115.Spec : Prop :=
  ∀ n, P4808704221862078115.a n = A055997 (n + 1)

end A055997

/-! ## A055997.P5669801773106876097

`ogf((1-5x+2x^2)/(1-7x+7x^2-x^3))`
-/

namespace A055997.P5669801773106876097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 2] [1, -7, 7, -1] n

end

end A055997.P5669801773106876097

namespace A055997

/-- `ogf((1-5x+2x^2)/(1-7x+7x^2-x^3))` -/
def P5669801773106876097.Spec : Prop :=
  ∀ n, P5669801773106876097.a n = A055997 (n + 1)

end A055997

/-! ## A055997.P8024509798843456005

`floor(a(n-1)/(3-sqrt(8)))-2` with `a(0)=1, a(1)=2`
-/

namespace A055997.P8024509798843456005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋ - 2

end

end A055997.P8024509798843456005

namespace A055997

/-- `floor(a(n-1)/(3-sqrt(8)))-2` -/
def P8024509798843456005.Spec : Prop :=
  ∀ n, P8024509798843456005.a n = A055997 (n + 1)

end A055997

/-! ## A055997.P17403172097889966104

`∑[round(a(n-1)/(3-sqrt(8)))]` with `a(0)=1, a(1)=1, a(2)=7`
-/

namespace A055997.P17403172097889966104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 7] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055997.P17403172097889966104

namespace A055997

/-- `∑[round(a(n-1)/(3-sqrt(8)))]` -/
def P17403172097889966104.Spec : Prop :=
  ∀ n, P17403172097889966104.a n = A055997 (n + 1)

end A055997

/-! ## A055997.P16893782043513220841

`∑[lcm(6, a(n-1))-a(n-2)]` with `a(0)=1, a(1)=1, a(2)=7`
-/

namespace A055997.P16893782043513220841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 7] fun n f1 =>
  (Int.lcm 6 (f1 (n - 1)) : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055997.P16893782043513220841

namespace A055997

/-- `∑[lcm(6, a(n-1))-a(n-2)]` -/
def P16893782043513220841.Spec : Prop :=
  ∀ n, P16893782043513220841.a n = A055997 (n + 1)

end A055997

/-! ## A055997.P17213728800235520320

`char[2*n+1]+(lcm(2, round((sqrt(2)+1)^n))/2)²`
-/

namespace A055997.P17213728800235520320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) + ((Int.lcm 2 (SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 1) ^ n)) : ℚ) / 2) ^ 2

end

end A055997.P17213728800235520320

namespace A055997

/-- `char[2*n+1]+(lcm(2, round((sqrt(2)+1)^n))/2)²` -/
def P17213728800235520320.Spec : Prop :=
  ∀ n, P17213728800235520320.a n = (A055997 (n + 1) : ℚ)

end A055997

/-! ## A055997.P4454461826274760664

`A001108(n)+1`
-/

namespace A055997.P4454461826274760664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001108 n + 1

end

end A055997.P4454461826274760664

namespace A055997

/-- `A001108(n)+1` -/
def P4454461826274760664.Spec : Prop :=
  ∀ n, P4454461826274760664.a n = A055997 (n + 1)

end A055997

/-! ## A055997.P14159604595582930717

`A097075(2*n)`
-/

namespace A055997.P14159604595582930717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097075 (2 * n)

end

end A055997.P14159604595582930717

namespace A055997

/-- `A097075(2*n)` -/
def P14159604595582930717.Spec : Prop :=
  ∀ n, P14159604595582930717.a n = A055997 (n + 1)

end A055997

/-! ## A055997.P13946628232486822681

`A171842(2*n)`
-/

namespace A055997.P13946628232486822681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 (2 * n)

end

end A055997.P13946628232486822681

namespace A055997

/-- `A171842(2*n)` -/
def P13946628232486822681.Spec : Prop :=
  ∀ n, P13946628232486822681.a n = A055997 (n + 1)

end A055997

/-! ## A055997.P6014472957360253889

`A247311(6*n)`
-/

namespace A055997.P6014472957360253889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247311 (6 * n)

end

end A055997.P6014472957360253889

namespace A055997

/-- `A247311(6*n)` -/
def P6014472957360253889.Spec : Prop :=
  ∀ n, P6014472957360253889.a n = A055997 (n + 1)

end A055997

/-! ## A055997.P10789875738969072244

`ceil(A001541(n)/2)`
-/

namespace A055997.P10789875738969072244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001541 n : ℚ) / 2⌉

end

end A055997.P10789875738969072244

namespace A055997

/-- `ceil(A001541(n)/2)` -/
def P10789875738969072244.Spec : Prop :=
  ∀ n, P10789875738969072244.a n = A055997 (n + 1)

end A055997

/-! ## A055997.P7430349615263459428

`A097076(2*n)+1`
-/

namespace A055997.P7430349615263459428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097076 (2 * n) + 1

end

end A055997.P7430349615263459428

namespace A055997

/-- `A097076(2*n)+1` -/
def P7430349615263459428.Spec : Prop :=
  ∀ n, P7430349615263459428.a n = A055997 (n + 1)

end A055997

/-! ## A055997.P17599346957952984091

`A099938(n+1)/2`
-/

namespace A055997.P17599346957952984091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099938 (n + 1) : ℚ) / 2

end

end A055997.P17599346957952984091

namespace A055997

/-- `A099938(n+1)/2` -/
def P17599346957952984091.Spec : Prop :=
  ∀ n, P17599346957952984091.a n = (A055997 (n + 1) : ℚ)

end A055997

/-! ## A055997.P9459651816210150863

`A111352(Δ[n²])+2`
-/

namespace A055997.P9459651816210150863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111352 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A055997.P9459651816210150863

namespace A055997

/-- `A111352(Δ[n²])+2` -/
def P9459651816210150863.Spec : Prop :=
  ∀ n, P9459651816210150863.a n = A055997 (n + 1)

end A055997

/-! ## A055997.P14109483752410967775

`ceil(A001333(2*n)/2)`
-/

namespace A055997.P14109483752410967775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001333 (2 * n) : ℚ) / 2⌉

end

end A055997.P14109483752410967775

namespace A055997

/-- `ceil(A001333(2*n)/2)` -/
def P14109483752410967775.Spec : Prop :=
  ∀ n, P14109483752410967775.a n = A055997 (n + 1)

end A055997

/-! ## A055997.P18398068673329354282

`round(A079496(2*n)/2)`
-/

namespace A055997.P18398068673329354282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A079496 (2 * n) : ℚ) / 2)

end

end A055997.P18398068673329354282

namespace A055997

/-- `round(A079496(2*n)/2)` -/
def P18398068673329354282.Spec : Prop :=
  ∀ n, P18398068673329354282.a n = A055997 (n + 1)

end A055997

/-!
# A055998: a(n) = n*(n+5)/2.

The programs for A055998, the canonical program `A055998.P11381458021141887221` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055998 has offset 0).

The definition of A055998 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+5)/2` (program `A055998.P10333639689974699796`, by `A055998.P10333639689974699796.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A055998.P10333639689974699796

`n*(n+5)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A055998.P10333639689974699796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 5) : ℚ) / 2

end

end A055998.P10333639689974699796

namespace A055998

/-- `n*(n+5)/2` -/
def P10333639689974699796.Spec : Prop :=
  ∀ n, P10333639689974699796.a n = (A055998 n : ℚ)

theorem P10333639689974699796.correct : P10333639689974699796.Spec := by
  intro n
  induction n with
  | zero => simp [A055998, A055998.P10333639689974699796.a, A055998.P11381458021141887221.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A055998, Nat.add_sub_cancel, A055998.P10333639689974699796.a, A055998.P11381458021141887221.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A055998

/-! ## A055998.P11381458021141887221

`a(n-1)+n+2` with `a(0)=0`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055998

/-- `a(n-1)+n+2` -/
def P11381458021141887221.Spec : Prop :=
  ∀ n, (P11381458021141887221.a n : ℤ) = A055998 n

theorem P11381458021141887221.correct : P11381458021141887221.Spec := by
  intro n
  simp only [A055998]

end A055998

/-! ## A055998.P4552748138489150501

`A046691(n)+1`
-/

namespace A055998.P4552748138489150501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046691 n + 1

end

end A055998.P4552748138489150501

namespace A055998

/-- `A046691(n)+1` -/
def P4552748138489150501.Spec : Prop :=
  ∀ n, P4552748138489150501.a n = A055998 n

end A055998

/-! ## A055998.P733237452078236789

`A034856(n+1)-1`
-/

namespace A055998.P733237452078236789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 1) - 1

end

end A055998.P733237452078236789

namespace A055998

/-- `A034856(n+1)-1` -/
def P733237452078236789.Spec : Prop :=
  ∀ n, P733237452078236789.a n = A055998 n

end A055998

/-! ## A055998.P5590679545457843884

`A000217(n+2)-3`
-/

namespace A055998.P5590679545457843884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 2) - 3

end

end A055998.P5590679545457843884

namespace A055998

/-- `A000217(n+2)-3` -/
def P5590679545457843884.Spec : Prop :=
  ∀ n, P5590679545457843884.a n = A055998 n

end A055998

/-! ## A055998.P7537885145705145829

`A167544(n+8)`
-/

namespace A055998.P7537885145705145829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167544 (n + 8)

end

end A055998.P7537885145705145829

namespace A055998

/-- `A167544(n+8)` -/
def P7537885145705145829.Spec : Prop :=
  ∀ n, P7537885145705145829.a n = A055998 n

end A055998

/-! ## A055998.P2179031197737319169

`C(n+3, 2)-3`
-/

namespace A055998.P2179031197737319169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 2 : ℤ) - 3

end

end A055998.P2179031197737319169

namespace A055998

/-- `C(n+3, 2)-3` -/
def P2179031197737319169.Spec : Prop :=
  ∀ n, P2179031197737319169.a n = A055998 n

end A055998

/-! ## A055998.P12940503345138581272

`∑[ceil(n*exp(acot(n)))]`
-/

namespace A055998.P12940503345138581272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.exp (SequenceMachineLib.acot (n : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055998.P12940503345138581272

namespace A055998

/-- `∑[ceil(n*exp(acot(n)))]` -/
def P12940503345138581272.Spec : Prop :=
  ∀ n, P12940503345138581272.a n = A055998 n

end A055998

/-! ## A055998.P9120234352912787321

`∑[2%(n+2)+n]`
-/

namespace A055998.P9120234352912787321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 % (n + 2) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055998.P9120234352912787321

namespace A055998

/-- `∑[2%(n+2)+n]` -/
def P9120234352912787321.Spec : Prop :=
  ∀ n, (P9120234352912787321.a n : ℤ) = A055998 n

end A055998

/-! ## A055998.P9565498883575644655

`record[(n-5)*n/2]`
-/

namespace A055998.P9565498883575644655
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 5 : ℚ) * ((n : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055998.P9565498883575644655

namespace A055998

/-- `record[(n-5)*n/2]` -/
def P9565498883575644655.Spec : Prop :=
  ∀ n, P9565498883575644655.a n = (A055998 n : ℚ)

end A055998

/-! ## A055998.P11916524783915100657

`∑[ceil(atan(2*n)+n)]`
-/

namespace A055998.P11916524783915100657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (2 * n : ℝ) + (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055998.P11916524783915100657

namespace A055998

/-- `∑[ceil(atan(2*n)+n)]` -/
def P11916524783915100657.Spec : Prop :=
  ∀ n, P11916524783915100657.a n = A055998 n

end A055998

/-! ## A055998.P13096845399058920662

`∑[ceil(n*3^acot(n))]`
-/

namespace A055998.P13096845399058920662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * (3 : ℝ) ^ (SequenceMachineLib.acot (n : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055998.P13096845399058920662

namespace A055998

/-- `∑[ceil(n*3^acot(n))]` -/
def P13096845399058920662.Spec : Prop :=
  ∀ n, P13096845399058920662.a n = A055998 n

end A055998

/-! ## A055998.P7639394454455700770

`∑[ogf((3x-2x^2)/(1-2x+x^2))]`
-/

namespace A055998.P7639394454455700770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, -2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055998.P7639394454455700770

namespace A055998

/-- `∑[ogf((3x-2x^2)/(1-2x+x^2))]` -/
def P7639394454455700770.Spec : Prop :=
  ∀ n, P7639394454455700770.a n = A055998 n

end A055998

/-! ## A055998.P6178386578709231747

`ogf((3x-2x^2)/(1-3x+3x^2-x^3))`
-/

namespace A055998.P6178386578709231747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, -2] [1, -3, 3, -1] n

end

end A055998.P6178386578709231747

namespace A055998

/-- `ogf((3x-2x^2)/(1-3x+3x^2-x^3))` -/
def P6178386578709231747.Spec : Prop :=
  ∀ n, P6178386578709231747.a n = A055998 n

end A055998

/-! ## A055998.P5404130920239469389

`-(∑[xor(n+1, -1)]+2)`
-/

namespace A055998.P5404130920239469389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A055998.P5404130920239469389

namespace A055998

/-- `-(∑[xor(n+1, -1)]+2)` -/
def P5404130920239469389.Spec : Prop :=
  ∀ n, P5404130920239469389.a n = A055998 n

end A055998

/-! ## A055998.P9519519484801245669

`-(Δ[-C(n+3, 3)]+3)`
-/

namespace A055998.P9519519484801245669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose (n + 3) 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n + 3)

end

end A055998.P9519519484801245669

namespace A055998

/-- `-(Δ[-C(n+3, 3)]+3)` -/
def P9519519484801245669.Spec : Prop :=
  ∀ n, P9519519484801245669.a n = A055998 n

end A055998

/-! ## A055998.P14523680206723541114

`xor(1, xor(1, ∑[n]+2*n))`
-/

namespace A055998.P14523680206723541114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j + 2 * n))

end

end A055998.P14523680206723541114

namespace A055998

/-- `xor(1, xor(1, ∑[n]+2*n))` -/
def P14523680206723541114.Spec : Prop :=
  ∀ n, (P14523680206723541114.a n : ℤ) = A055998 n

end A055998

/-! ## A055998.P11556764064232177949

`n+A000096(n)`
-/

namespace A055998.P11556764064232177949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A000096 n

end

end A055998.P11556764064232177949

namespace A055998

/-- `n+A000096(n)` -/
def P11556764064232177949.Spec : Prop :=
  ∀ n, P11556764064232177949.a n = A055998 n

end A055998

/-! ## A055998.P15228281353674738378

`2*n+A000217(n)`
-/

namespace A055998.P15228281353674738378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A000217 n

end

end A055998.P15228281353674738378

namespace A055998

/-- `2*n+A000217(n)` -/
def P15228281353674738378.Spec : Prop :=
  ∀ n, P15228281353674738378.a n = A055998 n

end A055998

/-!
# A055999: a(n) = n*(n + 7)/2.

The programs for A055999, the canonical program `A055999.P16398122736794671467` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055999 has offset 0).

The definition of A055999 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+7)/2` (program `A055999.P8602304910007488736`, by `A055999.P8602304910007488736.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A055999.P8602304910007488736

`n*(n+7)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A055999.P8602304910007488736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 7) : ℚ) / 2

end

end A055999.P8602304910007488736

namespace A055999

/-- `n*(n+7)/2` -/
def P8602304910007488736.Spec : Prop :=
  ∀ n, P8602304910007488736.a n = (A055999 n : ℚ)

theorem P8602304910007488736.correct : P8602304910007488736.Spec := by
  intro n
  induction n with
  | zero => simp [A055999, A055999.P8602304910007488736.a, A055999.P16398122736794671467.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A055999, Nat.add_sub_cancel, A055999.P8602304910007488736.a, A055999.P16398122736794671467.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A055999

/-! ## A055999.P16398122736794671467

`n+a(n-1)+3` with `a(0)=0`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055999

/-- `n+a(n-1)+3` -/
def P16398122736794671467.Spec : Prop :=
  ∀ n, (P16398122736794671467.a n : ℤ) = A055999 n

theorem P16398122736794671467.correct : P16398122736794671467.Spec := by
  intro n
  simp only [A055999]

end A055999

/-! ## A055999.P6116640035586957591

`C(n+4, 2)-6`
-/

namespace A055999.P6116640035586957591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 2 : ℤ) - 6

end

end A055999.P6116640035586957591

namespace A055999

/-- `C(n+4, 2)-6` -/
def P6116640035586957591.Spec : Prop :=
  ∀ n, P6116640035586957591.a n = A055999 n

end A055999

/-! ## A055999.P15887526999892299808

`record[(n-7)*n/2]`
-/

namespace A055999.P15887526999892299808
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 7 : ℚ) * ((n : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055999.P15887526999892299808

namespace A055999

/-- `record[(n-7)*n/2]` -/
def P15887526999892299808.Spec : Prop :=
  ∀ n, P15887526999892299808.a n = (A055999 n : ℚ)

end A055999

/-! ## A055999.P8259654293460728747

`∑[xor(2, ceil(acot(n)))+n]`
-/

namespace A055999.P8259654293460728747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 ⌈SequenceMachineLib.acot (n : ℝ)⌉ + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055999.P8259654293460728747

namespace A055999

/-- `∑[xor(2, ceil(acot(n)))+n]` -/
def P8259654293460728747.Spec : Prop :=
  ∀ n, P8259654293460728747.a n = A055999 n

end A055999

/-! ## A055999.P15612302318813585818

`∑[3%(n+1)²+n]`
-/

namespace A055999.P15612302318813585818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 % (n + 1) ^ 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055999.P15612302318813585818

namespace A055999

/-- `∑[3%(n+1)²+n]` -/
def P15612302318813585818.Spec : Prop :=
  ∀ n, (P15612302318813585818.a n : ℤ) = A055999 n

end A055999

/-! ## A055999.P16879117079898483775

`∑[ogf((4x-3x^2)/(1-2x+x^2))]`
-/

namespace A055999.P16879117079898483775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, -3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055999.P16879117079898483775

namespace A055999

/-- `∑[ogf((4x-3x^2)/(1-2x+x^2))]` -/
def P16879117079898483775.Spec : Prop :=
  ∀ n, P16879117079898483775.a n = A055999 n

end A055999

/-! ## A055999.P15647794866378407108

`ogf((4x-3x^2)/(1-3x+3x^2-x^3))`
-/

namespace A055999.P15647794866378407108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, -3] [1, -3, 3, -1] n

end

end A055999.P15647794866378407108

namespace A055999

/-- `ogf((4x-3x^2)/(1-3x+3x^2-x^3))` -/
def P15647794866378407108.Spec : Prop :=
  ∀ n, P15647794866378407108.a n = A055999 n

end A055999

/-! ## A055999.P7697390840788878299

`-(∑[xor(n+2, -1)]+3)`
-/

namespace A055999.P7697390840788878299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 2 : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A055999.P7697390840788878299

namespace A055999

/-- `-(∑[xor(n+2, -1)]+3)` -/
def P7697390840788878299.Spec : Prop :=
  ∀ n, P7697390840788878299.a n = A055999 n

end A055999

/-! ## A055999.P14381595843566371858

`∑[3*floor(atan(n+1))+n]`
-/

namespace A055999.P14381595843566371858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊Real.arctan (n + 1 : ℝ)⌋ + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055999.P14381595843566371858

namespace A055999

/-- `∑[3*floor(atan(n+1))+n]` -/
def P14381595843566371858.Spec : Prop :=
  ∀ n, P14381595843566371858.a n = A055999 n

end A055999

/-! ## A055999.P15771976045090234916

`∑[lcm(n+3, floor(atan(n+1)))]`
-/

namespace A055999.P15771976045090234916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 3 : ℤ) ⌊Real.arctan (n + 1 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055999.P15771976045090234916

namespace A055999

/-- `∑[lcm(n+3, floor(atan(n+1)))]` -/
def P15771976045090234916.Spec : Prop :=
  ∀ n, (P15771976045090234916.a n : ℤ) = A055999 n

end A055999

/-! ## A055999.P13596793503090721736

`∑[and(n+3, -1%(n+1))]`
-/

namespace A055999.P13596793503090721736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 3 : ℤ) (Int.tmod (-1) (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055999.P13596793503090721736

namespace A055999

/-- `∑[and(n+3, -1%(n+1))]` -/
def P13596793503090721736.Spec : Prop :=
  ∀ n, P13596793503090721736.a n = A055999 n

end A055999

/-! ## A055999.P9439942438595219546

`∑[a(and(2, n²))+n+3]` with `a(0)=0`
-/

namespace A055999.P9439942438595219546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (Nat.land 2 (n ^ 2)) + (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055999.P9439942438595219546

namespace A055999

/-- `∑[a(and(2, n²))+n+3]` -/
def P9439942438595219546.Spec : Prop :=
  ∀ n, (P9439942438595219546.a n : ℤ) = A055999 n

end A055999

/-! ## A055999.P3597375945249763274

`∑[a(C(2, n+2))+n+3]` with `a(0)=0`
-/

namespace A055999.P3597375945249763274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (Nat.choose 2 (n + 2)) + (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055999.P3597375945249763274

namespace A055999

/-- `∑[a(C(2, n+2))+n+3]` -/
def P3597375945249763274.Spec : Prop :=
  ∀ n, (P3597375945249763274.a n : ℤ) = A055999 n

end A055999

/-! ## A055999.P11524536684121000911

`2*n+A000096(n)`
-/

namespace A055999.P11524536684121000911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A000096 n

end

end A055999.P11524536684121000911

namespace A055999

/-- `2*n+A000096(n)` -/
def P11524536684121000911.Spec : Prop :=
  ∀ n, P11524536684121000911.a n = A055999 n

end A055999

/-! ## A055999.P12245360303101511662

`3*n+A000217(n)`
-/

namespace A055999.P12245360303101511662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + A000217 n

end

end A055999.P12245360303101511662

namespace A055999

/-- `3*n+A000217(n)` -/
def P12245360303101511662.Spec : Prop :=
  ∀ n, P12245360303101511662.a n = A055999 n

end A055999

/-! ## A055999.P16544611539928223116

`4*n+A161680(n)`
-/

namespace A055999.P16544611539928223116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + A161680 n

end

end A055999.P16544611539928223116

namespace A055999

/-- `4*n+A161680(n)` -/
def P16544611539928223116.Spec : Prop :=
  ∀ n, P16544611539928223116.a n = A055999 n

end A055999

/-! ## A055999.P889051252006197420

`A034856(n+1)+n-1`
-/

namespace A055999.P889051252006197420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 1) + ((n : ℤ) - 1)

end

end A055999.P889051252006197420

namespace A055999

/-- `A034856(n+1)+n-1` -/
def P889051252006197420.Spec : Prop :=
  ∀ n, P889051252006197420.a n = A055999 n

end A055999

/-! ## A055999.P842023471980169450

`2*(n-1)+A000124(n+1)`
-/

namespace A055999.P842023471980169450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - 1) + A000124 (n + 1)

end

end A055999.P842023471980169450

namespace A055999

/-- `2*(n-1)+A000124(n+1)` -/
def P842023471980169450.Spec : Prop :=
  ∀ n, P842023471980169450.a n = A055999 n

end A055999

