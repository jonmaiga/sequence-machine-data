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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A072800: Composition of A030101 and A014486. Binary encodings of parenthesizations, Dyck paths and other Catalan structures reversed.

The programs for A072800, there is no canonical definition to state claims against.
-/

/-! ## A072800.P179074325930397217

`A030101(A014486(n))`
-/

namespace A072800.P179074325930397217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A014486 n).toNat

end

end A072800.P179074325930397217

/-! ## A072800.P14643025026617351241

`A030101(A057520(n))`
-/

namespace A072800.P14643025026617351241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A057520 n).toNat

end

end A072800.P14643025026617351241

/-! ## A072800.P9666880405455635901

`A325401(2*A057520(n))`
-/

namespace A072800.P9666880405455635901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A057520 n).toNat

end

end A072800.P9666880405455635901

/-! ## A072800.P4390859324704187217

`A325401(A014486(n)/2)`
-/

namespace A072800.P4390859324704187217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((A014486 n : ℚ) / 2)).toNat

end

end A072800.P4390859324704187217

/-! ## A072800.P8569506219880020944

`A325401(lcm(2, A057520(n)))`
-/

namespace A072800.P8569506219880020944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lcm 2 (A057520 n))

end

end A072800.P8569506219880020944

/-! ## A072800.P17563471191157281442

`or(A011746(n+3), A325401(A014486(n)))`
-/

namespace A072800.P17563471191157281442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011746 (n + 3)) (A325401 (A014486 n).toNat)

end

end A072800.P17563471191157281442

/-! ## A072800.P9466963865535065390

`or(A285034(2*n+5), A325401(A014486(n)))`
-/

namespace A072800.P9466963865535065390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A285034 (2 * n + 5)) (A325401 (A014486 n).toNat)

end

end A072800.P9466963865535065390

/-! ## A072800.P13455325652498688041

`A030101(A194045(n))`
-/

namespace A072800.P13455325652498688041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A194045 n).toNat

end

end A072800.P13455325652498688041

/-! ## A072800.P13264294222508442943

`A105104(2*A014486(n))`
-/

namespace A072800.P13264294222508442943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105104 (2 * A014486 n).toNat

end

end A072800.P13264294222508442943

/-! ## A072800.P3976421301501147615

`A030109(A057547(n)/2)`
-/

namespace A072800.P3976421301501147615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (SequenceMachineLib.roundAway ((A057547 n : ℚ) / 2)).toNat

end

end A072800.P3976421301501147615

/-! ## A072800.P17631340489436121209

`A030101(∑[A085192(n)]-A085192(n))`
-/

namespace A072800.P17631340489436121209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (∑ j ∈ Finset.range (n + 1), f1 j - A085192 n).toNat

end

end A072800.P17631340489436121209

/-! ## A072800.P2222405349683842252

`2*A014486(n)-A055945(2*A014486(n))`
-/

namespace A072800.P2222405349683842252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014486 n - A055945 (2 * A014486 n).toNat

end

end A072800.P2222405349683842252

/-!
# A072805: Primes of form 4k+3 written in base 3.

The programs for A072805, the canonical program `A072805.P2012198324060395438` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072805 has offset 1).

The definition of A072805 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5015 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072805.P2012198324060395438

`A001363(A080148(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A072805

/-- `A001363(A080148(n+1))` -/
def P2012198324060395438.Spec : Prop :=
  ∀ n, P2012198324060395438.a n = A072805 (n + 1)

theorem P2012198324060395438.correct : P2012198324060395438.Spec := by
  intro n
  simp only [A072805, Nat.add_sub_cancel]

end A072805

/-! ## A072805.P9447271263602418369

`A007089(p?[4*n-1])`
-/

namespace A072805.P9447271263602418369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A072805.P9447271263602418369

namespace A072805

/-- `A007089(p?[4*n-1])` -/
def P9447271263602418369.Spec : Prop :=
  ∀ n, P9447271263602418369.a n = A072805 (n + 1)

end A072805

/-! ## A072805.P2797926672880656541

`A007089(A002145(n+1))`
-/

namespace A072805.P2797926672880656541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A002145 (n + 1)).toNat

end

end A072805.P2797926672880656541

namespace A072805

/-- `A007089(A002145(n+1))` -/
def P2797926672880656541.Spec : Prop :=
  ∀ n, P2797926672880656541.a n = A072805 (n + 1)

end A072805

/-! ## A072805.P4433497485889814907

`A007089(A045326(n+2))`
-/

namespace A072805.P4433497485889814907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A045326 (n + 2)).toNat

end

end A072805.P4433497485889814907

namespace A072805

/-- `A007089(A045326(n+2))` -/
def P4433497485889814907.Spec : Prop :=
  ∀ n, P4433497485889814907.a n = A072805 (n + 1)

end A072805

/-! ## A072805.P8275409473473295660

`A007089(record[A020639(or(3, n))])`
-/

namespace A072805.P8275409473473295660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.lor 3 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072805.P8275409473473295660

namespace A072805

/-- `A007089(record[A020639(or(3, n))])` -/
def P8275409473473295660.Spec : Prop :=
  ∀ n, P8275409473473295660.a n = A072805 (n + 1)

end A072805

/-! ## A072805.P7754571691587896426

`A007089(record[A006530(4*n+3)])`
-/

namespace A072805.P7754571691587896426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (4 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072805.P7754571691587896426

namespace A072805

/-- `A007089(record[A006530(4*n+3)])` -/
def P7754571691587896426.Spec : Prop :=
  ∀ n, P7754571691587896426.a n = A072805 (n + 1)

end A072805

/-! ## A072805.P4435178370009811386

`A007089(record[A020639(4*n+3)])`
-/

namespace A072805.P4435178370009811386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (4 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072805.P4435178370009811386

namespace A072805

/-- `A007089(record[A020639(4*n+3)])` -/
def P4435178370009811386.Spec : Prop :=
  ∀ n, P4435178370009811386.a n = A072805 (n + 1)

end A072805

/-! ## A072805.P6200799404584485023

`A007089(record[A014963(or(3, n+1))])`
-/

namespace A072805.P6200799404584485023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.lor 3 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072805.P6200799404584485023

namespace A072805

/-- `A007089(record[A014963(or(3, n+1))])` -/
def P6200799404584485023.Spec : Prop :=
  ∀ n, P6200799404584485023.a n = A072805 (n + 1)

end A072805

/-!
# A072806: Primes of the form 6k+5 written in base 5.

The programs for A072806, the canonical program `A072806.P3541746247059658521` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072806 has offset 1).

The definition of A072806 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007091, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A072806.P3541746247059658521

`A007091(A007528(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A072806

/-- `A007091(A007528(n+1))` -/
def P3541746247059658521.Spec : Prop :=
  ∀ n, P3541746247059658521.a n = A072806 (n + 1)

theorem P3541746247059658521.correct : P3541746247059658521.Spec := by
  intro n
  simp only [A072806, Nat.add_sub_cancel]

end A072806

/-! ## A072806.P10992336134748175745

`A004679(A091177(n+2))`
-/

namespace A072806.P10992336134748175745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004679 (A091177 (n + 2)).toNat

end

end A072806.P10992336134748175745

namespace A072806

/-- `A004679(A091177(n+2))` -/
def P10992336134748175745.Spec : Prop :=
  ∀ n, P10992336134748175745.a n = A072806 (n + 1)

end A072806

/-! ## A072806.P16583707500927894621

`A007091(p?[3*n+5])`
-/

namespace A072806.P16583707500927894621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A072806.P16583707500927894621

namespace A072806

/-- `A007091(p?[3*n+5])` -/
def P16583707500927894621.Spec : Prop :=
  ∀ n, P16583707500927894621.a n = A072806 (n + 1)

end A072806

/-! ## A072806.P7868839236526009512

`A007091(A003627(n+2))`
-/

namespace A072806.P7868839236526009512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A003627 (n + 2)).toNat

end

end A072806.P7868839236526009512

namespace A072806

/-- `A007091(A003627(n+2))` -/
def P7868839236526009512.Spec : Prop :=
  ∀ n, P7868839236526009512.a n = A072806 (n + 1)

end A072806

/-! ## A072806.P12518474475824688900

`A007091(A045410(n+2))`
-/

namespace A072806.P12518474475824688900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A045410 (n + 2)).toNat

end

end A072806.P12518474475824688900

namespace A072806

/-- `A007091(A045410(n+2))` -/
def P12518474475824688900.Spec : Prop :=
  ∀ n, P12518474475824688900.a n = A072806 (n + 1)

end A072806

/-! ## A072806.P13529896590356415785

`A007091(record[A051664(3*n+5)])`
-/

namespace A072806.P13529896590356415785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072806.P13529896590356415785

namespace A072806

/-- `A007091(record[A051664(3*n+5)])` -/
def P13529896590356415785.Spec : Prop :=
  ∀ n, P13529896590356415785.a n = A072806 (n + 1)

end A072806

/-!
# A072809: Abntu sequence (Bantu alphabetized): list the numbers which have no 2's in their decimal expansion, but sort the digits of each term into alphabetical order.

The programs for A072809, there is no canonical definition to state claims against.
-/

/-! ## A072809.P3293911504129351154

`A057846(record[A004177(n)])`
-/

namespace A072809.P3293911504129351154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057846 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072809.P3293911504129351154

/-! ## A072809.P8820407775352565351

`A057846(record[A004721(n)])`
-/

namespace A072809.P8820407775352565351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004721 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057846 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072809.P8820407775352565351

/-! ## A072809.P764769527298615247

`A057846(A052404(n+1))`
-/

namespace A072809.P764769527298615247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057846 (A052404 (n + 1)).toNat

end

end A072809.P764769527298615247

/-! ## A072809.P15912484253334321981

`A057846(eq[0, A316863(n)])`
-/

namespace A072809.P15912484253334321981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057846 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A072809.P15912484253334321981

/-! ## A072809.P6322581220948705388

`A057846(lt[A316863(n), 1])`
-/

namespace A072809.P6322581220948705388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057846 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A072809.P6322581220948705388

/-! ## A072809.P7369152615979857379

`A057846(eq[n, A004177(n)])`
-/

namespace A072809.P7369152615979857379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057846 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A072809.P7369152615979857379

/-! ## A072809.P768638545836313550

`A057846(record[A035044(n)])`
-/

namespace A072809.P768638545836313550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057846 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072809.P768638545836313550

/-! ## A072809.P16374437826041580911

`A057846(A035043(record[A035043(n)]))`
-/

namespace A072809.P16374437826041580911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057846 (A035043 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A072809.P16374437826041580911

/-!
# A072810: a(0)=1, a(n) = a(n-1) - Sum_{k=2..n} mu(k) * a(n-k), where mu(k) is the Moebius function of k.

The programs for A072810, there is no canonical definition to state claims against.
-/

/-! ## A072810.P18098393581749544016

`A167606(n)-A010893(A154983(n))`
-/

namespace A072810.P18098393581749544016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167606 n - A010893 ((A154983 n).toNat + 13)

end

end A072810.P18098393581749544016

/-! ## A072810.P6759932087268809213

`A167606(n)-A316864(A000957(n))`
-/

namespace A072810.P6759932087268809213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167606 n - A316864 (A000957 n).toNat

end

end A072810.P6759932087268809213

/-! ## A072810.P14405288523359739284

`A167606(n)-A332671(A265821(n))`
-/

namespace A072810.P14405288523359739284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167606 n - A332671 (A265821 n).toNat

end

end A072810.P14405288523359739284

/-! ## A072810.P13002381636383175856

`A167606(n)-A137269(A202988(n+1))`
-/

namespace A072810.P13002381636383175856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167606 n - A137269 (A202988 (n + 1)).toNat

end

end A072810.P13002381636383175856

/-! ## A072810.P9852428109918579124

`A167606(n)-A035147(A128165(n+4))`
-/

namespace A072810.P9852428109918579124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167606 n - A035147 (A128165 (n + 4)).toNat

end

end A072810.P9852428109918579124

/-!
# A072811: T(n,k) = multiplicity of the k-th partition of n in Mathematica order, defined to be the count of its permutations (compositions).

The programs for A072811, there is no canonical definition to state claims against.
-/

/-! ## A072811.P15410124636109745823

`A008480(A129129(n))`
-/

namespace A072811.P15410124636109745823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A129129 n).toNat

end

end A072811.P15410124636109745823

/-! ## A072811.P542936194149676281

`A168324(A129129(A000007(n)+n))`
-/

namespace A072811.P542936194149676281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168324 (A129129 (A000007 n + (n : ℤ)).toNat).toNat

end

end A072811.P542936194149676281

/-! ## A072811.P12275956772401049854

`A168324(A129129(n)+A010051(2*(n+1)))`
-/

namespace A072811.P12275956772401049854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168324 (A129129 n + A010051 (2 * (n + 1))).toNat

end

end A072811.P12275956772401049854

/-! ## A072811.P3242939463996389432

`abs(A133314(n)/A078760(n))`
-/

namespace A072811.P3242939463996389432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A133314 n : ℚ) / (A078760 n : ℚ)|

end

end A072811.P3242939463996389432

/-! ## A072811.P4928023763453364516

`sqrt((A133314(n)/A078760(n))^(2-A000007(n)))`
-/

namespace A072811.P4928023763453364516
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (((A133314 n : ℚ) / (A078760 n : ℚ)) ^ (2 - A000007 n : ℤ) : ℝ)

end

end A072811.P4928023763453364516

/-! ## A072811.P17476713026409836835

`A298941(31*A129129(n))`
-/

namespace A072811.P17476713026409836835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298941 (31 * A129129 n).toNat

end

end A072811.P17476713026409836835

/-! ## A072811.P3905803261490748225

`A298941(lcm(29, A129129(n)))`
-/

namespace A072811.P3905803261490748225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298941 (Int.lcm 29 (A129129 n))

end

end A072811.P3905803261490748225

/-!
# A072812: Take the binary number P = 1.01101010001... which has an 1 in each decimal position that is a prime (e.g. 2,3,5,7...) and convert this number to base 10.

The programs for A072812, there is no canonical definition to state claims against.
-/

/-! ## A072812.P2815758656558604022

`A051006(abs(1-n))`
-/

namespace A072812.P2815758656558604022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051006 |1 - (n : ℤ)|.toNat

end

end A072812.P2815758656558604022

/-! ## A072812.P12249531468394681790

`a(A000038(n))*A051006(n-1)` with `a(0)=1`
-/

namespace A072812.P12249531468394681790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A000038 n).toNat * A051006 (n - 1)

end

end A072812.P12249531468394681790

/-! ## A072812.P231077218460407245

`a(A056526(n)%2)*A051006(n-1)` with `a(0)=1`
-/

namespace A072812.P231077218460407245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (Int.tmod (A056526 n) 2).toNat * A051006 (n - 1)

end

end A072812.P231077218460407245

/-! ## A072812.P5430817632915409447

`a(floor(A159684(n+1)/2))*A051006(n-1)` with `a(0)=1`
-/

namespace A072812.P5430817632915409447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(A159684 (n + 1) : ℚ) / 2⌋.toNat * A051006 (n - 1)

end

end A072812.P5430817632915409447

/-! ## A072812.P14310269819707607303

`a(A221836(A020639(2*(n+1))))*A051006(n-1)` with `a(0)=1`
-/

namespace A072812.P14310269819707607303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A221836 (A020639 (2 * (n + 1))).toNat).toNat * A051006 (n - 1)

end

end A072812.P14310269819707607303

/-! ## A072812.P10454777872203542553

`a(A221836(A061142(n)))*A051006(n-1)` with `a(0)=1`
-/

namespace A072812.P10454777872203542553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A221836 (A061142 n).toNat).toNat * A051006 (n - 1)

end

end A072812.P10454777872203542553

/-! ## A072812.P11146272288713885994

`A051006(gcd(1-n, n-1))+A004275(A151878(n+4))`
-/

namespace A072812.P11146272288713885994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051006 (Int.gcd (1 - (n : ℤ)) ((n : ℤ) - 1)) + A004275 (A151878 (n + 4)).toNat

end

end A072812.P11146272288713885994

/-! ## A072812.P9603156711812350098

`a(A221836(A127739(n+1)))*A051006(n-1)` with `a(0)=1`
-/

namespace A072812.P9603156711812350098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A221836 (A127739 (n + 1)).toNat).toNat * A051006 (n - 1)

end

end A072812.P9603156711812350098

/-!
# A072813: a(n)^A072814(n) is the n-th perfect power.

The programs for A072813, there is no canonical definition to state claims against.
-/

/-! ## A072813.P8527181693956914959

`root(∑[A076412(n)], A072814(n+1))`
-/

namespace A072813.P8527181693956914959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) ^ (1 / (A072814 (n + 1) : ℝ))

end

end A072813.P8527181693956914959

/-! ## A072813.P7719279537547962628

`root(A001597(n+1), A072814(n+1))`
-/

namespace A072813.P7719279537547962628
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A001597 (n + 1) : ℝ) ^ (1 / (A072814 (n + 1) : ℝ))

end

end A072813.P7719279537547962628

/-! ## A072813.P9347844242402165909

`root(abs(A157985(n+1)), A072814(n+1))`
-/

namespace A072813.P9347844242402165909
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (|A157985 (n + 1)| : ℝ) ^ (1 / (A072814 (n + 1) : ℝ))

end

end A072813.P9347844242402165909

/-! ## A072813.P2264175744763261688

`floor(root(A045542(n+1), A072814(n+1)))`
-/

namespace A072813.P2264175744763261688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A045542 (n + 1) : ℝ) ^ (1 / (A072814 (n + 1) : ℝ))⌋

end

end A072813.P2264175744763261688

/-! ## A072813.P10466692597639694051

`A025478(n+1)^A032742(A025479(n+1))`
-/

namespace A072813.P10466692597639694051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025478 (n + 1) : ℚ) ^ (A032742 (A025479 (n + 1)).toNat : ℤ)

end

end A072813.P10466692597639694051

/-! ## A072813.P14673987279720505605

`A175781(∑[A076412(n)])`
-/

namespace A072813.P14673987279720505605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175781 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A072813.P14673987279720505605

/-! ## A072813.P5583057881781866791

`A175781(A001597(n+1))`
-/

namespace A072813.P5583057881781866791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175781 (A001597 (n + 1)).toNat

end

end A072813.P5583057881781866791

/-! ## A072813.P1995595535569432260

`A175781(abs(A157985(n+1)))`
-/

namespace A072813.P1995595535569432260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175781 |A157985 (n + 1)|.toNat

end

end A072813.P1995595535569432260

/-! ## A072813.P5054063498508141957

`A175781(sqrt(A340588(n+1)))`
-/

namespace A072813.P5054063498508141957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175781 (SequenceMachineLib.roundAway (Real.sqrt (A340588 (n + 1) : ℝ))).toNat

end

end A072813.P5054063498508141957

/-! ## A072813.P4964118946783420725

`A175781(root(A340588(n+1), 2))`
-/

namespace A072813.P4964118946783420725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175781 (SequenceMachineLib.roundAway ((A340588 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A072813.P4964118946783420725

/-!
# A072814: Smallest exponents of perfect powers: A001597(n)=A072813(n)^a(n).

The programs for A072814, there is no canonical definition to state claims against.
-/

/-! ## A072814.P4222867106716737252

`A020639(A025479(n+1))`
-/

namespace A072814.P4222867106716737252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A025479 (n + 1)).toNat

end

end A072814.P4222867106716737252

/-! ## A072814.P14063089154913683919

`A020639(abs(A157986(n+1)))`
-/

namespace A072814.P14063089154913683919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 |A157986 (n + 1)|.toNat

end

end A072814.P14063089154913683919

/-! ## A072814.P17660166420313443543

`A107286(A025479(n+1)²)`
-/

namespace A072814.P17660166420313443543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A025479 (n + 1) ^ 2).toNat

end

end A072814.P17660166420313443543

/-! ## A072814.P13646345499420625152

`A020639(A157986(n+1)²)`
-/

namespace A072814.P13646345499420625152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A157986 (n + 1) ^ 2).toNat

end

end A072814.P13646345499420625152

/-! ## A072814.P10253436768363409368

`A107286(A025479(n+1)^2)`
-/

namespace A072814.P10253436768363409368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A025479 (n + 1) ^ 2).toNat

end

end A072814.P10253436768363409368

/-! ## A072814.P9190864282187829894

`A028233(∏{p}[A025479(n+1), #])`
-/

namespace A072814.P9190864282187829894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A072814.P9190864282187829894

/-! ## A072814.P12704086400623975301

`A020639(∏{d}[A157986(n+1), A020639(#)])`
-/

namespace A072814.P12704086400623975301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ d ∈ Nat.divisors (f1 n).natAbs, A020639 d).toNat

end

end A072814.P12704086400623975301

/-! ## A072814.P4356953253913462743

`A020639(∏{d}[A157986(n+1), #])`
-/

namespace A072814.P4356953253913462743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A072814.P4356953253913462743

/-! ## A072814.P4934728025457606907

`A079879(A157986(n+1)²²)`
-/

namespace A072814.P4934728025457606907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079879 ((A157986 (n + 1) ^ 2) ^ 2).toNat

end

end A072814.P4934728025457606907

/-!
# A072815: Sum of proper divisors of 6n + 1.

The programs for A072815, the canonical program `A072815.P16142886840254368994` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072815 has offset 0).

The definition of A072815 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072815.P8633032763719139417

`A000203(6*n+1)-6*n-1`
-/

namespace A072815.P8633032763719139417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (6 * n + 1) - (6 * n : ℤ) - 1

end

end A072815.P8633032763719139417

namespace A072815

/-- `A000203(6*n+1)-6*n-1` -/
def P8633032763719139417.Spec : Prop :=
  ∀ n, P8633032763719139417.a n = A072815 n

end A072815

/-! ## A072815.P14886297964511352485

`A363031(n)-A016921(n)`
-/

namespace A072815.P14886297964511352485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363031 n - A016921 n

end

end A072815.P14886297964511352485

namespace A072815

/-- `A363031(n)-A016921(n)` -/
def P14886297964511352485.Spec : Prop :=
  ∀ n, P14886297964511352485.a n = A072815 n

end A072815

/-! ## A072815.P16142886840254368994

