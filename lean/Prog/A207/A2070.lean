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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A207000: T(n,k)=Number of nXk 0..1 arrays avoiding 0 1 0 horizontally and 0 1 1 vertically.

The programs for A207000, there is no canonical definition to state claims against.
-/

/-! ## A207000.P7227235424498287396

`A206883(n+1)+A178798(A100861(n))`
-/

namespace A207000.P7227235424498287396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206883 (n + 1) + A178798 (A100861 n).toNat

end

end A207000.P7227235424498287396

/-! ## A207000.P17225195252592307940

`A206883(n+1)-A025465(A132832(n))`
-/

namespace A207000.P17225195252592307940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206883 (n + 1) - A025465 (A132832 n).toNat

end

end A207000.P17225195252592307940

/-! ## A207000.P5292671600724318891

`A206883(n+1)-A186747(A156565(n))`
-/

namespace A207000.P5292671600724318891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206883 (n + 1) - A186747 (A156565 n).toNat

end

end A207000.P5292671600724318891

/-! ## A207000.P16602225152562249718

`A206883(n+1)-A336355(A007481(n))`
-/

namespace A207000.P16602225152562249718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206883 (n + 1) - A336355 (A007481 n).toNat

end

end A207000.P16602225152562249718

/-! ## A207000.P4655373709181603902

`A206883(n+1)-A336355(A028909(n))`
-/

namespace A207000.P4655373709181603902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206883 (n + 1) - A336355 (A028909 n).toNat

end

end A207000.P4655373709181603902

/-!
# A207001: Number of 4Xn 0..1 arrays avoiding 0 1 0 horizontally and 0 1 1 vertically.

The programs for A207001, there is no canonical definition to state claims against.
-/

/-! ## A207001.P6295569360735228207

`A207000(A141214(n)+7)`
-/

namespace A207001.P6295569360735228207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207000 (A141214 n + 7).toNat

end

end A207001.P6295569360735228207

/-! ## A207001.P1873922542172659739

`A207000(A052905(n)+9)`
-/

namespace A207001.P1873922542172659739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207000 (A052905 n + 9).toNat

end

end A207001.P1873922542172659739

/-! ## A207001.P14273028475662295186

`A207000(A055999(n)+10)`
-/

namespace A207001.P14273028475662295186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207000 (A055999 n + 10).toNat

end

end A207001.P14273028475662295186

/-! ## A207001.P3722982284579429977

`A207000(A167614(n+2)+1)`
-/

namespace A207001.P3722982284579429977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207000 (A167614 (n + 2) + 1).toNat

end

end A207001.P3722982284579429977

/-! ## A207001.P5427528750635883560

`A207000(A000217(n+3)+4)`
-/

namespace A207001.P5427528750635883560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207000 (A000217 (n + 3) + 4).toNat

end

end A207001.P5427528750635883560

/-!
# A207002: Number of 5Xn 0..1 arrays avoiding 0 1 0 horizontally and 0 1 1 vertically.

The programs for A207002, there is no canonical definition to state claims against.
-/

/-! ## A207002.P8336387012420768909

`A207000(A167499(n+3))`
-/

namespace A207002.P8336387012420768909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207000 (A167499 (n + 3)).toNat

end

end A207002.P8336387012420768909

/-! ## A207002.P14278956540992553426

`A207000(A155212(n)+13)`
-/

namespace A207002.P14278956540992553426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207000 (A155212 n + 13).toNat

end

end A207002.P14278956540992553426

/-! ## A207002.P3798191826725261125

`A207000(A000217(n+4)+5)`
-/

namespace A207002.P3798191826725261125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207000 (A000217 (n + 4) + 5).toNat

end

end A207002.P3798191826725261125

/-! ## A207002.P7806927295741628758

`A207000(eq[6, A131818(n+1)])`
-/

namespace A207002.P7806927295741628758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207002.P7806927295741628758

/-! ## A207002.P5192296736195531855

`A207000(A173036(n)+A016825(n))`
-/

namespace A207002.P5192296736195531855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207000 (A173036 n + A016825 n).toNat

end

end A207002.P5192296736195531855

/-!
# A207003: Number of 6Xn 0..1 arrays avoiding 0 1 0 horizontally and 0 1 1 vertically.

The programs for A207003, there is no canonical definition to state claims against.
-/

/-! ## A207003.P17421574209143947730

`A207000(A167614(n+4)+3)`
-/

namespace A207003.P17421574209143947730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207000 (A167614 (n + 4) + 3).toNat

end

end A207003.P17421574209143947730

/-! ## A207003.P18408644000781678151

`A207000(A000096(n+4)+7)`
-/

namespace A207003.P18408644000781678151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207000 (A000096 (n + 4) + 7).toNat

end

end A207003.P18408644000781678151

/-! ## A207003.P6922543893403816716

`A207000(A141214(n+2)+9)`
-/

namespace A207003.P6922543893403816716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207000 (A141214 (n + 2) + 9).toNat

end

end A207003.P6922543893403816716

/-! ## A207003.P4645702852456650341

`A207000(A055999(n+2)+12)`
-/

namespace A207003.P4645702852456650341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207000 (A055999 (n + 2) + 12).toNat

end

end A207003.P4645702852456650341

/-! ## A207003.P13702346578786944763

`A207000(eq[7, A131818(n+1)])`
-/

namespace A207003.P13702346578786944763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207003.P13702346578786944763

/-!
# A207004: Number of 7Xn 0..1 arrays avoiding 0 1 0 horizontally and 0 1 1 vertically.

The programs for A207004, there is no canonical definition to state claims against.
-/

/-! ## A207004.P2152655250858454232

`A207000(A302537(n)+27)`
-/

namespace A207004.P2152655250858454232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207000 (A302537 n + 27).toNat

end

end A207004.P2152655250858454232

/-! ## A207004.P18287474578641759295

`A207000(A056119(n)+28)`
-/

namespace A207004.P18287474578641759295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207000 (A056119 n + 28).toNat

end

end A207004.P18287474578641759295

/-! ## A207004.P15255421111006191053

`A207000(eq[11, A066657(n)])`
-/

namespace A207004.P15255421111006191053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207004.P15255421111006191053

/-! ## A207004.P8918932385288271961

`A207000(A167499(n+5)+2)`
-/

namespace A207004.P8918932385288271961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207000 (A167499 (n + 5) + 2).toNat

end

end A207004.P8918932385288271961

/-! ## A207004.P972412309993066289

`A207000(eq[8, A131818(n+1)])`
-/

namespace A207004.P972412309993066289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207004.P972412309993066289

/-!
# A207005: Numbers k such that omega(k) = omega(k - omega(k)) where omega(k) is the number of distinct primes dividing k.

The programs for A207005, the canonical program `A207005.P8295083017489759373` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207005 has offset 1).

The definition of A207005 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207005.P8295083017489759373

`eq[A001221(n+1-A001221(n+1)), A001221(n+1)]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A207005

/-- `eq[A001221(n+1-A001221(n+1)), A001221(n+1)]+1` -/
def P8295083017489759373.Spec : Prop :=
  ∀ n, (P8295083017489759373.a n : ℤ) = A207005 (n + 1)

theorem P8295083017489759373.correct : P8295083017489759373.Spec := by
  intro n
  simp only [A207005, Nat.add_sub_cancel]

end A207005

/-! ## A207005.P1698553067804747982

`A229109(A207006(n+1))%A005117(A005846(2*n+1))`
-/

namespace A207005.P1698553067804747982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229109 (A207006 (n + 1)).toNat) (A005117 (A005846 (2 * n + 1)).toNat)

end

end A207005.P1698553067804747982

namespace A207005

/-- `A229109(A207006(n+1))%A005117(A005846(2*n+1))` -/
def P1698553067804747982.Spec : Prop :=
  ∀ n, P1698553067804747982.a n = A207005 (n + 1)

end A207005

/-! ## A207005.P7307061247803630492

`A229109(A207006(n+1))%A356449(A005846(n+1))`
-/

namespace A207005.P7307061247803630492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229109 (A207006 (n + 1)).toNat) (A356449 (A005846 (n + 1)).toNat)

end

end A207005.P7307061247803630492

namespace A207005

/-- `A229109(A207006(n+1))%A356449(A005846(n+1))` -/
def P7307061247803630492.Spec : Prop :=
  ∀ n, P7307061247803630492.a n = A207005 (n + 1)

end A207005

/-! ## A207005.P4224602829025886120

`A036225(A108611(n))*A229109(A207006(n+1))`
-/

namespace A207005.P4224602829025886120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 (A108611 n).toNat * A229109 (A207006 (n + 1)).toNat

end

end A207005.P4224602829025886120

namespace A207005

/-- `A036225(A108611(n))*A229109(A207006(n+1))` -/
def P4224602829025886120.Spec : Prop :=
  ∀ n, P4224602829025886120.a n = A207005 (n + 1)

end A207005

/-! ## A207005.P10967495520086259599

`A052126(A262840(n+1))*A229109(A207006(n+1))`
-/

namespace A207005.P10967495520086259599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A262840 (n + 1)).toNat * A229109 (A207006 (n + 1)).toNat

end

end A207005.P10967495520086259599

namespace A207005

/-- `A052126(A262840(n+1))*A229109(A207006(n+1))` -/
def P10967495520086259599.Spec : Prop :=
  ∀ n, P10967495520086259599.a n = A207005 (n + 1)

end A207005

/-! ## A207005.P16438452774553785954

`A065295(A065296(n+1))*A229109(A207006(n+1))`
-/

namespace A207005.P16438452774553785954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065295 (A065296 (n + 1)).toNat * A229109 (A207006 (n + 1)).toNat

end

end A207005.P16438452774553785954

namespace A207005

/-- `A065295(A065296(n+1))*A229109(A207006(n+1))` -/
def P16438452774553785954.Spec : Prop :=
  ∀ n, P16438452774553785954.a n = A207005 (n + 1)

end A207005

/-! ## A207005.P5122597995673634692

`A102683(A339060(n))!*A229109(A207006(n+1))`
-/

namespace A207005.P5122597995673634692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A102683 (A339060 n).toNat).toNat : ℤ) * A229109 (A207006 (n + 1)).toNat

end

end A207005.P5122597995673634692

namespace A207005

/-- `A102683(A339060(n))!*A229109(A207006(n+1))` -/
def P5122597995673634692.Spec : Prop :=
  ∀ n, P5122597995673634692.a n = A207005 (n + 1)

end A207005

/-! ## A207005.P8823485371334847046

`A229109(A207006(n+1)%A065320(n+1))`
-/

namespace A207005.P8823485371334847046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229109 (Int.tmod (A207006 (n + 1)) (A065320 (n + 1))).toNat

end

end A207005.P8823485371334847046

namespace A207005

/-- `A229109(A207006(n+1)%A065320(n+1))` -/
def P8823485371334847046.Spec : Prop :=
  ∀ n, P8823485371334847046.a n = A207005 (n + 1)

end A207005

/-! ## A207005.P2632242490548758825

`A010054(A184387(n+1))*A229109(A207006(n+1))`
-/

namespace A207005.P2632242490548758825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A184387 (n + 1)).toNat * A229109 (A207006 (n + 1)).toNat

end

end A207005.P2632242490548758825

namespace A207005

/-- `A010054(A184387(n+1))*A229109(A207006(n+1))` -/
def P2632242490548758825.Spec : Prop :=
  ∀ n, P2632242490548758825.a n = A207005 (n + 1)

end A207005

/-!
# A207006: Numbers n such that omega(n) = omega(n + omega(n)) where omega(n) is the number of distinct primes dividing n.

The programs for A207006, the canonical program `A207006.P17524923869019092889` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207006 has offset 1).

The definition of A207006 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207006.P17524923869019092889

`eq[A001221(A001221(n+1)+n+1), A001221(n+1)]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A207006

/-- `eq[A001221(A001221(n+1)+n+1), A001221(n+1)]+1` -/
def P17524923869019092889.Spec : Prop :=
  ∀ n, (P17524923869019092889.a n : ℤ) = A207006 (n + 1)

theorem P17524923869019092889.correct : P17524923869019092889.Spec := by
  intro n
  simp only [A207006, Nat.add_sub_cancel]

end A207006

/-! ## A207006.P16976634519721609695

`eq[A001221(n+1), A001221(A229109(n+1))]+1`
-/

namespace A207006.P16976634519721609695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A229109 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A207006.P16976634519721609695

namespace A207006

/-- `eq[A001221(n+1), A001221(A229109(n+1))]+1` -/
def P16976634519721609695.Spec : Prop :=
  ∀ n, (P16976634519721609695.a n : ℤ) = A207006 (n + 1)

end A207006

/-!
# A207007: Number of n X n 0..2 arrays avoiding the patterns z z+1 z or z z-1 z in any row or column.

The programs for A207007, there is no canonical definition to state claims against.
-/

/-! ## A207007.P18444667311053995436

`A207015(∑[4*n]+1)`
-/

namespace A207007.P18444667311053995436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207015 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207007.P18444667311053995436

/-! ## A207007.P9309705002423037638

`A207015(A001844(n))+floor(n/10)`
-/

namespace A207007.P9309705002423037638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207015 (A001844 n).toNat + ⌊(n : ℚ) / 10⌋

end

end A207007.P9309705002423037638

/-! ## A207007.P4084496734302563492

`record[A003982(n)*A207015(n+1)]`
-/

namespace A207007.P4084496734302563492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A207015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207007.P4084496734302563492

/-!
# A207008: Number of n X 1 0..2 arrays avoiding the patterns z z+1 z or z z-1 z in any row or column.

The programs for A207008, the canonical program `A207008.P10057501371183917737` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207008 has offset 1).

The definition of A207008 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207008.P16324294226110770905

`ogf((3+2x^2+4x^3)/(1-3x+2x^2-2x^3-2x^4))`
-/

namespace A207008.P16324294226110770905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, 2, 4] [1, -3, 2, -2, -2] n

end

end A207008.P16324294226110770905

namespace A207008

/-- `ogf((3+2x^2+4x^3)/(1-3x+2x^2-2x^3-2x^4))` -/
def P16324294226110770905.Spec : Prop :=
  ∀ n, P16324294226110770905.a n = A207008 (n + 1)

end A207008

/-! ## A207008.P10057501371183917737

`3*a(n-1)-2*a(n-2)+2*a(n-3)+2*a(n-4)` with `a(0)=3, a(1)=9, a(2)=23, a(3)=61`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A207008

/-- `3*a(n-1)-2*a(n-2)+2*a(n-3)+2*a(n-4)` -/
def P10057501371183917737.Spec : Prop :=
  ∀ n, P10057501371183917737.a n = A207008 (n + 1)

theorem P10057501371183917737.correct : P10057501371183917737.Spec := by
  intro n
  simp only [A207008, Nat.add_sub_cancel]

end A207008

/-! ## A207008.P439869670657506855

`sqrt(A207009(n+1))`
-/

namespace A207008.P439869670657506855
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207009 (n + 1) : ℝ)

end

end A207008.P439869670657506855

namespace A207008

/-- `sqrt(A207009(n+1))` -/
def P439869670657506855.Spec : Prop :=
  ∀ n, P439869670657506855.a n = (A207008 (n + 1) : ℝ)

end A207008

/-! ## A207008.P12320667054918948284

`A207009(A000027(n+1))^(1/2)`
-/

namespace A207008.P12320667054918948284
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A207009 (A000027 (n + 1)).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A207008.P12320667054918948284

namespace A207008

/-- `A207009(A000027(n+1))^(1/2)` -/
def P12320667054918948284.Spec : Prop :=
  ∀ n, P12320667054918948284.a n = (A207008 (n + 1) : ℝ)

end A207008

/-! ## A207008.P7789795372632904788

`root(A207009(n+1), gcd(2, A005843(n)))`
-/

namespace A207008.P7789795372632904788
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A207009 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A005843 n) : ℝ))

end

end A207008.P7789795372632904788

namespace A207008

/-- `root(A207009(n+1), gcd(2, A005843(n)))` -/
def P7789795372632904788.Spec : Prop :=
  ∀ n, P7789795372632904788.a n = (A207008 (n + 1) : ℝ)

end A207008

/-! ## A207008.P12515586730727479795

`root(A207009(n+1), 2%A207015(n+1))`
-/

namespace A207008.P12515586730727479795
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A207009 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A207015 (n + 1)) : ℝ))

end

end A207008.P12515586730727479795

namespace A207008

/-- `root(A207009(n+1), 2%A207015(n+1))` -/
def P12515586730727479795.Spec : Prop :=
  ∀ n, P12515586730727479795.a n = (A207008 (n + 1) : ℝ)

end A207008

/-!
# A207009: Number of n X 2 0..2 arrays avoiding the patterns z z+1 z or z z-1 z in any row or column.

The programs for A207009, the canonical program `A207009.P2091392009472730723` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207009 has offset 1).

The definition of A207009 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A207008, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A207009.P2091392009472730723

`A207008(n+1)²`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A207009

/-- `A207008(n+1)²` -/
def P2091392009472730723.Spec : Prop :=
  ∀ n, P2091392009472730723.a n = A207009 (n + 1)

theorem P2091392009472730723.correct : P2091392009472730723.Spec := by
  intro n
  simp only [A207009, Nat.add_sub_cancel]

end A207009

/-! ## A207009.P14219981736397849578

`record[A207008(A133310(n))²]`
-/

namespace A207009.P14219981736397849578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207008 (A133310 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207009.P14219981736397849578

namespace A207009

/-- `record[A207008(A133310(n))²]` -/
def P14219981736397849578.Spec : Prop :=
  ∀ n, P14219981736397849578.a n = A207009 (n + 1)

end A207009

/-! ## A207009.P11691082649127425802

`A207008(n+1)^A001316(A001316(n))`
-/

namespace A207009.P11691082649127425802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207008 (n + 1) : ℚ) ^ (A001316 (A001316 n).toNat : ℤ)

end

end A207009.P11691082649127425802

namespace A207009

/-- `A207008(n+1)^A001316(A001316(n))` -/
def P11691082649127425802.Spec : Prop :=
  ∀ n, P11691082649127425802.a n = (A207009 (n + 1) : ℚ)

end A207009

/-! ## A207009.P4165901169821168875

`A207008(n+1)^A137397(A112316(n))`
-/

namespace A207009.P4165901169821168875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207008 (n + 1) : ℚ) ^ (A137397 (A112316 n).toNat : ℤ)

end

end A207009.P4165901169821168875

namespace A207009

/-- `A207008(n+1)^A137397(A112316(n))` -/
def P4165901169821168875.Spec : Prop :=
  ∀ n, P4165901169821168875.a n = (A207009 (n + 1) : ℚ)

end A207009

/-! ## A207009.P7879036451576149699

`record[A207008(A133310(n))]*A207008(n+1)`
-/

namespace A207009.P7879036451576149699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207008 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A207008 (n + 1)

end

end A207009.P7879036451576149699

namespace A207009

/-- `record[A207008(A133310(n))]*A207008(n+1)` -/
def P7879036451576149699.Spec : Prop :=
  ∀ n, P7879036451576149699.a n = A207009 (n + 1)

end A207009

/-! ## A207009.P4566449456023111365

`A207008(A000027(n+1))*A207008(n+1)`
-/

namespace A207009.P4566449456023111365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207008 (A000027 (n + 1)).toNat * A207008 (n + 1)

end

end A207009.P4566449456023111365

namespace A207009

/-- `A207008(A000027(n+1))*A207008(n+1)` -/
def P4566449456023111365.Spec : Prop :=
  ∀ n, P4566449456023111365.a n = A207009 (n + 1)

end A207009

/-! ## A207009.P6691227479964628524

`A207008(n+1)^A000005(A207039(n+1))`
-/

namespace A207009.P6691227479964628524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207008 (n + 1) : ℚ) ^ (A000005 (A207039 (n + 1)).toNat : ℤ)

end

end A207009.P6691227479964628524

namespace A207009

/-- `A207008(n+1)^A000005(A207039(n+1))` -/
def P6691227479964628524.Spec : Prop :=
  ∀ n, P6691227479964628524.a n = (A207009 (n + 1) : ℚ)

end A207009

/-! ## A207009.P16885931994479694962

`A207008(n+1)^A001222(2*A006530(n+2))`
-/

namespace A207009.P16885931994479694962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207008 (n + 1) : ℚ) ^ (A001222 (2 * A006530 (n + 2)).toNat : ℤ)

end

end A207009.P16885931994479694962

namespace A207009

/-- `A207008(n+1)^A001222(2*A006530(n+2))` -/
def P16885931994479694962.Spec : Prop :=
  ∀ n, P16885931994479694962.a n = (A207009 (n + 1) : ℚ)

end A207009

/-! ## A207009.P8305210662315664083

`A207008(n+1)^(2%A207015(n+1))`
-/

namespace A207009.P8305210662315664083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207008 (n + 1) : ℚ) ^ (Int.tmod 2 (A207015 (n + 1)) : ℤ)

end

end A207009.P8305210662315664083

namespace A207009

/-- `A207008(n+1)^(2%A207015(n+1))` -/
def P8305210662315664083.Spec : Prop :=
  ∀ n, P8305210662315664083.a n = (A207009 (n + 1) : ℚ)

end A207009

/-! ## A207009.P5825719134189268355

`A207008(n+1)^A165074(A074279(n+1))`
-/

namespace A207009.P5825719134189268355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207008 (n + 1) : ℚ) ^ (A165074 (A074279 (n + 1)).toNat : ℤ)

end

end A207009.P5825719134189268355

namespace A207009

/-- `A207008(n+1)^A165074(A074279(n+1))` -/
def P5825719134189268355.Spec : Prop :=
  ∀ n, P5825719134189268355.a n = (A207009 (n + 1) : ℚ)

end A207009

/-!
# A207010: Number of nX3 0..2 arrays avoiding the patterns z z+1 z or z z-1 z in any row or column.

The programs for A207010, there is no canonical definition to state claims against.
-/

/-! ## A207010.P10101533297755135994

`A207015(∑[n+2]+4)`
-/

namespace A207010.P10101533297755135994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207015 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207010.P10101533297755135994

/-! ## A207010.P3110172855729568914

`or(1, A207015(A167614(n+1)))`
-/

namespace A207010.P3110172855729568914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A207015 (A167614 (n + 1)).toNat)

end

end A207010.P3110172855729568914

/-! ## A207010.P7241774877084056828

`A207015(A167614(n+1))+A011730(n)`
-/

namespace A207010.P7241774877084056828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207015 (A167614 (n + 1)).toNat + A011730 n

end

end A207010.P7241774877084056828

/-! ## A207010.P3704858766738107851

`lcm(A033999(n), A207015(A167614(n+1)))`
-/

