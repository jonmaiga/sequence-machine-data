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
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
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
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
# A286200: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 177", based on the 5-celled von Neumann neighborhood.

The programs for A286200, there is no canonical definition to state claims against.
-/

/-! ## A286200.P7316564214181715544

`A007088(A286202(n))`
-/

namespace A286200.P7316564214181715544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286202 n).toNat

end

end A286200.P7316564214181715544

/-! ## A286200.P17908132944655246031

`A185544(2*A286202(n))`
-/

namespace A286200.P17908132944655246031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286202 n).toNat

end

end A286200.P17908132944655246031

/-! ## A286200.P13406732782876211897

`A286411(A097448(n²))`
-/

namespace A286200.P13406732782876211897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286411 (A097448 (n ^ 2)).toNat

end

end A286200.P13406732782876211897

/-! ## A286200.P15042494461757130971

`A286411(A004892(n+1))`
-/

namespace A286200.P15042494461757130971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286411 (A004892 (n + 1)).toNat

end

end A286200.P15042494461757130971

/-! ## A286200.P1008299675461024768

`A286411(A004903(n+1))`
-/

namespace A286200.P1008299675461024768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286411 (A004903 (n + 1)).toNat

end

end A286200.P1008299675461024768

/-!
# A286201: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 177", based on the 5-celled von Neumann neighborhood.

The programs for A286201, there is no canonical definition to state claims against.
-/

/-! ## A286201.P9460334811360508691

`A007088(A286203(n))`
-/

namespace A286201.P9460334811360508691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286203 n).toNat

end

end A286201.P9460334811360508691

/-! ## A286201.P8887576626738993442

`A185544(2*A286203(n))`
-/

namespace A286201.P8887576626738993442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286203 n).toNat

end

end A286201.P8887576626738993442

/-! ## A286201.P11457074553666636709

`∏{e}[5^n, A286412(#)]`
-/

namespace A286201.P11457074553666636709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A286412 (Nat.factorization (f1 n) p)

end

end A286201.P11457074553666636709

/-! ## A286201.P3725627241342659341

`A286412(A004892(n+1))`
-/

namespace A286201.P3725627241342659341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286412 (A004892 (n + 1)).toNat

end

end A286201.P3725627241342659341

/-! ## A286201.P16476059134596167227

`A286412(A004914(n+1))`
-/

namespace A286201.P16476059134596167227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286412 (A004914 (n + 1)).toNat

end

end A286201.P16476059134596167227

/-!
# A286202: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 177", based on the 5-celled von Neumann neighborhood.

The programs for A286202, there is no canonical definition to state claims against.
-/

/-! ## A286202.P10573092875806538515

`A286413(A004891(n+1))`
-/

namespace A286202.P10573092875806538515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286413 (A004891 (n + 1)).toNat

end

end A286202.P10573092875806538515

/-! ## A286202.P14520574096618480802

`A286413(A004902(n+1))`
-/

namespace A286202.P14520574096618480802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286413 (A004902 (n + 1)).toNat

end

end A286202.P14520574096618480802

/-! ## A286202.P14444386645951135479

`A286413(A004913(n+1))`
-/

namespace A286202.P14444386645951135479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286413 (A004913 (n + 1)).toNat

end

end A286202.P14444386645951135479

/-! ## A286202.P8217175272596833956

`A286413(A032551(n+1))`
-/

namespace A286202.P8217175272596833956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286413 (A032551 (n + 1)).toNat

end

end A286202.P8217175272596833956

/-!
# A286203: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 177", based on the 5-celled von Neumann neighborhood.

The programs for A286203, there is no canonical definition to state claims against.
-/

/-! ## A286203.P10676250231839876857

`A286414(A004892(n+1))`
-/

namespace A286203.P10676250231839876857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286414 (A004892 (n + 1)).toNat

end

end A286203.P10676250231839876857

/-! ## A286203.P10855038932701018706

`A286414(A004903(n+1))`
-/

namespace A286203.P10855038932701018706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286414 (A004903 (n + 1)).toNat

end

end A286203.P10855038932701018706

/-! ## A286203.P225597318049434649

`A286414(A004914(n+1))`
-/

namespace A286203.P225597318049434649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286414 (A004914 (n + 1)).toNat

end

end A286203.P225597318049434649

/-! ## A286203.P7986043855993555143

`A286414(A228912(n)+n)`
-/

namespace A286203.P7986043855993555143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286414 (A228912 n + (n : ℤ)).toNat

end

end A286203.P7986043855993555143

/-! ## A286203.P81868695806760659

`A286414(n)%A122736(n)`
-/

namespace A286203.P81868695806760659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286414 n) (A122736 n)

end

end A286203.P81868695806760659

/-!
# A286204: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 179", based on the 5-celled von Neumann neighborhood.

The programs for A286204, there is no canonical definition to state claims against.
-/

/-! ## A286204.P17346849485779038420

`A007088(A286206(n))`
-/

namespace A286204.P17346849485779038420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286206 n).toNat

end

end A286204.P17346849485779038420

/-! ## A286204.P2207066070434374568

`A286811(A089840(∑[n]))`
-/

namespace A286204.P2207066070434374568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286811 (A089840 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A286204.P2207066070434374568

/-! ## A286204.P2893055230373520368

`A286498(A122203(∑[n]))`
-/

namespace A286204.P2893055230373520368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286498 (A122203 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A286204.P2893055230373520368

/-! ## A286204.P11492644335895924896

`A286498(A122204(∑[n]))`
-/

namespace A286204.P11492644335895924896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286498 (A122204 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A286204.P11492644335895924896

/-! ## A286204.P13395100213361884287

`A286498(A122284(∑[n]))`
-/

namespace A286204.P13395100213361884287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286498 (A122284 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A286204.P13395100213361884287

/-!
# A286205: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 179", based on the 5-celled von Neumann neighborhood.

The programs for A286205, there is no canonical definition to state claims against.
-/

/-! ## A286205.P16819751256015424141

`A007088(A286207(n))`
-/

namespace A286205.P16819751256015424141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286207 n).toNat

end

end A286205.P16819751256015424141

/-! ## A286205.P9340867785361284748

`A286500(A089840(∑[n]))`
-/

namespace A286205.P9340867785361284748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286500 (A089840 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A286205.P9340867785361284748

/-! ## A286205.P8259061960073166764

`A286500(A122204(∑[n]))`
-/

namespace A286205.P8259061960073166764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286500 (A122204 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A286205.P8259061960073166764

/-! ## A286205.P642144159285506365

`A286500(A122287(∑[n]))`
-/

namespace A286205.P642144159285506365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286500 (A122287 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A286205.P642144159285506365

/-! ## A286205.P14466200094892469680

`A287099(A122201(∑[n]))`
-/

namespace A286205.P14466200094892469680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287099 (A122201 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A286205.P14466200094892469680

/-!
# A286206: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 179", based on the 5-celled von Neumann neighborhood.

The programs for A286206, there is no canonical definition to state claims against.
-/

/-! ## A286206.P6179735444032041876

`and(A038572(A286501(n)), A286501(n))`
-/

namespace A286206.P6179735444032041876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038572 (A286501 n).toNat) (A286501 n)

end

end A286206.P6179735444032041876

/-! ## A286206.P8782809856987177812

`A286501(n)-A008598(A172543(n+1))`
-/

namespace A286206.P8782809856987177812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286501 n - A008598 (A172543 (n + 1)).toNat

end

end A286206.P8782809856987177812

/-! ## A286206.P6155147251414875418

`A115873(A286207(n))`
-/

namespace A286206.P6155147251414875418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115873 (A286207 n).toNat

end

end A286206.P6155147251414875418

/-! ## A286206.P7573965030122714583

`A115873(A286502(n))`
-/

namespace A286206.P7573965030122714583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115873 (A286502 n).toNat

end

end A286206.P7573965030122714583

/-! ## A286206.P4558092814025698428

`A115873(A287101(n))`
-/

namespace A286206.P4558092814025698428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115873 (A287101 n).toNat

end

end A286206.P4558092814025698428

/-!
# A286207: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 179", based on the 5-celled von Neumann neighborhood.

The programs for A286207, there is no canonical definition to state claims against.
-/

/-! ## A286207.P15787194699127581240

`A057889(A286502(n))`
-/

namespace A286207.P15787194699127581240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A286502 n).toNat

end

end A286207.P15787194699127581240

/-! ## A286207.P17564117269842117780

`A057889(A287101(n))`
-/

namespace A286207.P17564117269842117780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A287101 n).toNat

end

end A286207.P17564117269842117780

/-! ## A286207.P13883515526175622787

`A057889(A287189(n))`
-/

namespace A286207.P13883515526175622787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A287189 n).toNat

end

end A286207.P13883515526175622787

/-! ## A286207.P16289715633578743440

`A286502(A122202(∑[n]))`
-/

namespace A286207.P16289715633578743440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286502 (A122202 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A286207.P16289715633578743440

/-! ## A286207.P11587187124638119117

`A286502(A122283(∑[n]))`
-/

namespace A286207.P11587187124638119117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286502 (A122283 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A286207.P11587187124638119117

/-!
# A286209: Number of n X 1 0..1 arrays with the number of 1's king-move adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A286209, there is no canonical definition to state claims against.
-/

/-! ## A286209.P16388925220382359061

`A293087(C(n, 2)+1)`
-/

namespace A286209.P16388925220382359061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (Nat.choose n 2 + 1)

end

end A286209.P16388925220382359061

/-! ## A286209.P14674606592351890095

`A293087(∑[abs(1-n)])`
-/

namespace A286209.P14674606592351890095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A286209.P14674606592351890095

/-! ## A286209.P6902474068804945137

`A289651(∑[abs(1-n)])`
-/

namespace A286209.P6902474068804945137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289651 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A286209.P6902474068804945137

/-! ## A286209.P1912623244411043721

`A286216(∑[abs(1-n)])`
-/

namespace A286209.P1912623244411043721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286216 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A286209.P1912623244411043721

/-! ## A286209.P17176869594147407559

`A286979(∑[abs(1-n)])`
-/

namespace A286209.P17176869594147407559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286979 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A286209.P17176869594147407559

/-!
# A286210: Number of n X 2 0..1 arrays with the number of 1's king-move adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A286210, there is no canonical definition to state claims against.
-/

/-! ## A286210.P7276523069221991102

`A286216(∑[n+1]+2)`
-/

namespace A286210.P7276523069221991102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286216 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A286210.P7276523069221991102

/-! ## A286210.P11013762202860930631

`record[A286216(A286234(n+1)+1)]`
-/

namespace A286210.P11013762202860930631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286216 (A286234 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286210.P11013762202860930631

/-! ## A286210.P12581086939911842386

`record[A286216(A286235(n+1)+1)]`
-/

namespace A286210.P12581086939911842386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286216 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286210.P12581086939911842386

/-! ## A286210.P11169864666889588153

`record[A286216(A286236(n+1)+1)]`
-/

namespace A286210.P11169864666889588153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286216 (A286236 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286210.P11169864666889588153

/-! ## A286210.P17973520065921974167

`record[A286216(A286238(n+1)+1)]`
-/

namespace A286210.P17973520065921974167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286216 (A286238 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286210.P17973520065921974167

/-!
# A286211: Number of n X 3 0..1 arrays with the number of 1's king-move adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A286211, there is no canonical definition to state claims against.
-/

/-! ## A286211.P16114539405509404408

`A286216(∑[n+2]+4)`
-/

namespace A286211.P16114539405509404408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286216 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A286211.P16114539405509404408

/-! ## A286211.P8604487485830278268

`A286216(A167614(n+1))+A185245(n)`
-/

namespace A286211.P8604487485830278268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286216 (A167614 (n + 1)).toNat + A185245 n

end

end A286211.P8604487485830278268

/-! ## A286211.P3083663516042060583

`A177849(n)*A286216(A167614(n+1))`
-/

namespace A286211.P3083663516042060583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 n * A286216 (A167614 (n + 1)).toNat

end

end A286211.P3083663516042060583

/-! ## A286211.P507922113071159411

`A286216(A167614(n+1))%A013740(n)`
-/

namespace A286211.P507922113071159411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286216 (A167614 (n + 1)).toNat) (A013740 n)

end

end A286211.P507922113071159411

/-! ## A286211.P3036128130559595925

`lcm(A051194(n+1), A286216(A167614(n+1)))`
-/

namespace A286211.P3036128130559595925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A051194 (n + 1)) (A286216 (A167614 (n + 1)).toNat)

end

end A286211.P3036128130559595925

/-!
# A286212: Number of n X 4 0..1 arrays with the number of 1's king-move adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A286212, there is no canonical definition to state claims against.
-/

/-! ## A286212.P3756964555986724808

`A286216(A141214(n)+7)`
-/

namespace A286212.P3756964555986724808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286216 (A141214 n + 7).toNat

end

end A286212.P3756964555986724808

/-! ## A286212.P5568812583581026115

`A286216(A052905(n)+9)`
-/

namespace A286212.P5568812583581026115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286216 (A052905 n + 9).toNat

end

end A286212.P5568812583581026115

/-! ## A286212.P10749117518639128927

`A286216(A055999(n)+10)`
-/

namespace A286212.P10749117518639128927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286216 (A055999 n + 10).toNat

end

end A286212.P10749117518639128927

/-! ## A286212.P5615677902572913824

`A286216(A167614(n+2)+1)`
-/

namespace A286212.P5615677902572913824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286216 (A167614 (n + 2) + 1).toNat

end

end A286212.P5615677902572913824

/-! ## A286212.P446090921743352610

`A286216(A112355(n+1)+4)`
-/

namespace A286212.P446090921743352610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286216 (A112355 (n + 1) + 4).toNat

end

end A286212.P446090921743352610

/-!
# A286213: Number of n X 5 0..1 arrays with the number of 1's king-move adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A286213, there is no canonical definition to state claims against.
-/

/-! ## A286213.P10645679327782404476

`A286216(A155212(n)+13)`
-/

namespace A286213.P10645679327782404476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286216 (A155212 n + 13).toNat

end

end A286213.P10645679327782404476

/-! ## A286213.P13518859940729006076

`A286216(A056000(n)+15)`
-/

namespace A286213.P13518859940729006076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286216 (A056000 n + 15).toNat

end

end A286213.P13518859940729006076

/-! ## A286213.P3691839674240869692

`A286216(eq[7, A066657(n)])`
-/

namespace A286213.P3691839674240869692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286216 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286213.P3691839674240869692

/-! ## A286213.P14005059270785296486

`A286216(eq[6, A131818(n+1)])`
-/

namespace A286213.P14005059270785296486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286216 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286213.P14005059270785296486

/-! ## A286213.P8204717960421447538

`A286216(Δ[A264443(n)])`
-/

namespace A286213.P8204717960421447538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286216 (f1 (n + 1) - f1 n).toNat

end

end A286213.P8204717960421447538

/-!
# A286214: Number of n X 6 0..1 arrays with the number of 1's king-move adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A286214, there is no canonical definition to state claims against.
-/

/-! ## A286214.P7807315828522362243

`A286216(eq[7, A131818(n+1)])`
-/

namespace A286214.P7807315828522362243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286216 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286214.P7807315828522362243

/-! ## A286214.P11454967220000556357

`A286216(A374007(n+1))`
-/

namespace A286214.P11454967220000556357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286216 (A374007 (n + 1)).toNat

end

end A286214.P11454967220000556357

/-! ## A286214.P5232823234375838476

`A286216(A052905(n+3))`
-/

namespace A286214.P5232823234375838476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286216 (A052905 (n + 3)).toNat

end

end A286214.P5232823234375838476

/-! ## A286214.P9693695949528863417

`A286216(A302537(n)+15)`
-/

namespace A286214.P9693695949528863417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286216 (A302537 n + 15).toNat

end

end A286214.P9693695949528863417

/-! ## A286214.P4706360317230947135

`A286216(eq[3, A219347(n)])`
-/

namespace A286214.P4706360317230947135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286216 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286214.P4706360317230947135

/-!
# A286215: Number of n X 7 0..1 arrays with the number of 1's king-move adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A286215, there is no canonical definition to state claims against.
-/

/-! ## A286215.P2976919158044362964

`A286216(A056119(n)+28)`
-/

namespace A286215.P2976919158044362964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286216 (A056119 n + 28).toNat

end

end A286215.P2976919158044362964

/-! ## A286215.P11163710366615192897

`A286216(eq[11, A066657(n)])`
-/

namespace A286215.P11163710366615192897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286216 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286215.P11163710366615192897

/-! ## A286215.P6633681932840398224

`A286216(eq[8, A131818(n+1)])`
-/

namespace A286215.P6633681932840398224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286216 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286215.P6633681932840398224

/-! ## A286215.P11620212801997190535

`A286216(A374008(n+1))`
-/

namespace A286215.P11620212801997190535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286216 (A374008 (n + 1)).toNat

end

end A286215.P11620212801997190535

/-! ## A286215.P14053858432181308713

`A286216(eq[4, A219347(n)])`
-/

namespace A286215.P14053858432181308713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286216 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286215.P14053858432181308713

/-!
# A286216: T(n,k) = Number of n X k 0..1 arrays with the number of 1's king-move adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A286216, there is no canonical definition to state claims against.
-/

/-! ## A286216.P5272733780858702787

`A089368(A128592(n))`
-/

namespace A286216.P5272733780858702787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089368 (A128592 n).toNat

end

end A286216.P5272733780858702787

/-! ## A286216.P16830414031070495366

`A145395(A176428(n))`
-/

namespace A286216.P16830414031070495366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145395 (A176428 n).toNat

end

end A286216.P16830414031070495366

/-! ## A286216.P12003339034523274254

`A241317(A081581(n))`
-/

namespace A286216.P12003339034523274254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241317 (A081581 n).toNat

end

end A286216.P12003339034523274254

/-! ## A286216.P15042888004446045932

`A186709(A146987(n))`
-/

namespace A286216.P15042888004446045932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186709 (A146987 n).toNat

end

end A286216.P15042888004446045932

/-! ## A286216.P8597612434239250773

`A103634(A347975(n))`
-/

namespace A286216.P8597612434239250773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103634 (A347975 n).toNat

end

end A286216.P8597612434239250773

/-!
# A286217: Product of the n-th sexy prime triple.

The programs for A286217, there is no canonical definition to state claims against.
-/

/-! ## A286217.P86458528363168910

`A046118(n+1)*A046119(n+1)*A046120(n+1)`
-/

namespace A286217.P86458528363168910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046118 (n + 1) * A046119 (n + 1) * A046120 (n + 1)

end

end A286217.P86458528363168910

/-! ## A286217.P200895896658569274

`A275681(3*n+1)*A275681(3*n+2)*A275681(3*(n+1))`
-/

namespace A286217.P200895896658569274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275681 (3 * n + 1) * A275681 (3 * n + 2) * A275681 (3 * (n + 1))

end

end A286217.P200895896658569274

/-!
# A286218: Number of partitions of n into parts with an odd number of prime divisors (counted with multiplicity).

The programs for A286218, there is no canonical definition to state claims against.
-/

/-! ## A286218.P3228475819779862338

`Δ[A053264(3*n+1)]%A243078(2*n+3)`
-/

namespace A286218.P3228475819779862338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053264 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A243078 (2 * n + 3))

end

end A286218.P3228475819779862338

/-! ## A286218.P308167244886348954

`Δ[A053264(3*n+1)%A261344(2*n+3)]`
-/

namespace A286218.P308167244886348954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053264 (3 * n + 1)) (A261344 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286218.P308167244886348954

/-! ## A286218.P3545243585479709249

`A277903(A090499(A052954(n)))`
-/

namespace A286218.P3545243585479709249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277903 (A090499 (A052954 n).toNat).toNat

end

end A286218.P3545243585479709249

/-! ## A286218.P10268427400685579164

`floor(A301588(n)/A020639(A326081(n)))`
-/

namespace A286218.P10268427400685579164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A301588 n : ℚ) / (A020639 (A326081 n).toNat : ℚ)⌋

end

end A286218.P10268427400685579164

/-! ## A286218.P3382274343118253176

`A127321(A345333(n)+A023894(n))`
-/

namespace A286218.P3382274343118253176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A345333 n + A023894 n).toNat

end

end A286218.P3382274343118253176

/-!
# A286219: Number of partitions of n into parts with an even number of prime divisors (counted with multiplicity).

The programs for A286219, there is no canonical definition to state claims against.
-/

/-! ## A286219.P10058491753907964613

`A048766(or(A112835(n), A345461(n+1)))`
-/

namespace A286219.P10058491753907964613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (Int.lor (A112835 n) (A345461 (n + 1))).toNat

end

end A286219.P10058491753907964613

/-! ## A286219.P14425718416127797674

`A322791(A002095(n)%A342192(3*n+2))`
-/

namespace A286219.P14425718416127797674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322791 (Int.tmod (A002095 n) (A342192 (3 * n + 2))).toNat

end

end A286219.P14425718416127797674

/-! ## A286219.P1584325821610767546

`A127321(A047166(n+1)+1+n)`
-/

namespace A286219.P1584325821610767546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A047166 (n + 1) + 1 + (n : ℤ)).toNat

end

end A286219.P1584325821610767546

/-! ## A286219.P4073440702222347628

`or(A020753(A003114(n)), A305930(n))`
-/

namespace A286219.P4073440702222347628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020753 (A003114 n).toNat) (A305930 n)

end

end A286219.P4073440702222347628

/-! ## A286219.P11286302518003203140

`or(A020753(A003114(n)), A316717(n))`
-/

namespace A286219.P11286302518003203140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020753 (A003114 n).toNat) (A316717 n)