`A001065(A016921(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A072815

/-- `A001065(A016921(n))` -/
def P16142886840254368994.Spec : Prop :=
  ∀ n, P16142886840254368994.a n = A072815 n

theorem P16142886840254368994.correct : P16142886840254368994.Spec := by
  intro n
  simp only [A072815]

end A072815

/-! ## A072815.P9903395719623696377

`∑{d}[6*n+1, #]-(6*n+1)`
-/

namespace A072815.P9903395719623696377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (6 * n + 1 : ℤ)

end

end A072815.P9903395719623696377

namespace A072815

/-- `∑{d}[6*n+1, #]-(6*n+1)` -/
def P9903395719623696377.Spec : Prop :=
  ∀ n, P9903395719623696377.a n = A072815 n

end A072815

/-! ## A072815.P15707529650077682880

`A054024(6*n+1)`
-/

namespace A072815.P15707529650077682880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (6 * n + 1)

end

end A072815.P15707529650077682880

namespace A072815

/-- `A054024(6*n+1)` -/
def P15707529650077682880.Spec : Prop :=
  ∀ n, P15707529650077682880.a n = A072815 n

end A072815

/-! ## A072815.P4549971149012150824

`A058344(6*n+1)`
-/

namespace A072815.P4549971149012150824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058344 (6 * n + 1)

end

end A072815.P4549971149012150824

namespace A072815

/-- `A058344(6*n+1)` -/
def P4549971149012150824.Spec : Prop :=
  ∀ n, P4549971149012150824.a n = A072815 n

end A072815

/-! ## A072815.P2150848325434897899

`A296955(6*n+1)`
-/

namespace A072815.P2150848325434897899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296955 (6 * n + 1)

end

end A072815.P2150848325434897899

namespace A072815

/-- `A296955(6*n+1)` -/
def P2150848325434897899.Spec : Prop :=
  ∀ n, P2150848325434897899.a n = A072815 n

end A072815

/-! ## A072815.P16843467925299392630

`A008438(3*n)-(6*n+1)`
-/

namespace A072815.P16843467925299392630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008438 (3 * n) - (6 * n + 1 : ℤ)

end

end A072815.P16843467925299392630

namespace A072815

/-- `A008438(3*n)-(6*n+1)` -/
def P16843467925299392630.Spec : Prop :=
  ∀ n, P16843467925299392630.a n = A072815 n

end A072815

/-! ## A072815.P5713226898564493492

`A363031(n)-A016777(2*n)`
-/

namespace A072815.P5713226898564493492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363031 n - A016777 (2 * n)

end

end A072815.P5713226898564493492

namespace A072815

/-- `A363031(n)-A016777(2*n)` -/
def P5713226898564493492.Spec : Prop :=
  ∀ n, P5713226898564493492.a n = A072815 n

end A072815

/-! ## A072815.P8796284725175863342

`A144614(2*n)-A016777(2*n)`
-/

namespace A072815.P8796284725175863342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144614 (2 * n) - A016777 (2 * n)

end

end A072815.P8796284725175863342

namespace A072815

/-- `A144614(2*n)-A016777(2*n)` -/
def P8796284725175863342.Spec : Prop :=
  ∀ n, P8796284725175863342.a n = A072815 n

end A072815

/-! ## A072815.P8308979795264905243

`A363031(n)-A166138(2*n)`
-/

namespace A072815.P8308979795264905243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363031 n - A166138 (2 * n)

end

end A072815.P8308979795264905243

namespace A072815

/-- `A363031(n)-A166138(2*n)` -/
def P8308979795264905243.Spec : Prop :=
  ∀ n, P8308979795264905243.a n = A072815 n

end A072815

/-! ## A072815.P5195743694589431705

`A363031(n)-A067745(2*n+1)`
-/

namespace A072815.P5195743694589431705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363031 n - A067745 (2 * n + 1)

end

end A072815.P5195743694589431705

namespace A072815

/-- `A363031(n)-A067745(2*n+1)` -/
def P5195743694589431705.Spec : Prop :=
  ∀ n, P5195743694589431705.a n = A072815 n

end A072815

/-! ## A072815.P9193669453515355672

`A366442(2*n+1)-A007310(2*n+1)`
-/

namespace A072815.P9193669453515355672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366442 (2 * n + 1) - A007310 (2 * n + 1)

end

end A072815.P9193669453515355672

namespace A072815

/-- `A366442(2*n+1)-A007310(2*n+1)` -/
def P9193669453515355672.Spec : Prop :=
  ∀ n, P9193669453515355672.a n = A072815 n

end A072815

/-! ## A072815.P6902743847686778383

`A346877(3*n+1)`
-/

namespace A072815.P6902743847686778383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346877 (3 * n + 1)

end

end A072815.P6902743847686778383

namespace A072815

/-- `A346877(3*n+1)` -/
def P6902743847686778383.Spec : Prop :=
  ∀ n, P6902743847686778383.a n = A072815 n

end A072815

/-! ## A072815.P18055838387508825535

`A294886(6*n+1)`
-/

namespace A072815.P18055838387508825535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294886 (6 * n + 1)

end

end A072815.P18055838387508825535

namespace A072815

/-- `A294886(6*n+1)` -/
def P18055838387508825535.Spec : Prop :=
  ∀ n, P18055838387508825535.a n = A072815 n

end A072815

/-! ## A072815.P2822630698636144947

`A294888(4*n+2*n+1)`
-/

namespace A072815.P2822630698636144947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294888 (4 * n + (2 * n + 1))

end

end A072815.P2822630698636144947

namespace A072815

/-- `A294888(4*n+2*n+1)` -/
def P2822630698636144947.Spec : Prop :=
  ∀ n, P2822630698636144947.a n = A072815 n

end A072815

/-! ## A072815.P2562114680923147384

`A336851(A064216(2*n+1+n))`
-/

namespace A072815.P2562114680923147384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336851 (A064216 (2 * n + 1 + n)).toNat

end

end A072815.P2562114680923147384

namespace A072815

/-- `A336851(A064216(2*n+1+n))` -/
def P2562114680923147384.Spec : Prop :=
  ∀ n, P2562114680923147384.a n = A072815 n

end A072815

/-! ## A072815.P11849924968205421756

`A001065(6*n+1)`
-/

namespace A072815.P11849924968205421756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (6 * n + 1)

end

end A072815.P11849924968205421756

namespace A072815

/-- `A001065(6*n+1)` -/
def P11849924968205421756.Spec : Prop :=
  ∀ n, P11849924968205421756.a n = A072815 n

end A072815

/-! ## A072815.P8181375288929123209

`A091570(6*n+1)`
-/

namespace A072815.P8181375288929123209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091570 (6 * n + 1)

end

end A072815.P8181375288929123209

namespace A072815

/-- `A091570(6*n+1)` -/
def P8181375288929123209.Spec : Prop :=
  ∀ n, P8181375288929123209.a n = A072815 n

end A072815

/-! ## A072815.P2918034048988986852

`A215947(6*n+1)-(6*n+1)`
-/

namespace A072815.P2918034048988986852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215947 (6 * n + 1) - (6 * n + 1 : ℤ)

end

end A072815.P2918034048988986852

namespace A072815

/-- `A215947(6*n+1)-(6*n+1)` -/
def P2918034048988986852.Spec : Prop :=
  ∀ n, P2918034048988986852.a n = A072815 n

end A072815

/-!
# A072818: Expansion of g.f. 20*x/(1-98*x+x^2).

The programs for A072818, the canonical program `A072818.P14404029338960901765` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072818 has offset 0).

The definition of A072818 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(20x/(1-98x+x^2))` (program `A072818.P14404029338960901765`, by `A072818.P14404029338960901765.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A072818.P14404029338960901765

