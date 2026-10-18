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
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A023800: Xenodromes: all digits in base 5 are different.

The programs for A023800, there is no canonical definition to state claims against.
-/

/-! ## A023800.P12129117918769790649

`eq[0, A107846(A007091(n))]`
-/

namespace A023800.P12129117918769790649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A007091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023800.P12129117918769790649

/-! ## A023800.P11286381029898550720

`eq[0, A107846(A054047(n))]`
-/

namespace A023800.P11286381029898550720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A054047 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023800.P11286381029898550720

/-! ## A023800.P10107141129139739459

`eq[0, A107846(A001744(n+1))]`
-/

namespace A023800.P10107141129139739459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A001744 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023800.P10107141129139739459

/-! ## A023800.P9455417708866631452

`eq[0, A107846(A014263(n+1))]`
-/

namespace A023800.P9455417708866631452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A014263 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023800.P9455417708866631452

/-! ## A023800.P13230434321311933757

`eq[0, A107846(A072960(n+1))]`
-/

namespace A023800.P13230434321311933757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A072960 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023800.P13230434321311933757

/-! ## A023800.P6252831158480597609

`eq[0, A107846(A080228(n+1))]`
-/

namespace A023800.P6252831158480597609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A080228 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023800.P6252831158480597609

/-!
# A023801: Xenodromes: numbers such that all digits in base 6 are different.

The programs for A023801, the canonical program `A023801.P9421328058165886828` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023801 has offset 1).

The definition of A023801 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 431 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023801.P16442369879700797976

`eq[1, A178788(A007092(n))]`
-/