end

end A286219.P11286302518003203140

/-!
# A286220: Number of partitions of n into distinct parts with an odd number of distinct prime divisors.

The programs for A286220, there is no canonical definition to state claims against.
-/

/-! ## A286220.P8036993993826809815

`A054685(n)+A025456(A185255(n))`
-/

namespace A286220.P8036993993826809815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054685 n + A025456 (A185255 n).toNat

end

end A286220.P8036993993826809815

/-! ## A286220.P13624353981784360173

`A054685(n)+A002266(A034461(n+1)!)`
-/

namespace A286220.P13624353981784360173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054685 n + A002266 (Nat.factorial (A034461 (n + 1)).toNat)

end

end A286220.P13624353981784360173

/-! ## A286220.P3369080320577907435

`A054685(n)+A029331(A034461(n+1)!)`
-/

namespace A286220.P3369080320577907435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054685 n + A029331 (Nat.factorial (A034461 (n + 1)).toNat)

end

end A286220.P3369080320577907435

/-! ## A286220.P6559946162831549290

`A297155(A034461(n+1)!)+A054685(n)`
-/

namespace A286220.P6559946162831549290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (Nat.factorial (A034461 (n + 1)).toNat) + A054685 n

end

end A286220.P6559946162831549290

/-!
# A286221: Number of partitions of n into distinct parts with an even number of distinct prime divisors.

The programs for A286221, there is no canonical definition to state claims against.
-/

/-! ## A286221.P11729646660585962793

`A321347(n-A057427(A185255(n)))`
-/

namespace A286221.P11729646660585962793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321347 ((n : ℤ) - A057427 (A185255 n).toNat).toNat

end

end A286221.P11729646660585962793

/-! ## A286221.P5183656061828500948

`A321347(n-A240857(A185255(n)))`
-/

namespace A286221.P5183656061828500948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321347 ((n : ℤ) - A240857 (A185255 n).toNat).toNat

end

end A286221.P5183656061828500948

/-! ## A286221.P7065817717660285890

`A321347(n)-A185284(A332808(n+1))`
-/

namespace A286221.P7065817717660285890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321347 n - A185284 (A332808 (n + 1)).toNat

end

end A286221.P7065817717660285890

/-! ## A286221.P9515424749613134417

`A321347(n)-A054685(A034461(n+1)!)`
-/

namespace A286221.P9515424749613134417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321347 n - A054685 (Nat.factorial (A034461 (n + 1)).toNat)

end

end A286221.P9515424749613134417

/-! ## A286221.P4883915110065301335

`xor(A309307(A034461(n+1)!), A321347(n))`
-/

namespace A286221.P4883915110065301335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A309307 (Nat.factorial (A034461 (n + 1)).toNat)) (A321347 n)

end

end A286221.P4883915110065301335

/-!
# A286222: Number of partitions of n into distinct parts with an odd number of prime divisors (counted with multiplicity).

The programs for A286222, there is no canonical definition to state claims against.
-/

/-! ## A286222.P15470224501403326092

`A037812(or(A066815(n+4), A180631(n+1)))`
-/

namespace A286222.P15470224501403326092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037812 (Int.lor (A066815 (n + 4)) (A180631 (n + 1))).toNat

end

end A286222.P15470224501403326092

/-! ## A286222.P13195932902413091529

`A240857(A353899(n+1)+A327498(n+1))`
-/

namespace A286222.P13195932902413091529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240857 (A353899 (n + 1) + A327498 (n + 1)).toNat

end

end A286222.P13195932902413091529

/-! ## A286222.P4033635946725845082

`A312001(A192959(n))%4`
-/

namespace A286222.P4033635946725845082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A312001 (A192959 n).toNat) 4

end

end A286222.P4033635946725845082

/-! ## A286222.P4569085686539528957

`A199123(n)-A341619(A088305(n))`
-/

namespace A286222.P4569085686539528957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199123 n - A341619 (A088305 n).toNat

end

end A286222.P4569085686539528957

/-! ## A286222.P538517618917522769

`A029310(eq[A008616(n), A029309(n)])`
-/

namespace A286222.P538517618917522769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029309 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A286222.P538517618917522769

/-!
# A286223: Number of partitions of n into distinct parts with an even number of prime divisors (counted with multiplicity).

The programs for A286223, there is no canonical definition to state claims against.
-/

/-! ## A286223.P3114162881629250550

`A157045(A205478(n)+1)`
-/

namespace A286223.P3114162881629250550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157045 (A205478 n + 1).toNat

end

end A286223.P3114162881629250550

/-! ## A286223.P5610022888682018529

`A107110(A275972(n)+A049019(n+1))`
-/

namespace A286223.P5610022888682018529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107110 (A275972 n + A049019 (n + 1)).toNat

end

end A286223.P5610022888682018529

/-! ## A286223.P7101045464170424321

`A284505(A342771(n+1))*A307857(A300840(n+1))`
-/

namespace A286223.P7101045464170424321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284505 (A342771 (n + 1)).toNat * A307857 (A300840 (n + 1)).toNat

end

end A286223.P7101045464170424321

/-!
# A286224: Number of compositions (ordered partitions) of n into parts with an odd number of distinct prime divisors.

The programs for A286224, there is no canonical definition to state claims against.
-/

/-! ## A286224.P18354200120268388356

`or(dr(A185255(n)), A280195(n))`
-/

namespace A286224.P18354200120268388356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.digitalRoot (A185255 n) : ℤ) (A280195 n)

end

end A286224.P18354200120268388356

/-! ## A286224.P13948547188876360740

`or(A185284(A332808(n+1)), A280195(n))`
-/

namespace A286224.P13948547188876360740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 (A332808 (n + 1)).toNat) (A280195 n)

end

end A286224.P13948547188876360740

/-! ## A286224.P2900663495505361141

`or(A010054(A064189(2*(n+2))), A280195(n))`
-/

namespace A286224.P2900663495505361141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A064189 (2 * (n + 2))).toNat) (A280195 n)

end

end A286224.P2900663495505361141

/-! ## A286224.P15765431001323760449

`or(A025442(A124944(3*n+2)), A280195(n))`
-/

namespace A286224.P15765431001323760449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025442 (A124944 (3 * n + 2)).toNat) (A280195 n)

end

end A286224.P15765431001323760449

/-! ## A286224.P16849147304327807247

`A280195(n)+A185284(A094994(n))`
-/

namespace A286224.P16849147304327807247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280195 n + A185284 (A094994 n).toNat

end

end A286224.P16849147304327807247

/-!
# A286225: Number of compositions (ordered partitions) of n into parts with an even number of distinct prime divisors.

The programs for A286225, there is no canonical definition to state claims against.
-/

/-! ## A286225.P2694084168119632340

`ceil((A000196(A036378(n))+1)/ϕ)-1`
-/

namespace A286225.P2694084168119632340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000196 (A036378 n).toNat + 1 : ℝ) / Real.goldenRatio⌉ - 1

end

end A286225.P2694084168119632340

/-! ## A286225.P14086951980105549913

`A005206(A000196(A036378(n)))`
-/

namespace A286225.P14086951980105549913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A000196 (A036378 n).toNat).toNat

end

end A286225.P14086951980105549913

/-! ## A286225.P233867281216443549

`A000267(A090620(A007053(n)))`
-/

namespace A286225.P233867281216443549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A090620 (A007053 n).toNat).toNat

end

end A286225.P233867281216443549

/-! ## A286225.P6609050297770854189

`A005206(A000196(Δ[A007053(n)]))`
-/

namespace A286225.P6609050297770854189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A000196 (f1 (n + 1) - f1 n).toNat).toNat

end

end A286225.P6609050297770854189

/-! ## A286225.P1074571350787030288

`A259899(A260403(n)+A029310(n))`
-/

namespace A286225.P1074571350787030288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259899 (A260403 n + A029310 n).toNat

end

end A286225.P1074571350787030288

/-!
# A286226: Number of compositions (ordered partitions) of n into parts with an odd number of prime divisors (counted with multiplicity).

The programs for A286226, there is no canonical definition to state claims against.
-/

/-! ## A286226.P11761757990538803932

`A340998(A248902(n+1))+A286970(n)`
-/

namespace A286226.P11761757990538803932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A248902 (n + 1)).toNat + 140) + A286970 n

end

end A286226.P11761757990538803932

/-! ## A286226.P10058225414091698297

`or(A023360(n), A339627(A034885(n+2)))`
-/

namespace A286226.P10058225414091698297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A023360 n) (A339627 (A034885 (n + 2)).toNat)

end

end A286226.P10058225414091698297

/-!
# A286227: Number of compositions (ordered partitions) of n into parts with an even number of prime divisors (counted with multiplicity).

The programs for A286227, there is no canonical definition to state claims against.
-/

/-! ## A286227.P13367193419044528674

`A137735(A048766(2*n)*A212366(2*n))`
-/

namespace A286227.P13367193419044528674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A048766 (2 * n) * A212366 (2 * n)).toNat

end

end A286227.P13367193419044528674

/-! ## A286227.P9046644146067412649

`A257212(A166297(n+1))`
-/

namespace A286227.P9046644146067412649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257212 (A166297 (n + 1)).toNat

end

end A286227.P9046644146067412649

/-! ## A286227.P10204192576141934207

`A321535(n)+A000035(A185234(n))`
-/

namespace A286227.P10204192576141934207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321535 n + A000035 (A185234 n).toNat

end

end A286227.P10204192576141934207

/-! ## A286227.P6288441757979348364

`A105224(A066873(n+1)+A000203(n+1))`
-/

namespace A286227.P6288441757979348364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A066873 (n + 1) + A000203 (n + 1)).toNat

end

end A286227.P6288441757979348364

/-! ## A286227.P17602934303776838626

`A105224(A301987(n+1)+A066873(n+1))`
-/

namespace A286227.P17602934303776838626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A301987 (n + 1) + A066873 (n + 1)).toNat

end

end A286227.P17602934303776838626

/-!
# A286228: Numbers n such that d(n) = 2^omega(n) + omega(n) where d = A000005 and omega = A001221.

The programs for A286228, the canonical program `A286228.P2619244444952308733` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286228 has offset 1).

The definition of A286228 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286228.P2619244444952308733

`∪[A054753(n+1), A280076(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A286228

/-- `∪[A054753(n+1), A280076(n+1)]` -/
def P2619244444952308733.Spec : Prop :=
  ∀ n, (P2619244444952308733.a n : ℤ) = A286228 (n + 1)

theorem P2619244444952308733.correct : P2619244444952308733.Spec := by
  intro n
  simp only [A286228, Nat.add_sub_cancel]

end A286228

/-! ## A286228.P7096308143712882911

`filter[A081619(n+1), A359471(#)]`
-/

namespace A286228.P7096308143712882911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A286228.P7096308143712882911

namespace A286228

/-- `filter[A081619(n+1), A359471(#)]` -/
def P7096308143712882911.Spec : Prop :=
  ∀ n, P7096308143712882911.a n = A286228 (n + 1)

end A286228

/-! ## A286228.P1758676140041757867

`filter[A374904(n+1), A359471(#)]`
-/

namespace A286228.P1758676140041757867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A286228.P1758676140041757867

namespace A286228

/-- `filter[A374904(n+1), A359471(#)]` -/
def P1758676140041757867.Spec : Prop :=
  ∀ n, P1758676140041757867.a n = A286228 (n + 1)

end A286228

/-! ## A286228.P15410586962657498810

`filter[A081619(n+1), A340369(#)]`
-/

namespace A286228.P15410586962657498810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A286228.P15410586962657498810

namespace A286228

/-- `filter[A081619(n+1), A340369(#)]` -/
def P15410586962657498810.Spec : Prop :=
  ∀ n, P15410586962657498810.a n = A286228 (n + 1)

end A286228

/-! ## A286228.P15859711912645275616

`filter[A374904(n+1), A340369(#)]`
-/

namespace A286228.P15859711912645275616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A286228.P15859711912645275616

namespace A286228

/-- `filter[A374904(n+1), A340369(#)]` -/
def P15859711912645275616.Spec : Prop :=
  ∀ n, P15859711912645275616.a n = A286228 (n + 1)

end A286228

/-! ## A286228.P4086285788033857749

`filter[A230843(n+1), A005171(#)]`
-/

namespace A286228.P4086285788033857749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A286228.P4086285788033857749

namespace A286228

/-- `filter[A230843(n+1), A005171(#)]` -/
def P4086285788033857749.Spec : Prop :=
  ∀ n, P4086285788033857749.a n = A286228 (n + 1)

end A286228

/-! ## A286228.P10661814593105812905

`filter[A230843(n+1), A087049(#)]`
-/

namespace A286228.P10661814593105812905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A286228.P10661814593105812905

namespace A286228

/-- `filter[A230843(n+1), A087049(#)]` -/
def P10661814593105812905.Spec : Prop :=
  ∀ n, P10661814593105812905.a n = A286228 (n + 1)

end A286228

/-! ## A286228.P1256927906223195577

`filter[A230843(n+1), A353380(#)]`
-/

namespace A286228.P1256927906223195577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353380 (f1 j).toNat = 1) n)

end

end A286228.P1256927906223195577

namespace A286228

/-- `filter[A230843(n+1), A353380(#)]` -/
def P1256927906223195577.Spec : Prop :=
  ∀ n, P1256927906223195577.a n = A286228 (n + 1)

end A286228

/-! ## A286228.P3587599667951850266

`∩[A081619(n+1), A230843(n+1)]`
-/

namespace A286228.P3587599667951850266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A286228.P3587599667951850266

namespace A286228

/-- `∩[A081619(n+1), A230843(n+1)]` -/
def P3587599667951850266.Spec : Prop :=
  ∀ n, (P3587599667951850266.a n : ℤ) = A286228 (n + 1)

end A286228

/-! ## A286228.P1312759604483387046

`∩[A230843(n+1), A374904(n+1)]`
-/

namespace A286228.P1312759604483387046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A286228.P1312759604483387046

namespace A286228

/-- `∩[A230843(n+1), A374904(n+1)]` -/
def P1312759604483387046.Spec : Prop :=
  ∀ n, (P1312759604483387046.a n : ℤ) = A286228 (n + 1)

end A286228

/-! ## A286228.P8093531313179399314

`filter[A382208(n+1), A091862(#)]`
-/

namespace A286228.P8093531313179399314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091862 (f1 j).toNat = 1) n)

end

end A286228.P8093531313179399314

namespace A286228

/-- `filter[A382208(n+1), A091862(#)]` -/
def P8093531313179399314.Spec : Prop :=
  ∀ n, P8093531313179399314.a n = A286228 (n + 1)

end A286228

/-! ## A286228.P12447743703089952137

`filter[A382208(n+1), A340369(#)]`
-/

namespace A286228.P12447743703089952137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A286228.P12447743703089952137

namespace A286228

/-- `filter[A382208(n+1), A340369(#)]` -/
def P12447743703089952137.Spec : Prop :=
  ∀ n, P12447743703089952137.a n = A286228 (n + 1)

end A286228

/-! ## A286228.P16802094280909671138

`filter[A382208(n+1), A359471(#)]`
-/

namespace A286228.P16802094280909671138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A286228.P16802094280909671138

namespace A286228

/-- `filter[A382208(n+1), A359471(#)]` -/
def P16802094280909671138.Spec : Prop :=
  ∀ n, P16802094280909671138.a n = A286228 (n + 1)

end A286228

/-! ## A286228.P15940225639044774284

`∩[A081619(n+1), A382208(n+1)]`
-/

namespace A286228.P15940225639044774284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A286228.P15940225639044774284

namespace A286228

/-- `∩[A081619(n+1), A382208(n+1)]` -/
def P15940225639044774284.Spec : Prop :=
  ∀ n, (P15940225639044774284.a n : ℤ) = A286228 (n + 1)

end A286228

/-! ## A286228.P7589205940335449415

`∩[A230843(n+1), A382208(n+1)]`
-/

namespace A286228.P7589205940335449415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A286228.P7589205940335449415

namespace A286228

/-- `∩[A230843(n+1), A382208(n+1)]` -/
def P7589205940335449415.Spec : Prop :=
  ∀ n, (P7589205940335449415.a n : ℤ) = A286228 (n + 1)

end A286228

/-! ## A286228.P13289709642261637759

`∩[A268375(n+1), A382208(n+1)]`
-/

namespace A286228.P13289709642261637759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A286228.P13289709642261637759

namespace A286228

/-- `∩[A268375(n+1), A382208(n+1)]` -/
def P13289709642261637759.Spec : Prop :=
  ∀ n, (P13289709642261637759.a n : ℤ) = A286228 (n + 1)

end A286228

/-! ## A286228.P6743695891575019883

`eq[A000005(n+1), A007425(A001222(n+1)+1)]+1`
-/

namespace A286228.P6743695891575019883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A001222 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A286228.P6743695891575019883

namespace A286228

/-- `eq[A000005(n+1), A007425(A001222(n+1)+1)]+1` -/
def P6743695891575019883.Spec : Prop :=
  ∀ n, (P6743695891575019883.a n : ℤ) = A286228 (n + 1)

end A286228

/-! ## A286228.P13181111160369831437