`ogf(20x/(1-98x+x^2))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072818

/-- `ogf(20x/(1-98x+x^2))` -/
def P14404029338960901765.Spec : Prop :=
  ∀ n, P14404029338960901765.a n = A072818 n

theorem P14404029338960901765.correct : P14404029338960901765.Spec := by
  intro n
  simp only [A072818]

end A072818

/-! ## A072818.P5713610893429086528

`98*a(n-1)-a(n-2)` with `a(0)=0, a(1)=20`
-/

namespace A072818.P5713610893429086528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 20] fun n a =>
  98 * a (n - 1) - a (n - 2)

end

end A072818.P5713610893429086528

namespace A072818

/-- `98*a(n-1)-a(n-2)` -/
def P5713610893429086528.Spec : Prop :=
  ∀ n, P5713610893429086528.a n = A072818 n

end A072818

/-! ## A072818.P18241053884140879009

`A001078(2*n)`
-/

namespace A072818.P18241053884140879009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001078 (2 * n)

end

end A072818.P18241053884140879009

namespace A072818

/-- `A001078(2*n)` -/
def P18241053884140879009.Spec : Prop :=
  ∀ n, P18241053884140879009.a n = A072818 n

end A072818

/-! ## A072818.P6975225364353639417

`2*A168520(n+1)`
-/

namespace A072818.P6975225364353639417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168520 (n + 1)

end

end A072818.P6975225364353639417

namespace A072818

/-- `2*A168520(n+1)` -/
def P6975225364353639417.Spec : Prop :=
  ∀ n, P6975225364353639417.a n = A072818 n

end A072818

/-! ## A072818.P7850061595964245388

`2*A004189(2*n)`
-/

namespace A072818.P7850061595964245388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004189 (2 * n)

end

end A072818.P7850061595964245388

namespace A072818

/-- `2*A004189(2*n)` -/
def P7850061595964245388.Spec : Prop :=
  ∀ n, P7850061595964245388.a n = A072818 n

end A072818

/-! ## A072818.P15203077883084532933

`A122652(2*n)/2`
-/

namespace A072818.P15203077883084532933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122652 (2 * n) : ℚ) / 2

end

end A072818.P15203077883084532933

namespace A072818

/-- `A122652(2*n)/2` -/
def P15203077883084532933.Spec : Prop :=
  ∀ n, P15203077883084532933.a n = (A072818 n : ℚ)

end A072818

/-! ## A072818.P3891202499275703155

`A122653(2*n)/3`
-/

namespace A072818.P3891202499275703155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122653 (2 * n) : ℚ) / 3

end

end A072818.P3891202499275703155

namespace A072818

/-- `A122653(2*n)/3` -/
def P3891202499275703155.Spec : Prop :=
  ∀ n, P3891202499275703155.a n = (A072818 n : ℚ)

end A072818

/-! ## A072818.P1081767622085787008

`A204519(A016933(n))`
-/

namespace A072818.P1081767622085787008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204519 (A016933 n).toNat

end

end A072818.P1081767622085787008

namespace A072818

/-- `A204519(A016933(n))` -/
def P1081767622085787008.Spec : Prop :=
  ∀ n, P1081767622085787008.a n = A072818 n

end A072818

/-! ## A072818.P7661233791265108800

`A204519(A004275(2*n+n+2))`
-/

namespace A072818.P7661233791265108800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204519 (A004275 (2 * n + (n + 2))).toNat

end

end A072818.P7661233791265108800

namespace A072818

/-- `A204519(A004275(2*n+n+2))` -/
def P7661233791265108800.Spec : Prop :=
  ∀ n, P7661233791265108800.a n = A072818 n

end A072818

/-! ## A072818.P13462618418867456323

`A054320(2*n)-A138288(2*n)`
-/

namespace A072818.P13462618418867456323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054320 (2 * n) - A138288 (2 * n)

end

end A072818.P13462618418867456323

namespace A072818

/-- `A054320(2*n)-A138288(2*n)` -/
def P13462618418867456323.Spec : Prop :=
  ∀ n, P13462618418867456323.a n = A072818 n

end A072818

/-!
# A072819: Variance of time for a random walk starting at 0 to reach one of the boundaries at +n or -n for the first time.

The programs for A072819, the canonical program `A072819.P14090172225751623983` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072819 has offset 0).

The definition of A072819 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072819.P18160460817427413045

`n²*(n²-1)*2/3`
-/

namespace A072819.P18160460817427413045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * ((n ^ 2 : ℤ) - 1) * 2 : ℚ) / 3

end

end A072819.P18160460817427413045

namespace A072819

/-- `n²*(n²-1)*2/3` -/
def P18160460817427413045.Spec : Prop :=
  ∀ n, P18160460817427413045.a n = (A072819 n : ℚ)

theorem P18160460817427413045.correct : P18160460817427413045.Spec := by
  intro n
  simp only [A072819, Nat.add_sub_cancel, A072819.P18160460817427413045.a, A072819.P14090172225751623983.a, A008911, A008911.P13273812959186450040.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A072819

/-! ## A072819.P14090172225751623983

`4*A008911(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A072819

/-- `4*A008911(n)` -/
def P14090172225751623983.Spec : Prop :=
  ∀ n, P14090172225751623983.a n = A072819 n

theorem P14090172225751623983.correct : P14090172225751623983.Spec := by
  intro n
  simp only [A072819]

end A072819

/-! ## A072819.P3904602101646452420

`8*A002415(n)`
-/

namespace A072819.P3904602101646452420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A002415 n

end

end A072819.P3904602101646452420

namespace A072819

/-- `8*A002415(n)` -/
def P3904602101646452420.Spec : Prop :=
  ∀ n, P3904602101646452420.a n = A072819 n

end A072819

/-! ## A072819.P3939795420802252603

`2*n*A007290(n+1)`
-/

namespace A072819.P3939795420802252603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A007290 (n + 1)

end

end A072819.P3939795420802252603

namespace A072819

/-- `2*n*A007290(n+1)` -/
def P3939795420802252603.Spec : Prop :=
  ∀ n, P3939795420802252603.a n = A072819 n

theorem P3939795420802252603.correct : P3939795420802252603.Spec := by
  intro n
  simp only [A072819, Nat.add_sub_cancel, A072819.P3939795420802252603.a, A072819.P14090172225751623983.a, A007290, A007290.P9295456119697579818.a, A008911, A008911.P13273812959186450040.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A072819

/-! ## A072819.P12801745444710929347

`4/3*C(n², 2)`
-/

namespace A072819.P12801745444710929347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (Nat.choose (n ^ 2) 2 : ℚ)

end

end A072819.P12801745444710929347

namespace A072819

/-- `4/3*C(n², 2)` -/
def P12801745444710929347.Spec : Prop :=
  ∀ n, P12801745444710929347.a n = (A072819 n : ℚ)

theorem P12801745444710929347.correct : P12801745444710929347.Spec := by
  intro n
  simp only [A072819, Nat.add_sub_cancel, A072819.P12801745444710929347.a, A072819.P14090172225751623983.a, A008911, A008911.P13273812959186450040.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A072819

/-! ## A072819.P15834518290869247921

`∑[2*C(2*n, 3)]`
-/

namespace A072819.P15834518290869247921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (2 * n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072819.P15834518290869247921

namespace A072819

/-- `∑[2*C(2*n, 3)]` -/
def P15834518290869247921.Spec : Prop :=
  ∀ n, (P15834518290869247921.a n : ℤ) = A072819 n

end A072819

/-! ## A072819.P16663314926237231850

`4*n*C(n+1, 3)`
-/

namespace A072819.P16663314926237231850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n * Nat.choose (n + 1) 3)

end

end A072819.P16663314926237231850

namespace A072819

/-- `4*n*C(n+1, 3)` -/
def P16663314926237231850.Spec : Prop :=
  ∀ n, (P16663314926237231850.a n : ℤ) = A072819 n

theorem P16663314926237231850.correct : P16663314926237231850.Spec := by
  intro n
  simp only [A072819, Nat.add_sub_cancel, A072819.P16663314926237231850.a, A072819.P14090172225751623983.a, A008911, A008911.P13273812959186450040.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A072819

/-! ## A072819.P14165111673529673486

`lcm(2, 2*n*∑[n²-n])`
-/

namespace A072819.P14165111673529673486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((2 * n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A072819.P14165111673529673486

namespace A072819

/-- `lcm(2, 2*n*∑[n²-n])` -/
def P14165111673529673486.Spec : Prop :=
  ∀ n, (P14165111673529673486.a n : ℤ) = A072819 n

end A072819

/-! ## A072819.P4191119065215890802

`floor(n*∑[∑[a(n-1)+4]])` with `a(0)=0, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A072819.P4191119065215890802
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A072819.P4191119065215890802

namespace A072819

/-- `floor(n*∑[∑[a(n-1)+4]])` -/
def P4191119065215890802.Spec : Prop :=
  ∀ n, (P4191119065215890802.a n : ℤ) = A072819 n

end A072819

/-! ## A072819.P14512964452881525366

`abs(4*∑[∑[∑[a(n-1)+4]]])` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A072819.P14512964452881525366
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2] fun n f3 =>
  f3 (n - 1) + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A072819.P14512964452881525366

namespace A072819

/-- `abs(4*∑[∑[∑[a(n-1)+4]]])` -/
def P14512964452881525366.Spec : Prop :=
  ∀ n, (P14512964452881525366.a n : ℤ) = A072819 n

end A072819

/-! ## A072819.P15459644685867208581

`2*A112742(n)`
-/

namespace A072819.P15459644685867208581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112742 n

end

end A072819.P15459644685867208581

namespace A072819

/-- `2*A112742(n)` -/
def P15459644685867208581.Spec : Prop :=
  ∀ n, P15459644685867208581.a n = A072819 n

end A072819

/-! ## A072819.P1758604404675421487

`A071270(n)-n²`
-/

namespace A072819.P1758604404675421487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071270 n - (n ^ 2 : ℤ)

end

end A072819.P1758604404675421487

namespace A072819

/-- `A071270(n)-n²` -/
def P1758604404675421487.Spec : Prop :=
  ∀ n, P1758604404675421487.a n = A072819 n

end A072819

/-! ## A072819.P173513935341539529

`4*(A329523(n)-n)`
-/

namespace A072819.P173513935341539529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A329523 n - (n : ℤ))

end

end A072819.P173513935341539529

namespace A072819

/-- `4*(A329523(n)-n)` -/
def P173513935341539529.Spec : Prop :=
  ∀ n, P173513935341539529.a n = A072819 n

theorem P173513935341539529.correct : P173513935341539529.Spec := by
  intro n
  simp only [A072819, Nat.add_sub_cancel, A072819.P173513935341539529.a, A072819.P14090172225751623983.a, A008911, A008911.P13273812959186450040.a, A329523, A329523.P18261458279944651738.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A072819

/-! ## A072819.P5864215928725239868

`n*(A005900(n)-n)`
-/

namespace A072819.P5864215928725239868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A005900 n - (n : ℤ))

end

end A072819.P5864215928725239868

namespace A072819

/-- `n*(A005900(n)-n)` -/
def P5864215928725239868.Spec : Prop :=
  ∀ n, P5864215928725239868.a n = A072819 n

end A072819

/-! ## A072819.P12398926944885647120

`A035598(n)-2*n²`
-/

namespace A072819.P12398926944885647120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035598 n - (2 * n ^ 2 : ℤ)

end

end A072819.P12398926944885647120

namespace A072819

/-- `A035598(n)-2*n²` -/
def P12398926944885647120.Spec : Prop :=
  ∀ n, P12398926944885647120.a n = A072819 n

end A072819

/-! ## A072819.P394778400825016736

`∑[A071230(n)-∑[n²]]`
-/

namespace A072819.P394778400825016736
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071230 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072819.P394778400825016736

namespace A072819

/-- `∑[A071230(n)-∑[n²]]` -/
def P394778400825016736.Spec : Prop :=
  ∀ n, P394778400825016736.a n = A072819 n

end A072819

/-! ## A072819.P9488584147751765906

`A330700(n)+A071245(n)`
-/

namespace A072819.P9488584147751765906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330700 n + A071245 n

end

end A072819.P9488584147751765906

namespace A072819

/-- `A330700(n)+A071245(n)` -/
def P9488584147751765906.Spec : Prop :=
  ∀ n, P9488584147751765906.a n = A072819 n

end A072819

/-! ## A072819.P3731851491020693072

`A002593(n)-A187756(n)`
-/

namespace A072819.P3731851491020693072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002593 n - A187756 n

end

end A072819.P3731851491020693072

namespace A072819

/-- `A002593(n)-A187756(n)` -/
def P3731851491020693072.Spec : Prop :=
  ∀ n, P3731851491020693072.a n = A072819 n

end A072819

/-! ## A072819.P3188038681769005193

`A187756(n)-A071270(n)`
-/

namespace A072819.P3188038681769005193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187756 n - A071270 n

end

end A072819.P3188038681769005193

namespace A072819

/-- `A187756(n)-A071270(n)` -/
def P3188038681769005193.Spec : Prop :=
  ∀ n, P3188038681769005193.a n = A072819 n

end A072819

/-! ## A072819.P602814858229583340

`A260810(n)-A008354(n)`
-/

namespace A072819.P602814858229583340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260810 n - A008354 n

end

end A072819.P602814858229583340

namespace A072819

/-- `A260810(n)-A008354(n)` -/
def P602814858229583340.Spec : Prop :=
  ∀ n, P602814858229583340.a n = A072819 n

end A072819

/-!
# A072820: Largest number of distinct primes to represent n as arithmetic mean.

The programs for A072820, there is no canonical definition to state claims against.
-/

/-! ## A072820.P15393550786396124000

`A184169(A325832(n))+∑[char[2*n]]`
-/

namespace A072820.P15393550786396124000
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184169 (A325832 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A072820.P15393550786396124000

/-! ## A072820.P6725708165870565124

`A302405(n)+A035263(A131405(n))`
-/

namespace A072820.P6725708165870565124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302405 n + A035263 (A131405 n).toNat

end

end A072820.P6725708165870565124

/-! ## A072820.P8135165186976092619

`A302405(n)+A010054(A005418(n+1))`
-/

namespace A072820.P8135165186976092619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302405 n + A010054 (A005418 (n + 1)).toNat

end

end A072820.P8135165186976092619

/-! ## A072820.P3878236654457961174

`A229803(n+1)+A087117(A074890(n))`
-/

namespace A072820.P3878236654457961174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229803 (n + 1) + A087117 (A074890 n).toNat

end

end A072820.P3878236654457961174

/-!
# A072822: The terms of A073215 (sums of two powers of 23) divided by 2.

The programs for A072822, the canonical program `A072822.P8522877601376784445` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072822 has offset 0).

The definition of A072822 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072822.P8522877601376784445

`(23^row(n)+23^col(n))/2`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072822

/-- `(23^row(n)+23^col(n))/2` -/
def P8522877601376784445.Spec : Prop :=
  ∀ n, P8522877601376784445.a n = (A072822 n : ℚ)

end A072822

/-! ## A072822.P14683391494378288446

`A073215(n)/2`
-/

namespace A072822.P14683391494378288446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073215 n : ℚ) / 2

end

end A072822.P14683391494378288446

namespace A072822

/-- `A073215(n)/2` -/
def P14683391494378288446.Spec : Prop :=
  ∀ n, P14683391494378288446.a n = (A072822 n : ℚ)

end A072822

/-! ## A072822.P17733937386340814261

`record[ratio[A073215(A087509(n))]]`
-/

namespace A072822.P17733937386340814261
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073215 (A087509 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072822.P17733937386340814261

namespace A072822

/-- `record[ratio[A073215(A087509(n))]]` -/
def P17733937386340814261.Spec : Prop :=
  ∀ n, P17733937386340814261.a n = (A072822 n : ℚ)

end A072822

/-! ## A072822.P2653041604261641271

`(23^A002262(n)+23^A003056(n))/2`
-/

namespace A072822.P2653041604261641271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((23 : ℚ) ^ (A002262 n : ℤ) + (23 : ℚ) ^ (A003056 n : ℤ)) / 2

end

end A072822.P2653041604261641271

namespace A072822

/-- `(23^A002262(n)+23^A003056(n))/2` -/
def P2653041604261641271.Spec : Prop :=
  ∀ n, P2653041604261641271.a n = (A072822 n : ℚ)

end A072822

/-! ## A072822.P9748886672593837362

`2^A008683(A046389(n+1))*A073215(n)`
-/

namespace A072822.P9748886672593837362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A046389 (n + 1)).toNat : ℤ) * (A073215 n : ℚ)

end

end A072822.P9748886672593837362

namespace A072822

/-- `2^A008683(A046389(n+1))*A073215(n)` -/
def P9748886672593837362.Spec : Prop :=
  ∀ n, P9748886672593837362.a n = (A072822 n : ℚ)

end A072822

/-!
# A072823: Numbers that are not the sum of two powers of 2.

The programs for A072823, the canonical program `A072823.P10577280511149000026` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072823 has offset 1).

The definition of A072823 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072823.P10577280511149000026

`lt[0, a(and(n, n-1))+1]` with `a(0)=-2, a(1)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072823

/-- `lt[0, a(and(n, n-1))+1]` -/
def P10577280511149000026.Spec : Prop :=
  ∀ n, (P10577280511149000026.a n : ℤ) = A072823 (n + 1)

theorem P10577280511149000026.correct : P10577280511149000026.Spec := by
  intro n
  simp only [A072823, Nat.add_sub_cancel]

end A072823

/-! ## A072823.P17753046801071540441

`lt[1, a(n-1)+1-val(n, 2)]` with `a(0)=1, a(1)=3, a(2)=0`
-/

namespace A072823.P17753046801071540441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 0] fun n f2 =>
  f2 (n - 1) + (1 - (SequenceMachineLib.valuation n 2 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A072823.P17753046801071540441

namespace A072823

/-- `lt[1, a(n-1)+1-val(n, 2)]` -/
def P17753046801071540441.Spec : Prop :=
  ∀ n, (P17753046801071540441.a n : ℤ) = A072823 (n + 1)

end A072823

/-! ## A072823.P3706552616247753367

`comp[A099627(n)]+1`
-/

namespace A072823.P3706552616247753367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A072823.P3706552616247753367

namespace A072823

/-- `comp[A099627(n)]+1` -/
def P3706552616247753367.Spec : Prop :=
  ∀ n, (P3706552616247753367.a n : ℤ) = A072823 (n + 1)

end A072823

/-! ## A072823.P4791785240925034417

`comp[A131816(n)]+1`
-/

namespace A072823.P4791785240925034417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131816 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A072823.P4791785240925034417

namespace A072823

/-- `comp[A131816(n)]+1` -/
def P4791785240925034417.Spec : Prop :=
  ∀ n, (P4791785240925034417.a n : ℤ) = A072823 (n + 1)

end A072823

/-! ## A072823.P859202988560371058

`eq[1, A369030(n)]+1`
-/

namespace A072823.P859202988560371058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369030 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072823.P859202988560371058

namespace A072823

/-- `eq[1, A369030(n)]+1` -/
def P859202988560371058.Spec : Prop :=
  ∀ n, (P859202988560371058.a n : ℤ) = A072823 (n + 1)

end A072823

/-! ## A072823.P9026616237340078552

`lt[A369029(n), 2]+1`
-/

namespace A072823.P9026616237340078552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369029 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A072823.P9026616237340078552

namespace A072823

/-- `lt[A369029(n), 2]+1` -/
def P9026616237340078552.Spec : Prop :=
  ∀ n, (P9026616237340078552.a n : ℤ) = A072823 (n + 1)

end A072823

/-! ## A072823.P8971147414547347939

`comp[∑[A232089(n)]]+1`
-/

namespace A072823.P8971147414547347939
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232089 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A072823.P8971147414547347939

namespace A072823

/-- `comp[∑[A232089(n)]]+1` -/
def P8971147414547347939.Spec : Prop :=
  ∀ n, (P8971147414547347939.a n : ℤ) = A072823 (n + 1)

end A072823

/-! ## A072823.P2476953097243120051

`comp[A173786(n)-1]+1`
-/

namespace A072823.P2476953097243120051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A072823.P2476953097243120051

namespace A072823

/-- `comp[A173786(n)-1]+1` -/
def P2476953097243120051.Spec : Prop :=
  ∀ n, (P2476953097243120051.a n : ℤ) = A072823 (n + 1)

end A072823

/-! ## A072823.P6629349846516614570

`comp[A271709(n)-1]+1`
-/

namespace A072823.P6629349846516614570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271709 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A072823.P6629349846516614570

namespace A072823

/-- `comp[A271709(n)-1]+1` -/
def P6629349846516614570.Spec : Prop :=
  ∀ n, (P6629349846516614570.a n : ℤ) = A072823 (n + 1)

end A072823

/-! ## A072823.P2568282431436910228

`lt[and(n, A292601(n)-n), n]`
-/

namespace A072823.P2568282431436910228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A292601 n - (n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A072823.P2568282431436910228

namespace A072823

/-- `lt[and(n, A292601(n)-n), n]` -/
def P2568282431436910228.Spec : Prop :=
  ∀ n, (P2568282431436910228.a n : ℤ) = A072823 (n + 1)

end A072823

/-! ## A072823.P12289449992375763332

`comp[A048645(n+2)-1]+1`
-/

namespace A072823.P12289449992375763332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A072823.P12289449992375763332

namespace A072823

/-- `comp[A048645(n+2)-1]+1` -/
def P12289449992375763332.Spec : Prop :=
  ∀ n, (P12289449992375763332.a n : ℤ) = A072823 (n + 1)

end A072823

/-! ## A072823.P4059567478435705744

`comp[∑[A000010(A059268(n))]]+1`
-/

namespace A072823.P4059567478435705744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A059268 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A072823.P4059567478435705744

namespace A072823

/-- `comp[∑[A000010(A059268(n))]]+1` -/
def P4059567478435705744.Spec : Prop :=
  ∀ n, (P4059567478435705744.a n : ℤ) = A072823 (n + 1)

end A072823

/-! ## A072823.P12004688787692398062

`comp[A053644(A006257(n))+A053644(n)]`
-/

namespace A072823.P12004688787692398062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A006257 n).toNat + A053644 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A072823.P12004688787692398062

namespace A072823

/-- `comp[A053644(A006257(n))+A053644(n)]` -/
def P12004688787692398062.Spec : Prop :=
  ∀ n, (P12004688787692398062.a n : ℤ) = A072823 (n + 1)

end A072823

/-! ## A072823.P16496718828125017088

`∩[A138591(n+1), A161989(n+1)]`
-/

namespace A072823.P16496718828125017088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072823.P16496718828125017088

namespace A072823

/-- `∩[A138591(n+1), A161989(n+1)]` -/
def P16496718828125017088.Spec : Prop :=
  ∀ n, (P16496718828125017088.a n : ℤ) = A072823 (n + 1)

end A072823

/-! ## A072823.P5382377816284376381

`lt[n*A073267(n), n]`
-/

namespace A072823.P5382377816284376381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A073267 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A072823.P5382377816284376381

namespace A072823

/-- `lt[n*A073267(n), n]` -/
def P5382377816284376381.Spec : Prop :=
  ∀ n, (P5382377816284376381.a n : ℤ) = A072823 (n + 1)

end A072823

/-! ## A072823.P17482051746560592342

`lt[A073267(n+1), 1]+1`
-/

namespace A072823.P17482051746560592342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073267 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A072823.P17482051746560592342

namespace A072823

/-- `lt[A073267(n+1), 1]+1` -/
def P17482051746560592342.Spec : Prop :=
  ∀ n, (P17482051746560592342.a n : ℤ) = A072823 (n + 1)

end A072823

/-! ## A072823.P3903869511196217419

`eq[A000038(n), A073267(n)]`
-/

namespace A072823.P3903869511196217419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072823.P3903869511196217419

namespace A072823

/-- `eq[A000038(n), A073267(n)]` -/
def P3903869511196217419.Spec : Prop :=
  ∀ n, (P3903869511196217419.a n : ℤ) = A072823 (n + 1)

end A072823

/-! ## A072823.P7787354317724855662

`eq[A000007(n), A073267(n)]`
-/

namespace A072823.P7787354317724855662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072823.P7787354317724855662

namespace A072823

/-- `eq[A000007(n), A073267(n)]` -/
def P7787354317724855662.Spec : Prop :=
  ∀ n, (P7787354317724855662.a n : ℤ) = A072823 (n + 1)

end A072823

/-! ## A072823.P10849951907940968917

`eq[A075897(n), A114563(n)]`
-/

namespace A072823.P10849951907940968917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075897 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114563 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072823.P10849951907940968917

namespace A072823

/-- `eq[A075897(n), A114563(n)]` -/
def P10849951907940968917.Spec : Prop :=
  ∀ n, (P10849951907940968917.a n : ℤ) = A072823 (n + 1)

end A072823

/-! ## A072823.P850312119330378136

`eq[A075897(n), A130779(n)]`
-/

namespace A072823.P850312119330378136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075897 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130779 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072823.P850312119330378136

namespace A072823

/-- `eq[A075897(n), A130779(n)]` -/
def P850312119330378136.Spec : Prop :=
  ∀ n, (P850312119330378136.a n : ℤ) = A072823 (n + 1)

end A072823

/-!
# A072824: Sum of aliquot divisors of Ramanujan's highly composite numbers.

The programs for A072824, there is no canonical definition to state claims against.
-/

/-! ## A072824.P13288901631270936622

`A001065(A002182(n+1))`
-/

namespace A072824.P13288901631270936622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A002182 (n + 1)).toNat

end

end A072824.P13288901631270936622

/-! ## A072824.P6026962170391486449

`A063072(n+1)-A002182(n+1)`
-/

namespace A072824.P6026962170391486449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063072 (n + 1) - A002182 (n + 1)

end

end A072824.P6026962170391486449

/-! ## A072824.P12465117764552520243

`A063072(n+1)+1-A135372(n+1)`
-/

namespace A072824.P12465117764552520243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063072 (n + 1) + (1 - A135372 (n + 1))

end

end A072824.P12465117764552520243

/-! ## A072824.P17282875443518561664

`A063072(n+1)-A301413(n+1)*A319865(n+1)`
-/

namespace A072824.P17282875443518561664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063072 (n + 1) - A301413 (n + 1) * A319865 (n + 1)

end

end A072824.P17282875443518561664

/-! ## A072824.P4724626137476179336

`A063072(n+1)-∑[A262501(A028310(n))]`
-/

namespace A072824.P4724626137476179336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262501 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063072 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072824.P4724626137476179336

/-! ## A072824.P18243999610474927703

`A063072(n+1)-sqrt(A046952(n+1))`
-/

namespace A072824.P18243999610474927703
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A063072 (n + 1) : ℝ) - Real.sqrt (A046952 (n + 1) : ℝ)

end

end A072824.P18243999610474927703

/-! ## A072824.P7176914302337734709

`A063072(n+1)-A152047(n+1)*A152048(n+1)`
-/

namespace A072824.P7176914302337734709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063072 (n + 1) - A152047 (n + 1) * A152048 (n + 1)

end

end A072824.P7176914302337734709

/-! ## A072824.P11670508241539351382

`A063072(n+1)-A025487(A306802(n+1))`
-/

namespace A072824.P11670508241539351382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063072 (n + 1) - A025487 (A306802 (n + 1)).toNat

end

end A072824.P11670508241539351382

/-! ## A072824.P680009682322115633

`A063072(n+1)-A061799(A002183(n+1))`
-/

namespace A072824.P680009682322115633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063072 (n + 1) - A061799 (A002183 (n + 1)).toNat

end

end A072824.P680009682322115633

/-!
# A072825: Numbers k such that k^2 - 1 is a highly composite number.

The programs for A072825, there is no canonical definition to state claims against.
-/

/-! ## A072825.P17757432733822965836

`∩[A179273(n+1), A194099(n+1)]`
-/

namespace A072825.P17757432733822965836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072825.P17757432733822965836

/-! ## A072825.P7049502986755128775

`∩[A184676(n+1), A194099(n+1)]`
-/

namespace A072825.P7049502986755128775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072825.P7049502986755128775

/-!
# A072826: Primes p such that p-1 is a highly composite number.

The programs for A072826, there is no canonical definition to state claims against.
-/

/-! ## A072826.P13644374121300003840

`A002182(A306587(n+1))+1`
-/

namespace A072826.P13644374121300003840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (A306587 (n + 1)).toNat + 1

end

end A072826.P13644374121300003840

/-! ## A072826.P3801634110466769968

`A135372(A306587(n+1))`
-/

namespace A072826.P3801634110466769968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135372 (A306587 (n + 1)).toNat

end

end A072826.P3801634110466769968

/-! ## A072826.P6484608389056649863

`A135372(eq[1, A141345(n+1)]+1)`
-/

namespace A072826.P6484608389056649863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A072826.P6484608389056649863

/-! ## A072826.P6726090380428208057

`record[root(A135372(n+1), A141345(n+1))]`
-/

namespace A072826.P6726090380428208057
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A135372 (n + 1) : ℝ) ^ (1 / (A141345 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072826.P6726090380428208057

/-! ## A072826.P12114429173782293690

`A002182(eq[1, A141345(n+1)]+1)+1`
-/

namespace A072826.P12114429173782293690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + 1

end

end A072826.P12114429173782293690

/-! ## A072826.P13387638451040073089

`A135372(record[(n+1)²/(A141345(n+1)+n)])`
-/

namespace A072826.P13387638451040073089
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A141345 (n + 1) + (n : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135372 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A072826.P13387638451040073089

/-! ## A072826.P9970582362443653084

`∩[A135372(n+1), A181561(n+1)]`
-/

namespace A072826.P9970582362443653084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072826.P9970582362443653084

/-!
# A072827: Number of permutations satisfying i-2<=p(i)<=i+3, i=1..n.

The programs for A072827, there is no canonical definition to state claims against.
-/

/-! ## A072827.P4920598416816879230

`A008615(A268744(n+1)+A268742(n))`
-/

namespace A072827.P4920598416816879230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A268744 (n + 1) + A268742 n).toNat

end

end A072827.P4920598416816879230

/-! ## A072827.P2897622867869775359

`A065719(A307469(n))+A018019(n)`
-/

namespace A072827.P2897622867869775359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065719 (A307469 n).toNat + A018019 n

end

end A072827.P2897622867869775359

/-!
# A072828: Primes p such that p+1 is a highly composite number.

The programs for A072828, there is no canonical definition to state claims against.
-/

/-! ## A072828.P2091368330692252945

`A002182(A306588(n+1))-1`
-/

namespace A072828.P2091368330692252945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (A306588 (n + 1)).toNat - 1

end

end A072828.P2091368330692252945

/-! ## A072828.P14112861329844720566

`A002182(eq[1, A324385(n+2)]+2)-1`
-/

namespace A072828.P14112861329844720566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324385 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2) - 1

end

end A072828.P14112861329844720566

/-! ## A072828.P7759869615460834114

`abs(A135372(eq[1, A324385(n+2)]+2)-1)-1`
-/

namespace A072828.P7759869615460834114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324385 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A135372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2) - 1| - 1

end

end A072828.P7759869615460834114

/-! ## A072828.P9954752248760376464

`A057428(n+1)+A002182(A306588(n+1))`
-/

namespace A072828.P9954752248760376464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A002182 (A306588 (n + 1)).toNat

end

end A072828.P9954752248760376464

/-! ## A072828.P14153230598693254501

`A080891(A016873(n))+A002182(A306588(n+1))`
-/

namespace A072828.P14153230598693254501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 (A016873 n).toNat + A002182 (A306588 (n + 1)).toNat

end

end A072828.P14153230598693254501

/-!
# A072829: Greatest m such that Product_{k=1..n-1} (1 - k/m) <= 1/2.

The programs for A072829, there is no canonical definition to state claims against.
-/

/-! ## A072829.P3609343904606103907

`A308699(n+2)-1`
-/

namespace A072829.P3609343904606103907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308699 (n + 2) - 1

end

end A072829.P3609343904606103907

/-! ## A072829.P9768599091205343467

`∑[abs(Δ[A308699(n+1)])]`
-/

namespace A072829.P9768599091205343467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308699 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072829.P9768599091205343467

/-! ## A072829.P4033201647217155570

`record[A308699(abs(2-n))-1]`
-/

namespace A072829.P4033201647217155570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308699 |2 - (n : ℤ)|.toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072829.P4033201647217155570

/-! ## A072829.P4046932081453740927

`∑[A000027(Δ[A308699(n+1)])]`
-/

namespace A072829.P4046932081453740927
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308699 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072829.P4046932081453740927

/-! ## A072829.P1668755627518017356

`∑[A000038(n+1)+Δ[A308699(n+1)]]`
-/

namespace A072829.P1668755627518017356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308699 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072829.P1668755627518017356

/-! ## A072829.P13585251093060412423

`∑[Δ[A308699(n+1)]%A000032(n+2)]`
-/

namespace A072829.P13585251093060412423
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308699 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A000032 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072829.P13585251093060412423

/-! ## A072829.P3627351851201580876

`∑[Δ[A308699(n+1)]+A008683(4*(n+1))]`
-/

namespace A072829.P3627351851201580876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308699 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + A008683 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072829.P3627351851201580876

/-! ## A072829.P10432352891746407530

`A153151(A308699(n+2))`
-/

namespace A072829.P10432352891746407530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153151 (A308699 (n + 2)).toNat

end

end A072829.P10432352891746407530

/-!
# A072830: Absolute value of 2*b(n)-9*n, where b(n) = accumulative sum of the greatest digit of n minus the least digit of n (A037904).

The programs for A072830, there is no canonical definition to state claims against.
-/

/-! ## A072830.P14180690780408506270

`∑[9-A297330(A056544(n+1))]`
-/

namespace A072830.P14180690780408506270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A297330 (A056544 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072830.P14180690780408506270

/-! ## A072830.P9056397173752661478

`∑[9-A064834(A020338(n+1))]`
-/

namespace A072830.P9056397173752661478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A064834 (A020338 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072830.P9056397173752661478

/-! ## A072830.P10192467051444207957

`∑[A231470(A100131(n))]`
-/

namespace A072830.P10192467051444207957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231470 (A100131 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072830.P10192467051444207957

/-! ## A072830.P13575340569117339839

`∑[A010729(A359341(n+1)+1)]`
-/

namespace A072830.P13575340569117339839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010729 (A359341 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072830.P13575340569117339839

/-! ## A072830.P3377101498462272958

`∑[10-A342671(A001254(n))]`
-/

namespace A072830.P3377101498462272958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - A342671 (A001254 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072830.P3377101498462272958

/-!
# A072831: Number of bits in n!.

The programs for A072831, the canonical program `A072831.P2075451572801131696` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072831 has offset 0).

The definition of A072831 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072831.P2075451572801131696

`floor(log(n!)/log(2))+1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072831

/-- `floor(log(n!)/log(2))+1` -/
def P2075451572801131696.Spec : Prop :=
  ∀ n, P2075451572801131696.a n = A072831 n

theorem P2075451572801131696.correct : P2075451572801131696.Spec := by
  intro n
  simp only [A072831]

end A072831

/-! ## A072831.P2899190243558151626

`floor(∑[log2(abs(1-n)+1)])`
-/

namespace A072831.P2899190243558151626
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (|1 - (n : ℤ)| + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A072831.P2899190243558151626

namespace A072831

/-- `floor(∑[log2(abs(1-n)+1)])` -/
def P2899190243558151626.Spec : Prop :=
  ∀ n, P2899190243558151626.a n = A072831 n

end A072831

/-! ## A072831.P13401748011856145091

`A067850(n)+1`
-/

namespace A072831.P13401748011856145091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067850 n + 1

end

end A072831.P13401748011856145091

namespace A072831

/-- `A067850(n)+1` -/
def P13401748011856145091.Spec : Prop :=
  ∀ n, P13401748011856145091.a n = A072831 n

theorem P13401748011856145091.correct : P13401748011856145091.Spec := by
  intro n
  simp only [A072831, Nat.add_sub_cancel, A072831.P13401748011856145091.a, A072831.P2075451572801131696.a, A067850, A067850.P433127479858209906.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072831

/-! ## A072831.P12530286812441179912

`floor(∑[log2(A028310(n))])+1`
-/

namespace A072831.P12530286812441179912
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A028310 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + 1

end

end A072831.P12530286812441179912

namespace A072831

/-- `floor(∑[log2(A028310(n))])+1` -/
def P12530286812441179912.Spec : Prop :=
  ∀ n, P12530286812441179912.a n = A072831 n

end A072831

/-! ## A072831.P16834330861416430778

`A055529(n)+A011371(n)`
-/

namespace A072831.P16834330861416430778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055529 n + A011371 n

end

end A072831.P16834330861416430778

namespace A072831

/-- `A055529(n)+A011371(n)` -/
def P16834330861416430778.Spec : Prop :=
  ∀ n, P16834330861416430778.a n = A072831 n

theorem P16834330861416430778.correct : P16834330861416430778.Spec := by
  intro n
  simp only [A072831, Nat.add_sub_cancel, A072831.P16834330861416430778.a, A072831.P2075451572801131696.a, A011371, A011371.P12398255777927387864.a, A055529, A055529.P12508370460568413740.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072831

/-! ## A072831.P11285768874611188138

`A130716(n)+A003070(n)`
-/

namespace A072831.P11285768874611188138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130716 n + A003070 n

end

end A072831.P11285768874611188138

namespace A072831

/-- `A130716(n)+A003070(n)` -/
def P11285768874611188138.Spec : Prop :=
  ∀ n, P11285768874611188138.a n = A072831 n

end A072831

/-! ## A072831.P8360625145738090912

`n-(A023443(n)-A067850(n))`
-/

namespace A072831.P8360625145738090912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A067850 n)

end

end A072831.P8360625145738090912

namespace A072831

/-- `n-(A023443(n)-A067850(n))` -/
def P8360625145738090912.Spec : Prop :=
  ∀ n, P8360625145738090912.a n = A072831 n

theorem P8360625145738090912.correct : P8360625145738090912.Spec := by
  intro n
  simp only [A072831, Nat.add_sub_cancel, A072831.P8360625145738090912.a, A072831.P2075451572801131696.a, A023443, A023443.P2966051066474347068.a, A067850, A067850.P433127479858209906.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072831

/-! ## A072831.P6752845832117924356

`A003070(n)+char[2-A028242(n)]`
-/

namespace A072831.P6752845832117924356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A028242 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003070 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A072831.P6752845832117924356

namespace A072831

/-- `A003070(n)+char[2-A028242(n)]` -/
def P6752845832117924356.Spec : Prop :=
  ∀ n, P6752845832117924356.a n = A072831 n

end A072831

/-! ## A072831.P4181170644558643882

`A003070(n)+char[2-A336017(n)]`
-/

namespace A072831.P4181170644558643882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A336017 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003070 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A072831.P4181170644558643882

namespace A072831

/-- `A003070(n)+char[2-A336017(n)]` -/
def P4181170644558643882.Spec : Prop :=
  ∀ n, P4181170644558643882.a n = A072831 n

end A072831

/-! ## A072831.P5354676369705620956

`A079584(n)+A078565(n)`
-/

namespace A072831.P5354676369705620956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079584 n + A078565 n

end

end A072831.P5354676369705620956

namespace A072831

/-- `A079584(n)+A078565(n)` -/
def P5354676369705620956.Spec : Prop :=
  ∀ n, P5354676369705620956.a n = A072831 n

end A072831

/-! ## A072831.P5117653936186744611

`A008619(2*A067850(n))`
-/

namespace A072831.P5117653936186744611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A067850 n).toNat

end

end A072831.P5117653936186744611

namespace A072831

/-- `A008619(2*A067850(n))` -/
def P5117653936186744611.Spec : Prop :=
  ∀ n, P5117653936186744611.a n = A072831 n

end A072831

/-! ## A072831.P14584676111228343844

`A110514(2*A067850(n))`
-/

namespace A072831.P14584676111228343844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (2 * A067850 n).toNat

end

end A072831.P14584676111228343844

namespace A072831

/-- `A110514(2*A067850(n))` -/
def P14584676111228343844.Spec : Prop :=
  ∀ n, P14584676111228343844.a n = A072831 n

end A072831

/-! ## A072831.P692411858903168369

`A158416(2*A067850(n))`
-/

namespace A072831.P692411858903168369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (2 * A067850 n).toNat

end

end A072831.P692411858903168369

namespace A072831

/-- `A158416(2*A067850(n))` -/
def P692411858903168369.Spec : Prop :=
  ∀ n, P692411858903168369.a n = A072831 n

end A072831

/-!
# A072832: First differences of Ulam's sequence A002858.

The programs for A072832, there is no canonical definition to state claims against.
-/

/-! ## A072832.P7094247392044483079

`Δ[A002858(n+1)]`
-/

namespace A072832.P7094247392044483079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A072832.P7094247392044483079

/-! ## A072832.P9785373015594713000

`Δ[A048951(n+1)/2]`
-/

namespace A072832.P9785373015594713000
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048951 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A072832.P9785373015594713000

/-! ## A072832.P7054847217900742294

`A001281(Δ[A048951(n+1)])`
-/

namespace A072832.P7054847217900742294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (f1 (n + 1) - f1 n).toNat

end

end A072832.P7054847217900742294

/-! ## A072832.P6319610073313119202

`A004526(Δ[A048951(n+1)])`
-/

namespace A072832.P6319610073313119202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A072832.P6319610073313119202

/-! ## A072832.P305421624939607824

`A065033(Δ[A048951(n+1)])`
-/

namespace A072832.P305421624939607824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (f1 (n + 1) - f1 n).toNat

end

end A072832.P305421624939607824

/-! ## A072832.P11357442927048559420

`A110654(Δ[A048951(n+1)])`
-/

namespace A072832.P11357442927048559420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (f1 (n + 1) - f1 n).toNat

end

end A072832.P11357442927048559420

/-! ## A072832.P6785014581867007874

`A002858(n+2)-A002858(n+1)`
-/

namespace A072832.P6785014581867007874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 2) - A002858 (n + 1)

end

end A072832.P6785014581867007874

/-! ## A072832.P3633203910273985344

`A004526(A048951(n+2)-A048951(n+1))`
-/

namespace A072832.P3633203910273985344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A048951 (n + 2) - A048951 (n + 1)).toNat

end

end A072832.P3633203910273985344

/-! ## A072832.P4481368738555097956

`A026741(A048951(n+2)-A048951(n+1))`
-/

namespace A072832.P4481368738555097956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A048951 (n + 2) - A048951 (n + 1)).toNat

end

end A072832.P4481368738555097956

/-! ## A072832.P4458659864893719560

`Δ[A183534(∑[n+1])]`
-/

namespace A072832.P4458659864893719560
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A072832.P4458659864893719560

/-!
# A072833: Numbers that are congruent to 0, 5, 8, 9 mod 12.

The programs for A072833, the canonical program `A072833.P17815037825786492888` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072833 has offset 0).

The definition of A072833 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072833.P17815037825786492888

`and(3*n+2, -3)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072833

/-- `and(3*n+2, -3)` -/
def P17815037825786492888.Spec : Prop :=
  ∀ n, P17815037825786492888.a n = A072833 n

theorem P17815037825786492888.correct : P17815037825786492888.Spec := by
  intro n
  simp only [A072833]

end A072833

/-! ## A072833.P7011980740280060963

`or(2, 3*n+2)-2`
-/

namespace A072833.P7011980740280060963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (3 * n + 2) : ℤ) - 2

end

end A072833.P7011980740280060963

namespace A072833

/-- `or(2, 3*n+2)-2` -/
def P7011980740280060963.Spec : Prop :=
  ∀ n, P7011980740280060963.a n = A072833 n

end A072833

/-! ## A072833.P13928774311625143147

`xor(2, or(2, 3*n+2))`
-/

namespace A072833.P13928774311625143147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (Nat.lor 2 (3 * n + 2))

end

end A072833.P13928774311625143147

namespace A072833

/-- `xor(2, or(2, 3*n+2))` -/
def P13928774311625143147.Spec : Prop :=
  ∀ n, (P13928774311625143147.a n : ℤ) = A072833 n

end A072833

/-! ## A072833.P16815351976893389216

`and(2, n+1)+3*n`
-/

namespace A072833.P16815351976893389216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (n + 1) + 3 * n

end

end A072833.P16815351976893389216

namespace A072833

/-- `and(2, n+1)+3*n` -/
def P16815351976893389216.Spec : Prop :=
  ∀ n, (P16815351976893389216.a n : ℤ) = A072833 n

end A072833

/-! ## A072833.P2457749707341343587

`Δ[n²]+or(2, n-1)`
-/

namespace A072833.P2457749707341343587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + Int.lor 2 ((n : ℤ) - 1)

end

end A072833.P2457749707341343587

namespace A072833

/-- `Δ[n²]+or(2, n-1)` -/
def P2457749707341343587.Spec : Prop :=
  ∀ n, P2457749707341343587.a n = A072833 n

end A072833

/-! ## A072833.P10831636881325476921

`a(n-4)+12` with `a(0)=0, a(1)=5, a(2)=8, a(3)=9`
-/

namespace A072833.P10831636881325476921
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 5, 8, 9] fun n a =>
  a (n - 4) + 12

end

end A072833.P10831636881325476921

namespace A072833

/-- `a(n-4)+12` -/
def P10831636881325476921.Spec : Prop :=
  ∀ n, (P10831636881325476921.a n : ℤ) = A072833 n

end A072833

/-! ## A072833.P7120103403961553629

`∑[6-a(n-2)]` with `a(0)=0, a(1)=5, a(2)=3`
-/

namespace A072833.P7120103403961553629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 5, 3] fun n f1 =>
  6 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072833.P7120103403961553629

namespace A072833

/-- `∑[6-a(n-2)]` -/
def P7120103403961553629.Spec : Prop :=
  ∀ n, P7120103403961553629.a n = A072833 n

end A072833

/-! ## A072833.P10157340114836479028

`2-(or(2, -n)-2*n)`
-/

namespace A072833.P10157340114836479028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Int.lor 2 (-(n : ℤ)) - (2 * n : ℤ))

end

end A072833.P10157340114836479028

namespace A072833

/-- `2-(or(2, -n)-2*n)` -/
def P10157340114836479028.Spec : Prop :=
  ∀ n, P10157340114836479028.a n = A072833 n

end A072833

/-! ## A072833.P18195012738875871381

`2*∑[n]%2+3*n`
-/

namespace A072833.P18195012738875871381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((∑ j ∈ Finset.range (n + 1), f1 j) % 2) + 3 * n

end

end A072833.P18195012738875871381

namespace A072833

/-- `2*∑[n]%2+3*n` -/
def P18195012738875871381.Spec : Prop :=
  ∀ n, (P18195012738875871381.a n : ℤ) = A072833 n

end A072833

/-! ## A072833.P2378697621880907177

`(n²+n)%4+3*n`
-/

namespace A072833.P2378697621880907177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n) % 4 + 3 * n

end

end A072833.P2378697621880907177

namespace A072833

/-- `(n²+n)%4+3*n` -/
def P2378697621880907177.Spec : Prop :=
  ∀ n, (P2378697621880907177.a n : ℤ) = A072833 n

end A072833

/-! ## A072833.P10754179903372661196

`n-or(2, -n)+n+2`
-/

namespace A072833.P10754179903372661196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.lor 2 (-(n : ℤ)) + (n + 2 : ℤ)

end

end A072833.P10754179903372661196

namespace A072833

/-- `n-or(2, -n)+n+2` -/
def P10754179903372661196.Spec : Prop :=
  ∀ n, P10754179903372661196.a n = A072833 n

end A072833

/-! ## A072833.P483000470626549445

`3*n+1-(-1)^∑[n]`
-/

namespace A072833.P483000470626549445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) - (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A072833.P483000470626549445

namespace A072833

/-- `3*n+1-(-1)^∑[n]` -/
def P483000470626549445.Spec : Prop :=
  ∀ n, P483000470626549445.a n = A072833 n

end A072833

/-! ## A072833.P9391593617612916887

`ogf((5x-2x^2+3x^3)/(1-2x+2x^2-2x^3+x^4))`
-/

namespace A072833.P9391593617612916887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, -2, 3] [1, -2, 2, -2, 1] n

end

end A072833.P9391593617612916887

namespace A072833

/-- `ogf((5x-2x^2+3x^3)/(1-2x+2x^2-2x^3+x^4))` -/
def P9391593617612916887.Spec : Prop :=
  ∀ n, P9391593617612916887.a n = A072833 n

end A072833

/-! ## A072833.P1893018121701770970

`eq[n/gcd(n+2, n-1), and(n, n+2)]`
-/

namespace A072833.P1893018121701770970
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Int.gcd (n + 2 : ℤ) ((n : ℤ) - 1) : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A072833.P1893018121701770970

namespace A072833

/-- `eq[n/gcd(n+2, n-1), and(n, n+2)]` -/
def P1893018121701770970.Spec : Prop :=
  ∀ n, (P1893018121701770970.a n : ℤ) = A072833 n

end A072833

/-! ## A072833.P16544675147413178852

`A157872(n+1)%A013574(n+1)`
-/

namespace A072833.P16544675147413178852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157872 (n + 1)) (A013574 (n + 1))

end

end A072833.P16544675147413178852

namespace A072833

/-- `A157872(n+1)%A013574(n+1)` -/
def P16544675147413178852.Spec : Prop :=
  ∀ n, P16544675147413178852.a n = A072833 n

end A072833

/-! ## A072833.P17160223423089302245

`Δ[A000326(n)+Δ[A098180(n)]]`
-/

namespace A072833.P17160223423089302245
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098180 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A072833.P17160223423089302245

namespace A072833

/-- `Δ[A000326(n)+Δ[A098180(n)]]` -/
def P17160223423089302245.Spec : Prop :=
  ∀ n, P17160223423089302245.a n = A072833 n

end A072833

/-! ## A072833.P864306664664965896

`(A176672(n+1)-A109008(n+1))*A109008(n)`
-/

namespace A072833.P864306664664965896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A176672 (n + 1) - A109008 (n + 1)) * A109008 n