namespace A023801.P16442369879700797976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 (A007092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023801.P16442369879700797976

namespace A023801

/-- `eq[1, A178788(A007092(n))]` -/
def P16442369879700797976.Spec : Prop :=
  ∀ n, (P16442369879700797976.a n : ℤ) = A023801 (n + 1)

end A023801

/-! ## A023801.P324280207362593166

`eq[0, A107846(record[A222248(n)])]`
-/

namespace A023801.P324280207362593166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023801.P324280207362593166

namespace A023801

/-- `eq[0, A107846(record[A222248(n)])]` -/
def P324280207362593166.Spec : Prop :=
  ∀ n, (P324280207362593166.a n : ℤ) = A023801 (n + 1)

end A023801

/-! ## A023801.P8110357936564938439

`eq[0, A107846(A202267(n+1))]`
-/

namespace A023801.P8110357936564938439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A202267 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023801.P8110357936564938439

namespace A023801

/-- `eq[0, A107846(A202267(n+1))]` -/
def P8110357936564938439.Spec : Prop :=
  ∀ n, (P8110357936564938439.a n : ℤ) = A023801 (n + 1)

end A023801

/-! ## A023801.P9421328058165886828

`eq[1, A178788(A084984(n+1))]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A023801

/-- `eq[1, A178788(A084984(n+1))]` -/
def P9421328058165886828.Spec : Prop :=
  ∀ n, (P9421328058165886828.a n : ℤ) = A023801 (n + 1)

theorem P9421328058165886828.correct : P9421328058165886828.Spec := by
  intro n
  simp only [A023801, Nat.add_sub_cancel]

end A023801

/-! ## A023801.P12992899136818511345

`eq[A137564(A276138(n+1)), A276138(n+1)]`
-/

namespace A023801.P12992899136818511345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A276138 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276138 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023801.P12992899136818511345

namespace A023801

/-- `eq[A137564(A276138(n+1)), A276138(n+1)]` -/
def P12992899136818511345.Spec : Prop :=
  ∀ n, (P12992899136818511345.a n : ℤ) = A023801 (n + 1)

end A023801

/-! ## A023801.P10200781807040132213

`eq[1, A178788(A137386(n+1))]`
-/

namespace A023801.P10200781807040132213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 (A137386 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023801.P10200781807040132213

namespace A023801

/-- `eq[1, A178788(A137386(n+1))]` -/
def P10200781807040132213.Spec : Prop :=
  ∀ n, (P10200781807040132213.a n : ℤ) = A023801 (n + 1)

end A023801

/-!
# A023802: Xenodromes: all digits in base 7 are different.

The programs for A023802, there is no canonical definition to state claims against.
-/

/-! ## A023802.P1368217629234185112

`eq[0, A107846(A007093(n))]`
-/

namespace A023802.P1368217629234185112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A007093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023802.P1368217629234185112

/-! ## A023802.P3634103984576578704

`eq[0, A107846(A028374(n+1))]`
-/

namespace A023802.P3634103984576578704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A028374 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023802.P3634103984576578704

/-! ## A023802.P11006552091549787675

`eq[0, A107846(A168501(n+1))]`
-/

namespace A023802.P11006552091549787675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A168501 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023802.P11006552091549787675

/-! ## A023802.P11178586940222493590

`eq[0, A107846(A307913(n+1))]`
-/

namespace A023802.P11178586940222493590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A307913 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023802.P11178586940222493590

/-! ## A023802.P2446004394166939967

`lt[A321800(A007093(n)), A000007(n)]`
-/

namespace A023802.P2446004394166939967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A007093 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023802.P2446004394166939967

/-!
# A023803: Xenodromes: all digits in base 8 are different.

The programs for A023803, the canonical program `A023803.P17041091785280444925` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023803 has offset 1).

The definition of A023803 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1821 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023803.P2862435221708400785

`eq[0, A107846(A007094(n))]`
-/

namespace A023803.P2862435221708400785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023803.P2862435221708400785

namespace A023803

/-- `eq[0, A107846(A007094(n))]` -/
def P2862435221708400785.Spec : Prop :=
  ∀ n, (P2862435221708400785.a n : ℤ) = A023803 (n + 1)

end A023803

/-! ## A023803.P12556065192286980854

`eq[0, A107846(A008541(n+1))]`
-/

namespace A023803.P12556065192286980854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A008541 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023803.P12556065192286980854

namespace A023803

/-- `eq[0, A107846(A008541(n+1))]` -/
def P12556065192286980854.Spec : Prop :=
  ∀ n, (P12556065192286980854.a n : ℤ) = A023803 (n + 1)

end A023803

/-! ## A023803.P16983165297507746342

`lt[A107846(A007094(n)), A283149(n+1)]`
-/

namespace A023803.P16983165297507746342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A007094 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283149 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023803.P16983165297507746342

namespace A023803

/-- `lt[A107846(A007094(n)), A283149(n+1)]` -/
def P16983165297507746342.Spec : Prop :=
  ∀ n, (P16983165297507746342.a n : ℤ) = A023803 (n + 1)

end A023803

/-! ## A023803.P17041091785280444925

`eq[A033999(n+1)², A178788(A007094(n))]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A023803

/-- `eq[A033999(n+1)², A178788(A007094(n))]` -/
def P17041091785280444925.Spec : Prop :=
  ∀ n, (P17041091785280444925.a n : ℤ) = A023803 (n + 1)

theorem P17041091785280444925.correct : P17041091785280444925.Spec := by
  intro n
  simp only [A023803, Nat.add_sub_cancel]

end A023803

/-! ## A023803.P15030139166904624585

`eq[A050932(2*n+1), A178788(A007094(n))]`
-/

namespace A023803.P15030139166904624585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050932 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 (A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023803.P15030139166904624585

namespace A023803

/-- `eq[A050932(2*n+1), A178788(A007094(n))]` -/
def P15030139166904624585.Spec : Prop :=
  ∀ n, (P15030139166904624585.a n : ℤ) = A023803 (n + 1)

end A023803

/-! ## A023803.P11494406625262483896

`eq[0, A107846(A008539(n+1))]`
-/

namespace A023803.P11494406625262483896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A008539 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023803.P11494406625262483896

namespace A023803

/-- `eq[0, A107846(A008539(n+1))]` -/
def P11494406625262483896.Spec : Prop :=
  ∀ n, (P11494406625262483896.a n : ℤ) = A023803 (n + 1)

end A023803

/-! ## A023803.P3270009987174563333

`A043094(n)+A032741(A186729(n+1))`
-/

namespace A023803.P3270009987174563333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043094 n + A032741 (A186729 (n + 1)).toNat

end

end A023803.P3270009987174563333

namespace A023803

/-- `A043094(n)+A032741(A186729(n+1))` -/
def P3270009987174563333.Spec : Prop :=
  ∀ n, P3270009987174563333.a n = A023803 (n + 1)

end A023803

/-!
# A023804: Xenodromes: all digits in base 9 are different.

The programs for A023804, the canonical program `A023804.P10244361593913642022` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023804 has offset 1).

The definition of A023804 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023804.P1836777793202091435

`eq[0, A107846(A007095(n))]`
-/

namespace A023804.P1836777793202091435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023804.P1836777793202091435

namespace A023804

/-- `eq[0, A107846(A007095(n))]` -/
def P1836777793202091435.Spec : Prop :=
  ∀ n, (P1836777793202091435.a n : ℤ) = A023804 (n + 1)

end A023804

/-! ## A023804.P14082624230111624564

`eq[0, A107846(A052383(n+1))]`
-/

namespace A023804.P14082624230111624564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A052383 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023804.P14082624230111624564

namespace A023804

/-- `eq[0, A107846(A052383(n+1))]` -/
def P14082624230111624564.Spec : Prop :=
  ∀ n, (P14082624230111624564.a n : ℤ) = A023804 (n + 1)

end A023804

/-! ## A023804.P11364612812103072630

`eq[0, A107846(A052405(n+1))]`
-/

namespace A023804.P11364612812103072630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A052405 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023804.P11364612812103072630

namespace A023804

/-- `eq[0, A107846(A052405(n+1))]` -/
def P11364612812103072630.Spec : Prop :=
  ∀ n, (P11364612812103072630.a n : ℤ) = A023804 (n + 1)

end A023804

/-! ## A023804.P10244361593913642022

`eq[1, A178788(A052413(n+1))]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A023804

/-- `eq[1, A178788(A052413(n+1))]` -/
def P10244361593913642022.Spec : Prop :=
  ∀ n, (P10244361593913642022.a n : ℤ) = A023804 (n + 1)

theorem P10244361593913642022.correct : P10244361593913642022.Spec := by
  intro n
  simp only [A023804, Nat.add_sub_cancel]

end A023804

/-! ## A023804.P4310049429407324666

`eq[A052414(n+1), A137564(A052414(n+1))]`
-/

namespace A023804.P4310049429407324666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A052414 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023804.P4310049429407324666

namespace A023804

/-- `eq[A052414(n+1), A137564(A052414(n+1))]` -/
def P4310049429407324666.Spec : Prop :=
  ∀ n, (P4310049429407324666.a n : ℤ) = A023804 (n + 1)

end A023804

/-! ## A023804.P15382618451630726017

`eq[A052421(n+1), A137564(A052421(n+1))]`
-/

namespace A023804.P15382618451630726017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A052421 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023804.P15382618451630726017

namespace A023804

/-- `eq[A052421(n+1), A137564(A052421(n+1))]` -/
def P15382618451630726017.Spec : Prop :=
  ∀ n, (P15382618451630726017.a n : ℤ) = A023804 (n + 1)

end A023804

/-! ## A023804.P4637936512047838165

`eq[A052419(n+1), A320485(A052419(n+1))]`
-/

namespace A023804.P4637936512047838165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320485 (A052419 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023804.P4637936512047838165

namespace A023804

/-- `eq[A052419(n+1), A320485(A052419(n+1))]` -/
def P4637936512047838165.Spec : Prop :=
  ∀ n, (P4637936512047838165.a n : ℤ) = A023804 (n + 1)

end A023804

/-! ## A023804.P18325184668980455515

`lt[n, A073731(lt[1, A262087(n)])]`
-/

namespace A023804.P18325184668980455515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073731 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A023804.P18325184668980455515

namespace A023804

/-- `lt[n, A073731(lt[1, A262087(n)])]` -/
def P18325184668980455515.Spec : Prop :=
  ∀ n, (P18325184668980455515.a n : ℤ) = A023804 (n + 1)

end A023804

/-! ## A023804.P1087198275965594182

`A033619(record[A331162(A328477(n))])`
-/

namespace A023804.P1087198275965594182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331162 (A328477 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023804.P1087198275965594182

namespace A023804

/-- `A033619(record[A331162(A328477(n))])` -/
def P1087198275965594182.Spec : Prop :=
  ∀ n, P1087198275965594182.a n = A023804 (n + 1)

end A023804

/-!
# A023805: Xenodromes: all digits in base 11 are different.

The programs for A023805, the canonical program `A023805.P9284832326530478310` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023805 has offset 1).

The definition of A023805 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023805.P13833622824129095979

`lt[A230404(A230399(n)), 3]`
-/

namespace A023805.P13833622824129095979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230404 (A230399 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A023805.P13833622824129095979

namespace A023805

/-- `lt[A230404(A230399(n)), 3]` -/
def P13833622824129095979.Spec : Prop :=
  ∀ n, (P13833622824129095979.a n : ℤ) = A023805 (n + 1)

end A023805

/-! ## A023805.P4243218035363782877

`lt[atan(A259965(n)), A051725(n)]`
-/

namespace A023805.P4243218035363782877
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A259965 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A023805.P4243218035363782877

namespace A023805

/-- `lt[atan(A259965(n)), A051725(n)]` -/
def P4243218035363782877.Spec : Prop :=
  ∀ n, (P4243218035363782877.a n : ℤ) = A023805 (n + 1)

end A023805

/-! ## A023805.P4746951988975757817

`comp[A033024(n+1)]%A219883(n+1)`
-/

namespace A023805.P4746951988975757817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033024 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A219883 (n + 1))

end

end A023805.P4746951988975757817

namespace A023805

/-- `comp[A033024(n+1)]%A219883(n+1)` -/
def P4746951988975757817.Spec : Prop :=
  ∀ n, P4746951988975757817.a n = A023805 (n + 1)

end A023805

/-! ## A023805.P16854950176372569545

`comp[A268914(n+5)]%A126803(n+1)`
-/

namespace A023805.P16854950176372569545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268914 (n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A126803 (n + 1))

end

end A023805.P16854950176372569545

namespace A023805

/-- `comp[A268914(n+5)]%A126803(n+1)` -/
def P16854950176372569545.Spec : Prop :=
  ∀ n, P16854950176372569545.a n = A023805 (n + 1)

end A023805

/-! ## A023805.P9284832326530478310

`comp[A059322(8*n+10)]%A161896(9*n+7)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A023805

/-- `comp[A059322(8*n+10)]%A161896(9*n+7)` -/
def P9284832326530478310.Spec : Prop :=
  ∀ n, P9284832326530478310.a n = A023805 (n + 1)

theorem P9284832326530478310.correct : P9284832326530478310.Spec := by
  intro n
  simp only [A023805, Nat.add_sub_cancel]

end A023805

/-! ## A023805.P2619206400210380614

`comp[A008574(3*(n+1))]%record[A210615(3*n+14)]`
-/

namespace A023805.P2619206400210380614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210615 (3 * n + 14)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

end

end A023805.P2619206400210380614

namespace A023805

/-- `comp[A008574(3*(n+1))]%record[A210615(3*n+14)]` -/
def P2619206400210380614.Spec : Prop :=
  ∀ n, P2619206400210380614.a n = A023805 (n + 1)

end A023805

/-! ## A023805.P2352830124400654341

`eq[A001057(A178334(n)), A168185(n)]`
-/

namespace A023805.P2352830124400654341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A178334 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168185 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023805.P2352830124400654341

namespace A023805

/-- `eq[A001057(A178334(n)), A168185(n)]` -/
def P2352830124400654341.Spec : Prop :=
  ∀ n, (P2352830124400654341.a n : ℤ) = A023805 (n + 1)

end A023805

/-! ## A023805.P14623363261682560748

`eq[A088440(A088439(n)), A178334(n)]`
-/

namespace A023805.P14623363261682560748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088440 (A088439 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023805.P14623363261682560748

namespace A023805

/-- `eq[A088440(A088439(n)), A178334(n)]` -/
def P14623363261682560748.Spec : Prop :=
  ∀ n, (P14623363261682560748.a n : ℤ) = A023805 (n + 1)

end A023805

/-! ## A023805.P13794329073958851505

`eq[A099206(A108248(n)), A168185(n)]`
-/

namespace A023805.P13794329073958851505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099206 (A108248 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168185 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023805.P13794329073958851505

namespace A023805

/-- `eq[A099206(A108248(n)), A168185(n)]` -/
def P13794329073958851505.Spec : Prop :=
  ∀ n, (P13794329073958851505.a n : ℤ) = A023805 (n + 1)

end A023805

/-! ## A023805.P10491722770427703282

`eq[A168185(n), A178334(A338243(n))]`
-/

namespace A023805.P10491722770427703282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A338243 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023805.P10491722770427703282

namespace A023805

/-- `eq[A168185(n), A178334(A338243(n))]` -/
def P10491722770427703282.Spec : Prop :=
  ∀ n, (P10491722770427703282.a n : ℤ) = A023805 (n + 1)

end A023805

/-! ## A023805.P10218657344059767654

`eq[A024539(n+1)^A211111(n), A024539(n+1)]`
-/

namespace A023805.P10218657344059767654
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024539 (n + 1) : ℚ) ^ (A211111 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024539 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A023805.P10218657344059767654

namespace A023805

/-- `eq[A024539(n+1)^A211111(n), A024539(n+1)]` -/
def P10218657344059767654.Spec : Prop :=
  ∀ n, (P10218657344059767654.a n : ℤ) = A023805 (n + 1)

end A023805

/-! ## A023805.P5437985643083866706

`comp[12*A176484(n)]`
-/

namespace A023805.P5437985643083866706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A176484 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A023805.P5437985643083866706

namespace A023805

/-- `comp[12*A176484(n)]` -/
def P5437985643083866706.Spec : Prop :=
  ∀ n, (P5437985643083866706.a n : ℤ) = A023805 (n + 1)

end A023805

/-! ## A023805.P535903778742531837

`comp[3*A126654(n+1)]`
-/

namespace A023805.P535903778742531837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A126654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A023805.P535903778742531837

namespace A023805

/-- `comp[3*A126654(n+1)]` -/
def P535903778742531837.Spec : Prop :=
  ∀ n, (P535903778742531837.a n : ℤ) = A023805 (n + 1)

end A023805

/-! ## A023805.P6434328284614602939

`comp[4*A126653(n+1)]`
-/

namespace A023805.P6434328284614602939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A126653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A023805.P6434328284614602939

namespace A023805

/-- `comp[4*A126653(n+1)]` -/
def P6434328284614602939.Spec : Prop :=
  ∀ n, (P6434328284614602939.a n : ℤ) = A023805 (n + 1)

end A023805

/-! ## A023805.P17531626703048227355

`comp[12*A032555(n+1)]`
-/

namespace A023805.P17531626703048227355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A032555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A023805.P17531626703048227355

namespace A023805

/-- `comp[12*A032555(n+1)]` -/
def P17531626703048227355.Spec : Prop :=
  ∀ n, (P17531626703048227355.a n : ℤ) = A023805 (n + 1)

end A023805

/-! ## A023805.P12863199186521326

`comp[12*A032559(n+1)]`
-/

namespace A023805.P12863199186521326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A032559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A023805.P12863199186521326

namespace A023805

/-- `comp[12*A032559(n+1)]` -/
def P12863199186521326.Spec : Prop :=
  ∀ n, (P12863199186521326.a n : ℤ) = A023805 (n + 1)

end A023805

/-! ## A023805.P8523968501405984799

`comp[12*A248794(n+1)]`
-/

namespace A023805.P8523968501405984799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A248794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A023805.P8523968501405984799

namespace A023805

/-- `comp[12*A248794(n+1)]` -/
def P8523968501405984799.Spec : Prop :=
  ∀ n, (P8523968501405984799.a n : ℤ) = A023805 (n + 1)

end A023805

/-! ## A023805.P103955713161383118

`comp[12*A276142(n+1)]`
-/

namespace A023805.P103955713161383118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A276142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A023805.P103955713161383118

namespace A023805

/-- `comp[12*A276142(n+1)]` -/
def P103955713161383118.Spec : Prop :=
  ∀ n, (P103955713161383118.a n : ℤ) = A023805 (n + 1)

end A023805

/-!
# A023806: Xenodromes: all digits in base 12 are different.

The programs for A023806, there is no canonical definition to state claims against.
-/

/-! ## A023806.P9445781723405699987

`lt[A107502(((2*(n+1)-(n+2))/gcd(2, n))²), 2]`
-/

namespace A023806.P9445781723405699987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107502 (SequenceMachineLib.roundAway ((((2 * (n + 1) : ℤ) - (n + 2 : ℤ) : ℚ) / (Nat.gcd 2 n : ℚ)) ^ 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A023806.P9445781723405699987

/-! ## A023806.P11783961857624776444

`record[A106614(n)]%record[A028977(n)]`
-/

namespace A023806.P11783961857624776444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

end

end A023806.P11783961857624776444

/-! ## A023806.P7569540246669383170

`record[A106614(n)%A171953(n+1)]`
-/

namespace A023806.P7569540246669383170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106614 n) (A171953 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023806.P7569540246669383170

/-! ## A023806.P12620224338787437951

`∪[A113763(n+1), lt[A107502(n²), 2]]`
-/

namespace A023806.P12620224338787437951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113763 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107502 (n ^ 2)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A023806.P12620224338787437951

/-! ## A023806.P7762781874386554943

`eq[2*n, A106614(2*n)%A171953(n+1)]`
-/

namespace A023806.P7762781874386554943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106614 (2 * n)) (A171953 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023806.P7762781874386554943

/-! ## A023806.P16060530891364271210

`∪[comp[13*A109035(3*n+4)], A113763(n+1)]`
-/

namespace A023806.P16060530891364271210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A109035 (3 * n + 4)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A023806.P16060530891364271210

/-! ## A023806.P14633354538292407352

`eq[A106614(n), A261216(A000096(n))]`
-/

namespace A023806.P14633354538292407352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261216 (A000096 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023806.P14633354538292407352

/-! ## A023806.P7442945340727627708

`eq[A106614(n), A261216(A000217(n))]`
-/

namespace A023806.P7442945340727627708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261216 (A000217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023806.P7442945340727627708

/-! ## A023806.P6990827554287037982

`A113763(A028310(n))%A123399(n+1)`
-/

namespace A023806.P6990827554287037982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113763 (A028310 n).toNat) (A123399 (n + 1))

end

end A023806.P6990827554287037982

/-! ## A023806.P10785646303984358801

`lt[A107498(n²), 2]`
-/

namespace A023806.P10785646303984358801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107498 (n ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A023806.P10785646303984358801

/-! ## A023806.P12848819953518505509

`lt[A107500(n²), 2]`
-/

namespace A023806.P12848819953518505509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107500 (n ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A023806.P12848819953518505509

/-! ## A023806.P7893882350549842405

`lt[A107502(n²), 2]`
-/

namespace A023806.P7893882350549842405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107502 (n ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A023806.P7893882350549842405

/-! ## A023806.P17441932758106074868

`lt[A107504(n²), 2]`
-/

namespace A023806.P17441932758106074868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107504 (n ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A023806.P17441932758106074868

/-! ## A023806.P17052607775342770276

`comp[13*A057515(3*(n+1))]`
-/

namespace A023806.P17052607775342770276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A057515 (3 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A023806.P17052607775342770276

/-! ## A023806.P14147562549822149432

`comp[13*A248891(2*(n+2))]`
-/

namespace A023806.P14147562549822149432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A248891 (2 * (n + 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A023806.P14147562549822149432

/-! ## A023806.P11350449439018774820

`comp[13*A309414(3*(n+1))]`
-/

namespace A023806.P11350449439018774820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A309414 (3 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A023806.P11350449439018774820

/-! ## A023806.P14755498107774479067

`comp[13*A003023(3*n+4)]`
-/

namespace A023806.P14755498107774479067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A003023 (3 * n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A023806.P14755498107774479067

/-! ## A023806.P6456687258941949224

`comp[13*A109035(3*n+4)]`
-/

namespace A023806.P6456687258941949224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A109035 (3 * n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A023806.P6456687258941949224

/-! ## A023806.P7551185861559069637

`A018851(record[A106614(n)²])`
-/

namespace A023806.P7551185861559069637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023806.P7551185861559069637

/-! ## A023806.P13908465448920932638

`comp[∑[A126086(A351241(n+4))]]`
-/

namespace A023806.P13908465448920932638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126086 (A351241 (n + 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A023806.P13908465448920932638

/-!
# A023807: Xenodromes: all digits in base 13 are different.

The programs for A023807, the canonical program `A023807.P955337341818787670` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023807 has offset 1).

The definition of A023807 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023807.P1412955770547847084

`lt[A280193(n)^A016355(n), 2]`
-/

namespace A023807.P1412955770547847084
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280193 n : ℚ) ^ (A016355 n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A023807.P1412955770547847084

namespace A023807

/-- `lt[A280193(n)^A016355(n), 2]` -/
def P1412955770547847084.Spec : Prop :=
  ∀ n, (P1412955770547847084.a n : ℤ) = A023807 (n + 1)

end A023807

/-! ## A023807.P12614681605335015635

`lt[A055396(n+1)^A016355(n), 2]`
-/

namespace A023807.P12614681605335015635
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055396 (n + 1) : ℚ) ^ (A016355 n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A023807.P12614681605335015635

namespace A023807

/-- `lt[A055396(n+1)^A016355(n), 2]` -/
def P12614681605335015635.Spec : Prop :=
  ∀ n, (P12614681605335015635.a n : ℤ) = A023807 (n + 1)

end A023807

/-! ## A023807.P13742204405563744353

`lt[A016402(n)-(ϕ-n), A014681(n)]`
-/

namespace A023807.P13742204405563744353
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A016402 n : ℝ) - (Real.goldenRatio - (n : ℝ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A023807.P13742204405563744353

namespace A023807

/-- `lt[A016402(n)-(ϕ-n), A014681(n)]` -/
def P13742204405563744353.Spec : Prop :=
  ∀ n, (P13742204405563744353.a n : ℤ) = A023807 (n + 1)

end A023807

/-! ## A023807.P15955829020762714652

`record[A210247(4*n+1)+A008611(n)]`
-/

namespace A023807.P15955829020762714652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210247 (4 * n + 1) + A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023807.P15955829020762714652

namespace A023807

/-- `record[A210247(4*n+1)+A008611(n)]` -/
def P15955829020762714652.Spec : Prop :=
  ∀ n, P15955829020762714652.a n = A023807 (n + 1)

end A023807

/-! ## A023807.P6016795152123458333

`comp[14*∑[floor(n/10)^n]]`
-/

namespace A023807.P6016795152123458333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 10⌋ ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A023807.P6016795152123458333

namespace A023807

/-- `comp[14*∑[floor(n/10)^n]]` -/
def P6016795152123458333.Spec : Prop :=
  ∀ n, (P6016795152123458333.a n : ℤ) = A023807 (n + 1)

end A023807

/-! ## A023807.P17961448290836859164

`record[A155940(n+1)-A000034(n)]`
-/

namespace A023807.P17961448290836859164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155940 (n + 1) - A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023807.P17961448290836859164

namespace A023807

/-- `record[A155940(n+1)-A000034(n)]` -/
def P17961448290836859164.Spec : Prop :=
  ∀ n, P17961448290836859164.a n = A023807 (n + 1)

end A023807

/-! ## A023807.P10691885014420135860

`comp[A008589(2*(n+1))]%A173875(2*(n+1))`
-/

namespace A023807.P10691885014420135860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A173875 (2 * (n + 1)))

end

end A023807.P10691885014420135860

namespace A023807

/-- `comp[A008589(2*(n+1))]%A173875(2*(n+1))` -/
def P10691885014420135860.Spec : Prop :=
  ∀ n, P10691885014420135860.a n = A023807 (n + 1)

end A023807

/-! ## A023807.P2980466075520218927

`comp[A004277(7*(n+1))]%A073571(10*n+19)`
-/

namespace A023807.P2980466075520218927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (7 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A073571 (10 * n + 19))

end

end A023807.P2980466075520218927

namespace A023807

/-- `comp[A004277(7*(n+1))]%A073571(10*n+19)` -/
def P2980466075520218927.Spec : Prop :=
  ∀ n, P2980466075520218927.a n = A023807 (n + 1)

end A023807

/-! ## A023807.P1032789177833379113

`comp[A301298(3*(n+1))]%A276463(8*n+12)`
-/

namespace A023807.P1032789177833379113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A276463 (8 * n + 12))

end

end A023807.P1032789177833379113

namespace A023807

/-- `comp[A301298(3*(n+1))]%A276463(8*n+12)` -/
def P1032789177833379113.Spec : Prop :=
  ∀ n, P1032789177833379113.a n = A023807 (n + 1)

end A023807

/-! ## A023807.P955337341818787670

`lt[A247555(2*n), A087508(A109048(9*n+14))]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023807

/-- `lt[A247555(2*n), A087508(A109048(9*n+14))]` -/
def P955337341818787670.Spec : Prop :=
  ∀ n, (P955337341818787670.a n : ℤ) = A023807 (n + 1)

theorem P955337341818787670.correct : P955337341818787670.Spec := by
  intro n
  simp only [A023807, Nat.add_sub_cancel]

end A023807

/-! ## A023807.P4850500706551009434

`A003056(∑[n]+1)+floor((n-1)/13)`
-/

namespace A023807.P4850500706551009434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + ⌊((n : ℤ) - 1 : ℚ) / 13⌋

end

end A023807.P4850500706551009434

namespace A023807

/-- `A003056(∑[n]+1)+floor((n-1)/13)` -/
def P4850500706551009434.Spec : Prop :=
  ∀ n, P4850500706551009434.a n = A023807 (n + 1)

end A023807

/-! ## A023807.P5815027811042309532

`eq[A000982(n), A106608(A000982(n))]`
-/

namespace A023807.P5815027811042309532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (A000982 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023807.P5815027811042309532

namespace A023807

/-- `eq[A000982(n), A106608(A000982(n))]` -/
def P5815027811042309532.Spec : Prop :=
  ∀ n, (P5815027811042309532.a n : ℤ) = A023807 (n + 1)

end A023807

/-!
# A023808: Xenodromes: all digits in base 14 are different.

The programs for A023808, the canonical program `A023808.P7040097913653818230` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023808 has offset 1).

The definition of A023808 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023808.P3550063272870041239

`comp[A161455(n+1)]%A340121(n+1)`
-/

namespace A023808.P3550063272870041239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161455 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A340121 (n + 1))

end

end A023808.P3550063272870041239

namespace A023808

/-- `comp[A161455(n+1)]%A340121(n+1)` -/
def P3550063272870041239.Spec : Prop :=
  ∀ n, P3550063272870041239.a n = A023808 (n + 1)

end A023808

/-! ## A023808.P4296582838453424880

`lt[A010815(A023172(n+1)), A159852(2*n)]`
-/

namespace A023808.P4296582838453424880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A023172 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159852 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023808.P4296582838453424880

namespace A023808

/-- `lt[A010815(A023172(n+1)), A159852(2*n)]` -/
def P4296582838453424880.Spec : Prop :=
  ∀ n, (P4296582838453424880.a n : ℤ) = A023808 (n + 1)

end A023808

/-! ## A023808.P7040097913653818230

`comp[5*∏{e}[4*3^n, #+1]]`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023808

/-- `comp[5*∏{e}[4*3^n, #+1]]` -/
def P7040097913653818230.Spec : Prop :=
  ∀ n, (P7040097913653818230.a n : ℤ) = A023808 (n + 1)

theorem P7040097913653818230.correct : P7040097913653818230.Spec := by
  intro n
  simp only [A023808, Nat.add_sub_cancel]

end A023808

/-! ## A023808.P3367766273276630161

`comp[15*A084067(n)]`
-/

namespace A023808.P3367766273276630161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A084067 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A023808.P3367766273276630161

namespace A023808

/-- `comp[15*A084067(n)]` -/
def P3367766273276630161.Spec : Prop :=
  ∀ n, (P3367766273276630161.a n : ℤ) = A023808 (n + 1)

end A023808

/-! ## A023808.P4033428979098584523

`comp[15*A099384(n)]`
-/

namespace A023808.P4033428979098584523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A099384 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A023808.P4033428979098584523

namespace A023808

/-- `comp[15*A099384(n)]` -/
def P4033428979098584523.Spec : Prop :=
  ∀ n, (P4033428979098584523.a n : ℤ) = A023808 (n + 1)

end A023808

/-! ## A023808.P16259345199418919311

`comp[15*A105950(n)]`
-/

namespace A023808.P16259345199418919311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A105950 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A023808.P16259345199418919311

namespace A023808

/-- `comp[15*A105950(n)]` -/
def P16259345199418919311.Spec : Prop :=
  ∀ n, (P16259345199418919311.a n : ℤ) = A023808 (n + 1)

end A023808

/-! ## A023808.P13049163756248278506

`comp[15*A136763(n)]`
-/

namespace A023808.P13049163756248278506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A136763 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A023808.P13049163756248278506

namespace A023808

/-- `comp[15*A136763(n)]` -/
def P13049163756248278506.Spec : Prop :=
  ∀ n, (P13049163756248278506.a n : ℤ) = A023808 (n + 1)

end A023808

/-! ## A023808.P15189253075313885790

`comp[15*A331852(n)]`
-/

namespace A023808.P15189253075313885790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A331852 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A023808.P15189253075313885790

namespace A023808

/-- `comp[15*A331852(n)]` -/
def P15189253075313885790.Spec : Prop :=
  ∀ n, (P15189253075313885790.a n : ℤ) = A023808 (n + 1)

end A023808

/-! ## A023808.P4203087378555044899

`comp[15*A111603(n+1)]`
-/

namespace A023808.P4203087378555044899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A111603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A023808.P4203087378555044899

namespace A023808

/-- `comp[15*A111603(n+1)]` -/
def P4203087378555044899.Spec : Prop :=
  ∀ n, (P4203087378555044899.a n : ℤ) = A023808 (n + 1)

end A023808

/-! ## A023808.P1443266238431329152

`comp[15*A160006(n+1)]`
-/

namespace A023808.P1443266238431329152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A160006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A023808.P1443266238431329152

namespace A023808

/-- `comp[15*A160006(n+1)]` -/
def P1443266238431329152.Spec : Prop :=
  ∀ n, (P1443266238431329152.a n : ℤ) = A023808 (n + 1)

end A023808

/-! ## A023808.P16398253735582847254

`comp[15*A244580(n+1)]`
-/

namespace A023808.P16398253735582847254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A244580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A023808.P16398253735582847254

namespace A023808

/-- `comp[15*A244580(n+1)]` -/
def P16398253735582847254.Spec : Prop :=
  ∀ n, (P16398253735582847254.a n : ℤ) = A023808 (n + 1)

end A023808

/-! ## A023808.P13378423020435601879

`comp[15*A000120(3*n+2)]`
-/

namespace A023808.P13378423020435601879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A000120 (3 * n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A023808.P13378423020435601879

namespace A023808

/-- `comp[15*A000120(3*n+2)]` -/
def P13378423020435601879.Spec : Prop :=
  ∀ n, (P13378423020435601879.a n : ℤ) = A023808 (n + 1)

end A023808

/-! ## A023808.P1114010916626609784

`comp[∑[A229406(A220054(n))]]`
-/

namespace A023808.P1114010916626609784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229406 (A220054 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A023808.P1114010916626609784

namespace A023808

/-- `comp[∑[A229406(A220054(n))]]` -/
def P1114010916626609784.Spec : Prop :=
  ∀ n, (P1114010916626609784.a n : ℤ) = A023808 (n + 1)

end A023808

/-! ## A023808.P7384601411808450468

`∑{d}[comp[15*A108728(n+1)], A000010(#)]`
-/

namespace A023808.P7384601411808450468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A108728 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d

end

end A023808.P7384601411808450468

namespace A023808

/-- `∑{d}[comp[15*A108728(n+1)], A000010(#)]` -/
def P7384601411808450468.Spec : Prop :=
  ∀ n, P7384601411808450468.a n = A023808 (n + 1)

end A023808

/-! ## A023808.P7681611240840315286

`comp[15*A000005(3^n)]`
-/

namespace A023808.P7681611240840315286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A000005 (3 ^ n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A023808.P7681611240840315286

namespace A023808

/-- `comp[15*A000005(3^n)]` -/
def P7681611240840315286.Spec : Prop :=
  ∀ n, (P7681611240840315286.a n : ℤ) = A023808 (n + 1)

end A023808

/-! ## A023808.P4796457437978073466

`lt[A010815(A028982(n+1)), A003893(n)]`
-/

namespace A023808.P4796457437978073466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A028982 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023808.P4796457437978073466

namespace A023808

/-- `lt[A010815(A028982(n+1)), A003893(n)]` -/
def P4796457437978073466.Spec : Prop :=
  ∀ n, (P4796457437978073466.a n : ℤ) = A023808 (n + 1)

end A023808

/-! ## A023808.P5315722906536150078

`lt[A010815(A341983(n+4)), A003893(n)]`
-/

namespace A023808.P5315722906536150078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A341983 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023808.P5315722906536150078

namespace A023808

/-- `lt[A010815(A341983(n+4)), A003893(n)]` -/
def P5315722906536150078.Spec : Prop :=
  ∀ n, (P5315722906536150078.a n : ℤ) = A023808 (n + 1)

end A023808

/-!
# A023809: Xenodromes: all digits in base 15 are different.

The programs for A023809, the canonical program `A023809.P3270166655072433697` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023809 has offset 1).

The definition of A023809 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023809.P7164563605422213445

`lt[n², 3*A000118(n²)]`
-/

namespace A023809.P7164563605422213445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000118 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A023809.P7164563605422213445

namespace A023809

/-- `lt[n², 3*A000118(n²)]` -/
def P7164563605422213445.Spec : Prop :=
  ∀ n, (P7164563605422213445.a n : ℤ) = A023809 (n + 1)

end A023809

/-! ## A023809.P8812709515834270232

`A051628(2^floor(abs(1-n)/15))+n`
-/

namespace A023809.P8812709515834270232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051628 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(|1 - (n : ℤ)| : ℚ) / 15⌋ : ℤ))).toNat + (n : ℤ)

end

end A023809.P8812709515834270232

namespace A023809

/-- `A051628(2^floor(abs(1-n)/15))+n` -/
def P8812709515834270232.Spec : Prop :=
  ∀ n, P8812709515834270232.a n = A023809 (n + 1)

end A023809

/-! ## A023809.P3270166655072433697

`lt[A071178(A253563(n)), 5]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A023809

/-- `lt[A071178(A253563(n)), 5]` -/
def P3270166655072433697.Spec : Prop :=
  ∀ n, (P3270166655072433697.a n : ℤ) = A023809 (n + 1)

theorem P3270166655072433697.correct : P3270166655072433697.Spec := by
  intro n
  simp only [A023809, Nat.add_sub_cancel]

end A023809

/-! ## A023809.P12903441852770740785

`lt[A011848(n), A000118(n²)]`
-/

namespace A023809.P12903441852770740785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023809.P12903441852770740785

namespace A023809

/-- `lt[A011848(n), A000118(n²)]` -/
def P12903441852770740785.Spec : Prop :=
  ∀ n, (P12903441852770740785.a n : ℤ) = A023809 (n + 1)

end A023809

/-! ## A023809.P4810747619397495779

`lt[A036404(n), A000118(n²)]`
-/

namespace A023809.P4810747619397495779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036404 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023809.P4810747619397495779

namespace A023809

/-- `lt[A036404(n), A000118(n²)]` -/
def P4810747619397495779.Spec : Prop :=
  ∀ n, (P4810747619397495779.a n : ℤ) = A023809 (n + 1)

end A023809

/-! ## A023809.P4847110724020916608

`lt[A054925(n), A000118(n²)]`
-/

namespace A023809.P4847110724020916608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023809.P4847110724020916608

namespace A023809

/-- `lt[A054925(n), A000118(n²)]` -/
def P4847110724020916608.Spec : Prop :=
  ∀ n, (P4847110724020916608.a n : ℤ) = A023809 (n + 1)

end A023809

/-! ## A023809.P5688002422623198781

`lt[A083854(n), A000118(n²)]`
-/

namespace A023809.P5688002422623198781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023809.P5688002422623198781

namespace A023809

/-- `lt[A083854(n), A000118(n²)]` -/
def P5688002422623198781.Spec : Prop :=
  ∀ n, (P5688002422623198781.a n : ℤ) = A023809 (n + 1)

end A023809

/-! ## A023809.P14418862953204989099

`lt[A147685(n), A000118(n²)]`
-/

namespace A023809.P14418862953204989099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147685 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023809.P14418862953204989099

namespace A023809

/-- `lt[A147685(n), A000118(n²)]` -/
def P14418862953204989099.Spec : Prop :=
  ∀ n, (P14418862953204989099.a n : ℤ) = A023809 (n + 1)

end A023809

/-! ## A023809.P10959053111644537276

`lt[A004526(n)², A000118(n²)]`
-/

namespace A023809.P10959053111644537276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023809.P10959053111644537276

namespace A023809

/-- `lt[A004526(n)², A000118(n²)]` -/
def P10959053111644537276.Spec : Prop :=
  ∀ n, (P10959053111644537276.a n : ℤ) = A023809 (n + 1)

end A023809

/-! ## A023809.P6332620572094211847

`lt[A026741(n)², A000118(n²)]`
-/

namespace A023809.P6332620572094211847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023809.P6332620572094211847

namespace A023809

/-- `lt[A026741(n)², A000118(n²)]` -/
def P6332620572094211847.Spec : Prop :=
  ∀ n, (P6332620572094211847.a n : ℤ) = A023809 (n + 1)

end A023809

/-! ## A023809.P5249856188288168934

`lt[A004125(n+1), A000118(n²)]`
-/

namespace A023809.P5249856188288168934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023809.P5249856188288168934

namespace A023809

/-- `lt[A004125(n+1), A000118(n²)]` -/
def P5249856188288168934.Spec : Prop :=
  ∀ n, (P5249856188288168934.a n : ℤ) = A023809 (n + 1)

end A023809

/-! ## A023809.P7919460958923791082

`lt[A006995(n+1), A000118(n²)]`
-/

namespace A023809.P7919460958923791082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023809.P7919460958923791082

namespace A023809

/-- `lt[A006995(n+1), A000118(n²)]` -/
def P7919460958923791082.Spec : Prop :=
  ∀ n, (P7919460958923791082.a n : ℤ) = A023809 (n + 1)

end A023809

/-! ## A023809.P1069472826548207986

`lt[A014190(n+1), A000118(n²)]`
-/

namespace A023809.P1069472826548207986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023809.P1069472826548207986

namespace A023809

/-- `lt[A014190(n+1), A000118(n²)]` -/
def P1069472826548207986.Spec : Prop :=
  ∀ n, (P1069472826548207986.a n : ℤ) = A023809 (n + 1)

end A023809

/-! ## A023809.P5534323654795564197

`lt[A014192(n+1), A000118(n²)]`
-/

namespace A023809.P5534323654795564197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023809.P5534323654795564197

namespace A023809

/-- `lt[A014192(n+1), A000118(n²)]` -/
def P5534323654795564197.Spec : Prop :=
  ∀ n, (P5534323654795564197.a n : ℤ) = A023809 (n + 1)

end A023809

/-! ## A023809.P16879406264390380891

`lt[A029953(n+1), A000118(n²)]`
-/

namespace A023809.P16879406264390380891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023809.P16879406264390380891

namespace A023809

/-- `lt[A029953(n+1), A000118(n²)]` -/
def P16879406264390380891.Spec : Prop :=
  ∀ n, (P16879406264390380891.a n : ℤ) = A023809 (n + 1)

end A023809

/-! ## A023809.P17657158151728251903

`eq[A014041(n)*A109778(n), A014041(n)]`
-/

namespace A023809.P17657158151728251903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014041 n * A109778 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014041 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023809.P17657158151728251903

namespace A023809

/-- `eq[A014041(n)*A109778(n), A014041(n)]` -/
def P17657158151728251903.Spec : Prop :=
  ∀ n, (P17657158151728251903.a n : ℤ) = A023809 (n + 1)

end A023809

/-! ## A023809.P2077384694761754612

`comp[16*A050603(n)]`
-/

namespace A023809.P2077384694761754612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A050603 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A023809.P2077384694761754612

namespace A023809

/-- `comp[16*A050603(n)]` -/
def P2077384694761754612.Spec : Prop :=
  ∀ n, (P2077384694761754612.a n : ℤ) = A023809 (n + 1)

end A023809

/-! ## A023809.P4993848237352962932

`comp[16*A094267(n)]`
-/

namespace A023809.P4993848237352962932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A094267 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A023809.P4993848237352962932

namespace A023809

/-- `comp[16*A094267(n)]` -/
def P4993848237352962932.Spec : Prop :=
  ∀ n, (P4993848237352962932.a n : ℤ) = A023809 (n + 1)

end A023809

/-!
# A023810: Xenodromes: all digits in base 16 are different.

The programs for A023810, the canonical program `A023810.P2950296800096099102` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023810 has offset 1).

The definition of A023810 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023810.P2950296800096099102

`record[A106618(n)%A309002(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023810

/-- `record[A106618(n)%A309002(n+1)]` -/
def P2950296800096099102.Spec : Prop :=
  ∀ n, P2950296800096099102.a n = A023810 (n + 1)

theorem P2950296800096099102.correct : P2950296800096099102.Spec := by
  intro n
  simp only [A023810, Nat.add_sub_cancel]

end A023810

/-! ## A023810.P17336958312297870121

`record[n-val(A309002(A028310(n)), 17)]`
-/

namespace A023810.P17336958312297870121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (A309002 (A028310 n).toNat).toNat 17 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023810.P17336958312297870121

namespace A023810

/-- `record[n-val(A309002(A028310(n)), 17)]` -/
def P17336958312297870121.Spec : Prop :=
  ∀ n, P17336958312297870121.a n = A023810 (n + 1)

end A023810

/-! ## A023810.P12204027049365773793

`lt[A067401(n+1), A190134(n+3)]`
-/

namespace A023810.P12204027049365773793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190134 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023810.P12204027049365773793

namespace A023810

/-- `lt[A067401(n+1), A190134(n+3)]` -/
def P12204027049365773793.Spec : Prop :=
  ∀ n, (P12204027049365773793.a n : ℤ) = A023810 (n + 1)

end A023810

/-! ## A023810.P9033378608319319730

`comp[A033029(n+1)]%A250755(n+1)`
-/

namespace A023810.P9033378608319319730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033029 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A250755 (n + 1))

end

end A023810.P9033378608319319730

namespace A023810

/-- `comp[A033029(n+1)]%A250755(n+1)` -/
def P9033378608319319730.Spec : Prop :=
  ∀ n, P9033378608319319730.a n = A023810 (n + 1)

end A023810

/-! ## A023810.P9690172366284065956

`eq[A106618(n), A268820(A000217(n))]`
-/

namespace A023810.P9690172366284065956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 (A000217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023810.P9690172366284065956

namespace A023810

/-- `eq[A106618(n), A268820(A000217(n))]` -/
def P9690172366284065956.Spec : Prop :=
  ∀ n, (P9690172366284065956.a n : ℤ) = A023810 (n + 1)

end A023810

/-! ## A023810.P15441424267212004784

`eq[A106618(n), A160638(A160638(n))]`
-/

namespace A023810.P15441424267212004784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160638 (A160638 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023810.P15441424267212004784

namespace A023810

/-- `eq[A106618(n), A160638(A160638(n))]` -/
def P15441424267212004784.Spec : Prop :=
  ∀ n, (P15441424267212004784.a n : ℤ) = A023810 (n + 1)

end A023810

/-! ## A023810.P12238136946776730887

`eq[A106618(n), A217558(A217558(n))]`
-/

namespace A023810.P12238136946776730887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217558 (A217558 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023810.P12238136946776730887

namespace A023810

/-- `eq[A106618(n), A217558(A217558(n))]` -/
def P12238136946776730887.Spec : Prop :=
  ∀ n, (P12238136946776730887.a n : ℤ) = A023810 (n + 1)

end A023810

/-! ## A023810.P3353603510851768647

`comp[17*A070939(n)]`
-/

namespace A023810.P3353603510851768647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A070939 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A023810.P3353603510851768647

namespace A023810

/-- `comp[17*A070939(n)]` -/
def P3353603510851768647.Spec : Prop :=
  ∀ n, (P3353603510851768647.a n : ℤ) = A023810 (n + 1)

end A023810

/-! ## A023810.P18433872486864466645

`comp[17*A211100(n)]`
-/

namespace A023810.P18433872486864466645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A211100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A023810.P18433872486864466645

namespace A023810

/-- `comp[17*A211100(n)]` -/
def P18433872486864466645.Spec : Prop :=
  ∀ n, (P18433872486864466645.a n : ℤ) = A023810 (n + 1)

end A023810

/-! ## A023810.P3506864884735794673

`comp[17*A001511(n+1)]`
-/

namespace A023810.P3506864884735794673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A001511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A023810.P3506864884735794673

namespace A023810

/-- `comp[17*A001511(n+1)]` -/
def P3506864884735794673.Spec : Prop :=
  ∀ n, (P3506864884735794673.a n : ℤ) = A023810 (n + 1)

end A023810

/-! ## A023810.P7517698840321617275

`comp[17*A084320(n+1)]`
-/

namespace A023810.P7517698840321617275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A084320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A023810.P7517698840321617275

namespace A023810

/-- `comp[17*A084320(n+1)]` -/
def P7517698840321617275.Spec : Prop :=
  ∀ n, (P7517698840321617275.a n : ℤ) = A023810 (n + 1)

end A023810

/-! ## A023810.P4698799227229217396

`comp[17*A097283(n+1)]`
-/

namespace A023810.P4698799227229217396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A097283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A023810.P4698799227229217396

namespace A023810

/-- `comp[17*A097283(n+1)]` -/
def P4698799227229217396.Spec : Prop :=
  ∀ n, (P4698799227229217396.a n : ℤ) = A023810 (n + 1)

end A023810

/-! ## A023810.P15937782007623972421

`comp[17*A100833(n+1)]`
-/

namespace A023810.P15937782007623972421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A100833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A023810.P15937782007623972421

namespace A023810

/-- `comp[17*A100833(n+1)]` -/
def P15937782007623972421.Spec : Prop :=
  ∀ n, (P15937782007623972421.a n : ℤ) = A023810 (n + 1)

end A023810

/-! ## A023810.P18437781953060424120

`comp[17*A195113(n+1)]`
-/

namespace A023810.P18437781953060424120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A195113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A023810.P18437781953060424120

namespace A023810

/-- `comp[17*A195113(n+1)]` -/
def P18437781953060424120.Spec : Prop :=
  ∀ n, (P18437781953060424120.a n : ℤ) = A023810 (n + 1)

end A023810

/-! ## A023810.P4146728227784327298

`comp[17*A279345(n+2)]`
-/

namespace A023810.P4146728227784327298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A279345 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A023810.P4146728227784327298

namespace A023810

/-- `comp[17*A279345(n+2)]` -/
def P4146728227784327298.Spec : Prop :=
  ∀ n, (P4146728227784327298.a n : ℤ) = A023810 (n + 1)

end A023810

/-! ## A023810.P7066463444812420014

`comp[17*Δ[lt[A213727(n), 1]]]`
-/

namespace A023810.P7066463444812420014
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213727 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A023810.P7066463444812420014

namespace A023810

/-- `comp[17*Δ[lt[A213727(n), 1]]]` -/
def P7066463444812420014.Spec : Prop :=
  ∀ n, (P7066463444812420014.a n : ℤ) = A023810 (n + 1)

end A023810

/-! ## A023810.P6670155907404120284

`comp[17*A027387(2*n+1)]`
-/

namespace A023810.P6670155907404120284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A027387 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A023810.P6670155907404120284

namespace A023810

/-- `comp[17*A027387(2*n+1)]` -/
def P6670155907404120284.Spec : Prop :=
  ∀ n, (P6670155907404120284.a n : ℤ) = A023810 (n + 1)

end A023810

/-! ## A023810.P7190920703323898953

`comp[A044842(Δ[A044869(n+1)])]`
-/

namespace A023810.P7190920703323898953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044869 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044842 (f2 (n + 1) - f2 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A023810.P7190920703323898953

namespace A023810

/-- `comp[A044842(Δ[A044869(n+1)])]` -/
def P7190920703323898953.Spec : Prop :=
  ∀ n, (P7190920703323898953.a n : ℤ) = A023810 (n + 1)

end A023810

/-! ## A023810.P9006792102353293024

`eq[A325852(A106618(n)), A325852(n)]`
-/

namespace A023810.P9006792102353293024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325852 (A106618 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325852 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023810.P9006792102353293024

namespace A023810

/-- `eq[A325852(A106618(n)), A325852(n)]` -/
def P9006792102353293024.Spec : Prop :=
  ∀ n, (P9006792102353293024.a n : ℤ) = A023810 (n + 1)

end A023810

/-!
# A023811: Largest metadrome (number with digits in strict ascending order) in base n.

The programs for A023811, there is no canonical definition to state claims against.
-/

/-! ## A023811.P9283687110110402028

`A058128(n+1)-1`
-/

namespace A023811.P9283687110110402028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058128 (n + 1) - 1

end

end A023811.P9283687110110402028

/-! ## A023811.P11204372110351709328

`sqrt(A168077(n))*A221741(A028310(n))`
-/

namespace A023811.P11204372110351709328
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A168077 n : ℝ) * (A221741 (A028310 n).toNat : ℝ)

end

end A023811.P11204372110351709328

/-! ## A023811.P5150530281871807897

`A321800(A000120(n))+A058128(n+1)`
-/

namespace A023811.P5150530281871807897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A000120 n).toNat + A058128 (n + 1)

end

end A023811.P5150530281871807897

/-! ## A023811.P12525508668537052459

`A075146(A007318(∑[n]))+A058128(n+1)`
-/

namespace A023811.P12525508668537052459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075146 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A058128 (n + 1)

end

end A023811.P12525508668537052459

/-! ## A023811.P10951354197446716583

`A158052(A000040(n+1))+A058128(n+1)`
-/

namespace A023811.P10951354197446716583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158052 (A000040 (n + 1)).toNat + A058128 (n + 1)

end

end A023811.P10951354197446716583

/-! ## A023811.P4743866722408471869

`A321800(A321800(n)+1)+A058128(n+1)`
-/

namespace A023811.P4743866722408471869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A321800 n + 1).toNat + A058128 (n + 1)

end

end A023811.P4743866722408471869

/-! ## A023811.P1637158259742801852

`xor(-A058128(n+1), A008683(A098414(n+1)))`
-/

namespace A023811.P1637158259742801852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A058128 (n + 1)) (A008683 (A098414 (n + 1)).toNat)

end

end A023811.P1637158259742801852

/-! ## A023811.P4810284529814656990

`A062808(n+1)/(n+1)`
-/

namespace A023811.P4810284529814656990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062808 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A023811.P4810284529814656990

/-! ## A023811.P1136939008928429698

`A062805(n+1)/(n+1)-1`
-/

namespace A023811.P1136939008928429698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062805 (n + 1) : ℚ) / (n + 1 : ℚ) - 1

end

end A023811.P1136939008928429698

/-! ## A023811.P6504628260222915444

`A062805(n+1)-A023037(n+1)`
-/

namespace A023811.P6504628260222915444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062805 (n + 1) - A023037 (n + 1)

end

end A023811.P6504628260222915444

/-!
# A023813: a(n) = n^(n*(n+1)/2).

The programs for A023813, the canonical program `A023813.P10934357083677290797` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023813 has offset 0).

The definition of A023813 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023813.P10934357083677290797

`n^((n²+n)/2)`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023813

/-- `n^((n²+n)/2)` -/
def P10934357083677290797.Spec : Prop :=
  ∀ n, P10934357083677290797.a n = (A023813 n : ℝ)

end A023813

/-! ## A023813.P15542491437535762469

`n^(n*(n+1)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023813.P15542491437535762469
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) ^ ((n : ℚ) * ((n + 1 : ℚ) / 2) : ℝ)

end

end A023813.P15542491437535762469

namespace A023813

/-- `n^(n*(n+1)/2)` -/
def P15542491437535762469.Spec : Prop :=
  ∀ n, P15542491437535762469.a n = (A023813 n : ℝ)

end A023813

/-! ## A023813.P16464160667992241576

`∏{d}[2^n, n^log2(#)]`
-/

namespace A023813.P16464160667992241576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (n : ℝ) ^ (Real.logb 2 (d : ℝ))

end

end A023813.P16464160667992241576

namespace A023813

/-- `∏{d}[2^n, n^log2(#)]` -/
def P16464160667992241576.Spec : Prop :=
  ∀ n, P16464160667992241576.a n = (A023813 n : ℝ)

end A023813

/-! ## A023813.P8280110353550403315

`abs((-n)^C(n+1, 2))`
-/

namespace A023813.P8280110353550403315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-(n : ℤ)) ^ Nat.choose (n + 1) 2|

end

end A023813.P8280110353550403315

namespace A023813

/-- `abs((-n)^C(n+1, 2))` -/
def P8280110353550403315.Spec : Prop :=
  ∀ n, P8280110353550403315.a n = A023813 n

end A023813

/-! ## A023813.P15799480606913146649

`floor(n^(n²-C(n, 2)))`
-/

namespace A023813.P15799480606913146649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) ^ ((n ^ 2 : ℤ) - (Nat.choose n 2 : ℤ) : ℤ)⌋

end

end A023813.P15799480606913146649

namespace A023813

/-- `floor(n^(n²-C(n, 2)))` -/
def P15799480606913146649.Spec : Prop :=
  ∀ n, P15799480606913146649.a n = A023813 n

end A023813

/-!
# A023814: Number of associative binary operations on an n-set; number of labeled semigroups.

The programs for A023814, there is no canonical definition to state claims against.
-/

/-! ## A023814.P12905000550012298406

`A023815(n)+A079242(n)+A079240(n)`
-/

namespace A023814.P12905000550012298406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023815 n + (A079242 n + A079240 n)

end

end A023814.P12905000550012298406

/-! ## A023814.P5177751358746970309

`A002489(n)-(A079195(n)+A079192(n))`
-/

namespace A023814.P5177751358746970309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002489 n - (A079195 n + A079192 n)

end

end A023814.P5177751358746970309

/-! ## A023814.P3582534501846265562

`A256411(∑[n]+floor(acot(n)))`
-/

namespace A023814.P3582534501846265562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256411 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A023814.P3582534501846265562

/-! ## A023814.P5444111309276465733

`A256411(∑[n]^ceil(sin(n)²))`
-/

namespace A023814.P5444111309276465733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256411 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ))).toNat

end

end A023814.P5444111309276465733

/-!
# A023815: Number of binary operations on an n-set that are commutative and associative; labeled commutative semigroups.

The programs for A023815, there is no canonical definition to state claims against.
-/

/-! ## A023815.P442701978957147487

`n^∑[n]-A079195(n)`
-/

namespace A023815.P442701978957147487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - A079195 n

end

end A023815.P442701978957147487

/-! ## A023815.P13930055373423674035

`abs(A079195(n)-A023813(n))`
-/

namespace A023815.P13930055373423674035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A079195 n - A023813 n|

end

end A023815.P13930055373423674035

/-! ## A023815.P943187110883184907

`A023814(n)-(A079242(n)+A079240(n))`
-/

namespace A023815.P943187110883184907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023814 n - (A079242 n + A079240 n)

end

end A023815.P943187110883184907

/-! ## A023815.P11268654739602057875

`A023813(n)-A079195(n)-A326543(n)`
-/

namespace A023815.P11268654739602057875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023813 n - A079195 n - A326543 n

end

end A023815.P11268654739602057875

/-! ## A023815.P15748611738283095689

`abs(A028310(n)^A179865(n+1)-A079195(n))`
-/

namespace A023815.P15748611738283095689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A028310 n : ℚ) ^ (A179865 (n + 1) : ℤ) - (A079195 n : ℚ)|

end

end A023815.P15748611738283095689

/-!
# A023816: Sum of exponents in prime-power factorization of C(2n,n).

The programs for A023816, the canonical program `A023816.P10013856517239639057` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023816 has offset 0).

The definition of A023816 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023816.P10013856517239639057

`A022559(2*n)-2*A022559(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A023816

/-- `A022559(2*n)-2*A022559(n)` -/
def P10013856517239639057.Spec : Prop :=
  ∀ n, P10013856517239639057.a n = A023816 n

theorem P10013856517239639057.correct : P10013856517239639057.Spec := by
  intro n
  simp only [A023816]

end A023816

/-! ## A023816.P14016191836479643077

`A023978(n)-A023819(n)`
-/

namespace A023816.P14016191836479643077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023978 n - A023819 n

end

end A023816.P14016191836479643077

namespace A023816

/-- `A023978(n)-A023819(n)` -/
def P14016191836479643077.Spec : Prop :=
  ∀ n, P14016191836479643077.a n = A023816 n

end A023816

/-! ## A023816.P11018794185524567895

`A023826(n)-A023990(n)`
-/

namespace A023816.P11018794185524567895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023826 n - A023990 n

end

end A023816.P11018794185524567895

namespace A023816

/-- `A023826(n)-A023990(n)` -/
def P11018794185524567895.Spec : Prop :=
  ∀ n, P11018794185524567895.a n = A023816 n

end A023816

/-! ## A023816.P12930019691308679645

`A023834(n)-A023986(n)`
-/

namespace A023816.P12930019691308679645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023834 n - A023986 n

end

end A023816.P12930019691308679645

namespace A023816

/-- `A023834(n)-A023986(n)` -/
def P12930019691308679645.Spec : Prop :=
  ∀ n, P12930019691308679645.a n = A023816 n

end A023816

/-! ## A023816.P6808588289196153244

`A023980(n)-A023834(n)`
-/

namespace A023816.P6808588289196153244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023980 n - A023834 n

end

end A023816.P6808588289196153244

namespace A023816

/-- `A023980(n)-A023834(n)` -/
def P6808588289196153244.Spec : Prop :=
  ∀ n, P6808588289196153244.a n = A023816 n

end A023816

/-! ## A023816.P7292722414902511118

`A023982(n)-A023847(n)`
-/

namespace A023816.P7292722414902511118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023982 n - A023847 n

end

end A023816.P7292722414902511118

namespace A023816

/-- `A023982(n)-A023847(n)` -/
def P7292722414902511118.Spec : Prop :=
  ∀ n, P7292722414902511118.a n = A023816 n

end A023816

/-! ## A023816.P10094222102130572569

`A023979(n)-A023980(n)`
-/

namespace A023816.P10094222102130572569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023979 n - A023980 n

end

end A023816.P10094222102130572569

namespace A023816

/-- `A023979(n)-A023980(n)` -/
def P10094222102130572569.Spec : Prop :=
  ∀ n, P10094222102130572569.a n = A023816 n

end A023816

/-! ## A023816.P10337738033001387949

`A023993(n+1)-A023824(n+1)`
-/

namespace A023816.P10337738033001387949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023993 (n + 1) - A023824 (n + 1)

end

end A023816.P10337738033001387949

namespace A023816

/-- `A023993(n+1)-A023824(n+1)` -/
def P10337738033001387949.Spec : Prop :=
  ∀ n, P10337738033001387949.a n = A023816 n

end A023816

/-! ## A023816.P12977051131794534517

`A023982(n)-(A023987(n)+A023819(n))`
-/

namespace A023816.P12977051131794534517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023982 n - (A023987 n + A023819 n)

end

end A023816.P12977051131794534517

namespace A023816

/-- `A023982(n)-(A023987(n)+A023819(n))` -/
def P12977051131794534517.Spec : Prop :=
  ∀ n, P12977051131794534517.a n = A023816 n

end A023816

/-! ## A023816.P93186868563984698

`A023979(n)-(A023990(n)+A023978(n))`
-/

namespace A023816.P93186868563984698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023979 n - (A023990 n + A023978 n)

end

end A023816.P93186868563984698

namespace A023816

/-- `A023979(n)-(A023990(n)+A023978(n))` -/
def P93186868563984698.Spec : Prop :=
  ∀ n, P93186868563984698.a n = A023816 n

end A023816

/-! ## A023816.P16166957997301016890

`A182921(2*n)`
-/

namespace A023816.P16166957997301016890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182921 (2 * n)

end

end A023816.P16166957997301016890

namespace A023816

/-- `A182921(2*n)` -/
def P16166957997301016890.Spec : Prop :=
  ∀ n, P16166957997301016890.a n = A023816 n

end A023816

/-! ## A023816.P14435252465940815678

`A081399(n)+A001222(n+1)`
-/

namespace A023816.P14435252465940815678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081399 n + A001222 (n + 1)

end

end A023816.P14435252465940815678

namespace A023816

/-- `A081399(n)+A001222(n+1)` -/
def P14435252465940815678.Spec : Prop :=
  ∀ n, P14435252465940815678.a n = A023816 n

end A023816

/-! ## A023816.P7144025492527348535

`A001222(n+1)+A137687(n)+A137686(n)`
-/

namespace A023816.P7144025492527348535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (A137687 n + A137686 n)

end

end A023816.P7144025492527348535

namespace A023816

/-- `A001222(n+1)+A137687(n)+A137686(n)` -/
def P7144025492527348535.Spec : Prop :=
  ∀ n, P7144025492527348535.a n = A023816 n

end A023816

/-! ## A023816.P10260171418861539554

`A022559(n+1)+A081399(n)-A022559(n)`
-/

namespace A023816.P10260171418861539554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (n + 1) + (A081399 n - A022559 n)

end

end A023816.P10260171418861539554

namespace A023816

/-- `A022559(n+1)+A081399(n)-A022559(n)` -/
def P10260171418861539554.Spec : Prop :=
  ∀ n, P10260171418861539554.a n = A023816 n

end A023816

/-! ## A023816.P8858822959675061576

`A001221(n+1)+A081399(n)+A046660(n+1)`
-/

namespace A023816.P8858822959675061576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (A081399 n + A046660 (n + 1))

end

end A023816.P8858822959675061576

namespace A023816

/-- `A001221(n+1)+A081399(n)+A046660(n+1)` -/
def P8858822959675061576.Spec : Prop :=
  ∀ n, P8858822959675061576.a n = A023816 n

end A023816

/-! ## A023816.P12675379203693021377

`A048621(A004277(n))`
-/

namespace A023816.P12675379203693021377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048621 (A004277 n).toNat

end

end A023816.P12675379203693021377

namespace A023816

/-- `A048621(A004277(n))` -/
def P12675379203693021377.Spec : Prop :=
  ∀ n, P12675379203693021377.a n = A023816 n

end A023816

/-! ## A023816.P13741341990974551850

`A048621(A004275(n+1))`
-/

namespace A023816.P13741341990974551850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048621 (A004275 (n + 1)).toNat

end

end A023816.P13741341990974551850

namespace A023816

/-- `A048621(A004275(n+1))` -/
def P13741341990974551850.Spec : Prop :=
  ∀ n, P13741341990974551850.a n = A023816 n

end A023816

/-! ## A023816.P10680797394678022100

`A048621(A092535(n+1))`
-/

namespace A023816.P10680797394678022100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048621 (A092535 (n + 1)).toNat

end

end A023816.P10680797394678022100

namespace A023816

/-- `A048621(A092535(n+1))` -/
def P10680797394678022100.Spec : Prop :=
  ∀ n, P10680797394678022100.a n = A023816 n

end A023816

/-! ## A023816.P371584156231098877

`A048621(A058992(n+2))`
-/

namespace A023816.P371584156231098877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048621 (A058992 (n + 2)).toNat

end

end A023816.P371584156231098877

namespace A023816

/-- `A048621(A058992(n+2))` -/
def P371584156231098877.Spec : Prop :=
  ∀ n, P371584156231098877.a n = A023816 n

end A023816

/-!
# A023817: Sum of exponents in prime-power factorization of C(2n,n-1).

The programs for A023817, the canonical program `A023817.P4585500228112988024` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023817 has offset 1).

The definition of A023817 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023816, A076191, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023817.P4585500228112988024

`A023816(n+1)-A076191(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A023817

/-- `A023816(n+1)-A076191(n+1)` -/
def P4585500228112988024.Spec : Prop :=
  ∀ n, P4585500228112988024.a n = A023817 (n + 1)

theorem P4585500228112988024.correct : P4585500228112988024.Spec := by
  intro n
  simp only [A023817, Nat.add_sub_cancel]

end A023817

/-! ## A023817.P8399643381636287676

`A023991(n+1)-A023819(n+1)`
-/

namespace A023817.P8399643381636287676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023991 (n + 1) - A023819 (n + 1)

end

end A023817.P8399643381636287676

namespace A023817

/-- `A023991(n+1)-A023819(n+1)` -/
def P8399643381636287676.Spec : Prop :=
  ∀ n, P8399643381636287676.a n = A023817 (n + 1)

end A023817

/-! ## A023817.P3698260631727464290

`A001222(n+1)+A023816(n+1)-A001222(n+2)`
-/

namespace A023817.P3698260631727464290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (A023816 (n + 1) - A001222 (n + 2))

end

end A023817.P3698260631727464290

namespace A023817

/-- `A001222(n+1)+A023816(n+1)-A001222(n+2)` -/
def P3698260631727464290.Spec : Prop :=
  ∀ n, P3698260631727464290.a n = A023817 (n + 1)

end A023817

/-! ## A023817.P2868820142588139410

`A081399(n+1)+A001222(n+1)`
-/

namespace A023817.P2868820142588139410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081399 (n + 1) + A001222 (n + 1)

end

end A023817.P2868820142588139410

namespace A023817

/-- `A081399(n+1)+A001222(n+1)` -/
def P2868820142588139410.Spec : Prop :=
  ∀ n, P2868820142588139410.a n = A023817 (n + 1)

end A023817

/-! ## A023817.P15251103700345738075

`A081399(n+1)+A023816(n)-A081399(n)`
-/

namespace A023817.P15251103700345738075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081399 (n + 1) + (A023816 n - A081399 n)

end

end A023817.P15251103700345738075

namespace A023817

/-- `A081399(n+1)+A023816(n)-A081399(n)` -/
def P15251103700345738075.Spec : Prop :=
  ∀ n, P15251103700345738075.a n = A023817 (n + 1)

end A023817

/-! ## A023817.P4246764626662593558

`A022559(n+1)+A081399(n+1)-A022559(n)`
-/

namespace A023817.P4246764626662593558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (n + 1) + (A081399 (n + 1) - A022559 n)

end

end A023817.P4246764626662593558

namespace A023817

/-- `A022559(n+1)+A081399(n+1)-A022559(n)` -/
def P4246764626662593558.Spec : Prop :=
  ∀ n, P4246764626662593558.a n = A023817 (n + 1)

end A023817

/-! ## A023817.P17687842704661579898

`A001221(n+1)+A081399(n+1)+A046660(n+1)`
-/

namespace A023817.P17687842704661579898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (A081399 (n + 1) + A046660 (n + 1))

end

end A023817.P17687842704661579898

namespace A023817

/-- `A001221(n+1)+A081399(n+1)+A046660(n+1)` -/
def P17687842704661579898.Spec : Prop :=
  ∀ n, P17687842704661579898.a n = A023817 (n + 1)

end A023817

/-! ## A023817.P6779614449943011588

`A001222(n+1)+A137687(n+1)+A137686(n+1)`
-/

namespace A023817.P6779614449943011588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (A137687 (n + 1) + A137686 (n + 1))

end

end A023817.P6779614449943011588

namespace A023817

/-- `A001222(n+1)+A137687(n+1)+A137686(n+1)` -/
def P6779614449943011588.Spec : Prop :=
  ∀ n, P6779614449943011588.a n = A023817 (n + 1)

end A023817

/-! ## A023817.P5207921175486372303

`A048621(2*n+1)+A001222(n+1)+1-A001222(n+2)`
-/

namespace A023817.P5207921175486372303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048621 (2 * n + 1) + (A001222 (n + 1) + 1 - A001222 (n + 2))

end

end A023817.P5207921175486372303

namespace A023817

/-- `A048621(2*n+1)+A001222(n+1)+1-A001222(n+2)` -/
def P5207921175486372303.Spec : Prop :=
  ∀ n, P5207921175486372303.a n = A023817 (n + 1)

end A023817

/-! ## A023817.P8172467492560941509

`A132896((n+1)²+(n+2)²)`
-/

namespace A023817.P8172467492560941509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A023817.P8172467492560941509

namespace A023817

/-- `A132896((n+1)²+(n+2)²)` -/
def P8172467492560941509.Spec : Prop :=
  ∀ n, P8172467492560941509.a n = A023817 (n + 1)

end A023817

/-!
# A023818: Sum of exponents in prime-power factorization of C(2n,n-2).

The programs for A023818, the canonical program `A023818.P1614633070137310882` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023818 has offset 2).

The definition of A023818 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023818.P1614633070137310882

`A022559(2*(n+2))-(A022559(n+4)+A022559(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A023818

/-- `A022559(2*(n+2))-(A022559(n+4)+A022559(n))` -/
def P1614633070137310882.Spec : Prop :=
  ∀ n, P1614633070137310882.a n = A023818 (n + 2)

theorem P1614633070137310882.correct : P1614633070137310882.Spec := by
  intro n
  simp only [A023818, Nat.add_sub_cancel]

end A023818

/-! ## A023818.P11037164528357381730

`A132896(A090288(n+1))`
-/

namespace A023818.P11037164528357381730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A090288 (n + 1)).toNat

end

end A023818.P11037164528357381730

namespace A023818

/-- `A132896(A090288(n+1))` -/
def P11037164528357381730.Spec : Prop :=
  ∀ n, P11037164528357381730.a n = A023818 (n + 2)

end A023818

/-! ## A023818.P11844697641356891501

`A132896(A016825(∑[n+2]))`
-/

namespace A023818.P11844697641356891501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A016825 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A023818.P11844697641356891501

namespace A023818

/-- `A132896(A016825(∑[n+2]))` -/
def P11844697641356891501.Spec : Prop :=
  ∀ n, P11844697641356891501.a n = A023818 (n + 2)

end A023818

/-! ## A023818.P17720232269239247648

`A132896(A001844(n+2)+1)`
-/

namespace A023818.P17720232269239247648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A001844 (n + 2) + 1).toNat

end

end A023818.P17720232269239247648

namespace A023818

/-- `A132896(A001844(n+2)+1)` -/
def P17720232269239247648.Spec : Prop :=
  ∀ n, P17720232269239247648.a n = A023818 (n + 2)

end A023818

/-! ## A023818.P3158744238385894458

`A132896(A099776(n+2)+1)`
-/

namespace A023818.P3158744238385894458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A099776 (n + 2) + 1).toNat

end

end A023818.P3158744238385894458

namespace A023818

/-- `A132896(A099776(n+2)+1)` -/
def P3158744238385894458.Spec : Prop :=
  ∀ n, P3158744238385894458.a n = A023818 (n + 2)

end A023818

/-!
# A023819: Sum of exponents in prime-power factorization of C(3n,n).

The programs for A023819, the canonical program `A023819.P15358664152866393371` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023819 has offset 0).

The definition of A023819 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023819.P15358664152866393371

`A022559(3*n)-A022559(2*n)-A022559(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A023819

/-- `A022559(3*n)-A022559(2*n)-A022559(n)` -/
def P15358664152866393371.Spec : Prop :=
  ∀ n, P15358664152866393371.a n = A023819 n

theorem P15358664152866393371.correct : P15358664152866393371.Spec := by
  intro n
  simp only [A023819]

end A023819

/-! ## A023819.P3033691451021535061

`A023978(n)-A023816(n)`
-/

namespace A023819.P3033691451021535061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023978 n - A023816 n

end

end A023819.P3033691451021535061

namespace A023819

/-- `A023978(n)-A023816(n)` -/
def P3033691451021535061.Spec : Prop :=
  ∀ n, P3033691451021535061.a n = A023819 n

end A023819

/-! ## A023819.P3632026917447239499

`A023980(n)-A023826(n)`
-/

namespace A023819.P3632026917447239499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023980 n - A023826 n

end

end A023819.P3632026917447239499

namespace A023819

/-- `A023980(n)-A023826(n)` -/
def P3632026917447239499.Spec : Prop :=
  ∀ n, P3632026917447239499.a n = A023819 n

end A023819

/-! ## A023819.P5503273616222571124

`A023834(n)-A023990(n)`
-/

namespace A023819.P5503273616222571124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023834 n - A023990 n

end

end A023819.P5503273616222571124

namespace A023819

/-- `A023834(n)-A023990(n)` -/
def P5503273616222571124.Spec : Prop :=
  ∀ n, P5503273616222571124.a n = A023819 n

end A023819

/-! ## A023819.P1257544806159650578

`A023847(n)-A023987(n)`
-/

namespace A023819.P1257544806159650578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023847 n - A023987 n

end

end A023819.P1257544806159650578

namespace A023819

/-- `A023847(n)-A023987(n)` -/
def P1257544806159650578.Spec : Prop :=
  ∀ n, P1257544806159650578.a n = A023819 n

end A023819

/-! ## A023819.P12234359777641495761

`A023983(n)-A023847(n)`
-/

namespace A023819.P12234359777641495761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023983 n - A023847 n

end

end A023819.P12234359777641495761

namespace A023819

/-- `A023983(n)-A023847(n)` -/
def P12234359777641495761.Spec : Prop :=
  ∀ n, P12234359777641495761.a n = A023819 n

end A023819

/-! ## A023819.P289399344094744189

`A023847(n)+A023852(n)-A023854(n)`
-/

namespace A023819.P289399344094744189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023847 n + (A023852 n - A023854 n)

end

end A023819.P289399344094744189

namespace A023819

/-- `A023847(n)+A023852(n)-A023854(n)` -/
def P289399344094744189.Spec : Prop :=
  ∀ n, P289399344094744189.a n = A023819 n

end A023819

/-! ## A023819.P10778824672518459103

`A023982(n)-(A023987(n)+A023816(n))`
-/

namespace A023819.P10778824672518459103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023982 n - (A023987 n + A023816 n)

end

end A023819.P10778824672518459103

namespace A023819

/-- `A023982(n)-(A023987(n)+A023816(n))` -/
def P10778824672518459103.Spec : Prop :=
  ∀ n, P10778824672518459103.a n = A023819 n

end A023819

/-!
# A023820: Sum of exponents in prime-power factorization of C(3n,n-1).

The programs for A023820, the canonical program `A023820.P10715927609906608587` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023820 has offset 1).

The definition of A023820 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A023819, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023820.P10715927609906608587

`A023819(n+1)-A001222(2*(n+1)+1)+A001222(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A023820

/-- `A023819(n+1)-A001222(2*(n+1)+1)+A001222(n+1)` -/
def P10715927609906608587.Spec : Prop :=
  ∀ n, P10715927609906608587.a n = A023820 (n + 1)

theorem P10715927609906608587.correct : P10715927609906608587.Spec := by
  intro n
  simp only [A023820, Nat.add_sub_cancel]

end A023820

/-! ## A023820.P1627555244496407409

`A023835(n+1)-(A023990(n+1)+1)`
-/

namespace A023820.P1627555244496407409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023835 (n + 1) - (A023990 (n + 1) + 1)

end

end A023820.P1627555244496407409

namespace A023820

/-- `A023835(n+1)-(A023990(n+1)+1)` -/
def P1627555244496407409.Spec : Prop :=
  ∀ n, P1627555244496407409.a n = A023820 (n + 1)

end A023820

/-! ## A023820.P7533929285075769140

`A023850(n+1)-(A023987(n+1)+1)`
-/

namespace A023820.P7533929285075769140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023850 (n + 1) - (A023987 (n + 1) + 1)

end

end A023820.P7533929285075769140

namespace A023820

/-- `A023850(n+1)-(A023987(n+1)+1)` -/
def P7533929285075769140.Spec : Prop :=
  ∀ n, P7533929285075769140.a n = A023820 (n + 1)

end A023820

/-! ## A023820.P13810088798930176181

`A023817(n+1)+A023835(n+1)-A023831(n+1)`
-/

namespace A023820.P13810088798930176181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023817 (n + 1) + (A023835 (n + 1) - A023831 (n + 1))

end

end A023820.P13810088798930176181

namespace A023820

/-- `A023817(n+1)+A023835(n+1)-A023831(n+1)` -/
def P13810088798930176181.Spec : Prop :=
  ∀ n, P13810088798930176181.a n = A023820 (n + 1)

end A023820

/-! ## A023820.P13883522098531229573

`A022559(3*(n+1))-(A022559(2*n+3)+A022559(n))`
-/

namespace A023820.P13883522098531229573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (3 * (n + 1)) - (A022559 (2 * n + 3) + A022559 n)

end

end A023820.P13883522098531229573

namespace A023820

/-- `A022559(3*(n+1))-(A022559(2*n+3)+A022559(n))` -/
def P13883522098531229573.Spec : Prop :=
  ∀ n, P13883522098531229573.a n = A023820 (n + 1)

end A023820

/-! ## A023820.P6525874440806498086

`A023823(n+1)-Δ[A023816(n+1)]`
-/

namespace A023820.P6525874440806498086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023823 (n + 1) - (f1 (n + 1) - f1 n)

end

end A023820.P6525874440806498086

namespace A023820

/-- `A023823(n+1)-Δ[A023816(n+1)]` -/
def P6525874440806498086.Spec : Prop :=
  ∀ n, P6525874440806498086.a n = A023820 (n + 1)

end A023820

/-! ## A023820.P10562276573594700431

`Δ[∑[A023823(n+1)]-A023991(n+1)]`
-/

namespace A023820.P10562276573594700431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023823 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A023991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A023820.P10562276573594700431

namespace A023820

/-- `Δ[∑[A023823(n+1)]-A023991(n+1)]` -/
def P10562276573594700431.Spec : Prop :=
  ∀ n, P10562276573594700431.a n = A023820 (n + 1)

end A023820

/-!
# A023821: Sum of exponents in prime-power factorization of C(3n,n-2).

The programs for A023821, the canonical program `A023821.P17015590277751869267` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023821 has offset 2).

The definition of A023821 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A023820, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023821.P17015590277751869267

`A023820(n+2)-A001222(2*(n+2)+2)+A001222(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A023821

/-- `A023820(n+2)-A001222(2*(n+2)+2)+A001222(n+1)` -/
def P17015590277751869267.Spec : Prop :=
  ∀ n, P17015590277751869267.a n = A023821 (n + 2)

theorem P17015590277751869267.correct : P17015590277751869267.Spec := by
  intro n
  simp only [A023821, Nat.add_sub_cancel]

end A023821

/-! ## A023821.P4974410803381250805

`A132896(A235332(n+1)+4)`
-/

namespace A023821.P4974410803381250805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A235332 (n + 1) + 4).toNat

end

end A023821.P4974410803381250805

namespace A023821

/-- `A132896(A235332(n+1)+4)` -/
def P4974410803381250805.Spec : Prop :=
  ∀ n, P4974410803381250805.a n = A023821 (n + 2)

end A023821

/-! ## A023821.P10451900954694593864

`A132896(A034856(3*(n+2))-(2*n+5))`
-/

namespace A023821.P10451900954694593864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A034856 (3 * (n + 2)) - (2 * n + 5 : ℤ)).toNat

end

end A023821.P10451900954694593864

namespace A023821

/-- `A132896(A034856(3*(n+2))-(2*n+5))` -/
def P10451900954694593864.Spec : Prop :=
  ∀ n, P10451900954694593864.a n = A023821 (n + 2)

end A023821

/-! ## A023821.P3734659225434199689

`A132896(A167499(3*(n+1))+8*n+12)`
-/

namespace A023821.P3734659225434199689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A167499 (3 * (n + 1)) + (8 * n + 12 : ℤ)).toNat

end

end A023821.P3734659225434199689

namespace A023821

/-- `A132896(A167499(3*(n+1))+8*n+12)` -/
def P3734659225434199689.Spec : Prop :=
  ∀ n, P3734659225434199689.a n = A023821 (n + 2)

end A023821

/-! ## A023821.P459755234840578253

`A132896(A020742(n)+A000096(3*n+5))`
-/

namespace A023821.P459755234840578253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A020742 n + A000096 (3 * n + 5)).toNat

end

end A023821.P459755234840578253

namespace A023821

/-- `A132896(A020742(n)+A000096(3*n+5))` -/
def P459755234840578253.Spec : Prop :=
  ∀ n, P459755234840578253.a n = A023821 (n + 2)

end A023821

/-!
# A023822: Sum of exponents in prime-power factorization of C(3n,n-3).

The programs for A023822, the canonical program `A023822.P15982397064296015085` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023822 has offset 3).

The definition of A023822 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A023821, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023822.P15982397064296015085

`A023821(n+3)-A001222(2*(n+3)+3)+A001222(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A023822

/-- `A023821(n+3)-A001222(2*(n+3)+3)+A001222(n+1)` -/
def P15982397064296015085.Spec : Prop :=
  ∀ n, P15982397064296015085.a n = A023822 (n + 3)

theorem P15982397064296015085.correct : P15982397064296015085.Spec := by
  intro n
  simp only [A023822, Nat.add_sub_cancel]

end A023822

/-! ## A023822.P8207199957456549797

`A132896(A026060(n+5)-A000292(n))`
-/

namespace A023822.P8207199957456549797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A026060 (n + 5) - A000292 n).toNat

end

end A023822.P8207199957456549797

namespace A023822

/-- `A132896(A026060(n+5)-A000292(n))` -/
def P8207199957456549797.Spec : Prop :=
  ∀ n, P8207199957456549797.a n = A023822 (n + 3)

end A023822

/-!
# A023823: Sum of exponents in prime-power factorization of C(3n,n+1).

The programs for A023823, the canonical program `A023823.P9003728533759637221` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023823 has offset 1).

The definition of A023823 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A023819, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023823.P9003728533759637221

`A023819(n+1)+A001222(2*(n+1))-A001222(n+2)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A023823

/-- `A023819(n+1)+A001222(2*(n+1))-A001222(n+2)` -/
def P9003728533759637221.Spec : Prop :=
  ∀ n, P9003728533759637221.a n = A023823 (n + 1)

theorem P9003728533759637221.correct : P9003728533759637221.Spec := by
  intro n
  simp only [A023823, Nat.add_sub_cancel]

end A023823

/-! ## A023823.P5839095061552815124

`A023991(n+1)+1-A023816(n+1)`
-/

namespace A023823.P5839095061552815124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023991 (n + 1) + (1 - A023816 (n + 1))

end

end A023823.P5839095061552815124

namespace A023823

/-- `A023991(n+1)+1-A023816(n+1)` -/
def P5839095061552815124.Spec : Prop :=
  ∀ n, P5839095061552815124.a n = A023823 (n + 1)

end A023823

/-! ## A023823.P15017209224948967789

`A023819(n+1)+1-A076191(n+1)`
-/

namespace A023823.P15017209224948967789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023819 (n + 1) + (1 - A076191 (n + 1))

end

end A023823.P15017209224948967789

namespace A023823

/-- `A023819(n+1)+1-A076191(n+1)` -/
def P15017209224948967789.Spec : Prop :=
  ∀ n, P15017209224948967789.a n = A023823 (n + 1)

end A023823

/-! ## A023823.P7326370727002085120

`A023819(n+1)+1-Δ[A001222(n+1)]`
-/

namespace A023823.P7326370727002085120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023819 (n + 1) + (1 - (f1 (n + 1) - f1 n))

end

end A023823.P7326370727002085120

namespace A023823

/-- `A023819(n+1)+1-Δ[A001222(n+1)]` -/
def P7326370727002085120.Spec : Prop :=
  ∀ n, P7326370727002085120.a n = A023823 (n + 1)

end A023823

/-! ## A023823.P7290091658429801734

`A023819(n+1)+A023831(n+1)-A023826(n+1)`
-/

namespace A023823.P7290091658429801734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023819 (n + 1) + (A023831 (n + 1) - A023826 (n + 1))

end

end A023823.P7290091658429801734

namespace A023823

/-- `A023819(n+1)+A023831(n+1)-A023826(n+1)` -/
def P7290091658429801734.Spec : Prop :=
  ∀ n, P7290091658429801734.a n = A023823 (n + 1)

end A023823

/-! ## A023823.P4218968106914280626

`A023831(n+1)+A023853(n+1)-A023854(n+1)`
-/

namespace A023823.P4218968106914280626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023831 (n + 1) + (A023853 (n + 1) - A023854 (n + 1))

end

end A023823.P4218968106914280626

namespace A023823

/-- `A023831(n+1)+A023853(n+1)-A023854(n+1)` -/
def P4218968106914280626.Spec : Prop :=
  ∀ n, P4218968106914280626.a n = A023823 (n + 1)

end A023823

/-! ## A023823.P11633918559797303301

`A023820(n+1)+Δ[A023816(n+1)]`
-/

namespace A023823.P11633918559797303301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023820 (n + 1) + (f1 (n + 1) - f1 n)

end

end A023823.P11633918559797303301

namespace A023823

/-- `A023820(n+1)+Δ[A023816(n+1)]` -/
def P11633918559797303301.Spec : Prop :=
  ∀ n, P11633918559797303301.a n = A023823 (n + 1)

end A023823

/-!
# A023824: Sum of exponents in prime-power factorization of C(3n,n+2).

The programs for A023824, the canonical program `A023824.P17719510781724392525` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023824 has offset 1).

The definition of A023824 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A023823, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023824.P17719510781724392525

`A023823(n+1)+A001222(2*(n+1)-1)-A001222(n+3)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A023824

/-- `A023823(n+1)+A001222(2*(n+1)-1)-A001222(n+3)` -/
def P17719510781724392525.Spec : Prop :=
  ∀ n, P17719510781724392525.a n = A023824 (n + 1)

theorem P17719510781724392525.correct : P17719510781724392525.Spec := by
  intro n
  simp only [A023824, Nat.add_sub_cancel]

end A023824

/-! ## A023824.P6157384013351912110

`A023993(n+1)-A023816(n)`
-/

namespace A023824.P6157384013351912110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023993 (n + 1) - A023816 n

end

end A023824.P6157384013351912110

namespace A023824

/-- `A023993(n+1)-A023816(n)` -/
def P6157384013351912110.Spec : Prop :=
  ∀ n, P6157384013351912110.a n = A023824 (n + 1)

end A023824

/-! ## A023824.P13057245518904200938

`A132896(A235332(n))`
-/

namespace A023824.P13057245518904200938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A235332 n).toNat

end

end A023824.P13057245518904200938

namespace A023824

/-- `A132896(A235332(n))` -/
def P13057245518904200938.Spec : Prop :=
  ∀ n, P13057245518904200938.a n = A023824 (n + 1)

end A023824

/-! ## A023824.P8950876746096058618

`A132896(Δ[A005920(n)]+1)`
-/

namespace A023824.P8950876746096058618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (f1 (n + 1) - f1 n + 1).toNat

end

end A023824.P8950876746096058618

namespace A023824

/-- `A132896(Δ[A005920(n)]+1)` -/
def P8950876746096058618.Spec : Prop :=
  ∀ n, P8950876746096058618.a n = A023824 (n + 1)

end A023824

/-! ## A023824.P11736179384902878152

`A132896(A064225(n+1)+1)`
-/

namespace A023824.P11736179384902878152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A064225 (n + 1) + 1).toNat

end

end A023824.P11736179384902878152

namespace A023824

/-- `A132896(A064225(n+1)+1)` -/
def P11736179384902878152.Spec : Prop :=
  ∀ n, P11736179384902878152.a n = A023824 (n + 1)

end A023824

/-!
# A023825: Sum of exponents in prime-power factorization of C(3n,n+3).

The programs for A023825, the canonical program `A023825.P3857081763701164285` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023825 has offset 2).

The definition of A023825 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A023824, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023825.P3857081763701164285

`A023824(n+2)+A001222(2*(n+2)-2)-A001222(n+5)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A023825

/-- `A023824(n+2)+A001222(2*(n+2)-2)-A001222(n+5)` -/
def P3857081763701164285.Spec : Prop :=
  ∀ n, P3857081763701164285.a n = A023825 (n + 2)

theorem P3857081763701164285.correct : P3857081763701164285.Spec := by
  intro n
  simp only [A023825, Nat.add_sub_cancel]

end A023825

/-! ## A023825.P1044018645409341699

`A132896(A235332(n+1)-1)`
-/

namespace A023825.P1044018645409341699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A235332 (n + 1) - 1).toNat

end

end A023825.P1044018645409341699

namespace A023825

/-- `A132896(A235332(n+1)-1)` -/
def P1044018645409341699.Spec : Prop :=
  ∀ n, P1044018645409341699.a n = A023825 (n + 2)

end A023825

/-! ## A023825.P13531795683205966492

`A132896(Δ[A005920(n+1)]+2)`
-/

namespace A023825.P13531795683205966492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (f1 (n + 1) - f1 n + 2).toNat

end

end A023825.P13531795683205966492

namespace A023825

/-- `A132896(Δ[A005920(n+1)]+2)` -/
def P13531795683205966492.Spec : Prop :=
  ∀ n, P13531795683205966492.a n = A023825 (n + 2)

end A023825

/-! ## A023825.P7658616004109441535

`A132896(A055999(3*n+4)-n)`
-/

namespace A023825.P7658616004109441535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A055999 (3 * n + 4) - (n : ℤ)).toNat

end

end A023825.P7658616004109441535

namespace A023825

/-- `A132896(A055999(3*n+4)-n)` -/
def P7658616004109441535.Spec : Prop :=
  ∀ n, P7658616004109441535.a n = A023825 (n + 2)

end A023825

/-! ## A023825.P5751418565470997616

`A132896(Δ[A179436(n)+A005920(n)])`
-/

namespace A023825.P5751418565470997616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179436 n + A005920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (f1 (n + 1) - f1 n).toNat

end

end A023825.P5751418565470997616

namespace A023825

/-- `A132896(Δ[A179436(n)+A005920(n)])` -/
def P5751418565470997616.Spec : Prop :=
  ∀ n, P5751418565470997616.a n = A023825 (n + 2)

end A023825

/-!
# A023826: Sum of exponents in prime-power factorization of C(4n,n).

The programs for A023826, the canonical program `A023826.P15834259250542609692` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023826 has offset 0).

The definition of A023826 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023826.P15834259250542609692

`A022559(4*n)-A022559(3*n)-A022559(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A023826

/-- `A022559(4*n)-A022559(3*n)-A022559(n)` -/
def P15834259250542609692.Spec : Prop :=
  ∀ n, P15834259250542609692.a n = A023826 n

theorem P15834259250542609692.correct : P15834259250542609692.Spec := by
  intro n
  simp only [A023826]

end A023826

/-! ## A023826.P9385456794431357156

`A023990(n)+A023816(n)`
-/

namespace A023826.P9385456794431357156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023990 n + A023816 n

end

end A023826.P9385456794431357156

namespace A023826

/-- `A023990(n)+A023816(n)` -/
def P9385456794431357156.Spec : Prop :=
  ∀ n, P9385456794431357156.a n = A023826 n

end A023826

/-! ## A023826.P14769343035056106067

`A023980(n)-A023819(n)`
-/

namespace A023826.P14769343035056106067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023980 n - A023819 n

end

end A023826.P14769343035056106067

namespace A023826

/-- `A023980(n)-A023819(n)` -/
def P14769343035056106067.Spec : Prop :=
  ∀ n, P14769343035056106067.a n = A023826 n

end A023826

/-! ## A023826.P9479502491309269301

`A023982(n)-A023837(n)`
-/

namespace A023826.P9479502491309269301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023982 n - A023837 n

end

end A023826.P9479502491309269301

namespace A023826

/-- `A023982(n)-A023837(n)` -/
def P9479502491309269301.Spec : Prop :=
  ∀ n, P9479502491309269301.a n = A023826 n

end A023826

/-! ## A023826.P12602605503557677508

`A023979(n)-A023978(n)`
-/

namespace A023826.P12602605503557677508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023979 n - A023978 n

end

end A023826.P12602605503557677508

namespace A023826

/-- `A023979(n)-A023978(n)` -/
def P12602605503557677508.Spec : Prop :=
  ∀ n, P12602605503557677508.a n = A023826 n

end A023826

/-! ## A023826.P6549613400014722119

`A023816(n)+A023847(n)-A023837(n)`
-/

namespace A023826.P6549613400014722119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023816 n + (A023847 n - A023837 n)

end

end A023826.P6549613400014722119

namespace A023826

/-- `A023816(n)+A023847(n)-A023837(n)` -/
def P6549613400014722119.Spec : Prop :=
  ∀ n, P6549613400014722119.a n = A023826 n

end A023826

/-! ## A023826.P1187036300723904429

`A023847(n)+A023852(n)-A023853(n)`
-/

namespace A023826.P1187036300723904429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023847 n + (A023852 n - A023853 n)

end

end A023826.P1187036300723904429

namespace A023826

/-- `A023847(n)+A023852(n)-A023853(n)` -/
def P1187036300723904429.Spec : Prop :=
  ∀ n, P1187036300723904429.a n = A023826 n

end A023826

/-! ## A023826.P428747366297649856

`A023980(n)+A023987(n)-A023847(n)`
-/

namespace A023826.P428747366297649856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023980 n + (A023987 n - A023847 n)

end

end A023826.P428747366297649856

namespace A023826

/-- `A023980(n)+A023987(n)-A023847(n)` -/
def P428747366297649856.Spec : Prop :=
  ∀ n, P428747366297649856.a n = A023826 n

end A023826

/-! ## A023826.P10342923598132165491

`A023979(n)+A023982(n)-A023981(n)`
-/

namespace A023826.P10342923598132165491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023979 n + (A023982 n - A023981 n)

end

end A023826.P10342923598132165491

namespace A023826

/-- `A023979(n)+A023982(n)-A023981(n)` -/
def P10342923598132165491.Spec : Prop :=
  ∀ n, P10342923598132165491.a n = A023826 n

end A023826

/-! ## A023826.P12082674696187217447

`A023979(n)+A023987(n)-A023982(n)`
-/

namespace A023826.P12082674696187217447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023979 n + (A023987 n - A023982 n)

end

end A023826.P12082674696187217447

namespace A023826

/-- `A023979(n)+A023987(n)-A023982(n)` -/
def P12082674696187217447.Spec : Prop :=
  ∀ n, P12082674696187217447.a n = A023826 n

end A023826

/-! ## A023826.P17987390482969319972

`A023979(n)+A023990(n)-A023980(n)`
-/

namespace A023826.P17987390482969319972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023979 n + (A023990 n - A023980 n)

end

end A023826.P17987390482969319972

namespace A023826

/-- `A023979(n)+A023990(n)-A023980(n)` -/
def P17987390482969319972.Spec : Prop :=
  ∀ n, P17987390482969319972.a n = A023826 n

end A023826

/-!
# A023827: Sum of exponents in prime-power factorization of C(4n,n-1).

The programs for A023827, the canonical program `A023827.P2733761786903889434` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023827 has offset 1).

The definition of A023827 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A023826, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023827.P2733761786903889434

`A023826(n+1)-A001222(3*(n+1)+1)+A001222(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A023827

/-- `A023826(n+1)-A001222(3*(n+1)+1)+A001222(n+1)` -/
def P2733761786903889434.Spec : Prop :=
  ∀ n, P2733761786903889434.a n = A023827 (n + 1)

theorem P2733761786903889434.correct : P2733761786903889434.Spec := by
  intro n
  simp only [A023827, Nat.add_sub_cancel]

end A023827

/-! ## A023827.P353968640323463421

`A022559(4*(n+1))-A022559(3*(n+1)+1)-A022559(n)`
-/

namespace A023827.P353968640323463421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (4 * (n + 1)) - A022559 (3 * (n + 1) + 1) - A022559 n

end

end A023827.P353968640323463421

namespace A023827

/-- `A022559(4*(n+1))-A022559(3*(n+1)+1)-A022559(n)` -/
def P353968640323463421.Spec : Prop :=
  ∀ n, P353968640323463421.a n = A023827 (n + 1)

end A023827

/-! ## A023827.P169616863401641224

`A022559(4*(n+1))-(A022559(3*n+4)+A022559(n))`
-/

namespace A023827.P169616863401641224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (4 * (n + 1)) - (A022559 (3 * n + 4) + A022559 n)

end

end A023827.P169616863401641224

namespace A023827

/-- `A022559(4*(n+1))-(A022559(3*n+4)+A022559(n))` -/
def P169616863401641224.Spec : Prop :=
  ∀ n, P169616863401641224.a n = A023827 (n + 1)

end A023827

/-! ## A023827.P8500814525998270256

`A132896(A139277(n+1)+1)`
-/

namespace A023827.P8500814525998270256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A139277 (n + 1) + 1).toNat

end

end A023827.P8500814525998270256

namespace A023827

/-- `A132896(A139277(n+1)+1)` -/
def P8500814525998270256.Spec : Prop :=
  ∀ n, P8500814525998270256.a n = A023827 (n + 1)

end A023827

/-! ## A023827.P5119551204143382227

`A132896(A139276(n+1)-1)`
-/

namespace A023827.P5119551204143382227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A139276 (n + 1) - 1).toNat

end

end A023827.P5119551204143382227

namespace A023827

/-- `A132896(A139276(n+1)-1)` -/
def P5119551204143382227.Spec : Prop :=
  ∀ n, P5119551204143382227.a n = A023827 (n + 1)

end A023827

/-!
# A023828: Sum of exponents in prime-power factorization of C(4n,n-2).

The programs for A023828, the canonical program `A023828.P17231470390843408716` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023828 has offset 2).

The definition of A023828 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A023827, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023828.P17231470390843408716

`A023827(n+2)-A001222(3*(n+2)+2)+A001222(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A023828

/-- `A023827(n+2)-A001222(3*(n+2)+2)+A001222(n+1)` -/
def P17231470390843408716.Spec : Prop :=
  ∀ n, P17231470390843408716.a n = A023828 (n + 2)

theorem P17231470390843408716.correct : P17231470390843408716.Spec := by
  intro n
  simp only [A023828, Nat.add_sub_cancel]

end A023828

/-! ## A023828.P7643019356545621843

`A132896(A139277(n+2)+2)`
-/

namespace A023828.P7643019356545621843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A139277 (n + 2) + 2).toNat

end

end A023828.P7643019356545621843

namespace A023828

/-- `A132896(A139277(n+2)+2)` -/
def P7643019356545621843.Spec : Prop :=
  ∀ n, P7643019356545621843.a n = A023828 (n + 2)

end A023828

/-! ## A023828.P11094941485861753263

`A132896(A139276(n+2)-2)`
-/

namespace A023828.P11094941485861753263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A139276 (n + 2) - 2).toNat

end

end A023828.P11094941485861753263

namespace A023828

/-- `A132896(A139276(n+2)-2)` -/
def P11094941485861753263.Spec : Prop :=
  ∀ n, P11094941485861753263.a n = A023828 (n + 2)

end A023828

/-! ## A023828.P4189582031432008952

`A132896(A236267(n+2)-3)`
-/

namespace A023828.P4189582031432008952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A236267 (n + 2) - 3).toNat

end

end A023828.P4189582031432008952

namespace A023828

/-- `A132896(A236267(n+2)-3)` -/
def P4189582031432008952.Spec : Prop :=
  ∀ n, P4189582031432008952.a n = A023828 (n + 2)

end A023828

/-! ## A023828.P11744567688285971277

`A132896(A046092(2*(n+2))+n+4)`
-/

namespace A023828.P11744567688285971277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A046092 (2 * (n + 2)) + (n + 4 : ℤ)).toNat

end

end A023828.P11744567688285971277

namespace A023828

/-- `A132896(A046092(2*(n+2))+n+4)` -/
def P11744567688285971277.Spec : Prop :=
  ∀ n, P11744567688285971277.a n = A023828 (n + 2)

end A023828

/-!
# A023829: Sum of exponents in prime-power factorization of C(4n,n-3).

The programs for A023829, the canonical program `A023829.P17369024304238667941` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023829 has offset 3).

The definition of A023829 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A023828, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023829.P17369024304238667941

`A023828(n+3)-A001222(3*(n+3)+3)+A001222(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A023829

/-- `A023828(n+3)-A001222(3*(n+3)+3)+A001222(n+1)` -/
def P17369024304238667941.Spec : Prop :=
  ∀ n, P17369024304238667941.a n = A023829 (n + 3)

theorem P17369024304238667941.correct : P17369024304238667941.Spec := by
  intro n
  simp only [A023829, Nat.add_sub_cancel]

end A023829

/-! ## A023829.P14390720548056909034

`A132896(A139277(n+3)+3)`
-/

namespace A023829.P14390720548056909034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A139277 (n + 3) + 3).toNat

end

end A023829.P14390720548056909034

namespace A023829

/-- `A132896(A139277(n+3)+3)` -/
def P14390720548056909034.Spec : Prop :=
  ∀ n, P14390720548056909034.a n = A023829 (n + 3)

end A023829

/-! ## A023829.P3637492984950962664

`A132896(A139276(n+3)-3)`
-/

namespace A023829.P3637492984950962664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A139276 (n + 3) - 3).toNat

end

end A023829.P3637492984950962664

namespace A023829

/-- `A132896(A139276(n+3)-3)` -/
def P3637492984950962664.Spec : Prop :=
  ∀ n, P3637492984950962664.a n = A023829 (n + 3)

end A023829

/-! ## A023829.P14917233356428697202

`A132896(A236267(n+3)-4)`
-/

namespace A023829.P14917233356428697202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A236267 (n + 3) - 4).toNat