`∩[A048944(n+1), A230843(n+1)]`
-/

namespace A286228.P13181111160369831437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A286228.P13181111160369831437

namespace A286228

/-- `∩[A048944(n+1), A230843(n+1)]` -/
def P13181111160369831437.Spec : Prop :=
  ∀ n, (P13181111160369831437.a n : ℤ) = A286228 (n + 1)

end A286228

/-! ## A286228.P17933274848858401369

`filter[A368714(n+1), A340369(#)]`
-/

namespace A286228.P17933274848858401369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A286228.P17933274848858401369

namespace A286228

/-- `filter[A368714(n+1), A340369(#)]` -/
def P17933274848858401369.Spec : Prop :=
  ∀ n, P17933274848858401369.a n = A286228 (n + 1)

end A286228

/-! ## A286228.P5785651102476051574

`∩[A230843(n+1), A368714(n+1)]`
-/

namespace A286228.P5785651102476051574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A286228.P5785651102476051574

namespace A286228

/-- `∩[A230843(n+1), A368714(n+1)]` -/
def P5785651102476051574.Spec : Prop :=
  ∀ n, (P5785651102476051574.a n : ℤ) = A286228 (n + 1)

end A286228

/-!
# A286231: Sum T(n,k) of the entries in the k-th last cycles of all permutations of [n]; triangle T(n,k), n>=1, 1<=k<=n, read by rows.

The programs for A286231, there is no canonical definition to state claims against.
-/

/-! ## A286231.P17368607407434414961

`A038243(n)+6*A186748(n²)`
-/

namespace A286231.P17368607407434414961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038243 n + 6 * A186748 (n ^ 2)

end

end A286231.P17368607407434414961

/-! ## A286231.P11792404502596154752

`A184518(A078939(n)^A262809(n))`
-/

namespace A286231.P11792404502596154752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184518 (SequenceMachineLib.roundAway ((A078939 n : ℚ) ^ (A262809 n : ℤ))).toNat

end

end A286231.P11792404502596154752

/-! ## A286231.P2132917706971248542

`A184518(A078939(n)%A005344(n+1))`
-/

namespace A286231.P2132917706971248542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184518 (Int.tmod (A078939 n) (A005344 (n + 1))).toNat

end

end A286231.P2132917706971248542

/-!
# A286234: Square array A(n,k) = P(A000010(k), floor((n+k-1)/k)), read by descending antidiagonals as A(1,1), A(1,2), A(2,1), etc. Here P is a two-argument form of sequence A000027 used as a pairing function N x N -> N.

The programs for A286234, there is no canonical definition to state claims against.
-/

/-! ## A286234.P11891517336018379969

`A286235(A038722(n+1))`
-/

namespace A286234.P11891517336018379969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286235 (A038722 (n + 1)).toNat

end

end A286234.P11891517336018379969

/-! ## A286234.P8712774281293999403

`A286235(A061579(n)+1)`
-/

namespace A286234.P8712774281293999403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286235 (A061579 n + 1).toNat

end

end A286234.P8712774281293999403

/-! ## A286234.P15633843500980248434

`A286235(A093995(n+1)-n)`
-/

namespace A286234.P15633843500980248434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286235 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A286234.P15633843500980248434

/-! ## A286234.P727852475932622860

`A286235(A002024(n+1)²-n)`
-/

namespace A286234.P727852475932622860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286235 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A286234.P727852475932622860

/-! ## A286234.P276069981012880220

`A286235(A004736(n+1)+n-A002260(n+1)+1)`
-/

namespace A286234.P276069981012880220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286235 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A286234.P276069981012880220

/-!
# A286235: Triangular table T(n,k) = P(phi(k), floor(n/k)), where P is sequence A000027 used as a pairing function N x N -> N, and phi is Euler totient function, A000010. Table is read by rows as T(1,1), T(2,1), T(2,2), etc.

The programs for A286235, there is no canonical definition to state claims against.
-/

/-! ## A286235.P13311274654213838487

`A286234(A038722(n+1))`
-/

namespace A286235.P13311274654213838487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286234 (A038722 (n + 1)).toNat

end

end A286235.P13311274654213838487

/-! ## A286235.P2377741172201900561

`A286234(A061579(n)+1)`
-/

namespace A286235.P2377741172201900561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286234 (A061579 n + 1).toNat

end

end A286235.P2377741172201900561

/-! ## A286235.P11312720213286226584

`A286234(A002024(n+1)²-n)`
-/

namespace A286235.P11312720213286226584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286234 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A286235.P11312720213286226584

/-! ## A286235.P16250992920375945294

`A286234(A002024(n+1)*A002024(n+1)-n)`
-/

namespace A286235.P16250992920375945294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286234 (A002024 (n + 1) * A002024 (n + 1) - (n : ℤ)).toNat

end

end A286235.P16250992920375945294

/-! ## A286235.P4434999509750406402

`A286234(A004736(n+1)+n-A002260(n+1)+1)`
-/

namespace A286235.P4434999509750406402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286234 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A286235.P4434999509750406402

/-!
# A286236: Square array A(n,k) = P(A000010(k), (n+k-1)/k) if k divides (n+k-1), 0 otherwise, read by descending antidiagonals as A(1,1), A(1,2), A(2,1), etc. Here P is a two-argument form of sequence A000027 used as a pairing function N x N -> N.

The programs for A286236, there is no canonical definition to state claims against.
-/

/-! ## A286236.P7077661270575275972

`A286237(A038722(n+1))`
-/

namespace A286236.P7077661270575275972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286237 (A038722 (n + 1)).toNat

end

end A286236.P7077661270575275972

/-! ## A286236.P1595826120291149329

`A286237(A061579(n)+1)`
-/

namespace A286236.P1595826120291149329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286237 (A061579 n + 1).toNat

end

end A286236.P1595826120291149329

/-! ## A286236.P13852198528258434646

`A286237(A002024(n+1)²-n)`
-/

namespace A286236.P13852198528258434646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286237 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A286236.P13852198528258434646

/-! ## A286236.P14109488168809697594

`A113998(n+1)*A286234(n+1)`
-/

namespace A286236.P14109488168809697594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113998 (n + 1) * A286234 (n + 1)

end

end A286236.P14109488168809697594

/-! ## A286236.P6399924409809858215

`A286237(n-(A002260(n+1)-A004736(n+1))+1)`
-/

namespace A286236.P6399924409809858215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286237 ((n : ℤ) - (A002260 (n + 1) - A004736 (n + 1)) + 1).toNat

end

end A286236.P6399924409809858215

/-! ## A286236.P6144213638480964066

`A286234(n+1)/A286244(n+1)*A286246(n+1)`
-/

namespace A286236.P6144213638480964066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286234 (n + 1) : ℚ) / (A286244 (n + 1) : ℚ) * (A286246 (n + 1) : ℚ)

end

end A286236.P6144213638480964066

/-!
# A286237: Triangular table: T(n,k) = 0 if k does not divide n, otherwise T(n,k) = P(phi(k), n/k), where P is sequence A000027 used as a pairing function N x N -> N, and phi is Euler totient function, A000010. Table is read by rows as T(1,1), T(2,1), T(2,2), etc.

The programs for A286237, there is no canonical definition to state claims against.
-/

/-! ## A286237.P16656322886078276869

`A286236(A038722(n+1))`
-/

namespace A286237.P16656322886078276869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286236 (A038722 (n + 1)).toNat

end

end A286237.P16656322886078276869

/-! ## A286237.P12803617945510614752

`A286236(A061579(n)+1)`
-/

namespace A286237.P12803617945510614752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286236 (A061579 n + 1).toNat

end

end A286237.P12803617945510614752

/-! ## A286237.P12412335460347429082

`A286236(A002024(n+1)²-n)`
-/

namespace A286237.P12412335460347429082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286236 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A286237.P12412335460347429082

/-! ## A286237.P145452824214326390

`A051731(n+1)*A286235(n+1)`
-/

namespace A286237.P145452824214326390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A286235 (n + 1)

end

end A286237.P145452824214326390

/-! ## A286237.P491491880162071931

`A286236(A002024(n+1)*A002024(n+1)-n)`
-/

namespace A286237.P491491880162071931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286236 (A002024 (n + 1) * A002024 (n + 1) - (n : ℤ)).toNat

end

end A286237.P491491880162071931

/-! ## A286237.P12311856391083365012

`A286236(A004736(n+1)+n-A002260(n+1)+1)`
-/

namespace A286237.P12311856391083365012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286236 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A286237.P12311856391083365012

/-! ## A286237.P4228496604129281941

`A286235(n+1)/A286245(n+1)*A286247(n+1)`
-/

namespace A286237.P4228496604129281941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286235 (n + 1) : ℚ) / (A286245 (n + 1) : ℚ) * (A286247 (n + 1) : ℚ)

end

end A286237.P4228496604129281941

/-! ## A286237.P4019288930500811613

`A286239(A120913(n+1))`
-/

namespace A286237.P4019288930500811613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286239 (A120913 (n + 1)).toNat

end

end A286237.P4019288930500811613

/-!
# A286238: Triangle A286239 reversed.

The programs for A286238, there is no canonical definition to state claims against.
-/

/-! ## A286238.P17068604706588990640

`A286239(A038722(n+1))`
-/

namespace A286238.P17068604706588990640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286239 (A038722 (n + 1)).toNat

end

end A286238.P17068604706588990640

/-! ## A286238.P7424377462075527575

`A286239(A061579(n)+1)`
-/

namespace A286238.P7424377462075527575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286239 (A061579 n + 1).toNat

end

end A286238.P7424377462075527575

/-! ## A286238.P9849750951561577719

`A286239(∑[A010054(n)]²-n)`
-/

namespace A286238.P9849750951561577719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286239 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n : ℤ)).toNat

end

end A286238.P9849750951561577719

/-! ## A286238.P14184276255954367923

`A286239(A002024(n+1)²-n)`
-/

namespace A286238.P14184276255954367923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286239 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A286238.P14184276255954367923

/-! ## A286238.P11129382556911149207

`A286239(A002024(n+1)^2-n)`
-/

namespace A286238.P11129382556911149207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286239 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A286238.P11129382556911149207

/-! ## A286238.P13695795932059263229

`A286239(A000290(A002024(n+1))-n)`
-/

namespace A286238.P13695795932059263229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286239 (A000290 (A002024 (n + 1)).toNat - (n : ℤ)).toNat

end

end A286238.P13695795932059263229

/-! ## A286238.P3161165706558260399

`A286239(A004736(n+1)+n+1-A002260(n+1))`
-/

namespace A286238.P3161165706558260399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286239 (A004736 (n + 1) + ((n + 1 : ℤ) - A002260 (n + 1))).toNat

end

end A286238.P3161165706558260399

/-! ## A286238.P7391337517123397942

`A286239(A000194(2*n+1)²-n)`
-/

namespace A286238.P7391337517123397942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286239 (A000194 (2 * n + 1) ^ 2 - (n : ℤ)).toNat

end

end A286238.P7391337517123397942

/-!
# A286239: Triangular table: T(n,k) = 0 if k does not divide n, otherwise T(n,k) = P(A000010(n/k), k), where P is sequence A000027 used as a pairing function N x N -> N. Table is read by rows as T(1,1), T(2,1), T(2,2), etc.

The programs for A286239, there is no canonical definition to state claims against.
-/

/-! ## A286239.P774958644805799113

`A286238(A038722(n+1))`
-/

namespace A286239.P774958644805799113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286238 (A038722 (n + 1)).toNat

end

end A286239.P774958644805799113

/-! ## A286239.P12158856865247106662

`A286238(A061579(n)+1)`
-/

namespace A286239.P12158856865247106662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286238 (A061579 n + 1).toNat

end

end A286239.P12158856865247106662

/-! ## A286239.P4413491636838334322

`A286238(A093995(n+1)-n)`
-/

namespace A286239.P4413491636838334322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286238 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A286239.P4413491636838334322

/-! ## A286239.P14011940853862801139

`A286238(A002024(n+1)²-n)`
-/

namespace A286239.P14011940853862801139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286238 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A286239.P14011940853862801139

/-! ## A286239.P10335622680382297551

`A286238(A000290(A002024(n+1))-n)`
-/

namespace A286239.P10335622680382297551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286238 (A000290 (A002024 (n + 1)).toNat - (n : ℤ)).toNat

end

end A286239.P10335622680382297551

/-! ## A286239.P5860944658999608122

`A286238(A000194(2*n+1)²-n)`
-/

namespace A286239.P5860944658999608122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286238 (A000194 (2 * n + 1) ^ 2 - (n : ℤ)).toNat

end

end A286239.P5860944658999608122

/-! ## A286239.P5312078566874598347

`A286237(A120913(n+1))`
-/

namespace A286239.P5312078566874598347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286237 (A120913 (n + 1)).toNat

end

end A286239.P5312078566874598347

/-!
# A286240: Compound filter: a(n) = P(A278222(n), A278222(1+n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286240, the canonical program `A286240.P5307975557568174036` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286240 has offset 0).

The definition of A286240 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286240.P5307975557568174036

`(2+(A278222(n)+A278222(1+n))²-A278222(n)-3*A278222(1+n))/2`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A286240

/-- `(2+(A278222(n)+A278222(1+n))²-A278222(n)-3*A278222(1+n))/2` -/
def P5307975557568174036.Spec : Prop :=
  ∀ n, P5307975557568174036.a n = (A286240 n : ℚ)

end A286240

/-!
# A286241: Compound filter: a(n) = P(A278219(n), A278219(1+n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286241, the canonical program `A286241.P12218282979433671709` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286241 has offset 0).

The definition of A286241 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278219, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286241.P12218282979433671709

`(2+(A278219(n)+A278219(1+n))²-A278219(n)-3*A278219(1+n))/2`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A286241

/-- `(2+(A278219(n)+A278219(1+n))²-A278219(n)-3*A278219(1+n))/2` -/
def P12218282979433671709.Spec : Prop :=
  ∀ n, P12218282979433671709.a n = (A286241 n : ℚ)

end A286241

/-!
# A286242: Compound filter: a(n) = P(A278222(n), A278219(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286242, the canonical program `A286242.P4397352984022037262` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286242 has offset 0).

The definition of A286242 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286242.P8716792324097358550

`(2+(A278222(n)+A278219(n))²-A278222(n)-3*A278219(n))/2`
-/

namespace A286242.P8716792324097358550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + ((A278222 n + A278219 n) ^ 2 - A278222 n) - 3 * A278219 n : ℚ) / 2

end

end A286242.P8716792324097358550

namespace A286242

/-- `(2+(A278222(n)+A278219(n))²-A278222(n)-3*A278219(n))/2` -/
def P8716792324097358550.Spec : Prop :=
  ∀ n, P8716792324097358550.a n = (A286242 n : ℚ)

end A286242

/-! ## A286242.P4397352984022037262

`1/2*(2+(A278222(n)+A278222(A003188(n)))²-A278222(n)-3*A278222(A003188(n)))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A286242

/-- `1/2*(2+(A278222(n)+A278222(A003188(n)))²-A278222(n)-3*A278222(A003188(n)))` -/
def P4397352984022037262.Spec : Prop :=
  ∀ n, P4397352984022037262.a n = (A286242 n : ℚ)

end A286242

/-!
# A286243: Filter-sequence: a(n) = A278222(A064216(n)).

The programs for A286243, the canonical program `A286243.P4137643626083148722` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286243 has offset 1).

The definition of A286243 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064216, A278222, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286243.P4137643626083148722

`A278222(A064216(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A286243

/-- `A278222(A064216(n+1))` -/
def P4137643626083148722.Spec : Prop :=
  ∀ n, P4137643626083148722.a n = A286243 (n + 1)

theorem P4137643626083148722.correct : P4137643626083148722.Spec := by
  intro n
  simp only [A286243, Nat.add_sub_cancel]

end A286243

/-! ## A286243.P4783485317348219369

`A278222(A243502(n+1))`
-/

namespace A286243.P4783485317348219369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A243502 (n + 1)).toNat

end

end A286243.P4783485317348219369

namespace A286243

/-- `A278222(A243502(n+1))` -/
def P4783485317348219369.Spec : Prop :=
  ∀ n, P4783485317348219369.a n = A286243 (n + 1)

end A286243

/-! ## A286243.P17934013484659317933

`A278222(A353413(n+1))`
-/

namespace A286243.P17934013484659317933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A353413 (n + 1)).toNat

end

end A286243.P17934013484659317933

namespace A286243

/-- `A278222(A353413(n+1))` -/
def P17934013484659317933.Spec : Prop :=
  ∀ n, P17934013484659317933.a n = A286243 (n + 1)

end A286243

/-! ## A286243.P16641331400714218903

`A278222(A353412(2*n+1))`
-/

namespace A286243.P16641331400714218903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A353412 (2 * n + 1)).toNat

end

end A286243.P16641331400714218903

namespace A286243

/-- `A278222(A353412(2*n+1))` -/
def P16641331400714218903.Spec : Prop :=
  ∀ n, P16641331400714218903.a n = A286243 (n + 1)

end A286243

/-! ## A286243.P18103002844812836163

`A278222(A064989(2*n+1))`
-/

namespace A286243.P18103002844812836163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A064989 (2 * n + 1)).toNat

end

end A286243.P18103002844812836163

namespace A286243

/-- `A278222(A064989(2*n+1))` -/
def P18103002844812836163.Spec : Prop :=
  ∀ n, P18103002844812836163.a n = A286243 (n + 1)

end A286243

/-! ## A286243.P13441231799048111850

`A278222(A252463(2*n+1))`
-/

namespace A286243.P13441231799048111850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A252463 (2 * n + 1)).toNat

end

end A286243.P13441231799048111850

namespace A286243

/-- `A278222(A252463(2*n+1))` -/
def P13441231799048111850.Spec : Prop :=
  ∀ n, P13441231799048111850.a n = A286243 (n + 1)

end A286243

/-! ## A286243.P3109900647595733818

`A278222(A283463(2*(n+1)))`
-/

namespace A286243.P3109900647595733818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A283463 (2 * (n + 1))).toNat

end

end A286243.P3109900647595733818

namespace A286243

/-- `A278222(A283463(2*(n+1)))` -/
def P3109900647595733818.Spec : Prop :=
  ∀ n, P3109900647595733818.a n = A286243 (n + 1)

end A286243

/-! ## A286243.P9691543031469870729

`A278222(A048673(A245448(n+1)))`
-/

namespace A286243.P9691543031469870729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A048673 (A245448 (n + 1)).toNat).toNat

end

end A286243.P9691543031469870729

namespace A286243

/-- `A278222(A048673(A245448(n+1)))` -/
def P9691543031469870729.Spec : Prop :=
  ∀ n, P9691543031469870729.a n = A286243 (n + 1)

end A286243

/-! ## A286243.P1983413242834051497

`A046523(A278222(A064989(n+1+n)))`
-/

namespace A286243.P1983413242834051497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A278222 (A064989 (n + 1 + n)).toNat).toNat

end

end A286243.P1983413242834051497

namespace A286243

/-- `A046523(A278222(A064989(n+1+n)))` -/
def P1983413242834051497.Spec : Prop :=
  ∀ n, P1983413242834051497.a n = A286243 (n + 1)

end A286243

/-! ## A286243.P13394612360885934054

`A046523(A278222(A252463(n+1+n)))`
-/

namespace A286243.P13394612360885934054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A278222 (A252463 (n + 1 + n)).toNat).toNat