end

end A072833.P864306664664965896

namespace A072833

/-- `(A176672(n+1)-A109008(n+1))*A109008(n)` -/
def P864306664664965896.Spec : Prop :=
  ∀ n, P864306664664965896.a n = A072833 n

end A072833

/-! ## A072833.P3250395639518063076

`A042948(A047250(n+1))`
-/

namespace A072833.P3250395639518063076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A047250 (n + 1)).toNat

end

end A072833.P3250395639518063076

namespace A072833

/-- `A042948(A047250(n+1))` -/
def P3250395639518063076.Spec : Prop :=
  ∀ n, P3250395639518063076.a n = A072833 n

end A072833

/-! ## A072833.P15269709344709333446

`A007494(A047444(n+1))`
-/

namespace A072833.P15269709344709333446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A047444 (n + 1)).toNat

end

end A072833.P15269709344709333446

namespace A072833

/-- `A007494(A047444(n+1))` -/
def P15269709344709333446.Spec : Prop :=
  ∀ n, P15269709344709333446.a n = A072833 n

end A072833

/-! ## A072833.P7187187677372468855

`∩[A007494(n), A042948(n)]`
-/

namespace A072833.P7187187677372468855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072833.P7187187677372468855

namespace A072833

/-- `∩[A007494(n), A042948(n)]` -/
def P7187187677372468855.Spec : Prop :=
  ∀ n, (P7187187677372468855.a n : ℤ) = A072833 n

end A072833

/-!
# A072834: Exponents occurring in expansion of F_8(q^2).

The programs for A072834, the canonical program `A072834.P14975963663244008124` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072834 has offset 0).

The definition of A072834 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072834.P14975963663244008124

`∑[(6*n)%8]+n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072834

/-- `∑[(6*n)%8]+n` -/
def P14975963663244008124.Spec : Prop :=
  ∀ n, (P14975963663244008124.a n : ℤ) = A072834 n

theorem P14975963663244008124.correct : P14975963663244008124.Spec := by
  intro n
  simp only [A072834]

end A072834

/-! ## A072834.P1644163093219437762

`∑[and(6, 6*n)]+n`
-/

namespace A072834.P1644163093219437762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 6 (6 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A072834.P1644163093219437762

namespace A072834

/-- `∑[and(6, 6*n)]+n` -/
def P1644163093219437762.Spec : Prop :=
  ∀ n, (P1644163093219437762.a n : ℤ) = A072834 n

end A072834

/-! ## A072834.P7148738969965907111

`a(n-4)+16` with `a(0)=0, a(1)=7, a(2)=12, a(3)=15`
-/

namespace A072834.P7148738969965907111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 7, 12, 15] fun n a =>
  a (n - 4) + 16

end

end A072834.P7148738969965907111

namespace A072834

/-- `a(n-4)+16` -/
def P7148738969965907111.Spec : Prop :=
  ∀ n, (P7148738969965907111.a n : ℤ) = A072834 n

end A072834

/-! ## A072834.P284325017716986367

`∑[xor(3, n+3)-n]+n`
-/

namespace A072834.P284325017716986367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 3 (n + 3) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A072834.P284325017716986367

namespace A072834

/-- `∑[xor(3, n+3)-n]+n` -/
def P284325017716986367.Spec : Prop :=
  ∀ n, P284325017716986367.a n = A072834 n

end A072834

/-! ## A072834.P12550597169911630165

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=7, a(2)=5, a(3)=3, a(4)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A072834.P12550597169911630165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 7, 5, 3, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072834.P12550597169911630165

namespace A072834

/-- `∑[floor(a(n-4))]` -/
def P12550597169911630165.Spec : Prop :=
  ∀ n, (P12550597169911630165.a n : ℤ) = A072834 n

end A072834

/-! ## A072834.P9321937088085385616

`∑[a(n-4)%8]` with `a(0)=0, a(1)=7, a(2)=5, a(3)=3, a(4)=1`
-/

namespace A072834.P9321937088085385616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 7, 5, 3, 1] fun n f1 =>
  f1 (n - 4) % 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072834.P9321937088085385616

namespace A072834

/-- `∑[a(n-4)%8]` -/
def P9321937088085385616.Spec : Prop :=
  ∀ n, (P9321937088085385616.a n : ℤ) = A072834 n

end A072834

/-! ## A072834.P12404779891224877648

`4*(n+1)-(2-n%4)²`
-/

namespace A072834.P12404779891224877648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - (2 - ((n % 4 : ℕ) : ℤ)) ^ 2

end

end A072834.P12404779891224877648

namespace A072834

/-- `4*(n+1)-(2-n%4)²` -/
def P12404779891224877648.Spec : Prop :=
  ∀ n, P12404779891224877648.a n = A072834 n

end A072834

/-! ## A072834.P18388778014374490821

`4*(n+1)-(2-gcd(4, n))²`
-/

namespace A072834.P18388778014374490821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - (2 - (Nat.gcd 4 n : ℤ)) ^ 2

end

end A072834.P18388778014374490821

namespace A072834

/-- `4*(n+1)-(2-gcd(4, n))²` -/
def P18388778014374490821.Spec : Prop :=
  ∀ n, P18388778014374490821.a n = A072834 n

end A072834

/-! ## A072834.P9732651221430368591

`4*(n+1)-(2-and(3, n))²`
-/

namespace A072834.P9732651221430368591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - (2 - (Nat.land 3 n : ℤ)) ^ 2

end

end A072834.P9732651221430368591

namespace A072834

/-- `4*(n+1)-(2-and(3, n))²` -/
def P9732651221430368591.Spec : Prop :=
  ∀ n, P9732651221430368591.a n = A072834 n

end A072834

/-! ## A072834.P9205398574042473286

`record[xor(2*n+1, and(5, n+3))]`
-/

namespace A072834.P9205398574042473286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n + 1) (Nat.land 5 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072834.P9205398574042473286

namespace A072834

/-- `record[xor(2*n+1, and(5, n+3))]` -/
def P9205398574042473286.Spec : Prop :=
  ∀ n, (P9205398574042473286.a n : ℤ) = A072834 n

end A072834

/-! ## A072834.P5875853959024353952

`record[xor(2*n+1, ((n+1)%4)²)]`
-/

namespace A072834.P5875853959024353952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n + 1) (((n + 1) % 4) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072834.P5875853959024353952

namespace A072834

/-- `record[xor(2*n+1, ((n+1)%4)²)]` -/
def P5875853959024353952.Spec : Prop :=
  ∀ n, (P5875853959024353952.a n : ℤ) = A072834 n

end A072834

/-! ## A072834.P7782616657985268260

`lt[0, A023919(n)]`
-/

namespace A072834.P7782616657985268260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023919 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A072834.P7782616657985268260

namespace A072834

/-- `lt[0, A023919(n)]` -/
def P7782616657985268260.Spec : Prop :=
  ∀ n, (P7782616657985268260.a n : ℤ) = A072834 n

end A072834

/-! ## A072834.P1971036137272703289

`2*A244953(n)+n`
-/

namespace A072834.P1971036137272703289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A244953 n + (n : ℤ)

end

end A072834.P1971036137272703289

namespace A072834

/-- `2*A244953(n)+n` -/
def P1971036137272703289.Spec : Prop :=
  ∀ n, P1971036137272703289.a n = A072834 n

end A072834

/-! ## A072834.P8961217585873116620

`∑[A053794(2*n)]+n`
-/

namespace A072834.P8961217585873116620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053794 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A072834.P8961217585873116620

namespace A072834

/-- `∑[A053794(2*n)]+n` -/
def P8961217585873116620.Spec : Prop :=
  ∀ n, P8961217585873116620.a n = A072834 n

end A072834

/-! ## A072834.P12768624491163581673

`∑[2*A158459(n)]+n`
-/

namespace A072834.P12768624491163581673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A158459 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A072834.P12768624491163581673

namespace A072834

/-- `∑[2*A158459(n)]+n` -/
def P12768624491163581673.Spec : Prop :=
  ∀ n, P12768624491163581673.a n = A072834 n

end A072834

/-! ## A072834.P5186296192744311934

`∑[A159058(2*n)]+n`
-/

namespace A072834.P5186296192744311934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159058 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A072834.P5186296192744311934

namespace A072834

/-- `∑[A159058(2*n)]+n` -/
def P5186296192744311934.Spec : Prop :=
  ∀ n, P5186296192744311934.a n = A072834 n

end A072834

/-! ## A072834.P3174155311474371090

`∑[A120634(n)-n]+n`
-/

namespace A072834.P3174155311474371090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120634 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A072834.P3174155311474371090

namespace A072834

/-- `∑[A120634(n)-n]+n` -/
def P3174155311474371090.Spec : Prop :=
  ∀ n, P3174155311474371090.a n = A072834 n

end A072834

/-! ## A072834.P2932350429245559937

`A047538(∑[A084101(n)])`
-/

namespace A072834.P2932350429245559937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047538 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A072834.P2932350429245559937

namespace A072834

/-- `A047538(∑[A084101(n)])` -/
def P2932350429245559937.Spec : Prop :=
  ∀ n, P2932350429245559937.a n = A072834 n

end A072834

/-! ## A072834.P10215187925991640679

`A014601(A047557(n+1))`
-/

namespace A072834.P10215187925991640679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (A047557 (n + 1)).toNat

end

end A072834.P10215187925991640679

namespace A072834

/-- `A014601(A047557(n+1))` -/
def P10215187925991640679.Spec : Prop :=
  ∀ n, P10215187925991640679.a n = A072834 n

end A072834

/-!
# A072835: Exponents occurring in expansion of F_9(q^2).

The programs for A072835, the canonical program `A072835.P3305597984781666039` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072835 has offset 0).

The definition of A072835 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072835.P3305597984781666039

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=8, a(2)=6, a(3)=4, a(4)=2, a(5)=6`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072835

/-- `∑[floor(a(n-4))]` -/
def P3305597984781666039.Spec : Prop :=
  ∀ n, (P3305597984781666039.a n : ℤ) = A072835 n

theorem P3305597984781666039.correct : P3305597984781666039.Spec := by
  intro n
  simp only [A072835]

end A072835

/-! ## A072835.P6261876377179549799

`2*(A056991(n+1)-A000007(n))`
-/

namespace A072835.P6261876377179549799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A056991 (n + 1) - A000007 n)

end

end A072835.P6261876377179549799

namespace A072835

/-- `2*(A056991(n+1)-A000007(n))` -/
def P6261876377179549799.Spec : Prop :=
  ∀ n, P6261876377179549799.a n = A072835 n

end A072835

/-! ## A072835.P4983435414764702097

`2*A056991(n+1)%A005894(n)`
-/

namespace A072835.P4983435414764702097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A056991 (n + 1)) (A005894 n)

end

end A072835.P4983435414764702097

namespace A072835

/-- `2*A056991(n+1)%A005894(n)` -/
def P4983435414764702097.Spec : Prop :=
  ∀ n, P4983435414764702097.a n = A072835 n

end A072835

/-! ## A072835.P10620887397508874298

`(2*A056991(n+1))%A016754(n)`
-/

namespace A072835.P10620887397508874298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A056991 (n + 1)) (A016754 n)

end

end A072835.P10620887397508874298

namespace A072835

/-- `(2*A056991(n+1))%A016754(n)` -/
def P10620887397508874298.Spec : Prop :=
  ∀ n, P10620887397508874298.a n = A072835 n

end A072835

/-! ## A072835.P16285789768775113382

`A056991(n+1)*A253885(n²%(n+1))`
-/

namespace A072835.P16285789768775113382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056991 (n + 1) * A253885 (n ^ 2 % (n + 1))

end

end A072835.P16285789768775113382

namespace A072835

/-- `A056991(n+1)*A253885(n²%(n+1))` -/
def P16285789768775113382.Spec : Prop :=
  ∀ n, P16285789768775113382.a n = A072835 n

end A072835

/-! ## A072835.P13040529383537306094

`A163300(A056991(n+1))`
-/

namespace A072835.P13040529383537306094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (A056991 (n + 1)).toNat

end

end A072835.P13040529383537306094

namespace A072835

/-- `A163300(A056991(n+1))` -/
def P13040529383537306094.Spec : Prop :=
  ∀ n, P13040529383537306094.a n = A072835 n

end A072835

/-! ## A072835.P1935253943494308412

`A163300(A242660(n+2))`
-/

namespace A072835.P1935253943494308412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (A242660 (n + 2)).toNat

end

end A072835.P1935253943494308412

namespace A072835

/-- `A163300(A242660(n+2))` -/
def P1935253943494308412.Spec : Prop :=
  ∀ n, P1935253943494308412.a n = A072835 n

end A072835

/-! ## A072835.P18202420981386814055

`∩[A163300(n+1), A174438(n+1)]`
-/

namespace A072835.P18202420981386814055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072835.P18202420981386814055

namespace A072835

/-- `∩[A163300(n+1), A174438(n+1)]` -/
def P18202420981386814055.Spec : Prop :=
  ∀ n, (P18202420981386814055.a n : ℤ) = A072835 n

end A072835

/-! ## A072835.P2359348729602828136

`∩[A058992(n+1), A174438(n+1)]`
-/

namespace A072835.P2359348729602828136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072835.P2359348729602828136

namespace A072835

/-- `∩[A058992(n+1), A174438(n+1)]` -/
def P2359348729602828136.Spec : Prop :=
  ∀ n, (P2359348729602828136.a n : ℤ) = A072835 n

end A072835

/-! ## A072835.P9405741432909800817

`filter[A174438(n+1), A267043(#)]`
-/

namespace A072835.P9405741432909800817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A072835.P9405741432909800817

namespace A072835

/-- `filter[A174438(n+1), A267043(#)]` -/
def P9405741432909800817.Spec : Prop :=
  ∀ n, P9405741432909800817.a n = A072835 n

end A072835

/-! ## A072835.P2558894240034066128

`2*lt[0, A023920(n)]`
-/

namespace A072835.P2558894240034066128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023920 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A072835.P2558894240034066128

namespace A072835

/-- `2*lt[0, A023920(n)]` -/
def P2558894240034066128.Spec : Prop :=
  ∀ n, (P2558894240034066128.a n : ℤ) = A072835 n

end A072835

/-! ## A072835.P9843762121709858448

`lt[0, A072839(n)]`
-/

namespace A072835.P9843762121709858448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072839 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A072835.P9843762121709858448

namespace A072835

/-- `lt[0, A072839(n)]` -/
def P9843762121709858448.Spec : Prop :=
  ∀ n, (P9843762121709858448.a n : ℤ) = A072835 n

end A072835

/-! ## A072835.P6577212840066288087

`2*(A056991(n+1)-A008683((n+1)²))`
-/

namespace A072835.P6577212840066288087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A056991 (n + 1) - A008683 ((n + 1) ^ 2))

end

end A072835.P6577212840066288087

namespace A072835

/-- `2*(A056991(n+1)-A008683((n+1)²))` -/
def P6577212840066288087.Spec : Prop :=
  ∀ n, P6577212840066288087.a n = A072835 n

end A072835

/-!
# A072836: Exponents occurring in expansion of F_10(q^2).

The programs for A072836, there is no canonical definition to state claims against.
-/

/-! ## A072836.P12721890782651647696

`lt[0, A023921(n)]`
-/

namespace A072836.P12721890782651647696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023921 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A072836.P12721890782651647696

/-! ## A072836.P7657313331750864675

`eq[1, gcd(A023921(n), A065383(n))]`
-/

namespace A072836.P7657313331750864675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A023921 n) (A065383 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072836.P7657313331750864675

/-! ## A072836.P15419546226112050286

`eq[A008835(n+1), A019425(A023921(n))]`
-/

namespace A072836.P15419546226112050286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A023921 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072836.P15419546226112050286

/-! ## A072836.P3968977290852716566

`eq[0, A000038(A023921(n))*A004200(n)]`
-/

namespace A072836.P3968977290852716566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A023921 n).toNat * A004200 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072836.P3968977290852716566

/-! ## A072836.P6774981252849506783

`eq[A000038(A023921(n)), A023921(n+2)]`
-/

namespace A072836.P6774981252849506783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A023921 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023921 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072836.P6774981252849506783

/-!
# A072839: Expansion of F_9(q^2).

The programs for A072839, there is no canonical definition to state claims against.
-/

/-! ## A072839.P15143601018611301236

`A023920((n/2)^((n+1)%2))`
-/

namespace A072839.P15143601018611301236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023920 (SequenceMachineLib.roundAway (((n : ℚ) / 2) ^ ((n + 1) % 2))).toNat

end

end A072839.P15143601018611301236

/-! ## A072839.P895751159344299001

`A023920(A057979(n+1))`
-/

namespace A072839.P895751159344299001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023920 (A057979 (n + 1)).toNat

end

end A072839.P895751159344299001

/-! ## A072839.P6284357454159520244

`A023920(n-A029578(n))`
-/

namespace A072839.P6284357454159520244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023920 ((n : ℤ) - A029578 n).toNat

end

end A072839.P6284357454159520244

/-! ## A072839.P8517276304689031803

`A023920(gcd(n, A001057(n)))`
-/

namespace A072839.P8517276304689031803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023920 (Int.gcd (n : ℤ) (A001057 n))

end

end A072839.P8517276304689031803

/-! ## A072839.P445372529322297137

`A023920(gcd(n², A014682(n)))`
-/

namespace A072839.P445372529322297137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023920 (Int.gcd (n ^ 2 : ℤ) (A014682 n))

end

end A072839.P445372529322297137

/-! ## A072839.P12175340370216189923

`A023920(gcd(∑[n], A004526(n)))`
-/

namespace A072839.P12175340370216189923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023920 (Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A004526 n))

end

end A072839.P12175340370216189923

/-! ## A072839.P3566969280929417223

`A023920(gcd(2*n, A001281(n)))`
-/

namespace A072839.P3566969280929417223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023920 (Int.gcd (2 * n : ℤ) (A001281 n))

end

end A072839.P3566969280929417223

/-! ## A072839.P7062704061698257080

`A023920(gcd(n²², A004525(n)))`
-/

namespace A072839.P7062704061698257080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023920 (Int.gcd ((n ^ 2) ^ 2 : ℤ) (A004525 n))

end

end A072839.P7062704061698257080

/-! ## A072839.P7823311257547842666

`A023920(A014682(abs(A009531(n))))`
-/

namespace A072839.P7823311257547842666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023920 (A014682 |A009531 n|.toNat).toNat

end

end A072839.P7823311257547842666

/-! ## A072839.P17498481975199475981

`A023920(A078898(n))*A059841(n)`
-/

namespace A072839.P17498481975199475981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023920 (A078898 n).toNat * A059841 n

end

end A072839.P17498481975199475981

/-! ## A072839.P17349079251970793929

`A023920(gcd(A000217(n), A000982(n)))`
-/

namespace A072839.P17349079251970793929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023920 (Int.gcd (A000217 n) (A000982 n))

end

end A072839.P17349079251970793929

/-! ## A072839.P3359533987579652837

`A023920(gcd(A002620(n), A006003(n)))`
-/

namespace A072839.P3359533987579652837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023920 (Int.gcd (A002620 n) (A006003 n))

end

end A072839.P3359533987579652837

/-! ## A072839.P16988832061184871627

`A023920(gcd(n-A004525(n), A000326(n)))`
-/

namespace A072839.P16988832061184871627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023920 (Int.gcd ((n : ℤ) - A004525 n) (A000326 n))

end

end A072839.P16988832061184871627

/-! ## A072839.P15723852591201494971

`Δ[A004526(n+1)]*A023920(A004526(n))`
-/

namespace A072839.P15723852591201494971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A023920 (A004526 n).toNat

end

end A072839.P15723852591201494971

/-! ## A072839.P10600595488402978982

`A023920(A014682(n))`
-/

namespace A072839.P10600595488402978982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023920 (A014682 n).toNat

end

end A072839.P10600595488402978982

/-! ## A072839.P9636597524588493869

`A023920(A001057(n)+n)`
-/

namespace A072839.P9636597524588493869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023920 (A001057 n + (n : ℤ)).toNat

end

end A072839.P9636597524588493869

/-! ## A072839.P11234575797331665909

`A023920(Δ[n*A004526(n)])`
-/

namespace A072839.P11234575797331665909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023920 (f1 (n + 1) - f1 n).toNat

end

end A072839.P11234575797331665909

/-! ## A072839.P10232154611829255353

`A023920(A001281(n))`
-/

namespace A072839.P10232154611829255353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023920 (A001281 n).toNat

end

end A072839.P10232154611829255353

/-! ## A072839.P162153348632953403

`A023920(A181762(n))`
-/

namespace A072839.P162153348632953403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023920 (A181762 n).toNat

end

end A072839.P162153348632953403

/-!
# A072841: Numbers k such that the digits of k^2 are exactly the same (albeit in different order) as the digits of (k+1)^2.

The programs for A072841, there is no canonical definition to state claims against.
-/

/-! ## A072841.P6753907466296321614

`sqrt(A227692(n+1))`
-/

namespace A072841.P6753907466296321614
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A227692 (n + 1) : ℝ)

end

end A072841.P6753907466296321614

/-! ## A072841.P8756605019914501449

`9*A175518(n+1)+4`
-/

namespace A072841.P8756605019914501449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A175518 (n + 1) + 4

end

end A072841.P8756605019914501449

/-! ## A072841.P1428453331109227467

`root(A227692(C(n+1, n)), 2)`
-/

namespace A072841.P1428453331109227467
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A227692 (Nat.choose (n + 1) n) : ℝ) ^ (1 / (2 : ℝ))

end

end A072841.P1428453331109227467

/-! ## A072841.P12201471141298883775

`root(A227692(n+1), 2%A017209(n))`
-/

namespace A072841.P12201471141298883775
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A227692 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A017209 n) : ℝ))

end

end A072841.P12201471141298883775

/-! ## A072841.P6630667692651275063

`A226378(A005383(n+1))²*A227692(n+1)^(1/2)`
-/

namespace A072841.P6630667692651275063
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A226378 (A005383 (n + 1)).toNat ^ 2 : ℝ) * (A227692 (n + 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A072841.P6630667692651275063

/-!
# A072843: O'Halloran numbers: even integers which cannot be the surface area of a cuboid with integer-length sides.

The programs for A072843, there is no canonical definition to state claims against.
-/

/-! ## A072843.P7671710630709734033

`A246850(n+3)`
-/

namespace A072843.P7671710630709734033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246850 (n + 3)

end

end A072843.P7671710630709734033

/-! ## A072843.P17850576058673828217

`2*A025052(n+3)`
-/

namespace A072843.P17850576058673828217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025052 (n + 3)

end

end A072843.P17850576058673828217

/-! ## A072843.P11071193964018801403

`A004277(A025052(n+3))`
-/

namespace A072843.P11071193964018801403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A025052 (n + 3)).toNat

end

end A072843.P11071193964018801403

/-! ## A072843.P8580234660835631566

`A004275(A025052(n+3)+1)`
-/

namespace A072843.P8580234660835631566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A025052 (n + 3) + 1).toNat

end

end A072843.P8580234660835631566

/-! ## A072843.P12761831418629463031

`A029935(A025052(n+3)+1)`
-/