namespace A207010.P3704858766738107851
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A207015 (A167614 (n + 1)).toNat)

end

end A207010.P3704858766738107851

/-! ## A207010.P7965474648656330387

`A207015(A167614(n+1))%A178631(n+1)`
-/

namespace A207010.P7965474648656330387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207015 (A167614 (n + 1)).toNat) (A178631 (n + 1))

end

end A207010.P7965474648656330387

/-!
# A207011: Number of nX4 0..2 arrays avoiding the patterns z z+1 z or z z-1 z in any row or column.

The programs for A207011, there is no canonical definition to state claims against.
-/

/-! ## A207011.P12232815164059717057

`A207015(A374004(n+1))`
-/

namespace A207011.P12232815164059717057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207015 (A374004 (n + 1)).toNat

end

end A207011.P12232815164059717057

/-! ## A207011.P10548858132713098461

`A207015(A141214(n)+7)`
-/

namespace A207011.P10548858132713098461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207015 (A141214 n + 7).toNat

end

end A207011.P10548858132713098461

/-! ## A207011.P519491203537777618

`A207015(A052905(n)+9)`
-/

namespace A207011.P519491203537777618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207015 (A052905 n + 9).toNat

end

end A207011.P519491203537777618

/-! ## A207011.P12780007323335035488

`A207015(A055999(n)+10)`
-/

namespace A207011.P12780007323335035488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207015 (A055999 n + 10).toNat

end

end A207011.P12780007323335035488

/-! ## A207011.P5856522224816296824

`A207015(A167614(n+2)+1)`
-/

namespace A207011.P5856522224816296824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207015 (A167614 (n + 2) + 1).toNat

end

end A207011.P5856522224816296824

/-!
# A207012: Number of nX5 0..2 arrays avoiding the patterns z z+1 z or z z-1 z in any row or column.

The programs for A207012, there is no canonical definition to state claims against.
-/

/-! ## A207012.P6187854174983479549

`A207015(A374005(n+1))`
-/

namespace A207012.P6187854174983479549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207015 (A374005 (n + 1)).toNat

end

end A207012.P6187854174983479549

/-! ## A207012.P11306309438624143372

`A207015(A167499(n+3))`
-/

namespace A207012.P11306309438624143372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207015 (A167499 (n + 3)).toNat

end

end A207012.P11306309438624143372

/-! ## A207012.P10703963881258401810

`A207015(A056000(n)+15)`
-/

namespace A207012.P10703963881258401810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207015 (A056000 n + 15).toNat

end

end A207012.P10703963881258401810

/-! ## A207012.P10942462961491176702

`A207015(Δ[A023545(n+1)])`
-/

namespace A207012.P10942462961491176702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207015 (f1 (n + 1) - f1 n).toNat

end

end A207012.P10942462961491176702

/-! ## A207012.P997507490123698381

`A207015(eq[8, A057728(n+1)])`
-/

namespace A207012.P997507490123698381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207015 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207012.P997507490123698381

/-!
# A207013: Number of nX6 0..2 arrays avoiding the patterns z z+1 z or z z-1 z in any row or column.

The programs for A207013, there is no canonical definition to state claims against.
-/

/-! ## A207013.P12294045561429133498

`A207015(A374007(n+1))`
-/

namespace A207013.P12294045561429133498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207015 (A374007 (n + 1)).toNat

end

end A207013.P12294045561429133498

/-! ## A207013.P17153270270720538423

`A207015(A052905(n+3))`
-/

namespace A207013.P17153270270720538423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207015 (A052905 (n + 3)).toNat

end

end A207013.P17153270270720538423

/-! ## A207013.P16683944412217497218

`A207015(Δ[Δ[A006504(n+1)]])`
-/

namespace A207013.P16683944412217497218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207015 (f1 (n + 1) - f1 n).toNat

end

end A207013.P16683944412217497218

/-! ## A207013.P16268227016260518579

`A207015(Δ[A023545(n+2)]-1)`
-/

namespace A207013.P16268227016260518579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207015 (f1 (n + 1) - f1 n - 1).toNat

end

end A207013.P16268227016260518579

/-!
# A207014: Number of nX7 0..2 arrays avoiding the patterns z z+1 z or z z-1 z in any row or column.

The programs for A207014, there is no canonical definition to state claims against.
-/

/-! ## A207014.P6173846609891587809

`A207015(A374008(n+1))`
-/

namespace A207014.P6173846609891587809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207015 (A374008 (n + 1)).toNat

end

end A207014.P6173846609891587809

/-! ## A207014.P12478859303860662549

`A207015(A056119(n)+28)`
-/

namespace A207014.P12478859303860662549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207015 (A056119 n + 28).toNat

end

end A207014.P12478859303860662549

/-! ## A207014.P14815784985851253219

`A207015(A167499(n+5)+2)`
-/

namespace A207014.P14815784985851253219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207015 (A167499 (n + 5) + 2).toNat

end

end A207014.P14815784985851253219

/-!
# A207015: T(n,k)=Number of nXk 0..2 arrays avoiding the patterns z z+1 z or z z-1 z in any row or column.

The programs for A207015, there is no canonical definition to state claims against.
-/

/-! ## A207015.P11866064321106664687

`A207228(A084193(∑[n]))`
-/

namespace A207015.P11866064321106664687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207228 (A084193 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A207015.P11866064321106664687

/-! ## A207015.P16405063569232715853

`A207235(A177878(∑[n]))`
-/

namespace A207015.P16405063569232715853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207235 (A177878 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A207015.P16405063569232715853

/-! ## A207015.P10914624016537758370

`A207228(A327487(∑[n]))`
-/

namespace A207015.P10914624016537758370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207228 (A327487 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A207015.P10914624016537758370

/-! ## A207015.P10212407101272902572

`A207228(A043317(n+1))`
-/

namespace A207015.P10212407101272902572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207228 (A043317 (n + 1)).toNat

end

end A207015.P10212407101272902572

/-! ## A207015.P4733760614142167996

`A207228(A044914(n+1))`
-/

namespace A207015.P4733760614142167996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207228 (A044914 (n + 1)).toNat

end

end A207015.P4733760614142167996

/-!
# A207016: a(1) = 3 , for n > 1 a(n) is the least number greater than a(n-1) such that the Hamming distance D(a(n-1),a(n)) = 3.

The programs for A207016, there is no canonical definition to state claims against.
-/

/-! ## A207016.P4808169383684989171

`A182209(a(n-1))` with `a(0)=3`
-/

namespace A207016.P4808169383684989171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A182209 (a (n - 1)).toNat

end

end A207016.P4808169383684989171

/-! ## A207016.P16339533408701247957

`A045327(n+1)+A000002(A227338(3*n+2))`
-/

namespace A207016.P16339533408701247957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045327 (n + 1) + A000002 (A227338 (3 * n + 2)).toNat

end

end A207016.P16339533408701247957

/-!
# A207017: Numbers m for which there exists a number 1k, where operation <+> is defined in A206853.

The programs for A207017, there is no canonical definition to state claims against.
-/

/-! ## A207017.P11226456126673950895

`A005408(A187829(n+1))+A001285(A004525(n))`
-/

namespace A207017.P11226456126673950895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A187829 (n + 1)).toNat + A001285 (A004525 n).toNat

end

end A207017.P11226456126673950895

/-! ## A207017.P5749036368551135646

`A010054(A049029(n+2))+2*(n+2)`
-/

namespace A207017.P5749036368551135646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A049029 (n + 2)).toNat + (2 * (n + 2) : ℤ)

end

end A207017.P5749036368551135646

/-! ## A207017.P15836907890411390182

`2*(n+2)-A200244(A288442(n)+1)+1`
-/

namespace A207017.P15836907890411390182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) - A200244 (A288442 n + 1).toNat + 1

end

end A207017.P15836907890411390182

/-! ## A207017.P17300579359246059996

`A236860(lt[A236853(n), A236865(2*n+9)])`
-/

namespace A207017.P17300579359246059996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236853 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236865 (2 * n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236860 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A207017.P17300579359246059996

/-! ## A207017.P10432925834012982803

`A236860(lt[A236862(n), A236865(2*n+9)])`
-/

namespace A207017.P10432925834012982803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236862 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236865 (2 * n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236860 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A207017.P10432925834012982803

/-!
# A207018: Number of permutations in S_n with major index equal to inversion number.

The programs for A207018, there is no canonical definition to state claims against.
-/

/-! ## A207018.P16676399486233850585

`∑[(A057359(n)+1)*A342793(A120588(n))]`
-/

namespace A207018.P16676399486233850585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057359 n + 1) * A342793 (A120588 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207018.P16676399486233850585

/-! ## A207018.P12607334272545071992

`A344514(n+1)+A059995(A105479(n+2))`
-/

namespace A207018.P12607334272545071992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344514 (n + 1) + A059995 (A105479 (n + 2)).toNat

end

end A207018.P12607334272545071992

/-!
# A207019: Number of n X n 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207019, there is no canonical definition to state claims against.
-/

/-! ## A207019.P18410371479721034117

`A207024((n+1)²+n²)`
-/

namespace A207019.P18410371479721034117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 ((n + 1) ^ 2 + n ^ 2)

end

end A207019.P18410371479721034117

/-! ## A207019.P4701873172099493491

`record[A207024(A334320(n+2))]`
-/

namespace A207019.P4701873172099493491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (A334320 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207019.P4701873172099493491

/-! ## A207019.P7847317938457007478

`record[A003982(n)*A207024(n+1)]`
-/

namespace A207019.P7847317938457007478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A207024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207019.P7847317938457007478

/-! ## A207019.P13302121929915136893

`record[root(A207024(n+1), A331886(n))]`
-/

namespace A207019.P13302121929915136893
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A207024 (n + 1) : ℝ) ^ (1 / (A331886 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207019.P13302121929915136893

/-! ## A207019.P17699495405021290850

`record[gcd(A114327(n), A207024(n+1))]`
-/

namespace A207019.P17699495405021290850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A207024 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207019.P17699495405021290850

/-!
# A207020: Number of n X 4 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207020, the canonical program `A207020.P13211311478247895331` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207020 has offset 1).

The definition of A207020 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207020.P2466216360581184168

`9*∑[∑[a(n-1)+4]]` with `a(0)=1, a(1)=7`
-/

namespace A207020.P2466216360581184168
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A207020.P2466216360581184168

namespace A207020

/-- `9*∑[∑[a(n-1)+4]]` -/
def P2466216360581184168.Spec : Prop :=
  ∀ n, (P2466216360581184168.a n : ℤ) = A207020 (n + 1)

end A207020

/-! ## A207020.P1678654631723040220

`9*∑[(n+2)*2*n+n+1]`
-/

namespace A207020.P1678654631723040220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (2 * n) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A207020.P1678654631723040220

namespace A207020

/-- `9*∑[(n+2)*2*n+n+1]` -/
def P1678654631723040220.Spec : Prop :=
  ∀ n, (P1678654631723040220.a n : ℤ) = A207020 (n + 1)

end A207020

/-! ## A207020.P13211311478247895331

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=9, a(1)=81, a(2)=252, a(3)=558`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A207020

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P13211311478247895331.Spec : Prop :=
  ∀ n, P13211311478247895331.a n = A207020 (n + 1)

theorem P13211311478247895331.correct : P13211311478247895331.Spec := by
  intro n
  simp only [A207020, Nat.add_sub_cancel]

end A207020

/-! ## A207020.P2022173017382070057

`∑[9*(A033537(n)+1)]`
-/

namespace A207020.P2022173017382070057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (A033537 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207020.P2022173017382070057

namespace A207020

/-- `∑[9*(A033537(n)+1)]` -/
def P2022173017382070057.Spec : Prop :=
  ∀ n, P2022173017382070057.a n = A207020 (n + 1)

end A207020

/-! ## A207020.P4049197656283927850

`∑[9*(A059993(n)-n)]`
-/

namespace A207020.P4049197656283927850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (A059993 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207020.P4049197656283927850

namespace A207020

/-- `∑[9*(A059993(n)-n)]` -/
def P4049197656283927850.Spec : Prop :=
  ∀ n, P4049197656283927850.a n = A207020 (n + 1)

end A207020

/-! ## A207020.P1510915937232189953

`∑[9*(A014105(n+1)-2)]`
-/

namespace A207020.P1510915937232189953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (A014105 (n + 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207020.P1510915937232189953

namespace A207020

/-- `∑[9*(A014105(n+1)-2)]` -/
def P1510915937232189953.Spec : Prop :=
  ∀ n, P1510915937232189953.a n = A207020 (n + 1)

end A207020

/-! ## A207020.P5749807822681844239

`A207449(n+1)-A213832(n+1)`
-/

namespace A207020.P5749807822681844239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207449 (n + 1) - A213832 (n + 1)

end

end A207020.P5749807822681844239

namespace A207020

/-- `A207449(n+1)-A213832(n+1)` -/
def P5749807822681844239.Spec : Prop :=
  ∀ n, P5749807822681844239.a n = A207020 (n + 1)

end A207020

/-! ## A207020.P1295971752358536502

`∑[9*A034856(A004273(n+1))]`
-/

namespace A207020.P1295971752358536502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A034856 (A004273 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207020.P1295971752358536502

namespace A207020

/-- `∑[9*A034856(A004273(n+1))]` -/
def P1295971752358536502.Spec : Prop :=
  ∀ n, P1295971752358536502.a n = A207020 (n + 1)

end A207020

/-! ## A207020.P256193086856966769

`∑[9*A034856(A005843(n)+1)]`
-/

namespace A207020.P256193086856966769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A034856 (A005843 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207020.P256193086856966769

namespace A207020

/-- `∑[9*A034856(A005843(n)+1)]` -/
def P256193086856966769.Spec : Prop :=
  ∀ n, P256193086856966769.a n = A207020 (n + 1)

end A207020

/-! ## A207020.P5454932060612271891

`A027468(2*n+1)+∑[A027468(2*n)]`
-/

namespace A207020.P5454932060612271891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027468 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027468 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207020.P5454932060612271891

namespace A207020

/-- `A027468(2*n+1)+∑[A027468(2*n)]` -/
def P5454932060612271891.Spec : Prop :=
  ∀ n, P5454932060612271891.a n = A207020 (n + 1)

end A207020

/-! ## A207020.P1879730441469231467

`∑[A046691(A016969(n))-15]`
-/

namespace A207020.P1879730441469231467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046691 (A016969 n).toNat - 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207020.P1879730441469231467

namespace A207020

/-- `∑[A046691(A016969(n))-15]` -/
def P1879730441469231467.Spec : Prop :=
  ∀ n, P1879730441469231467.a n = A207020 (n + 1)

end A207020

/-! ## A207020.P9885127973593525667

`∑[9*(n*lt[2, A131575(n)]+1)]`
-/

namespace A207020.P9885127973593525667
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (n * SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207020.P9885127973593525667

namespace A207020

/-- `∑[9*(n*lt[2, A131575(n)]+1)]` -/
def P9885127973593525667.Spec : Prop :=
  ∀ n, (P9885127973593525667.a n : ℤ) = A207020 (n + 1)

end A207020

/-!
# A207021: Number of nX5 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207021, the canonical program `A207021.P16631824634654529701` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207021 has offset 1).

The definition of A207021 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207021.P16631824634654529701

`13/6*(n+1)^4+13*(n+1)^3+52/3*(n+1)²-39/2*(n+1)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A207021

/-- `13/6*(n+1)^4+13*(n+1)^3+52/3*(n+1)²-39/2*(n+1)` -/
def P16631824634654529701.Spec : Prop :=
  ∀ n, P16631824634654529701.a n = (A207021 (n + 1) : ℚ)

end A207021

/-! ## A207021.P5329326422616869860

`A207024(∑[n+5]+6)`
-/

namespace A207021.P5329326422616869860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A207021.P5329326422616869860

namespace A207021

/-- `A207024(∑[n+5]+6)` -/
def P5329326422616869860.Spec : Prop :=
  ∀ n, P5329326422616869860.a n = A207021 (n + 1)

end A207021

/-! ## A207021.P14634026866019689881

`gcd(n, n+1)*A207024(A046691(n+3))`
-/

namespace A207021.P14634026866019689881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A207024 (A046691 (n + 3)).toNat

end

end A207021.P14634026866019689881

namespace A207021

/-- `gcd(n, n+1)*A207024(A046691(n+3))` -/
def P14634026866019689881.Spec : Prop :=
  ∀ n, P14634026866019689881.a n = A207021 (n + 1)

end A207021

/-! ## A207021.P16111083361334261330

`lcm(A033999(n), A207024(A046691(n+3)))`
-/

namespace A207021.P16111083361334261330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A207024 (A046691 (n + 3)).toNat)

end

end A207021.P16111083361334261330

namespace A207021

/-- `lcm(A033999(n), A207024(A046691(n+3)))` -/
def P16111083361334261330.Spec : Prop :=
  ∀ n, (P16111083361334261330.a n : ℤ) = A207021 (n + 1)

end A207021

/-! ## A207021.P6653962091568215936

`A207024(A046691(n+3))%A207022(n+1)`
-/

namespace A207021.P6653962091568215936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207024 (A046691 (n + 3)).toNat) (A207022 (n + 1))

end

end A207021.P6653962091568215936

namespace A207021

/-- `A207024(A046691(n+3))%A207022(n+1)` -/
def P6653962091568215936.Spec : Prop :=
  ∀ n, P6653962091568215936.a n = A207021 (n + 1)

end A207021

/-! ## A207021.P9576161621678646969

`A207024(A000124(n+5)-5)%A157803(n+1)`
-/

namespace A207021.P9576161621678646969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207024 (A000124 (n + 5) - 5).toNat) (A157803 (n + 1))

end

end A207021.P9576161621678646969

namespace A207021

/-- `A207024(A000124(n+5)-5)%A157803(n+1)` -/
def P9576161621678646969.Spec : Prop :=
  ∀ n, P9576161621678646969.a n = A207021 (n + 1)

end A207021

/-! ## A207021.P7366499371447756728

`lcm(A062379(n+1), A207024(A000217(n+5)-4))`
-/

namespace A207021.P7366499371447756728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A062379 (n + 1)) (A207024 (A000217 (n + 5) - 4).toNat)

end

end A207021.P7366499371447756728

namespace A207021

/-- `lcm(A062379(n+1), A207024(A000217(n+5)-4))` -/
def P7366499371447756728.Spec : Prop :=
  ∀ n, (P7366499371447756728.a n : ℤ) = A207021 (n + 1)

end A207021

/-! ## A207021.P291991077034397902

`lcm(A014673(n+1), A207024(A000124(n+5)-5))`
-/

namespace A207021.P291991077034397902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014673 (n + 1)) (A207024 (A000124 (n + 5) - 5).toNat)

end

end A207021.P291991077034397902

namespace A207021

/-- `lcm(A014673(n+1), A207024(A000124(n+5)-5))` -/
def P291991077034397902.Spec : Prop :=
  ∀ n, (P291991077034397902.a n : ℤ) = A207021 (n + 1)

end A207021

/-!
# A207022: Number of nX6 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207022, the canonical program `A207022.P18139610442249183507` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207022 has offset 1).

The definition of A207022 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207022.P18139610442249183507

`33/4*(n+1)^4+45/2*(n+1)^3+75/4*(n+1)²-63/2*(n+1)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A207022

/-- `33/4*(n+1)^4+45/2*(n+1)^3+75/4*(n+1)²-63/2*(n+1)` -/
def P18139610442249183507.Spec : Prop :=
  ∀ n, P18139610442249183507.a n = (A207022 (n + 1) : ℚ)

end A207022

/-! ## A207022.P3476879762872192845

`A207024(A052905(n+3))`
-/

namespace A207022.P3476879762872192845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (A052905 (n + 3)).toNat

end

end A207022.P3476879762872192845

namespace A207022

/-- `A207024(A052905(n+3))` -/
def P3476879762872192845.Spec : Prop :=
  ∀ n, P3476879762872192845.a n = A207022 (n + 1)

end A207022

/-! ## A207022.P7055459800777491185

`A207024(A000096(n+5)-4)`
-/

namespace A207022.P7055459800777491185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (A000096 (n + 5) - 4).toNat

end

end A207022.P7055459800777491185

namespace A207022

/-- `A207024(A000096(n+5)-4)` -/
def P7055459800777491185.Spec : Prop :=
  ∀ n, P7055459800777491185.a n = A207022 (n + 1)

end A207022

/-! ## A207022.P8690887969649717244

`A207024(A000217(n+6)-5)`
-/

namespace A207022.P8690887969649717244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (A000217 (n + 6) - 5).toNat

end

end A207022.P8690887969649717244

namespace A207022

/-- `A207024(A000217(n+6)-5)` -/
def P8690887969649717244.Spec : Prop :=
  ∀ n, P8690887969649717244.a n = A207022 (n + 1)

end A207022

/-! ## A207022.P17086339348367229975

`A207024(Δ[Δ[A006504(n+1)]])`
-/

namespace A207022.P17086339348367229975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (f1 (n + 1) - f1 n).toNat

end

end A207022.P17086339348367229975

namespace A207022

/-- `A207024(Δ[Δ[A006504(n+1)]])` -/
def P17086339348367229975.Spec : Prop :=
  ∀ n, P17086339348367229975.a n = A207022 (n + 1)

end A207022

/-! ## A207022.P7083852830265502112

`A207024(Δ[A023551(n+1)]+1)`
-/

namespace A207022.P7083852830265502112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (f1 (n + 1) - f1 n + 1).toNat

end

end A207022.P7083852830265502112

namespace A207022

/-- `A207024(Δ[A023551(n+1)]+1)` -/
def P7083852830265502112.Spec : Prop :=
  ∀ n, P7083852830265502112.a n = A207022 (n + 1)

end A207022

/-! ## A207022.P9744224614374894857

`A207024(n+1+A000217(n+5))`
-/

namespace A207022.P9744224614374894857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 ((n + 1 : ℤ) + A000217 (n + 5)).toNat

end

end A207022.P9744224614374894857

namespace A207022

/-- `A207024(n+1+A000217(n+5))` -/
def P9744224614374894857.Spec : Prop :=
  ∀ n, P9744224614374894857.a n = A207022 (n + 1)

end A207022

/-!
# A207023: Number of nX7 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207023, there is no canonical definition to state claims against.
-/

/-! ## A207023.P18433385193764087653

`A207024(A055999(n+4))`
-/

namespace A207023.P18433385193764087653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (A055999 (n + 4)).toNat

end

end A207023.P18433385193764087653

/-! ## A207023.P2182248972341755792

`A207024(Δ[A023551(n+2)])`
-/

namespace A207023.P2182248972341755792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (f1 (n + 1) - f1 n).toNat

end

end A207023.P2182248972341755792

/-! ## A207023.P12690730874876632384

`A207024(A055998(n+5)-3)`
-/

namespace A207023.P12690730874876632384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (A055998 (n + 5) - 3).toNat

end

end A207023.P12690730874876632384

/-! ## A207023.P7352249983901621385

`A207024(A000217(n+7)-6)`
-/

namespace A207023.P7352249983901621385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (A000217 (n + 7) - 6).toNat

end

end A207023.P7352249983901621385

/-! ## A207023.P11857072261690009522

`A207024(A000124(n+7)-7)`
-/

namespace A207023.P11857072261690009522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (A000124 (n + 7) - 7).toNat

end

end A207023.P11857072261690009522

/-! ## A207023.P10509467232337428543

`A207024(A167499(n+6)-11)`
-/

namespace A207023.P10509467232337428543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (A167499 (n + 6) - 11).toNat

end

end A207023.P10509467232337428543

/-! ## A207023.P8606612287282197950

`A207024(A000096(n+5)+n+2)`
-/

namespace A207023.P8606612287282197950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A207023.P8606612287282197950

/-! ## A207023.P214937200761907841

`A207024(A034856(n+5)+n+3)`
-/

namespace A207023.P214937200761907841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (A034856 (n + 5) + (n + 3 : ℤ)).toNat

end

end A207023.P214937200761907841

/-!
# A207024: T(n,k) = Number of n X k 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207024, there is no canonical definition to state claims against.
-/

/-! ## A207024.P6756245867784952815

`A207169(n+1)-A184955(n)%3`
-/

namespace A207024.P6756245867784952815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207169 (n + 1) - Int.tmod (A184955 n) 3

end

end A207024.P6756245867784952815

/-! ## A207024.P10733392633520171434

`A207169(n+1)-A055641(A005246(n))`
-/

namespace A207024.P10733392633520171434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207169 (n + 1) - A055641 (A005246 n).toNat

end

end A207024.P10733392633520171434

/-! ## A207024.P3915921443031731440

`A207169(n+1)-A102683(A001629(n))`
-/

namespace A207024.P3915921443031731440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207169 (n + 1) - A102683 (A001629 n).toNat

end

end A207024.P3915921443031731440

/-! ## A207024.P15015325056255092291

`A207169(n+1)-A102683(A030239(n))`
-/

namespace A207024.P15015325056255092291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207169 (n + 1) - A102683 (A030239 n).toNat

end

end A207024.P15015325056255092291

/-! ## A207024.P14586464964733043110

`A207169(n+1)-A101637(A046630(n))`
-/

namespace A207024.P14586464964733043110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207169 (n + 1) - A101637 (A046630 n).toNat

end

end A207024.P14586464964733043110

/-!
# A207025: Number of 2 X n 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207025, the canonical program `A207025.P16647947449479724282` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207025 has offset 1).

The definition of A207025 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 404 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207025.P16647947449479724282

`∑[a(n-2)+a(n-3)]²` with `a(0)=2, a(1)=2, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A207025