end

end A286243.P13394612360885934054

namespace A286243

/-- `A046523(A278222(A252463(n+1+n)))` -/
def P13394612360885934054.Spec : Prop :=
  ∀ n, P13394612360885934054.a n = A286243 (n + 1)

end A286243

/-!
# A286244: Square array A(n,k) = P(A046523(k), floor((n+k-1)/k)), read by descending antidiagonals as A(1,1), A(1,2), A(2,1), etc. Here P is a two-argument form of sequence A000027 used as a pairing function N x N -> N.

The programs for A286244, there is no canonical definition to state claims against.
-/

/-! ## A286244.P5583951180577410107

`A286245(A038722(n+1))`
-/

namespace A286244.P5583951180577410107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286245 (A038722 (n + 1)).toNat

end

end A286244.P5583951180577410107

/-! ## A286244.P4563227649373473985

`A286245(A061579(n)+1)`
-/

namespace A286244.P4563227649373473985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286245 (A061579 n + 1).toNat

end

end A286244.P4563227649373473985

/-! ## A286244.P3832475202661566898

`A286245((n+1-A014132(n+1))²-n)`
-/

namespace A286244.P3832475202661566898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286245 (((n + 1 : ℤ) - A014132 (n + 1)) ^ 2 - (n : ℤ)).toNat

end

end A286244.P3832475202661566898

/-! ## A286244.P10864479300341831202

`A286245(A057944(n)+A004736(n+1))`
-/

namespace A286244.P10864479300341831202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286245 (A057944 n + A004736 (n + 1)).toNat

end

end A286244.P10864479300341831202

/-! ## A286244.P9579225811546882353

`A286245(A004736(n+1)+n-A002260(n+1)+1)`
-/

namespace A286244.P9579225811546882353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286245 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A286244.P9579225811546882353

/-!
# A286245: Triangular table T(n,k) = P(A046523(k), floor(n/k)), read by rows as T(1,1), T(2,1), T(2,2), etc. Here P is sequence A000027 used as a pairing function N x N -> N.

The programs for A286245, there is no canonical definition to state claims against.
-/

/-! ## A286245.P14000270063320683867

`A286244(A038722(n+1))`
-/

namespace A286245.P14000270063320683867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286244 (A038722 (n + 1)).toNat

end

end A286245.P14000270063320683867

/-! ## A286245.P9961360065255430289

`A286244(A061579(n)+1)`
-/

namespace A286245.P9961360065255430289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286244 (A061579 n + 1).toNat

end

end A286245.P9961360065255430289

/-! ## A286245.P12620154959344707582

`A286244(A093995(n+1)-n)`
-/

namespace A286245.P12620154959344707582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286244 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A286245.P12620154959344707582

/-! ## A286245.P11309722715803415960

`A286244(A002024(n+1)²-n)`
-/

namespace A286245.P11309722715803415960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286244 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A286245.P11309722715803415960

/-! ## A286245.P5247097116118564742

`A286244(A265129(n+1)-(n+1))`
-/

namespace A286245.P5247097116118564742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286244 (A265129 (n + 1) - (n + 1 : ℤ)).toNat

end

end A286245.P5247097116118564742

/-! ## A286245.P14321362852926040487

`A286244(A004736(n+1)+n-A002260(n+1)+1)`
-/

namespace A286245.P14321362852926040487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286244 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A286245.P14321362852926040487

/-!
# A286246: Square array A(n,k) = P(A046523(k), (n+k-1)/k) if k divides (n+k-1), 0 otherwise, read by descending antidiagonals as A(1,1), A(1,2), A(2,1), etc. Here P is a two-argument form of sequence A000027 used as a pairing function N x N -> N.

The programs for A286246, there is no canonical definition to state claims against.
-/

/-! ## A286246.P10449402079763666594

`A286247(A038722(n+1))`
-/

namespace A286246.P10449402079763666594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286247 (A038722 (n + 1)).toNat

end

end A286246.P10449402079763666594

/-! ## A286246.P7600084612857011690

`A286247(A002024(n+1)²-n)`
-/

namespace A286246.P7600084612857011690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286247 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A286246.P7600084612857011690

/-! ## A286246.P14712043853416958807

`A113998(n+1)*A286244(n+1)`
-/

namespace A286246.P14712043853416958807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113998 (n + 1) * A286244 (n + 1)

end

end A286246.P14712043853416958807

/-! ## A286246.P4156738057837001562

`A286247(A002024(n+1)*A002024(n+1)-n)`
-/

namespace A286246.P4156738057837001562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286247 (A002024 (n + 1) * A002024 (n + 1) - (n : ℤ)).toNat

end

end A286246.P4156738057837001562

/-! ## A286246.P12422291053562193372

`A286247(A004736(n+1)+n-A002260(n+1)+1)`
-/

namespace A286246.P12422291053562193372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286247 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A286246.P12422291053562193372

/-! ## A286246.P9313384942246480733

`A286236(n+1)/A286234(n+1)*A286244(n+1)`
-/

namespace A286246.P9313384942246480733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286236 (n + 1) : ℚ) / (A286234 (n + 1) : ℚ) * (A286244 (n + 1) : ℚ)

end

end A286246.P9313384942246480733

/-!
# A286247: Triangular table: T(n,k) = 0 if k does not divide n, otherwise T(n,k) = P(A046523(k), n/k), where P is sequence A000027 used as a pairing function N x N -> N. Table is read by rows as T(1,1), T(2,1), T(2,2), etc.

The programs for A286247, there is no canonical definition to state claims against.
-/

/-! ## A286247.P2777715473536100891

`A286246(A038722(n+1))`
-/

namespace A286247.P2777715473536100891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286246 (A038722 (n + 1)).toNat

end

end A286247.P2777715473536100891

/-! ## A286247.P11230885413517846933

`A286246(A061579(n)+1)`
-/

namespace A286247.P11230885413517846933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286246 (A061579 n + 1).toNat

end

end A286247.P11230885413517846933

/-! ## A286247.P4471536664748985116

`A051731(n+1)*A286245(n+1)`
-/

namespace A286247.P4471536664748985116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A286245 (n + 1)

end

end A286247.P4471536664748985116

/-! ## A286247.P12169572980539896724

`A286246(A004736(n+1)+n-A002260(n+1)+1)`
-/

namespace A286247.P12169572980539896724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286246 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A286247.P12169572980539896724

/-! ## A286247.P1559678676155603222

`A286237(n+1)/A286235(n+1)*A286245(n+1)`
-/

namespace A286247.P1559678676155603222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286237 (n + 1) : ℚ) / (A286235 (n + 1) : ℚ) * (A286245 (n + 1) : ℚ)

end

end A286247.P1559678676155603222

/-! ## A286247.P14056301092459198481

`A286249(A120913(n+1))`
-/

namespace A286247.P14056301092459198481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286249 (A120913 (n + 1)).toNat

end

end A286247.P14056301092459198481

/-!
# A286248: Triangle A286249 reversed.

The programs for A286248, there is no canonical definition to state claims against.
-/

/-! ## A286248.P11911894015118736540

`A286249(A038722(n+1))`
-/

namespace A286248.P11911894015118736540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286249 (A038722 (n + 1)).toNat

end

end A286248.P11911894015118736540

/-! ## A286248.P451954575131607947

`A286249(A061579(n)+1)`
-/

namespace A286248.P451954575131607947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286249 (A061579 n + 1).toNat

end

end A286248.P451954575131607947

/-! ## A286248.P12825980149915618778

`A286249(A002024(n+1)²-n)`
-/

namespace A286248.P12825980149915618778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286249 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A286248.P12825980149915618778

/-! ## A286248.P10514350269437471859

`A286249(A002024(n+1)^2-n)`
-/

namespace A286248.P10514350269437471859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286249 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A286248.P10514350269437471859

/-! ## A286248.P11910295909713716043

`A286249(A004736(n+1)+n+1-A002260(n+1))`
-/

namespace A286248.P11910295909713716043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286249 (A004736 (n + 1) + ((n + 1 : ℤ) - A002260 (n + 1))).toNat

end

end A286248.P11910295909713716043

/-!
# A286249: Triangular table: T(n,k) = 0 if k does not divide n, otherwise T(n,k) = P(A046523(n/k), k), where P is sequence A000027 used as a pairing function N x N -> N. Table is read by rows as T(1,1), T(2,1), T(2,2), etc.

The programs for A286249, there is no canonical definition to state claims against.
-/

/-! ## A286249.P6001846918128028765

`A286248(∑[char[∑[n]]]²-n)`
-/

namespace A286249.P6001846918128028765
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286248 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A286249.P6001846918128028765

/-! ## A286249.P5477617759177593930

`A286248(A038722(n+1))%A004202(n+1)`
-/

namespace A286249.P5477617759177593930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286248 (A038722 (n + 1)).toNat) (A004202 (n + 1))

end

end A286249.P5477617759177593930

/-! ## A286249.P13116663219310223562

`lcm(A034947(n+1), A286248(A038722(n+1)))`
-/

namespace A286249.P13116663219310223562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A034947 (n + 1)) (A286248 (A038722 (n + 1)).toNat)

end

end A286249.P13116663219310223562

/-! ## A286249.P10027264621428774379

`A286248(A038722(n+1))-A002262(A127739(n+1))`
-/

namespace A286249.P10027264621428774379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286248 (A038722 (n + 1)).toNat - A002262 (A127739 (n + 1)).toNat

end

end A286249.P10027264621428774379

/-! ## A286249.P10237387852717013099

`A286248(A038722(n+1))%A018917(n)`
-/

namespace A286249.P10237387852717013099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286248 (A038722 (n + 1)).toNat) (A018917 n)

end

end A286249.P10237387852717013099

/-! ## A286249.P7000602904816667914

`A286247(A120913(n+1))`
-/

namespace A286249.P7000602904816667914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286247 (A120913 (n + 1)).toNat

end

end A286249.P7000602904816667914

/-!
# A286250: Filter-sequence: a(n) = A278223(A064216(n)) = A046523((2*A064216(n))-1).

The programs for A286250, the canonical program `A286250.P9221776956555374732` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286250 has offset 1).

The definition of A286250 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064216, A278223, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286250.P9221776956555374732

`A278223(A064216(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A286250

/-- `A278223(A064216(n+1))` -/
def P9221776956555374732.Spec : Prop :=
  ∀ n, P9221776956555374732.a n = A286250 (n + 1)

theorem P9221776956555374732.correct : P9221776956555374732.Spec := by
  intro n
  simp only [A286250, Nat.add_sub_cancel]

end A286250

/-! ## A286250.P7313699618626237879

`A046523(A245448(n+1))`
-/

namespace A286250.P7313699618626237879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A245448 (n + 1)).toNat

end

end A286250.P7313699618626237879

namespace A286250

/-- `A046523(A245448(n+1))` -/
def P7313699618626237879.Spec : Prop :=
  ∀ n, P7313699618626237879.a n = A286250 (n + 1)

end A286250

/-! ## A286250.P14069313810710366321

`A046523(2*A064216(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286250.P14069313810710366321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (2 * A064216 (n + 1) - 1).toNat

end

end A286250.P14069313810710366321

namespace A286250

/-- `A046523(2*A064216(n+1)-1)` -/
def P14069313810710366321.Spec : Prop :=
  ∀ n, P14069313810710366321.a n = A286250 (n + 1)

end A286250

/-! ## A286250.P14086512946378697106

`A336158(A243502(n+1)-1)`
-/

namespace A286250.P14086512946378697106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (A243502 (n + 1) - 1).toNat

end

end A286250.P14086512946378697106

namespace A286250

/-- `A336158(A243502(n+1)-1)` -/
def P14086512946378697106.Spec : Prop :=
  ∀ n, P14086512946378697106.a n = A286250 (n + 1)

end A286250

/-! ## A286250.P15168676058679056853

`A278223(A064989(2*n+1))`
-/

namespace A286250.P15168676058679056853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (A064989 (2 * n + 1)).toNat

end

end A286250.P15168676058679056853

namespace A286250

/-- `A278223(A064989(2*n+1))` -/
def P15168676058679056853.Spec : Prop :=
  ∀ n, P15168676058679056853.a n = A286250 (n + 1)

end A286250

/-! ## A286250.P737906473403883315

`A046523(A064216(A252463(2*n+1)))`
-/

namespace A286250.P737906473403883315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A064216 (A252463 (2 * n + 1)).toNat).toNat

end

end A286250.P737906473403883315

namespace A286250

/-- `A046523(A064216(A252463(2*n+1)))` -/
def P737906473403883315.Spec : Prop :=
  ∀ n, P737906473403883315.a n = A286250 (n + 1)

end A286250

/-! ## A286250.P11895576395784257156

`A046523(A064216(A064989(n+1+n)))`
-/

namespace A286250.P11895576395784257156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A064216 (A064989 (n + 1 + n)).toNat).toNat

end

end A286250.P11895576395784257156

namespace A286250

/-- `A046523(A064216(A064989(n+1+n)))` -/
def P11895576395784257156.Spec : Prop :=
  ∀ n, P11895576395784257156.a n = A286250 (n + 1)

end A286250

/-! ## A286250.P936460863170462847

`A046523(A243502(n+1)-1)`
-/

namespace A286250.P936460863170462847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A243502 (n + 1) - 1).toNat

end

end A286250.P936460863170462847

namespace A286250

/-- `A046523(A243502(n+1)-1)` -/
def P936460863170462847.Spec : Prop :=
  ∀ n, P936460863170462847.a n = A286250 (n + 1)

end A286250

/-! ## A286250.P15684043857262719358

`A046523(A266645(2*(n+1))-1)`
-/

namespace A286250.P15684043857262719358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A266645 (2 * (n + 1)) - 1).toNat

end

end A286250.P15684043857262719358

namespace A286250

/-- `A046523(A266645(2*(n+1))-1)` -/
def P15684043857262719358.Spec : Prop :=
  ∀ n, P15684043857262719358.a n = A286250 (n + 1)

end A286250

/-! ## A286250.P12262035660975368472

`A046523(A064216(n+1)+A064216(n+1)-1)`
-/

namespace A286250.P12262035660975368472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A064216 (n + 1) + (A064216 (n + 1) - 1)).toNat

end

end A286250.P12262035660975368472

namespace A286250

/-- `A046523(A064216(n+1)+A064216(n+1)-1)` -/
def P12262035660975368472.Spec : Prop :=
  ∀ n, P12262035660975368472.a n = A286250 (n + 1)

end A286250

/-! ## A286250.P16441750787904216455

`A046523(A064989(A016945(n))-1)`
-/

namespace A286250.P16441750787904216455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A064989 (A016945 n).toNat - 1).toNat

end

end A286250.P16441750787904216455

namespace A286250

/-- `A046523(A064989(A016945(n))-1)` -/
def P16441750787904216455.Spec : Prop :=
  ∀ n, P16441750787904216455.a n = A286250 (n + 1)

end A286250

/-! ## A286250.P15503885026416082006

`A278223(A245448(A048673(n+1)))`
-/

namespace A286250.P15503885026416082006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (A245448 (A048673 (n + 1)).toNat).toNat

end

end A286250.P15503885026416082006

namespace A286250

/-- `A278223(A245448(A048673(n+1)))` -/
def P15503885026416082006.Spec : Prop :=
  ∀ n, P15503885026416082006.a n = A286250 (n + 1)

end A286250

/-!
# A286251: Compound filter: a(n) = P(A001511(1+n), A046523(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286251, the canonical program `A286251.P14577288192224466921` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286251 has offset 1).

The definition of A286251 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286251.P14577288192224466921

`(2+(A001511(n+2)+A046523(n+1))²-A001511(n+2)-3*A046523(n+1))/2`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A286251

/-- `(2+(A001511(n+2)+A046523(n+1))²-A001511(n+2)-3*A046523(n+1))/2` -/
def P14577288192224466921.Spec : Prop :=
  ∀ n, P14577288192224466921.a n = (A286251 (n + 1) : ℚ)

end A286251

/-!
# A286252: Compound filter: a(n) = P(A001511(1+n), A278222(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286252, the canonical program `A286252.P12262963533648127159` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286252 has offset 0).

The definition of A286252 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286252.P12262963533648127159

`(2+(A001511(1+n)+A278222(n))²-A001511(1+n)-3*A278222(n))/2`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A286252

/-- `(2+(A001511(1+n)+A278222(n))²-A001511(1+n)-3*A278222(n))/2` -/
def P12262963533648127159.Spec : Prop :=
  ∀ n, P12262963533648127159.a n = (A286252 n : ℚ)

end A286252

/-! ## A286252.P1851356738554200533

`A286161(A005940(n+1))`
-/

namespace A286252.P1851356738554200533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286161 (A005940 (n + 1)).toNat

end

end A286252.P1851356738554200533

namespace A286252

/-- `A286161(A005940(n+1))` -/
def P1851356738554200533.Spec : Prop :=
  ∀ n, P1851356738554200533.a n = A286252 n

end A286252

/-! ## A286252.P12341970023351027534

`A286161(A324394(n)*A324395(n))`
-/

namespace A286252.P12341970023351027534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286161 (A324394 n * A324395 n).toNat

end

end A286252.P12341970023351027534

namespace A286252

/-- `A286161(A324394(n)*A324395(n))` -/
def P12341970023351027534.Spec : Prop :=
  ∀ n, P12341970023351027534.a n = A286252 n

end A286252

/-! ## A286252.P8737359217363142645

`A286161(A337375(n)*A337376(n))`
-/

namespace A286252.P8737359217363142645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286161 (A337375 n * A337376 n).toNat

end

end A286252.P8737359217363142645

namespace A286252

/-- `A286161(A337375(n)*A337376(n))` -/
def P8737359217363142645.Spec : Prop :=
  ∀ n, P8737359217363142645.a n = A286252 n

end A286252

/-! ## A286252.P17923258753428357243

`A286161(A340362(n+1)+A324106(n+1))`
-/

namespace A286252.P17923258753428357243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286161 (A340362 (n + 1) + A324106 (n + 1)).toNat

end

end A286252.P17923258753428357243

namespace A286252

/-- `A286161(A340362(n+1)+A324106(n+1))` -/
def P17923258753428357243.Spec : Prop :=
  ∀ n, P17923258753428357243.a n = A286252 n

end A286252

/-! ## A286252.P5644592027574138071

`A286161(A324641(n+1)-A324640(n+1))`
-/

namespace A286252.P5644592027574138071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286161 (A324641 (n + 1) - A324640 (n + 1)).toNat

end

end A286252.P5644592027574138071

namespace A286252

/-- `A286161(A324641(n+1)-A324640(n+1))` -/
def P5644592027574138071.Spec : Prop :=
  ∀ n, P5644592027574138071.a n = A286252 n

end A286252

/-! ## A286252.P3395599553199428695

`A286161(A324106(n+1)*A340365(n+1)/A340366(n+1))`
-/

namespace A286252.P3395599553199428695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286161 (SequenceMachineLib.roundAway ((A324106 (n + 1) * A340365 (n + 1) : ℚ) / (A340366 (n + 1) : ℚ))).toNat

end

end A286252.P3395599553199428695

namespace A286252

/-- `A286161(A324106(n+1)*A340365(n+1)/A340366(n+1))` -/
def P3395599553199428695.Spec : Prop :=
  ∀ n, P3395599553199428695.a n = A286252 n

end A286252

/-! ## A286252.P976447476702018103