namespace A072843.P12761831418629463031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029935 (A025052 (n + 3) + 1).toNat

end

end A072843.P12761831418629463031

/-!
# A072844: Number of words of length 2n-1 generated by the two letters s and t that reduce to the identity 1 by using the relations sssssss=1, tt=1 and stst=1. The generators s and t along with the three relations generate the 14-element dihedral group D7.

The programs for A072844, the canonical program `A072844.P15880853943820917626` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072844 has offset 1).

The definition of A072844 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072844.P15880853943820917626

`9*a(n-1)-26*a(n-2)+25*a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072844

/-- `9*a(n-1)-26*a(n-2)+25*a(n-3)-4*a(n-4)` -/
def P15880853943820917626.Spec : Prop :=
  ∀ n, P15880853943820917626.a n = A072844 (n + 1)

theorem P15880853943820917626.correct : P15880853943820917626.Spec := by
  intro n
  simp only [A072844, Nat.add_sub_cancel]

end A072844

/-! ## A072844.P7040838686720771736

`A094052(2*n)`
-/

namespace A072844.P7040838686720771736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094052 (2 * n)

end

end A072844.P7040838686720771736

namespace A072844

/-- `A094052(2*n)` -/
def P7040838686720771736.Spec : Prop :=
  ∀ n, P7040838686720771736.a n = A072844 (n + 1)

end A072844

/-! ## A072844.P17637931846028121560

`A377573(Δ[n²])`
-/

namespace A072844.P17637931846028121560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377573 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A072844.P17637931846028121560

namespace A072844

/-- `A377573(Δ[n²])` -/
def P17637931846028121560.Spec : Prop :=
  ∀ n, P17637931846028121560.a n = A072844 (n + 1)

end A072844

/-! ## A072844.P6533026391443971964

`A094659(Δ[n²])/2`
-/

namespace A072844.P6533026391443971964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094659 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A072844.P6533026391443971964

namespace A072844

/-- `A094659(Δ[n²])/2` -/
def P6533026391443971964.Spec : Prop :=
  ∀ n, P6533026391443971964.a n = (A072844 (n + 1) : ℚ)

end A072844

/-! ## A072844.P13490242307588803083

`floor(A094659(2*n+1)/2)`
-/

namespace A072844.P13490242307588803083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A094659 (2 * n + 1) : ℚ) / 2⌋

end

end A072844.P13490242307588803083

namespace A072844

/-- `floor(A094659(2*n+1)/2)` -/
def P13490242307588803083.Spec : Prop :=
  ∀ n, P13490242307588803083.a n = A072844 (n + 1)

end A072844

/-! ## A072844.P16240507334748499964

`or(char[3], A094052(A005843(n)))`
-/

namespace A072844.P16240507334748499964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A094052 (A005843 n).toNat)

end

end A072844.P16240507334748499964

namespace A072844

/-- `or(char[3], A094052(A005843(n)))` -/
def P16240507334748499964.Spec : Prop :=
  ∀ n, P16240507334748499964.a n = A072844 (n + 1)

end A072844

/-!
# A072845: Let S(1) = {1, 3, 7, 9}, S(n) be obtained from S(n-1) via 1 -> {1, 3, 7, 9}, 3 -> {3, 9, 1, 7}, 7 -> {7, 1, 9, 3}, 9 -> {9, 7, 3, 1}, then this sequence is the concatenation of S(1), S(2), ...

The programs for A072845, the canonical program `A072845.P4251842277492704702` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072845 has offset 1).

The definition of A072845 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072845.P4251842277492704702

`∏{digits}[A136333(n+1), #]%10`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A072845

/-- `∏{digits}[A136333(n+1), #]%10` -/
def P4251842277492704702.Spec : Prop :=
  ∀ n, (P4251842277492704702.a n : ℤ) = A072845 (n + 1)

theorem P4251842277492704702.correct : P4251842277492704702.Spec := by
  intro n
  simp only [A072845, Nat.add_sub_cancel]

end A072845

/-! ## A072845.P7848825166649498088

`∏{digits}[∩[A014261(n+1), A039130(n+1)], #]%10`
-/

namespace A072845.P7848825166649498088
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039130 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod % 10

end

end A072845.P7848825166649498088

namespace A072845

/-- `∏{digits}[∩[A014261(n+1), A039130(n+1)], #]%10` -/
def P7848825166649498088.Spec : Prop :=
  ∀ n, (P7848825166649498088.a n : ℤ) = A072845 (n + 1)

end A072845

/-! ## A072845.P15557751048628194642

`A371281(A136333(n+1))`
-/

namespace A072845.P15557751048628194642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371281 (A136333 (n + 1)).toNat

end

end A072845.P15557751048628194642

namespace A072845

/-- `A371281(A136333(n+1))` -/
def P15557751048628194642.Spec : Prop :=
  ∀ n, P15557751048628194642.a n = A072845 (n + 1)

end A072845

/-! ## A072845.P1053523346883055528

`A007954(eq[1, gcd(10, A007954(n))])%10`
-/

namespace A072845.P1053523346883055528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 10 (A007954 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007954 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)) 10

end

end A072845.P1053523346883055528

namespace A072845

/-- `A007954(eq[1, gcd(10, A007954(n))])%10` -/
def P1053523346883055528.Spec : Prop :=
  ∀ n, P1053523346883055528.a n = A072845 (n + 1)

end A072845

/-! ## A072845.P8039583109724038991

`∏{digits}[record[A327539(A261189(n+1))], #]%10`
-/

namespace A072845.P8039583109724038991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327539 (A261189 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod % 10

end

end A072845.P8039583109724038991

namespace A072845

/-- `∏{digits}[record[A327539(A261189(n+1))], #]%10` -/
def P8039583109724038991.Spec : Prop :=
  ∀ n, (P8039583109724038991.a n : ℤ) = A072845 (n + 1)

end A072845

/-! ## A072845.P7053027890225479970

`∏{digits}[record[A327539(A052413(n+2))], #]%10`
-/

namespace A072845.P7053027890225479970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327539 (A052413 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod % 10

end

end A072845.P7053027890225479970

namespace A072845

/-- `∏{digits}[record[A327539(A052413(n+2))], #]%10` -/
def P7053027890225479970.Spec : Prop :=
  ∀ n, (P7053027890225479970.a n : ℤ) = A072845 (n + 1)

end A072845

/-! ## A072845.P17676587040520458502

`A007954(∩[A008541(n+1), A014261(n+1)])%10`
-/

namespace A072845.P17676587040520458502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007954 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)) 10

end

end A072845.P17676587040520458502

namespace A072845

/-- `A007954(∩[A008541(n+1), A014261(n+1)])%10` -/
def P17676587040520458502.Spec : Prop :=
  ∀ n, P17676587040520458502.a n = A072845 (n + 1)

end A072845

/-! ## A072845.P535568199405537063

`A007954(∩[A014261(n+1), A039130(n+1)])%10`
-/

namespace A072845.P535568199405537063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039130 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007954 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)) 10

end

end A072845.P535568199405537063

namespace A072845

/-- `A007954(∩[A014261(n+1), A039130(n+1)])%10` -/
def P535568199405537063.Spec : Prop :=
  ∀ n, P535568199405537063.a n = A072845 (n + 1)

end A072845

/-! ## A072845.P10372211511574080333

`A007954(∩[A014261(n+1), A039141(n+1)])%10`
-/

namespace A072845.P10372211511574080333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039141 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007954 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)) 10

end

end A072845.P10372211511574080333

namespace A072845

/-- `A007954(∩[A014261(n+1), A039141(n+1)])%10` -/
def P10372211511574080333.Spec : Prop :=
  ∀ n, P10372211511574080333.a n = A072845 (n + 1)

end A072845

/-! ## A072845.P17645491915130113823

`A007954(∩[A014261(n+1), A039146(n+1)])%10`
-/

namespace A072845.P17645491915130113823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039146 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007954 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)) 10

end

end A072845.P17645491915130113823

namespace A072845

/-- `A007954(∩[A014261(n+1), A039146(n+1)])%10` -/
def P17645491915130113823.Spec : Prop :=
  ∀ n, P17645491915130113823.a n = A072845 (n + 1)

end A072845

/-!
# A072848: 

The programs for A072848, there is no canonical definition to state claims against.
-/

/-! ## A072848.P13632434723015878709

`A003021(6*(n+1))`
-/

namespace A072848.P13632434723015878709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003021 (6 * (n + 1))

end

end A072848.P13632434723015878709

/-!
# A072849: Prime(a(n)) + ... + prime(a(n)+3) is a square = A051395(n)^2.

The programs for A072849, there is no canonical definition to state claims against.
-/

/-! ## A072849.P9437763565177086976

`A000720(A206280(n+1))`
-/

namespace A072849.P9437763565177086976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A206280 (n + 1)).toNat

end

end A072849.P9437763565177086976

/-! ## A072849.P3571405018504016600

`A061395(or(1, A206280(n+1)))`
-/

namespace A072849.P3571405018504016600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A206280 (n + 1))).toNat

end

end A072849.P3571405018504016600

/-! ## A072849.P9008803178250264146

`∑{d}[A206280(n+1), A061395(#)]`
-/

namespace A072849.P9008803178250264146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A072849.P9008803178250264146

/-!
# A072850: Number of permutations p of [n] satisfying i-2 <= p(i) <= i+4 for all i in [n].

The programs for A072850, there is no canonical definition to state claims against.
-/

/-! ## A072850.P4776815089720240150

`2*A173815(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A072850.P4776815089720240150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * A173815 (a (n - 1)).toNat

end

end A072850.P4776815089720240150

/-! ## A072850.P5978478340486341976

`A350396(A026938(n))`
-/

namespace A072850.P5978478340486341976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350396 (A026938 n).toNat

end

end A072850.P5978478340486341976

/-! ## A072850.P2199850720398610390

`A364158(A091500(n))`
-/

namespace A072850.P2199850720398610390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364158 (A091500 n).toNat

end

end A072850.P2199850720398610390

/-!
# A072851: a(n) = s(2*n) where s(0) = 0, s(1) = s(2) = 1, s(n) = abs(Sum_{k=2..n-1} (-1)^k * s(n-k) * s(k)).

The programs for A072851, there is no canonical definition to state claims against.
-/

/-! ## A072851.P10535062832313861024

`A102669(xor(A033485(n+1), A038504(n)))`
-/

namespace A072851.P10535062832313861024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (Int.xor (A033485 (n + 1)) (A038504 n)).toNat

end

end A072851.P10535062832313861024

/-! ## A072851.P2182044737382911604

`A102673(xor(3*(n+1), ceil(2^n/3)))`
-/

namespace A072851.P2182044737382911604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102673 (Int.xor (3 * (n + 1) : ℤ) ⌈(2 ^ n : ℚ) / 3⌉).toNat

end

end A072851.P2182044737382911604

/-! ## A072851.P11587909960550499678

`A102669(A320293(n+1)+char[1])`
-/

namespace A072851.P11587909960550499678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A320293 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A072851.P11587909960550499678

/-! ## A072851.P11295228164077393618

`A102669(A320293(n+1))-A159075(n)`
-/

namespace A072851.P11295228164077393618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A320293 (n + 1)).toNat - A159075 n

end

end A072851.P11295228164077393618

/-! ## A072851.P18224046122536628059

`or(A000035(n), A102669(A320293(n+1)))`
-/

namespace A072851.P18224046122536628059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A102669 (A320293 (n + 1)).toNat)

end

end A072851.P18224046122536628059

/-!
# A072852: Number of permutations satisfying i-2<=p(i)<=i+5, i=1..n.

The programs for A072852, there is no canonical definition to state claims against.
-/

/-! ## A072852.P7966558334304478351

`A157271(Δ[A072853(n+1)])`
-/

namespace A072852.P7966558334304478351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (f1 (n + 1) - f1 n).toNat

end

end A072852.P7966558334304478351

/-! ## A072852.P10198106664870354152

`Δ[Δ[A002265(A179344(n+1))]]`
-/

namespace A072852.P10198106664870354152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A179344 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A072852.P10198106664870354152

/-! ## A072852.P6544588419668569529

`A025192(n)-A123903(A061992(n))`
-/

namespace A072852.P6544588419668569529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n - A123903 (A061992 n).toNat

end

end A072852.P6544588419668569529

/-!
# A072853: Number of permutations satisfying i-2<=p(i)<=i+6, i=1..n.

The programs for A072853, there is no canonical definition to state claims against.
-/

/-! ## A072853.P1591206266761334711

`Δ[A004526(A179344(n+1))]`
-/

namespace A072853.P1591206266761334711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A179344 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A072853.P1591206266761334711

/-! ## A072853.P5641053113477854887

`Δ[A002265(Δ[A179349(n+1)])]`
-/

namespace A072853.P5641053113477854887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179349 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A072853.P5641053113477854887

/-! ## A072853.P1303562372401466931

`Δ[A008621(Δ[A179349(n+1)])]`
-/

namespace A072853.P1303562372401466931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179349 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A072853.P1303562372401466931

/-! ## A072853.P9367863223005339150

`A054576(Δ[Δ[A179349(n+1)]])`
-/

namespace A072853.P9367863223005339150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179349 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (f1 (n + 1) - f1 n).toNat

end

end A072853.P9367863223005339150

/-!
# A072854: Number of permutations satisfying i-3<=p(i)<=i+4, i=1..n.

The programs for A072854, there is no canonical definition to state claims against.
-/

/-! ## A072854.P15536606749798448045

`6*A046700(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A072854.P15536606749798448045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  6 * A046700 (a (n - 1)).toNat

end

end A072854.P15536606749798448045

/-! ## A072854.P695146131296396209

`A057579(n)*A295296(n+1)`
-/

namespace A072854.P695146131296396209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057579 n * A295296 (n + 1)

end

end A072854.P695146131296396209

/-!
# A072855: Number of permutations satisfying i-3<=p(i)<=i+5, i=1..n.

The programs for A072855, there is no canonical definition to state claims against.
-/

/-! ## A072855.P1157990926106287838

`A110656(Δ[4^n])`
-/

namespace A072855.P1157990926106287838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A072855.P1157990926106287838

/-! ## A072855.P17226746559929017328

`∏[A023516((n+2)!)]`
-/

namespace A072855.P17226746559929017328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023516 (Nat.factorial (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A072855.P17226746559929017328

/-!
# A072856: Number of permutations satisfying i-4<=p(i)<=i+4, i=1..n (permutations of length n within distance 4).

The programs for A072856, there is no canonical definition to state claims against.
-/

/-! ## A072856.P4079183237686093520

`A306209(∑[n+5]+5)`
-/

namespace A072856.P4079183237686093520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A072856.P4079183237686093520

/-! ## A072856.P16975826658734079137

`A306209(Δ[A055831(n+4)])^(1-C(2, n+2))`
-/

namespace A072856.P16975826658734079137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306209 (f1 (n + 1) - f1 n).toNat : ℚ) ^ (1 - (Nat.choose 2 (n + 2) : ℤ) : ℤ)

end

end A072856.P16975826658734079137

/-! ## A072856.P10080410673053751080

`or(A000007(n), A306209(A052905(n+2)))`
-/

namespace A072856.P10080410673053751080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A306209 (A052905 (n + 2)).toNat)

end

end A072856.P10080410673053751080

/-! ## A072856.P15238131409037834440

`A306209(A052905(n+2))+A008683(4*(n+1))`
-/

namespace A072856.P15238131409037834440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 (A052905 (n + 2)).toNat + A008683 (4 * (n + 1))

end

end A072856.P15238131409037834440

/-! ## A072856.P18045738090247356838

`A001222(A002373(n+3))*A306209(A052905(n+2))`
-/

namespace A072856.P18045738090247356838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002373 (n + 3)).toNat * A306209 (A052905 (n + 2)).toNat

end

end A072856.P18045738090247356838

/-!
# A072857: Primeval numbers: numbers that set a record for the number of distinct primes that can be obtained by permuting some subset of their digits.

The programs for A072857, there is no canonical definition to state claims against.
-/

/-! ## A072857.P7293952386445028498

`A076449(A076497(n+1))`
-/

namespace A072857.P7293952386445028498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076449 (A076497 (n + 1)).toNat

end

end A072857.P7293952386445028498

/-! ## A072857.P16917137774284049605

`A076449(record[A328516(n)])`
-/

namespace A072857.P16917137774284049605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076449 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072857.P16917137774284049605

/-! ## A072857.P16642746974596717589

`A076449(record[A347337(n+1)%A052938(n)])`
-/

namespace A072857.P16642746974596717589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347337 (n + 1)) (A052938 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076449 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072857.P16642746974596717589

/-! ## A072857.P13779592293056279946

`A239196(lt[A340702(n+1), A285256(2*n+1)])`
-/

namespace A072857.P13779592293056279946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285256 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239196 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A072857.P13779592293056279946

/-! ## A072857.P8537658224342489345

`A239196(lt[A340702(n+1), A291784(3*n+1)])`
-/

namespace A072857.P8537658224342489345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291784 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239196 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A072857.P8537658224342489345

/-!
# A072858: Primes p such that the period of the decimal expansion of 1/p is a square.

The programs for A072858, there is no canonical definition to state claims against.
-/

/-! ## A072858.P9596465169488638065

`p?[A269870(A269867(n+1))+1]`
-/

namespace A072858.P9596465169488638065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269870 (A269867 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072858.P9596465169488638065

/-! ## A072858.P17875572668937587660

`p?[A333785(n+1)-A028240(n)]`
-/

namespace A072858.P17875572668937587660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333785 (n + 1) - A028240 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072858.P17875572668937587660

/-! ## A072858.P6465650518932444904

`∩[A236183(n+1), A333785(n+1)]`
-/

namespace A072858.P6465650518932444904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072858.P6465650518932444904

/-!
# A072859: Primes p for which the period of 1/p is prime.

The programs for A072859, there is no canonical definition to state claims against.
-/

/-! ## A072859.P9474175805110590426

`p?[A000040(n+1)*A001222(A048595(n+1))]`
-/

namespace A072859.P9474175805110590426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A001222 (A048595 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072859.P9474175805110590426

/-! ## A072859.P1269102936527075116

`p?[A001222(A048595(n+1))*A006005(n+1)]`
-/

namespace A072859.P1269102936527075116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A048595 (n + 1)).toNat * A006005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072859.P1269102936527075116

/-! ## A072859.P1168300584559918578

`p?[A001222(A197226(n+1))*A197225(n+1)]`
-/

namespace A072859.P1168300584559918578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A197226 (n + 1)).toNat * A197225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072859.P1168300584559918578

/-! ## A072859.P10539974777240048315

`p?[A001222(A002329(n+1))*A045572(n+1)]`
-/

namespace A072859.P10539974777240048315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002329 (n + 1)).toNat * A045572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072859.P10539974777240048315

/-! ## A072859.P17998548025435271825

`p?[A001222(A007732(n+1))*(n+1)]`
-/

namespace A072859.P17998548025435271825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007732 (n + 1)).toNat * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072859.P17998548025435271825

/-! ## A072859.P6827755552669303524

`p?[A032741(A051626(n+1))*A131738(n)]`
-/

namespace A072859.P6827755552669303524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A051626 (n + 1)).toNat * A131738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072859.P6827755552669303524

/-!
# A072860: Highest power of 3 dividing the period length of 1/prime(n) = A002371(n).

The programs for A072860, there is no canonical definition to state claims against.
-/

/-! ## A072860.P5895232505746637875

`A038500(A048595(n+1))-A154272(n+1)`
-/

namespace A072860.P5895232505746637875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A048595 (n + 1)).toNat - A154272 (n + 1)

end

end A072860.P5895232505746637875

/-! ## A072860.P3154329201592622733

`A002371(n+1)/A038502(A048595(n+1))`
-/

namespace A072860.P3154329201592622733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002371 (n + 1) : ℚ) / (A038502 (A048595 (n + 1)).toNat : ℚ)

end

end A072860.P3154329201592622733

/-! ## A072860.P2579689837417100274

`A038500(A048595(n+1))+a(A000038(n))` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A072860.P2579689837417100274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n a =>
  A038500 (A048595 (n + 1)).toNat + a (A000038 n).toNat

end

end A072860.P2579689837417100274

/-! ## A072860.P3696946721173558393

`A051626(A000040(n+1))/A038502(A048595(n+1))`
-/

namespace A072860.P3696946721173558393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051626 (A000040 (n + 1)).toNat : ℚ) / (A038502 (A048595 (n + 1)).toNat : ℚ)

end

end A072860.P3696946721173558393

/-! ## A072860.P4625809309600111980

`A051626(A006005(n+1))/A038502(A048595(n+1))`
-/

namespace A072860.P4625809309600111980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051626 (A006005 (n + 1)).toNat : ℚ) / (A038502 (A048595 (n + 1)).toNat : ℚ)

end

end A072860.P4625809309600111980

/-! ## A072860.P15892081007734598166

`A051626(A008578(n+2))/A038502(A048595(n+1))`
-/

namespace A072860.P15892081007734598166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051626 (A008578 (n + 2)).toNat : ℚ) / (A038502 (A048595 (n + 1)).toNat : ℚ)

end

end A072860.P15892081007734598166

/-! ## A072860.P13159140334690145699

`A051626(A001747(n+2)/2)/A038502(A048595(n+1))`
-/

namespace A072860.P13159140334690145699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051626 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat : ℚ) / (A038502 (A048595 (n + 1)).toNat : ℚ)

end

end A072860.P13159140334690145699

/-! ## A072860.P7180750281000092251

`A071126(n+1)%A000070(n)/A038502(A048595(n+1))`
-/

namespace A072860.P7180750281000092251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A071126 (n + 1)) (A000070 n) : ℚ) / (A038502 (A048595 (n + 1)).toNat : ℚ)

end

end A072860.P7180750281000092251

/-! ## A072860.P7091316823860221321

`A051626(A100484(n+1))/A038502(A048595(n+1))`
-/

namespace A072860.P7091316823860221321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051626 (A100484 (n + 1)).toNat : ℚ) / (A038502 (A048595 (n + 1)).toNat : ℚ)

end

end A072860.P7091316823860221321

/-! ## A072860.P12561464507351662027

`A038500(A048595(n+1))%A225530(n)²`
-/

namespace A072860.P12561464507351662027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038500 (A048595 (n + 1)).toNat) (A225530 n ^ 2)

end

end A072860.P12561464507351662027

/-! ## A072860.P13027746512282258645

`A038500(A048595(n+1))-A036987(n²+3)`
-/

namespace A072860.P13027746512282258645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A048595 (n + 1)).toNat - A036987 (n ^ 2 + 3)

end

end A072860.P13027746512282258645

/-!
# A072861: a(n) = sigma(n)^2.

The programs for A072861, the canonical program `A072861.P7379814568350881994` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072861 has offset 1).

The definition of A072861 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)²` (program `A072861.P7379814568350881994`, by `A072861.P7379814568350881994.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A072861.P7379814568350881994

`A000203(n+1)²`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A072861

/-- `A000203(n+1)²` -/
def P7379814568350881994.Spec : Prop :=
  ∀ n, P7379814568350881994.a n = A072861 (n + 1)

theorem P7379814568350881994.correct : P7379814568350881994.Spec := by
  intro n
  simp only [A072861, Nat.add_sub_cancel]

end A072861

/-! ## A072861.P13649558853462032102

`∑{d}[n+1, #]²`
-/

namespace A072861.P13649558853462032102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) ^ 2

end

end A072861.P13649558853462032102

namespace A072861

/-- `∑{d}[n+1, #]²` -/
def P13649558853462032102.Spec : Prop :=
  ∀ n, (P13649558853462032102.a n : ℤ) = A072861 (n + 1)

theorem P13649558853462032102.correct : P13649558853462032102.Spec := by
  intro n
  simp only [A072861, Nat.add_sub_cancel, A072861.P13649558853462032102.f1, A072861.P13649558853462032102.a, A072861.P7379814568350881994.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072861

/-! ## A072861.P4172954012249115688

`∑{d}[n+1, #]^2`
-/

namespace A072861.P4172954012249115688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) ^ 2

end

end A072861.P4172954012249115688

namespace A072861

/-- `∑{d}[n+1, #]^2` -/
def P4172954012249115688.Spec : Prop :=
  ∀ n, (P4172954012249115688.a n : ℤ) = A072861 (n + 1)

theorem P4172954012249115688.correct : P4172954012249115688.Spec := by
  intro n
  simp only [A072861, Nat.add_sub_cancel, A072861.P4172954012249115688.f1, A072861.P4172954012249115688.a, A072861.P7379814568350881994.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072861

/-! ## A072861.P13869607972533030862

`root(∑{d}[n+1, #], 1/2)`
-/

namespace A072861.P13869607972533030862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℝ) ^ (1 / ((1 : ℚ) / 2 : ℝ))

end

end A072861.P13869607972533030862

namespace A072861

/-- `root(∑{d}[n+1, #], 1/2)` -/
def P13869607972533030862.Spec : Prop :=
  ∀ n, P13869607972533030862.a n = (A072861 (n + 1) : ℝ)

end A072861

/-! ## A072861.P11365470725117642471

`∑{d}[n+1, #]*∑{d}[n+1, #]`
-/

namespace A072861.P11365470725117642471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) * (∑ d ∈ Nat.divisors (f2 n), d)

end

end A072861.P11365470725117642471

namespace A072861

/-- `∑{d}[n+1, #]*∑{d}[n+1, #]` -/
def P11365470725117642471.Spec : Prop :=
  ∀ n, (P11365470725117642471.a n : ℤ) = A072861 (n + 1)