/-- `∑[a(n-2)+a(n-3)]²` -/
def P16647947449479724282.Spec : Prop :=
  ∀ n, (P16647947449479724282.a n : ℤ) = A207025 (n + 1)

theorem P16647947449479724282.correct : P16647947449479724282.Spec := by
  intro n
  simp only [A207025, Nat.add_sub_cancel]

end A207025

/-! ## A207025.P15619368418864813498

`A164315(n+1)²`
-/

namespace A207025.P15619368418864813498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164315 (n + 1) ^ 2

end

end A207025.P15619368418864813498

namespace A207025

/-- `A164315(n+1)²` -/
def P15619368418864813498.Spec : Prop :=
  ∀ n, P15619368418864813498.a n = A207025 (n + 1)

end A207025

/-! ## A207025.P14762274050493311197

`(A167385(n)+1)²`
-/

namespace A207025.P14762274050493311197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A167385 n + 1) ^ 2

end

end A207025.P14762274050493311197

namespace A207025

/-- `(A167385(n)+1)²` -/
def P14762274050493311197.Spec : Prop :=
  ∀ n, P14762274050493311197.a n = A207025 (n + 1)

end A207025

/-! ## A207025.P11423645674825869290

`∏[ratio[A164315(n)]²]`
-/

namespace A207025.P11423645674825869290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164315 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℚ) / (f2 n : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A207025.P11423645674825869290

namespace A207025

/-- `∏[ratio[A164315(n)]²]` -/
def P11423645674825869290.Spec : Prop :=
  ∀ n, P11423645674825869290.a n = (A207025 (n + 1) : ℚ)

end A207025

/-! ## A207025.P16892247755444899696

`record[(2-A023434(n))²]`
-/

namespace A207025.P16892247755444899696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A023434 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207025.P16892247755444899696

namespace A207025

/-- `record[(2-A023434(n))²]` -/
def P16892247755444899696.Spec : Prop :=
  ∀ n, P16892247755444899696.a n = A207025 (n + 1)

end A207025

/-! ## A207025.P2485664477787681944

`record[(3-A078027(n))²]`
-/

namespace A207025.P2485664477787681944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A078027 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207025.P2485664477787681944

namespace A207025

/-- `record[(3-A078027(n))²]` -/
def P2485664477787681944.Spec : Prop :=
  ∀ n, P2485664477787681944.a n = A207025 (n + 1)

end A207025

/-! ## A207025.P15514102757225816850

`record[(3-A096231(n))²]`
-/

namespace A207025.P15514102757225816850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A096231 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207025.P15514102757225816850

namespace A207025

/-- `record[(3-A096231(n))²]` -/
def P15514102757225816850.Spec : Prop :=
  ∀ n, P15514102757225816850.a n = A207025 (n + 1)

end A207025

/-! ## A207025.P15797243380927709057

`(1-A054405(n+2))²`
-/

namespace A207025.P15797243380927709057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A054405 (n + 2)) ^ 2

end

end A207025.P15797243380927709057

namespace A207025

/-- `(1-A054405(n+2))²` -/
def P15797243380927709057.Spec : Prop :=
  ∀ n, P15797243380927709057.a n = A207025 (n + 1)

end A207025

/-! ## A207025.P7394276416550970564

`(3-A096231(n+2))²`
-/

namespace A207025.P7394276416550970564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A096231 (n + 2)) ^ 2

end

end A207025.P7394276416550970564

namespace A207025

/-- `(3-A096231(n+2))²` -/
def P7394276416550970564.Spec : Prop :=
  ∀ n, P7394276416550970564.a n = A207025 (n + 1)

end A207025

/-! ## A207025.P978275567397354317

`(3-A134816(n+8))²`
-/

namespace A207025.P978275567397354317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A134816 (n + 8)) ^ 2

end

end A207025.P978275567397354317

namespace A207025

/-- `(3-A134816(n+8))²` -/
def P978275567397354317.Spec : Prop :=
  ∀ n, P978275567397354317.a n = A207025 (n + 1)

end A207025

/-! ## A207025.P1435106468327940264

`(∑[A228361(n+2)]+1)²`
-/

namespace A207025.P1435106468327940264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A207025.P1435106468327940264

namespace A207025

/-- `(∑[A228361(n+2)]+1)²` -/
def P1435106468327940264.Spec : Prop :=
  ∀ n, P1435106468327940264.a n = A207025 (n + 1)

end A207025

/-! ## A207025.P11328390140757039441

`(∑[A134816(n+3)]+1)²`
-/

namespace A207025.P11328390140757039441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A207025.P11328390140757039441

namespace A207025

/-- `(∑[A134816(n+3)]+1)²` -/
def P11328390140757039441.Spec : Prop :=
  ∀ n, P11328390140757039441.a n = A207025 (n + 1)

end A207025

/-! ## A207025.P1346650460309913660

`(3-Δ[A018917(n+3)])²`
-/

namespace A207025.P1346650460309913660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018917 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (f1 (n + 1) - f1 n)) ^ 2

end

end A207025.P1346650460309913660

namespace A207025

/-- `(3-Δ[A018917(n+3)])²` -/
def P1346650460309913660.Spec : Prop :=
  ∀ n, P1346650460309913660.a n = A207025 (n + 1)

end A207025

/-! ## A207025.P17456649679387159998

`(3-Δ[A020716(n+3)])²`
-/

namespace A207025.P17456649679387159998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020716 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (f1 (n + 1) - f1 n)) ^ 2

end

end A207025.P17456649679387159998

namespace A207025

/-- `(3-Δ[A020716(n+3)])²` -/
def P17456649679387159998.Spec : Prop :=
  ∀ n, P17456649679387159998.a n = A207025 (n + 1)

end A207025

/-! ## A207025.P17164814072785309729

`(3-Δ[A020720(n+3)])²`
-/

namespace A207025.P17164814072785309729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020720 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (f1 (n + 1) - f1 n)) ^ 2

end

end A207025.P17164814072785309729

namespace A207025

/-- `(3-Δ[A020720(n+3)])²` -/
def P17164814072785309729.Spec : Prop :=
  ∀ n, P17164814072785309729.a n = A207025 (n + 1)

end A207025

/-! ## A207025.P13323082570552709451

`(3-Δ[A164482(n+3)])²`
-/

namespace A207025.P13323082570552709451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164482 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (f1 (n + 1) - f1 n)) ^ 2

end

end A207025.P13323082570552709451

namespace A207025

/-- `(3-Δ[A164482(n+3)])²` -/
def P13323082570552709451.Spec : Prop :=
  ∀ n, P13323082570552709451.a n = A207025 (n + 1)

end A207025

/-! ## A207025.P10320547201432031587

`(∑[A127682(A020742(n))]+1)²`
-/

namespace A207025.P10320547201432031587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127682 (A020742 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A207025.P10320547201432031587

namespace A207025

/-- `(∑[A127682(A020742(n))]+1)²` -/
def P10320547201432031587.Spec : Prop :=
  ∀ n, P10320547201432031587.a n = A207025 (n + 1)

end A207025

/-! ## A207025.P45430106549288491

`(A054405(n+1)+A023434(n))²`
-/

namespace A207025.P45430106549288491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054405 (n + 1) + A023434 n) ^ 2

end

end A207025.P45430106549288491

namespace A207025

/-- `(A054405(n+1)+A023434(n))²` -/
def P45430106549288491.Spec : Prop :=
  ∀ n, P45430106549288491.a n = A207025 (n + 1)

end A207025

/-! ## A207025.P3523834295641810713

`A207903(n+1)/A207904(n+1)*A207903(n+1)`
-/

namespace A207025.P3523834295641810713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207903 (n + 1) : ℚ) / (A207904 (n + 1) : ℚ) * (A207903 (n + 1) : ℚ)

end

end A207025.P3523834295641810713

namespace A207025

/-- `A207903(n+1)/A207904(n+1)*A207903(n+1)` -/
def P3523834295641810713.Spec : Prop :=
  ∀ n, P3523834295641810713.a n = (A207025 (n + 1) : ℚ)

end A207025

/-! ## A207025.P15332036268628266687

`A207026(n+1)/A207369(n+1)*A207026(n+1)`
-/

namespace A207025.P15332036268628266687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207026 (n + 1) : ℚ) / (A207369 (n + 1) : ℚ) * (A207026 (n + 1) : ℚ)

end

end A207025.P15332036268628266687

namespace A207025

/-- `A207026(n+1)/A207369(n+1)*A207026(n+1)` -/
def P15332036268628266687.Spec : Prop :=
  ∀ n, P15332036268628266687.a n = (A207025 (n + 1) : ℚ)

end A207025

/-!
# A207026: Number of 3Xn 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207026, there is no canonical definition to state claims against.
-/

/-! ## A207026.P12822063673353921601

`(A167385(n)+1)*sqrt(A207369(n+1))`
-/

namespace A207026.P12822063673353921601
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A167385 n + 1 : ℝ) * Real.sqrt (A207369 (n + 1) : ℝ)

end

end A207026.P12822063673353921601

/-! ## A207026.P5144648109532954799

`sqrt(A164315(n+1)²*A207369(n+1))`
-/

namespace A207026.P5144648109532954799
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A164315 (n + 1) ^ 2 * A207369 (n + 1) : ℝ)

end

end A207026.P5144648109532954799

/-! ## A207026.P1437973700269703780

`sqrt(record[(2-A023434(n))²]*A207369(n+1))`
-/

namespace A207026.P1437973700269703780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A023434 n) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A207369 (n + 1) : ℝ)

end

end A207026.P1437973700269703780

/-! ## A207026.P9051798254128888274

`sqrt((3-A134816(n+8))²*A207369(n+1))`
-/

namespace A207026.P9051798254128888274
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((3 - A134816 (n + 8)) ^ 2 * A207369 (n + 1) : ℝ)

end

end A207026.P9051798254128888274

/-! ## A207026.P14118656628573431187

`sqrt((∑[A134816(n+3)]+1)²*A207369(n+1))`
-/

namespace A207026.P14118656628573431187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 3)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (((∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2 * A207369 (n + 1) : ℤ) : ℝ)

end

end A207026.P14118656628573431187

/-! ## A207026.P9791286926948175479

`sqrt((3-Δ[A018917(n+3)])²*A207369(n+1))`
-/

namespace A207026.P9791286926948175479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018917 (n + 3)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((3 - (f1 (n + 1) - f1 n)) ^ 2 * A207369 (n + 1) : ℝ)

end

end A207026.P9791286926948175479

/-! ## A207026.P10887239487982023615

`sqrt((3-Δ[A020720(n+3)])²*A207369(n+1))`
-/

namespace A207026.P10887239487982023615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020720 (n + 3)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((3 - (f1 (n + 1) - f1 n)) ^ 2 * A207369 (n + 1) : ℝ)

end

end A207026.P10887239487982023615

/-! ## A207026.P7802793718289363269

`A207024(∑[n+2]+4)`
-/

namespace A207026.P7802793718289363269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207026.P7802793718289363269

/-! ## A207026.P3564246359091716480

`or(char[6], A207024(A167614(n+1)))`
-/

namespace A207026.P3564246359091716480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A207024 (A167614 (n + 1)).toNat)

end

end A207026.P3564246359091716480

/-! ## A207026.P7122875286598542755

`A000045(A014963(2*(n+1)))*A207024(A167614(n+1))`
-/

namespace A207026.P7122875286598542755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A014963 (2 * (n + 1))).toNat * A207024 (A167614 (n + 1)).toNat

end

end A207026.P7122875286598542755

/-!
# A207027: Number of 4Xn 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207027, there is no canonical definition to state claims against.
-/

/-! ## A207027.P388715868564411866

`A207025(n+1)/A207026(n+1)*A207370(n+1)`
-/

namespace A207027.P388715868564411866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207025 (n + 1) : ℚ) / (A207026 (n + 1) : ℚ) * (A207370 (n + 1) : ℚ)

end

end A207027.P388715868564411866

/-! ## A207027.P3292584786035930674

`sqrt(A207025(n+1))*sqrt(A207371(n+1))`
-/

namespace A207027.P3292584786035930674
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207025 (n + 1) : ℝ) * Real.sqrt (A207371 (n + 1) : ℝ)

end

end A207027.P3292584786035930674

/-! ## A207027.P13775176185811864450

`sqrt(A207025(n+1)*A207371(n+1))`
-/

namespace A207027.P13775176185811864450
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207025 (n + 1) * A207371 (n + 1) : ℝ)

end

end A207027.P13775176185811864450

/-! ## A207027.P10059338278464258799

`sqrt(record[(3-A078027(n))²]*A207371(n+1))`
-/

namespace A207027.P10059338278464258799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A078027 n) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A207371 (n + 1) : ℝ)

end

end A207027.P10059338278464258799

/-! ## A207027.P13208085174417301959

`sqrt((3-A134816(n+8))²*A207371(n+1))`
-/

namespace A207027.P13208085174417301959
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((3 - A134816 (n + 8)) ^ 2 * A207371 (n + 1) : ℝ)

end

end A207027.P13208085174417301959

/-! ## A207027.P2609556929421364756

`A207024(A145018(n+4))`
-/

namespace A207027.P2609556929421364756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (A145018 (n + 4)).toNat

end

end A207027.P2609556929421364756

/-! ## A207027.P7924404356203648239

`A207024(A052905(n)+9)`
-/

namespace A207027.P7924404356203648239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (A052905 n + 9).toNat

end

end A207027.P7924404356203648239

/-! ## A207027.P17726271785353404453

`A207024(A167614(n+2)+1)`
-/

namespace A207027.P17726271785353404453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (A167614 (n + 2) + 1).toNat

end

end A207027.P17726271785353404453

/-! ## A207027.P13792409969641169586

`A207024(A000217(n+3)+4)`
-/

namespace A207027.P13792409969641169586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (A000217 (n + 3) + 4).toNat

end

end A207027.P13792409969641169586

/-!
# A207028: Number of 5Xn 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207028, there is no canonical definition to state claims against.
-/

/-! ## A207028.P4632724701505117343

`A207024(A167499(n+3))`
-/

namespace A207028.P4632724701505117343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (A167499 (n + 3)).toNat

end

end A207028.P4632724701505117343

/-! ## A207028.P6502800830490693624

`A207024(A155212(n)+13)`
-/

namespace A207028.P6502800830490693624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (A155212 n + 13).toNat

end

end A207028.P6502800830490693624

/-! ## A207028.P10769592139724482804

`A207024(A167614(n+3)+2)`
-/

namespace A207028.P10769592139724482804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (A167614 (n + 3) + 2).toNat

end

end A207028.P10769592139724482804

/-! ## A207028.P4955676820315678544

`A207024(A000217(n+4)+5)`
-/

namespace A207028.P4955676820315678544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (A000217 (n + 4) + 5).toNat

end

end A207028.P4955676820315678544

/-! ## A207028.P4778775897366118157

`A207024(A054925(n+2)+A054925(n+8))`
-/

namespace A207028.P4778775897366118157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (A054925 (n + 2) + A054925 (n + 8)).toNat

end

end A207028.P4778775897366118157

/-!
# A207029: Number of 6Xn 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207029, there is no canonical definition to state claims against.
-/

/-! ## A207029.P14833737657904853963

`A207024(A167614(n+4)+3)`
-/

namespace A207029.P14833737657904853963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (A167614 (n + 4) + 3).toNat

end

end A207029.P14833737657904853963

/-! ## A207029.P4021370685251048842

`A207024(A000124(n+5)+5)`
-/

namespace A207029.P4021370685251048842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (A000124 (n + 5) + 5).toNat

end

end A207029.P4021370685251048842

/-! ## A207029.P18211967309217359929

`A207024(A000096(n+4)+7)`
-/

namespace A207029.P18211967309217359929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (A000096 (n + 4) + 7).toNat

end

end A207029.P18211967309217359929

/-! ## A207029.P6037336809770222445

`A207024(A000217(n+5)+6)`
-/

namespace A207029.P6037336809770222445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (A000217 (n + 5) + 6).toNat

end

end A207029.P6037336809770222445

/-! ## A207029.P17537047720421311737

`A207024(A046691(n+3)+10)`
-/

namespace A207029.P17537047720421311737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (A046691 (n + 3) + 10).toNat

end

end A207029.P17537047720421311737

/-! ## A207029.P10117623897751057735

`A207024(A052905(n+2)+11)`
-/

namespace A207029.P10117623897751057735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (A052905 (n + 2) + 11).toNat

end

end A207029.P10117623897751057735

/-! ## A207029.P2877830843870771294

`A207024(A002620(n+2)+A002620(n+9))`
-/

namespace A207029.P2877830843870771294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (A002620 (n + 2) + A002620 (n + 9)).toNat

end

end A207029.P2877830843870771294

/-!
# A207030: Number of 7 X n 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207030, there is no canonical definition to state claims against.
-/

/-! ## A207030.P17907704187399626304

`A207024(A056119(n)+28)`
-/

namespace A207030.P17907704187399626304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (A056119 n + 28).toNat

end

end A207030.P17907704187399626304

/-! ## A207030.P14255791913792645791

`A207024(A167499(n+5)+2)`
-/

namespace A207030.P14255791913792645791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (A167499 (n + 5) + 2).toNat

end

end A207030.P14255791913792645791

/-! ## A207030.P647442852515049273

`A207024(A167614(n+5)+4)`
-/

namespace A207030.P647442852515049273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (A167614 (n + 5) + 4).toNat

end

end A207030.P647442852515049273

/-! ## A207030.P1044307717096943030

`A207024(A133263(n+6)+5)`
-/

namespace A207030.P1044307717096943030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (A133263 (n + 6) + 5).toNat

end

end A207030.P1044307717096943030

/-! ## A207030.P5806177885949943002

`A207024(A000217(n+6)+7)`
-/

namespace A207030.P5806177885949943002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (A000217 (n + 6) + 7).toNat

end

end A207030.P5806177885949943002

/-! ## A207030.P10426249477037311450

`A207024(A052905(n+3)+12)`
-/

namespace A207030.P10426249477037311450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (A052905 (n + 3) + 12).toNat

end

end A207030.P10426249477037311450

/-! ## A207030.P12658528544255683818

`A207024(A055999(n+3)+13)`
-/

namespace A207030.P12658528544255683818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (A055999 (n + 3) + 13).toNat

end

end A207030.P12658528544255683818

/-!
# A207031: Triangle read by rows: T(n,k) = sum of all parts of the k-th column of the last section of the set of partitions of n.

The programs for A207031, there is no canonical definition to state claims against.
-/

/-! ## A207031.P5413156556347889637

`A207032(n+1)+A207032(n+2)%A181187(n+1)`
-/

namespace A207031.P5413156556347889637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207032 (n + 1) + Int.tmod (A207032 (n + 2)) (A181187 (n + 1))

end

end A207031.P5413156556347889637

/-! ## A207031.P9119948455920336095

`A219644(A299779(n+1)^3)`
-/

namespace A207031.P9119948455920336095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219644 (A299779 (n + 1) ^ 3).toNat

end

end A207031.P9119948455920336095

/-! ## A207031.P7204374214625561387

`∏{e}[∏{e}[A000108(A091604(n+1)), #+1], #+1]`
-/

namespace A207031.P7204374214625561387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A091604 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A207031.P7204374214625561387

/-! ## A207031.P16014385260174004152

`A081604(A000045(A134867(n+1))²)`
-/

namespace A207031.P16014385260174004152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A000045 (A134867 (n + 1)).toNat ^ 2).toNat

end

end A207031.P16014385260174004152

/-!
# A207032: Triangle read by rows: T(n,k) = number of odd/even parts >= k in the last section of the set of partitions of n, if k is odd/even.

The programs for A207032, there is no canonical definition to state claims against.
-/

/-! ## A207032.P17201542261518779248

