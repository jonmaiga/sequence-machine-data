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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
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
import Seq.B001.C011
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A156800: Number of equivalence classes of connected graphs on n nodes up to sequences of edge local complementation and isomorphism.

The programs for A156800, there is no canonical definition to state claims against.
-/

/-! ## A156800.P8001234826281839474

`A001462(A127114(n))`
-/

namespace A156800.P8001234826281839474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A127114 n).toNat

end

end A156800.P8001234826281839474

/-! ## A156800.P12055538137960822050

`A267303(A084261(n))`
-/

namespace A156800.P12055538137960822050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267303 (A084261 n).toNat

end

end A156800.P12055538137960822050

/-! ## A156800.P1816566895966178177

`A134933(A247630(n))`
-/

namespace A156800.P1816566895966178177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134933 (A247630 n).toNat

end

end A156800.P1816566895966178177

/-!
# A156801: Number of equivalence classes of graphs on n nodes up to sequences of edge local complementation and isomorphism.

The programs for A156801, there is no canonical definition to state claims against.
-/

/-! ## A156801.P3309335172031436380

`∑[A125975(ceil(2^(n-1)))]`
-/

namespace A156801.P3309335172031436380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125975 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156801.P3309335172031436380

/-! ## A156801.P11019645191652692875

`∑[A125975(A131577(n))]+1`
-/

namespace A156801.P11019645191652692875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125975 (A131577 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A156801.P11019645191652692875

/-! ## A156801.P2794016319684027344

`A000110(n)+record[A269941(n+1)]`
-/

namespace A156801.P2794016319684027344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156801.P2794016319684027344

/-!
# A156802: Number of equivalence classes of connected bipartite graphs on n nodes up to sequences of edge local complementation and isomorphism.

The programs for A156802, there is no canonical definition to state claims against.
-/

/-! ## A156802.P5554463368023804064

`A106432(A328038(n+2))`
-/

namespace A156802.P5554463368023804064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106432 (A328038 (n + 2)).toNat

end

end A156802.P5554463368023804064

/-! ## A156802.P17835081092608613645

`A194303(∏[A152992(n+1)+1])`
-/

namespace A156802.P17835081092608613645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152992 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194303 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A156802.P17835081092608613645

/-! ## A156802.P6537826824560002740

`A262689(A000900(n+1)+A000246(n))`
-/

namespace A156802.P6537826824560002740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A000900 (n + 1) + A000246 n).toNat

end

end A156802.P6537826824560002740

/-! ## A156802.P10517173091631928273

`A078705(or(A012821(n), A152830(2*(n+2))))`
-/

namespace A156802.P10517173091631928273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078705 (Int.lor (A012821 n) (A152830 (2 * (n + 2)))).toNat

end

end A156802.P10517173091631928273

/-! ## A156802.P16236396050349903475

`A065682(A116645(n))+A020651(A202705(n))`
-/

namespace A156802.P16236396050349903475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065682 (A116645 n).toNat + A020651 (A202705 n).toNat

end

end A156802.P16236396050349903475

/-!
# A156803: Number of equivalence classes of bipartite graphs on n nodes up to sequences of edge local complementation and isomorphism.

The programs for A156803, there is no canonical definition to state claims against.
-/

/-! ## A156803.P6257874319109378729

`A071610(A068604(n+2))`
-/

namespace A156803.P6257874319109378729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071610 (A068604 (n + 2)).toNat

end

end A156803.P6257874319109378729

/-! ## A156803.P14404041470275231010

`A222246(n)+A003056(n!)`
-/

namespace A156803.P14404041470275231010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 n + A003056 (Nat.factorial n)

end

end A156803.P14404041470275231010

/-! ## A156803.P1268123351922846920

`A231550(n)+A003056(n!)`
-/

namespace A156803.P1268123351922846920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231550 n + A003056 (Nat.factorial n)

end

end A156803.P1268123351922846920

/-! ## A156803.P7491164079349639277

`A003056(∑[A156802(n+1)]²)`
-/

namespace A156803.P7491164079349639277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A156803.P7491164079349639277

/-!
# A156804: Number of distinct interlace polynomials q of connected graphs of order n.

The programs for A156804, there is no canonical definition to state claims against.
-/

/-! ## A156804.P7785560732219726727

`abs(Δ[A156805(A000038(n)+n)])`
-/

namespace A156804.P7785560732219726727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156805 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A156804.P7785560732219726727

/-! ## A156804.P2008702474964257550

`A100196(A001930(n))-A304974(n)`
-/

namespace A156804.P2008702474964257550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A001930 n).toNat - A304974 n

end

end A156804.P2008702474964257550

/-! ## A156804.P2947137221835956616

`A156689(A062272(n)+A037829(n+1))`
-/

namespace A156804.P2947137221835956616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156689 (A062272 n + A037829 (n + 1)).toNat

end

end A156804.P2947137221835956616

/-! ## A156804.P2911928885164422977

`A243283(A073915(n+1)+A000142(n))`
-/

namespace A156804.P2911928885164422977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A073915 (n + 1) + A000142 n).toNat

end

end A156804.P2911928885164422977

/-!
# A156805: Number of distinct interlace polynomials q of graphs of order n.

The programs for A156805, there is no canonical definition to state claims against.
-/

/-! ## A156805.P15213662576600969208

`∑[A156804(n+1)]`
-/

namespace A156805.P15213662576600969208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156805.P15213662576600969208

/-! ## A156805.P15297905618811646612

`A156804(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A156805.P15297905618811646612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A156804 (n + 1) + a (A023443 n).toNat

end

end A156805.P15297905618811646612

/-! ## A156805.P263253838416707607

`∑[A100196(A001930(n))-A304974(n)]`
-/

namespace A156805.P263253838416707607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A001930 n).toNat - A304974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156805.P263253838416707607

/-! ## A156805.P2744558319410631190

`∑[A156689(A062272(n)+A037829(n+1))]`
-/

namespace A156805.P2744558319410631190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156689 (A062272 n + A037829 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156805.P2744558319410631190

/-!
# A156807: Number of distinct interlace polynomials Q of graphs of order n.

The programs for A156807, there is no canonical definition to state claims against.
-/

/-! ## A156807.P2378770535449428398

`A241827(A325928(n))+A000975(n)`
-/

namespace A156807.P2378770535449428398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241827 (A325928 n).toNat + A000975 n

end

end A156807.P2378770535449428398

/-! ## A156807.P10215308580054782203

`eq[A030530(n), A254827(A003558(n))]`
-/

namespace A156807.P10215308580054782203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030530 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254827 (A003558 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A156807.P10215308580054782203

/-!
# A156808: Number of nonisomorphic connected circle graphs of order n.

The programs for A156808, there is no canonical definition to state claims against.
-/

/-! ## A156808.P12904485638954691821

`A319489(n+1)+1`
-/

namespace A156808.P12904485638954691821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319489 (n + 1) + 1

end

end A156808.P12904485638954691821

/-! ## A156808.P3504814429199105890

`A159481(A234239(n)+A007053(n))`
-/

namespace A156808.P3504814429199105890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159481 (A234239 n + A007053 n).toNat

end

end A156808.P3504814429199105890

/-! ## A156808.P4510731516027237519

`A110656(A243806(n)+A175660(n))`
-/

namespace A156808.P4510731516027237519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A243806 n + A175660 n).toNat

end

end A156808.P4510731516027237519

/-!
# A156809: Number of nonisomorphic circle graphs of order n.

The programs for A156809, there is no canonical definition to state claims against.
-/

/-! ## A156809.P3035142612871780351

`A076317(n+1)-A241825(A000719(n))`
-/

namespace A156809.P3035142612871780351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076317 (n + 1) - A241825 (A000719 n).toNat

end

end A156809.P3035142612871780351

/-! ## A156809.P10433715137163351837

`(C(comp[∑[n]]-n, 2)-(n+1))!!!+∑[n!]-1`
-/

namespace A156809.P10433715137163351837
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.factorial (Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat)) : ℤ) + (((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - 1)

end

end A156809.P10433715137163351837

/-!
# A156810: a(n) = 225*n^2 - 251*n + 70.

The programs for A156810, the canonical program `A156810.P6468794335749289512` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156810 has offset 0).

The definition of A156810 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `225*n²-251*n+70` (program `A156810.P6468794335749289512`, by `A156810.P6468794335749289512.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A156810.P6468794335749289512

`225*n²-251*n+70`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A156810

/-- `225*n²-251*n+70` -/
def P6468794335749289512.Spec : Prop :=
  ∀ n, P6468794335749289512.a n = A156810 n

theorem P6468794335749289512.correct : P6468794335749289512.Spec := by
  intro n
  simp only [A156810]

end A156810

/-!
# A156812: a(n) = 225*n^2 - 199*n + 44.

The programs for A156812, the canonical program `A156812.P3743129854276982471` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156812 has offset 0).

The definition of A156812 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `225*n²-199*n+44` (program `A156812.P3743129854276982471`, by `A156812.P3743129854276982471.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A156812.P3743129854276982471

`225*n²-199*n+44`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A156812

/-- `225*n²-199*n+44` -/
def P3743129854276982471.Spec : Prop :=
  ∀ n, P3743129854276982471.a n = A156812 n

theorem P3743129854276982471.correct : P3743129854276982471.Spec := by
  intro n
  simp only [A156812]

end A156812

/-! ## A156812.P131329237106541021

`abs(A156813(n+1)-A017113(A156795(n+1)))`
-/

namespace A156812.P131329237106541021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156813 (n + 1) - A017113 (A156795 (n + 1)).toNat|

end

end A156812.P131329237106541021

namespace A156812

/-- `abs(A156813(n+1)-A017113(A156795(n+1)))` -/
def P131329237106541021.Spec : Prop :=
  ∀ n, P131329237106541021.a n = A156812 n

end A156812

/-!
# A156813: a(n) = 225*n^2 - n.

The programs for A156813, the canonical program `A156813.P8105342460855096633` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156813 has offset 1).

The definition of A156813 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `225*(n+1)²-(n+1)` (program `A156813.P8105342460855096633`, by `A156813.P8105342460855096633.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A156813.P8105342460855096633

`225*(n+1)²-(n+1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A156813

/-- `225*(n+1)²-(n+1)` -/
def P8105342460855096633.Spec : Prop :=
  ∀ n, P8105342460855096633.a n = A156813 (n + 1)

theorem P8105342460855096633.correct : P8105342460855096633.Spec := by
  intro n
  simp only [A156813, Nat.add_sub_cancel]

end A156813

/-! ## A156813.P6229002306637019457

`(n+1)*A158227(n+1)`
-/

namespace A156813.P6229002306637019457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A158227 (n + 1)

end

end A156813.P6229002306637019457

namespace A156813

/-- `(n+1)*A158227(n+1)` -/
def P6229002306637019457.Spec : Prop :=
  ∀ n, P6229002306637019457.a n = A156813 (n + 1)

end A156813

/-! ## A156813.P6721740893402963656

`(n+1)*(A158229(n+1)-2)`
-/

namespace A156813.P6721740893402963656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158229 (n + 1) - 2)

end

end A156813.P6721740893402963656

namespace A156813

/-- `(n+1)*(A158229(n+1)-2)` -/
def P6721740893402963656.Spec : Prop :=
  ∀ n, P6721740893402963656.a n = A156813 (n + 1)

theorem P6721740893402963656.correct : P6721740893402963656.Spec := by
  intro n
  simp only [A156813, Nat.add_sub_cancel, A156813.P6721740893402963656.a, A156813.P8105342460855096633.a, A158229, A158229.P1851483286689290496.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156813

/-! ## A156813.P9637573167305875430

`A158406(n+1)%A156814(n+1)`
-/

namespace A156813.P9637573167305875430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158406 (n + 1)) (A156814 (n + 1))

end

end A156813.P9637573167305875430

namespace A156813

/-- `A158406(n+1)%A156814(n+1)` -/
def P9637573167305875430.Spec : Prop :=
  ∀ n, P9637573167305875430.a n = A156813 (n + 1)

end A156813

/-! ## A156813.P10509710251165802767

`lcm(A000027(n+1), A158227(n+1))`
-/

namespace A156813.P10509710251165802767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (n + 1)) (A158227 (n + 1))

end

end A156813.P10509710251165802767

namespace A156813

/-- `lcm(A000027(n+1), A158227(n+1))` -/
def P10509710251165802767.Spec : Prop :=
  ∀ n, (P10509710251165802767.a n : ℤ) = A156813 (n + 1)

end A156813

/-! ## A156813.P4063110948896381587

`∑[A158227(2*n+1)]`
-/

namespace A156813.P4063110948896381587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158227 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156813.P4063110948896381587

namespace A156813

/-- `∑[A158227(2*n+1)]` -/
def P4063110948896381587.Spec : Prop :=
  ∀ n, P4063110948896381587.a n = A156813 (n + 1)

end A156813

/-! ## A156813.P6391331657677208955

`A158226(2*(n+1))/4`
-/

namespace A156813.P6391331657677208955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158226 (2 * (n + 1)) : ℚ) / 4

end

end A156813.P6391331657677208955

namespace A156813

/-- `A158226(2*(n+1))/4` -/
def P6391331657677208955.Spec : Prop :=
  ∀ n, P6391331657677208955.a n = (A156813 (n + 1) : ℚ)

end A156813

/-! ## A156813.P10993936258168537219

`A156814(2*(n+1))%A156814(n+1)`
-/

namespace A156813.P10993936258168537219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156814 (2 * (n + 1))) (A156814 (n + 1))

end

end A156813.P10993936258168537219

namespace A156813

/-- `A156814(2*(n+1))%A156814(n+1)` -/
def P10993936258168537219.Spec : Prop :=
  ∀ n, P10993936258168537219.a n = A156813 (n + 1)

end A156813

/-! ## A156813.P12977132767892004390

`(n+1)*A257645(A257645(n))`
-/

namespace A156813.P12977132767892004390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A257645 (A257645 n).toNat

end

end A156813.P12977132767892004390

namespace A156813

/-- `(n+1)*A257645(A257645(n))` -/
def P12977132767892004390.Spec : Prop :=
  ∀ n, P12977132767892004390.a n = A156813 (n + 1)

end A156813

/-! ## A156813.P15889370199171253695

`(n+1)*A017257(A016897(A016897(n)))`
-/

namespace A156813.P15889370199171253695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017257 (A016897 (A016897 n).toNat).toNat

end

end A156813.P15889370199171253695

namespace A156813

/-- `(n+1)*A017257(A016897(A016897(n)))` -/
def P15889370199171253695.Spec : Prop :=
  ∀ n, P15889370199171253695.a n = A156813 (n + 1)

end A156813

/-! ## A156813.P5784789676538193061

`∑[A257645(A257645(2*n))]`
-/

namespace A156813.P5784789676538193061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257645 (A257645 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156813.P5784789676538193061

namespace A156813

/-- `∑[A257645(A257645(2*n))]` -/
def P5784789676538193061.Spec : Prop :=
  ∀ n, P5784789676538193061.a n = A156813 (n + 1)

end A156813

/-!
# A156814: a(n) = 225*n^2 + n.

The programs for A156814, the canonical program `A156814.P2971898553561008116` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156814 has offset 1).

The definition of A156814 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `225*(n+1)²+n+1` (program `A156814.P2971898553561008116`, by `A156814.P2971898553561008116.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A156814.P2971898553561008116

`225*(n+1)²+n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A156814

/-- `225*(n+1)²+n+1` -/
def P2971898553561008116.Spec : Prop :=
  ∀ n, (P2971898553561008116.a n : ℤ) = A156814 (n + 1)

theorem P2971898553561008116.correct : P2971898553561008116.Spec := by
  intro n
  simp only [A156814, Nat.add_sub_cancel]

end A156814

/-! ## A156814.P12204867059691986633

`∑[Δ[A158557(n)]+1]`
-/

namespace A156814.P12204867059691986633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158557 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156814.P12204867059691986633

namespace A156814

/-- `∑[Δ[A158557(n)]+1]` -/
def P12204867059691986633.Spec : Prop :=
  ∀ n, P12204867059691986633.a n = A156814 (n + 1)

end A156814

/-! ## A156814.P2855272670494763282

`(n+1)*A158229(n+1)`
-/

namespace A156814.P2855272670494763282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A158229 (n + 1)

end

end A156814.P2855272670494763282

namespace A156814

/-- `(n+1)*A158229(n+1)` -/
def P2855272670494763282.Spec : Prop :=
  ∀ n, P2855272670494763282.a n = A156814 (n + 1)

theorem P2855272670494763282.correct : P2855272670494763282.Spec := by
  intro n
  simp only [A156814, Nat.add_sub_cancel, A156814.P2855272670494763282.a, A156814.P2971898553561008116.a, A158229, A158229.P1851483286689290496.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156814

/-! ## A156814.P7025763166028996177

`(n+1)*(A158227(n+1)+2)`
-/

namespace A156814.P7025763166028996177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158227 (n + 1) + 2)

end

end A156814.P7025763166028996177

namespace A156814

/-- `(n+1)*(A158227(n+1)+2)` -/
def P7025763166028996177.Spec : Prop :=
  ∀ n, P7025763166028996177.a n = A156814 (n + 1)

end A156814

/-! ## A156814.P5881996858189820823

`lcm(A000027(n+1), A158229(n+1))`
-/

namespace A156814.P5881996858189820823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (n + 1)) (A158229 (n + 1))

end

end A156814.P5881996858189820823

namespace A156814

/-- `lcm(A000027(n+1), A158229(n+1))` -/
def P5881996858189820823.Spec : Prop :=
  ∀ n, (P5881996858189820823.a n : ℤ) = A156814 (n + 1)

end A156814

/-! ## A156814.P6771637207356548660

`∑[A158229(2*n+1)]`
-/

namespace A156814.P6771637207356548660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158229 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156814.P6771637207356548660

namespace A156814

/-- `∑[A158229(2*n+1)]` -/
def P6771637207356548660.Spec : Prop :=
  ∀ n, P6771637207356548660.a n = A156814 (n + 1)

end A156814

/-! ## A156814.P15486559380975999693

`A158228(2*(n+1))/4`
-/

namespace A156814.P15486559380975999693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158228 (2 * (n + 1)) : ℚ) / 4

end

end A156814.P15486559380975999693

namespace A156814

/-- `A158228(2*(n+1))/4` -/
def P15486559380975999693.Spec : Prop :=
  ∀ n, P15486559380975999693.a n = (A156814 (n + 1) : ℚ)

end A156814

/-! ## A156814.P1874468013276676215

`∑[A158227(2*n+1)+2]`
-/

namespace A156814.P1874468013276676215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158227 (2 * n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156814.P1874468013276676215

namespace A156814

/-- `∑[A158227(2*n+1)+2]` -/
def P1874468013276676215.Spec : Prop :=
  ∀ n, P1874468013276676215.a n = A156814 (n + 1)

end A156814

/-! ## A156814.P18182317412562282686

`(A005843(n+1)+A008591(n+1)*A008607(n+1)-(n+1))%A165094(n+4)`
-/

namespace A156814.P18182317412562282686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (n + 1) + A008591 (n + 1) * A008607 (n + 1) - (n + 1 : ℤ)) (A165094 (n + 4))

end

end A156814.P18182317412562282686

namespace A156814

/-- `(A005843(n+1)+A008591(n+1)*A008607(n+1)-(n+1))%A165094(n+4)` -/
def P18182317412562282686.Spec : Prop :=
  ∀ n, P18182317412562282686.a n = A156814 (n + 1)

end A156814

/-! ## A156814.P6225096796088543789

`∑[A257645(A257645(2*n))+2]`
-/

namespace A156814.P6225096796088543789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257645 (A257645 (2 * n)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156814.P6225096796088543789

namespace A156814

/-- `∑[A257645(A257645(2*n))+2]` -/
def P6225096796088543789.Spec : Prop :=
  ∀ n, P6225096796088543789.a n = A156814 (n + 1)

end A156814

/-! ## A156814.P7653201175597681717

`∑[A008597(A008597(2*n+1))+1]`
-/

namespace A156814.P7653201175597681717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008597 (A008597 (2 * n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156814.P7653201175597681717

namespace A156814

/-- `∑[A008597(A008597(2*n+1))+1]` -/
def P7653201175597681717.Spec : Prop :=
  ∀ n, P7653201175597681717.a n = A156814 (n + 1)

end A156814

/-! ## A156814.P8551994528125210418

`(n+1)*A175887(A175887(A016813(n+1)))`
-/

namespace A156814.P8551994528125210418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A175887 (A175887 (A016813 (n + 1)).toNat).toNat

end

end A156814.P8551994528125210418

namespace A156814

/-- `(n+1)*A175887(A175887(A016813(n+1)))` -/
def P8551994528125210418.Spec : Prop :=
  ∀ n, P8551994528125210418.a n = A156814 (n + 1)

end A156814

/-!
# A156815: Triangle T(n, k) = n!*StirlingS2(n, k)/binomial(n, k), read by rows.

The programs for A156815, the canonical program `A156815.P14194383212587314231` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156815 has offset 0).

The definition of A156815 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156815.P14194383212587314231

`A048993(n)*A098361(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A156815

/-- `A048993(n)*A098361(n)` -/
def P14194383212587314231.Spec : Prop :=
  ∀ n, P14194383212587314231.a n = A156815 n

theorem P14194383212587314231.correct : P14194383212587314231.Spec := by
  intro n
  simp only [A156815]

end A156815

/-! ## A156815.P6244687746502476980

`A119502(n)*A131689(n)`
-/

namespace A156815.P6244687746502476980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 n * A131689 n

end

end A156815.P6244687746502476980

namespace A156815

/-- `A119502(n)*A131689(n)` -/
def P6244687746502476980.Spec : Prop :=
  ∀ n, P6244687746502476980.a n = A156815 n

end A156815

/-! ## A156815.P13884621681401441007

`A025581(n)!*A131689(n)`
-/

namespace A156815.P13884621681401441007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025581 n).toNat : ℤ) * A131689 n