theorem P11365470725117642471.correct : P11365470725117642471.Spec := by
  intro n
  simp only [A072861, Nat.add_sub_cancel, A072861.P11365470725117642471.f1, A072861.P11365470725117642471.f2, A072861.P11365470725117642471.a, A072861.P7379814568350881994.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072861

/-! ## A072861.P13343661893920742728

`Δ[A160664(n)]²`
-/

namespace A072861.P13343661893920742728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A072861.P13343661893920742728

namespace A072861

/-- `Δ[A160664(n)]²` -/
def P13343661893920742728.Spec : Prop :=
  ∀ n, P13343661893920742728.a n = A072861 (n + 1)

end A072861

/-! ## A072861.P11244647321845235856

`Δ[A330725(n)]²`
-/

namespace A072861.P11244647321845235856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A072861.P11244647321845235856

namespace A072861

/-- `Δ[A330725(n)]²` -/
def P11244647321845235856.Spec : Prop :=
  ∀ n, P11244647321845235856.a n = A072861 (n + 1)

end A072861

/-! ## A072861.P1900327204155212490

`A143348(n+1)²`
-/

namespace A072861.P1900327204155212490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143348 (n + 1) ^ 2

end

end A072861.P1900327204155212490

namespace A072861

/-- `A143348(n+1)²` -/
def P1900327204155212490.Spec : Prop :=
  ∀ n, P1900327204155212490.a n = A072861 (n + 1)

end A072861

/-! ## A072861.P17662758310751957181

`sqrt(A361179(n+1))`
-/

namespace A072861.P17662758310751957181
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A361179 (n + 1) : ℝ)

end

end A072861.P17662758310751957181

namespace A072861

/-- `sqrt(A361179(n+1))` -/
def P17662758310751957181.Spec : Prop :=
  ∀ n, P17662758310751957181.a n = (A072861 (n + 1) : ℝ)

end A072861

/-! ## A072861.P4361565044114359708

`A245092(Δ[n²])²`
-/

namespace A072861.P4361565044114359708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A072861.P4361565044114359708

namespace A072861

/-- `A245092(Δ[n²])²` -/
def P4361565044114359708.Spec : Prop :=
  ∀ n, P4361565044114359708.a n = A072861 (n + 1)

end A072861

/-! ## A072861.P5165309650094157174

`A258974(n+1)-1`
-/

namespace A072861.P5165309650094157174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258974 (n + 1) - 1

end

end A072861.P5165309650094157174

namespace A072861

/-- `A258974(n+1)-1` -/
def P5165309650094157174.Spec : Prop :=
  ∀ n, P5165309650094157174.a n = A072861 (n + 1)

theorem P5165309650094157174.correct : P5165309650094157174.Spec := by
  intro n
  simp only [A072861, Nat.add_sub_cancel, A072861.P5165309650094157174.a, A072861.P7379814568350881994.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A258974, A258974.P4466533170833626338.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072861

/-! ## A072861.P15842717984532956651

`floor(sqrt(A259308(n+1)))`
-/

namespace A072861.P15842717984532956651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A259308 (n + 1))

end

end A072861.P15842717984532956651

namespace A072861

/-- `floor(sqrt(A259308(n+1)))` -/
def P15842717984532956651.Spec : Prop :=
  ∀ n, P15842717984532956651.a n = A072861 (n + 1)

end A072861

/-! ## A072861.P18261435558626680932

`∑[A340793(n+1)]²`
-/

namespace A072861.P18261435558626680932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A072861.P18261435558626680932

namespace A072861

/-- `∑[A340793(n+1)]²` -/
def P18261435558626680932.Spec : Prop :=
  ∀ n, P18261435558626680932.a n = A072861 (n + 1)

end A072861

/-! ## A072861.P15958347617857212218

`(A039653(n+1)+1)²`
-/

namespace A072861.P15958347617857212218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039653 (n + 1) + 1) ^ 2

end

end A072861.P15958347617857212218

namespace A072861

/-- `(A039653(n+1)+1)²` -/
def P15958347617857212218.Spec : Prop :=
  ∀ n, P15958347617857212218.a n = A072861 (n + 1)

end A072861

/-! ## A072861.P3180658560214734317

`(1-A088580(n+1))²`
-/

namespace A072861.P3180658560214734317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A088580 (n + 1)) ^ 2

end

end A072861.P3180658560214734317

namespace A072861

/-- `(1-A088580(n+1))²` -/
def P3180658560214734317.Spec : Prop :=
  ∀ n, P3180658560214734317.a n = A072861 (n + 1)

theorem P3180658560214734317.correct : P3180658560214734317.Spec := by
  intro n
  simp only [A072861, Nat.add_sub_cancel, A072861.P3180658560214734317.a, A072861.P7379814568350881994.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A088580, A088580.P3089093194242277422.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072861

/-! ## A072861.P13406752287212135928

`(A074400(n+1)/2)²`
-/

namespace A072861.P13406752287212135928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A074400 (n + 1) : ℚ) / 2) ^ 2

end

end A072861.P13406752287212135928

namespace A072861

/-- `(A074400(n+1)/2)²` -/
def P13406752287212135928.Spec : Prop :=
  ∀ n, P13406752287212135928.a n = (A072861 (n + 1) : ℚ)

theorem P13406752287212135928.correct : P13406752287212135928.Spec := by
  intro n
  simp only [A072861, Nat.add_sub_cancel, A072861.P13406752287212135928.a, A072861.P7379814568350881994.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072861

/-! ## A072861.P14018519436234683740

`floor(sqrt(A258774(n+1)))²`
-/

namespace A072861.P14018519436234683740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A258774 (n + 1)) ^ 2

end

end A072861.P14018519436234683740

namespace A072861

/-- `floor(sqrt(A258774(n+1)))²` -/
def P14018519436234683740.Spec : Prop :=
  ∀ n, P14018519436234683740.a n = A072861 (n + 1)

end A072861

/-! ## A072861.P8890988670461756555

`∑{d}[n+1, #*A060648(#)]`
-/

namespace A072861.P8890988670461756555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A060648 d

end

end A072861.P8890988670461756555

namespace A072861

/-- `∑{d}[n+1, #*A060648(#)]` -/
def P8890988670461756555.Spec : Prop :=
  ∀ n, P8890988670461756555.a n = A072861 (n + 1)

end A072861

/-! ## A072861.P1174933170674213734

`(A326136(2*(n+1))/2)²`
-/

namespace A072861.P1174933170674213734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A326136 (2 * (n + 1)) : ℚ) / 2) ^ 2

end

end A072861.P1174933170674213734

namespace A072861

/-- `(A326136(2*(n+1))/2)²` -/
def P1174933170674213734.Spec : Prop :=
  ∀ n, P1174933170674213734.a n = (A072861 (n + 1) : ℚ)

end A072861

/-! ## A072861.P12280145940888752095

`A000203(2*n+1-n)^2`
-/

namespace A072861.P12280145940888752095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 1 - n) ^ 2

end

end A072861.P12280145940888752095

namespace A072861

/-- `A000203(2*n+1-n)^2` -/
def P12280145940888752095.Spec : Prop :=
  ∀ n, P12280145940888752095.a n = A072861 (n + 1)

end A072861

/-!
# A072862: The smallest k>1 such that k divides sigma(k*n) is equal to 6.

The programs for A072862, there is no canonical definition to state claims against.
-/

/-! ## A072862.P13257717298175762407

`filter[A329963(n+1), A010052(#)]`
-/

namespace A072862.P13257717298175762407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010052 (f1 j).toNat = 1) n)

end

end A072862.P13257717298175762407

/-! ## A072862.P9510887706234233205

`filter[A329963(n+1), A093709(#)]`
-/

namespace A072862.P9510887706234233205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093709 (f1 j).toNat = 1) n)

end

end A072862.P9510887706234233205

/-! ## A072862.P9333083235841588900

`filter[A329963(n+1), A214284(#)]`
-/

namespace A072862.P9333083235841588900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A214284 (f1 j).toNat = 1) n)

end

end A072862.P9333083235841588900

/-! ## A072862.P1832533031547867080

`filter[A329963(n+1), A266178(#)]`
-/

namespace A072862.P1832533031547867080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266178 (f1 j).toNat = 1) n)

end

end A072862.P1832533031547867080

/-! ## A072862.P6714580208608312250

`∩[A046678(n+1), A227939(n+1)]`
-/

namespace A072862.P6714580208608312250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072862.P6714580208608312250

/-!
# A072863: a(n) = 2^(n-3)*(n^2+3*n+8).

The programs for A072863, the canonical program `A072863.P10357116766084414492` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072863 has offset 0).

The definition of A072863 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n-3)*(n²+3*n+8)` (program `A072863.P17686539660329198736`, by `A072863.P17686539660329198736.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A072863.P17686539660329198736

`2^(n-3)*(n²+3*n+8)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A072863.P17686539660329198736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * (n ^ 2 + 3 * n + 8 : ℚ)

end

end A072863.P17686539660329198736

namespace A072863

/-- `2^(n-3)*(n²+3*n+8)` -/
def P17686539660329198736.Spec : Prop :=
  ∀ n, P17686539660329198736.a n = (A072863 n : ℚ)

theorem P17686539660329198736.correct : P17686539660329198736.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A072863, Nat.add_sub_cancel, A072863.P17686539660329198736.a, A072863.P10357116766084414492.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A072863, Nat.add_sub_cancel, A072863.P17686539660329198736.a, A072863.P10357116766084414492.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A072863

/-! ## A072863.P10357116766084414492

`6*a(n-1)-12*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072863

/-- `6*a(n-1)-12*a(n-2)+8*a(n-3)` -/
def P10357116766084414492.Spec : Prop :=
  ∀ n, P10357116766084414492.a n = A072863 n

theorem P10357116766084414492.correct : P10357116766084414492.Spec := by
  intro n
  simp only [A072863]

end A072863

/-! ## A072863.P10193542606772755627

`3^n-A345954(n)`
-/

namespace A072863.P10193542606772755627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A345954 n

end

end A072863.P10193542606772755627

namespace A072863

/-- `3^n-A345954(n)` -/
def P10193542606772755627.Spec : Prop :=
  ∀ n, P10193542606772755627.a n = A072863 n

end A072863

/-! ## A072863.P12221347046017602731

`record[∑[n-2]+6]/2^(2-n)`
-/

namespace A072863.P12221347046017602731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (2 : ℚ) ^ (2 - (n : ℤ) : ℤ)

end

end A072863.P12221347046017602731

namespace A072863

/-- `record[∑[n-2]+6]/2^(2-n)` -/
def P12221347046017602731.Spec : Prop :=
  ∀ n, P12221347046017602731.a n = (A072863 n : ℚ)

end A072863

/-! ## A072863.P5447229417005284834

`2^n+(C(n+1, 2)+n)*2^(n-2)`
-/

namespace A072863.P5447229417005284834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) + (Nat.choose (n + 1) 2 + n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A072863.P5447229417005284834

namespace A072863

/-- `2^n+(C(n+1, 2)+n)*2^(n-2)` -/
def P5447229417005284834.Spec : Prop :=
  ∀ n, P5447229417005284834.a n = (A072863 n : ℚ)

end A072863

/-! ## A072863.P8155447728829878437

`∑[A190050(n)]`
-/

namespace A072863.P8155447728829878437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190050 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072863.P8155447728829878437

namespace A072863

/-- `∑[A190050(n)]` -/
def P8155447728829878437.Spec : Prop :=
  ∀ n, P8155447728829878437.a n = A072863 n

end A072863

/-! ## A072863.P16545983477278208720

`∑[A049611(n)]+2^n`
-/

namespace A072863.P16545983477278208720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 ^ n : ℤ)

end

end A072863.P16545983477278208720

namespace A072863

/-- `∑[A049611(n)]+2^n` -/
def P16545983477278208720.Spec : Prop :=
  ∀ n, P16545983477278208720.a n = A072863 n

end A072863

/-! ## A072863.P11531413840940591931

`∑[A268586(n+1)+2^n]`
-/

namespace A072863.P11531413840940591931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268586 (n + 1) + (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072863.P11531413840940591931

namespace A072863

/-- `∑[A268586(n+1)+2^n]` -/
def P11531413840940591931.Spec : Prop :=
  ∀ n, P11531413840940591931.a n = A072863 n

end A072863

/-! ## A072863.P5488062745752720562

`A081908(n)+A001787(n)`
-/

namespace A072863.P5488062745752720562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081908 n + A001787 n

end

end A072863.P5488062745752720562

namespace A072863

/-- `A081908(n)+A001787(n)` -/
def P5488062745752720562.Spec : Prop :=
  ∀ n, P5488062745752720562.a n = A072863 n

end A072863

/-! ## A072863.P9771155376778239396

`A131577(n)+A084264(n)`
-/

namespace A072863.P9771155376778239396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A084264 n

end

end A072863.P9771155376778239396

namespace A072863

/-- `A131577(n)+A084264(n)` -/
def P9771155376778239396.Spec : Prop :=
  ∀ n, P9771155376778239396.a n = A072863 n

end A072863

/-! ## A072863.P12123871846194792724

`A338229(n)+A000124(n)`
-/

namespace A072863.P12123871846194792724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338229 n + A000124 n

end

end A072863.P12123871846194792724

namespace A072863

/-- `A338229(n)+A000124(n)` -/
def P12123871846194792724.Spec : Prop :=
  ∀ n, P12123871846194792724.a n = A072863 n

end A072863

/-! ## A072863.P799190382475786660

`A084851(n)-A001787(n)`
-/

namespace A072863.P799190382475786660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084851 n - A001787 n

end

end A072863.P799190382475786660

namespace A072863

/-- `A084851(n)-A001787(n)` -/
def P799190382475786660.Spec : Prop :=
  ∀ n, P799190382475786660.a n = A072863 n

end A072863

/-! ## A072863.P463416066070906338

`A000079(n)+∑[A049611(n)]`
-/

namespace A072863.P463416066070906338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072863.P463416066070906338

namespace A072863

/-- `A000079(n)+∑[A049611(n)]` -/
def P463416066070906338.Spec : Prop :=
  ∀ n, P463416066070906338.a n = A072863 n

end A072863

/-! ## A072863.P254756564863251726

`∑[A049611(n)+A011782(n)]`
-/

namespace A072863.P254756564863251726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 n + A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072863.P254756564863251726

namespace A072863

/-- `∑[A049611(n)+A011782(n)]` -/
def P254756564863251726.Spec : Prop :=
  ∀ n, P254756564863251726.a n = A072863 n

end A072863

/-! ## A072863.P389200570838538188

`∑[A058396(n)]-A001787(n)`
-/

namespace A072863.P389200570838538188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001787 n

end

end A072863.P389200570838538188

namespace A072863

/-- `∑[A058396(n)]-A001787(n)` -/
def P389200570838538188.Spec : Prop :=
  ∀ n, P389200570838538188.a n = A072863 n

end A072863

/-! ## A072863.P15899569284979591531

`A049611(n+1)-A001787(n)`
-/

namespace A072863.P15899569284979591531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 (n + 1) - A001787 n

end

end A072863.P15899569284979591531

namespace A072863

/-- `A049611(n+1)-A001787(n)` -/
def P15899569284979591531.Spec : Prop :=
  ∀ n, P15899569284979591531.a n = A072863 n

end A072863

/-! ## A072863.P12643966755926547926

`A081908(n)+A036289(n)/2`
-/

namespace A072863.P12643966755926547926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081908 n : ℚ) + (A036289 n : ℚ) / 2

end

end A072863.P12643966755926547926

namespace A072863

/-- `A081908(n)+A036289(n)/2` -/
def P12643966755926547926.Spec : Prop :=
  ∀ n, P12643966755926547926.a n = (A072863 n : ℚ)

end A072863

/-! ## A072863.P17005623141016674028

`2*A058396(n)-A084858(n)`
-/

namespace A072863.P17005623141016674028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058396 n - A084858 n

end

end A072863.P17005623141016674028

namespace A072863

/-- `2*A058396(n)-A084858(n)` -/
def P17005623141016674028.Spec : Prop :=
  ∀ n, P17005623141016674028.a n = A072863 n

end A072863

/-! ## A072863.P3598389418683983269

`A084851(n)-A036289(n)/2`
-/

namespace A072863.P3598389418683983269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084851 n : ℚ) - (A036289 n : ℚ) / 2

end

end A072863.P3598389418683983269

namespace A072863

/-- `A084851(n)-A036289(n)/2` -/
def P3598389418683983269.Spec : Prop :=
  ∀ n, P3598389418683983269.a n = (A072863 n : ℚ)

end A072863

/-! ## A072863.P1821036439336815574

`A106472(n)+n*A049610(n)`
-/

namespace A072863.P1821036439336815574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106472 n + (n : ℤ) * A049610 n

end

end A072863.P1821036439336815574

namespace A072863

/-- `A106472(n)+n*A049610(n)` -/
def P1821036439336815574.Spec : Prop :=
  ∀ n, P1821036439336815574.a n = A072863 n

end A072863

/-!
# A072864: Numbers m such that the smallest k dividing sigma(k*m^2) is equal to 3.

The programs for A072864, the canonical program `A072864.P6592370251921593002` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072864 has offset 1).

The definition of A072864 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5869 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072864.P7207473299360603937

`sqrt(A074216(n+1))`
-/

namespace A072864.P7207473299360603937
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A074216 (n + 1) : ℝ)

end

end A072864.P7207473299360603937

namespace A072864

/-- `sqrt(A074216(n+1))` -/
def P7207473299360603937.Spec : Prop :=
  ∀ n, P7207473299360603937.a n = (A072864 (n + 1) : ℝ)

end A072864

/-! ## A072864.P3508202772093935921

`lt[(A049060(n+1)%3)², 1]+1`
-/

namespace A072864.P3508202772093935921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049060 (n + 1)) 3 ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A072864.P3508202772093935921

namespace A072864

/-- `lt[(A049060(n+1)%3)², 1]+1` -/
def P3508202772093935921.Spec : Prop :=
  ∀ n, (P3508202772093935921.a n : ℤ) = A072864 (n + 1)

end A072864

/-! ## A072864.P6592370251921593002

`lt[1, gcd(3, A035109(n))]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A072864

/-- `lt[1, gcd(3, A035109(n))]+1` -/
def P6592370251921593002.Spec : Prop :=
  ∀ n, (P6592370251921593002.a n : ℤ) = A072864 (n + 1)

theorem P6592370251921593002.correct : P6592370251921593002.Spec := by
  intro n
  simp only [A072864, Nat.add_sub_cancel]

end A072864

/-! ## A072864.P4595071944264161909

`lt[A065764(n+1)%3, 1]+1`
-/

namespace A072864.P4595071944264161909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065764 (n + 1)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A072864.P4595071944264161909

namespace A072864

/-- `lt[A065764(n+1)%3, 1]+1` -/
def P4595071944264161909.Spec : Prop :=
  ∀ n, (P4595071944264161909.a n : ℤ) = A072864 (n + 1)

end A072864

/-! ## A072864.P1897069242014327145

`lt[(A049060(A028310(n))%3)², 1]`
-/

namespace A072864.P1897069242014327145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049060 (A028310 n).toNat) 3 ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A072864.P1897069242014327145

namespace A072864

/-- `lt[(A049060(A028310(n))%3)², 1]` -/
def P1897069242014327145.Spec : Prop :=
  ∀ n, (P1897069242014327145.a n : ℤ) = A072864 (n + 1)

end A072864

/-! ## A072864.P12915287729644842059

`eq[0, A000203((n+1)²)%3]+1`
-/

namespace A072864.P12915287729644842059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 ((n + 1) ^ 2)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072864.P12915287729644842059

namespace A072864

/-- `eq[0, A000203((n+1)²)%3]+1` -/
def P12915287729644842059.Spec : Prop :=
  ∀ n, (P12915287729644842059.a n : ℤ) = A072864 (n + 1)

end A072864

/-! ## A072864.P8555017153913005834

`lt[A000203((n+2)²)%3, 1]+2`
-/

namespace A072864.P8555017153913005834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 ((n + 2) ^ 2)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A072864.P8555017153913005834

namespace A072864

/-- `lt[A000203((n+2)²)%3, 1]+2` -/
def P8555017153913005834.Spec : Prop :=
  ∀ n, (P8555017153913005834.a n : ℤ) = A072864 (n + 1)

end A072864

/-! ## A072864.P6525504586886377627

`lt[A000203((n-floor(acot(n)))²)%3, 1]`
-/

namespace A072864.P6525504586886377627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (((n : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋) ^ 2).toNat) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A072864.P6525504586886377627

namespace A072864

/-- `lt[A000203((n-floor(acot(n)))²)%3, 1]` -/
def P6525504586886377627.Spec : Prop :=
  ∀ n, (P6525504586886377627.a n : ℤ) = A072864 (n + 1)

end A072864

/-! ## A072864.P13288992613977652232

`lt[A000203((C(2, n²)-n)²)%3, 1]`
-/

namespace A072864.P13288992613977652232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (((Nat.choose 2 (n ^ 2) : ℤ) - (n : ℤ)) ^ 2).toNat) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A072864.P13288992613977652232

namespace A072864

/-- `lt[A000203((C(2, n²)-n)²)%3, 1]` -/
def P13288992613977652232.Spec : Prop :=
  ∀ n, (P13288992613977652232.a n : ℤ) = A072864 (n + 1)

end A072864

/-! ## A072864.P14193081329637020014

`eq[3, A020639(A065764(n+1))]+1`
-/

namespace A072864.P14193081329637020014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A065764 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072864.P14193081329637020014

namespace A072864

/-- `eq[3, A020639(A065764(n+1))]+1` -/
def P14193081329637020014.Spec : Prop :=
  ∀ n, (P14193081329637020014.a n : ℤ) = A072864 (n + 1)

end A072864

/-!
# A072865: Smallest k > 1 dividing tau(k*n) (cf. A000005).

The programs for A072865, there is no canonical definition to state claims against.
-/

/-! ## A072865.P741520383978544714

`A085058(lcm(A085058(n), A349143(n+1)))`
-/

namespace A072865.P741520383978544714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 (Int.lcm (A085058 n) (A349143 (n + 1)))

end

end A072865.P741520383978544714

/-! ## A072865.P7469289875596022701

`A001222(A071187(2*(n+1))!²)`
-/

namespace A072865.P7469289875596022701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.factorial (A071187 (2 * (n + 1))).toNat ^ 2)

end

end A072865.P7469289875596022701

/-! ## A072865.P11053881083383225561

`A001222(A071187(2*(n+1))!^2)`
-/

namespace A072865.P11053881083383225561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.factorial (A071187 (2 * (n + 1))).toNat ^ 2)

end

end A072865.P11053881083383225561

/-! ## A072865.P3562506775974175722

`A000122(2*(n+1))^A236829(n+6)+2`
-/

namespace A072865.P3562506775974175722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000122 (2 * (n + 1)) : ℚ) ^ (A236829 (n + 6) : ℤ) + 2

end

end A072865.P3562506775974175722

/-!
# A072866: Smallest k > 1 dividing tau(k*2^n) (cf. A000005).

The programs for A072866, there is no canonical definition to state claims against.
-/

/-! ## A072866.P14636391278210865154

`A072865(A011782(A327512(n+1)))`
-/

namespace A072866.P14636391278210865154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072865 (A011782 (A327512 (n + 1)).toNat).toNat

end

end A072866.P14636391278210865154

/-! ## A072866.P2962272108065337754

`A072865(2^n)`
-/

namespace A072866.P2962272108065337754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072865 (2 ^ n)

end

end A072866.P2962272108065337754

/-! ## A072866.P5212469523148869888

`A072865(A000079(n))%A005126(n+1)`
-/

namespace A072866.P5212469523148869888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072865 (A000079 n).toNat) (A005126 (n + 1))

end

end A072866.P5212469523148869888

/-! ## A072866.P2407165791173977238

`gcd(A000142(n+3), A072865(A000079(n)))`
-/

namespace A072866.P2407165791173977238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000142 (n + 3)) (A072865 (A000079 n).toNat)

end

end A072866.P2407165791173977238

/-!
# A072868: Numbers k such that sigma(sigma(k) - k) = k.

The programs for A072868, there is no canonical definition to state claims against.
-/

/-! ## A072868.P8845506420995048536

`sqrt(A330824(n+1))`
-/

namespace A072868.P8845506420995048536
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A330824 (n + 1) : ℝ)

end

end A072868.P8845506420995048536

/-! ## A072868.P18344864456475129771

`1+A000668(n+1)`
-/

namespace A072868.P18344864456475129771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000668 (n + 1)

end

end A072868.P18344864456475129771

/-! ## A072868.P13393693200088693402

`A239546(n+1)-1`
-/

namespace A072868.P13393693200088693402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239546 (n + 1) - 1

end

end A072868.P13393693200088693402

/-! ## A072868.P9103360624423707984

`A343733(n+2)+1`
-/

namespace A072868.P9103360624423707984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343733 (n + 2) + 1

end

end A072868.P9103360624423707984

/-! ## A072868.P11202459630010493601

`A379724(n+1)+2`
-/

namespace A072868.P11202459630010493601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379724 (n + 1) + 2

end

end A072868.P11202459630010493601

/-!
# A072869: a(n) = sigma(sigma(n)-n), where sigma = A000203, sum of the divisors of n.

The programs for A072869, the canonical program `A072869.P5637306673270850039` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072869 has offset 2).

The definition of A072869 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(A000203(n+2)-(n+2))` (program `A072869.P5637306673270850039`, by `A072869.P5637306673270850039.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A072869.P5637306673270850039

`A000203(A000203(n+2)-(n+2))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A072869

/-- `A000203(A000203(n+2)-(n+2))` -/
def P5637306673270850039.Spec : Prop :=
  ∀ n, P5637306673270850039.a n = A072869 (n + 2)

theorem P5637306673270850039.correct : P5637306673270850039.Spec := by
  intro n
  simp only [A072869, Nat.add_sub_cancel]

end A072869

/-! ## A072869.P14207683564987685958

`A000203(A001065(n+2))`
-/

namespace A072869.P14207683564987685958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A001065 (n + 2)).toNat

end