`∑{e}[A309087(A106356(n+1)), #]`
-/

namespace A207032.P17201542261518779248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309087 (A106356 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A207032.P17201542261518779248

/-! ## A207032.P15813861466713078560

`A001222(A309087(A106356(n+1)))`
-/

namespace A207032.P15813861466713078560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A309087 (A106356 (n + 1)).toNat).toNat

end

end A207032.P15813861466713078560

/-! ## A207032.P1585196891169463057

`or(A026794(A187829(n+1)), A264394(n))`
-/

namespace A207032.P1585196891169463057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A026794 (A187829 (n + 1)).toNat) (A264394 n)

end

end A207032.P1585196891169463057

/-! ## A207032.P15970576959444111909

`A355480(A125666(n+1))+A054523(n+1)`
-/

namespace A207032.P15970576959444111909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355480 (A125666 (n + 1)).toNat + A054523 (n + 1)

end

end A207032.P15970576959444111909

/-! ## A207032.P17971188618426135012

`A168532(n+1)+A086079(A003945(n))`
-/

namespace A207032.P17971188618426135012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168532 (n + 1) + A086079 (A003945 n).toNat

end

end A207032.P17971188618426135012

/-!
# A207033: Total number of parts >= 3 in all partitions of n.

The programs for A207033, there is no canonical definition to state claims against.
-/

/-! ## A207033.P3540151470096073099

`A096541(n+1)-A024786(n+1)`
-/

namespace A207033.P3540151470096073099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096541 (n + 1) - A024786 (n + 1)

end

end A207033.P3540151470096073099

/-! ## A207033.P8344105447918181663

`∑[A138135(n+1)]-A024786(n+1)`
-/

namespace A207033.P8344105447918181663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A024786 (n + 1)

end

end A207033.P8344105447918181663

/-! ## A207033.P7416216723289319297

`A194452(n+1)-2*A024786(n+1)`
-/

namespace A207033.P7416216723289319297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194452 (n + 1) - 2 * A024786 (n + 1)

end

end A207033.P7416216723289319297

/-! ## A207033.P12309536842635854395

`2*A096541(n+1)-A194452(n+1)`
-/

namespace A207033.P12309536842635854395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A096541 (n + 1) - A194452 (n + 1)

end

end A207033.P12309536842635854395

/-! ## A207033.P7489894845187978787

`A138137(n+1)+A194452(n)-A000070(n)`
-/

namespace A207033.P7489894845187978787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (n + 1) + (A194452 n - A000070 n)

end

end A207033.P7489894845187978787

/-! ## A207033.P12119636001373800982

`A006128(n+1)-(A024786(n+1)+A000070(n))`
-/

namespace A207033.P12119636001373800982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - (A024786 (n + 1) + A000070 n)

end

end A207033.P12119636001373800982

/-! ## A207033.P2742339666763574948

`A181187(∑[n]+3)%A066897(n+1)`
-/

namespace A207033.P2742339666763574948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181187 (∑ j ∈ Finset.range (n + 1), f1 j + 3)) (A066897 (n + 1))

end

end A207033.P2742339666763574948

/-!
# A207034: Sum of all parts minus the number of parts of the n-th partition in the list of colexicographically ordered partitions of j, if 1<=n<=A000041(j).

The programs for A207034, the canonical program `A207034.P8925604942146623024` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207034 has offset 1).

The definition of A207034 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A194602, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A207034.P8925604942146623024

`A000120(A194602(n))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A207034

/-- `A000120(A194602(n))` -/
def P8925604942146623024.Spec : Prop :=
  ∀ n, P8925604942146623024.a n = A207034 (n + 1)

theorem P8925604942146623024.correct : P8925604942146623024.Spec := by
  intro n
  simp only [A207034, Nat.add_sub_cancel]

end A207034

/-! ## A207034.P3496080641089010623

`A000120(A228354(n+1)-1)`
-/

namespace A207034.P3496080641089010623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A228354 (n + 1) - 1).toNat

end

end A207034.P3496080641089010623

namespace A207034

/-- `A000120(A228354(n+1)-1)` -/
def P3496080641089010623.Spec : Prop :=
  ∀ n, P3496080641089010623.a n = A207034 (n + 1)

theorem P3496080641089010623.correct : P3496080641089010623.Spec := by
  intro n
  simp only [A207034, Nat.add_sub_cancel, A207034.P3496080641089010623.a, A207034.P8925604942146623024.a, A000120, A000120.P2816527436160941581.a, A194602, A194602.P705746156502626667.f1, A194602.P705746156502626667.f2, A194602.P705746156502626667.a, A228354, A228354.P14726846839078751284.a, A005187, A005187.P3874015513960485494.a, A326956, A326956.P17897166605498576645.a, A005940, A005940.P5942875842694471387.a, A278222, A278222.P17157169249717672707.a, A122111, A122111.P18124015185857335041.a, A124859, A124859.P14397477856790736102.a, A253563, A253563.P3695549317124564486.a, A278159, A278159.P1523932836907847359.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A207034

/-! ## A207034.P135675028458614132

`Δ[A207038(A065033(2*n))]`
-/

namespace A207034.P135675028458614132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207038 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A207034.P135675028458614132

namespace A207034

/-- `Δ[A207038(A065033(2*n))]` -/
def P135675028458614132.Spec : Prop :=
  ∀ n, P135675028458614132.a n = A207034 (n + 1)

end A207034

/-! ## A207034.P3486336399339830512

`Δ[A207038(A123108(2*n))]`
-/

namespace A207034.P3486336399339830512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207038 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A207034.P3486336399339830512

namespace A207034

/-- `Δ[A207038(A123108(2*n))]` -/
def P3486336399339830512.Spec : Prop :=
  ∀ n, P3486336399339830512.a n = A207034 (n + 1)

end A207034

/-! ## A207034.P4207841222966972192

`Δ[A207038(gcd(n, A008458(n)))]`
-/

namespace A207034.P4207841222966972192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207038 (Int.gcd (n : ℤ) (A008458 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A207034.P4207841222966972192

namespace A207034

/-- `Δ[A207038(gcd(n, A008458(n)))]` -/
def P4207841222966972192.Spec : Prop :=
  ∀ n, P4207841222966972192.a n = A207034 (n + 1)

end A207034

/-! ## A207034.P699022928084617913

`Δ[A207038(A004275(n+1)-n)]`
-/

namespace A207034.P699022928084617913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207038 (A004275 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A207034.P699022928084617913

namespace A207034

/-- `Δ[A207038(A004275(n+1)-n)]` -/
def P699022928084617913.Spec : Prop :=
  ∀ n, P699022928084617913.a n = A207034 (n + 1)

end A207034

/-! ## A207034.P113661118212182466

`Δ[A207038(A029579(A004275(n)))]`
-/

namespace A207034.P113661118212182466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207038 (A029579 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A207034.P113661118212182466

namespace A207034

/-- `Δ[A207038(A029579(A004275(n)))]` -/
def P113661118212182466.Spec : Prop :=
  ∀ n, P113661118212182466.a n = A207034 (n + 1)

end A207034

/-! ## A207034.P1381404010914972848

`A207038(n+1)-A207038(A065033(2*n))`
-/

namespace A207034.P1381404010914972848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207038 (n + 1) - A207038 (A065033 (2 * n)).toNat

end

end A207034.P1381404010914972848

namespace A207034

/-- `A207038(n+1)-A207038(A065033(2*n))` -/
def P1381404010914972848.Spec : Prop :=
  ∀ n, P1381404010914972848.a n = A207034 (n + 1)

end A207034

/-! ## A207034.P7571316122653923082

`∑{d}[A194602(n), A297115(#)]`
-/

namespace A207034.P7571316122653923082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297115 d

end

end A207034.P7571316122653923082

namespace A207034

/-- `∑{d}[A194602(n), A297115(#)]` -/
def P7571316122653923082.Spec : Prop :=
  ∀ n, P7571316122653923082.a n = A207034 (n + 1)

end A207034

/-! ## A207034.P4748152241525702159

`A057526(A194602(n)+1)`
-/

namespace A207034.P4748152241525702159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057526 (A194602 n + 1).toNat

end

end A207034.P4748152241525702159

namespace A207034

/-- `A057526(A194602(n)+1)` -/
def P4748152241525702159.Spec : Prop :=
  ∀ n, P4748152241525702159.a n = A207034 (n + 1)

end A207034

/-! ## A207034.P2429581343876202573

`A000120(record[A331856(2*n)])`
-/

namespace A207034.P2429581343876202573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331856 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A207034.P2429581343876202573

namespace A207034

/-- `A000120(record[A331856(2*n)])` -/
def P2429581343876202573.Spec : Prop :=
  ∀ n, P2429581343876202573.a n = A207034 (n + 1)

end A207034

/-! ## A207034.P7580853507873956297

`A000120(record[n/A337377(n)])`
-/

namespace A207034.P7580853507873956297
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A337377 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A207034.P7580853507873956297

namespace A207034

/-- `A000120(record[n/A337377(n)])` -/
def P7580853507873956297.Spec : Prop :=
  ∀ n, P7580853507873956297.a n = A207034 (n + 1)

end A207034

/-! ## A207034.P2875278304150018529

`A000120(eq[n, A331856(2*n)])`
-/

namespace A207034.P2875278304150018529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331856 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207034.P2875278304150018529

namespace A207034

/-- `A000120(eq[n, A331856(2*n)])` -/
def P2875278304150018529.Spec : Prop :=
  ∀ n, P2875278304150018529.a n = A207034 (n + 1)

end A207034

/-! ## A207034.P360183652805699099

`A061338(A194602(n))%A016813(n)`
-/

namespace A207034.P360183652805699099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061338 (A194602 n).toNat) (A016813 n)

end

end A207034.P360183652805699099

namespace A207034

/-- `A061338(A194602(n))%A016813(n)` -/
def P360183652805699099.Spec : Prop :=
  ∀ n, P360183652805699099.a n = A207034 (n + 1)

end A207034

/-! ## A207034.P8161118889863248789

`A061338(A194602(n)%A141759(n))`
-/

namespace A207034.P8161118889863248789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061338 (Int.tmod (A194602 n) (A141759 n)).toNat

end

end A207034.P8161118889863248789

namespace A207034

/-- `A061338(A194602(n)%A141759(n))` -/
def P8161118889863248789.Spec : Prop :=
  ∀ n, P8161118889863248789.a n = A207034 (n + 1)

end A207034

/-! ## A207034.P9665413866092098616

`A000120(eq[A005940(n+1), A278222(n)])`
-/

namespace A207034.P9665413866092098616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A207034.P9665413866092098616

namespace A207034

/-- `A000120(eq[A005940(n+1), A278222(n)])` -/
def P9665413866092098616.Spec : Prop :=
  ∀ n, P9665413866092098616.a n = A207034 (n + 1)

end A207034

/-! ## A207034.P14950417261624341665

`A000120(eq[A000120(n), A055941(n)])`
-/

namespace A207034.P14950417261624341665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A207034.P14950417261624341665

namespace A207034

/-- `A000120(eq[A000120(n), A055941(n)])` -/
def P14950417261624341665.Spec : Prop :=
  ∀ n, P14950417261624341665.a n = A207034 (n + 1)

end A207034

/-!
# A207035: Sum of all parts minus the total number of parts of the last section of the set of partitions of n.

The programs for A207035, there is no canonical definition to state claims against.
-/

/-! ## A207035.P496783182929775031

`A138879(n+1)-A138137(n+1)`
-/

namespace A207035.P496783182929775031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138879 (n + 1) - A138137 (n + 1)

end

end A207035.P496783182929775031

/-! ## A207035.P748005248203612267

`A138880(n+1)-A138135(n+1)`
-/

namespace A207035.P748005248203612267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138880 (n + 1) - A138135 (n + 1)

end

end A207035.P748005248203612267

/-! ## A207035.P12732678601826932518

`n*A002865(n+1)-A182699(n+1)`
-/

namespace A207035.P12732678601826932518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002865 (n + 1) - A182699 (n + 1)

end

end A207035.P12732678601826932518

/-! ## A207035.P2816271332502468950

`A138879(n+1)-(A206434(n+1)+A206433(n+1))`
-/

namespace A207035.P2816271332502468950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138879 (n + 1) - (A206434 (n + 1) + A206433 (n + 1))

end

end A207035.P2816271332502468950

/-! ## A207035.P16941702135685163557

`A138879(n+1)+A006128(n)-A006128(n+1)`
-/

namespace A207035.P16941702135685163557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138879 (n + 1) + (A006128 n - A006128 (n + 1))

end

end A207035.P16941702135685163557

/-! ## A207035.P1421984217522290301

`A138880(n+1)+A093694(n)-A006128(n+1)`
-/

namespace A207035.P1421984217522290301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138880 (n + 1) + (A093694 n - A006128 (n + 1))

end

end A207035.P1421984217522290301

/-! ## A207035.P17730188523838404750

`A196087(n+1)+A006128(n)-A066186(n)`
-/

namespace A207035.P17730188523838404750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196087 (n + 1) + (A006128 n - A066186 n)

end

end A207035.P17730188523838404750

/-! ## A207035.P4802556176842426279

`Δ[n*A000041(n)-A006128(n)]`
-/

namespace A207035.P4802556176842426279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000041 n - A006128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A207035.P4802556176842426279

/-! ## A207035.P7057039734850071707

`A066186(n+1)-(A138137(n+1)+A066186(n))`
-/

namespace A207035.P7057039734850071707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - (A138137 (n + 1) + A066186 n)

end

end A207035.P7057039734850071707

/-! ## A207035.P4093339820404330767

`Δ[A161224(∑[n])]`
-/

namespace A207035.P4093339820404330767
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161224 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A207035.P4093339820404330767

/-!
# A207036: Numbers k such that the sum of divisors of k is a multiple of 24.

The programs for A207036, the canonical program `A207036.P14090468834582870259` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207036 has offset 1).

The definition of A207036 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207036.P14090468834582870259

`eq[0, A000203(n+2)%24]+2`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A207036

/-- `eq[0, A000203(n+2)%24]+2` -/
def P14090468834582870259.Spec : Prop :=
  ∀ n, (P14090468834582870259.a n : ℤ) = A207036 (n + 1)

theorem P14090468834582870259.correct : P14090468834582870259.Spec := by
  intro n
  simp only [A207036, Nat.add_sub_cancel]

end A207036

/-! ## A207036.P13363298345634784086

`eq[24, gcd(24, A000203(n+1))]+1`
-/

namespace A207036.P13363298345634784086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 24 (A000203 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A207036.P13363298345634784086

namespace A207036

/-- `eq[24, gcd(24, A000203(n+1))]+1` -/
def P13363298345634784086.Spec : Prop :=
  ∀ n, (P13363298345634784086.a n : ℤ) = A207036 (n + 1)

end A207036

/-! ## A207036.P10304835744420203918

`A009056(eq[0, A000203(n+2)%24])`
-/

namespace A207036.P10304835744420203918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 2)) 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207036.P10304835744420203918

namespace A207036

/-- `A009056(eq[0, A000203(n+2)%24])` -/
def P10304835744420203918.Spec : Prop :=
  ∀ n, P10304835744420203918.a n = A207036 (n + 1)

end A207036

/-! ## A207036.P1590582721323129206

`lt[2, A007814(ceil(A000203(n+1)/3))]+1`
-/

namespace A207036.P1590582721323129206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 ⌈(A000203 (n + 1) : ℚ) / 3⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A207036.P1590582721323129206

namespace A207036

/-- `lt[2, A007814(ceil(A000203(n+1)/3))]+1` -/
def P1590582721323129206.Spec : Prop :=
  ∀ n, (P1590582721323129206.a n : ℤ) = A207036 (n + 1)

end A207036

/-! ## A207036.P2233350461749182176

`lt[4, A007814(A275632(n))]`
-/

namespace A207036.P2233350461749182176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A275632 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A207036.P2233350461749182176

namespace A207036

/-- `lt[4, A007814(A275632(n))]` -/
def P2233350461749182176.Spec : Prop :=
  ∀ n, (P2233350461749182176.a n : ℤ) = A207036 (n + 1)

end A207036

/-!
# A207037: E.g.f. A(x) satisfies A(x-log(1+A(x))) = x.

The programs for A207037, there is no canonical definition to state claims against.
-/

/-! ## A207037.P2814315665811460934

`Δ[A045340(and(2*a(n-1)+1, -(n+1)))]` with `a(0)=-1, a(1)=0`
-/