end

end A156815.P13884621681401441007

namespace A156815

/-- `A025581(n)!*A131689(n)` -/
def P13884621681401441007.Spec : Prop :=
  ∀ n, P13884621681401441007.a n = A156815 n

end A156815

/-! ## A156815.P10052685802998237402

`A098361(n)*A106800(A061579(n))`
-/

namespace A156815.P10052685802998237402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n * A106800 (A061579 n).toNat

end

end A156815.P10052685802998237402

namespace A156815

/-- `A098361(n)*A106800(A061579(n))` -/
def P10052685802998237402.Spec : Prop :=
  ∀ n, P10052685802998237402.a n = A156815 n

end A156815

/-! ## A156815.P4727181847721055303

`A081123(A099375(n))*A131689(n)`
-/

namespace A156815.P4727181847721055303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (A099375 n).toNat * A131689 n

end

end A156815.P4727181847721055303

namespace A156815

/-- `A081123(A099375(n))*A131689(n)` -/
def P4727181847721055303.Spec : Prop :=
  ∀ n, P4727181847721055303.a n = A156815 n

end A156815

/-! ## A156815.P6740996759663148981

`A002262(A061579(n))!*A131689(n)`
-/

namespace A156815.P6740996759663148981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 (A061579 n).toNat).toNat : ℤ) * A131689 n

end

end A156815.P6740996759663148981

namespace A156815

/-- `A002262(A061579(n))!*A131689(n)` -/
def P6740996759663148981.Spec : Prop :=
  ∀ n, P6740996759663148981.a n = A156815 n

end A156815

/-! ## A156815.P8598645266863686295

`A098361(n)*A106800(A038722(n+2))`
-/

namespace A156815.P8598645266863686295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n * A106800 (A038722 (n + 2)).toNat

end

end A156815.P8598645266863686295

namespace A156815

/-- `A098361(n)*A106800(A038722(n+2))` -/
def P8598645266863686295.Spec : Prop :=
  ∀ n, P8598645266863686295.a n = A156815 n

end A156815

/-! ## A156815.P17572084240269164997

`(A154844(n)-A106800(n))*A098361(n)`
-/

namespace A156815.P17572084240269164997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A154844 n - A106800 n) * A098361 n

end

end A156815.P17572084240269164997

namespace A156815

/-- `(A154844(n)-A106800(n))*A098361(n)` -/
def P17572084240269164997.Spec : Prop :=
  ∀ n, P17572084240269164997.a n = A156815 n

theorem P17572084240269164997.correct : P17572084240269164997.Spec := by
  intro n
  simp only [A156815, Nat.add_sub_cancel, A156815.P17572084240269164997.a, A156815.P14194383212587314231.a, A048993, A048993.P5967751111624356245.a, A098361, A098361.P4702450051752520523.a, A106800, A106800.P14175807766356579995.a, A154844, A154844.P6166470427133278355.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156815

/-! ## A156815.P10890720892745594052

`A090657(n)/A008279(n)*A098361(n)`
-/

namespace A156815.P10890720892745594052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090657 n : ℚ) / (A008279 n : ℚ) * (A098361 n : ℚ)

end

end A156815.P10890720892745594052

namespace A156815

/-- `A090657(n)/A008279(n)*A098361(n)` -/
def P10890720892745594052.Spec : Prop :=
  ∀ n, P10890720892745594052.a n = (A156815 n : ℚ)

end A156815

/-! ## A156815.P14600032800373510601

`A094587(n)/A132749(n)*A131689(n)`
-/

namespace A156815.P14600032800373510601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094587 n : ℚ) / (A132749 n : ℚ) * (A131689 n : ℚ)

end

end A156815.P14600032800373510601

namespace A156815

/-- `A094587(n)/A132749(n)*A131689(n)` -/
def P14600032800373510601.Spec : Prop :=
  ∀ n, P14600032800373510601.a n = (A156815 n : ℚ)

end A156815

/-! ## A156815.P3981768560497543825

`A094587(n)/A135227(n)*A131689(n)`
-/

namespace A156815.P3981768560497543825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094587 n : ℚ) / (A135227 n : ℚ) * (A131689 n : ℚ)

end

end A156815.P3981768560497543825

namespace A156815

/-- `A094587(n)/A135227(n)*A131689(n)` -/
def P3981768560497543825.Spec : Prop :=
  ∀ n, P3981768560497543825.a n = (A156815 n : ℚ)

end A156815

/-! ## A156815.P8096242821303408843

`A090683(n)*A098361(n)/A132749(n)`
-/

namespace A156815.P8096242821303408843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090683 n * A098361 n : ℚ) / (A132749 n : ℚ)

end

end A156815.P8096242821303408843

namespace A156815

/-- `A090683(n)*A098361(n)/A132749(n)` -/
def P8096242821303408843.Spec : Prop :=
  ∀ n, P8096242821303408843.a n = (A156815 n : ℚ)

end A156815

/-! ## A156815.P3507072557230123165

`A090683(n)*A098361(n)/A135227(n)`
-/

namespace A156815.P3507072557230123165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090683 n * A098361 n : ℚ) / (A135227 n : ℚ)

end

end A156815.P3507072557230123165

namespace A156815

/-- `A090683(n)*A098361(n)/A135227(n)` -/
def P3507072557230123165.Spec : Prop :=
  ∀ n, P3507072557230123165.a n = (A156815 n : ℚ)

end A156815

/-!
# A156817: A triangle sequence from polynomial coefficients: p(x, n) = (4*(n - 1) + (4(n - 1))*x^2)*p(x, n - 1) + 2*(n - 1)x^2*p(x, n - 2).

The programs for A156817, there is no canonical definition to state claims against.
-/

/-! ## A156817.P17463364424074672852

`A094275(A008301(n))`
-/

namespace A156817.P17463364424074672852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094275 (A008301 n).toNat

end

end A156817.P17463364424074672852

/-! ## A156817.P3606882271850472251

`A008301(n)-A083895(A026599(n))`
-/

namespace A156817.P3606882271850472251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008301 n - A083895 (A026599 n).toNat

end

end A156817.P3606882271850472251

/-! ## A156817.P220328868622547439

`A008301(n)-A218876(A008301(n+1))`
-/

namespace A156817.P220328868622547439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008301 n - A218876 (A008301 (n + 1)).toNat

end

end A156817.P220328868622547439

/-! ## A156817.P633861690036048508

`A008301(n)-A318715(A121663(3*n+1))`
-/

namespace A156817.P633861690036048508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008301 n - A318715 (A121663 (3 * n + 1)).toNat

end

end A156817.P633861690036048508

/-!
# A156818: Last digit d of a(n) is present in a(n+1+d); a(1)=1; a(n)<a(n+1).

The programs for A156818, there is no canonical definition to state claims against.
-/

/-! ## A156818.P12329746224207664674

`∑[A332389(A018252(2^n))]`
-/

namespace A156818.P12329746224207664674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332389 (A018252 (2 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156818.P12329746224207664674

/-! ## A156818.P6985784832060466172

`eq[A047813(n), A281527(n+2)]`
-/

namespace A156818.P6985784832060466172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281527 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A156818.P6985784832060466172

/-!
# A156820: T(n,m) = Sum_{j=0..m} (-1)^(j + m)*(j + 1)^n*binomial(m, j) + Sum_{j=0..(n-m)} (-1)^(j - m + n )*(1 + j)^n*binomial(n-m, j).

The programs for A156820, there is no canonical definition to state claims against.
-/

/-! ## A156820.P7748355815841899720

`abs(A163626(n)+A075263(n))`
-/

namespace A156820.P7748355815841899720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A163626 n + A075263 n|

end

end A156820.P7748355815841899720

/-! ## A156820.P9004719407393427199

`A130850(n)+abs(A163626(n))`
-/

namespace A156820.P9004719407393427199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130850 n + |A163626 n|

end

end A156820.P9004719407393427199

/-! ## A156820.P14010686417616683834

`A130850(n)+A028246(n+1)`
-/

namespace A156820.P14010686417616683834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130850 n + A028246 (n + 1)

end

end A156820.P14010686417616683834

/-! ## A156820.P17881988089131444377

`A130850(n)+abs(Δ[A278075(n)])`
-/

namespace A156820.P17881988089131444377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130850 n + |f1 (n + 1) - f1 n|

end

end A156820.P17881988089131444377

/-! ## A156820.P16909613878398894869

`A142071(comp[∑[n]])+A130850(n)`
-/

namespace A156820.P16909613878398894869
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142071 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A130850 n

end

end A156820.P16909613878398894869

/-!
# A156826: Square array read by antidiagonals up: same as A126988 except that the first row is A153881.

The programs for A156826, there is no canonical definition to state claims against.
-/

/-! ## A156826.P3154885212630022037

`A127448(A286157(n+1))-A250002(A084938(n))`
-/

namespace A156826.P3154885212630022037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127448 (A286157 (n + 1)).toNat - A250002 (A084938 n).toNat

end

end A156826.P3154885212630022037

/-! ## A156826.P16155142919355786607

`A127448(A286157(n+1)%A133761(n+1))`
-/

namespace A156826.P16155142919355786607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127448 (Int.tmod (A286157 (n + 1)) (A133761 (n + 1))).toNat

end

end A156826.P16155142919355786607

/-! ## A156826.P14347767679630440100

`A001222(A088903(n+1))*A127448(A286157(n+1))`
-/

namespace A156826.P14347767679630440100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A088903 (n + 1)).toNat * A127448 (A286157 (n + 1)).toNat

end

end A156826.P14347767679630440100

/-! ## A156826.P3038461563876385813

`A127448(A286157(n+1))%A019568(n)`
-/

namespace A156826.P3038461563876385813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127448 (A286157 (n + 1)).toNat) (A019568 n)

end

end A156826.P3038461563876385813

/-! ## A156826.P13906333332894729345

`A176919(n+1)-A014025(A209593(n+1))`
-/

namespace A156826.P13906333332894729345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176919 (n + 1) - A014025 (A209593 (n + 1)).toNat

end

end A156826.P13906333332894729345

/-!
# A156827: A001792*A008683.

The programs for A156827, the canonical program `A156827.P10370441553702310546` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156827 has offset 1).

The definition of A156827 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156827.P11999900480197012709

`(n+2)/2*A127511(n+1)`
-/

namespace A156827.P11999900480197012709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A127511 (n + 1) : ℚ)

end

end A156827.P11999900480197012709

namespace A156827

/-- `(n+2)/2*A127511(n+1)` -/
def P11999900480197012709.Spec : Prop :=
  ∀ n, P11999900480197012709.a n = (A156827 (n + 1) : ℚ)

end A156827

/-! ## A156827.P11065749969256903579

`(n+2)*2^(n-1)*A008683(n+1)`
-/

namespace A156827.P11065749969256903579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A008683 (n + 1) : ℚ))

end

end A156827.P11065749969256903579

namespace A156827

/-- `(n+2)*2^(n-1)*A008683(n+1)` -/
def P11065749969256903579.Spec : Prop :=
  ∀ n, P11065749969256903579.a n = (A156827 (n + 1) : ℚ)

end A156827

/-! ## A156827.P10370441553702310546

`A008683(n+1)*A001792(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A156827

/-- `A008683(n+1)*A001792(n)` -/
def P10370441553702310546.Spec : Prop :=
  ∀ n, P10370441553702310546.a n = A156827 (n + 1)

theorem P10370441553702310546.correct : P10370441553702310546.Spec := by
  intro n
  simp only [A156827, Nat.add_sub_cancel]

end A156827

/-! ## A156827.P16816890504674185691

`A008683(n+1)*∑[A045623(n)]`
-/

namespace A156827.P16816890504674185691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A156827.P16816890504674185691

namespace A156827

/-- `A008683(n+1)*∑[A045623(n)]` -/
def P16816890504674185691.Spec : Prop :=
  ∀ n, P16816890504674185691.a n = A156827 (n + 1)

end A156827

/-! ## A156827.P4509683165212360820

`A008683(n+1)*A211227(2*n)`
-/

namespace A156827.P4509683165212360820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A211227 (2 * n)

end

end A156827.P4509683165212360820

namespace A156827

/-- `A008683(n+1)*A211227(2*n)` -/
def P4509683165212360820.Spec : Prop :=
  ∀ n, P4509683165212360820.a n = A156827 (n + 1)

end A156827

/-! ## A156827.P7944478860285954416

`(A001787(n)+A000079(n))*A008683(n+1)`
-/

namespace A156827.P7944478860285954416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001787 n + A000079 n) * A008683 (n + 1)

end

end A156827.P7944478860285954416

namespace A156827

/-- `(A001787(n)+A000079(n))*A008683(n+1)` -/
def P7944478860285954416.Spec : Prop :=
  ∀ n, P7944478860285954416.a n = A156827 (n + 1)

end A156827

/-! ## A156827.P9547073580210030523

`A008683(n+1)*Δ[A001787(n)]`
-/

namespace A156827.P9547073580210030523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * (f1 (n + 1) - f1 n)

end

end A156827.P9547073580210030523

namespace A156827

/-- `A008683(n+1)*Δ[A001787(n)]` -/
def P9547073580210030523.Spec : Prop :=
  ∀ n, P9547073580210030523.a n = A156827 (n + 1)

end A156827

/-! ## A156827.P5470939694606334436

`A008683(n+1)*Δ[A005183(n)]`
-/

namespace A156827.P5470939694606334436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * (f1 (n + 1) - f1 n)

end

end A156827.P5470939694606334436

namespace A156827

/-- `A008683(n+1)*Δ[A005183(n)]` -/
def P5470939694606334436.Spec : Prop :=
  ∀ n, P5470939694606334436.a n = A156827 (n + 1)

end A156827

/-! ## A156827.P15445834762359271028

`A008683(n+1)*Δ[n*A011782(n)]`
-/

namespace A156827.P15445834762359271028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * (f1 (n + 1) - f1 n)

end

end A156827.P15445834762359271028

namespace A156827

/-- `A008683(n+1)*Δ[n*A011782(n)]` -/
def P15445834762359271028.Spec : Prop :=
  ∀ n, P15445834762359271028.a n = A156827 (n + 1)

end A156827

/-!
# A156828: a(1) = 2. a(n) = the smallest prime >= a(n-1) + 4.

The programs for A156828, the canonical program `A156828.P15006888903266838988` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156828 has offset 1).

The definition of A156828 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8369 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156828.P15006888903266838988

`A151800(a(n-1)+3)` with `a(0)=2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A156828

/-- `A151800(a(n-1)+3)` -/
def P15006888903266838988.Spec : Prop :=
  ∀ n, P15006888903266838988.a n = A156828 (n + 1)

theorem P15006888903266838988.correct : P15006888903266838988.Spec := by
  intro n
  simp only [A156828, Nat.add_sub_cancel]

end A156828

/-! ## A156828.P2866970142073616643