`A286161(A332815(n))`
-/

namespace A286252.P976447476702018103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286161 (A332815 n).toNat

end

end A286252.P976447476702018103

namespace A286252

/-- `A286161(A332815(n))` -/
def P976447476702018103.Spec : Prop :=
  ∀ n, P976447476702018103.a n = A286252 n

end A286252

/-! ## A286252.P3918721296650874717

`A286463(A005940(Δ[n²]))`
-/

namespace A286252.P3918721296650874717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286463 (A005940 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A286252.P3918721296650874717

namespace A286252

/-- `A286463(A005940(Δ[n²]))` -/
def P3918721296650874717.Spec : Prop :=
  ∀ n, P3918721296650874717.a n = A286252 n

end A286252

/-! ## A286252.P17683785466606802067

`A286161(A374717(n+1))`
-/

namespace A286252.P17683785466606802067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286161 (A374717 (n + 1)).toNat

end

end A286252.P17683785466606802067

namespace A286252

/-- `A286161(A374717(n+1))` -/
def P17683785466606802067.Spec : Prop :=
  ∀ n, P17683785466606802067.a n = A286252 n

end A286252

/-!
# A286253: Compound filter: a(n) = P(A055396(n), A001511(1+n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286253, there is no canonical definition to state claims against.
-/

/-! ## A286253.P8059020961328219023

`(2+(A055396(n+1)+A001511(n+2))²-A055396(n+1)-3*A001511(n+2))/2`
-/

namespace A286253.P8059020961328219023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + ((A055396 (n + 1) + A001511 (n + 2)) ^ 2 - A055396 (n + 1)) - 3 * A001511 (n + 2) : ℚ) / 2

end

end A286253.P8059020961328219023

/-!
# A286254: Compound filter: a(n) = P(A001511(n), A055396(1+n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286254, there is no canonical definition to state claims against.
-/

/-! ## A286254.P3590812302856896822

`(2+(A001511(n+1)+A055396(n+2))²-A001511(n+1)-3*A055396(n+2))/2`
-/

namespace A286254.P3590812302856896822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + ((A001511 (n + 1) + A055396 (n + 2)) ^ 2 - A001511 (n + 1)) - 3 * A055396 (n + 2) : ℚ) / 2

end

end A286254.P3590812302856896822

/-!
# A286255: Compound filter: a(n) = P(A046523(n), A046523(1+n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286255, the canonical program `A286255.P11138255499100744440` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286255 has offset 1).

The definition of A286255 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286255.P11138255499100744440

`(2+(A046523(n+1)+A046523(n+2))²-A046523(n+1)-3*A046523(n+2))/2`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A286255

/-- `(2+(A046523(n+1)+A046523(n+2))²-A046523(n+1)-3*A046523(n+2))/2` -/
def P11138255499100744440.Spec : Prop :=
  ∀ n, P11138255499100744440.a n = (A286255 (n + 1) : ℚ)

end A286255

/-!
# A286256: Compound filter: a(n) = P(A046523(n), A046523(2+n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286256, the canonical program `A286256.P16181943971365042495` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286256 has offset 1).

The definition of A286256 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286256.P16181943971365042495

`(2+(A046523(n+1)+A046523(n+3))²-A046523(n+1)-3*A046523(n+3))/2`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A286256

/-- `(2+(A046523(n+1)+A046523(n+3))²-A046523(n+1)-3*A046523(n+3))/2` -/
def P16181943971365042495.Spec : Prop :=
  ∀ n, P16181943971365042495.a n = (A286256 (n + 1) : ℚ)

end A286256

/-!
# A286257: Compound filter: a(n) = P(A046523(n), A046523(2n-1)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286257, the canonical program `A286257.P805175465201236048` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286257 has offset 1).

The definition of A286257 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A278223, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286257.P805175465201236048

`1/2*(2+(A046523(n+1)+A278223(n+1))²-A046523(n+1)-3*A278223(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A286257

/-- `1/2*(2+(A046523(n+1)+A278223(n+1))²-A046523(n+1)-3*A278223(n+1))` -/
def P805175465201236048.Spec : Prop :=
  ∀ n, P805175465201236048.a n = (A286257 (n + 1) : ℚ)

end A286257

/-! ## A286257.P6860279904150280835

`1/2*(2+(A046523(n+1)+A046523(2*(n+1)-1))²-A046523(n+1)-3*A046523(2*(n+1)-1))`
-/

namespace A286257.P6860279904150280835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + ((A046523 (n + 1) + A046523 (2 * (n + 1) - 1)) ^ 2 - A046523 (n + 1)) - 3 * A046523 (2 * (n + 1) - 1) : ℚ)

end

end A286257.P6860279904150280835

namespace A286257

/-- `1/2*(2+(A046523(n+1)+A046523(2*(n+1)-1))²-A046523(n+1)-3*A046523(2*(n+1)-1))` -/
def P6860279904150280835.Spec : Prop :=
  ∀ n, P6860279904150280835.a n = (A286257 (n + 1) : ℚ)

end A286257

/-!
# A286258: Compound filter: a(n) = P(A046523(n), A046523(2n+1)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286258, the canonical program `A286258.P1466533036731480062` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286258 has offset 1).

The definition of A286258 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286258.P1466533036731480062

`1/2*(2+(A046523(n+1)+A046523(2*(n+1)+1))²-A046523(n+1)-3*A046523(2*(n+1)+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A286258

/-- `1/2*(2+(A046523(n+1)+A046523(2*(n+1)+1))²-A046523(n+1)-3*A046523(2*(n+1)+1))` -/
def P1466533036731480062.Spec : Prop :=
  ∀ n, P1466533036731480062.a n = (A286258 (n + 1) : ℚ)

end A286258

/-!
# A286259: Compound filter: a(n) = P(A001511(n), A049820(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286259, the canonical program `A286259.P4100999177015709443` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286259 has offset 1).

The definition of A286259 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049820, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286259.P4100999177015709443

`(2+(A001511(n+1)+A049820(n+1))²-A001511(n+1)-3*A049820(n+1))/2`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A286259

/-- `(2+(A001511(n+1)+A049820(n+1))²-A001511(n+1)-3*A049820(n+1))/2` -/
def P4100999177015709443.Spec : Prop :=
  ∀ n, P4100999177015709443.a n = (A286259 (n + 1) : ℚ)

end A286259

/-!
# A286260: Compound filter: a(n) = P(A001511(n), A161942(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286260, the canonical program `A286260.P9124773097186414863` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286260 has offset 1).

The definition of A286260 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A161942, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286260.P9124773097186414863

`(2+(A001511(n+1)+A161942(n+1))²-A001511(n+1)-3*A161942(n+1))/2`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A286260

/-- `(2+(A001511(n+1)+A161942(n+1))²-A001511(n+1)-3*A161942(n+1))/2` -/
def P9124773097186414863.Spec : Prop :=
  ∀ n, P9124773097186414863.a n = (A286260 (n + 1) : ℚ)

end A286260

/-!
# A286261: Numbers whose binary expansion is not a cubefree string.

The programs for A286261, there is no canonical definition to state claims against.
-/

/-! ## A286261.P17443017115072813802

`comp[A286262(n+1)]`
-/

namespace A286261.P17443017115072813802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A286261.P17443017115072813802

/-! ## A286261.P17073126168878256035

`eq[char[A286262(n+1)], A000038(n)]`
-/

namespace A286261.P17073126168878256035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286262 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A286261.P17073126168878256035

/-! ## A286261.P10547752561795826700

`lt[A337223(n), n]`
-/

namespace A286261.P10547752561795826700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337223 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A286261.P10547752561795826700

/-! ## A286261.P6503823819334544547

`eq[0, A000007(n-A337223(n))]`
-/

namespace A286261.P6503823819334544547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) - A337223 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286261.P6503823819334544547

/-! ## A286261.P10728785208346865829

`eq[1, A000035(A160552(n-A337223(n)))]`
-/

namespace A286261.P10728785208346865829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A160552 ((n : ℤ) - A337223 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286261.P10728785208346865829

/-!
# A286262: Numbers whose binary expansion is a cubefree string.

The programs for A286262, there is no canonical definition to state claims against.
-/

/-! ## A286262.P6292827565282372379

`record[A337223(n)]`
-/

namespace A286262.P6292827565282372379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286262.P6292827565282372379

/-! ## A286262.P6228251204055991456

`eq[A254109(n), A337223(n)]`
-/

namespace A286262.P6228251204055991456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254109 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337223 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A286262.P6228251204055991456

/-! ## A286262.P13956985919496033441

`eq[A325805(n), A337223(n)]`
-/

namespace A286262.P13956985919496033441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325805 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337223 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A286262.P13956985919496033441

/-! ## A286262.P11369664196210249647

`A337223(eq[n, A337223(n)])`
-/

namespace A286262.P11369664196210249647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337223 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286262.P11369664196210249647

/-! ## A286262.P7355253298442371266

`A337223(lt[n, A337223(n)+1])`
-/

namespace A286262.P7355253298442371266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337223 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337223 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A286262.P7355253298442371266

/-! ## A286262.P8613945752692713077

`A337223(lt[n-1, A337223(n)])`
-/

namespace A286262.P8613945752692713077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337223 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A286262.P8613945752692713077

/-!
# A286263: The smallest weight possible for a prime vector of order n.

The programs for A286263, there is no canonical definition to state claims against.
-/

/-! ## A286263.P14301059473086018105

`xor(A105083(A332340(2*(n+2))), A191184(2*n+3))`
-/

namespace A286263.P14301059473086018105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A105083 (A332340 (2 * (n + 2))).toNat) (A191184 (2 * n + 3))

end

end A286263.P14301059473086018105

/-!
# A286264: a(n) = 2*(ceiling((n^2)/2)+1) - 1.

The programs for A286264, the canonical program `A286264.P13284111734150492541` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286264 has offset 1).

The definition of A286264 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(ceil((n+1)²/2)+1)-1` (program `A286264.P13284111734150492541`, by `A286264.P13284111734150492541.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A286264.P13284111734150492541

`2*(ceil((n+1)²/2)+1)-1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A286264

/-- `2*(ceil((n+1)²/2)+1)-1` -/
def P13284111734150492541.Spec : Prop :=
  ∀ n, P13284111734150492541.a n = A286264 (n + 1)

theorem P13284111734150492541.correct : P13284111734150492541.Spec := by
  intro n
  simp only [A286264, Nat.add_sub_cancel]

end A286264

/-! ## A286264.P5054860654318030952

`or(1, (n+1)²+1)`
-/

namespace A286264.P5054860654318030952
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((n + 1) ^ 2 + 1)

end

end A286264.P5054860654318030952

namespace A286264

/-- `or(1, (n+1)²+1)` -/
def P5054860654318030952.Spec : Prop :=
  ∀ n, (P5054860654318030952.a n : ℤ) = A286264 (n + 1)

end A286264

/-! ## A286264.P6653132339573697036

`xor(1, ∑[2*or(1, n)])`
-/

namespace A286264.P6653132339573697036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A286264.P6653132339573697036

namespace A286264

/-- `xor(1, ∑[2*or(1, n)])` -/
def P6653132339573697036.Spec : Prop :=
  ∀ n, (P6653132339573697036.a n : ℤ) = A286264 (n + 1)

end A286264

/-! ## A286264.P1957410118580318976

`record[or(3, n²)-2*n]`
-/

namespace A286264.P1957410118580318976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 (n ^ 2) : ℤ) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286264.P1957410118580318976

namespace A286264

/-- `record[or(3, n²)-2*n]` -/
def P1957410118580318976.Spec : Prop :=
  ∀ n, P1957410118580318976.a n = A286264 (n + 1)

end A286264

/-! ## A286264.P10404750328428672411

`∑[a(n-2)+4]` with `a(0)=3, a(1)=2, a(2)=6`
-/

namespace A286264.P10404750328428672411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 6] fun n f1 =>
  f1 (n - 2) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286264.P10404750328428672411

namespace A286264

/-- `∑[a(n-2)+4]` -/
def P10404750328428672411.Spec : Prop :=
  ∀ n, (P10404750328428672411.a n : ℤ) = A286264 (n + 1)

end A286264

/-! ## A286264.P5599009812781650756

`record[2-or(1, -(1-n)²)]`
-/

namespace A286264.P5599009812781650756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.lor 1 (-((1 - (n : ℤ)) ^ 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286264.P5599009812781650756

namespace A286264

/-- `record[2-or(1, -(1-n)²)]` -/
def P5599009812781650756.Spec : Prop :=
  ∀ n, P5599009812781650756.a n = A286264 (n + 1)

end A286264

/-! ## A286264.P9366617873722503607

`∑[4*n-a(n-1)]` with `a(0)=3, a(1)=2`
-/

namespace A286264.P9366617873722503607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  (4 * n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286264.P9366617873722503607

namespace A286264

/-- `∑[4*n-a(n-1)]` -/
def P9366617873722503607.Spec : Prop :=
  ∀ n, P9366617873722503607.a n = A286264 (n + 1)

end A286264

/-! ## A286264.P401878098027886977

`∑[∑[4-a(n-1)]]` with `a(0)=3, a(1)=-1, a(2)=4`
-/

namespace A286264.P401878098027886977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, -1, 4] fun n f2 =>
  4 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286264.P401878098027886977

namespace A286264

/-- `∑[∑[4-a(n-1)]]` -/
def P401878098027886977.Spec : Prop :=
  ∀ n, P401878098027886977.a n = A286264 (n + 1)

end A286264

/-! ## A286264.P15473917527463819790

`ogf((3-x+x^2+x^3)/(1-2x+2x^3-x^4))`
-/

namespace A286264.P15473917527463819790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -1, 1, 1] [1, -2, 0, 2, -1] n

end

end A286264.P15473917527463819790

namespace A286264

/-- `ogf((3-x+x^2+x^3)/(1-2x+2x^3-x^4))` -/
def P15473917527463819790.Spec : Prop :=
  ∀ n, P15473917527463819790.a n = A286264 (n + 1)

end A286264

/-! ## A286264.P14114373788566031726

`xor(1, (n+1)%2+(n+1)²)`
-/

namespace A286264.P14114373788566031726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((n + 1) % 2 + (n + 1) ^ 2)

end

end A286264.P14114373788566031726

namespace A286264

/-- `xor(1, (n+1)%2+(n+1)²)` -/
def P14114373788566031726.Spec : Prop :=
  ∀ n, (P14114373788566031726.a n : ℤ) = A286264 (n + 1)

end A286264

/-! ## A286264.P2393963277550270732

`xor(1, and(1, n+1)+(n+1)²)`
-/

namespace A286264.P2393963277550270732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.land 1 (n + 1) + (n + 1) ^ 2)

end

end A286264.P2393963277550270732

namespace A286264

/-- `xor(1, and(1, n+1)+(n+1)²)` -/
def P2393963277550270732.Spec : Prop :=
  ∀ n, (P2393963277550270732.a n : ℤ) = A286264 (n + 1)

end A286264

/-! ## A286264.P17844922741427222903

`floor(((n+1)^3-a(n-1))/n)` with `a(0)=3`
-/

namespace A286264.P17844922741427222903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊(((n + 1) ^ 3 : ℤ) - a (n - 1) : ℚ) / (n : ℚ)⌋

end

end A286264.P17844922741427222903

namespace A286264

/-- `floor(((n+1)^3-a(n-1))/n)` -/
def P17844922741427222903.Spec : Prop :=
  ∀ n, P17844922741427222903.a n = A286264 (n + 1)

end A286264

/-! ## A286264.P15854133685143583933

`∑[or(2, A004277(n))]`
-/

namespace A286264.P15854133685143583933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A004277 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286264.P15854133685143583933

namespace A286264

/-- `∑[or(2, A004277(n))]` -/
def P15854133685143583933.Spec : Prop :=
  ∀ n, P15854133685143583933.a n = A286264 (n + 1)

end A286264

/-! ## A286264.P7014096664856654114

`∑[or(2, A004275(n+1))]`
-/

namespace A286264.P7014096664856654114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A004275 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286264.P7014096664856654114

namespace A286264

/-- `∑[or(2, A004275(n+1))]` -/
def P7014096664856654114.Spec : Prop :=
  ∀ n, P7014096664856654114.a n = A286264 (n + 1)

end A286264

/-!
# A286265: Totient abundant numbers: numbers k such that A092693(k) > k.

The programs for A286265, the canonical program `A286265.P4047765915956604991` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286265 has offset 1).

The definition of A286265 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3708 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286265.P8842364336086397897

`lt[n, A092693(n^(n%2))]`
-/

namespace A286265.P8842364336086397897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092693 (n ^ (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A286265.P8842364336086397897

namespace A286265

/-- `lt[n, A092693(n^(n%2))]` -/
def P8842364336086397897.Spec : Prop :=
  ∀ n, (P8842364336086397897.a n : ℤ) = A286265 (n + 1)

end A286265

/-! ## A286265.P4047765915956604991

`lt[n+1, A092693(n+1)]+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A286265

/-- `lt[n+1, A092693(n+1)]+1` -/
def P4047765915956604991.Spec : Prop :=
  ∀ n, (P4047765915956604991.a n : ℤ) = A286265 (n + 1)

theorem P4047765915956604991.correct : P4047765915956604991.Spec := by
  intro n
  simp only [A286265, Nat.add_sub_cancel]

end A286265

/-! ## A286265.P2924429688226092003

`lt[n, A092693(A028310(n))]`
-/

namespace A286265.P2924429688226092003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092693 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A286265.P2924429688226092003

namespace A286265

/-- `lt[n, A092693(A028310(n))]` -/
def P2924429688226092003.Spec : Prop :=
  ∀ n, (P2924429688226092003.a n : ℤ) = A286265 (n + 1)

end A286265

/-! ## A286265.P9998051414816043396

`record[A053478(n+5)%A092693(n+5)]`
-/

namespace A286265.P9998051414816043396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053478 (n + 5)) (A092693 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286265.P9998051414816043396

namespace A286265

/-- `record[A053478(n+5)%A092693(n+5)]` -/
def P9998051414816043396.Spec : Prop :=
  ∀ n, P9998051414816043396.a n = A286265 (n + 1)

end A286265

/-! ## A286265.P572366602389817117

`A109613(lt[A109613(n), A092693(n+1)])`
-/

namespace A286265.P572366602389817117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A286265.P572366602389817117

namespace A286265

/-- `A109613(lt[A109613(n), A092693(n+1)])` -/
def P572366602389817117.Spec : Prop :=
  ∀ n, P572366602389817117.a n = A286265 (n + 1)

end A286265

/-! ## A286265.P11354690620570750149

`record[A028234(n+10)%A092693(n+10)]`
-/

namespace A286265.P11354690620570750149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028234 (n + 10)) (A092693 (n + 10))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286265.P11354690620570750149

namespace A286265

/-- `record[A028234(n+10)%A092693(n+10)]` -/
def P11354690620570750149.Spec : Prop :=
  ∀ n, P11354690620570750149.a n = A286265 (n + 1)

end A286265

/-! ## A286265.P15279015593608546915

`lt[n+1, A092693(A233583(n+1))]`
-/

namespace A286265.P15279015593608546915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092693 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A286265.P15279015593608546915

namespace A286265

/-- `lt[n+1, A092693(A233583(n+1))]` -/
def P15279015593608546915.Spec : Prop :=
  ∀ n, (P15279015593608546915.a n : ℤ) = A286265 (n + 1)