namespace A207037.P2814315665811460934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 0] fun n f1 =>
  A045340 (Int.land (2 * f1 (n - 1) + 1) (-(n + 1 : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A207037.P2814315665811460934

/-!
# A207038: Partial sums of A207034.

The programs for A207038, the canonical program `A207038.P5475274817156495551` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207038 has offset 1).

The definition of A207038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207038.P5475274817156495551

`∑[A207034(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A207038

/-- `∑[A207034(n+1)]` -/
def P5475274817156495551.Spec : Prop :=
  ∀ n, P5475274817156495551.a n = A207038 (n + 1)

theorem P5475274817156495551.correct : P5475274817156495551.Spec := by
  intro n
  simp only [A207038, Nat.add_sub_cancel]

end A207038

/-! ## A207038.P5767074767483659099

`∑[A001222(A001316(A194602(n)))]`
-/

namespace A207038.P5767074767483659099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001316 (A194602 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207038.P5767074767483659099

namespace A207038

/-- `∑[A001222(A001316(A194602(n)))]` -/
def P5767074767483659099.Spec : Prop :=
  ∀ n, P5767074767483659099.a n = A207038 (n + 1)

end A207038

/-! ## A207038.P3951904836760660065

`∑[∑{d}[A194602(n), A297115(#)]]`
-/

namespace A207038.P3951904836760660065
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194602 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A297115 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207038.P3951904836760660065

namespace A207038

/-- `∑[∑{d}[A194602(n), A297115(#)]]` -/
def P3951904836760660065.Spec : Prop :=
  ∀ n, P3951904836760660065.a n = A207038 (n + 1)

end A207038

/-! ## A207038.P18290099642859920683

`∑[A000120(A194602(n))]`
-/

namespace A207038.P18290099642859920683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A194602 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207038.P18290099642859920683

namespace A207038

/-- `∑[A000120(A194602(n))]` -/
def P18290099642859920683.Spec : Prop :=
  ∀ n, P18290099642859920683.a n = A207038 (n + 1)

end A207038

/-! ## A207038.P10318983472002376360

`∑[A057526(A194602(n)+1)]`
-/

namespace A207038.P10318983472002376360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057526 (A194602 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207038.P10318983472002376360

namespace A207038

/-- `∑[A057526(A194602(n)+1)]` -/
def P10318983472002376360.Spec : Prop :=
  ∀ n, P10318983472002376360.a n = A207038 (n + 1)

end A207038

/-! ## A207038.P2441462882284581395

`∑[A000120(record[A331856(2*n)])]`
-/

namespace A207038.P2441462882284581395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331856 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207038.P2441462882284581395

namespace A207038

/-- `∑[A000120(record[A331856(2*n)])]` -/
def P2441462882284581395.Spec : Prop :=
  ∀ n, P2441462882284581395.a n = A207038 (n + 1)

end A207038

/-! ## A207038.P9090711722614523879

`∑[A061338(A194602(n))%A000040(n+1)]`
-/

namespace A207038.P9090711722614523879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061338 (A194602 n).toNat) (A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207038.P9090711722614523879

namespace A207038

/-- `∑[A061338(A194602(n))%A000040(n+1)]` -/
def P9090711722614523879.Spec : Prop :=
  ∀ n, P9090711722614523879.a n = A207038 (n + 1)

end A207038

/-! ## A207038.P9369589264489383720

`∑[A061338(A194602(n))]%A000096(n+1)`
-/

namespace A207038.P9369589264489383720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061338 (A194602 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000096 (n + 1))

end

end A207038.P9369589264489383720

namespace A207038

/-- `∑[A061338(A194602(n))]%A000096(n+1)` -/
def P9369589264489383720.Spec : Prop :=
  ∀ n, P9369589264489383720.a n = A207038 (n + 1)

end A207038

/-! ## A207038.P4236580169577826495

`(n+1)²-A273140(n+1)`
-/

namespace A207038.P4236580169577826495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A273140 (n + 1)

end

end A207038.P4236580169577826495

namespace A207038

/-- `(n+1)²-A273140(n+1)` -/
def P4236580169577826495.Spec : Prop :=
  ∀ n, P4236580169577826495.a n = A207038 (n + 1)

end A207038

/-!
# A207039: Primes whose binary expansion is not palindromic.

The programs for A207039, the canonical program `A207039.P8427512328363717654` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207039 has offset 1).

The definition of A207039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6489 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207039.P8427512328363717654

`p?[n*A178226(n)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A207039

/-- `p?[n*A178226(n)]` -/
def P8427512328363717654.Spec : Prop :=
  ∀ n, P8427512328363717654.a n = A207039 (n + 1)

theorem P8427512328363717654.correct : P8427512328363717654.Spec := by
  intro n
  simp only [A207039, Nat.add_sub_cancel]

end A207039

/-! ## A207039.P6410309396860026167

`p?[A140807(n+2)+2+n]`
-/

namespace A207039.P6410309396860026167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140807 (n + 2) + 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A207039.P6410309396860026167

namespace A207039

/-- `p?[A140807(n+2)+2+n]` -/
def P6410309396860026167.Spec : Prop :=
  ∀ n, P6410309396860026167.a n = A207039 (n + 1)

end A207039

/-! ## A207039.P8241035828862135824

`filter[A000040(n+1), A178226(#)]`
-/

namespace A207039.P8241035828862135824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A207039.P8241035828862135824

namespace A207039

/-- `filter[A000040(n+1), A178226(#)]` -/
def P8241035828862135824.Spec : Prop :=
  ∀ n, P8241035828862135824.a n = A207039 (n + 1)

end A207039

/-! ## A207039.P9565744160342628033

`filter[A008578(n+1), A178226(#)]`
-/

namespace A207039.P9565744160342628033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A207039.P9565744160342628033

namespace A207039

/-- `filter[A008578(n+1), A178226(#)]` -/
def P9565744160342628033.Spec : Prop :=
  ∀ n, P9565744160342628033.a n = A207039 (n + 1)

end A207039

/-! ## A207039.P18128531212437831433

`filter[A045319(n+1), A178226(#)]`
-/

namespace A207039.P18128531212437831433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A207039.P18128531212437831433

namespace A207039

/-- `filter[A045319(n+1), A178226(#)]` -/
def P18128531212437831433.Spec : Prop :=
  ∀ n, P18128531212437831433.a n = A207039 (n + 1)

end A207039

/-! ## A207039.P7380154419928722295

`filter[A045344(n+1), A178226(#)]`
-/

namespace A207039.P7380154419928722295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A207039.P7380154419928722295

namespace A207039

/-- `filter[A045344(n+1), A178226(#)]` -/
def P7380154419928722295.Spec : Prop :=
  ∀ n, P7380154419928722295.a n = A207039 (n + 1)

end A207039

/-! ## A207039.P4931299097745692299

`filter[A138837(n+1), A178226(#)]`
-/

namespace A207039.P4931299097745692299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A207039.P4931299097745692299

namespace A207039

/-- `filter[A138837(n+1), A178226(#)]` -/
def P4931299097745692299.Spec : Prop :=
  ∀ n, P4931299097745692299.a n = A207039 (n + 1)

end A207039

/-! ## A207039.P15973579760091177445

`filter[A158611(n+1), A178226(#)]`
-/

namespace A207039.P15973579760091177445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A207039.P15973579760091177445

namespace A207039

/-- `filter[A158611(n+1), A178226(#)]` -/
def P15973579760091177445.Spec : Prop :=
  ∀ n, P15973579760091177445.a n = A207039 (n + 1)

end A207039

/-! ## A207039.P2472071373555610173

`filter[A161847(n+1), A178226(#)]`
-/

namespace A207039.P2472071373555610173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A207039.P2472071373555610173

namespace A207039

/-- `filter[A161847(n+1), A178226(#)]` -/
def P2472071373555610173.Spec : Prop :=
  ∀ n, P2472071373555610173.a n = A207039 (n + 1)

end A207039

/-! ## A207039.P17262472461475499919

`filter[A182986(n+1), A178226(#)]`
-/

namespace A207039.P17262472461475499919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A207039.P17262472461475499919

namespace A207039

/-- `filter[A182986(n+1), A178226(#)]` -/
def P17262472461475499919.Spec : Prop :=
  ∀ n, P17262472461475499919.a n = A207039 (n + 1)

end A207039

/-! ## A207039.P7627551940964335245

`filter[A111688(2*n+1), A178226(#)]`
-/

namespace A207039.P7627551940964335245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111688 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A207039.P7627551940964335245

namespace A207039

/-- `filter[A111688(2*n+1), A178226(#)]` -/
def P7627551940964335245.Spec : Prop :=
  ∀ n, P7627551940964335245.a n = A207039 (n + 1)

end A207039

/-! ## A207039.P16639739022147530654

`filter[A067747(2*n+1), A178226(#)]`
-/

namespace A207039.P16639739022147530654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A207039.P16639739022147530654

namespace A207039

/-- `filter[A067747(2*n+1), A178226(#)]` -/
def P16639739022147530654.Spec : Prop :=
  ∀ n, P16639739022147530654.a n = A207039 (n + 1)

end A207039

/-! ## A207039.P10906013370472590028

`filter[A109763(2*n+1), A178226(#)]`
-/

namespace A207039.P10906013370472590028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109763 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A207039.P10906013370472590028

namespace A207039

/-- `filter[A109763(2*n+1), A178226(#)]` -/
def P10906013370472590028.Spec : Prop :=
  ∀ n, P10906013370472590028.a n = A207039 (n + 1)

end A207039

/-! ## A207039.P12971382919158238948

`filter[A129767(2*n+1), A178226(#)]`
-/

namespace A207039.P12971382919158238948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129767 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A207039.P12971382919158238948

namespace A207039

/-- `filter[A129767(2*n+1), A178226(#)]` -/
def P12971382919158238948.Spec : Prop :=
  ∀ n, P12971382919158238948.a n = A207039 (n + 1)

end A207039

/-! ## A207039.P15747909553103746057

`filter[A134735(2*n+1), A178226(#)]`
-/

namespace A207039.P15747909553103746057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134735 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A207039.P15747909553103746057

namespace A207039

/-- `filter[A134735(2*n+1), A178226(#)]` -/
def P15747909553103746057.Spec : Prop :=
  ∀ n, P15747909553103746057.a n = A207039 (n + 1)

end A207039

/-! ## A207039.P11580581704318342809

`filter[A130008(n), A178226(#)]`
-/

namespace A207039.P11580581704318342809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A207039.P11580581704318342809

namespace A207039

/-- `filter[A130008(n), A178226(#)]` -/
def P11580581704318342809.Spec : Prop :=
  ∀ n, P11580581704318342809.a n = A207039 (n + 1)

end A207039

/-! ## A207039.P15385172708361205618

`filter[A162753(2*n), A178226(#)]`
-/

namespace A207039.P15385172708361205618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A207039.P15385172708361205618

namespace A207039

/-- `filter[A162753(2*n), A178226(#)]` -/
def P15385172708361205618.Spec : Prop :=
  ∀ n, P15385172708361205618.a n = A207039 (n + 1)

end A207039

/-! ## A207039.P9907434769767961518

`filter[A103825(2*n+1), A178226(#)]`
-/

namespace A207039.P9907434769767961518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103825 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A207039.P9907434769767961518

namespace A207039

/-- `filter[A103825(2*n+1), A178226(#)]` -/
def P9907434769767961518.Spec : Prop :=
  ∀ n, P9907434769767961518.a n = A207039 (n + 1)

end A207039

/-! ## A207039.P2504616590622880005

`filter[A181363(2*n+1), A178226(#)]`
-/

namespace A207039.P2504616590622880005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181363 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A207039.P2504616590622880005

namespace A207039

/-- `filter[A181363(2*n+1), A178226(#)]` -/
def P2504616590622880005.Spec : Prop :=
  ∀ n, P2504616590622880005.a n = A207039 (n + 1)

end A207039

/-! ## A207039.P3609121046852887764

`filter[A075643(n+1), A178226(#)]`
-/

namespace A207039.P3609121046852887764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A207039.P3609121046852887764

namespace A207039

/-- `filter[A075643(n+1), A178226(#)]` -/
def P3609121046852887764.Spec : Prop :=
  ∀ n, P3609121046852887764.a n = A207039 (n + 1)

end A207039

/-!
# A207040: Generalized Gaussian-Mersenne primes (see below).

The programs for A207040, there is no canonical definition to state claims against.
-/

/-! ## A207040.P2931323458585587395

`p?[or(4*n, A034802(n))]`
-/

namespace A207040.P2931323458585587395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (4 * n : ℤ) (A034802 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A207040.P2931323458585587395

/-! ## A207040.P12472490933845768438

`p?[or(4*n, A308292(n))]`
-/

namespace A207040.P12472490933845768438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (4 * n : ℤ) (A308292 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A207040.P12472490933845768438

/-! ## A207040.P10799726860899598934

`∩[A133204(n+1), A191932(n+1)]`
-/

namespace A207040.P10799726860899598934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207040.P10799726860899598934

/-! ## A207040.P5329485033556944161

`∩[A191932(n+1), A385224(n+1)]`
-/

namespace A207040.P5329485033556944161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207040.P5329485033556944161

/-!
# A207042: Number of (n+1) X (n+1) 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly one clockwise edge increases.

The programs for A207042, there is no canonical definition to state claims against.
-/

/-! ## A207042.P14423136996915362381

`A207050(∑[4*n]+1)`
-/

namespace A207042.P14423136996915362381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207042.P14423136996915362381

/-! ## A207042.P1390171341470374191

`lcm(3, A207050(A001844(n)))`
-/

namespace A207042.P1390171341470374191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A207050 (A001844 n).toNat)

end

end A207042.P1390171341470374191

/-! ## A207042.P15908432910862942688

`record[gcd(A008482(n), A207050(n+1))]`
-/

namespace A207042.P15908432910862942688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A207050 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207042.P15908432910862942688

/-! ## A207042.P9359764522411759632

`record[A077606(n+1)*A207050(n+1)]`
-/

namespace A207042.P9359764522411759632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A207050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207042.P9359764522411759632

/-! ## A207042.P17490216299606748582

`A207050(A001844(n))+A000007(A000041(n+1))`
-/

namespace A207042.P17490216299606748582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (A001844 n).toNat + A000007 (A000041 (n + 1)).toNat

end

end A207042.P17490216299606748582

/-!
# A207043: Number of (n+1) X 2 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly one clockwise edge increases.

The programs for A207043, there is no canonical definition to state claims against.
-/

/-! ## A207043.P12545614780524008188

`A207050(∑[n]+1)`
-/

namespace A207043.P12545614780524008188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207043.P12545614780524008188

/-! ## A207043.P3699927277319520968

`record[A207050(n+1)]`
-/

namespace A207043.P3699927277319520968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207043.P3699927277319520968

/-! ## A207043.P1225153933366417175

`lcm(3, A207050(A000124(n)))`
-/

namespace A207043.P1225153933366417175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A207050 (A000124 n).toNat)

end

end A207043.P1225153933366417175

/-! ## A207043.P9718877385390286192

`or(A000007(n), A207050(A000124(n)))`
-/

namespace A207043.P9718877385390286192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A207050 (A000124 n).toNat)

end

end A207043.P9718877385390286192

/-! ## A207043.P1998986280496626195

`or(A055641(n), A207050(A000124(n)))`
-/

namespace A207043.P1998986280496626195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055641 n) (A207050 (A000124 n).toNat)

end

end A207043.P1998986280496626195

/-! ## A207043.P2362414615099963533

`A207050(A000124(n))+A000007(n+1)`
-/

namespace A207043.P2362414615099963533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (A000124 n).toNat + A000007 (n + 1)

end

end A207043.P2362414615099963533

/-! ## A207043.P1082293402591764046

`A207050(A000124(n))+char[A207050(n+1)]`
-/

namespace A207043.P1082293402591764046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (A000124 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A207043.P1082293402591764046

/-! ## A207043.P2163973075498925013

`A207050(A000124(n))*A260438(2*(n+1))`
-/

namespace A207043.P2163973075498925013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (A000124 n).toNat * A260438 (2 * (n + 1))

end

end A207043.P2163973075498925013

/-! ## A207043.P15664953933482220707

`A207050(A000124(n))+val(A000040(n+1), 4)`
-/

namespace A207043.P15664953933482220707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (A000124 n).toNat + (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 4 : ℤ)

end

end A207043.P15664953933482220707

/-! ## A207043.P4660403874270881496

`A001222(A260868(n+1))*A207050(A000124(n))`
-/

namespace A207043.P4660403874270881496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A260868 (n + 1)).toNat * A207050 (A000124 n).toNat

end

end A207043.P4660403874270881496

/-!
# A207044: Number of (n+1) X 3 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly one clockwise edge increases.

The programs for A207044, there is no canonical definition to state claims against.
-/

/-! ## A207044.P17744469609471249958

`A207050(∑[n+1]+2)`
-/

namespace A207044.P17744469609471249958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A207044.P17744469609471249958

/-! ## A207044.P11957253647835741880

`or(1, A207050(A133263(n+1)))-1`
-/

namespace A207044.P11957253647835741880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A207050 (A133263 (n + 1)).toNat) - 1

end

end A207044.P11957253647835741880

/-! ## A207044.P177442080103226838

`A207050(A133263(n+1))%A108946(n+4)`
-/

namespace A207044.P177442080103226838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207050 (A133263 (n + 1)).toNat) (A108946 (n + 4))

end

end A207044.P177442080103226838

/-! ## A207044.P14812896179896095239

`A207050(A133263(n+1))+and(2, A103588(n))`
-/

namespace A207044.P14812896179896095239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (A133263 (n + 1)).toNat + Int.land 2 (A103588 n)

end

end A207044.P14812896179896095239

/-! ## A207044.P16529821267899984023

`A207050(A133263(n+1))+char[A207050(n+2)]`
-/

namespace A207044.P16529821267899984023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (A133263 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A207044.P16529821267899984023

/-! ## A207044.P10585314882982032059

`A207050(A133263(n+1))+A008683(4*(n+2))`
-/

namespace A207044.P10585314882982032059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (A133263 (n + 1)).toNat + A008683 (4 * (n + 2))

end

end A207044.P10585314882982032059

/-! ## A207044.P17615227903152844160

`or(A000038(n), A207050(A000096(n+1)))`
-/

namespace A207044.P17615227903152844160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A207050 (A000096 (n + 1)).toNat)

end

end A207044.P17615227903152844160

/-! ## A207044.P1072271915912784006

`char[A004488(n)]*A207050(A000096(n+1))`
-/

namespace A207044.P1072271915912784006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A207050 (A000096 (n + 1)).toNat

end

end A207044.P1072271915912784006

/-! ## A207044.P12278658260392297951

`A207050(A000096(n+1))+A000038(n+1)`
-/

namespace A207044.P12278658260392297951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (A000096 (n + 1)).toNat + A000038 (n + 1)

end

end A207044.P12278658260392297951

/-!
# A207045: Number of (n+1) X 4 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly one clockwise edge increases.

The programs for A207045, there is no canonical definition to state claims against.
-/

/-! ## A207045.P14065775020154677668

`record[A207050(∑[n-2]+6)]`
-/

namespace A207045.P14065775020154677668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (∑ j ∈ Finset.range (n + 1), f2 j + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207045.P14065775020154677668

/-! ## A207045.P4420207701488014568

`A207050(A167614(n+1))`
-/

namespace A207045.P4420207701488014568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (A167614 (n + 1)).toNat

end

end A207045.P4420207701488014568

/-! ## A207045.P12800410937953092784

`A207050(A373663(n+1))`
-/

namespace A207045.P12800410937953092784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (A373663 (n + 1)).toNat

end

end A207045.P12800410937953092784

/-! ## A207045.P3931247741046049475

`A207050(A055998(n)+6)`
-/

namespace A207045.P3931247741046049475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (A055998 n + 6).toNat

end

end A207045.P3931247741046049475

/-! ## A207045.P17784077579177105772

`A207050(A046691(n)+7)`
-/

namespace A207045.P17784077579177105772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (A046691 n + 7).toNat

end

end A207045.P17784077579177105772

/-! ## A207045.P14744932921255904457

`A207050(A167499(n)+n)`
-/

namespace A207045.P14744932921255904457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (A167499 n + (n : ℤ)).toNat

end

end A207045.P14744932921255904457

/-! ## A207045.P12936858382907930950

`A207050(Δ[A034857(n+1)-n²])`
-/

namespace A207045.P12936858382907930950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (f1 (n + 1) - f1 n).toNat

end

end A207045.P12936858382907930950

/-! ## A207045.P6330277342820770910

`A207050(∑[n+3]+1)`
-/

namespace A207045.P6330277342820770910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207045.P6330277342820770910

/-!
# A207046: Number of (n+1)X5 0..2 arrays with every 2X3 or 3X2 subblock having exactly one clockwise edge increases.

The programs for A207046, there is no canonical definition to state claims against.
-/

/-! ## A207046.P6421701391046487238

`A207050(∑[n+3]+7)`
-/

namespace A207046.P6421701391046487238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A207046.P6421701391046487238

/-! ## A207046.P6013650609838558991

`lcm(2, A207050(A055999(n)+10))`
-/

namespace A207046.P6013650609838558991
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A207050 (A055999 n + 10).toNat)

end

end A207046.P6013650609838558991

/-! ## A207046.P17907228825139733062

`lcm(3, A207050(A167614(n+2)+1))`
-/

namespace A207046.P17907228825139733062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A207050 (A167614 (n + 2) + 1).toNat)

end

end A207046.P17907228825139733062

/-! ## A207046.P13884632155060587843

`A207050(A055999(n)+10)+A145649(2*(n+1))`
-/

namespace A207046.P13884632155060587843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (A055999 n + 10).toNat + A145649 (2 * (n + 1))

end

end A207046.P13884632155060587843

/-! ## A207046.P67554642602023428

`A072170(A000096(n))*A207050(A055999(n)+10)`
-/

namespace A207046.P67554642602023428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072170 (A000096 n).toNat * A207050 (A055999 n + 10).toNat

end

end A207046.P67554642602023428

/-! ## A207046.P10788277233979870069

`A014963(A254730(n))*A207050(A055999(n)+10)`
-/

namespace A207046.P10788277233979870069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A254730 n).toNat * A207050 (A055999 n + 10).toNat

end

end A207046.P10788277233979870069

/-! ## A207046.P16863616177933347516

`A014963(A031892(n+1))*A207050(A055999(n)+10)`
-/

namespace A207046.P16863616177933347516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A031892 (n + 1)).toNat * A207050 (A055999 n + 10).toNat

end

end A207046.P16863616177933347516

/-! ## A207046.P10339597141566137717

`A014963(A328328(n+1))*A207050(A055999(n)+10)`
-/

namespace A207046.P10339597141566137717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A328328 (n + 1)).toNat * A207050 (A055999 n + 10).toNat

end

end A207046.P10339597141566137717

/-! ## A207046.P3648761922995714372

`A014963(A335201(n+1))*A207050(A055999(n)+10)`
-/

namespace A207046.P3648761922995714372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A335201 (n + 1)).toNat * A207050 (A055999 n + 10).toNat

end

end A207046.P3648761922995714372

/-! ## A207046.P15990312024705088611

`A014963(6*A006530(n+2))*A207050(A055999(n)+10)`
-/

namespace A207046.P15990312024705088611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * A006530 (n + 2)).toNat * A207050 (A055999 n + 10).toNat

end

end A207046.P15990312024705088611

/-!
# A207047: Number of (n+1) X 6 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly one clockwise edge increases.

The programs for A207047, there is no canonical definition to state claims against.
-/

/-! ## A207047.P7016819341481936795

`A207050(A374005(n+1))`
-/

namespace A207047.P7016819341481936795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (A374005 (n + 1)).toNat

end

end A207047.P7016819341481936795

/-! ## A207047.P1029572232231878072

`A207050(A167499(n+3))`
-/

namespace A207047.P1029572232231878072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (A167499 (n + 3)).toNat

end

end A207047.P1029572232231878072

/-! ## A207047.P2831794603843976773

`A207050(A056000(n)+15)`
-/

namespace A207047.P2831794603843976773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (A056000 n + 15).toNat

end

end A207047.P2831794603843976773

/-! ## A207047.P13036314478550537364

`A207050(A000217(n+4)+5)`
-/

namespace A207047.P13036314478550537364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (A000217 (n + 4) + 5).toNat

end

end A207047.P13036314478550537364

/-! ## A207047.P15181328243990812130

`A207050(A173036(n)+A016825(n))`
-/

namespace A207047.P15181328243990812130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (A173036 n + A016825 n).toNat

end

end A207047.P15181328243990812130

/-! ## A207047.P3066998499750746260

`A207050(A155212(n)+13)%A207048(n+1)`
-/

namespace A207047.P3066998499750746260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207050 (A155212 n + 13).toNat) (A207048 (n + 1))

end

end A207047.P3066998499750746260

/-! ## A207047.P14829368229513965501

`A207050(∑[n+5]+6)`
-/

namespace A207047.P14829368229513965501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A207047.P14829368229513965501

/-! ## A207047.P2698317624962453900

`lcm(3, A207050(Δ[A264443(n)]))`
-/

namespace A207047.P2698317624962453900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A207050 (f1 (n + 1) - f1 n).toNat)

end

end A207047.P2698317624962453900

/-!
# A207048: Number of (n+1) X 7 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly one clockwise edge increases.

The programs for A207048, there is no canonical definition to state claims against.
-/

/-! ## A207048.P13585243009876188561

`A207050(A374007(n+1))`
-/

namespace A207048.P13585243009876188561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (A374007 (n + 1)).toNat

end

end A207048.P13585243009876188561

/-! ## A207048.P13696416448785689432

`A207050(A000124(n+5)+5)`
-/

namespace A207048.P13696416448785689432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (A000124 (n + 5) + 5).toNat

end

end A207048.P13696416448785689432

/-! ## A207048.P13169391499071454211

`A207050(A000096(n+4)+7)`
-/

namespace A207048.P13169391499071454211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (A000096 (n + 4) + 7).toNat

end

end A207048.P13169391499071454211

/-! ## A207048.P3202127831387582032

`A207050(A000217(n+5)+6)`
-/

namespace A207048.P3202127831387582032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (A000217 (n + 5) + 6).toNat

end

end A207048.P3202127831387582032

/-! ## A207048.P4248185312157145442

`A207050(A052905(n+3))`
-/

namespace A207048.P4248185312157145442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (A052905 (n + 3)).toNat

end

end A207048.P4248185312157145442

/-! ## A207048.P9163838275593650713

`A207050(A046691(n+4)-1)`
-/

namespace A207048.P9163838275593650713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (A046691 (n + 4) - 1).toNat

end

end A207048.P9163838275593650713

/-! ## A207048.P11228261859196068314

`A207050(Δ[A264443(n+1)]-1)`
-/

namespace A207048.P11228261859196068314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (f1 (n + 1) - f1 n - 1).toNat

end

end A207048.P11228261859196068314

/-! ## A207048.P17031530958789663706

`A207050(Δ[A023545(n+2)]-1)`
-/

namespace A207048.P17031530958789663706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (f1 (n + 1) - f1 n - 1).toNat

end

end A207048.P17031530958789663706

/-!
# A207049: Number of (n+1)X8 0..2 arrays with every 2X3 or 3X2 subblock having exactly one clockwise edge increases.

The programs for A207049, there is no canonical definition to state claims against.
-/

/-! ## A207049.P3760257678407544506

`A207050(A374008(n+1))`
-/

namespace A207049.P3760257678407544506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (A374008 (n + 1)).toNat

end

end A207049.P3760257678407544506

/-! ## A207049.P2588811072479451635

`A207050(A000217(n+6)+7)`
-/

namespace A207049.P2588811072479451635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (A000217 (n + 6) + 7).toNat

end

end A207049.P2588811072479451635

/-! ## A207049.P2381847790342214807

`A207050(A055999(n+4))`
-/

namespace A207049.P2381847790342214807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (A055999 (n + 4)).toNat

end

end A207049.P2381847790342214807

/-! ## A207049.P2422616141849680672

`A207050(A046691(n+5)-2)`
-/

namespace A207049.P2422616141849680672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (A046691 (n + 5) - 2).toNat

end

end A207049.P2422616141849680672

/-! ## A207049.P12296757982819559524

`A207050(A005843(n+4)+A000096(n+4))`
-/

namespace A207049.P12296757982819559524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (A005843 (n + 4) + A000096 (n + 4)).toNat

end

end A207049.P12296757982819559524

/-! ## A207049.P17032750289924562396

`A207050(A027379(n+7)-A103517(n+9))`
-/

namespace A207049.P17032750289924562396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (A027379 (n + 7) - A103517 (n + 9)).toNat

end

end A207049.P17032750289924562396

/-!
# A207051: Number of n X n 0..3 arrays avoiding the pattern z-1 z-1 z in any row or column.