end A072869.P14207683564987685958

namespace A072869

/-- `A000203(A001065(n+2))` -/
def P14207683564987685958.Spec : Prop :=
  ∀ n, P14207683564987685958.a n = A072869 (n + 2)

theorem P14207683564987685958.correct : P14207683564987685958.Spec := by
  intro n
  simp only [A072869, Nat.add_sub_cancel, A072869.P14207683564987685958.a, A072869.P5637306673270850039.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072869

/-! ## A072869.P63314847595295274

`∑{d}[n+2-∑{d}[n+2, #], #]`
-/

namespace A072869.P63314847595295274
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A072869.P63314847595295274

namespace A072869

/-- `∑{d}[n+2-∑{d}[n+2, #], #]` -/
def P63314847595295274.Spec : Prop :=
  ∀ n, (P63314847595295274.a n : ℤ) = A072869 (n + 2)

end A072869

/-! ## A072869.P2021876730027208893

`A000203(∑{d}[n+2, #%(n+2)])`
-/

namespace A072869.P2021876730027208893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ d ∈ Nat.divisors (f1 n), d % (n + 2))

end

end A072869.P2021876730027208893

namespace A072869

/-- `A000203(∑{d}[n+2, #%(n+2)])` -/
def P2021876730027208893.Spec : Prop :=
  ∀ n, P2021876730027208893.a n = A072869 (n + 2)

end A072869

/-! ## A072869.P12044025018082719797

`A000203(A091818(n+2)/2)`
-/

namespace A072869.P12044025018082719797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A091818 (n + 2) : ℚ) / 2)).toNat

end

end A072869.P12044025018082719797

namespace A072869

/-- `A000203(A091818(n+2)/2)` -/
def P12044025018082719797.Spec : Prop :=
  ∀ n, P12044025018082719797.a n = A072869 (n + 2)

end A072869

/-! ## A072869.P2485662613140515343

`A000203(A000203(2*n-(n-2))-2-n)`
-/

namespace A072869.P2485662613140515343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 ((2 * n : ℤ) - ((n : ℤ) - 2)).toNat - 2 - (n : ℤ)).toNat

end

end A072869.P2485662613140515343

namespace A072869

/-- `A000203(A000203(2*n-(n-2))-2-n)` -/
def P2485662613140515343.Spec : Prop :=
  ∀ n, P2485662613140515343.a n = A072869 (n + 2)

end A072869

/-! ## A072869.P11218465915524643527

`∑{d}[A173455(n+2), #]`
-/

namespace A072869.P11218465915524643527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A072869.P11218465915524643527

namespace A072869

/-- `∑{d}[A173455(n+2), #]` -/
def P11218465915524643527.Spec : Prop :=
  ∀ n, (P11218465915524643527.a n : ℤ) = A072869 (n + 2)

end A072869

/-! ## A072869.P18305131331970264282

`A000203(A173455(n+2))`
-/

namespace A072869.P18305131331970264282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A173455 (n + 2)).toNat

end

end A072869.P18305131331970264282

namespace A072869

/-- `A000203(A173455(n+2))` -/
def P18305131331970264282.Spec : Prop :=
  ∀ n, P18305131331970264282.a n = A072869 (n + 2)

end A072869

/-! ## A072869.P16674913539504645995

`A000203(Δ[A153485(n+1)])`
-/

namespace A072869.P16674913539504645995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (n + 1) - f1 n).toNat

end

end A072869.P16674913539504645995

namespace A072869

/-- `A000203(Δ[A153485(n+1)])` -/
def P16674913539504645995.Spec : Prop :=
  ∀ n, P16674913539504645995.a n = A072869 (n + 2)

end A072869

/-! ## A072869.P4173447007495425158

`A000203(A048050(n+2)+1)`
-/

namespace A072869.P4173447007495425158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A048050 (n + 2) + 1).toNat

end

end A072869.P4173447007495425158

namespace A072869

/-- `A000203(A048050(n+2)+1)` -/
def P4173447007495425158.Spec : Prop :=
  ∀ n, P4173447007495425158.a n = A072869 (n + 2)

end A072869

/-! ## A072869.P15082356335028598752

`A000203(A237588(n+2)+n+1)`
-/

namespace A072869.P15082356335028598752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A237588 (n + 2) + (n + 1 : ℤ)).toNat

end

end A072869.P15082356335028598752

namespace A072869

/-- `A000203(A237588(n+2)+n+1)` -/
def P15082356335028598752.Spec : Prop :=
  ∀ n, P15082356335028598752.a n = A072869 (n + 2)

theorem P15082356335028598752.correct : P15082356335028598752.Spec := by
  intro n
  simp only [A072869, Nat.add_sub_cancel, A072869.P15082356335028598752.a, A072869.P5637306673270850039.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A237588, A237588.P10590847318200798620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072869

/-! ## A072869.P16067860704214580018

`A000203(A033880(n+2)+n+2)`
-/

namespace A072869.P16067860704214580018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A033880 (n + 2) + (n + 2 : ℤ)).toNat

end

end A072869.P16067860704214580018

namespace A072869

/-- `A000203(A033880(n+2)+n+2)` -/
def P16067860704214580018.Spec : Prop :=
  ∀ n, P16067860704214580018.a n = A072869 (n + 2)

theorem P16067860704214580018.correct : P16067860704214580018.Spec := by
  intro n
  simp only [A072869, Nat.add_sub_cancel, A072869.P16067860704214580018.a, A072869.P5637306673270850039.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033880, A033880.P6005875780263802708.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072869

/-! ## A072869.P17164446695162126244

`A178601(n+2)+A001065(n+2)`
-/

namespace A072869.P17164446695162126244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178601 (n + 2) + A001065 (n + 2)

end

end A072869.P17164446695162126244

namespace A072869

/-- `A178601(n+2)+A001065(n+2)` -/
def P17164446695162126244.Spec : Prop :=
  ∀ n, P17164446695162126244.a n = A072869 (n + 2)

end A072869

/-! ## A072869.P10285457092196589301

`A000203(A001478(n+2)+A000203(n+2))`
-/

namespace A072869.P10285457092196589301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A001478 (n + 2) + A000203 (n + 2)).toNat

end

end A072869.P10285457092196589301

namespace A072869

/-- `A000203(A001478(n+2)+A000203(n+2))` -/
def P10285457092196589301.Spec : Prop :=
  ∀ n, P10285457092196589301.a n = A072869 (n + 2)

theorem P10285457092196589301.correct : P10285457092196589301.Spec := by
  intro n
  simp only [A072869, Nat.add_sub_cancel, A072869.P10285457092196589301.a, A072869.P5637306673270850039.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001478, A001478.P11279598861711037921.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072869

/-! ## A072869.P12544811647178888286

`A000203(Δ[A244048(n+2)])`
-/

namespace A072869.P12544811647178888286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244048 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (n + 1) - f1 n).toNat

end

end A072869.P12544811647178888286

namespace A072869

/-- `A000203(Δ[A244048(n+2)])` -/
def P12544811647178888286.Spec : Prop :=
  ∀ n, P12544811647178888286.a n = A072869 (n + 2)

end A072869

/-! ## A072869.P12233028343476113005

`A000203(A319699(2*(n+2)))`
-/

namespace A072869.P12233028343476113005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A319699 (2 * (n + 2))).toNat

end

end A072869.P12233028343476113005

namespace A072869

/-- `A000203(A319699(2*(n+2)))` -/
def P12233028343476113005.Spec : Prop :=
  ∀ n, P12233028343476113005.a n = A072869 (n + 2)

end A072869

/-! ## A072869.P7945641796996482990

`A245092(A062967(n+2))`
-/

namespace A072869.P7945641796996482990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A062967 (n + 2)).toNat

end

end A072869.P7945641796996482990

namespace A072869

/-- `A245092(A062967(n+2))` -/
def P7945641796996482990.Spec : Prop :=
  ∀ n, P7945641796996482990.a n = A072869 (n + 2)

end A072869

/-! ## A072869.P3587741679946133622

`A245092(A294015(n+2)-2)`
-/

namespace A072869.P3587741679946133622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A294015 (n + 2) - 2).toNat

end

end A072869.P3587741679946133622

namespace A072869

/-- `A245092(A294015(n+2)-2)` -/
def P3587741679946133622.Spec : Prop :=
  ∀ n, P3587741679946133622.a n = A072869 (n + 2)

end A072869

/-! ## A072869.P3595326508215198696

`A326065(A091818(n+2))`
-/

namespace A072869.P3595326508215198696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (A091818 (n + 2)).toNat

end

end A072869.P3595326508215198696

namespace A072869

/-- `A326065(A091818(n+2))` -/
def P3595326508215198696.Spec : Prop :=
  ∀ n, P3595326508215198696.a n = A072869 (n + 2)

end A072869

/-!
# A072870: A Ramanujan congruence modulo 5^2 related to partition numbers: a(n) = p(25n+24)/25 where p(k) is the k-th partition number.

The programs for A072870, there is no canonical definition to state claims against.
-/

/-! ## A072870.P17421762469480098746

`A000041(25*n+24)/25`
-/

namespace A072870.P17421762469480098746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (25 * n + 24) : ℚ) / 25

end

end A072870.P17421762469480098746

/-!
# A072871: Smallest partition number divisible by n.

The programs for A072871, there is no canonical definition to state claims against.
-/

/-! ## A072871.P9709156132656838104

`(n+1)*A235704(n+1)`
-/

namespace A072871.P9709156132656838104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A235704 (n + 1)

end

end A072871.P9709156132656838104

/-! ## A072871.P2020707272814492201

`A000041(A046641(n+1))`
-/

namespace A072871.P2020707272814492201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A046641 (n + 1)).toNat

end

end A072871.P2020707272814492201

/-! ## A072871.P4891063835690476287

`∑{d}[A046641(n+1), A000837(#)]`
-/

namespace A072871.P4891063835690476287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000837 d

end

end A072871.P4891063835690476287

/-! ## A072871.P8741659116891275183

`A057427(n+1)+A000065(A046641(n+1))`
-/

namespace A072871.P8741659116891275183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) + A000065 (A046641 (n + 1)).toNat

end

end A072871.P8741659116891275183

/-! ## A072871.P36448383842382114

`A000065(A046641(n+1))+A000040(n+2)%2`
-/

namespace A072871.P36448383842382114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (A046641 (n + 1)).toNat + Int.tmod (A000040 (n + 2)) 2

end

end A072871.P36448383842382114

/-! ## A072871.P16025418964953673862

`A000065(A046641(n+1))+A005408(n+9)%2`
-/

namespace A072871.P16025418964953673862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (A046641 (n + 1)).toNat + Int.tmod (A005408 (n + 9)) 2

end

end A072871.P16025418964953673862

/-! ## A072871.P3266708863278383689

`A000065(A046641(n+1))+A014963(A008458(n))`
-/

namespace A072871.P3266708863278383689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (A046641 (n + 1)).toNat + A014963 (A008458 n).toNat

end

end A072871.P3266708863278383689

/-! ## A072871.P15423969377914234755

`A000065(A046641(n+1)%A000079(n+1))+1`
-/

namespace A072871.P15423969377914234755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (Int.tmod (A046641 (n + 1)) (A000079 (n + 1))).toNat + 1

end

end A072871.P15423969377914234755

/-!
# A072872: a(n) is the smallest positive number k such that n divides 2^k - k.

The programs for A072872, there is no canonical definition to state claims against.
-/

/-! ## A072872.P8446809714632469028

`A028310(A135359(n+1))`
-/

namespace A072872.P8446809714632469028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A135359 (n + 1)).toNat

end

end A072872.P8446809714632469028

/-! ## A072872.P14770816838209355022

`A135359(n+1)+A000007(n)`
-/

namespace A072872.P14770816838209355022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135359 (n + 1) + A000007 n

end

end A072872.P14770816838209355022

/-! ## A072872.P4850150315153262838

`A135359(n+1)+and(1, A076976(n+1))`
-/

namespace A072872.P4850150315153262838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135359 (n + 1) + Int.land 1 (A076976 (n + 1))

end

end A072872.P4850150315153262838

/-! ## A072872.P8471173975385844185

`A091090(2*a(n-1))*A135359(n+1)` with `a(0)=1`
-/

namespace A072872.P8471173975385844185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A091090 (2 * a (n - 1)).toNat * A135359 (n + 1)

end

end A072872.P8471173975385844185

/-! ## A072872.P6836116181744904034

`A135359(n+1)%(n*A033885(a(n-1)+1))` with `a(0)=1`
-/

namespace A072872.P6836116181744904034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A135359 (n + 1)) ((n : ℤ) * A033885 (a (n - 1) + 1).toNat)

end

end A072872.P6836116181744904034

/-! ## A072872.P675132726597738606

`A135359(n+1)+and(1, A247248(A000040(n+1)+1))`
-/

namespace A072872.P675132726597738606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135359 (n + 1) + Int.land 1 (A247248 (A000040 (n + 1) + 1).toNat)

end

end A072872.P675132726597738606

/-! ## A072872.P15525732938497384921

`A135359(n+1)+A247248(n+1)-A135366(n+1)`
-/

namespace A072872.P15525732938497384921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135359 (n + 1) + (A247248 (n + 1) - A135366 (n + 1))

end

end A072872.P15525732938497384921

/-!
# A072873: Numbers k such that Sum_i ( e(i)/p(i) ) is an integer, where the prime factorization of k is Product_i ( p(i)^e(i) ).

The programs for A072873, there is no canonical definition to state claims against.
-/

/-! ## A072873.P4777910955749651151

`record[gcd(A002473(n+1), A086300(n+1))]`
-/

namespace A072873.P4777910955749651151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002473 (n + 1)) (A086300 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072873.P4777910955749651151

/-! ## A072873.P650776235453586652

`record[gcd(A001694(n+1), A258565(n+1))]`
-/

namespace A072873.P650776235453586652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001694 (n + 1)) (A258565 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072873.P650776235453586652

/-! ## A072873.P7993908856801772158

`filter[A090958(n), A359552(#)]`
-/

namespace A072873.P7993908856801772158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359552 (f1 j).toNat = 1) n)

end

end A072873.P7993908856801772158

/-! ## A072873.P1801266509539068499

`filter[A001694(n+1), A359552(#)]`
-/

namespace A072873.P1801266509539068499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359552 (f1 j).toNat = 1) n)

end

end A072873.P1801266509539068499

/-! ## A072873.P5828801632471432780

`filter[A054744(n+1), A359552(#)]`
-/

namespace A072873.P5828801632471432780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359552 (f1 j).toNat = 1) n)

end

end A072873.P5828801632471432780

/-!
# A072874: Numbers k such that A000213(k) == 1 (mod k).

The programs for A072874, there is no canonical definition to state claims against.
-/

/-! ## A072874.P13394883767852428008

`record[and(n+1, A279095(n+1))]`
-/

namespace A072874.P13394883767852428008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A279095 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072874.P13394883767852428008

/-! ## A072874.P2134334462282876722

`record[A039787(n+1)-(∏[gcd(2, n)]-1)]`
-/

namespace A072874.P2134334462282876722
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039787 (n + 1) - (((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072874.P2134334462282876722

/-! ## A072874.P2963080287793939569

`record[A120680(A348227(n))]`
-/

namespace A072874.P2963080287793939569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120680 (A348227 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072874.P2963080287793939569

/-! ## A072874.P4740962288003244831

`record[A000005(record[A331844(n)])]`
-/

namespace A072874.P4740962288003244831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331844 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072874.P4740962288003244831

/-! ## A072874.P11532023686715942063

`record[A343068(A343072(n)+1)]`
-/

namespace A072874.P11532023686715942063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343068 (A343072 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072874.P11532023686715942063

/-!
# A072875: Smallest start for a run of n consecutive numbers of which the i-th has exactly i prime factors.

The programs for A072875, there is no canonical definition to state claims against.
-/

/-! ## A072875.P13347868120190136680

`A124592(n+1)-n`
-/

namespace A072875.P13347868120190136680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124592 (n + 1) - (n : ℤ)

end

end A072875.P13347868120190136680

/-! ## A072875.P15900237924822161322

`abs(A124592(n+1)+A001489(n))`
-/

namespace A072875.P15900237924822161322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124592 (n + 1) + A001489 n|

end

end A072875.P15900237924822161322

/-! ## A072875.P15357193241157670826

`abs(A124592(n+1)+A076313(n))`
-/

namespace A072875.P15357193241157670826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124592 (n + 1) + A076313 n|

end

end A072875.P15357193241157670826

/-! ## A072875.P14380185507402664875

`abs(A124592(n+1)+A001057(2*n))`
-/

namespace A072875.P14380185507402664875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124592 (n + 1) + A001057 (2 * n)|

end

end A072875.P14380185507402664875

/-! ## A072875.P6907784464452201724

`A390768(A000079(n))+A124592(n+1)`
-/

namespace A072875.P6907784464452201724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390768 (A000079 n).toNat + A124592 (n + 1)

end

end A072875.P6907784464452201724

/-!
# A072876: a(1) = a(2) = a(3) = a(4) = 1 and a(n) = (a(n-1)*a(n-3) + a(n-2)^3)/a(n-4) for n >= 5.

The programs for A072876, the canonical program `A072876.P4070992014210092203` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072876 has offset 1).

The definition of A072876 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072876.P4070992014210092203

`(a(n-1)*a(n-3)+a(n-2)^3)/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072876

/-- `(a(n-1)*a(n-3)+a(n-2)^3)/a(n-4)` -/
def P4070992014210092203.Spec : Prop :=
  ∀ n, P4070992014210092203.a n = (A072876 (n + 1) : ℚ)

end A072876

/-! ## A072876.P4085254284513512934

`∑{d}[A032104(n+1), A304178(#)]`
-/

namespace A072876.P4085254284513512934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A304178 d

end

end A072876.P4085254284513512934

namespace A072876

/-- `∑{d}[A032104(n+1), A304178(#)]` -/
def P4085254284513512934.Spec : Prop :=
  ∀ n, P4085254284513512934.a n = A072876 (n + 1)

end A072876

/-! ## A072876.P547178491767968873

`A167661(A247630(n*A167661(n)))`
-/

namespace A072876.P547178491767968873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167661 (A247630 ((n : ℤ) * A167661 n).toNat).toNat

end

end A072876.P547178491767968873

namespace A072876

/-- `A167661(A247630(n*A167661(n)))` -/
def P547178491767968873.Spec : Prop :=
  ∀ n, P547178491767968873.a n = A072876 (n + 1)

end A072876

/-! ## A072876.P224763530627365922

`A167661(A247630(n)^A167661(n))`
-/

namespace A072876.P224763530627365922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167661 (SequenceMachineLib.roundAway ((A247630 n : ℚ) ^ (A167661 n : ℤ))).toNat

end

end A072876.P224763530627365922

namespace A072876

/-- `A167661(A247630(n)^A167661(n))` -/
def P224763530627365922.Spec : Prop :=
  ∀ n, P224763530627365922.a n = A072876 (n + 1)

end A072876

/-! ## A072876.P12472048330979855489

`A167661(C(A247630(n), A167661(n)))`
-/

namespace A072876.P12472048330979855489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167661 (Nat.choose (A247630 n).toNat (A167661 n).toNat)

end

end A072876.P12472048330979855489

namespace A072876

/-- `A167661(C(A247630(n), A167661(n)))` -/
def P12472048330979855489.Spec : Prop :=
  ∀ n, P12472048330979855489.a n = A072876 (n + 1)

end A072876

/-!
# A072877: a(1) = a(2) = a(3) = a(4) = 1; a(n) = (a(n-1)*a(n-3) + a(n-2)^4)/a(n-4).

The programs for A072877, the canonical program `A072877.P11603287016579157431` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072877 has offset 1).

The definition of A072877 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072877.P11603287016579157431

`(a(n-1)*a(n-3)+a(n-2)^4)/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072877

/-- `(a(n-1)*a(n-3)+a(n-2)^4)/a(n-4)` -/
def P11603287016579157431.Spec : Prop :=
  ∀ n, P11603287016579157431.a n = (A072877 (n + 1) : ℚ)

end A072877

/-! ## A072877.P31496262108664599

`A002723(A383493(n))`
-/

namespace A072877.P31496262108664599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002723 (A383493 n).toNat

end

end A072877.P31496262108664599

namespace A072877

/-- `A002723(A383493(n))` -/
def P31496262108664599.Spec : Prop :=
  ∀ n, P31496262108664599.a n = A072877 (n + 1)

end A072877

/-! ## A072877.P12004147711054032723

`A002723(A383801(n))`
-/

namespace A072877.P12004147711054032723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002723 (A383801 n).toNat

end

end A072877.P12004147711054032723

namespace A072877

/-- `A002723(A383801(n))` -/
def P12004147711054032723.Spec : Prop :=
  ∀ n, P12004147711054032723.a n = A072877 (n + 1)

end A072877

/-! ## A072877.P1156846736446215026

`A301765(A001156(∑[n]))`
-/

namespace A072877.P1156846736446215026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301765 (A001156 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A072877.P1156846736446215026

namespace A072877

/-- `A301765(A001156(∑[n]))` -/
def P1156846736446215026.Spec : Prop :=
  ∀ n, P1156846736446215026.a n = A072877 (n + 1)

end A072877

/-!
# A072878: a(n) = 4*a(n-1)*a(n-2)*a(n-3) - a(n-4) with a(1) = a(2) = a(3) = a(4) = 1.

The programs for A072878, the canonical program `A072878.P3974231100752503524` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072878 has offset 1).

The definition of A072878 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)*a(n-2)*a(n-3)-a(n-4)` (program `A072878.P3974231100752503524`, by `A072878.P3974231100752503524.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A072878.P3974231100752503524

`4*a(n-1)*a(n-2)*a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072878

/-- `4*a(n-1)*a(n-2)*a(n-3)-a(n-4)` -/
def P3974231100752503524.Spec : Prop :=
  ∀ n, P3974231100752503524.a n = A072878 (n + 1)

theorem P3974231100752503524.correct : P3974231100752503524.Spec := by
  intro n
  simp only [A072878, Nat.add_sub_cancel]

end A072878

/-! ## A072878.P16045026683655955352

`(a(n-1)²+a(n-3)²+a(n-2)²)/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A072878.P16045026683655955352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  (a (n - 1) ^ 2 + a (n - 3) ^ 2 + a (n - 2) ^ 2) / a (n - 4)

end

end A072878.P16045026683655955352

namespace A072878

/-- `(a(n-1)²+a(n-3)²+a(n-2)²)/a(n-4)` -/
def P16045026683655955352.Spec : Prop :=
  ∀ n, P16045026683655955352.a n = (A072878 (n + 1) : ℚ)

end A072878

/-! ## A072878.P8856974161291424853

`A061292(n)/2`
-/

namespace A072878.P8856974161291424853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061292 n : ℚ) / 2

end

end A072878.P8856974161291424853

namespace A072878

/-- `A061292(n)/2` -/
def P8856974161291424853.Spec : Prop :=
  ∀ n, P8856974161291424853.a n = (A072878 (n + 1) : ℚ)

end A072878

/-! ## A072878.P4830441220632327317

`sqrt(A276095(n+1))`
-/

namespace A072878.P4830441220632327317
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A276095 (n + 1) : ℝ)

end

end A072878.P4830441220632327317

namespace A072878

/-- `sqrt(A276095(n+1))` -/
def P4830441220632327317.Spec : Prop :=
  ∀ n, P4830441220632327317.a n = (A072878 (n + 1) : ℝ)

end A072878

/-! ## A072878.P10467380919208431111

`A276095(n+1)%A061292(n)`
-/

namespace A072878.P10467380919208431111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276095 (n + 1)) (A061292 n)

end

end A072878.P10467380919208431111

namespace A072878

/-- `A276095(n+1)%A061292(n)` -/
def P10467380919208431111.Spec : Prop :=
  ∀ n, P10467380919208431111.a n = A072878 (n + 1)

end A072878

/-!
# A072879: a(n) = 5*a(n-1)*a(n-2)*a(n-3)*a(n-4) - a(n-5) with a(1) = a(2) = a(3) = a(4) = a(5) = 1.

The programs for A072879, the canonical program `A072879.P18026687431420521070` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072879 has offset 1).

The definition of A072879 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)*a(n-2)*a(n-3)*a(n-4)-a(n-5)` (program `A072879.P18026687431420521070`, by `A072879.P18026687431420521070.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A072879.P18026687431420521070

`5*a(n-1)*a(n-2)*a(n-3)*a(n-4)-a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072879

/-- `5*a(n-1)*a(n-2)*a(n-3)*a(n-4)-a(n-5)` -/
def P18026687431420521070.Spec : Prop :=
  ∀ n, P18026687431420521070.a n = A072879 (n + 1)

theorem P18026687431420521070.correct : P18026687431420521070.Spec := by
  intro n
  simp only [A072879, Nat.add_sub_cancel]

end A072879

/-! ## A072879.P4029972447715337912

`(a(n-1)²+a(n-2)²+a(n-3)²+a(n-4)²)/a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A072879.P4029972447715337912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1, 1, 1] fun n a =>
  (a (n - 1) ^ 2 + a (n - 2) ^ 2 + a (n - 3) ^ 2 + a (n - 4) ^ 2) / a (n - 5)

end

end A072879.P4029972447715337912

namespace A072879

/-- `(a(n-1)²+a(n-2)²+a(n-3)²+a(n-4)²)/a(n-5)` -/
def P4029972447715337912.Spec : Prop :=
  ∀ n, P4029972447715337912.a n = (A072879 (n + 1) : ℚ)

end A072879

/-! ## A072879.P18075927366352077775

`sqrt(A276097(n+1))`
-/

namespace A072879.P18075927366352077775
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A276097 (n + 1) : ℝ)

end

end A072879.P18075927366352077775

namespace A072879

/-- `sqrt(A276097(n+1))` -/
def P18075927366352077775.Spec : Prop :=
  ∀ n, P18075927366352077775.a n = (A072879 (n + 1) : ℝ)

end A072879

/-! ## A072879.P8534307016496944727

`root(A276097(n+1), A014963(ceil(2^(n-1))))`
-/

namespace A072879.P8534307016496944727
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A276097 (n + 1) : ℝ) ^ (1 / (A014963 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat : ℝ))

end

end A072879.P8534307016496944727

namespace A072879

/-- `root(A276097(n+1), A014963(ceil(2^(n-1))))` -/
def P8534307016496944727.Spec : Prop :=
  ∀ n, P8534307016496944727.a n = (A072879 (n + 1) : ℝ)

end A072879

/-! ## A072879.P9101666359615975931

`root(A276097(n+1), A035250(A035250(n+1)))`
-/

namespace A072879.P9101666359615975931
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A276097 (n + 1) : ℝ) ^ (1 / (A035250 (A035250 (n + 1)).toNat : ℝ))

end

end A072879.P9101666359615975931

namespace A072879

/-- `root(A276097(n+1), A035250(A035250(n+1)))` -/
def P9101666359615975931.Spec : Prop :=
  ∀ n, P9101666359615975931.a n = (A072879 (n + 1) : ℝ)

end A072879

/-!
# A072880: A recurrence of order 6: a(1)=a(2)=a(3)=a(4)=a(5)=a(6)=1; a(n) = (a(n-1)^2 + a(n-2)^2 + a(n-3)^2 + a(n-4)^2 + a(n-5)^2)/a(n-6).

The programs for A072880, the canonical program `A072880.P5183322244546326676` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072880 has offset 1).

The definition of A072880 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072880.P5183322244546326676

`6*a(n-1)*a(n-2)*a(n-3)*a(n-4)*a(n-5)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072880

/-- `6*a(n-1)*a(n-2)*a(n-3)*a(n-4)*a(n-5)-a(n-6)` -/
def P5183322244546326676.Spec : Prop :=
  ∀ n, P5183322244546326676.a n = A072880 (n + 1)

theorem P5183322244546326676.correct : P5183322244546326676.Spec := by
  intro n
  simp only [A072880, Nat.add_sub_cancel]

end A072880

/-! ## A072880.P1719123468141931661

`A112959(n^A174631(n))`
-/

namespace A072880.P1719123468141931661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112959 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A174631 n : ℤ))).toNat

end

end A072880.P1719123468141931661

namespace A072880

/-- `A112959(n^A174631(n))` -/
def P1719123468141931661.Spec : Prop :=
  ∀ n, P1719123468141931661.a n = A072880 (n + 1)

end A072880

/-! ## A072880.P2560485737357758130

`A112959(∑[abs(A284993(n))])`
-/

namespace A072880.P2560485737357758130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A284993 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112959 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A072880.P2560485737357758130

namespace A072880

/-- `A112959(∑[abs(A284993(n))])` -/
def P2560485737357758130.Spec : Prop :=
  ∀ n, P2560485737357758130.a n = A072880 (n + 1)

end A072880

/-! ## A072880.P3213510712924530795

`A112959(∑[A284993(n)²])`
-/

namespace A072880.P3213510712924530795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284993 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112959 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A072880.P3213510712924530795

namespace A072880

/-- `A112959(∑[A284993(n)²])` -/
def P3213510712924530795.Spec : Prop :=
  ∀ n, P3213510712924530795.a n = A072880 (n + 1)

end A072880

/-! ## A072880.P15621178850887266549

`A112959(n^A035661(n+1))`
-/

namespace A072880.P15621178850887266549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112959 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A035661 (n + 1) : ℤ))).toNat

end

end A072880.P15621178850887266549

namespace A072880

/-- `A112959(n^A035661(n+1))` -/
def P15621178850887266549.Spec : Prop :=
  ∀ n, P15621178850887266549.a n = A072880 (n + 1)

end A072880

/-!
# A072881: a(1)=a(2)=a(3)=1; for n>3, a(n)=(a(n-1)*a(n-2)+a(n-1)+a(n-2))/a(n-3).

The programs for A072881, the canonical program `A072881.P4395940899383263691` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072881 has offset 1).