`A151800(3-floor(-a(n-1)))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A156828.P2866970142073616643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (3 - (-a (n - 1))).toNat

end

end A156828.P2866970142073616643

namespace A156828

/-- `A151800(3-floor(-a(n-1)))` -/
def P2866970142073616643.Spec : Prop :=
  ∀ n, P2866970142073616643.a n = A156828 (n + 1)

theorem P2866970142073616643.correct : P2866970142073616643.Spec := by
  intro n
  simp only [A156828, Nat.add_sub_cancel, A156828.P2866970142073616643.a, A156828.P15006888903266838988.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A156828

/-! ## A156828.P11112004507757743829

`A151800(A238327(n)+and(1, n))`
-/

namespace A156828.P11112004507757743829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A238327 n + (Nat.land 1 n : ℤ)).toNat

end

end A156828.P11112004507757743829

namespace A156828

/-- `A151800(A238327(n)+and(1, n))` -/
def P11112004507757743829.Spec : Prop :=
  ∀ n, P11112004507757743829.a n = A156828 (n + 1)

end A156828

/-! ## A156828.P15370792675676165188

`record[(A000010(n+1)+1)*A292438(n)]`
-/

namespace A156828.P15370792675676165188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) + 1) * A292438 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156828.P15370792675676165188

namespace A156828

/-- `record[(A000010(n+1)+1)*A292438(n)]` -/
def P15370792675676165188.Spec : Prop :=
  ∀ n, P15370792675676165188.a n = A156828 (n + 1)

end A156828

/-! ## A156828.P9011286125677279039

`p?[2*A018252(n+1)-A141468(n+1)]`
-/

namespace A156828.P9011286125677279039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018252 (n + 1) - A141468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156828.P9011286125677279039

namespace A156828

/-- `p?[2*A018252(n+1)-A141468(n+1)]` -/
def P9011286125677279039.Spec : Prop :=
  ∀ n, P9011286125677279039.a n = A156828 (n + 1)

end A156828

/-! ## A156828.P4693031039110577331

`p?[record[(A010051(n+1)+1)²+n+1]]`
-/

namespace A156828.P4693031039110577331
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010051 (n + 1) + 1) ^ 2 + (n : ℤ) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156828.P4693031039110577331

namespace A156828

/-- `p?[record[(A010051(n+1)+1)²+n+1]]` -/
def P4693031039110577331.Spec : Prop :=
  ∀ n, P4693031039110577331.a n = A156828 (n + 1)

end A156828

/-! ## A156828.P10422534413362031247

`p?[A054546(n+1)+A018252(n+1)]`
-/

namespace A156828.P10422534413362031247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1) + A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156828.P10422534413362031247

namespace A156828

/-- `p?[A054546(n+1)+A018252(n+1)]` -/
def P10422534413362031247.Spec : Prop :=
  ∀ n, P10422534413362031247.a n = A156828 (n + 1)

end A156828

/-! ## A156828.P12939672235692094177

`p?[A054546(n+1)+record[(n+1)%A151800(n)]]`
-/

namespace A156828.P12939672235692094177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A151800 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156828.P12939672235692094177

namespace A156828

/-- `p?[A054546(n+1)+record[(n+1)%A151800(n)]]` -/
def P12939672235692094177.Spec : Prop :=
  ∀ n, P12939672235692094177.a n = A156828 (n + 1)

end A156828

/-! ## A156828.P7395923417424309103

`p?[A054546(n+1)+comp[A000040(n+1)-1]+1]`
-/

namespace A156828.P7395923417424309103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156828.P7395923417424309103

namespace A156828

/-- `p?[A054546(n+1)+comp[A000040(n+1)-1]+1]` -/
def P7395923417424309103.Spec : Prop :=
  ∀ n, P7395923417424309103.a n = A156828 (n + 1)

end A156828

/-! ## A156828.P13623979916629053112

`p?[A054546(n+1)+comp[A006530(n+2)-1]+1]`
-/

namespace A156828.P13623979916629053112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156828.P13623979916629053112

namespace A156828

/-- `p?[A054546(n+1)+comp[A006530(n+2)-1]+1]` -/
def P13623979916629053112.Spec : Prop :=
  ∀ n, P13623979916629053112.a n = A156828 (n + 1)

end A156828

/-! ## A156828.P984525347622303005

`p?[A054546(n+1)+comp[A020639(n+2)-1]+1]`
-/

namespace A156828.P984525347622303005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156828.P984525347622303005

namespace A156828

/-- `p?[A054546(n+1)+comp[A020639(n+2)-1]+1]` -/
def P984525347622303005.Spec : Prop :=
  ∀ n, P984525347622303005.a n = A156828 (n + 1)

end A156828

/-! ## A156828.P11476237282387021374

`p?[A054546(n+1)+comp[A020639(n+1)%(3*n+1)]]`
-/

namespace A156828.P11476237282387021374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (n + 1)) (3 * n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156828.P11476237282387021374

namespace A156828

/-- `p?[A054546(n+1)+comp[A020639(n+1)%(3*n+1)]]` -/
def P11476237282387021374.Spec : Prop :=
  ∀ n, P11476237282387021374.a n = A156828 (n + 1)

end A156828

/-! ## A156828.P18035139742382171144

`A066168(a(n-1))` with `a(0)=2, a(1)=7`
-/

namespace A156828.P18035139742382171144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7] fun n a =>
  A066168 (a (n - 1)).toNat

end

end A156828.P18035139742382171144

namespace A156828

/-- `A066168(a(n-1))` -/
def P18035139742382171144.Spec : Prop :=
  ∀ n, P18035139742382171144.a n = A156828 (n + 1)

end A156828

/-! ## A156828.P3589706194344034341

`A079778(a(n-1))` with `a(0)=2, a(1)=7`
-/

namespace A156828.P3589706194344034341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7] fun n a =>
  A079778 (a (n - 1)).toNat

end

end A156828.P3589706194344034341

namespace A156828

/-- `A079778(a(n-1))` -/
def P3589706194344034341.Spec : Prop :=
  ∀ n, P3589706194344034341.a n = A156828 (n + 1)

end A156828

/-! ## A156828.P89197870059845769

`A066169(a(n-1)+3)` with `a(0)=2`
-/

namespace A156828.P89197870059845769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A066169 (a (n - 1) + 3).toNat

end

end A156828.P89197870059845769

namespace A156828

/-- `A066169(a(n-1)+3)` -/
def P89197870059845769.Spec : Prop :=
  ∀ n, P89197870059845769.a n = A156828 (n + 1)

end A156828

/-! ## A156828.P12513588254661932907

`A266620(a(n-1)+3)` with `a(0)=2`
-/

namespace A156828.P12513588254661932907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A266620 (a (n - 1) + 3).toNat

end

end A156828.P12513588254661932907

namespace A156828

/-- `A266620(a(n-1)+3)` -/
def P12513588254661932907.Spec : Prop :=
  ∀ n, P12513588254661932907.a n = A156828 (n + 1)

end A156828

/-! ## A156828.P11303971809405819710

`A007918(a(n-1)+4)` with `a(0)=2`
-/

namespace A156828.P11303971809405819710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A007918 (a (n - 1) + 4).toNat

end

end A156828.P11303971809405819710

namespace A156828

/-- `A007918(a(n-1)+4)` -/
def P11303971809405819710.Spec : Prop :=
  ∀ n, P11303971809405819710.a n = A156828 (n + 1)

end A156828

/-! ## A156828.P3611379265664391062

`A230504(a(n-1)+1)` with `a(0)=2, a(1)=7`
-/

namespace A156828.P3611379265664391062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7] fun n a =>
  A230504 (a (n - 1) + 1).toNat

end

end A156828.P3611379265664391062

namespace A156828

/-- `A230504(a(n-1)+1)` -/
def P3611379265664391062.Spec : Prop :=
  ∀ n, P3611379265664391062.a n = A156828 (n + 1)

end A156828

/-! ## A156828.P10487632718752403839

`record[A151800(A055672(2*n+1)+1)]`
-/

namespace A156828.P10487632718752403839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A055672 (2 * n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156828.P10487632718752403839

namespace A156828

/-- `record[A151800(A055672(2*n+1)+1)]` -/
def P10487632718752403839.Spec : Prop :=
  ∀ n, P10487632718752403839.a n = A156828 (n + 1)

end A156828

/-! ## A156828.P6045416595168936155

`p?[comp[A020639(A074215(n+1))+2]]`
-/

namespace A156828.P6045416595168936155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A074215 (n + 1)).toNat + 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A156828.P6045416595168936155

namespace A156828

/-- `p?[comp[A020639(A074215(n+1))+2]]` -/
def P6045416595168936155.Spec : Prop :=
  ∀ n, (P6045416595168936155.a n : ℤ) = A156828 (n + 1)

end A156828

/-!
# A156829: a(1) = 2. a(n) = the smallest prime >= a(n-1) + 6.

The programs for A156829, there is no canonical definition to state claims against.
-/

/-! ## A156829.P15072515547257027016

`A066169(a(n-1)+5)` with `a(0)=2`
-/

namespace A156829.P15072515547257027016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A066169 (a (n - 1) + 5).toNat

end

end A156829.P15072515547257027016

/-! ## A156829.P10137519234717023237

`A151800(a(n-1)+5)` with `a(0)=2`
-/

namespace A156829.P10137519234717023237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (a (n - 1) + 5).toNat

end

end A156829.P10137519234717023237

/-! ## A156829.P1051900891014300068

`A266620(a(n-1)+5)` with `a(0)=2`
-/

namespace A156829.P1051900891014300068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A266620 (a (n - 1) + 5).toNat

end

end A156829.P1051900891014300068

/-! ## A156829.P4703918450566244873

`A007918(a(n-1)+6)` with `a(0)=2`
-/

namespace A156829.P4703918450566244873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A007918 (a (n - 1) + 6).toNat

end

end A156829.P4703918450566244873

/-! ## A156829.P4813280722766980372

`A159477(a(n-1)+6)` with `a(0)=2`
-/

namespace A156829.P4813280722766980372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A159477 (a (n - 1) + 6).toNat

end

end A156829.P4813280722766980372

/-! ## A156829.P15734818651882686413

`p?[C(A018252(n)+1, a(n-1))]` with `a(0)=1`
-/

namespace A156829.P15734818651882686413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.choose (A018252 n + 1).toNat (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A156829.P15734818651882686413

/-! ## A156829.P3112493548767308165

`A151800(A242963(a(n-1)))` with `a(0)=2`
-/

namespace A156829.P3112493548767308165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (A242963 (a (n - 1)).toNat).toNat

end

end A156829.P3112493548767308165

/-! ## A156829.P15663928192665037336

`A000040(A036234(a(n-1)+5))` with `a(0)=2`
-/

namespace A156829.P15663928192665037336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000040 (A036234 (a (n - 1) + 5).toNat).toNat

end

end A156829.P15663928192665037336

/-! ## A156829.P7078149472331681128

`A000040(A000720(a(n-1)+5)+1)` with `a(0)=2`
-/

namespace A156829.P7078149472331681128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000040 (A000720 (a (n - 1) + 5).toNat + 1).toNat

end

end A156829.P7078149472331681128

/-!
# A156830: a(1) = 2. For n >= 2, a(n) = the smallest prime > a(n-1) + p(n) - p(n-1), where p(n) is the n-th prime.

The programs for A156830, the canonical program `A156830.P6923617895616605751` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156830 has offset 1).

The definition of A156830 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156830.P6923617895616605751

`A151800(A001223(n)+a(n-1))` with `a(0)=2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A156830

/-- `A151800(A001223(n)+a(n-1))` -/
def P6923617895616605751.Spec : Prop :=
  ∀ n, P6923617895616605751.a n = A156830 (n + 1)

theorem P6923617895616605751.correct : P6923617895616605751.Spec := by
  intro n
  simp only [A156830, Nat.add_sub_cancel]

end A156830

/-! ## A156830.P12375972882865066956

`A151800(A076368(n+1)+a(n-1))` with `a(0)=2`
-/

namespace A156830.P12375972882865066956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (A076368 (n + 1) + a (n - 1)).toNat

end

end A156830.P12375972882865066956

namespace A156830

/-- `A151800(A076368(n+1)+a(n-1))` -/
def P12375972882865066956.Spec : Prop :=
  ∀ n, P12375972882865066956.a n = A156830 (n + 1)

end A156830

/-! ## A156830.P14884291216829419707

`A230775(∑[A001358(3*n+1)*A164707(n+1)])`
-/

namespace A156830.P14884291216829419707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (3 * n + 1) * A164707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A156830.P14884291216829419707

namespace A156830

/-- `A230775(∑[A001358(3*n+1)*A164707(n+1)])` -/
def P14884291216829419707.Spec : Prop :=
  ∀ n, P14884291216829419707.a n = A156830 (n + 1)

end A156830

/-! ## A156830.P1656925489040891263

`A230775(A031327(n+1)*A117958(2*(n+2)))`
-/

namespace A156830.P1656925489040891263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (A031327 (n + 1) * A117958 (2 * (n + 2))).toNat

end

end A156830.P1656925489040891263

namespace A156830

/-- `A230775(A031327(n+1)*A117958(2*(n+2)))` -/
def P1656925489040891263.Spec : Prop :=
  ∀ n, P1656925489040891263.a n = A156830 (n + 1)

end A156830

/-! ## A156830.P7392570810053997440

`p?[gcd(A007918(n), A320955(n))]`
-/

namespace A156830.P7392570810053997440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007918 n) (A320955 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A156830.P7392570810053997440

namespace A156830

/-- `p?[gcd(A007918(n), A320955(n))]` -/
def P7392570810053997440.Spec : Prop :=
  ∀ n, (P7392570810053997440.a n : ℤ) = A156830 (n + 1)

end A156830

/-!
# A156831: Let a(n) = the number of permutations (p(1),p(2),p(3)...,p(n)) of (1,2,3,...,n) where, if each (m,p(m)) is plotted on a graph, then the entire set P of the n of these plotted points would be on the perimeter of the convex hull of P.

The programs for A156831, there is no canonical definition to state claims against.
-/

/-! ## A156831.P10386974724339649490

`record[A320355(comp[2*(n+1)])-n]`
-/

namespace A156831.P10386974724339649490
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320355 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156831.P10386974724339649490

/-! ## A156831.P1017241043461864720

`A102470(∑{e}[n+1, #]!+2^n)`
-/

namespace A156831.P1017241043461864720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102470 (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) + 2 ^ n)

end

end A156831.P1017241043461864720

/-!
# A156832: a(n) = the largest divisor of n! such that (sum{k=1 to n} a(k)) is a divisor of n!.

The programs for A156832, there is no canonical definition to state claims against.
-/

/-! ## A156832.P17820421764363701881

`(n+1)!/A145500(n+1)`
-/

namespace A156832.P17820421764363701881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A145500 (n + 1) : ℚ)

end

end A156832.P17820421764363701881

/-! ## A156832.P18255295341450738912

`A000142(n+1)/A145500(n+1)`
-/

namespace A156832.P18255295341450738912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A145500 (n + 1) : ℚ)

end

end A156832.P18255295341450738912

/-! ## A156832.P7268911206829410076

`record[A166350(n+1)]/A145500(n+1)`
-/

namespace A156832.P7268911206829410076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166350 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A145500 (n + 1) : ℚ)

end

end A156832.P7268911206829410076

/-!
# A156833: A054525 * A156348 * [1,2,3,...].

The programs for A156833, there is no canonical definition to state claims against.
-/

/-! ## A156833.P6196210161116334327

`∑{d}[n+1, A008683(#)*A157020((n+1)/#)]`
-/

namespace A156833.P6196210161116334327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A157020 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A156833.P6196210161116334327

/-! ## A156833.P3061848747012439169

`A157501(A161680(n)+A157450(n+1))`
-/

namespace A156833.P3061848747012439169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157501 (A161680 n + A157450 (n + 1)).toNat

end

end A156833.P3061848747012439169

/-! ## A156833.P10663638587487140590

`A157501(A000124(n)%A171288(n+1))`
-/

namespace A156833.P10663638587487140590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157501 (Int.tmod (A000124 n) (A171288 (n + 1))).toNat

end

end A156833.P10663638587487140590

/-!
# A156834: A156348 * A000010.

The programs for A156834, the canonical program `A156834.P7844969662654311144` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156834 has offset 1).

The definition of A156834 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A156834.P7844969662654311144

`∑{d}[n+1, A000010(#)*C(#+(n+1)/#-2, #-1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A156834

/-- `∑{d}[n+1, A000010(#)*C(#+(n+1)/#-2, #-1)]` -/
def P7844969662654311144.Spec : Prop :=
  ∀ n, P7844969662654311144.a n = A156834 (n + 1)

theorem P7844969662654311144.correct : P7844969662654311144.Spec := by
  intro n
  simp only [A156834, Nat.add_sub_cancel]

end A156834

/-!
# A156836: Triangle read by rows, A156348 * A130207.

The programs for A156836, there is no canonical definition to state claims against.
-/

/-! ## A156836.P365180236163405301

`A054522(n+1)*A156348(n+1)`
-/

namespace A156836.P365180236163405301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054522 (n + 1) * A156348 (n + 1)

end

end A156836.P365180236163405301

/-! ## A156836.P3800149361259261502

`A054526(n+1)*A156348(n+1)`
-/

namespace A156836.P3800149361259261502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054526 (n + 1) * A156348 (n + 1)

end

end A156836.P3800149361259261502

/-! ## A156836.P4035539036372962870

`A054532(n+1)*A156348(n+1)`
-/

namespace A156836.P4035539036372962870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054532 (n + 1) * A156348 (n + 1)

end

end A156836.P4035539036372962870

/-! ## A156836.P16732739455228983240

`A156348(n+1)*A159936(n+1)`
-/

namespace A156836.P16732739455228983240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156348 (n + 1) * A159936 (n + 1)

end

end A156836.P16732739455228983240

/-! ## A156836.P1943880998180561260

`A156348(n+1)*A372673(n+1)`
-/

namespace A156836.P1943880998180561260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156348 (n + 1) * A372673 (n + 1)

end

end A156836.P1943880998180561260

/-! ## A156836.P6197095109571155008

`A000010(1-C(∑[char[∑[n]]], 2)+n)*A156348(n+1)`
-/

namespace A156836.P6197095109571155008
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat * A156348 (n + 1)

end

end A156836.P6197095109571155008

/-! ## A156836.P1985094958687556119

`A156348(n+1)*A163109(A059268(n))`
-/

namespace A156836.P1985094958687556119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156348 (n + 1) * A163109 (A059268 n).toNat

end

end A156836.P1985094958687556119

/-! ## A156836.P9100105292321771626

`A000010(A002260(n+1))*A156348(n+1)`
-/

namespace A156836.P9100105292321771626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002260 (n + 1)).toNat * A156348 (n + 1)

end

end A156836.P9100105292321771626

/-! ## A156836.P11873649835592360753

`A000010(A002262(n)+1)*A156348(n+1)`
-/

namespace A156836.P11873649835592360753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002262 n + 1).toNat * A156348 (n + 1)

end

end A156836.P11873649835592360753

/-! ## A156836.P16999462556172775224

`A000010(A050873(n+1))*A156348(n+1)`
-/

namespace A156836.P16999462556172775224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A050873 (n + 1)).toNat * A156348 (n + 1)