The programs for A207051, there is no canonical definition to state claims against.
-/

/-! ## A207051.P10379098332913509313

`A207057(∑[4*n]+1)`
-/

namespace A207051.P10379098332913509313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207057 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207051.P10379098332913509313

/-!
# A207052: Number of n X 3 0..3 arrays avoiding the pattern z-1 z-1 z in any row or column.

The programs for A207052, there is no canonical definition to state claims against.
-/

/-! ## A207052.P13391696060998355714

`A207057(∑[n+2]+4)`
-/

namespace A207052.P13391696060998355714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207057 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207052.P13391696060998355714

/-! ## A207052.P3945427442630346589

`A207057(A167614(n+1))*A238015(n)`
-/

namespace A207052.P3945427442630346589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207057 (A167614 (n + 1)).toNat * A238015 n

end

end A207052.P3945427442630346589

/-! ## A207052.P3672322699371584316

`lcm(A020985(n), A207057(A167614(n+1)))`
-/

namespace A207052.P3672322699371584316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A207057 (A167614 (n + 1)).toNat)

end

end A207052.P3672322699371584316

/-! ## A207052.P2237418149262457701

`or(A000007(n), A207057(A167614(n+1)))`
-/

namespace A207052.P2237418149262457701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A207057 (A167614 (n + 1)).toNat)

end

end A207052.P2237418149262457701

/-! ## A207052.P1168805069732505592

`A207057(A167614(n+1))/A238015(n+1)`
-/

namespace A207052.P1168805069732505592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207057 (A167614 (n + 1)).toNat : ℚ) / (A238015 (n + 1) : ℚ)

end

end A207052.P1168805069732505592

/-!
# A207053: Number of nX4 0..3 arrays avoiding the pattern z-1 z-1 z in any row or column.

The programs for A207053, there is no canonical definition to state claims against.
-/

/-! ## A207053.P2294711682388613102

`A207057(A052905(n)+9)`
-/

namespace A207053.P2294711682388613102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207057 (A052905 n + 9).toNat

end

end A207053.P2294711682388613102

/-! ## A207053.P2283205021665034261

`A207057(A167614(n+2)+1)`
-/

namespace A207053.P2283205021665034261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207057 (A167614 (n + 2) + 1).toNat

end

end A207053.P2283205021665034261

/-! ## A207053.P8063900645770531421

`A207057(∑[n+4]+3)`
-/

namespace A207053.P8063900645770531421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207057 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A207053.P8063900645770531421

/-!
# A207054: Number of nX5 0..3 arrays avoiding the pattern z-1 z-1 z in any row or column.

The programs for A207054, there is no canonical definition to state claims against.
-/

/-! ## A207054.P17131847208262802444

`A207057(eq[7, A131818(n+1)]-(n+6))`
-/

namespace A207054.P17131847208262802444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207057 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - (n + 6))

end

end A207054.P17131847208262802444

/-! ## A207054.P17806687226972190063

`A207057(A374005(n+1))`
-/

namespace A207054.P17806687226972190063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207057 (A374005 (n + 1)).toNat

end

end A207054.P17806687226972190063

/-! ## A207054.P15518017513977904190

`A207057(A046691(n+3))`
-/

namespace A207054.P15518017513977904190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207057 (A046691 (n + 3)).toNat

end

end A207054.P15518017513977904190

/-! ## A207054.P6877786345435894771

`A207057(A000096(n+4)-3)`
-/

namespace A207054.P6877786345435894771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207057 (A000096 (n + 4) - 3).toNat

end

end A207054.P6877786345435894771

/-!
# A207055: 

The programs for A207055, there is no canonical definition to state claims against.
-/

/-! ## A207055.P16442162416205073953

`A207057(A167499(n+4)+1)`
-/

namespace A207055.P16442162416205073953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207057 (A167499 (n + 4) + 1).toNat

end

end A207055.P16442162416205073953

/-! ## A207055.P4602648116511270468

`A207057(A000096(n+4)+7)`
-/

namespace A207055.P4602648116511270468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207057 (A000096 (n + 4) + 7).toNat

end

end A207055.P4602648116511270468

/-! ## A207055.P237025968424641791

`A207057(eq[7, A131818(n+1)])`
-/

namespace A207055.P237025968424641791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207057 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207055.P237025968424641791

/-! ## A207055.P6566070426220193491

`A207057(A052905(n+3))`
-/

namespace A207055.P6566070426220193491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207057 (A052905 (n + 3)).toNat

end

end A207055.P6566070426220193491

/-!
# A207057: T(n,k)=Number of nXk 0..3 arrays avoiding the pattern z-1 z-1 z in any row or column.

The programs for A207057, there is no canonical definition to state claims against.
-/

/-! ## A207057.P4210905304032767080

`A207134(n+1)-A020987(A110148(n+1))`
-/

namespace A207057.P4210905304032767080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207134 (n + 1) - A020987 (A110148 (n + 1)).toNat

end

end A207057.P4210905304032767080

/-! ## A207057.P4040084718518739450

`A207134(n+1)-A010054(A207050(n+1))`
-/

namespace A207057.P4040084718518739450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207134 (n + 1) - A010054 (A207050 (n + 1)).toNat

end

end A207057.P4040084718518739450

/-! ## A207057.P16357179972009985044

`A207134(A246086(n+1))-A047999(A207050(n+1))`
-/

namespace A207057.P16357179972009985044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207134 (A246086 (n + 1)).toNat - A047999 (A207050 (n + 1)).toNat

end

end A207057.P16357179972009985044

/-! ## A207057.P230144041837310672

`A207134(n+1)-A101605(A000051(n))`
-/

namespace A207057.P230144041837310672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207134 (n + 1) - A101605 (A000051 n).toNat

end

end A207057.P230144041837310672

/-!
# A207062: Number of n X n 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207062, there is no canonical definition to state claims against.
-/

/-! ## A207062.P3071745039114898034

`A207068((n+1)²+n²)`
-/

namespace A207062.P3071745039114898034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207068 ((n + 1) ^ 2 + n ^ 2)

end

end A207062.P3071745039114898034

/-! ## A207062.P5948610962157133596

`char[A001057(n)]*A207068(A001844(n))`
-/

namespace A207062.P5948610962157133596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A207068 (A001844 n).toNat

end

end A207062.P5948610962157133596

/-! ## A207062.P8392310457825848972

`A007318(∑[n+1])*A207068(A001844(n))`
-/

namespace A207062.P8392310457825848972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A207068 (A001844 n).toNat

end

end A207062.P8392310457825848972

/-! ## A207062.P420196651682507966

`A207068(A001844(n))/A007318(∑[n+2])`
-/

namespace A207062.P420196651682507966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207068 (A001844 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A207062.P420196651682507966

/-! ## A207062.P956277792550385926

`A207068(A001844(n))+A000007(A000041(n+1))`
-/

namespace A207062.P956277792550385926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207068 (A001844 n).toNat + A000007 (A000041 (n + 1)).toNat

end

end A207062.P956277792550385926

/-!
# A207063: a(n) is the smallest number larger than a(n-1) with mutual Hamming distance 2 and a(1)=0.

The programs for A207063, the canonical program `A207063.P16806840195117011538` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207063 has offset 1).

The definition of A207063 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207063.P16806840195117011538

`A081118(n+1)-A057211(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A207063

/-- `A081118(n+1)-A057211(n+1)` -/
def P16806840195117011538.Spec : Prop :=
  ∀ n, P16806840195117011538.a n = A207063 (n + 1)

theorem P16806840195117011538.correct : P16806840195117011538.Spec := by
  intro n
  simp only [A207063, Nat.add_sub_cancel]

end A207063

/-! ## A207063.P16444563423909777140

`A081118(n+1)-A143182(n)%2`
-/

namespace A207063.P16444563423909777140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081118 (n + 1) - Int.tmod (A143182 n) 2

end

end A207063.P16444563423909777140

namespace A207063

/-- `A081118(n+1)-A143182(n)%2` -/
def P16444563423909777140.Spec : Prop :=
  ∀ n, P16444563423909777140.a n = A207063 (n + 1)

end A207063

/-! ## A207063.P5396342794093325682

`A057212(n+1)+A081118(n+1)-1`
-/

namespace A207063.P5396342794093325682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057212 (n + 1) + (A081118 (n + 1) - 1)

end

end A207063.P5396342794093325682

namespace A207063

/-- `A057212(n+1)+A081118(n+1)-1` -/
def P5396342794093325682.Spec : Prop :=
  ∀ n, P5396342794093325682.a n = A207063 (n + 1)

theorem P5396342794093325682.correct : P5396342794093325682.Spec := by
  intro n
  simp only [A207063, Nat.add_sub_cancel, A207063.P5396342794093325682.a, A207063.P16806840195117011538.a, A057211, A057211.P13662060525465798747.a, A057212, A057212.P15780615681694366480.a, A081118, A081118.P6487108056144640916.a, A000035, A000035.P2023072528413494694.a, A002024, A002024.P11700297927830783882.a, A002260, A002260.P769748059679640451.a, A004736, A004736.P10337537277358081527.a, A000217, A000217.P10269402890581615239.a, A002262, A002262.P12129691700837801527.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A207063

/-! ## A207063.P8467608474883129213

`A043569(n+1)-(3-A201208(n+1))`
-/

namespace A207063.P8467608474883129213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043569 (n + 1) - (3 - A201208 (n + 1))

end

end A207063.P8467608474883129213

namespace A207063

/-- `A043569(n+1)-(3-A201208(n+1))` -/
def P8467608474883129213.Spec : Prop :=
  ∀ n, P8467608474883129213.a n = A207063 (n + 1)

theorem P8467608474883129213.correct : P8467608474883129213.Spec := by
  intro n
  simp only [A207063, Nat.add_sub_cancel, A207063.P8467608474883129213.a, A207063.P16806840195117011538.a, A043569, A043569.P15388862397033280106.a, A057211, A057211.P13662060525465798747.a, A081118, A081118.P6487108056144640916.a, A201208, A201208.P11775252334027749297.a, A000035, A000035.P2023072528413494694.a, A002024, A002024.P11700297927830783882.a, A002260, A002260.P769748059679640451.a, A004736, A004736.P10337537277358081527.a, A057212, A057212.P15780615681694366480.a, A000217, A000217.P10269402890581615239.a, A002262, A002262.P12129691700837801527.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A207063

/-! ## A207063.P5573733620380526643

`A081118(n+1)-A084855(n+1)%2`
-/

namespace A207063.P5573733620380526643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081118 (n + 1) - Int.tmod (A084855 (n + 1)) 2

end

end A207063.P5573733620380526643

namespace A207063

/-- `A081118(n+1)-A084855(n+1)%2` -/
def P5573733620380526643.Spec : Prop :=
  ∀ n, P5573733620380526643.a n = A207063 (n + 1)

end A207063

/-! ## A207063.P5658596372869195765

`A043569(n+1)-gcd(2, A093573(n+1))`
-/

namespace A207063.P5658596372869195765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043569 (n + 1) - (Int.gcd 2 (A093573 (n + 1)) : ℤ)

end

end A207063.P5658596372869195765

namespace A207063

/-- `A043569(n+1)-gcd(2, A093573(n+1))` -/
def P5658596372869195765.Spec : Prop :=
  ∀ n, P5658596372869195765.a n = A207063 (n + 1)

end A207063

/-! ## A207063.P9472021120208141005

`A081118(n+1)-and(1, A002024(n+1))`
-/

namespace A207063.P9472021120208141005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081118 (n + 1) - Int.land 1 (A002024 (n + 1))

end

end A207063.P9472021120208141005

namespace A207063

/-- `A081118(n+1)-and(1, A002024(n+1))` -/
def P9472021120208141005.Spec : Prop :=
  ∀ n, P9472021120208141005.a n = A207063 (n + 1)

end A207063

/-! ## A207063.P5418075501238069212

`A081118(n+1)-A000035(A003056(n)+1)`
-/

namespace A207063.P5418075501238069212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081118 (n + 1) - A000035 (A003056 n + 1).toNat

end

end A207063.P5418075501238069212

namespace A207063

/-- `A081118(n+1)-A000035(A003056(n)+1)` -/
def P5418075501238069212.Spec : Prop :=
  ∀ n, P5418075501238069212.a n = A207063 (n + 1)

end A207063

/-! ## A207063.P11858118683210152677

`xor(1, A206853(n+1))`
-/

namespace A207063.P11858118683210152677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A206853 (n + 1))

end

end A207063.P11858118683210152677

namespace A207063

/-- `xor(1, A206853(n+1))` -/
def P11858118683210152677.Spec : Prop :=
  ∀ n, P11858118683210152677.a n = A207063 (n + 1)

end A207063

/-! ## A207063.P9902233091537030222

`A010060(A089633(n))+2*A089633(n)`
-/

namespace A207063.P9902233091537030222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A089633 n).toNat + 2 * A089633 n

end

end A207063.P9902233091537030222

namespace A207063

/-- `A010060(A089633(n))+2*A089633(n)` -/
def P9902233091537030222.Spec : Prop :=
  ∀ n, P9902233091537030222.a n = A207063 (n + 1)

end A207063

/-!
# A207064: Number of n X 4 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207064, the canonical program `A207064.P15195175048457490685` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207064 has offset 1).

The definition of A207064 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207064.P15195175048457490685

`∑[∑[9*((n+1)²+3*n)]]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A207064

/-- `∑[∑[9*((n+1)²+3*n)]]` -/
def P15195175048457490685.Spec : Prop :=
  ∀ n, (P15195175048457490685.a n : ℤ) = A207064 (n + 1)

theorem P15195175048457490685.correct : P15195175048457490685.Spec := by
  intro n
  simp only [A207064, Nat.add_sub_cancel]

end A207064

/-! ## A207064.P11817460746959148808

`9*∑[∑[A082111(n)]]`
-/

namespace A207064.P11817460746959148808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082111 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A207064.P11817460746959148808

namespace A207064

/-- `9*∑[∑[A082111(n)]]` -/
def P11817460746959148808.Spec : Prop :=
  ∀ n, P11817460746959148808.a n = A207064 (n + 1)

end A207064

/-! ## A207064.P4544329950935380968

`A207399(n+1)-C(n, 2)²`
-/

namespace A207064.P4544329950935380968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207399 (n + 1) - (Nat.choose n 2 ^ 2 : ℤ)

end

end A207064.P4544329950935380968

namespace A207064

/-- `A207399(n+1)-C(n, 2)²` -/
def P4544329950935380968.Spec : Prop :=
  ∀ n, P4544329950935380968.a n = A207064 (n + 1)

end A207064

/-! ## A207064.P4289460463236551770

`A207399(n+1)-A161680(n)²`
-/

namespace A207064.P4289460463236551770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207399 (n + 1) - A161680 n ^ 2

end

end A207064.P4289460463236551770

namespace A207064

/-- `A207399(n+1)-A161680(n)²` -/
def P4289460463236551770.Spec : Prop :=
  ∀ n, P4289460463236551770.a n = A207064 (n + 1)

end A207064

/-! ## A207064.P13929303901467997642

`9*(A022815(n+1)+A005582(n))`
-/

namespace A207064.P13929303901467997642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (A022815 (n + 1) + A005582 n)

end

end A207064.P13929303901467997642

namespace A207064

/-- `9*(A022815(n+1)+A005582(n))` -/
def P13929303901467997642.Spec : Prop :=
  ∀ n, P13929303901467997642.a n = A207064 (n + 1)

end A207064

/-! ## A207064.P6975636098382982421

`∑[A152994(n+1)]+3*A033487(n)`
-/

namespace A207064.P6975636098382982421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3 * A033487 n

end

end A207064.P6975636098382982421

namespace A207064

/-- `∑[A152994(n+1)]+3*A033487(n)` -/
def P6975636098382982421.Spec : Prop :=
  ∀ n, P6975636098382982421.a n = A207064 (n + 1)

end A207064

/-! ## A207064.P2082805020039222585

`9*A326247(n+2)`
-/

namespace A207064.P2082805020039222585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A326247 (n + 2)

end

end A207064.P2082805020039222585

namespace A207064

/-- `9*A326247(n+2)` -/
def P2082805020039222585.Spec : Prop :=
  ∀ n, P2082805020039222585.a n = A207064 (n + 1)

end A207064

/-!
# A207065: Number of n X 5 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207065, the canonical program `A207065.P10439524990814813962` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207065 has offset 1).

The definition of A207065 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207065.P10439524990814813962

`7/30*(n+1)^5+7*(n+1)^4+21/2*(n+1)^3-56/15*(n+1)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A207065

/-- `7/30*(n+1)^5+7*(n+1)^4+21/2*(n+1)^3-56/15*(n+1)` -/
def P10439524990814813962.Spec : Prop :=
  ∀ n, P10439524990814813962.a n = (A207065 (n + 1) : ℚ)

end A207065

/-! ## A207065.P14364139594318467773

`A207068(∑[n+5]+6)`
-/

namespace A207065.P14364139594318467773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207068 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A207065.P14364139594318467773

namespace A207065

/-- `A207068(∑[n+5]+6)` -/
def P14364139594318467773.Spec : Prop :=
  ∀ n, P14364139594318467773.a n = A207065 (n + 1)

end A207065

/-! ## A207065.P4444098491985479338

`lcm(2, A207068(Δ[A264443(n)]))`
-/

namespace A207065.P4444098491985479338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A207068 (f1 (n + 1) - f1 n).toNat)

end

end A207065.P4444098491985479338

namespace A207065

/-- `lcm(2, A207068(Δ[A264443(n)]))` -/
def P4444098491985479338.Spec : Prop :=
  ∀ n, (P4444098491985479338.a n : ℤ) = A207065 (n + 1)

end A207065

/-! ## A207065.P6250229999829189259

`record[gcd(A025581(n+14), A207068(n+11))]`
-/

namespace A207065.P6250229999829189259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 (n + 14)) (A207068 (n + 11))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207065.P6250229999829189259

namespace A207065

/-- `record[gcd(A025581(n+14), A207068(n+11))]` -/
def P6250229999829189259.Spec : Prop :=
  ∀ n, (P6250229999829189259.a n : ℤ) = A207065 (n + 1)

end A207065

/-! ## A207065.P976658349899555139

`A207068(Δ[A264443(n)])%A038648(n+1)`
-/

namespace A207065.P976658349899555139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207068 (f1 (n + 1) - f1 n).toNat) (A038648 (n + 1))

end

end A207065.P976658349899555139

namespace A207065

/-- `A207068(Δ[A264443(n)])%A038648(n+1)` -/
def P976658349899555139.Spec : Prop :=
  ∀ n, P976658349899555139.a n = A207065 (n + 1)

end A207065

/-!
# A207066: Number of n X 6 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207066, there is no canonical definition to state claims against.
-/

/-! ## A207066.P15784439956351982557

`A207068((n+4)²-(∑[n]+n))`
-/

namespace A207066.P15784439956351982557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207068 ((n + 4) ^ 2 - (∑ j ∈ Finset.range (n + 1), f1 j + n))

end

end A207066.P15784439956351982557

/-! ## A207066.P4094472718619851685

`lcm(3, A207068(eq[11, A099375(n)]+1))`
-/

namespace A207066.P4094472718619851685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A207068 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1))

end

end A207066.P4094472718619851685

/-! ## A207066.P638140840164514342

`lcm(A008836(n+1), A207068(A046691(n+4)-1))`
-/

namespace A207066.P638140840164514342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A207068 (A046691 (n + 4) - 1).toNat)

end

end A207066.P638140840164514342

/-! ## A207066.P2995728068797352040

`A207068(eq[11, A099375(n)]+1)+A000007(n+1)`
-/

namespace A207066.P2995728068797352040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207068 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + A000007 (n + 1)

end

end A207066.P2995728068797352040

/-! ## A207066.P3260292312716366454

`A157928(n+2)*A207068(eq[11, A099375(n)]+1)`
-/

namespace A207066.P3260292312716366454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (n + 2) * A207068 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A207066.P3260292312716366454

/-!
# A207067: Number of n X 7 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207067, there is no canonical definition to state claims against.
-/

/-! ## A207067.P929741021507456976

`A207068(A055999(n+4))`
-/

namespace A207067.P929741021507456976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207068 (A055999 (n + 4)).toNat

end

end A207067.P929741021507456976

/-! ## A207067.P774572328604710640

`A207068(A052905(n+4)-1)`
-/

namespace A207067.P774572328604710640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207068 (A052905 (n + 4) - 1).toNat

end

end A207067.P774572328604710640

/-! ## A207067.P18089104092642779871

`A207068(A000217(n+7)-6)`
-/

namespace A207067.P18089104092642779871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207068 (A000217 (n + 7) - 6).toNat

end

end A207067.P18089104092642779871

/-! ## A207067.P12478419076285412410

`A207068((n+10)²%A000217(n+12))`
-/

namespace A207067.P12478419076285412410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207068 (Int.tmod ((n + 10) ^ 2 : ℤ) (A000217 (n + 12))).toNat

end

end A207067.P12478419076285412410

/-! ## A207067.P17113252120717175024

`A207068(A004273(n+1)+A000217(n+5)+6)`
-/

namespace A207067.P17113252120717175024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207068 (A004273 (n + 1) + (A000217 (n + 5) + 6)).toNat

end

end A207067.P17113252120717175024

/-!
# A207068: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207068, there is no canonical definition to state claims against.
-/

/-! ## A207068.P4283643729786905306

`A209650(n+1)-A055641(A005246(n))`
-/

namespace A207068.P4283643729786905306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209650 (n + 1) - A055641 (A005246 n).toNat

end

end A207068.P4283643729786905306

/-! ## A207068.P6637206202303252340

`A209650(n+1)-A102683(A001629(n))`
-/

namespace A207068.P6637206202303252340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209650 (n + 1) - A102683 (A001629 n).toNat

end

end A207068.P6637206202303252340

/-! ## A207068.P7020720790046391366

`A209650(n+1)-A102683(A030239(n))`
-/

namespace A207068.P7020720790046391366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209650 (n + 1) - A102683 (A030239 n).toNat

end

end A207068.P7020720790046391366

/-! ## A207068.P2181434452801477915

`A209650(n+1)-A101637(A046630(n))`
-/

namespace A207068.P2181434452801477915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209650 (n + 1) - A101637 (A046630 n).toNat

end

end A207068.P2181434452801477915

/-! ## A207068.P15609695810470987964

`A209650(n+1)-A025581(A184955(n))`
-/

namespace A207068.P15609695810470987964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209650 (n + 1) - A025581 (A184955 n).toNat

end

end A207068.P15609695810470987964

/-!
# A207069: Number of 2 X n 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207069, the canonical program `A207069.P1218774328859627637` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207069 has offset 1).

The definition of A207069 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207069.P1218774328859627637

`∑[a(n-1)+a(n-3)]²` with `a(0)=2, a(1)=2, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A207069