The definition of A072881 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072881.P4395940899383263691

`(4-(-1)^n)*a(n-1)-a(n-2)-1` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072881

/-- `(4-(-1)^n)*a(n-1)-a(n-2)-1` -/
def P4395940899383263691.Spec : Prop :=
  ∀ n, P4395940899383263691.a n = A072881 (n + 1)

theorem P4395940899383263691.correct : P4395940899383263691.Spec := by
  intro n
  simp only [A072881, Nat.add_sub_cancel]

end A072881

/-! ## A072881.P5512398325926034504

`(a(n-1)*a(n-2)+a(n-1)+a(n-2))/a(n-3)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A072881.P5512398325926034504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1, 3] fun n a =>
  (a (n - 1) * a (n - 2) + a (n - 1) + a (n - 2)) / a (n - 3)

end

end A072881.P5512398325926034504

namespace A072881

/-- `(a(n-1)*a(n-2)+a(n-1)+a(n-2))/a(n-3)` -/
def P5512398325926034504.Spec : Prop :=
  ∀ n, P5512398325926034504.a n = (A072881 (n + 1) : ℚ)

end A072881

/-! ## A072881.P11703520902196836168

`(a(n-1)*a(n-2)+a(n-1)+a(n-2))/a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A072881.P11703520902196836168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (a (n - 1) * a (n - 2) + (a (n - 1) + a (n - 2))) / a (n - 3)

end

end A072881.P11703520902196836168

namespace A072881

/-- `(a(n-1)*a(n-2)+a(n-1)+a(n-2))/a(n-3)` -/
def P11703520902196836168.Spec : Prop :=
  ∀ n, P11703520902196836168.a n = (A072881 (n + 1) : ℚ)

end A072881

/-! ## A072881.P2497882262168816333

`A008616(A026023(n)*A037952(n))`
-/

namespace A072881.P2497882262168816333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A026023 n * A037952 n).toNat

end

end A072881.P2497882262168816333

namespace A072881

/-- `A008616(A026023(n)*A037952(n))` -/
def P2497882262168816333.Spec : Prop :=
  ∀ n, P2497882262168816333.a n = A072881 (n + 1)

end A072881

/-!
# A072882: A nonlinear recurrence of order 3: a(1)=a(2)=a(3)=1; a(n)=(a(n-1)+a(n-2))^2/a(n-3).

The programs for A072882, the canonical program `A072882.P9009503693446963644` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072882 has offset 1).

The definition of A072882 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072882.P5926429627844909588

`(a(n-1)+a(n-2))²/a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A072882.P5926429627844909588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (a (n - 1) + a (n - 2)) ^ 2 / a (n - 3)

end

end A072882.P5926429627844909588

namespace A072882

/-- `(a(n-1)+a(n-2))²/a(n-3)` -/
def P5926429627844909588.Spec : Prop :=
  ∀ n, P5926429627844909588.a n = (A072882 (n + 1) : ℚ)

end A072882

/-! ## A072882.P9009503693446963644

`9*a(n-1)*a(n-2)-2*a(n-1)-2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072882

/-- `9*a(n-1)*a(n-2)-2*a(n-1)-2*a(n-2)-a(n-3)` -/
def P9009503693446963644.Spec : Prop :=
  ∀ n, P9009503693446963644.a n = A072882 (n + 1)

theorem P9009503693446963644.correct : P9009503693446963644.Spec := by
  intro n
  simp only [A072882, Nat.add_sub_cancel]

end A072882

/-! ## A072882.P16536859703107148633

`A064098(n+1)²`
-/

namespace A072882.P16536859703107148633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064098 (n + 1) ^ 2

end

end A072882.P16536859703107148633

namespace A072882

/-- `A064098(n+1)²` -/
def P16536859703107148633.Spec : Prop :=
  ∀ n, P16536859703107148633.a n = A072882 (n + 1)

end A072882

/-! ## A072882.P7287692170959500370

`(A061021(n)/3)²`
-/

namespace A072882.P7287692170959500370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A061021 n : ℚ) / 3) ^ 2

end

end A072882.P7287692170959500370

namespace A072882

/-- `(A061021(n)/3)²` -/
def P7287692170959500370.Spec : Prop :=
  ∀ n, P7287692170959500370.a n = (A072882 (n + 1) : ℚ)

end A072882

/-! ## A072882.P7172101897822131552

`A064098(n+1)^A006530(∏{digits}[n, 2^#])`
-/

namespace A072882.P7172101897822131552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064098 (n + 1) : ℚ) ^ (A006530 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod : ℤ)

end

end A072882.P7172101897822131552

namespace A072882

/-- `A064098(n+1)^A006530(∏{digits}[n, 2^#])` -/
def P7172101897822131552.Spec : Prop :=
  ∀ n, P7172101897822131552.a n = (A072882 (n + 1) : ℚ)

end A072882

/-!
# A072883: Least k >= 1 such that k^n + n is prime, or 0 if no such k exists.

The programs for A072883, there is no canonical definition to state claims against.
-/

/-! ## A072883.P4187860364792824659

`A303121(n+1)^Δ[A062298(n+1)]`
-/

namespace A072883.P4187860364792824659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303121 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A072883.P4187860364792824659

/-! ## A072883.P13036012417974169894

`A303121(n+1)^Δ[A065855(n+1)]`
-/

namespace A072883.P13036012417974169894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303121 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A072883.P13036012417974169894

/-! ## A072883.P9756266881517528535

`gcd(Δ[A000720(n+1)], A303121(n+1))`
-/

namespace A072883.P9756266881517528535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A303121 (n + 1))

end

end A072883.P9756266881517528535

/-! ## A072883.P5252881468996952211

`A303121(n+1)^A077896(Δ[A000720(n+1)])`
-/

namespace A072883.P5252881468996952211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303121 (n + 1) : ℚ) ^ (A077896 (f1 (n + 1) - f1 n).toNat : ℤ)

end

end A072883.P5252881468996952211

/-! ## A072883.P3893613443118731371

`A020639(A243147(n+1))^A130296(n+1)`
-/

namespace A072883.P3893613443118731371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (A243147 (n + 1)).toNat : ℚ) ^ (A130296 (n + 1) : ℤ)

end

end A072883.P3893613443118731371

/-!
# A072884: 3rd-order digital invariants: the sum of the cubes of the digits of n equals some number k and the sum of the cubes of the digits of k equals n.

The programs for A072884, there is no canonical definition to state claims against.
-/

/-! ## A072884.P5048308877967135634

`eq[A028310(n), A055012(A055012(n))]`
-/

namespace A072884.P5048308877967135634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055012 (A055012 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072884.P5048308877967135634

/-! ## A072884.P2371783284121810289

`A046156(A084724(n+1)-n)`
-/

namespace A072884.P2371783284121810289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046156 (A084724 (n + 1) - (n : ℤ)).toNat

end

end A072884.P2371783284121810289

/-! ## A072884.P9480708860360024402

`A046156(comp[a(n-1)+val(n, 2)])` with `a(0)=0`
-/

namespace A072884.P9480708860360024402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + SequenceMachineLib.valuation n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046156 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A072884.P9480708860360024402

/-!
# A072886: The s-aints, numbers generated like the Aronson series from a generating sentence, "S ain't the second, third, fourth, fifth . . . letter of this sentence.".

The programs for A072886, there is no canonical definition to state claims against.
-/

/-! ## A072886.P10166663207217652692

`lt[A050000(3*n+5), A129129(A132764(n))]`
-/

namespace A072886.P10166663207217652692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050000 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129129 (A132764 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072886.P10166663207217652692

/-! ## A072886.P14260534133915252940

`lt[A260671(n), A374682(A360179(n+1))]`
-/

namespace A072886.P14260534133915252940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374682 (A360179 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072886.P14260534133915252940

/-! ## A072886.P13322463659819981275

`∩[A123068(n+1), A376573(n+1)]`
-/

namespace A072886.P13322463659819981275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072886.P13322463659819981275

/-! ## A072886.P10029484118013563558

`lt[A055231(n+2), A344859(A013947(n+1))]`
-/

namespace A072886.P10029484118013563558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344859 (A013947 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072886.P10029484118013563558

/-! ## A072886.P13129167131240629834

`lt[A123495(n+3)-A058054(n+2), A290103(n+1)]`
-/

namespace A072886.P13129167131240629834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123495 (n + 3) - A058054 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072886.P13129167131240629834

/-! ## A072886.P17314429848100333929

`lt[A028391(A355529(n+1)), A058054(n+2)]`
-/

namespace A072886.P17314429848100333929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 (A355529 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058054 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072886.P17314429848100333929

/-! ## A072886.P15917114283173212584

`lt[A318589(n+1), A138680(A000040(2*n+1))]`
-/

namespace A072886.P15917114283173212584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138680 (A000040 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072886.P15917114283173212584

/-!
# A072888: Sum of the coefficients of the Schur function expansion of the square of the Vandermonde determinant in n variables.

The programs for A072888, there is no canonical definition to state claims against.
-/

/-! ## A072888.P13557956841964351801

`∏[∏[-ratio[A165355(n)]]]`
-/

namespace A072888.P13557956841964351801
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165355 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((f3 (n + 1) : ℚ) / (f3 n : ℚ))

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A072888.P13557956841964351801

/-! ## A072888.P17702468768160674694

`∏[A176447(3*n+4)]`
-/

namespace A072888.P17702468768160674694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176447 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A072888.P17702468768160674694

/-! ## A072888.P4046612806348852106

`∏[Δ[A005449(A028242(n))]]`
-/

namespace A072888.P4046612806348852106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 (A028242 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A072888.P4046612806348852106

/-! ## A072888.P907412166210546474

`∏[Δ[A001318(A168232(n+1))]]`
-/

namespace A072888.P907412166210546474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (A168232 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A072888.P907412166210546474

/-! ## A072888.P14906534729152925372

`∏[Δ[A008795(n)-A317300(n)]]`
-/

namespace A072888.P14906534729152925372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 n - A317300 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A072888.P14906534729152925372

/-!
# A072890: The 28-cycle of the n => sigma(n)-n process, where sigma(n) is the sum of divisors of n (A000203).

The programs for A072890, there is no canonical definition to state claims against.
-/

/-! ## A072890.P16780431185164044143

`A122726(A257221(n+1)*A327482(n+1))`
-/

namespace A072890.P16780431185164044143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122726 (A257221 (n + 1) * A327482 (n + 1)).toNat

end

end A072890.P16780431185164044143

/-! ## A072890.P7737782122488753508

`A122726(A257221(n+1)^A327482(n+1))`
-/

namespace A072890.P7737782122488753508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122726 (SequenceMachineLib.roundAway ((A257221 (n + 1) : ℚ) ^ (A327482 (n + 1) : ℤ))).toNat

end

end A072890.P7737782122488753508

/-!
# A072891: The 5-cycle of the n => sigma(n)-n process, where sigma(n) is the sum of divisors of n (A000203).

The programs for A072891, there is no canonical definition to state claims against.
-/

/-! ## A072891.P18129017781963402569

`A122726(gcd(A137208(n), A252192(n+1)))`
-/

namespace A072891.P18129017781963402569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122726 (Int.gcd (A137208 n) (A252192 (n + 1)))

end

end A072891.P18129017781963402569

/-!
# A072892: The 4-cycle of the n => sigma(n)-n process. sigma(n) is the sum of divisors of n. (A000203).

The programs for A072892, there is no canonical definition to state claims against.
-/

/-! ## A072892.P808151722712143211

`A292217(A327981(11^n))`
-/

namespace A072892.P808151722712143211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292217 (A327981 (11 ^ n)).toNat

end

end A072892.P808151722712143211

/-!
# A072893: Let c(k) be defined as follows: c(1)=1, c(2)=x, c(k+2) = c(k+1)/2 + c(k)/2 if c(k+1) and c(k) have the same parity; c(k+2) = c(k+1) - c(k) otherwise. Sequence gives values of x such that c(k)=1 for any k large enough.

The programs for A072893, there is no canonical definition to state claims against.
-/

/-! ## A072893.P13953743896555480096

`A071673(A000625(n))+A060831(n)`
-/

namespace A072893.P13953743896555480096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071673 (A000625 n).toNat + A060831 n

end

end A072893.P13953743896555480096

/-! ## A072893.P11068364931263167163

`A151566(n)+A007895(A002524(n))`
-/

namespace A072893.P11068364931263167163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151566 n + A007895 (A002524 n).toNat

end

end A072893.P11068364931263167163

/-!
# A072894: Let c(k) be defined as follows: c(1)=1, c(2)=n, c(k+2) = c(k+1)/2 + c(k)/2 if c(k+1) and c(k) have the same parity; c(k+2) = c(k+1)/2 + c(k)/2 + 1/2 otherwise; a(n) = limit_{ k -> infinity} c(k).

The programs for A072894, the canonical program `A072894.P8115310141512160926` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072894 has offset 1).

The definition of A072894 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072894.P8115310141512160926

`a(round(n/4))+ceil(n/2)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072894

/-- `a(round(n/4))+ceil(n/2)` -/
def P8115310141512160926.Spec : Prop :=
  ∀ n, P8115310141512160926.a n = A072894 (n + 1)

theorem P8115310141512160926.correct : P8115310141512160926.Spec := by
  intro n
  simp only [A072894, Nat.add_sub_cancel]

end A072894

/-! ## A072894.P9331810723702713152

`a(ceil((n-1)/4))+n-floor(n/2)` with `a(0)=1`
-/

namespace A072894.P9331810723702713152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌈((n : ℤ) - 1 : ℚ) / 4⌉.toNat + (n : ℤ) - ⌊(n : ℚ) / 2⌋

end

end A072894.P9331810723702713152

namespace A072894

/-- `a(ceil((n-1)/4))+n-floor(n/2)` -/
def P9331810723702713152.Spec : Prop :=
  ∀ n, P9331810723702713152.a n = A072894 (n + 1)

end A072894

/-! ## A072894.P10274459256702342873

`∑[gcd(2, val(xor(n, 2*n)+6, 2))-1]+1`
-/

namespace A072894.P10274459256702342873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (SequenceMachineLib.valuation (Nat.xor n (2 * n) + 6) 2) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A072894.P10274459256702342873

namespace A072894

/-- `∑[gcd(2, val(xor(n, 2*n)+6, 2))-1]+1` -/
def P10274459256702342873.Spec : Prop :=
  ∀ n, P10274459256702342873.a n = A072894 (n + 1)

end A072894

/-! ## A072894.P13695845077174072290

`∑[A098725(n)]+1`
-/

namespace A072894.P13695845077174072290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A072894.P13695845077174072290

namespace A072894

/-- `∑[A098725(n)]+1` -/
def P13695845077174072290.Spec : Prop :=
  ∀ n, P13695845077174072290.a n = A072894 (n + 1)

end A072894

/-! ## A072894.P16429084021800967854

`∑[A098725(n^floor(atan(n)))]`
-/

namespace A072894.P16429084021800967854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098725 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072894.P16429084021800967854

namespace A072894

/-- `∑[A098725(n^floor(atan(n)))]` -/
def P16429084021800967854.Spec : Prop :=
  ∀ n, P16429084021800967854.a n = A072894 (n + 1)

end A072894

/-! ## A072894.P2201438518229438416

`∑[A098725(n^a(n-1))]` with `a(0)=1`
-/

namespace A072894.P2201438518229438416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A098725 (SequenceMachineLib.roundAway ((n : ℚ) ^ (f1 (n - 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072894.P2201438518229438416

namespace A072894

/-- `∑[A098725(n^a(n-1))]` -/
def P2201438518229438416.Spec : Prop :=
  ∀ n, P2201438518229438416.a n = A072894 (n + 1)

end A072894

/-! ## A072894.P6789125428874964821

`∑[A098725(floor(abs(4*n-ϕ)))]`
-/

namespace A072894.P6789125428874964821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098725 ⌊|(4 * n : ℝ) - Real.goldenRatio|⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072894.P6789125428874964821

namespace A072894

/-- `∑[A098725(floor(abs(4*n-ϕ)))]` -/
def P6789125428874964821.Spec : Prop :=
  ∀ n, P6789125428874964821.a n = A072894 (n + 1)

end A072894

/-! ## A072894.P15011001237487204817

`(A027615(n)+2*n)/3+1`
-/

namespace A072894.P15011001237487204817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027615 n + (2 * n : ℤ) : ℚ) / 3 + 1

end

end A072894.P15011001237487204817

namespace A072894

/-- `(A027615(n)+2*n)/3+1` -/
def P15011001237487204817.Spec : Prop :=
  ∀ n, P15011001237487204817.a n = (A072894 (n + 1) : ℚ)

end A072894

/-!
# A072895: Least k for the Theodorus spiral to complete n revolutions.

The programs for A072895, there is no canonical definition to state claims against.
-/

/-! ## A072895.P13851594749348900602

`A137515(n+1)+1`
-/

namespace A072895.P13851594749348900602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137515 (n + 1) + 1

end

end A072895.P13851594749348900602

/-! ## A072895.P12212233599645132488

`∑[A295338(n+1)]`
-/

namespace A072895.P12212233599645132488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072895.P12212233599645132488

/-! ## A072895.P11691784383386823876

`∑[record[A295338(A065648(n))]]`
-/

namespace A072895.P11691784383386823876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295338 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072895.P11691784383386823876

/-! ## A072895.P16402433744624433068

`∑[record[A295338(A106466(n))]]`
-/

namespace A072895.P16402433744624433068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295338 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072895.P16402433744624433068

/-! ## A072895.P6446778632675601722

`∑[record[A295338(A117910(n))]]`
-/

namespace A072895.P6446778632675601722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295338 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072895.P6446778632675601722

/-!
# A072897: Least n-th order digital invariant which is not an Armstrong number (A005188), or 0 if no such term exists.

The programs for A072897, there is no canonical definition to state claims against.
-/

/-! ## A072897.P7212059131549226410

`A262091(record[A168561(3*n)])`
-/

namespace A072897.P7212059131549226410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168561 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262091 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072897.P7212059131549226410

/-!
# A072898: Numerator of c(n) where c(0)=1, c(n+1) = n/c(n) + 1.

The programs for A072898, the canonical program `A072898.P3597929593974754705` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072898 has offset 0).

The definition of A072898 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072898.P3597929593974754705

`A000085(n)/∏[and(2, n^3)!]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A072898

/-- `A000085(n)/∏[and(2, n^3)!]` -/
def P3597929593974754705.Spec : Prop :=
  ∀ n, P3597929593974754705.a n = (A072898 n : ℚ)

end A072898

/-! ## A072898.P10863071572954146334

`A000085(n)/∏[A177704(n)]`
-/

namespace A072898.P10863071572954146334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177704 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000085 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A072898.P10863071572954146334

namespace A072898

/-- `A000085(n)/∏[A177704(n)]` -/
def P10863071572954146334.Spec : Prop :=
  ∀ n, P10863071572954146334.a n = (A072898 n : ℚ)

end A072898

/-! ## A072898.P17135412339342422602

`A000085(n)/A200675(n+1)`
-/

namespace A072898.P17135412339342422602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000085 n : ℚ) / (A200675 (n + 1) : ℚ)

end

end A072898.P17135412339342422602

namespace A072898

/-- `A000085(n)/A200675(n+1)` -/
def P17135412339342422602.Spec : Prop :=
  ∀ n, P17135412339342422602.a n = (A072898 n : ℚ)

end A072898

/-! ## A072898.P16034650640025915365

`A000085(n)/A016116(ceil(n/2))`
-/

namespace A072898.P16034650640025915365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000085 n : ℚ) / (A016116 ⌈(n : ℚ) / 2⌉.toNat : ℚ)

end

end A072898.P16034650640025915365

namespace A072898

/-- `A000085(n)/A016116(ceil(n/2))` -/
def P16034650640025915365.Spec : Prop :=
  ∀ n, P16034650640025915365.a n = (A072898 n : ℚ)

end A072898

/-! ## A072898.P10496237059444808762

`A000085(n)/A000079(floor((n+1)/4))`
-/

namespace A072898.P10496237059444808762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000085 n : ℚ) / (A000079 ⌊(n + 1 : ℚ) / 4⌋.toNat : ℚ)

end

end A072898.P10496237059444808762

namespace A072898

/-- `A000085(n)/A000079(floor((n+1)/4))` -/
def P10496237059444808762.Spec : Prop :=
  ∀ n, P10496237059444808762.a n = (A072898 n : ℚ)

end A072898

/-!
# A072899: Denominator of c(n) where c(0)=1 c(n+1) = n/c(n) + 1.

The programs for A072899, there is no canonical definition to state claims against.
-/

/-! ## A072899.P8808483549326240121

`∏{d}[A004873(n+1), A069943(#)]`
-/

namespace A072899.P8808483549326240121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A069943 d

end

end A072899.P8808483549326240121

/-! ## A072899.P3996955246005688201

`A025452(Δ[A028859(n)])`
-/

namespace A072899.P3996955246005688201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 (f1 (n + 1) - f1 n).toNat

end

end A072899.P3996955246005688201

/-! ## A072899.P11576689836606095945

`A025452(A052945(n+1))`
-/

namespace A072899.P11576689836606095945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 (A052945 (n + 1)).toNat

end

end A072899.P11576689836606095945

/-! ## A072899.P1545639516364154894

`A025452(Δ[Δ[A057960(n)]])`
-/

namespace A072899.P1545639516364154894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057960 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 (f1 (n + 1) - f1 n).toNat

end

end A072899.P1545639516364154894

/-! ## A072899.P9520979904746691283

`A025452(A080040(n+2)/4)`
-/

namespace A072899.P9520979904746691283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 (SequenceMachineLib.roundAway ((A080040 (n + 2) : ℚ) / 4)).toNat

end

end A072899.P9520979904746691283