end

end A156836.P16999462556172775224

/-!
# A156837: Triangle read by rows, A051731 * A156348.

The programs for A156837, there is no canonical definition to state claims against.
-/

/-! ## A156837.P9153342297272983913

`A156660(A332727(n))+A127170(n+1)`
-/

namespace A156837.P9153342297272983913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156660 (A332727 n).toNat + A127170 (n + 1)

end

end A156837.P9153342297272983913

/-! ## A156837.P9635018041646733900

`A007953(A127170(n+1)*A132318(n))`
-/

namespace A156837.P9635018041646733900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A127170 (n + 1) * A132318 n).toNat

end

end A156837.P9635018041646733900

/-! ## A156837.P3031277656024323282

`and(A007413(2*n+3), A007413(A285794(n+1)))`
-/

namespace A156837.P3031277656024323282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007413 (2 * n + 3)) (A007413 (A285794 (n + 1)).toNat)

end

end A156837.P3031277656024323282

/-!
# A156838: Row sums of triangle A156837.

The programs for A156838, there is no canonical definition to state claims against.
-/

/-! ## A156838.P14776395381780839008

`∑{d}[n+1, A157019(#)]`
-/

namespace A156838.P14776395381780839008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157019 d

end

end A156838.P14776395381780839008

/-!
# A156840: Numbers k >= 1 such that k^2 == 1 (mod 900).

The programs for A156840, the canonical program `A156840.P8508514487423593656` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156840 has offset 0).

The definition of A156840 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156840.P8508514487423593656

`a(n-4)+450` with `a(0)=1, a(1)=199, a(2)=251, a(3)=449`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A156840

/-- `a(n-4)+450` -/
def P8508514487423593656.Spec : Prop :=
  ∀ n, (P8508514487423593656.a n : ℤ) = A156840 n

theorem P8508514487423593656.correct : P8508514487423593656.Spec := by
  intro n
  simp only [A156840]

end A156840

/-! ## A156840.P9904923674308405588

`A056026(A047401(n+2))`
-/

namespace A156840.P9904923674308405588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056026 (A047401 (n + 2)).toNat

end

end A156840.P9904923674308405588

namespace A156840

/-- `A056026(A047401(n+2))` -/
def P9904923674308405588.Spec : Prop :=
  ∀ n, P9904923674308405588.a n = A156840 n

end A156840

/-! ## A156840.P16831848536538079033

`A056026(∑[2-A056594(n)])`
-/

namespace A156840.P16831848536538079033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A056594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056026 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A156840.P16831848536538079033

namespace A156840

/-- `A056026(∑[2-A056594(n)])` -/
def P16831848536538079033.Spec : Prop :=
  ∀ n, P16831848536538079033.a n = A156840 n

end A156840

/-! ## A156840.P13022374283467565848

`A056026(∑[A164358(n)]-n)`
-/

namespace A156840.P13022374283467565848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164358 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056026 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A156840.P13022374283467565848

namespace A156840

/-- `A056026(∑[A164358(n)]-n)` -/
def P13022374283467565848.Spec : Prop :=
  ∀ n, P13022374283467565848.a n = A156840 n

end A156840

/-! ## A156840.P1467587312748434708

`A056026(A047481(n+1)+1)`
-/

namespace A156840.P1467587312748434708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056026 (A047481 (n + 1) + 1).toNat

end

end A156840.P1467587312748434708

namespace A156840

/-- `A056026(A047481(n+1)+1)` -/
def P1467587312748434708.Spec : Prop :=
  ∀ n, P1467587312748434708.a n = A156840 n

end A156840

/-! ## A156840.P12924427734521274954

`A056026(∑[2-∑[A087960(n)]])`
-/

namespace A156840.P12924427734521274954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056026 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A156840.P12924427734521274954

namespace A156840

/-- `A056026(∑[2-∑[A087960(n)]])` -/
def P12924427734521274954.Spec : Prop :=
  ∀ n, P12924427734521274954.a n = A156840 n

end A156840

/-! ## A156840.P14729425631902122236

`A056026(A016789(n)-A098180(n))`
-/

namespace A156840.P14729425631902122236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056026 (A016789 n - A098180 n).toNat

end

end A156840.P14729425631902122236

namespace A156840

/-- `A056026(A016789(n)-A098180(n))` -/
def P14729425631902122236.Spec : Prop :=
  ∀ n, P14729425631902122236.a n = A156840 n

end A156840

/-! ## A156840.P234123779237618589

`A056026(A045572(n+1)-A004526(n))`
-/

namespace A156840.P234123779237618589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056026 (A045572 (n + 1) - A004526 n).toNat

end

end A156840.P234123779237618589

namespace A156840

/-- `A056026(A045572(n+1)-A004526(n))` -/
def P234123779237618589.Spec : Prop :=
  ∀ n, P234123779237618589.a n = A156840 n

end A156840

/-! ## A156840.P16070819882780997758

`∩[A056026(n+1), A376506(n+1)]`
-/

namespace A156840.P16070819882780997758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156840.P16070819882780997758

namespace A156840

/-- `∩[A056026(n+1), A376506(n+1)]` -/
def P16070819882780997758.Spec : Prop :=
  ∀ n, (P16070819882780997758.a n : ℤ) = A156840 n

end A156840

/-! ## A156840.P18179565519068382616

`filter[A056026(n+1), A373156(#)]`
-/

namespace A156840.P18179565519068382616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A156840.P18179565519068382616

namespace A156840

/-- `filter[A056026(n+1), A373156(#)]` -/
def P18179565519068382616.Spec : Prop :=
  ∀ n, P18179565519068382616.a n = A156840 n

end A156840

/-! ## A156840.P14114639300923131976

`filter[A056026(n+1), A374134(#)]`
-/

namespace A156840.P14114639300923131976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A156840.P14114639300923131976

namespace A156840

/-- `filter[A056026(n+1), A374134(#)]` -/
def P14114639300923131976.Spec : Prop :=
  ∀ n, P14114639300923131976.a n = A156840 n

end A156840

/-! ## A156840.P8399133457684090850

`∩[A056026(n+1), A057538(n+1)]`
-/

namespace A156840.P8399133457684090850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156840.P8399133457684090850

namespace A156840

/-- `∩[A056026(n+1), A057538(n+1)]` -/
def P8399133457684090850.Spec : Prop :=
  ∀ n, (P8399133457684090850.a n : ℤ) = A156840 n

end A156840

/-! ## A156840.P14787148187601971135

`filter[A056026(n+1), A093719(#)]`
-/

namespace A156840.P14787148187601971135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A156840.P14787148187601971135

namespace A156840

/-- `filter[A056026(n+1), A093719(#)]` -/
def P14787148187601971135.Spec : Prop :=
  ∀ n, P14787148187601971135.a n = A156840 n

end A156840

/-! ## A156840.P14516556457012292554

`filter[A056026(n+1), A162289(#)]`
-/

namespace A156840.P14516556457012292554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A156840.P14516556457012292554

namespace A156840

/-- `filter[A056026(n+1), A162289(#)]` -/
def P14516556457012292554.Spec : Prop :=
  ∀ n, P14516556457012292554.a n = A156840 n

end A156840

/-! ## A156840.P17605743893497035947

`filter[A056026(n+1), A320106(#)]`
-/

namespace A156840.P17605743893497035947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A156840.P17605743893497035947

namespace A156840

/-- `filter[A056026(n+1), A320106(#)]` -/
def P17605743893497035947.Spec : Prop :=
  ∀ n, P17605743893497035947.a n = A156840 n

end A156840

/-! ## A156840.P3982173133301486906

`filter[A056026(n+1), A354354(#)]`
-/

namespace A156840.P3982173133301486906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A156840.P3982173133301486906

namespace A156840

/-- `filter[A056026(n+1), A354354(#)]` -/
def P3982173133301486906.Spec : Prop :=
  ∀ n, P3982173133301486906.a n = A156840 n

end A156840

/-! ## A156840.P3678595733303522979

`∩[A056026(n+1), A090771(n+1)]`
-/

namespace A156840.P3678595733303522979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156840.P3678595733303522979

namespace A156840

/-- `∩[A056026(n+1), A090771(n+1)]` -/
def P3678595733303522979.Spec : Prop :=
  ∀ n, (P3678595733303522979.a n : ℤ) = A156840 n

end A156840

/-! ## A156840.P7567994615656044163

`∩[A056026(n+1), A230462(n+1)]`
-/

namespace A156840.P7567994615656044163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156840.P7567994615656044163

namespace A156840

/-- `∩[A056026(n+1), A230462(n+1)]` -/
def P7567994615656044163.Spec : Prop :=
  ∀ n, (P7567994615656044163.a n : ℤ) = A156840 n

end A156840

/-! ## A156840.P17705528903506848636

`∩[A007775(n+1), A056026(n+1)]`
-/

namespace A156840.P17705528903506848636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156840.P17705528903506848636

namespace A156840

/-- `∩[A007775(n+1), A056026(n+1)]` -/
def P17705528903506848636.Spec : Prop :=
  ∀ n, (P17705528903506848636.a n : ℤ) = A156840 n

end A156840

/-! ## A156840.P2965227272083736916

`∩[A054967(n+1), A056026(n+1)]`
-/

namespace A156840.P2965227272083736916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156840.P2965227272083736916

namespace A156840

/-- `∩[A054967(n+1), A056026(n+1)]` -/
def P2965227272083736916.Spec : Prop :=
  ∀ n, (P2965227272083736916.a n : ℤ) = A156840 n

end A156840

/-!
# A156841: a(n) = 529n^2 - 312n + 46.

The programs for A156841, the canonical program `A156841.P7877031542477978585` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156841 has offset 0).

The definition of A156841 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `529*n²-312*n+46` (program `A156841.P7877031542477978585`, by `A156841.P7877031542477978585.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A156841.P7877031542477978585

`529*n²-312*n+46`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A156841

/-- `529*n²-312*n+46` -/
def P7877031542477978585.Spec : Prop :=
  ∀ n, P7877031542477978585.a n = A156841 n

theorem P7877031542477978585.correct : P7877031542477978585.Spec := by
  intro n
  simp only [A156841]

end A156841

/-!
# A156842: a(n) = 529*n^2 - 746*n + 263.

The programs for A156842, the canonical program `A156842.P14143359346065924949` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156842 has offset 1).

The definition of A156842 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `529*(n+1)²-746*(n+1)+263` (program `A156842.P14143359346065924949`, by `A156842.P14143359346065924949.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A156842.P14143359346065924949

`529*(n+1)²-746*(n+1)+263`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A156842

/-- `529*(n+1)²-746*(n+1)+263` -/
def P14143359346065924949.Spec : Prop :=
  ∀ n, P14143359346065924949.a n = A156842 (n + 1)

theorem P14143359346065924949.correct : P14143359346065924949.Spec := by
  intro n
  simp only [A156842, Nat.add_sub_cancel]

end A156842

/-! ## A156842.P4351587338681345720

`round((A156844(n+1)/A156845(n+1))²)`
-/

namespace A156842.P4351587338681345720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A156844 (n + 1) : ℚ) / (A156845 (n + 1) : ℚ)) ^ 2)

end

end A156842.P4351587338681345720

namespace A156842

/-- `round((A156844(n+1)/A156845(n+1))²)` -/
def P4351587338681345720.Spec : Prop :=
  ∀ n, P4351587338681345720.a n = A156842 (n + 1)

end A156842

/-!
# A156843: a(n) = 279841n^2 - 165048n + 24335.

The programs for A156843, the canonical program `A156843.P2012834602273359370` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156843 has offset 0).

The definition of A156843 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156843.P2012834602273359370

`A156849(comp[2*(n+1)]+1)²-1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A156843

/-- `A156849(comp[2*(n+1)]+1)²-1` -/
def P2012834602273359370.Spec : Prop :=
  ∀ n, P2012834602273359370.a n = A156843 n

theorem P2012834602273359370.correct : P2012834602273359370.Spec := by
  intro n
  simp only [A156843]

end A156843

/-!
# A156844: a(n) = 279841*n^2 - 394634*n + 139128.

The programs for A156844, the canonical program `A156844.P15209842752411794617` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156844 has offset 1).

The definition of A156844 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156844.P8698909216481233350

`round(sqrt(A156842(n+1))*A156845(n+1))`
-/

namespace A156844.P8698909216481233350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A156842 (n + 1) : ℝ) * (A156845 (n + 1) : ℝ))

end

end A156844.P8698909216481233350

namespace A156844

/-- `round(sqrt(A156842(n+1))*A156845(n+1))` -/
def P8698909216481233350.Spec : Prop :=
  ∀ n, P8698909216481233350.a n = A156844 (n + 1)

end A156844

/-! ## A156844.P15209842752411794617

`A156849(2*n+1)²-1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A156844

/-- `A156849(2*n+1)²-1` -/
def P15209842752411794617.Spec : Prop :=
  ∀ n, P15209842752411794617.a n = A156844 (n + 1)

theorem P15209842752411794617.correct : P15209842752411794617.Spec := by
  intro n
  simp only [A156844, Nat.add_sub_cancel]

end A156844

/-! ## A156844.P1013203391714515650

`A008683(A184856(n+1))+A156849(2*n+1)²`
-/

namespace A156844.P1013203391714515650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A184856 (n + 1)).toNat + A156849 (2 * n + 1) ^ 2

end

end A156844.P1013203391714515650

namespace A156844

/-- `A008683(A184856(n+1))+A156849(2*n+1)²` -/
def P1013203391714515650.Spec : Prop :=
  ∀ n, P1013203391714515650.a n = A156844 (n + 1)

end A156844

/-! ## A156844.P5783666581315929479

`A049347(A016777(n))+A156849(2*n+1)²`
-/

namespace A156844.P5783666581315929479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A016777 n).toNat + A156849 (2 * n + 1) ^ 2

end

end A156844.P5783666581315929479

namespace A156844

/-- `A049347(A016777(n))+A156849(2*n+1)²` -/
def P5783666581315929479.Spec : Prop :=
  ∀ n, P5783666581315929479.a n = A156844 (n + 1)

end A156844

/-! ## A156844.P2597998519597565427

`A110514(A016813(n))+A156849(2*n+1)²`
-/

namespace A156844.P2597998519597565427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (A016813 n).toNat + A156849 (2 * n + 1) ^ 2

end

end A156844.P2597998519597565427

namespace A156844

/-- `A110514(A016813(n))+A156849(2*n+1)²` -/
def P2597998519597565427.Spec : Prop :=
  ∀ n, P2597998519597565427.a n = A156844 (n + 1)

end A156844

/-! ## A156844.P9775712566278717681

`A008683(A031933(n))+A156849(2*n+1)²`
-/

namespace A156844.P9775712566278717681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A031933 n).toNat + A156849 (2 * n + 1) ^ 2

end

end A156844.P9775712566278717681

namespace A156844

/-- `A008683(A031933(n))+A156849(2*n+1)²` -/
def P9775712566278717681.Spec : Prop :=
  ∀ n, P9775712566278717681.a n = A156844 (n + 1)

end A156844

/-!
# A156845: a(n) = 12167*n - 8579.

The programs for A156845, there is no canonical definition to state claims against.
-/

/-! ## A156845.P7667472432236780475

`A156846(3*n+2)-A156846(n+1)-A156846(n+1)`
-/

namespace A156845.P7667472432236780475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156846 (3 * n + 2) - A156846 (n + 1) - A156846 (n + 1)

end

end A156845.P7667472432236780475

/-!
# A156846: a(n) = 12167n - 3588.

The programs for A156846, there is no canonical definition to state claims against.
-/

/-! ## A156846.P828888000774183457

`A156849(2*(n+1))/A156849(2*n+1)*A156845(n+1)`
-/

namespace A156846.P828888000774183457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156849 (2 * (n + 1)) : ℚ) / (A156849 (2 * n + 1) : ℚ) * (A156845 (n + 1) : ℚ)

end

end A156846.P828888000774183457

/-!
# A156849: Numbers k such that k^2 == 2 (mod 23^2).

The programs for A156849, the canonical program `A156849.P10185519769702987681` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156849 has offset 1).

The definition of A156849 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156849.P10185519769702987681

`529*(n+1)/2-529/4-95*(-1)^(n+1)/4`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A156849

/-- `529*(n+1)/2-529/4-95*(-1)^(n+1)/4` -/
def P10185519769702987681.Spec : Prop :=
  ∀ n, P10185519769702987681.a n = (A156849 (n + 1) : ℚ)

end A156849

/-! ## A156849.P17525994977776205232

`A155450(A155449(n+1)+A164131(n+1)-n)`
-/

namespace A156849.P17525994977776205232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155450 (A155449 (n + 1) + (A164131 (n + 1) - (n : ℤ))).toNat

end

end A156849.P17525994977776205232

namespace A156849

/-- `A155450(A155449(n+1)+A164131(n+1)-n)` -/
def P17525994977776205232.Spec : Prop :=
  ∀ n, P17525994977776205232.a n = A156849 (n + 1)

end A156849

/-!
# A156850: a(1)=2, a(n+1) is the smallest prime > (a(n) + sum of digits of a(n)).

The programs for A156850, there is no canonical definition to state claims against.
-/

/-! ## A156850.P15196831332983472162

`A151800(A062028(a(n-1)))` with `a(0)=2`
-/

namespace A156850.P15196831332983472162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (A062028 (a (n - 1)).toNat).toNat

end

end A156850.P15196831332983472162

/-! ## A156850.P12460566676074099182

`A151800(A119024(∑[n+2]-1))`
-/

namespace A156850.P12460566676074099182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A119024 (∑ j ∈ Finset.range (n + 1), f1 j - 1)).toNat

end

end A156850.P12460566676074099182

/-! ## A156850.P1924187598740661072

`A133956(A155628(C(n, 8))+n+n)`
-/

namespace A156850.P1924187598740661072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133956 (A155628 (Nat.choose n 8) + (n : ℤ) + (n : ℤ)).toNat

end

end A156850.P1924187598740661072

/-! ## A156850.P8854009660501178864

`p?[A325372(n+1)-A325406(3*n+2)]`
-/

namespace A156850.P8854009660501178864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325372 (n + 1) - A325406 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156850.P8854009660501178864

/-!
# A156851: Primes p=prime(k) such that the largest digit of k is odd and is equal to the largest digit of p.

The programs for A156851, there is no canonical definition to state claims against.
-/

/-! ## A156851.P14491923649350288410

`A117331(A054293(n+1))`
-/

namespace A156851.P14491923649350288410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117331 (A054293 (n + 1)).toNat

end

end A156851.P14491923649350288410

/-!
# A156853: a(n) = 2025*n^2 - 649*n + 52.