end A286265

/-!
# A286267: Totient highly abundant numbers: numbers n such that A092693(n)+n > A092693(m)+m for all m < n.

The programs for A286267, there is no canonical definition to state claims against.
-/

/-! ## A286267.P11455755798295184904

`lt[A085790(A000010(n+1)), A182298(n)]`
-/

namespace A286267.P11455755798295184904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085790 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182298 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A286267.P11455755798295184904

/-! ## A286267.P7720532899156498084

`eq[A326850(n), A344180(A144161(n))]`
-/

namespace A286267.P7720532899156498084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326850 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 (A144161 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A286267.P7720532899156498084

/-! ## A286267.P3411873838055871281

`lt[A200976(n), A133880(A049451(n))]`
-/

namespace A286267.P3411873838055871281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200976 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133880 (A049451 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A286267.P3411873838055871281

/-! ## A286267.P14761825067240275226

`∑[A001227(A199409(n))]`
-/

namespace A286267.P14761825067240275226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A199409 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286267.P14761825067240275226

/-!
# A286268: Totient superabundant numbers: numbers n such that A092693(n)/n > A092693(m)/m for all m < n.

The programs for A286268, there is no canonical definition to state claims against.
-/

/-! ## A286268.P11660143823028784741

`A007755(comp[10-A017017(n)])`
-/

namespace A286268.P11660143823028784741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - A017017 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007755 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A286268.P11660143823028784741

/-! ## A286268.P6163767908792789293

`filter[A007755(n+1), A166360(#)]`
-/

namespace A286268.P6163767908792789293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166360 (f1 j).toNat = 1) n)

end

end A286268.P6163767908792789293

/-! ## A286268.P11186477370453406049

`A007755(A018412(n+1)%A166484(n+1))`
-/

namespace A286268.P11186477370453406049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007755 (Int.tmod (A018412 (n + 1)) (A166484 (n + 1))).toNat

end

end A286268.P11186477370453406049

/-! ## A286268.P10180849110626482515

`A007755(comp[A342638(n+4)-A006156(3*n)])`
-/

namespace A286268.P10180849110626482515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342638 (n + 4) - A006156 (3 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007755 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A286268.P10180849110626482515

/-! ## A286268.P3912063450138633799

`A007755(A051250(n+1)%(A048053(n+4)+1))`
-/

namespace A286268.P3912063450138633799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007755 (Int.tmod (A051250 (n + 1)) (A048053 (n + 4) + 1)).toNat

end

end A286268.P3912063450138633799

/-!
# A286270: A282133(n)/2.

The programs for A286270, there is no canonical definition to state claims against.
-/

/-! ## A286270.P8965164430464893446

`A282133(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286270.P8965164430464893446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282133 (n + 1) : ℚ) / 2

end

end A286270.P8965164430464893446

/-! ## A286270.P15291307323813448208

`A014682(A282133(n+1))`
-/

namespace A286270.P15291307323813448208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A282133 (n + 1)).toNat

end

end A286270.P15291307323813448208

/-! ## A286270.P12174565960712513494

`A004526(A282133(n+1)+1)`
-/

namespace A286270.P12174565960712513494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A282133 (n + 1) + 1).toNat

end

end A286270.P12174565960712513494

/-! ## A286270.P15861620770679118036

`A028242(A282133(n+1)+1)`
-/

namespace A286270.P15861620770679118036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A282133 (n + 1) + 1).toNat

end

end A286270.P15861620770679118036

/-! ## A286270.P5002646012373935533

`A057979(A282133(n+1)+1)`
-/

namespace A286270.P5002646012373935533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A282133 (n + 1) + 1).toNat

end

end A286270.P5002646012373935533

/-!
# A286271: a(0)=1; thereafter a(n) = Sum_{k=2..n+1} A006206(k).

The programs for A286271, there is no canonical definition to state claims against.
-/

/-! ## A286271.P17884735365981532043

`∑[A060280(n+1)]`
-/

namespace A286271.P17884735365981532043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286271.P17884735365981532043

/-! ## A286271.P11412654060469391498

`∑[A006206(n+1)-char[1]]`
-/

namespace A286271.P11412654060469391498
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006206 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286271.P11412654060469391498

/-! ## A286271.P8850414073194021984

`A057428(n)+A001461(n+1)`
-/

namespace A286271.P8850414073194021984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A001461 (n + 1)

end

end A286271.P8850414073194021984

/-! ## A286271.P15721782872587805991

`A001461(n+1)-A057427(n)`
-/

namespace A286271.P15721782872587805991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001461 (n + 1) - A057427 n

end

end A286271.P15721782872587805991

/-! ## A286271.P12525721174904740754

`∑[A006206(n+1)]-A057427(n)`
-/

namespace A286271.P12525721174904740754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057427 n

end

end A286271.P12525721174904740754

/-! ## A286271.P4743189867218156186

`A286272(n+2)-(A286272(n+1)+A060280(n+2))`
-/

namespace A286271.P4743189867218156186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286272 (n + 2) - (A286272 (n + 1) + A060280 (n + 2))

end

end A286271.P4743189867218156186

/-! ## A286271.P7610676277160062837

`∑[A006206(n+1)%A000032(n)]`
-/

namespace A286271.P7610676277160062837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006206 (n + 1)) (A000032 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286271.P7610676277160062837

/-! ## A286271.P1338327300195029223

`∑[A031367(n+1)/(n+1)]`
-/

namespace A286271.P1338327300195029223
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031367 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286271.P1338327300195029223

/-! ## A286271.P18017695762414081056

`∑[A348422(∑[n]+1)]`
-/

namespace A286271.P18017695762414081056
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348422 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286271.P18017695762414081056

/-!
# A286272: Partial sums of A286271.

The programs for A286272, there is no canonical definition to state claims against.
-/

/-! ## A286272.P16363482136509087407

`∑[A286271(n)]-1`
-/

namespace A286272.P16363482136509087407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A286272.P16363482136509087407

/-! ## A286272.P15641423232575256538

`∑[A001461(n+1)-1]`
-/

namespace A286272.P15641423232575256538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001461 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286272.P15641423232575256538

/-! ## A286272.P6893151410991135786

`∑[∑[A006206(n+1)]-1]`
-/

namespace A286272.P6893151410991135786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006206 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286272.P6893151410991135786

/-! ## A286272.P16164810510163761995

`∑[∑[A060280(n+1)]]-1`
-/

namespace A286272.P16164810510163761995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060280 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A286272.P16164810510163761995

/-! ## A286272.P8856447646689249911

`∑[∑[A006206(n+1)*A057427(n)]]`
-/

namespace A286272.P8856447646689249911
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006206 (n + 1) * A057427 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286272.P8856447646689249911

/-! ## A286272.P11528246776901552380

`∑[∑[A348422(∑[n]+1)]]-1`
-/

namespace A286272.P11528246776901552380
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348422 (∑ j ∈ Finset.range (n + 1), f3 j + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A286272.P11528246776901552380

/-!
# A286277: Number of proper non-orientable regular hypermaps on a surface of genus n, up to isomorphism and triality.

The programs for A286277, there is no canonical definition to state claims against.
-/

/-! ## A286277.P18068675837328081326

`A240608(p?[A245049(n)])`
-/

namespace A286277.P18068675837328081326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240608 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A286277.P18068675837328081326

/-! ## A286277.P1793339134528680275

`A276719(p?[A245049(n)])`
-/

namespace A286277.P1793339134528680275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276719 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A286277.P1793339134528680275

/-! ## A286277.P7638653520161450658

`A320955(p?[A245049(n)])`
-/

namespace A286277.P7638653520161450658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320955 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A286277.P7638653520161450658

/-! ## A286277.P4307539954555683934

`A341495(∏{e}[A006645(n+1), #])`
-/

namespace A286277.P4307539954555683934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341495 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A286277.P4307539954555683934

/-! ## A286277.P3338341978233489682

`A366472(n+1)%A018609(A191302(n))`
-/

namespace A286277.P3338341978233489682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366472 (n + 1)) (A018609 (A191302 n).toNat)

end

end A286277.P3338341978233489682

/-!
# A286280: Number of connected arc-transitive graphs of order n.

The programs for A286280, there is no canonical definition to state claims against.
-/

/-! ## A286280.P13460675259753443846

`A180240(n+2)+1-A087145(n+2)`
-/

namespace A286280.P13460675259753443846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180240 (n + 2) + (1 - A087145 (n + 2))

end

end A286280.P13460675259753443846

/-! ## A286280.P8331966812681917480

`A133181(n+2)`
-/

namespace A286280.P8331966812681917480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133181 (n + 2)

end

end A286280.P8331966812681917480

/-! ## A286280.P16638320169877994242

`A246081(A133181(comp[n²²]))`
-/

namespace A286280.P16638320169877994242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246081 (A133181 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A286280.P16638320169877994242

/-! ## A286280.P16188552747418196995

`A286931(n+2)-A087145(n+2)`
-/

namespace A286280.P16188552747418196995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286931 (n + 2) - A087145 (n + 2)

end

end A286280.P16188552747418196995

/-! ## A286280.P14040595025408163922

`A137921(A067136(n)+n²)`
-/

namespace A286280.P14040595025408163922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137921 (A067136 n + (n ^ 2 : ℤ)).toNat

end

end A286280.P14040595025408163922

/-!
# A286281: a(n) = floor the elevator is on at the n-th stage of Ken Knowlton's elevator problem, version 2.

The programs for A286281, there is no canonical definition to state claims against.
-/

/-! ## A286281.P11713579538684114719

`∑[A008836(A135530(A194900(n+1)))]`
-/

namespace A286281.P11713579538684114719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A135530 (A194900 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286281.P11713579538684114719

/-! ## A286281.P15644092039647435730

`∑[A020985(A127915(A128395(n+1)))]`
-/

namespace A286281.P15644092039647435730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A127915 (A128395 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286281.P15644092039647435730

/-! ## A286281.P3013952374200668410

`∑[A209661(A097545(A184735(n+1)))]`
-/

namespace A286281.P3013952374200668410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209661 (A097545 (A184735 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286281.P3013952374200668410

/-! ## A286281.P17633257422969097003

`∑[A165471(Δ[A057296(n+1)])]`
-/

namespace A286281.P17633257422969097003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057296 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286281.P17633257422969097003

/-! ## A286281.P3540129956382968583

`gcd(A005811(n+1), A039915(A334965(3*n+4)))`
-/

namespace A286281.P3540129956382968583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005811 (n + 1)) (A039915 (A334965 (3 * n + 4)).toNat)

end

end A286281.P3540129956382968583

/-!
# A286282: Stage at which Ken Knowlton's elevator (version 2) reaches floor n for the first time.

The programs for A286282, the canonical program `A286282.P4498904757692292826` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286282 has offset 1).

The definition of A286282 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A286282.P4498904757692292826

`2*A002627(n)-(n-1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A286282

/-- `2*A002627(n)-(n-1)` -/
def P4498904757692292826.Spec : Prop :=
  ∀ n, P4498904757692292826.a n = A286282 (n + 1)

theorem P4498904757692292826.correct : P4498904757692292826.Spec := by
  intro n
  simp only [A286282, Nat.add_sub_cancel]

end A286282

/-! ## A286282.P6478543952598892108

`n*(a(n-1)-3+n)+3` with `a(0)=1`
-/

namespace A286282.P6478543952598892108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (a (n - 1) - 3 + (n : ℤ)) + 3

end

end A286282.P6478543952598892108

namespace A286282

/-- `n*(a(n-1)-3+n)+3` -/
def P6478543952598892108.Spec : Prop :=
  ∀ n, P6478543952598892108.a n = A286282 (n + 1)

end A286282

/-! ## A286282.P10034777274403478173

`3-n*(3-a(n-1)-n)` with `a(0)=1`
-/

namespace A286282.P10034777274403478173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 - (n : ℤ) * (3 - a (n - 1) - (n : ℤ))

end

end A286282.P10034777274403478173

namespace A286282

/-- `3-n*(3-a(n-1)-n)` -/
def P10034777274403478173.Spec : Prop :=
  ∀ n, P10034777274403478173.a n = A286282 (n + 1)

end A286282

/-! ## A286282.P13644462388382178946

`2*A213937(n+1)-(n+1)`
-/

namespace A286282.P13644462388382178946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213937 (n + 1) - (n + 1 : ℤ)

end

end A286282.P13644462388382178946

namespace A286282

/-- `2*A213937(n+1)-(n+1)` -/
def P13644462388382178946.Spec : Prop :=
  ∀ n, P13644462388382178946.a n = A286282 (n + 1)

end A286282

/-! ## A286282.P1933822563016805730

`A024000(n)+2*A002627(n)`
-/

namespace A286282.P1933822563016805730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 n + 2 * A002627 n

end

end A286282.P1933822563016805730

namespace A286282

/-- `A024000(n)+2*A002627(n)` -/
def P1933822563016805730.Spec : Prop :=
  ∀ n, P1933822563016805730.a n = A286282 (n + 1)

end A286282

/-!
# A286283: a(n) = floor(7*n^2/48).

The programs for A286283, the canonical program `A286283.P3378871314826713271` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286283 has offset 0).

The definition of A286283 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(7*n²/48)` (program `A286283.P3378871314826713271`, by `A286283.P3378871314826713271.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A286283.P3378871314826713271

`floor(7*n²/48)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A286283

/-- `floor(7*n²/48)` -/
def P3378871314826713271.Spec : Prop :=
  ∀ n, P3378871314826713271.a n = A286283 n

theorem P3378871314826713271.correct : P3378871314826713271.Spec := by
  intro n
  simp only [A286283]

end A286283

/-! ## A286283.P11469508061571594171

`A056827(n)-A110654(A309689(n))`
-/

namespace A286283.P11469508061571594171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056827 n - A110654 (A309689 n).toNat

end

end A286283.P11469508061571594171

namespace A286283

/-- `A056827(n)-A110654(A309689(n))` -/
def P11469508061571594171.Spec : Prop :=
  ∀ n, P11469508061571594171.a n = A286283 n

end A286283

/-! ## A286283.P6752213091444317378

`A004526(A002620(n))+floor(A309689(n)/2)`
-/

namespace A286283.P6752213091444317378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002620 n).toNat + ⌊(A309689 n : ℚ) / 2⌋

end

end A286283.P6752213091444317378

namespace A286283

/-- `A004526(A002620(n))+floor(A309689(n)/2)` -/
def P6752213091444317378.Spec : Prop :=
  ∀ n, P6752213091444317378.a n = A286283 n

end A286283

/-! ## A286283.P3975452182869490067

`A004526(A004652(n))+floor(A309689(n)/2)`
-/

namespace A286283.P3975452182869490067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004652 n).toNat + ⌊(A309689 n : ℚ) / 2⌋

end

end A286283.P3975452182869490067

namespace A286283

/-- `A004526(A004652(n))+floor(A309689(n)/2)` -/
def P3975452182869490067.Spec : Prop :=
  ∀ n, P3975452182869490067.a n = A286283 n

end A286283

/-! ## A286283.P8472257426872895488

`A004526(A004652(n))+A004526(A309689(n))`
-/

namespace A286283.P8472257426872895488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004652 n).toNat + A004526 (A309689 n).toNat

end

end A286283.P8472257426872895488

namespace A286283

/-- `A004526(A004652(n))+A004526(A309689(n))` -/
def P8472257426872895488.Spec : Prop :=
  ∀ n, P8472257426872895488.a n = A286283 n

end A286283

/-! ## A286283.P8515086257872799805

`A004526(round(n²/8)+floor(n²/6))`
-/

namespace A286283.P8515086257872799805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 8) + ⌊(n ^ 2 : ℚ) / 6⌋).toNat

end

end A286283.P8515086257872799805

namespace A286283

/-- `A004526(round(n²/8)+floor(n²/6))` -/
def P8515086257872799805.Spec : Prop :=
  ∀ n, P8515086257872799805.a n = A286283 n

end A286283

/-! ## A286283.P6630524136653497905

`A008619(A309689(n)+A002620(n))-1`
-/

namespace A286283.P6630524136653497905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A309689 n + A002620 n).toNat - 1

end

end A286283.P6630524136653497905

namespace A286283

/-- `A008619(A309689(n)+A002620(n))-1` -/
def P6630524136653497905.Spec : Prop :=
  ∀ n, P6630524136653497905.a n = A286283 n

end A286283

/-! ## A286283.P4603050355829135831

`A008619(∑[A057353(n)]-A069905(n))-1`
-/

namespace A286283.P4603050355829135831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f1 j - A069905 n).toNat - 1

end

end A286283.P4603050355829135831

namespace A286283

/-- `A008619(∑[A057353(n)]-A069905(n))-1` -/
def P4603050355829135831.Spec : Prop :=
  ∀ n, P4603050355829135831.a n = A286283 n

end A286283

/-! ## A286283.P10734306792106934212

`A194235(A000212(n)+1)`
-/

namespace A286283.P10734306792106934212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194235 (A000212 n + 1).toNat

end

end A286283.P10734306792106934212

namespace A286283

/-- `A194235(A000212(n)+1)` -/
def P10734306792106934212.Spec : Prop :=
  ∀ n, P10734306792106934212.a n = A286283 n

end A286283

/-! ## A286283.P17004552613945118061

`A002265(A002620(n)+A000212(n))`
-/

namespace A286283.P17004552613945118061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A002620 n + A000212 n).toNat

end

end A286283.P17004552613945118061

namespace A286283

/-- `A002265(A002620(n)+A000212(n))` -/
def P17004552613945118061.Spec : Prop :=
  ∀ n, P17004552613945118061.a n = A286283 n

end A286283

/-! ## A286283.P7892340281439561308

`A002265(∑[A004526(n)+A004523(n)])`
-/

namespace A286283.P7892340281439561308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A286283.P7892340281439561308

namespace A286283

/-- `A002265(∑[A004526(n)+A004523(n)])` -/
def P7892340281439561308.Spec : Prop :=
  ∀ n, P7892340281439561308.a n = A286283 n

end A286283

/-! ## A286283.P7060032064565422973

`A002265(A002620(n)+2*A056827(n))`
-/

namespace A286283.P7060032064565422973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A002620 n + 2 * A056827 n).toNat

end

end A286283.P7060032064565422973

namespace A286283

/-- `A002265(A002620(n)+2*A056827(n))` -/
def P7060032064565422973.Spec : Prop :=
  ∀ n, P7060032064565422973.a n = A286283 n

end A286283

/-! ## A286283.P8475001820953428502

`A002265(∑[A002265(2*n)+A002264(2*n)])`
-/

namespace A286283.P8475001820953428502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * n) + A002264 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A286283.P8475001820953428502

namespace A286283

/-- `A002265(∑[A002265(2*n)+A002264(2*n)])` -/
def P8475001820953428502.Spec : Prop :=
  ∀ n, P8475001820953428502.a n = A286283 n

end A286283

/-! ## A286283.P17450282619273374795

`A002265(A211540(3*(n+1))-floor(A000217(n+1)/3))`
-/

namespace A286283.P17450282619273374795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A211540 (3 * (n + 1)) - ⌊(A000217 (n + 1) : ℚ) / 3⌋).toNat

end

end A286283.P17450282619273374795

namespace A286283

/-- `A002265(A211540(3*(n+1))-floor(A000217(n+1)/3))` -/
def P17450282619273374795.Spec : Prop :=
  ∀ n, P17450282619273374795.a n = A286283 n