end

end A023829.P14917233356428697202

namespace A023829

/-- `A132896(A236267(n+3)-4)` -/
def P14917233356428697202.Spec : Prop :=
  ∀ n, P14917233356428697202.a n = A023829 (n + 3)

end A023829

/-!
# A023830: Sum of exponents in prime-power factorization of C(4n,n-4).

The programs for A023830, the canonical program `A023830.P15633288561888369434` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023830 has offset 4).

The definition of A023830 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A023829, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023830.P15633288561888369434

`A023829(n+4)-A001222(3*(n+4)+4)+A001222(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A023830

/-- `A023829(n+4)-A001222(3*(n+4)+4)+A001222(n+1)` -/
def P15633288561888369434.Spec : Prop :=
  ∀ n, P15633288561888369434.a n = A023830 (n + 4)

theorem P15633288561888369434.correct : P15633288561888369434.Spec := by
  intro n
  simp only [A023830, Nat.add_sub_cancel]

end A023830

/-! ## A023830.P5987181243671787923

`A132896(A139277(n+4)+4)`
-/

namespace A023830.P5987181243671787923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A139277 (n + 4) + 4).toNat

end

end A023830.P5987181243671787923

namespace A023830

/-- `A132896(A139277(n+4)+4)` -/
def P5987181243671787923.Spec : Prop :=
  ∀ n, P5987181243671787923.a n = A023830 (n + 4)

end A023830

/-! ## A023830.P6120461127578083309

`A132896(A139276(n+4)-4)`
-/

namespace A023830.P6120461127578083309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A139276 (n + 4) - 4).toNat

end

end A023830.P6120461127578083309

namespace A023830

/-- `A132896(A139276(n+4)-4)` -/
def P6120461127578083309.Spec : Prop :=
  ∀ n, P6120461127578083309.a n = A023830 (n + 4)

end A023830

/-! ## A023830.P4088303008698824136

`A132896(A236267(n+4)-5)`
-/

namespace A023830.P4088303008698824136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A236267 (n + 4) - 5).toNat

end

end A023830.P4088303008698824136

namespace A023830

/-- `A132896(A236267(n+4)-5)` -/
def P4088303008698824136.Spec : Prop :=
  ∀ n, P4088303008698824136.a n = A023830 (n + 4)

end A023830

/-!
# A023831: Sum of exponents in prime-power factorization of C(4n,n+1).

The programs for A023831, the canonical program `A023831.P409787751788161392` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023831 has offset 1).

The definition of A023831 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023831.P14149913374094670833

`A023817(n+1)+A023990(n+1)+1`
-/

namespace A023831.P14149913374094670833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023817 (n + 1) + (A023990 (n + 1) + 1)

end

end A023831.P14149913374094670833

namespace A023831

/-- `A023817(n+1)+A023990(n+1)+1` -/
def P14149913374094670833.Spec : Prop :=
  ∀ n, P14149913374094670833.a n = A023831 (n + 1)

end A023831

/-! ## A023831.P409787751788161392

`A023826(n+1)+1-A076191(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A023831

/-- `A023826(n+1)+1-A076191(n+1)` -/
def P409787751788161392.Spec : Prop :=
  ∀ n, P409787751788161392.a n = A023831 (n + 1)

theorem P409787751788161392.correct : P409787751788161392.Spec := by
  intro n
  simp only [A023831, Nat.add_sub_cancel]

end A023831

/-! ## A023831.P8516569437151037694

`A023817(n+1)+A023835(n+1)-A023820(n+1)`
-/

namespace A023831.P8516569437151037694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023817 (n + 1) + (A023835 (n + 1) - A023820 (n + 1))

end

end A023831.P8516569437151037694

namespace A023831

/-- `A023817(n+1)+A023835(n+1)-A023820(n+1)` -/
def P8516569437151037694.Spec : Prop :=
  ∀ n, P8516569437151037694.a n = A023831 (n + 1)

end A023831

/-! ## A023831.P988621110131984117

`A023823(n+1)+A023826(n+1)-A023819(n+1)`
-/

namespace A023831.P988621110131984117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023823 (n + 1) + (A023826 (n + 1) - A023819 (n + 1))

end

end A023831.P988621110131984117

namespace A023831

/-- `A023823(n+1)+A023826(n+1)-A023819(n+1)` -/
def P988621110131984117.Spec : Prop :=
  ∀ n, P988621110131984117.a n = A023831 (n + 1)

end A023831

/-! ## A023831.P3966187439224410544

`A023823(n+1)+A023854(n+1)-A023853(n+1)`
-/

namespace A023831.P3966187439224410544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023823 (n + 1) + (A023854 (n + 1) - A023853 (n + 1))

end

end A023831.P3966187439224410544

namespace A023831

/-- `A023823(n+1)+A023854(n+1)-A023853(n+1)` -/
def P3966187439224410544.Spec : Prop :=
  ∀ n, P3966187439224410544.a n = A023831 (n + 1)

end A023831

/-!
# A023832: Sum of exponents in prime-power factorization of C(4n,n+2).

The programs for A023832, there is no canonical definition to state claims against.
-/

/-! ## A023832.P12771465699933448042

`A132896(A236267(n+1)+1)`
-/

namespace A023832.P12771465699933448042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A236267 (n + 1) + 1).toNat

end

end A023832.P12771465699933448042

/-! ## A023832.P14369314088806198947

`A132896(A139276(n+1)+2)`
-/

namespace A023832.P14369314088806198947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A139276 (n + 1) + 2).toNat

end

end A023832.P14369314088806198947

/-! ## A023832.P216835414079191709

`A132896(A139277(n+1)-2)`
-/

namespace A023832.P216835414079191709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A139277 (n + 1) - 2).toNat

end

end A023832.P216835414079191709

/-! ## A023832.P2655848090593265305

`A132896(A102083(n+1)-n)`
-/

namespace A023832.P2655848090593265305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A102083 (n + 1) - (n : ℤ)).toNat

end

end A023832.P2655848090593265305

/-! ## A023832.P17836298204601345175

`A132896(A099776(2*(n+1))-n)`
-/

namespace A023832.P17836298204601345175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A099776 (2 * (n + 1)) - (n : ℤ)).toNat

end

end A023832.P17836298204601345175

/-!
# A023833: Sum of exponents in prime-power factorization of C(4n,n+3).

The programs for A023833, there is no canonical definition to state claims against.
-/

/-! ## A023833.P10261457496004105158

`A132896(A236267(n+1)+2)`
-/

namespace A023833.P10261457496004105158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A236267 (n + 1) + 2).toNat

end

end A023833.P10261457496004105158

/-! ## A023833.P1258470977259502847

`A132896(A139276(n+1)+3)`
-/

namespace A023833.P1258470977259502847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A139276 (n + 1) + 3).toNat

end

end A023833.P1258470977259502847

/-! ## A023833.P17986616616089018265

`A132896(A139277(n+1)-3)`
-/

namespace A023833.P17986616616089018265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A139277 (n + 1) - 3).toNat

end

end A023833.P17986616616089018265

/-! ## A023833.P9352364594637816263

`A132896((n+2)*Δ[A007742(n)])`
-/

namespace A023833.P9352364594637816263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 ((n + 2 : ℤ) * (f1 (n + 1) - f1 n)).toNat

end

end A023833.P9352364594637816263

/-! ## A023833.P2771523664541369057

`A132896(A033586(n+1)+n-2)`
-/

namespace A023833.P2771523664541369057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A033586 (n + 1) + ((n : ℤ) - 2)).toNat

end

end A023833.P2771523664541369057

/-!
# A023834: Sum of exponents in prime-power factorization of C(4n,2n).

The programs for A023834, the canonical program `A023834.P16787518251000114194` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023834 has offset 0).

The definition of A023834 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023834.P16787518251000114194