The programs for A156853, the canonical program `A156853.P18222603699579681643` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156853 has offset 1).

The definition of A156853 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156853.P18222603699579681643

`(25*(n+1)-4)*(81*(n+1)-13)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A156853

/-- `(25*(n+1)-4)*(81*(n+1)-13)` -/
def P18222603699579681643.Spec : Prop :=
  ∀ n, P18222603699579681643.a n = A156853 (n + 1)

theorem P18222603699579681643.correct : P18222603699579681643.Spec := by
  intro n
  simp only [A156853, Nat.add_sub_cancel]

end A156853

/-! ## A156853.P14172205709915405007

`floor((A157079(n+1)/A156866(n+1))²)`
-/

namespace A156853.P14172205709915405007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A157079 (n + 1) : ℚ) / (A156866 (n + 1) : ℚ)) ^ 2⌋

end

end A156853.P14172205709915405007

namespace A156853

/-- `floor((A157079(n+1)/A156866(n+1))²)` -/
def P14172205709915405007.Spec : Prop :=
  ∀ n, P14172205709915405007.a n = A156853 (n + 1)

end A156853

/-!
# A156854: a(n) = 2025*n^2 - 3401*n + 1428.

The programs for A156854, the canonical program `A156854.P1762306219276816155` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156854 has offset 1).

The definition of A156854 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156854.P1762306219276816155

`(81*(n+1)-68)*(25*(n+1)-21)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A156854

/-- `(81*(n+1)-68)*(25*(n+1)-21)` -/
def P1762306219276816155.Spec : Prop :=
  ∀ n, P1762306219276816155.a n = A156854 (n + 1)

theorem P1762306219276816155.correct : P1762306219276816155.Spec := by
  intro n
  simp only [A156854, Nat.add_sub_cancel]

end A156854

/-! ## A156854.P4129686186704997502

`round((A157078(n+1)/A156865(n+1))²)`
-/

namespace A156854.P4129686186704997502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A157078 (n + 1) : ℚ) / (A156865 (n + 1) : ℚ)) ^ 2)

end

end A156854.P4129686186704997502

namespace A156854

/-- `round((A157078(n+1)/A156865(n+1))²)` -/
def P4129686186704997502.Spec : Prop :=
  ∀ n, P4129686186704997502.a n = A156854 (n + 1)

end A156854

/-!
# A156855: a(n) = 2025*n^2 - n.

The programs for A156855, the canonical program `A156855.P16583264194930632856` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156855 has offset 1).

The definition of A156855 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156855.P16583264194930632856

`∑[Δ[(45*n)²]-1]`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A156855

/-- `∑[Δ[(45*n)²]-1]` -/
def P16583264194930632856.Spec : Prop :=
  ∀ n, P16583264194930632856.a n = A156855 (n + 1)

theorem P16583264194930632856.correct : P16583264194930632856.Spec := by
  intro n
  simp only [A156855, Nat.add_sub_cancel]

end A156855

/-! ## A156855.P15038435367537261135

`xor(n, -1)+(45*(n+1))²`
-/

namespace A156855.P15038435367537261135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1) + ((45 * (n + 1)) ^ 2 : ℤ)

end

end A156855.P15038435367537261135

namespace A156855

/-- `xor(n, -1)+(45*(n+1))²` -/
def P15038435367537261135.Spec : Prop :=
  ∀ n, P15038435367537261135.a n = A156855 (n + 1)

end A156855

/-! ## A156855.P11997101383676291489

`(45*(n+1))²-A000027(n+1)`
-/

namespace A156855.P11997101383676291489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((45 * (n + 1)) ^ 2 : ℤ) - A000027 (n + 1)

end

end A156855.P11997101383676291489

namespace A156855

/-- `(45*(n+1))²-A000027(n+1)` -/
def P11997101383676291489.Spec : Prop :=
  ∀ n, P11997101383676291489.a n = A156855 (n + 1)

end A156855

/-! ## A156855.P15046574354529901642

`A000290(A008706(A008591(n+1)))-(n+1)`
-/

namespace A156855.P15046574354529901642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A008706 (A008591 (n + 1)).toNat).toNat - (n + 1 : ℤ)

end

end A156855.P15046574354529901642

namespace A156855

/-- `A000290(A008706(A008591(n+1)))-(n+1)` -/
def P15046574354529901642.Spec : Prop :=
  ∀ n, P15046574354529901642.a n = A156855 (n + 1)

end A156855

/-! ## A156855.P8726052071427016963

`xor(1, A002620(90*(n+1))-n)`
-/

namespace A156855.P8726052071427016963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A002620 (90 * (n + 1)) - (n : ℤ))

end

end A156855.P8726052071427016963

namespace A156855

/-- `xor(1, A002620(90*(n+1))-n)` -/
def P8726052071427016963.Spec : Prop :=
  ∀ n, P8726052071427016963.a n = A156855 (n + 1)

end A156855

/-! ## A156855.P17994124955046657039

`A031768(n+1)-2*A102568(A102569(n+1))`
-/

namespace A156855.P17994124955046657039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031768 (n + 1) - 2 * A102568 (A102569 (n + 1)).toNat

end

end A156855.P17994124955046657039

namespace A156855

/-- `A031768(n+1)-2*A102568(A102569(n+1))` -/
def P17994124955046657039.Spec : Prop :=
  ∀ n, P17994124955046657039.a n = A156855 (n + 1)

end A156855

/-!
# A156856: 

The programs for A156856, there is no canonical definition to state claims against.
-/

/-! ## A156856.P8597267486809047960

`∑[Δ[(45*n)²]+1]`
-/

namespace A156856.P8597267486809047960
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (45 * n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156856.P8597267486809047960

/-! ## A156856.P10462025707339939796

`A156855(n+1)+2*(n+1)`
-/

namespace A156856.P10462025707339939796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156855 (n + 1) + (2 * (n + 1) : ℤ)

end

end A156856.P10462025707339939796

/-! ## A156856.P10981131908285953333

`(9*(A004767(n)+2+n))²+n+1`
-/

namespace A156856.P10981131908285953333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * (A004767 n + 2 + (n : ℤ))) ^ 2 + (n + 1 : ℤ)

end

end A156856.P10981131908285953333

/-! ## A156856.P7927959024018992037

`A156855(n+1)+A005843(n)+2`
-/

namespace A156856.P7927959024018992037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156855 (n + 1) + A005843 n + 2

end

end A156856.P7927959024018992037

/-! ## A156856.P17337855567975953659

`n+1+(A304840(n+1)-A017041(n))²`
-/

namespace A156856.P17337855567975953659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A304840 (n + 1) - A017041 n) ^ 2

end

end A156856.P17337855567975953659

/-! ## A156856.P3620269739444086068

`A001222(A184862(n+1))+(45*(n+1))²+n`
-/

namespace A156856.P3620269739444086068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A184862 (n + 1)).toNat + ((45 * (n + 1)) ^ 2 + n : ℤ)

end

end A156856.P3620269739444086068

/-! ## A156856.P15373985485833255226

`A156814(3*(n+1))-2*(n+1)`
-/

namespace A156856.P15373985485833255226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156814 (3 * (n + 1)) - (2 * (n + 1) : ℤ)

end

end A156856.P15373985485833255226

/-! ## A156856.P2784362353848276086

`A010015(9*(n+1))+n-1`
-/

namespace A156856.P2784362353848276086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010015 (9 * (n + 1)) + (n : ℤ) - 1

end

end A156856.P2784362353848276086

/-! ## A156856.P13434125804150886397

`A000290(A008706(A008591(n+1)))+n+1`
-/

namespace A156856.P13434125804150886397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A008706 (A008591 (n + 1)).toNat).toNat + (n + 1 : ℤ)

end

end A156856.P13434125804150886397

/-!
# A156857: Expansion of (1+2*x)/(1+x+4*x^2)^2.

The programs for A156857, the canonical program `A156857.P13872311402356422665` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156857 has offset 0).

The definition of A156857 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x)/(1+2x+9x^2+8x^3+16x^4))` (program `A156857.P13872311402356422665`, by `A156857.P13872311402356422665.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A156857.P13872311402356422665

`ogf((1+2x)/(1+2x+9x^2+8x^3+16x^4))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A156857

/-- `ogf((1+2x)/(1+2x+9x^2+8x^3+16x^4))` -/
def P13872311402356422665.Spec : Prop :=
  ∀ n, P13872311402356422665.a n = A156857 n

theorem P13872311402356422665.correct : P13872311402356422665.Spec := by
  intro n
  simp only [A156857]

end A156857

/-!
# A156859: The main column of a version of the square spiral.

The programs for A156859, the canonical program `A156859.P4771441229506036255` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156859 has offset 0).

The definition of A156859 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156859.P4771441229506036255

`n²+n+floor((n+1)/2)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A156859

/-- `n²+n+floor((n+1)/2)` -/
def P4771441229506036255.Spec : Prop :=
  ∀ n, P4771441229506036255.a n = A156859 n

theorem P4771441229506036255.correct : P4771441229506036255.Spec := by
  intro n
  simp only [A156859]

end A156859

/-! ## A156859.P3051489709524313926

`floor(A000384(n+1)/2)`
-/

namespace A156859.P3051489709524313926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000384 (n + 1) : ℚ) / 2⌋

end

end A156859.P3051489709524313926

namespace A156859

/-- `floor(A000384(n+1)/2)` -/
def P3051489709524313926.Spec : Prop :=
  ∀ n, P3051489709524313926.a n = A156859 n

end A156859

/-! ## A156859.P10731180456702967354

`∑[comp[or(2, n)-1]]`
-/

namespace A156859.P10731180456702967354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156859.P10731180456702967354

namespace A156859

/-- `∑[comp[or(2, n)-1]]` -/
def P10731180456702967354.Spec : Prop :=
  ∀ n, (P10731180456702967354.a n : ℤ) = A156859 n

end A156859

/-! ## A156859.P7052136936917771416

`∑[n%2+2*n]`
-/

namespace A156859.P7052136936917771416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156859.P7052136936917771416

namespace A156859

/-- `∑[n%2+2*n]` -/
def P7052136936917771416.Spec : Prop :=
  ∀ n, (P7052136936917771416.a n : ℤ) = A156859 n

end A156859

/-! ## A156859.P12188148771889412452

`∑[and(1, n)+2*n]`
-/

namespace A156859.P12188148771889412452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156859.P12188148771889412452

namespace A156859

/-- `∑[and(1, n)+2*n]` -/
def P12188148771889412452.Spec : Prop :=
  ∀ n, (P12188148771889412452.a n : ℤ) = A156859 n

end A156859

/-! ## A156859.P8586139173760736147

`∑[xor(1, or(1, n)+n)]`
-/

namespace A156859.P8586139173760736147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.lor 1 n + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156859.P8586139173760736147

namespace A156859

/-- `∑[xor(1, or(1, n)+n)]` -/
def P8586139173760736147.Spec : Prop :=
  ∀ n, (P8586139173760736147.a n : ℤ) = A156859 n

end A156859

/-! ## A156859.P7814037187278618910

`∑[or(2*n, and(1, n))]`
-/

namespace A156859.P7814037187278618910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n) (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156859.P7814037187278618910

namespace A156859

/-- `∑[or(2*n, and(1, n))]` -/
def P7814037187278618910.Spec : Prop :=
  ∀ n, (P7814037187278618910.a n : ℤ) = A156859 n

end A156859

/-! ## A156859.P4358813839494808497

`∑[xor(2*n, and(1, n))]`
-/

namespace A156859.P4358813839494808497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n) (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156859.P4358813839494808497

namespace A156859

/-- `∑[xor(2*n, and(1, n))]` -/
def P4358813839494808497.Spec : Prop :=
  ∀ n, (P4358813839494808497.a n : ℤ) = A156859 n

end A156859

/-! ## A156859.P1799182628079282220

`∑[lt[or(2, n-1), n]]`
-/

namespace A156859.P1799182628079282220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((n : ℤ) - 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156859.P1799182628079282220

namespace A156859

/-- `∑[lt[or(2, n-1), n]]` -/
def P1799182628079282220.Spec : Prop :=
  ∀ n, (P1799182628079282220.a n : ℤ) = A156859 n

end A156859

/-! ## A156859.P17241159994988671791

`∑[lt[n, xor(2, n+1)]]`
-/

namespace A156859.P17241159994988671791
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156859.P17241159994988671791

namespace A156859

/-- `∑[lt[n, xor(2, n+1)]]` -/
def P17241159994988671791.Spec : Prop :=
  ∀ n, (P17241159994988671791.a n : ℤ) = A156859 n

end A156859

/-! ## A156859.P16456109774557225939

`∑[lt[xor(2, n-1), n]]`
-/

namespace A156859.P16456109774557225939
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 ((n : ℤ) - 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156859.P16456109774557225939

namespace A156859

/-- `∑[lt[xor(2, n-1), n]]` -/
def P16456109774557225939.Spec : Prop :=
  ∀ n, (P16456109774557225939.a n : ℤ) = A156859 n

end A156859

/-! ## A156859.P12132533918322048507

`∑[and(1, n)+n+n]`
-/

namespace A156859.P12132533918322048507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156859.P12132533918322048507

namespace A156859

/-- `∑[and(1, n)+n+n]` -/
def P12132533918322048507.Spec : Prop :=
  ∀ n, (P12132533918322048507.a n : ℤ) = A156859 n

end A156859

/-! ## A156859.P290119339077793733

`round((acot(n)+2)*∑[n])`
-/

namespace A156859.P290119339077793733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.acot (n : ℝ) + 2) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A156859.P290119339077793733

namespace A156859

/-- `round((acot(n)+2)*∑[n])` -/
def P290119339077793733.Spec : Prop :=
  ∀ n, P290119339077793733.a n = A156859 n

end A156859

/-! ## A156859.P18424396624728833348

`∑[a(n-2)+4]` with `a(0)=0, a(1)=3`
-/

namespace A156859.P18424396624728833348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 2) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156859.P18424396624728833348

namespace A156859

/-- `∑[a(n-2)+4]` -/
def P18424396624728833348.Spec : Prop :=
  ∀ n, (P18424396624728833348.a n : ℤ) = A156859 n

end A156859

/-! ## A156859.P755062440896718450

`∑[record[or(2, n+1)-3]]`
-/

namespace A156859.P755062440896718450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (n + 1) : ℤ) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156859.P755062440896718450

namespace A156859

/-- `∑[record[or(2, n+1)-3]]` -/
def P755062440896718450.Spec : Prop :=
  ∀ n, P755062440896718450.a n = A156859 n

end A156859

/-! ## A156859.P16102808601933906654

`∑[record[xor(2, n+1)-3]]`
-/

namespace A156859.P16102808601933906654
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 (n + 1) : ℤ) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156859.P16102808601933906654

namespace A156859

/-- `∑[record[xor(2, n+1)-3]]` -/
def P16102808601933906654.Spec : Prop :=
  ∀ n, P16102808601933906654.a n = A156859 n

end A156859

/-! ## A156859.P3458903276832064595

`∑[2*n--n%2]`
-/