end A286283

/-! ## A286283.P1204179281603497691

`A002265(A056827(n)+A056827(n)+A002620(n))`
-/

namespace A286283.P1204179281603497691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A056827 n + (A056827 n + A002620 n)).toNat

end

end A286283.P1204179281603497691

namespace A286283

/-- `A002265(A056827(n)+A056827(n)+A002620(n))` -/
def P1204179281603497691.Spec : Prop :=
  ∀ n, P1204179281603497691.a n = A286283 n

end A286283

/-! ## A286283.P3602510975698115687

`A002265(A187324(n²))`
-/

namespace A286283.P3602510975698115687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A187324 (n ^ 2)).toNat

end

end A286283.P3602510975698115687

namespace A286283

/-- `A002265(A187324(n²))` -/
def P3602510975698115687.Spec : Prop :=
  ∀ n, P3602510975698115687.a n = A286283 n

end A286283

/-! ## A286283.P8755088451951156445

`A002264(A187324(A057353(n²)))`
-/

namespace A286283.P8755088451951156445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A187324 (A057353 (n ^ 2)).toNat).toNat

end

end A286283.P8755088451951156445

namespace A286283

/-- `A002264(A187324(A057353(n²)))` -/
def P8755088451951156445.Spec : Prop :=
  ∀ n, P8755088451951156445.a n = A286283 n

end A286283

/-! ## A286283.P18166267508766135800

`A002265(A002620(n)+A002264(n²))`
-/

namespace A286283.P18166267508766135800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A002620 n + A002264 (n ^ 2)).toNat

end

end A286283.P18166267508766135800

namespace A286283

/-- `A002265(A002620(n)+A002264(n²))` -/
def P18166267508766135800.Spec : Prop :=
  ∀ n, P18166267508766135800.a n = A286283 n

end A286283

/-! ## A286283.P120464606144787000

`A002265(A002265(n²)+A000212(n))`
-/

namespace A286283.P120464606144787000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A002265 (n ^ 2) + A000212 n).toNat

end

end A286283.P120464606144787000

namespace A286283

/-- `A002265(A002265(n²)+A000212(n))` -/
def P120464606144787000.Spec : Prop :=
  ∀ n, P120464606144787000.a n = A286283 n

end A286283

/-!
# A286286: a(0) = 0; thereafter, a(n) = (2*n-1)*a(n-1) + 1.

The programs for A286286, the canonical program `A286286.P1678702954851126922` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286286 has offset 0).

The definition of A286286 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-1)*a(n-1)+1` (program `A286286.P1678702954851126922`, by `A286286.P1678702954851126922.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A286286.P1678702954851126922

`(2*n-1)*a(n-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A286286

/-- `(2*n-1)*a(n-1)+1` -/
def P1678702954851126922.Spec : Prop :=
  ∀ n, P1678702954851126922.a n = A286286 n

theorem P1678702954851126922.correct : P1678702954851126922.Spec := by
  intro n
  simp only [A286286]

end A286286

/-! ## A286286.P4697564680595803866

`2*n*a(n-1)-(2*n-3)*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A286286.P4697564680595803866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * ((n : ℤ) * a (n - 1)) - ((2 * n : ℤ) - 3) * a (n - 2)

end

end A286286.P4697564680595803866

namespace A286286

/-- `2*n*a(n-1)-(2*n-3)*a(n-2)` -/
def P4697564680595803866.Spec : Prop :=
  ∀ n, P4697564680595803866.a n = A286286 n

end A286286

/-! ## A286286.P166725143855966036

`1-(1-2*n)*a(n-1)` with `a(0)=0`
-/

namespace A286286.P166725143855966036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (1 - (2 * n : ℤ)) * a (n - 1)

end

end A286286.P166725143855966036

namespace A286286

/-- `1-(1-2*n)*a(n-1)` -/
def P166725143855966036.Spec : Prop :=
  ∀ n, P166725143855966036.a n = A286286 n

theorem P166725143855966036.correct : P166725143855966036.Spec := by
  intro n
  simp only [A286286, Nat.add_sub_cancel, A286286.P166725143855966036.a, A286286.P1678702954851126922.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A286286

/-! ## A286286.P16422369575723077759

`(1-A047907(2*n+1))/2`
-/

namespace A286286.P16422369575723077759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A047907 (2 * n + 1) : ℚ) / 2

end

end A286286.P16422369575723077759

namespace A286286

/-- `(1-A047907(2*n+1))/2` -/
def P16422369575723077759.Spec : Prop :=
  ∀ n, P16422369575723077759.a n = (A286286 n : ℚ)

end A286286

/-! ## A286286.P7469635592318192464

`a(n-1)*A004273(n)+1` with `a(0)=0`
-/

namespace A286286.P7469635592318192464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) * A004273 n + 1

end

end A286286.P7469635592318192464

namespace A286286

/-- `a(n-1)*A004273(n)+1` -/
def P7469635592318192464.Spec : Prop :=
  ∀ n, P7469635592318192464.a n = A286286 n

end A286286

/-! ## A286286.P16340665298782642324

`a(n-1)*record[A006257(n)]+1` with `a(0)=0`
-/

namespace A286286.P16340665298782642324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A286286.P16340665298782642324

namespace A286286

/-- `a(n-1)*record[A006257(n)]+1` -/
def P16340665298782642324.Spec : Prop :=
  ∀ n, P16340665298782642324.a n = A286286 n

end A286286

/-! ## A286286.P14556583477121504250

`a(n-1)*A004274(n+1)+1` with `a(0)=0`
-/

namespace A286286.P14556583477121504250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) * A004274 (n + 1) + 1

end

end A286286.P14556583477121504250

namespace A286286

/-- `a(n-1)*A004274(n+1)+1` -/
def P14556583477121504250.Spec : Prop :=
  ∀ n, P14556583477121504250.a n = A286286 n

end A286286

/-! ## A286286.P16332212435703452328

`a(n-1)*lt[0, A083594(n)]+1` with `a(0)=0`
-/

namespace A286286.P16332212435703452328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083594 n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A286286.P16332212435703452328

namespace A286286

/-- `a(n-1)*lt[0, A083594(n)]+1` -/
def P16332212435703452328.Spec : Prop :=
  ∀ n, (P16332212435703452328.a n : ℤ) = A286286 n

end A286286

/-! ## A286286.P3156476824327351902

`A112293(n)-A001147(n)`
-/

namespace A286286.P3156476824327351902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112293 n - A001147 n

end

end A286286.P3156476824327351902

namespace A286286

/-- `A112293(n)-A001147(n)` -/
def P3156476824327351902.Spec : Prop :=
  ∀ n, P3156476824327351902.a n = A286286 n

end A286286

/-! ## A286286.P7989387442370623498

`a(n-1)*A109613(A004275(n))+1` with `a(0)=0`
-/

namespace A286286.P7989387442370623498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) * A109613 (A004275 n).toNat + 1

end

end A286286.P7989387442370623498

namespace A286286

/-- `a(n-1)*A109613(A004275(n))+1` -/
def P7989387442370623498.Spec : Prop :=
  ∀ n, P7989387442370623498.a n = A286286 n

end A286286

/-!
# A286290: A bisection of A064736.

The programs for A286290, there is no canonical definition to state claims against.
-/

/-! ## A286290.P1638814182192719623

`A064736(Δ[n²])`
-/

namespace A286290.P1638814182192719623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064736 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A286290.P1638814182192719623

/-! ## A286290.P15509947966848099883

`record[A064736(n+1)-n%2]`
-/

namespace A286290.P15509947966848099883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064736 (n + 1) - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286290.P15509947966848099883

/-! ## A286290.P16496570422601088522

`record[A064736(n+2)/C(2, C(2, n²))]`
-/

namespace A286290.P16496570422601088522
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064736 (n + 2) : ℚ) / (Nat.choose 2 (Nat.choose 2 (n ^ 2)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286290.P16496570422601088522

/-! ## A286290.P15980388258771887876

`A064736(n+n+1)^gcd(n, n+1)`
-/

namespace A286290.P15980388258771887876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064736 (n + n + 1) ^ Nat.gcd n (n + 1)

end

end A286290.P15980388258771887876

/-! ## A286290.P17332648626614886553

`record[A064736(A093178(n))]`
-/

namespace A286290.P17332648626614886553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064736 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286290.P17332648626614886553

/-! ## A286290.P13072331341271922799

`record[A064736(A003159(n+1))]`
-/

namespace A286290.P13072331341271922799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064736 (A003159 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286290.P13072331341271922799

/-! ## A286290.P266848877609650834

`record[A064736(A064745(n+2)-1)]`
-/

namespace A286290.P266848877609650834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064736 (A064745 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286290.P266848877609650834

/-! ## A286290.P13747187040013963956

`record[A064736(A210771(n+2)-1)]`
-/

namespace A286290.P13747187040013963956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064736 (A210771 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286290.P13747187040013963956

/-! ## A286290.P10530416610821690434

`record[A064736(n+1)-A000035(n)]`
-/

namespace A286290.P10530416610821690434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064736 (n + 1) - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286290.P10530416610821690434

/-! ## A286290.P3197196235851896704

`record[A064736(n+2)/A000041(C(2, n+1))]`
-/

namespace A286290.P3197196235851896704
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064736 (n + 2) : ℚ) / (A000041 (Nat.choose 2 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286290.P3197196235851896704

/-! ## A286290.P2290431326409250464

`a(n-1)+A286293(n)+4` with `a(0)=1`
-/

namespace A286290.P2290431326409250464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A286293 n + 4)

end

end A286290.P2290431326409250464

/-! ## A286290.P13294261349549531143

`filter[A064736(2*n+1), A005171(#)]`
-/

namespace A286290.P13294261349549531143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064736 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A286290.P13294261349549531143

/-! ## A286290.P9221585691767966324

`filter[A064736(2*n+1), A283265(#)]`
-/

namespace A286290.P9221585691767966324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064736 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283265 (f1 j).toNat = 1) n)

end

end A286290.P9221585691767966324

/-! ## A286290.P3256263034182124015

`filter[A064736(2*n+1), A347950(#)]`
-/

namespace A286290.P3256263034182124015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064736 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A286290.P3256263034182124015

/-!
# A286291: A bisection of A064736.

The programs for A286291, there is no canonical definition to state claims against.
-/

/-! ## A286291.P8733524886453391712

`round(sqrt(∑[A286292(n+1)]))`
-/

namespace A286291.P8733524886453391712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ))

end

end A286291.P8733524886453391712

/-! ## A286291.P16991193096834087506

`comp[A286290(n+1)-1]+1`
-/

namespace A286291.P16991193096834087506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286290 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A286291.P16991193096834087506

/-! ## A286291.P571543345531615764

`A121229(n+2)`
-/

namespace A286291.P571543345531615764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121229 (n + 2)

end

end A286291.P571543345531615764

/-! ## A286291.P2071173817921769803

`floor(sqrt(A286290(n+2)))`
-/

namespace A286291.P2071173817921769803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A286290 (n + 2))

end

end A286291.P2071173817921769803

/-! ## A286291.P3472695045113027474

`lt[n, A064745(n+2)]+2`
-/

namespace A286291.P3472695045113027474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064745 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A286291.P3472695045113027474

/-! ## A286291.P1516416955987784448

`A064736(2*(n+1))`
-/

namespace A286291.P1516416955987784448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064736 (2 * (n + 1))

end

end A286291.P1516416955987784448

/-! ## A286291.P16777655736615546222

`record[A064736(A093178(n)+1)]`
-/

namespace A286291.P16777655736615546222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064736 (A093178 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286291.P16777655736615546222

/-! ## A286291.P11454552061105635609

`A064736(A005843(n+1))%A003157(n+1)`
-/

namespace A286291.P11454552061105635609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064736 (A005843 (n + 1)).toNat) (A003157 (n + 1))

end

end A286291.P11454552061105635609

/-! ## A286291.P8300961340858610944

`record[floor(sqrt(A064736(n+3)))]`
-/

namespace A286291.P8300961340858610944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A064736 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286291.P8300961340858610944

/-! ## A286291.P664490478712587452

`A064745(A064736(A064736(n+2+n)))`
-/

namespace A286291.P664490478712587452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064745 (A064736 (A064736 (n + 2 + n)).toNat).toNat

end

end A286291.P664490478712587452

/-!
# A286292: The first differences of A286291 (one of the bisections of A064736) appears to consist of runs of 1 followed by singleton 2's; this sequence gives the lengths of these runs.

The programs for A286292, there is no canonical definition to state claims against.
-/

/-! ## A286292.P10173040606176293316

`A286290(n+2)-A286290(n+1)-2`
-/

namespace A286292.P10173040606176293316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286290 (n + 2) - A286290 (n + 1) - 2

end

end A286292.P10173040606176293316

/-! ## A286292.P17783700392194854115

`Δ[A286290(n+1)]-2`
-/

namespace A286292.P17783700392194854115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A286292.P17783700392194854115

/-! ## A286292.P6307582397654868232

`Δ[A064736(Δ[n²])]-2`
-/

namespace A286292.P6307582397654868232
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064736 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A286292.P6307582397654868232

/-! ## A286292.P14594762512426734398

`A286293(n+1)+2`
-/

namespace A286292.P14594762512426734398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286293 (n + 1) + 2

end

end A286292.P14594762512426734398

/-! ## A286292.P4501724391210410949

`A009056(A286293(n+1))`
-/

namespace A286292.P4501724391210410949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A286293 (n + 1)).toNat

end

end A286292.P4501724391210410949

/-!
# A286293: A compressed version of A286290.

The programs for A286293, there is no canonical definition to state claims against.
-/

/-! ## A286293.P17066983250972787148

`A286292(n+1)-2`
-/

namespace A286293.P17066983250972787148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286292 (n + 1) - 2

end

end A286293.P17066983250972787148

/-! ## A286293.P4318507795708640454

`Δ[A286290(n+1)]-4`
-/

namespace A286293.P4318507795708640454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 4

end

end A286293.P4318507795708640454

/-! ## A286293.P5111008343245162071

`Δ[A064736(Δ[n²])]-4`
-/

namespace A286293.P5111008343245162071
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064736 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 4

end

end A286293.P5111008343245162071

/-! ## A286293.P6078532587567507109

`A023444(A286292(n+1))`
-/

namespace A286293.P6078532587567507109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A286292 (n + 1)).toNat

end

end A286293.P6078532587567507109

/-! ## A286293.P4999360127192480417

`A286290(n+2)-(A286290(n+1)+4)`
-/

namespace A286293.P4999360127192480417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286290 (n + 2) - (A286290 (n + 1) + 4)

end

end A286293.P4999360127192480417

/-!
# A286294: Leading column of right triangle in A274650.

The programs for A286294, there is no canonical definition to state claims against.
-/

/-! ## A286294.P14786215443514765978

`A274650(∑[n])`
-/

namespace A286294.P14786215443514765978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274650 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A286294.P14786215443514765978

/-! ## A286294.P678707175606016327

`A308181(∑[ceil(n/2)])`
-/

namespace A286294.P678707175606016327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308181 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A286294.P678707175606016327

/-! ## A286294.P10134431829826789403

`and(-1, A274650(C(n+1, 2)))`
-/

namespace A286294.P10134431829826789403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A274650 (Nat.choose (n + 1) 2))

end

end A286294.P10134431829826789403

/-! ## A286294.P10084213354244495367

`and(-1, A274650((n²+n)/2))`
-/

namespace A286294.P10084213354244495367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A274650 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat)

end

end A286294.P10084213354244495367

/-! ## A286294.P2849071917249112049

`A308181(∑[∑[n%2]])%(n+3)`
-/

namespace A286294.P2849071917249112049
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308181 (∑ j ∈ Finset.range (n + 1), f1 j)) (n + 3 : ℤ)

end

end A286294.P2849071917249112049

/-! ## A286294.P9470810797769654018

`or(char[1], A274650(A000217(n)))`
-/

namespace A286294.P9470810797769654018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A274650 (A000217 n).toNat)

end

end A286294.P9470810797769654018

/-! ## A286294.P3654237757904388064

`A308181(abs(A083392(n)))%(n+3)`
-/

namespace A286294.P3654237757904388064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308181 |A083392 n|.toNat) (n + 3 : ℤ)

end

end A286294.P3654237757904388064

/-! ## A286294.P10842069124814993896

`A308181(∑[A110654(n)])%(n+3)`
-/

namespace A286294.P10842069124814993896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308181 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (n + 3 : ℤ)

end

end A286294.P10842069124814993896

/-! ## A286294.P7064864712030520166

`A308181(Δ[A173196(n)])%(n+3)`
-/

namespace A286294.P7064864712030520166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308181 (f1 (n + 1) - f1 n).toNat) (n + 3 : ℤ)

end

end A286294.P7064864712030520166

/-! ## A286294.P3499058358946917317

`A308181(A002620(n+1))%(n+3)`
-/

namespace A286294.P3499058358946917317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308181 (A002620 (n + 1)).toNat) (n + 3 : ℤ)

end

end A286294.P3499058358946917317

/-! ## A286294.P1312365429657505619

`∑{d}[A274650(C(n+1, 2)), A000010(#)]`
-/

namespace A286294.P1312365429657505619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274650 (Nat.choose (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A286294.P1312365429657505619

/-! ## A286294.P602781174732561095

`A308181(∑[∑[A000035(n)]])%(n+3)`
-/

namespace A286294.P602781174732561095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308181 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (n + 3 : ℤ)

end

end A286294.P602781174732561095

/-! ## A286294.P24834585027975729

`A274650(A000217(n))%A000040(n+1)`
-/

namespace A286294.P24834585027975729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274650 (A000217 n).toNat) (A000040 (n + 1))

end

end A286294.P24834585027975729

/-! ## A286294.P13279968306708949925

`A000010(gcd(n, n+1))*A274650(A000217(n))`
-/

namespace A286294.P13279968306708949925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.gcd n (n + 1)) * A274650 (A000217 n).toNat

end

end A286294.P13279968306708949925

/-! ## A286294.P17056586307723630476

`A014963(40*(n+1))*A308181(∑[A110654(n)])`
-/

namespace A286294.P17056586307723630476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (40 * (n + 1)) * A308181 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A286294.P17056586307723630476

/-! ## A286294.P5828874130673928928

`A274651(∑[n]+1)-1`
-/

namespace A286294.P5828874130673928928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274651 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 1

end

end A286294.P5828874130673928928

/-! ## A286294.P13354906632117843050

`A274528(A000217(A274650(A000217(n))))`
-/

namespace A286294.P13354906632117843050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274528 (A000217 (A274650 (A000217 n).toNat).toNat).toNat

end

end A286294.P13354906632117843050

/-! ## A286294.P3936792417571587644

`A288384(n)+n`
-/

namespace A286294.P3936792417571587644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288384 n + (n : ℤ)

end

end A286294.P3936792417571587644

/-!
# A286295: The right edge of the triangle in A274650.

The programs for A286295, there is no canonical definition to state claims against.
-/

/-! ## A286295.P4216470610338711025

`A274650(∑[n]+n)`
-/

namespace A286295.P4216470610338711025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274650 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A286295.P4216470610338711025

/-! ## A286295.P5233695524537348026

`or(char[2], A274650(A000096(n)))`
-/

namespace A286295.P5233695524537348026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A274650 (A000096 n).toNat)

end

end A286295.P5233695524537348026

/-! ## A286295.P4036262526114441755