`A022559(4*n)-2*A022559(2*n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A023834

/-- `A022559(4*n)-2*A022559(2*n)` -/
def P16787518251000114194.Spec : Prop :=
  ∀ n, P16787518251000114194.a n = A023834 n

theorem P16787518251000114194.correct : P16787518251000114194.Spec := by
  intro n
  simp only [A023834]

end A023834

/-! ## A023834.P3657226032117480719

`A023816(2*n)`
-/

namespace A023834.P3657226032117480719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023816 (2 * n)

end

end A023834.P3657226032117480719

namespace A023834

/-- `A023816(2*n)` -/
def P3657226032117480719.Spec : Prop :=
  ∀ n, P3657226032117480719.a n = A023834 n

end A023834

/-! ## A023834.P16216113344233908637

`A023986(n)+A023816(n)`
-/

namespace A023834.P16216113344233908637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023986 n + A023816 n

end

end A023834.P16216113344233908637

namespace A023834

/-- `A023986(n)+A023816(n)` -/
def P16216113344233908637.Spec : Prop :=
  ∀ n, P16216113344233908637.a n = A023834 n

end A023834

/-! ## A023834.P11498532202207240200

`A023990(n)+A023819(n)`
-/

namespace A023834.P11498532202207240200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023990 n + A023819 n

end

end A023834.P11498532202207240200

namespace A023834

/-- `A023990(n)+A023819(n)` -/
def P11498532202207240200.Spec : Prop :=
  ∀ n, P11498532202207240200.a n = A023834 n

end A023834

/-! ## A023834.P8376833858577247768

`A023980(n)-A023816(n)`
-/

namespace A023834.P8376833858577247768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023980 n - A023816 n

end

end A023834.P8376833858577247768

namespace A023834

/-- `A023980(n)-A023816(n)` -/
def P8376833858577247768.Spec : Prop :=
  ∀ n, P8376833858577247768.a n = A023834 n

end A023834

/-! ## A023834.P4094015683738490655

`A023983(n)-A023837(n)`
-/

namespace A023834.P4094015683738490655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023983 n - A023837 n

end

end A023834.P4094015683738490655

namespace A023834

/-- `A023983(n)-A023837(n)` -/
def P4094015683738490655.Spec : Prop :=
  ∀ n, P4094015683738490655.a n = A023834 n

end A023834

/-! ## A023834.P7833233706781372615

`A023985(n)-A023853(n)`
-/

namespace A023834.P7833233706781372615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023985 n - A023853 n

end

end A023834.P7833233706781372615

namespace A023834

/-- `A023985(n)-A023853(n)` -/
def P7833233706781372615.Spec : Prop :=
  ∀ n, P7833233706781372615.a n = A023834 n

end A023834

/-! ## A023834.P10210510266451389556

`A023979(n)-(A023816(n)+A023816(n))`
-/

namespace A023834.P10210510266451389556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023979 n - (A023816 n + A023816 n)

end

end A023834.P10210510266451389556

namespace A023834

/-- `A023979(n)-(A023816(n)+A023816(n))` -/
def P10210510266451389556.Spec : Prop :=
  ∀ n, P10210510266451389556.a n = A023834 n

end A023834

/-! ## A023834.P1054841049979515418

`A023847(n)+A023980(n)-A023982(n)`
-/

namespace A023834.P1054841049979515418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023847 n + (A023980 n - A023982 n)

end

end A023834.P1054841049979515418

namespace A023834

/-- `A023847(n)+A023980(n)-A023982(n)` -/
def P1054841049979515418.Spec : Prop :=
  ∀ n, P1054841049979515418.a n = A023834 n

end A023834

/-! ## A023834.P4310416742866975710

`A023982(n)+A023986(n)-A023847(n)`
-/

namespace A023834.P4310416742866975710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023982 n + (A023986 n - A023847 n)

end

end A023834.P4310416742866975710

namespace A023834

/-- `A023982(n)+A023986(n)-A023847(n)` -/
def P4310416742866975710.Spec : Prop :=
  ∀ n, P4310416742866975710.a n = A023834 n

end A023834

/-! ## A023834.P6867361904385628834

`A023979(n)+A023986(n)-A023980(n)`
-/

namespace A023834.P6867361904385628834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023979 n + (A023986 n - A023980 n)

end

end A023834.P6867361904385628834

namespace A023834

/-- `A023979(n)+A023986(n)-A023980(n)` -/
def P6867361904385628834.Spec : Prop :=
  ∀ n, P6867361904385628834.a n = A023834 n

end A023834

/-! ## A023834.P8906294195081424763

`A023978(2*n)-A023819(2*n)`
-/

namespace A023834.P8906294195081424763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023978 (2 * n) - A023819 (2 * n)

end

end A023834.P8906294195081424763

namespace A023834

/-- `A023978(2*n)-A023819(2*n)` -/
def P8906294195081424763.Spec : Prop :=
  ∀ n, P8906294195081424763.a n = A023834 n

end A023834

/-! ## A023834.P8531523253858823820

`A023982(2*n)-A023847(2*n)`
-/

namespace A023834.P8531523253858823820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023982 (2 * n) - A023847 (2 * n)

end

end A023834.P8531523253858823820

namespace A023834

/-- `A023982(2*n)-A023847(2*n)` -/
def P8531523253858823820.Spec : Prop :=
  ∀ n, P8531523253858823820.a n = A023834 n

end A023834

/-! ## A023834.P16760830785446239158

`A023979(2*n)-A023980(2*n)`
-/

namespace A023834.P16760830785446239158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023979 (2 * n) - A023980 (2 * n)

end

end A023834.P16760830785446239158

namespace A023834

/-- `A023979(2*n)-A023980(2*n)` -/
def P16760830785446239158.Spec : Prop :=
  ∀ n, P16760830785446239158.a n = A023834 n

end A023834

/-! ## A023834.P7838931907622461683

`A182921(4*n)`
-/

namespace A023834.P7838931907622461683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182921 (4 * n)

end

end A023834.P7838931907622461683

namespace A023834

/-- `A182921(4*n)` -/
def P7838931907622461683.Spec : Prop :=
  ∀ n, P7838931907622461683.a n = A023834 n

end A023834

/-! ## A023834.P9871738376462424736

`A081399(2*n)+A001222(2*n+1)`
-/

namespace A023834.P9871738376462424736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081399 (2 * n) + A001222 (2 * n + 1)

end

end A023834.P9871738376462424736

namespace A023834

/-- `A081399(2*n)+A001222(2*n+1)` -/
def P9871738376462424736.Spec : Prop :=
  ∀ n, P9871738376462424736.a n = A023834 n

end A023834

/-! ## A023834.P1989295038090865706

`A048621(A008574(n))`
-/

namespace A023834.P1989295038090865706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048621 (A008574 n).toNat

end

end A023834.P1989295038090865706

namespace A023834

/-- `A048621(A008574(n))` -/
def P1989295038090865706.Spec : Prop :=
  ∀ n, P1989295038090865706.a n = A023834 n

end A023834

/-!
# A023835: Sum of exponents in prime-power factorization of C(4n,2n-1).

The programs for A023835, the canonical program `A023835.P2743895694547808382` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023835 has offset 1).

The definition of A023835 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023835.P2743895694547808382

`A023820(n+1)+A023831(n+1)-A023817(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A023835

/-- `A023820(n+1)+A023831(n+1)-A023817(n+1)` -/
def P2743895694547808382.Spec : Prop :=
  ∀ n, P2743895694547808382.a n = A023835 (n + 1)

theorem P2743895694547808382.correct : P2743895694547808382.Spec := by
  intro n
  simp only [A023835, Nat.add_sub_cancel]

end A023835

/-! ## A023835.P2483094912352362283

`A023817(2*(n+1))`
-/

namespace A023835.P2483094912352362283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023817 (2 * (n + 1))

end

end A023835.P2483094912352362283

namespace A023835

/-- `A023817(2*(n+1))` -/
def P2483094912352362283.Spec : Prop :=
  ∀ n, P2483094912352362283.a n = A023835 (n + 1)

end A023835

/-! ## A023835.P13230829867669427671

`A023817(n+2+n)%A034290(n+1)`
-/

namespace A023835.P13230829867669427671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023817 (n + 2 + n)) (A034290 (n + 1))

end

end A023835.P13230829867669427671

namespace A023835

/-- `A023817(n+2+n)%A034290(n+1)` -/
def P13230829867669427671.Spec : Prop :=
  ∀ n, P13230829867669427671.a n = A023835 (n + 1)

end A023835

/-! ## A023835.P8214823684391294144

`A023991(2*(n+1))-A023819(2*(n+1))`
-/

namespace A023835.P8214823684391294144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023991 (2 * (n + 1)) - A023819 (2 * (n + 1))

end

end A023835.P8214823684391294144

namespace A023835

/-- `A023991(2*(n+1))-A023819(2*(n+1))` -/
def P8214823684391294144.Spec : Prop :=
  ∀ n, P8214823684391294144.a n = A023835 (n + 1)

end A023835

/-! ## A023835.P7771460057130373196

`A023816(2*(n+1))-A076191(2*(n+1))`
-/

namespace A023835.P7771460057130373196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023816 (2 * (n + 1)) - A076191 (2 * (n + 1))

end

end A023835.P7771460057130373196

namespace A023835

/-- `A023816(2*(n+1))-A076191(2*(n+1))` -/
def P7771460057130373196.Spec : Prop :=
  ∀ n, P7771460057130373196.a n = A023835 (n + 1)

end A023835

/-!
# A023836: Sum of exponents in prime-power factorization of C(4n,2n-2).

The programs for A023836, the canonical program `A023836.P4434830297620325670` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023836 has offset 1).

The definition of A023836 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A023835, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023836.P4434830297620325670

`A023835(n+1)-A001222(2*(n+1)+2)+A001222(2*(n+1)-1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A023836

/-- `A023835(n+1)-A001222(2*(n+1)+2)+A001222(2*(n+1)-1)` -/
def P4434830297620325670.Spec : Prop :=
  ∀ n, P4434830297620325670.a n = A023836 (n + 1)

theorem P4434830297620325670.correct : P4434830297620325670.Spec := by
  intro n
  simp only [A023836, Nat.add_sub_cancel]

end A023836

/-! ## A023836.P8917174386970996481

`A023818(2*(n+1))`
-/

namespace A023836.P8917174386970996481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023818 (2 * (n + 1))

end

end A023836.P8917174386970996481

namespace A023836

/-- `A023818(2*(n+1))` -/
def P8917174386970996481.Spec : Prop :=
  ∀ n, P8917174386970996481.a n = A023836 (n + 1)

end A023836

/-! ## A023836.P6543946718435761776

`A023818(n+2+n)%(n+2+n)`
-/

namespace A023836.P6543946718435761776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023818 (n + 2 + n)) (n + 2 + n : ℤ)

end

end A023836.P6543946718435761776

namespace A023836

/-- `A023818(n+2+n)%(n+2+n)` -/
def P6543946718435761776.Spec : Prop :=
  ∀ n, P6543946718435761776.a n = A023836 (n + 1)

end A023836

/-! ## A023836.P564838375474636467

`A234017(A005187(n))+A023818(n+2+n)`
-/

namespace A023836.P564838375474636467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234017 (A005187 n).toNat + A023818 (n + 2 + n)

end

end A023836.P564838375474636467

namespace A023836

/-- `A234017(A005187(n))+A023818(n+2+n)` -/
def P564838375474636467.Spec : Prop :=
  ∀ n, P564838375474636467.a n = A023836 (n + 1)

end A023836

/-! ## A023836.P11870957059384861741

`A023818(n+2+n)/A040414(A338329(n))`
-/

namespace A023836.P11870957059384861741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023818 (n + 2 + n) : ℚ) / (A040414 (A338329 n).toNat : ℚ)

end

end A023836.P11870957059384861741

namespace A023836

/-- `A023818(n+2+n)/A040414(A338329(n))` -/
def P11870957059384861741.Spec : Prop :=
  ∀ n, P11870957059384861741.a n = (A023836 (n + 1) : ℚ)

end A023836

/-! ## A023836.P855968398120296786

`A023818(n+2+n)/A340149(A340150(n+1))`
-/

namespace A023836.P855968398120296786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023818 (n + 2 + n) : ℚ) / (A340149 (A340150 (n + 1)).toNat : ℚ)

end

end A023836.P855968398120296786

namespace A023836

/-- `A023818(n+2+n)/A340149(A340150(n+1))` -/
def P855968398120296786.Spec : Prop :=
  ∀ n, P855968398120296786.a n = (A023836 (n + 1) : ℚ)

end A023836

/-! ## A023836.P1102524433129280854

`A213714(A055938(n+1))+A023818(n+2+n)`
-/

namespace A023836.P1102524433129280854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213714 (A055938 (n + 1)).toNat + A023818 (n + 2 + n)

end

end A023836.P1102524433129280854

namespace A023836

/-- `A213714(A055938(n+1))+A023818(n+2+n)` -/
def P1102524433129280854.Spec : Prop :=
  ∀ n, P1102524433129280854.a n = A023836 (n + 1)

end A023836

/-! ## A023836.P3936024984443823239

`A023818(n+2+n)/A040414(A168301(n+1))`
-/

namespace A023836.P3936024984443823239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023818 (n + 2 + n) : ℚ) / (A040414 (A168301 (n + 1)).toNat : ℚ)

end

end A023836.P3936024984443823239

namespace A023836

/-- `A023818(n+2+n)/A040414(A168301(n+1))` -/
def P3936024984443823239.Spec : Prop :=
  ∀ n, P3936024984443823239.a n = (A023836 (n + 1) : ℚ)

end A023836

/-! ## A023836.P4045131424197062573

`A023818(n+2+n)/A040414(A340149(n+1))`
-/

namespace A023836.P4045131424197062573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023818 (n + 2 + n) : ℚ) / (A040414 (A340149 (n + 1)).toNat : ℚ)

end

end A023836.P4045131424197062573

namespace A023836

/-- `A023818(n+2+n)/A040414(A340149(n+1))` -/
def P4045131424197062573.Spec : Prop :=
  ∀ n, P4045131424197062573.a n = (A023836 (n + 1) : ℚ)

end A023836

/-! ## A023836.P7621857409141547605

`A048298(A056000(n))+A023818(n+2+n)`
-/

namespace A023836.P7621857409141547605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (A056000 n).toNat + A023818 (n + 2 + n)

end

end A023836.P7621857409141547605

namespace A023836

/-- `A048298(A056000(n))+A023818(n+2+n)` -/
def P7621857409141547605.Spec : Prop :=
  ∀ n, P7621857409141547605.a n = A023836 (n + 1)

end A023836

/-!
# A023837: Sum of exponents in prime-power factorization of C(5n,n).

The programs for A023837, the canonical program `A023837.P5350256569569073344` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023837 has offset 0).

The definition of A023837 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023837.P5350256569569073344

`A023982(n)-A023826(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A023837

/-- `A023982(n)-A023826(n)` -/
def P5350256569569073344.Spec : Prop :=
  ∀ n, P5350256569569073344.a n = A023837 n

theorem P5350256569569073344.correct : P5350256569569073344.Spec := by
  intro n
  simp only [A023837]

end A023837

/-! ## A023837.P2499012818403709078

`A023983(n)-A023834(n)`
-/

namespace A023837.P2499012818403709078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023983 n - A023834 n

end

end A023837.P2499012818403709078

namespace A023837

/-- `A023983(n)-A023834(n)` -/
def P2499012818403709078.Spec : Prop :=
  ∀ n, P2499012818403709078.a n = A023837 n

end A023837

/-! ## A023837.P9244804015615387546

`A023847(n)-A023990(n)`
-/

namespace A023837.P9244804015615387546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023847 n - A023990 n

end

end A023837.P9244804015615387546

namespace A023837

/-- `A023847(n)-A023990(n)` -/
def P9244804015615387546.Spec : Prop :=
  ∀ n, P9244804015615387546.a n = A023837 n

end A023837

/-! ## A023837.P6150392111193627233

`A023981(n)-A023979(n)`
-/

namespace A023837.P6150392111193627233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023981 n - A023979 n

end

end A023837.P6150392111193627233

namespace A023837

/-- `A023981(n)-A023979(n)` -/
def P6150392111193627233.Spec : Prop :=
  ∀ n, P6150392111193627233.a n = A023837 n

end A023837

/-! ## A023837.P6046530398404593859

`A023819(n)+A023982(n)-A023980(n)`
-/

namespace A023837.P6046530398404593859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023819 n + (A023982 n - A023980 n)

end

end A023837.P6046530398404593859

namespace A023837

/-- `A023819(n)+A023982(n)-A023980(n)` -/
def P6046530398404593859.Spec : Prop :=
  ∀ n, P6046530398404593859.a n = A023837 n

end A023837

/-! ## A023837.P4071091700634600062

`A023978(n)+A023982(n)-A023979(n)`
-/

namespace A023837.P4071091700634600062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023978 n + (A023982 n - A023979 n)

end

end A023837.P4071091700634600062

namespace A023837

/-- `A023978(n)+A023982(n)-A023979(n)` -/
def P4071091700634600062.Spec : Prop :=
  ∀ n, P4071091700634600062.a n = A023837 n

end A023837

/-! ## A023837.P7283860536213062544

`A023983(n)-A023816(2*n)`
-/

namespace A023837.P7283860536213062544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023983 n - A023816 (2 * n)

end

end A023837.P7283860536213062544

namespace A023837

/-- `A023983(n)-A023816(2*n)` -/
def P7283860536213062544.Spec : Prop :=
  ∀ n, P7283860536213062544.a n = A023837 n

end A023837

/-!
# A023838: Sum of exponents in prime-power factorization of C(5n,n-1).

The programs for A023838, the canonical program `A023838.P16621969469305383869` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023838 has offset 1).

The definition of A023838 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A023837, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023838.P16621969469305383869

`A023837(n+1)-A001222(4*(n+1)+1)+A001222(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A023838

/-- `A023837(n+1)-A001222(4*(n+1)+1)+A001222(n+1)` -/
def P16621969469305383869.Spec : Prop :=
  ∀ n, P16621969469305383869.a n = A023838 (n + 1)

theorem P16621969469305383869.correct : P16621969469305383869.Spec := by
  intro n
  simp only [A023838, Nat.add_sub_cancel]

end A023838

/-! ## A023838.P3482833939791616918

`A022559(5*(n+1))-(A022559(4*n+5)+A022559(n))`
-/

namespace A023838.P3482833939791616918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (5 * (n + 1)) - (A022559 (4 * n + 5) + A022559 n)

end

end A023838.P3482833939791616918

namespace A023838

/-- `A022559(5*(n+1))-(A022559(4*n+5)+A022559(n))` -/
def P3482833939791616918.Spec : Prop :=
  ∀ n, P3482833939791616918.a n = A023838 (n + 1)

end A023838

/-! ## A023838.P3876961913990149550

`A132896(A144312(n+1)+n)`
-/

namespace A023838.P3876961913990149550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A144312 (n + 1) + (n : ℤ)).toNat

end

end A023838.P3876961913990149550

namespace A023838

/-- `A132896(A144312(n+1)+n)` -/
def P3876961913990149550.Spec : Prop :=
  ∀ n, P3876961913990149550.a n = A023838 (n + 1)

end A023838

/-! ## A023838.P7705026717862119857

`A132896(A000217(5*(n+1))+n)`
-/

namespace A023838.P7705026717862119857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A000217 (5 * (n + 1)) + (n : ℤ)).toNat

end

end A023838.P7705026717862119857

namespace A023838

/-- `A132896(A000217(5*(n+1))+n)` -/
def P7705026717862119857.Spec : Prop :=
  ∀ n, P7705026717862119857.a n = A023838 (n + 1)

end A023838

/-! ## A023838.P5069936880560308938

`A132896(A000096(5*(n+1))-n)`
-/

namespace A023838.P5069936880560308938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A000096 (5 * (n + 1)) - (n : ℤ)).toNat

end

end A023838.P5069936880560308938

namespace A023838

/-- `A132896(A000096(5*(n+1))-n)` -/
def P5069936880560308938.Spec : Prop :=
  ∀ n, P5069936880560308938.a n = A023838 (n + 1)

end A023838

/-!
# A023839: Sum of exponents in prime-power factorization of C(5n,n-2).

The programs for A023839, the canonical program `A023839.P2652498098915009727` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023839 has offset 2).

The definition of A023839 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A023838, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023839.P2652498098915009727

`A023838(n+2)-A001222(4*(n+2)+2)+A001222(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A023839

/-- `A023838(n+2)-A001222(4*(n+2)+2)+A001222(n+1)` -/
def P2652498098915009727.Spec : Prop :=
  ∀ n, P2652498098915009727.a n = A023839 (n + 2)

theorem P2652498098915009727.correct : P2652498098915009727.Spec := by
  intro n
  simp only [A023839, Nat.add_sub_cancel]

end A023839

/-! ## A023839.P2778807329574905797

`A132896(A144312(n+2)+n)`
-/

namespace A023839.P2778807329574905797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A144312 (n + 2) + (n : ℤ)).toNat

end

end A023839.P2778807329574905797

namespace A023839

/-- `A132896(A144312(n+2)+n)` -/
def P2778807329574905797.Spec : Prop :=
  ∀ n, P2778807329574905797.a n = A023839 (n + 2)

end A023839

/-!
# A023841: Sum of exponents in prime-power factorization of C(5n,n-4).

The programs for A023841, there is no canonical definition to state claims against.
-/

/-! ## A023841.P8921566957589829579

`A023840(n+4)-A001222(4*(n+4)+4)+A001222(n+1)`
-/

namespace A023841.P8921566957589829579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023840 (n + 4) - A001222 (4 * (n + 4) + 4) + A001222 (n + 1)

end

end A023841.P8921566957589829579

/-!
# A023842: Sum of exponents in prime-power factorization of C(5n,n-5).

The programs for A023842, there is no canonical definition to state claims against.
-/

/-! ## A023842.P1413562960489677720

`A023841(n+5)-A001222(4*(n+5)+5)+A001222(n+1)`
-/

namespace A023842.P1413562960489677720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023841 (n + 5) - A001222 (4 * (n + 5) + 5) + A001222 (n + 1)

end

end A023842.P1413562960489677720

/-!
# A023843: Sum of exponents in prime-power factorization of C(5n,n+1).

The programs for A023843, the canonical program `A023843.P15699419849181094773` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023843 has offset 1).

The definition of A023843 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A023837, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023843.P15699419849181094773

`A023837(n+1)+A001222(4*(n+1))-A001222(n+2)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A023843

/-- `A023837(n+1)+A001222(4*(n+1))-A001222(n+2)` -/
def P15699419849181094773.Spec : Prop :=
  ∀ n, P15699419849181094773.a n = A023843 (n + 1)

theorem P15699419849181094773.correct : P15699419849181094773.Spec := by
  intro n
  simp only [A023843, Nat.add_sub_cancel]

end A023843

/-! ## A023843.P5727602054500264373

`A023837(n+1)+2-A076191(n+1)`
-/

namespace A023843.P5727602054500264373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023837 (n + 1) + (2 - A076191 (n + 1))

end

end A023843.P5727602054500264373

namespace A023843

/-- `A023837(n+1)+2-A076191(n+1)` -/
def P5727602054500264373.Spec : Prop :=
  ∀ n, P5727602054500264373.a n = A023843 (n + 1)

end A023843

/-! ## A023843.P9767717814302537954

`A132896(A144312(n+1)+n+2)`
-/

namespace A023843.P9767717814302537954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A144312 (n + 1) + (n + 2 : ℤ)).toNat

end

end A023843.P9767717814302537954

namespace A023843

/-- `A132896(A144312(n+1)+n+2)` -/
def P9767717814302537954.Spec : Prop :=
  ∀ n, P9767717814302537954.a n = A023843 (n + 1)

end A023843

/-! ## A023843.P6362072088739005883

`A132896(A004767(n)+A000217(5*(n+1)))`
-/

namespace A023843.P6362072088739005883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A004767 n + A000217 (5 * (n + 1))).toNat

end

end A023843.P6362072088739005883

namespace A023843

/-- `A132896(A004767(n)+A000217(5*(n+1)))` -/
def P6362072088739005883.Spec : Prop :=
  ∀ n, P6362072088739005883.a n = A023843 (n + 1)

end A023843

/-! ## A023843.P15995320837742877511

`A132896(A000096(5*(n+1))-A004767(n))`
-/

namespace A023843.P15995320837742877511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A000096 (5 * (n + 1)) - A004767 n).toNat

end

end A023843.P15995320837742877511

namespace A023843

/-- `A132896(A000096(5*(n+1))-A004767(n))` -/
def P15995320837742877511.Spec : Prop :=
  ∀ n, P15995320837742877511.a n = A023843 (n + 1)

end A023843

/-!
# A023844: Sum of exponents in prime-power factorization of C(5n,n+2).

The programs for A023844, the canonical program `A023844.P16963117519615248809` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023844 has offset 1).

The definition of A023844 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A023843, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023844.P16963117519615248809

`A023843(n+1)+A001222(4*(n+1)-1)-A001222(n+3)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A023844

/-- `A023843(n+1)+A001222(4*(n+1)-1)-A001222(n+3)` -/
def P16963117519615248809.Spec : Prop :=
  ∀ n, P16963117519615248809.a n = A023844 (n + 1)

theorem P16963117519615248809.correct : P16963117519615248809.Spec := by
  intro n
  simp only [A023844, Nat.add_sub_cancel]

end A023844

/-! ## A023844.P14099950869221485199

`A132896(A167614(5*n+4)+n)`
-/

namespace A023844.P14099950869221485199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A167614 (5 * n + 4) + (n : ℤ)).toNat

end

end A023844.P14099950869221485199

namespace A023844

/-- `A132896(A167614(5*n+4)+n)` -/
def P14099950869221485199.Spec : Prop :=
  ∀ n, P14099950869221485199.a n = A023844 (n + 1)

end A023844

/-! ## A023844.P2914227664261795451

`A132896(A046691(5*n+4)-n)`
-/

namespace A023844.P2914227664261795451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A046691 (5 * n + 4) - (n : ℤ)).toNat

end

end A023844.P2914227664261795451

namespace A023844

/-- `A132896(A046691(5*n+4)-n)` -/
def P2914227664261795451.Spec : Prop :=
  ∀ n, P2914227664261795451.a n = A023844 (n + 1)

end A023844

/-! ## A023844.P17084203067391346305

`A132896(A152950(5*n+6)+n)`
-/

namespace A023844.P17084203067391346305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A152950 (5 * n + 6) + (n : ℤ)).toNat

end

end A023844.P17084203067391346305

namespace A023844

/-- `A132896(A152950(5*n+6)+n)` -/
def P17084203067391346305.Spec : Prop :=
  ∀ n, P17084203067391346305.a n = A023844 (n + 1)

end A023844

/-!
# A023845: Sum of exponents in prime-power factorization of binomial(5n, n+3).

The programs for A023845, the canonical program `A023845.P1372337927519575379` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023845 has offset 1).

The definition of A023845 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A023844, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023845.P1372337927519575379

`A023844(n+1)+A001222(4*(n+1)-2)-A001222(n+4)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A023845

/-- `A023844(n+1)+A001222(4*(n+1)-2)-A001222(n+4)` -/
def P1372337927519575379.Spec : Prop :=
  ∀ n, P1372337927519575379.a n = A023845 (n + 1)

theorem P1372337927519575379.correct : P1372337927519575379.Spec := by
  intro n
  simp only [A023845, Nat.add_sub_cancel]

end A023845

/-! ## A023845.P16728282538883376350

`A132896(A144312(n+1)+n+4)`
-/

namespace A023845.P16728282538883376350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A144312 (n + 1) + (n + 4 : ℤ)).toNat

end

end A023845.P16728282538883376350

namespace A023845

/-- `A132896(A144312(n+1)+n+4)` -/
def P16728282538883376350.Spec : Prop :=
  ∀ n, P16728282538883376350.a n = A023845 (n + 1)

end A023845

/-! ## A023845.P5150077732297407645

`A132896(A052905(5*n+3)-n)`
-/

namespace A023845.P5150077732297407645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A052905 (5 * n + 3) - (n : ℤ)).toNat

end

end A023845.P5150077732297407645

namespace A023845

/-- `A132896(A052905(5*n+3)-n)` -/
def P5150077732297407645.Spec : Prop :=
  ∀ n, P5150077732297407645.a n = A023845 (n + 1)

end A023845

/-! ## A023845.P190953414084347829

`A132896(n+3+A000124(5*(n+1)))`
-/

namespace A023845.P190953414084347829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 ((n + 3 : ℤ) + A000124 (5 * (n + 1))).toNat

end

end A023845.P190953414084347829

namespace A023845

/-- `A132896(n+3+A000124(5*(n+1)))` -/
def P190953414084347829.Spec : Prop :=
  ∀ n, P190953414084347829.a n = A023845 (n + 1)

end A023845

/-! ## A023845.P8372693299043670098

`A132896(A027379(5*(n+1))-(6*n+9))`
-/

namespace A023845.P8372693299043670098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A027379 (5 * (n + 1)) - (6 * n + 9 : ℤ)).toNat

end

end A023845.P8372693299043670098

namespace A023845

/-- `A132896(A027379(5*(n+1))-(6*n+9))` -/
def P8372693299043670098.Spec : Prop :=
  ∀ n, P8372693299043670098.a n = A023845 (n + 1)

end A023845

/-!
# A023846: Sum of exponents in prime-power factorization of binomial(5n, n+4).

The programs for A023846, there is no canonical definition to state claims against.
-/

/-! ## A023846.P10224252039587860531

`A132896(A052905(5*n+3)-(n+1))`
-/

namespace A023846.P10224252039587860531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A052905 (5 * n + 3) - (n + 1 : ℤ)).toNat

end

end A023846.P10224252039587860531

/-! ## A023846.P3852304167534539696

`A132896(A167614(5*n+4)+n+2)`
-/

namespace A023846.P3852304167534539696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A167614 (5 * n + 4) + (n + 2 : ℤ)).toNat

end

end A023846.P3852304167534539696

/-! ## A023846.P9799031057645207438

`A132896(4*n+3+A055998(5*n+3))`
-/

namespace A023846.P9799031057645207438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 ((4 * n + 3 : ℤ) + A055998 (5 * n + 3)).toNat

end

end A023846.P9799031057645207438

/-!
# A023847: Sum of exponents in prime-power factorization of binomial(5n, 2n).

The programs for A023847, the canonical program `A023847.P14275358432901394298` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023847 has offset 0).

The definition of A023847 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023847.P722260123791902877

`A023987(n)+A023819(n)`
-/

namespace A023847.P722260123791902877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023987 n + A023819 n

end

end A023847.P722260123791902877

namespace A023847

/-- `A023987(n)+A023819(n)` -/
def P722260123791902877.Spec : Prop :=
  ∀ n, P722260123791902877.a n = A023847 n

end A023847

/-! ## A023847.P2685303777487217207

`A023990(n)+A023837(n)`
-/

namespace A023847.P2685303777487217207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023990 n + A023837 n

end

end A023847.P2685303777487217207

namespace A023847

/-- `A023990(n)+A023837(n)` -/
def P2685303777487217207.Spec : Prop :=
  ∀ n, P2685303777487217207.a n = A023847 n

end A023847

/-! ## A023847.P4336936229435989873

`A023982(n)-A023816(n)`
-/

namespace A023847.P4336936229435989873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023982 n - A023816 n

end

end A023847.P4336936229435989873

namespace A023847

/-- `A023982(n)-A023816(n)` -/
def P4336936229435989873.Spec : Prop :=
  ∀ n, P4336936229435989873.a n = A023847 n

end A023847

/-! ## A023847.P15385802884510016863

`A023983(n)-A023819(n)`
-/

namespace A023847.P15385802884510016863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023983 n - A023819 n

end

end A023847.P15385802884510016863

namespace A023847

/-- `A023983(n)-A023819(n)` -/
def P15385802884510016863.Spec : Prop :=
  ∀ n, P15385802884510016863.a n = A023847 n

end A023847

/-! ## A023847.P16159064620565118084

`A023834(n)+A023982(n)-A023980(n)`
-/

namespace A023847.P16159064620565118084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023834 n + (A023982 n - A023980 n)

end

end A023847.P16159064620565118084

namespace A023847

/-- `A023834(n)+A023982(n)-A023980(n)` -/
def P16159064620565118084.Spec : Prop :=
  ∀ n, P16159064620565118084.a n = A023847 n

end A023847

/-! ## A023847.P13336545015466702536

`A023982(n)+A023986(n)-A023834(n)`
-/

namespace A023847.P13336545015466702536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023982 n + (A023986 n - A023834 n)

end

end A023847.P13336545015466702536

namespace A023847

/-- `A023982(n)+A023986(n)-A023834(n)` -/
def P13336545015466702536.Spec : Prop :=
  ∀ n, P13336545015466702536.a n = A023847 n

end A023847

/-! ## A023847.P12331920954059854783

`A023980(n)+A023982(n)-A023979(n)`
-/

namespace A023847.P12331920954059854783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023980 n + (A023982 n - A023979 n)

end

end A023847.P12331920954059854783

namespace A023847

/-- `A023980(n)+A023982(n)-A023979(n)` -/
def P12331920954059854783.Spec : Prop :=
  ∀ n, P12331920954059854783.a n = A023847 n

end A023847

/-! ## A023847.P18013049139068705780

`A023981(n)+A023990(n)-A023979(n)`
-/

namespace A023847.P18013049139068705780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023981 n + (A023990 n - A023979 n)

end

end A023847.P18013049139068705780

namespace A023847

/-- `A023981(n)+A023990(n)-A023979(n)` -/
def P18013049139068705780.Spec : Prop :=
  ∀ n, P18013049139068705780.a n = A023847 n

end A023847

/-! ## A023847.P14275358432901394298

`A022559(5*n)-(A022559(2*n)+A022559(3*n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A023847

/-- `A022559(5*n)-(A022559(2*n)+A022559(3*n))` -/
def P14275358432901394298.Spec : Prop :=
  ∀ n, P14275358432901394298.a n = A023847 n

theorem P14275358432901394298.correct : P14275358432901394298.Spec := by
  intro n
  simp only [A023847]

end A023847

/-!
# A023848: Sum of exponents in prime-power factorization of binomial(5n, 2n-1).

The programs for A023848, the canonical program `A023848.P4594524187087143151` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023848 has offset 1).

The definition of A023848 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A023847, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023848.P4594524187087143151

`A023847(n+1)-A001222(3*(n+1)+1)+A001222(2*(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A023848

/-- `A023847(n+1)-A001222(3*(n+1)+1)+A001222(2*(n+1))` -/
def P4594524187087143151.Spec : Prop :=
  ∀ n, P4594524187087143151.a n = A023848 (n + 1)

theorem P4594524187087143151.correct : P4594524187087143151.Spec := by
  intro n
  simp only [A023848, Nat.add_sub_cancel]

end A023848

/-! ## A023848.P6688766548321985291

`A132896(A027379(5*(n+1))-(8*n+9))`
-/

namespace A023848.P6688766548321985291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A027379 (5 * (n + 1)) - (8 * n + 9 : ℤ)).toNat

end

end A023848.P6688766548321985291

namespace A023848

/-- `A132896(A027379(5*(n+1))-(8*n+9))` -/
def P6688766548321985291.Spec : Prop :=
  ∀ n, P6688766548321985291.a n = A023848 (n + 1)

end A023848

/-! ## A023848.P5256480684489726320

`A132896(A055998(5*(n+1))-(8*n+9))`
-/

namespace A023848.P5256480684489726320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A055998 (5 * (n + 1)) - (8 * n + 9 : ℤ)).toNat

end

end A023848.P5256480684489726320

namespace A023848

/-- `A132896(A055998(5*(n+1))-(8*n+9))` -/
def P5256480684489726320.Spec : Prop :=
  ∀ n, P5256480684489726320.a n = A023848 (n + 1)

end A023848

/-!
# A023849: Sum of exponents in prime-power factorization of binomial(5n, 2n-2).

The programs for A023849, the canonical program `A023849.P13620136702210670755` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023849 has offset 1).

The definition of A023849 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A023848, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023849.P13620136702210670755

`A023848(n+1)-A001222(3*(n+1)+2)+A001222(2*(n+1)-1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A023849

/-- `A023848(n+1)-A001222(3*(n+1)+2)+A001222(2*(n+1)-1)` -/
def P13620136702210670755.Spec : Prop :=
  ∀ n, P13620136702210670755.a n = A023849 (n + 1)

theorem P13620136702210670755.correct : P13620136702210670755.Spec := by
  intro n
  simp only [A023849, Nat.add_sub_cancel]

end A023849

/-! ## A023849.P17441238651744472369

`A132896(3*n+5+A000217(5*(n+1)))`
-/

namespace A023849.P17441238651744472369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 ((3 * n + 5 : ℤ) + A000217 (5 * (n + 1))).toNat

end

end A023849.P17441238651744472369

namespace A023849

/-- `A132896(3*n+5+A000217(5*(n+1)))` -/
def P17441238651744472369.Spec : Prop :=
  ∀ n, P17441238651744472369.a n = A023849 (n + 1)

end A023849

/-! ## A023849.P8231195125416400320

`A132896(A000096(5*(n+1))-(3*n+5))`
-/

namespace A023849.P8231195125416400320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A000096 (5 * (n + 1)) - (3 * n + 5 : ℤ)).toNat

end

end A023849.P8231195125416400320

namespace A023849

/-- `A132896(A000096(5*(n+1))-(3*n+5))` -/
def P8231195125416400320.Spec : Prop :=
  ∀ n, P8231195125416400320.a n = A023849 (n + 1)

end A023849

/-! ## A023849.P10248781739311665571

`A132896(A027379(5*(n+1))-(8*n+10))`
-/

namespace A023849.P10248781739311665571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A027379 (5 * (n + 1)) - (8 * n + 10 : ℤ)).toNat

end

end A023849.P10248781739311665571

namespace A023849

/-- `A132896(A027379(5*(n+1))-(8*n+10))` -/
def P10248781739311665571.Spec : Prop :=
  ∀ n, P10248781739311665571.a n = A023849 (n + 1)

end A023849

/-! ## A023849.P1165502143160330191

`A132896(A055998(5*(n+1))-(8*n+10))`
-/

namespace A023849.P1165502143160330191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A055998 (5 * (n + 1)) - (8 * n + 10 : ℤ)).toNat

end

end A023849.P1165502143160330191

namespace A023849

/-- `A132896(A055998(5*(n+1))-(8*n+10))` -/
def P1165502143160330191.Spec : Prop :=
  ∀ n, P1165502143160330191.a n = A023849 (n + 1)

end A023849

/-!
# A023850: Sum of exponents in prime-power factorization of binomial(5n, 2n+1).

The programs for A023850, the canonical program `A023850.P6926133530708258885` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023850 has offset 1).

The definition of A023850 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A023847, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023850.P6926133530708258885