/-- `∑[a(n-1)+a(n-3)]²` -/
def P1218774328859627637.Spec : Prop :=
  ∀ n, (P1218774328859627637.a n : ℤ) = A207069 (n + 1)

theorem P1218774328859627637.correct : P1218774328859627637.Spec := by
  intro n
  simp only [A207069, Nat.add_sub_cancel]

end A207069

/-! ## A207069.P13781296199641635835

`A038718(n+3)²`
-/

namespace A207069.P13781296199641635835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038718 (n + 3) ^ 2

end

end A207069.P13781296199641635835

namespace A207069

/-- `A038718(n+3)²` -/
def P13781296199641635835.Spec : Prop :=
  ∀ n, P13781296199641635835.a n = A207069 (n + 1)

end A207069

/-! ## A207069.P16741574595501926810

`(∑[A097333(n)]+1)²`
-/

namespace A207069.P16741574595501926810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A207069.P16741574595501926810

namespace A207069

/-- `(∑[A097333(n)]+1)²` -/
def P16741574595501926810.Spec : Prop :=
  ∀ n, P16741574595501926810.a n = A207069 (n + 1)

end A207069

/-! ## A207069.P7168373848171720742

`(1-A003410(n+2))²`
-/

namespace A207069.P7168373848171720742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A003410 (n + 2)) ^ 2

end

end A207069.P7168373848171720742

namespace A207069

/-- `(1-A003410(n+2))²` -/
def P7168373848171720742.Spec : Prop :=
  ∀ n, P7168373848171720742.a n = A207069 (n + 1)

end A207069

/-! ## A207069.P2306888495485350506

`(1-A097333(n+3))²`
-/

namespace A207069.P2306888495485350506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A097333 (n + 3)) ^ 2

end

end A207069.P2306888495485350506

namespace A207069

/-- `(1-A097333(n+3))²` -/
def P2306888495485350506.Spec : Prop :=
  ∀ n, P2306888495485350506.a n = A207069 (n + 1)

end A207069

/-! ## A207069.P12260018449198567048

`(1-A226275(n+3))²`
-/

namespace A207069.P12260018449198567048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A226275 (n + 3)) ^ 2

end

end A207069.P12260018449198567048

namespace A207069

/-- `(1-A226275(n+3))²` -/
def P12260018449198567048.Spec : Prop :=
  ∀ n, P12260018449198567048.a n = A207069 (n + 1)

end A207069

/-! ## A207069.P14343065991246698467

`(3-A170934(n+2))²`
-/

namespace A207069.P14343065991246698467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A170934 (n + 2)) ^ 2

end

end A207069.P14343065991246698467

namespace A207069

/-- `(3-A170934(n+2))²` -/
def P14343065991246698467.Spec : Prop :=
  ∀ n, P14343065991246698467.a n = A207069 (n + 1)

end A207069

/-! ## A207069.P5086421542542034778

`(A058278(n+6)-1)²`
-/

namespace A207069.P5086421542542034778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A058278 (n + 6) - 1) ^ 2

end

end A207069.P5086421542542034778

namespace A207069

/-- `(A058278(n+6)-1)²` -/
def P5086421542542034778.Spec : Prop :=
  ∀ n, P5086421542542034778.a n = A207069 (n + 1)

end A207069

/-! ## A207069.P11659900478291039673

`(∑[∑[A058278(n)]]+1)²`
-/

namespace A207069.P11659900478291039673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058278 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A207069.P11659900478291039673

namespace A207069

/-- `(∑[∑[A058278(n)]]+1)²` -/
def P11659900478291039673.Spec : Prop :=
  ∀ n, P11659900478291039673.a n = A207069 (n + 1)

end A207069

/-! ## A207069.P6094338434039258654

`(A020749(n)-Δ[A020749(n)])²`
-/

namespace A207069.P6094338434039258654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020749 n - (f1 (n + 1) - f1 n)) ^ 2

end

end A207069.P6094338434039258654

namespace A207069

/-- `(A020749(n)-Δ[A020749(n)])²` -/
def P6094338434039258654.Spec : Prop :=
  ∀ n, P6094338434039258654.a n = A207069 (n + 1)

end A207069

/-! ## A207069.P12881827523203018212

`(A000930(n+1)-A020745(n))²`
-/

namespace A207069.P12881827523203018212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000930 (n + 1) - A020745 n) ^ 2

end

end A207069.P12881827523203018212

namespace A207069

/-- `(A000930(n+1)-A020745(n))²` -/
def P12881827523203018212.Spec : Prop :=
  ∀ n, P12881827523203018212.a n = A207069 (n + 1)

end A207069

/-! ## A207069.P5898577908643053607

`(A048625(n)-(A068921(n)+1))²`
-/

namespace A207069.P5898577908643053607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048625 n - (A068921 n + 1)) ^ 2

end

end A207069.P5898577908643053607

namespace A207069

/-- `(A048625(n)-(A068921(n)+1))²` -/
def P5898577908643053607.Spec : Prop :=
  ∀ n, P5898577908643053607.a n = A207069 (n + 1)

end A207069

/-! ## A207069.P12961634987686976467

`(A023435(n+3)+A023435(n))²`
-/

namespace A207069.P12961634987686976467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A023435 (n + 3) + A023435 n) ^ 2

end

end A207069.P12961634987686976467

namespace A207069

/-- `(A023435(n+3)+A023435(n))²` -/
def P12961634987686976467.Spec : Prop :=
  ∀ n, P12961634987686976467.a n = A207069 (n + 1)

end A207069

/-! ## A207069.P2059573214820458566

`(A020745(n+1)-Δ[A020745(n+1)])²`
-/

namespace A207069.P2059573214820458566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020745 (n + 1) - (f1 (n + 1) - f1 n)) ^ 2

end

end A207069.P2059573214820458566

namespace A207069

/-- `(A020745(n+1)-Δ[A020745(n+1)])²` -/
def P2059573214820458566.Spec : Prop :=
  ∀ n, P2059573214820458566.a n = A207069 (n + 1)

end A207069

/-! ## A207069.P11343521673898796955

`A207724(n+1)/A207725(n+1)*A207724(n+1)`
-/

namespace A207069.P11343521673898796955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207724 (n + 1) : ℚ) / (A207725 (n + 1) : ℚ) * (A207724 (n + 1) : ℚ)

end

end A207069.P11343521673898796955

namespace A207069

/-- `A207724(n+1)/A207725(n+1)*A207724(n+1)` -/
def P11343521673898796955.Spec : Prop :=
  ∀ n, P11343521673898796955.a n = (A207069 (n + 1) : ℚ)

end A207069

/-! ## A207069.P484167370370545341

`A207070(n+1)/A207124(n+1)*A207070(n+1)`
-/

namespace A207069.P484167370370545341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207070 (n + 1) : ℚ) / (A207124 (n + 1) : ℚ) * (A207070 (n + 1) : ℚ)

end

end A207069.P484167370370545341

namespace A207069

/-- `A207070(n+1)/A207124(n+1)*A207070(n+1)` -/
def P484167370370545341.Spec : Prop :=
  ∀ n, P484167370370545341.a n = (A207069 (n + 1) : ℚ)

end A207069

/-! ## A207069.P11976533344988978404

`A207421(n+1)/A207422(n+1)*A207421(n+1)`
-/

namespace A207069.P11976533344988978404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207421 (n + 1) : ℚ) / (A207422 (n + 1) : ℚ) * (A207421 (n + 1) : ℚ)

end

end A207069.P11976533344988978404

namespace A207069

/-- `A207421(n+1)/A207422(n+1)*A207421(n+1)` -/
def P11976533344988978404.Spec : Prop :=
  ∀ n, P11976533344988978404.a n = (A207069 (n + 1) : ℚ)

end A207069

/-! ## A207069.P3686710045769276642

`(A207724(n+1)/A207726(n+1))²*A207727(n+1)`
-/

namespace A207069.P3686710045769276642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A207724 (n + 1) : ℚ) / (A207726 (n + 1) : ℚ)) ^ 2 * (A207727 (n + 1) : ℚ)

end

end A207069.P3686710045769276642

namespace A207069

/-- `(A207724(n+1)/A207726(n+1))²*A207727(n+1)` -/
def P3686710045769276642.Spec : Prop :=
  ∀ n, P3686710045769276642.a n = (A207069 (n + 1) : ℚ)

end A207069

/-! ## A207069.P10953587359369413458

`A207724(n+1)²/A207725(n+1)`
-/

namespace A207069.P10953587359369413458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207724 (n + 1) ^ 2 : ℚ) / (A207725 (n + 1) : ℚ)

end

end A207069.P10953587359369413458

namespace A207069

/-- `A207724(n+1)²/A207725(n+1)` -/
def P10953587359369413458.Spec : Prop :=
  ∀ n, P10953587359369413458.a n = (A207069 (n + 1) : ℚ)

end A207069

/-! ## A207069.P8647718433940065563

`A207421(n+1)/A207423(n+1)*A208365(n+1)`
-/

namespace A207069.P8647718433940065563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207421 (n + 1) : ℚ) / (A207423 (n + 1) : ℚ) * (A208365 (n + 1) : ℚ)

end

end A207069.P8647718433940065563

namespace A207069

/-- `A207421(n+1)/A207423(n+1)*A208365(n+1)` -/
def P8647718433940065563.Spec : Prop :=
  ∀ n, P8647718433940065563.a n = (A207069 (n + 1) : ℚ)

end A207069

/-!
# A207070: Number of 3Xn 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207070, there is no canonical definition to state claims against.
-/

/-! ## A207070.P11195108085735838531

`sqrt(A207124(n+1))*A038718(n+3)`
-/

namespace A207070.P11195108085735838531
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207124 (n + 1) : ℝ) * (A038718 (n + 3) : ℝ)

end

end A207070.P11195108085735838531

/-! ## A207070.P2660357050230479927

`sqrt(A207069(n+1))*sqrt(A207124(n+1))`
-/

namespace A207070.P2660357050230479927
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207069 (n + 1) : ℝ) * Real.sqrt (A207124 (n + 1) : ℝ)

end

end A207070.P2660357050230479927

/-! ## A207070.P1543793328855846062

`sqrt(A207124(n+1)/A207422(n+1))*A207421(n+1)`
-/

namespace A207070.P1543793328855846062
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A207124 (n + 1) : ℚ) / (A207422 (n + 1) : ℚ) : ℝ) * (A207421 (n + 1) : ℝ)

end

end A207070.P1543793328855846062

/-! ## A207070.P18220982353223063134

`sqrt(A207069(n+1)*A207124(n+1))`
-/

namespace A207070.P18220982353223063134
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207069 (n + 1) * A207124 (n + 1) : ℝ)

end

end A207070.P18220982353223063134

/-! ## A207070.P8496125973778579065

`A207068(∑[n+2]+4)`
-/

namespace A207070.P8496125973778579065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207068 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207070.P8496125973778579065

/-! ## A207070.P9301349954383106842

`record[A207068(A008795(n)+3)]`
-/

namespace A207070.P9301349954383106842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207068 (A008795 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207070.P9301349954383106842

/-! ## A207070.P8838923243902352944

`or(C(2, 2*n+1), A207068(A167614(n+1)))`
-/

namespace A207070.P8838923243902352944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose 2 (2 * n + 1) : ℤ) (A207068 (A167614 (n + 1)).toNat)

end

end A207070.P8838923243902352944

/-! ## A207070.P6628050092656441865

`A207068(A167614(n+1))+A025439(n)`
-/

namespace A207070.P6628050092656441865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207068 (A167614 (n + 1)).toNat + A025439 n

end

end A207070.P6628050092656441865

/-! ## A207070.P13336734458900978126

`A207068(A167614(n+1))%A207071(n+1)`
-/

namespace A207070.P13336734458900978126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207068 (A167614 (n + 1)).toNat) (A207071 (n + 1))

end

end A207070.P13336734458900978126

/-! ## A207070.P4988755835155665317

`A207068(A152950(n+3))%A236517(n+1)`
-/

namespace A207070.P4988755835155665317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207068 (A152950 (n + 3)).toNat) (A236517 (n + 1))

end

end A207070.P4988755835155665317

/-!
# A207071: Number of 4Xn 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207071, there is no canonical definition to state claims against.
-/

/-! ## A207071.P17651042781143318525

`A207069(n+1)/A207070(n+1)*A207125(n+1)`
-/

namespace A207071.P17651042781143318525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207069 (n + 1) : ℚ) / (A207070 (n + 1) : ℚ) * (A207125 (n + 1) : ℚ)

end

end A207071.P17651042781143318525

/-! ## A207071.P15490610937607894658

`A207068(∑[n+3]+7)`
-/

namespace A207071.P15490610937607894658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207068 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A207071.P15490610937607894658

/-! ## A207071.P1377062487616739139

`or(char[5], A207068(A000217(n+3)+4))`
-/

namespace A207071.P1377062487616739139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A207068 (A000217 (n + 3) + 4).toNat)

end

end A207071.P1377062487616739139

/-! ## A207071.P11688697049126999930

`char[A003188(n)]*A207068(A000217(n+3)+4)`
-/

namespace A207071.P11688697049126999930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A207068 (A000217 (n + 3) + 4).toNat

end

end A207071.P11688697049126999930

/-! ## A207071.P14054333297013491712

`char[A007305(n)]*A207068(A000217(n+3)+4)`
-/

namespace A207071.P14054333297013491712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A207068 (A000217 (n + 3) + 4).toNat

end

end A207071.P14054333297013491712

/-! ## A207071.P13129517638411179223

`A000034(2*n)*A207068(A167614(n+2)+1)`
-/

namespace A207071.P13129517638411179223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A207068 (A167614 (n + 2) + 1).toNat

end

end A207071.P13129517638411179223

/-! ## A207071.P4382188063211273001

`lcm(A034947(n²+5), A207068(A167499(n+2)-1))`
-/

namespace A207071.P4382188063211273001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A034947 (n ^ 2 + 5)) (A207068 (A167499 (n + 2) - 1).toNat)

end

end A207071.P4382188063211273001

/-! ## A207071.P2123754628794458319

`A207068(A000217(n+3)+4)+A008683(A001749(n+1))`
-/

namespace A207071.P2123754628794458319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207068 (A000217 (n + 3) + 4).toNat + A008683 (A001749 (n + 1)).toNat

end

end A207071.P2123754628794458319

/-! ## A207071.P15251844802984781910

`A008683(A006094(n+1))*A207068(A000217(n+3)+4)`
-/

namespace A207071.P15251844802984781910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A006094 (n + 1)).toNat * A207068 (A000217 (n + 3) + 4).toNat

end

end A207071.P15251844802984781910

/-! ## A207071.P3111541527250320126

`A001222(A103812(n+1))*A207068(A000217(n+3)+4)`
-/

namespace A207071.P3111541527250320126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A103812 (n + 1)).toNat * A207068 (A000217 (n + 3) + 4).toNat

end

end A207071.P3111541527250320126

/-!
# A207072: Number of 5Xn 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207072, there is no canonical definition to state claims against.
-/

/-! ## A207072.P9176505873590184371

`A207068(A000096(n+3)+6)`
-/

namespace A207072.P9176505873590184371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207068 (A000096 (n + 3) + 6).toNat

end

end A207072.P9176505873590184371

/-! ## A207072.P11056459926245370386

`A207068(A000217(n+4)+5)`
-/

namespace A207072.P11056459926245370386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207068 (A000217 (n + 4) + 5).toNat

end

end A207072.P11056459926245370386

/-! ## A207072.P5673006379041711

`A207068(A052905(n+1)+10)`
-/

namespace A207072.P5673006379041711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207068 (A052905 (n + 1) + 10).toNat

end

end A207072.P5673006379041711

/-! ## A207072.P12592622909750928018

`A207068(A000124(n+5)-(n+1))`
-/

namespace A207072.P12592622909750928018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207068 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A207072.P12592622909750928018

/-! ## A207072.P13383719324393099990

`A207068(A034856(n+4)-(n-2))`
-/

namespace A207072.P13383719324393099990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207068 (A034856 (n + 4) - ((n : ℤ) - 2)).toNat

end

end A207072.P13383719324393099990

/-!
# A207073: Number of 6Xn 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207073, there is no canonical definition to state claims against.
-/

/-! ## A207073.P14121754609961185335

`A207068(A166136(n+4))`
-/

namespace A207073.P14121754609961185335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207068 (A166136 (n + 4)).toNat

end

end A207073.P14121754609961185335

/-! ## A207073.P15084143075369900512

`A207068(A167499(n+4)+1)`
-/

namespace A207073.P15084143075369900512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207068 (A167499 (n + 4) + 1).toNat

end

end A207073.P15084143075369900512

/-! ## A207073.P10032141347671903104

`A207068(A000096(n+4)+7)`
-/

namespace A207073.P10032141347671903104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207068 (A000096 (n + 4) + 7).toNat

end

end A207073.P10032141347671903104

/-! ## A207073.P4415749908970512628

`A207068(A000217(n+5)+6)`
-/

namespace A207073.P4415749908970512628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207068 (A000217 (n + 5) + 6).toNat

end

end A207073.P4415749908970512628

/-! ## A207073.P8404782050707924107

`A207068(A002620(n+2)+A002620(n+9))`
-/

namespace A207073.P8404782050707924107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207068 (A002620 (n + 2) + A002620 (n + 9)).toNat

end

end A207073.P8404782050707924107

/-!
# A207074: Number of 7Xn 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207074, there is no canonical definition to state claims against.
-/

/-! ## A207074.P5763991378434651549

`A207068(A167499(n+5)+2)`
-/

namespace A207074.P5763991378434651549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207068 (A167499 (n + 5) + 2).toNat

end

end A207074.P5763991378434651549

/-! ## A207074.P4307946354440212729

`A207068(A167614(n+5)+4)`
-/

namespace A207074.P4307946354440212729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207068 (A167614 (n + 5) + 4).toNat

end

end A207074.P4307946354440212729

/-! ## A207074.P11283778493239961231

`A207068(A133263(n+6)+5)`
-/

namespace A207074.P11283778493239961231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207068 (A133263 (n + 6) + 5).toNat

end

end A207074.P11283778493239961231

/-! ## A207074.P2755061178651741835

`A207068(A000096(n+5)+8)`
-/

namespace A207074.P2755061178651741835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207068 (A000096 (n + 5) + 8).toNat

end

end A207074.P2755061178651741835

/-! ## A207074.P16702691545437718900

`A207068(A000217(n+6)+7)`
-/

namespace A207074.P16702691545437718900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207068 (A000217 (n + 6) + 7).toNat

end

end A207074.P16702691545437718900

/-!
# A207081: G.f.: Sum_{n>=0} x^n * Product_{k=1..n} (1 + (1+x)^k).

The programs for A207081, there is no canonical definition to state claims against.
-/

/-! ## A207081.P14397643478592436357

`A137687(A150868(n))`
-/

namespace A207081.P14397643478592436357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137687 (A150868 n).toNat

end

end A207081.P14397643478592436357

/-! ## A207081.P14877491873722461988

`∑[A008617(∑[A028400(n)])]`
-/

namespace A207081.P14877491873722461988
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028400 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207081.P14877491873722461988

/-! ## A207081.P14162493762592151121

`record[A202856(n)-A184993(n)]`
-/

namespace A207081.P14162493762592151121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202856 n - A184993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207081.P14162493762592151121

/-!
# A207082: Number of n X n 0..1 arrays avoiding 0 0 0 horizontally and 0 0 1 vertically.

The programs for A207082, there is no canonical definition to state claims against.
-/

/-! ## A207082.P2471456211647013182

`A207088(∑[4*n]+1)`
-/

namespace A207082.P2471456211647013182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207082.P2471456211647013182

/-! ## A207082.P17139004640239790823

`record[A003982(n)*A207088(n+1)]`
-/

namespace A207082.P17139004640239790823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A207088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207082.P17139004640239790823

/-! ## A207082.P8845329699351306213

`record[gcd(A157525(n), A207088(n+1))]`
-/

namespace A207082.P8845329699351306213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A157525 n) (A207088 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207082.P8845329699351306213

/-! ## A207082.P12643730257087941770

`A207088(A001844(n))+A185284(n)`
-/

namespace A207082.P12643730257087941770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (A001844 n).toNat + A185284 n

end

end A207082.P12643730257087941770

/-! ## A207082.P4979097835016999754

`A264668(n)+A207088(A001844(n))`
-/

namespace A207082.P4979097835016999754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + A207088 (A001844 n).toNat

end

end A207082.P4979097835016999754

/-!
# A207083: Number of n X 3 0..1 arrays avoiding 0 0 0 horizontally and 0 0 1 vertically.

The programs for A207083, there is no canonical definition to state claims against.
-/

/-! ## A207083.P6492570533040840566

`A207088(∑[n+3]+1)`
-/

namespace A207083.P6492570533040840566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207083.P6492570533040840566

/-! ## A207083.P2329170257170344970

`or(1, A207088(A034856(n+2)))`
-/

namespace A207083.P2329170257170344970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A207088 (A034856 (n + 2)).toNat)

end

end A207083.P2329170257170344970

/-! ## A207083.P16805267006024759349

`lcm(A010689(2*n), A207088(A034856(n+2)))`
-/

namespace A207083.P16805267006024759349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010689 (2 * n)) (A207088 (A034856 (n + 2)).toNat)

end

end A207083.P16805267006024759349

/-! ## A207083.P7915254578655575176

`C(A207088(A034856(n+2)), A093178(2*n))`
-/

namespace A207083.P7915254578655575176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A207088 (A034856 (n + 2)).toNat).toNat (A093178 (2 * n)).toNat

end

end A207083.P7915254578655575176

/-! ## A207083.P5364210410929485245

`C(A207088(A034856(n+2)), A309397(2*(n+1)))`
-/

namespace A207083.P5364210410929485245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A207088 (A034856 (n + 2)).toNat).toNat (A309397 (2 * (n + 1))).toNat

end

end A207083.P5364210410929485245

/-!
# A207084: Number of n X 4 0..1 arrays avoiding 0 0 0 horizontally and 0 0 1 vertically.

The programs for A207084, there is no canonical definition to state claims against.
-/

/-! ## A207084.P15394519555373860051

`A207088(A141214(n+1))`
-/

namespace A207084.P15394519555373860051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (A141214 (n + 1)).toNat

end

end A207084.P15394519555373860051

/-! ## A207084.P11117990533346432267

`A207088(A055998(n+2))`
-/

namespace A207084.P11117990533346432267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (A055998 (n + 2)).toNat

end