namespace A156859.P3458903276832064595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - Int.tmod (-(n : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156859.P3458903276832064595

namespace A156859

/-- `∑[2*n--n%2]` -/
def P3458903276832064595.Spec : Prop :=
  ∀ n, P3458903276832064595.a n = A156859 n

end A156859

/-! ## A156859.P5301445377019366158

`∑[n+1-or(1, -n)]`
-/

namespace A156859.P5301445377019366158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.lor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156859.P5301445377019366158

namespace A156859

/-- `∑[n+1-or(1, -n)]` -/
def P5301445377019366158.Spec : Prop :=
  ∀ n, P5301445377019366158.a n = A156859 n

end A156859

/-! ## A156859.P7292788384363009158

`∑[or(2*n, n²%2)]`
-/

namespace A156859.P7292788384363009158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n) (n ^ 2 % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156859.P7292788384363009158

namespace A156859

/-- `∑[or(2*n, n²%2)]` -/
def P7292788384363009158.Spec : Prop :=
  ∀ n, (P7292788384363009158.a n : ℤ) = A156859 n

end A156859

/-! ## A156859.P14267215690372961163

`∑[∑[4-a(n-1)]]` with `a(0)=0, a(1)=3`
-/

namespace A156859.P14267215690372961163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  4 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156859.P14267215690372961163

namespace A156859

/-- `∑[∑[4-a(n-1)]]` -/
def P14267215690372961163.Spec : Prop :=
  ∀ n, P14267215690372961163.a n = A156859 n

end A156859

/-!
# A156861: Triangle read by rows: T(n, k) = 2^k - binomial(n, k+1).

The programs for A156861, the canonical program `A156861.P1585810949800256208` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156861 has offset 0).

The definition of A156861 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^col(n)-C(row(n), col(n)+1)` (program `A156861.P1585810949800256208`, by `A156861.P1585810949800256208.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A156861.P1585810949800256208

`2^col(n)-C(row(n), col(n)+1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A156861

/-- `2^col(n)-C(row(n), col(n)+1)` -/
def P1585810949800256208.Spec : Prop :=
  ∀ n, P1585810949800256208.a n = A156861 n

theorem P1585810949800256208.correct : P1585810949800256208.Spec := by
  intro n
  simp only [A156861]

end A156861

/-! ## A156861.P2637372191329157181

`A059268(n)-A206735(n+1)`
-/

namespace A156861.P2637372191329157181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n - A206735 (n + 1)

end

end A156861.P2637372191329157181

namespace A156861

/-- `A059268(n)-A206735(n+1)` -/
def P2637372191329157181.Spec : Prop :=
  ∀ n, P2637372191329157181.a n = A156861 n

end A156861

/-! ## A156861.P3277912529253524462

`Δ[A018900(n+1)]-A007318(n+1)`
-/

namespace A156861.P3277912529253524462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A007318 (n + 1)

end

end A156861.P3277912529253524462

namespace A156861

/-- `Δ[A018900(n+1)]-A007318(n+1)` -/
def P3277912529253524462.Spec : Prop :=
  ∀ n, P3277912529253524462.a n = A156861 n

end A156861

/-! ## A156861.P3339287823398789827

`Δ[A018900(n+1)]-(A014473(n+1)+1)`
-/

namespace A156861.P3339287823398789827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A014473 (n + 1) + 1)

end

end A156861.P3339287823398789827

namespace A156861

/-- `Δ[A018900(n+1)]-(A014473(n+1)+1)` -/
def P3339287823398789827.Spec : Prop :=
  ∀ n, P3339287823398789827.a n = A156861 n

end A156861

/-! ## A156861.P1863594661552547714

`A059268(n)-A007318(n+1)%A038207(n)`
-/

namespace A156861.P1863594661552547714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n - Int.tmod (A007318 (n + 1)) (A038207 n)

end

end A156861.P1863594661552547714

namespace A156861

/-- `A059268(n)-A007318(n+1)%A038207(n)` -/
def P1863594661552547714.Spec : Prop :=
  ∀ n, P1863594661552547714.a n = A156861 n

end A156861

/-! ## A156861.P16364910862148281479

`A018900(n+2)-(A018900(n+1)+A007318(n+1))`
-/

namespace A156861.P16364910862148281479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 2) - (A018900 (n + 1) + A007318 (n + 1))

end

end A156861.P16364910862148281479

namespace A156861

/-- `A018900(n+2)-(A018900(n+1)+A007318(n+1))` -/
def P16364910862148281479.Spec : Prop :=
  ∀ n, P16364910862148281479.a n = A156861 n

end A156861

/-! ## A156861.P1742960174308960530

`A007318(n)+A059268(n)-A007318(A014132(n+1))`
-/

namespace A156861.P1742960174308960530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A059268 n - A007318 (A014132 (n + 1)).toNat)

end

end A156861.P1742960174308960530

namespace A156861

/-- `A007318(n)+A059268(n)-A007318(A014132(n+1))` -/
def P1742960174308960530.Spec : Prop :=
  ∀ n, P1742960174308960530.a n = A156861 n

end A156861

/-! ## A156861.P5935148315816359030

`Δ[eq[2, A000120(n)]]-A007318(n+1)`
-/

namespace A156861.P5935148315816359030
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A007318 (n + 1)

end

end A156861.P5935148315816359030

namespace A156861

/-- `Δ[eq[2, A000120(n)]]-A007318(n+1)` -/
def P5935148315816359030.Spec : Prop :=
  ∀ n, P5935148315816359030.a n = A156861 n

end A156861

/-!
# A156862: Triangle read by rows: T(n, k) = 2^k - binomial(n, k+1) + 2^(n-k) - binomial(n, n-k+1).

The programs for A156862, the canonical program `A156862.P8684102993972009155` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156862 has offset 0).

The definition of A156862 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156862.P8684102993972009155

`2^col(n)-C(row(n), col(n)+1)+2^(row(n)-col(n))-C(row(n), row(n)-col(n)+1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A156862

/-- `2^col(n)-C(row(n), col(n)+1)+2^(row(n)-col(n))-C(row(n), row(n)-col(n)+1)` -/
def P8684102993972009155.Spec : Prop :=
  ∀ n, P8684102993972009155.a n = (A156862 n : ℚ)

end A156862

/-! ## A156862.P10113260437190250974

`A271709(n)-A051601(n)`
-/

namespace A156862.P10113260437190250974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271709 n - A051601 n

end

end A156862.P10113260437190250974

namespace A156862

/-- `A271709(n)-A051601(n)` -/
def P10113260437190250974.Spec : Prop :=
  ∀ n, P10113260437190250974.a n = A156862 n

end A156862

/-! ## A156862.P15626102252431679437

`A131816(n)+1-A051601(n)`
-/

namespace A156862.P15626102252431679437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131816 n + (1 - A051601 n)

end

end A156862.P15626102252431679437

namespace A156862

/-- `A131816(n)+1-A051601(n)` -/
def P15626102252431679437.Spec : Prop :=
  ∀ n, P15626102252431679437.a n = A156862 n

end A156862

/-! ## A156862.P5394297886113609938

`A156861(A061579(n))+A156861(n)`
-/

namespace A156862.P5394297886113609938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156861 (A061579 n).toNat + A156861 n

end

end A156862.P5394297886113609938

namespace A156862

/-- `A156861(A061579(n))+A156861(n)` -/
def P5394297886113609938.Spec : Prop :=
  ∀ n, P5394297886113609938.a n = A156862 n

end A156862

/-! ## A156862.P733178440552112586

`A059268(n)+A130321(n)-A051601(n)`
-/

namespace A156862.P733178440552112586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n + (A130321 n - A051601 n)

end

end A156862.P733178440552112586

namespace A156862

/-- `A059268(n)+A130321(n)-A051601(n)` -/
def P733178440552112586.Spec : Prop :=
  ∀ n, P733178440552112586.a n = A156862 n

end A156862

/-! ## A156862.P6399764273534526103

`A271709(n)-(A051632(n)+A028326(n))`
-/

namespace A156862.P6399764273534526103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271709 n - (A051632 n + A028326 n)

end

end A156862.P6399764273534526103

namespace A156862

/-- `A271709(n)-(A051632(n)+A028326(n))` -/
def P6399764273534526103.Spec : Prop :=
  ∀ n, P6399764273534526103.a n = A156862 n

end A156862

/-! ## A156862.P15470005383551579190

`A028326(n)+A271709(n)-A014410(n+2)`
-/

namespace A156862.P15470005383551579190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n + (A271709 n - A014410 (n + 2))

end

end A156862.P15470005383551579190

namespace A156862

/-- `A028326(n)+A271709(n)-A014410(n+2)` -/
def P15470005383551579190.Spec : Prop :=
  ∀ n, P15470005383551579190.a n = A156862 n

end A156862

/-! ## A156862.P5602756018176989970

`A233775(A115216(n))-A051601(n)`
-/

namespace A156862.P5602756018176989970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233775 (A115216 n).toNat - A051601 n

end

end A156862.P5602756018176989970

namespace A156862

/-- `A233775(A115216(n))-A051601(n)` -/
def P5602756018176989970.Spec : Prop :=
  ∀ n, P5602756018176989970.a n = A156862 n

end A156862

/-!
# A156863: Denominator of Euler(n, 1/22).

The programs for A156863, there is no canonical definition to state claims against.
-/

/-! ## A156863.P18192886974712443616

`22^n/gcd(2, n+1)`
-/

namespace A156863.P18192886974712443616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (22 ^ n : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)

end

end A156863.P18192886974712443616

/-! ## A156863.P2709754900091013264

`22*22*a(n-2)` with `a(0)=1, a(1)=11`
-/

namespace A156863.P2709754900091013264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n a =>
  22 * (22 * a (n - 2))

end

end A156863.P2709754900091013264

/-! ## A156863.P5035411680595930992

`2^(or(1, n)-1)*11^n`
-/

namespace A156863.P5035411680595930992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.lor 1 n : ℤ) - 1 : ℤ) * (11 ^ n : ℚ)

end

end A156863.P5035411680595930992

/-! ## A156863.P3020802569133078660

`2^(n-n%2)*11^n`
-/

namespace A156863.P3020802569133078660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - ((n % 2 : ℕ) : ℤ) : ℤ) * (11 ^ n : ℚ)

end

end A156863.P3020802569133078660

/-! ## A156863.P6031444818869237764

`(2^floor(n/2))²*11^n`
-/

namespace A156863.P6031444818869237764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)) ^ 2 * (11 ^ n : ℚ)

end

end A156863.P6031444818869237764

/-! ## A156863.P4460289283392027311

`A009966(n)/(n%2+1)`
-/

namespace A156863.P4460289283392027311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009966 n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)

end

end A156863.P4460289283392027311

/-! ## A156863.P13469841890218496446

`11^n*2^n/A000034(n)`
-/

namespace A156863.P13469841890218496446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 ^ n * 2 ^ n : ℚ) / (A000034 n : ℚ)

end

end A156863.P13469841890218496446

/-! ## A156863.P538924023028514536

`A009966(n)/Δ[A032766(n)]`
-/

namespace A156863.P538924023028514536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009966 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A156863.P538924023028514536

/-!
# A156864: Triangle read by rows: T(n, k) = 2^k - binomial(n+1, k+1) - ((2*k-n)/(k+1)) * binomial(n+1, k).

The programs for A156864, the canonical program `A156864.P2382162390653235056` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156864 has offset 1).

The definition of A156864 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(col(n)+1)-C(row(n)+2, col(n)+1)` (program `A156864.P2382162390653235056`, by `A156864.P2382162390653235056.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A156864.P2382162390653235056

`2^(col(n)+1)-C(row(n)+2, col(n)+1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A156864

/-- `2^(col(n)+1)-C(row(n)+2, col(n)+1)` -/
def P2382162390653235056.Spec : Prop :=
  ∀ n, P2382162390653235056.a n = A156864 (n + 1)

theorem P2382162390653235056.correct : P2382162390653235056.Spec := by
  intro n
  simp only [A156864, Nat.add_sub_cancel]

end A156864

/-! ## A156864.P18086558171229400966

`2*A059268(n)-A014410(n+2)`
-/

namespace A156864.P18086558171229400966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059268 n - A014410 (n + 2)

end

end A156864.P18086558171229400966

namespace A156864

/-- `2*A059268(n)-A014410(n+2)` -/
def P18086558171229400966.Spec : Prop :=
  ∀ n, P18086558171229400966.a n = A156864 (n + 1)

end A156864

/-! ## A156864.P15982748221947238688

`A130330(A061579(n))-A014430(n)`
-/

namespace A156864.P15982748221947238688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130330 (A061579 n).toNat - A014430 n

end

end A156864.P15982748221947238688

namespace A156864

/-- `A130330(A061579(n))-A014430(n)` -/
def P15982748221947238688.Spec : Prop :=
  ∀ n, P15982748221947238688.a n = A156864 (n + 1)

end A156864

/-! ## A156864.P5726772060055400877

`A000225(A002260(n+1))-A014430(n)`
-/

namespace A156864.P5726772060055400877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A002260 (n + 1)).toNat - A014430 n

end

end A156864.P5726772060055400877

namespace A156864

/-- `A000225(A002260(n+1))-A014430(n)` -/
def P5726772060055400877.Spec : Prop :=
  ∀ n, P5726772060055400877.a n = A156864 (n + 1)

end A156864

/-! ## A156864.P17865790578837250645

`A000079(A002260(n+1))-A014410(n+2)`
-/

namespace A156864.P17865790578837250645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002260 (n + 1)).toNat - A014410 (n + 2)

end

end A156864.P17865790578837250645

namespace A156864

/-- `A000079(A002260(n+1))-A014410(n+2)` -/
def P17865790578837250645.Spec : Prop :=
  ∀ n, P17865790578837250645.a n = A156864 (n + 1)

end A156864

/-! ## A156864.P7540951801463616614

`A059268(A014132(n+1))-A014410(n+2)`
-/

namespace A156864.P7540951801463616614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A014132 (n + 1)).toNat - A014410 (n + 2)

end

end A156864.P7540951801463616614

namespace A156864

/-- `A059268(A014132(n+1))-A014410(n+2)` -/
def P7540951801463616614.Spec : Prop :=
  ∀ n, P7540951801463616614.a n = A156864 (n + 1)

end A156864

/-! ## A156864.P7107387854521211183

`A178414(A059268(n))-A014430(n)`
-/

namespace A156864.P7107387854521211183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178414 (A059268 n).toNat - A014430 n

end

end A156864.P7107387854521211183

namespace A156864

/-- `A178414(A059268(n))-A014430(n)` -/
def P7107387854521211183.Spec : Prop :=
  ∀ n, P7107387854521211183.a n = A156864 (n + 1)

end A156864

/-! ## A156864.P2396470904927216123

`A005843(A059268(n))-A014410(n+2)`
-/

namespace A156864.P2396470904927216123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A059268 n).toNat - A014410 (n + 2)

end

end A156864.P2396470904927216123

namespace A156864

/-- `A005843(A059268(n))-A014410(n+2)` -/
def P2396470904927216123.Spec : Prop :=
  ∀ n, P2396470904927216123.a n = A156864 (n + 1)

end A156864

/-!
# A156865: a(n) = 729000*n - 612180.

The programs for A156865, there is no canonical definition to state claims against.
-/

/-! ## A156865.P10787995417439025261

`floor(A157078(n+1)/sqrt(A156854(n+1)))`
-/

namespace A156865.P10787995417439025261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A157078 (n + 1) : ℝ) / Real.sqrt (A156854 (n + 1) : ℝ)⌋

end

end A156865.P10787995417439025261

/-!
# A156867: a(n) = 729000*n - 180.

The programs for A156867, the canonical program `A156867.P8182002247218982958` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156867 has offset 1).

The definition of A156867 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156867.P8182002247218982958

`90*(90*90*(n+1)-2)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A156867

/-- `90*(90*90*(n+1)-2)` -/
def P8182002247218982958.Spec : Prop :=
  ∀ n, P8182002247218982958.a n = A156867 (n + 1)

theorem P8182002247218982958.correct : P8182002247218982958.Spec := by
  intro n
  simp only [A156867, Nat.add_sub_cancel]

end A156867

/-!
# A156868: a(n) = 729000*n + 180.

The programs for A156868, the canonical program `A156868.P10926820018106641878` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156868 has offset 1).

The definition of A156868 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156868.P10926820018106641878

`90*(90*90*(n+1)+2)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A156868

/-- `90*(90*90*(n+1)+2)` -/
def P10926820018106641878.Spec : Prop :=
  ∀ n, (P10926820018106641878.a n : ℤ) = A156868 (n + 1)

theorem P10926820018106641878.correct : P10926820018106641878.Spec := by
  intro n
  simp only [A156868, Nat.add_sub_cancel]

end A156868

/-!
# A156870: Number of nondecreasing sequences of 2n positive integers with reciprocals adding up to n (1 <= n).

The programs for A156870, there is no canonical definition to state claims against.
-/

/-! ## A156870.P7262254514853154823

`A175894(A050614(n))`
-/

namespace A156870.P7262254514853154823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175894 (A050614 n).toNat

end

end A156870.P7262254514853154823

/-!
# A156871: Number of nondecreasing sequences of n positive integers with reciprocals adding up to an integer.

The programs for A156871, there is no canonical definition to state claims against.
-/

/-! ## A156871.P788318574770972627

`A018401(∑[n]+1)`
-/

namespace A156871.P788318574770972627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018401 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A156871.P788318574770972627

/-!
# A156872: Period 12: 1,3,-1,3,1,0,-1,-3,1,-3,-1,0 repeated.

The programs for A156872, the canonical program `A156872.P4256628510160959105` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156872 has offset 0).

The definition of A156872 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156872.P4256628510160959105

`A156194(n+1)-A156199(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A156872

/-- `A156194(n+1)-A156199(n+1)` -/
def P4256628510160959105.Spec : Prop :=
  ∀ n, P4256628510160959105.a n = A156872 n

theorem P4256628510160959105.correct : P4256628510160959105.Spec := by
  intro n
  simp only [A156872]

end A156872

/-!
# A156874: Number of Sophie Germain primes <= n.

The programs for A156874, the canonical program `A156874.P3410723949972869260` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156874 has offset 1).

The definition of A156874 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156874.P3410723949972869260