`A023847(n+1)+A001222(3*(n+1))-A001222(2*(n+1)+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A023850

/-- `A023847(n+1)+A001222(3*(n+1))-A001222(2*(n+1)+1)` -/
def P6926133530708258885.Spec : Prop :=
  ∀ n, P6926133530708258885.a n = A023850 (n + 1)

theorem P6926133530708258885.correct : P6926133530708258885.Spec := by
  intro n
  simp only [A023850, Nat.add_sub_cancel]

end A023850

/-! ## A023850.P12212439031033019663

`A023820(n+1)+A023987(n+1)+1`
-/

namespace A023850.P12212439031033019663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023820 (n + 1) + (A023987 (n + 1) + 1)

end

end A023850.P12212439031033019663

namespace A023850

/-- `A023820(n+1)+A023987(n+1)+1` -/
def P12212439031033019663.Spec : Prop :=
  ∀ n, P12212439031033019663.a n = A023850 (n + 1)

end A023850

/-! ## A023850.P11418180605857053883

`A023835(n+1)+A023837(n+1)-A023819(n+1)`
-/

namespace A023850.P11418180605857053883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023835 (n + 1) + (A023837 (n + 1) - A023819 (n + 1))

end

end A023850.P11418180605857053883

namespace A023850

/-- `A023835(n+1)+A023837(n+1)-A023819(n+1)` -/
def P11418180605857053883.Spec : Prop :=
  ∀ n, P11418180605857053883.a n = A023850 (n + 1)

end A023850

/-! ## A023850.P686423896347788080

`A023835(n+1)+A023837(n+1)-(A023978(n+1)-A023816(n+1))`
-/

namespace A023850.P686423896347788080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023835 (n + 1) + (A023837 (n + 1) - (A023978 (n + 1) - A023816 (n + 1)))

end

end A023850.P686423896347788080

namespace A023850

/-- `A023835(n+1)+A023837(n+1)-(A023978(n+1)-A023816(n+1))` -/
def P686423896347788080.Spec : Prop :=
  ∀ n, P686423896347788080.a n = A023850 (n + 1)

end A023850

/-! ## A023850.P1661005998422327981

`A023835(n+1)+A023837(n+1)-(A023980(n+1)-A023826(n+1))`
-/

namespace A023850.P1661005998422327981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023835 (n + 1) + (A023837 (n + 1) - (A023980 (n + 1) - A023826 (n + 1)))

end

end A023850.P1661005998422327981

namespace A023850

/-- `A023835(n+1)+A023837(n+1)-(A023980(n+1)-A023826(n+1))` -/
def P1661005998422327981.Spec : Prop :=
  ∀ n, P1661005998422327981.a n = A023850 (n + 1)

end A023850

/-! ## A023850.P1570190819493801421

`A023835(n+1)+A023837(n+1)-(A023991(n+1)-A023817(n+1))`
-/

namespace A023850.P1570190819493801421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023835 (n + 1) + (A023837 (n + 1) - (A023991 (n + 1) - A023817 (n + 1)))

end

end A023850.P1570190819493801421

namespace A023850

/-- `A023835(n+1)+A023837(n+1)-(A023991(n+1)-A023817(n+1))` -/
def P1570190819493801421.Spec : Prop :=
  ∀ n, P1570190819493801421.a n = A023850 (n + 1)

end A023850

/-! ## A023850.P3726763176751127720

`A023835(n+1)+A023837(n+1)-(A023834(n+1)-A023990(n+1))`
-/

namespace A023850.P3726763176751127720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023835 (n + 1) + (A023837 (n + 1) - (A023834 (n + 1) - A023990 (n + 1)))

end

end A023850.P3726763176751127720

namespace A023850

/-- `A023835(n+1)+A023837(n+1)-(A023834(n+1)-A023990(n+1))` -/
def P3726763176751127720.Spec : Prop :=
  ∀ n, P3726763176751127720.a n = A023850 (n + 1)

end A023850

/-! ## A023850.P880509057875373646

`A023817(n+1)+A023835(n+1)-A023831(n+1)+A023987(n+1)+1`
-/

namespace A023850.P880509057875373646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023817 (n + 1) + (A023835 (n + 1) - A023831 (n + 1)) + (A023987 (n + 1) + 1)

end

end A023850.P880509057875373646

namespace A023850

/-- `A023817(n+1)+A023835(n+1)-A023831(n+1)+A023987(n+1)+1` -/
def P880509057875373646.Spec : Prop :=
  ∀ n, P880509057875373646.a n = A023850 (n + 1)

end A023850

/-! ## A023850.P13876758528774065371

`A023835(n+1)+A023837(n+1)-(A023823(n+1)+A076191(n+1)-1)`
-/

namespace A023850.P13876758528774065371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023835 (n + 1) + (A023837 (n + 1) - (A023823 (n + 1) + (A076191 (n + 1) - 1)))

end

end A023850.P13876758528774065371

namespace A023850

/-- `A023835(n+1)+A023837(n+1)-(A023823(n+1)+A076191(n+1)-1)` -/
def P13876758528774065371.Spec : Prop :=
  ∀ n, P13876758528774065371.a n = A023850 (n + 1)

end A023850

/-! ## A023850.P13974991419319972835

`A022559(3*(n+1))-(A022559(2*n+3)+A022559(n))+A023987(n+1)+1`
-/

namespace A023850.P13974991419319972835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (3 * (n + 1)) - (A022559 (2 * n + 3) + A022559 n) + (A023987 (n + 1) + 1)

end

end A023850.P13974991419319972835

namespace A023850

/-- `A022559(3*(n+1))-(A022559(2*n+3)+A022559(n))+A023987(n+1)+1` -/
def P13974991419319972835.Spec : Prop :=
  ∀ n, P13974991419319972835.a n = A023850 (n + 1)

end A023850

/-! ## A023850.P15184463303294084623

`A023823(n+1)-Δ[A023816(n+1)]+A023987(n+1)+1`
-/

namespace A023850.P15184463303294084623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023823 (n + 1) - (f1 (n + 1) - f1 n) + (A023987 (n + 1) + 1)

end

end A023850.P15184463303294084623

namespace A023850

/-- `A023823(n+1)-Δ[A023816(n+1)]+A023987(n+1)+1` -/
def P15184463303294084623.Spec : Prop :=
  ∀ n, P15184463303294084623.a n = A023850 (n + 1)

end A023850

/-!
# A023851: Sum of exponents in prime-power factorization of binomial(5n, 2n+2).

The programs for A023851, the canonical program `A023851.P10695035649832230325` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023851 has offset 1).

The definition of A023851 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A023850, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023851.P10695035649832230325

`A023850(n+1)+A001222(3*(n+1)-1)-A001222(2*(n+1)+2)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A023851

/-- `A023850(n+1)+A001222(3*(n+1)-1)-A001222(2*(n+1)+2)` -/
def P10695035649832230325.Spec : Prop :=
  ∀ n, P10695035649832230325.a n = A023851 (n + 1)

theorem P10695035649832230325.correct : P10695035649832230325.Spec := by
  intro n
  simp only [A023851, Nat.add_sub_cancel]

end A023851

/-! ## A023851.P4372502269700567454

`A132896(8*n+7+A000096(5*n+3))`
-/

namespace A023851.P4372502269700567454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 ((8 * n + 7 : ℤ) + A000096 (5 * n + 3)).toNat

end

end A023851.P4372502269700567454

namespace A023851

/-- `A132896(8*n+7+A000096(5*n+3))` -/
def P4372502269700567454.Spec : Prop :=
  ∀ n, P4372502269700567454.a n = A023851 (n + 1)

end A023851

/-! ## A023851.P10736537473498215649

`A132896(A152950(5*n+6)+A005408(n))`
-/

namespace A023851.P10736537473498215649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A152950 (5 * n + 6) + A005408 n).toNat

end

end A023851.P10736537473498215649

namespace A023851

/-- `A132896(A152950(5*n+6)+A005408(n))` -/
def P10736537473498215649.Spec : Prop :=
  ∀ n, P10736537473498215649.a n = A023851 (n + 1)

end A023851

/-! ## A023851.P1567479985462681417

`A058033(∑[A319910(n+1)])`
-/

namespace A023851.P1567479985462681417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319910 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058033 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A023851.P1567479985462681417

namespace A023851

/-- `A058033(∑[A319910(n+1)])` -/
def P1567479985462681417.Spec : Prop :=
  ∀ n, P1567479985462681417.a n = A023851 (n + 1)

end A023851

/-! ## A023851.P15127469659024321627

`A293137(p?[A324561(n+1)])`
-/

namespace A023851.P15127469659024321627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A023851.P15127469659024321627

namespace A023851

/-- `A293137(p?[A324561(n+1)])` -/
def P15127469659024321627.Spec : Prop :=
  ∀ n, P15127469659024321627.a n = A023851 (n + 1)

end A023851

/-!
# A023852: Sum of exponents in prime-power factorization of binomial(6n, n).

The programs for A023852, the canonical program `A023852.P8552689552939452037` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023852 has offset 0).

The definition of A023852 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023852.P8552689552939452037

`A022559(6*n)-A022559(5*n)-A022559(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A023852

/-- `A022559(6*n)-A022559(5*n)-A022559(n)` -/
def P8552689552939452037.Spec : Prop :=
  ∀ n, P8552689552939452037.a n = A023852 n

theorem P8552689552939452037.correct : P8552689552939452037.Spec := by
  intro n
  simp only [A023852]

end A023852

/-! ## A023852.P6864352498371080328

`A023854(n)-A023987(n)`
-/

namespace A023852.P6864352498371080328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023854 n - A023987 n

end

end A023852.P6864352498371080328

namespace A023852

/-- `A023854(n)-A023987(n)` -/
def P6864352498371080328.Spec : Prop :=
  ∀ n, P6864352498371080328.a n = A023852 n

end A023852

/-! ## A023852.P9912117995894588381

`A023984(n)-A023981(n)`
-/

namespace A023852.P9912117995894588381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023984 n - A023981 n

end

end A023852.P9912117995894588381

namespace A023852

/-- `A023984(n)-A023981(n)` -/
def P9912117995894588381.Spec : Prop :=
  ∀ n, P9912117995894588381.a n = A023852 n

end A023852

/-! ## A023852.P3161886130543923215

`A023984(n)-(A023982(n)+A023978(n))`
-/

namespace A023852.P3161886130543923215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023984 n - (A023982 n + A023978 n)

end

end A023852.P3161886130543923215

namespace A023852

/-- `A023984(n)-(A023982(n)+A023978(n))` -/
def P3161886130543923215.Spec : Prop :=
  ∀ n, P3161886130543923215.a n = A023852 n

end A023852

/-!
# A023853: Sum of exponents in prime-power factorization of binomial(6n, 2n).

The programs for A023853, the canonical program `A023853.P3578139371174769499` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023853 has offset 0).

The definition of A023853 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023853.P3578139371174769499

`A022559(6*n)-A022559(4*n)-A022559(2*n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A023853

/-- `A022559(6*n)-A022559(4*n)-A022559(2*n)` -/
def P3578139371174769499.Spec : Prop :=
  ∀ n, P3578139371174769499.a n = A023853 n

theorem P3578139371174769499.correct : P3578139371174769499.Spec := by
  intro n
  simp only [A023853]

end A023853

/-! ## A023853.P9590478847082290221

`A023985(n)-A023834(n)`
-/

namespace A023853.P9590478847082290221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023985 n - A023834 n

end

end A023853.P9590478847082290221

namespace A023853

/-- `A023985(n)-A023834(n)` -/
def P9590478847082290221.Spec : Prop :=
  ∀ n, P9590478847082290221.a n = A023853 n

end A023853

/-! ## A023853.P13267125928501044555

`A023819(2*n)`
-/

namespace A023853.P13267125928501044555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023819 (2 * n)

end

end A023853.P13267125928501044555

namespace A023853

/-- `A023819(2*n)` -/
def P13267125928501044555.Spec : Prop :=
  ∀ n, P13267125928501044555.a n = A023853 n

end A023853

/-! ## A023853.P244262224479924317

`A023978(2*n)-A023816(2*n)`
-/

namespace A023853.P244262224479924317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023978 (2 * n) - A023816 (2 * n)

end

end A023853.P244262224479924317

namespace A023853

/-- `A023978(2*n)-A023816(2*n)` -/
def P244262224479924317.Spec : Prop :=
  ∀ n, P244262224479924317.a n = A023853 n

end A023853

/-! ## A023853.P9769669581217966094

`A023847(2*n)-A023987(2*n)`
-/

namespace A023853.P9769669581217966094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023847 (2 * n) - A023987 (2 * n)

end

end A023853.P9769669581217966094

namespace A023853

/-- `A023847(2*n)-A023987(2*n)` -/
def P9769669581217966094.Spec : Prop :=
  ∀ n, P9769669581217966094.a n = A023853 n

end A023853

/-!
# A023854: Sum of exponents in prime-power factorization of binomial(6n, 3n).

The programs for A023854, the canonical program `A023854.P5029670943387420428` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023854 has offset 0).

The definition of A023854 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023854.P5029670943387420428

`A022559(6*n)-2*A022559(3*n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A023854

/-- `A022559(6*n)-2*A022559(3*n)` -/
def P5029670943387420428.Spec : Prop :=
  ∀ n, P5029670943387420428.a n = A023854 n

theorem P5029670943387420428.correct : P5029670943387420428.Spec := by
  intro n
  simp only [A023854]

end A023854

/-! ## A023854.P7073705152974914534

`A023987(n)+A023852(n)`
-/

namespace A023854.P7073705152974914534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023987 n + A023852 n

end

end A023854.P7073705152974914534

namespace A023854

/-- `A023987(n)+A023852(n)` -/
def P7073705152974914534.Spec : Prop :=
  ∀ n, P7073705152974914534.a n = A023854 n

end A023854

/-! ## A023854.P5808685062663289091

`A023984(n)-A023978(n)-A023978(n)`
-/

namespace A023854.P5808685062663289091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023984 n - A023978 n - A023978 n

end

end A023854.P5808685062663289091

namespace A023854

/-- `A023984(n)-A023978(n)-A023978(n)` -/
def P5808685062663289091.Spec : Prop :=
  ∀ n, P5808685062663289091.a n = A023854 n

end A023854

/-! ## A023854.P10569567154701876702

`A023816(3*n)`
-/

namespace A023854.P10569567154701876702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023816 (3 * n)

end

end A023854.P10569567154701876702

namespace A023854

/-- `A023816(3*n)` -/
def P10569567154701876702.Spec : Prop :=
  ∀ n, P10569567154701876702.a n = A023854 n

end A023854

/-! ## A023854.P6776202581702496058

`A182921(6*n)`
-/

namespace A023854.P6776202581702496058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182921 (6 * n)

end

end A023854.P6776202581702496058

namespace A023854

/-- `A182921(6*n)` -/
def P6776202581702496058.Spec : Prop :=
  ∀ n, P6776202581702496058.a n = A023854 n

end A023854

/-! ## A023854.P17390785466181735146

`A048621(A008458(n))`
-/

namespace A023854.P17390785466181735146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048621 (A008458 n).toNat

end

end A023854.P17390785466181735146

namespace A023854

/-- `A048621(A008458(n))` -/
def P17390785466181735146.Spec : Prop :=
  ∀ n, P17390785466181735146.a n = A023854 n

end A023854

/-!
# A023855: a(n) = 1*(n) + 2*(n-1) + 3*(n-2) + ... + (n+1-k)*k, where k = floor((n+1)/2).

The programs for A023855, the canonical program `A023855.P9286395386751343023` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023855 has offset 1).

The definition of A023855 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023855.P9286395386751343023

`a(n-2)+(n+1)*∑[(n+1)%2]` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023855

/-- `a(n-2)+(n+1)*∑[(n+1)%2]` -/
def P9286395386751343023.Spec : Prop :=
  ∀ n, (P9286395386751343023.a n : ℤ) = A023855 (n + 1)

theorem P9286395386751343023.correct : P9286395386751343023.Spec := by
  intro n
  simp only [A023855, Nat.add_sub_cancel]

end A023855

/-! ## A023855.P13450819588988653762

`∑[∑[∑[xor(1, 2-a(n-1))]]]-a(n-1)` with `a(0)=1`
-/

namespace A023855.P13450819588988653762
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f3 =>
  Int.xor 1 (2 - f3 (n - 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A023855.P13450819588988653762

namespace A023855

/-- `∑[∑[∑[xor(1, 2-a(n-1))]]]-a(n-1)` -/
def P13450819588988653762.Spec : Prop :=
  ∀ n, P13450819588988653762.a n = A023855 (n + 1)

end A023855

/-! ## A023855.P15375204183099375363

`∑[(n+1)*∑[1-a(n-1)]-a(n-1)]` with `a(0)=1`
-/

namespace A023855.P15375204183099375363
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023855.P15375204183099375363

namespace A023855

/-- `∑[(n+1)*∑[1-a(n-1)]-a(n-1)]` -/
def P15375204183099375363.Spec : Prop :=
  ∀ n, P15375204183099375363.a n = A023855 (n + 1)

end A023855

/-! ## A023855.P5894115006031169331

`∑[∑[a(n-2)+4]-a(n-1)]-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A023855.P5894115006031169331
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  f2 (n - 2) + 4

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A023855.P5894115006031169331

namespace A023855

/-- `∑[∑[a(n-2)+4]-a(n-1)]-a(n-1)` -/
def P5894115006031169331.Spec : Prop :=
  ∀ n, P5894115006031169331.a n = A023855 (n + 1)

end A023855

/-! ## A023855.P11851908341810743714

`A049778(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A023855.P11851908341810743714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A049778 (n + 1) - a (n - 1)

end

end A023855.P11851908341810743714

namespace A023855

/-- `A049778(n+1)-a(n-1)` -/
def P11851908341810743714.Spec : Prop :=
  ∀ n, P11851908341810743714.a n = A023855 (n + 1)

end A023855

/-! ## A023855.P569068568582707957

`A023856(n+1)-A008805(n)`
-/

namespace A023855.P569068568582707957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023856 (n + 1) - A008805 n

end

end A023855.P569068568582707957

namespace A023855

/-- `A023856(n+1)-A008805(n)` -/
def P569068568582707957.Spec : Prop :=
  ∀ n, P569068568582707957.a n = A023855 (n + 1)

end A023855

/-! ## A023855.P13373990020170516857

`A006918(or(1, n))+A006918(n)`
-/

namespace A023855.P13373990020170516857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (Nat.lor 1 n) + A006918 n

end

end A023855.P13373990020170516857

namespace A023855

/-- `A006918(or(1, n))+A006918(n)` -/
def P13373990020170516857.Spec : Prop :=
  ∀ n, P13373990020170516857.a n = A023855 (n + 1)

end A023855

/-! ## A023855.P5714358239263871488

`A006918(n)+∑[A027656(n)²]`
-/

namespace A023855.P5714358239263871488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023855.P5714358239263871488

namespace A023855

/-- `A006918(n)+∑[A027656(n)²]` -/
def P5714358239263871488.Spec : Prop :=
  ∀ n, P5714358239263871488.a n = A023855 (n + 1)

end A023855

/-! ## A023855.P15957294843956335012

`A093005(n+1)+∑[A245288(n)]`
-/

namespace A023855.P15957294843956335012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093005 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023855.P15957294843956335012

namespace A023855

/-- `A093005(n+1)+∑[A245288(n)]` -/
def P15957294843956335012.Spec : Prop :=
  ∀ n, P15957294843956335012.a n = A023855 (n + 1)

end A023855

/-! ## A023855.P2823654161693246405

`A023856(n+1)-∑[A027656(n)]`
-/

namespace A023855.P2823654161693246405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023856 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023855.P2823654161693246405

namespace A023855

/-- `A023856(n+1)-∑[A027656(n)]` -/
def P2823654161693246405.Spec : Prop :=
  ∀ n, P2823654161693246405.a n = A023855 (n + 1)

end A023855

/-! ## A023855.P4242387332511256891

`A023867(n+1)-A023866(n+1)`
-/

namespace A023855.P4242387332511256891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023867 (n + 1) - A023866 (n + 1)

end

end A023855.P4242387332511256891

namespace A023855

/-- `A023867(n+1)-A023866(n+1)` -/
def P4242387332511256891.Spec : Prop :=
  ∀ n, P4242387332511256891.a n = A023855 (n + 1)

end A023855

/-! ## A023855.P12376924164434023565

`A024862(n+2)-A023856(n+1)`
-/

namespace A023855.P12376924164434023565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024862 (n + 2) - A023856 (n + 1)

end

end A023855.P12376924164434023565

namespace A023855

/-- `A024862(n+2)-A023856(n+1)` -/
def P12376924164434023565.Spec : Prop :=
  ∀ n, P12376924164434023565.a n = A023855 (n + 1)

end A023855

/-! ## A023855.P6211357644556539602

`A023857(n+1)-2*A008805(n)`
-/

namespace A023855.P6211357644556539602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023857 (n + 1) - 2 * A008805 n

end

end A023855.P6211357644556539602

namespace A023855

/-- `A023857(n+1)-2*A008805(n)` -/
def P6211357644556539602.Spec : Prop :=
  ∀ n, P6211357644556539602.a n = A023855 (n + 1)

end A023855

/-! ## A023855.P16228136862444366367

`A023857(n+1)-∑[2*A027656(n)]`
-/

namespace A023855.P16228136862444366367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023857 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023855.P16228136862444366367

namespace A023855

/-- `A023857(n+1)-∑[2*A027656(n)]` -/
def P16228136862444366367.Spec : Prop :=
  ∀ n, P16228136862444366367.a n = A023855 (n + 1)

end A023855

/-! ## A023855.P16419757996776133455

`2*A023856(n+1)-A023857(n+1)`
-/

namespace A023855.P16419757996776133455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023856 (n + 1) - A023857 (n + 1)

end

end A023855.P16419757996776133455

namespace A023855

/-- `2*A023856(n+1)-A023857(n+1)` -/
def P16419757996776133455.Spec : Prop :=
  ∀ n, P16419757996776133455.a n = A023855 (n + 1)

end A023855

/-! ## A023855.P3740937504998437556

`2*A213850(n+1)-∑[A049778(n+1)]`
-/

namespace A023855.P3740937504998437556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213850 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023855.P3740937504998437556

namespace A023855

/-- `2*A213850(n+1)-∑[A049778(n+1)]` -/
def P3740937504998437556.Spec : Prop :=
  ∀ n, P3740937504998437556.a n = A023855 (n + 1)

end A023855

/-! ## A023855.P220262448920793118

`∪[A023856(2*n+1), A285998(2*n+1)]`
-/

namespace A023855.P220262448920793118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023856 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285998 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023855.P220262448920793118

namespace A023855

/-- `∪[A023856(2*n+1), A285998(2*n+1)]` -/
def P220262448920793118.Spec : Prop :=
  ∀ n, (P220262448920793118.a n : ℤ) = A023855 (n + 1)

end A023855

/-! ## A023855.P7327350735192897284

`A023857(n+1)-2*A000217(A008619(n))`
-/

namespace A023855.P7327350735192897284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023857 (n + 1) - 2 * A000217 (A008619 n).toNat

end

end A023855.P7327350735192897284

namespace A023855

/-- `A023857(n+1)-2*A000217(A008619(n))` -/
def P7327350735192897284.Spec : Prop :=
  ∀ n, P7327350735192897284.a n = A023855 (n + 1)

end A023855

/-! ## A023855.P10050968537408939264

`A000292(n+1)+A023856(n+1)-A049779(n+2)`
-/

namespace A023855.P10050968537408939264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + (A023856 (n + 1) - A049779 (n + 2))

end

end A023855.P10050968537408939264

namespace A023855

/-- `A000292(n+1)+A023856(n+1)-A049779(n+2)` -/
def P10050968537408939264.Spec : Prop :=
  ∀ n, P10050968537408939264.a n = A023855 (n + 1)

end A023855

/-! ## A023855.P18264515728464063144

`2/(n+2)*A302758(n+2)`
-/

namespace A023855.P18264515728464063144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 2 : ℚ) * (A302758 (n + 2) : ℚ)

end

end A023855.P18264515728464063144

namespace A023855

/-- `2/(n+2)*A302758(n+2)` -/
def P18264515728464063144.Spec : Prop :=
  ∀ n, P18264515728464063144.a n = (A023855 (n + 1) : ℚ)

end A023855

/-!
# A023856: a(n) = 1*(n+1-1) + 2*(n+1-2) + ... + k*(n+1-k), where k = floor((n+1)/2).

The programs for A023856, the canonical program `A023856.P9660218219020457093` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023856 has offset 1).

The definition of A023856 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023856.P9660218219020457093

`(n+3)*(4*(n+1)²+13*(n+1)+6-3*(n+3)*(-1)^(n+1))/48`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023856

/-- `(n+3)*(4*(n+1)²+13*(n+1)+6-3*(n+3)*(-1)^(n+1))/48` -/
def P9660218219020457093.Spec : Prop :=
  ∀ n, P9660218219020457093.a n = (A023856 (n + 1) : ℚ)

end A023856

/-! ## A023856.P5279271328139236372

`a(n-2)+(n+2)*round((n+1)/2)` with `a(0)=2, a(1)=3`
-/

namespace A023856.P5279271328139236372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 2) + (n + 2 : ℤ) * SequenceMachineLib.roundAway ((n + 1 : ℚ) / 2)

end

end A023856.P5279271328139236372

namespace A023856

/-- `a(n-2)+(n+2)*round((n+1)/2)` -/
def P5279271328139236372.Spec : Prop :=
  ∀ n, P5279271328139236372.a n = A023856 (n + 1)

end A023856

/-! ## A023856.P3265308901543736391

`∑[record[or(2, n)]+a(n-2)]-a(n-1)` with `a(0)=2, a(1)=3`
-/

namespace A023856.P3265308901543736391
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A023856.P3265308901543736391

namespace A023856

/-- `∑[record[or(2, n)]+a(n-2)]-a(n-1)` -/
def P3265308901543736391.Spec : Prop :=
  ∀ n, P3265308901543736391.a n = A023856 (n + 1)

end A023856

/-! ## A023856.P13507178198547757672

`∑[∑[∑[2-xor(1, a(n-1))]]]-a(n-1)` with `a(0)=2`
-/

namespace A023856.P13507178198547757672
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f3 =>
  2 - Int.xor 1 (f3 (n - 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A023856.P13507178198547757672

namespace A023856

/-- `∑[∑[∑[2-xor(1, a(n-1))]]]-a(n-1)` -/
def P13507178198547757672.Spec : Prop :=
  ∀ n, P13507178198547757672.a n = A023856 (n + 1)

end A023856

/-! ## A023856.P13160629206259606287

`∑[(n+2)*∑[∑[(-1)^n]]]-a(n-1)` with `a(0)=2`
-/

namespace A023856.P13160629206259606287
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A023856.P13160629206259606287

namespace A023856

/-- `∑[(n+2)*∑[∑[(-1)^n]]]-a(n-1)` -/
def P13160629206259606287.Spec : Prop :=
  ∀ n, P13160629206259606287.a n = A023856 (n + 1)

end A023856

/-! ## A023856.P10816059438114030238

`∑[∑[A014682(n+1)]-a(n-1)]` with `a(0)=2`
-/

namespace A023856.P10816059438114030238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023856.P10816059438114030238

namespace A023856

/-- `∑[∑[A014682(n+1)]-a(n-1)]` -/
def P10816059438114030238.Spec : Prop :=
  ∀ n, P10816059438114030238.a n = A023856 (n + 1)

end A023856

/-! ## A023856.P15147255720851050057

`A023855(n+1)+A008805(n)`
-/

namespace A023856.P15147255720851050057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023855 (n + 1) + A008805 n

end

end A023856.P15147255720851050057

namespace A023856

/-- `A023855(n+1)+A008805(n)` -/
def P15147255720851050057.Spec : Prop :=
  ∀ n, P15147255720851050057.a n = A023856 (n + 1)

end A023856

/-! ## A023856.P291572267106233718

`A023857(n+1)-A008805(n)`
-/

namespace A023856.P291572267106233718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023857 (n + 1) - A008805 n

end

end A023856.P291572267106233718

namespace A023856

/-- `A023857(n+1)-A008805(n)` -/
def P291572267106233718.Spec : Prop :=
  ∀ n, P291572267106233718.a n = A023856 (n + 1)

end A023856

/-! ## A023856.P1491272541136057200

`A006918(n)+2*A058187(n)`
-/

namespace A023856.P1491272541136057200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n + 2 * A058187 n

end

end A023856.P1491272541136057200

namespace A023856

/-- `A006918(n)+2*A058187(n)` -/
def P1491272541136057200.Spec : Prop :=
  ∀ n, P1491272541136057200.a n = A023856 (n + 1)

end A023856

/-! ## A023856.P7011896319569930508

`∑[A008805(n)+A027656(n)²]`
-/

namespace A023856.P7011896319569930508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n + A027656 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023856.P7011896319569930508

namespace A023856

/-- `∑[A008805(n)+A027656(n)²]` -/
def P7011896319569930508.Spec : Prop :=
  ∀ n, P7011896319569930508.a n = A023856 (n + 1)

end A023856

/-! ## A023856.P15348485047993651235

`A023857(n+1)-∑[A027656(n)]`
-/

namespace A023856.P15348485047993651235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023857 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023856.P15348485047993651235

namespace A023856

/-- `A023857(n+1)-∑[A027656(n)]` -/
def P15348485047993651235.Spec : Prop :=
  ∀ n, P15348485047993651235.a n = A023856 (n + 1)

end A023856

/-! ## A023856.P13894508541066174251

`A024862(n+2)-A023855(n+1)`
-/

namespace A023856.P13894508541066174251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024862 (n + 2) - A023855 (n + 1)

end

end A023856.P13894508541066174251

namespace A023856

/-- `A024862(n+2)-A023855(n+1)` -/
def P13894508541066174251.Spec : Prop :=
  ∀ n, P13894508541066174251.a n = A023856 (n + 1)

end A023856

/-! ## A023856.P6208478173021282491

`A024864(n+2)-A024863(n+2)`
-/

namespace A023856.P6208478173021282491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024864 (n + 2) - A024863 (n + 2)

end

end A023856.P6208478173021282491

namespace A023856

/-- `A024864(n+2)-A024863(n+2)` -/
def P6208478173021282491.Spec : Prop :=
  ∀ n, P6208478173021282491.a n = A023856 (n + 1)

end A023856

/-! ## A023856.P13226760751001724858

`A024854(n+2)-2*A008805(n)`
-/

namespace A023856.P13226760751001724858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024854 (n + 2) - 2 * A008805 n

end

end A023856.P13226760751001724858

namespace A023856

/-- `A024854(n+2)-2*A008805(n)` -/
def P13226760751001724858.Spec : Prop :=
  ∀ n, P13226760751001724858.a n = A023856 (n + 1)

end A023856

/-! ## A023856.P13597757082627948030

`(A023857(n+1)+A023855(n+1))/2`
-/

namespace A023856.P13597757082627948030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023857 (n + 1) + A023855 (n + 1) : ℚ) / 2

end

end A023856.P13597757082627948030

namespace A023856

/-- `(A023857(n+1)+A023855(n+1))/2` -/
def P13597757082627948030.Spec : Prop :=
  ∀ n, P13597757082627948030.a n = (A023856 (n + 1) : ℚ)

end A023856

/-! ## A023856.P8491920937856371163

`2*A023857(n+1)-A024854(n+2)`
-/

namespace A023856.P8491920937856371163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023857 (n + 1) - A024854 (n + 2)

end

end A023856.P8491920937856371163

namespace A023856

/-- `2*A023857(n+1)-A024854(n+2)` -/
def P8491920937856371163.Spec : Prop :=
  ∀ n, P8491920937856371163.a n = A023856 (n + 1)

end A023856

/-! ## A023856.P15985934124495587401

`∪[A023857(2*n+1), A023855(2*(n+1))]`
-/

namespace A023856.P15985934124495587401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023857 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023855 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023856.P15985934124495587401

namespace A023856

/-- `∪[A023857(2*n+1), A023855(2*(n+1))]` -/
def P15985934124495587401.Spec : Prop :=
  ∀ n, (P15985934124495587401.a n : ℤ) = A023856 (n + 1)

end A023856

/-! ## A023856.P2155876586125760828

`A023857(n+1)-A000217(A008619(n))`
-/

namespace A023856.P2155876586125760828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023857 (n + 1) - A000217 (A008619 n).toNat

end

end A023856.P2155876586125760828

namespace A023856

/-- `A023857(n+1)-A000217(A008619(n))` -/
def P2155876586125760828.Spec : Prop :=
  ∀ n, P2155876586125760828.a n = A023856 (n + 1)

end A023856

/-! ## A023856.P5448599455915555346

`A023855(n+1)+A024854(n+2)-A023857(n+1)`
-/

namespace A023856.P5448599455915555346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023855 (n + 1) + (A024854 (n + 2) - A023857 (n + 1))

end

end A023856.P5448599455915555346

namespace A023856

/-- `A023855(n+1)+A024854(n+2)-A023857(n+1)` -/
def P5448599455915555346.Spec : Prop :=
  ∀ n, P5448599455915555346.a n = A023856 (n + 1)

end A023856

/-! ## A023856.P1538001606604102733

`A000292(n+1)+A023857(n+1)-A049779(n+2)`
-/

namespace A023856.P1538001606604102733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + (A023857 (n + 1) - A049779 (n + 2))

end

end A023856.P1538001606604102733

namespace A023856

/-- `A000292(n+1)+A023857(n+1)-A049779(n+2)` -/
def P1538001606604102733.Spec : Prop :=
  ∀ n, P1538001606604102733.a n = A023856 (n + 1)

end A023856

/-!
# A023857: a(n) = 1*(n+3-1) + 2*(n+3-2) + .... + k*(n+3-k), where k=floor((n+1)/2).

The programs for A023857, the canonical program `A023857.P527520079518963399` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023857 has offset 1).

The definition of A023857 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023857.P527520079518963399

`A023856(n+1)+A008805(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023857

/-- `A023856(n+1)+A008805(n)` -/
def P527520079518963399.Spec : Prop :=
  ∀ n, P527520079518963399.a n = A023857 (n + 1)

theorem P527520079518963399.correct : P527520079518963399.Spec := by
  intro n
  simp only [A023857, Nat.add_sub_cancel]

end A023857

/-! ## A023857.P269304164298828555

`A024854(n+2)-A008805(n)`
-/

namespace A023857.P269304164298828555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024854 (n + 2) - A008805 n

end

end A023857.P269304164298828555

namespace A023857

/-- `A024854(n+2)-A008805(n)` -/
def P269304164298828555.Spec : Prop :=
  ∀ n, P269304164298828555.a n = A023857 (n + 1)

end A023857

/-! ## A023857.P10255292279285085760

`A023856(n+1)+∑[A027656(n)]`
-/

namespace A023857.P10255292279285085760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023856 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023857.P10255292279285085760

namespace A023857

/-- `A023856(n+1)+∑[A027656(n)]` -/
def P10255292279285085760.Spec : Prop :=
  ∀ n, P10255292279285085760.a n = A023857 (n + 1)

end A023857

/-! ## A023857.P16892903780523552735

`A024854(n+2)-∑[A027656(n)]`
-/

namespace A023857.P16892903780523552735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024854 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023857.P16892903780523552735

namespace A023857

/-- `A024854(n+2)-∑[A027656(n)]` -/
def P16892903780523552735.Spec : Prop :=
  ∀ n, P16892903780523552735.a n = A023857 (n + 1)

end A023857

/-! ## A023857.P6088179311137641228

`∑[4*A058187(n)-A002623(n)]`
-/

namespace A023857.P6088179311137641228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A058187 n - A002623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023857.P6088179311137641228

namespace A023857

/-- `∑[4*A058187(n)-A002623(n)]` -/
def P6088179311137641228.Spec : Prop :=
  ∀ n, P6088179311137641228.a n = A023857 (n + 1)

end A023857

/-! ## A023857.P12636570657773255258

`A024305(n+1)-A087811(n+1)`
-/

namespace A023857.P12636570657773255258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024305 (n + 1) - A087811 (n + 1)

end

end A023857.P12636570657773255258

namespace A023857

/-- `A024305(n+1)-A087811(n+1)` -/
def P12636570657773255258.Spec : Prop :=
  ∀ n, P12636570657773255258.a n = A023857 (n + 1)

end A023857

/-! ## A023857.P6976643142855520472

`A023855(n+1)+2*A008805(n)`
-/

namespace A023857.P6976643142855520472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023855 (n + 1) + 2 * A008805 n

end

end A023857.P6976643142855520472

namespace A023857

/-- `A023855(n+1)+2*A008805(n)` -/
def P6976643142855520472.Spec : Prop :=
  ∀ n, P6976643142855520472.a n = A023857 (n + 1)

end A023857

/-! ## A023857.P1015964885550518210

`2*A023856(n+1)-A023855(n+1)`
-/

namespace A023857.P1015964885550518210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023856 (n + 1) - A023855 (n + 1)

end

end A023857.P1015964885550518210

namespace A023857

/-- `2*A023856(n+1)-A023855(n+1)` -/
def P1015964885550518210.Spec : Prop :=
  ∀ n, P1015964885550518210.a n = A023857 (n + 1)

end A023857

/-! ## A023857.P12286502842976381052

`(A024854(n+2)+A023856(n+1))/2`
-/

namespace A023857.P12286502842976381052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024854 (n + 2) + A023856 (n + 1) : ℚ) / 2

end

end A023857.P12286502842976381052

namespace A023857

/-- `(A024854(n+2)+A023856(n+1))/2` -/
def P12286502842976381052.Spec : Prop :=
  ∀ n, P12286502842976381052.a n = (A023857 (n + 1) : ℚ)

end A023857

/-! ## A023857.P2723655169840833974

`∪[A023856(2*(n+1)), A285998(2*(n+1))]`
-/

namespace A023857.P2723655169840833974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023856 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285998 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023857.P2723655169840833974

namespace A023857

/-- `∪[A023856(2*(n+1)), A285998(2*(n+1))]` -/
def P2723655169840833974.Spec : Prop :=
  ∀ n, (P2723655169840833974.a n : ℤ) = A023857 (n + 1)

end A023857

/-! ## A023857.P5412881756289954466

`A023856(n+1)+A049779(n+2)-A000292(n+1)`
-/

namespace A023857.P5412881756289954466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023856 (n + 1) + (A049779 (n + 2) - A000292 (n + 1))

end

end A023857.P5412881756289954466

namespace A023857

/-- `A023856(n+1)+A049779(n+2)-A000292(n+1)` -/
def P5412881756289954466.Spec : Prop :=
  ∀ n, P5412881756289954466.a n = A023857 (n + 1)

end A023857

/-! ## A023857.P15413021145453021571

`A000292(n+1)+A024854(n+2)-A049779(n+2)`
-/

namespace A023857.P15413021145453021571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + (A024854 (n + 2) - A049779 (n + 2))

end

end A023857.P15413021145453021571

namespace A023857

/-- `A000292(n+1)+A024854(n+2)-A049779(n+2)` -/
def P15413021145453021571.Spec : Prop :=
  ∀ n, P15413021145453021571.a n = A023857 (n + 1)

end A023857

/-! ## A023857.P18397262868502631670

`A006918(n+1)+2*A058187(n)`
-/

namespace A023857.P18397262868502631670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (n + 1) + 2 * A058187 n

end

end A023857.P18397262868502631670

namespace A023857

/-- `A006918(n+1)+2*A058187(n)` -/
def P18397262868502631670.Spec : Prop :=
  ∀ n, P18397262868502631670.a n = A023857 (n + 1)

end A023857

/-! ## A023857.P16819576994067506584

`∑[∑[A001057(n+1)*A052938(n+1)]]`
-/

namespace A023857.P16819576994067506584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 1) * A052938 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023857.P16819576994067506584

namespace A023857

/-- `∑[∑[A001057(n+1)*A052938(n+1)]]` -/
def P16819576994067506584.Spec : Prop :=
  ∀ n, P16819576994067506584.a n = A023857 (n + 1)

end A023857

/-! ## A023857.P6896224153655405983

`A002623(n+1)+A058187(n)-A058187(n+1)`
-/

namespace A023857.P6896224153655405983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 (n + 1) + (A058187 n - A058187 (n + 1))

end

end A023857.P6896224153655405983

namespace A023857

/-- `A002623(n+1)+A058187(n)-A058187(n+1)` -/
def P6896224153655405983.Spec : Prop :=
  ∀ n, P6896224153655405983.a n = A023857 (n + 1)

end A023857

/-! ## A023857.P4839002579067852624

`A023856(n+1)+A024305(n+2)-A024854(n+3)`
-/

namespace A023857.P4839002579067852624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023856 (n + 1) + (A024305 (n + 2) - A024854 (n + 3))

end