end A207084.P11117990533346432267

/-! ## A207084.P5955164705485569378

`A207088(A052905(n+1)+2)`
-/

namespace A207084.P5955164705485569378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (A052905 (n + 1) + 2).toNat

end

end A207084.P5955164705485569378

/-! ## A207084.P16169534753426512643

`A207088(A034856(n+3)-1)`
-/

namespace A207084.P16169534753426512643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (A034856 (n + 3) - 1).toNat

end

end A207084.P16169534753426512643

/-! ## A207084.P3211139369456271762

`A207088(A167614(n+3)-6)`
-/

namespace A207084.P3211139369456271762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (A167614 (n + 3) - 6).toNat

end

end A207084.P3211139369456271762

/-!
# A207085: Number of nX5 0..1 arrays avoiding 0 0 0 horizontally and 0 0 1 vertically.

The programs for A207085, there is no canonical definition to state claims against.
-/

/-! ## A207085.P3093123094382528000

`A207088(Δ[A264443(n)])`
-/

namespace A207085.P3093123094382528000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (f1 (n + 1) - f1 n).toNat

end

end A207085.P3093123094382528000

/-! ## A207085.P13127063005995750807

`A207088(A056115(n)+11)`
-/

namespace A207085.P13127063005995750807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (A056115 n + 11).toNat

end

end A207085.P13127063005995750807

/-! ## A207085.P5230199308385956323

`A207088(eq[4, A193592(n)])`
-/

namespace A207085.P5230199308385956323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207085.P5230199308385956323

/-! ## A207085.P8739669202560040391

`A207088(eq[8, A209439(n)])`
-/

namespace A207085.P8739669202560040391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207085.P8739669202560040391

/-! ## A207085.P2733050796804244051

`A207088(Δ[A023545(n+1)])`
-/

namespace A207085.P2733050796804244051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (f1 (n + 1) - f1 n).toNat

end

end A207085.P2733050796804244051

/-!
# A207086: Number of nX6 0..1 arrays avoiding 0 0 0 horizontally and 0 0 1 vertically.

The programs for A207086, there is no canonical definition to state claims against.
-/

/-! ## A207086.P14124444661832634458

`A207088(A052905(n+3))`
-/

namespace A207086.P14124444661832634458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (A052905 (n + 3)).toNat

end

end A207086.P14124444661832634458

/-! ## A207086.P2814127953677001245

`A207088(eq[3, A219347(n)])`
-/

namespace A207086.P2814127953677001245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207086.P2814127953677001245

/-! ## A207086.P304929431520077772

`A207088(eq[5, A193592(n)])`
-/

namespace A207086.P304929431520077772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207086.P304929431520077772

/-! ## A207086.P1772452555992116732

`A207088(A055999(n+3)+1)`
-/

namespace A207086.P1772452555992116732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (A055999 (n + 3) + 1).toNat

end

end A207086.P1772452555992116732

/-! ## A207086.P9749747085798395919

`A207088(eq[8, A185782(n+1)])`
-/

namespace A207086.P9749747085798395919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207086.P9749747085798395919

/-!
# A207087: Number of nX7 0..1 arrays avoiding 0 0 0 horizontally and 0 0 1 vertically.

The programs for A207087, there is no canonical definition to state claims against.
-/

/-! ## A207087.P15275743575158878811

`A207088(eq[4, A219347(n)])`
-/

namespace A207087.P15275743575158878811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207087.P15275743575158878811

/-! ## A207087.P16118883910010022189

`A207088(eq[6, A193592(n)])`
-/

namespace A207087.P16118883910010022189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207087.P16118883910010022189

/-! ## A207087.P17227830163800908589

`A207088(eq[10, A185782(n+1)])`
-/

namespace A207087.P17227830163800908589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207087.P17227830163800908589

/-! ## A207087.P10518446466664223699

`A207088(eq[32, A057728(n+1)])`
-/

namespace A207087.P10518446466664223699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207087.P10518446466664223699

/-! ## A207087.P16659670252465130009

`A207088(eq[7, A200370(n+1)])`
-/

namespace A207087.P16659670252465130009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207087.P16659670252465130009

/-!
# A207088: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 horizontally and 0 0 1 vertically.

The programs for A207088, there is no canonical definition to state claims against.
-/

/-! ## A207088.P13243820344058532380

`A207182(n+1)+A178798(A100861(n))`
-/

namespace A207088.P13243820344058532380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (n + 1) + A178798 (A100861 n).toNat

end

end A207088.P13243820344058532380

/-! ## A207088.P16819712753115593152

`A207182(n+1)-A025465(A276658(n))`
-/

namespace A207088.P16819712753115593152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (n + 1) - A025465 (A276658 n).toNat

end

end A207088.P16819712753115593152

/-! ## A207088.P7320897133053141089

`A207182(n+1)-A186747(A156565(n))`
-/

namespace A207088.P7320897133053141089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (n + 1) - A186747 (A156565 n).toNat

end

end A207088.P7320897133053141089

/-! ## A207088.P10680114037299680494

`A207182(n+1)-A186747(A156582(n))`
-/

namespace A207088.P10680114037299680494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (n + 1) - A186747 (A156582 n).toNat

end

end A207088.P10680114037299680494

/-! ## A207088.P7412699721040481591

`A207182(A077168(n))`
-/

namespace A207088.P7412699721040481591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207182 (A077168 n).toNat

end

end A207088.P7412699721040481591

/-!
# A207089: Number of 3 X n 0..1 arrays avoiding 0 0 0 horizontally and 0 0 1 vertically.

The programs for A207089, there is no canonical definition to state claims against.
-/

/-! ## A207089.P5877752970620816152

`A207088(∑[n+2]+4)`
-/

namespace A207089.P5877752970620816152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207089.P5877752970620816152

/-! ## A207089.P16412768602094895579

`or(1, A207088(A167614(n+1)))`
-/

namespace A207089.P16412768602094895579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A207088 (A167614 (n + 1)).toNat)

end

end A207089.P16412768602094895579

/-! ## A207089.P12757005788621650038

`A207088(A167614(n+1))+A185238(n)`
-/

namespace A207089.P12757005788621650038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (A167614 (n + 1)).toNat + A185238 n

end

end A207089.P12757005788621650038

/-! ## A207089.P14486429354131518728

`A207088(A167614(n+1))+A185284(n)`
-/

namespace A207089.P14486429354131518728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (A167614 (n + 1)).toNat + A185284 n

end

end A207089.P14486429354131518728

/-! ## A207089.P1330140327755741838

`lcm(A033999(n), A207088(A167614(n+1)))`
-/

namespace A207089.P1330140327755741838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A207088 (A167614 (n + 1)).toNat)

end

end A207089.P1330140327755741838

/-!
# A207090: Number of 4Xn 0..1 arrays avoiding 0 0 0 horizontally and 0 0 1 vertically.

The programs for A207090, there is no canonical definition to state claims against.
-/

/-! ## A207090.P13980551485334459571

`A207088(A141214(n)+7)`
-/

namespace A207090.P13980551485334459571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (A141214 n + 7).toNat

end

end A207090.P13980551485334459571

/-! ## A207090.P17858413804633028253

`A207088(A052905(n)+9)`
-/

namespace A207090.P17858413804633028253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (A052905 n + 9).toNat

end

end A207090.P17858413804633028253

/-! ## A207090.P3323973886633309985

`A207088(A055999(n)+10)`
-/

namespace A207090.P3323973886633309985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (A055999 n + 10).toNat

end

end A207090.P3323973886633309985

/-! ## A207090.P17999809101856829782

`A207088(A167614(n+2)+1)`
-/

namespace A207090.P17999809101856829782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (A167614 (n + 2) + 1).toNat

end

end A207090.P17999809101856829782

/-! ## A207090.P13187649742250269112

`A207088(A166136(n+2)-2)`
-/

namespace A207090.P13187649742250269112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (A166136 (n + 2) - 2).toNat

end

end A207090.P13187649742250269112

/-!
# A207091: Number of 5Xn 0..1 arrays avoiding 0 0 0 horizontally and 0 0 1 vertically.

The programs for A207091, there is no canonical definition to state claims against.
-/

/-! ## A207091.P4610916432201672865

`A207088(A155212(n)+13)`
-/

namespace A207091.P4610916432201672865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (A155212 n + 13).toNat

end

end A207091.P4610916432201672865

/-! ## A207091.P6350168859961170906

`A207088(A056000(n)+15)`
-/

namespace A207091.P6350168859961170906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (A056000 n + 15).toNat

end

end A207091.P6350168859961170906

/-! ## A207091.P9961138869825485796

`A207088(A167614(n+3)+2)`
-/

namespace A207091.P9961138869825485796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (A167614 (n + 3) + 2).toNat

end

end A207091.P9961138869825485796

/-! ## A207091.P15772954704607554713

`A207088(A034856(n+3)+7)`
-/

namespace A207091.P15772954704607554713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (A034856 (n + 3) + 7).toNat

end

end A207091.P15772954704607554713

/-! ## A207091.P9152833276746750090

`A207088(A052905(n+1)+10)`
-/

namespace A207091.P9152833276746750090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (A052905 (n + 1) + 10).toNat

end

end A207091.P9152833276746750090

/-!
# A207092: Number of 6Xn 0..1 arrays avoiding 0 0 0 horizontally and 0 0 1 vertically.

The programs for A207092, there is no canonical definition to state claims against.
-/

/-! ## A207092.P5693374718069923305

`A207088(A056115(n)+21)`
-/

namespace A207092.P5693374718069923305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (A056115 n + 21).toNat

end

end A207092.P5693374718069923305

/-! ## A207092.P2120864920075142408

`A207088(A000217(n+5)+6)`
-/

namespace A207092.P2120864920075142408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (A000217 (n + 5) + 6).toNat

end

end A207092.P2120864920075142408

/-! ## A207092.P737780096666150493

`A207088(A034856(n+4)+8)`
-/

namespace A207092.P737780096666150493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (A034856 (n + 4) + 8).toNat

end

end A207092.P737780096666150493

/-! ## A207092.P2006981044638433280

`A207088(A052905(n+2)+11)`
-/

namespace A207092.P2006981044638433280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (A052905 (n + 2) + 11).toNat

end

end A207092.P2006981044638433280

/-! ## A207092.P16076034726868110005

`A207088(eq[7, A131818(n+1)])`
-/

namespace A207092.P16076034726868110005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207092.P16076034726868110005

/-!
# A207093: Number of 7Xn 0..1 arrays avoiding 0 0 0 horizontally and 0 0 1 vertically.

The programs for A207093, there is no canonical definition to state claims against.
-/

/-! ## A207093.P1367922149072484254

`A207088(A056119(n)+28)`
-/

namespace A207093.P1367922149072484254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (A056119 n + 28).toNat

end

end A207093.P1367922149072484254

/-! ## A207093.P17914445579279263498

`A207088(eq[11, A066657(n)])`
-/

namespace A207093.P17914445579279263498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207093.P17914445579279263498

/-! ## A207093.P7872903722798474781

`A207088(A166136(n+5)+1)`
-/

namespace A207093.P7872903722798474781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (A166136 (n + 5) + 1).toNat

end

end A207093.P7872903722798474781

/-! ## A207093.P9256113722896484945

`A207088(A000217(n+6)+7)`
-/

namespace A207093.P9256113722896484945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (A000217 (n + 6) + 7).toNat

end

end A207093.P9256113722896484945

/-! ## A207093.P11440937475745532184

`A207088(eq[8, A131818(n+1)])`
-/

namespace A207093.P11440937475745532184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207093.P11440937475745532184

/-!
# A207094: Number of 0..2 arrays x(0..n-1) of n elements with each no smaller than the sum of its two previous neighbors modulo 3.

The programs for A207094, there is no canonical definition to state claims against.
-/

/-! ## A207094.P6350902333969361390

`A207100(∑[n+2])`
-/

namespace A207094.P6350902333969361390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A207094.P6350902333969361390

/-! ## A207094.P4981933213683910316

`record[A207100(A000096(A141256(n)))]`
-/

namespace A207094.P4981933213683910316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (A000096 (A141256 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207094.P4981933213683910316

/-! ## A207094.P918035825877914975

`record[A207100(A000096(A328399(n)))]`
-/

namespace A207094.P918035825877914975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (A000096 (A328399 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207094.P918035825877914975

/-! ## A207094.P8683732441859465853

`record[A207100(A000096(A004736(n+1)))]`
-/

namespace A207094.P8683732441859465853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (A000096 (A004736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207094.P8683732441859465853

/-! ## A207094.P11361770142193138396

`record[A207100(A000096(A348245(n+1)))]`
-/

namespace A207094.P11361770142193138396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (A000096 (A348245 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207094.P11361770142193138396

/-! ## A207094.P9013097929038728660

`A207100(A000096(n+1))%A207095(n+1)`
-/

namespace A207094.P9013097929038728660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207100 (A000096 (n + 1)).toNat) (A207095 (n + 1))

end

end A207094.P9013097929038728660

/-!
# A207095: Number of 0..3 arrays x(0..n-1) of n elements with each no smaller than the sum of its two previous neighbors modulo 4.

The programs for A207095, there is no canonical definition to state claims against.
-/

/-! ## A207095.P13925570065154604143

`A207100(∑[n+3]+1)`
-/

namespace A207095.P13925570065154604143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207095.P13925570065154604143

/-! ## A207095.P344879454556610487

`A207100(Δ[A008778(n)])/gcd(n, n+1)`
-/

namespace A207095.P344879454556610487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207100 (f1 (n + 1) - f1 n).toNat : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A207095.P344879454556610487

/-! ## A207095.P17903624094330656812

`lcm(A097807(n), A207100(A055999(n)+4))`
-/

namespace A207095.P17903624094330656812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A097807 n) (A207100 (A055999 n + 4).toNat)

end

end A207095.P17903624094330656812

/-! ## A207095.P10930504147602037358

`A207100(Δ[A008778(n)])%A207097(n+1)`
-/

namespace A207095.P10930504147602037358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207100 (f1 (n + 1) - f1 n).toNat) (A207097 (n + 1))

end

end A207095.P10930504147602037358

/-! ## A207095.P5885747197135421792

`A207100(A055999(n)+4)/A000045(2-C(2, n+2))`
-/

namespace A207095.P5885747197135421792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207100 (A055999 n + 4).toNat : ℚ) / (A000045 (2 - Nat.choose 2 (n + 2)) : ℚ)

end

end A207095.P5885747197135421792

/-! ## A207095.P12859447899513810430

`A000120(A001316(n))*A207100(A055999(n)+4)`
-/

namespace A207095.P12859447899513810430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A001316 n).toNat * A207100 (A055999 n + 4).toNat

end

end A207095.P12859447899513810430

/-! ## A207095.P16431422934070491188

`A065941(A178334(n))*A207100(A055999(n)+4)`
-/

namespace A207095.P16431422934070491188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 (A178334 n).toNat * A207100 (A055999 n + 4).toNat

end

end A207095.P16431422934070491188

/-!
# A207096: Number of 0..4 arrays x(0..n-1) of n elements with each no smaller than the sum of its two previous neighbors modulo 5.

The programs for A207096, there is no canonical definition to state claims against.
-/

/-! ## A207096.P10449263956924982235

`A207100(∑[n+4]+3)`
-/

namespace A207096.P10449263956924982235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A207096.P10449263956924982235

/-! ## A207096.P1873383829768001542

`A276084(2*n+1)+A207100(A027379(n+2))`
-/

namespace A207096.P1873383829768001542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276084 (2 * n + 1) + A207100 (A027379 (n + 2)).toNat

end

end A207096.P1873383829768001542

/-! ## A207096.P11042471039210396801

`A207100(A027379(n+2))*A322584(2*n+1)`
-/

namespace A207096.P11042471039210396801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (A027379 (n + 2)).toNat * A322584 (2 * n + 1)

end

end A207096.P11042471039210396801

/-! ## A207096.P10053391515944411617

`A008836(n+1)^4*A207100(A027379(n+2))`
-/

namespace A207096.P10053391515944411617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) ^ 4 * A207100 (A027379 (n + 2)).toNat

end

end A207096.P10053391515944411617

/-! ## A207096.P8541034253724001946

`A117365(A185439(n+1))*A207100(A027379(n+2))`
-/

namespace A207096.P8541034253724001946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117365 (A185439 (n + 1)).toNat * A207100 (A027379 (n + 2)).toNat

end

end A207096.P8541034253724001946

/-!
# A207097: Number of 0..5 arrays x(0..n-1) of n elements with each no smaller than the sum of its two previous neighbors modulo 6.

The programs for A207097, there is no canonical definition to state claims against.
-/

/-! ## A207097.P14115968806860049040

`A207100(Δ[A264443(n)])`
-/

namespace A207097.P14115968806860049040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (f1 (n + 1) - f1 n).toNat

end

end A207097.P14115968806860049040

/-! ## A207097.P8795135746778341593

`A207100(A046691(n+3))`
-/

namespace A207097.P8795135746778341593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (A046691 (n + 3)).toNat

end

end A207097.P8795135746778341593

/-! ## A207097.P150367640706698585

`A207100(Δ[A023545(n+1)])`
-/

namespace A207097.P150367640706698585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (f1 (n + 1) - f1 n).toNat

end

end A207097.P150367640706698585

/-! ## A207097.P11943706942114334519

`A207100(A264443(n+1)-A264443(n))`
-/

namespace A207097.P11943706942114334519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (A264443 (n + 1) - A264443 n).toNat

end

end A207097.P11943706942114334519

/-! ## A207097.P11666110234916301925

`A207100(A002378(n+7)-A000217(n+9))`
-/

namespace A207097.P11666110234916301925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (A002378 (n + 7) - A000217 (n + 9)).toNat

end

end A207097.P11666110234916301925

/-! ## A207097.P6791664800518126772

`A207100(A002378(n+7)%A000217(n+9))`
-/

namespace A207097.P6791664800518126772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (Int.tmod (A002378 (n + 7)) (A000217 (n + 9))).toNat

end

end A207097.P6791664800518126772

/-! ## A207097.P15672472823072153779

`A207100(A000096(n)+Δ[A000124(2*(n+2))])`
-/

namespace A207097.P15672472823072153779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (A000096 n + (f1 (n + 1) - f1 n)).toNat

end

end A207097.P15672472823072153779

/-! ## A207097.P6492133633367313084

`A207100(A000096(n)+Δ[A000217(2*(n+2))])`
-/

namespace A207097.P6492133633367313084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (A000096 n + (f1 (n + 1) - f1 n)).toNat

end

end A207097.P6492133633367313084

/-!
# A207098: Number of 0..6 arrays x(0..n-1) of n elements with each no smaller than the sum of its two previous neighbors modulo 7.

The programs for A207098, there is no canonical definition to state claims against.
-/

/-! ## A207098.P15551026775679091630

`A207100(A052905(n+3))`
-/

namespace A207098.P15551026775679091630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (A052905 (n + 3)).toNat

end

end A207098.P15551026775679091630

/-! ## A207098.P14886977336769199820

`A207100(A055998(n+4)-2)`
-/

namespace A207098.P14886977336769199820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (A055998 (n + 4) - 2).toNat

end

end A207098.P14886977336769199820

/-! ## A207098.P8850358435583452012

`A207100(A000096(n+5)-4)`
-/

namespace A207098.P8850358435583452012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (A000096 (n + 5) - 4).toNat

end

end A207098.P8850358435583452012

/-! ## A207098.P6397499211851688367

`A207100(Δ[Δ[A006504(n+1)]])`
-/

namespace A207098.P6397499211851688367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (f1 (n + 1) - f1 n).toNat

end

end A207098.P6397499211851688367

/-! ## A207098.P2874948588127108599

`A207100(Δ[A264443(n+1)]-1)`
-/

namespace A207098.P2874948588127108599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (f1 (n + 1) - f1 n - 1).toNat

end

end A207098.P2874948588127108599

/-! ## A207098.P6773943917545095710

`A207100(Δ[A023545(n+2)]-1)`
-/

namespace A207098.P6773943917545095710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (f1 (n + 1) - f1 n - 1).toNat

end

end A207098.P6773943917545095710

/-! ## A207098.P13913410242110589097

`A207100(Δ[A026054(n+3)]+1)`
-/

namespace A207098.P13913410242110589097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (f1 (n + 1) - f1 n + 1).toNat

end

end A207098.P13913410242110589097

/-! ## A207098.P5842554372844639708

`A207100(A000217(n+7)-(n+12))`
-/

namespace A207098.P5842554372844639708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (A000217 (n + 7) - (n + 12 : ℤ)).toNat

end

end A207098.P5842554372844639708

/-! ## A207098.P13521208357034429645

`A207100(6*(n+2)+A145018(n+1))`
-/

namespace A207098.P13521208357034429645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 ((6 * (n + 2) : ℤ) + A145018 (n + 1)).toNat

end

end A207098.P13521208357034429645

/-!
# A207099: Number of 0..7 arrays x(0..n-1) of n elements with each no smaller than the sum of its two previous neighbors modulo 8.

The programs for A207099, there is no canonical definition to state claims against.
-/

/-! ## A207099.P10708383482344465228

`A207100(A055999(n+4))`
-/

namespace A207099.P10708383482344465228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (A055999 (n + 4)).toNat

end

end A207099.P10708383482344465228

/-! ## A207099.P3269232980879535110

`A207100(A056121(n)+22)`
-/

namespace A207099.P3269232980879535110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (A056121 n + 22).toNat

end

end A207099.P3269232980879535110

/-! ## A207099.P11442703436696455395

`A207100(Δ[A026054(n+4)])`
-/

namespace A207099.P11442703436696455395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (f1 (n + 1) - f1 n).toNat

end

end A207099.P11442703436696455395

/-! ## A207099.P12352484584193339820

`A207100(eq[7, A002262(n+13)])`
-/

namespace A207099.P12352484584193339820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (n + 13)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207099.P12352484584193339820

/-! ## A207099.P1524360194210725578

`A207100(eq[7, A002262(n)]-13)`
-/

namespace A207099.P1524360194210725578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 13)

end

end A207099.P1524360194210725578

/-! ## A207099.P7228978222295494245

`A207100(A000096(n+5)+n+2)`
-/

namespace A207099.P7228978222295494245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A207099.P7228978222295494245

/-! ## A207099.P14529940577164796234

`A207100(A000217(n+6)+n+1)`
-/

namespace A207099.P14529940577164796234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A207099.P14529940577164796234

/-! ## A207099.P11565976514948668169

`A207100(A055998(n+4)+n+4)`
-/

namespace A207099.P11565976514948668169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207100 (A055998 (n + 4) + (n + 4 : ℤ)).toNat

end

end A207099.P11565976514948668169