`∑[A156660(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A156874

/-- `∑[A156660(n+1)]` -/
def P3410723949972869260.Spec : Prop :=
  ∀ n, P3410723949972869260.a n = A156874 (n + 1)

theorem P3410723949972869260.correct : P3410723949972869260.Spec := by
  intro n
  simp only [A156874, Nat.add_sub_cancel]

end A156874

/-! ## A156874.P3372878220281658905

`∑[char[A005384(n+1)-1]]`
-/

namespace A156874.P3372878220281658905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156874.P3372878220281658905

namespace A156874

/-- `∑[char[A005384(n+1)-1]]` -/
def P3372878220281658905.Spec : Prop :=
  ∀ n, (P3372878220281658905.a n : ℤ) = A156874 (n + 1)

end A156874

/-! ## A156874.P5935799286195219554

`∑[char[p?[A005097(n+1)]-1]]`
-/

namespace A156874.P5935799286195219554
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156874.P5935799286195219554

namespace A156874

/-- `∑[char[p?[A005097(n+1)]-1]]` -/
def P5935799286195219554.Spec : Prop :=
  ∀ n, (P5935799286195219554.a n : ℤ) = A156874 (n + 1)

end A156874

/-! ## A156874.P935788809999568798

`∑[A101264(A061397(n+1))]`
-/

namespace A156874.P935788809999568798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A061397 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156874.P935788809999568798

namespace A156874

/-- `∑[A101264(A061397(n+1))]` -/
def P935788809999568798.Spec : Prop :=
  ∀ n, P935788809999568798.a n = A156874 (n + 1)

end A156874

/-! ## A156874.P12896728868911175685

`∑[char[A000010(A005384(n+1))]]`
-/

namespace A156874.P12896728868911175685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A005384 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156874.P12896728868911175685

namespace A156874

/-- `∑[char[A000010(A005384(n+1))]]` -/
def P12896728868911175685.Spec : Prop :=
  ∀ n, (P12896728868911175685.a n : ℤ) = A156874 (n + 1)

end A156874

/-! ## A156874.P69985940644191951

`A004526(∑[2%(A063377(n+1)+1)])`
-/

namespace A156874.P69985940644191951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A063377 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A156874.P69985940644191951

namespace A156874

/-- `A004526(∑[2%(A063377(n+1)+1)])` -/
def P69985940644191951.Spec : Prop :=
  ∀ n, P69985940644191951.a n = A156874 (n + 1)

end A156874

/-! ## A156874.P7551223631853222727

`∑[A010051(2*n+3)*A010051(n+1)]`
-/

namespace A156874.P7551223631853222727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * n + 3) * A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156874.P7551223631853222727

namespace A156874

/-- `∑[A010051(2*n+3)*A010051(n+1)]` -/
def P7551223631853222727.Spec : Prop :=
  ∀ n, P7551223631853222727.a n = A156874 (n + 1)

end A156874

/-! ## A156874.P4928844247143329327

`A156876(n+1)+A156877(n+1)-A156875(n+1)`
-/

namespace A156874.P4928844247143329327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156876 (n + 1) + (A156877 (n + 1) - A156875 (n + 1))

end

end A156874.P4928844247143329327

namespace A156874

/-- `A156876(n+1)+A156877(n+1)-A156875(n+1)` -/
def P4928844247143329327.Spec : Prop :=
  ∀ n, P4928844247143329327.a n = A156874 (n + 1)

end A156874

/-! ## A156874.P14763459741019340412

`A156875(A259788(n+2)+n+2)`
-/

namespace A156874.P14763459741019340412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156875 (A259788 (n + 2) + (n + 2 : ℤ)).toNat

end

end A156874.P14763459741019340412

namespace A156874

/-- `A156875(A259788(n+2)+n+2)` -/
def P14763459741019340412.Spec : Prop :=
  ∀ n, P14763459741019340412.a n = A156874 (n + 1)

end A156874

/-! ## A156874.P9503816193133147912

`A156875(2*(n+1))+A156660(n+1)`
-/

namespace A156874.P9503816193133147912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156875 (2 * (n + 1)) + A156660 (n + 1)

end

end A156874.P9503816193133147912

namespace A156874

/-- `A156875(2*(n+1))+A156660(n+1)` -/
def P9503816193133147912.Spec : Prop :=
  ∀ n, P9503816193133147912.a n = A156874 (n + 1)

end A156874

/-! ## A156874.P11079191872186835438

`A156875(2*(n+2))`
-/

namespace A156874.P11079191872186835438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156875 (2 * (n + 2))

end

end A156874.P11079191872186835438

namespace A156874

/-- `A156875(2*(n+2))` -/
def P11079191872186835438.Spec : Prop :=
  ∀ n, P11079191872186835438.a n = A156874 (n + 1)

end A156874

/-! ## A156874.P16860118250657259637

`∑[A156659(2*n+3)]`
-/

namespace A156874.P16860118250657259637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156659 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156874.P16860118250657259637

namespace A156874

/-- `∑[A156659(2*n+3)]` -/
def P16860118250657259637.Spec : Prop :=
  ∀ n, P16860118250657259637.a n = A156874 (n + 1)

end A156874

/-! ## A156874.P10650971196990481383

`∑[A010051(A245579(n+1)+A010051(n+1))]`
-/

namespace A156874.P10650971196990481383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A245579 (n + 1) + A010051 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156874.P10650971196990481383

namespace A156874

/-- `∑[A010051(A245579(n+1)+A010051(n+1))]` -/
def P10650971196990481383.Spec : Prop :=
  ∀ n, P10650971196990481383.a n = A156874 (n + 1)

end A156874

/-!
# A156875: Number of safe primes <= n.

The programs for A156875, the canonical program `A156875.P9874642270312529186` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156875 has offset 1).

The definition of A156875 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156875.P9874642270312529186

`∑[A156659(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A156875

/-- `∑[A156659(n+1)]` -/
def P9874642270312529186.Spec : Prop :=
  ∀ n, P9874642270312529186.a n = A156875 (n + 1)

theorem P9874642270312529186.correct : P9874642270312529186.Spec := by
  intro n
  simp only [A156875, Nat.add_sub_cancel]

end A156875

/-! ## A156875.P2106439691425903127

`∑[char[A077065(n+1)]]`
-/

namespace A156875.P2106439691425903127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077065 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156875.P2106439691425903127

namespace A156875

/-- `∑[char[A077065(n+1)]]` -/
def P2106439691425903127.Spec : Prop :=
  ∀ n, (P2106439691425903127.a n : ℤ) = A156875 (n + 1)

end A156875

/-! ## A156875.P5855546973119756694

`∑[char[A033300(n)-1]]`
-/

namespace A156875.P5855546973119756694
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033300 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156875.P5855546973119756694

namespace A156875

/-- `∑[char[A033300(n)-1]]` -/
def P5855546973119756694.Spec : Prop :=
  ∀ n, (P5855546973119756694.a n : ℤ) = A156875 (n + 1)

end A156875

/-! ## A156875.P9850059154195605447

`∑[char[A005385(n+1)-1]]`
-/

namespace A156875.P9850059154195605447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156875.P9850059154195605447

namespace A156875

/-- `∑[char[A005385(n+1)-1]]` -/
def P9850059154195605447.Spec : Prop :=
  ∀ n, (P9850059154195605447.a n : ℤ) = A156875 (n + 1)

end A156875

/-! ## A156875.P11289459481139598888

`∑[char[2*A005384(n+1)]]`
-/

namespace A156875.P11289459481139598888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005384 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156875.P11289459481139598888

namespace A156875

/-- `∑[char[2*A005384(n+1)]]` -/
def P11289459481139598888.Spec : Prop :=
  ∀ n, (P11289459481139598888.a n : ℤ) = A156875 (n + 1)

end A156875

/-! ## A156875.P8888907767322413821

`∑[char[p?[A072055(n+1)]-1]]`
-/

namespace A156875.P8888907767322413821
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156875.P8888907767322413821

namespace A156875

/-- `∑[char[p?[A072055(n+1)]-1]]` -/
def P8888907767322413821.Spec : Prop :=
  ∀ n, (P8888907767322413821.a n : ℤ) = A156875 (n + 1)

end A156875

/-! ## A156875.P1884716440038922619

`∑[char[p?[A088707(n+1)]-1]]`
-/

namespace A156875.P1884716440038922619
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156875.P1884716440038922619

namespace A156875

/-- `∑[char[p?[A088707(n+1)]-1]]` -/
def P1884716440038922619.Spec : Prop :=
  ∀ n, (P1884716440038922619.a n : ℤ) = A156875 (n + 1)

end A156875

/-! ## A156875.P10624208839862328247

`∑[char[p?[2*A000040(n+1)+1]-1]]`
-/

namespace A156875.P10624208839862328247
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156875.P10624208839862328247

namespace A156875

/-- `∑[char[p?[2*A000040(n+1)+1]-1]]` -/
def P10624208839862328247.Spec : Prop :=
  ∀ n, (P10624208839862328247.a n : ℤ) = A156875 (n + 1)

end A156875

/-! ## A156875.P9604554486674139539

`∑[char[A000010(A033300(n))]]`
-/

namespace A156875.P9604554486674139539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A033300 n).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156875.P9604554486674139539

namespace A156875

/-- `∑[char[A000010(A033300(n))]]` -/
def P9604554486674139539.Spec : Prop :=
  ∀ n, (P9604554486674139539.a n : ℤ) = A156875 (n + 1)

end A156875

/-! ## A156875.P8159651847083897391

`∑[char[A000010(A005385(n+1))]]`
-/

namespace A156875.P8159651847083897391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A005385 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156875.P8159651847083897391

namespace A156875

/-- `∑[char[A000010(A005385(n+1))]]` -/
def P8159651847083897391.Spec : Prop :=
  ∀ n, (P8159651847083897391.a n : ℤ) = A156875 (n + 1)

end A156875

/-! ## A156875.P12845287902099632988

`∑[Δ[A156659(n)]²-A156659(n)]`
-/

namespace A156875.P12845287902099632988
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156659 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2 - A156659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156875.P12845287902099632988

namespace A156875

/-- `∑[Δ[A156659(n)]²-A156659(n)]` -/
def P12845287902099632988.Spec : Prop :=
  ∀ n, P12845287902099632988.a n = A156875 (n + 1)

end A156875

/-! ## A156875.P17337087082114649096

`∑[char[eq[n, 2*A006530(A000010(n+1))]]]`
-/

namespace A156875.P17337087082114649096
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006530 (A000010 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156875.P17337087082114649096

namespace A156875

/-- `∑[char[eq[n, 2*A006530(A000010(n+1))]]]` -/
def P17337087082114649096.Spec : Prop :=
  ∀ n, (P17337087082114649096.a n : ℤ) = A156875 (n + 1)

end A156875

/-! ## A156875.P5855061662978229668

`A156876(n+1)+A156877(n+1)-A156874(n+1)`
-/

namespace A156875.P5855061662978229668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156876 (n + 1) + (A156877 (n + 1) - A156874 (n + 1))

end

end A156875.P5855061662978229668

namespace A156875

/-- `A156876(n+1)+A156877(n+1)-A156874(n+1)` -/
def P5855061662978229668.Spec : Prop :=
  ∀ n, P5855061662978229668.a n = A156875 (n + 1)

end A156875

/-! ## A156875.P2764474956149765181

`∑[A064911(A000010(2*(n+1)))*A064911(2*(n+1))]`
-/

namespace A156875.P2764474956149765181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A000010 (2 * (n + 1))).toNat * A064911 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156875.P2764474956149765181

namespace A156875

/-- `∑[A064911(A000010(2*(n+1)))*A064911(2*(n+1))]` -/
def P2764474956149765181.Spec : Prop :=
  ∀ n, P2764474956149765181.a n = A156875 (n + 1)

end A156875

/-! ## A156875.P13579963529401153541

`∑[A156660(A057979(n+1))]`
-/

namespace A156875.P13579963529401153541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156660 (A057979 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156875.P13579963529401153541

namespace A156875

/-- `∑[A156660(A057979(n+1))]` -/
def P13579963529401153541.Spec : Prop :=
  ∀ n, P13579963529401153541.a n = A156875 (n + 1)

end A156875

/-!
# A156876: Number of primes <= n that are safe primes or Sophie Germain primes.

The programs for A156876, the canonical program `A156876.P3614611450342626584` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156876 has offset 1).

The definition of A156876 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156876.P12377946173140036015

`A000720(n+1)-A156878(n+1)`
-/

namespace A156876.P12377946173140036015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A156878 (n + 1)

end

end A156876.P12377946173140036015

namespace A156876

/-- `A000720(n+1)-A156878(n+1)` -/
def P12377946173140036015.Spec : Prop :=
  ∀ n, P12377946173140036015.a n = A156876 (n + 1)

end A156876

/-! ## A156876.P6908920504792439917

`A156874(n+1)+A156875(n+1)-A156877(n+1)`
-/

namespace A156876.P6908920504792439917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156874 (n + 1) + A156875 (n + 1) - A156877 (n + 1)

end

end A156876.P6908920504792439917

namespace A156876

/-- `A156874(n+1)+A156875(n+1)-A156877(n+1)` -/
def P6908920504792439917.Spec : Prop :=
  ∀ n, P6908920504792439917.a n = A156876 (n + 1)

end A156876

/-! ## A156876.P12787189518200583408

`∑[char[A156658(n+1)-1]]`
-/

namespace A156876.P12787189518200583408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156658 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156876.P12787189518200583408

namespace A156876

/-- `∑[char[A156658(n+1)-1]]` -/
def P12787189518200583408.Spec : Prop :=
  ∀ n, (P12787189518200583408.a n : ℤ) = A156876 (n + 1)

end A156876

/-! ## A156876.P13341677090105498508

`∑[char[A000010(A156658(n+1))]]`
-/

namespace A156876.P13341677090105498508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A156658 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156876.P13341677090105498508

namespace A156876

/-- `∑[char[A000010(A156658(n+1))]]` -/
def P13341677090105498508.Spec : Prop :=
  ∀ n, (P13341677090105498508.a n : ℤ) = A156876 (n + 1)

end A156876

/-! ## A156876.P7020912592079701726

`∑[A010051(n+1)]-A156878(n+1)`
-/

namespace A156876.P7020912592079701726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A156878 (n + 1)

end

end A156876.P7020912592079701726

namespace A156876

/-- `∑[A010051(n+1)]-A156878(n+1)` -/
def P7020912592079701726.Spec : Prop :=
  ∀ n, P7020912592079701726.a n = A156876 (n + 1)

end A156876

/-! ## A156876.P3614611450342626584

`∑[or(A156659(n+1), A156660(n+1))]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A156876

/-- `∑[or(A156659(n+1), A156660(n+1))]` -/
def P3614611450342626584.Spec : Prop :=
  ∀ n, P3614611450342626584.a n = A156876 (n + 1)

theorem P3614611450342626584.correct : P3614611450342626584.Spec := by
  intro n
  simp only [A156876, Nat.add_sub_cancel]

end A156876

/-! ## A156876.P8135542334698086949

`A230980(n+1)-A156878(n+1)`
-/

namespace A156876.P8135542334698086949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (n + 1) - A156878 (n + 1)

end

end A156876.P8135542334698086949

namespace A156876

/-- `A230980(n+1)-A156878(n+1)` -/
def P8135542334698086949.Spec : Prop :=
  ∀ n, P8135542334698086949.a n = A156876 (n + 1)

end A156876

/-!
# A156877: Number of primes <= n that are safe primes and also Sophie Germain primes.

The programs for A156877, the canonical program `A156877.P7902119984331590274` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156877 has offset 1).

The definition of A156877 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156874, A156875, A156876, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A156877.P7902119984331590274

`A156874(n+1)+A156875(n+1)-A156876(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A156877

/-- `A156874(n+1)+A156875(n+1)-A156876(n+1)` -/
def P7902119984331590274.Spec : Prop :=
  ∀ n, P7902119984331590274.a n = A156877 (n + 1)

theorem P7902119984331590274.correct : P7902119984331590274.Spec := by
  intro n
  simp only [A156877, Nat.add_sub_cancel]

end A156877

/-! ## A156877.P334667700147169904

`∑[char[A059455(n+1)-1]]`
-/

namespace A156877.P334667700147169904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059455 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156877.P334667700147169904

namespace A156877

/-- `∑[char[A059455(n+1)-1]]` -/
def P334667700147169904.Spec : Prop :=
  ∀ n, (P334667700147169904.a n : ℤ) = A156877 (n + 1)

end A156877

/-! ## A156877.P6002152631819176567

`∑[char[2*A007700(n+1)]]`
-/

namespace A156877.P6002152631819176567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007700 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156877.P6002152631819176567

namespace A156877

/-- `∑[char[2*A007700(n+1)]]` -/
def P6002152631819176567.Spec : Prop :=
  ∀ n, (P6002152631819176567.a n : ℤ) = A156877 (n + 1)

end A156877

/-! ## A156877.P3675311004534781581

`∑[char[A004277(A007700(n+1))]]`
-/

namespace A156877.P3675311004534781581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A007700 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156877.P3675311004534781581

namespace A156877

/-- `∑[char[A004277(A007700(n+1))]]` -/
def P3675311004534781581.Spec : Prop :=
  ∀ n, (P3675311004534781581.a n : ℤ) = A156877 (n + 1)

end A156877

/-! ## A156877.P2165399188901469610

`∑[char[A000010(A059455(n+1))]]`
-/

namespace A156877.P2165399188901469610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A059455 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156877.P2165399188901469610

namespace A156877

/-- `∑[char[A000010(A059455(n+1))]]` -/
def P2165399188901469610.Spec : Prop :=
  ∀ n, (P2165399188901469610.a n : ℤ) = A156877 (n + 1)

end A156877

/-! ## A156877.P16618023999114137638

`∑[A156659(n+1)*A156660(n+1)]`
-/

namespace A156877.P16618023999114137638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156659 (n + 1) * A156660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156877.P16618023999114137638

namespace A156877

/-- `∑[A156659(n+1)*A156660(n+1)]` -/
def P16618023999114137638.Spec : Prop :=
  ∀ n, P16618023999114137638.a n = A156877 (n + 1)

end A156877

/-! ## A156877.P7666435936209487922

`∑[A156659(A156659(n+1)+2*(n+1))]`
-/

namespace A156877.P7666435936209487922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156659 (A156659 (n + 1) + (2 * (n + 1) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156877.P7666435936209487922

namespace A156877

/-- `∑[A156659(A156659(n+1)+2*(n+1))]` -/
def P7666435936209487922.Spec : Prop :=
  ∀ n, P7666435936209487922.a n = A156877 (n + 1)

end A156877

/-! ## A156877.P7257266483061796367

`∑[A156659(∑{d}[n+1, A156659(#)+n+1])]`
-/

namespace A156877.P7257266483061796367
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156659 (∑ d ∈ Nat.divisors (f2 n), (A156659 d + (n + 1 : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156877.P7257266483061796367

namespace A156877

/-- `∑[A156659(∑{d}[n+1, A156659(#)+n+1])]` -/
def P7257266483061796367.Spec : Prop :=
  ∀ n, P7257266483061796367.a n = A156877 (n + 1)

end A156877

/-! ## A156877.P681565178683671131

`∑[A000007(A339471(n+1))]`
-/

namespace A156877.P681565178683671131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A339471 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156877.P681565178683671131

namespace A156877

/-- `∑[A000007(A339471(n+1))]` -/
def P681565178683671131.Spec : Prop :=
  ∀ n, P681565178683671131.a n = A156877 (n + 1)

end A156877

/-! ## A156877.P18356865892261332974

`∑[and((n+1)%2, A061020(A138924(n+1)))]`
-/

namespace A156877.P18356865892261332974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((n + 1) % 2 : ℕ) : ℤ) (A061020 (A138924 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156877.P18356865892261332974

namespace A156877

/-- `∑[and((n+1)%2, A061020(A138924(n+1)))]` -/
def P18356865892261332974.Spec : Prop :=
  ∀ n, P18356865892261332974.a n = A156877 (n + 1)

end A156877

/-!
# A156878: Number of primes <= n that are neither safe primes and nor Sophie Germain primes.

The programs for A156878, the canonical program `A156878.P8707209131953386678` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156878 has offset 1).

The definition of A156878 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156876, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A156878.P8707209131953386678

`A000720(n+1)-A156876(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A156878

/-- `A000720(n+1)-A156876(n+1)` -/
def P8707209131953386678.Spec : Prop :=
  ∀ n, P8707209131953386678.a n = A156878 (n + 1)

theorem P8707209131953386678.correct : P8707209131953386678.Spec := by
  intro n
  simp only [A156878, Nat.add_sub_cancel]

end A156878

/-! ## A156878.P5199849255871834924

`∑[char[A059500(n+1)-1]]`
-/

namespace A156878.P5199849255871834924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059500 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156878.P5199849255871834924

namespace A156878

/-- `∑[char[A059500(n+1)-1]]` -/
def P5199849255871834924.Spec : Prop :=
  ∀ n, (P5199849255871834924.a n : ℤ) = A156878 (n + 1)

end A156878

/-! ## A156878.P15638402845296802974

`∑[char[A000010(A059500(n+1))]]`
-/

namespace A156878.P15638402845296802974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A059500 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156878.P15638402845296802974

namespace A156878

/-- `∑[char[A000010(A059500(n+1))]]` -/
def P15638402845296802974.Spec : Prop :=
  ∀ n, (P15638402845296802974.a n : ℤ) = A156878 (n + 1)

end A156878

/-! ## A156878.P5828221937227371482

`∑[A010051(n+1)]-A156876(n+1)`
-/

namespace A156878.P5828221937227371482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A156876 (n + 1)

end

end A156878.P5828221937227371482

namespace A156878

/-- `∑[A010051(n+1)]-A156876(n+1)` -/
def P5828221937227371482.Spec : Prop :=
  ∀ n, P5828221937227371482.a n = A156878 (n + 1)

end A156878

/-! ## A156878.P13291605283097259437

`∑[char[A000040(n+1)-1]]-A156876(n+1)`
-/

namespace A156878.P13291605283097259437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A156876 (n + 1)

end

end A156878.P13291605283097259437

namespace A156878

/-- `∑[char[A000040(n+1)-1]]-A156876(n+1)` -/
def P13291605283097259437.Spec : Prop :=
  ∀ n, P13291605283097259437.a n = A156878 (n + 1)

end A156878

/-! ## A156878.P3926578965978780012

`∑[1-char[A018252(n+1)-1]]-A156876(n+1)`
-/

namespace A156878.P3926578965978780012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A156876 (n + 1)

end

end A156878.P3926578965978780012

namespace A156878

/-- `∑[1-char[A018252(n+1)-1]]-A156876(n+1)` -/
def P3926578965978780012.Spec : Prop :=
  ∀ n, P3926578965978780012.a n = A156878 (n + 1)

end A156878

/-! ## A156878.P15416661843269864699

`A230980(n+1)-A156876(n+1)`
-/

namespace A156878.P15416661843269864699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (n + 1) - A156876 (n + 1)

end

end A156878.P15416661843269864699

namespace A156878

/-- `A230980(n+1)-A156876(n+1)` -/
def P15416661843269864699.Spec : Prop :=
  ∀ n, P15416661843269864699.a n = A156878 (n + 1)

end A156878

/-! ## A156878.P14005611583730490637

`∑[A010051(A089725(n+1)+A089026(n+1))]`
-/

namespace A156878.P14005611583730490637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A089725 (n + 1) + A089026 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156878.P14005611583730490637

namespace A156878

/-- `∑[A010051(A089725(n+1)+A089026(n+1))]` -/
def P14005611583730490637.Spec : Prop :=
  ∀ n, P14005611583730490637.a n = A156878 (n + 1)

end A156878

/-!
# A156881: Square array T(n, k) = Product_{j=1..n} ( Sum_{i=0..j-1} ((k+1)^2 - (k+1))^i ) with T(n, 0) = n!, read by antidiagonals.

The programs for A156881, there is no canonical definition to state claims against.
-/

/-! ## A156881.P7506391335264979950

`A008279(n)-A000120(A221351(n+1))`
-/

namespace A156881.P7506391335264979950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n - A000120 (A221351 (n + 1)).toNat

end

end A156881.P7506391335264979950

/-! ## A156881.P4962901012559338513

`or(A138110(A113711(n)), A156540(n))`
-/

namespace A156881.P4962901012559338513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A138110 (A113711 n).toNat) (A156540 n)

end

end A156881.P4962901012559338513

/-!
# A156883: Square array T(n, k) = Product_{j=1..n} ( Sum_{i=0..j-1} ((k+1)^4 - (k+1)^3)^i ) with T(n, 0) = n!, read by antidiagonals.

The programs for A156883, there is no canonical definition to state claims against.
-/

/-! ## A156883.P17425800104358257957

`A085181(A156882(n))`
-/

namespace A156883.P17425800104358257957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085181 (A156882 n).toNat

end

end A156883.P17425800104358257957

/-! ## A156883.P4391413556386477067

`A261423(A111528(n)^A070914(n))`
-/

namespace A156883.P4391413556386477067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 (SequenceMachineLib.roundAway ((A111528 n : ℚ) ^ (A070914 n : ℤ))).toNat

end

end A156883.P4391413556386477067

/-! ## A156883.P13565322519063276256

`A261423(A156540(n)^A070914(n))`
-/

namespace A156883.P13565322519063276256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 (SequenceMachineLib.roundAway ((A156540 n : ℚ) ^ (A070914 n : ℤ))).toNat

end

end A156883.P13565322519063276256

/-! ## A156883.P13439017803189232842

`A327189(C(A211608(n), A268441(n)))`
-/

namespace A156883.P13439017803189232842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327189 (Nat.choose (A211608 n).toNat (A268441 n).toNat)

end

end A156883.P13439017803189232842

/-! ## A156883.P16795968599203278246

`A220658(A002260(n+1)^A081576(n))`
-/

namespace A156883.P16795968599203278246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (SequenceMachineLib.roundAway ((A002260 (n + 1) : ℚ) ^ (A081576 n : ℤ))).toNat

end

end A156883.P16795968599203278246

/-!
# A156885: Square array T(n, k) = Product_{j=1..n} ( Sum_{i=0..j-1} ((k+1)^5 - (k+1)^4 - (k+1)^3 + (k+1)^2)^i ) with T(n, 0) = n!, read by antidiagonals.

The programs for A156885, there is no canonical definition to state claims against.
-/

/-! ## A156885.P17692871597523956857

`A156888(n)%A156997(A156882(n))`
-/

namespace A156885.P17692871597523956857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156888 n) (A156997 (A156882 n).toNat)

end

end A156885.P17692871597523956857

/-!
# A156886: a(n) = Sum_{k=0..n} C(n,k) * C(3*n+k,k).

The programs for A156886, there is no canonical definition to state claims against.
-/

/-! ## A156886.P15516361846146615577

`A106195(A139277(n))`
-/

namespace A156886.P15516361846146615577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106195 (A139277 n).toNat

end

end A156886.P15516361846146615577

/-! ## A156886.P11543363574995664339

`A208341(A139276(n))`
-/

namespace A156886.P11543363574995664339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 (A139276 n).toNat

end

end A156886.P11543363574995664339

/-! ## A156886.P18311973140365528326

`A208341(A033585(n)+n)`
-/

namespace A156886.P18311973140365528326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 (A033585 n + (n : ℤ)).toNat

end

end A156886.P18311973140365528326

/-! ## A156886.P15585671249131702087

`A106195(A139276(n)+2*n)`
-/

namespace A156886.P15585671249131702087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106195 (A139276 n + (2 * n : ℤ)).toNat

end

end A156886.P15585671249131702087

/-! ## A156886.P8739895730048038715

`A208341(A139277(n)-2*n)`
-/

namespace A156886.P8739895730048038715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 (A139277 n - (2 * n : ℤ)).toNat

end

end A156886.P8739895730048038715

/-!
# A156887: a(n) = Sum_{k=0..n} C(n,k) * C(4*n+k,k).

The programs for A156887, there is no canonical definition to state claims against.
-/

/-! ## A156887.P15715112835471460607

`A208341(A144312(n)+n)`
-/

namespace A156887.P15715112835471460607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 (A144312 n + (n : ℤ)).toNat

end

end A156887.P15715112835471460607

/-! ## A156887.P1770780045551159625

`A106195(A144312(n)+4*n)`
-/

namespace A156887.P1770780045551159625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106195 (A144312 n + (4 * n : ℤ)).toNat

end

end A156887.P1770780045551159625

/-! ## A156887.P3852809966446781502

`A106195(A139276(n)+A062728(n))`
-/

namespace A156887.P3852809966446781502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106195 (A139276 n + A062728 n).toNat

end

end A156887.P3852809966446781502

/-! ## A156887.P11982353704585356052

`A106195(A139277(n)+A081266(n))`
-/

namespace A156887.P11982353704585356052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106195 (A139277 n + A081266 n).toNat

end

end A156887.P11982353704585356052

/-! ## A156887.P6468637278049177435

`A049600(A014641(n)+A000124(n))`
-/

namespace A156887.P6468637278049177435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (A014641 n + A000124 n).toNat

end

end A156887.P6468637278049177435

/-!
# A156888: Square array T(n, k) = Product_{j=1..n} ( Sum_{i=0..j-1} ( (k+1)^7 - Sum_{m=1..5} (k+1)^m )^i ) with T(n, 0) = n!, read by antidiagonals.

The programs for A156888, there is no canonical definition to state claims against.
-/

/-! ## A156888.P15576530128120959584

`A141020(abs(C(n, abs(5-n))-n))`
-/

namespace A156888.P15576530128120959584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141020 |((Nat.choose n |5 - (n : ℤ)|.toNat : ℤ) - (n : ℤ))|.toNat

end

end A156888.P15576530128120959584

/-! ## A156888.P3120725450589600714

`A141021(A086246(n))`
-/

namespace A156888.P3120725450589600714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141021 (A086246 n).toNat

end

end A156888.P3120725450589600714

/-! ## A156888.P7940199953319322890

`A098885(A178964(n))`
-/

namespace A156888.P7940199953319322890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098885 (A178964 n).toNat

end

end A156888.P7940199953319322890

/-! ## A156888.P11339901666328230225

`A141020(A163089(n))`
-/

namespace A156888.P11339901666328230225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141020 (A163089 n).toNat

end

end A156888.P11339901666328230225

/-! ## A156888.P7458323849693336343

`A141021(A168049(n))`
-/

namespace A156888.P7458323849693336343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141021 (A168049 n).toNat

end

end A156888.P7458323849693336343

/-!
# A156892: Denominator of Euler(n, 1/23).

The programs for A156892, there is no canonical definition to state claims against.
-/

/-! ## A156892.P16140599016971973645

`2^val(n+1, 2)*23^n`
-/

namespace A156892.P16140599016971973645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2 * 23 ^ n

end

end A156892.P16140599016971973645

/-! ## A156892.P12637304392595325290

`23^n*(xor(n, n+1)+1)/2`
-/

namespace A156892.P12637304392595325290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (23 ^ n : ℚ) * ((Nat.xor n (n + 1) + 1 : ℚ) / 2)

end

end A156892.P12637304392595325290

/-! ## A156892.P12710586208824195101

`23^n*gcd(xor(n, n+1)+1, n+1)`
-/

namespace A156892.P12710586208824195101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23 ^ n * Nat.gcd (Nat.xor n (n + 1) + 1) (n + 1)

end

end A156892.P12710586208824195101

/-! ## A156892.P5031055172037929828

`23^n*A006519(n+1)`
-/

namespace A156892.P5031055172037929828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (23 ^ n : ℤ) * A006519 (n + 1)

end

end A156892.P5031055172037929828

/-! ## A156892.P9380482393400188183

`A006519(n+1)*A009967(n)`
-/

namespace A156892.P9380482393400188183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A009967 n

end

end A156892.P9380482393400188183

/-! ## A156892.P15604497997837179118

`A006519(n+1)*A017973(2*n)`
-/

namespace A156892.P15604497997837179118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A017973 (2 * n)

end

end A156892.P15604497997837179118

/-! ## A156892.P13407910472072887389

`A171977(n+1)/2*A009967(n)`
-/

namespace A156892.P13407910472072887389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171977 (n + 1) : ℚ) / 2 * (A009967 n : ℚ)

end

end A156892.P13407910472072887389

/-! ## A156892.P1229038114241946863

`A000010(A171977(n+1))*A009967(n)`
-/

namespace A156892.P1229038114241946863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A171977 (n + 1)).toNat * A009967 n

end

end A156892.P1229038114241946863

/-! ## A156892.P7746013186154504551

`lcm(A006519(A000027(n+1)), A009967(n))`
-/

namespace A156892.P7746013186154504551
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006519 (A000027 (n + 1)).toNat) (A009967 n)

end

end A156892.P7746013186154504551

/-! ## A156892.P14092545938123941843

`(n+1)*23^n/A000265(n+1)`
-/

namespace A156892.P14092545938123941843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * 23 ^ n : ℚ) / (A000265 (n + 1) : ℚ)

end

end A156892.P14092545938123941843

/-!
# A156893: Primes of the form 1 + 2 * Product_{i=1..k} (2^i-1).

The programs for A156893, there is no canonical definition to state claims against.
-/

/-! ## A156893.P10628892988279544308

`∏[A262882(2^(n+1))]+1`
-/

namespace A156893.P10628892988279544308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262882 (2 ^ (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A156893.P10628892988279544308

/-! ## A156893.P9439129363642431769

`A000010(a(n-1))*∑[2^n]+1` with `a(0)=3`
-/

namespace A156893.P9439129363642431769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A000010 (a (n - 1)).toNat * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1

end

end A156893.P9439129363642431769

/-!
# A156894: a(n) = Sum_{k=0..n} binomial(n,k)*binomial(2*n+k-1,k).

The programs for A156894, there is no canonical definition to state claims against.
-/

/-! ## A156894.P11508337814892716898

`A112351(2*n²)`
-/

namespace A156894.P11508337814892716898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112351 (2 * n ^ 2)

end

end A156894.P11508337814892716898

/-! ## A156894.P11439253322441439238

`A208904(A001105(n)+A000007(n))`
-/

namespace A156894.P11439253322441439238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208904 (A001105 n + A000007 n).toNat

end

end A156894.P11439253322441439238

/-! ## A156894.P15999506495226637623

`A208341(A022266(n))`
-/

namespace A156894.P15999506495226637623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 (A022266 n).toNat

end

end A156894.P15999506495226637623

/-! ## A156894.P14664134089139472887

`A208341(A276819(n)-1)`
-/

namespace A156894.P14664134089139472887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 (A276819 n - 1).toNat

end

end A156894.P14664134089139472887

/-! ## A156894.P10817887071884445168

`A208341(A062741(n)+n)`
-/

namespace A156894.P10817887071884445168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 (A062741 n + (n : ℤ)).toNat

end

end A156894.P10817887071884445168

/-!
# A156895: Primes of the form 1 + Product_{j=0..k} (2^j + 1).

The programs for A156895, there is no canonical definition to state claims against.
-/

/-! ## A156895.P6130513285202776756

`∏[(2^n+1)^ceil(tanh(2^n))]+1`
-/

namespace A156895.P6130513285202776756
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n + 1 : ℚ) ^ (⌈Real.tanh (2 ^ n : ℝ)⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A156895.P6130513285202776756

/-! ## A156895.P6840547698621056913

`∏[record[A131470(n+1)]]+1`
-/

namespace A156895.P6840547698621056913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131470 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A156895.P6840547698621056913

/-! ## A156895.P15839483539333072837

`A028361(A065667(n+1))+1`
-/

namespace A156895.P15839483539333072837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028361 (A065667 (n + 1)).toNat + 1

end

end A156895.P15839483539333072837

/-!
# A156898: a(n) = the smallest squarefree integer >= the n-th prime power.

The programs for A156898, the canonical program `A156898.P15997122313686612473` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156898 has offset 1).

The definition of A156898 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1281 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156898.P15997122313686612473

`A067535(A000961(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A156898

/-- `A067535(A000961(n+1))` -/
def P15997122313686612473.Spec : Prop :=
  ∀ n, P15997122313686612473.a n = A156898 (n + 1)

theorem P15997122313686612473.correct : P15997122313686612473.Spec := by
  intro n
  simp only [A156898, Nat.add_sub_cancel]

end A156898

/-! ## A156898.P11148604512170297495

`A067535(sqrt(A056798(n+1)))`
-/

namespace A156898.P11148604512170297495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067535 (SequenceMachineLib.roundAway (Real.sqrt (A056798 (n + 1) : ℝ))).toNat

end

end A156898.P11148604512170297495

namespace A156898

/-- `A067535(sqrt(A056798(n+1)))` -/
def P11148604512170297495.Spec : Prop :=
  ∀ n, P11148604512170297495.a n = A156898 (n + 1)

end A156898

/-! ## A156898.P9238786712455468964

`A067535(record[A028233(n+1)])`
-/

namespace A156898.P9238786712455468964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067535 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A156898.P9238786712455468964

namespace A156898

/-- `A067535(record[A028233(n+1)])` -/
def P9238786712455468964.Spec : Prop :=
  ∀ n, P9238786712455468964.a n = A156898 (n + 1)

end A156898

/-! ## A156898.P16969167765560008741

`A067535(A181062(n+1)+1)`
-/

namespace A156898.P16969167765560008741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067535 (A181062 (n + 1) + 1).toNat

end

end A156898.P16969167765560008741

namespace A156898

/-- `A067535(A181062(n+1)+1)` -/
def P16969167765560008741.Spec : Prop :=
  ∀ n, P16969167765560008741.a n = A156898 (n + 1)

end A156898

/-! ## A156898.P9611104087996207877

`A067535(record[n/a(A001221(n))]/2)` with `a(0)=2`
-/

namespace A156898.P9611104087996207877
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  (n : ℚ) / f1 (A001221 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067535 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) / 2)).toNat

end

end A156898.P9611104087996207877

namespace A156898

/-- `A067535(record[n/a(A001221(n))]/2)` -/
def P9611104087996207877.Spec : Prop :=
  ∀ n, P9611104087996207877.a n = A156898 (n + 1)

end A156898

/-! ## A156898.P11038544852239428591

`A067535(eq[A001222(n+1)+1, A000005(n+1)]+1)`
-/

namespace A156898.P11038544852239428591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067535 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A156898.P11038544852239428591

namespace A156898

/-- `A067535(eq[A001222(n+1)+1, A000005(n+1)]+1)` -/
def P11038544852239428591.Spec : Prop :=
  ∀ n, P11038544852239428591.a n = A156898 (n + 1)

end A156898

/-!
# A156899: a(n) = the largest prime power <= the n-th positive squarefree integer.

The programs for A156899, the canonical program `A156899.P6336677626184661476` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156899 has offset 1).

The definition of A156899 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6083 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156899.P6336677626184661476

`A031218(record[∏{p}[n, #]])`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A156899

/-- `A031218(record[∏{p}[n, #]])` -/
def P6336677626184661476.Spec : Prop :=
  ∀ n, P6336677626184661476.a n = A156899 (n + 1)

theorem P6336677626184661476.correct : P6336677626184661476.Spec := by
  intro n
  simp only [A156899, Nat.add_sub_cancel]

end A156899

/-! ## A156899.P8514090576168601346

`A031218(A005117(n+1))`
-/

namespace A156899.P8514090576168601346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031218 (A005117 (n + 1)).toNat

end

end A156899.P8514090576168601346

namespace A156899

/-- `A031218(A005117(n+1))` -/
def P8514090576168601346.Spec : Prop :=
  ∀ n, P8514090576168601346.a n = A156899 (n + 1)

end A156899

/-! ## A156899.P13018545501002839557

`A031218(record[A007947(n+1)])`
-/

namespace A156899.P13018545501002839557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031218 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A156899.P13018545501002839557

namespace A156899

/-- `A031218(record[A007947(n+1)])` -/
def P13018545501002839557.Spec : Prop :=
  ∀ n, P13018545501002839557.a n = A156899 (n + 1)

end A156899

/-! ## A156899.P1389799006497900219

`A031218(record[A015053(n+1)])`
-/

namespace A156899.P1389799006497900219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031218 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A156899.P1389799006497900219

namespace A156899

/-- `A031218(record[A015053(n+1)])` -/
def P1389799006497900219.Spec : Prop :=
  ∀ n, P1389799006497900219.a n = A156899 (n + 1)

end A156899

/-! ## A156899.P17315097549810132514

`A031218(record[A071975(n+1)])`
-/

namespace A156899.P17315097549810132514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031218 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A156899.P17315097549810132514

namespace A156899

/-- `A031218(record[A071975(n+1)])` -/
def P17315097549810132514.Spec : Prop :=
  ∀ n, P17315097549810132514.a n = A156899 (n + 1)

end A156899

/-! ## A156899.P5454975973111326550

`A136623(A000015(record[∏{p}[n, #]+1]))`
-/

namespace A156899.P5454975973111326550
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136623 (A000015 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A156899.P5454975973111326550

namespace A156899

/-- `A136623(A000015(record[∏{p}[n, #]+1]))` -/
def P5454975973111326550.Spec : Prop :=
  ∀ n, P5454975973111326550.a n = A156899 (n + 1)

end A156899