end A023857.P4839002579067852624

namespace A023857

/-- `A023856(n+1)+A024305(n+2)-A024854(n+3)` -/
def P4839002579067852624.Spec : Prop :=
  ∀ n, P4839002579067852624.a n = A023857 (n + 1)

end A023857

/-! ## A023857.P16338795383561622850

`A024854(n+2)+A024854(n+3)-A024305(n+2)`
-/

namespace A023857.P16338795383561622850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024854 (n + 2) + (A024854 (n + 3) - A024305 (n + 2))

end

end A023857.P16338795383561622850

namespace A023857

/-- `A024854(n+2)+A024854(n+3)-A024305(n+2)` -/
def P16338795383561622850.Spec : Prop :=
  ∀ n, P16338795383561622850.a n = A023857 (n + 1)

end A023857

/-! ## A023857.P3576289444825082215

`A000292(n+3)-A285998(n+3)`
-/

namespace A023857.P3576289444825082215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 3) - A285998 (n + 3)

end

end A023857.P3576289444825082215

namespace A023857

/-- `A000292(n+3)-A285998(n+3)` -/
def P3576289444825082215.Spec : Prop :=
  ∀ n, P3576289444825082215.a n = A023857 (n + 1)

end A023857

/-! ## A023857.P18045941002689550413

`A144678(A042964(n+1))`
-/

namespace A023857.P18045941002689550413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144678 (A042964 (n + 1)).toNat

end

end A023857.P18045941002689550413

namespace A023857

/-- `A144678(A042964(n+1))` -/
def P18045941002689550413.Spec : Prop :=
  ∀ n, P18045941002689550413.a n = A023857 (n + 1)

end A023857

/-! ## A023857.P10093268911318194423

`A144678(A053438(n+1))`
-/

namespace A023857.P10093268911318194423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144678 (A053438 (n + 1)).toNat

end

end A023857.P10093268911318194423

namespace A023857

/-- `A144678(A053438(n+1))` -/
def P10093268911318194423.Spec : Prop :=
  ∀ n, P10093268911318194423.a n = A023857 (n + 1)

end A023857

/-!
# A023858: a(n) = 1*t(n) + 2*t(n-1) + ... + k*t(n+1-k), where k = floor((n+1)/2), t = A023531.

The programs for A023858, there is no canonical definition to state claims against.
-/

/-! ## A023858.P14772074044062663973

`A008805(n)-A023859(n+1)`
-/

namespace A023858.P14772074044062663973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n - A023859 (n + 1)

end

end A023858.P14772074044062663973

/-! ## A023858.P9022745263076056102

`∑[A027656(n)]-A023859(n+1)`
-/

namespace A023858.P9022745263076056102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023859 (n + 1)

end

end A023858.P9022745263076056102

/-! ## A023858.P5288637227178471814

`A000217(A008619(n))-A023859(n+1)`
-/

namespace A023858.P5288637227178471814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A008619 n).toNat - A023859 (n + 1)

end

end A023858.P5288637227178471814

/-! ## A023858.P5785823223423974977

`A023856(n+1)-(A023859(n+1)+A023855(n+1))`
-/

namespace A023858.P5785823223423974977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023856 (n + 1) - (A023859 (n + 1) + A023855 (n + 1))

end

end A023858.P5785823223423974977

/-! ## A023858.P721399302752634688

`Δ[A006918(n)]-A023859(n+1)`
-/

namespace A023858.P721399302752634688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A023859 (n + 1)

end

end A023858.P721399302752634688

/-!
# A023859: a(n) = 1*t(n) + 2*t(n-1) + ... + k*t(n+1-k), where k=floor((n+1)/2), and t = A023532.

The programs for A023859, there is no canonical definition to state claims against.
-/

/-! ## A023859.P8388522883672155628

`A008805(n)-A023858(n+1)`
-/

namespace A023859.P8388522883672155628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n - A023858 (n + 1)

end

end A023859.P8388522883672155628

/-! ## A023859.P11225784247209556224

`∑[A027656(n)]-A023858(n+1)`
-/

namespace A023859.P11225784247209556224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023858 (n + 1)

end

end A023859.P11225784247209556224

/-! ## A023859.P20182228581101044

`A000217(A008619(n))-A023858(n+1)`
-/

namespace A023859.P20182228581101044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A008619 n).toNat - A023858 (n + 1)

end

end A023859.P20182228581101044

/-! ## A023859.P1330427368027683542

`A000217(∑[A059841(n)])-A023858(n+1)`
-/

namespace A023859.P1330427368027683542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A023858 (n + 1)

end

end A023859.P1330427368027683542

/-! ## A023859.P2322310335159179876

`∑[∑[A001057(n+1)]]-A023858(n+1)`
-/

namespace A023859.P2322310335159179876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023858 (n + 1)

end

end A023859.P2322310335159179876

/-!
# A023860: a(n) = 1*t(n) + 2*t(n-1) + ... + k*t(n+1-k), where k=floor((n+1)/2), t = A000045 (Fibonacci numbers).

The programs for A023860, the canonical program `A023860.P8444578760860381817` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023860 has offset 1).

The definition of A023860 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023860.P8444578760860381817

`∑[A129361(n)]-A014286(A110654(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023860

/-- `∑[A129361(n)]-A014286(A110654(n))` -/
def P8444578760860381817.Spec : Prop :=
  ∀ n, P8444578760860381817.a n = A023860 (n + 1)

theorem P8444578760860381817.correct : P8444578760860381817.Spec := by
  intro n
  simp only [A023860, Nat.add_sub_cancel]

end A023860

/-! ## A023860.P18195271147563486742

`round(A023864(n+1)/ϕ)`
-/

namespace A023860.P18195271147563486742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A023864 (n + 1) : ℝ) / Real.goldenRatio)

end

end A023860.P18195271147563486742

namespace A023860

/-- `round(A023864(n+1)/ϕ)` -/
def P18195271147563486742.Spec : Prop :=
  ∀ n, P18195271147563486742.a n = A023860 (n + 1)

end A023860

/-! ## A023860.P10986166398657970577

`A024309(n+1)-A129361(n)`
-/

namespace A023860.P10986166398657970577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024309 (n + 1) - A129361 n

end

end A023860.P10986166398657970577

namespace A023860

/-- `A024309(n+1)-A129361(n)` -/
def P10986166398657970577.Spec : Prop :=
  ∀ n, P10986166398657970577.a n = A023860 (n + 1)

end A023860

/-! ## A023860.P13898653258804318868

`A024861(n+2)-A023864(n+1)`
-/

namespace A023860.P13898653258804318868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024861 (n + 2) - A023864 (n + 1)

end

end A023860.P13898653258804318868

namespace A023860

/-- `A024861(n+2)-A023864(n+1)` -/
def P13898653258804318868.Spec : Prop :=
  ∀ n, P13898653258804318868.a n = A023860 (n + 1)

end A023860

/-! ## A023860.P10593903020955863903

`A024313(n+1)-2*A129361(n)`
-/

namespace A023860.P10593903020955863903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024313 (n + 1) - 2 * A129361 n

end

end A023860.P10593903020955863903

namespace A023860

/-- `A024313(n+1)-2*A129361(n)` -/
def P10593903020955863903.Spec : Prop :=
  ∀ n, P10593903020955863903.a n = A023860 (n + 1)

end A023860

/-! ## A023860.P11409723758070394659

`2*A024309(n+1)-A024313(n+1)`
-/

namespace A023860.P11409723758070394659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024309 (n + 1) - A024313 (n + 1)

end

end A023860.P11409723758070394659

namespace A023860

/-- `2*A024309(n+1)-A024313(n+1)` -/
def P11409723758070394659.Spec : Prop :=
  ∀ n, P11409723758070394659.a n = A023860 (n + 1)

end A023860

/-! ## A023860.P10877785804890182360

`A023864(n+1)+A023864(n+1)-A023861(n+1)`
-/

namespace A023860.P10877785804890182360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023864 (n + 1) + (A023864 (n + 1) - A023861 (n + 1))

end

end A023860.P10877785804890182360

namespace A023860

/-- `A023864(n+1)+A023864(n+1)-A023861(n+1)` -/
def P10877785804890182360.Spec : Prop :=
  ∀ n, P10877785804890182360.a n = A023860 (n + 1)

end A023860

/-! ## A023860.P11030576411772147136

`A024858(n+2)-A024861(n+2)`
-/

namespace A023860.P11030576411772147136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024858 (n + 2) - A024861 (n + 2)

end

end A023860.P11030576411772147136

namespace A023860

/-- `A024858(n+2)-A024861(n+2)` -/
def P11030576411772147136.Spec : Prop :=
  ∀ n, P11030576411772147136.a n = A023860 (n + 1)

end A023860

/-! ## A023860.P5065866651889016121

`2*A023864(n+1)-A023861(n+1)`
-/

namespace A023860.P5065866651889016121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023864 (n + 1) - A023861 (n + 1)

end

end A023860.P5065866651889016121

namespace A023860

/-- `2*A023864(n+1)-A023861(n+1)` -/
def P5065866651889016121.Spec : Prop :=
  ∀ n, P5065866651889016121.a n = A023860 (n + 1)

end A023860

/-! ## A023860.P3426423283893967637

`A024309(n+1)-A094585(A099392(n+1))`
-/

namespace A023860.P3426423283893967637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024309 (n + 1) - A094585 (A099392 (n + 1)).toNat

end

end A023860.P3426423283893967637

namespace A023860

/-- `A024309(n+1)-A094585(A099392(n+1))` -/
def P3426423283893967637.Spec : Prop :=
  ∀ n, P3426423283893967637.a n = A023860 (n + 1)

end A023860

/-! ## A023860.P5952445291789101220

`A213576(A080827(n+1))`
-/

namespace A023860.P5952445291789101220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213576 (A080827 (n + 1)).toNat

end

end A023860.P5952445291789101220

namespace A023860

/-- `A213576(A080827(n+1))` -/
def P5952445291789101220.Spec : Prop :=
  ∀ n, P5952445291789101220.a n = A023860 (n + 1)

end A023860

/-! ## A023860.P7109300544982061320

`A213576(A099392(n+2))`
-/

namespace A023860.P7109300544982061320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213576 (A099392 (n + 2)).toNat

end

end A023860.P7109300544982061320

namespace A023860

/-- `A213576(A099392(n+2))` -/
def P7109300544982061320.Spec : Prop :=
  ∀ n, P7109300544982061320.a n = A023860 (n + 1)

end A023860

/-! ## A023860.P10111462718254130244

`A024309(n+1)-A204922(A080827(n+1))`
-/

namespace A023860.P10111462718254130244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024309 (n + 1) - A204922 (A080827 (n + 1)).toNat

end

end A023860.P10111462718254130244

namespace A023860

/-- `A024309(n+1)-A204922(A080827(n+1))` -/
def P10111462718254130244.Spec : Prop :=
  ∀ n, P10111462718254130244.a n = A023860 (n + 1)

end A023860

/-!
# A023861: a(n) = 1*t(n) + 2*t(n-1) + ... + k*t(n+1-k), where k=floor((n+1)/2) and t = A000032 (Lucas numbers).

The programs for A023861, the canonical program `A023861.P14188661982875319503` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023861 has offset 1).

The definition of A023861 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023861.P15935226742847086697

`round((3-ϕ)*A023864(n+1))`
-/

namespace A023861.P15935226742847086697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 - Real.goldenRatio) * (A023864 (n + 1) : ℝ))

end

end A023861.P15935226742847086697

namespace A023861

/-- `round((3-ϕ)*A023864(n+1))` -/
def P15935226742847086697.Spec : Prop :=
  ∀ n, P15935226742847086697.a n = A023861 (n + 1)

end A023861

/-! ## A023861.P14188661982875319503

`A023864(n+1)+A023864(n+1)-A023860(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A023861

/-- `A023864(n+1)+A023864(n+1)-A023860(n+1)` -/
def P14188661982875319503.Spec : Prop :=
  ∀ n, P14188661982875319503.a n = A023861 (n + 1)

theorem P14188661982875319503.correct : P14188661982875319503.Spec := by
  intro n
  simp only [A023861, Nat.add_sub_cancel]

end A023861

/-! ## A023861.P17142027256141033487

`2*A023864(n+1)-A023860(n+1)`
-/

namespace A023861.P17142027256141033487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023864 (n + 1) - A023860 (n + 1)

end

end A023861.P17142027256141033487

namespace A023861

/-- `2*A023864(n+1)-A023860(n+1)` -/
def P17142027256141033487.Spec : Prop :=
  ∀ n, P17142027256141033487.a n = A023861 (n + 1)

theorem P17142027256141033487.correct : P17142027256141033487.Spec := by
  intro n
  simp only [A023861, Nat.add_sub_cancel, A023861.P17142027256141033487.a, A023861.P14188661982875319503.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A023861

/-! ## A023861.P1495003746689806012

`A024310(n+1)+A024310(n+1)-A024314(n+1)`
-/

namespace A023861.P1495003746689806012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024310 (n + 1) + (A024310 (n + 1) - A024314 (n + 1))

end

end A023861.P1495003746689806012

namespace A023861

/-- `A024310(n+1)+A024310(n+1)-A024314(n+1)` -/
def P1495003746689806012.Spec : Prop :=
  ∀ n, P1495003746689806012.a n = A023861 (n + 1)

end A023861

/-! ## A023861.P18249336104432929514

`A024310(n+1)-(A024368(n+1)+A024319(n+1))`
-/

namespace A023861.P18249336104432929514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024310 (n + 1) - (A024368 (n + 1) + A024319 (n + 1))

end

end A023861.P18249336104432929514

namespace A023861

/-- `A024310(n+1)-(A024368(n+1)+A024319(n+1))` -/
def P18249336104432929514.Spec : Prop :=
  ∀ n, P18249336104432929514.a n = A023861 (n + 1)

end A023861

/-! ## A023861.P4215157964842186963

`2*A024310(n+1)-A024314(n+1)`
-/

namespace A023861.P4215157964842186963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024310 (n + 1) - A024314 (n + 1)

end

end A023861.P4215157964842186963

namespace A023861

/-- `2*A024310(n+1)-A024314(n+1)` -/
def P4215157964842186963.Spec : Prop :=
  ∀ n, P4215157964842186963.a n = A023861 (n + 1)

end A023861

/-! ## A023861.P6548498000502398095

`3*A023864(n+1)-A024861(n+2)`
-/

namespace A023861.P6548498000502398095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A023864 (n + 1) - A024861 (n + 2)

end

end A023861.P6548498000502398095

namespace A023861

/-- `3*A023864(n+1)-A024861(n+2)` -/
def P6548498000502398095.Spec : Prop :=
  ∀ n, P6548498000502398095.a n = A023861 (n + 1)

end A023861

/-!
# A023863: a(n) = 1*t(n) + 2*t(n-1) + ... + k*t(n+1-k), where k=floor((n+1)/2) and t = A002808 (composite numbers).

The programs for A023863, there is no canonical definition to state claims against.
-/

/-! ## A023863.P6347791738534462057

`record[gcd(A024480(n+1), A024506(n))]`
-/

namespace A023863.P6347791738534462057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A024480 (n + 1)) (A024506 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023863.P6347791738534462057

/-! ## A023863.P772945787826789224

`A024480(n+1)-A184993(A023869(n+1))`
-/

namespace A023863.P772945787826789224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024480 (n + 1) - A184993 (A023869 (n + 1)).toNat

end

end A023863.P772945787826789224

/-!
# A023864: a(n) = 1*t(n) + 2*t(n-1) + ... + k*t(n+1-k), where k=floor((n+1)/2) and t = (F(2), F(3), F(4), ...), F(n) = Fibonacci(n).

The programs for A023864, the canonical program `A023864.P1322139053120086111` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023864 has offset 1).

The definition of A023864 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023864.P5737080811152640307

`round(A024861(n+2)/ϕ)`
-/

namespace A023864.P5737080811152640307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A024861 (n + 2) : ℝ) / Real.goldenRatio)

end

end A023864.P5737080811152640307

namespace A023864

/-- `round(A024861(n+2)/ϕ)` -/
def P5737080811152640307.Spec : Prop :=
  ∀ n, P5737080811152640307.a n = A023864 (n + 1)

end A023864

/-! ## A023864.P1995379448982062481

`A024861(n+2)-A023860(n+1)`
-/

namespace A023864.P1995379448982062481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024861 (n + 2) - A023860 (n + 1)

end

end A023864.P1995379448982062481

namespace A023864

/-- `A024861(n+2)-A023860(n+1)` -/
def P1995379448982062481.Spec : Prop :=
  ∀ n, P1995379448982062481.a n = A023864 (n + 1)

end A023864

/-! ## A023864.P1322139053120086111

`A023860(n+3)-A129361(n+2)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A023864

/-- `A023860(n+3)-A129361(n+2)` -/
def P1322139053120086111.Spec : Prop :=
  ∀ n, P1322139053120086111.a n = A023864 (n + 1)

theorem P1322139053120086111.correct : P1322139053120086111.Spec := by
  intro n
  simp only [A023864, Nat.add_sub_cancel]

end A023864

/-! ## A023864.P3808739775557418625

`A024861(n+2)+A129361(n)-A024309(n+1)`
-/

namespace A023864.P3808739775557418625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024861 (n + 2) + (A129361 n - A024309 (n + 1))

end

end A023864.P3808739775557418625

namespace A023864

/-- `A024861(n+2)+A129361(n)-A024309(n+1)` -/
def P3808739775557418625.Spec : Prop :=
  ∀ n, P3808739775557418625.a n = A023864 (n + 1)

end A023864

/-! ## A023864.P574784842966305408

`(A023861(n+1)+A023860(n+1))/2`
-/

namespace A023864.P574784842966305408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023861 (n + 1) + A023860 (n + 1) : ℚ) / 2

end

end A023864.P574784842966305408

namespace A023864

/-- `(A023861(n+1)+A023860(n+1))/2` -/
def P574784842966305408.Spec : Prop :=
  ∀ n, P574784842966305408.a n = (A023864 (n + 1) : ℚ)

end A023864

/-! ## A023864.P5459503700018438416

`A024858(n+2)-2*A023860(n+1)`
-/

namespace A023864.P5459503700018438416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024858 (n + 2) - 2 * A023860 (n + 1)

end

end A023864.P5459503700018438416

namespace A023864

/-- `A024858(n+2)-2*A023860(n+1)` -/
def P5459503700018438416.Spec : Prop :=
  ∀ n, P5459503700018438416.a n = A023864 (n + 1)

end A023864

/-! ## A023864.P13372843397413013611

`A024861(n+2)+A024861(n+2)-A024858(n+2)`
-/

namespace A023864.P13372843397413013611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024861 (n + 2) + (A024861 (n + 2) - A024858 (n + 2))

end

end A023864.P13372843397413013611

namespace A023864

/-- `A024861(n+2)+A024861(n+2)-A024858(n+2)` -/
def P13372843397413013611.Spec : Prop :=
  ∀ n, P13372843397413013611.a n = A023864 (n + 1)

end A023864

/-! ## A023864.P18434755291267796515

`2*A024861(n+2)-A024858(n+2)`
-/

namespace A023864.P18434755291267796515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024861 (n + 2) - A024858 (n + 2)

end

end A023864.P18434755291267796515

namespace A023864

/-- `2*A024861(n+2)-A024858(n+2)` -/
def P18434755291267796515.Spec : Prop :=
  ∀ n, P18434755291267796515.a n = A023864 (n + 1)

end A023864

/-! ## A023864.P15458832130516838224

`2*A023860(n+3)-A024309(n+3)`
-/

namespace A023864.P15458832130516838224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023860 (n + 3) - A024309 (n + 3)

end

end A023864.P15458832130516838224

namespace A023864

/-- `2*A023860(n+3)-A024309(n+3)` -/
def P15458832130516838224.Spec : Prop :=
  ∀ n, P15458832130516838224.a n = A023864 (n + 1)

end A023864

/-! ## A023864.P10621831186279555907

`A213576(A080827(n+1)+2+n)`
-/

namespace A023864.P10621831186279555907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213576 (A080827 (n + 1) + 2 + (n : ℤ)).toNat

end

end A023864.P10621831186279555907

namespace A023864

/-- `A213576(A080827(n+1)+2+n)` -/
def P10621831186279555907.Spec : Prop :=
  ∀ n, P10621831186279555907.a n = A023864 (n + 1)

end A023864

/-!
# A023865: a(n) = 1*t(n) + 2*t(n-1) + ... + k*t(n+1-k), where k=floor((n+1)/2) and t(n)=2*n+1 (odd numbers).

The programs for A023865, the canonical program `A023865.P1893637354053305460` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023865 has offset 1).

The definition of A023865 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023865.P1893637354053305460

`∑[∑[∑[n²*(-1)^n+1]]]`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023865

/-- `∑[∑[∑[n²*(-1)^n+1]]]` -/
def P1893637354053305460.Spec : Prop :=
  ∀ n, P1893637354053305460.a n = A023865 (n + 1)

theorem P1893637354053305460.correct : P1893637354053305460.Spec := by
  intro n
  simp only [A023865, Nat.add_sub_cancel]

end A023865

/-! ## A023865.P1782034500850160526

`∑[lcm(2, (n+1)²)/2]-∑[floor((n/2)²)]`
-/

namespace A023865.P1782034500850160526
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 ((n + 1) ^ 2) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

end

end A023865.P1782034500850160526

namespace A023865

/-- `∑[lcm(2, (n+1)²)/2]-∑[floor((n/2)²)]` -/
def P1782034500850160526.Spec : Prop :=
  ∀ n, P1782034500850160526.a n = (A023865 (n + 1) : ℚ)

end A023865

/-! ## A023865.P2367854291142112862

`∑[∑[1-a(n-1)]*Δ[n²]]-a(n-1)` with `a(0)=1`
-/

namespace A023865.P2367854291142112862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  1 - f2 (n - 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A023865.P2367854291142112862

namespace A023865

/-- `∑[∑[1-a(n-1)]*Δ[n²]]-a(n-1)` -/
def P2367854291142112862.Spec : Prop :=
  ∀ n, P2367854291142112862.a n = A023865 (n + 1)

end A023865

/-! ## A023865.P1974113040280589512

`∑[∑[a(n-2)+8]-a(n-1)]-a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A023865.P1974113040280589512
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  f2 (n - 2) + 8

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A023865.P1974113040280589512

namespace A023865

/-- `∑[∑[a(n-2)+8]-a(n-1)]-a(n-1)` -/
def P1974113040280589512.Spec : Prop :=
  ∀ n, P1974113040280589512.a n = A023865 (n + 1)

end A023865

/-! ## A023865.P145659949754613088

`A212760(n)-A173196(n)`
-/

namespace A023865.P145659949754613088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212760 n - A173196 n

end

end A023865.P145659949754613088

namespace A023865

/-- `A212760(n)-A173196(n)` -/
def P145659949754613088.Spec : Prop :=
  ∀ n, P145659949754613088.a n = A023865 (n + 1)

end A023865

/-! ## A023865.P16690827199059093649

`∑[A008805(n)]+n*A008805(n)`
-/

namespace A023865.P16690827199059093649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) * A008805 n

end

end A023865.P16690827199059093649

namespace A023865

/-- `∑[A008805(n)]+n*A008805(n)` -/
def P16690827199059093649.Spec : Prop :=
  ∀ n, P16690827199059093649.a n = A023865 (n + 1)

end A023865

/-! ## A023865.P13446713625693575982

`2*A023855(n+1)-A008805(n)`
-/

namespace A023865.P13446713625693575982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023855 (n + 1) - A008805 n

end

end A023865.P13446713625693575982

namespace A023865

/-- `2*A023855(n+1)-A008805(n)` -/
def P13446713625693575982.Spec : Prop :=
  ∀ n, P13446713625693575982.a n = A023865 (n + 1)

end A023865

/-! ## A023865.P9718285158426388627

`Δ[n*∑[∑[∑[n]%(n+1)]]]`
-/