`or(char[2], A274650(A000217(n)+n))`
-/

namespace A286295.P4036262526114441755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A274650 (A000217 n + (n : ℤ)).toNat)

end

end A286295.P4036262526114441755

/-! ## A286295.P17686352088960986999

`A274650(Δ[A005581(n)])%Δ[n²]`
-/

namespace A286295.P17686352088960986999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274650 (f1 (n + 1) - f1 n).toNat) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A286295.P17686352088960986999

/-! ## A286295.P7985660896834345654

`A057427(n)*A274650(A000096(n))`
-/

namespace A286295.P7985660896834345654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A274650 (A000096 n).toNat

end

end A286295.P7985660896834345654

/-! ## A286295.P758267653085623878

`∑{d}[A274650(A000096(n)), A000010(#)]`
-/

namespace A286295.P758267653085623878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274650 (A000096 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A286295.P758267653085623878

/-! ## A286295.P9844304833520014370

`A274650(A000096(n))%A000040(n+1)`
-/

namespace A286295.P9844304833520014370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274650 (A000096 n).toNat) (A000040 (n + 1))

end

end A286295.P9844304833520014370

/-! ## A286295.P17190668178759008114

`A007318(C(2, n))*A274650(A000096(n))`
-/

namespace A286295.P17190668178759008114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A274650 (A000096 n).toNat

end

end A286295.P17190668178759008114

/-! ## A286295.P4431437847606129581

`∑{d}[A274650(A000217(n)+n), A000010(#)]`
-/

namespace A286295.P4431437847606129581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274650 (A000217 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A286295.P4431437847606129581

/-! ## A286295.P15609016865550068859

`A000038(n)!*A274650(A000217(n)+n)`
-/

namespace A286295.P15609016865550068859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000038 n).toNat : ℤ) * A274650 (A000217 n + (n : ℤ)).toNat

end

end A286295.P15609016865550068859

/-! ## A286295.P6254535150089943074

`A274650(A000217(n)+n)+A000038(n+1)`
-/

namespace A286295.P6254535150089943074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274650 (A000217 n + (n : ℤ)).toNat + A000038 (n + 1)

end

end A286295.P6254535150089943074

/-! ## A286295.P14692263428771695394

`A274650(A000217(n)+n)+A001489(n)+n`
-/

namespace A286295.P14692263428771695394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274650 (A000217 n + (n : ℤ)).toNat + (A001489 n + (n : ℤ))

end

end A286295.P14692263428771695394

/-! ## A286295.P12707632220291019008

`A274651(∑[n+1])-1`
-/

namespace A286295.P12707632220291019008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274651 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A286295.P12707632220291019008

/-! ## A286295.P13344463152827574498

`A308181(n*(n+2))`
-/

namespace A286295.P13344463152827574498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308181 (n * (n + 2))

end

end A286295.P13344463152827574498

/-!
# A286296: a(n) = nextprime(P(n)+2) - P(n), where P(n) = Product_{k=1..n} Fibonacci(k) and nextprime(i) is the smallest prime > i.

The programs for A286296, there is no canonical definition to state claims against.
-/

/-! ## A286296.P9552174409287089245

`abs(xor(-2, A066889(n+1)))`
-/

namespace A286296.P9552174409287089245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-2) (A066889 (n + 1))|

end

end A286296.P9552174409287089245

/-! ## A286296.P10735657263067248073

`A066889(round(acot(a(n-1))+n)+1)` with `a(0)=4, a(1)=4`
-/

namespace A286296.P10735657263067248073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n a =>
  A066889 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (a (n - 1) : ℝ) + (n : ℝ)) + 1).toNat

end

end A286296.P10735657263067248073

/-! ## A286296.P10665168561761847335

`A034699(2*A066889(n+1))`
-/

namespace A286296.P10665168561761847335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (2 * A066889 (n + 1)).toNat

end

end A286296.P10665168561761847335

/-! ## A286296.P2061827088971941855

`A330691(2*A066889(n+1))`
-/

namespace A286296.P2061827088971941855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330691 (2 * A066889 (n + 1)).toNat

end

end A286296.P2061827088971941855

/-! ## A286296.P2885429022874727806

`A330741(2*A066889(n+1))`
-/

namespace A286296.P2885429022874727806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330741 (2 * A066889 (n + 1)).toNat

end

end A286296.P2885429022874727806

/-! ## A286296.P253571669435312213

`A066889(n+1)*A141044(n)`
-/

namespace A286296.P253571669435312213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066889 (n + 1) * A141044 n

end

end A286296.P253571669435312213

/-! ## A286296.P7739994122464647041

`A066889(n+1)+C(2, A000041(n)²)`
-/

namespace A286296.P7739994122464647041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066889 (n + 1) + (Nat.choose 2 (A000041 n ^ 2).toNat : ℤ)

end

end A286296.P7739994122464647041

/-! ## A286296.P598819896043131964

`(char[A083944(n)]+1)*A066889(n+1)`
-/

namespace A286296.P598819896043131964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083944 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℤ) * A066889 (n + 1)

end

end A286296.P598819896043131964

/-! ## A286296.P14136209214183749645

`A014963(2*or(1, n))*A066889(n+1)`
-/

namespace A286296.P14136209214183749645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * Nat.lor 1 n) * A066889 (n + 1)

end

end A286296.P14136209214183749645

/-! ## A286296.P14696368505906130438

`A014963(round(ratio[n+1]))*A066889(n+1)`
-/

namespace A286296.P14696368505906130438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat * A066889 (n + 1)

end

end A286296.P14696368505906130438

/-! ## A286296.P9725962869580302082

`A001221(a(n-1))*A066889(n+1)` with `a(0)=4, a(1)=4`
-/

namespace A286296.P9725962869580302082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n a =>
  A001221 (a (n - 1)).toNat * A066889 (n + 1)

end

end A286296.P9725962869580302082

/-! ## A286296.P17398296576724898447

`or(A001222(a(n-1)), A066889(n+1))` with `a(0)=4, a(1)=4`
-/

namespace A286296.P17398296576724898447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n a =>
  Int.lor (A001222 (a (n - 1)).toNat) (A066889 (n + 1))

end

end A286296.P17398296576724898447

/-! ## A286296.P13818428750577406246

`A020639(4*n+2)-(xor(-2, A066889(n+1))+2)`
-/

namespace A286296.P13818428750577406246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (4 * n + 2) - (Int.xor (-2) (A066889 (n + 1)) + 2)

end

end A286296.P13818428750577406246

/-! ## A286296.P1194008447786689553

`A066889(n+1)+A000038(A000212(n))`
-/

namespace A286296.P1194008447786689553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066889 (n + 1) + A000038 (A000212 n).toNat

end

end A286296.P1194008447786689553

/-! ## A286296.P11921080007237533829

`A066889(n+1)+A000038(A002620(n))`
-/

namespace A286296.P11921080007237533829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066889 (n + 1) + A000038 (A002620 n).toNat

end

end A286296.P11921080007237533829

/-! ## A286296.P13079969420236457605

`A066889(n+1)+A000038(A004526(n))`
-/

namespace A286296.P13079969420236457605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066889 (n + 1) + A000038 (A004526 n).toNat

end

end A286296.P13079969420236457605

/-! ## A286296.P14462292284794776307

`A066889(n+1)+A000038(A029578(n))`
-/

namespace A286296.P14462292284794776307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066889 (n + 1) + A000038 (A029578 n).toNat

end

end A286296.P14462292284794776307

/-! ## A286296.P6862247608753003002

`A066889(n+1)+A000038(A032741(n))`
-/

namespace A286296.P6862247608753003002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066889 (n + 1) + A000038 (A032741 n).toNat

end

end A286296.P6862247608753003002

/-! ## A286296.P7529295616215070949

`A000041(C(2, A000041(n)))*A066889(n+1)`
-/

namespace A286296.P7529295616215070949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (A000041 n).toNat) * A066889 (n + 1)

end

end A286296.P7529295616215070949

/-! ## A286296.P7505118391110616096

`gcd(A005843(n), A066889(n+1))*A066889(n+1)`
-/

namespace A286296.P7505118391110616096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A005843 n) (A066889 (n + 1)) : ℤ) * A066889 (n + 1)

end

end A286296.P7505118391110616096

/-!
# A286298: a(0) = 0, a(1) = 1; thereafter, a(2n) = a(n) + 1 + (n mod 2), a(2n+1) = a(n) + 2 - (n mod 2).

The programs for A286298, the canonical program `A286298.P9111463687981062260` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286298 has offset 0).

The definition of A286298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286298.P10581787976529787041

`∑[A286299(n)]-A286299(n)`
-/

namespace A286298.P10581787976529787041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286299 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A286299 n

end

end A286298.P10581787976529787041

namespace A286298

/-- `∑[A286299(n)]-A286299(n)` -/
def P10581787976529787041.Spec : Prop :=
  ∀ n, P10581787976529787041.a n = A286298 n

end A286298

/-! ## A286298.P9111463687981062260

`A005811(n)+A070939(n)-1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A286298

/-- `A005811(n)+A070939(n)-1` -/
def P9111463687981062260.Spec : Prop :=
  ∀ n, P9111463687981062260.a n = A286298 n

theorem P9111463687981062260.correct : P9111463687981062260.Spec := by
  intro n
  simp only [A286298]

end A286298

/-! ## A286298.P7997931748016703232

`A070939(n)+A088748(n)-2`
-/

namespace A286298.P7997931748016703232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n + (A088748 n - 2)

end

end A286298.P7997931748016703232

namespace A286298

/-- `A070939(n)+A088748(n)-2` -/
def P7997931748016703232.Spec : Prop :=
  ∀ n, P7997931748016703232.a n = A286298 n

end A286298

/-! ## A286298.P13549408990880050983

`2*A029837(n+1)-A227185(n)`
-/

namespace A286298.P13549408990880050983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029837 (n + 1) - A227185 n

end

end A286298.P13549408990880050983

namespace A286298

/-- `2*A029837(n+1)-A227185(n)` -/
def P13549408990880050983.Spec : Prop :=
  ∀ n, P13549408990880050983.a n = A286298 n

end A286298

/-! ## A286298.P71330452933581135

`A005811(n)+∏{e}[A062383(n), #]-1`
-/

namespace A286298.P71330452933581135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n + (((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - 1)

end

end A286298.P71330452933581135

namespace A286298

/-- `A005811(n)+∏{e}[A062383(n), #]-1` -/
def P71330452933581135.Spec : Prop :=
  ∀ n, P71330452933581135.a n = A286298 n

end A286298

/-! ## A286298.P7130076336917372921

`A005811(n)+A000523(A028310(n))`
-/

namespace A286298.P7130076336917372921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n + A000523 (A028310 n).toNat

end

end A286298.P7130076336917372921

namespace A286298

/-- `A005811(n)+A000523(A028310(n))` -/
def P7130076336917372921.Spec : Prop :=
  ∀ n, P7130076336917372921.a n = A286298 n

end A286298

/-! ## A286298.P15844271017963915283

`A023443(A070939(n)+A005811(n))`
-/

namespace A286298.P15844271017963915283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A070939 n + A005811 n).toNat

end

end A286298.P15844271017963915283

namespace A286298

/-- `A023443(A070939(n)+A005811(n))` -/
def P15844271017963915283.Spec : Prop :=
  ∀ n, P15844271017963915283.a n = A286298 n

end A286298

/-! ## A286298.P2118697094521495840

`A005811(n)+A000523(A109613(n))`
-/

namespace A286298.P2118697094521495840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n + A000523 (A109613 n).toNat

end

end A286298.P2118697094521495840

namespace A286298

/-- `A005811(n)+A000523(A109613(n))` -/
def P2118697094521495840.Spec : Prop :=
  ∀ n, P2118697094521495840.a n = A286298 n

end A286298

/-! ## A286298.P2822251316627522949

`A000523(n+1)+A005811(n+1)-A286299(n)`
-/

namespace A286298.P2822251316627522949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1) + (A005811 (n + 1) - A286299 n)

end

end A286298.P2822251316627522949

namespace A286298

/-- `A000523(n+1)+A005811(n+1)-A286299(n)` -/
def P2822251316627522949.Spec : Prop :=
  ∀ n, P2822251316627522949.a n = A286298 n

end A286298

/-! ## A286298.P10425396107711549634

`A056792(A341915(n))`
-/

namespace A286298.P10425396107711549634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056792 (A341915 n).toNat

end

end A286298.P10425396107711549634

namespace A286298

/-- `A056792(A341915(n))` -/
def P10425396107711549634.Spec : Prop :=
  ∀ n, P10425396107711549634.a n = A286298 n

end A286298

/-! ## A286298.P8394218770691996842

`A056792(A003188(n))`
-/

namespace A286298.P8394218770691996842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056792 (A003188 n).toNat

end

end A286298.P8394218770691996842

namespace A286298

/-- `A056792(A003188(n))` -/
def P8394218770691996842.Spec : Prop :=
  ∀ n, P8394218770691996842.a n = A286298 n

end A286298

/-! ## A286298.P10332890891471534046

`A056792(A341910(n))`
-/

namespace A286298.P10332890891471534046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056792 (A341910 n).toNat

end

end A286298.P10332890891471534046

namespace A286298

/-- `A056792(A341910(n))` -/
def P10332890891471534046.Spec : Prop :=
  ∀ n, P10332890891471534046.a n = A286298 n

end A286298

/-! ## A286298.P14037974802726737878

`A056792(xor(n, A004526(n)))`
-/

namespace A286298.P14037974802726737878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056792 (Int.xor (n : ℤ) (A004526 n)).toNat

end

end A286298.P14037974802726737878

namespace A286298

/-- `A056792(xor(n, A004526(n)))` -/
def P14037974802726737878.Spec : Prop :=
  ∀ n, P14037974802726737878.a n = A286298 n

end A286298

/-! ## A286298.P6914807606558593895

`A257248(2^ceil(log2(n+1)))+A005811(n)`
-/

namespace A286298.P6914807606558593895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257248 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))).toNat + A005811 n

end

end A286298.P6914807606558593895

namespace A286298

/-- `A257248(2^ceil(log2(n+1)))+A005811(n)` -/
def P6914807606558593895.Spec : Prop :=
  ∀ n, P6914807606558593895.a n = A286298 n

end A286298

/-! ## A286298.P7198620648011567917

`A374993(A088697(n))`
-/

namespace A286298.P7198620648011567917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374993 (A088697 n).toNat

end

end A286298.P7198620648011567917

namespace A286298

/-- `A374993(A088697(n))` -/
def P7198620648011567917.Spec : Prop :=
  ∀ n, P7198620648011567917.a n = A286298 n

end A286298

/-!
# A286299: First differences of A286298.

The programs for A286299, the canonical program `A286299.P8650263161130895417` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286299 has offset 0).

The definition of A286299 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286299.P8324210366323443888

`char[∑[2^n]]+Δ[xor(n, 2*n)]%2`
-/

namespace A286299.P8324210366323443888
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + Int.tmod ((f3 (n + 1) : ℤ) - (f3 n : ℤ)) 2

end

end A286299.P8324210366323443888

namespace A286299

/-- `char[∑[2^n]]+Δ[xor(n, 2*n)]%2` -/
def P8324210366323443888.Spec : Prop :=
  ∀ n, P8324210366323443888.a n = A286299 n

end A286299

/-! ## A286299.P8650263161130895417

`Δ[a(floor(n/2))+and(2, n+1)!]` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A286299

/-- `Δ[a(floor(n/2))+and(2, n+1)!]` -/
def P8650263161130895417.Spec : Prop :=
  ∀ n, P8650263161130895417.a n = A286299 n

theorem P8650263161130895417.correct : P8650263161130895417.Spec := by
  intro n
  simp only [A286299]

end A286299

/-! ## A286299.P10253472709265572698

`char[2^n-1]-(C(2, n+2)-1)^(floor(n/(xor(n, n+1)+1))+1)`
-/

namespace A286299.P10253472709265572698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) - ((Nat.choose 2 (n + 2) : ℤ) - 1 : ℚ) ^ (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1 : ℤ)

end

end A286299.P10253472709265572698

namespace A286299

/-- `char[2^n-1]-(C(2, n+2)-1)^(floor(n/(xor(n, n+1)+1))+1)` -/
def P10253472709265572698.Spec : Prop :=
  ∀ n, P10253472709265572698.a n = (A286299 n : ℚ)

end A286299

/-! ## A286299.P15339165974203845891

`char[2^n-1]-(C(2, n+2)-1)^(((n+1)/2^val(n+1, 2)+1)/2)`
-/

namespace A286299.P15339165974203845891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ) - ((Nat.choose 2 (n + 2) : ℤ) - 1 : ℝ) ^ (((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) + 1) / 2 : ℝ)

end

end A286299.P15339165974203845891

namespace A286299

/-- `char[2^n-1]-(C(2, n+2)-1)^(((n+1)/2^val(n+1, 2)+1)/2)` -/
def P15339165974203845891.Spec : Prop :=
  ∀ n, P15339165974203845891.a n = (A286299 n : ℝ)

end A286299

/-! ## A286299.P12698901101352170295

`Δ[A286298(n)]`
-/

namespace A286299.P12698901101352170295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286298 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286299.P12698901101352170295

namespace A286299

/-- `Δ[A286298(n)]` -/
def P12698901101352170295.Spec : Prop :=
  ∀ n, P12698901101352170295.a n = A286299 n

end A286299

/-! ## A286299.P5763732133379370236

`char[xor(n, n+1)]+Δ[A088748(n)]`
-/

namespace A286299.P5763732133379370236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A286299.P5763732133379370236

namespace A286299

/-- `char[xor(n, n+1)]+Δ[A088748(n)]` -/
def P5763732133379370236.Spec : Prop :=
  ∀ n, P5763732133379370236.a n = A286299 n

end A286299

/-! ## A286299.P10597866460021803200

`A286298(n+1)-A286298(n)`
-/

namespace A286299.P10597866460021803200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286298 (n + 1) - A286298 n

end

end A286299.P10597866460021803200

namespace A286299

/-- `A286298(n+1)-A286298(n)` -/
def P10597866460021803200.Spec : Prop :=
  ∀ n, P10597866460021803200.a n = A286299 n

end A286299

/-! ## A286299.P16296540121313572673

`A055975((n+1)/A135517(n))`
-/

namespace A286299.P16296540121313572673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A135517 n : ℚ))).toNat

end

end A286299.P16296540121313572673

namespace A286299

/-- `A055975((n+1)/A135517(n))` -/
def P16296540121313572673.Spec : Prop :=
  ∀ n, P16296540121313572673.a n = A286299 n

end A286299

/-! ## A286299.P17651196966491138640

`Δ[A056792(A003188(n))]`
-/

namespace A286299.P17651196966491138640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056792 (A003188 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286299.P17651196966491138640

namespace A286299

/-- `Δ[A056792(A003188(n))]` -/
def P17651196966491138640.Spec : Prop :=
  ∀ n, P17651196966491138640.a n = A286299 n

end A286299

/-! ## A286299.P5285953498246547283

`A089607(n+1)-A201219(n+1)`
-/

namespace A286299.P5285953498246547283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089607 (n + 1) - A201219 (n + 1)

end

end A286299.P5285953498246547283

namespace A286299

/-- `A089607(n+1)-A201219(n+1)` -/
def P5285953498246547283.Spec : Prop :=
  ∀ n, P5285953498246547283.a n = A286299 n

end A286299

