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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
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
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
# A353404: Expansion of e.g.f. exp(-log(1 - x)^5).

The programs for A353404, there is no canonical definition to state claims against.
-/

/-! ## A353404.P17035802846749751787

`A357882(A056000(n+2)+4)`
-/

namespace A353404.P17035802846749751787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357882 (A056000 (n + 2) + 4).toNat

end

end A353404.P17035802846749751787

/-!
# A353405: Index of 2^n in A353709.

The programs for A353405, there is no canonical definition to state claims against.
-/

/-! ## A353405.P14410007723719677786

`A353717(2^n)`
-/

namespace A353405.P14410007723719677786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353717 (2 ^ n)

end

end A353405.P14410007723719677786

/-! ## A353405.P4519981680117169054

`record[A353717(A034008(n))]`
-/

namespace A353405.P4519981680117169054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353717 (A034008 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353405.P4519981680117169054

/-! ## A353405.P9218326224022621739

`record[A353717(A130321(n))]`
-/

namespace A353405.P9218326224022621739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353717 (A130321 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353405.P9218326224022621739

/-! ## A353405.P15842787456816297113

`record[A353717(A329562(n))]`
-/

namespace A353405.P15842787456816297113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353717 (A329562 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353405.P15842787456816297113

/-! ## A353405.P10030656672841987981

`eq[1, A124770(A353709(n))]`
-/

namespace A353405.P10030656672841987981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124770 (A353709 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353405.P10030656672841987981

/-!
# A353410: a(n) = (tan(1*Pi/9))^(2*n) + (tan(2*Pi/9))^(2*n) + (tan(3*Pi/9))^(2*n) + (tan(4*Pi/9))^(2*n).

The programs for A353410, the canonical program `A353410.P6902981710907965442` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353410 has offset 0).

The definition of A353410 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A353410.P6902981710907965442

`A215948(n)+3^n`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A353410

/-- `A215948(n)+3^n` -/
def P6902981710907965442.Spec : Prop :=
  ∀ n, P6902981710907965442.a n = A353410 n

theorem P6902981710907965442.correct : P6902981710907965442.Spec := by
  intro n
  simp only [A353410]

end A353410

/-! ## A353410.P8343740279108169338

`A000244(n)+3*A217336(2*n)`
-/

namespace A353410.P8343740279108169338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n + 3 * A217336 (2 * n)

end

end A353410.P8343740279108169338

namespace A353410

/-- `A000244(n)+3*A217336(2*n)` -/
def P8343740279108169338.Spec : Prop :=
  ∀ n, P8343740279108169338.a n = A353410 n

end A353410

/-! ## A353410.P12012280843627125695

`∑[A025192(n)]+3*A217336(2*n)`
-/

namespace A353410.P12012280843627125695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3 * A217336 (2 * n)

end

end A353410.P12012280843627125695

namespace A353410

/-- `∑[A025192(n)]+3*A217336(2*n)` -/
def P12012280843627125695.Spec : Prop :=
  ∀ n, P12012280843627125695.a n = A353410 n

end A353410

/-!
# A353412: The odd part of hybrid shift: a(n) = A000265(A252463(n)).

The programs for A353412, the canonical program `A353412.P5865578473997114456` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353412 has offset 1).

The definition of A353412 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252463, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353412.P5865578473997114456

`A000265(A252463(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A353412

/-- `A000265(A252463(n+1))` -/
def P5865578473997114456.Spec : Prop :=
  ∀ n, P5865578473997114456.a n = A353412 (n + 1)

theorem P5865578473997114456.correct : P5865578473997114456.Spec := by
  intro n
  simp only [A353412, Nat.add_sub_cancel]

end A353412

/-! ## A353412.P12310679087208188392

`A003961(A064989(A252463(A389910(n+1))))`
-/

namespace A353412.P12310679087208188392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A064989 (A252463 (A389910 (n + 1)).toNat).toNat).toNat

end

end A353412.P12310679087208188392

namespace A353412

/-- `A003961(A064989(A252463(A389910(n+1))))` -/
def P12310679087208188392.Spec : Prop :=
  ∀ n, P12310679087208188392.a n = A353412 (n + 1)

end A353412

/-! ## A353412.P2484662191425418109

`A028234(2*A252463(n+1))`
-/

namespace A353412.P2484662191425418109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (2 * A252463 (n + 1)).toNat

end

end A353412.P2484662191425418109

namespace A353412

/-- `A028234(2*A252463(n+1))` -/
def P2484662191425418109.Spec : Prop :=
  ∀ n, P2484662191425418109.a n = A353412 (n + 1)

end A353412

/-! ## A353412.P16918464569797823278

`A139391(2*A252463(n+1))`
-/

namespace A353412.P16918464569797823278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139391 (2 * A252463 (n + 1)).toNat

end

end A353412.P16918464569797823278

namespace A353412

/-- `A139391(2*A252463(n+1))` -/
def P16918464569797823278.Spec : Prop :=
  ∀ n, P16918464569797823278.a n = A353412 (n + 1)

end A353412

/-! ## A353412.P17244151627596599784

`A161150(2*A252463(n+1))`
-/

namespace A353412.P17244151627596599784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161150 (2 * A252463 (n + 1)).toNat

end

end A353412.P17244151627596599784

namespace A353412

/-- `A161150(2*A252463(n+1))` -/
def P17244151627596599784.Spec : Prop :=
  ∀ n, P17244151627596599784.a n = A353412 (n + 1)

end A353412

/-! ## A353412.P17224968139423625555

`A003961(A064989(A252463(A003602(2*n+1))))`
-/

namespace A353412.P17224968139423625555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A064989 (A252463 (A003602 (2 * n + 1)).toNat).toNat).toNat

end

end A353412.P17224968139423625555

namespace A353412

/-- `A003961(A064989(A252463(A003602(2*n+1))))` -/
def P17224968139423625555.Spec : Prop :=
  ∀ n, P17224968139423625555.a n = A353412 (n + 1)

end A353412

/-! ## A353412.P16290633148662004237

`A353413(A048673(A252463(A048673(A064216(n+1)))))`
-/

namespace A353412.P16290633148662004237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353413 (A048673 (A252463 (A048673 (A064216 (n + 1)).toNat).toNat).toNat).toNat

end

end A353412.P16290633148662004237

namespace A353412

/-- `A353413(A048673(A252463(A048673(A064216(n+1)))))` -/
def P16290633148662004237.Spec : Prop :=
  ∀ n, P16290633148662004237.a n = A353412 (n + 1)

end A353412

/-! ## A353412.P7703124977441234100

`A003961(A064989(A252463(A389909(n+1))))`
-/

namespace A353412.P7703124977441234100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A064989 (A252463 (A389909 (n + 1)).toNat).toNat).toNat

end

end A353412.P7703124977441234100

namespace A353412

/-- `A003961(A064989(A252463(A389909(n+1))))` -/
def P7703124977441234100.Spec : Prop :=
  ∀ n, P7703124977441234100.a n = A353412 (n + 1)

end A353412

/-! ## A353412.P5107935519443722235

`A003961(A064989(A252463(A064989(A003961(n+1)))))`
-/

namespace A353412.P5107935519443722235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A064989 (A252463 (A064989 (A003961 (n + 1)).toNat).toNat).toNat).toNat

end

end A353412.P5107935519443722235

namespace A353412

/-- `A003961(A064989(A252463(A064989(A003961(n+1)))))` -/
def P5107935519443722235.Spec : Prop :=
  ∀ n, P5107935519443722235.a n = A353412 (n + 1)

end A353412

/-! ## A353412.P151939545332928268

`lcm(A000079(n), A252463(n+1))/A000079(n)`
-/

namespace A353412.P151939545332928268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000079 n) (A252463 (n + 1)) : ℚ) / (A000079 n : ℚ)

end

end A353412.P151939545332928268

namespace A353412

/-- `lcm(A000079(n), A252463(n+1))/A000079(n)` -/
def P151939545332928268.Spec : Prop :=
  ∀ n, P151939545332928268.a n = (A353412 (n + 1) : ℚ)

end A353412

/-! ## A353412.P7366750441106394122

`A305421(A305422(A252463(A305422(A305421(n+1)))))`
-/

namespace A353412.P7366750441106394122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305421 (A305422 (A252463 (A305422 (A305421 (n + 1)).toNat).toNat).toNat).toNat

end

end A353412.P7366750441106394122

namespace A353412

/-- `A305421(A305422(A252463(A305422(A305421(n+1)))))` -/
def P7366750441106394122.Spec : Prop :=
  ∀ n, P7366750441106394122.a n = A353412 (n + 1)

end A353412

/-! ## A353412.P12418760852937205562

`gcd(A217858(n+1), A252463(n+1))`
-/

namespace A353412.P12418760852937205562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A217858 (n + 1)) (A252463 (n + 1))

end

end A353412.P12418760852937205562

namespace A353412

/-- `gcd(A217858(n+1), A252463(n+1))` -/
def P12418760852937205562.Spec : Prop :=
  ∀ n, (P12418760852937205562.a n : ℤ) = A353412 (n + 1)

end A353412

/-! ## A353412.P10317103049941139114

`gcd(A133221(n), A252463(n+1))`
-/

namespace A353412.P10317103049941139114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A133221 n) (A252463 (n + 1))

end

end A353412.P10317103049941139114

namespace A353412

/-- `gcd(A133221(n), A252463(n+1))` -/
def P10317103049941139114.Spec : Prop :=
  ∀ n, (P10317103049941139114.a n : ℤ) = A353412 (n + 1)

end A353412

/-! ## A353412.P12245169162658810533

`gcd(A055634(n), A252463(n+1))`
-/

namespace A353412.P12245169162658810533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055634 n) (A252463 (n + 1))

end

end A353412.P12245169162658810533

namespace A353412

/-- `gcd(A055634(n), A252463(n+1))` -/
def P12245169162658810533.Spec : Prop :=
  ∀ n, (P12245169162658810533.a n : ℤ) = A353412 (n + 1)

end A353412

/-!
# A353413: a(n) = A000265(A064216(n)).

The programs for A353413, the canonical program `A353413.P518075003581076360` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353413 has offset 1).

The definition of A353413 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064216, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353413.P518075003581076360

`A000265(A064216(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A353413

/-- `A000265(A064216(n+1))` -/
def P518075003581076360.Spec : Prop :=
  ∀ n, P518075003581076360.a n = A353413 (n + 1)

theorem P518075003581076360.correct : P518075003581076360.Spec := by
  intro n
  simp only [A353413, Nat.add_sub_cancel]

end A353413

/-! ## A353413.P7089262982822650624

`A353412(2*n+1)`
-/

namespace A353413.P7089262982822650624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353412 (2 * n + 1)

end

end A353413.P7089262982822650624

namespace A353413

/-- `A353412(2*n+1)` -/
def P7089262982822650624.Spec : Prop :=
  ∀ n, P7089262982822650624.a n = A353413 (n + 1)

end A353413

/-! ## A353413.P3222756890759032273

`A000265(A064989(n+1+n+1-1))`
-/

namespace A353413.P3222756890759032273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A064989 (n + 1 + (n + 1) - 1)).toNat

end

end A353413.P3222756890759032273

namespace A353413

/-- `A000265(A064989(n+1+n+1-1))` -/
def P3222756890759032273.Spec : Prop :=
  ∀ n, P3222756890759032273.a n = A353413 (n + 1)

end A353413

/-! ## A353413.P13560203888347083681

`A000265(A243502(n+1))`
-/

namespace A353413.P13560203888347083681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A243502 (n + 1)).toNat

end

end A353413.P13560203888347083681

namespace A353413

/-- `A000265(A243502(n+1))` -/
def P13560203888347083681.Spec : Prop :=
  ∀ n, P13560203888347083681.a n = A353413 (n + 1)

end A353413

/-! ## A353413.P6059665408937624694

`A064216(A286577(n+1))`
-/

namespace A353413.P6059665408937624694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (A286577 (n + 1)).toNat

end

end A353413.P6059665408937624694

namespace A353413

/-- `A064216(A286577(n+1))` -/
def P6059665408937624694.Spec : Prop :=
  ∀ n, P6059665408937624694.a n = A353413 (n + 1)

end A353413

/-! ## A353413.P12504905883139621775

`A254050(A253887(n+1))`
-/

namespace A353413.P12504905883139621775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254050 (A253887 (n + 1)).toNat

end

end A353413.P12504905883139621775

namespace A353413

/-- `A254050(A253887(n+1))` -/
def P12504905883139621775.Spec : Prop :=
  ∀ n, P12504905883139621775.a n = A353413 (n + 1)

end A353413

/-! ## A353413.P7768300836554624500

`A000265(A349122(2*n+1))`
-/

namespace A353413.P7768300836554624500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A349122 (2 * n + 1)).toNat

end

end A353413.P7768300836554624500

namespace A353413

/-- `A000265(A349122(2*n+1))` -/
def P7768300836554624500.Spec : Prop :=
  ∀ n, P7768300836554624500.a n = A353413 (n + 1)

end A353413

/-! ## A353413.P13845360024530314368

`A254050(A126760(2*n+1))`
-/

namespace A353413.P13845360024530314368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254050 (A126760 (2 * n + 1)).toNat

end

end A353413.P13845360024530314368

namespace A353413

/-- `A254050(A126760(2*n+1))` -/
def P13845360024530314368.Spec : Prop :=
  ∀ n, P13845360024530314368.a n = A353413 (n + 1)

end A353413

/-! ## A353413.P15433673832970202754

`A000265(A290099(2*n+1))`
-/

namespace A353413.P15433673832970202754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A290099 (2 * n + 1)).toNat

end

end A353413.P15433673832970202754

namespace A353413

/-- `A000265(A290099(2*n+1))` -/
def P15433673832970202754.Spec : Prop :=
  ∀ n, P15433673832970202754.a n = A353413 (n + 1)

end A353413

/-! ## A353413.P13244583694010447150

`A000265(A353412(n+1+n))`
-/

namespace A353413.P13244583694010447150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A353412 (n + 1 + n)).toNat

end

end A353413.P13244583694010447150

namespace A353413

/-- `A000265(A353412(n+1+n))` -/
def P13244583694010447150.Spec : Prop :=
  ∀ n, P13244583694010447150.a n = A353413 (n + 1)

end A353413

/-! ## A353413.P4491351911513469482

`A318319(2*n+1)/A318449(2*n+1)`
-/

namespace A353413.P4491351911513469482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318319 (2 * n + 1) : ℚ) / (A318449 (2 * n + 1) : ℚ)

end

end A353413.P4491351911513469482

namespace A353413

/-- `A318319(2*n+1)/A318449(2*n+1)` -/
def P4491351911513469482.Spec : Prop :=
  ∀ n, P4491351911513469482.a n = (A353413 (n + 1) : ℚ)

end A353413

/-! ## A353413.P13413497668805275653

`A353412(A004277(n)+1)%A139827(n+1)`
-/

namespace A353413.P13413497668805275653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353412 (A004277 n + 1).toNat) (A139827 (n + 1))

end

end A353413.P13413497668805275653

namespace A353413

/-- `A353412(A004277(n)+1)%A139827(n+1)` -/
def P13413497668805275653.Spec : Prop :=
  ∀ n, P13413497668805275653.a n = A353413 (n + 1)

end A353413

/-! ## A353413.P539949298285205386

`A064989(A098486(n+1))`
-/

namespace A353413.P539949298285205386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A098486 (n + 1)).toNat

end

end A353413.P539949298285205386

namespace A353413

/-- `A064989(A098486(n+1))` -/
def P539949298285205386.Spec : Prop :=
  ∀ n, P539949298285205386.a n = A353413 (n + 1)

end A353413

/-! ## A353413.P4623585824883797290

`A000265(A079707(2*n+1))`
-/

namespace A353413.P4623585824883797290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A079707 (2 * n + 1)).toNat

end

end A353413.P4623585824883797290

namespace A353413

/-- `A000265(A079707(2*n+1))` -/
def P4623585824883797290.Spec : Prop :=
  ∀ n, P4623585824883797290.a n = A353413 (n + 1)

end A353413

/-! ## A353413.P2417252606840490622

`A064989(A038502(2*n+1))`
-/

namespace A353413.P2417252606840490622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A038502 (2 * n + 1)).toNat

end

end A353413.P2417252606840490622

namespace A353413

/-- `A064989(A038502(2*n+1))` -/
def P2417252606840490622.Spec : Prop :=
  ∀ n, P2417252606840490622.a n = A353413 (n + 1)

end A353413

/-! ## A353413.P13190968323219148334

`A064989(A064614(2*n+1))`
-/

namespace A353413.P13190968323219148334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A064614 (2 * n + 1)).toNat

end

end A353413.P13190968323219148334

namespace A353413

/-- `A064989(A064614(2*n+1))` -/
def P13190968323219148334.Spec : Prop :=
  ∀ n, P13190968323219148334.a n = A353413 (n + 1)

end A353413

/-! ## A353413.P3828829036046422499

`A064989(A065330(2*n+1))`
-/

namespace A353413.P3828829036046422499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A065330 (2 * n + 1)).toNat

end

end A353413.P3828829036046422499

namespace A353413

/-- `A064989(A065330(2*n+1))` -/
def P3828829036046422499.Spec : Prop :=
  ∀ n, P3828829036046422499.a n = A353413 (n + 1)

end A353413

/-! ## A353413.P16362545408205226820

`A000265(A252463(2*n+1))`
-/

namespace A353413.P16362545408205226820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A252463 (2 * n + 1)).toNat

end

end A353413.P16362545408205226820

namespace A353413

/-- `A000265(A252463(2*n+1))` -/
def P16362545408205226820.Spec : Prop :=
  ∀ n, P16362545408205226820.a n = A353413 (n + 1)

end A353413

/-! ## A353413.P1555425235991410324

`A000265(A283463(2*(n+1)))`
-/

namespace A353413.P1555425235991410324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A283463 (2 * (n + 1))).toNat

end

end A353413.P1555425235991410324

namespace A353413

/-- `A000265(A283463(2*(n+1)))` -/
def P1555425235991410324.Spec : Prop :=
  ∀ n, P1555425235991410324.a n = A353413 (n + 1)

end A353413

/-! ## A353413.P4278712753708822661

`A000265(A297165(2*n+1))`
-/

namespace A353413.P4278712753708822661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A297165 (2 * n + 1)).toNat

end

end A353413.P4278712753708822661

namespace A353413

/-- `A000265(A297165(2*n+1))` -/
def P4278712753708822661.Spec : Prop :=
  ∀ n, P4278712753708822661.a n = A353413 (n + 1)

end A353413

/-!
# A353414: Number of ways to write n as a product of the terms of A353355 larger than 1; a(1) = 1 by convention (an empty product).

The programs for A353414, there is no canonical definition to state claims against.
-/

/-! ## A353414.P6957069649511319584

`gcd(A342376(n+1), A355685(n+1))`
-/

namespace A353414.P6957069649511319584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A342376 (n + 1)) (A355685 (n + 1))

end

end A353414.P6957069649511319584

/-! ## A353414.P1257070806531324595

`A087049(lcm(comp[2*(n+1)], A183091(n+1)))`
-/

namespace A353414.P1257070806531324595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (Int.lcm (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A183091 (n + 1)))

end

end A353414.P1257070806531324595

/-! ## A353414.P3222136909219005993

`and(A025475(10^∑{e}[n+1, #]), A336556(n+1))`
-/

namespace A353414.P3222136909219005993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025475 (10 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))) (A336556 (n + 1))

end

end A353414.P3222136909219005993

/-! ## A353414.P4593140958263172600

`A056926(A225114(n)%A013632(n))`
-/

namespace A353414.P4593140958263172600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (Int.tmod (A225114 n) (A013632 n)).toNat

end

end A353414.P4593140958263172600

/-! ## A353414.P17194739232893161587

`A087049(lcm(A004273(n), A045966(n+1)))`
-/

namespace A353414.P17194739232893161587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (Int.lcm (A004273 n) (A045966 (n + 1)))

end

end A353414.P17194739232893161587

/-!
# A353415: Number of ways to write the square of n as a product of the terms of A353355 larger than 1; a(1) = 1 by convention (an empty product).

The programs for A353415, there is no canonical definition to state claims against.
-/

/-! ## A353415.P16397398031075664541

`A353414((n+1)²)`
-/

namespace A353415.P16397398031075664541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353414 ((n + 1) ^ 2)

end

end A353415.P16397398031075664541

/-! ## A353415.P14248452171230102998

`or(char[1], A353414(∑[2*n+1]))`
-/

namespace A353415.P14248452171230102998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A353414 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A353415.P14248452171230102998

/-! ## A353415.P14272560924977181455

`A028310(A353414(∑[2*n+1]))`
-/

namespace A353415.P14272560924977181455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A353414 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A353415.P14272560924977181455

/-! ## A353415.P6484284052914225321

`A004526(2*A353414(∑[2*n+1]))`
-/

namespace A353415.P6484284052914225321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * A353414 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A353415.P6484284052914225321

/-! ## A353415.P10303841843550573401

`A004442(xor(1, A353414(∑[2*n+1])))`
-/

namespace A353415.P10303841843550573401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (Int.xor 1 (A353414 (∑ j ∈ Finset.range (n + 1), f1 j))).toNat

end

end A353415.P10303841843550573401

/-! ## A353415.P450740948371710561

`A353414(∑[2*n+1])+A000007(n+1)`
-/

namespace A353415.P450740948371710561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353414 (∑ j ∈ Finset.range (n + 1), f1 j) + A000007 (n + 1)

end

end A353415.P450740948371710561

/-! ## A353415.P8674937205013803544

`A157928(n+2)*A353414(∑[2*n+1])`
-/

namespace A353415.P8674937205013803544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (n + 2) * A353414 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A353415.P8674937205013803544

/-! ## A353415.P753103513719047941

`A353414(∑[n+1+n])+A000035(2*n)`
-/

namespace A353415.P753103513719047941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353414 (∑ j ∈ Finset.range (n + 1), f1 j) + A000035 (2 * n)

end

end A353415.P753103513719047941

/-! ## A353415.P7723419092980223016

`A353414(∑[2*n+1])^A001221(A001316(n))`
-/

namespace A353415.P7723419092980223016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353414 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) ^ (A001221 (A001316 n).toNat : ℤ)

end

end A353415.P7723419092980223016

/-! ## A353415.P10855911208368643020

`A014963(A256257(n))*A353414(∑[n+1+n])`
-/

namespace A353415.P10855911208368643020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A256257 n).toNat * A353414 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A353415.P10855911208368643020

/-! ## A353415.P8748949794625163525

`A001222(A054824(n+1))*A353414(∑[2*n+1])`
-/

namespace A353415.P8748949794625163525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A054824 (n + 1)).toNat * A353414 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A353415.P8748949794625163525

/-! ## A353415.P3256975288301645658

`A014963(A260730(n+1))*A353414(∑[2*n+1])`
-/

namespace A353415.P3256975288301645658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A260730 (n + 1)).toNat * A353414 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A353415.P3256975288301645658

/-! ## A353415.P1322094053664664419

`A014963(A268319(n+1))*A353414(∑[n+1+n])`
-/

namespace A353415.P1322094053664664419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A268319 (n + 1)).toNat * A353414 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A353415.P1322094053664664419

/-!
# A353416: a(n) = A000593(A252463(n)), where A000593 is the sum of odd divisors, and A252463 is the hybrid shift.

The programs for A353416, the canonical program `A353416.P2713159245725589266` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353416 has offset 1).

The definition of A353416 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252463, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353416.P2713159245725589266

`A000593(A252463(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A353416

/-- `A000593(A252463(n+1))` -/
def P2713159245725589266.Spec : Prop :=
  ∀ n, P2713159245725589266.a n = A353416 (n + 1)

theorem P2713159245725589266.correct : P2713159245725589266.Spec := by
  intro n
  simp only [A353416, Nat.add_sub_cancel]

end A353416

/-! ## A353416.P11004034355439647630

`A000203(A353412(n+1))`
-/

namespace A353416.P11004034355439647630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A353412 (n + 1)).toNat

end

end A353416.P11004034355439647630

namespace A353416

/-- `A000203(A353412(n+1))` -/
def P11004034355439647630.Spec : Prop :=
  ∀ n, P11004034355439647630.a n = A353416 (n + 1)

end A353416

/-! ## A353416.P2396073858780939582

`∑{d}[A353412(n+1), #]`
-/

namespace A353416.P2396073858780939582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353412 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A353416.P2396073858780939582

namespace A353416

/-- `∑{d}[A353412(n+1), #]` -/
def P2396073858780939582.Spec : Prop :=
  ∀ n, (P2396073858780939582.a n : ℤ) = A353416 (n + 1)

end A353416

/-! ## A353416.P8355354727379003129

`A002131(or(1, A353412(n+1)))`
-/

namespace A353416.P8355354727379003129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (Int.lor 1 (A353412 (n + 1))).toNat

end

end A353416.P8355354727379003129

namespace A353416

/-- `A002131(or(1, A353412(n+1)))` -/
def P8355354727379003129.Spec : Prop :=
  ∀ n, P8355354727379003129.a n = A353416 (n + 1)

end A353416

/-! ## A353416.P5258585772921506505

`∑{d}[A252463(n+1), A193356(#)]`
-/

namespace A353416.P5258585772921506505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A193356 d

end

end A353416.P5258585772921506505

namespace A353416

/-- `∑{d}[A252463(n+1), A193356(#)]` -/
def P5258585772921506505.Spec : Prop :=
  ∀ n, P5258585772921506505.a n = A353416 (n + 1)

end A353416

/-! ## A353416.P8213586587602859213

`A002131(A353412(2*n+1-n))`
-/

namespace A353416.P8213586587602859213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (A353412 (2 * n + 1 - n)).toNat

end

end A353416.P8213586587602859213

namespace A353416

/-- `A002131(A353412(2*n+1-n))` -/
def P8213586587602859213.Spec : Prop :=
  ∀ n, P8213586587602859213.a n = A353416 (n + 1)

end A353416

/-! ## A353416.P3660237032059850844

`∑{d}[A000265(2*A252463(n+1)), #]`
-/

namespace A353416.P3660237032059850844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (2 * A252463 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A353416.P3660237032059850844

namespace A353416

/-- `∑{d}[A000265(2*A252463(n+1)), #]` -/
def P3660237032059850844.Spec : Prop :=
  ∀ n, (P3660237032059850844.a n : ℤ) = A353416 (n + 1)

end A353416

/-! ## A353416.P15802915205558087155

`2*A353417(n+1)-A320107(n+1)`
-/

namespace A353416.P15802915205558087155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A353417 (n + 1) - A320107 (n + 1)

end

end A353416.P15802915205558087155

namespace A353416

/-- `2*A353417(n+1)-A320107(n+1)` -/
def P15802915205558087155.Spec : Prop :=
  ∀ n, P15802915205558087155.a n = A353416 (n + 1)

end A353416

/-! ## A353416.P14447610524556769135

`A002131(A353412(n+1)%A090293(n))`
-/

namespace A353416.P14447610524556769135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (Int.tmod (A353412 (n + 1)) (A090293 n)).toNat

end

end A353416.P14447610524556769135

namespace A353416

/-- `A002131(A353412(n+1)%A090293(n))` -/
def P14447610524556769135.Spec : Prop :=
  ∀ n, P14447610524556769135.a n = A353416 (n + 1)

end A353416

/-! ## A353416.P14569583581158031883

`∑{d}[A000265(A252463(n+1)), A000027(#)]`
-/

namespace A353416.P14569583581158031883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A252463 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000027 d

end

end A353416.P14569583581158031883

namespace A353416

/-- `∑{d}[A000265(A252463(n+1)), A000027(#)]` -/
def P14569583581158031883.Spec : Prop :=
  ∀ n, P14569583581158031883.a n = A353416 (n + 1)

end A353416

/-! ## A353416.P16615649451779989412

`∑{d}[A000265(A252463(n+1)), A000265(#)]`
-/

namespace A353416.P16615649451779989412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A252463 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000265 d

end

end A353416.P16615649451779989412

namespace A353416

/-- `∑{d}[A000265(A252463(n+1)), A000265(#)]` -/
def P16615649451779989412.Spec : Prop :=
  ∀ n, P16615649451779989412.a n = A353416 (n + 1)

end A353416

/-! ## A353416.P8911139984679020225

`A000593(2*A353412(n+1))`
-/

namespace A353416.P8911139984679020225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (2 * A353412 (n + 1)).toNat

end

end A353416.P8911139984679020225

namespace A353416

/-- `A000593(2*A353412(n+1))` -/
def P8911139984679020225.Spec : Prop :=
  ∀ n, P8911139984679020225.a n = A353416 (n + 1)

end A353416

/-! ## A353416.P13399659788510767327

`A000593(A353412(n+1)+A353412(n+1))`
-/

namespace A353416.P13399659788510767327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A353412 (n + 1) + A353412 (n + 1)).toNat

end

end A353416.P13399659788510767327

namespace A353416

/-- `A000593(A353412(n+1)+A353412(n+1))` -/
def P13399659788510767327.Spec : Prop :=
  ∀ n, P13399659788510767327.a n = A353416 (n + 1)

end A353416

/-!
# A353417: a(n) = A113415(A252463(n)), where A113415 is the arithmetic mean between the number of odd divisors and their sum, and A252463 is the hybrid shift.

The programs for A353417, the canonical program `A353417.P10951594833502068989` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353417 has offset 1).

The definition of A353417 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113415, A252463, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353417.P10951594833502068989

`A113415(A252463(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A353417

/-- `A113415(A252463(n+1))` -/
def P10951594833502068989.Spec : Prop :=
  ∀ n, P10951594833502068989.a n = A353417 (n + 1)

theorem P10951594833502068989.correct : P10951594833502068989.Spec := by
  intro n
  simp only [A353417, Nat.add_sub_cancel]

end A353417

/-! ## A353417.P3277729877713423753

`A113415(A353412(n+1))`
-/

namespace A353417.P3277729877713423753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113415 (A353412 (n + 1)).toNat

end

end A353417.P3277729877713423753

namespace A353417

/-- `A113415(A353412(n+1))` -/
def P3277729877713423753.Spec : Prop :=
  ∀ n, P3277729877713423753.a n = A353417 (n + 1)

end A353417

/-! ## A353417.P16077986440210257876

`1/2*(A320107(n+1)+A353416(n+1))`
-/

namespace A353417.P16077986440210257876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A320107 (n + 1) + A353416 (n + 1) : ℚ)

end

end A353417.P16077986440210257876

namespace A353417

/-- `1/2*(A320107(n+1)+A353416(n+1))` -/
def P16077986440210257876.Spec : Prop :=
  ∀ n, P16077986440210257876.a n = (A353417 (n + 1) : ℚ)

end A353417

/-! ## A353417.P13413242055888297927

`A069734(A353412(n+1))`
-/

namespace A353417.P13413242055888297927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069734 (A353412 (n + 1)).toNat

end

end A353417.P13413242055888297927

namespace A353417

/-- `A069734(A353412(n+1))` -/
def P13413242055888297927.Spec : Prop :=
  ∀ n, P13413242055888297927.a n = A353417 (n + 1)

end A353417

/-! ## A353417.P7253154747308458401

`A065033(∑{d}[A353412(n+1), #+1])`
-/

namespace A353417.P7253154747308458401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (∑ d ∈ Nat.divisors (f1 n).natAbs, (d + 1))

end

end A353417.P7253154747308458401

namespace A353417

/-- `A065033(∑{d}[A353412(n+1), #+1])` -/
def P7253154747308458401.Spec : Prop :=
  ∀ n, P7253154747308458401.a n = A353417 (n + 1)

end A353417

/-! ## A353417.P15165114459458676863

`(A353416(n+1)+A320107(n+1))/2`
-/

namespace A353417.P15165114459458676863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353416 (n + 1) + A320107 (n + 1) : ℚ) / 2

end

end A353417.P15165114459458676863

namespace A353417

/-- `(A353416(n+1)+A320107(n+1))/2` -/
def P15165114459458676863.Spec : Prop :=
  ∀ n, P15165114459458676863.a n = (A353417 (n + 1) : ℚ)

end A353417

/-! ## A353417.P261839964182285114

`A252463(A353416(n+1)+A320107(n+1))`
-/

namespace A353417.P261839964182285114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A353416 (n + 1) + A320107 (n + 1)).toNat

end

end A353417.P261839964182285114

namespace A353417

/-- `A252463(A353416(n+1)+A320107(n+1))` -/
def P261839964182285114.Spec : Prop :=
  ∀ n, P261839964182285114.a n = A353417 (n + 1)

end A353417

/-!
# A353418: Dirichlet inverse of A353269.

The programs for A353418, there is no canonical definition to state claims against.
-/

/-! ## A353418.P8556827049656841241

`A353419(n+1)-A353269(n+1)`
-/

namespace A353418.P8556827049656841241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353419 (n + 1) - A353269 (n + 1)

end

end A353418.P8556827049656841241

/-! ## A353418.P14837570883623368394

`A353419(n+1)-A353307(2*(n+1))`
-/

namespace A353418.P14837570883623368394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353419 (n + 1) - A353307 (2 * (n + 1))

end

end A353418.P14837570883623368394

/-! ## A353418.P4993692096910735174

`A353419(n+1)-and(1, A329903(2*(n+1)))`
-/

namespace A353418.P4993692096910735174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353419 (n + 1) - Int.land 1 (A329903 (2 * (n + 1)))

end

end A353418.P4993692096910735174

/-! ## A353418.P4596624961520421224

`∑{d}[n+1, A353348(#)*A353422((n+1)/#)]`
-/

namespace A353418.P4596624961520421224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353348 d * A353422 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A353418.P4596624961520421224

/-! ## A353418.P17372504707782691934

`A353419(n+1)-A059841(A323902(n+1))`
-/

namespace A353418.P17372504707782691934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353419 (n + 1) - A059841 (A323902 (n + 1)).toNat

end

end A353418.P17372504707782691934

/-! ## A353418.P1529234420094340336

`A353419(n+1)-A353350(A335423(n+1))`
-/

namespace A353418.P1529234420094340336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353419 (n + 1) - A353350 (A335423 (n + 1)).toNat

end

end A353418.P1529234420094340336

/-! ## A353418.P10471585110028548378

`A353419(n+1)-A341353(A332812(n+1))^A329903(n+1)`
-/

namespace A353418.P10471585110028548378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353419 (n + 1) : ℚ) - (A341353 (A332812 (n + 1)).toNat : ℚ) ^ (A329903 (n + 1) : ℤ)

end

end A353418.P10471585110028548378

/-! ## A353418.P7660433903600260369

`A353419(n+1)-A353350(A332460(n+1))`
-/

namespace A353418.P7660433903600260369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353419 (n + 1) - A353350 (A332460 (n + 1)).toNat

end

end A353418.P7660433903600260369

/-! ## A353418.P16182609679613490891

`A353419(n+1)-A353350(A332462(n+1))`
-/

namespace A353418.P16182609679613490891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353419 (n + 1) - A353350 (A332462 (n + 1)).toNat

end

end A353418.P16182609679613490891

/-!
# A353419: Sum of A353269 and its Dirichlet inverse.

The programs for A353419, there is no canonical definition to state claims against.
-/

/-! ## A353419.P3018652541861526494

`A353269(n+1)+A353418(n+1)`
-/

namespace A353419.P3018652541861526494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353269 (n + 1) + A353418 (n + 1)

end

end A353419.P3018652541861526494

/-! ## A353419.P15451020613835140835

`A353418(n+1)+A353307(2*(n+1))`
-/

namespace A353419.P15451020613835140835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353418 (n + 1) + A353307 (2 * (n + 1))

end

end A353419.P15451020613835140835

/-! ## A353419.P18045902912478426998

`floor(A353418(n+1)+acot(A329903(n+1)))`
-/

namespace A353419.P18045902912478426998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A353418 (n + 1) : ℝ) + SequenceMachineLib.acot (A329903 (n + 1) : ℝ)⌋

end

end A353419.P18045902912478426998

/-! ## A353419.P4862032020093349500

`A353418(n+1)+1-A332814(n+1)²`
-/

namespace A353419.P4862032020093349500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353418 (n + 1) + (1 - A332814 (n + 1) ^ 2)

end

end A353419.P4862032020093349500

/-! ## A353419.P17896080027579138686

`A353418(n+1)+char[A329609(n+1)-1]`
-/

namespace A353419.P17896080027579138686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329609 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353418 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A353419.P17896080027579138686

/-! ## A353419.P7347547870652047837

`∑{d}[n+1, A353348(#)*A353422((n+1)/#)]+1-A332814(n+1)²`
-/

namespace A353419.P7347547870652047837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353348 d * A353422 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat + (1 - A332814 (n + 1) ^ 2)

end

end A353419.P7347547870652047837

/-! ## A353419.P13960319465849091508

`A353418(n+1)+A036044(A332814(n+1)^A004277(n))`
-/

namespace A353419.P13960319465849091508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353418 (n + 1) + A036044 (SequenceMachineLib.roundAway ((A332814 (n + 1) : ℚ) ^ (A004277 n : ℤ))).toNat

end

end A353419.P13960319465849091508

/-! ## A353419.P14491434642826720312

`A353418(n+1)+A036044(A332814(n+1)^A001615(n+1))`
-/

namespace A353419.P14491434642826720312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353418 (n + 1) + A036044 (SequenceMachineLib.roundAway ((A332814 (n + 1) : ℚ) ^ (A001615 (n + 1) : ℤ))).toNat

end

end A353419.P14491434642826720312

/-! ## A353419.P5012010025822019142

`A353418(n+1)+A353350(A332462(n+1))`
-/

namespace A353419.P5012010025822019142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353418 (n + 1) + A353350 (A332462 (n + 1)).toNat

end

end A353419.P5012010025822019142

/-! ## A353419.P11445634818310512324

`A353418(A348717(n+1))+A353380(A332462(n+1))`
-/

namespace A353419.P11445634818310512324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353418 (A348717 (n + 1)).toNat + A353380 (A332462 (n + 1)).toNat

end

end A353419.P11445634818310512324

/-!
# A353420: a(n) = A126760(A003961(n)).

The programs for A353420, the canonical program `A353420.P10121282640979448406` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353420 has offset 1).

The definition of A353420 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, A249746, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353420.P10121282640979448406

`A249746(A003602(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A353420

/-- `A249746(A003602(n+1))` -/
def P10121282640979448406.Spec : Prop :=
  ∀ n, P10121282640979448406.a n = A353420 (n + 1)

theorem P10121282640979448406.correct : P10121282640979448406.Spec := by
  intro n
  simp only [A353420, Nat.add_sub_cancel]

end A353420

/-! ## A353420.P1097792027743311669

`A353336(n+1)-A353335(n+1)`
-/

namespace A353420.P1097792027743311669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353336 (n + 1) - A353335 (n + 1)

end

end A353420.P1097792027743311669

namespace A353420

/-- `A353336(n+1)-A353335(n+1)` -/
def P1097792027743311669.Spec : Prop :=
  ∀ n, P1097792027743311669.a n = A353420 (n + 1)

end A353420

/-! ## A353420.P5225170104577946642

`A353336(4*(n+1))`
-/

namespace A353420.P5225170104577946642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353336 (4 * (n + 1))

end

end A353420.P5225170104577946642

namespace A353420

/-- `A353336(4*(n+1))` -/
def P5225170104577946642.Spec : Prop :=
  ∀ n, P5225170104577946642.a n = A353420 (n + 1)

end A353420

/-! ## A353420.P3227353417929962928

`A126760(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353420.P3227353417929962928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A003961 (n + 1)).toNat

end

end A353420.P3227353417929962928

namespace A353420

/-- `A126760(A003961(n+1))` -/
def P3227353417929962928.Spec : Prop :=
  ∀ n, P3227353417929962928.a n = A353420 (n + 1)

end A353420

/-! ## A353420.P7301673817815672296

`A249746(floor(n/(xor(n, n+1)+1))+1)`
-/

namespace A353420.P7301673817815672296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249746 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

end

end A353420.P7301673817815672296

namespace A353420

/-- `A249746(floor(n/(xor(n, n+1)+1))+1)` -/
def P7301673817815672296.Spec : Prop :=
  ∀ n, P7301673817815672296.a n = A353420 (n + 1)

end A353420

/-! ## A353420.P3909091054547662300

`floor(A045965((n+1)/2^val(n+1, 2))/3)+1`
-/

namespace A353420.P3909091054547662300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A045965 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat : ℚ) / 3⌋ + 1

end

end A353420.P3909091054547662300

namespace A353420

/-- `floor(A045965((n+1)/2^val(n+1, 2))/3)+1` -/
def P3909091054547662300.Spec : Prop :=
  ∀ n, P3909091054547662300.a n = A353420 (n + 1)

end A353420

/-! ## A353420.P8671089140830403307

`round((A283980((n+1)/2^val(n+1, 2))+1)/3)`
-/

namespace A353420.P8671089140830403307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A283980 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat + 1 : ℚ) / 3)

end

end A353420.P8671089140830403307

namespace A353420

/-- `round((A283980((n+1)/2^val(n+1, 2))+1)/3)` -/
def P8671089140830403307.Spec : Prop :=
  ∀ n, P8671089140830403307.a n = A353420 (n + 1)

end A353420

/-! ## A353420.P11963454370182213088

`A249746(A025480(n)+1)`
-/

namespace A353420.P11963454370182213088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249746 (A025480 n + 1).toNat

end

end A353420.P11963454370182213088

namespace A353420

/-- `A249746(A025480(n)+1)` -/
def P11963454370182213088.Spec : Prop :=
  ∀ n, P11963454370182213088.a n = A353420 (n + 1)

end A353420

/-! ## A353420.P11465354675865985155

`A249746(A048673(A064989(n+1)))`
-/

namespace A353420.P11465354675865985155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249746 (A048673 (A064989 (n + 1)).toNat).toNat

end

end A353420.P11465354675865985155

namespace A353420

/-- `A249746(A048673(A064989(n+1)))` -/
def P11465354675865985155.Spec : Prop :=
  ∀ n, P11465354675865985155.a n = A353420 (n + 1)

end A353420

/-! ## A353420.P10972647001058517367

`A249746(A078898(A268674(2*n+n+3)))`
-/

namespace A353420.P10972647001058517367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249746 (A078898 (A268674 (2 * n + (n + 3))).toNat).toNat

end

end A353420.P10972647001058517367

namespace A353420

/-- `A249746(A078898(A268674(2*n+n+3)))` -/
def P10972647001058517367.Spec : Prop :=
  ∀ n, P10972647001058517367.a n = A353420 (n + 1)

end A353420

/-! ## A353420.P12353392705959126071

`A092942(A048673(A000265(n+1)))`
-/

namespace A353420.P12353392705959126071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 (A048673 (A000265 (n + 1)).toNat).toNat

end

end A353420.P12353392705959126071

namespace A353420

/-- `A092942(A048673(A000265(n+1)))` -/
def P12353392705959126071.Spec : Prop :=
  ∀ n, P12353392705959126071.a n = A353420 (n + 1)

end A353420

/-! ## A353420.P14123060906563087500

`A126760(A249735(A003602(A003602(2*n+1))))`
-/

namespace A353420.P14123060906563087500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A249735 (A003602 (A003602 (2 * n + 1)).toNat).toNat).toNat

end

end A353420.P14123060906563087500

namespace A353420

/-- `A126760(A249735(A003602(A003602(2*n+1))))` -/
def P14123060906563087500.Spec : Prop :=
  ∀ n, P14123060906563087500.a n = A353420 (n + 1)

end A353420

/-! ## A353420.P13232722476009294665

`A249810(A166466(n+1))`
-/

namespace A353420.P13232722476009294665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249810 (A166466 (n + 1)).toNat

end

end A353420.P13232722476009294665

namespace A353420

/-- `A249810(A166466(n+1))` -/
def P13232722476009294665.Spec : Prop :=
  ∀ n, P13232722476009294665.a n = A353420 (n + 1)

end A353420

/-! ## A353420.P13060027329799443772

`A249810(A000265(2*n+n+3))`
-/

namespace A353420.P13060027329799443772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249810 (A000265 (2 * n + (n + 3))).toNat

end

end A353420.P13060027329799443772

namespace A353420

/-- `A249810(A000265(2*n+n+3))` -/
def P13060027329799443772.Spec : Prop :=
  ∀ n, P13060027329799443772.a n = A353420 (n + 1)

end A353420

/-! ## A353420.P14040175650435406374

`A126760(A045965(n+1))`
-/

namespace A353420.P14040175650435406374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A045965 (n + 1)).toNat

end

end A353420.P14040175650435406374

namespace A353420

/-- `A126760(A045965(n+1))` -/
def P14040175650435406374.Spec : Prop :=
  ∀ n, P14040175650435406374.a n = A353420 (n + 1)

end A353420

/-! ## A353420.P980785932560005688

`A253887(A048673(n+1))`
-/

namespace A353420.P980785932560005688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253887 (A048673 (n + 1)).toNat

end

end A353420.P980785932560005688

namespace A353420

/-- `A253887(A048673(n+1))` -/
def P980785932560005688.Spec : Prop :=
  ∀ n, P980785932560005688.a n = A353420 (n + 1)

end A353420

/-! ## A353420.P199244547055977578

`A126760(A253885(n)+1)`
-/

namespace A353420.P199244547055977578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A253885 n + 1).toNat

end

end A353420.P199244547055977578

namespace A353420

/-- `A126760(A253885(n)+1)` -/
def P199244547055977578.Spec : Prop :=
  ∀ n, P199244547055977578.a n = A353420 (n + 1)

end A353420

/-! ## A353420.P9532828100105147590

`A126760(2*A048673(n+1)-1)`
-/

namespace A353420.P9532828100105147590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (2 * A048673 (n + 1) - 1).toNat

end

end A353420.P9532828100105147590

namespace A353420

/-- `A126760(2*A048673(n+1)-1)` -/
def P9532828100105147590.Spec : Prop :=
  ∀ n, P9532828100105147590.a n = A353420 (n + 1)

end A353420

/-! ## A353420.P16317890643007297574

`A253887((A003961(n+1)+1)/2)`
-/

namespace A353420.P16317890643007297574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253887 (SequenceMachineLib.roundAway ((A003961 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A353420.P16317890643007297574

namespace A353420

/-- `A253887((A003961(n+1)+1)/2)` -/
def P16317890643007297574.Spec : Prop :=
  ∀ n, P16317890643007297574.a n = A353420 (n + 1)

end A353420

/-! ## A353420.P15221434713820471369

`A253887(ceil(A297166(2*(n+1))/2))`
-/

namespace A353420.P15221434713820471369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253887 ⌈(A297166 (2 * (n + 1)) : ℚ) / 2⌉.toNat

end

end A353420.P15221434713820471369

namespace A353420

/-- `A253887(ceil(A297166(2*(n+1))/2))` -/
def P15221434713820471369.Spec : Prop :=
  ∀ n, P15221434713820471369.a n = A353420 (n + 1)

end A353420

/-!
# A353421: Dirichlet convolution of A353269 with A353348 (the Dirichlet inverse of A353350).

The programs for A353421, there is no canonical definition to state claims against.
-/

/-! ## A353421.P3988639120244212892

`∑{d}[n+1, A353269((n+1)/#)*A353348(#)]`
-/

namespace A353421.P3988639120244212892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353269 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A353348 d

end

end A353421.P3988639120244212892

/-! ## A353421.P1695859769860936294

`A353419(A110548(n+1))-A353422(n+1)`
-/

namespace A353421.P1695859769860936294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353419 (A110548 (n + 1)).toNat - A353422 (n + 1)

end

end A353421.P1695859769860936294

/-! ## A353421.P6560150477327199402

`(A353419(n+1)-A353422(n+1))^A353430(n)`
-/

namespace A353421.P6560150477327199402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353419 (n + 1) - A353422 (n + 1) : ℚ) ^ (A353430 n : ℤ)

end

end A353421.P6560150477327199402

/-! ## A353421.P453538933391533597

`A088705(A000005(n+1))^A188389(n+1)`
-/

namespace A353421.P453538933391533597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088705 (A000005 (n + 1)).toNat : ℚ) ^ (A188389 (n + 1) : ℤ)

end

end A353421.P453538933391533597

/-! ## A353421.P12867904337357378334

`A372441(∏{e}[n+1, #+1])^A079706(n+1)`
-/

namespace A353421.P12867904337357378334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372441 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) : ℚ) ^ (A079706 (n + 1) : ℤ)

end

end A353421.P12867904337357378334

/-!
# A353422: Dirichlet convolution of A353350 with A353418 (the Dirichlet inverse of A353269).

The programs for A353422, there is no canonical definition to state claims against.
-/

/-! ## A353422.P2837232060595856295

`∑{d}[n+1, A353350((n+1)/#)*A353418(#)]`
-/

namespace A353422.P2837232060595856295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353350 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A353418 d

end

end A353422.P2837232060595856295

/-! ## A353422.P14378611308893252962

`A049347(lcm(A181602(n+3), A195017(n+1)))`
-/

namespace A353422.P14378611308893252962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (Int.lcm (A181602 (n + 3)) (A195017 (n + 1)))

end

end A353422.P14378611308893252962

/-! ## A353422.P17862350465190145538

`A353419(A110548(n+1))-A353421(n+1)`
-/

namespace A353422.P17862350465190145538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353419 (A110548 (n + 1)).toNat - A353421 (n + 1)

end

end A353422.P17862350465190145538

/-! ## A353422.P6144255708609161350

`A353419(n+1)-A353421(n+1)^A353430(n)`
-/

namespace A353422.P6144255708609161350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353419 (n + 1) : ℚ) - (A353421 (n + 1) : ℚ) ^ (A353430 n : ℤ)

end

end A353422.P6144255708609161350

/-! ## A353422.P8051277939658418424

`A353350(n+1)-A023531(A007477(n))`
-/

namespace A353422.P8051277939658418424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353350 (n + 1) - A023531 (A007477 n).toNat

end

end A353422.P8051277939658418424

/-!
# A353423: For even n, a(n) = -Sum_{d|n, d<n} a(n/2) * a(d), and for odd n, a(n) = a(A064989(n)), with a(1) = 1.

The programs for A353423, there is no canonical definition to state claims against.
-/

/-! ## A353423.P10438402442863230921

`A008683(A053585(n+1))-A326291(A000463(n+1))`
-/

namespace A353423.P10438402442863230921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A053585 (n + 1)).toNat - A326291 (A000463 (n + 1)).toNat

end

end A353423.P10438402442863230921

/-! ## A353423.P16130410850552462869

`A277176(A015161(n))-A134193(n+1)`
-/

namespace A353423.P16130410850552462869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277176 (A015161 n).toNat - A134193 (n + 1)

end

end A353423.P16130410850552462869

/-! ## A353423.P7457912706715250401

`A008683(n+1)-A079242(A028234(n+1))`
-/

namespace A353423.P7457912706715250401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) - A079242 (A028234 (n + 1)).toNat

end

end A353423.P7457912706715250401

/-!
# A353424: Number of graph minors in the n-cycle complement graph.

The programs for A353424, there is no canonical definition to state claims against.
-/

/-! ## A353424.P17388296922078440583

`A118985(A272670(n+1))+A002708(n+1)`
-/

namespace A353424.P17388296922078440583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118985 (A272670 (n + 1)).toNat + A002708 (n + 1)

end

end A353424.P17388296922078440583

/-!
# A353425: Number of graph minors in the n-wheel complement graph.

The programs for A353425, there is no canonical definition to state claims against.
-/

/-! ## A353425.P17012813131570981384

`A166039(A234235(n+1))-A020079(n)`
-/

namespace A353425.P17012813131570981384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (A234235 (n + 1)).toNat - A020079 n

end

end A353425.P17012813131570981384

/-!
# A353426: Number of integer partitions of n that are empty or a singleton or whose multiplicities are a sub-multiset that is already counted.

The programs for A353426, there is no canonical definition to state claims against.
-/

/-! ## A353426.P11832245512787010168

`A329618(A126917(n+1)+A033886(n))`
-/

namespace A353426.P11832245512787010168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329618 (A126917 (n + 1) + A033886 n).toNat

end

end A353426.P11832245512787010168

/-! ## A353426.P12378299590294410687

`A082061(A017898(2*n+3)+A017898(n))`
-/

namespace A353426.P12378299590294410687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082061 (A017898 (2 * n + 3) + A017898 n).toNat

end

end A353426.P12378299590294410687

/-!
# A353427: Numbers k such that the k-th composition in standard order has all run-lengths > 1.

The programs for A353427, there is no canonical definition to state claims against.
-/

/-! ## A353427.P8093398598447024145

`lt[-(or(1, -n)%2), A357138(n)]`
-/

namespace A353427.P8093398598447024145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (Int.lor 1 (-(n : ℤ))) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357138 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A353427.P8093398598447024145

/-! ## A353427.P1745379155846377653

`eq[1, A085405(A333627(n))]`
-/

namespace A353427.P1745379155846377653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085405 (A333627 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353427.P1745379155846377653

/-! ## A353427.P9559030799212019701

`eq[log2(A353854(n)), A354579(n)]`
-/

namespace A353427.P9559030799212019701
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A353854 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354579 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A353427.P9559030799212019701

/-! ## A353427.P4348383142117083243

`lt[Δ[A357138(n)], A000038(n)]`
-/

namespace A353427.P4348383142117083243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357138 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A353427.P4348383142117083243

/-! ## A353427.P17602143035125573510

`lt[A373948(n), A002375(n+5)]`
-/

namespace A353427.P17602143035125573510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373948 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A353427.P17602143035125573510

/-!
# A353428: Number of integer compositions of n with all parts and all run-lengths > 2.

The programs for A353428, there is no canonical definition to state claims against.
-/

/-! ## A353428.P383047976680008636

`A219640(A353501(n)%A351669(3*n+1))`
-/

namespace A353428.P383047976680008636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219640 (Int.tmod (A353501 n) (A351669 (3 * n + 1))).toNat

end

end A353428.P383047976680008636

/-! ## A353428.P2450891100040598662

`A328837(A353501(n)+1)`
-/

namespace A353428.P2450891100040598662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328837 (A353501 n + 1).toNat

end

end A353428.P2450891100040598662

/-! ## A353428.P1068077846003239374

`A322390(2^A353501(n))`
-/

namespace A353428.P1068077846003239374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322390 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A353501 n : ℤ))).toNat

end

end A353428.P1068077846003239374

/-! ## A353428.P14047329346593276658

`A113685(3^A353501(n))`
-/

namespace A353428.P14047329346593276658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113685 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A353501 n : ℤ))).toNat

end

end A353428.P14047329346593276658

/-! ## A353428.P4273676672919729855

`A001221((2^A353501(n))!)`
-/

namespace A353428.P4273676672919729855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A353501 n : ℤ))).toNat)

end

end A353428.P4273676672919729855

/-!
# A353429: Number of integer compositions of n with all prime parts and all prime run-lengths.

The programs for A353429, there is no canonical definition to state claims against.
-/

/-! ## A353429.P298671895936887411

`A195756(n+2)%p?[A193738(n)]`
-/

namespace A353429.P298671895936887411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195756 (n + 2)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A353429.P298671895936887411

/-! ## A353429.P2800399267240748537

`and(Δ[A304462(3*n)], A036036(n+1))`
-/

namespace A353429.P2800399267240748537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304462 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A036036 (n + 1))

end

end A353429.P2800399267240748537

/-! ## A353429.P15615819869623058239

`A057428(2^n-1)+A007740(n+1)`
-/

namespace A353429.P15615819869623058239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (2 ^ n - 1) + A007740 (n + 1)

end

end A353429.P15615819869623058239

/-! ## A353429.P7199199379350541200

`A007740(n+1)-A057427(2^n-1)`
-/

namespace A353429.P7199199379350541200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007740 (n + 1) - A057427 (2 ^ n - 1)

end

end A353429.P7199199379350541200

/-! ## A353429.P13463211919788028259

`A007740(A077168(n))-char[A007318(n)]`
-/

namespace A353429.P13463211919788028259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007740 (A077168 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A353429.P13463211919788028259

/-!
# A353430: Number of integer compositions of n that are empty, a singleton, or whose own run-lengths are a consecutive subsequence that is already counted.

The programs for A353430, there is no canonical definition to state claims against.
-/

/-! ## A353430.P3403952501879466313

`and(A246337(A353391(n)), A353391(n))`
-/

namespace A353430.P3403952501879466313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A246337 (A353391 n).toNat) (A353391 n)

end

end A353430.P3403952501879466313

/-!
# A353431: Numbers k such that the k-th composition in standard order is empty, a singleton, or has its own run-lengths as a subsequence (not necessarily consecutive) that is already counted.

The programs for A353431, there is no canonical definition to state claims against.
-/

/-! ## A353431.P11267363100406957396

`A088163(n)+A056169(A340257(n))`
-/

namespace A353431.P11267363100406957396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088163 n + A056169 (A340257 n).toNat

end

end A353431.P11267363100406957396

/-!
# A353432: Numbers k such that the k-th composition in standard order has its own run-lengths as a consecutive subsequence.

The programs for A353432, there is no canonical definition to state claims against.
-/

/-! ## A353432.P7785719634226108768

`A353402(A114994(n)^A103378(n+1))`
-/

namespace A353432.P7785719634226108768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353402 (SequenceMachineLib.roundAway ((A114994 n : ℚ) ^ (A103378 (n + 1) : ℤ))).toNat

end

end A353432.P7785719634226108768

/-! ## A353432.P6049447778448509164

`A353402(A114994(n))%A089085(2*(n+1))`
-/

namespace A353432.P6049447778448509164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353402 (A114994 n).toNat) (A089085 (2 * (n + 1)))

end

end A353432.P6049447778448509164

/-! ## A353432.P15214209829455209509

`A353402(eq[0, A124760(n)]^A103378(n+1))`
-/

namespace A353432.P15214209829455209509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353402 (SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) ^ (A103378 (n + 1) : ℤ))).toNat

end

end A353432.P15214209829455209509

/-! ## A353432.P13652936668606461597

`A353402(record[A005811(n²)])`
-/

namespace A353432.P13652936668606461597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353402 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A353432.P13652936668606461597

/-! ## A353432.P5730014872908756617

`A353402(record[A000120(round(n²/12))])`
-/

namespace A353432.P5730014872908756617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353402 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A353432.P5730014872908756617

/-!
# A353433: Array read by descending antidiagonals: T(n,m) is the number of sequences of length n >= 0 with elements in 0..m-1 such that no iterated difference has a common factor with m >= 1.

The programs for A353433, there is no canonical definition to state claims against.
-/

/-! ## A353433.P1410173587016506031

`A035187(A143496(n+4))`
-/

namespace A353433.P1410173587016506031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (A143496 (n + 4)).toNat

end

end A353433.P1410173587016506031

/-! ## A353433.P11937250411931026811

`A225094(n)%A095925(A177152(n+3))`
-/

namespace A353433.P11937250411931026811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225094 n) (A095925 (A177152 (n + 3)).toNat)

end

end A353433.P11937250411931026811

/-!
# A353434: Array read by descending antidiagonals: T(n,m) is the number of sequences of length n >= 0 with elements in 1..m-1 such that no iterated difference is divisible by m >= 1.

The programs for A353434, there is no canonical definition to state claims against.
-/

/-! ## A353434.P18067981289685962489

`and(A102705(A350529(n)), A322279(n))`
-/

namespace A353434.P18067981289685962489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A102705 (A350529 n).toNat) (A322279 n)

end

end A353434.P18067981289685962489

/-! ## A353434.P2604882790215297929

`A350529(n)-A335446(A200154(n+2))`
-/

namespace A353434.P2604882790215297929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350529 n - A335446 (A200154 (n + 2)).toNat

end

end A353434.P2604882790215297929

/-! ## A353434.P12300137886314211280

`and(A350529(n), A350577(A316518(2*n+1)))`
-/

namespace A353434.P12300137886314211280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A350529 n) (A350577 (A316518 (2 * n + 1)).toNat)

end

end A353434.P12300137886314211280

/-! ## A353434.P13998761904118710003

`A350529(n)-A096158(A136498(n+1))`
-/

namespace A353434.P13998761904118710003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350529 n - A096158 (A136498 (n + 1)).toNat

end

end A353434.P13998761904118710003

/-!
# A353436: Array read by descending antidiagonals: T(n,m) is the number of sequences of length n >= 0 with elements in 1..m-1 such that the determinant of the Hankel matrix of any odd number of consecutive terms is not divisible by m >= 1.

The programs for A353436, there is no canonical definition to state claims against.
-/

/-! ## A353436.P9711304563401669916

`A210391(n)-A007814(A112492(n))`
-/

namespace A353436.P9711304563401669916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 n - A007814 (A112492 n).toNat

end

end A353436.P9711304563401669916

/-! ## A353436.P2683906318340634738

`A213276(n)-A225654(A269129(n))`
-/

namespace A353436.P2683906318340634738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 n - A225654 (A269129 n).toNat

end

end A353436.P2683906318340634738

/-! ## A353436.P18058004492418925187

`and(A118759(A320080(n)), A210391(n))`
-/

namespace A353436.P18058004492418925187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118759 (A320080 n).toNat) (A210391 n)

end

end A353436.P18058004492418925187

/-! ## A353436.P1197288985566710260

`and(A118759(A320080(n)), A350364(n))`
-/

namespace A353436.P1197288985566710260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118759 (A320080 n).toNat) (A350364 n)

end

end A353436.P1197288985566710260

/-!
# A353438: Integers m such that the decimal expansion of 1/m contains the digit 2.

The programs for A353438, there is no canonical definition to state claims against.
-/

/-! ## A353438.P1387277715328933285

`lt[A025975(A241035(n+3)), A098131(n)]`
-/

namespace A353438.P1387277715328933285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025975 (A241035 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098131 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A353438.P1387277715328933285

/-!
# A353441: Integers m such that the decimal expansion of 1/m contains the digit 5.

The programs for A353441, there is no canonical definition to state claims against.
-/

/-! ## A353441.P12959799736567360237

`comp[A362579(n+1)-1]+1`
-/

namespace A353441.P12959799736567360237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362579 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A353441.P12959799736567360237

/-!
# A353443: Integers m such that the decimal expansion of 1/m contains the digit 7.

The programs for A353443, there is no canonical definition to state claims against.
-/

/-! ## A353443.P9364756323961489803

`lt[A007318(n), A007732(A219209(n))]`
-/

namespace A353443.P9364756323961489803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (A219209 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A353443.P9364756323961489803

/-!
# A353445: Let f be the completely multiplicative function from the positive integers to the cube roots of unity defined by f(prime(m)) = w^(2^(m-1)), where w is the cube root with positive imaginary part. a(n) is twice the real part of f(n).

The programs for A353445, the canonical program `A353445.P139513798113643550` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353445 has offset 1).

The definition of A353445 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332823, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353445.P139513798113643550

`2-3*A332823(n+1)²`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A353445

/-- `2-3*A332823(n+1)²` -/
def P139513798113643550.Spec : Prop :=
  ∀ n, P139513798113643550.a n = A353445 (n + 1)

theorem P139513798113643550.correct : P139513798113643550.Spec := by
  intro n
  simp only [A353445, Nat.add_sub_cancel]

end A353445

/-! ## A353445.P11292635466395670358

`3*A353350(n+1)-1`
-/

namespace A353445.P11292635466395670358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A353350 (n + 1) - 1

end

end A353445.P11292635466395670358

namespace A353445

/-- `3*A353350(n+1)-1` -/
def P11292635466395670358.Spec : Prop :=
  ∀ n, P11292635466395670358.a n = A353445 (n + 1)

end A353445

/-! ## A353445.P17648242746160692343

`2-lcm(3, A332823(n+1))`
-/

namespace A353445.P17648242746160692343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Int.lcm 3 (A332823 (n + 1)) : ℤ)

end

end A353445.P17648242746160692343

namespace A353445

/-- `2-lcm(3, A332823(n+1))` -/
def P17648242746160692343.Spec : Prop :=
  ∀ n, P17648242746160692343.a n = A353445 (n + 1)

end A353445

/-! ## A353445.P987099616817905426

`1-a(A353353(n+1))` with `a(0)=2`
-/

namespace A353445.P987099616817905426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  1 - a (A353353 (n + 1)).toNat

end

end A353445.P987099616817905426

namespace A353445

/-- `1-a(A353353(n+1))` -/
def P987099616817905426.Spec : Prop :=
  ∀ n, P987099616817905426.a n = A353445 (n + 1)

end A353445

/-! ## A353445.P13909662025270748508

`a(A332813((n+1)²))` with `a(0)=2, a(1)=-1`
-/

namespace A353445.P13909662025270748508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, -1] fun n a =>
  a (A332813 ((n + 1) ^ 2)).toNat

end

end A353445.P13909662025270748508

namespace A353445

/-- `a(A332813((n+1)²))` -/
def P13909662025270748508.Spec : Prop :=
  ∀ n, P13909662025270748508.a n = A353445 (n + 1)

end A353445

/-! ## A353445.P2510822874890502076

`A060790(A353353(n+1))`
-/

namespace A353445.P2510822874890502076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060790 (A353353 (n + 1)).toNat

end

end A353445.P2510822874890502076

namespace A353445

/-- `A060790(A353353(n+1))` -/
def P2510822874890502076.Spec : Prop :=
  ∀ n, P2510822874890502076.a n = A353445 (n + 1)

end A353445

/-! ## A353445.P1296979586441377888

`A353368(A353353(n+1)+8)`
-/

namespace A353445.P1296979586441377888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353368 (A353353 (n + 1) + 8).toNat

end

end A353445.P1296979586441377888

namespace A353445

/-- `A353368(A353353(n+1)+8)` -/
def P1296979586441377888.Spec : Prop :=
  ∀ n, P1296979586441377888.a n = A353445 (n + 1)

end A353445

/-! ## A353445.P15262608861279129413

`A087204(A195017((n+1)²)²)`
-/

namespace A353445.P15262608861279129413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087204 (A195017 ((n + 1) ^ 2) ^ 2).toNat

end

end A353445.P15262608861279129413

namespace A353445

/-- `A087204(A195017((n+1)²)²)` -/
def P15262608861279129413.Spec : Prop :=
  ∀ n, P15262608861279129413.a n = A353445 (n + 1)

end A353445

/-! ## A353445.P12010065248382842056

`4^A001222(A353353(n+1)+1)-2`
-/

namespace A353445.P12010065248382842056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A001222 (A353353 (n + 1) + 1).toNat : ℤ) - 2

end

end A353445.P12010065248382842056

namespace A353445

/-- `4^A001222(A353353(n+1)+1)-2` -/
def P12010065248382842056.Spec : Prop :=
  ∀ n, P12010065248382842056.a n = (A353445 (n + 1) : ℚ)

end A353445

/-! ## A353445.P14517194862742348311

`A000010((A353353(n+1)+1)²+1)-2`
-/

namespace A353445.P14517194862742348311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((A353353 (n + 1) + 1) ^ 2 + 1).toNat - 2

end

end A353445.P14517194862742348311

namespace A353445

/-- `A000010((A353353(n+1)+1)²+1)-2` -/
def P14517194862742348311.Spec : Prop :=
  ∀ n, P14517194862742348311.a n = A353445 (n + 1)

end A353445

/-!
# A353446: Let g be the inverse Möbius transform of the Eisenstein integer-valued function f defined in A353445. a(n) is twice the real part of g(n).

The programs for A353446, the canonical program `A353446.P1225759683580056269` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353446 has offset 1).

The definition of A353446 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353446.P13625087366122455734

`2*A353352(n+1)-A353351(n+1)`
-/

namespace A353446.P13625087366122455734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A353352 (n + 1) - A353351 (n + 1)

end

end A353446.P13625087366122455734

namespace A353446

/-- `2*A353352(n+1)-A353351(n+1)` -/
def P13625087366122455734.Spec : Prop :=
  ∀ n, P13625087366122455734.a n = A353446 (n + 1)

end A353446

/-! ## A353446.P1225759683580056269

`A008486(A353352(n+1))-Δ[A006218(n)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A353446

/-- `A008486(A353352(n+1))-Δ[A006218(n)]` -/
def P1225759683580056269.Spec : Prop :=
  ∀ n, P1225759683580056269.a n = A353446 (n + 1)

theorem P1225759683580056269.correct : P1225759683580056269.Spec := by
  intro n
  simp only [A353446, Nat.add_sub_cancel]

end A353446

/-! ## A353446.P9133729698301038756

`A005843(A353352(n+1))-A353351(n+1)`
-/

namespace A353446.P9133729698301038756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A353352 (n + 1)).toNat - A353351 (n + 1)

end

end A353446.P9133729698301038756

namespace A353446

/-- `A005843(A353352(n+1))-A353351(n+1)` -/
def P9133729698301038756.Spec : Prop :=
  ∀ n, P9133729698301038756.a n = A353446 (n + 1)

end A353446

/-! ## A353446.P8896587586100808511

`A008486(A353352(n+1))-(∑{d}[n+1, 1-A000010(#)]+n+1)`
-/

namespace A353446.P8896587586100808511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A353352 (n + 1)).toNat - (∑ d ∈ Nat.divisors (f1 n), (1 - A000010 d) + (n + 1 : ℤ))

end

end A353446.P8896587586100808511

namespace A353446

/-- `A008486(A353352(n+1))-(∑{d}[n+1, 1-A000010(#)]+n+1)` -/
def P8896587586100808511.Spec : Prop :=
  ∀ n, P8896587586100808511.a n = A353446 (n + 1)

end A353446

/-! ## A353446.P8915541414707166259

`A353352(A003961(n+1))+A353352(n+1)-A353351(n+1)`
-/

namespace A353446.P8915541414707166259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353352 (A003961 (n + 1)).toNat + (A353352 (n + 1) - A353351 (n + 1))

end

end A353446.P8915541414707166259

namespace A353446

/-- `A353352(A003961(n+1))+A353352(n+1)-A353351(n+1)` -/
def P8915541414707166259.Spec : Prop :=
  ∀ n, P8915541414707166259.a n = A353446 (n + 1)

end A353446

/-! ## A353446.P10615631314081082613

`∑{d}[A004277(A246277(n+1)), A353445(#)]`
-/

namespace A353446.P10615631314081082613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A246277 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A353445 d

end

end A353446.P10615631314081082613

namespace A353446

/-- `∑{d}[A004277(A246277(n+1)), A353445(#)]` -/
def P10615631314081082613.Spec : Prop :=
  ∀ n, P10615631314081082613.a n = A353446 (n + 1)

end A353446

/-! ## A353446.P347118342366014673

`∑{d}[A004275(A246277(n+1)+1), A353445(#)]`
-/

namespace A353446.P347118342366014673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A246277 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A353445 d

end

end A353446.P347118342366014673

namespace A353446

/-- `∑{d}[A004275(A246277(n+1)+1), A353445(#)]` -/
def P347118342366014673.Spec : Prop :=
  ∀ n, P347118342366014673.a n = A353446 (n + 1)

end A353446

/-! ## A353446.P15600287741419379104

`∑{d}[A004280(A246277(n+1)+2)-1, A353445(#)]`
-/

namespace A353446.P15600287741419379104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (A246277 (n + 1) + 2).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A353445 d

end

end A353446.P15600287741419379104

namespace A353446

/-- `∑{d}[A004280(A246277(n+1)+2)-1, A353445(#)]` -/
def P15600287741419379104.Spec : Prop :=
  ∀ n, P15600287741419379104.a n = A353446 (n + 1)

end A353446

/-! ## A353446.P17835225998170344087

`∑{d}[n+1, A353445(#)]`
-/

namespace A353446.P17835225998170344087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353445 d

end

end A353446.P17835225998170344087

namespace A353446

/-- `∑{d}[n+1, A353445(#)]` -/
def P17835225998170344087.Spec : Prop :=
  ∀ n, P17835225998170344087.a n = A353446 (n + 1)

end A353446

/-! ## A353446.P12665175314834488409

`A210826(n+1)*A353445(n+1)`
-/

namespace A353446.P12665175314834488409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210826 (n + 1) * A353445 (n + 1)

end

end A353446.P12665175314834488409

namespace A353446

/-- `A210826(n+1)*A353445(n+1)` -/
def P12665175314834488409.Spec : Prop :=
  ∀ n, P12665175314834488409.a n = A353446 (n + 1)

end A353446

/-!
# A353447: a(n) is the number of tetrapods standing on the four edges of an n X n grid, so that no two feet are the same distance apart and no foot is on a corner. Tetrapods with congruent footprints are counted only once.

The programs for A353447, there is no canonical definition to state claims against.
-/

/-! ## A353447.P6896806127581909719

`A353532(∑[n+1]+2)`
-/

namespace A353447.P6896806127581909719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353532 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A353447.P6896806127581909719

/-! ## A353447.P11208675457139614037

`A158388(n)*A353532(A238531(n+2))`
-/

namespace A353447.P11208675457139614037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n * A353532 (A238531 (n + 2)).toNat

end

end A353447.P11208675457139614037

/-! ## A353447.P2876895701345691825

`A158388(n)*A353532(A167499(n)-3)`
-/

namespace A353447.P2876895701345691825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n * A353532 (A167499 n - 3).toNat

end

end A353447.P2876895701345691825

/-! ## A353447.P10731421388516907374

`A353532(A238531(n+2))%A155666(n)`
-/

namespace A353447.P10731421388516907374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353532 (A238531 (n + 2)).toNat) (A155666 n)

end

end A353447.P10731421388516907374

/-! ## A353447.P13654210176168094379

`A353532(A167499(n)-3)%A022719(n)`
-/

namespace A353447.P13654210176168094379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353532 (A167499 n - 3).toNat) (A022719 n)

end

end A353447.P13654210176168094379

/-!
# A353449: T(n,m) is the number of non-congruent quadrilaterals with integer vertex coordinates (x1,1), (n,y2), (x3,m), (1,y4), 1 < x1, x3 < n, 1 < y2, y4 < m, m <= n, such that the 6 distances between the 4 vertices are distinct and (x3-x1)*(y4-y2) > 0, where T(n,m) is a triangle read by rows.

The programs for A353449, there is no canonical definition to state claims against.
-/

/-! ## A353449.P12731397375760754362

`A353532(n+3)-(A353451(n+3)+A353450(n+3))`
-/

namespace A353449.P12731397375760754362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353532 (n + 3) - (A353451 (n + 3) + A353450 (n + 3))

end

end A353449.P12731397375760754362

/-!
# A353450: T(n,m) is the number of non-congruent quadrilaterals with integer vertex coordinates (x1,1), (n,y2), (x3,m), (1,y4), 1 < x1, x3 < n, 1 < y2, y4 < m, m <= n, such that the 6 distances between the 4 vertices are distinct and (x3-x1)*(y4-y2) < 0, where T(n,m) is a triangle read by rows.

The programs for A353450, there is no canonical definition to state claims against.
-/

/-! ## A353450.P15363538400376602884

`A353532(n+3)-(A353451(n+3)+A353449(n+3))`
-/

namespace A353450.P15363538400376602884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353532 (n + 3) - (A353451 (n + 3) + A353449 (n + 3))

end

end A353450.P15363538400376602884

/-!
# A353451: T(n,m) is the number of non-congruent quadrilaterals with integer vertex coordinates (x1,1), (n,y2), (x3,m), (1,y4), 1 < x1, x3 < n, 1 < y2, y4 < m, m <= n, such that the 6 distances between the 4 vertices are distinct and (x3-x1)*(y4-y2) = 0, where T(n,m) is a triangle read by rows.

The programs for A353451, there is no canonical definition to state claims against.
-/

/-! ## A353451.P9053827436263139526

`A353532(n+3)-(A353450(n+3)+A353449(n+3))`
-/

namespace A353451.P9053827436263139526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353532 (n + 3) - (A353450 (n + 3) + A353449 (n + 3))

end

end A353451.P9053827436263139526

/-!
# A353453: a(n) is the permanent of the n X n symmetric matrix M(n) that is defined as M[i,j] = abs(i - j) if min(i, j) < max(i, j) <= 2*min(i, j), and otherwise 0.

The programs for A353453, there is no canonical definition to state claims against.
-/

/-! ## A353453.P484135586609606652

`A261915(A345177(n)²)²`
-/

namespace A353453.P484135586609606652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261915 (A345177 n ^ 2).toNat ^ 2

end

end A353453.P484135586609606652

/-! ## A353453.P17648878424412440370

`A000005(A086044(a(n-1)²)+1)²` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=1`
-/

namespace A353453.P17648878424412440370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 0, 1] fun n a =>
  A000005 (A086044 (a (n - 1) ^ 2).toNat + 1).toNat ^ 2

end

end A353453.P17648878424412440370

/-! ## A353453.P4339137121175795008

`(2*A002322(A003056(a(n-2)+a(n-1)²)))²` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=1`
-/

namespace A353453.P4339137121175795008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 0, 1] fun n a =>
  (2 * A002322 (A003056 (a (n - 2) + a (n - 1) ^ 2).toNat).toNat) ^ 2

end

end A353453.P4339137121175795008

/-! ## A353453.P3945446345716871153

`and(A081589(n), A121697(A008937(n)))`
-/

namespace A353453.P3945446345716871153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A081589 n) (A121697 (A008937 n).toNat)

end

end A353453.P3945446345716871153

/-!
# A353454: a(1) = 1, for n > 1, a(n) = -Sum_{d|n, d<n} a(A064989(n)) * a(d).

The programs for A353454, there is no canonical definition to state claims against.
-/

/-! ## A353454.P3064647248122783566

`A353455(A003961(n+1))`
-/

namespace A353454.P3064647248122783566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353455 (A003961 (n + 1)).toNat

end

end A353454.P3064647248122783566

/-! ## A353454.P12167795912839962810

`A353455(A045965(n+1))`
-/

namespace A353454.P12167795912839962810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353455 (A045965 (n + 1)).toNat

end

end A353454.P12167795912839962810

/-! ## A353454.P4335027102722074916

`A353455(A253885(n)+1)`
-/

namespace A353454.P4335027102722074916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353455 (A253885 n + 1).toNat

end

end A353454.P4335027102722074916

/-! ## A353454.P16188145839901595568

`A353455(A243501(n+1)-1)`
-/

namespace A353454.P16188145839901595568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353455 (A243501 (n + 1) - 1).toNat

end

end A353454.P16188145839901595568

/-! ## A353454.P6637851590559646105

`A353455(A336853(n+1)+1+n)`
-/

namespace A353454.P6637851590559646105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353455 (A336853 (n + 1) + 1 + (n : ℤ)).toNat

end

end A353454.P6637851590559646105

/-! ## A353454.P2502061327910506755

`A353455(A283980(n+1))`
-/

namespace A353454.P2502061327910506755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353455 (A283980 (n + 1)).toNat

end

end A353454.P2502061327910506755

/-!
# A353455: a(n) = A353454(A064989(n)).

The programs for A353455, there is no canonical definition to state claims against.
-/

/-! ## A353455.P13803183834285696123

`A353454(A064989(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353455.P13803183834285696123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353454 (A064989 (n + 1)).toNat

end

end A353455.P13803183834285696123

/-! ## A353455.P5060481851253615606

`A353454(abs(A290099(n+1)))`
-/

namespace A353455.P5060481851253615606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353454 |A290099 (n + 1)|.toNat

end

end A353455.P5060481851253615606

/-! ## A353455.P10553380021178034825

`A353454(A252463(A000265(n+1)))`
-/

namespace A353455.P10553380021178034825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353454 (A252463 (A000265 (n + 1)).toNat).toNat

end

end A353455.P10553380021178034825

/-! ## A353455.P238962596177458757

`A353454(lcm(A065357(n), A290099(n+1)))`
-/

namespace A353455.P238962596177458757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353454 (Int.lcm (A065357 n) (A290099 (n + 1)))

end

end A353455.P238962596177458757

/-! ## A353455.P12011311321222681783

`A353454(A353791(n+1)/A003958(n+1))`
-/

namespace A353455.P12011311321222681783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353454 (SequenceMachineLib.roundAway ((A353791 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ))).toNat

end

end A353455.P12011311321222681783

/-!
# A353456: Numbers k such that A353627(k) is less than A353628(k).

The programs for A353456, the canonical program `A353456.P12183993383007872108` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353456 has offset 1).

The definition of A353456 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 786 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353456.P12183993383007872108

`filter[A381313(n+1), A353628(#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A353456

/-- `filter[A381313(n+1), A353628(#)]` -/
def P12183993383007872108.Spec : Prop :=
  ∀ n, P12183993383007872108.a n = A353456 (n + 1)

theorem P12183993383007872108.correct : P12183993383007872108.Spec := by
  intro n
  simp only [A353456, Nat.add_sub_cancel]

end A353456

/-! ## A353456.P9928990901612564976

`filter[A038838(n+1), A353628(#)]`
-/

namespace A353456.P9928990901612564976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353628 (f1 j).toNat = 1) n)

end

end A353456.P9928990901612564976

namespace A353456

/-- `filter[A038838(n+1), A353628(#)]` -/
def P9928990901612564976.Spec : Prop :=
  ∀ n, P9928990901612564976.a n = A353456 (n + 1)

end A353456

/-! ## A353456.P13950054393420570026

`∩[A337534(n+1), A381313(n+1)]`
-/

namespace A353456.P13950054393420570026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353456.P13950054393420570026

namespace A353456

/-- `∩[A337534(n+1), A381313(n+1)]` -/
def P13950054393420570026.Spec : Prop :=
  ∀ n, (P13950054393420570026.a n : ℤ) = A353456 (n + 1)

end A353456

/-!
# A353457: a(1) = 1, for n > 1, a(n) = -Sum_{d|n, d<n} a(A064989(n/d)) * a(d).

The programs for A353457, there is no canonical definition to state claims against.
-/

/-! ## A353457.P16105299423559205148

`A353458(A003961(n+1))`
-/

namespace A353457.P16105299423559205148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353458 (A003961 (n + 1)).toNat

end

end A353457.P16105299423559205148

/-! ## A353457.P2632564514542223532

`A008683(A247503(n+1))`
-/

namespace A353457.P2632564514542223532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A247503 (n + 1)).toNat

end

end A353457.P2632564514542223532

/-! ## A353457.P6456580668212675787

`A008683(A319521(n+1))`
-/

namespace A353457.P6456580668212675787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A319521 (n + 1)).toNat

end

end A353457.P6456580668212675787

/-! ## A353457.P17238854313789042236

`A353459(n+1)-A353458(n+1)`
-/

namespace A353457.P17238854313789042236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353459 (n + 1) - A353458 (n + 1)

end

end A353457.P17238854313789042236

/-! ## A353457.P12278897354173525863

`A008683((n+1)/A248101(n+1))`
-/

namespace A353457.P12278897354173525863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A248101 (n + 1) : ℚ))).toNat

end

end A353457.P12278897354173525863

/-! ## A353457.P7749958510703111052

`A353459(9*(n+1))`
-/

namespace A353457.P7749958510703111052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353459 (9 * (n + 1))

end

end A353457.P7749958510703111052

/-! ## A353457.P6019454839244245263

`A353458(A061898(n+1))`
-/

namespace A353457.P6019454839244245263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353458 (A061898 (n + 1)).toNat

end

end A353457.P6019454839244245263

/-! ## A353457.P7340435608639697877

`A353458(A045965(n+1))`
-/

namespace A353457.P7340435608639697877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353458 (A045965 (n + 1)).toNat

end

end A353457.P7340435608639697877

/-! ## A353457.P15782551559485947797

`A353458(A118306(n+1))`
-/

namespace A353457.P15782551559485947797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353458 (A118306 (n + 1)).toNat

end

end A353457.P15782551559485947797

/-! ## A353457.P4663329802350464857

`A353458(A283980(n+1))`
-/

namespace A353457.P4663329802350464857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353458 (A283980 (n + 1)).toNat

end

end A353457.P4663329802350464857

/-!
# A353458: Dirichlet inverse of A353457.

The programs for A353458, there is no canonical definition to state claims against.
-/

/-! ## A353458.P11932743806726854542

`A353457(A064989(n+1))`
-/

namespace A353458.P11932743806726854542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353457 (A064989 (n + 1)).toNat

end

end A353458.P11932743806726854542

/-! ## A353458.P3212893988506569109

`A353459(4*(n+1))`
-/

namespace A353458.P3212893988506569109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353459 (4 * (n + 1))

end

end A353458.P3212893988506569109

/-! ## A353458.P1138743709276481387

`A008683(A248101(n+1))`
-/

namespace A353458.P1138743709276481387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A248101 (n + 1)).toNat

end

end A353458.P1138743709276481387

/-! ## A353458.P11579830360063850167

`A008683(A319522(n+1))`
-/

namespace A353458.P11579830360063850167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A319522 (n + 1)).toNat

end

end A353458.P11579830360063850167

/-! ## A353458.P8381816177567984699

`A353459(n+1)-A353457(n+1)`
-/

namespace A353458.P8381816177567984699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353459 (n + 1) - A353457 (n + 1)

end

end A353458.P8381816177567984699

/-! ## A353458.P3715324690186238955

`A008683((n+1)/A247503(n+1))`
-/

namespace A353458.P3715324690186238955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A247503 (n + 1) : ℚ))).toNat

end

end A353458.P3715324690186238955

/-! ## A353458.P14387537189300965619

`A353457(A252463(A000265(n+1)))`
-/

namespace A353458.P14387537189300965619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353457 (A252463 (A000265 (n + 1)).toNat).toNat

end

end A353458.P14387537189300965619

/-! ## A353458.P16866013283743647905

`A353457(A061898(n+1))`
-/

namespace A353458.P16866013283743647905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353457 (A061898 (n + 1)).toNat

end

end A353458.P16866013283743647905

/-! ## A353458.P11135901686472280135

`A353457(A003961(n+1))`
-/

namespace A353458.P11135901686472280135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353457 (A003961 (n + 1)).toNat

end

end A353458.P11135901686472280135

/-! ## A353458.P14868325709068676972

`A353457(A118306(n+1))`
-/

namespace A353458.P14868325709068676972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353457 (A118306 (n + 1)).toNat

end

end A353458.P14868325709068676972

/-!
# A353459: Sum of A353457 and its Dirichlet inverse.

The programs for A353459, there is no canonical definition to state claims against.
-/

/-! ## A353459.P6719138872278171149

`A353457(n+1)+A353458(n+1)`
-/

namespace A353459.P6719138872278171149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353457 (n + 1) + A353458 (n + 1)

end

end A353459.P6719138872278171149

/-! ## A353459.P13269929495643704059

`A353457(n+1)+A353457(A064989(n+1))`
-/

namespace A353459.P13269929495643704059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353457 (n + 1) + A353457 (A064989 (n + 1)).toNat

end

end A353459.P13269929495643704059

/-! ## A353459.P479619591830932059

`A353457(A064989(n+1))+A353457(n+1)`
-/

namespace A353459.P479619591830932059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353457 (A064989 (n + 1)).toNat + A353457 (n + 1)

end

end A353459.P479619591830932059

/-! ## A353459.P18390285770975259098

`A353457(A061898(n+1))+A353457(n+1)`
-/

namespace A353459.P18390285770975259098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353457 (A061898 (n + 1)).toNat + A353457 (n + 1)

end

end A353459.P18390285770975259098

/-! ## A353459.P359478347889255334

`A353458(A061898(n+1))+A353458(n+1)`
-/

namespace A353459.P359478347889255334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353458 (A061898 (n + 1)).toNat + A353458 (n + 1)

end

end A353459.P359478347889255334

/-! ## A353459.P3735958196981098439

`A353457(A003961(n+1))+A353457(n+1)`
-/

namespace A353459.P3735958196981098439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353457 (A003961 (n + 1)).toNat + A353457 (n + 1)

end

end A353459.P3735958196981098439

/-! ## A353459.P2606098067392176340

`A353458(A003961(n+1))+A353458(n+1)`
-/

namespace A353459.P2606098067392176340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353458 (A003961 (n + 1)).toNat + A353458 (n + 1)

end

end A353459.P2606098067392176340

/-! ## A353459.P15626401368346042601

`A353458(A045965(n+1))+A353458(n+1)`
-/

namespace A353459.P15626401368346042601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353458 (A045965 (n + 1)).toNat + A353458 (n + 1)

end

end A353459.P15626401368346042601

/-! ## A353459.P14731181052021826238

`A353457(A118306(n+1))+A353457(n+1)`
-/

namespace A353459.P14731181052021826238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353457 (A118306 (n + 1)).toNat + A353457 (n + 1)

end

end A353459.P14731181052021826238

/-! ## A353459.P380224416187205292

`A353458(A118306(n+1))+A353458(n+1)`
-/

namespace A353459.P380224416187205292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353458 (A118306 (n + 1)).toNat + A353458 (n + 1)

end

end A353459.P380224416187205292

/-! ## A353459.P17417978815794467338

`A353458(A283980(n+1))+A353458(n+1)`
-/

namespace A353459.P17417978815794467338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353458 (A283980 (n + 1)).toNat + A353458 (n + 1)

end

end A353459.P17417978815794467338

/-!
# A353460: Dirichlet convolution of A126760 with A349134.

The programs for A353460, there is no canonical definition to state claims against.
-/

/-! ## A353460.P7649033625289793347

`∑{d}[n+1, A126760(#)*A349134((n+1)/#)]`
-/

namespace A353460.P7649033625289793347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A126760 d * A349134 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A353460.P7649033625289793347

/-! ## A353460.P2846107751587904405

`A353462(n+1)-A353461(n+1)`
-/

namespace A353460.P2846107751587904405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353462 (n + 1) - A353461 (n + 1)

end

end A353460.P2846107751587904405

/-! ## A353460.P15890260307357780053

`and(A242465(n), A323913(n+1))-A353461(n+1)`
-/

namespace A353460.P15890260307357780053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A242465 n) (A323913 (n + 1)) - A353461 (n + 1)

end

end A353460.P15890260307357780053

/-! ## A353460.P7568730691280739710

`A353462(n+1)-A151962(A077957(n))%4`
-/

namespace A353460.P7568730691280739710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353462 (n + 1) - Int.tmod (A151962 (A077957 n).toNat) 4

end

end A353460.P7568730691280739710

/-! ## A353460.P832250025708526446

`(1-n)%2*A300826(A049956(n+1))`
-/

namespace A353460.P832250025708526446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - (n : ℤ)) 2 * A300826 (A049956 (n + 1)).toNat

end

end A353460.P832250025708526446

/-!
# A353461: Dirichlet convolution of A003602 (a Kimberling paraphrase) with A323881 (the Dirichlet inverse of A126760).

The programs for A353461, there is no canonical definition to state claims against.
-/

/-! ## A353461.P6260803149725058211

`A353462(n+1)-A353460(n+1)`
-/

namespace A353461.P6260803149725058211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353462 (n + 1) - A353460 (n + 1)

end

end A353461.P6260803149725058211

/-! ## A353461.P2859840114542111794

`∑{d}[n+1, A003602(#)*A323881((n+1)/#)]`
-/

namespace A353461.P2859840114542111794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003602 d * A323881 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A353461.P2859840114542111794

/-! ## A353461.P10975544675616614894

`A260160(n+3)+A010054(A201816(2*(n+1))²)`
-/

namespace A353461.P10975544675616614894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260160 (n + 3) + A010054 (A201816 (2 * (n + 1)) ^ 2).toNat

end

end A353461.P10975544675616614894

/-! ## A353461.P4165182047609880468

`A069010(A059841(n)*A274163(n))`
-/

namespace A353461.P4165182047609880468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A059841 n * A274163 n).toNat

end

end A353461.P4165182047609880468

/-! ## A353461.P12365861524126984457

`A088705(A346233(n))*A174713(n+1)`
-/

namespace A353461.P12365861524126984457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (A346233 n).toNat * A174713 (n + 1)

end

end A353461.P12365861524126984457

/-!
# A353462: a(n) = A353460(n) + A353461(n).

The programs for A353462, there is no canonical definition to state claims against.
-/

/-! ## A353462.P12487207881893788894

`A353460(n+1)+A353461(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353462.P12487207881893788894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353460 (n + 1) + A353461 (n + 1)

end

end A353462.P12487207881893788894

/-! ## A353462.P17032956004524045410

`A125974(and(A318207(n), A323884(n+1)))`
-/

namespace A353462.P17032956004524045410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125974 (Int.land (A318207 n) (A323884 (n + 1))).toNat

end

end A353462.P17032956004524045410

/-! ## A353462.P15370021034531552207

`val(A058324(n+1)-(1-∑{p}[n+1, C(#, n)]+n), 2)`
-/

namespace A353462.P15370021034531552207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A058324 (n + 1) - (1 - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n : ℕ) : ℤ) + (n : ℤ))).toNat 2

end

end A353462.P15370021034531552207

/-! ## A353462.P14303636388000591756

`round((round(acot(∏{e}[n+1, -#])+n+1)-n)/A325352(3*n+1))`
-/

namespace A353462.P14303636388000591756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway (SequenceMachineLib.acot ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p : ℤ)) : ℤ) : ℝ) + (n + 1 : ℝ)) - (n : ℤ) : ℚ) / (A325352 (3 * n + 1) : ℚ))

end

end A353462.P14303636388000591756

/-! ## A353462.P14526587848556048950

`(round(acot(∏{e}[n+1, -#])+n+1)-n)*A000035(2^(∑[n+1]%(n+2))-1)`
-/

namespace A353462.P14526587848556048950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (SequenceMachineLib.acot ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p : ℤ)) : ℤ) : ℝ) + (n + 1 : ℝ)) - (n : ℤ)) * A000035 (2 ^ ((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 2)) - 1)

end

end A353462.P14526587848556048950

/-!
# A353463: Characteristic function of lesser twin primes: a(n) = 1 if both n and n+2 are primes, otherwise 0.

The programs for A353463, the canonical program `A353463.P14904150347216604516` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353463 has offset 1).

The definition of A353463 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A353463.P3751677446605878346

`A353464(n+3)`
-/

namespace A353463.P3751677446605878346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353464 (n + 3)

end

end A353463.P3751677446605878346

namespace A353463

/-- `A353464(n+3)` -/
def P3751677446605878346.Spec : Prop :=
  ∀ n, P3751677446605878346.a n = A353463 (n + 1)

end A353463

/-! ## A353463.P14904150347216604516

`A010051(n+1)*A010051(n+3)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A353463

/-- `A010051(n+1)*A010051(n+3)` -/
def P14904150347216604516.Spec : Prop :=
  ∀ n, P14904150347216604516.a n = A353463 (n + 1)

theorem P14904150347216604516.correct : P14904150347216604516.Spec := by
  intro n
  simp only [A353463, Nat.add_sub_cancel]

end A353463

/-! ## A353463.P6512437588388315189

`char[A144834(n+1)]`
-/

namespace A353463.P6512437588388315189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353463.P6512437588388315189

namespace A353463

/-- `char[A144834(n+1)]` -/
def P6512437588388315189.Spec : Prop :=
  ∀ n, (P6512437588388315189.a n : ℤ) = A353463 (n + 1)

end A353463

/-! ## A353463.P17550128815055011843

`char[A001359(n+1)-1]`
-/

namespace A353463.P17550128815055011843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353463.P17550128815055011843

namespace A353463

/-- `char[A001359(n+1)-1]` -/
def P17550128815055011843.Spec : Prop :=
  ∀ n, (P17550128815055011843.a n : ℤ) = A353463 (n + 1)

end A353463

/-! ## A353463.P4940209387399909892

`char[A014574(n+1)-2]`
-/

namespace A353463.P4940209387399909892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353463.P4940209387399909892

namespace A353463

/-- `char[A014574(n+1)-2]` -/
def P4940209387399909892.Spec : Prop :=
  ∀ n, (P4940209387399909892.a n : ℤ) = A353463 (n + 1)

end A353463

/-! ## A353463.P9688763455748450779

`char[A071256(n+1)-2]`
-/

namespace A353463.P9688763455748450779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071256 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353463.P9688763455748450779

namespace A353463

/-- `char[A071256(n+1)-2]` -/
def P9688763455748450779.Spec : Prop :=
  ∀ n, (P9688763455748450779.a n : ℤ) = A353463 (n + 1)

end A353463

/-! ## A353463.P12633430619072065038

`char[A006512(n+1)-3]`
-/

namespace A353463.P12633430619072065038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353463.P12633430619072065038

namespace A353463

/-- `char[A006512(n+1)-3]` -/
def P12633430619072065038.Spec : Prop :=
  ∀ n, (P12633430619072065038.a n : ℤ) = A353463 (n + 1)

end A353463

/-! ## A353463.P2233746201272101832

`val(n+1, A112823(n+2))`
-/

namespace A353463.P2233746201272101832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) (A112823 (n + 2)).toNat

end

end A353463.P2233746201272101832

namespace A353463

/-- `val(n+1, A112823(n+2))` -/
def P2233746201272101832.Spec : Prop :=
  ∀ n, (P2233746201272101832.a n : ℤ) = A353463 (n + 1)

end A353463

/-! ## A353463.P7913221864647759079

`val(A340071(n+1), n+2)`
-/

namespace A353463.P7913221864647759079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A340071 (n + 1)).toNat (n + 2)

end

end A353463.P7913221864647759079

namespace A353463

/-- `val(A340071(n+1), n+2)` -/
def P7913221864647759079.Spec : Prop :=
  ∀ n, (P7913221864647759079.a n : ℤ) = A353463 (n + 1)

end A353463

/-! ## A353463.P1454038535919279185

`val(A003961(n+1), n+3)`
-/

namespace A353463.P1454038535919279185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003961 (n + 1)).toNat (n + 3)

end

end A353463.P1454038535919279185

namespace A353463

/-- `val(A003961(n+1), n+3)` -/
def P1454038535919279185.Spec : Prop :=
  ∀ n, (P1454038535919279185.a n : ℤ) = A353463 (n + 1)

end A353463

/-! ## A353463.P3204977383684393766

`val(A045965(n+1), n+3)`
-/

namespace A353463.P3204977383684393766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A045965 (n + 1)).toNat (n + 3)

end

end A353463.P3204977383684393766

namespace A353463

/-- `val(A045965(n+1), n+3)` -/
def P3204977383684393766.Spec : Prop :=
  ∀ n, (P3204977383684393766.a n : ℤ) = A353463 (n + 1)

end A353463

/-! ## A353463.P8092576110286527654

`val(A328915(n+1), n+3)`
-/

namespace A353463.P8092576110286527654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A328915 (n + 1)).toNat (n + 3)

end

end A353463.P8092576110286527654

namespace A353463

/-- `val(A328915(n+1), n+3)` -/
def P8092576110286527654.Spec : Prop :=
  ∀ n, (P8092576110286527654.a n : ℤ) = A353463 (n + 1)

end A353463

/-! ## A353463.P3666691137484225989

`val(A336849(n+1), n+3)`
-/

namespace A353463.P3666691137484225989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A336849 (n + 1)).toNat (n + 3)

end

end A353463.P3666691137484225989

namespace A353463

/-- `val(A336849(n+1), n+3)` -/
def P3666691137484225989.Spec : Prop :=
  ∀ n, (P3666691137484225989.a n : ℤ) = A353463 (n + 1)

end A353463

/-! ## A353463.P9756400303082198028

`char[p?[A040976(n+1)]-1]`
-/

namespace A353463.P9756400303082198028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353463.P9756400303082198028

namespace A353463

/-- `char[p?[A040976(n+1)]-1]` -/
def P9756400303082198028.Spec : Prop :=
  ∀ n, (P9756400303082198028.a n : ℤ) = A353463 (n + 1)

end A353463

/-! ## A353463.P13468376183099260147

`C(2, (2-A066285(n+2))²)`
-/

namespace A353463.P13468376183099260147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 ((2 - A066285 (n + 2)) ^ 2).toNat

end

end A353463.P13468376183099260147

namespace A353463

/-- `C(2, (2-A066285(n+2))²)` -/
def P13468376183099260147.Spec : Prop :=
  ∀ n, (P13468376183099260147.a n : ℤ) = A353463 (n + 1)

end A353463

/-! ## A353463.P5361236066959535211

`char[2*(A040040(n+1)-1)]`
-/

namespace A353463.P5361236066959535211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A040040 (n + 1) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353463.P5361236066959535211

namespace A353463

/-- `char[2*(A040040(n+1)-1)]` -/
def P5361236066959535211.Spec : Prop :=
  ∀ n, (P5361236066959535211.a n : ℤ) = A353463 (n + 1)

end A353463

/-! ## A353463.P10035876838809399943

`char[A077800(2*n+1)-1]`
-/

namespace A353463.P10035876838809399943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (2 * n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353463.P10035876838809399943

namespace A353463

/-- `char[A077800(2*n+1)-1]` -/
def P10035876838809399943.Spec : Prop :=
  ∀ n, (P10035876838809399943.a n : ℤ) = A353463 (n + 1)

end A353463

/-! ## A353463.P5066604351189511564

`char[p?[A000040(n+1)-2]-1]`
-/

namespace A353463.P5066604351189511564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353463.P5066604351189511564

namespace A353463

/-- `char[p?[A000040(n+1)-2]-1]` -/
def P5066604351189511564.Spec : Prop :=
  ∀ n, (P5066604351189511564.a n : ℤ) = A353463 (n + 1)

end A353463

/-! ## A353463.P13943709209608828271

`A092953(A118136(n))`
-/

namespace A353463.P13943709209608828271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (A118136 n).toNat

end

end A353463.P13943709209608828271

namespace A353463

/-- `A092953(A118136(n))` -/
def P13943709209608828271.Spec : Prop :=
  ∀ n, P13943709209608828271.a n = A353463 (n + 1)

end A353463

/-!
# A353464: Characteristic function of greater twin primes: a(n) = 1 if both n and n-2 are primes, otherwise 0.

The programs for A353464, the canonical program `A353464.P7528674575556997429` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353464 has offset 1).

The definition of A353464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353464.P10754771443641730343

`char[A014574(n+1)]`
-/

namespace A353464.P10754771443641730343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353464.P10754771443641730343

namespace A353464

/-- `char[A014574(n+1)]` -/
def P10754771443641730343.Spec : Prop :=
  ∀ n, (P10754771443641730343.a n : ℤ) = A353464 (n + 1)

end A353464

/-! ## A353464.P3189011947950210948

`char[A071256(n+1)]`
-/

namespace A353464.P3189011947950210948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353464.P3189011947950210948

namespace A353464

/-- `char[A071256(n+1)]` -/
def P3189011947950210948.Spec : Prop :=
  ∀ n, (P3189011947950210948.a n : ℤ) = A353464 (n + 1)

end A353464

/-! ## A353464.P11157665212371509644

`char[record[A066984(n+2)]]`
-/

namespace A353464.P11157665212371509644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066984 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353464.P11157665212371509644

namespace A353464

/-- `char[record[A066984(n+2)]]` -/
def P11157665212371509644.Spec : Prop :=
  ∀ n, (P11157665212371509644.a n : ℤ) = A353464 (n + 1)

end A353464

/-! ## A353464.P13526267371731339689

`char[A001359(n+1)+1]`
-/

namespace A353464.P13526267371731339689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353464.P13526267371731339689

namespace A353464

/-- `char[A001359(n+1)+1]` -/
def P13526267371731339689.Spec : Prop :=
  ∀ n, (P13526267371731339689.a n : ℤ) = A353464 (n + 1)

end A353464

/-! ## A353464.P13726322937093646024

`char[A006512(n+1)-1]`
-/

namespace A353464.P13726322937093646024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353464.P13726322937093646024

namespace A353464

/-- `char[A006512(n+1)-1]` -/
def P13726322937093646024.Spec : Prop :=
  ∀ n, (P13726322937093646024.a n : ℤ) = A353464 (n + 1)

end A353464

/-! ## A353464.P6887347479713319930

`char[A144834(n+1)+2]`
-/

namespace A353464.P6887347479713319930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144834 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353464.P6887347479713319930

namespace A353464

/-- `char[A144834(n+1)+2]` -/
def P6887347479713319930.Spec : Prop :=
  ∀ n, (P6887347479713319930.a n : ℤ) = A353464 (n + 1)

end A353464

/-! ## A353464.P11868086949838661276

`char[2*A040040(n+1)]`
-/

namespace A353464.P11868086949838661276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353464.P11868086949838661276

namespace A353464

/-- `char[2*A040040(n+1)]` -/
def P11868086949838661276.Spec : Prop :=
  ∀ n, (P11868086949838661276.a n : ℤ) = A353464 (n + 1)

end A353464

/-! ## A353464.P11989134343394030394

`char[p?[A040976(n+1)]+1]`
-/

namespace A353464.P11989134343394030394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353464.P11989134343394030394

namespace A353464

/-- `char[p?[A040976(n+1)]+1]` -/
def P11989134343394030394.Spec : Prop :=
  ∀ n, (P11989134343394030394.a n : ℤ) = A353464 (n + 1)

end A353464

/-! ## A353464.P11959283413351073399

`char[A077800(2*n+1)+1]`
-/

namespace A353464.P11959283413351073399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (2 * n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353464.P11959283413351073399

namespace A353464

/-- `char[A077800(2*n+1)+1]` -/
def P11959283413351073399.Spec : Prop :=
  ∀ n, (P11959283413351073399.a n : ℤ) = A353464 (n + 1)

end A353464

/-! ## A353464.P12055102599355602259

`A061358(A118136(n))`
-/

namespace A353464.P12055102599355602259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (A118136 n).toNat

end

end A353464.P12055102599355602259

namespace A353464

/-- `A061358(A118136(n))` -/
def P12055102599355602259.Spec : Prop :=
  ∀ n, P12055102599355602259.a n = A353464 (n + 1)

end A353464

/-! ## A353464.P649089742690394420

`A061358(A014973(n+1))`
-/

namespace A353464.P649089742690394420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (A014973 (n + 1)).toNat

end

end A353464.P649089742690394420

namespace A353464

/-- `A061358(A014973(n+1))` -/
def P649089742690394420.Spec : Prop :=
  ∀ n, P649089742690394420.a n = A353464 (n + 1)

end A353464

/-! ## A353464.P7544232926452436394

`A061358(A061397(n+1))`
-/

namespace A353464.P7544232926452436394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (A061397 (n + 1)).toNat

end

end A353464.P7544232926452436394

namespace A353464

/-- `A061358(A061397(n+1))` -/
def P7544232926452436394.Spec : Prop :=
  ∀ n, P7544232926452436394.a n = A353464 (n + 1)

end A353464

/-! ## A353464.P1138099057055076109

`A061358(A089026(n+1))`
-/

namespace A353464.P1138099057055076109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (A089026 (n + 1)).toNat

end

end A353464.P1138099057055076109

namespace A353464

/-- `A061358(A089026(n+1))` -/
def P1138099057055076109.Spec : Prop :=
  ∀ n, P1138099057055076109.a n = A353464 (n + 1)

end A353464

/-! ## A353464.P16788566137770808336

`A061358(A135679(n+1))`
-/

namespace A353464.P16788566137770808336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (A135679 (n + 1)).toNat

end

end A353464.P16788566137770808336

namespace A353464

/-- `A061358(A135679(n+1))` -/
def P16788566137770808336.Spec : Prop :=
  ∀ n, P16788566137770808336.a n = A353464 (n + 1)

end A353464

/-! ## A353464.P3122607738810364336

`A117929(A135681(n+1))`
-/

namespace A353464.P3122607738810364336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117929 (A135681 (n + 1)).toNat

end

end A353464.P3122607738810364336

namespace A353464

/-- `A117929(A135681(n+1))` -/
def P3122607738810364336.Spec : Prop :=
  ∀ n, P3122607738810364336.a n = A353464 (n + 1)

end A353464

/-! ## A353464.P7528674575556997429

`A353463(A065164(n+1))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A353464

/-- `A353463(A065164(n+1))` -/
def P7528674575556997429.Spec : Prop :=
  ∀ n, P7528674575556997429.a n = A353464 (n + 1)

theorem P7528674575556997429.correct : P7528674575556997429.Spec := by
  intro n
  simp only [A353464, Nat.add_sub_cancel]

end A353464

/-! ## A353464.P7111060664016524489

`A353463(A079707(n+1))`
-/

namespace A353464.P7111060664016524489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353463 (A079707 (n + 1)).toNat

end

end A353464.P7111060664016524489

namespace A353464

/-- `A353463(A079707(n+1))` -/
def P7111060664016524489.Spec : Prop :=
  ∀ n, P7111060664016524489.a n = A353464 (n + 1)

end A353464

/-! ## A353464.P6028429561555944413

`A185012(A356165(n+1))`
-/

namespace A353464.P6028429561555944413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 (A356165 (n + 1)).toNat

end

end A353464.P6028429561555944413

namespace A353464

/-- `A185012(A356165(n+1))` -/
def P6028429561555944413.Spec : Prop :=
  ∀ n, P6028429561555944413.a n = A353464 (n + 1)

end A353464

/-! ## A353464.P400851124126635002

`floor(∑{p}[(n+1)*(n-1), #/(2*n)])`
-/

namespace A353464.P400851124126635002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℚ) / (2 * n : ℚ)⌋

end

end A353464.P400851124126635002

namespace A353464

/-- `floor(∑{p}[(n+1)*(n-1), #/(2*n)])` -/
def P400851124126635002.Spec : Prop :=
  ∀ n, P400851124126635002.a n = A353464 (n + 1)

end A353464

/-!
# A353465: Numbers k for which A276086(k) is of the form 4k+1.

The programs for A353465, there is no canonical definition to state claims against.
-/

/-! ## A353465.P12375103332147875447

`record[n*A353488(n)]`
-/

namespace A353465.P12375103332147875447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A353488 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353465.P12375103332147875447

/-! ## A353465.P10443726718531940910

`filter[2*n, A353486(#)]`
-/

namespace A353465.P10443726718531940910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353486 (f1 j) = 1) n)

end

end A353465.P10443726718531940910

/-! ## A353465.P13190239022385710073

`filter[2*n, A353488(#)]`
-/

namespace A353465.P13190239022385710073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353488 (f1 j) = 1) n)

end

end A353465.P13190239022385710073

/-! ## A353465.P13704806926881801881

`eq[n, n*A353486(n)]`
-/

namespace A353465.P13704806926881801881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A353486 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353465.P13704806926881801881

/-! ## A353465.P16930091897276532261

`eq[val(n+1, 2), A353489(n)]`
-/

namespace A353465.P16930091897276532261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353489 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353465.P16930091897276532261

/-! ## A353465.P8661932849365415150

`eq[n, n/A358850(n)%4]`
-/

namespace A353465.P8661932849365415150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Int.tmod (A358850 n) 4 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A353465.P8661932849365415150

/-! ## A353465.P16647514590635377484

`eq[A114567(n), A353486(n)]`
-/

namespace A353465.P16647514590635377484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114567 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353486 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353465.P16647514590635377484

/-! ## A353465.P8468090839864573850

`eq[A114567(n), A353488(n)]`
-/

namespace A353465.P8468090839864573850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114567 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353488 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353465.P8468090839864573850

/-! ## A353465.P11260861346862648679

`eq[A093178(n), A353486(n)]`
-/

namespace A353465.P11260861346862648679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353486 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353465.P11260861346862648679

/-! ## A353465.P439843470194736502

`eq[A093178(n), A353488(n)]`
-/

namespace A353465.P439843470194736502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353488 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353465.P439843470194736502

/-! ## A353465.P16692812433107892832

`eq[A135481(n)+1, A353488(n)]`
-/

namespace A353465.P16692812433107892832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353488 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353465.P16692812433107892832

/-! ## A353465.P3182819150315796277

`eq[1, val(A276086(n)+1, 2)]`
-/

namespace A353465.P3182819150315796277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A276086 n + 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353465.P3182819150315796277

/-! ## A353465.P2391779067220712030

`eq[A019303(n), A353486(n)]`
-/

namespace A353465.P2391779067220712030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019303 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353486 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353465.P2391779067220712030

/-! ## A353465.P17897592663892462516

`eq[A019304(n), A353486(n)]`
-/

namespace A353465.P17897592663892462516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019304 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353486 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353465.P17897592663892462516

/-! ## A353465.P13639708804223421645

`eq[A019303(n), A353488(n)]`
-/

namespace A353465.P13639708804223421645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019303 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353488 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353465.P13639708804223421645

/-! ## A353465.P5835883807492894881

`eq[A019304(n), A353488(n)]`
-/

namespace A353465.P5835883807492894881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019304 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353488 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353465.P5835883807492894881

/-! ## A353465.P14032178834021723337

`eq[A028920(n), A353488(n)]`
-/

namespace A353465.P14032178834021723337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353488 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353465.P14032178834021723337

/-! ## A353465.P6047789100408384495

`eq[A053381(n), A353486(n)]`
-/

namespace A353465.P6047789100408384495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053381 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353486 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353465.P6047789100408384495

/-! ## A353465.P5659672556343699823

`eq[A053381(n), A353488(n)]`
-/

namespace A353465.P5659672556343699823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053381 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353488 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353465.P5659672556343699823

/-! ## A353465.P14439565951222678609

`eq[A056753(n), A353486(n)]`
-/

namespace A353465.P14439565951222678609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056753 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353486 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353465.P14439565951222678609

/-!
# A353466: Numbers k for which A276086(k) is of the form 4k+3.

The programs for A353466, there is no canonical definition to state claims against.
-/

/-! ## A353466.P4907659206870625799

`comp[A353489(n)+n]`
-/

namespace A353466.P4907659206870625799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353489 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A353466.P4907659206870625799

/-! ## A353466.P6278388937674399531

`filter[2*n, A353489(#)]`
-/

namespace A353466.P6278388937674399531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353489 (f1 j) = 1) n)

end

end A353466.P6278388937674399531

/-! ## A353466.P13257816616024166998

`comp[4%A353486(n)+n]`
-/

namespace A353466.P13257816616024166998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 4 (A353486 n) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A353466.P13257816616024166998

/-! ## A353466.P14335910951325179021

`comp[xor(or(1, n), A353488(n))]`
-/

namespace A353466.P14335910951325179021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.lor 1 n : ℤ) (A353488 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A353466.P14335910951325179021

/-! ## A353466.P4539589908388820554

`record[(n+2)*A353489(n+2)]`
-/

namespace A353466.P4539589908388820554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A353489 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353466.P4539589908388820554

/-! ## A353466.P2858990775313773505

`eq[A073097(n), A353488(n)]`
-/

namespace A353466.P2858990775313773505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353488 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353466.P2858990775313773505

/-! ## A353466.P7829571556355755900

`eq[A114567(n), A353489(n)]`
-/

namespace A353466.P7829571556355755900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114567 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353489 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353466.P7829571556355755900

/-! ## A353466.P13724385788705278053

`eq[1, A353488(n)+A114567(n)]`
-/

namespace A353466.P13724385788705278053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353488 n + A114567 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353466.P13724385788705278053

/-! ## A353466.P1259389215611576324

`eq[A093178(n), A353489(n)]`
-/

namespace A353466.P1259389215611576324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353489 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353466.P1259389215611576324

/-! ## A353466.P13022149279656744309

`eq[A093178(n)+2, A353486(n)]`
-/

namespace A353466.P13022149279656744309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353486 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353466.P13022149279656744309

/-! ## A353466.P16040288671135651026

`eq[A075180(n), A353489(n)]`
-/

namespace A353466.P16040288671135651026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075180 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353489 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353466.P16040288671135651026

/-! ## A353466.P16424307237406237420

`eq[A135481(n), A353488(n)]`
-/

namespace A353466.P16424307237406237420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353488 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353466.P16424307237406237420

/-! ## A353466.P9923103834850114285

`eq[A165886(n), A353489(n)]`
-/

namespace A353466.P9923103834850114285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165886 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353489 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353466.P9923103834850114285

/-! ## A353466.P14114067521248149994

`eq[A019303(n), A353489(n)]`
-/

namespace A353466.P14114067521248149994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019303 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353489 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353466.P14114067521248149994

/-! ## A353466.P9154887765768096026

`eq[A053381(n), A353489(n)]`
-/

namespace A353466.P9154887765768096026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053381 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353489 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353466.P9154887765768096026

/-! ## A353466.P14798957634531402380

`eq[A056753(n), A353489(n)]`
-/

namespace A353466.P14798957634531402380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056753 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353489 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353466.P14798957634531402380

/-! ## A353466.P13754243874761197268

`eq[A060445(n), A353486(n)]`
-/

namespace A353466.P13754243874761197268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060445 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353486 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353466.P13754243874761197268

/-! ## A353466.P104797187895639004

`eq[A091090(n), A353489(n)]`
-/

namespace A353466.P104797187895639004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353489 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353466.P104797187895639004

/-! ## A353466.P13984174567178685500

`eq[A134452(n), A353488(n)]`
-/

namespace A353466.P13984174567178685500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134452 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353488 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353466.P13984174567178685500

/-! ## A353466.P9120091915490794701

`eq[A135517(n), A353489(n)]`
-/

namespace A353466.P9120091915490794701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135517 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353489 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353466.P9120091915490794701

/-!
# A353467: a(1) = 1, for n > 1, a(n) = -Sum_{d|n, d<n} a(A252463(n/d)) * a(d).

The programs for A353467, there is no canonical definition to state claims against.
-/

/-! ## A353467.P8894439698763337879

`A353469(n+1)-A353468(n+1)`
-/

namespace A353467.P8894439698763337879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353469 (n + 1) - A353468 (n + 1)

end

end A353467.P8894439698763337879

/-! ## A353467.P13464919335942552159

`A353468(A389906(n+1))`
-/

namespace A353467.P13464919335942552159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353468 (A389906 (n + 1)).toNat

end

end A353467.P13464919335942552159

/-! ## A353467.P24618309739980739

`A353468(2*(n+1))`
-/

namespace A353467.P24618309739980739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353468 (2 * (n + 1))

end

end A353467.P24618309739980739

/-! ## A353467.P7143593414808021372

`A353468(A103517(n))%A000124(n+4)`
-/

namespace A353467.P7143593414808021372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353468 (A103517 n).toNat) (A000124 (n + 4))

end

end A353467.P7143593414808021372

/-! ## A353467.P3192311422619905962

`A353468(A253885(n)+1)%∑[n+6]`
-/

namespace A353467.P3192311422619905962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353468 (A253885 n + 1).toNat) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A353467.P3192311422619905962

/-! ## A353467.P9417589506924338257

`A353468(A045965(n+1))%A017042(n)`
-/

namespace A353467.P9417589506924338257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353468 (A045965 (n + 1)).toNat) (A017042 n)

end

end A353467.P9417589506924338257

/-! ## A353467.P4274284293915166148

`or(A353468(A045965(n+1)), A353471(n+1))`
-/

namespace A353467.P4274284293915166148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A353468 (A045965 (n + 1)).toNat) (A353471 (n + 1))

end

end A353467.P4274284293915166148

/-! ## A353467.P3978710707007221093

`or(A353468(A045965(n+1)), A353475(n+1))`
-/

namespace A353467.P3978710707007221093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A353468 (A045965 (n + 1)).toNat) (A353475 (n + 1))

end

end A353467.P3978710707007221093

/-! ## A353467.P2168143468290734768

`or(A353468(A045965(n+1)), A353479(n+1))`
-/

namespace A353467.P2168143468290734768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A353468 (A045965 (n + 1)).toNat) (A353479 (n + 1))

end

end A353467.P2168143468290734768

/-! ## A353467.P14848606262395942714

`or(A353468(A045965(n+1)), A353482(n+1))`
-/

namespace A353467.P14848606262395942714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A353468 (A045965 (n + 1)).toNat) (A353482 (n + 1))

end

end A353467.P14848606262395942714

/-!
# A353468: Dirichlet inverse of A353467.

The programs for A353468, there is no canonical definition to state claims against.
-/

/-! ## A353468.P2895641452043270367

`A353467(A252463(n+1))`
-/

namespace A353468.P2895641452043270367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353467 (A252463 (n + 1)).toNat

end

end A353468.P2895641452043270367

/-! ## A353468.P410201319739489660

`A353469(n+1)-A353467(n+1)`
-/

namespace A353468.P410201319739489660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353469 (n + 1) - A353467 (n + 1)

end

end A353468.P410201319739489660

/-! ## A353468.P6645082985117841514

`A353467(A003961(n+1))`
-/

namespace A353468.P6645082985117841514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353467 (A003961 (n + 1)).toNat

end

end A353468.P6645082985117841514

/-! ## A353468.P1264267208326432493

`A353467(A118306(n+1))`
-/

namespace A353468.P1264267208326432493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353467 (A118306 (n + 1)).toNat

end

end A353468.P1264267208326432493

/-! ## A353468.P9105354500129639955

`A353467(or(1, A045965(n+1)))`
-/

namespace A353468.P9105354500129639955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353467 (Int.lor 1 (A045965 (n + 1))).toNat

end

end A353468.P9105354500129639955

/-!
# A353469: Sum of A353467 and its Dirichlet inverse.

The programs for A353469, there is no canonical definition to state claims against.
-/

/-! ## A353469.P716323007606807126

`A353467(n+1)+A353468(n+1)`
-/

namespace A353469.P716323007606807126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353467 (n + 1) + A353468 (n + 1)

end

end A353469.P716323007606807126

/-! ## A353469.P16093463098833367445

`A353467(n+1)+A353467(A252463(n+1))`
-/

namespace A353469.P16093463098833367445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353467 (n + 1) + A353467 (A252463 (n + 1)).toNat

end

end A353469.P16093463098833367445

/-! ## A353469.P13371855793222842022

`A353467(A252463(n+1))+A353467(n+1)`
-/

namespace A353469.P13371855793222842022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353467 (A252463 (n + 1)).toNat + A353467 (n + 1)

end

end A353469.P13371855793222842022

/-! ## A353469.P4921500380937792125

`A353468(2*(n+1))+A353468(n+1)`
-/

namespace A353469.P4921500380937792125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353468 (2 * (n + 1)) + A353468 (n + 1)

end

end A353469.P4921500380937792125

/-! ## A353469.P914955882940073947

`A353467(A003961(n+1))+A353467(n+1)`
-/

namespace A353469.P914955882940073947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353467 (A003961 (n + 1)).toNat + A353467 (n + 1)

end

end A353469.P914955882940073947

/-! ## A353469.P7559168003068667382

`A353467(A118306(n+1))+A353467(n+1)`
-/

namespace A353469.P7559168003068667382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353467 (A118306 (n + 1)).toNat + A353467 (n + 1)

end

end A353469.P7559168003068667382

/-! ## A353469.P7010614502091233997

`A353467(or(1, A045965(n+1)))+A353467(n+1)`
-/

namespace A353469.P7010614502091233997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353467 (Int.lor 1 (A045965 (n + 1))).toNat + A353467 (n + 1)

end

end A353469.P7010614502091233997

/-!
# A353470: a(n) = 1 if the number of its divisors, tau(n), is divisible by 3, otherwise 0.

The programs for A353470, the canonical program `A353470.P11078514504896825833` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353470 has offset 1).

The definition of A353470 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353470.P11078514504896825833

`xor(1, abs((∏{e}[n+1, #+1]+1)%3-1))`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A353470

/-- `xor(1, abs((∏{e}[n+1, #+1]+1)%3-1))` -/
def P11078514504896825833.Spec : Prop :=
  ∀ n, P11078514504896825833.a n = A353470 (n + 1)

theorem P11078514504896825833.correct : P11078514504896825833.Spec := by
  intro n
  simp only [A353470, Nat.add_sub_cancel]

end A353470

/-! ## A353470.P14535713728326010226

`1-A307421(n+1)`
-/

namespace A353470.P14535713728326010226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A307421 (n + 1)

end

end A353470.P14535713728326010226

namespace A353470

/-- `1-A307421(n+1)` -/
def P14535713728326010226.Spec : Prop :=
  ∀ n, P14535713728326010226.a n = A353470 (n + 1)

end A353470

/-! ## A353470.P4843010000519532574

`A343877(n+1)%3`
-/

namespace A353470.P4843010000519532574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343877 (n + 1)) 3

end

end A353470.P4843010000519532574

namespace A353470

/-- `A343877(n+1)%3` -/
def P4843010000519532574.Spec : Prop :=
  ∀ n, P4843010000519532574.a n = A353470 (n + 1)

end A353470

/-! ## A353470.P7968485990946583370

`val(A152235(n+1), 3)`
-/

namespace A353470.P7968485990946583370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A152235 (n + 1)).toNat 3

end

end A353470.P7968485990946583370

namespace A353470

/-- `val(A152235(n+1), 3)` -/
def P7968485990946583370.Spec : Prop :=
  ∀ n, (P7968485990946583370.a n : ℤ) = A353470 (n + 1)

end A353470

/-! ## A353470.P15793031538883173324

`1-abs(A210826(n+1))`
-/

namespace A353470.P15793031538883173324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |A210826 (n + 1)|

end

end A353470.P15793031538883173324

namespace A353470

/-- `1-abs(A210826(n+1))` -/
def P15793031538883173324.Spec : Prop :=
  ∀ n, P15793031538883173324.a n = A353470 (n + 1)

end A353470

/-! ## A353470.P3174013477909363280

`1-abs(A299406(n+1))`
-/

namespace A353470.P3174013477909363280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |A299406 (n + 1)|

end

end A353470.P3174013477909363280

namespace A353470

/-- `1-abs(A299406(n+1))` -/
def P3174013477909363280.Spec : Prop :=
  ∀ n, P3174013477909363280.a n = A353470 (n + 1)

end A353470

/-! ## A353470.P5821454284882152775

`(A294932(n+1)-1)%2`
-/

namespace A353470.P5821454284882152775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294932 (n + 1) - 1) 2

end

end A353470.P5821454284882152775

namespace A353470

/-- `(A294932(n+1)-1)%2` -/
def P5821454284882152775.Spec : Prop :=
  ∀ n, P5821454284882152775.a n = A353470 (n + 1)

end A353470

/-! ## A353470.P4907152741869782457

`and(1, A351219(n+1)+1)`
-/

namespace A353470.P4907152741869782457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A351219 (n + 1) + 1)

end

end A353470.P4907152741869782457

namespace A353470

/-- `and(1, A351219(n+1)+1)` -/
def P4907152741869782457.Spec : Prop :=
  ∀ n, P4907152741869782457.a n = A353470 (n + 1)

end A353470

/-! ## A353470.P8657908385002599212

`C(2, A074943(n+1)+2)`
-/

namespace A353470.P8657908385002599212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A074943 (n + 1) + 2).toNat

end

end A353470.P8657908385002599212

namespace A353470

/-- `C(2, A074943(n+1)+2)` -/
def P8657908385002599212.Spec : Prop :=
  ∀ n, (P8657908385002599212.a n : ℤ) = A353470 (n + 1)

end A353470

/-! ## A353470.P3599907998876854045

`A049240(A000189(n+1))`
-/

namespace A353470.P3599907998876854045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (A000189 (n + 1)).toNat

end

end A353470.P3599907998876854045

namespace A353470

/-- `A049240(A000189(n+1))` -/
def P3599907998876854045.Spec : Prop :=
  ∀ n, P3599907998876854045.a n = A353470 (n + 1)

end A353470

/-! ## A353470.P5376020368307558018

`A079978(A000005(n+1))`
-/

namespace A353470.P5376020368307558018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A000005 (n + 1)).toNat

end

end A353470.P5376020368307558018

namespace A353470

/-- `A079978(A000005(n+1))` -/
def P5376020368307558018.Spec : Prop :=
  ∀ n, P5376020368307558018.a n = A353470 (n + 1)

end A353470

/-! ## A353470.P4724398827956645514

`A066301(A050985(n+1))`
-/

namespace A353470.P4724398827956645514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066301 (A050985 (n + 1)).toNat

end

end A353470.P4724398827956645514

namespace A353470

/-- `A066301(A050985(n+1))` -/
def P4724398827956645514.Spec : Prop :=
  ∀ n, P4724398827956645514.a n = A353470 (n + 1)

end A353470

/-! ## A353470.P9505242936897550629

`A079978(A062011(n+1))`
-/

namespace A353470.P9505242936897550629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A062011 (n + 1)).toNat

end

end A353470.P9505242936897550629

namespace A353470

/-- `A079978(A062011(n+1))` -/
def P9505242936897550629.Spec : Prop :=
  ∀ n, P9505242936897550629.a n = A353470 (n + 1)

end A353470

/-! ## A353470.P13173363176590205768

`A014018(A000005(n+1)²)`
-/

namespace A353470.P13173363176590205768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014018 (A000005 (n + 1) ^ 2).toNat

end

end A353470.P13173363176590205768

namespace A353470

/-- `A014018(A000005(n+1)²)` -/
def P13173363176590205768.Spec : Prop :=
  ∀ n, P13173363176590205768.a n = A353470 (n + 1)

end A353470

/-! ## A353470.P13806881223766454059

`A057078(A000005(n+1)²)`
-/

namespace A353470.P13806881223766454059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (A000005 (n + 1) ^ 2).toNat

end

end A353470.P13806881223766454059

namespace A353470

/-- `A057078(A000005(n+1)²)` -/
def P13806881223766454059.Spec : Prop :=
  ∀ n, P13806881223766454059.a n = A353470 (n + 1)

end A353470

/-! ## A353470.P1398243167351254987

`A189706(A000005(n+1)²)`
-/

namespace A353470.P1398243167351254987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189706 (A000005 (n + 1) ^ 2).toNat

end

end A353470.P1398243167351254987

namespace A353470

/-- `A189706(A000005(n+1)²)` -/
def P1398243167351254987.Spec : Prop :=
  ∀ n, P1398243167351254987.a n = A353470 (n + 1)

end A353470

/-! ## A353470.P10870625860370064352

`A022003(A000005(n+1)-1)`
-/

namespace A353470.P10870625860370064352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 (A000005 (n + 1) - 1).toNat

end

end A353470.P10870625860370064352

namespace A353470

/-- `A022003(A000005(n+1)-1)` -/
def P10870625860370064352.Spec : Prop :=
  ∀ n, P10870625860370064352.a n = A353470 (n + 1)

end A353470

/-! ## A353470.P14695031238589375435

`A079978(A070824(n+1)+2)`
-/

namespace A353470.P14695031238589375435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A070824 (n + 1) + 2).toNat

end

end A353470.P14695031238589375435

namespace A353470

/-- `A079978(A070824(n+1)+2)` -/
def P14695031238589375435.Spec : Prop :=
  ∀ n, P14695031238589375435.a n = A353470 (n + 1)

end A353470

/-! ## A353470.P5003676882742510082

`A093719(2*A000005(n+1))`
-/

namespace A353470.P5003676882742510082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093719 (2 * A000005 (n + 1)).toNat

end

end A353470.P5003676882742510082

namespace A353470

/-- `A093719(2*A000005(n+1))` -/
def P5003676882742510082.Spec : Prop :=
  ∀ n, P5003676882742510082.a n = A353470 (n + 1)

end A353470

/-! ## A353470.P4993062980507442657

`1-A010872(A000005(n+1)²)`
-/

namespace A353470.P4993062980507442657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010872 (A000005 (n + 1) ^ 2).toNat

end

end A353470.P4993062980507442657

namespace A353470

/-- `1-A010872(A000005(n+1)²)` -/
def P4993062980507442657.Spec : Prop :=
  ∀ n, P4993062980507442657.a n = A353470 (n + 1)

end A353470

/-!
# A353471: a(n) = 1 if n is a prime or a squarefree semiprime, otherwise 0.

The programs for A353471, the canonical program `A353471.P7162741328705860866` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353471 has offset 1).

The definition of A353471 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A280710, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353471.P7162741328705860866

`A010051(n+1)+A280710(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A353471

/-- `A010051(n+1)+A280710(n+1)` -/
def P7162741328705860866.Spec : Prop :=
  ∀ n, P7162741328705860866.a n = A353471 (n + 1)

theorem P7162741328705860866.correct : P7162741328705860866.Spec := by
  intro n
  simp only [A353471, Nat.add_sub_cancel]

end A353471

/-! ## A353471.P292270890744709264

`C(C(3, ∑{e}[n+1, #²]), 3)`
-/

namespace A353471.P292270890744709264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 3 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p ^ 2)) 3

end

end A353471.P292270890744709264

namespace A353471

/-- `C(C(3, ∑{e}[n+1, #²]), 3)` -/
def P292270890744709264.Spec : Prop :=
  ∀ n, (P292270890744709264.a n : ℤ) = A353471 (n + 1)

end A353471

/-! ## A353471.P3996106275377755372

`C(A230594(n+1), 2)`
-/

namespace A353471.P3996106275377755372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A230594 (n + 1)).toNat 2

end

end A353471.P3996106275377755372

namespace A353471

/-- `C(A230594(n+1), 2)` -/
def P3996106275377755372.Spec : Prop :=
  ∀ n, (P3996106275377755372.a n : ℤ) = A353471 (n + 1)

end A353471

/-! ## A353471.P5641769643880734078

`char[A167171(n+1)-1]`
-/

namespace A353471.P5641769643880734078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167171 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353471.P5641769643880734078

namespace A353471

/-- `char[A167171(n+1)-1]` -/
def P5641769643880734078.Spec : Prop :=
  ∀ n, (P5641769643880734078.a n : ℤ) = A353471 (n + 1)

end A353471

/-! ## A353471.P15358870267365723797

`val(A349217(n+1), n+2)`
-/

namespace A353471.P15358870267365723797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A349217 (n + 1)).toNat (n + 2)

end

end A353471.P15358870267365723797

namespace A353471

/-- `val(A349217(n+1), n+2)` -/
def P15358870267365723797.Spec : Prop :=
  ∀ n, (P15358870267365723797.a n : ℤ) = A353471 (n + 1)

end A353471

/-! ## A353471.P17137479616420650080

`val(A380447(n+1), n+2)`
-/

namespace A353471.P17137479616420650080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A380447 (n + 1)).toNat (n + 2)

end

end A353471.P17137479616420650080

namespace A353471

/-- `val(A380447(n+1), n+2)` -/
def P17137479616420650080.Spec : Prop :=
  ∀ n, (P17137479616420650080.a n : ℤ) = A353471 (n + 1)

end A353471

/-! ## A353471.P11351365628681772713

`val(A394470(n+1), n+2)`
-/

namespace A353471.P11351365628681772713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A394470 (n + 1)).toNat (n + 2)

end

end A353471.P11351365628681772713

namespace A353471

/-- `val(A394470(n+1), n+2)` -/
def P11351365628681772713.Spec : Prop :=
  ∀ n, (P11351365628681772713.a n : ℤ) = A353471 (n + 1)

end A353471

/-! ## A353471.P13113165446664229920

`val(A395491(n+1), n+2)`
-/

namespace A353471.P13113165446664229920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A395491 (n + 1)).toNat (n + 2)

end

end A353471.P13113165446664229920

namespace A353471

/-- `val(A395491(n+1), n+2)` -/
def P13113165446664229920.Spec : Prop :=
  ∀ n, (P13113165446664229920.a n : ℤ) = A353471 (n + 1)

end A353471

/-! ## A353471.P11188738213963260629

`A099395(A083262(n+1))`
-/

namespace A353471.P11188738213963260629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099395 (A083262 (n + 1)).toNat

end

end A353471.P11188738213963260629

namespace A353471

/-- `A099395(A083262(n+1))` -/
def P11188738213963260629.Spec : Prop :=
  ∀ n, P11188738213963260629.a n = A353471 (n + 1)

end A353471

/-! ## A353471.P8440965113505757458

`A358220(A046523(n+1))`
-/

namespace A353471.P8440965113505757458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358220 (A046523 (n + 1)).toNat

end

end A353471.P8440965113505757458

namespace A353471

/-- `A358220(A046523(n+1))` -/
def P8440965113505757458.Spec : Prop :=
  ∀ n, P8440965113505757458.a n = A353471 (n + 1)

end A353471

/-! ## A353471.P2325077915091127668

`A303553(A301830(n+1)+2)`
-/

namespace A353471.P2325077915091127668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303553 (A301830 (n + 1) + 2).toNat

end

end A353471.P2325077915091127668

namespace A353471

/-- `A303553(A301830(n+1)+2)` -/
def P2325077915091127668.Spec : Prop :=
  ∀ n, P2325077915091127668.a n = A353471 (n + 1)

end A353471

/-! ## A353471.P2204881059900373907

`A341994(2*A347149(n+1))`
-/

namespace A353471.P2204881059900373907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341994 (2 * A347149 (n + 1)).toNat

end

end A353471.P2204881059900373907

namespace A353471

/-- `A341994(2*A347149(n+1))` -/
def P2204881059900373907.Spec : Prop :=
  ∀ n, P2204881059900373907.a n = A353471 (n + 1)

end A353471

/-! ## A353471.P11561038843423823548

`A032741(C(3, A349620(n+1)))`
-/

namespace A353471.P11561038843423823548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (Nat.choose 3 (A349620 (n + 1)).toNat)

end

end A353471.P11561038843423823548

namespace A353471

/-- `A032741(C(3, A349620(n+1)))` -/
def P11561038843423823548.Spec : Prop :=
  ∀ n, P11561038843423823548.a n = A353471 (n + 1)

end A353471

/-! ## A353471.P14276786814746522691

`A101040(n+1)*A267866(n)`
-/

namespace A353471.P14276786814746522691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101040 (n + 1) * A267866 n

end

end A353471.P14276786814746522691

namespace A353471

/-- `A101040(n+1)*A267866(n)` -/
def P14276786814746522691.Spec : Prop :=
  ∀ n, P14276786814746522691.a n = A353471 (n + 1)

end A353471

/-! ## A353471.P5857477227095197002

`and(A002033(n), A101040(n+1))`
-/

namespace A353471.P5857477227095197002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002033 n) (A101040 (n + 1))

end

end A353471.P5857477227095197002

namespace A353471

/-- `and(A002033(n), A101040(n+1))` -/
def P5857477227095197002.Spec : Prop :=
  ∀ n, P5857477227095197002.a n = A353471 (n + 1)

end A353471

/-! ## A353471.P5127026941971253493

`and(A101040(n+1), A195588(n))`
-/

namespace A353471.P5127026941971253493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101040 (n + 1)) (A195588 n)

end

end A353471.P5127026941971253493

namespace A353471

/-- `and(A101040(n+1), A195588(n))` -/
def P5127026941971253493.Spec : Prop :=
  ∀ n, P5127026941971253493.a n = A353471 (n + 1)

end A353471

/-! ## A353471.P14720815147061860403

`A316341((2-A350331(n+1))²)`
-/

namespace A353471.P14720815147061860403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316341 ((2 - A350331 (n + 1)) ^ 2).toNat

end

end A353471.P14720815147061860403

namespace A353471

/-- `A316341((2-A350331(n+1))²)` -/
def P14720815147061860403.Spec : Prop :=
  ∀ n, P14720815147061860403.a n = A353471 (n + 1)

end A353471

/-! ## A353471.P16883990242796728741

`A074823((3-A074823(n+1))²)`
-/

namespace A353471.P16883990242796728741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074823 ((3 - A074823 (n + 1)) ^ 2).toNat

end

end A353471.P16883990242796728741

namespace A353471

/-- `A074823((3-A074823(n+1))²)` -/
def P16883990242796728741.Spec : Prop :=
  ∀ n, P16883990242796728741.a n = A353471 (n + 1)

end A353471

/-! ## A353471.P15019649552716004313

`A101040(n+1)-A302048(n+1)`
-/

namespace A353471.P15019649552716004313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101040 (n + 1) - A302048 (n + 1)

end

end A353471.P15019649552716004313

namespace A353471

/-- `A101040(n+1)-A302048(n+1)` -/
def P15019649552716004313.Spec : Prop :=
  ∀ n, P15019649552716004313.a n = A353471 (n + 1)

end A353471

/-! ## A353471.P17344905120712114302

`A008966(n+1)*A101040(n+1)`
-/

namespace A353471.P17344905120712114302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A101040 (n + 1)

end

end A353471.P17344905120712114302

namespace A353471

/-- `A008966(n+1)*A101040(n+1)` -/
def P17344905120712114302.Spec : Prop :=
  ∀ n, P17344905120712114302.a n = A353471 (n + 1)

end A353471

/-!
# A353472: a(n) = 1 if n is a product of a prime and the square of a different prime (p^2 * q), otherwise 0.

The programs for A353472, the canonical program `A353472.P18369739324795552969` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353472 has offset 1).

The definition of A353472 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353472.P5128305465245498163

`A353473(n+1)+A353474(n+1)`
-/

namespace A353472.P5128305465245498163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353473 (n + 1) + A353474 (n + 1)

end

end A353472.P5128305465245498163

namespace A353472

/-- `A353473(n+1)+A353474(n+1)` -/
def P5128305465245498163.Spec : Prop :=
  ∀ n, P5128305465245498163.a n = A353472 (n + 1)

theorem P5128305465245498163.correct : P5128305465245498163.Spec := by
  intro n
  simp only [A353472, Nat.add_sub_cancel, A353472.P5128305465245498163.a, A353472.P18369739324795552969.f1, A353472.P18369739324795552969.a, A054753, A054753.P14709416938439353488.f1, A054753.P14709416938439353488.a, A353473, A353473.P15822886066893640418.a, A353474, A353474.P16107743200704684582.a, A052126, A052126.P1944428405920482243.a, A081619, A081619.P7456844298066121194.f1, A081619.P7456844298066121194.a, A143731, A143731.P1534349135649353055.a, A302048, A302048.P8618753497546879016.f1, A302048.P8618753497546879016.a, A359475, A359475.P3885974890903103559.a, A000005, A000005.P16091521709108585461.a, A005369, A005369.P10796159359873341658.a, A006530, A006530.P13372528560459906635.a, A057427, A057427.P17645173493419391152.a, A079275, A079275.P13384608062085188173.a, A359474, A359474.P3439923367546427684.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A008966, A008966.P18444031257857153223.f1, A008966.P18444031257857153223.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A070229, A070229.P5792893597916963980.a, A359471, A359471.P18375457830657465753.f1, A359471.P18375457830657465753.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A353472

/-! ## A353472.P18369739324795552969

`char[A054753(n+1)-1]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A353472

/-- `char[A054753(n+1)-1]` -/
def P18369739324795552969.Spec : Prop :=
  ∀ n, (P18369739324795552969.a n : ℤ) = A353472 (n + 1)

theorem P18369739324795552969.correct : P18369739324795552969.Spec := by
  intro n
  simp only [A353472, Nat.add_sub_cancel]

end A353472

/-! ## A353472.P14435782581722110667

`char[eq[2, A281116(n+1)]]`
-/

namespace A353472.P14435782581722110667
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353472.P14435782581722110667

namespace A353472

/-- `char[eq[2, A281116(n+1)]]` -/
def P14435782581722110667.Spec : Prop :=
  ∀ n, (P14435782581722110667.a n : ℤ) = A353472 (n + 1)

end A353472

/-! ## A353472.P10747178398755394418

`char[eq[2, A339846(n+1)]]`
-/

namespace A353472.P10747178398755394418
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339846 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353472.P10747178398755394418

namespace A353472

/-- `char[eq[2, A339846(n+1)]]` -/
def P10747178398755394418.Spec : Prop :=
  ∀ n, (P10747178398755394418.a n : ℤ) = A353472 (n + 1)

end A353472

/-! ## A353472.P4102832309022494866

`char[eq[2, A340596(n+1)]]`
-/

namespace A353472.P4102832309022494866
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340596 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353472.P4102832309022494866

namespace A353472

/-- `char[eq[2, A340596(n+1)]]` -/
def P4102832309022494866.Spec : Prop :=
  ∀ n, (P4102832309022494866.a n : ℤ) = A353472 (n + 1)

end A353472

/-! ## A353472.P13760987156981362676

`char[eq[5, A050379(n+1)]]`
-/

namespace A353472.P13760987156981362676
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050379 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353472.P13760987156981362676

namespace A353472

/-- `char[eq[5, A050379(n+1)]]` -/
def P13760987156981362676.Spec : Prop :=
  ∀ n, (P13760987156981362676.a n : ℤ) = A353472 (n + 1)

end A353472

/-! ## A353472.P18085818556061281790

`A010057(2*A001055(n+1))`
-/

namespace A353472.P18085818556061281790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (2 * A001055 (n + 1)).toNat

end

end A353472.P18085818556061281790

namespace A353472

/-- `A010057(2*A001055(n+1))` -/
def P18085818556061281790.Spec : Prop :=
  ∀ n, P18085818556061281790.a n = A353472 (n + 1)

end A353472

/-! ## A353472.P4757310827338599150

`A290739(2*A001055(n+1))`
-/

namespace A353472.P4757310827338599150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290739 (2 * A001055 (n + 1)).toNat

end

end A353472.P4757310827338599150

namespace A353472

/-- `A290739(2*A001055(n+1))` -/
def P4757310827338599150.Spec : Prop :=
  ∀ n, P4757310827338599150.a n = A353472 (n + 1)

end A353472

/-! ## A353472.P14248220436025882912

`A019590(xor(14, A046523(n+1)))`
-/

namespace A353472.P14248220436025882912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (Int.xor 14 (A046523 (n + 1))).toNat

end

end A353472.P14248220436025882912

namespace A353472

/-- `A019590(xor(14, A046523(n+1)))` -/
def P14248220436025882912.Spec : Prop :=
  ∀ n, P14248220436025882912.a n = A353472 (n + 1)

end A353472

/-! ## A353472.P9474598720297866947

`A267848(n)*A353798(n+1)`
-/

namespace A353472.P9474598720297866947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267848 n * A353798 (n + 1)

end

end A353472.P9474598720297866947

namespace A353472

/-- `A267848(n)*A353798(n+1)` -/
def P9474598720297866947.Spec : Prop :=
  ∀ n, P9474598720297866947.a n = A353472 (n + 1)

end A353472

/-! ## A353472.P8023481460506488847

`A267866(n)*A353798(n+1)`
-/

namespace A353472.P8023481460506488847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267866 n * A353798 (n + 1)

end

end A353472.P8023481460506488847

namespace A353472

/-- `A267866(n)*A353798(n+1)` -/
def P8023481460506488847.Spec : Prop :=
  ∀ n, P8023481460506488847.a n = A353472 (n + 1)

end A353472

/-! ## A353472.P9575405983153937442

`A062977(n+1)*A101605(n+1)`
-/

namespace A353472.P9575405983153937442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062977 (n + 1) * A101605 (n + 1)

end

end A353472.P9575405983153937442

namespace A353472

/-- `A062977(n+1)*A101605(n+1)` -/
def P9575405983153937442.Spec : Prop :=
  ∀ n, P9575405983153937442.a n = A353472 (n + 1)

end A353472

/-! ## A353472.P3598300834119228692

`A101605(n+1)*A162641(n+1)`
-/

namespace A353472.P3598300834119228692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (n + 1) * A162641 (n + 1)

end

end A353472.P3598300834119228692

namespace A353472

/-- `A101605(n+1)*A162641(n+1)` -/
def P3598300834119228692.Spec : Prop :=
  ∀ n, P3598300834119228692.a n = A353472 (n + 1)

end A353472

/-! ## A353472.P16699695917148206612

`A101605(n+1)*A215480(n+1)`
-/

namespace A353472.P16699695917148206612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (n + 1) * A215480 (n + 1)

end

end A353472.P16699695917148206612

namespace A353472

/-- `A101605(n+1)*A215480(n+1)` -/
def P16699695917148206612.Spec : Prop :=
  ∀ n, P16699695917148206612.a n = A353472 (n + 1)

end A353472

/-! ## A353472.P8857902690177352059

`A101605(n+1)*A304362(n+1)`
-/

namespace A353472.P8857902690177352059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (n + 1) * A304362 (n + 1)

end

end A353472.P8857902690177352059

namespace A353472

/-- `A101605(n+1)*A304362(n+1)` -/
def P8857902690177352059.Spec : Prop :=
  ∀ n, P8857902690177352059.a n = A353472 (n + 1)

end A353472

/-! ## A353472.P1417609786514462208

`char[eq[2, A066620(n+1)]]`
-/

namespace A353472.P1417609786514462208
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066620 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353472.P1417609786514462208

namespace A353472

/-- `char[eq[2, A066620(n+1)]]` -/
def P1417609786514462208.Spec : Prop :=
  ∀ n, (P1417609786514462208.a n : ℤ) = A353472 (n + 1)

end A353472

/-! ## A353472.P2017546826044289700

`char[eq[2, A089233(n+1)]]`
-/

namespace A353472.P2017546826044289700
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089233 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353472.P2017546826044289700

namespace A353472

/-- `char[eq[2, A089233(n+1)]]` -/
def P2017546826044289700.Spec : Prop :=
  ∀ n, (P2017546826044289700.a n : ℤ) = A353472 (n + 1)

end A353472

/-! ## A353472.P13889702022348900879

`char[eq[2, A335447(n+1)]]`
-/

namespace A353472.P13889702022348900879
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335447 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353472.P13889702022348900879

namespace A353472

/-- `char[eq[2, A335447(n+1)]]` -/
def P13889702022348900879.Spec : Prop :=
  ∀ n, (P13889702022348900879.a n : ℤ) = A353472 (n + 1)

end A353472

/-! ## A353472.P10677991101383011707

`char[eq[3, A008480(n+1)]]`
-/

namespace A353472.P10677991101383011707
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353472.P10677991101383011707

namespace A353472

/-- `char[eq[3, A008480(n+1)]]` -/
def P10677991101383011707.Spec : Prop :=
  ∀ n, (P10677991101383011707.a n : ℤ) = A353472 (n + 1)

end A353472

/-! ## A353472.P7475055919624312575

`char[eq[3, A028422(n+1)]]`
-/

namespace A353472.P7475055919624312575
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353472.P7475055919624312575

namespace A353472

/-- `char[eq[3, A028422(n+1)]]` -/
def P7475055919624312575.Spec : Prop :=
  ∀ n, (P7475055919624312575.a n : ℤ) = A353472 (n + 1)

end A353472

/-!
# A353473: a(n) = 1 if n is a number of the form p * q^2, where p and q are primes with p < q, otherwise 0.

The programs for A353473, the canonical program `A353473.P15822886066893640418` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353473 has offset 1).

The definition of A353473 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353472, A353474, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353473.P15822886066893640418

`A353472(n+1)-A353474(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A353473

/-- `A353472(n+1)-A353474(n+1)` -/
def P15822886066893640418.Spec : Prop :=
  ∀ n, P15822886066893640418.a n = A353473 (n + 1)

theorem P15822886066893640418.correct : P15822886066893640418.Spec := by
  intro n
  simp only [A353473, Nat.add_sub_cancel]

end A353473

/-! ## A353473.P1848789542250241563

`A143731(n+1)*A302048(A032742(n+1))`
-/

namespace A353473.P1848789542250241563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143731 (n + 1) * A302048 (A032742 (n + 1)).toNat

end

end A353473.P1848789542250241563

namespace A353473

/-- `A143731(n+1)*A302048(A032742(n+1))` -/
def P1848789542250241563.Spec : Prop :=
  ∀ n, P1848789542250241563.a n = A353473 (n + 1)

end A353473

/-! ## A353473.P14008520555943995722

`char[A095990(n+1)-1]`
-/

namespace A353473.P14008520555943995722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095990 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353473.P14008520555943995722

namespace A353473

/-- `char[A095990(n+1)-1]` -/
def P14008520555943995722.Spec : Prop :=
  ∀ n, (P14008520555943995722.a n : ℤ) = A353473 (n + 1)

end A353473

/-! ## A353473.P13508922345240628725

`char[eq[7, A079616(n+1)]]`
-/

namespace A353473.P13508922345240628725
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079616 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353473.P13508922345240628725

namespace A353473

/-- `char[eq[7, A079616(n+1)]]` -/
def P13508922345240628725.Spec : Prop :=
  ∀ n, (P13508922345240628725.a n : ℤ) = A353473 (n + 1)

end A353473

/-! ## A353473.P5092920277511508944

`char[eq[8, A290110(n+1)]]`
-/

namespace A353473.P5092920277511508944
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290110 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353473.P5092920277511508944

namespace A353473

/-- `char[eq[8, A290110(n+1)]]` -/
def P5092920277511508944.Spec : Prop :=
  ∀ n, (P5092920277511508944.a n : ℤ) = A353473 (n + 1)

end A353473

/-! ## A353473.P3553856088270383714

`char[eq[8, A324203(n+1)]]`
-/

namespace A353473.P3553856088270383714
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324203 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353473.P3553856088270383714

namespace A353473

/-- `char[eq[8, A324203(n+1)]]` -/
def P3553856088270383714.Spec : Prop :=
  ∀ n, (P3553856088270383714.a n : ℤ) = A353473 (n + 1)

end A353473

/-! ## A353473.P12652495987362443908

`char[eq[15, A329607(n+1)]]`
-/

namespace A353473.P12652495987362443908
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329607 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353473.P12652495987362443908

namespace A353473

/-- `char[eq[15, A329607(n+1)]]` -/
def P12652495987362443908.Spec : Prop :=
  ∀ n, (P12652495987362443908.a n : ℤ) = A353473 (n + 1)

end A353473

/-! ## A353473.P1438406186754360273

`A209229(or(8, A290110(n+1)))`
-/

namespace A353473.P1438406186754360273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (Int.lor 8 (A290110 (n + 1))).toNat

end

end A353473.P1438406186754360273

namespace A353473

/-- `A209229(or(8, A290110(n+1)))` -/
def P1438406186754360273.Spec : Prop :=
  ∀ n, P1438406186754360273.a n = A353473 (n + 1)

end A353473

/-! ## A353473.P1634430760129561320

`val(A329378(n+1), A348949(∑{d}[n+1, (((#+1)*(n+1))²+1)%2]))`
-/

namespace A353473.P1634430760129561320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A329378 (n + 1)).toNat (A348949 (∑ d ∈ Nat.divisors (f1 n), (((d + 1) * (n + 1)) ^ 2 + 1) % 2)).toNat

end

end A353473.P1634430760129561320

namespace A353473

/-- `val(A329378(n+1), A348949(∑{d}[n+1, (((#+1)*(n+1))²+1)%2]))` -/
def P1634430760129561320.Spec : Prop :=
  ∀ n, (P1634430760129561320.a n : ℤ) = A353473 (n + 1)

end A353473

/-! ## A353473.P8179493506765969191

`val(A329378(n+1), A348949(A101296(n+1)))`
-/

namespace A353473.P8179493506765969191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A329378 (n + 1)).toNat (A348949 (A101296 (n + 1)).toNat).toNat

end

end A353473.P8179493506765969191

namespace A353473

/-- `val(A329378(n+1), A348949(A101296(n+1)))` -/
def P8179493506765969191.Spec : Prop :=
  ∀ n, (P8179493506765969191.a n : ℤ) = A353473 (n + 1)

end A353473

/-! ## A353473.P2364704216290415792

`char[lt[A072356(n+1), n]]`
-/

namespace A353473.P2364704216290415792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072356 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353473.P2364704216290415792

namespace A353473

/-- `char[lt[A072356(n+1), n]]` -/
def P2364704216290415792.Spec : Prop :=
  ∀ n, (P2364704216290415792.a n : ℤ) = A353473 (n + 1)

end A353473

/-! ## A353473.P13020401499146671155

`A073424(A290110(n+1)+A161680(n+9)-8)`
-/

namespace A353473.P13020401499146671155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (A290110 (n + 1) + (A161680 (n + 9) - 8)).toNat

end

end A353473.P13020401499146671155

namespace A353473

/-- `A073424(A290110(n+1)+A161680(n+9)-8)` -/
def P13020401499146671155.Spec : Prop :=
  ∀ n, P13020401499146671155.a n = A353473 (n + 1)

end A353473

/-! ## A353473.P14404274794544055141

`A000292(∑[n])%A007318(A301957(n+1)+1)`
-/

namespace A353473.P14404274794544055141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000292 (∑ j ∈ Finset.range (n + 1), f1 j)) (A007318 (A301957 (n + 1) + 1).toNat)

end

end A353473.P14404274794544055141

namespace A353473

/-- `A000292(∑[n])%A007318(A301957(n+1)+1)` -/
def P14404274794544055141.Spec : Prop :=
  ∀ n, P14404274794544055141.a n = A353473 (n + 1)

end A353473

/-! ## A353473.P3221768716231127354

`A010054(A290110(n+1)+A161680(n+9)-8)`
-/

namespace A353473.P3221768716231127354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A290110 (n + 1) + (A161680 (n + 9) - 8)).toNat

end

end A353473.P3221768716231127354

namespace A353473

/-- `A010054(A290110(n+1)+A161680(n+9)-8)` -/
def P3221768716231127354.Spec : Prop :=
  ∀ n, P3221768716231127354.a n = A353473 (n + 1)

end A353473

/-! ## A353473.P3137284019808622845

`A025435(n)%A035214(A114896(∑[n]))`
-/

namespace A353473.P3137284019808622845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025435 n) (A035214 (A114896 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat)

end

end A353473.P3137284019808622845

namespace A353473

/-- `A025435(n)%A035214(A114896(∑[n]))` -/
def P3137284019808622845.Spec : Prop :=
  ∀ n, P3137284019808622845.a n = A353473 (n + 1)

end A353473

/-! ## A353473.P9891561704006112355

`char[abs(a(n-1))]` with `a(0)=17, a(1)=49`
-/

namespace A353473.P9891561704006112355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [17, 49] fun n f1 =>
  f1 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353473.P9891561704006112355

namespace A353473

/-- `char[abs(a(n-1))]` -/
def P9891561704006112355.Spec : Prop :=
  ∀ n, (P9891561704006112355.a n : ℤ) = A353473 (n + 1)

end A353473

/-!
# A353474: a(n) = 1 if n is a number of the form p^2 * q, where p and q are primes with p < q, otherwise 0.

The programs for A353474, the canonical program `A353474.P16107743200704684582` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353474 has offset 1).

The definition of A353474 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052126, A302048, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353474.P94388652697961460

`A353472(n+1)-A353473(n+1)`
-/

namespace A353474.P94388652697961460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353472 (n + 1) - A353473 (n + 1)

end

end A353474.P94388652697961460

namespace A353474

/-- `A353472(n+1)-A353473(n+1)` -/
def P94388652697961460.Spec : Prop :=
  ∀ n, P94388652697961460.a n = A353474 (n + 1)

theorem P94388652697961460.correct : P94388652697961460.Spec := by
  intro n
  simp only [A353474, Nat.add_sub_cancel, A353474.P94388652697961460.a, A353474.P16107743200704684582.a, A052126, A052126.P1944428405920482243.a, A143731, A143731.P1534349135649353055.a, A302048, A302048.P8618753497546879016.f1, A302048.P8618753497546879016.a, A353472, A353472.P18369739324795552969.f1, A353472.P18369739324795552969.a, A353473, A353473.P15822886066893640418.a, A006530, A006530.P13372528560459906635.a, A054753, A054753.P14709416938439353488.f1, A054753.P14709416938439353488.a, A057427, A057427.P17645173493419391152.a, A079275, A079275.P13384608062085188173.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A070229, A070229.P5792893597916963980.a, A081619, A081619.P7456844298066121194.f1, A081619.P7456844298066121194.a, A359475, A359475.P3885974890903103559.a, A000005, A000005.P16091521709108585461.a, A005369, A005369.P10796159359873341658.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A359474, A359474.P3439923367546427684.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A353474

/-! ## A353474.P16107743200704684582

`A143731(n+1)*A302048(A052126(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A353474

/-- `A143731(n+1)*A302048(A052126(n+1))` -/
def P16107743200704684582.Spec : Prop :=
  ∀ n, P16107743200704684582.a n = A353474 (n + 1)

theorem P16107743200704684582.correct : P16107743200704684582.Spec := by
  intro n
  simp only [A353474, Nat.add_sub_cancel]

end A353474

/-! ## A353474.P5558598490187330032

`char[A096156(n+1)-1]`
-/

namespace A353474.P5558598490187330032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096156 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353474.P5558598490187330032

namespace A353474

/-- `char[A096156(n+1)-1]` -/
def P5558598490187330032.Spec : Prop :=
  ∀ n, (P5558598490187330032.a n : ℤ) = A353474 (n + 1)

end A353474

/-! ## A353474.P1653010967760281657

`char[eq[12, A071364(n+1)]]`
-/

namespace A353474.P1653010967760281657
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353474.P1653010967760281657

namespace A353474

/-- `char[eq[12, A071364(n+1)]]` -/
def P1653010967760281657.Spec : Prop :=
  ∀ n, (P1653010967760281657.a n : ℤ) = A353474 (n + 1)

end A353474

/-! ## A353474.P6805206035714852927

`A353473(A071364(n+1)+6)`
-/

namespace A353474.P6805206035714852927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353473 (A071364 (n + 1) + 6).toNat

end

end A353474.P6805206035714852927

namespace A353474

/-- `A353473(A071364(n+1)+6)` -/
def P6805206035714852927.Spec : Prop :=
  ∀ n, P6805206035714852927.a n = A353474 (n + 1)

end A353474

/-! ## A353474.P3413852712470839972

`A355444(n+1)+A355443(n+1)`
-/

namespace A353474.P3413852712470839972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355444 (n + 1) + A355443 (n + 1)

end

end A353474.P3413852712470839972

namespace A353474

/-- `A355444(n+1)+A355443(n+1)` -/
def P3413852712470839972.Spec : Prop :=
  ∀ n, P3413852712470839972.a n = A353474 (n + 1)

end A353474

/-! ## A353474.P11379723404528405828

`A065202(n+1)*A101605(n+1)`
-/

namespace A353474.P11379723404528405828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065202 (n + 1) * A101605 (n + 1)

end

end A353474.P11379723404528405828

namespace A353474

/-- `A065202(n+1)*A101605(n+1)` -/
def P11379723404528405828.Spec : Prop :=
  ∀ n, P11379723404528405828.a n = A353474 (n + 1)

end A353474

/-! ## A353474.P16689984506642997362

`A065202(n+1)*A338714(n+1)`
-/

namespace A353474.P16689984506642997362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065202 (n + 1) * A338714 (n + 1)

end

end A353474.P16689984506642997362

namespace A353474

/-- `A065202(n+1)*A338714(n+1)` -/
def P16689984506642997362.Spec : Prop :=
  ∀ n, P16689984506642997362.a n = A353474 (n + 1)

end A353474

/-! ## A353474.P8927037429212027578

`A065202(n+1)*A340369(n+1)`
-/

namespace A353474.P8927037429212027578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065202 (n + 1) * A340369 (n + 1)

end

end A353474.P8927037429212027578

namespace A353474

/-- `A065202(n+1)*A340369(n+1)` -/
def P8927037429212027578.Spec : Prop :=
  ∀ n, P8927037429212027578.a n = A353474 (n + 1)

end A353474

/-! ## A353474.P3212024179625249883

`A065202(n+1)*A353472(n+1)`
-/

namespace A353474.P3212024179625249883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065202 (n + 1) * A353472 (n + 1)

end

end A353474.P3212024179625249883

namespace A353474

/-- `A065202(n+1)*A353472(n+1)` -/
def P3212024179625249883.Spec : Prop :=
  ∀ n, P3212024179625249883.a n = A353474 (n + 1)

end A353474

/-! ## A353474.P4377360613372061672

`A227291(A182853(A083260(n+1)))`
-/

namespace A353474.P4377360613372061672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227291 (A182853 (A083260 (n + 1)).toNat).toNat

end

end A353474.P4377360613372061672

namespace A353474

/-- `A227291(A182853(A083260(n+1)))` -/
def P4377360613372061672.Spec : Prop :=
  ∀ n, P4377360613372061672.a n = A353474 (n + 1)

end A353474

/-! ## A353474.P9497877801598645493

`A143731(A032742(n+1))*A353472(n+1)`
-/

namespace A353474.P9497877801598645493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143731 (A032742 (n + 1)).toNat * A353472 (n + 1)

end

end A353474.P9497877801598645493

namespace A353474

/-- `A143731(A032742(n+1))*A353472(n+1)` -/
def P9497877801598645493.Spec : Prop :=
  ∀ n, P9497877801598645493.a n = A353474 (n + 1)

end A353474

/-! ## A353474.P17318817963294262657

`A355443(n+1)+A353472(n+1)*A355454(n+1)`
-/

namespace A353474.P17318817963294262657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355443 (n + 1) + A353472 (n + 1) * A355454 (n + 1)

end

end A353474.P17318817963294262657

namespace A353474

/-- `A355443(n+1)+A353472(n+1)*A355454(n+1)` -/
def P17318817963294262657.Spec : Prop :=
  ∀ n, P17318817963294262657.a n = A353474 (n + 1)

end A353474

/-! ## A353474.P9545618272076962175

`A355444(n+1)+A353472(n+1)*A355453(n+1)`
-/

namespace A353474.P9545618272076962175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355444 (n + 1) + A353472 (n + 1) * A355453 (n + 1)

end

end A353474.P9545618272076962175

namespace A353474

/-- `A355444(n+1)+A353472(n+1)*A355453(n+1)` -/
def P9545618272076962175.Spec : Prop :=
  ∀ n, P9545618272076962175.a n = A353474 (n + 1)

end A353474

/-! ## A353474.P868246423714949574

`char[lt[n+1, A072356(n+1)]]`
-/

namespace A353474.P868246423714949574
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072356 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353474.P868246423714949574

namespace A353474

/-- `char[lt[n+1, A072356(n+1)]]` -/
def P868246423714949574.Spec : Prop :=
  ∀ n, (P868246423714949574.a n : ℤ) = A353474 (n + 1)

end A353474

/-! ## A353474.P13076779078977897462

`C(A276951(A294072(n+1)), A107067(n+1))`
-/

namespace A353474.P13076779078977897462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A276951 (A294072 (n + 1)).toNat).toNat (A107067 (n + 1)).toNat

end

end A353474.P13076779078977897462

namespace A353474

/-- `C(A276951(A294072(n+1)), A107067(n+1))` -/
def P13076779078977897462.Spec : Prop :=
  ∀ n, (P13076779078977897462.a n : ℤ) = A353474 (n + 1)

end A353474

/-! ## A353474.P8945510161378072014

`A353473(A011262(n+1))`
-/

namespace A353474.P8945510161378072014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353473 (A011262 (n + 1)).toNat

end

end A353474.P8945510161378072014

namespace A353474

/-- `A353473(A011262(n+1))` -/
def P8945510161378072014.Spec : Prop :=
  ∀ n, P8945510161378072014.a n = A353474 (n + 1)

end A353474

/-! ## A353474.P18257050117562972456

`val(A236515(n+1), 6)`
-/

namespace A353474.P18257050117562972456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A236515 (n + 1)).toNat 6

end

end A353474.P18257050117562972456

namespace A353474

/-- `val(A236515(n+1), 6)` -/
def P18257050117562972456.Spec : Prop :=
  ∀ n, (P18257050117562972456.a n : ℤ) = A353474 (n + 1)

end A353474

/-! ## A353474.P4337444470013571969

`val(A237433(n+1), 6)`
-/

namespace A353474.P4337444470013571969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A237433 (n + 1)).toNat 6

end

end A353474.P4337444470013571969

namespace A353474

/-- `val(A237433(n+1), 6)` -/
def P4337444470013571969.Spec : Prop :=
  ∀ n, (P4337444470013571969.a n : ℤ) = A353474 (n + 1)

end A353474

/-! ## A353474.P17191472961094821673

`A316869(A237433(n+1)+2)`
-/

namespace A353474.P17191472961094821673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 (A237433 (n + 1) + 2).toNat

end

end A353474.P17191472961094821673

namespace A353474

/-- `A316869(A237433(n+1)+2)` -/
def P17191472961094821673.Spec : Prop :=
  ∀ n, P17191472961094821673.a n = A353474 (n + 1)

end A353474

/-!
# A353475: a(n) = 1 if n is a semiprime of the form p * q, where p and q are primes with p^2 < q, otherwise 0.

The programs for A353475, the canonical program `A353475.P5899225712810305588` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353475 has offset 1).

The definition of A353475 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064911, A353476, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353475.P5899225712810305588

`A064911(n+1)-A353476(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A353475

/-- `A064911(n+1)-A353476(n+1)` -/
def P5899225712810305588.Spec : Prop :=
  ∀ n, P5899225712810305588.a n = A353475 (n + 1)

theorem P5899225712810305588.correct : P5899225712810305588.Spec := by
  intro n
  simp only [A353475, Nat.add_sub_cancel]

end A353475

/-! ## A353475.P445028321120325153

`char[A138511(n+1)-1]`
-/

namespace A353475.P445028321120325153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138511 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353475.P445028321120325153

namespace A353475

/-- `char[A138511(n+1)-1]` -/
def P445028321120325153.Spec : Prop :=
  ∀ n, (P445028321120325153.a n : ℤ) = A353475 (n + 1)

end A353475

/-! ## A353475.P16833986562254450624

`A154281(A353645(n+1)+1)`
-/

namespace A353475.P16833986562254450624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154281 (A353645 (n + 1) + 1).toNat

end

end A353475.P16833986562254450624

namespace A353475

/-- `A154281(A353645(n+1)+1)` -/
def P16833986562254450624.Spec : Prop :=
  ∀ n, P16833986562254450624.a n = A353475 (n + 1)

end A353475

/-! ## A353475.P5021502072303716722

`A064911(n+1)*A284256(n+1)`
-/

namespace A353475.P5021502072303716722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1) * A284256 (n + 1)

end

end A353475.P5021502072303716722

namespace A353475

/-- `A064911(n+1)*A284256(n+1)` -/
def P5021502072303716722.Spec : Prop :=
  ∀ n, P5021502072303716722.a n = A353475 (n + 1)

end A353475

/-! ## A353475.P14836278368486151155

`A064911(n+1)*A284258(n+1)`
-/

namespace A353475.P14836278368486151155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1) * A284258 (n + 1)

end

end A353475.P14836278368486151155

namespace A353475

/-- `A064911(n+1)*A284258(n+1)` -/
def P14836278368486151155.Spec : Prop :=
  ∀ n, P14836278368486151155.a n = A353475 (n + 1)

end A353475

/-! ## A353475.P1477200411800536954

`A101040(n+1)*A284256(n+1)`
-/

namespace A353475.P1477200411800536954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101040 (n + 1) * A284256 (n + 1)

end

end A353475.P1477200411800536954

namespace A353475

/-- `A101040(n+1)*A284256(n+1)` -/
def P1477200411800536954.Spec : Prop :=
  ∀ n, P1477200411800536954.a n = A353475 (n + 1)

end A353475

/-! ## A353475.P17562560871461330099

`A101040(n+1)*A284258(n+1)`
-/

namespace A353475.P17562560871461330099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101040 (n + 1) * A284258 (n + 1)

end

end A353475.P17562560871461330099

namespace A353475

/-- `A101040(n+1)*A284258(n+1)` -/
def P17562560871461330099.Spec : Prop :=
  ∀ n, P17562560871461330099.a n = A353475 (n + 1)

end A353475

/-! ## A353475.P8616041534931820715

`A280710(n+1)*A284256(n+1)`
-/

namespace A353475.P8616041534931820715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280710 (n + 1) * A284256 (n + 1)

end

end A353475.P8616041534931820715

namespace A353475

/-- `A280710(n+1)*A284256(n+1)` -/
def P8616041534931820715.Spec : Prop :=
  ∀ n, P8616041534931820715.a n = A353475 (n + 1)

end A353475

/-! ## A353475.P6866222264693505040

`A280710(n+1)*A284258(n+1)`
-/

namespace A353475.P6866222264693505040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280710 (n + 1) * A284258 (n + 1)

end

end A353475.P6866222264693505040

namespace A353475

/-- `A280710(n+1)*A284258(n+1)` -/
def P6866222264693505040.Spec : Prop :=
  ∀ n, P6866222264693505040.a n = A353475 (n + 1)

end A353475

/-! ## A353475.P16967676080402429500

`A284256(n+1)*A303337(n+1)`
-/

namespace A353475.P16967676080402429500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284256 (n + 1) * A303337 (n + 1)

end

end A353475.P16967676080402429500

namespace A353475

/-- `A284256(n+1)*A303337(n+1)` -/
def P16967676080402429500.Spec : Prop :=
  ∀ n, P16967676080402429500.a n = A353475 (n + 1)

end A353475

/-! ## A353475.P6032092543705098988

`A284258(n+1)*A303337(n+1)`
-/

namespace A353475.P6032092543705098988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284258 (n + 1) * A303337 (n + 1)

end

end A353475.P6032092543705098988

namespace A353475

/-- `A284258(n+1)*A303337(n+1)` -/
def P6032092543705098988.Spec : Prop :=
  ∀ n, P6032092543705098988.a n = A353475 (n + 1)

end A353475

/-! ## A353475.P2572168878255421725

`A284256(n+1)*A338713(n+1)`
-/

namespace A353475.P2572168878255421725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284256 (n + 1) * A338713 (n + 1)

end

end A353475.P2572168878255421725

namespace A353475

/-- `A284256(n+1)*A338713(n+1)` -/
def P2572168878255421725.Spec : Prop :=
  ∀ n, P2572168878255421725.a n = A353475 (n + 1)

end A353475

/-! ## A353475.P4271105141433664202

`A284258(n+1)*A338713(n+1)`
-/

namespace A353475.P4271105141433664202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284258 (n + 1) * A338713 (n + 1)

end

end A353475.P4271105141433664202

namespace A353475

/-- `A284258(n+1)*A338713(n+1)` -/
def P4271105141433664202.Spec : Prop :=
  ∀ n, P4271105141433664202.a n = A353475 (n + 1)

end A353475

/-! ## A353475.P833877239890696813

`A063928(n+1)%A284252(n+1)`
-/

namespace A353475.P833877239890696813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063928 (n + 1)) (A284252 (n + 1))

end

end A353475.P833877239890696813

namespace A353475

/-- `A063928(n+1)%A284252(n+1)` -/
def P833877239890696813.Spec : Prop :=
  ∀ n, P833877239890696813.a n = A353475 (n + 1)

end A353475

/-! ## A353475.P16820087822924312794

`A303337(n+1)%A224835(n+1)`
-/

namespace A353475.P16820087822924312794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303337 (n + 1)) (A224835 (n + 1))

end

end A353475.P16820087822924312794

namespace A353475

/-- `A303337(n+1)%A224835(n+1)` -/
def P16820087822924312794.Spec : Prop :=
  ∀ n, P16820087822924312794.a n = A353475 (n + 1)

end A353475

/-! ## A353475.P10606262137981018278

`A338713(n+1)%A284252(n+1)`
-/

namespace A353475.P10606262137981018278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338713 (n + 1)) (A284252 (n + 1))

end

end A353475.P10606262137981018278

namespace A353475

/-- `A338713(n+1)%A284252(n+1)` -/
def P10606262137981018278.Spec : Prop :=
  ∀ n, P10606262137981018278.a n = A353475 (n + 1)

end A353475

/-! ## A353475.P922017931429457474

`(1-A252372(n+1))*A064911(n+1)`
-/

namespace A353475.P922017931429457474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A252372 (n + 1)) * A064911 (n + 1)

end

end A353475.P922017931429457474

namespace A353475

/-- `(1-A252372(n+1))*A064911(n+1)` -/
def P922017931429457474.Spec : Prop :=
  ∀ n, P922017931429457474.a n = A353475 (n + 1)

end A353475

/-! ## A353475.P17195651941885565637

`(A347516(n+1)-1)*A064911(n+1)`
-/

namespace A353475.P17195651941885565637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A347516 (n + 1) - 1) * A064911 (n + 1)

end

end A353475.P17195651941885565637

namespace A353475

/-- `(A347516(n+1)-1)*A064911(n+1)` -/
def P17195651941885565637.Spec : Prop :=
  ∀ n, P17195651941885565637.a n = A353475 (n + 1)

end A353475

/-! ## A353475.P6244641432348078338

`and(A325339(n+1)+1, A064911(n+1))`
-/

namespace A353475.P6244641432348078338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A325339 (n + 1) + 1) (A064911 (n + 1))

end

end A353475.P6244641432348078338

namespace A353475

/-- `and(A325339(n+1)+1, A064911(n+1))` -/
def P6244641432348078338.Spec : Prop :=
  ∀ n, P6244641432348078338.a n = A353475 (n + 1)

end A353475

/-! ## A353475.P5790896458683735226

`A064911(n+1)*A064911(A325339(n+1))`
-/

namespace A353475.P5790896458683735226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1) * A064911 (A325339 (n + 1)).toNat

end

end A353475.P5790896458683735226

namespace A353475

/-- `A064911(n+1)*A064911(A325339(n+1))` -/
def P5790896458683735226.Spec : Prop :=
  ∀ n, P5790896458683735226.a n = A353475 (n + 1)

end A353475

/-!
# A353476: a(n) = 1 if n is a semiprime of the form p * q, where p and q are (not necessarily distinct) primes with p <= q < p^2, otherwise 0.

The programs for A353476, the canonical program `A353476.P2124531172734975485` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353476 has offset 1).

The definition of A353476 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353476.P8920945796544708719

`A064911(n+1)-A353475(n+1)`
-/

namespace A353476.P8920945796544708719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1) - A353475 (n + 1)

end

end A353476.P8920945796544708719

namespace A353476

/-- `A064911(n+1)-A353475(n+1)` -/
def P8920945796544708719.Spec : Prop :=
  ∀ n, P8920945796544708719.a n = A353476 (n + 1)

theorem P8920945796544708719.correct : P8920945796544708719.Spec := by
  intro n
  simp only [A353476, Nat.add_sub_cancel, A353476.P8920945796544708719.a, A353476.P2124531172734975485.a, A064911, A064911.P14478375241243671053.a, A081136, A081136.P501880632944464455.a, A280363, A280363.P4932248685350018500.a, A353475, A353475.P5899225712810305588.a, A028233, A028233.P1707119900298464866.a, A057427, A057427.P17645173493419391152.a, A064446, A064446.P16160038407461689017.a, A111089, A111089.P6834740455436443643.a, A174956, A174956.P4901462298165488404.a, A003418, A003418.P6976248655893080794.a, A020639, A020639.P7578813688609615429.a, A028310, A028310.P18130301328277559831.a, A051696, A051696.P808776030337055714.a, A067029, A067029.P17255758945913048832.a, A070777, A070777.P2681575224791587698.a, A072000, A072000.P3706059858088101648.a, A000010, A000010.P4673923239450215316.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A006530, A006530.P13372528560459906635.a, A008578, A008578.P3639467937083264764.a, A055396, A055396.P18305262754425103137.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, A362983, A362983.P10144634432132035395.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A353476

/-! ## A353476.P1766002739448592528

`char[A251728(n+1)-1]`
-/

namespace A353476.P1766002739448592528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251728 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353476.P1766002739448592528

namespace A353476

/-- `char[A251728(n+1)-1]` -/
def P1766002739448592528.Spec : Prop :=
  ∀ n, (P1766002739448592528.a n : ℤ) = A353476 (n + 1)

end A353476

/-! ## A353476.P16633862042925609916

`A154281(A353645(n+1)+2)`
-/

namespace A353476.P16633862042925609916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154281 (A353645 (n + 1) + 2).toNat

end

end A353476.P16633862042925609916

namespace A353476

/-- `A154281(A353645(n+1)+2)` -/
def P16633862042925609916.Spec : Prop :=
  ∀ n, P16633862042925609916.a n = A353476 (n + 1)

end A353476

/-! ## A353476.P2124531172734975485

`A081136(A280363(n+1))%2`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A353476

/-- `A081136(A280363(n+1))%2` -/
def P2124531172734975485.Spec : Prop :=
  ∀ n, P2124531172734975485.a n = A353476 (n + 1)

theorem P2124531172734975485.correct : P2124531172734975485.Spec := by
  intro n
  simp only [A353476, Nat.add_sub_cancel]

end A353476

/-! ## A353476.P5200860571085166719

`A064911(n+1)*A252372(n+1)`
-/

namespace A353476.P5200860571085166719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1) * A252372 (n + 1)

end

end A353476.P5200860571085166719

namespace A353476

/-- `A064911(n+1)*A252372(n+1)` -/
def P5200860571085166719.Spec : Prop :=
  ∀ n, P5200860571085166719.a n = A353476 (n + 1)

end A353476

/-! ## A353476.P2616048793698465237

`and(A064911(n+1), A325339(n+1))`
-/

namespace A353476.P2616048793698465237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A064911 (n + 1)) (A325339 (n + 1))

end

end A353476.P2616048793698465237

namespace A353476

/-- `and(A064911(n+1), A325339(n+1))` -/
def P2616048793698465237.Spec : Prop :=
  ∀ n, P2616048793698465237.a n = A353476 (n + 1)

end A353476

/-! ## A353476.P3781105304572412383

`and(A064911(n+1), A347516(n+1))`
-/

namespace A353476.P3781105304572412383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A064911 (n + 1)) (A347516 (n + 1))

end

end A353476.P3781105304572412383

namespace A353476

/-- `and(A064911(n+1), A347516(n+1))` -/
def P3781105304572412383.Spec : Prop :=
  ∀ n, P3781105304572412383.a n = A353476 (n + 1)

end A353476

/-! ## A353476.P18355108880150631140

`and(A101040(n+1), A325339(n+1))`
-/

namespace A353476.P18355108880150631140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101040 (n + 1)) (A325339 (n + 1))

end

end A353476.P18355108880150631140

namespace A353476

/-- `and(A101040(n+1), A325339(n+1))` -/
def P18355108880150631140.Spec : Prop :=
  ∀ n, P18355108880150631140.a n = A353476 (n + 1)

end A353476

/-! ## A353476.P6531256465189560002

`(1-A284256(n+1))*A064911(n+1)`
-/

namespace A353476.P6531256465189560002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A284256 (n + 1)) * A064911 (n + 1)

end

end A353476.P6531256465189560002

namespace A353476

/-- `(1-A284256(n+1))*A064911(n+1)` -/
def P6531256465189560002.Spec : Prop :=
  ∀ n, P6531256465189560002.a n = A353476 (n + 1)

end A353476

/-! ## A353476.P6382719303889135166

`(1-A284258(n+1))*A064911(n+1)`
-/

namespace A353476.P6382719303889135166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A284258 (n + 1)) * A064911 (n + 1)

end

end A353476.P6382719303889135166

namespace A353476

/-- `(1-A284258(n+1))*A064911(n+1)` -/
def P6382719303889135166.Spec : Prop :=
  ∀ n, P6382719303889135166.a n = A353476 (n + 1)

end A353476

/-! ## A353476.P10052274333417901738

`A010051(A353475(n+1)+A032742(n+1))`
-/

namespace A353476.P10052274333417901738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A353475 (n + 1) + A032742 (n + 1)).toNat

end

end A353476.P10052274333417901738

namespace A353476

/-- `A010051(A353475(n+1)+A032742(n+1))` -/
def P10052274333417901738.Spec : Prop :=
  ∀ n, P10052274333417901738.a n = A353476 (n + 1)

end A353476

/-! ## A353476.P11422849411420625402

`A064911(n+1)*A064911(A325339(n+1)+1)`
-/

namespace A353476.P11422849411420625402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1) * A064911 (A325339 (n + 1) + 1).toNat

end

end A353476.P11422849411420625402

namespace A353476

/-- `A064911(n+1)*A064911(A325339(n+1)+1)` -/
def P11422849411420625402.Spec : Prop :=
  ∀ n, P11422849411420625402.a n = A353476 (n + 1)

end A353476

/-! ## A353476.P14145822029340758685

`A064911((n+1)*A347516(n+1))`
-/

namespace A353476.P14145822029340758685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 ((n + 1 : ℤ) * A347516 (n + 1)).toNat

end

end A353476.P14145822029340758685

namespace A353476

/-- `A064911((n+1)*A347516(n+1))` -/
def P14145822029340758685.Spec : Prop :=
  ∀ n, P14145822029340758685.a n = A353476 (n + 1)

end A353476

/-! ## A353476.P9029793180527934199

`A064911(n+1)*A064911(A325339(n+1)²)`
-/

namespace A353476.P9029793180527934199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1) * A064911 (A325339 (n + 1) ^ 2).toNat

end

end A353476.P9029793180527934199

namespace A353476

/-- `A064911(n+1)*A064911(A325339(n+1)²)` -/
def P9029793180527934199.Spec : Prop :=
  ∀ n, P9029793180527934199.a n = A353476 (n + 1)

end A353476

/-! ## A353476.P14521952266441174440

`A019590(A353645(n+1))*A088432(n+1)`
-/

namespace A353476.P14521952266441174440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (A353645 (n + 1)).toNat * A088432 (n + 1)

end

end A353476.P14521952266441174440

namespace A353476

/-- `A019590(A353645(n+1))*A088432(n+1)` -/
def P14521952266441174440.Spec : Prop :=
  ∀ n, P14521952266441174440.a n = A353476 (n + 1)

end A353476

/-! ## A353476.P6150585705560483249

`A019590(A353645(n+1))-A019590(A353645(n+1)²)`
-/

namespace A353476.P6150585705560483249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (A353645 (n + 1)).toNat - A019590 (A353645 (n + 1) ^ 2).toNat

end

end A353476.P6150585705560483249

namespace A353476

/-- `A019590(A353645(n+1))-A019590(A353645(n+1)²)` -/
def P6150585705560483249.Spec : Prop :=
  ∀ n, P6150585705560483249.a n = A353476 (n + 1)

end A353476

/-!
# A353477: a(n) = 1 if n is a semiprime of the form 4k+1, otherwise 0.

The programs for A353477, the canonical program `A353477.P2258751349755491853` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353477 has offset 1).

The definition of A353477 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353479, A353480, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353477.P2258751349755491853

`A353480(n+1)-A353479(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A353477

/-- `A353480(n+1)-A353479(n+1)` -/
def P2258751349755491853.Spec : Prop :=
  ∀ n, P2258751349755491853.a n = A353477 (n + 1)

theorem P2258751349755491853.correct : P2258751349755491853.Spec := by
  intro n
  simp only [A353477, Nat.add_sub_cancel]

end A353477

/-! ## A353477.P9840757834726968436

`char[A108181(n+1)-1]`
-/

namespace A353477.P9840757834726968436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108181 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353477.P9840757834726968436

namespace A353477

/-- `char[A108181(n+1)-1]` -/
def P9840757834726968436.Spec : Prop :=
  ∀ n, (P9840757834726968436.a n : ℤ) = A353477 (n + 1)

end A353477

/-! ## A353477.P12387142416678090110

`and(∑[∑[n+1]], A064911(n+1))`
-/

namespace A353477.P12387142416678090110
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A064911 (n + 1))

end

end A353477.P12387142416678090110

namespace A353477

/-- `and(∑[∑[n+1]], A064911(n+1))` -/
def P12387142416678090110.Spec : Prop :=
  ∀ n, P12387142416678090110.a n = A353477 (n + 1)

end A353477

/-! ## A353477.P3510252238607170635

`A353480(A127932(n))`
-/

namespace A353477.P3510252238607170635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353480 (A127932 n).toNat

end

end A353477.P3510252238607170635

namespace A353477

/-- `A353480(A127932(n))` -/
def P3510252238607170635.Spec : Prop :=
  ∀ n, P3510252238607170635.a n = A353477 (n + 1)

end A353477

/-! ## A353477.P9687600432919642498

`A353480(A396674(n))`
-/

namespace A353477.P9687600432919642498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353480 (A396674 n).toNat

end

end A353477.P9687600432919642498

namespace A353477

/-- `A353480(A396674(n))` -/
def P9687600432919642498.Spec : Prop :=
  ∀ n, P9687600432919642498.a n = A353477 (n + 1)

end A353477

/-! ## A353477.P413400276293807021

`A353480(A152822(n)+n)`
-/

namespace A353477.P413400276293807021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353480 (A152822 n + (n : ℤ)).toNat

end

end A353477.P413400276293807021

namespace A353477

/-- `A353480(A152822(n)+n)` -/
def P413400276293807021.Spec : Prop :=
  ∀ n, P413400276293807021.a n = A353477 (n + 1)

end A353477

/-! ## A353477.P299630430766064493

`A064911(n+1)*A121262(n)`
-/

namespace A353477.P299630430766064493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1) * A121262 n

end

end A353477.P299630430766064493

namespace A353477

/-- `A064911(n+1)*A121262(n)` -/
def P299630430766064493.Spec : Prop :=
  ∀ n, P299630430766064493.a n = A353477 (n + 1)

end A353477

/-! ## A353477.P3376699596363713639

`A353480(n*A014577(n)+1)`
-/

namespace A353477.P3376699596363713639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353480 ((n : ℤ) * A014577 n + 1).toNat

end

end A353477.P3376699596363713639

namespace A353477

/-- `A353480(n*A014577(n)+1)` -/
def P3376699596363713639.Spec : Prop :=
  ∀ n, P3376699596363713639.a n = A353477 (n + 1)

end A353477

/-! ## A353477.P6420063063830394965

`A102560(n)*A353480(n+1)`
-/

namespace A353477.P6420063063830394965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102560 n * A353480 (n + 1)

end

end A353477.P6420063063830394965

namespace A353477

/-- `A102560(n)*A353480(n+1)` -/
def P6420063063830394965.Spec : Prop :=
  ∀ n, P6420063063830394965.a n = A353477 (n + 1)

end A353477

/-! ## A353477.P2207815370930227997

`A353480(n*A121262(n)+1)`
-/

namespace A353477.P2207815370930227997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353480 ((n : ℤ) * A121262 n + 1).toNat

end

end A353477.P2207815370930227997

namespace A353477

/-- `A353480(n*A121262(n)+1)` -/
def P2207815370930227997.Spec : Prop :=
  ∀ n, P2207815370930227997.a n = A353477 (n + 1)

end A353477

/-! ## A353477.P17578607565923871732

`A130731(n)*A353480(n+1)`
-/

namespace A353477.P17578607565923871732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130731 n * A353480 (n + 1)

end

end A353477.P17578607565923871732

namespace A353477

/-- `A130731(n)*A353480(n+1)` -/
def P17578607565923871732.Spec : Prop :=
  ∀ n, P17578607565923871732.a n = A353477 (n + 1)

end A353477

/-! ## A353477.P2965282401638825405

`A353480(n*A133872(n)+1)`
-/

namespace A353477.P2965282401638825405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353480 ((n : ℤ) * A133872 n + 1).toNat

end

end A353477.P2965282401638825405

namespace A353477

/-- `A353480(n*A133872(n)+1)` -/
def P2965282401638825405.Spec : Prop :=
  ∀ n, P2965282401638825405.a n = A353477 (n + 1)

end A353477

/-! ## A353477.P14771526860836156913

`A219977(n)*A353480(n+1)`
-/

namespace A353477.P14771526860836156913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 n * A353480 (n + 1)

end

end A353477.P14771526860836156913

namespace A353477

/-- `A219977(n)*A353480(n+1)` -/
def P14771526860836156913.Spec : Prop :=
  ∀ n, P14771526860836156913.a n = A353477 (n + 1)

end A353477

/-! ## A353477.P5853506890433723051

`A353480(n*A262808(n)+1)`
-/

namespace A353477.P5853506890433723051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353480 ((n : ℤ) * A262808 n + 1).toNat

end

end A353477.P5853506890433723051

namespace A353477

/-- `A353480(n*A262808(n)+1)` -/
def P5853506890433723051.Spec : Prop :=
  ∀ n, P5853506890433723051.a n = A353477 (n + 1)

end A353477

/-! ## A353477.P14484791050605359438

`A353480(n+1)*A353494(n)`
-/

namespace A353477.P14484791050605359438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353480 (n + 1) * A353494 n

end

end A353477.P14484791050605359438

namespace A353477

/-- `A353480(n+1)*A353494(n)` -/
def P14484791050605359438.Spec : Prop :=
  ∀ n, P14484791050605359438.a n = A353477 (n + 1)

end A353477

/-! ## A353477.P10582453123240639124

`A353480(2-(A152822(n)-n))`
-/

namespace A353477.P10582453123240639124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353480 (2 - (A152822 n - (n : ℤ))).toNat

end

end A353477.P10582453123240639124

namespace A353477

/-- `A353480(2-(A152822(n)-n))` -/
def P10582453123240639124.Spec : Prop :=
  ∀ n, P10582453123240639124.a n = A353477 (n + 1)

end A353477

/-! ## A353477.P5252557019977626102

`Δ[A353495(n)]*A353480(n+1)`
-/

namespace A353477.P5252557019977626102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A353480 (n + 1)

end

end A353477.P5252557019977626102

namespace A353477

/-- `Δ[A353495(n)]*A353480(n+1)` -/
def P5252557019977626102.Spec : Prop :=
  ∀ n, P5252557019977626102.a n = A353477 (n + 1)

end A353477

/-! ## A353477.P11296686099974373411

`A353480(A353479(n+1)+n+1)`
-/

namespace A353477.P11296686099974373411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353480 (A353479 (n + 1) + (n + 1 : ℤ)).toNat

end

end A353477.P11296686099974373411

namespace A353477

/-- `A353480(A353479(n+1)+n+1)` -/
def P11296686099974373411.Spec : Prop :=
  ∀ n, P11296686099974373411.a n = A353477 (n + 1)

end A353477

/-! ## A353477.P7172583338160800796

`A353480(A359162(n+1)+n+1)`
-/

namespace A353477.P7172583338160800796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353480 (A359162 (n + 1) + (n + 1 : ℤ)).toNat

end

end A353477.P7172583338160800796

namespace A353477

/-- `A353480(A359162(n+1)+n+1)` -/
def P7172583338160800796.Spec : Prop :=
  ∀ n, P7172583338160800796.a n = A353477 (n + 1)

end A353477

/-! ## A353477.P1160899394331642114

`A353495((n+1)*A064911(n+1))`
-/

namespace A353477.P1160899394331642114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353495 ((n + 1 : ℤ) * A064911 (n + 1)).toNat

end

end A353477.P1160899394331642114

namespace A353477

/-- `A353495((n+1)*A064911(n+1))` -/
def P1160899394331642114.Spec : Prop :=
  ∀ n, P1160899394331642114.a n = A353477 (n + 1)

end A353477

/-!
# A353478: a(n) = 1 if n is an even semiprime (2*prime), otherwise 0.

The programs for A353478, the canonical program `A353478.P1008730481002663857` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353478 has offset 1).

The definition of A353478 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064911, A353480, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353478.P1008730481002663857

`A064911(n+1)-A353480(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A353478

/-- `A064911(n+1)-A353480(n+1)` -/
def P1008730481002663857.Spec : Prop :=
  ∀ n, P1008730481002663857.a n = A353478 (n + 1)

theorem P1008730481002663857.correct : P1008730481002663857.Spec := by
  intro n
  simp only [A353478, Nat.add_sub_cancel]

end A353478

/-! ## A353478.P4269334566395650887

`A059841(n+1)*A064911(n+1)`
-/

namespace A353478.P4269334566395650887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (n + 1) * A064911 (n + 1)

end

end A353478.P4269334566395650887

namespace A353478

/-- `A059841(n+1)*A064911(n+1)` -/
def P4269334566395650887.Spec : Prop :=
  ∀ n, P4269334566395650887.a n = A353478 (n + 1)

theorem P4269334566395650887.correct : P4269334566395650887.Spec := by
  intro n
  simp only [A353478, Nat.add_sub_cancel, A353478.P4269334566395650887.a, A353478.P1008730481002663857.a, A059841, A059841.P7264174615531153985.a, A064911, A064911.P14478375241243671053.a, A353480, A353480.P8605486788337762980.a, A000035, A000035.P2023072528413494694.a, A057427, A057427.P17645173493419391152.a, A174956, A174956.P4901462298165488404.a, A028310, A028310.P18130301328277559831.a, A072000, A072000.P3706059858088101648.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A353478

/-! ## A353478.P16069005332222580511

`∑{p}[n+1, val((n+1)²-#, 2*n+1)]`
-/

namespace A353478.P16069005332222580511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (((n + 1) ^ 2 : ℤ) - (p : ℤ)).toNat (2 * n + 1)

end

end A353478.P16069005332222580511

namespace A353478

/-- `∑{p}[n+1, val((n+1)²-#, 2*n+1)]` -/
def P16069005332222580511.Spec : Prop :=
  ∀ n, (P16069005332222580511.a n : ℤ) = A353478 (n + 1)

end A353478

/-! ## A353478.P8373895338153239908

`1-Δ[A282029(n)]`
-/

namespace A353478.P8373895338153239908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A353478.P8373895338153239908

namespace A353478

/-- `1-Δ[A282029(n)]` -/
def P8373895338153239908.Spec : Prop :=
  ∀ n, P8373895338153239908.a n = A353478 (n + 1)

end A353478

/-! ## A353478.P16659811990362314869

`char[A076274(n+2)]`
-/

namespace A353478.P16659811990362314869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076274 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353478.P16659811990362314869

namespace A353478

/-- `char[A076274(n+2)]` -/
def P16659811990362314869.Spec : Prop :=
  ∀ n, (P16659811990362314869.a n : ℤ) = A353478 (n + 1)

end A353478

/-! ## A353478.P6094516517165000666

`A002126(n+1)%2`
-/

namespace A353478.P6094516517165000666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002126 (n + 1)) 2

end

end A353478.P6094516517165000666

namespace A353478

/-- `A002126(n+1)%2` -/
def P6094516517165000666.Spec : Prop :=
  ∀ n, P6094516517165000666.a n = A353478 (n + 1)

end A353478

/-! ## A353478.P3171196884177732243

`A073610(n+1)%2`
-/

namespace A353478.P3171196884177732243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073610 (n + 1)) 2

end

end A353478.P3171196884177732243

namespace A353478

/-- `A073610(n+1)%2` -/
def P3171196884177732243.Spec : Prop :=
  ∀ n, P3171196884177732243.a n = A353478 (n + 1)

end A353478

/-! ## A353478.P18134374910394862083

`A087625(n+1)%2`
-/

namespace A353478.P18134374910394862083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087625 (n + 1)) 2

end

end A353478.P18134374910394862083

namespace A353478

/-- `A087625(n+1)%2` -/
def P18134374910394862083.Spec : Prop :=
  ∀ n, P18134374910394862083.a n = A353478 (n + 1)

end A353478

/-! ## A353478.P16326016563658291850

`val(A369032(n+1), 3)`
-/

namespace A353478.P16326016563658291850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A369032 (n + 1)).toNat 3

end

end A353478.P16326016563658291850

namespace A353478

/-- `val(A369032(n+1), 3)` -/
def P16326016563658291850.Spec : Prop :=
  ∀ n, (P16326016563658291850.a n : ℤ) = A353478 (n + 1)

end A353478

/-! ## A353478.P14995699484509544138

`C(A105661(n+1), 2)`
-/

namespace A353478.P14995699484509544138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A105661 (n + 1)).toNat 2

end

end A353478.P14995699484509544138

namespace A353478

/-- `C(A105661(n+1), 2)` -/
def P14995699484509544138.Spec : Prop :=
  ∀ n, (P14995699484509544138.a n : ℤ) = A353478 (n + 1)

end A353478

/-! ## A353478.P4737223905447755978

`and(n, A064911(n+1))`
-/

namespace A353478.P4737223905447755978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A064911 (n + 1))

end

end A353478.P4737223905447755978

namespace A353478

/-- `and(n, A064911(n+1))` -/
def P4737223905447755978.Spec : Prop :=
  ∀ n, P4737223905447755978.a n = A353478 (n + 1)

end A353478

/-! ## A353478.P9981801547104452579

`Δ[A230980(floor(n/2))]`
-/

namespace A353478.P9981801547104452579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A353478.P9981801547104452579

namespace A353478

/-- `Δ[A230980(floor(n/2))]` -/
def P9981801547104452579.Spec : Prop :=
  ∀ n, P9981801547104452579.a n = A353478 (n + 1)

end A353478

/-! ## A353478.P961012870182640751

`char[record[A087349(n+1)]]`
-/

namespace A353478.P961012870182640751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087349 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353478.P961012870182640751

namespace A353478

/-- `char[record[A087349(n+1)]]` -/
def P961012870182640751.Spec : Prop :=
  ∀ n, (P961012870182640751.a n : ℤ) = A353478 (n + 1)

end A353478

/-! ## A353478.P6394291804738762006

`char[record[A107473(n+2)]]`
-/

namespace A353478.P6394291804738762006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107473 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353478.P6394291804738762006

namespace A353478

/-- `char[record[A107473(n+2)]]` -/
def P6394291804738762006.Spec : Prop :=
  ∀ n, (P6394291804738762006.a n : ℤ) = A353478 (n + 1)

end A353478

/-! ## A353478.P6995119636776321206

`char[record[A322982(n+2)]]`
-/

namespace A353478.P6995119636776321206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322982 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353478.P6995119636776321206

namespace A353478

/-- `char[record[A322982(n+2)]]` -/
def P6995119636776321206.Spec : Prop :=
  ∀ n, (P6995119636776321206.a n : ℤ) = A353478 (n + 1)

end A353478

/-! ## A353478.P9911246212773077734

`char[A100484(n+1)-1]`
-/

namespace A353478.P9911246212773077734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353478.P9911246212773077734

namespace A353478

/-- `char[A100484(n+1)-1]` -/
def P9911246212773077734.Spec : Prop :=
  ∀ n, (P9911246212773077734.a n : ℤ) = A353478 (n + 1)

end A353478

/-! ## A353478.P3676101865329902096

`char[A001747(n+2)-1]`
-/

namespace A353478.P3676101865329902096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353478.P3676101865329902096

namespace A353478

/-- `char[A001747(n+2)-1]` -/
def P3676101865329902096.Spec : Prop :=
  ∀ n, (P3676101865329902096.a n : ℤ) = A353478 (n + 1)

end A353478

/-! ## A353478.P13115586921257908809

`char[A072055(n+1)-2]`
-/

namespace A353478.P13115586921257908809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353478.P13115586921257908809

namespace A353478

/-- `char[A072055(n+1)-2]` -/
def P13115586921257908809.Spec : Prop :=
  ∀ n, (P13115586921257908809.a n : ℤ) = A353478 (n + 1)

end A353478

/-! ## A353478.P14949550419579316333

`A010051(A152271(n))`
-/

namespace A353478.P14949550419579316333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A152271 n).toNat

end

end A353478.P14949550419579316333

namespace A353478

/-- `A010051(A152271(n))` -/
def P14949550419579316333.Spec : Prop :=
  ∀ n, P14949550419579316333.a n = A353478 (n + 1)

end A353478

/-! ## A353478.P15522766135019505960

`A064911(A133265(n))`
-/

namespace A353478.P15522766135019505960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A133265 n).toNat

end

end A353478.P15522766135019505960

namespace A353478

/-- `A064911(A133265(n))` -/
def P15522766135019505960.Spec : Prop :=
  ∀ n, P15522766135019505960.a n = A353478 (n + 1)

end A353478

/-!
# A353479: a(n) = 1 if n is a semiprime of the form 4k+3, otherwise 0.

The programs for A353479, the canonical program `A353479.P12835136818281320905` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353479 has offset 1).

The definition of A353479 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A280710, A342025, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353479.P14964307425642177826

`A353480(n+1)-A353477(n+1)`
-/

namespace A353479.P14964307425642177826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353480 (n + 1) - A353477 (n + 1)

end

end A353479.P14964307425642177826

namespace A353479

/-- `A353480(n+1)-A353477(n+1)` -/
def P14964307425642177826.Spec : Prop :=
  ∀ n, P14964307425642177826.a n = A353479 (n + 1)

theorem P14964307425642177826.correct : P14964307425642177826.Spec := by
  intro n
  simp only [A353479, Nat.add_sub_cancel, A353479.P14964307425642177826.a, A353479.P12835136818281320905.a, A280710, A280710.P16719408310245931755.a, A342025, A342025.P9862321101140846268.a, A353477, A353477.P2258751349755491853.a, A353480, A353480.P8605486788337762980.a, A000035, A000035.P2023072528413494694.a, A008966, A008966.P18444031257857153223.f1, A008966.P18444031257857153223.a, A064911, A064911.P14478375241243671053.a, A079635, A079635.P16766627809967727170.a, A214264, A214264.P7340386951159269035.a, A010054, A010054.P18347828677204923252.a, A057427, A057427.P17645173493419391152.a, A065339, A065339.P2810771096728781745.a, A083025, A083025.P6816948614237307391.a, A174956, A174956.P4901462298165488404.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A005369, A005369.P10796159359873341658.a, A007814, A007814.P13537437864234730737.a, A028310, A028310.P18130301328277559831.a, A072000, A072000.P3706059858088101648.a, A097706, A097706.P6722181687817241685.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A353479

/-! ## A353479.P12835136818281320905

`A280710(n+1)*A342025(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A353479

/-- `A280710(n+1)*A342025(n+1)` -/
def P12835136818281320905.Spec : Prop :=
  ∀ n, P12835136818281320905.a n = A353479 (n + 1)

theorem P12835136818281320905.correct : P12835136818281320905.Spec := by
  intro n
  simp only [A353479, Nat.add_sub_cancel]

end A353479

/-! ## A353479.P16259845357441941920

`A353480(n+1)*A342025(n+1)`
-/

namespace A353479.P16259845357441941920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353480 (n + 1) * A342025 (n + 1)

end

end A353479.P16259845357441941920

namespace A353479

/-- `A353480(n+1)*A342025(n+1)` -/
def P16259845357441941920.Spec : Prop :=
  ∀ n, P16259845357441941920.a n = A353479 (n + 1)

end A353479

/-! ## A353479.P16934344981800880102

`char[A080774(n+1)-1]`
-/

namespace A353479.P16934344981800880102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080774 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353479.P16934344981800880102

namespace A353479

/-- `char[A080774(n+1)-1]` -/
def P16934344981800880102.Spec : Prop :=
  ∀ n, (P16934344981800880102.a n : ℤ) = A353479 (n + 1)

end A353479

/-! ## A353479.P6327648179442947691

`and(∑[n], A353480(n+1))`
-/

namespace A353479.P6327648179442947691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A353480 (n + 1))

end

end A353479.P6327648179442947691

namespace A353479

/-- `and(∑[n], A353480(n+1))` -/
def P6327648179442947691.Spec : Prop :=
  ∀ n, P6327648179442947691.a n = A353479 (n + 1)

end A353479

/-! ## A353479.P13266215172119856760

`and(∑[n], A353481(n+1))`
-/

namespace A353479.P13266215172119856760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A353481 (n + 1))

end

end A353479.P13266215172119856760

namespace A353479

/-- `and(∑[n], A353481(n+1))` -/
def P13266215172119856760.Spec : Prop :=
  ∀ n, P13266215172119856760.a n = A353479 (n + 1)

end A353479

/-! ## A353479.P9698093432262744635

`and(floor((n/2)²), A064911(n+1))`
-/

namespace A353479.P9698093432262744635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌊((n : ℚ) / 2) ^ 2⌋ (A064911 (n + 1))

end

end A353479.P9698093432262744635

namespace A353479

/-- `and(floor((n/2)²), A064911(n+1))` -/
def P9698093432262744635.Spec : Prop :=
  ∀ n, P9698093432262744635.a n = A353479 (n + 1)

end A353479

/-! ## A353479.P4278989616796418067

`A216284(or(4/gcd(4, n), ∑{e}[n+1, #]))`
-/

namespace A353479.P4278989616796418067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216284 (Int.lor (SequenceMachineLib.roundAway (4 / (Nat.gcd 4 n : ℚ))) ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)).toNat

end

end A353479.P4278989616796418067

namespace A353479

/-- `A216284(or(4/gcd(4, n), ∑{e}[n+1, #]))` -/
def P4278989616796418067.Spec : Prop :=
  ∀ n, P4278989616796418067.a n = A353479 (n + 1)

end A353479

/-! ## A353479.P4205525396575955782

`A021913(n)*A280710(n+1)`
-/

namespace A353479.P4205525396575955782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n * A280710 (n + 1)

end

end A353479.P4205525396575955782

namespace A353479

/-- `A021913(n)*A280710(n+1)` -/
def P4205525396575955782.Spec : Prop :=
  ∀ n, P4205525396575955782.a n = A353479 (n + 1)

end A353479

/-! ## A353479.P9649439698158364638

`A014707(n)*A353480(n+1)`
-/

namespace A353479.P9649439698158364638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 n * A353480 (n + 1)

end

end A353479.P9649439698158364638

namespace A353479

/-- `A014707(n)*A353480(n+1)` -/
def P9649439698158364638.Spec : Prop :=
  ∀ n, P9649439698158364638.a n = A353479 (n + 1)

end A353479

/-! ## A353479.P5444816479782090197

`A014707(n)*A353481(n+1)`
-/

namespace A353479.P5444816479782090197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 n * A353481 (n + 1)

end

end A353479.P5444816479782090197

namespace A353479

/-- `A014707(n)*A353481(n+1)` -/
def P5444816479782090197.Spec : Prop :=
  ∀ n, P5444816479782090197.a n = A353479 (n + 1)

end A353479

/-! ## A353479.P5397712703077494628

`A021913(n)*A353480(n+1)`
-/

namespace A353479.P5397712703077494628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n * A353480 (n + 1)

end

end A353479.P5397712703077494628

namespace A353479

/-- `A021913(n)*A353480(n+1)` -/
def P5397712703077494628.Spec : Prop :=
  ∀ n, P5397712703077494628.a n = A353479 (n + 1)

end A353479

/-! ## A353479.P528060397212406947

`A021913(n)*A353481(n+1)`
-/

namespace A353479.P528060397212406947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n * A353481 (n + 1)

end

end A353479.P528060397212406947

namespace A353479

/-- `A021913(n)*A353481(n+1)` -/
def P528060397212406947.Spec : Prop :=
  ∀ n, P528060397212406947.a n = A353479 (n + 1)

end A353479

/-! ## A353479.P12030521909697347956

`A059125(n)*A353480(n+1)`
-/

namespace A353479.P12030521909697347956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059125 n * A353480 (n + 1)

end

end A353479.P12030521909697347956

namespace A353479

/-- `A059125(n)*A353480(n+1)` -/
def P12030521909697347956.Spec : Prop :=
  ∀ n, P12030521909697347956.a n = A353479 (n + 1)

end A353479

/-! ## A353479.P6392120884844991034

`A059125(n)*A353481(n+1)`
-/

namespace A353479.P6392120884844991034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059125 n * A353481 (n + 1)

end

end A353479.P6392120884844991034

namespace A353479

/-- `A059125(n)*A353481(n+1)` -/
def P6392120884844991034.Spec : Prop :=
  ∀ n, P6392120884844991034.a n = A353479 (n + 1)

end A353479

/-! ## A353479.P13264632779160502265

`A140081(n)*A353480(n+1)`
-/

namespace A353479.P13264632779160502265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140081 n * A353480 (n + 1)

end

end A353479.P13264632779160502265

namespace A353479

/-- `A140081(n)*A353480(n+1)` -/
def P13264632779160502265.Spec : Prop :=
  ∀ n, P13264632779160502265.a n = A353479 (n + 1)

end A353479

/-! ## A353479.P17651515612782924360

`A140081(n)*A353481(n+1)`
-/

namespace A353479.P17651515612782924360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140081 n * A353481 (n + 1)

end

end A353479.P17651515612782924360

namespace A353479

/-- `A140081(n)*A353481(n+1)` -/
def P17651515612782924360.Spec : Prop :=
  ∀ n, P17651515612782924360.a n = A353479 (n + 1)

end A353479

/-! ## A353479.P15498773074826626750

`A166486(n)*A353480(n+1)`
-/

namespace A353479.P15498773074826626750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n * A353480 (n + 1)

end

end A353479.P15498773074826626750

namespace A353479

/-- `A166486(n)*A353480(n+1)` -/
def P15498773074826626750.Spec : Prop :=
  ∀ n, P15498773074826626750.a n = A353479 (n + 1)

end A353479

/-! ## A353479.P4212261476866002321

`A166486(n)*A353481(n+1)`
-/

namespace A353479.P4212261476866002321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n * A353481 (n + 1)

end

end A353479.P4212261476866002321

namespace A353479

/-- `A166486(n)*A353481(n+1)` -/
def P4212261476866002321.Spec : Prop :=
  ∀ n, P4212261476866002321.a n = A353479 (n + 1)

end A353479

/-! ## A353479.P6603870391026021513

`∑{d}[n+1, A079260(#)*A079261((n+1)/#)]`
-/

namespace A353479.P6603870391026021513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A079260 d * A079261 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A353479.P6603870391026021513

namespace A353479

/-- `∑{d}[n+1, A079260(#)*A079261((n+1)/#)]` -/
def P6603870391026021513.Spec : Prop :=
  ∀ n, P6603870391026021513.a n = A353479 (n + 1)

end A353479

/-!
# A353480: a(n) = 1 if n is an odd semiprime, otherwise 0.

The programs for A353480, the canonical program `A353480.P8605486788337762980` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353480 has offset 1).

The definition of A353480 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064911, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353480.P10939079667572514311

`A353477(n+1)+A353479(n+1)`
-/

namespace A353480.P10939079667572514311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353477 (n + 1) + A353479 (n + 1)

end

end A353480.P10939079667572514311

namespace A353480

/-- `A353477(n+1)+A353479(n+1)` -/
def P10939079667572514311.Spec : Prop :=
  ∀ n, P10939079667572514311.a n = A353480 (n + 1)

theorem P10939079667572514311.correct : P10939079667572514311.Spec := by
  intro n
  simp only [A353480, Nat.add_sub_cancel, A353480.P10939079667572514311.a, A353480.P8605486788337762980.a, A000035, A000035.P2023072528413494694.a, A064911, A064911.P14478375241243671053.a, A353477, A353477.P2258751349755491853.a, A353479, A353479.P12835136818281320905.a, A057427, A057427.P17645173493419391152.a, A174956, A174956.P4901462298165488404.a, A280710, A280710.P16719408310245931755.a, A342025, A342025.P9862321101140846268.a, A008966, A008966.P18444031257857153223.f1, A008966.P18444031257857153223.a, A028310, A028310.P18130301328277559831.a, A072000, A072000.P3706059858088101648.a, A079635, A079635.P16766627809967727170.a, A214264, A214264.P7340386951159269035.a, A010054, A010054.P18347828677204923252.a, A056811, A056811.P3378557342044572151.a, A065339, A065339.P2810771096728781745.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, A083025, A083025.P6816948614237307391.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A353480

/-! ## A353480.P3910877293431682936

`A064911(n+1)-A353478(n+1)`
-/

namespace A353480.P3910877293431682936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1) - A353478 (n + 1)

end

end A353480.P3910877293431682936

namespace A353480

/-- `A064911(n+1)-A353478(n+1)` -/
def P3910877293431682936.Spec : Prop :=
  ∀ n, P3910877293431682936.a n = A353480 (n + 1)

theorem P3910877293431682936.correct : P3910877293431682936.Spec := by
  intro n
  simp only [A353480, Nat.add_sub_cancel, A353480.P3910877293431682936.a, A353480.P8605486788337762980.a, A000035, A000035.P2023072528413494694.a, A064911, A064911.P14478375241243671053.a, A353478, A353478.P1008730481002663857.a, A057427, A057427.P17645173493419391152.a, A174956, A174956.P4901462298165488404.a, A028310, A028310.P18130301328277559831.a, A072000, A072000.P3706059858088101648.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A353480

/-! ## A353480.P8605486788337762980

`A000035(n+1)*A064911(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A353480

/-- `A000035(n+1)*A064911(n+1)` -/
def P8605486788337762980.Spec : Prop :=
  ∀ n, P8605486788337762980.a n = A353480 (n + 1)

theorem P8605486788337762980.correct : P8605486788337762980.Spec := by
  intro n
  simp only [A353480, Nat.add_sub_cancel]

end A353480

/-! ## A353480.P6701291783448021490

`A369058(3*(n+1))`
-/

namespace A353480.P6701291783448021490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369058 (3 * (n + 1))

end

end A353480.P6701291783448021490

namespace A353480

/-- `A369058(3*(n+1))` -/
def P6701291783448021490.Spec : Prop :=
  ∀ n, P6701291783448021490.a n = A353480 (n + 1)

end A353480

/-! ## A353480.P6090216762917932849

`char[A176406(n+1)+1]`
-/

namespace A353480.P6090216762917932849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176406 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353480.P6090216762917932849

namespace A353480

/-- `char[A176406(n+1)+1]` -/
def P6090216762917932849.Spec : Prop :=
  ∀ n, (P6090216762917932849.a n : ℤ) = A353480 (n + 1)

end A353480

/-! ## A353480.P16458734675731132689

`char[A046315(n+1)-1]`
-/

namespace A353480.P16458734675731132689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353480.P16458734675731132689

namespace A353480

/-- `char[A046315(n+1)-1]` -/
def P16458734675731132689.Spec : Prop :=
  ∀ n, (P16458734675731132689.a n : ℤ) = A353480 (n + 1)

end A353480

/-! ## A353480.P12571178010668261984

`val(A279051(n+1), n+2)`
-/

namespace A353480.P12571178010668261984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A279051 (n + 1)).toNat (n + 2)

end

end A353480.P12571178010668261984

namespace A353480

/-- `val(A279051(n+1), n+2)` -/
def P12571178010668261984.Spec : Prop :=
  ∀ n, (P12571178010668261984.a n : ℤ) = A353480 (n + 1)

end A353480

/-! ## A353480.P5450116346825084286

`val(A378548(n+1), n+2)`
-/

namespace A353480.P5450116346825084286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A378548 (n + 1)).toNat (n + 2)

end

end A353480.P5450116346825084286

namespace A353480

/-- `val(A378548(n+1), n+2)` -/
def P5450116346825084286.Spec : Prop :=
  ∀ n, (P5450116346825084286.a n : ℤ) = A353480 (n + 1)

end A353480

/-! ## A353480.P11146649340037098496

`and(n+1, A064911(n+1))`
-/

namespace A353480.P11146649340037098496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A064911 (n + 1))

end

end A353480.P11146649340037098496

namespace A353480

/-- `and(n+1, A064911(n+1))` -/
def P11146649340037098496.Spec : Prop :=
  ∀ n, P11146649340037098496.a n = A353480 (n + 1)

end A353480

/-! ## A353480.P2309830330572680126

`floor(acot((2-A317531(n+1))²))`
-/

namespace A353480.P2309830330572680126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot ((2 - A317531 (n + 1)) ^ 2 : ℝ)⌋

end

end A353480.P2309830330572680126

namespace A353480

/-- `floor(acot((2-A317531(n+1))²))` -/
def P2309830330572680126.Spec : Prop :=
  ∀ n, P2309830330572680126.a n = A353480 (n + 1)

end A353480

/-! ## A353480.P1937903310073407637

`A064911(A141310(n))`
-/

namespace A353480.P1937903310073407637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A141310 n).toNat

end

end A353480.P1937903310073407637

namespace A353480

/-- `A064911(A141310(n))` -/
def P1937903310073407637.Spec : Prop :=
  ∀ n, P1937903310073407637.a n = A353480 (n + 1)

end A353480

/-! ## A353480.P8657535792440945811

`A064911(A086112(n+1))`
-/

namespace A353480.P8657535792440945811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A086112 (n + 1)).toNat

end

end A353480.P8657535792440945811

namespace A353480

/-- `A064911(A086112(n+1))` -/
def P8657535792440945811.Spec : Prop :=
  ∀ n, P8657535792440945811.a n = A353480 (n + 1)

end A353480

/-! ## A353480.P8752944599455221786

`A064911(A093178(n+1))`
-/

namespace A353480.P8752944599455221786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A093178 (n + 1)).toNat

end

end A353480.P8752944599455221786

namespace A353480

/-- `A064911(A093178(n+1))` -/
def P8752944599455221786.Spec : Prop :=
  ∀ n, P8752944599455221786.a n = A353480 (n + 1)

end A353480

/-! ## A353480.P11382873314553526724

`A064911(A094020(n+1))`
-/

namespace A353480.P11382873314553526724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A094020 (n + 1)).toNat

end

end A353480.P11382873314553526724

namespace A353480

/-- `A064911(A094020(n+1))` -/
def P11382873314553526724.Spec : Prop :=
  ∀ n, P11382873314553526724.a n = A353480 (n + 1)

end A353480

/-! ## A353480.P14602249838278362859

`A064911(A195161(n+1))`
-/

namespace A353480.P14602249838278362859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A195161 (n + 1)).toNat

end

end A353480.P14602249838278362859

namespace A353480

/-- `A064911(A195161(n+1))` -/
def P14602249838278362859.Spec : Prop :=
  ∀ n, P14602249838278362859.a n = A353480 (n + 1)

end A353480

/-! ## A353480.P3327749555720952866

`A356170(A302338(n+1)+n)`
-/

namespace A353480.P3327749555720952866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356170 (A302338 (n + 1) + (n : ℤ)).toNat

end

end A353480.P3327749555720952866

namespace A353480

/-- `A356170(A302338(n+1)+n)` -/
def P3327749555720952866.Spec : Prop :=
  ∀ n, P3327749555720952866.a n = A353480 (n + 1)

end A353480

/-! ## A353480.P3277496516489338032

`A059841(n)*A064911(n+1)`
-/

namespace A353480.P3277496516489338032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A064911 (n + 1)

end

end A353480.P3277496516489338032

namespace A353480

/-- `A059841(n)*A064911(n+1)` -/
def P3277496516489338032.Spec : Prop :=
  ∀ n, P3277496516489338032.a n = A353480 (n + 1)

end A353480

/-! ## A353480.P1149911840413813535

`A064911(n+1)*A266591(n)`
-/

namespace A353480.P1149911840413813535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1) * A266591 n

end

end A353480.P1149911840413813535

namespace A353480

/-- `A064911(n+1)*A266591(n)` -/
def P1149911840413813535.Spec : Prop :=
  ∀ n, P1149911840413813535.a n = A353480 (n + 1)

end A353480

/-! ## A353480.P18135048171432972299

`A064911(n+1)*A267043(n)`
-/

namespace A353480.P18135048171432972299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1) * A267043 n

end

end A353480.P18135048171432972299

namespace A353480

/-- `A064911(n+1)*A267043(n)` -/
def P18135048171432972299.Spec : Prop :=
  ∀ n, P18135048171432972299.a n = A353480 (n + 1)

end A353480

/-! ## A353480.P13756563954017306245

`and(A064911(n+1), A215548(n))`
-/

namespace A353480.P13756563954017306245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A064911 (n + 1)) (A215548 n)

end

end A353480.P13756563954017306245

namespace A353480

/-- `and(A064911(n+1), A215548(n))` -/
def P13756563954017306245.Spec : Prop :=
  ∀ n, P13756563954017306245.a n = A353480 (n + 1)

end A353480

/-!
# A353481: a(n) = 1 if n is an odd squarefree semiprime, otherwise 0.

The programs for A353481, the canonical program `A353481.P14830098372141059552` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353481 has offset 1).

The definition of A353481 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353480, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353481.P14830098372141059552

`A008966(n+1)*A353480(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A353481

/-- `A008966(n+1)*A353480(n+1)` -/
def P14830098372141059552.Spec : Prop :=
  ∀ n, P14830098372141059552.a n = A353481 (n + 1)

theorem P14830098372141059552.correct : P14830098372141059552.Spec := by
  intro n
  simp only [A353481, Nat.add_sub_cancel]

end A353481

/-! ## A353481.P1807656418209725882

`A064911(n+1)*A323239(n+1)`
-/

namespace A353481.P1807656418209725882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1) * A323239 (n + 1)

end

end A353481.P1807656418209725882

namespace A353481

/-- `A064911(n+1)*A323239(n+1)` -/
def P1807656418209725882.Spec : Prop :=
  ∀ n, P1807656418209725882.a n = A353481 (n + 1)

end A353481

/-! ## A353481.P12062108123616741253

`A000035(n+1)*A280710(n+1)`
-/

namespace A353481.P12062108123616741253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A280710 (n + 1)

end

end A353481.P12062108123616741253

namespace A353481

/-- `A000035(n+1)*A280710(n+1)` -/
def P12062108123616741253.Spec : Prop :=
  ∀ n, P12062108123616741253.a n = A353481 (n + 1)

theorem P12062108123616741253.correct : P12062108123616741253.Spec := by
  intro n
  simp only [A353481, Nat.add_sub_cancel, A353481.P12062108123616741253.a, A353481.P14830098372141059552.a, A000035, A000035.P2023072528413494694.a, A008966, A008966.P18444031257857153223.f1, A008966.P18444031257857153223.a, A280710, A280710.P16719408310245931755.a, A353480, A353480.P8605486788337762980.a, A064911, A064911.P14478375241243671053.a, A057427, A057427.P17645173493419391152.a, A174956, A174956.P4901462298165488404.a, A028310, A028310.P18130301328277559831.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A353481

/-! ## A353481.P8209753367426684076

`A354926(2*(n+1))`
-/

namespace A353481.P8209753367426684076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354926 (2 * (n + 1))

end

end A353481.P8209753367426684076

namespace A353481

/-- `A354926(2*(n+1))` -/
def P8209753367426684076.Spec : Prop :=
  ∀ n, P8209753367426684076.a n = A353481 (n + 1)

end A353481

/-! ## A353481.P6664833778967958605

`char[A046388(n+1)-1]`
-/

namespace A353481.P6664833778967958605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046388 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353481.P6664833778967958605

namespace A353481

/-- `char[A046388(n+1)-1]` -/
def P6664833778967958605.Spec : Prop :=
  ∀ n, (P6664833778967958605.a n : ℤ) = A353481 (n + 1)

end A353481

/-! ## A353481.P16443978685181822105

`char[eq[6, A335062(n+1)]]`
-/

namespace A353481.P16443978685181822105
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335062 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353481.P16443978685181822105

namespace A353481

/-- `char[eq[6, A335062(n+1)]]` -/
def P16443978685181822105.Spec : Prop :=
  ∀ n, (P16443978685181822105.a n : ℤ) = A353481 (n + 1)

end A353481

/-! ## A353481.P2386632705841217175

`char[eq[16, A323761(n+1)]]`
-/

namespace A353481.P2386632705841217175
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323761 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353481.P2386632705841217175

namespace A353481

/-- `char[eq[16, A323761(n+1)]]` -/
def P2386632705841217175.Spec : Prop :=
  ∀ n, (P2386632705841217175.a n : ℤ) = A353481 (n + 1)

end A353481

/-! ## A353481.P14314671661277298984

`and(n+1, A280710(n+1))`
-/

namespace A353481.P14314671661277298984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A280710 (n + 1))

end

end A353481.P14314671661277298984

namespace A353481

/-- `and(n+1, A280710(n+1))` -/
def P14314671661277298984.Spec : Prop :=
  ∀ n, P14314671661277298984.a n = A353481 (n + 1)

end A353481

/-! ## A353481.P15101387137349773444

`and(n+1, A340370(n+1))`
-/

namespace A353481.P15101387137349773444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A340370 (n + 1))

end

end A353481.P15101387137349773444

namespace A353481

/-- `and(n+1, A340370(n+1))` -/
def P15101387137349773444.Spec : Prop :=
  ∀ n, P15101387137349773444.a n = A353481 (n + 1)

end A353481

/-! ## A353481.P9397719054145271586

`A280710(A022998(n+1))`
-/

namespace A353481.P9397719054145271586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280710 (A022998 (n + 1)).toNat

end

end A353481.P9397719054145271586

namespace A353481

/-- `A280710(A022998(n+1))` -/
def P9397719054145271586.Spec : Prop :=
  ∀ n, P9397719054145271586.a n = A353481 (n + 1)

end A353481

/-! ## A353481.P6946093825950432036

`A318655(or(4, A318658(n+1)))`
-/

namespace A353481.P6946093825950432036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318655 (Int.lor 4 (A318658 (n + 1))).toNat

end

end A353481.P6946093825950432036

namespace A353481

/-- `A318655(or(4, A318658(n+1)))` -/
def P6946093825950432036.Spec : Prop :=
  ∀ n, P6946093825950432036.a n = A353481 (n + 1)

end A353481

/-! ## A353481.P7696142011792449037

`A059841(n)*A280710(n+1)`
-/

namespace A353481.P7696142011792449037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A280710 (n + 1)

end

end A353481.P7696142011792449037

namespace A353481

/-- `A059841(n)*A280710(n+1)` -/
def P7696142011792449037.Spec : Prop :=
  ∀ n, P7696142011792449037.a n = A353481 (n + 1)

end A353481

/-! ## A353481.P11145850412991410688

`A353480(A302048(n+1)+n+1)`
-/

namespace A353481.P11145850412991410688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353480 (A302048 (n + 1) + (n + 1 : ℤ)).toNat

end

end A353481.P11145850412991410688

namespace A353481

/-- `A353480(A302048(n+1)+n+1)` -/
def P11145850412991410688.Spec : Prop :=
  ∀ n, P11145850412991410688.a n = A353481 (n + 1)

end A353481

/-! ## A353481.P260145443635922700

`A353480(A302777(n+1)+n+1)`
-/

namespace A353481.P260145443635922700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353480 (A302777 (n + 1) + (n + 1 : ℤ)).toNat

end

end A353481.P260145443635922700

namespace A353481

/-- `A353480(A302777(n+1)+n+1)` -/
def P260145443635922700.Spec : Prop :=
  ∀ n, P260145443635922700.a n = A353481 (n + 1)

end A353481

/-! ## A353481.P14703421760916635608

`A353482(n+1)+A353479(n+1)`
-/

namespace A353481.P14703421760916635608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353482 (n + 1) + A353479 (n + 1)

end

end A353481.P14703421760916635608

namespace A353481

/-- `A353482(n+1)+A353479(n+1)` -/
def P14703421760916635608.Spec : Prop :=
  ∀ n, P14703421760916635608.a n = A353481 (n + 1)

end A353481

/-! ## A353481.P6609047656786394882

`A064911(n+1)*A087003(n+1)`
-/

namespace A353481.P6609047656786394882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1) * A087003 (n + 1)

end

end A353481.P6609047656786394882

namespace A353481

/-- `A064911(n+1)*A087003(n+1)` -/
def P6609047656786394882.Spec : Prop :=
  ∀ n, P6609047656786394882.a n = A353481 (n + 1)

end A353481

/-! ## A353481.P16114135690750023209

`A000035((n+1)*A340370(n+1))`
-/

namespace A353481.P16114135690750023209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((n + 1 : ℤ) * A340370 (n + 1)).toNat

end

end A353481.P16114135690750023209

namespace A353481

/-- `A000035((n+1)*A340370(n+1))` -/
def P16114135690750023209.Spec : Prop :=
  ∀ n, P16114135690750023209.a n = A353481 (n + 1)

end A353481

/-! ## A353481.P10671639368773115993

`A008683(n+1)*A353480(n+1)`
-/

namespace A353481.P10671639368773115993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A353480 (n + 1)

end

end A353481.P10671639368773115993

namespace A353481

/-- `A008683(n+1)*A353480(n+1)` -/
def P10671639368773115993.Spec : Prop :=
  ∀ n, P10671639368773115993.a n = A353481 (n + 1)

end A353481

/-! ## A353481.P8135042512087302019

`A008683(n+1)*A353676(n+1)`
-/

namespace A353481.P8135042512087302019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A353676 (n + 1)

end

end A353481.P8135042512087302019

namespace A353481

/-- `A008683(n+1)*A353676(n+1)` -/
def P8135042512087302019.Spec : Prop :=
  ∀ n, P8135042512087302019.a n = A353481 (n + 1)

end A353481

/-! ## A353481.P7355661034123937311

`char[eq[3, A308077(n+1)]]`
-/

namespace A353481.P7355661034123937311
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308077 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353481.P7355661034123937311

namespace A353481

/-- `char[eq[3, A308077(n+1)]]` -/
def P7355661034123937311.Spec : Prop :=
  ∀ n, (P7355661034123937311.a n : ℤ) = A353481 (n + 1)

end A353481

/-!
# A353482: a(n) = 1 if n is a squarefree semiprime of the form 4k+1, otherwise 0.

The programs for A353482, the canonical program `A353482.P1861555732296100642` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353482 has offset 1).

The definition of A353482 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353482.P12591217084017256705

`char[A190299(n+1)-1]`
-/

namespace A353482.P12591217084017256705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190299 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353482.P12591217084017256705

namespace A353482

/-- `char[A190299(n+1)-1]` -/
def P12591217084017256705.Spec : Prop :=
  ∀ n, (P12591217084017256705.a n : ℤ) = A353482 (n + 1)

end A353482

/-! ## A353482.P1861555732296100642

`and(∑[∑[n+1]], A340370(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A353482

/-- `and(∑[∑[n+1]], A340370(n+1))` -/
def P1861555732296100642.Spec : Prop :=
  ∀ n, P1861555732296100642.a n = A353482 (n + 1)

theorem P1861555732296100642.correct : P1861555732296100642.Spec := by
  intro n
  simp only [A353482, Nat.add_sub_cancel]

end A353482

/-! ## A353482.P4305055234466949798

`and(xor(n, floor(n/2))+1, A353481(n+1))`
-/

namespace A353482.P4305055234466949798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ + 1) (A353481 (n + 1))

end

end A353482.P4305055234466949798

namespace A353482

/-- `and(xor(n, floor(n/2))+1, A353481(n+1))` -/
def P4305055234466949798.Spec : Prop :=
  ∀ n, P4305055234466949798.a n = A353482 (n + 1)

end A353482

/-! ## A353482.P2033336830203704339

`A014577(n)*A353481(n+1)`
-/

namespace A353482.P2033336830203704339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 n * A353481 (n + 1)

end

end A353482.P2033336830203704339

namespace A353482

/-- `A014577(n)*A353481(n+1)` -/
def P2033336830203704339.Spec : Prop :=
  ∀ n, P2033336830203704339.a n = A353482 (n + 1)

end A353482

/-! ## A353482.P12777349185291106544

`A353481(n+1)*A353494(n)`
-/

namespace A353482.P12777349185291106544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353481 (n + 1) * A353494 n

end

end A353482.P12777349185291106544

namespace A353482

/-- `A353481(n+1)*A353494(n)` -/
def P12777349185291106544.Spec : Prop :=
  ∀ n, P12777349185291106544.a n = A353482 (n + 1)

end A353482

/-! ## A353482.P8182191503297585589

`and(A000125(n), A353481(n+1))`
-/

namespace A353482.P8182191503297585589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000125 n) (A353481 (n + 1))

end

end A353482.P8182191503297585589

namespace A353482

/-- `and(A000125(n), A353481(n+1))` -/
def P8182191503297585589.Spec : Prop :=
  ∀ n, P8182191503297585589.a n = A353482 (n + 1)

end A353482

/-! ## A353482.P10740948599707284132

`Δ[A353495(n)]*A353481(n+1)`
-/

namespace A353482.P10740948599707284132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A353481 (n + 1)

end

end A353482.P10740948599707284132

namespace A353482

/-- `Δ[A353495(n)]*A353481(n+1)` -/
def P10740948599707284132.Spec : Prop :=
  ∀ n, P10740948599707284132.a n = A353482 (n + 1)

end A353482

/-! ## A353482.P5243119202363371703

`A353477(A302048(n+1)+n+1)`
-/

namespace A353482.P5243119202363371703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353477 (A302048 (n + 1) + (n + 1 : ℤ)).toNat

end

end A353482.P5243119202363371703

namespace A353482

/-- `A353477(A302048(n+1)+n+1)` -/
def P5243119202363371703.Spec : Prop :=
  ∀ n, P5243119202363371703.a n = A353482 (n + 1)

end A353482

/-! ## A353482.P18035370351836832412

`A353481(n+1)-A353479(n+1)`
-/

namespace A353482.P18035370351836832412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353481 (n + 1) - A353479 (n + 1)

end

end A353482.P18035370351836832412

namespace A353482

/-- `A353481(n+1)-A353479(n+1)` -/
def P18035370351836832412.Spec : Prop :=
  ∀ n, P18035370351836832412.a n = A353482 (n + 1)

end A353482

/-! ## A353482.P15189983184569141056

`A008683(n+1)*A353477(n+1)`
-/

namespace A353482.P15189983184569141056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A353477 (n + 1)

end

end A353482.P15189983184569141056

namespace A353482

/-- `A008683(n+1)*A353477(n+1)` -/
def P15189983184569141056.Spec : Prop :=
  ∀ n, P15189983184569141056.a n = A353482 (n + 1)

end A353482

/-! ## A353482.P4508876143216076978

`A280710(n+1)*A353477(n+1)`
-/

namespace A353482.P4508876143216076978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280710 (n + 1) * A353477 (n + 1)

end

end A353482.P4508876143216076978

namespace A353482

/-- `A280710(n+1)*A353477(n+1)` -/
def P4508876143216076978.Spec : Prop :=
  ∀ n, P4508876143216076978.a n = A353482 (n + 1)

end A353482

/-! ## A353482.P7597634231298347600

`A353471(n+1)*A353477(n+1)`
-/

namespace A353482.P7597634231298347600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353471 (n + 1) * A353477 (n + 1)

end

end A353482.P7597634231298347600

namespace A353482

/-- `A353471(n+1)*A353477(n+1)` -/
def P7597634231298347600.Spec : Prop :=
  ∀ n, P7597634231298347600.a n = A353482 (n + 1)

end A353482

/-! ## A353482.P17839547481911184141

`A353477(n+1)*A353481(n+1)`
-/

namespace A353482.P17839547481911184141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353477 (n + 1) * A353481 (n + 1)

end

end A353482.P17839547481911184141

namespace A353482

/-- `A353477(n+1)*A353481(n+1)` -/
def P17839547481911184141.Spec : Prop :=
  ∀ n, P17839547481911184141.a n = A353482 (n + 1)

end A353482

/-! ## A353482.P15121711896908109821

`A353477(n+1)*A353519(n+1)`
-/

namespace A353482.P15121711896908109821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353477 (n + 1) * A353519 (n + 1)

end

end A353482.P15121711896908109821

namespace A353482

/-- `A353477(n+1)*A353519(n+1)` -/
def P15121711896908109821.Spec : Prop :=
  ∀ n, P15121711896908109821.a n = A353482 (n + 1)

end A353482

/-! ## A353482.P17866281101388900235

`and(A001221(2*(n+1)), A353477(n+1))`
-/

namespace A353482.P17866281101388900235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001221 (2 * (n + 1))) (A353477 (n + 1))

end

end A353482.P17866281101388900235

namespace A353482

/-- `and(A001221(2*(n+1)), A353477(n+1))` -/
def P17866281101388900235.Spec : Prop :=
  ∀ n, P17866281101388900235.a n = A353482 (n + 1)

end A353482

/-! ## A353482.P11340115548407705775

`val(or(A046644(n+1)+4, A008592(n)), 8)`
-/

namespace A353482.P11340115548407705775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.lor (A046644 (n + 1) + 4) (A008592 n)).toNat 8

end

end A353482.P11340115548407705775

namespace A353482

/-- `val(or(A046644(n+1)+4, A008592(n)), 8)` -/
def P11340115548407705775.Spec : Prop :=
  ∀ n, (P11340115548407705775.a n : ℤ) = A353482 (n + 1)

end A353482

/-! ## A353482.P9655296264752737830

`A000045(A353509(n+1))*A353477(n+1)`
-/

namespace A353482.P9655296264752737830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A353509 (n + 1)).toNat * A353477 (n + 1)

end

end A353482.P9655296264752737830

namespace A353482

/-- `A000045(A353509(n+1))*A353477(n+1)` -/
def P9655296264752737830.Spec : Prop :=
  ∀ n, P9655296264752737830.a n = A353482 (n + 1)

end A353482

/-!
# A353483: a(n) = 1 if n is a squarefree semiprime of the form (4t+3)*(4u+3), otherwise 0.

The programs for A353483, the canonical program `A353483.P6769065041078207878` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353483 has offset 1).

The definition of A353483 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353482, A353492, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353483.P6769065041078207878

`A353482(n+1)*A353492(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A353483

/-- `A353482(n+1)*A353492(n+1)` -/
def P6769065041078207878.Spec : Prop :=
  ∀ n, P6769065041078207878.a n = A353483 (n + 1)

theorem P6769065041078207878.correct : P6769065041078207878.Spec := by
  intro n
  simp only [A353483, Nat.add_sub_cancel]

end A353483

/-! ## A353483.P2718823604033060891

`char[A016105(n+1)-1]`
-/

namespace A353483.P2718823604033060891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016105 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353483.P2718823604033060891

namespace A353483

/-- `char[A016105(n+1)-1]` -/
def P2718823604033060891.Spec : Prop :=
  ∀ n, (P2718823604033060891.a n : ℤ) = A353483 (n + 1)

end A353483

/-! ## A353483.P15375692323149918224

`A353482(A353491(n+1)+n+1)`
-/

namespace A353483.P15375692323149918224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353482 (A353491 (n + 1) + (n + 1 : ℤ)).toNat

end

end A353483.P15375692323149918224

namespace A353483

/-- `A353482(A353491(n+1)+n+1)` -/
def P15375692323149918224.Spec : Prop :=
  ∀ n, P15375692323149918224.a n = A353483 (n + 1)

end A353483

/-! ## A353483.P5272305914442010538

`A064911(n+1)*A353809(n+1)`
-/

namespace A353483.P5272305914442010538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1) * A353809 (n + 1)

end

end A353483.P5272305914442010538

namespace A353483

/-- `A064911(n+1)*A353809(n+1)` -/
def P5272305914442010538.Spec : Prop :=
  ∀ n, P5272305914442010538.a n = A353483 (n + 1)

end A353483

/-! ## A353483.P1941904408555061412

`A353481(n+1)*A353809(n+1)`
-/

namespace A353483.P1941904408555061412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353481 (n + 1) * A353809 (n + 1)

end

end A353483.P1941904408555061412

namespace A353483

/-- `A353481(n+1)*A353809(n+1)` -/
def P1941904408555061412.Spec : Prop :=
  ∀ n, P1941904408555061412.a n = A353483 (n + 1)

end A353483

/-! ## A353483.P9373130340290570148

`and(A095972(n+1), A353482(n+1))`
-/

namespace A353483.P9373130340290570148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A095972 (n + 1)) (A353482 (n + 1))

end

end A353483.P9373130340290570148

namespace A353483

/-- `and(A095972(n+1), A353482(n+1))` -/
def P9373130340290570148.Spec : Prop :=
  ∀ n, P9373130340290570148.a n = A353483 (n + 1)

end A353483

/-! ## A353483.P1728354804595363820

`C(2, A078458(n+1))%A001221(n+1)!`
-/

namespace A353483.P1728354804595363820
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A078458 (n + 1)).toNat % Nat.factorial (A001221 (n + 1)).toNat

end

end A353483.P1728354804595363820

namespace A353483

/-- `C(2, A078458(n+1))%A001221(n+1)!` -/
def P1728354804595363820.Spec : Prop :=
  ∀ n, (P1728354804595363820.a n : ℤ) = A353483 (n + 1)

end A353483

/-! ## A353483.P4610527416220452085

`char[A029578(A016105(n+1))]`
-/

namespace A353483.P4610527416220452085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A016105 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353483.P4610527416220452085

namespace A353483

/-- `char[A029578(A016105(n+1))]` -/
def P4610527416220452085.Spec : Prop :=
  ∀ n, (P4610527416220452085.a n : ℤ) = A353483 (n + 1)

end A353483

/-! ## A353483.P18033739792381871164

`val(A020639(A238531(n)), A229296(n+1))`
-/

namespace A353483.P18033739792381871164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A020639 (A238531 n).toNat).toNat (A229296 (n + 1)).toNat

end

end A353483.P18033739792381871164

namespace A353483

/-- `val(A020639(A238531(n)), A229296(n+1))` -/
def P18033739792381871164.Spec : Prop :=
  ∀ n, (P18033739792381871164.a n : ℤ) = A353483 (n + 1)

end A353483

/-! ## A353483.P9309479434782323899

`A209915(gcd(n², ∑{d}[n+1, #]))`
-/

namespace A353483.P9309479434782323899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209915 (Nat.gcd (n ^ 2) (∑ d ∈ Nat.divisors (f1 n), d))

end

end A353483.P9309479434782323899

namespace A353483

/-- `A209915(gcd(n², ∑{d}[n+1, #]))` -/
def P9309479434782323899.Spec : Prop :=
  ∀ n, P9309479434782323899.a n = A353483 (n + 1)

end A353483

/-! ## A353483.P1462528041970597715

`and(A000120(53^val(n+1, 5)), A353482(n+1))`
-/

namespace A353483.P1462528041970597715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000120 (53 ^ SequenceMachineLib.valuation (n + 1) 5)) (A353482 (n + 1))

end

end A353483.P1462528041970597715

namespace A353483

/-- `and(A000120(53^val(n+1, 5)), A353482(n+1))` -/
def P1462528041970597715.Spec : Prop :=
  ∀ n, P1462528041970597715.a n = A353483 (n + 1)

end A353483

/-! ## A353483.P14898118225870524964

`and(A086342(53^val(n+1, 5)), A353482(n+1))`
-/

namespace A353483.P14898118225870524964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086342 (53 ^ SequenceMachineLib.valuation (n + 1) 5)) (A353482 (n + 1))

end

end A353483.P14898118225870524964

namespace A353483

/-- `and(A086342(53^val(n+1, 5)), A353482(n+1))` -/
def P14898118225870524964.Spec : Prop :=
  ∀ n, P14898118225870524964.a n = A353483 (n + 1)

end A353483

/-! ## A353483.P16793731183369500392

`∑{d}[n+1, A174707(#)*A353809((n+1)/#)]`
-/

namespace A353483.P16793731183369500392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A174707 d * A353809 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A353483.P16793731183369500392

namespace A353483

/-- `∑{d}[n+1, A174707(#)*A353809((n+1)/#)]` -/
def P16793731183369500392.Spec : Prop :=
  ∀ n, P16793731183369500392.a n = A353483 (n + 1)

end A353483

/-!
# A353484: a(1) = 0; and for n > 1, a(n) = A165560(n) + a(A064989(n)), where A165560 is the parity of arithmetic derivative, and A064989 shifts the prime factorization of its argument one step toward lower primes.

The programs for A353484, the canonical program `A353484.P4943837451926963282` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353484 has offset 1).

The definition of A353484 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064989, A165560, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353484.P4943837451926963282

`A165560(n+1)+a(A064989(n+1)-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A353484

/-- `A165560(n+1)+a(A064989(n+1)-1)` -/
def P4943837451926963282.Spec : Prop :=
  ∀ n, P4943837451926963282.a n = A353484 (n + 1)

theorem P4943837451926963282.correct : P4943837451926963282.Spec := by
  intro n
  simp only [A353484, Nat.add_sub_cancel]

end A353484

/-! ## A353484.P17839494834907688793

`A286471(A061395(n+1)^A286471(n+1))+A241917(n+1)`
-/

namespace A353484.P17839494834907688793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286471 (SequenceMachineLib.roundAway ((A061395 (n + 1) : ℚ) ^ (A286471 (n + 1) : ℤ))).toNat + A241917 (n + 1)

end

end A353484.P17839494834907688793

namespace A353484

/-- `A286471(A061395(n+1)^A286471(n+1))+A241917(n+1)` -/
def P17839494834907688793.Spec : Prop :=
  ∀ n, P17839494834907688793.a n = A353484 (n + 1)

end A353484

/-! ## A353484.P2175586613160280356

`A286471(A286471(n+1)^A286471(n+1))+A241917(n+1)`
-/

namespace A353484.P2175586613160280356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286471 (SequenceMachineLib.roundAway ((A286471 (n + 1) : ℚ) ^ (A286471 (n + 1) : ℤ))).toNat + A241917 (n + 1)

end

end A353484.P2175586613160280356

namespace A353484

/-- `A286471(A286471(n+1)^A286471(n+1))+A241917(n+1)` -/
def P2175586613160280356.Spec : Prop :=
  ∀ n, P2175586613160280356.a n = A353484 (n + 1)

end A353484

/-! ## A353484.P17054939224612004711

`C(A334297(A243071(n+1)), (n+1)/∏{p}[n+1, #])`
-/

namespace A353484.P17054939224612004711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A334297 (A243071 (n + 1)).toNat).toNat (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A353484.P17054939224612004711

namespace A353484

/-- `C(A334297(A243071(n+1)), (n+1)/∏{p}[n+1, #])` -/
def P17054939224612004711.Spec : Prop :=
  ∀ n, (P17054939224612004711.a n : ℤ) = A353484 (n + 1)

end A353484

/-! ## A353484.P16387362073957497667

`C(A355532(n+1), A138802(A057521(n+1)))`
-/

namespace A353484.P16387362073957497667
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A355532 (n + 1)).toNat (A138802 (A057521 (n + 1)).toNat).toNat

end

end A353484.P16387362073957497667

namespace A353484

/-- `C(A355532(n+1), A138802(A057521(n+1)))` -/
def P16387362073957497667.Spec : Prop :=
  ∀ n, (P16387362073957497667.a n : ℤ) = A353484 (n + 1)

end A353484

/-!
# A353485: Numbers k such that no x with an odd arithmetic derivative is encountered when repeatedly prime shifting from k down to 1 with the map x -> A064989(x).

The programs for A353485, the canonical program `A353485.P2758337711336577305` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353485 has offset 1).

The definition of A353485 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353485.P2758337711336577305

`eq[0, A353484(n+1)]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A353485

/-- `eq[0, A353484(n+1)]+1` -/
def P2758337711336577305.Spec : Prop :=
  ∀ n, (P2758337711336577305.a n : ℤ) = A353485 (n + 1)

theorem P2758337711336577305.correct : P2758337711336577305.Spec := by
  intro n
  simp only [A353485, Nat.add_sub_cancel]

end A353485

/-! ## A353485.P4838476373755143348

`record[gcd(A000027(n+1), A353484(n+1))]`
-/

namespace A353485.P4838476373755143348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A353484 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353485.P4838476373755143348

namespace A353485

/-- `record[gcd(A000027(n+1), A353484(n+1))]` -/
def P4838476373755143348.Spec : Prop :=
  ∀ n, (P4838476373755143348.a n : ℤ) = A353485 (n + 1)

end A353485

/-! ## A353485.P13450035272410245340

`eq[A000038(n), A353484(A004277(n)-n)]`
-/

namespace A353485.P13450035272410245340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353484 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353485.P13450035272410245340

namespace A353485

/-- `eq[A000038(n), A353484(A004277(n)-n)]` -/
def P13450035272410245340.Spec : Prop :=
  ∀ n, (P13450035272410245340.a n : ℤ) = A353485 (n + 1)

end A353485

/-! ## A353485.P11574170774356844565

`eq[A000007(n), A353484(A028310(n))]`
-/

namespace A353485.P11574170774356844565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353484 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353485.P11574170774356844565

namespace A353485

/-- `eq[A000007(n), A353484(A028310(n))]` -/
def P11574170774356844565.Spec : Prop :=
  ∀ n, (P11574170774356844565.a n : ℤ) = A353485 (n + 1)

end A353485

/-! ## A353485.P3177091222826403746

`eq[A000007(n), A353484(A004277(n)-n)]`
-/

namespace A353485.P3177091222826403746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353484 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353485.P3177091222826403746

namespace A353485

/-- `eq[A000007(n), A353484(A004277(n)-n)]` -/
def P3177091222826403746.Spec : Prop :=
  ∀ n, (P3177091222826403746.a n : ℤ) = A353485 (n + 1)

end A353485

/-!
# A353486: Primorial base exp-function reduced modulo 4.

The programs for A353486, there is no canonical definition to state claims against.
-/

/-! ## A353486.P744867192901540933

`A276086(n)%4`
-/

namespace A353486.P744867192901540933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276086 n) 4

end

end A353486.P744867192901540933

/-!
# A353487: a(n) = A276086(2*n) mod 4, where A276086 is the primorial base exp-function.

The programs for A353487, there is no canonical definition to state claims against.
-/

/-! ## A353487.P6676014418336792622

`A353517(1+n)`
-/

namespace A353487.P6676014418336792622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353517 (1 + n)

end

end A353487.P6676014418336792622

/-! ## A353487.P9784543688556847088

`A276086(2*n)%4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353487.P9784543688556847088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276086 (2 * n)) 4

end

end A353487.P9784543688556847088

/-!
# A353488: If A276086(n) is of the form 4k+1, then a(n) = 1, otherwise a(n) = 0.

The programs for A353488, there is no canonical definition to state claims against.
-/

/-! ## A353488.P14985238229183525083

`A059841(n)-A353489(n)`
-/

namespace A353488.P14985238229183525083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n - A353489 n

end

end A353488.P14985238229183525083

/-!
# A353489: If A276086(n) is of the form 4k+3, then a(n) = 1, otherwise a(n) = 0.

The programs for A353489, there is no canonical definition to state claims against.
-/

/-! ## A353489.P15490011244021433477

`A059841(n)-A353488(n)`
-/

namespace A353489.P15490011244021433477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n - A353488 n

end

end A353489.P15490011244021433477

/-!
# A353490: The largest proper divisor of n, reduced modulo 4, with a(1) = 1.

The programs for A353490, the canonical program `A353490.P8229927831177005922` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353490 has offset 1).

The definition of A353490 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032742, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353490.P8229927831177005922

`A032742(n+1)%4`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A353490

/-- `A032742(n+1)%4` -/
def P8229927831177005922.Spec : Prop :=
  ∀ n, P8229927831177005922.a n = A353490 (n + 1)

theorem P8229927831177005922.correct : P8229927831177005922.Spec := by
  intro n
  simp only [A353490, Nat.add_sub_cancel]

end A353490

/-! ## A353490.P304800994015286589

`A010873(A032742(n+1))`
-/

namespace A353490.P304800994015286589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A032742 (n + 1)).toNat

end

end A353490.P304800994015286589

namespace A353490

/-- `A010873(A032742(n+1))` -/
def P304800994015286589.Spec : Prop :=
  ∀ n, P304800994015286589.a n = A353490 (n + 1)

end A353490

/-! ## A353490.P17416045882174028624

`A117358(4*(n+1))%4`
-/

namespace A353490.P17416045882174028624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117358 (4 * (n + 1))) 4

end

end A353490.P17416045882174028624

namespace A353490

/-- `A117358(4*(n+1))%4` -/
def P17416045882174028624.Spec : Prop :=
  ∀ n, P17416045882174028624.a n = A353490 (n + 1)

end A353490

/-! ## A353490.P7423361954737617167

`(1-A060681(n+1)+n)%4`
-/

namespace A353490.P7423361954737617167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - A060681 (n + 1) + (n : ℤ)) 4

end

end A353490.P7423361954737617167

namespace A353490

/-- `(1-A060681(n+1)+n)%4` -/
def P7423361954737617167.Spec : Prop :=
  ∀ n, P7423361954737617167.a n = A353490 (n + 1)

theorem P7423361954737617167.correct : P7423361954737617167.Spec := by
  intro n
  simp only [A353490, Nat.add_sub_cancel, A353490.P7423361954737617167.a, A353490.P8229927831177005922.a, A032742, A032742.P14489579072839730134.a, A060681, A060681.P11747361826650309872.a, A020639, A020639.P7578813688609615429.a, A008578, A008578.P3639467937083264764.a, A055396, A055396.P18305262754425103137.a, A061395, A061395.P8431317036300486107.a, A158611, A158611.P9275629407611603775.a, A243055, A243055.P2464886309294058059.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A353490

/-! ## A353490.P4010211350154294970

`((n+1)/A020639(n+1))%4`
-/

namespace A353490.P4010211350154294970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))) 4

end

end A353490.P4010211350154294970

namespace A353490

/-- `((n+1)/A020639(n+1))%4` -/
def P4010211350154294970.Spec : Prop :=
  ∀ n, P4010211350154294970.a n = A353490 (n + 1)

end A353490

/-! ## A353490.P16993153677984682930

`gcd(n+1, A126286(n+1))%4`
-/

namespace A353490.P16993153677984682930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A126286 (n + 1)) % 4

end

end A353490.P16993153677984682930

namespace A353490

/-- `gcd(n+1, A126286(n+1))%4` -/
def P16993153677984682930.Spec : Prop :=
  ∀ n, (P16993153677984682930.a n : ℤ) = A353490 (n + 1)

end A353490

/-! ## A353490.P1204594842536751773

`and(3, A032742(2*(n+1)-n-1))`
-/

namespace A353490.P1204594842536751773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A032742 ((2 * (n + 1) : ℤ) - (n : ℤ) - 1).toNat)

end

end A353490.P1204594842536751773

namespace A353490

/-- `and(3, A032742(2*(n+1)-n-1))` -/
def P1204594842536751773.Spec : Prop :=
  ∀ n, P1204594842536751773.a n = A353490 (n + 1)

end A353490

/-! ## A353490.P16524582021679530295

`and(3, (n+1)/A020639(2*n+1-n))`
-/

namespace A353490.P16524582021679530295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (2 * n + 1 - n) : ℚ)))

end

end A353490.P16524582021679530295

namespace A353490

/-- `and(3, (n+1)/A020639(2*n+1-n))` -/
def P16524582021679530295.Spec : Prop :=
  ∀ n, P16524582021679530295.a n = A353490 (n + 1)

end A353490

/-! ## A353490.P8471770142674983155

`A322982(n+1)%A267649(n)`
-/

namespace A353490.P8471770142674983155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322982 (n + 1)) (A267649 n)

end

end A353490.P8471770142674983155

namespace A353490

/-- `A322982(n+1)%A267649(n)` -/
def P8471770142674983155.Spec : Prop :=
  ∀ n, P8471770142674983155.a n = A353490 (n + 1)

end A353490

/-! ## A353490.P8105940949669051443

`and(A032742(n+1), A122553(n))`
-/

namespace A353490.P8105940949669051443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032742 (n + 1)) (A122553 n)

end

end A353490.P8105940949669051443

namespace A353490

/-- `and(A032742(n+1), A122553(n))` -/
def P8105940949669051443.Spec : Prop :=
  ∀ n, P8105940949669051443.a n = A353490 (n + 1)

end A353490

/-! ## A353490.P2633747427024544774

`A010873(n+1-A060681(n+1))`
-/

namespace A353490.P2633747427024544774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 ((n + 1 : ℤ) - A060681 (n + 1)).toNat

end

end A353490.P2633747427024544774

namespace A353490

/-- `A010873(n+1-A060681(n+1))` -/
def P2633747427024544774.Spec : Prop :=
  ∀ n, P2633747427024544774.a n = A353490 (n + 1)

end A353490

/-! ## A353490.P274850095219004174

`A010873((n+1)/A020639(n+1))`
-/

namespace A353490.P274850095219004174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))).toNat

end

end A353490.P274850095219004174

namespace A353490

/-- `A010873((n+1)/A020639(n+1))` -/
def P274850095219004174.Spec : Prop :=
  ∀ n, P274850095219004174.a n = A353490 (n + 1)

end A353490

/-! ## A353490.P7255116329321890641

`xor(A318505(n+1), A318507(n+1))%4`
-/

namespace A353490.P7255116329321890641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (A318505 (n + 1)) (A318507 (n + 1))) 4

end

end A353490.P7255116329321890641

namespace A353490

/-- `xor(A318505(n+1), A318507(n+1))%4` -/
def P7255116329321890641.Spec : Prop :=
  ∀ n, P7255116329321890641.a n = A353490 (n + 1)

end A353490

/-! ## A353490.P12267313691544935802

`gcd((n+1)^A010686(n), A060681(n+1))%4`
-/

namespace A353490.P12267313691544935802
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A010686 n : ℤ))) (A060681 (n + 1)) % 4

end

end A353490.P12267313691544935802

namespace A353490

/-- `gcd((n+1)^A010686(n), A060681(n+1))%4` -/
def P12267313691544935802.Spec : Prop :=
  ∀ n, (P12267313691544935802.a n : ℤ) = A353490 (n + 1)

end A353490

/-! ## A353490.P17058001792602426523

`and(A032742(n+1), A166466(A006519(n+1)))`
-/

namespace A353490.P17058001792602426523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032742 (n + 1)) (A166466 (A006519 (n + 1)).toNat)

end

end A353490.P17058001792602426523

namespace A353490

/-- `and(A032742(n+1), A166466(A006519(n+1)))` -/
def P17058001792602426523.Spec : Prop :=
  ∀ n, P17058001792602426523.a n = A353490 (n + 1)

end A353490

/-! ## A353490.P2452821740220582749

`and(A032742(n+1), A088578(A032742(n+1)-1))`
-/

namespace A353490.P2452821740220582749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032742 (n + 1)) (A088578 (A032742 (n + 1) - 1).toNat)

end

end A353490.P2452821740220582749

namespace A353490

/-- `and(A032742(n+1), A088578(A032742(n+1)-1))` -/
def P2452821740220582749.Spec : Prop :=
  ∀ n, P2452821740220582749.a n = A353490 (n + 1)

end A353490

/-! ## A353490.P1330002424515769339

`and(A032742(n+1), A339771(A032742(n+1)-1))`
-/

namespace A353490.P1330002424515769339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032742 (n + 1)) (A339771 (A032742 (n + 1) - 1).toNat)

end

end A353490.P1330002424515769339

namespace A353490

/-- `and(A032742(n+1), A339771(A032742(n+1)-1))` -/
def P1330002424515769339.Spec : Prop :=
  ∀ n, P1330002424515769339.a n = A353490 (n + 1)

end A353490

/-! ## A353490.P3538095772358207729

`and(A032742(n+1), A188161(A032742(n+1)-1))`
-/

namespace A353490.P3538095772358207729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032742 (n + 1)) (A188161 (A032742 (n + 1) - 1).toNat)

end

end A353490.P3538095772358207729

namespace A353490

/-- `and(A032742(n+1), A188161(A032742(n+1)-1))` -/
def P3538095772358207729.Spec : Prop :=
  ∀ n, P3538095772358207729.a n = A353490 (n + 1)

end A353490

/-! ## A353490.P16225123483791275227

`and(A032742(n+1), A147595(n+1))`
-/

namespace A353490.P16225123483791275227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032742 (n + 1)) (A147595 (n + 1))

end

end A353490.P16225123483791275227

namespace A353490

/-- `and(A032742(n+1), A147595(n+1))` -/
def P16225123483791275227.Spec : Prop :=
  ∀ n, P16225123483791275227.a n = A353490 (n + 1)

end A353490

/-!
# A353491: a(1) = 1, and for n > 1, a(n) = 1 if the largest proper divisor of n is of the form 4k+1, otherwise 0.

The programs for A353491, the canonical program `A353491.P1845892141876219573` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353491 has offset 1).

The definition of A353491 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353491.P11530059369764104221

`char[eq[1, A353490(n+1)]]`
-/

namespace A353491.P11530059369764104221
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353490 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353491.P11530059369764104221

namespace A353491

/-- `char[eq[1, A353490(n+1)]]` -/
def P11530059369764104221.Spec : Prop :=
  ∀ n, (P11530059369764104221.a n : ℤ) = A353491 (n + 1)

end A353491

/-! ## A353491.P1845892141876219573

`val((A032742(n+1)+1)²+4, 8)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A353491

/-- `val((A032742(n+1)+1)²+4, 8)` -/
def P1845892141876219573.Spec : Prop :=
  ∀ n, (P1845892141876219573.a n : ℤ) = A353491 (n + 1)

theorem P1845892141876219573.correct : P1845892141876219573.Spec := by
  intro n
  simp only [A353491, Nat.add_sub_cancel]

end A353491

/-! ## A353491.P17680032235275607881

`A121262(A032742(n+1)-1)`
-/

namespace A353491.P17680032235275607881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A032742 (n + 1) - 1).toNat

end

end A353491.P17680032235275607881

namespace A353491

/-- `A121262(A032742(n+1)-1)` -/
def P17680032235275607881.Spec : Prop :=
  ∀ n, P17680032235275607881.a n = A353491 (n + 1)

end A353491

/-! ## A353491.P18099518969583239925

`A121262(xor(1, A032742(n+1)))`
-/

namespace A353491.P18099518969583239925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (Int.xor 1 (A032742 (n + 1))).toNat

end

end A353491.P18099518969583239925

namespace A353491

/-- `A121262(xor(1, A032742(n+1)))` -/
def P18099518969583239925.Spec : Prop :=
  ∀ n, P18099518969583239925.a n = A353491 (n + 1)

end A353491

/-! ## A353491.P12390755092789756834

`A121262(n-A060681(n+1))`
-/

namespace A353491.P12390755092789756834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 ((n : ℤ) - A060681 (n + 1)).toNat

end

end A353491.P12390755092789756834

namespace A353491

/-- `A121262(n-A060681(n+1))` -/
def P12390755092789756834.Spec : Prop :=
  ∀ n, P12390755092789756834.a n = A353491 (n + 1)

end A353491

/-! ## A353491.P16348334333228669170

`1-A166486(A032742(n+1)-1)`
-/

namespace A353491.P16348334333228669170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A166486 (A032742 (n + 1) - 1).toNat

end

end A353491.P16348334333228669170

namespace A353491

/-- `1-A166486(A032742(n+1)-1)` -/
def P16348334333228669170.Spec : Prop :=
  ∀ n, P16348334333228669170.a n = A353491 (n + 1)

end A353491

/-! ## A353491.P3404623130401606055

`A177704(A032742(n+1)+2)-1`
-/

namespace A353491.P3404623130401606055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177704 (A032742 (n + 1) + 2).toNat - 1

end

end A353491.P3404623130401606055

namespace A353491

/-- `A177704(A032742(n+1)+2)-1` -/
def P3404623130401606055.Spec : Prop :=
  ∀ n, P3404623130401606055.a n = A353491 (n + 1)

end A353491

/-! ## A353491.P8191440601652445046

`A186181(A032742(n+1)+1)-2`
-/

namespace A353491.P8191440601652445046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186181 (A032742 (n + 1) + 1).toNat - 2

end

end A353491.P8191440601652445046

namespace A353491

/-- `A186181(A032742(n+1)+1)-2` -/
def P8191440601652445046.Spec : Prop :=
  ∀ n, P8191440601652445046.a n = A353491 (n + 1)

end A353491

/-! ## A353491.P1417676056925274666

`A353492(2*(A032742(n+1)+2))`
-/

namespace A353491.P1417676056925274666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353492 (2 * (A032742 (n + 1) + 2)).toNat

end

end A353491.P1417676056925274666

namespace A353491

/-- `A353492(2*(A032742(n+1)+2))` -/
def P1417676056925274666.Spec : Prop :=
  ∀ n, P1417676056925274666.a n = A353491 (n + 1)

end A353491

/-! ## A353491.P9075593525557313918

`val(A126773(A032742(n+1)+1), 2)`
-/

namespace A353491.P9075593525557313918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A126773 (A032742 (n + 1) + 1).toNat).toNat 2

end

end A353491.P9075593525557313918

namespace A353491

/-- `val(A126773(A032742(n+1)+1), 2)` -/
def P9075593525557313918.Spec : Prop :=
  ∀ n, (P9075593525557313918.a n : ℤ) = A353491 (n + 1)

end A353491

/-! ## A353491.P13712341561370679069

`and(1, A060681(A032742(n+1)+1))`
-/

namespace A353491.P13712341561370679069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A060681 (A032742 (n + 1) + 1).toNat)

end

end A353491.P13712341561370679069

namespace A353491

/-- `and(1, A060681(A032742(n+1)+1))` -/
def P13712341561370679069.Spec : Prop :=
  ∀ n, P13712341561370679069.a n = A353491 (n + 1)

end A353491

/-! ## A353491.P17501635926170675131

`and(1, A353492(n+1)+A003557(n+1))`
-/

namespace A353491.P17501635926170675131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A353492 (n + 1) + A003557 (n + 1))

end

end A353491.P17501635926170675131

namespace A353491

/-- `and(1, A353492(n+1)+A003557(n+1))` -/
def P17501635926170675131.Spec : Prop :=
  ∀ n, P17501635926170675131.a n = A353491 (n + 1)

end A353491

/-! ## A353491.P8826989942889339959

`and(A177704(A220096(n+1)), A177704(n))`
-/

namespace A353491.P8826989942889339959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A177704 (A220096 (n + 1)).toNat) (A177704 n)

end

end A353491.P8826989942889339959

namespace A353491

/-- `and(A177704(A220096(n+1)), A177704(n))` -/
def P8826989942889339959.Spec : Prop :=
  ∀ n, P8826989942889339959.a n = A353491 (n + 1)

end A353491

/-! ## A353491.P9372312008348190511

`A000035(A353492(n+1)+A032742(n+1))`
-/

namespace A353491.P9372312008348190511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A353492 (n + 1) + A032742 (n + 1)).toNat

end

end A353491.P9372312008348190511

namespace A353491

/-- `A000035(A353492(n+1)+A032742(n+1))` -/
def P9372312008348190511.Spec : Prop :=
  ∀ n, P9372312008348190511.a n = A353491 (n + 1)

end A353491

/-! ## A353491.P14321414459493546797

`A003815(A032742(n+1)%(A110657(n)+A110657(n)+2))`
-/

namespace A353491.P14321414459493546797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 (Int.tmod (A032742 (n + 1)) (A110657 n + (A110657 n + 2))).toNat

end

end A353491.P14321414459493546797

namespace A353491

/-- `A003815(A032742(n+1)%(A110657(n)+A110657(n)+2))` -/
def P14321414459493546797.Spec : Prop :=
  ∀ n, P14321414459493546797.a n = A353491 (n + 1)

end A353491

/-! ## A353491.P4524218927601488820

`A353489(A353490(n+1)+53^val(n+1, 5))`
-/

namespace A353491.P4524218927601488820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353489 (A353490 (n + 1) + (53 ^ SequenceMachineLib.valuation (n + 1) 5 : ℤ)).toNat

end

end A353491.P4524218927601488820

namespace A353491

/-- `A353489(A353490(n+1)+53^val(n+1, 5))` -/
def P4524218927601488820.Spec : Prop :=
  ∀ n, P4524218927601488820.a n = A353491 (n + 1)

end A353491

/-! ## A353491.P18405795091870214191

`A353809(A032742(n+1)*A084109(n+1))`
-/

namespace A353491.P18405795091870214191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353809 (A032742 (n + 1) * A084109 (n + 1)).toNat

end

end A353491.P18405795091870214191

namespace A353491

/-- `A353809(A032742(n+1)*A084109(n+1))` -/
def P18405795091870214191.Spec : Prop :=
  ∀ n, P18405795091870214191.a n = A353491 (n + 1)

end A353491

/-!
# A353492: a(1) = 0, and for n > 1, a(n) = 1 if the largest proper divisor of n is of the form 4k+3, otherwise 0.

The programs for A353492, the canonical program `A353492.P14876298458293559379` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353492 has offset 1).

The definition of A353492 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353492.P14876298458293559379

`C(A353490(n+1), 3)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A353492

/-- `C(A353490(n+1), 3)` -/
def P14876298458293559379.Spec : Prop :=
  ∀ n, (P14876298458293559379.a n : ℤ) = A353492 (n + 1)

theorem P14876298458293559379.correct : P14876298458293559379.Spec := by
  intro n
  simp only [A353492, Nat.add_sub_cancel]

end A353492

/-! ## A353492.P1462893046912540077

`and(1, C(A032742(n+1), 3))`
-/

namespace A353492.P1462893046912540077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.choose (A032742 (n + 1)).toNat 3)

end

end A353492.P1462893046912540077

namespace A353492

/-- `and(1, C(A032742(n+1), 3))` -/
def P1462893046912540077.Spec : Prop :=
  ∀ n, (P1462893046912540077.a n : ℤ) = A353492 (n + 1)

end A353492

/-! ## A353492.P7635786375790679963

`A121262(A032742(n+1)+1)`
-/

namespace A353492.P7635786375790679963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A032742 (n + 1) + 1).toNat

end

end A353492.P7635786375790679963

namespace A353492

/-- `A121262(A032742(n+1)+1)` -/
def P7635786375790679963.Spec : Prop :=
  ∀ n, P7635786375790679963.a n = A353492 (n + 1)

end A353492

/-! ## A353492.P2466787337134805628

`A177704(A220096(n+1))-1`
-/

namespace A353492.P2466787337134805628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177704 (A220096 (n + 1)).toNat - 1

end

end A353492.P2466787337134805628

namespace A353492

/-- `A177704(A220096(n+1))-1` -/
def P2466787337134805628.Spec : Prop :=
  ∀ n, P2466787337134805628.a n = A353492 (n + 1)

end A353492

/-! ## A353492.P4367806982405524558

`A000035(C(A159353(n+1), 3))`
-/

namespace A353492.P4367806982405524558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Nat.choose (A159353 (n + 1)).toNat 3)

end

end A353492.P4367806982405524558

namespace A353492

/-- `A000035(C(A159353(n+1), 3))` -/
def P4367806982405524558.Spec : Prop :=
  ∀ n, P4367806982405524558.a n = A353492 (n + 1)

end A353492

/-!
# A353493: The arithmetic derivative of n, reduced modulo 4.

The programs for A353493, the canonical program `A353493.P11274573970098312358` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353493 has offset 0).

The definition of A353493 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A353493.P11274573970098312358

`A003415(n)%4`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A353493

/-- `A003415(n)%4` -/
def P11274573970098312358.Spec : Prop :=
  ∀ n, P11274573970098312358.a n = A353493 n

theorem P11274573970098312358.correct : P11274573970098312358.Spec := by
  intro n
  simp only [A353493]

end A353493

/-! ## A353493.P7623540755690707388

`A010873(A003415(n))`
-/

namespace A353493.P7623540755690707388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A003415 n).toNat

end

end A353493.P7623540755690707388

namespace A353493

/-- `A010873(A003415(n))` -/
def P7623540755690707388.Spec : Prop :=
  ∀ n, P7623540755690707388.a n = A353493 n

end A353493

/-! ## A353493.P3231666401031273757

`(A168036(n)+n)%4`
-/

namespace A353493.P3231666401031273757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168036 n + (n : ℤ)) 4

end

end A353493.P3231666401031273757

namespace A353493

/-- `(A168036(n)+n)%4` -/
def P3231666401031273757.Spec : Prop :=
  ∀ n, P3231666401031273757.a n = A353493 n

theorem P3231666401031273757.correct : P3231666401031273757.Spec := by
  intro n
  simp only [A353493, Nat.add_sub_cancel, A353493.P3231666401031273757.a, A353493.P11274573970098312358.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A168036, A168036.P2098310487666722677.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A353493

/-! ## A353493.P15692841320414013963

`(A129283(n)-n)%4`
-/

namespace A353493.P15692841320414013963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129283 n - (n : ℤ)) 4

end

end A353493.P15692841320414013963

namespace A353493

/-- `(A129283(n)-n)%4` -/
def P15692841320414013963.Spec : Prop :=
  ∀ n, P15692841320414013963.a n = A353493 n

theorem P15692841320414013963.correct : P15692841320414013963.Spec := by
  intro n
  simp only [A353493, Nat.add_sub_cancel, A353493.P15692841320414013963.a, A353493.P11274573970098312358.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A129283, A129283.P3962818557550655141.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A353493

/-! ## A353493.P15821361480871471286

`and(3, A003415(char[2]+n))`
-/

namespace A353493.P15821361480871471286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A003415 ((if ∃ j, f1 j = n then 1 else 0) + n))

end

end A353493.P15821361480871471286

namespace A353493

/-- `and(3, A003415(char[2]+n))` -/
def P15821361480871471286.Spec : Prop :=
  ∀ n, P15821361480871471286.a n = A353493 n

end A353493

/-! ## A353493.P10413215446015122229

`A353496(A004277(n))`
-/

namespace A353493.P10413215446015122229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353496 (A004277 n).toNat

end

end A353493.P10413215446015122229

namespace A353493

/-- `A353496(A004277(n))` -/
def P10413215446015122229.Spec : Prop :=
  ∀ n, P10413215446015122229.a n = A353493 n

end A353493

/-! ## A353493.P4546980020975883340

`A353496(A035877(n))`
-/

namespace A353493.P4546980020975883340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353496 (A035877 n).toNat

end

end A353493.P4546980020975883340

namespace A353493

/-- `A353496(A035877(n))` -/
def P4546980020975883340.Spec : Prop :=
  ∀ n, P4546980020975883340.a n = A353493 n

end A353493

/-! ## A353493.P2969017934206823388

`A353496(A298028(n))`
-/

namespace A353493.P2969017934206823388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353496 (A298028 n).toNat

end

end A353493.P2969017934206823388

namespace A353493

/-- `A353496(A298028(n))` -/
def P2969017934206823388.Spec : Prop :=
  ∀ n, P2969017934206823388.a n = A353493 n

end A353493

/-! ## A353493.P1278356661804541497

`A353496(A004275(n+1))`
-/

namespace A353493.P1278356661804541497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353496 (A004275 (n + 1)).toNat

end

end A353493.P1278356661804541497

namespace A353493

/-- `A353496(A004275(n+1))` -/
def P1278356661804541497.Spec : Prop :=
  ∀ n, P1278356661804541497.a n = A353493 n

end A353493

/-! ## A353493.P8898693840367538077

`A353496(A092535(n+1))`
-/

namespace A353493.P8898693840367538077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353496 (A092535 (n + 1)).toNat

end

end A353493.P8898693840367538077

namespace A353493

/-- `A353496(A092535(n+1))` -/
def P8898693840367538077.Spec : Prop :=
  ∀ n, P8898693840367538077.a n = A353493 n

end A353493

/-! ## A353493.P9645034536441904616

`and(A003415(n), A113923(n))`
-/

namespace A353493.P9645034536441904616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003415 n) (A113923 n)

end

end A353493.P9645034536441904616

namespace A353493

/-- `and(A003415(n), A113923(n))` -/
def P9645034536441904616.Spec : Prop :=
  ∀ n, P9645034536441904616.a n = A353493 n

end A353493

/-! ## A353493.P7718886738813001314

`and(A003415(n), A122553(n))`
-/

namespace A353493.P7718886738813001314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003415 n) (A122553 n)

end

end A353493.P7718886738813001314

namespace A353493

/-- `and(A003415(n), A122553(n))` -/
def P7718886738813001314.Spec : Prop :=
  ∀ n, P7718886738813001314.a n = A353493 n

end A353493

/-! ## A353493.P79816525127534678

`and(A003415(n), A158799(n))`
-/

namespace A353493.P79816525127534678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003415 n) (A158799 n)

end

end A353493.P79816525127534678

namespace A353493

/-- `and(A003415(n), A158799(n))` -/
def P79816525127534678.Spec : Prop :=
  ∀ n, P79816525127534678.a n = A353493 n

end A353493

/-! ## A353493.P2462042050969325824

`and(A003415(n), A167817(n))`
-/

namespace A353493.P2462042050969325824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003415 n) (A167817 n)

end

end A353493.P2462042050969325824

namespace A353493

/-- `and(A003415(n), A167817(n))` -/
def P2462042050969325824.Spec : Prop :=
  ∀ n, P2462042050969325824.a n = A353493 n

end A353493

/-! ## A353493.P3863370784749952090

`and(A003415(n), A157532(n+1))`
-/

namespace A353493.P3863370784749952090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003415 n) (A157532 (n + 1))

end

end A353493.P3863370784749952090

namespace A353493

/-- `and(A003415(n), A157532(n+1))` -/
def P3863370784749952090.Spec : Prop :=
  ∀ n, P3863370784749952090.a n = A353493 n

end A353493

/-! ## A353493.P1580063036845258387

`(∑[A258057(n)]-A258057(n))%4`
-/

namespace A353493.P1580063036845258387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - A258057 n) 4

end

end A353493.P1580063036845258387

namespace A353493

/-- `(∑[A258057(n)]-A258057(n))%4` -/
def P1580063036845258387.Spec : Prop :=
  ∀ n, P1580063036845258387.a n = A353493 n

end A353493

/-! ## A353493.P4336798389357119940

`A353496(A004278(n+2))`
-/

namespace A353493.P4336798389357119940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353496 (A004278 (n + 2)).toNat

end

end A353493.P4336798389357119940

namespace A353493

/-- `A353496(A004278(n+2))` -/
def P4336798389357119940.Spec : Prop :=
  ∀ n, P4336798389357119940.a n = A353493 n

end A353493

/-! ## A353493.P2082581617911405508

`A353496(A058992(n+2))`
-/

namespace A353493.P2082581617911405508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353496 (A058992 (n + 2)).toNat

end

end A353493.P2082581617911405508

namespace A353493

/-- `A353496(A058992(n+2))` -/
def P2082581617911405508.Spec : Prop :=
  ∀ n, P2082581617911405508.a n = A353493 n

end A353493

/-! ## A353493.P9395183860517252625

`A353496(A300576(n+2))`
-/

namespace A353493.P9395183860517252625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353496 (A300576 (n + 2)).toNat

end

end A353493.P9395183860517252625

namespace A353493

/-- `A353496(A300576(n+2))` -/
def P9395183860517252625.Spec : Prop :=
  ∀ n, P9395183860517252625.a n = A353493 n

end A353493

/-! ## A353493.P18260656348649056762

`and(A003415(n), A290858(n))`
-/

namespace A353493.P18260656348649056762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003415 n) (A290858 n)

end

end A353493.P18260656348649056762

namespace A353493

/-- `and(A003415(n), A290858(n))` -/
def P18260656348649056762.Spec : Prop :=
  ∀ n, P18260656348649056762.a n = A353493 n

end A353493

/-!
# A353494: a(n) = 1 if the arithmetic derivative of n is a multiple of 4, otherwise 0.

The programs for A353494, the canonical program `A353494.P3598383137759262776` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353494 has offset 0).

The definition of A353494 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353494.P4712394096670523467

`char[A327864(n+1)]`
-/

namespace A353494.P4712394096670523467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353494.P4712394096670523467

namespace A353494

/-- `char[A327864(n+1)]` -/
def P4712394096670523467.Spec : Prop :=
  ∀ n, (P4712394096670523467.a n : ℤ) = A353494 n

end A353494

/-! ## A353494.P18211156232450881943

`char[eq[0, A353493(n)]]`
-/

namespace A353494.P18211156232450881943
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353493 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353494.P18211156232450881943

namespace A353494

/-- `char[eq[0, A353493(n)]]` -/
def P18211156232450881943.Spec : Prop :=
  ∀ n, (P18211156232450881943.a n : ℤ) = A353494 n

end A353494

/-! ## A353494.P7430067315870220926

`(A351230(n)+1)%2`
-/

namespace A353494.P7430067315870220926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351230 n + 1) 2

end

end A353494.P7430067315870220926

namespace A353494

/-- `(A351230(n)+1)%2` -/
def P7430067315870220926.Spec : Prop :=
  ∀ n, P7430067315870220926.a n = A353494 n

end A353494

/-! ## A353494.P160817601671646106

`gcd(2, A369669(n))-1`
-/

namespace A353494.P160817601671646106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A369669 n) : ℤ) - 1

end

end A353494.P160817601671646106

namespace A353494

/-- `gcd(2, A369669(n))-1` -/
def P160817601671646106.Spec : Prop :=
  ∀ n, P160817601671646106.a n = A353494 n

end A353494

/-! ## A353494.P3598383137759262776

`round(gcd(4, A003415(n))/8)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A353494

/-- `round(gcd(4, A003415(n))/8)` -/
def P3598383137759262776.Spec : Prop :=
  ∀ n, P3598383137759262776.a n = A353494 n

theorem P3598383137759262776.correct : P3598383137759262776.Spec := by
  intro n
  simp only [A353494]

end A353494

/-! ## A353494.P16853112376431673604

`A121262(A003415(n))`
-/

namespace A353494.P16853112376431673604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A003415 n).toNat

end

end A353494.P16853112376431673604

namespace A353494

/-- `A121262(A003415(n))` -/
def P16853112376431673604.Spec : Prop :=
  ∀ n, P16853112376431673604.a n = A353494 n

end A353494

/-! ## A353494.P5114392989198180195

`A121262(A359424(n))`
-/

namespace A353494.P5114392989198180195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A359424 n).toNat

end

end A353494.P5114392989198180195

namespace A353494

/-- `A121262(A359424(n))` -/
def P5114392989198180195.Spec : Prop :=
  ∀ n, P5114392989198180195.a n = A353494 n

end A353494

/-! ## A353494.P101881452064421969

`A358680(2*A369669(n))`
-/

namespace A353494.P101881452064421969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358680 (2 * A369669 n).toNat

end

end A353494.P101881452064421969

namespace A353494

/-- `A358680(2*A369669(n))` -/
def P101881452064421969.Spec : Prop :=
  ∀ n, P101881452064421969.a n = A353494 n

end A353494

/-! ## A353494.P9997839245392317960

`A360109(n)+A121262(n)`
-/

namespace A353494.P9997839245392317960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360109 n + A121262 n

end

end A353494.P9997839245392317960

namespace A353494

/-- `A360109(n)+A121262(n)` -/
def P9997839245392317960.Spec : Prop :=
  ∀ n, P9997839245392317960.a n = A353494 n

end A353494

/-! ## A353494.P15464227470884506180

`A358680(n)-A353495(n)`
-/

namespace A353494.P15464227470884506180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358680 n - A353495 n

end

end A353494.P15464227470884506180

namespace A353494

/-- `A358680(n)-A353495(n)` -/
def P15464227470884506180.Spec : Prop :=
  ∀ n, P15464227470884506180.a n = A353494 n

theorem P15464227470884506180.correct : P15464227470884506180.Spec := by
  intro n
  simp only [A353494, Nat.add_sub_cancel, A353494.P15464227470884506180.a, A353494.P3598383137759262776.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A353495, A353495.P17772211378509351063.a, A358680, A358680.P17815025508061281044.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A353494

/-! ## A353494.P3685594026375169297

`1-A152822(A003415(n)+2)`
-/

namespace A353494.P3685594026375169297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A152822 (A003415 n + 2).toNat

end

end A353494.P3685594026375169297

namespace A353494

/-- `1-A152822(A003415(n)+2)` -/
def P3685594026375169297.Spec : Prop :=
  ∀ n, P3685594026375169297.a n = A353494 n

end A353494

/-! ## A353494.P14335080206143288936

`1-(A353495(n)+A165560(n))`
-/

namespace A353494.P14335080206143288936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A353495 n + A165560 n)

end

end A353494.P14335080206143288936

namespace A353494

/-- `1-(A353495(n)+A165560(n))` -/
def P14335080206143288936.Spec : Prop :=
  ∀ n, P14335080206143288936.a n = A353494 n

theorem P14335080206143288936.correct : P14335080206143288936.Spec := by
  intro n
  simp only [A353494, Nat.add_sub_cancel, A353494.P14335080206143288936.a, A353494.P3598383137759262776.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A165560, A165560.P13564864469092298929.a, A353495, A353495.P17772211378509351063.a, A349394, A349394.P210516795435731064.a, A358680, A358680.P17815025508061281044.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A353494

/-! ## A353494.P16006750193645267210

`A360109(n)+1-A166486(n)`
-/

namespace A353494.P16006750193645267210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360109 n + (1 - A166486 n)

end

end A353494.P16006750193645267210

namespace A353494

/-- `A360109(n)+1-A166486(n)` -/
def P16006750193645267210.Spec : Prop :=
  ∀ n, P16006750193645267210.a n = A353494 n

end A353494

/-! ## A353494.P3121897609337101865

`A353493(C(2, C(n, A353493(n))))`
-/

namespace A353494.P3121897609337101865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353493 (Nat.choose 2 (Nat.choose n (A353493 n).toNat))

end

end A353494.P3121897609337101865

namespace A353494

/-- `A353493(C(2, C(n, A353493(n))))` -/
def P3121897609337101865.Spec : Prop :=
  ∀ n, P3121897609337101865.a n = A353494 n

end A353494

/-! ## A353494.P7568157906326368287

`A000007(A003415(n)%(C(2, n)-4))`
-/

namespace A353494.P7568157906326368287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (A003415 n) ((Nat.choose 2 n : ℤ) - 4)).toNat

end

end A353494.P7568157906326368287

namespace A353494

/-- `A000007(A003415(n)%(C(2, n)-4))` -/
def P7568157906326368287.Spec : Prop :=
  ∀ n, P7568157906326368287.a n = A353494 n

end A353494

/-! ## A353494.P12024947225263055592

`A358680(A003415(n))*A358680(n)`
-/

namespace A353494.P12024947225263055592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358680 (A003415 n).toNat * A358680 n

end

end A353494.P12024947225263055592

namespace A353494

/-- `A358680(A003415(n))*A358680(n)` -/
def P12024947225263055592.Spec : Prop :=
  ∀ n, P12024947225263055592.a n = A353494 n

end A353494

/-! ## A353494.P6116736961573568872

`A358680(n)*A358680(A359424(n))`
-/

namespace A353494.P6116736961573568872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358680 n * A358680 (A359424 n).toNat

end

end A353494.P6116736961573568872

namespace A353494

/-- `A358680(n)*A358680(A359424(n))` -/
def P6116736961573568872.Spec : Prop :=
  ∀ n, P6116736961573568872.a n = A353494 n

end A353494

/-! ## A353494.P2090132109273681098

`A000035(A351230(n)+1)`
-/

namespace A353494.P2090132109273681098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A351230 n + 1).toNat

end

end A353494.P2090132109273681098

namespace A353494

/-- `A000035(A351230(n)+1)` -/
def P2090132109273681098.Spec : Prop :=
  ∀ n, P2090132109273681098.a n = A353494 n

end A353494

/-! ## A353494.P11696993888249411655

`A358680(n*A359424(n))`
-/

namespace A353494.P11696993888249411655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358680 ((n : ℤ) * A359424 n).toNat

end

end A353494.P11696993888249411655

namespace A353494

/-- `A358680(n*A359424(n))` -/
def P11696993888249411655.Spec : Prop :=
  ∀ n, P11696993888249411655.a n = A353494 n

end A353494

/-!
# A353495: a(n) = 1 if the arithmetic derivative of n is of the form 4k+2, otherwise 0.

The programs for A353495, the canonical program `A353495.P17772211378509351063` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353495 has offset 0).

The definition of A353495 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353495.P18275705488265239555

`A360109(9*n)`
-/

namespace A353495.P18275705488265239555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360109 (9 * n)

end

end A353495.P18275705488265239555

namespace A353495

/-- `A360109(9*n)` -/
def P18275705488265239555.Spec : Prop :=
  ∀ n, P18275705488265239555.a n = A353495 n

end A353495

/-! ## A353495.P14559735911424270406

`char[A327862(n+1)]`
-/

namespace A353495.P14559735911424270406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353495.P14559735911424270406

namespace A353495

/-- `char[A327862(n+1)]` -/
def P14559735911424270406.Spec : Prop :=
  ∀ n, (P14559735911424270406.a n : ℤ) = A353495 n

end A353495

/-! ## A353495.P11934299872937375268

`char[eq[2, A353493(n)]]`
-/

namespace A353495.P11934299872937375268
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353493 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353495.P11934299872937375268

namespace A353495

/-- `char[eq[2, A353493(n)]]` -/
def P11934299872937375268.Spec : Prop :=
  ∀ n, (P11934299872937375268.a n : ℤ) = A353495 n

end A353495

/-! ## A353495.P17772211378509351063

`C(A003415(n)+5, 3)%2`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A353495

/-- `C(A003415(n)+5, 3)%2` -/
def P17772211378509351063.Spec : Prop :=
  ∀ n, (P17772211378509351063.a n : ℤ) = A353495 n

theorem P17772211378509351063.correct : P17772211378509351063.Spec := by
  intro n
  simp only [A353495]

end A353495

/-! ## A353495.P5176881132494080049

`A121262(A003415(n)+2)`
-/

namespace A353495.P5176881132494080049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A003415 n + 2).toNat

end

end A353495.P5176881132494080049

namespace A353495

/-- `A121262(A003415(n)+2)` -/
def P5176881132494080049.Spec : Prop :=
  ∀ n, P5176881132494080049.a n = A353495 n

end A353495

/-! ## A353495.P1956979032766208309

`A121262(xor(2, A003415(n)))`
-/

namespace A353495.P1956979032766208309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (Int.xor 2 (A003415 n)).toNat

end

end A353495.P1956979032766208309

namespace A353495

/-- `A121262(xor(2, A003415(n)))` -/
def P1956979032766208309.Spec : Prop :=
  ∀ n, P1956979032766208309.a n = A353495 n

end A353495

/-! ## A353495.P3163365982481828895

`A358680(n)-A353494(n)`
-/

namespace A353495.P3163365982481828895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358680 n - A353494 n

end

end A353495.P3163365982481828895

namespace A353495

/-- `A358680(n)-A353494(n)` -/
def P3163365982481828895.Spec : Prop :=
  ∀ n, P3163365982481828895.a n = A353495 n

theorem P3163365982481828895.correct : P3163365982481828895.Spec := by
  intro n
  simp only [A353495, Nat.add_sub_cancel, A353495.P3163365982481828895.a, A353495.P17772211378509351063.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A353494, A353494.P3598383137759262776.a, A358680, A358680.P17815025508061281044.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A353495

/-! ## A353495.P8491100209746342003

`1-(A353494(n)+A165560(n))`
-/

namespace A353495.P8491100209746342003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A353494 n + A165560 n)

end

end A353495.P8491100209746342003

namespace A353495

/-- `1-(A353494(n)+A165560(n))` -/
def P8491100209746342003.Spec : Prop :=
  ∀ n, P8491100209746342003.a n = A353495 n

theorem P8491100209746342003.correct : P8491100209746342003.Spec := by
  intro n
  simp only [A353495, Nat.add_sub_cancel, A353495.P8491100209746342003.a, A353495.P17772211378509351063.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A165560, A165560.P13564864469092298929.a, A353494, A353494.P3598383137759262776.a, A349394, A349394.P210516795435731064.a, A358680, A358680.P17815025508061281044.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A353495

/-! ## A353495.P10281236538064432194

`A353493(n)/2*A358680(n)`
-/

namespace A353495.P10281236538064432194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353493 n : ℚ) / 2 * (A358680 n : ℚ)

end

end A353495.P10281236538064432194

namespace A353495

/-- `A353493(n)/2*A358680(n)` -/
def P10281236538064432194.Spec : Prop :=
  ∀ n, P10281236538064432194.a n = (A353495 n : ℚ)

end A353495

/-! ## A353495.P13374320063781160537

`and(1-A165560(n), A068346(n))`
-/

namespace A353495.P13374320063781160537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - A165560 n) (A068346 n)

end

end A353495.P13374320063781160537

namespace A353495

/-- `and(1-A165560(n), A068346(n))` -/
def P13374320063781160537.Spec : Prop :=
  ∀ n, P13374320063781160537.a n = A353495 n

end A353495

/-! ## A353495.P2116159646986829957

`A068346(n)%A000034(A351234(n))`
-/

namespace A353495.P2116159646986829957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068346 n) (A000034 (A351234 n).toNat)

end

end A353495.P2116159646986829957

namespace A353495

/-- `A068346(n)%A000034(A351234(n))` -/
def P2116159646986829957.Spec : Prop :=
  ∀ n, P2116159646986829957.a n = A353495 n

end A353495

/-! ## A353495.P236344865342991097

`A351230(n)%A000034(A351234(n))`
-/

namespace A353495.P236344865342991097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351230 n) (A000034 (A351234 n).toNat)

end

end A353495.P236344865342991097

namespace A353495

/-- `A351230(n)%A000034(A351234(n))` -/
def P236344865342991097.Spec : Prop :=
  ∀ n, P236344865342991097.a n = A353495 n

end A353495

/-! ## A353495.P5316336986161652731

`A000035(and(A351230(n), A351234(n)))`
-/

namespace A353495.P5316336986161652731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.land (A351230 n) (A351234 n)).toNat

end

end A353495.P5316336986161652731

namespace A353495

/-- `A000035(and(A351230(n), A351234(n)))` -/
def P5316336986161652731.Spec : Prop :=
  ∀ n, P5316336986161652731.a n = A353495 n

end A353495

/-! ## A353495.P383432466013868149

`dr(1-A177704(A168036(n)+1+n))`
-/

namespace A353495.P383432466013868149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - A177704 (A168036 n + 1 + (n : ℤ)).toNat)

end

end A353495.P383432466013868149

namespace A353495

/-- `dr(1-A177704(A168036(n)+1+n))` -/
def P383432466013868149.Spec : Prop :=
  ∀ n, (P383432466013868149.a n : ℤ) = A353495 n

end A353495

/-! ## A353495.P17176892177250390252

`A000035(A003415(n)-A351230(n))`
-/

namespace A353495.P17176892177250390252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A003415 n - A351230 n).toNat

end

end A353495.P17176892177250390252

namespace A353495

/-- `A000035(A003415(n)-A351230(n))` -/
def P17176892177250390252.Spec : Prop :=
  ∀ n, P17176892177250390252.a n = A353495 n

end A353495

/-! ## A353495.P9647935268779319525

`A165560(A003415(n*A358680(n)))`
-/

namespace A353495.P9647935268779319525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 (A003415 ((n : ℤ) * A358680 n).toNat).toNat

end

end A353495.P9647935268779319525

namespace A353495

/-- `A165560(A003415(n*A358680(n)))` -/
def P9647935268779319525.Spec : Prop :=
  ∀ n, P9647935268779319525.a n = A353495 n

end A353495

/-! ## A353495.P13568613782470175025

`A000035(∑{d}[n, A300251(#)]-A351230(n))`
-/

namespace A353495.P13568613782470175025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (∑ d ∈ Nat.divisors (f1 n), A300251 d - A351230 n).toNat

end

end A353495.P13568613782470175025

namespace A353495

/-- `A000035(∑{d}[n, A300251(#)]-A351230(n))` -/
def P13568613782470175025.Spec : Prop :=
  ∀ n, P13568613782470175025.a n = A353495 n

end A353495

/-! ## A353495.P4578785838616586727

`A360109(n²)-A360109(n)`
-/

namespace A353495.P4578785838616586727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360109 (n ^ 2) - A360109 n

end

end A353495.P4578785838616586727

namespace A353495

/-- `A360109(n²)-A360109(n)` -/
def P4578785838616586727.Spec : Prop :=
  ∀ n, P4578785838616586727.a n = A353495 n

end A353495

/-!
# A353496: The arithmetic derivative of the largest proper divisor of n, reduced modulo 4, with a(1) = 0.

The programs for A353496, the canonical program `A353496.P13041128856613999985` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353496 has offset 1).

The definition of A353496 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032742, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353496.P13041128856613999985

`A353493(A032742(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A353496

/-- `A353493(A032742(n+1))` -/
def P13041128856613999985.Spec : Prop :=
  ∀ n, P13041128856613999985.a n = A353496 (n + 1)

theorem P13041128856613999985.correct : P13041128856613999985.Spec := by
  intro n
  simp only [A353496, Nat.add_sub_cancel]

end A353496

/-! ## A353496.P921802609959991056

`A003415(A117358(4*(n+1)))%4`
-/

namespace A353496.P921802609959991056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 (A117358 (4 * (n + 1))).toNat) 4

end

end A353496.P921802609959991056

namespace A353496

/-- `A003415(A117358(4*(n+1)))%4` -/
def P921802609959991056.Spec : Prop :=
  ∀ n, P921802609959991056.a n = A353496 (n + 1)

end A353496

/-! ## A353496.P4396823148348610747

`A353493(1-A060681(n+1)+n)`
-/

namespace A353496.P4396823148348610747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353493 (1 - A060681 (n + 1) + (n : ℤ)).toNat

end

end A353496.P4396823148348610747

namespace A353496

/-- `A353493(1-A060681(n+1)+n)` -/
def P4396823148348610747.Spec : Prop :=
  ∀ n, P4396823148348610747.a n = A353496 (n + 1)

theorem P4396823148348610747.correct : P4396823148348610747.Spec := by
  intro n
  simp only [A353496, Nat.add_sub_cancel, A353496.P4396823148348610747.a, A353496.P13041128856613999985.a, A032742, A032742.P14489579072839730134.a, A060681, A060681.P11747361826650309872.a, A353493, A353493.P11274573970098312358.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A020639, A020639.P7578813688609615429.a, A008578, A008578.P3639467937083264764.a, A055396, A055396.P18305262754425103137.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A061395, A061395.P8431317036300486107.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, A158611, A158611.P9275629407611603775.a, A243055, A243055.P2464886309294058059.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A353496

/-! ## A353496.P11391166495725960719

`A353493((n+1)/A020639(n+1))`
-/

namespace A353496.P11391166495725960719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353493 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))).toNat

end

end A353496.P11391166495725960719

namespace A353496

/-- `A353493((n+1)/A020639(n+1))` -/
def P11391166495725960719.Spec : Prop :=
  ∀ n, P11391166495725960719.a n = A353496 (n + 1)

end A353496

/-! ## A353496.P10580504779333186525

`A353493(A117818(n+1)%(n+1))`
-/

namespace A353496.P10580504779333186525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353493 (Int.tmod (A117818 (n + 1)) (n + 1 : ℤ)).toNat

end

end A353496.P10580504779333186525

namespace A353496

/-- `A353493(A117818(n+1)%(n+1))` -/
def P10580504779333186525.Spec : Prop :=
  ∀ n, P10580504779333186525.a n = A353496 (n + 1)

end A353496

/-! ## A353496.P13462944388606357798

`A353493(gcd(n+1, A060681(n+1)))`
-/

namespace A353496.P13462944388606357798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353493 (Int.gcd (n + 1 : ℤ) (A060681 (n + 1)))

end

end A353496.P13462944388606357798

namespace A353496

/-- `A353493(gcd(n+1, A060681(n+1)))` -/
def P13462944388606357798.Spec : Prop :=
  ∀ n, P13462944388606357798.a n = A353496 (n + 1)

end A353496

/-! ## A353496.P5108433506143711435

`A353493(xor(n+1, A106409(n+1)))`
-/

namespace A353496.P5108433506143711435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353493 (Int.xor (n + 1 : ℤ) (A106409 (n + 1))).toNat

end

end A353496.P5108433506143711435

namespace A353496

/-- `A353493(xor(n+1, A106409(n+1)))` -/
def P5108433506143711435.Spec : Prop :=
  ∀ n, P5108433506143711435.a n = A353496 (n + 1)

end A353496

/-! ## A353496.P15378380909826604484

`A003415(ceil(n/A020639(n+1)))%4`
-/

namespace A353496.P15378380909826604484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 ⌈(n : ℚ) / (A020639 (n + 1) : ℚ)⌉.toNat) 4

end

end A353496.P15378380909826604484

namespace A353496

/-- `A003415(ceil(n/A020639(n+1)))%4` -/
def P15378380909826604484.Spec : Prop :=
  ∀ n, P15378380909826604484.a n = A353496 (n + 1)

end A353496

/-! ## A353496.P5302863545860915495

`and(A003415(A032742(n+1)), A122553(n))`
-/

namespace A353496.P5302863545860915495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003415 (A032742 (n + 1)).toNat) (A122553 n)

end

end A353496.P5302863545860915495

namespace A353496

/-- `and(A003415(A032742(n+1)), A122553(n))` -/
def P5302863545860915495.Spec : Prop :=
  ∀ n, P5302863545860915495.a n = A353496 (n + 1)

end A353496

/-!
# A353497: The smallest prime factor of n, reduced modulo 4, with a(1) = 1.

The programs for A353497, the canonical program `A353497.P14884198898739531300` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353497 has offset 1).

The definition of A353497 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020639, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353497.P14884198898739531300

`A020639(n+1)%4`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A353497

/-- `A020639(n+1)%4` -/
def P14884198898739531300.Spec : Prop :=
  ∀ n, P14884198898739531300.a n = A353497 (n + 1)

theorem P14884198898739531300.correct : P14884198898739531300.Spec := by
  intro n
  simp only [A353497, Nat.add_sub_cancel]

end A353497

/-! ## A353497.P4069626751467636056

`A010873(A020639(n+1))`
-/

namespace A353497.P4069626751467636056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A020639 (n + 1)).toNat

end

end A353497.P4069626751467636056

namespace A353497

/-- `A010873(A020639(n+1))` -/
def P4069626751467636056.Spec : Prop :=
  ∀ n, P4069626751467636056.a n = A353497 (n + 1)

end A353497

/-! ## A353497.P14622967588900750117

`A286473(n+1)%4`
-/

namespace A353497.P14622967588900750117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286473 (n + 1)) 4

end

end A353497.P14622967588900750117

namespace A353497

/-- `A286473(n+1)%4` -/
def P14622967588900750117.Spec : Prop :=
  ∀ n, P14622967588900750117.a n = A353497 (n + 1)

end A353497

/-! ## A353497.P6987302893153357378

`and(3, sqrt(A088377(n+1)))`
-/

namespace A353497.P6987302893153357378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (SequenceMachineLib.roundAway (Real.sqrt (A088377 (n + 1) : ℝ)))

end

end A353497.P6987302893153357378

namespace A353497

/-- `and(3, sqrt(A088377(n+1)))` -/
def P6987302893153357378.Spec : Prop :=
  ∀ n, P6987302893153357378.a n = A353497 (n + 1)

end A353497

/-! ## A353497.P13205886504540044724

`and(3, A020639(C(n+1, n)))`
-/

namespace A353497.P13205886504540044724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A020639 (Nat.choose (n + 1) n))

end

end A353497.P13205886504540044724

namespace A353497

/-- `and(3, A020639(C(n+1, n)))` -/
def P13205886504540044724.Spec : Prop :=
  ∀ n, P13205886504540044724.a n = A353497 (n + 1)

end A353497

/-! ## A353497.P12678270409319849417

`∏{p}[A068794(n+1), #]%4`
-/

namespace A353497.P12678270409319849417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068794 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p) % 4

end

end A353497.P12678270409319849417

namespace A353497

/-- `∏{p}[A068794(n+1), #]%4` -/
def P12678270409319849417.Spec : Prop :=
  ∀ n, (P12678270409319849417.a n : ℤ) = A353497 (n + 1)

end A353497

/-! ## A353497.P2731915050425224151

`and(3, A020639(∏{p}[n+1, #]))`
-/

namespace A353497.P2731915050425224151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A020639 (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A353497.P2731915050425224151

namespace A353497

/-- `and(3, A020639(∏{p}[n+1, #]))` -/
def P2731915050425224151.Spec : Prop :=
  ∀ n, P2731915050425224151.a n = A353497 (n + 1)

end A353497

/-! ## A353497.P8590805898532094471

`and(3, A020639(abs(2-n)+3))`
-/

namespace A353497.P8590805898532094471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A020639 (|2 - (n : ℤ)| + 3).toNat)

end

end A353497.P8590805898532094471

namespace A353497

/-- `and(3, A020639(abs(2-n)+3))` -/
def P8590805898532094471.Spec : Prop :=
  ∀ n, P8590805898532094471.a n = A353497 (n + 1)

end A353497

/-! ## A353497.P17405664512257052574

`dr(A020639(2*n-(n-1))%4)`
-/

namespace A353497.P17405664512257052574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A020639 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat) 4)

end

end A353497.P17405664512257052574

namespace A353497

/-- `dr(A020639(2*n-(n-1))%4)` -/
def P17405664512257052574.Spec : Prop :=
  ∀ n, (P17405664512257052574.a n : ℤ) = A353497 (n + 1)

end A353497

/-! ## A353497.P12916714393540704071

`and(3, A020639(2*n+1-n)+4)`
-/

namespace A353497.P12916714393540704071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A020639 (2 * n + 1 - n) + 4)

end

end A353497.P12916714393540704071

namespace A353497

/-- `and(3, A020639(2*n+1-n)+4)` -/
def P12916714393540704071.Spec : Prop :=
  ∀ n, P12916714393540704071.a n = A353497 (n + 1)

end A353497

/-! ## A353497.P1123168860658368267

`A003324(A020639(n+1))`
-/

namespace A353497.P1123168860658368267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003324 (A020639 (n + 1)).toNat

end

end A353497.P1123168860658368267

namespace A353497

/-- `A003324(A020639(n+1))` -/
def P1123168860658368267.Spec : Prop :=
  ∀ n, P1123168860658368267.a n = A353497 (n + 1)

end A353497

/-! ## A353497.P17905454792536092207

`A010873(A286473(n+1))`
-/

namespace A353497.P17905454792536092207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A286473 (n + 1)).toNat

end

end A353497.P17905454792536092207

namespace A353497

/-- `A010873(A286473(n+1))` -/
def P17905454792536092207.Spec : Prop :=
  ∀ n, P17905454792536092207.a n = A353497 (n + 1)

end A353497

/-! ## A353497.P2036063634206087362

`A353490(2*A020639(n+1))`
-/

namespace A353497.P2036063634206087362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353490 (2 * A020639 (n + 1)).toNat

end

end A353497.P2036063634206087362

namespace A353497

/-- `A353490(2*A020639(n+1))` -/
def P2036063634206087362.Spec : Prop :=
  ∀ n, P2036063634206087362.a n = A353497 (n + 1)

end A353497

/-! ## A353497.P3526992827329629025

`A088378(n+1)%A010711(n)`
-/

namespace A353497.P3526992827329629025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088378 (n + 1)) (A010711 n)

end

end A353497.P3526992827329629025

namespace A353497

/-- `A088378(n+1)%A010711(n)` -/
def P3526992827329629025.Spec : Prop :=
  ∀ n, P3526992827329629025.a n = A353497 (n + 1)

end A353497

/-! ## A353497.P9179936201604391983

`and(A020639(n+1), A010704(n))`
-/

namespace A353497.P9179936201604391983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020639 (n + 1)) (A010704 n)

end

end A353497.P9179936201604391983

namespace A353497

/-- `and(A020639(n+1), A010704(n))` -/
def P9179936201604391983.Spec : Prop :=
  ∀ n, P9179936201604391983.a n = A353497 (n + 1)

end A353497

/-! ## A353497.P12228305431689435507

`and(A020639(n+1), A010705(n))`
-/

namespace A353497.P12228305431689435507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020639 (n + 1)) (A010705 n)

end

end A353497.P12228305431689435507

namespace A353497

/-- `and(A020639(n+1), A010705(n))` -/
def P12228305431689435507.Spec : Prop :=
  ∀ n, P12228305431689435507.a n = A353497 (n + 1)

end A353497

/-! ## A353497.P16402734918285185808

`and(A020639(n+1), A010708(n))`
-/

namespace A353497.P16402734918285185808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020639 (n + 1)) (A010708 n)

end

end A353497.P16402734918285185808

namespace A353497

/-- `and(A020639(n+1), A010708(n))` -/
def P16402734918285185808.Spec : Prop :=
  ∀ n, P16402734918285185808.a n = A353497 (n + 1)

end A353497

/-! ## A353497.P9986858986339272745

`and(A020639(n+1), A122553(n))`
-/

namespace A353497.P9986858986339272745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020639 (n + 1)) (A122553 n)

end

end A353497.P9986858986339272745

namespace A353497

/-- `and(A020639(n+1), A122553(n))` -/
def P9986858986339272745.Spec : Prop :=
  ∀ n, P9986858986339272745.a n = A353497 (n + 1)

end A353497

/-! ## A353497.P11183531588618324581

`and(A020639(n+1), A158799(n))`
-/

namespace A353497.P11183531588618324581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020639 (n + 1)) (A158799 n)

end

end A353497.P11183531588618324581

namespace A353497

/-- `and(A020639(n+1), A158799(n))` -/
def P11183531588618324581.Spec : Prop :=
  ∀ n, P11183531588618324581.a n = A353497 (n + 1)

end A353497

/-!
# A353498: a(n) = 1 if n > 1 and the 2-adic valuation of phi(n) does not exceed the 2-adic valuation of n-1, otherwise 0.

The programs for A353498, the canonical program `A353498.P9279087021698104160` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353498 has offset 1).

The definition of A353498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353498.P11665746012950171277

`and(A007664(n), A160595(n+1))`
-/

namespace A353498.P11665746012950171277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007664 n) (A160595 (n + 1))

end

end A353498.P11665746012950171277

namespace A353498

/-- `and(A007664(n), A160595(n+1))` -/
def P11665746012950171277.Spec : Prop :=
  ∀ n, P11665746012950171277.a n = A353498 (n + 1)

end A353498

/-! ## A353498.P15426457098027454459

`and(A054977(n), A160595(n+1))`
-/

namespace A353498.P15426457098027454459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054977 n) (A160595 (n + 1))

end

end A353498.P15426457098027454459

namespace A353498

/-- `and(A054977(n), A160595(n+1))` -/
def P15426457098027454459.Spec : Prop :=
  ∀ n, P15426457098027454459.a n = A353498 (n + 1)

end A353498

/-! ## A353498.P16155329420797482498

`and(A057427(n), A160595(n+1))`
-/

namespace A353498.P16155329420797482498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A160595 (n + 1))

end

end A353498.P16155329420797482498

namespace A353498

/-- `and(A057427(n), A160595(n+1))` -/
def P16155329420797482498.Spec : Prop :=
  ∀ n, P16155329420797482498.a n = A353498 (n + 1)

end A353498

/-! ## A353498.P9279087021698104160

`and(A019427(n)²²², A318829(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A353498

/-- `and(A019427(n)²²², A318829(n+1))` -/
def P9279087021698104160.Spec : Prop :=
  ∀ n, P9279087021698104160.a n = A353498 (n + 1)

theorem P9279087021698104160.correct : P9279087021698104160.Spec := by
  intro n
  simp only [A353498, Nat.add_sub_cancel]

end A353498

/-! ## A353498.P18017596126728871244

`and(1, A006686(n+1)*A160595(n+1))`
-/

namespace A353498.P18017596126728871244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A006686 (n + 1) * A160595 (n + 1))

end

end A353498.P18017596126728871244

namespace A353498

/-- `and(1, A006686(n+1)*A160595(n+1))` -/
def P18017596126728871244.Spec : Prop :=
  ∀ n, P18017596126728871244.a n = A353498 (n + 1)

end A353498

/-! ## A353498.P542118471414933313

`and(char[A305815(n+1)], A160595(n+1))`
-/

namespace A353498.P542118471414933313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305815 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A160595 (n + 1))

end

end A353498.P542118471414933313

namespace A353498

/-- `and(char[A305815(n+1)], A160595(n+1))` -/
def P542118471414933313.Spec : Prop :=
  ∀ n, P542118471414933313.a n = A353498 (n + 1)

end A353498

/-! ## A353498.P47260129131197596

`and(A052552(n), A160595(n+1))`
-/

namespace A353498.P47260129131197596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052552 n) (A160595 (n + 1))

end

end A353498.P47260129131197596

namespace A353498

/-- `and(A052552(n), A160595(n+1))` -/
def P47260129131197596.Spec : Prop :=
  ∀ n, P47260129131197596.a n = A353498 (n + 1)

end A353498

/-! ## A353498.P7556872830412143726

`and(A051032(n+1), A160595(n+1))`
-/

namespace A353498.P7556872830412143726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051032 (n + 1)) (A160595 (n + 1))

end

end A353498.P7556872830412143726

namespace A353498

/-- `and(A051032(n+1), A160595(n+1))` -/
def P7556872830412143726.Spec : Prop :=
  ∀ n, P7556872830412143726.a n = A353498 (n + 1)

end A353498

/-! ## A353498.P13721527539231111789

`and(A052950(n), A160595(n+1))`
-/

namespace A353498.P13721527539231111789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052950 n) (A160595 (n + 1))

end

end A353498.P13721527539231111789

namespace A353498

/-- `and(A052950(n), A160595(n+1))` -/
def P13721527539231111789.Spec : Prop :=
  ∀ n, P13721527539231111789.a n = A353498 (n + 1)

end A353498

/-! ## A353498.P5595914254636107368

`and(A127904(n), A160595(n+1))`
-/

namespace A353498.P5595914254636107368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127904 n) (A160595 (n + 1))

end

end A353498.P5595914254636107368

namespace A353498

/-- `and(A127904(n), A160595(n+1))` -/
def P5595914254636107368.Spec : Prop :=
  ∀ n, P5595914254636107368.a n = A353498 (n + 1)

end A353498

/-! ## A353498.P14461135134891067550

`and(A000051(n), A160595(n+1))`
-/

namespace A353498.P14461135134891067550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000051 n) (A160595 (n + 1))

end

end A353498.P14461135134891067550

namespace A353498

/-- `and(A000051(n), A160595(n+1))` -/
def P14461135134891067550.Spec : Prop :=
  ∀ n, P14461135134891067550.a n = A353498 (n + 1)

end A353498

/-! ## A353498.P11890199937017416208

`and(A157240(n), A160595(n+1))`
-/

namespace A353498.P11890199937017416208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A157240 n) (A160595 (n + 1))

end

end A353498.P11890199937017416208

namespace A353498

/-- `and(A157240(n), A160595(n+1))` -/
def P11890199937017416208.Spec : Prop :=
  ∀ n, P11890199937017416208.a n = A353498 (n + 1)

end A353498

/-! ## A353498.P3893583863441990499

`and(A083575(n), A160595(n+1))`
-/

namespace A353498.P3893583863441990499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083575 n) (A160595 (n + 1))

end

end A353498.P3893583863441990499

namespace A353498

/-- `and(A083575(n), A160595(n+1))` -/
def P3893583863441990499.Spec : Prop :=
  ∀ n, P3893583863441990499.a n = A353498 (n + 1)

end A353498

/-! ## A353498.P16839055936955296808

`and(A083686(n), A160595(n+1))`
-/

namespace A353498.P16839055936955296808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083686 n) (A160595 (n + 1))

end

end A353498.P16839055936955296808

namespace A353498

/-- `and(A083686(n), A160595(n+1))` -/
def P16839055936955296808.Spec : Prop :=
  ∀ n, P16839055936955296808.a n = A353498 (n + 1)

end A353498

/-! ## A353498.P384969341076189238

`and(A083705(n), A160595(n+1))`
-/

namespace A353498.P384969341076189238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083705 n) (A160595 (n + 1))

end

end A353498.P384969341076189238

namespace A353498

/-- `and(A083705(n), A160595(n+1))` -/
def P384969341076189238.Spec : Prop :=
  ∀ n, P384969341076189238.a n = A353498 (n + 1)

end A353498

/-! ## A353498.P18347209635557295848

`and(A083683(n), A160595(n+1))`
-/

namespace A353498.P18347209635557295848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083683 n) (A160595 (n + 1))

end

end A353498.P18347209635557295848

namespace A353498

/-- `and(A083683(n), A160595(n+1))` -/
def P18347209635557295848.Spec : Prop :=
  ∀ n, P18347209635557295848.a n = A353498 (n + 1)

end A353498

/-! ## A353498.P6834890305255172909

`and(A160595(n+1), A168596(n))`
-/

namespace A353498.P6834890305255172909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A160595 (n + 1)) (A168596 n)

end

end A353498.P6834890305255172909

namespace A353498

/-- `and(A160595(n+1), A168596(n))` -/
def P6834890305255172909.Spec : Prop :=
  ∀ n, P6834890305255172909.a n = A353498 (n + 1)

end A353498

/-! ## A353498.P7943454081791029409

`and(A035089(n), A160595(n+1))`
-/

namespace A353498.P7943454081791029409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035089 n) (A160595 (n + 1))

end

end A353498.P7943454081791029409

namespace A353498

/-- `and(A035089(n), A160595(n+1))` -/
def P7943454081791029409.Spec : Prop :=
  ∀ n, P7943454081791029409.a n = A353498 (n + 1)

end A353498

/-! ## A353498.P11384719273188620074

`and(A160595(n+1), A206371(n))`
-/

namespace A353498.P11384719273188620074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A160595 (n + 1)) (A206371 n)

end

end A353498.P11384719273188620074

namespace A353498

/-- `and(A160595(n+1), A206371(n))` -/
def P11384719273188620074.Spec : Prop :=
  ∀ n, P11384719273188620074.a n = A353498 (n + 1)

end A353498

/-!
# A353499: a(n) = 1 if n is a squarefree number for which the 2-adic valuation of phi(n) does not exceed the 2-adic valuation of n-1, otherwise 0.

The programs for A353499, the canonical program `A353499.P10127813509975770335` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353499 has offset 1).

The definition of A353499 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353498, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353499.P10127813509975770335

`A008966(n+1)*A353498(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A353499

/-- `A008966(n+1)*A353498(n+1)` -/
def P10127813509975770335.Spec : Prop :=
  ∀ n, P10127813509975770335.a n = A353499 (n + 1)

theorem P10127813509975770335.correct : P10127813509975770335.Spec := by
  intro n
  simp only [A353499, Nat.add_sub_cancel]

end A353499

/-! ## A353499.P3291113103809857132

`char[A339817(n+1)-1]`
-/

namespace A353499.P3291113103809857132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339817 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353499.P3291113103809857132

namespace A353499

/-- `char[A339817(n+1)-1]` -/
def P3291113103809857132.Spec : Prop :=
  ∀ n, (P3291113103809857132.a n : ℤ) = A353499 (n + 1)

end A353499

/-! ## A353499.P5365929430249380600

`A353498(A322857(n+1))`
-/

namespace A353499.P5365929430249380600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353498 (A322857 (n + 1)).toNat

end

end A353499.P5365929430249380600

namespace A353499

/-- `A353498(A322857(n+1))` -/
def P5365929430249380600.Spec : Prop :=
  ∀ n, P5365929430249380600.a n = A353499 (n + 1)

end A353499

/-! ## A353499.P13692195876394588794

`A353498(A323309(n+1))`
-/

namespace A353499.P13692195876394588794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353498 (A323309 (n + 1)).toNat

end

end A353499.P13692195876394588794

namespace A353499

/-- `A353498(A323309(n+1))` -/
def P13692195876394588794.Spec : Prop :=
  ∀ n, P13692195876394588794.a n = A353499 (n + 1)

end A353499

/-! ## A353499.P12552512411067038071

`A353498(A336465(n+1))`
-/

namespace A353499.P12552512411067038071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353498 (A336465 (n + 1)).toNat

end

end A353499.P12552512411067038071

namespace A353499

/-- `A353498(A336465(n+1))` -/
def P12552512411067038071.Spec : Prop :=
  ∀ n, P12552512411067038071.a n = A353499 (n + 1)

end A353499

/-! ## A353499.P15837945967536686295

`A353498(A361174(n+1))`
-/

namespace A353499.P15837945967536686295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353498 (A361174 (n + 1)).toNat

end

end A353499.P15837945967536686295

namespace A353499

/-- `A353498(A361174(n+1))` -/
def P15837945967536686295.Spec : Prop :=
  ∀ n, P15837945967536686295.a n = A353499 (n + 1)

end A353499

/-! ## A353499.P1153175705412732687

`and(A002033(n), A353498(n+1))`
-/

namespace A353499.P1153175705412732687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002033 n) (A353498 (n + 1))

end

end A353499.P1153175705412732687

namespace A353499

/-- `and(A002033(n), A353498(n+1))` -/
def P1153175705412732687.Spec : Prop :=
  ∀ n, P1153175705412732687.a n = A353499 (n + 1)

end A353499

/-! ## A353499.P3344042832705790886

`and(A195588(n), A353498(n+1))`
-/

namespace A353499.P3344042832705790886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195588 n) (A353498 (n + 1))

end

end A353499.P3344042832705790886

namespace A353499

/-- `and(A195588(n), A353498(n+1))` -/
def P3344042832705790886.Spec : Prop :=
  ∀ n, P3344042832705790886.a n = A353499 (n + 1)

end A353499

/-! ## A353499.P6987901557777607637

`A353498((n+1)*A007424(n+1))`
-/

namespace A353499.P6987901557777607637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353498 ((n + 1 : ℤ) * A007424 (n + 1)).toNat

end

end A353499.P6987901557777607637

namespace A353499

/-- `A353498((n+1)*A007424(n+1))` -/
def P6987901557777607637.Spec : Prop :=
  ∀ n, P6987901557777607637.a n = A353499 (n + 1)

end A353499

/-! ## A353499.P12801360697934071852

`A323154(n+1)*A353498(n+1)`
-/

namespace A353499.P12801360697934071852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323154 (n + 1) * A353498 (n + 1)

end

end A353499.P12801360697934071852

namespace A353499

/-- `A323154(n+1)*A353498(n+1)` -/
def P12801360697934071852.Spec : Prop :=
  ∀ n, P12801360697934071852.a n = A353499 (n + 1)

end A353499

/-! ## A353499.P8366120938564715038

`A353498(n+1)*A353559(n+1)`
-/

namespace A353499.P8366120938564715038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353498 (n + 1) * A353559 (n + 1)

end

end A353499.P8366120938564715038

namespace A353499

/-- `A353498(n+1)*A353559(n+1)` -/
def P8366120938564715038.Spec : Prop :=
  ∀ n, P8366120938564715038.a n = A353499 (n + 1)

end A353499

/-! ## A353499.P2997060763322162490

`A353498(n+1)*A353627(n+1)`
-/

namespace A353499.P2997060763322162490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353498 (n + 1) * A353627 (n + 1)

end

end A353499.P2997060763322162490

namespace A353499

/-- `A353498(n+1)*A353627(n+1)` -/
def P2997060763322162490.Spec : Prop :=
  ∀ n, P2997060763322162490.a n = A353499 (n + 1)

end A353499

/-! ## A353499.P7182281056557799144

`and(A007424(n+1), A353498(n+1))`
-/

namespace A353499.P7182281056557799144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007424 (n + 1)) (A353498 (n + 1))

end

end A353499.P7182281056557799144

namespace A353499

/-- `and(A007424(n+1), A353498(n+1))` -/
def P7182281056557799144.Spec : Prop :=
  ∀ n, P7182281056557799144.a n = A353499 (n + 1)

end A353499

/-! ## A353499.P13659813625464898260

`and(A007444(n+1), A353498(n+1))`
-/

namespace A353499.P13659813625464898260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007444 (n + 1)) (A353498 (n + 1))

end

end A353499.P13659813625464898260

namespace A353499

/-- `and(A007444(n+1), A353498(n+1))` -/
def P13659813625464898260.Spec : Prop :=
  ∀ n, P13659813625464898260.a n = A353499 (n + 1)

end A353499

/-! ## A353499.P4583483940724084583

`and(A008683(n+1), A353498(n+1))`
-/

namespace A353499.P4583483940724084583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008683 (n + 1)) (A353498 (n + 1))

end

end A353499.P4583483940724084583

namespace A353499

/-- `and(A008683(n+1), A353498(n+1))` -/
def P4583483940724084583.Spec : Prop :=
  ∀ n, P4583483940724084583.a n = A353499 (n + 1)

end A353499

/-! ## A353499.P9056816383810061671

`A069158(n+1)*A069158(n+1)*A353498(n+1)`
-/

namespace A353499.P9056816383810061671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069158 (n + 1) * A069158 (n + 1) * A353498 (n + 1)

end

end A353499.P9056816383810061671

namespace A353499

/-- `A069158(n+1)*A069158(n+1)*A353498(n+1)` -/
def P9056816383810061671.Spec : Prop :=
  ∀ n, P9056816383810061671.a n = A353499 (n + 1)

end A353499

/-! ## A353499.P10377959477129360293

`A353498(A003968(n+1))`
-/

namespace A353499.P10377959477129360293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353498 (A003968 (n + 1)).toNat

end

end A353499.P10377959477129360293

namespace A353499

/-- `A353498(A003968(n+1))` -/
def P10377959477129360293.Spec : Prop :=
  ∀ n, P10377959477129360293.a n = A353499 (n + 1)

end A353499

/-! ## A353499.P9158389692446201618

`and(A006241(n+1), A353498(n+1))`
-/

namespace A353499.P9158389692446201618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006241 (n + 1)) (A353498 (n + 1))

end

end A353499.P9158389692446201618

namespace A353499

/-- `and(A006241(n+1), A353498(n+1))` -/
def P9158389692446201618.Spec : Prop :=
  ∀ n, P9158389692446201618.a n = A353499 (n + 1)

end A353499

/-! ## A353499.P6675182175226342043

`and(A011957(n+1), A353498(n+1))`
-/

namespace A353499.P6675182175226342043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011957 (n + 1)) (A353498 (n + 1))

end

end A353499.P6675182175226342043

namespace A353499

/-- `and(A011957(n+1), A353498(n+1))` -/
def P6675182175226342043.Spec : Prop :=
  ∀ n, P6675182175226342043.a n = A353499 (n + 1)

end A353499