namespace A023865.P9718285158426388627
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f4 j) % (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A023865.P9718285158426388627

namespace A023865

/-- `Δ[n*∑[∑[∑[n]%(n+1)]]]` -/
def P9718285158426388627.Spec : Prop :=
  ∀ n, P9718285158426388627.a n = A023865 (n + 1)

end A023865

/-! ## A023865.P17635853906859775434

`Δ[n*A006918(n)]`
-/

namespace A023865.P17635853906859775434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A006918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A023865.P17635853906859775434

namespace A023865

/-- `Δ[n*A006918(n)]` -/
def P17635853906859775434.Spec : Prop :=
  ∀ n, P17635853906859775434.a n = A023865 (n + 1)

end A023865

/-! ## A023865.P18025641406041758448

`A289179(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A023865.P18025641406041758448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A289179 (n + 2) - a (n - 1)

end

end A023865.P18025641406041758448

namespace A023865

/-- `A289179(n+2)-a(n-1)` -/
def P18025641406041758448.Spec : Prop :=
  ∀ n, P18025641406041758448.a n = A023865 (n + 1)

end A023865

/-! ## A023865.P14190182167864380230

`A178312(n+1)+A006918(n)`
-/

namespace A023865.P14190182167864380230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178312 (n + 1) + A006918 n

end

end A023865.P14190182167864380230

namespace A023865

/-- `A178312(n+1)+A006918(n)` -/
def P14190182167864380230.Spec : Prop :=
  ∀ n, P14190182167864380230.a n = A023865 (n + 1)

end A023865

/-! ## A023865.P7166791117483650052

`∑[A128223(n+1)]-A142150(n+1)²`
-/

namespace A023865.P7166791117483650052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A142150 (n + 1) ^ 2

end

end A023865.P7166791117483650052

namespace A023865

/-- `∑[A128223(n+1)]-A142150(n+1)²` -/
def P7166791117483650052.Spec : Prop :=
  ∀ n, P7166791117483650052.a n = A023865 (n + 1)

end A023865

/-! ## A023865.P7448118764391848015

`A001651(n+2)*A008805(n)-A058187(n)`
-/

namespace A023865.P7448118764391848015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 2) * A008805 n - A058187 n

end

end A023865.P7448118764391848015

namespace A023865

/-- `A001651(n+2)*A008805(n)-A058187(n)` -/
def P7448118764391848015.Spec : Prop :=
  ∀ n, P7448118764391848015.a n = A023865 (n + 1)

end A023865

/-! ## A023865.P17408760341822776957

`(A296161(2*(n+1))+A295286(2*(n+1)))/2`
-/

namespace A023865.P17408760341822776957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296161 (2 * (n + 1)) + A295286 (2 * (n + 1)) : ℚ) / 2

end

end A023865.P17408760341822776957

namespace A023865

/-- `(A296161(2*(n+1))+A295286(2*(n+1)))/2` -/
def P17408760341822776957.Spec : Prop :=
  ∀ n, P17408760341822776957.a n = (A023865 (n + 1) : ℚ)

end A023865

/-! ## A023865.P14992849683285276047

`A296161(2*(n+1))+A295287(2*n+1)/2`
-/

namespace A023865.P14992849683285276047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296161 (2 * (n + 1)) : ℚ) + (A295287 (2 * n + 1) : ℚ) / 2

end

end A023865.P14992849683285276047

namespace A023865

/-- `A296161(2*(n+1))+A295287(2*n+1)/2` -/
def P14992849683285276047.Spec : Prop :=
  ∀ n, P14992849683285276047.a n = (A023865 (n + 1) : ℚ)

end A023865

/-! ## A023865.P12182501499212596092

`A295286(2*(n+1))-A295287(2*n+1)/2`
-/

namespace A023865.P12182501499212596092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295286 (2 * (n + 1)) : ℚ) - (A295287 (2 * n + 1) : ℚ) / 2

end

end A023865.P12182501499212596092

namespace A023865

/-- `A295286(2*(n+1))-A295287(2*n+1)/2` -/
def P12182501499212596092.Spec : Prop :=
  ∀ n, P12182501499212596092.a n = (A023865 (n + 1) : ℚ)

end A023865

/-! ## A023865.P16373173455134445522

`A295286(2*(n+1))-A295292(2*n+1)/2`
-/

namespace A023865.P16373173455134445522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295286 (2 * (n + 1)) : ℚ) - (A295292 (2 * n + 1) : ℚ) / 2

end

end A023865.P16373173455134445522

namespace A023865

/-- `A295286(2*(n+1))-A295292(2*n+1)/2` -/
def P16373173455134445522.Spec : Prop :=
  ∀ n, P16373173455134445522.a n = (A023865 (n + 1) : ℚ)

end A023865

/-! ## A023865.P15390186376795996691

`A295292(2*(n+1))-A295287(2*n+1)/2`
-/

namespace A023865.P15390186376795996691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295292 (2 * (n + 1)) : ℚ) - (A295287 (2 * n + 1) : ℚ) / 2

end

end A023865.P15390186376795996691

namespace A023865

/-- `A295292(2*(n+1))-A295287(2*n+1)/2` -/
def P15390186376795996691.Spec : Prop :=
  ∀ n, P15390186376795996691.a n = (A023865 (n + 1) : ℚ)

end A023865

/-! ## A023865.P17937608908796830115

`A295292(2*(n+1))-A295292(2*n+1)/2`
-/

namespace A023865.P17937608908796830115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295292 (2 * (n + 1)) : ℚ) - (A295292 (2 * n + 1) : ℚ) / 2

end

end A023865.P17937608908796830115

namespace A023865

/-- `A295292(2*(n+1))-A295292(2*n+1)/2` -/
def P17937608908796830115.Spec : Prop :=
  ∀ n, P17937608908796830115.a n = (A023865 (n + 1) : ℚ)

end A023865

/-! ## A023865.P611262976399528375

`A295286(2*(n+1))-A295320(2*n+1)/2`
-/

namespace A023865.P611262976399528375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295286 (2 * (n + 1)) : ℚ) - (A295320 (2 * n + 1) : ℚ) / 2

end

end A023865.P611262976399528375

namespace A023865

/-- `A295286(2*(n+1))-A295320(2*n+1)/2` -/
def P611262976399528375.Spec : Prop :=
  ∀ n, P611262976399528375.a n = (A023865 (n + 1) : ℚ)

end A023865

/-!
# A023866: a(n) = 1*t(n) + 2*t(n-1) + ... + k*t(n+1-k), where k=floor((n+1)/2) and t is A000201 (lower Wythoff sequence).

The programs for A023866, there is no canonical definition to state claims against.
-/

/-! ## A023866.P831482287869789595

`A023867(n+1)-A023855(n+1)`
-/

namespace A023866.P831482287869789595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023867 (n + 1) - A023855 (n + 1)

end

end A023866.P831482287869789595

/-! ## A023866.P9636338264751087480

`A024689(n+1)-(A024686(n+1)+A023855(n+1))`
-/

namespace A023866.P9636338264751087480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024689 (n + 1) - (A024686 (n + 1) + A023855 (n + 1))

end

end A023866.P9636338264751087480

/-! ## A023866.P9968323580789950187

`A023867(n+1)-∑[A245288(n+2)]`
-/

namespace A023866.P9968323580789950187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245288 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023867 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023866.P9968323580789950187

/-! ## A023866.P449299091081415735

`A023867(n+1)-A144678(A042948(n))`
-/

namespace A023866.P449299091081415735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023867 (n + 1) - A144678 (A042948 n).toNat

end

end A023866.P449299091081415735

/-! ## A023866.P15114266068411788890

`A023867(n+1)-A144678(A080412(2*n))`
-/

namespace A023866.P15114266068411788890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023867 (n + 1) - A144678 (A080412 (2 * n)).toNat

end

end A023866.P15114266068411788890

/-!
# A023867: a(n) = 1*t(n) + 2*t(n-1) + ...+ k*t(n+1-k), where k=floor((n+1)/2) and t is A001950 (upper Wythoff sequence).

The programs for A023867, there is no canonical definition to state claims against.
-/

/-! ## A023867.P15886819339560837066

`A023866(n+1)+A023855(n+1)`
-/

namespace A023867.P15886819339560837066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023866 (n + 1) + A023855 (n + 1)

end

end A023867.P15886819339560837066

/-! ## A023867.P1892447062559228725

`A024689(n+1)-A024686(n+1)`
-/

namespace A023867.P1892447062559228725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024689 (n + 1) - A024686 (n + 1)

end

end A023867.P1892447062559228725

/-! ## A023867.P16164648281200600473

`A023866(n+1)+A006918(or(1, n))+A006918(n)`
-/

namespace A023867.P16164648281200600473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023866 (n + 1) + (A006918 (Nat.lor 1 n) + A006918 n)

end

end A023867.P16164648281200600473

/-! ## A023867.P2247801346560621901

`A023866(n+1)+A006918(n)+∑[A027656(n)²]`
-/

namespace A023867.P2247801346560621901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023866 (n + 1) + (A006918 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A023867.P2247801346560621901

/-! ## A023867.P317653445297800067

`A023866(n+1)+A024862(n+2)-A023856(n+1)`
-/

namespace A023867.P317653445297800067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023866 (n + 1) + (A024862 (n + 2) - A023856 (n + 1))

end

end A023867.P317653445297800067

/-! ## A023867.P12210250293493350238

`A023866(n+1)+2*A023856(n+1)-A023857(n+1)`
-/

namespace A023867.P12210250293493350238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023866 (n + 1) + (2 * A023856 (n + 1) - A023857 (n + 1))

end

end A023867.P12210250293493350238

/-! ## A023867.P2013703647445077312

`A023866(n+1)+∑[A245288(n+2)]`
-/

namespace A023867.P2013703647445077312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245288 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023866 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023867.P2013703647445077312

/-! ## A023867.P7960693432419699062

`A144678(A042948(n))+A023866(n+1)`
-/

namespace A023867.P7960693432419699062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144678 (A042948 n).toNat + A023866 (n + 1)

end

end A023867.P7960693432419699062

/-! ## A023867.P154676818769393350

`A144678(A080412(2*n))+A023866(n+1)`
-/

namespace A023867.P154676818769393350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144678 (A080412 (2 * n)).toNat + A023866 (n + 1)

end

end A023867.P154676818769393350

/-! ## A023867.P15460018802050640018

`A293452(A000124(n+1))+A023866(n+1)`
-/

namespace A023867.P15460018802050640018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293452 (A000124 (n + 1)).toNat + A023866 (n + 1)

end

end A023867.P15460018802050640018

/-!
# A023868: a(n) = 1*t(n) + 2*t(n-1) + ... + k*t(n+1-k), where k=floor((n+1)/2) and t is A023533.

The programs for A023868, there is no canonical definition to state claims against.
-/

/-! ## A023868.P12409526165470070185

`A008805(n)-A023869(n+1)`
-/

namespace A023868.P12409526165470070185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n - A023869 (n + 1)

end

end A023868.P12409526165470070185

/-! ## A023868.P9946404646377478634

`A024690(n+1)-A024687(n+1)`
-/

namespace A023868.P9946404646377478634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024690 (n + 1) - A024687 (n + 1)

end

end A023868.P9946404646377478634

/-! ## A023868.P77731224392755925

`A000217(A008619(n))-A023869(n+1)`
-/

namespace A023868.P77731224392755925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A008619 n).toNat - A023869 (n + 1)

end

end A023868.P77731224392755925

/-! ## A023868.P13070417647192631247

`A023856(n+1)-(A023869(n+1)+A023855(n+1))`
-/

namespace A023868.P13070417647192631247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023856 (n + 1) - (A023869 (n + 1) + A023855 (n + 1))

end

end A023868.P13070417647192631247

/-! ## A023868.P13532375532545009214

`A023858(n+1)+A023859(n+1)-A023869(n+1)`
-/

namespace A023868.P13532375532545009214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023858 (n + 1) + (A023859 (n + 1) - A023869 (n + 1))

end

end A023868.P13532375532545009214

/-!
# A023869: a(n) = 1*t(n) + 2*t(n-1) + ... + k*t(n+1-k), where k=floor((n+1)/2) and t is A014306.

The programs for A023869, there is no canonical definition to state claims against.
-/

/-! ## A023869.P11339199241396171521

`A008805(n)-A023868(n+1)`
-/

namespace A023869.P11339199241396171521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n - A023868 (n + 1)

end

end A023869.P11339199241396171521

/-! ## A023869.P12767508802500911356

`∑[A027656(n)]-A023868(n+1)`
-/

namespace A023869.P12767508802500911356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023868 (n + 1)

end

end A023869.P12767508802500911356

/-! ## A023869.P3220533976930386173

`A024691(n+1)-A024688(n+1)`
-/

namespace A023869.P3220533976930386173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024691 (n + 1) - A024688 (n + 1)

end

end A023869.P3220533976930386173

/-! ## A023869.P1516081924184055059

`A000217(A008619(n))-A023868(n+1)`
-/

namespace A023869.P1516081924184055059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A008619 n).toNat - A023868 (n + 1)

end

end A023869.P1516081924184055059

/-! ## A023869.P11215634659678579684

`Δ[A006918(n)]-A023868(n+1)`
-/

namespace A023869.P11215634659678579684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A023868 (n + 1)

end

end A023869.P11215634659678579684

/-! ## A023869.P16144957646097938325

`A000217(A008621(2*n))-A023868(n+1)`
-/

namespace A023869.P16144957646097938325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A008621 (2 * n)).toNat - A023868 (n + 1)

end

end A023869.P16144957646097938325

/-!
# A023870: a(n) = 1*prime(n) + 2*prime(n-1) + ... + k*prime(n+1-k), where k=floor((n+1)/2) and prime(n) is the n-th prime.

The programs for A023870, there is no canonical definition to state claims against.
-/

/-! ## A023870.P4234827031557279057

`A324935(A018819(3*n+4)-(n+2))`
-/

namespace A023870.P4234827031557279057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324935 (A018819 (3 * n + 4) - (n + 2 : ℤ)).toNat

end

end A023870.P4234827031557279057

/-! ## A023870.P1257401993103293601

`A178522(A030179(n))+A131474(n+1)`
-/

namespace A023870.P1257401993103293601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178522 (A030179 n).toNat + A131474 (n + 1)

end

end A023870.P1257401993103293601

/-! ## A023870.P15143110909725962184

`A316793(A177372(n+4)-A001223(n+1))`
-/

namespace A023870.P15143110909725962184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316793 (A177372 (n + 4) - A001223 (n + 1)).toNat

end

end A023870.P15143110909725962184

/-!
# A023871: Expansion of Product_{k>=1} (1 - x^k)^(-k^2).

The programs for A023871, there is no canonical definition to state claims against.
-/

/-! ## A023871.P11929330100338615199

`A144048(∑[n+3])`
-/

namespace A023871.P11929330100338615199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A023871.P11929330100338615199

/-! ## A023871.P11887318687811019657

`A144048(A055998(n+1))%A017322(n)`
-/

namespace A023871.P11887318687811019657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144048 (A055998 (n + 1)).toNat) (A017322 n)

end

end A023871.P11887318687811019657

/-! ## A023871.P10891601731375261769

`A057979(2*n)*A144048(A055998(n+1))`
-/

namespace A023871.P10891601731375261769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (2 * n) * A144048 (A055998 (n + 1)).toNat

end

end A023871.P10891601731375261769

/-! ## A023871.P17118101457307457183

`lcm(A071935(n+1), A144048(A055998(n+1)))`
-/

namespace A023871.P17118101457307457183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A071935 (n + 1)) (A144048 (A055998 (n + 1)).toNat)

end

end A023871.P17118101457307457183

/-! ## A023871.P11277706523446482042

`A144048(A055998(n+1))^A034947(n+1)²`
-/

namespace A023871.P11277706523446482042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144048 (A055998 (n + 1)).toNat : ℚ) ^ (A034947 (n + 1) ^ 2 : ℤ)

end

end A023871.P11277706523446482042

/-! ## A023871.P11143254917209725298

`A144048(A055998(n+1))+val(A000040(n+1), 4)`
-/

namespace A023871.P11143254917209725298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 (A055998 (n + 1)).toNat + (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 4 : ℤ)

end

end A023871.P11143254917209725298

/-! ## A023871.P10130895612020496416

`A144048(A055998(n+1))+val(A005117(n+1), 4)`
-/

namespace A023871.P10130895612020496416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 (A055998 (n + 1)).toNat + (SequenceMachineLib.valuation (A005117 (n + 1)).toNat 4 : ℤ)

end

end A023871.P10130895612020496416

/-! ## A023871.P15062120049218289224

`A144048(A055998(n+1))/A005117(abs((-1)^n))`
-/

namespace A023871.P15062120049218289224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144048 (A055998 (n + 1)).toNat : ℚ) / (A005117 |(-1) ^ n|.toNat : ℚ)

end

end A023871.P15062120049218289224

/-! ## A023871.P8160632648297715380

`A144048(A055998(n+1))+A008683(A008586(n+1))`
-/

namespace A023871.P8160632648297715380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 (A055998 (n + 1)).toNat + A008683 (A008586 (n + 1)).toNat

end

end A023871.P8160632648297715380

/-!
# A023872: Expansion of Product_{k>=1} (1 - x^k)^(-k^3).

The programs for A023872, there is no canonical definition to state claims against.
-/

/-! ## A023872.P3166405042980953960

`A144048(∑[n+3]+n+3)`
-/

namespace A023872.P3166405042980953960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A023872.P3166405042980953960

/-! ## A023872.P2171051156197195826

`A288415(n)-A070678(A040082(n+1))`
-/

namespace A023872.P2171051156197195826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288415 n - A070678 (A040082 (n + 1)).toNat

end

end A023872.P2171051156197195826

/-!
# A023873: Expansion of Product_{k>=1} (1 - x^k)^(-k^4).

The programs for A023873, there is no canonical definition to state claims against.
-/

/-! ## A023873.P13927435117816544573

`A144048(∑[n+5]+5)`
-/

namespace A023873.P13927435117816544573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A023873.P13927435117816544573

/-! ## A023873.P2147098900892427218

`A144048(A052905(n+2))%A034474(n)`
-/

namespace A023873.P2147098900892427218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144048 (A052905 (n + 2)).toNat) (A034474 n)

end

end A023873.P2147098900892427218

/-! ## A023873.P5173444810435719660

`lcm(A020985(n), A144048(A052905(n+2)))`
-/

namespace A023873.P5173444810435719660
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A144048 (A052905 (n + 2)).toNat)

end

end A023873.P5173444810435719660

/-! ## A023873.P5415836115635976495

`A000108(C(n, 64)²)*A144048(A052905(n+2))`
-/

namespace A023873.P5415836115635976495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose n 64 ^ 2) * A144048 (A052905 (n + 2)).toNat

end

end A023873.P5415836115635976495

/-! ## A023873.P1554708758497117922

`A000108(val(n+1, 9))*A144048(A052905(n+2))`
-/

namespace A023873.P1554708758497117922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (SequenceMachineLib.valuation (n + 1) 9) * A144048 (A052905 (n + 2)).toNat

end

end A023873.P1554708758497117922

/-!
# A023874: Expansion of Product_{k>=1} (1 - x^k)^(-k^5).

The programs for A023874, there is no canonical definition to state claims against.
-/

/-! ## A023874.P6208082133815188048

`A144048(eq[5, A025581(n)])`
-/

namespace A023874.P6208082133815188048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023874.P6208082133815188048

/-! ## A023874.P18434856285574090627

`A144048(Δ[A023551(n+1)])`
-/

namespace A023874.P18434856285574090627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 (f1 (n + 1) - f1 n).toNat

end

end A023874.P18434856285574090627

/-! ## A023874.P3824221371464486887

`A144048(A000096(n+5)-5)`
-/

namespace A023874.P3824221371464486887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 (A000096 (n + 5) - 5).toNat

end

end A023874.P3824221371464486887

/-! ## A023874.P7986624223275820875

`A144048(A000217(n+6)-6)`
-/

namespace A023874.P7986624223275820875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 (A000217 (n + 6) - 6).toNat

end

end A023874.P7986624223275820875

/-! ## A023874.P7902040239543967784

`A144048(eq[6, A004736(n+1)])`
-/

namespace A023874.P7902040239543967784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023874.P7902040239543967784

/-!
# A023875: Expansion of Product_{k>=1} (1 - x^k)^(-k^6).

The programs for A023875, there is no canonical definition to state claims against.
-/

/-! ## A023875.P922682997322301150

`A144048(eq[6, A025581(n)])`
-/

namespace A023875.P922682997322301150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023875.P922682997322301150

/-! ## A023875.P5412766812912933505

`A144048(A000217(n+7)-7)`
-/

namespace A023875.P5412766812912933505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 (A000217 (n + 7) - 7).toNat

end

end A023875.P5412766812912933505

/-! ## A023875.P9887491422669316940

`A144048(A000124(n+7)-8)`
-/

namespace A023875.P9887491422669316940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 (A000124 (n + 7) - 8).toNat

end

end A023875.P9887491422669316940

/-! ## A023875.P967371356071917893

`A144048(eq[7, A004736(n+1)])`
-/

namespace A023875.P967371356071917893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023875.P967371356071917893

/-! ## A023875.P10687168353294486437

`A144048(Δ[A023551(n+2)]-1)`
-/

namespace A023875.P10687168353294486437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 (f1 (n + 1) - f1 n - 1).toNat

end

end A023875.P10687168353294486437

/-!
# A023876: G.f.: Product_{k>=1} (1 - x^k)^(-k^7).

The programs for A023876, there is no canonical definition to state claims against.
-/

/-! ## A023876.P15462180965828029656

`A144048(eq[7, A025581(n)])`
-/

namespace A023876.P15462180965828029656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023876.P15462180965828029656

/-! ## A023876.P10469753190000742445

`A144048(eq[8, A193739(n)])`
-/

namespace A023876.P10469753190000742445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023876.P10469753190000742445

/-! ## A023876.P1088486584766682807

`A144048(eq[8, A195663(n)])`
-/

namespace A023876.P1088486584766682807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023876.P1088486584766682807

/-! ## A023876.P390799047371479514

`A144048(eq[8, A004736(n+1)])`
-/

namespace A023876.P390799047371479514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023876.P390799047371479514

/-! ## A023876.P11251769786689598681

`A144048(eq[19, A104887(n+1)])`
-/

namespace A023876.P11251769786689598681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023876.P11251769786689598681

/-!
# A023877: Expansion of Product_{k>=1} (1 - x^k)^(-k^8).

The programs for A023877, there is no canonical definition to state claims against.
-/

/-! ## A023877.P5233389601816216361

`A144048(eq[3, A104975(n)])`
-/

namespace A023877.P5233389601816216361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023877.P5233389601816216361

/-! ## A023877.P14968636731950433470

`A144048(eq[8, A025581(n)])`
-/

namespace A023877.P14968636731950433470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023877.P14968636731950433470

/-! ## A023877.P2174008286370367268

`A144048(eq[9, A193739(n)])`
-/

namespace A023877.P2174008286370367268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023877.P2174008286370367268

/-! ## A023877.P3514624679747244396

`A144048(eq[9, A195663(n)])`
-/

namespace A023877.P3514624679747244396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023877.P3514624679747244396

/-! ## A023877.P12578962008396625836

`A144048(eq[9, A004736(n+1)])`
-/

namespace A023877.P12578962008396625836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023877.P12578962008396625836

/-!
# A023878: Expansion of Product_{k>=1} (1 - x^k)^(-k^9).

The programs for A023878, there is no canonical definition to state claims against.
-/

/-! ## A023878.P16100114473374835959

`A144048(eq[9, A025581(n)])`
-/

namespace A023878.P16100114473374835959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023878.P16100114473374835959

/-! ## A023878.P6914893299005841193

`A144048(eq[9, A195664(n)])`
-/

namespace A023878.P6914893299005841193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023878.P6914893299005841193

/-! ## A023878.P3372337548855718226

`A144048(eq[10, A193739(n)])`
-/

namespace A023878.P3372337548855718226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023878.P3372337548855718226

/-! ## A023878.P7865466744290012578

`A144048(eq[19, A099375(n)])`
-/

namespace A023878.P7865466744290012578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023878.P7865466744290012578

/-! ## A023878.P18338288187835150617

`A144048(A000217(n+10)-10)`
-/

namespace A023878.P18338288187835150617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 (A000217 (n + 10) - 10).toNat

end

end A023878.P18338288187835150617

/-!
# A023879: Number of partitions in expanding space.

The programs for A023879, there is no canonical definition to state claims against.
-/

/-! ## A023879.P981143745040782714

`A366631(A002799(∑[n]))`
-/

namespace A023879.P981143745040782714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366631 (A002799 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A023879.P981143745040782714

/-! ## A023879.P7114996014471445809

`A081831(record[A182122(n)])`
-/

namespace A023879.P7114996014471445809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182122 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081831 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023879.P7114996014471445809

/-!
# A023880: Number of partitions in expanding space.

The programs for A023880, there is no canonical definition to state claims against.
-/

/-! ## A023880.P2373876023470639308

`A283674(∑[n+2]-1)`
-/

namespace A023880.P2373876023470639308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283674 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A023880.P2373876023470639308

/-! ## A023880.P6272925938106237346

`A283674(A034856(n+1))+A025469(n)`
-/

namespace A023880.P6272925938106237346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283674 (A034856 (n + 1)).toNat + A025469 n

end

end A023880.P6272925938106237346

/-! ## A023880.P3645348416452463503

`A283674(A034856(n+1))^A007318(C(2, n)²)`
-/

namespace A023880.P3645348416452463503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283674 (A034856 (n + 1)).toNat : ℚ) ^ (A007318 (Nat.choose 2 n ^ 2) : ℤ)

end

end A023880.P3645348416452463503

/-! ## A023880.P16511653238275158159

`A283674(A034856(n+1))^A014963(∑[n+1])`
-/

namespace A023880.P16511653238275158159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283674 (A034856 (n + 1)).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A023880.P16511653238275158159

/-! ## A023880.P8627407710403745808

`A283674(A034856(n+1))%A000108(A000040(n+2))`
-/

namespace A023880.P8627407710403745808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283674 (A034856 (n + 1)).toNat) (A000108 (A000040 (n + 2)).toNat)

end

end A023880.P8627407710403745808

/-!
# A023881: Number of partitions in expanding space: sigma(n,q) is the sum of the q-th powers of the divisors of n.

The programs for A023881, there is no canonical definition to state claims against.
-/

/-! ## A023881.P13666153222154969151

`A294946(∑[n]+n)`
-/

namespace A023881.P13666153222154969151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294946 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A023881.P13666153222154969151

/-! ## A023881.P5514164143604926560

`A294946(A000096(n))+char[32]`
-/

namespace A023881.P5514164143604926560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294946 (A000096 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A023881.P5514164143604926560

/-! ## A023881.P13149616456460503883

`A326292(n)+A294946(A000096(n))`
-/

namespace A023881.P13149616456460503883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326292 n + A294946 (A000096 n).toNat

end

end A023881.P13149616456460503883

/-! ## A023881.P3971512000455156230

`A061674(n)*A294946(A000096(n))`
-/

namespace A023881.P3971512000455156230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061674 n * A294946 (A000096 n).toNat

end

end A023881.P3971512000455156230

/-! ## A023881.P10514902853596053807

`A061906(n)*A294946(A000096(n))`
-/

namespace A023881.P10514902853596053807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061906 n * A294946 (A000096 n).toNat

end

end A023881.P10514902853596053807

/-!
# A023882: Expansion of g.f.: 1/Product_{n>0} (1 - n^n * x^n).

The programs for A023882, there is no canonical definition to state claims against.
-/

/-! ## A023882.P18064468836318996226

`A294758(∑[n+2]-1)`
-/

namespace A023882.P18064468836318996226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294758 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A023882.P18064468836318996226

/-! ## A023882.P8832601445173233792

`A294758(A034856(n+1))+char[30]`
-/

namespace A023882.P8832601445173233792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294758 (A034856 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A023882.P8832601445173233792

/-! ## A023882.P1933366924598382196

`or(A000007(n), A294758(A034856(n+1)))`
-/

namespace A023882.P1933366924598382196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A294758 (A034856 (n + 1)).toNat)

end

end A023882.P1933366924598382196

/-! ## A023882.P10300113361758193050

`A294758(A034856(n+1))^A014963(∑[n+1])`
-/

namespace A023882.P10300113361758193050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294758 (A034856 (n + 1)).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A023882.P10300113361758193050

/-! ## A023882.P3597950783430817135

`A000041(C(2, n+2))*A294758(A034856(n+1))`
-/

namespace A023882.P3597950783430817135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A294758 (A034856 (n + 1)).toNat

end

end A023882.P3597950783430817135

/-!
# A023883: Nonprimes whose average of divisors is an integer.

The programs for A023883, the canonical program `A023883.P3322065707026463707` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023883 has offset 1).

The definition of A023883 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023883.P3322065707026463707

`record[A018252(n+1)*A245656(A018252(n+1))]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023883

/-- `record[A018252(n+1)*A245656(A018252(n+1))]` -/
def P3322065707026463707.Spec : Prop :=
  ∀ n, P3322065707026463707.a n = A023883 (n + 1)

theorem P3322065707026463707.correct : P3322065707026463707.Spec := by
  intro n
  simp only [A023883, Nat.add_sub_cancel]

end A023883

/-! ## A023883.P2011351357325058192

`filter[A003601(n+1), A005171(#)]`
-/

namespace A023883.P2011351357325058192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A023883.P2011351357325058192

namespace A023883

/-- `filter[A003601(n+1), A005171(#)]` -/
def P2011351357325058192.Spec : Prop :=
  ∀ n, P2011351357325058192.a n = A023883 (n + 1)

end A023883

/-! ## A023883.P17218917209852645081

`filter[A056653(n+1), A245656(#)]`
-/

namespace A023883.P17218917209852645081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j).toNat = 1) n)

end

end A023883.P17218917209852645081

namespace A023883

/-- `filter[A056653(n+1), A245656(#)]` -/
def P17218917209852645081.Spec : Prop :=
  ∀ n, P17218917209852645081.a n = A023883 (n + 1)

end A023883

/-! ## A023883.P11937302552391392192

`∩[A003601(n+1), A056653(n+1)]`
-/

namespace A023883.P11937302552391392192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023883.P11937302552391392192

namespace A023883

/-- `∩[A003601(n+1), A056653(n+1)]` -/
def P11937302552391392192.Spec : Prop :=
  ∀ n, (P11937302552391392192.a n : ℤ) = A023883 (n + 1)

end A023883

/-! ## A023883.P886848519556204530

`filter[A018252(n+1), A245656(#)]`
-/

namespace A023883.P886848519556204530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j).toNat = 1) n)

end

end A023883.P886848519556204530

namespace A023883

/-- `filter[A018252(n+1), A245656(#)]` -/
def P886848519556204530.Spec : Prop :=
  ∀ n, P886848519556204530.a n = A023883 (n + 1)

end A023883

/-! ## A023883.P4101305936178830337

`filter[A141468(n+2), A245656(#)]`
-/

namespace A023883.P4101305936178830337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j).toNat = 1) n)

end

end A023883.P4101305936178830337

namespace A023883

/-- `filter[A141468(n+2), A245656(#)]` -/
def P4101305936178830337.Spec : Prop :=
  ∀ n, P4101305936178830337.a n = A023883 (n + 1)

end A023883

/-! ## A023883.P14678681124267356758

`filter[A222307(2*n+1), A245656(#)]`
-/

namespace A023883.P14678681124267356758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j).toNat = 1) n)

end

end A023883.P14678681124267356758

namespace A023883

/-- `filter[A222307(2*n+1), A245656(#)]` -/
def P14678681124267356758.Spec : Prop :=
  ∀ n, P14678681124267356758.a n = A023883 (n + 1)

end A023883

/-! ## A023883.P11510375459213695072

`∩[A003601(n+1), A018252(n+1)]`
-/

namespace A023883.P11510375459213695072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023883.P11510375459213695072

namespace A023883

/-- `∩[A003601(n+1), A018252(n+1)]` -/
def P11510375459213695072.Spec : Prop :=
  ∀ n, (P11510375459213695072.a n : ℤ) = A023883 (n + 1)

end A023883

/-! ## A023883.P2999661670701926632

`filter[A065090(n+1), A245656(#)]`
-/

namespace A023883.P2999661670701926632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j).toNat = 1) n)

end

end A023883.P2999661670701926632

namespace A023883

/-- `filter[A065090(n+1), A245656(#)]` -/
def P2999661670701926632.Spec : Prop :=
  ∀ n, P2999661670701926632.a n = A023883 (n + 1)

end A023883

/-! ## A023883.P13202464270194633516

`∩[A003601(n+1), A065090(n+1)]`
-/

namespace A023883.P13202464270194633516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023883.P13202464270194633516

namespace A023883

/-- `∩[A003601(n+1), A065090(n+1)]` -/
def P13202464270194633516.Spec : Prop :=
  ∀ n, (P13202464270194633516.a n : ℤ) = A023883 (n + 1)

end A023883

/-! ## A023883.P14087437500966631847

`∩[A003601(n+1), A141468(n+1)]`
-/

namespace A023883.P14087437500966631847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023883.P14087437500966631847

namespace A023883

/-- `∩[A003601(n+1), A141468(n+1)]` -/
def P14087437500966631847.Spec : Prop :=
  ∀ n, (P14087437500966631847.a n : ℤ) = A023883 (n + 1)

end A023883

/-! ## A023883.P16199158701873752156

`record[A191558(n+1)/A176801(n+1)]`
-/

namespace A023883.P16199158701873752156
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191558 (n + 1) : ℚ) / (A176801 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023883.P16199158701873752156

namespace A023883

/-- `record[A191558(n+1)/A176801(n+1)]` -/
def P16199158701873752156.Spec : Prop :=
  ∀ n, P16199158701873752156.a n = (A023883 (n + 1) : ℚ)

end A023883

/-! ## A023883.P2769096000942429860

`filter[A073846(2*n+1), A245656(#)]`
-/

namespace A023883.P2769096000942429860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j).toNat = 1) n)

end

end A023883.P2769096000942429860

namespace A023883

/-- `filter[A073846(2*n+1), A245656(#)]` -/
def P2769096000942429860.Spec : Prop :=
  ∀ n, P2769096000942429860.a n = A023883 (n + 1)

end A023883

/-!
# A023884: Average of divisors except itself is an integer.

The programs for A023884, there is no canonical definition to state claims against.
-/

/-! ## A023884.P14136391171727140258

`∪[A023885(n+1), Δ[A007504(n)]]`
-/

namespace A023884.P14136391171727140258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023885 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023884.P14136391171727140258

/-! ## A023884.P5077580239515261489

`∪[A023885(n+1), p?[A259153(n)]]`
-/

namespace A023884.P5077580239515261489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023885 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023884.P5077580239515261489

/-! ## A023884.P13516227879491683113

`∪[A000040(n+1), A023885(n+1)]`
-/

namespace A023884.P13516227879491683113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023884.P13516227879491683113

/-! ## A023884.P16762794173434698238

`∪[A023885(n+1), A116974(n+1)]`
-/

namespace A023884.P16762794173434698238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023884.P16762794173434698238

/-! ## A023884.P8795085507087977984

`∪[A023885(n+1), ∑[A054541(n+1)]]`
-/

namespace A023884.P8795085507087977984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023885 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023884.P8795085507087977984

/-! ## A023884.P12435860295392054082

`∪[A006093(n+1)+1, A023885(n+1)]`
-/

namespace A023884.P12435860295392054082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023884.P12435860295392054082

/-! ## A023884.P15592144900773668989

`∪[A008864(n+1)-1, A023885(n+1)]`
-/

namespace A023884.P15592144900773668989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023884.P15592144900773668989

/-! ## A023884.P3158414873902526520

`∪[A014688(n+1)-(n+1), A023885(n+1)]`
-/

namespace A023884.P3158414873902526520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) - (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023884.P3158414873902526520

/-! ## A023884.P5950865227130430612

`∪[A014237(n+1)+A018252(n+1), A023885(n+1)]`
-/

namespace A023884.P5950865227130430612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014237 (n + 1) + A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023884.P5950865227130430612

/-!
# A023885: Nonprimes whose average of proper divisors is an integer.

The programs for A023885, there is no canonical definition to state claims against.
-/

/-! ## A023885.P3447486801508099843

`filter[A023884(n+1), A005171(#)]`
-/

namespace A023885.P3447486801508099843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A023885.P3447486801508099843

/-! ## A023885.P4179058492456373879

`filter[A023884(n+1), A066247(#)]`
-/

namespace A023885.P4179058492456373879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A023885.P4179058492456373879

/-! ## A023885.P1911538282151979235

`filter[A023884(n+1), A202238(#)]`
-/

namespace A023885.P1911538282151979235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A023885.P1911538282151979235

/-! ## A023885.P18438785503949794260

`∩[A023884(n+1), A054020(n+1)]`
-/

namespace A023885.P18438785503949794260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023885.P18438785503949794260

/-! ## A023885.P15050681182420216696

`∩[A002808(n+1), A023884(n+1)]`
-/

namespace A023885.P15050681182420216696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023885.P15050681182420216696

/-! ## A023885.P12342213290012233078

`∩[A018252(n+1), A023884(n+1)]`
-/

namespace A023885.P12342213290012233078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023885.P12342213290012233078

/-! ## A023885.P15965764288000234679

`∩[A023884(n+1), A056653(n+1)]`
-/

namespace A023885.P15965764288000234679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023885.P15965764288000234679

/-! ## A023885.P17658146102663103946

`∩[A023884(n+1), A141468(n+1)]`
-/

namespace A023885.P17658146102663103946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023885.P17658146102663103946

/-! ## A023885.P9444792307378375298

`∩[A023884(n+1), A111774(n+1)]`
-/

namespace A023885.P9444792307378375298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023885.P9444792307378375298

/-!
# A023886: Average of proper divisors excluding 1 is an integer.

The programs for A023886, there is no canonical definition to state claims against.
-/

/-! ## A023886.P7767230427265230042

`eq[A014963(A111669(n)), A107393(n)]`
-/

namespace A023886.P7767230427265230042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A111669 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023886.P7767230427265230042

/-! ## A023886.P10954951479051653603

`A321894(A002473(3*n+4))+A276278(3*n+1)`
-/

namespace A023886.P10954951479051653603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321894 (A002473 (3 * n + 4)).toNat + A276278 (3 * n + 1)

end

end A023886.P10954951479051653603

/-! ## A023886.P1175542270664216478

`eq[A014963(A306136(n+1)), A107393(n)]`
-/

namespace A023886.P1175542270664216478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A306136 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023886.P1175542270664216478

/-! ## A023886.P15788537321920945547

`A334299(A007434(n+1))+A099835(n+1)`
-/

namespace A023886.P15788537321920945547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334299 (A007434 (n + 1)).toNat + A099835 (n + 1)

end

end A023886.P15788537321920945547

/-! ## A023886.P18022894192051465912

`A165256(2*(n+2))+A049347(A264299(3*n+1))`
-/

namespace A023886.P18022894192051465912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165256 (2 * (n + 2)) + A049347 (A264299 (3 * n + 1)).toNat

end

end A023886.P18022894192051465912

/-!
# A023887: a(n) = sigma_n(n): sum of n-th powers of divisors of n.

The programs for A023887, there is no canonical definition to state claims against.
-/

/-! ## A023887.P5804966702778762392

`∑{d}[n+1, #^(n+1)]`
-/

namespace A023887.P5804966702778762392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ (n + 1)

end

end A023887.P5804966702778762392

/-! ## A023887.P4777356127211159751

`record[∑{d}[1-n, #^(n-1)]]`
-/

namespace A023887.P4777356127211159751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, (d : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023887.P4777356127211159751

/-! ## A023887.P120258234769536347

`A308504(∑[n+1])`
-/

namespace A023887.P120258234769536347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308504 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A023887.P120258234769536347

/-! ## A023887.P12941838763888588389

`A321295(n+1)/(n+1)`
-/

namespace A023887.P12941838763888588389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321295 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A023887.P12941838763888588389

/-! ## A023887.P3619412208408230784

`record[A308504(A038722(n+1))]`
-/

namespace A023887.P3619412208408230784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308504 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023887.P3619412208408230784

/-! ## A023887.P2187970502976393795

`record[A158821(n)*A308504(n+1)]`
-/

namespace A023887.P2187970502976393795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n * A308504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023887.P2187970502976393795

/-! ## A023887.P2321982644015116519

`record[A308504(n+1)/A174097(n)]`
-/

namespace A023887.P2321982644015116519
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308504 (n + 1) : ℚ) / (A174097 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023887.P2321982644015116519

/-! ## A023887.P14697104549077582184

`record[gcd(A008290(n), A308504(n+2))]`
-/

namespace A023887.P14697104549077582184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008290 n) (A308504 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023887.P14697104549077582184

/-! ## A023887.P4081499549549742724

`A321259(n+1)+A000312(n+1)`
-/

namespace A023887.P4081499549549742724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321259 (n + 1) + A000312 (n + 1)

end

end A023887.P4081499549549742724

/-! ## A023887.P17971033221473561788

`record[A321295(A193592(n))/A193592(n)]`
-/

namespace A023887.P17971033221473561788
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321295 (A193592 n).toNat : ℚ) / (A193592 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023887.P17971033221473561788

/-!
# A023888: Sum of prime power divisors of n (1 included).

The programs for A023888, the canonical program `A023888.P17873500436284849145` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023888 has offset 1).

The definition of A023888 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035321, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023888.P11091334105418211430

`A023889(n+1)+1`
-/

namespace A023888.P11091334105418211430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023889 (n + 1) + 1

end

end A023888.P11091334105418211430

namespace A023888

/-- `A023889(n+1)+1` -/
def P11091334105418211430.Spec : Prop :=
  ∀ n, P11091334105418211430.a n = A023888 (n + 1)

end A023888

/-! ## A023888.P17873500436284849145

`A000203(n+1)-A035321(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A023888

/-- `A000203(n+1)-A035321(n+1)` -/
def P17873500436284849145.Spec : Prop :=
  ∀ n, P17873500436284849145.a n = A023888 (n + 1)

theorem P17873500436284849145.correct : P17873500436284849145.Spec := by
  intro n
  simp only [A023888, Nat.add_sub_cancel]

end A023888

/-! ## A023888.P606000895553186993

`∑{d}[n+1, #*A010055(#)]`
-/

namespace A023888.P606000895553186993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A010055 d

end

end A023888.P606000895553186993

namespace A023888

/-- `∑{d}[n+1, #*A010055(#)]` -/
def P606000895553186993.Spec : Prop :=
  ∀ n, P606000895553186993.a n = A023888 (n + 1)

end A023888

/-! ## A023888.P11127469940952789097

`A284117(n+1)+A074372(n+1)`
-/

namespace A023888.P11127469940952789097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284117 (n + 1) + A074372 (n + 1)

end

end A023888.P11127469940952789097

namespace A023888

/-- `A284117(n+1)+A074372(n+1)` -/
def P11127469940952789097.Spec : Prop :=
  ∀ n, P11127469940952789097.a n = A023888 (n + 1)

end A023888

/-! ## A023888.P4192037913444908291

`A088580(n+1)-A178637(n+1)`
-/

namespace A023888.P4192037913444908291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - A178637 (n + 1)

end

end A023888.P4192037913444908291

namespace A023888

/-- `A088580(n+1)-A178637(n+1)` -/
def P4192037913444908291.Spec : Prop :=
  ∀ n, P4192037913444908291.a n = A023888 (n + 1)

end A023888

/-! ## A023888.P16217344805292886107

`A008472(n+1)+A284117(n+1)+1`
-/

namespace A023888.P16217344805292886107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) + (A284117 (n + 1) + 1)

end

end A023888.P16217344805292886107

namespace A023888

/-- `A008472(n+1)+A284117(n+1)+1` -/
def P16217344805292886107.Spec : Prop :=
  ∀ n, P16217344805292886107.a n = A023888 (n + 1)

end A023888

/-! ## A023888.P16010251121100719042

`A000203(n+1)+1-A178637(n+1)`
-/

namespace A023888.P16010251121100719042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (1 - A178637 (n + 1))

end

end A023888.P16010251121100719042

namespace A023888

/-- `A000203(n+1)+1-A178637(n+1)` -/
def P16010251121100719042.Spec : Prop :=
  ∀ n, P16010251121100719042.a n = A023888 (n + 1)

end A023888

/-! ## A023888.P15686784206851365001

`A351395(n+1)+1-A284118(n+1)`
-/

namespace A023888.P15686784206851365001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351395 (n + 1) + (1 - A284118 (n + 1))

end

end A023888.P15686784206851365001

namespace A023888

/-- `A351395(n+1)+1-A284118(n+1)` -/
def P15686784206851365001.Spec : Prop :=
  ∀ n, P15686784206851365001.a n = A023888 (n + 1)

end A023888

/-! ## A023888.P10824525445299870260

`A008472(n+1)+A023890(n+1)-A035321(n+1)`
-/

namespace A023888.P10824525445299870260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) + (A023890 (n + 1) - A035321 (n + 1))

end

end A023888.P10824525445299870260

namespace A023888

/-- `A008472(n+1)+A023890(n+1)-A035321(n+1)` -/
def P10824525445299870260.Spec : Prop :=
  ∀ n, P10824525445299870260.a n = A023888 (n + 1)

end A023888

/-! ## A023888.P7533035378059220379

`A023891(n+1)+A074372(n+1)-A035321(n+1)`
-/

namespace A023888.P7533035378059220379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023891 (n + 1) + (A074372 (n + 1) - A035321 (n + 1))

end

end A023888.P7533035378059220379

namespace A023888

/-- `A023891(n+1)+A074372(n+1)-A035321(n+1)` -/
def P7533035378059220379.Spec : Prop :=
  ∀ n, P7533035378059220379.a n = A023888 (n + 1)

end A023888

/-! ## A023888.P11323268738861333080

`A159077(n+1)+A178636(n+1)-A035321(n+1)`
-/

namespace A023888.P11323268738861333080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159077 (n + 1) + (A178636 (n + 1) - A035321 (n + 1))

end

end A023888.P11323268738861333080

namespace A023888

/-- `A159077(n+1)+A178636(n+1)-A035321(n+1)` -/
def P11323268738861333080.Spec : Prop :=
  ∀ n, P11323268738861333080.a n = A023888 (n + 1)

end A023888

/-! ## A023888.P3506523550381245015

`A048146(n+1)+A034448(n+1)+1-A178637(n+1)`
-/

namespace A023888.P3506523550381245015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (n + 1) + A034448 (n + 1) + 1 - A178637 (n + 1)

end

end A023888.P3506523550381245015

namespace A023888

/-- `A048146(n+1)+A034448(n+1)+1-A178637(n+1)` -/
def P3506523550381245015.Spec : Prop :=
  ∀ n, P3506523550381245015.a n = A023888 (n + 1)

end A023888

/-! ## A023888.P583185728172529336

`A088001(n+1)+A088000(n+1)+1-A178637(n+1)`
-/

namespace A023888.P583185728172529336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088001 (n + 1) + A088000 (n + 1) + 1 - A178637 (n + 1)

end

end A023888.P583185728172529336

namespace A023888

/-- `A088001(n+1)+A088000(n+1)+1-A178637(n+1)` -/
def P583185728172529336.Spec : Prop :=
  ∀ n, P583185728172529336.a n = A023888 (n + 1)

end A023888

/-! ## A023888.P10921286778787534100

`A326126(n+1)+A007913(n+1)+1-A178637(n+1)`
-/

namespace A023888.P10921286778787534100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326126 (n + 1) + A007913 (n + 1) + 1 - A178637 (n + 1)

end

end A023888.P10921286778787534100

namespace A023888

/-- `A326126(n+1)+A007913(n+1)+1-A178637(n+1)` -/
def P10921286778787534100.Spec : Prop :=
  ∀ n, P10921286778787534100.a n = A023888 (n + 1)

end A023888

/-!
# A023889: Sum of the prime power divisors of n (not including 1).

The programs for A023889, the canonical program `A023889.P17073280978498141665` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023889 has offset 1).

The definition of A023889 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023888, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023889.P17073280978498141665

`A023888(n+1)-1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A023889

/-- `A023888(n+1)-1` -/
def P17073280978498141665.Spec : Prop :=
  ∀ n, P17073280978498141665.a n = A023889 (n + 1)

theorem P17073280978498141665.correct : P17073280978498141665.Spec := by
  intro n
  simp only [A023889, Nat.add_sub_cancel]

end A023889

/-! ## A023889.P4686877717812226072

`∑{d}[n+1, #*A069513(#)]`
-/

namespace A023889.P4686877717812226072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A069513 d

end

end A023889.P4686877717812226072

namespace A023889

/-- `∑{d}[n+1, #*A069513(#)]` -/
def P4686877717812226072.Spec : Prop :=
  ∀ n, P4686877717812226072.a n = A023889 (n + 1)

end A023889

/-! ## A023889.P1307653966449183082

`∑{d}[n+1, #]-A178637(n+1)`
-/

namespace A023889.P1307653966449183082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A178637 (n + 1)

end

end A023889.P1307653966449183082

namespace A023889

/-- `∑{d}[n+1, #]-A178637(n+1)` -/
def P1307653966449183082.Spec : Prop :=
  ∀ n, P1307653966449183082.a n = A023889 (n + 1)

end A023889

/-! ## A023889.P6607886668765436843

`∑{d}[n+1, #*A010055(#)]-1`
-/

namespace A023889.P6607886668765436843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A010055 d - 1

end

end A023889.P6607886668765436843

namespace A023889

/-- `∑{d}[n+1, #*A010055(#)]-1` -/
def P6607886668765436843.Spec : Prop :=
  ∀ n, P6607886668765436843.a n = A023889 (n + 1)

end A023889

/-! ## A023889.P6525064684286448123

`A284117(n+1)+A008472(n+1)`
-/

namespace A023889.P6525064684286448123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284117 (n + 1) + A008472 (n + 1)

end

end A023889.P6525064684286448123

namespace A023889

/-- `A284117(n+1)+A008472(n+1)` -/
def P6525064684286448123.Spec : Prop :=
  ∀ n, P6525064684286448123.a n = A023889 (n + 1)

end A023889

/-! ## A023889.P10953666654251190059

`A000203(n+1)-A178637(n+1)`
-/

namespace A023889.P10953666654251190059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A178637 (n + 1)

end

end A023889.P10953666654251190059

namespace A023889

/-- `A000203(n+1)-A178637(n+1)` -/
def P10953666654251190059.Spec : Prop :=
  ∀ n, P10953666654251190059.a n = A023889 (n + 1)

end A023889

/-! ## A023889.P17659008831913176340

`A351395(n+1)-A284118(n+1)`
-/

namespace A023889.P17659008831913176340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351395 (n + 1) - A284118 (n + 1)

end

end A023889.P17659008831913176340

namespace A023889

/-- `A351395(n+1)-A284118(n+1)` -/
def P17659008831913176340.Spec : Prop :=
  ∀ n, P17659008831913176340.a n = A023889 (n + 1)

end A023889

/-! ## A023889.P7586499207365537721

`∑{d}[n+1, #*A001222(A014963(#))]`
-/

namespace A023889.P7586499207365537721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A001222 (A014963 d).toNat

end

end A023889.P7586499207365537721

namespace A023889

/-- `∑{d}[n+1, #*A001222(A014963(#))]` -/
def P7586499207365537721.Spec : Prop :=
  ∀ n, P7586499207365537721.a n = A023889 (n + 1)

end A023889

/-! ## A023889.P3127791564773314922

`A000203(n+1)-(A035321(n+1)+1)`
-/

namespace A023889.P3127791564773314922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A035321 (n + 1) + 1)

end

end A023889.P3127791564773314922

namespace A023889

/-- `A000203(n+1)-(A035321(n+1)+1)` -/
def P3127791564773314922.Spec : Prop :=
  ∀ n, P3127791564773314922.a n = A023889 (n + 1)

end A023889

/-! ## A023889.P9378641568999764893

`A088580(n+1)-(A178637(n+1)+1)`
-/

namespace A023889.P9378641568999764893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A178637 (n + 1) + 1)

end

end A023889.P9378641568999764893

namespace A023889

/-- `A088580(n+1)-(A178637(n+1)+1)` -/
def P9378641568999764893.Spec : Prop :=
  ∀ n, P9378641568999764893.a n = A023889 (n + 1)

end A023889

/-! ## A023889.P2966168709021762245

`A074372(n+1)+A284117(n+1)-1`
-/

namespace A023889.P2966168709021762245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074372 (n + 1) + (A284117 (n + 1) - 1)

end

end A023889.P2966168709021762245

namespace A023889

/-- `A074372(n+1)+A284117(n+1)-1` -/
def P2966168709021762245.Spec : Prop :=
  ∀ n, P2966168709021762245.a n = A023889 (n + 1)

end A023889

/-! ## A023889.P9058894129883273343

`A001065(n+1)+1+n-A178637(n+1)`
-/

namespace A023889.P9058894129883273343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 1 + (n : ℤ) - A178637 (n + 1)

end

end A023889.P9058894129883273343

namespace A023889

/-- `A001065(n+1)+1+n-A178637(n+1)` -/
def P9058894129883273343.Spec : Prop :=
  ∀ n, P9058894129883273343.a n = A023889 (n + 1)

end A023889

/-! ## A023889.P15725422924977830242

`∑{d}[n+1, A023900(#)*A066959((n+1)/#)]`
-/

namespace A023889.P15725422924977830242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A066959 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A023889.P15725422924977830242

namespace A023889

/-- `∑{d}[n+1, A023900(#)*A066959((n+1)/#)]` -/
def P15725422924977830242.Spec : Prop :=
  ∀ n, P15725422924977830242.a n = A023889 (n + 1)

end A023889

/-! ## A023889.P3559066990918696414

`2*(n+1)-A033879(n+1)-A178637(n+1)`
-/

namespace A023889.P3559066990918696414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A033879 (n + 1) - A178637 (n + 1)

end

end A023889.P3559066990918696414

namespace A023889

/-- `2*(n+1)-A033879(n+1)-A178637(n+1)` -/
def P3559066990918696414.Spec : Prop :=
  ∀ n, P3559066990918696414.a n = A023889 (n + 1)

end A023889

/-! ## A023889.P14366559009765709643

`A057428(A072504(n+1))+A023888(n+1)`
-/

namespace A023889.P14366559009765709643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A072504 (n + 1)).toNat + A023888 (n + 1)

end

end A023889.P14366559009765709643

namespace A023889

/-- `A057428(A072504(n+1))+A023888(n+1)` -/
def P14366559009765709643.Spec : Prop :=
  ∀ n, P14366559009765709643.a n = A023889 (n + 1)

end A023889

/-! ## A023889.P15071974756433855869

`A008472(n+1)+A023891(n+1)-A035321(n+1)`
-/

namespace A023889.P15071974756433855869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) + (A023891 (n + 1) - A035321 (n + 1))

end

end A023889.P15071974756433855869

namespace A023889

/-- `A008472(n+1)+A023891(n+1)-A035321(n+1)` -/
def P15071974756433855869.Spec : Prop :=
  ∀ n, P15071974756433855869.a n = A023889 (n + 1)

end A023889

/-! ## A023889.P5098982422024999963

`A008475(n+1)+A178636(n+1)-A035321(n+1)`
-/

namespace A023889.P5098982422024999963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1) + (A178636 (n + 1) - A035321 (n + 1))

end

end A023889.P5098982422024999963

namespace A023889

/-- `A008475(n+1)+A178636(n+1)-A035321(n+1)` -/
def P5098982422024999963.Spec : Prop :=
  ∀ n, P5098982422024999963.a n = A023889 (n + 1)

end A023889

/-! ## A023889.P12215365695870012380

`A034448(n+1)+A048146(n+1)-A178637(n+1)`
-/

namespace A023889.P12215365695870012380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A048146 (n + 1) - A178637 (n + 1))

end

end A023889.P12215365695870012380

namespace A023889

/-- `A034448(n+1)+A048146(n+1)-A178637(n+1)` -/
def P12215365695870012380.Spec : Prop :=
  ∀ n, P12215365695870012380.a n = A023889 (n + 1)

end A023889

/-! ## A023889.P4423919601118726282

`A050449(n+1)+A082052(n+1)-A178637(n+1)`
-/

namespace A023889.P4423919601118726282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050449 (n + 1) + (A082052 (n + 1) - A178637 (n + 1))

end

end A023889.P4423919601118726282

namespace A023889

/-- `A050449(n+1)+A082052(n+1)-A178637(n+1)` -/
def P4423919601118726282.Spec : Prop :=
  ∀ n, P4423919601118726282.a n = A023889 (n + 1)

end A023889

/-! ## A023889.P2308951578767961452

`A000593(n+1)+A146076(n+1)-A178637(n+1)`
-/

namespace A023889.P2308951578767961452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) + (A146076 (n + 1) - A178637 (n + 1))

end

end A023889.P2308951578767961452

namespace A023889

/-- `A000593(n+1)+A146076(n+1)-A178637(n+1)` -/
def P2308951578767961452.Spec : Prop :=
  ∀ n, P2308951578767961452.a n = A023889 (n + 1)

end A023889

/-!
# A023890: Sum of the nonprime divisors of n.

The programs for A023890, the canonical program `A023890.P4514850295399263827` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023890 has offset 1).

The definition of A023890 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023890.P4457169420092633244

`A023891(n+1)+1`
-/

namespace A023890.P4457169420092633244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023891 (n + 1) + 1

end

end A023890.P4457169420092633244

namespace A023890

/-- `A023891(n+1)+1` -/
def P4457169420092633244.Spec : Prop :=
  ∀ n, P4457169420092633244.a n = A023890 (n + 1)

end A023890

/-! ## A023890.P4514850295399263827

`A000203(n+1)-A008472(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023890

/-- `A000203(n+1)-A008472(n+1)` -/
def P4514850295399263827.Spec : Prop :=
  ∀ n, P4514850295399263827.a n = A023890 (n + 1)

theorem P4514850295399263827.correct : P4514850295399263827.Spec := by
  intro n
  simp only [A023890, Nat.add_sub_cancel]

end A023890

/-! ## A023890.P8907576667943729372

`∑{d}[n+1, #]-∑{p}[n+1, #]`
-/

namespace A023890.P8907576667943729372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ)

end

end A023890.P8907576667943729372

namespace A023890

/-- `∑{d}[n+1, #]-∑{p}[n+1, #]` -/
def P8907576667943729372.Spec : Prop :=
  ∀ n, P8907576667943729372.a n = A023890 (n + 1)

end A023890

/-! ## A023890.P8184641777495945189

`∑{d}[n+1, A191558(#)]`
-/

namespace A023890.P8184641777495945189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A191558 d

end

end A023890.P8184641777495945189

namespace A023890

/-- `∑{d}[n+1, A191558(#)]` -/
def P8184641777495945189.Spec : Prop :=
  ∀ n, P8184641777495945189.a n = A023890 (n + 1)

end A023890

/-! ## A023890.P7685048714838042465

`∑{d}[n+1, #*A005171(#)]`
-/

namespace A023890.P7685048714838042465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A005171 d

end

end A023890.P7685048714838042465

namespace A023890

/-- `∑{d}[n+1, #*A005171(#)]` -/
def P7685048714838042465.Spec : Prop :=
  ∀ n, P7685048714838042465.a n = A023890 (n + 1)

end A023890

/-! ## A023890.P18042360702079518525

`∑{d}[n+1, #]-A008475(∏{p}[n+1, #])`
-/

namespace A023890.P18042360702079518525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A008475 (∏ p ∈ Nat.primeFactors (f2 n), p)

end

end A023890.P18042360702079518525

namespace A023890

/-- `∑{d}[n+1, #]-A008475(∏{p}[n+1, #])` -/
def P18042360702079518525.Spec : Prop :=
  ∀ n, P18042360702079518525.a n = A023890 (n + 1)

end A023890

/-! ## A023890.P6607839134954144369

`A000203(n+1)-Δ[A024924(n)]`
-/

namespace A023890.P6607839134954144369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (f1 (n + 1) - f1 n)

end

end A023890.P6607839134954144369

namespace A023890

/-- `A000203(n+1)-Δ[A024924(n)]` -/
def P6607839134954144369.Spec : Prop :=
  ∀ n, P6607839134954144369.a n = A023890 (n + 1)

end A023890

/-! ## A023890.P1097891233007206641

`Δ[A160664(n)]-A008472(n+1)`
-/

namespace A023890.P1097891233007206641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A008472 (n + 1)

end

end A023890.P1097891233007206641

namespace A023890

/-- `Δ[A160664(n)]-A008472(n+1)` -/
def P1097891233007206641.Spec : Prop :=
  ∀ n, P1097891233007206641.a n = A023890 (n + 1)

end A023890

/-! ## A023890.P14235372132388192111

`A076694(n+1)+A001065(n+1)`
-/

namespace A023890.P14235372132388192111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076694 (n + 1) + A001065 (n + 1)

end

end A023890.P14235372132388192111

namespace A023890

/-- `A076694(n+1)+A001065(n+1)` -/
def P14235372132388192111.Spec : Prop :=
  ∀ n, P14235372132388192111.a n = A023890 (n + 1)

end A023890

/-! ## A023890.P9925925772876467329

`A280292(n+1)+A086665(n+1)`
-/

namespace A023890.P9925925772876467329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280292 (n + 1) + A086665 (n + 1)

end

end A023890.P9925925772876467329

namespace A023890

/-- `A280292(n+1)+A086665(n+1)` -/
def P9925925772876467329.Spec : Prop :=
  ∀ n, P9925925772876467329.a n = A023890 (n + 1)

end A023890

/-! ## A023890.P11159733733836031868

`A367175(n+1)+A008472(n+1)`
-/

namespace A023890.P11159733733836031868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367175 (n + 1) + A008472 (n + 1)

end

end A023890.P11159733733836031868

namespace A023890

/-- `A367175(n+1)+A008472(n+1)` -/
def P11159733733836031868.Spec : Prop :=
  ∀ n, P11159733733836031868.a n = A023890 (n + 1)

end A023890

/-! ## A023890.P6294365354371400118

`A206773(n+1)+A191558(n+1)`
-/

namespace A023890.P6294365354371400118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206773 (n + 1) + A191558 (n + 1)

end

end A023890.P6294365354371400118

namespace A023890

/-- `A206773(n+1)+A191558(n+1)` -/
def P6294365354371400118.Spec : Prop :=
  ∀ n, P6294365354371400118.a n = A023890 (n + 1)

end A023890

/-! ## A023890.P6550147071513546685

`A284118(n+1)+A162296(n+1)`
-/

namespace A023890.P6550147071513546685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284118 (n + 1) + A162296 (n + 1)

end

end A023890.P6550147071513546685

namespace A023890

/-- `A284118(n+1)+A162296(n+1)` -/
def P6550147071513546685.Spec : Prop :=
  ∀ n, P6550147071513546685.a n = A023890 (n + 1)

end A023890

/-! ## A023890.P9751776522017738601

`A284117(n+1)+A178637(n+1)`
-/

namespace A023890.P9751776522017738601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284117 (n + 1) + A178637 (n + 1)

end

end A023890.P9751776522017738601

namespace A023890

/-- `A284117(n+1)+A178637(n+1)` -/
def P9751776522017738601.Spec : Prop :=
  ∀ n, P9751776522017738601.a n = A023890 (n + 1)

end A023890

/-! ## A023890.P11132933543961902921

`A088580(n+1)-A074372(n+1)`
-/

namespace A023890.P11132933543961902921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - A074372 (n + 1)

end

end A023890.P11132933543961902921

namespace A023890

/-- `A088580(n+1)-A074372(n+1)` -/
def P11132933543961902921.Spec : Prop :=
  ∀ n, P11132933543961902921.a n = A023890 (n + 1)

end A023890

/-! ## A023890.P12827115612218022802

`A155085(n+1)-A075653(n+1)`
-/

namespace A023890.P12827115612218022802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - A075653 (n + 1)

end

end A023890.P12827115612218022802

namespace A023890

/-- `A155085(n+1)-A075653(n+1)` -/
def P12827115612218022802.Spec : Prop :=
  ∀ n, P12827115612218022802.a n = A023890 (n + 1)

end A023890

/-! ## A023890.P60290436793410493

`A380441(n+1)-A001221(n+1)`
-/

namespace A023890.P60290436793410493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380441 (n + 1) - A001221 (n + 1)

end

end A023890.P60290436793410493

namespace A023890

/-- `A380441(n+1)-A001221(n+1)` -/
def P60290436793410493.Spec : Prop :=
  ∀ n, P60290436793410493.a n = A023890 (n + 1)

end A023890

/-! ## A023890.P2351638987699219661

`A380444(n+1)-A005063(n+1)`
-/

namespace A023890.P2351638987699219661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380444 (n + 1) - A005063 (n + 1)

end

end A023890.P2351638987699219661

namespace A023890

/-- `A380444(n+1)-A005063(n+1)` -/
def P2351638987699219661.Spec : Prop :=
  ∀ n, P2351638987699219661.a n = A023890 (n + 1)

end A023890

/-! ## A023890.P12065246342323877833

`A351827(n+1)-A034387(n+1)`
-/

namespace A023890.P12065246342323877833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351827 (n + 1) - A034387 (n + 1)

end

end A023890.P12065246342323877833

namespace A023890

/-- `A351827(n+1)-A034387(n+1)` -/
def P12065246342323877833.Spec : Prop :=
  ∀ n, P12065246342323877833.a n = A023890 (n + 1)

end A023890

/-! ## A023890.P14814103674846357931

`sqrt(A072861(n+1))-A008472(n+1)`
-/

namespace A023890.P14814103674846357931
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ) - (A008472 (n + 1) : ℝ)

end

end A023890.P14814103674846357931

namespace A023890

/-- `sqrt(A072861(n+1))-A008472(n+1)` -/
def P14814103674846357931.Spec : Prop :=
  ∀ n, P14814103674846357931.a n = (A023890 (n + 1) : ℝ)

end A023890

/-!
# A023891: Sum of composite divisors of n.

The programs for A023891, the canonical program `A023891.P8679455862173637145` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023891 has offset 1).

The definition of A023891 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023890, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023891.P8679455862173637145

`A023890(n+1)-1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023891

/-- `A023890(n+1)-1` -/
def P8679455862173637145.Spec : Prop :=
  ∀ n, P8679455862173637145.a n = A023891 (n + 1)

theorem P8679455862173637145.correct : P8679455862173637145.Spec := by
  intro n
  simp only [A023891, Nat.add_sub_cancel]

end A023891

/-! ## A023891.P5861245906063659094

`A000203(n+1)-A074372(n+1)`
-/

namespace A023891.P5861245906063659094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A074372 (n + 1)

end

end A023891.P5861245906063659094

namespace A023891

/-- `A000203(n+1)-A074372(n+1)` -/
def P5861245906063659094.Spec : Prop :=
  ∀ n, P5861245906063659094.a n = A023891 (n + 1)

end A023891

/-! ## A023891.P1408013529623645728

`∑{d}[n+1, #]-(∑{p}[n+1, #]+1)`
-/

namespace A023891.P1408013529623645728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), p + 1 : ℕ) : ℤ)

end

end A023891.P1408013529623645728

namespace A023891

/-- `∑{d}[n+1, #]-(∑{p}[n+1, #]+1)` -/
def P1408013529623645728.Spec : Prop :=
  ∀ n, P1408013529623645728.a n = A023891 (n + 1)

end A023891

/-! ## A023891.P12529459928955604237

`∑{d}[n+1, A191558(#)]-1`
-/

namespace A023891.P12529459928955604237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A191558 d - 1

end

end A023891.P12529459928955604237

namespace A023891

/-- `∑{d}[n+1, A191558(#)]-1` -/
def P12529459928955604237.Spec : Prop :=
  ∀ n, P12529459928955604237.a n = A023891 (n + 1)

end A023891

/-! ## A023891.P17845364297019880371

`∑{d}[n+1, #*A066247(#)]`
-/

namespace A023891.P17845364297019880371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A066247 d

end

end A023891.P17845364297019880371

namespace A023891

/-- `∑{d}[n+1, #*A066247(#)]` -/
def P17845364297019880371.Spec : Prop :=
  ∀ n, P17845364297019880371.a n = A023891 (n + 1)

end A023891

/-! ## A023891.P8681549097022416602

`A039653(n+1)-∑{p}[n+1, #]`
-/

namespace A023891.P8681549097022416602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)

end

end A023891.P8681549097022416602

namespace A023891

/-- `A039653(n+1)-∑{p}[n+1, #]` -/
def P8681549097022416602.Spec : Prop :=
  ∀ n, P8681549097022416602.a n = A023891 (n + 1)

end A023891

/-! ## A023891.P12491275509326097460

`∑{d}[n+1, #*A005171(#)]-1`
-/

namespace A023891.P12491275509326097460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A005171 d - 1

end

end A023891.P12491275509326097460

namespace A023891

/-- `∑{d}[n+1, #*A005171(#)]-1` -/
def P12491275509326097460.Spec : Prop :=
  ∀ n, P12491275509326097460.a n = A023891 (n + 1)

end A023891

/-! ## A023891.P14327456620068401861

`A001065(n+1)+n-∑{p}[n+1, #]`
-/

namespace A023891.P14327456620068401861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + ((n : ℤ) - ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ))

end

end A023891.P14327456620068401861

namespace A023891

/-- `A001065(n+1)+n-∑{p}[n+1, #]` -/
def P14327456620068401861.Spec : Prop :=
  ∀ n, P14327456620068401861.a n = A023891 (n + 1)

end A023891

/-! ## A023891.P18048487701055011303

`A284117(n+1)+A035321(n+1)`
-/

namespace A023891.P18048487701055011303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284117 (n + 1) + A035321 (n + 1)

end

end A023891.P18048487701055011303

namespace A023891

/-- `A284117(n+1)+A035321(n+1)` -/
def P18048487701055011303.Spec : Prop :=
  ∀ n, P18048487701055011303.a n = A023891 (n + 1)

end A023891

/-! ## A023891.P15877341848747999049

`A155085(n+1)-A254340(n+1)`
-/

namespace A023891.P15877341848747999049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - A254340 (n + 1)

end

end A023891.P15877341848747999049

namespace A023891

/-- `A155085(n+1)-A254340(n+1)` -/
def P15877341848747999049.Spec : Prop :=
  ∀ n, P15877341848747999049.a n = A023891 (n + 1)

end A023891

/-! ## A023891.P17030609732469329724

`A380441(n+1)-A083399(n+1)`
-/

namespace A023891.P17030609732469329724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380441 (n + 1) - A083399 (n + 1)

end

end A023891.P17030609732469329724

namespace A023891

/-- `A380441(n+1)-A083399(n+1)` -/
def P17030609732469329724.Spec : Prop :=
  ∀ n, P17030609732469329724.a n = A023891 (n + 1)

end A023891

/-! ## A023891.P10716286396362276425

`A351827(n+1)-A158662(n+1)`
-/

namespace A023891.P10716286396362276425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351827 (n + 1) - A158662 (n + 1)

end

end A023891.P10716286396362276425

namespace A023891

/-- `A351827(n+1)-A158662(n+1)` -/
def P10716286396362276425.Spec : Prop :=
  ∀ n, P10716286396362276425.a n = A023891 (n + 1)

end A023891

/-! ## A023891.P1460352419957235374

`A239668(n+1)-A320059(n+1)`
-/

namespace A023891.P1460352419957235374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239668 (n + 1) - A320059 (n + 1)

end

end A023891.P1460352419957235374

namespace A023891

/-- `A239668(n+1)-A320059(n+1)` -/
def P1460352419957235374.Spec : Prop :=
  ∀ n, P1460352419957235374.a n = A023891 (n + 1)

end A023891

/-! ## A023891.P10649952045111957256

`A000203(n+1)-(Δ[A024924(n)]+1)`
-/

namespace A023891.P10649952045111957256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (f1 (n + 1) - f1 n + 1)

end

end A023891.P10649952045111957256

namespace A023891

/-- `A000203(n+1)-(Δ[A024924(n)]+1)` -/
def P10649952045111957256.Spec : Prop :=
  ∀ n, P10649952045111957256.a n = A023891 (n + 1)

end A023891

/-! ## A023891.P1169987257066044289

`A000203(n+1)-(A008472(n+1)+1)`
-/

namespace A023891.P1169987257066044289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A008472 (n + 1) + 1)

end

end A023891.P1169987257066044289

namespace A023891

/-- `A000203(n+1)-(A008472(n+1)+1)` -/
def P1169987257066044289.Spec : Prop :=
  ∀ n, P1169987257066044289.a n = A023891 (n + 1)

end A023891

/-! ## A023891.P13009280224160990910

`A001065(n+1)+A076694(n+1)-1`
-/

namespace A023891.P13009280224160990910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (A076694 (n + 1) - 1)

end

end A023891.P13009280224160990910

namespace A023891

/-- `A001065(n+1)+A076694(n+1)-1` -/
def P13009280224160990910.Spec : Prop :=
  ∀ n, P13009280224160990910.a n = A023891 (n + 1)

end A023891

/-! ## A023891.P15499913361282605973

`A088580(n+1)-(A074372(n+1)+1)`
-/

namespace A023891.P15499913361282605973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A074372 (n + 1) + 1)

end

end A023891.P15499913361282605973

namespace A023891

/-- `A088580(n+1)-(A074372(n+1)+1)` -/
def P15499913361282605973.Spec : Prop :=
  ∀ n, P15499913361282605973.a n = A023891 (n + 1)

end A023891

/-! ## A023891.P5242793718702082234

`A155085(n+1)-(A075653(n+1)+1)`
-/

namespace A023891.P5242793718702082234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - (A075653 (n + 1) + 1)

end

end A023891.P5242793718702082234

namespace A023891

/-- `A155085(n+1)-(A075653(n+1)+1)` -/
def P5242793718702082234.Spec : Prop :=
  ∀ n, P5242793718702082234.a n = A023891 (n + 1)

end A023891

/-! ## A023891.P16342441795141431219

`A086665(n+1)+A280292(n+1)-1`
-/

namespace A023891.P16342441795141431219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086665 (n + 1) + (A280292 (n + 1) - 1)

end

end A023891.P16342441795141431219

namespace A023891

/-- `A086665(n+1)+A280292(n+1)-1` -/
def P16342441795141431219.Spec : Prop :=
  ∀ n, P16342441795141431219.a n = A023891 (n + 1)

end A023891

/-! ## A023891.P12202389208097979094

`A008472(n+1)+A367175(n+1)-1`
-/

namespace A023891.P12202389208097979094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) + (A367175 (n + 1) - 1)

end

end A023891.P12202389208097979094

namespace A023891

/-- `A008472(n+1)+A367175(n+1)-1` -/
def P12202389208097979094.Spec : Prop :=
  ∀ n, P12202389208097979094.a n = A023891 (n + 1)

end A023891

/-!
# A023893: Number of partitions of n into prime power parts (1 included); number of nonisomorphic Abelian subgroups of symmetric group S_n.

The programs for A023893, there is no canonical definition to state claims against.
-/

/-! ## A023893.P15190259384549991412

`∑[A023894(n)]`
-/

namespace A023893.P15190259384549991412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023893.P15190259384549991412

/-! ## A023893.P3095496375354809717

`A023894(char[2]+n)+a(n-1)` with `a(0)=1`
-/

namespace A023893.P3095496375354809717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A023894 ((if ∃ j, f1 j = n then 1 else 0) + n) + a (n - 1)

end

end A023893.P3095496375354809717

/-! ## A023893.P8573128517130772606

`a(n-1)+A023894(n)+A000007(n)` with `a(0)=1`
-/

namespace A023893.P8573128517130772606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A023894 n + A000007 n)

end

end A023893.P8573128517130772606

/-! ## A023893.P11035891676024596973

`a(n-1)+A023894(n)+A000038(n)²` with `a(0)=1`
-/

namespace A023893.P11035891676024596973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A023894 n + A000038 n ^ 2)

end

end A023893.P11035891676024596973

/-! ## A023893.P15155387592174523420

`a(n-1)+A023894(n)%A068525(n+2)` with `a(0)=1`
-/

namespace A023893.P15155387592174523420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A023894 n) (A068525 (n + 2))

end

end A023893.P15155387592174523420

/-! ## A023893.P6365418026502873623

`a(n-1)+A023894(n)%A160999(n)` with `a(0)=1`
-/

namespace A023893.P6365418026502873623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A023894 n) (A160999 n)

end

end A023893.P6365418026502873623

/-!
# A023894: Number of partitions of n into prime power parts (1 excluded).

The programs for A023894, there is no canonical definition to state claims against.
-/

/-! ## A023894.P7306493309619288694

`A285799(n)-A025456(A185255(n))`
-/

namespace A023894.P7306493309619288694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285799 n - A025456 (A185255 n).toNat

end

end A023894.P7306493309619288694

/-! ## A023894.P1248757008003049286

`A285799(n)-A297155(A034461(n+1)!)`
-/

namespace A023894.P1248757008003049286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285799 n - A297155 (Nat.factorial (A034461 (n + 1)).toNat)

end

end A023894.P1248757008003049286

/-! ## A023894.P13282047703938459983

`A285799(n)-A185284(A094994(n))`
-/

namespace A023894.P13282047703938459983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285799 n - A185284 (A094994 n).toNat

end

end A023894.P13282047703938459983

/-! ## A023894.P15814840246892245937

`A285799(n)-A340998(A099597(n))`
-/

namespace A023894.P15814840246892245937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285799 n - A340998 ((A099597 n).toNat + 140)

end

end A023894.P15814840246892245937

/-! ## A023894.P7098676423161471390

`A285799(n)%A002907(n)`
-/

namespace A023894.P7098676423161471390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285799 n) (A002907 n)

end

end A023894.P7098676423161471390

/-!
# A023895: Number of partitions of n into composite parts.

The programs for A023895, there is no canonical definition to state claims against.
-/

/-! ## A023895.P3367714410193671074

`Δ[A222656(A002620(n))]+C(2, n+2)`
-/

namespace A023895.P3367714410193671074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222656 (A002620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.choose 2 (n + 2) : ℤ)

end

end A023895.P3367714410193671074

/-! ## A023895.P13795180283032478519

`A000007(n)+Δ[A222656(A002620(n))]`
-/

namespace A023895.P13795180283032478519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222656 (A002620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A023895.P13795180283032478519

/-! ## A023895.P12132110957310977167

`Δ[A222656(A002620(n))+A057427(n)]`
-/

namespace A023895.P12132110957310977167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222656 (A002620 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A023895.P12132110957310977167

/-! ## A023895.P12796059061776113856

`Δ[A222656(A002620(n))-A057428(n)]`
-/

namespace A023895.P12796059061776113856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222656 (A002620 n).toNat - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A023895.P12796059061776113856

/-! ## A023895.P4848179052146035542

`Δ[A222656(A002620(n))%A002604(n)]`
-/

namespace A023895.P4848179052146035542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222656 (A002620 n).toNat) (A002604 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A023895.P4848179052146035542

/-! ## A023895.P5482800618417524562

`A036987(2*n)+Δ[A222656(A002620(n))]`
-/

namespace A023895.P5482800618417524562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222656 (A002620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n) + (f1 (n + 1) - f1 n)

end

end A023895.P5482800618417524562

/-! ## A023895.P13779122147366620177

`Δ[A222656(A002620(n))]^A019428(2*n)`
-/

namespace A023895.P13779122147366620177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222656 (A002620 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A019428 (2 * n) : ℤ)

end

end A023895.P13779122147366620177

/-! ## A023895.P7836123863955046691

`A010051(2*(n+1))+Δ[A222656(A002620(n))]`
-/

namespace A023895.P7836123863955046691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222656 (A002620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1)) + (f1 (n + 1) - f1 n)

end

end A023895.P7836123863955046691

/-! ## A023895.P11862576632870676113

`Δ[A222656(A002620(n))]-A008683(2*(n+1)²)`
-/

namespace A023895.P11862576632870676113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222656 (A002620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A008683 (2 * (n + 1) ^ 2)

end

end A023895.P11862576632870676113

/-!
# A023896: Sum of positive integers in smallest positive reduced residue system modulo n. a(1) = 1 by convention.

The programs for A023896, the canonical program `A023896.P10594219463258781009` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023896 has offset 1).

The definition of A023896 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023896.P8314020091824171294

`A053818(n+1)*A175506(n+1)/A175505(n+1)`
-/

namespace A023896.P8314020091824171294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053818 (n + 1) * A175506 (n + 1) : ℚ) / (A175505 (n + 1) : ℚ)

end

end A023896.P8314020091824171294

namespace A023896

/-- `A053818(n+1)*A175506(n+1)/A175505(n+1)` -/
def P8314020091824171294.Spec : Prop :=
  ∀ n, P8314020091824171294.a n = (A023896 (n + 1) : ℚ)

end A023896

/-! ## A023896.P10594219463258781009

`ceil((n+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]/2)`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023896

/-- `ceil((n+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]/2)` -/
def P10594219463258781009.Spec : Prop :=
  ∀ n, P10594219463258781009.a n = A023896 (n + 1)

theorem P10594219463258781009.correct : P10594219463258781009.Spec := by
  intro n
  simp only [A023896, Nat.add_sub_cancel]

end A023896

/-! ## A023896.P6745059129575706821

`A109607(n+1)+1`
-/

namespace A023896.P6745059129575706821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109607 (n + 1) + 1

end

end A023896.P6745059129575706821

namespace A023896

/-- `A109607(n+1)+1` -/
def P6745059129575706821.Spec : Prop :=
  ∀ n, P6745059129575706821.a n = A023896 (n + 1)

end A023896

/-! ## A023896.P13563178547627232531

`floor(A046152(n+1)/2)`
-/

namespace A023896.P13563178547627232531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046152 (n + 1) : ℚ) / 2⌋

end

end A023896.P13563178547627232531

namespace A023896

/-- `floor(A046152(n+1)/2)` -/
def P13563178547627232531.Spec : Prop :=
  ∀ n, P13563178547627232531.a n = A023896 (n + 1)

end A023896

/-! ## A023896.P2429011964950715620

`ceil(A002618(n+1)/2)`
-/

namespace A023896.P2429011964950715620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002618 (n + 1) : ℚ) / 2⌉

end

end A023896.P2429011964950715620

namespace A023896

/-- `ceil(A002618(n+1)/2)` -/
def P2429011964950715620.Spec : Prop :=
  ∀ n, P2429011964950715620.a n = A023896 (n + 1)

end A023896

/-! ## A023896.P10235990653163168164

`ceil(A071118(n+1)/4)`
-/

namespace A023896.P10235990653163168164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A071118 (n + 1) : ℚ) / 4⌉

end

end A023896.P10235990653163168164

namespace A023896

/-- `ceil(A071118(n+1)/4)` -/
def P10235990653163168164.Spec : Prop :=
  ∀ n, P10235990653163168164.a n = A023896 (n + 1)

end A023896

/-! ## A023896.P14202437580029341555

`A308474(n+1)/(n+1)²`
-/

namespace A023896.P14202437580029341555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308474 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A023896.P14202437580029341555

namespace A023896

/-- `A308474(n+1)/(n+1)²` -/
def P14202437580029341555.Spec : Prop :=
  ∀ n, P14202437580029341555.a n = (A023896 (n + 1) : ℚ)

end A023896

/-! ## A023896.P7517267328286579222

`∑[n+1]-A067392(n+1)`
-/

namespace A023896.P7517267328286579222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A067392 (n + 1)

end

end A023896.P7517267328286579222

namespace A023896

/-- `∑[n+1]-A067392(n+1)` -/
def P7517267328286579222.Spec : Prop :=
  ∀ n, P7517267328286579222.a n = A023896 (n + 1)

end A023896

/-! ## A023896.P13444949005629841027

`round((n+1)*Δ[A002088(n)]/2)`
-/

namespace A023896.P13444949005629841027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1 : ℤ) * (f1 (n + 1) - f1 n) : ℚ) / 2)

end

end A023896.P13444949005629841027

namespace A023896

/-- `round((n+1)*Δ[A002088(n)]/2)` -/
def P13444949005629841027.Spec : Prop :=
  ∀ n, P13444949005629841027.a n = A023896 (n + 1)

end A023896

/-! ## A023896.P14768089952202773290

`ceil((n+1)/2*A000010(n+1))`
-/

namespace A023896.P14768089952202773290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 2 * (A000010 (n + 1) : ℚ)⌉

end

end A023896.P14768089952202773290

namespace A023896

/-- `ceil((n+1)/2*A000010(n+1))` -/
def P14768089952202773290.Spec : Prop :=
  ∀ n, P14768089952202773290.a n = A023896 (n + 1)

end A023896

/-! ## A023896.P16670362417666584733

`ceil((n+1)*(A109606(n+1)+1)/2)`
-/

namespace A023896.P16670362417666584733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1 : ℤ) * (A109606 (n + 1) + 1) : ℚ) / 2⌉

end

end A023896.P16670362417666584733

namespace A023896

/-- `ceil((n+1)*(A109606(n+1)+1)/2)` -/
def P16670362417666584733.Spec : Prop :=
  ∀ n, P16670362417666584733.a n = A023896 (n + 1)

end A023896

/-! ## A023896.P17489410509282546235

`A064400(n+1)/A040006(n)`
-/

namespace A023896.P17489410509282546235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064400 (n + 1) : ℚ) / (A040006 n : ℚ)

end

end A023896.P17489410509282546235

namespace A023896

/-- `A064400(n+1)/A040006(n)` -/
def P17489410509282546235.Spec : Prop :=
  ∀ n, P17489410509282546235.a n = (A023896 (n + 1) : ℚ)

end A023896

/-! ## A023896.P13656652859615862283

`A071118(n+1)/A040002(n)`
-/

namespace A023896.P13656652859615862283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071118 (n + 1) : ℚ) / (A040002 n : ℚ)

end

end A023896.P13656652859615862283

namespace A023896

/-- `A071118(n+1)/A040002(n)` -/
def P13656652859615862283.Spec : Prop :=
  ∀ n, P13656652859615862283.a n = (A023896 (n + 1) : ℚ)

end A023896

/-! ## A023896.P3774798869050631829

`A053191(n+1)/A103517(n)`
-/

namespace A023896.P3774798869050631829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053191 (n + 1) : ℚ) / (A103517 n : ℚ)

end

end A023896.P3774798869050631829

namespace A023896

/-- `A053191(n+1)/A103517(n)` -/
def P3774798869050631829.Spec : Prop :=
  ∀ n, P3774798869050631829.a n = (A023896 (n + 1) : ℚ)

end A023896

/-! ## A023896.P18234064054450697739

`A000096(n)+1-A067392(n+1)`
-/

namespace A023896.P18234064054450697739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + (1 - A067392 (n + 1))

end

end A023896.P18234064054450697739

namespace A023896

/-- `A000096(n)+1-A067392(n+1)` -/
def P18234064054450697739.Spec : Prop :=
  ∀ n, P18234064054450697739.a n = A023896 (n + 1)

end A023896

/-! ## A023896.P2280973689330454806

`A345091(n+1)-A051953(n+1)`
-/

namespace A023896.P2280973689330454806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345091 (n + 1) - A051953 (n + 1)

end

end A023896.P2280973689330454806

namespace A023896

/-- `A345091(n+1)-A051953(n+1)` -/
def P2280973689330454806.Spec : Prop :=
  ∀ n, P2280973689330454806.a n = A023896 (n + 1)

end A023896

/-! ## A023896.P12029742939959207594

`A179865(n+1)-A308473(n+1)`
-/

namespace A023896.P12029742939959207594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (n + 1) - A308473 (n + 1)

end

end A023896.P12029742939959207594

namespace A023896

/-- `A179865(n+1)-A308473(n+1)` -/
def P12029742939959207594.Spec : Prop :=
  ∀ n, P12029742939959207594.a n = A023896 (n + 1)

end A023896

/-! ## A023896.P10907391701665007464

`A026741(n+1)*A055034(n+1)`
-/

namespace A023896.P10907391701665007464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1) * A055034 (n + 1)

end

end A023896.P10907391701665007464

namespace A023896

/-- `A026741(n+1)*A055034(n+1)` -/
def P10907391701665007464.Spec : Prop :=
  ∀ n, P10907391701665007464.a n = A023896 (n + 1)

end A023896

/-! ## A023896.P6596612316918089901

`A048671(n+1)*A092502(n+1)`
-/

namespace A023896.P6596612316918089901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (n + 1) * A092502 (n + 1)

end

end A023896.P6596612316918089901

namespace A023896

/-- `A048671(n+1)*A092502(n+1)` -/
def P6596612316918089901.Spec : Prop :=
  ∀ n, P6596612316918089901.a n = A023896 (n + 1)

end A023896

/-!
# A023897: a(n) = sigma_1(k) / phi(k) where k = A020492(n) is the n-th balanced number.

The programs for A023897, there is no canonical definition to state claims against.
-/

/-! ## A023897.P3788307452845464308

`A147569(n+1)/A147570(n+1)`
-/

namespace A023897.P3788307452845464308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147569 (n + 1) : ℚ) / (A147570 (n + 1) : ℚ)

end

end A023897.P3788307452845464308

/-! ## A023897.P4981432497308199794

`∑{d}[A020492(n+1), #/A147570(n+1)]`
-/

namespace A023897.P4981432497308199794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) / (A147570 (n + 1) : ℚ)

end

end A023897.P4981432497308199794

/-! ## A023897.P11176803516539023835

`A147569(n+1)/A000010(A020492(n+1))`
-/

namespace A023897.P11176803516539023835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147569 (n + 1) : ℚ) / (A000010 (A020492 (n + 1)).toNat : ℚ)

end

end A023897.P11176803516539023835

/-! ## A023897.P10541108611207573913

`A000203(A020492(n+1))/A147570(n+1)`
-/

namespace A023897.P10541108611207573913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A020492 (n + 1)).toNat : ℚ) / (A147570 (n + 1) : ℚ)

end

end A023897.P10541108611207573913

/-! ## A023897.P2019643746480905145

`A147569(n+1)/A132952(lcm(2, A020492(n+1)))`
-/

namespace A023897.P2019643746480905145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147569 (n + 1) : ℚ) / (A132952 (Int.lcm 2 (A020492 (n + 1))) : ℚ)

end

end A023897.P2019643746480905145

/-! ## A023897.P2397169275023017966

`A070032(A020492(n+1))`
-/

namespace A023897.P2397169275023017966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070032 (A020492 (n + 1)).toNat

end

end A023897.P2397169275023017966

/-! ## A023897.P15784213031841177438

`A289336(A020492(2*n+1-n))`
-/

namespace A023897.P15784213031841177438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289336 (A020492 (2 * n + 1 - n)).toNat

end

end A023897.P15784213031841177438

/-!
# A023898: Numbers whose divisor balance is an integer.

The programs for A023898, there is no canonical definition to state claims against.
-/

/-! ## A023898.P4512848704835138772

`eq[A126760(n), A374438(A246661(n))]`
-/

namespace A023898.P4512848704835138772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374438 (A246661 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023898.P4512848704835138772

/-! ## A023898.P4115387886555160061

`eq[A036555(n), A218800(n)]`
-/

namespace A023898.P4115387886555160061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036555 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023898.P4115387886555160061

/-! ## A023898.P14292143033307366365

`eq[A126760(n), A384883(n)]`
-/

namespace A023898.P14292143033307366365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384883 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023898.P14292143033307366365

/-! ## A023898.P1282871222198655822

`eq[A000120(3*n), A218800(n)]`
-/

namespace A023898.P1282871222198655822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023898.P1282871222198655822

/-! ## A023898.P9413652219684316301

`∩[A010443(n+1), A097273(n+1)]`
-/

namespace A023898.P9413652219684316301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023898.P9413652219684316301

