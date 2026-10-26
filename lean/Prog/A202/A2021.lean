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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A202100: Square array read by antidiagonals: T(n,k) = Number of (n+2) X (k+2) binary arrays avoiding patterns 001 and 011 in rows and columns.

The programs for A202100, there is no canonical definition to state claims against.
-/

/-! ## A202100.P4799762656003836684

`A250432(eq[0, A103451(n)]+1)`
-/

namespace A202100.P4799762656003836684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250432 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A202100.P4799762656003836684

/-! ## A202100.P15173780487589967872

`A250432(eq[0, A134082(n)]+2)`
-/

namespace A202100.P15173780487589967872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134082 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250432 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A202100.P15173780487589967872

/-! ## A202100.P11577751527087021261

`A250432(A140978(n+1)+1-n)`
-/

namespace A202100.P11577751527087021261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250432 (A140978 (n + 1) + (1 - (n : ℤ))).toNat

end

end A202100.P11577751527087021261

/-! ## A202100.P1613371307533699005

`A250432(eq[n, A316669(n+1)]+1)`
-/

namespace A202100.P1613371307533699005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250432 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A202100.P1613371307533699005

/-! ## A202100.P17172012303910423380

`A250432((A002024(n+1)+1)²-n+1)`
-/

namespace A202100.P17172012303910423380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250432 ((A002024 (n + 1) + 1) ^ 2 - (n : ℤ) + 1).toNat

end

end A202100.P17172012303910423380

/-!
# A202101: Numbers k such that 90*k + 59 is prime.

The programs for A202101, there is no canonical definition to state claims against.
-/

/-! ## A202101.P4351117658782959973

`eq[2, A060324(A008592(3*n+2))]`
-/

namespace A202101.P4351117658782959973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060324 (A008592 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202101.P4351117658782959973

/-!
# A202104: Numbers k such that 90*k + 41 is prime.

The programs for A202104, the canonical program `A202104.P3754480420212537836` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202104 has offset 1).

The definition of A202104 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202104.P3754480420212537836

`floor(A142333(n+1)/90)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A202104

/-- `floor(A142333(n+1)/90)` -/
def P3754480420212537836.Spec : Prop :=
  ∀ n, P3754480420212537836.a n = A202104 (n + 1)

theorem P3754480420212537836.correct : P3754480420212537836.Spec := by
  intro n
  simp only [A202104, Nat.add_sub_cancel]

end A202104

/-! ## A202104.P13178814375973209802

`eq[1, A068695(9*n+4)]`
-/

namespace A202104.P13178814375973209802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (9 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202104.P13178814375973209802

namespace A202104

/-- `eq[1, A068695(9*n+4)]` -/
def P13178814375973209802.Spec : Prop :=
  ∀ n, (P13178814375973209802.a n : ℤ) = A202104 (n + 1)

end A202104

/-! ## A202104.P13521532959260513107

`eq[1, A091088(A017197(n)+1)]`
-/

namespace A202104.P13521532959260513107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 (A017197 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202104.P13521532959260513107

namespace A202104

/-- `eq[1, A091088(A017197(n)+1)]` -/
def P13521532959260513107.Spec : Prop :=
  ∀ n, (P13521532959260513107.a n : ℤ) = A202104 (n + 1)

end A202104

/-! ## A202104.P11616469315753464674

`eq[1, A075743(A082369(n+1))]`
-/

namespace A202104.P11616469315753464674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A082369 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202104.P11616469315753464674

namespace A202104

/-- `eq[1, A075743(A082369(n+1))]` -/
def P11616469315753464674.Spec : Prop :=
  ∀ n, (P11616469315753464674.a n : ℤ) = A202104 (n + 1)

end A202104

/-! ## A202104.P3934766658433910043

`eq[1, A091088(A017221(n)-1)]`
-/

namespace A202104.P3934766658433910043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 (A017221 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202104.P3934766658433910043

namespace A202104

/-- `eq[1, A091088(A017221(n)-1)]` -/
def P3934766658433910043.Spec : Prop :=
  ∀ n, (P3934766658433910043.a n : ℤ) = A202104 (n + 1)

end A202104

/-!
# A202105: Numbers k such that 90*k + 43 is prime.

The programs for A202105, the canonical program `A202105.P10023659515143201674` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202105 has offset 1).

The definition of A202105 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202105.P10023659515143201674

`floor(A142334(n+1)/90)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A202105

/-- `floor(A142334(n+1)/90)` -/
def P10023659515143201674.Spec : Prop :=
  ∀ n, P10023659515143201674.a n = A202105 (n + 1)

theorem P10023659515143201674.correct : P10023659515143201674.Spec := by
  intro n
  simp only [A202105, Nat.add_sub_cancel]

end A202105

/-! ## A202105.P9194629054553728683

`eq[3, A096915(A017209(n))]`
-/

namespace A202105.P9194629054553728683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096915 (A017209 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202105.P9194629054553728683

namespace A202105

/-- `eq[3, A096915(A017209(n))]` -/
def P9194629054553728683.Spec : Prop :=
  ∀ n, (P9194629054553728683.a n : ℤ) = A202105 (n + 1)

end A202105

/-! ## A202105.P11171584121892896653

`eq[1, A075743(A257645(2*n))]`
-/

namespace A202105.P11171584121892896653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A257645 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202105.P11171584121892896653

namespace A202105

/-- `eq[1, A075743(A257645(2*n))]` -/
def P11171584121892896653.Spec : Prop :=
  ∀ n, (P11171584121892896653.a n : ℤ) = A202105 (n + 1)

end A202105

/-! ## A202105.P17580702545353847532

`eq[1, A075743(A082369(n+1)+1)]`
-/

namespace A202105.P17580702545353847532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A082369 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202105.P17580702545353847532

namespace A202105

/-- `eq[1, A075743(A082369(n+1)+1)]` -/
def P17580702545353847532.Spec : Prop :=
  ∀ n, (P17580702545353847532.a n : ℤ) = A202105 (n + 1)

end A202105

/-! ## A202105.P2544607423349797060

`eq[1, A001222(A082369(3*n+2))]`
-/

namespace A202105.P2544607423349797060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A082369 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202105.P2544607423349797060

namespace A202105

/-- `eq[1, A001222(A082369(3*n+2))]` -/
def P2544607423349797060.Spec : Prop :=
  ∀ n, (P2544607423349797060.a n : ℤ) = A202105 (n + 1)

end A202105

/-! ## A202105.P11124488588368166749

`eq[2, A000005(A301628(4*n+2))]`
-/

namespace A202105.P11124488588368166749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A301628 (4 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202105.P11124488588368166749

namespace A202105

/-- `eq[2, A000005(A301628(4*n+2))]` -/
def P11124488588368166749.Spec : Prop :=
  ∀ n, (P11124488588368166749.a n : ℤ) = A202105 (n + 1)

end A202105

/-! ## A202105.P13635504002528058526

`eq[1, A001221(A053743(n)-A017293(n))]`
-/

namespace A202105.P13635504002528058526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A053743 n - A017293 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202105.P13635504002528058526

namespace A202105

/-- `eq[1, A001221(A053743(n)-A017293(n))]` -/
def P13635504002528058526.Spec : Prop :=
  ∀ n, (P13635504002528058526.a n : ℤ) = A202105 (n + 1)

end A202105

/-! ## A202105.P1207213380003042900

`eq[2, A000005(A053743(n)-A017293(n))]`
-/

namespace A202105.P1207213380003042900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A053743 n - A017293 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202105.P1207213380003042900

namespace A202105

/-- `eq[2, A000005(A053743(n)-A017293(n))]` -/
def P1207213380003042900.Spec : Prop :=
  ∀ n, (P1207213380003042900.a n : ℤ) = A202105 (n + 1)

end A202105

/-! ## A202105.P6066535814908708545

`eq[2, A116933(A082369(n+1))]`
-/

namespace A202105.P6066535814908708545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116933 (A082369 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202105.P6066535814908708545

namespace A202105

/-- `eq[2, A116933(A082369(n+1))]` -/
def P6066535814908708545.Spec : Prop :=
  ∀ n, (P6066535814908708545.a n : ℤ) = A202105 (n + 1)

end A202105

/-!
# A202106: Smallest prime p such that 4n^2+p is prime.

The programs for A202106, there is no canonical definition to state claims against.
-/

/-! ## A202106.P9232653924082475573

`A300817(2*(n+1))`
-/

namespace A202106.P9232653924082475573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 (2 * (n + 1))

end

end A202106.P9232653924082475573

/-! ## A202106.P13864896077245433457

`p?[(n-1)%2*A300817(n)]`
-/

namespace A202106.P13864896077245433457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) 2 * A300817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A202106.P13864896077245433457

/-! ## A202106.P5150008689245091993

`p?[A022998(A300817(n))]`
-/

namespace A202106.P5150008689245091993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A300817 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A202106.P5150008689245091993

/-! ## A202106.P7221650766112412009

`filter[A300817(n), A000035(#)]`
-/

namespace A202106.P7221650766112412009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A202106.P7221650766112412009

/-! ## A202106.P3576148403195782674

`filter[A300817(n), A115971(#)]`
-/

namespace A202106.P3576148403195782674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115971 (f1 j).toNat = 1) n)

end

end A202106.P3576148403195782674

/-! ## A202106.P6421071430759685351

`filter[A300817(n), A252743(#)]`
-/

namespace A202106.P6421071430759685351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252743 (f1 j).toNat = 1) n)

end

end A202106.P6421071430759685351

/-! ## A202106.P18278068516594862930

`filter[A300817(n), A259044(#)]`
-/

namespace A202106.P18278068516594862930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A259044 (f1 j).toNat = 1) n)

end

end A202106.P18278068516594862930

/-! ## A202106.P8818318242363819334

`filter[A300817(n), A276950(#)]`
-/

namespace A202106.P8818318242363819334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276950 (f1 j).toNat = 1) n)

end

end A202106.P8818318242363819334

/-!
# A202107: a(n) = n^4*(n+1)^4/8.

The programs for A202107, the canonical program `A202107.P8836218848276096274` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202107 has offset 1).

The definition of A202107 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^4*(n+2)^4/8` (program `A202107.P6337284424789031099`, by `A202107.P6337284424789031099.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A202107.P6337284424789031099

`(n+1)^4*(n+2)^4/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A202107.P6337284424789031099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 4 * (n + 2) ^ 4 : ℚ) / 8

end

end A202107.P6337284424789031099

namespace A202107

/-- `(n+1)^4*(n+2)^4/8` -/
def P6337284424789031099.Spec : Prop :=
  ∀ n, P6337284424789031099.a n = (A202107 (n + 1) : ℚ)

theorem P6337284424789031099.correct : P6337284424789031099.Spec := by
  intro n
  simp only [A202107, Nat.add_sub_cancel, A202107.P6337284424789031099.a, A202107.P8836218848276096274.a, A059977, A059977.P3859055244849813430.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A202107

/-! ## A202107.P8836218848276096274

`2*A059977(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A202107

/-- `2*A059977(n)` -/
def P8836218848276096274.Spec : Prop :=
  ∀ n, P8836218848276096274.a n = A202107 (n + 1)

theorem P8836218848276096274.correct : P8836218848276096274.Spec := by
  intro n
  simp only [A202107, Nat.add_sub_cancel]

end A202107

/-! ## A202107.P994420051008804779

`2*A000217(n+1)^4`
-/

namespace A202107.P994420051008804779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000217 (n + 1) ^ 4

end

end A202107.P994420051008804779

namespace A202107

/-- `2*A000217(n+1)^4` -/
def P994420051008804779.Spec : Prop :=
  ∀ n, P994420051008804779.a n = A202107 (n + 1)

theorem P994420051008804779.correct : P994420051008804779.Spec := by
  intro n
  simp only [A202107, Nat.add_sub_cancel, A202107.P994420051008804779.a, A202107.P8836218848276096274.a, A000217, A000217.P10269402890581615239.a, A059977, A059977.P3859055244849813430.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A202107

/-! ## A202107.P4681457983228849120

`A000539(n+1)+A000541(n+1)`
-/

namespace A202107.P4681457983228849120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000539 (n + 1) + A000541 (n + 1)

end

end A202107.P4681457983228849120

namespace A202107

/-- `A000539(n+1)+A000541(n+1)` -/
def P4681457983228849120.Spec : Prop :=
  ∀ n, P4681457983228849120.a n = A202107 (n + 1)

end A202107

/-! ## A202107.P7954604259406139150

`lcm(2, 2*∑[n+1]²²)`
-/

namespace A202107.P7954604259406139150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (2 * ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2)

end

end A202107.P7954604259406139150

namespace A202107

/-- `lcm(2, 2*∑[n+1]²²)` -/
def P7954604259406139150.Spec : Prop :=
  ∀ n, (P7954604259406139150.a n : ℤ) = A202107 (n + 1)

end A202107

/-! ## A202107.P5025059909579268860

`(∑[n+1]²/cos(atan(1)))²`
-/

namespace A202107.P5025059909579268860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℝ) / Real.cos (Real.arctan (1 : ℝ))) ^ 2

end

end A202107.P5025059909579268860

namespace A202107

/-- `(∑[n+1]²/cos(atan(1)))²` -/
def P5025059909579268860.Spec : Prop :=
  ∀ n, P5025059909579268860.a n = (A202107 (n + 1) : ℝ)

end A202107

/-! ## A202107.P11860162841110627069

`(∑[n+1]²/sin(atan(1)))²`
-/

namespace A202107.P11860162841110627069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℝ) / Real.sin (Real.arctan (1 : ℝ))) ^ 2

end

end A202107.P11860162841110627069

namespace A202107

/-- `(∑[n+1]²/sin(atan(1)))²` -/
def P11860162841110627069.Spec : Prop :=
  ∀ n, P11860162841110627069.a n = (A202107 (n + 1) : ℝ)

end A202107

/-! ## A202107.P8349565183613721737

`(∑[n+1]²/cos(acot(1)))²`
-/

namespace A202107.P8349565183613721737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℝ) / Real.cos (SequenceMachineLib.acot (1 : ℝ))) ^ 2

end

end A202107.P8349565183613721737

namespace A202107

/-- `(∑[n+1]²/cos(acot(1)))²` -/
def P8349565183613721737.Spec : Prop :=
  ∀ n, P8349565183613721737.a n = (A202107 (n + 1) : ℝ)

end A202107

/-! ## A202107.P377640259113510037

`(∑[n+1]²/sin(acot(1)))²`
-/

namespace A202107.P377640259113510037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℝ) / Real.sin (SequenceMachineLib.acot (1 : ℝ))) ^ 2

end

end A202107.P377640259113510037

namespace A202107

/-- `(∑[n+1]²/sin(acot(1)))²` -/
def P377640259113510037.Spec : Prop :=
  ∀ n, P377640259113510037.a n = (A202107 (n + 1) : ℝ)

end A202107

/-! ## A202107.P4565797827385096592

`∑[2*Δ[C(n+1, 2)²²]]`
-/

namespace A202107.P4565797827385096592
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 2 ^ 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202107.P4565797827385096592

namespace A202107

/-- `∑[2*Δ[C(n+1, 2)²²]]` -/
def P4565797827385096592.Spec : Prop :=
  ∀ n, P4565797827385096592.a n = A202107 (n + 1)

end A202107

/-! ## A202107.P9492906248226819163

`floor(2*∑[a(n-1)+1]²²)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A202107.P9492906248226819163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2

end

end A202107.P9492906248226819163

namespace A202107

/-- `floor(2*∑[a(n-1)+1]²²)` -/
def P9492906248226819163.Spec : Prop :=
  ∀ n, (P9492906248226819163.a n : ℤ) = A202107 (n + 1)

end A202107

/-! ## A202107.P17498728820402529687

`xor(1, 2*(n+1-∑[n+2])²²+1)`
-/

namespace A202107.P17498728820402529687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * (((n + 1 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) ^ 2) ^ 2 + 1)

end

end A202107.P17498728820402529687

namespace A202107

/-- `xor(1, 2*(n+1-∑[n+2])²²+1)` -/
def P17498728820402529687.Spec : Prop :=
  ∀ n, P17498728820402529687.a n = A202107 (n + 1)

end A202107

/-! ## A202107.P9536174809439285170

`∑[2*A168364(n+1)]`
-/

namespace A202107.P9536174809439285170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202107.P9536174809439285170

namespace A202107

/-- `∑[2*A168364(n+1)]` -/
def P9536174809439285170.Spec : Prop :=
  ∀ n, P9536174809439285170.a n = A202107 (n + 1)

end A202107

/-! ## A202107.P5270018413020556076

`∑[(n+1)²*A155977(n+1)]`
-/

namespace A202107.P5270018413020556076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A155977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202107.P5270018413020556076

namespace A202107

/-- `∑[(n+1)²*A155977(n+1)]` -/
def P5270018413020556076.Spec : Prop :=
  ∀ n, P5270018413020556076.a n = A202107 (n + 1)

end A202107

/-! ## A202107.P4806143721293350719

`A059977(n)+A059980(n+1)/A059977(n)`
-/

namespace A202107.P4806143721293350719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059977 n : ℚ) + (A059980 (n + 1) : ℚ) / (A059977 n : ℚ)

end

end A202107.P4806143721293350719

namespace A202107

/-- `A059977(n)+A059980(n+1)/A059977(n)` -/
def P4806143721293350719.Spec : Prop :=
  ∀ n, P4806143721293350719.a n = (A202107 (n + 1) : ℚ)

end A202107

/-! ## A202107.P1149354871675270905

`A059977(n)+A059979(n+1)/A059827(n+1)`
-/

namespace A202107.P1149354871675270905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059977 n : ℚ) + (A059979 (n + 1) : ℚ) / (A059827 (n + 1) : ℚ)

end

end A202107.P1149354871675270905

namespace A202107

/-- `A059977(n)+A059979(n+1)/A059827(n+1)` -/
def P1149354871675270905.Spec : Prop :=
  ∀ n, P1149354871675270905.a n = (A202107 (n + 1) : ℚ)

end A202107

/-! ## A202107.P14553174836072412309

`A000537(n+1)*A163102(n+1)`
-/

namespace A202107.P14553174836072412309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 (n + 1) * A163102 (n + 1)

end

end A202107.P14553174836072412309

namespace A202107

/-- `A000537(n+1)*A163102(n+1)` -/
def P14553174836072412309.Spec : Prop :=
  ∀ n, P14553174836072412309.a n = A202107 (n + 1)

end A202107

/-! ## A202107.P3038687637925510638

`(A236770(n+1)+A002817(n+1))*A000537(n+1)`
-/

namespace A202107.P3038687637925510638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A236770 (n + 1) + A002817 (n + 1)) * A000537 (n + 1)

end

end A202107.P3038687637925510638

namespace A202107

/-- `(A236770(n+1)+A002817(n+1))*A000537(n+1)` -/
def P3038687637925510638.Spec : Prop :=
  ∀ n, P3038687637925510638.a n = A202107 (n + 1)

end A202107

/-! ## A202107.P14707770212920701614

`A000217(n+1)*A000537(n+1)*A002378(n+1)`
-/

namespace A202107.P14707770212920701614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A000537 (n + 1) * A002378 (n + 1)

end

end A202107.P14707770212920701614

namespace A202107

/-- `A000217(n+1)*A000537(n+1)*A002378(n+1)` -/
def P14707770212920701614.Spec : Prop :=
  ∀ n, P14707770212920701614.a n = A202107 (n + 1)

theorem P14707770212920701614.correct : P14707770212920701614.Spec := by
  intro n
  simp only [A202107, Nat.add_sub_cancel, A202107.P14707770212920701614.a, A202107.P8836218848276096274.a, A000217, A000217.P10269402890581615239.a, A000537, A000537.P7887993002585723883.a, A002378, A002378.P6342434596694243671.a, A059977, A059977.P3859055244849813430.a, A000332, A000332.P5946310388023661265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A202107

/-! ## A202107.P11585436352451175954

`(A297662(n+2)-A000537(n+1))*A000537(n+1)`
-/

namespace A202107.P11585436352451175954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A297662 (n + 2) - A000537 (n + 1)) * A000537 (n + 1)

end

end A202107.P11585436352451175954

namespace A202107

/-- `(A297662(n+2)-A000537(n+1))*A000537(n+1)` -/
def P11585436352451175954.Spec : Prop :=
  ∀ n, P11585436352451175954.a n = A202107 (n + 1)

end A202107

/-!
# A202108: Expansion of 4/sqrt(phi) in base phi, where phi=(1+sqrt(5))/2.

The programs for A202108, there is no canonical definition to state claims against.
-/

/-! ## A202108.P16952716174556850650

`A256228(n+1)%A106035(A184835(n+1))`
-/

namespace A202108.P16952716174556850650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256228 (n + 1)) (A106035 (A184835 (n + 1)).toNat)

end

end A202108.P16952716174556850650

/-! ## A202108.P16993274536833136030

`A355451(A003383(n+5)-A210144(2*(n+2)))`
-/

namespace A202108.P16993274536833136030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355451 (A003383 (n + 5) - A210144 (2 * (n + 2))).toNat

end

end A202108.P16993274536833136030

/-! ## A202108.P13509051643994866224

`and(A346128(n+1)², A134023(3*n))`
-/

namespace A202108.P13509051643994866224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A346128 (n + 1) ^ 2) (A134023 (3 * n))

end

end A202108.P13509051643994866224

/-! ## A202108.P3861594590465466620

`val(A167597(n+1), A200570(A028262(n)))`
-/

namespace A202108.P3861594590465466620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A167597 (n + 1)).toNat (A200570 (A028262 n).toNat).toNat

end

end A202108.P3861594590465466620

/-! ## A202108.P7134174509417327372

`A000035(A280129(n)+A221388(n+1))`
-/

namespace A202108.P7134174509417327372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A280129 n + A221388 (n + 1)).toNat

end

end A202108.P7134174509417327372

/-!
# A202109: a(n) = n^3*(n+1)^3*(n+2)^3/72.

The programs for A202109, the canonical program `A202109.P1929562565223391316` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202109 has offset 1).

The definition of A202109 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^3*(n+2)^3*(n+3)^3/72` (program `A202109.P3385007118905152731`, by `A202109.P3385007118905152731.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A202109.P3385007118905152731

`(n+1)^3*(n+2)^3*(n+3)^3/72`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A202109.P3385007118905152731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 * (n + 2) ^ 3 * (n + 3) ^ 3 : ℚ) / 72

end

end A202109.P3385007118905152731

namespace A202109

/-- `(n+1)^3*(n+2)^3*(n+3)^3/72` -/
def P3385007118905152731.Spec : Prop :=
  ∀ n, P3385007118905152731.a n = (A202109 (n + 1) : ℚ)

theorem P3385007118905152731.correct : P3385007118905152731.Spec := by
  intro n
  simp only [A202109, Nat.add_sub_cancel, A202109.P3385007118905152731.a, A202109.P1929562565223391316.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A202109

/-! ## A202109.P6947966844821234279

`3*A000292(n+1)^3`
-/

namespace A202109.P6947966844821234279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000292 (n + 1) ^ 3

end

end A202109.P6947966844821234279

namespace A202109

/-- `3*A000292(n+1)^3` -/
def P6947966844821234279.Spec : Prop :=
  ∀ n, P6947966844821234279.a n = A202109 (n + 1)

theorem P6947966844821234279.correct : P6947966844821234279.Spec := by
  intro n
  simp only [A202109, Nat.add_sub_cancel, A202109.P6947966844821234279.a, A202109.P1929562565223391316.a, A000292, A000292.P18322089543142633594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A202109

/-! ## A202109.P2111741994831263112

`3*C(n+3, 3)^3`
-/

namespace A202109.P2111741994831263112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (n + 3) 3 ^ 3

end

end A202109.P2111741994831263112

namespace A202109

/-- `3*C(n+3, 3)^3` -/
def P2111741994831263112.Spec : Prop :=
  ∀ n, (P2111741994831263112.a n : ℤ) = A202109 (n + 1)

theorem P2111741994831263112.correct : P2111741994831263112.Spec := by
  intro n
  simp only [A202109, Nat.add_sub_cancel, A202109.P2111741994831263112.a, A202109.P1929562565223391316.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A202109

/-! ## A202109.P1929562565223391316

`C(n+3, 3)^3+C(n+3, 3)^3+C(n+3, 3)^3`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202109

/-- `C(n+3, 3)^3+C(n+3, 3)^3+C(n+3, 3)^3` -/
def P1929562565223391316.Spec : Prop :=
  ∀ n, (P1929562565223391316.a n : ℤ) = A202109 (n + 1)

theorem P1929562565223391316.correct : P1929562565223391316.Spec := by
  intro n
  simp only [A202109, Nat.add_sub_cancel]

end A202109

/-! ## A202109.P8461906045877458503

`3*A270272(n)`
-/

namespace A202109.P8461906045877458503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A270272 n

end

end A202109.P8461906045877458503

namespace A202109

/-- `3*A270272(n)` -/
def P8461906045877458503.Spec : Prop :=
  ∀ n, P8461906045877458503.a n = A202109 (n + 1)

end A202109

/-! ## A202109.P16566817049553081184

`floor(3*sqrt(A001249(n)^3))`
-/

namespace A202109.P16566817049553081184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * Real.sqrt (A001249 n ^ 3 : ℝ)⌋

end

end A202109.P16566817049553081184

namespace A202109

/-- `floor(3*sqrt(A001249(n)^3))` -/
def P16566817049553081184.Spec : Prop :=
  ∀ n, P16566817049553081184.a n = A202109 (n + 1)

end A202109

/-! ## A202109.P6180154507369366775

`A085438(n+1)+2*A085439(n+1)`
-/

namespace A202109.P6180154507369366775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085438 (n + 1) + 2 * A085439 (n + 1)

end

end A202109.P6180154507369366775

namespace A202109

/-- `A085438(n+1)+2*A085439(n+1)` -/
def P6180154507369366775.Spec : Prop :=
  ∀ n, P6180154507369366775.a n = A202109 (n + 1)

end A202109

/-! ## A202109.P5392258641327420903

`A004302(n+1)*A004320(n+1)`
-/

namespace A202109.P5392258641327420903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004302 (n + 1) * A004320 (n + 1)

end

end A202109.P5392258641327420903

namespace A202109

/-- `A004302(n+1)*A004320(n+1)` -/
def P5392258641327420903.Spec : Prop :=
  ∀ n, P5392258641327420903.a n = A202109 (n + 1)

end A202109

/-! ## A202109.P16557187640082545805

`(A004282(n)+A000537(n+1))*A004320(n+1)`
-/

namespace A202109.P16557187640082545805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004282 n + A000537 (n + 1)) * A004320 (n + 1)

end

end A202109.P16557187640082545805

namespace A202109

/-- `(A004282(n)+A000537(n+1))*A004320(n+1)` -/
def P16557187640082545805.Spec : Prop :=
  ∀ n, P16557187640082545805.a n = A202109 (n + 1)

end A202109

/-! ## A202109.P2925663155982351878

`A000292(n+1)*A000292(n+1)*A027480(n+1)`
-/

namespace A202109.P2925663155982351878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) * A000292 (n + 1) * A027480 (n + 1)

end

end A202109.P2925663155982351878

namespace A202109

/-- `A000292(n+1)*A000292(n+1)*A027480(n+1)` -/
def P2925663155982351878.Spec : Prop :=
  ∀ n, P2925663155982351878.a n = A202109 (n + 1)

end A202109

/-!
# A202110: Numbers k such that 90*k + 7 is prime.

The programs for A202110, the canonical program `A202110.P17317322307668240700` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202110 has offset 1).

The definition of A202110 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202110.P17317322307668240700

`floor(A142315(n+1)/90)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A202110

/-- `floor(A142315(n+1)/90)` -/
def P17317322307668240700.Spec : Prop :=
  ∀ n, P17317322307668240700.a n = A202110 (n + 1)

theorem P17317322307668240700.correct : P17317322307668240700.Spec := by
  intro n
  simp only [A202110, Nat.add_sub_cancel]

end A202110

/-! ## A202110.P819700534795982258

`eq[1, A001221(90*n+7)]`
-/

namespace A202110.P819700534795982258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (90 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202110.P819700534795982258

namespace A202110

/-- `eq[1, A001221(90*n+7)]` -/
def P819700534795982258.Spec : Prop :=
  ∀ n, (P819700534795982258.a n : ℤ) = A202110 (n + 1)

end A202110

/-! ## A202110.P2799949105709073808

`eq[1, A001222(90*n+7)]`
-/

namespace A202110.P2799949105709073808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (90 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202110.P2799949105709073808

namespace A202110

/-- `eq[1, A001222(90*n+7)]` -/
def P2799949105709073808.Spec : Prop :=
  ∀ n, (P2799949105709073808.a n : ℤ) = A202110 (n + 1)

end A202110

/-! ## A202110.P8909652809899993574

`eq[2, A000005(90*n+7)]`
-/

namespace A202110.P8909652809899993574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (90 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202110.P8909652809899993574

namespace A202110

/-- `eq[2, A000005(90*n+7)]` -/
def P8909652809899993574.Spec : Prop :=
  ∀ n, (P8909652809899993574.a n : ℤ) = A202110 (n + 1)

end A202110

/-! ## A202110.P10959772777128701918

`eq[90*n+7, A006530(90*n+7)]`
-/

namespace A202110.P10959772777128701918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  90 * n + 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (90 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202110.P10959772777128701918

namespace A202110

/-- `eq[90*n+7, A006530(90*n+7)]` -/
def P10959772777128701918.Spec : Prop :=
  ∀ n, (P10959772777128701918.a n : ℤ) = A202110 (n + 1)

end A202110

/-! ## A202110.P13804072331290004898

`eq[90*n+7, A020639(90*n+7)]`
-/

namespace A202110.P13804072331290004898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  90 * n + 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (90 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202110.P13804072331290004898

namespace A202110

/-- `eq[90*n+7, A020639(90*n+7)]` -/
def P13804072331290004898.Spec : Prop :=
  ∀ n, (P13804072331290004898.a n : ℤ) = A202110 (n + 1)

end A202110

/-! ## A202110.P7716092891447843124

`eq[1, A316436(A139280(n+1)-2)]`
-/

namespace A202110.P7716092891447843124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316436 (A139280 (n + 1) - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202110.P7716092891447843124

namespace A202110

/-- `eq[1, A316436(A139280(n+1)-2)]` -/
def P7716092891447843124.Spec : Prop :=
  ∀ n, (P7716092891447843124.a n : ℤ) = A202110 (n + 1)

end A202110

/-! ## A202110.P12930077723863662288

`eq[2, A116933(A128470(n))]`
-/

namespace A202110.P12930077723863662288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116933 (A128470 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202110.P12930077723863662288

namespace A202110

/-- `eq[2, A116933(A128470(n))]` -/
def P12930077723863662288.Spec : Prop :=
  ∀ n, (P12930077723863662288.a n : ℤ) = A202110 (n + 1)

end A202110

/-! ## A202110.P10289875452045084958

`eq[1, A078772(A139280(n+1))]`
-/

namespace A202110.P10289875452045084958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078772 (A139280 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202110.P10289875452045084958

namespace A202110

/-- `eq[1, A078772(A139280(n+1))]` -/
def P10289875452045084958.Spec : Prop :=
  ∀ n, (P10289875452045084958.a n : ℤ) = A202110 (n + 1)

end A202110

/-! ## A202110.P11742433941169564695

`record[n%A014963(90*n+7)]`
-/

namespace A202110.P11742433941169564695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A014963 (90 * n + 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202110.P11742433941169564695

namespace A202110

/-- `record[n%A014963(90*n+7)]` -/
def P11742433941169564695.Spec : Prop :=
  ∀ n, P11742433941169564695.a n = A202110 (n + 1)

end A202110

/-!
# A202111: a(n) = sigma(n) - p, where p is the largest prime < sigma(n).

The programs for A202111, the canonical program `A202111.P12212055803023361538` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202111 has offset 2).

The definition of A202111 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049711, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A202111.P12212055803023361538

`A049711(A000203(n+2))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A202111

/-- `A049711(A000203(n+2))` -/
def P12212055803023361538.Spec : Prop :=
  ∀ n, P12212055803023361538.a n = A202111 (n + 2)

theorem P12212055803023361538.correct : P12212055803023361538.Spec := by
  intro n
  simp only [A202111, Nat.add_sub_cancel]

end A202111

/-! ## A202111.P7442929700916070753

`A175851(∑{d}[n+2, #]-1)`
-/

namespace A202111.P7442929700916070753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (∑ d ∈ Nat.divisors (f1 n), d - 1)

end

end A202111.P7442929700916070753

namespace A202111

/-- `A175851(∑{d}[n+2, #]-1)` -/
def P7442929700916070753.Spec : Prop :=
  ∀ n, P7442929700916070753.a n = A202111 (n + 2)

end A202111

/-! ## A202111.P443708332597967665

`A175851(∑[A053222(n+1)])`
-/

namespace A202111.P443708332597967665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A202111.P443708332597967665

namespace A202111

/-- `A175851(∑[A053222(n+1)])` -/
def P443708332597967665.Spec : Prop :=
  ∀ n, P443708332597967665.a n = A202111 (n + 2)

end A202111

/-! ## A202111.P3808847831397280592

`A175851(A000203(n+2)-1)`
-/

namespace A202111.P3808847831397280592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (A000203 (n + 2) - 1).toNat

end

end A202111.P3808847831397280592

namespace A202111

/-- `A175851(A000203(n+2)-1)` -/
def P3808847831397280592.Spec : Prop :=
  ∀ n, P3808847831397280592.a n = A202111 (n + 2)

end A202111

/-! ## A202111.P11145038578641484914

`A175851(A001065(n+2)+n+1)`
-/

namespace A202111.P11145038578641484914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (A001065 (n + 2) + (n + 1 : ℤ)).toNat

end

end A202111.P11145038578641484914

namespace A202111

/-- `A175851(A001065(n+2)+n+1)` -/
def P11145038578641484914.Spec : Prop :=
  ∀ n, P11145038578641484914.a n = A202111 (n + 2)

end A202111

/-! ## A202111.P4147730951313206074

`A049711(∑{d}[n+2, #])`
-/

namespace A202111.P4147730951313206074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A202111.P4147730951313206074

namespace A202111

/-- `A049711(∑{d}[n+2, #])` -/
def P4147730951313206074.Spec : Prop :=
  ∀ n, P4147730951313206074.a n = A202111 (n + 2)

end A202111

/-! ## A202111.P8535644434086096175

`A064722(A000203(n+2)-1)+1`
-/

namespace A202111.P8535644434086096175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064722 (A000203 (n + 2) - 1).toNat + 1

end

end A202111.P8535644434086096175

namespace A202111

/-- `A064722(A000203(n+2)-1)+1` -/
def P8535644434086096175.Spec : Prop :=
  ∀ n, P8535644434086096175.a n = A202111 (n + 2)

end A202111

/-! ## A202111.P6327535444483054986

`A049711(A074495(n+2)-A072918(n+2))`
-/

namespace A202111.P6327535444483054986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (A074495 (n + 2) - A072918 (n + 2)).toNat

end

end A202111.P6327535444483054986

namespace A202111

/-- `A049711(A074495(n+2)-A072918(n+2))` -/
def P6327535444483054986.Spec : Prop :=
  ∀ n, P6327535444483054986.a n = A202111 (n + 2)

end A202111

/-!
# A202112: Numbers k such that 90*k + 79 is prime.

The programs for A202112, the canonical program `A202112.P1337866002295131903` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202112 has offset 1).

The definition of A202112 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202112.P1337866002295131903

`floor(A142330(n+1)/90)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A202112

/-- `floor(A142330(n+1)/90)` -/
def P1337866002295131903.Spec : Prop :=
  ∀ n, P1337866002295131903.a n = A202112 (n + 1)

theorem P1337866002295131903.correct : P1337866002295131903.Spec := by
  intro n
  simp only [A202112, Nat.add_sub_cancel]

end A202112

/-! ## A202112.P9381391900899904668

`eq[A001222(A156376(3*n+2)), 1]`
-/

namespace A202112.P9381391900899904668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A156376 (3 * n + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A202112.P9381391900899904668

namespace A202112

/-- `eq[A001222(A156376(3*n+2)), 1]` -/
def P9381391900899904668.Spec : Prop :=
  ∀ n, (P9381391900899904668.a n : ℤ) = A202112 (n + 1)

end A202112

/-! ## A202112.P1220632367709417946

`eq[2, A000005(A301628(4*(n+1)))]`
-/

namespace A202112.P1220632367709417946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A301628 (4 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202112.P1220632367709417946

namespace A202112

/-- `eq[2, A000005(A301628(4*(n+1)))]` -/
def P1220632367709417946.Spec : Prop :=
  ∀ n, (P1220632367709417946.a n : ℤ) = A202112 (n + 1)

end A202112

/-! ## A202112.P15624609242364573258

`eq[A000005(A156376(3*n+2)), A165063(3*n+2)]`
-/

namespace A202112.P15624609242364573258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A156376 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165063 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202112.P15624609242364573258

namespace A202112

/-- `eq[A000005(A156376(3*n+2)), A165063(3*n+2)]` -/
def P15624609242364573258.Spec : Prop :=
  ∀ n, (P15624609242364573258.a n : ℤ) = A202112 (n + 1)

end A202112

/-! ## A202112.P14026387794930485615

`eq[2, A000005(A057538(12*n+11))]`
-/

namespace A202112.P14026387794930485615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A057538 (12 * n + 11)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202112.P14026387794930485615

namespace A202112

/-- `eq[2, A000005(A057538(12*n+11))]` -/
def P14026387794930485615.Spec : Prop :=
  ∀ n, (P14026387794930485615.a n : ℤ) = A202112 (n + 1)

end A202112

/-! ## A202112.P12350809896700339609

`eq[2, A116933(A128473(n+1)+2)]`
-/

namespace A202112.P12350809896700339609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116933 (A128473 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202112.P12350809896700339609

namespace A202112

/-- `eq[2, A116933(A128473(n+1)+2)]` -/
def P12350809896700339609.Spec : Prop :=
  ∀ n, (P12350809896700339609.a n : ℤ) = A202112 (n + 1)

end A202112

/-!
# A202113: Numbers k such that 90*k + 61 is prime.

The programs for A202113, the canonical program `A202113.P10902379365128054035` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202113 has offset 1).

The definition of A202113 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202113.P10902379365128054035

`floor(A142320(n+1)/90)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A202113

/-- `floor(A142320(n+1)/90)` -/
def P10902379365128054035.Spec : Prop :=
  ∀ n, P10902379365128054035.a n = A202113 (n + 1)

theorem P10902379365128054035.correct : P10902379365128054035.Spec := by
  intro n
  simp only [A202113, Nat.add_sub_cancel]

end A202113

/-! ## A202113.P4261140318281211754

`eq[1, A068695(A017233(n))]`
-/

namespace A202113.P4261140318281211754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (A017233 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202113.P4261140318281211754

namespace A202113

/-- `eq[1, A068695(A017233(n))]` -/
def P4261140318281211754.Spec : Prop :=
  ∀ n, (P4261140318281211754.a n : ℤ) = A202113 (n + 1)

end A202113

/-! ## A202113.P18226086268317124418

`eq[1, A068695(A017221(n)+1)]`
-/

namespace A202113.P18226086268317124418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (A017221 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202113.P18226086268317124418

namespace A202113

/-- `eq[1, A068695(A017221(n)+1)]` -/
def P18226086268317124418.Spec : Prop :=
  ∀ n, (P18226086268317124418.a n : ℤ) = A202113 (n + 1)

end A202113

/-! ## A202113.P16959352388940405510

`eq[1, A091088(A017221(n)+1)]`
-/

namespace A202113.P16959352388940405510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 (A017221 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202113.P16959352388940405510

namespace A202113

/-- `eq[1, A091088(A017221(n)+1)]` -/
def P16959352388940405510.Spec : Prop :=
  ∀ n, (P16959352388940405510.a n : ℤ) = A202113 (n + 1)

end A202113

/-! ## A202113.P16562061046521443211

`eq[1, A091088(A122709(n+1))]`
-/

namespace A202113.P16562061046521443211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 (A122709 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202113.P16562061046521443211

namespace A202113

/-- `eq[1, A091088(A122709(n+1))]` -/
def P16562061046521443211.Spec : Prop :=
  ∀ n, (P16562061046521443211.a n : ℤ) = A202113 (n + 1)

end A202113

/-! ## A202113.P15536001890416601397

`eq[1, A068695(A017209(n)+2)]`
-/

namespace A202113.P15536001890416601397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (A017209 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202113.P15536001890416601397

namespace A202113

/-- `eq[1, A068695(A017209(n)+2)]` -/
def P15536001890416601397.Spec : Prop :=
  ∀ n, (P15536001890416601397.a n : ℤ) = A202113 (n + 1)

end A202113

/-! ## A202113.P17574360591214199654

`eq[2, A000005(A128470(3*n+2))]`
-/

namespace A202113.P17574360591214199654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A128470 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202113.P17574360591214199654

namespace A202113

/-- `eq[2, A000005(A128470(3*n+2))]` -/
def P17574360591214199654.Spec : Prop :=
  ∀ n, (P17574360591214199654.a n : ℤ) = A202113 (n + 1)

end A202113

/-! ## A202113.P1587399551470941900

`eq[2, A116933(A156376(n))]`
-/

namespace A202113.P1587399551470941900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116933 (A156376 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202113.P1587399551470941900

namespace A202113

/-- `eq[2, A116933(A156376(n))]` -/
def P1587399551470941900.Spec : Prop :=
  ∀ n, (P1587399551470941900.a n : ℤ) = A202113 (n + 1)

end A202113

/-! ## A202113.P14750698289183190701

`eq[10*A017233(n)+1, A014963(10*A017233(n)+1)]`
-/

namespace A202113.P14750698289183190701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A017233 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * A017233 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202113.P14750698289183190701

namespace A202113

/-- `eq[10*A017233(n)+1, A014963(10*A017233(n)+1)]` -/
def P14750698289183190701.Spec : Prop :=
  ∀ n, (P14750698289183190701.a n : ℤ) = A202113 (n + 1)

end A202113

/-!
# A202114: Numbers k such that 90*k + 53 is prime.

The programs for A202114, the canonical program `A202114.P14110043031951327687` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202114 has offset 1).

The definition of A202114 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202114.P14110043031951327687

`floor(A142316(n+1)/90)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A202114

/-- `floor(A142316(n+1)/90)` -/
def P14110043031951327687.Spec : Prop :=
  ∀ n, P14110043031951327687.a n = A202114 (n + 1)

theorem P14110043031951327687.correct : P14110043031951327687.Spec := by
  intro n
  simp only [A202114, Nat.add_sub_cancel]

end A202114

/-! ## A202114.P17910427583313380864

`round(A142316(n+1)/90-A001222(A002476(n+1)))`
-/

namespace A202114.P17910427583313380864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A142316 (n + 1) : ℚ) / 90 - (A001222 (A002476 (n + 1)).toNat : ℚ))

end

end A202114.P17910427583313380864

namespace A202114

/-- `round(A142316(n+1)/90-A001222(A002476(n+1)))` -/
def P17910427583313380864.Spec : Prop :=
  ∀ n, P17910427583313380864.a n = A202114 (n + 1)

end A202114

/-! ## A202114.P7905250755569375928

`eq[1, A075743(A128468(n))]`
-/

namespace A202114.P7905250755569375928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A128468 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202114.P7905250755569375928

namespace A202114

/-- `eq[1, A075743(A128468(n))]` -/
def P7905250755569375928.Spec : Prop :=
  ∀ n, (P7905250755569375928.a n : ℤ) = A202114 (n + 1)

end A202114

/-! ## A202114.P5206382360492855389

`eq[3, A068695(A017221(n))]`
-/

namespace A202114.P5206382360492855389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (A017221 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202114.P5206382360492855389

namespace A202114

/-- `eq[3, A068695(A017221(n))]` -/
def P5206382360492855389.Spec : Prop :=
  ∀ n, (P5206382360492855389.a n : ℤ) = A202114 (n + 1)

end A202114

/-! ## A202114.P15945518827149664339

`eq[2, A000005(A128473(3*n+2))]`
-/

namespace A202114.P15945518827149664339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A128473 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202114.P15945518827149664339

namespace A202114

/-- `eq[2, A000005(A128473(3*n+2))]` -/
def P15945518827149664339.Spec : Prop :=
  ∀ n, (P15945518827149664339.a n : ℤ) = A202114 (n + 1)

end A202114

/-! ## A202114.P18418285483638782

`eq[2, A001222(A017341(A082286(n)))]`
-/

namespace A202114.P18418285483638782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A017341 (A082286 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202114.P18418285483638782

namespace A202114

/-- `eq[2, A001222(A017341(A082286(n)))]` -/
def P18418285483638782.Spec : Prop :=
  ∀ n, (P18418285483638782.a n : ℤ) = A202114 (n + 1)

end A202114

/-! ## A202114.P4256257250843214049

`A004526(record[A054576(A111225(n+1))])`
-/

namespace A202114.P4256257250843214049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A111225 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A202114.P4256257250843214049

namespace A202114

/-- `A004526(record[A054576(A111225(n+1))])` -/
def P4256257250843214049.Spec : Prop :=
  ∀ n, P4256257250843214049.a n = A202114 (n + 1)

end A202114

/-! ## A202114.P8626555436483765697

`eq[2, A001222(A017377(A154267(n)))]`
-/

namespace A202114.P8626555436483765697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A017377 (A154267 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202114.P8626555436483765697

namespace A202114

/-- `eq[2, A001222(A017377(A154267(n)))]` -/
def P8626555436483765697.Spec : Prop :=
  ∀ n, (P8626555436483765697.a n : ℤ) = A202114 (n + 1)

end A202114

/-! ## A202114.P4273002306670155225

`eq[A064894(4*n+2), A325313(A128473(3*n+2))]`
-/

namespace A202114.P4273002306670155225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064894 (4 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325313 (A128473 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202114.P4273002306670155225

namespace A202114

/-- `eq[A064894(4*n+2), A325313(A128473(3*n+2))]` -/
def P4273002306670155225.Spec : Prop :=
  ∀ n, (P4273002306670155225.a n : ℤ) = A202114 (n + 1)

end A202114

/-!
# A202115: Numbers k such that 90*k + 17 is prime.

The programs for A202115, the canonical program `A202115.P1964812021349568403` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202115 has offset 1).

The definition of A202115 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202115.P1964812021349568403

`floor(A142321(n+1)/90)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A202115

/-- `floor(A142321(n+1)/90)` -/
def P1964812021349568403.Spec : Prop :=
  ∀ n, P1964812021349568403.a n = A202115 (n + 1)

theorem P1964812021349568403.correct : P1964812021349568403.Spec := by
  intro n
  simp only [A202115, Nat.add_sub_cancel]

end A202115

/-! ## A202115.P11871630984587290776

`eq[1, A001222(90*n+17)]`
-/

namespace A202115.P11871630984587290776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (90 * n + 17)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202115.P11871630984587290776

namespace A202115

/-- `eq[1, A001222(90*n+17)]` -/
def P11871630984587290776.Spec : Prop :=
  ∀ n, (P11871630984587290776.a n : ℤ) = A202115 (n + 1)

end A202115

/-! ## A202115.P4138786908504876434

`eq[A033273(A128468(3*n)), 1]`
-/

namespace A202115.P4138786908504876434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (A128468 (3 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A202115.P4138786908504876434

namespace A202115

/-- `eq[A033273(A128468(3*n)), 1]` -/
def P4138786908504876434.Spec : Prop :=
  ∀ n, (P4138786908504876434.a n : ℤ) = A202115 (n + 1)

end A202115

/-! ## A202115.P9500532277026084780

`eq[1, A075743(A139249(n+1)-1)]`
-/

namespace A202115.P9500532277026084780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A139249 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202115.P9500532277026084780

namespace A202115

/-- `eq[1, A075743(A139249(n+1)-1)]` -/
def P9500532277026084780.Spec : Prop :=
  ∀ n, (P9500532277026084780.a n : ℤ) = A202115 (n + 1)

end A202115

/-! ## A202115.P3151221016003941385

`eq[2, A000005(A139280(n+1)+8)]`
-/

namespace A202115.P3151221016003941385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A139280 (n + 1) + 8).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202115.P3151221016003941385

namespace A202115

/-- `eq[2, A000005(A139280(n+1)+8)]` -/
def P3151221016003941385.Spec : Prop :=
  ∀ n, (P3151221016003941385.a n : ℤ) = A202115 (n + 1)

end A202115

/-! ## A202115.P16626801164596091557

`eq[2, A278223(A139610(n)-1)]`
-/

namespace A202115.P16626801164596091557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (A139610 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202115.P16626801164596091557

namespace A202115

/-- `eq[2, A278223(A139610(n)-1)]` -/
def P16626801164596091557.Spec : Prop :=
  ∀ n, (P16626801164596091557.a n : ℤ) = A202115 (n + 1)

end A202115

/-! ## A202115.P17625150481707735466

`eq[3, A020481(A139610(n))]`
-/

namespace A202115.P17625150481707735466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020481 (A139610 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202115.P17625150481707735466

namespace A202115

/-- `eq[3, A020481(A139610(n))]` -/
def P17625150481707735466.Spec : Prop :=
  ∀ n, (P17625150481707735466.a n : ℤ) = A202115 (n + 1)

end A202115

/-!
# A202116: Numbers k such that 90*k + 89 is prime.

The programs for A202116, the canonical program `A202116.P14031869112246816162` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202116 has offset 1).

The definition of A202116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 391 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202116.P9423113886061068443

`eq[1, A001222(90*(n+1)-1)]`
-/

namespace A202116.P9423113886061068443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (90 * (n + 1) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202116.P9423113886061068443

namespace A202116

/-- `eq[1, A001222(90*(n+1)-1)]` -/
def P9423113886061068443.Spec : Prop :=
  ∀ n, (P9423113886061068443.a n : ℤ) = A202116 (n + 1)

end A202116

/-! ## A202116.P11734795456123089769

`eq[2, A000005(90*(n+1)-1)]`
-/

namespace A202116.P11734795456123089769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (90 * (n + 1) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202116.P11734795456123089769

namespace A202116

/-- `eq[2, A000005(90*(n+1)-1)]` -/
def P11734795456123089769.Spec : Prop :=
  ∀ n, (P11734795456123089769.a n : ℤ) = A202116 (n + 1)

end A202116

/-! ## A202116.P6918254212861122987

`eq[90*(n+1)-1, A006530(90*(n+1)-1)]`
-/

namespace A202116.P6918254212861122987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (90 * (n + 1) : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (90 * (n + 1) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202116.P6918254212861122987

namespace A202116

/-- `eq[90*(n+1)-1, A006530(90*(n+1)-1)]` -/
def P6918254212861122987.Spec : Prop :=
  ∀ n, (P6918254212861122987.a n : ℤ) = A202116 (n + 1)

end A202116

/-! ## A202116.P2447328811657755143

`eq[90*(n+1)-1, A020639(90*(n+1)-1)]`
-/

namespace A202116.P2447328811657755143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (90 * (n + 1) : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (90 * (n + 1) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202116.P2447328811657755143

namespace A202116

/-- `eq[90*(n+1)-1, A020639(90*(n+1)-1)]` -/
def P2447328811657755143.Spec : Prop :=
  ∀ n, (P2447328811657755143.a n : ℤ) = A202116 (n + 1)

end A202116

/-! ## A202116.P14031869112246816162

`eq[1, A075743(A257645(2*n+1))]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A202116

/-- `eq[1, A075743(A257645(2*n+1))]` -/
def P14031869112246816162.Spec : Prop :=
  ∀ n, (P14031869112246816162.a n : ℤ) = A202116 (n + 1)

theorem P14031869112246816162.correct : P14031869112246816162.Spec := by
  intro n
  simp only [A202116, Nat.add_sub_cancel]

end A202116

/-! ## A202116.P4091865588403131799

`eq[3, A322807(90*(n+1)-1)]`
-/

namespace A202116.P4091865588403131799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322807 (90 * (n + 1) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202116.P4091865588403131799

namespace A202116

/-- `eq[3, A322807(90*(n+1)-1)]` -/
def P4091865588403131799.Spec : Prop :=
  ∀ n, (P4091865588403131799.a n : ℤ) = A202116 (n + 1)

end A202116

/-! ## A202116.P15625592676234964760

`eq[3, A322809(90*(n+1)-1)]`
-/

namespace A202116.P15625592676234964760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322809 (90 * (n + 1) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202116.P15625592676234964760

namespace A202116

/-- `eq[3, A322809(90*(n+1)-1)]` -/
def P15625592676234964760.Spec : Prop :=
  ∀ n, (P15625592676234964760.a n : ℤ) = A202116 (n + 1)

end A202116

/-! ## A202116.P1666313360384139911

`eq[3, A322814(90*(n+1)-1)]`
-/

namespace A202116.P1666313360384139911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322814 (90 * (n + 1) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202116.P1666313360384139911

namespace A202116

/-- `eq[3, A322814(90*(n+1)-1)]` -/
def P1666313360384139911.Spec : Prop :=
  ∀ n, (P1666313360384139911.a n : ℤ) = A202116 (n + 1)

end A202116

/-! ## A202116.P13363672091239480474

`eq[1, A167020(A257645(n)+1)]`
-/

namespace A202116.P13363672091239480474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (A257645 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202116.P13363672091239480474

namespace A202116

/-- `eq[1, A167020(A257645(n)+1)]` -/
def P13363672091239480474.Spec : Prop :=
  ∀ n, (P13363672091239480474.a n : ℤ) = A202116 (n + 1)

end A202116

/-! ## A202116.P8920160311219597166

`eq[1, A089631(90*(n+1)-1)]`
-/

namespace A202116.P8920160311219597166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089631 (90 * (n + 1) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202116.P8920160311219597166

namespace A202116

/-- `eq[1, A089631(90*(n+1)-1)]` -/
def P8920160311219597166.Spec : Prop :=
  ∀ n, (P8920160311219597166.a n : ℤ) = A202116 (n + 1)

end A202116

/-!
# A202117: Number of -1..1 arrays of n elements with first, second and third differences also in -1..1.

The programs for A202117, the canonical program `A202117.P4364470595406915947` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202117 has offset 1).

The definition of A202117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 599 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202117.P4364470595406915947

`2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` with `a(0)=3, a(1)=7, a(2)=13, a(3)=19, a(4)=27, a(5)=35, a(6)=47, a(7)=65`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202117

/-- `2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` -/
def P4364470595406915947.Spec : Prop :=
  ∀ n, P4364470595406915947.a n = A202117 (n + 1)

theorem P4364470595406915947.correct : P4364470595406915947.Spec := by
  intro n
  simp only [A202117, Nat.add_sub_cancel]

end A202117

/-! ## A202117.P11584194252902060220

`A202124(∑[n+1])`
-/

namespace A202117.P11584194252902060220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A202117.P11584194252902060220

namespace A202117

/-- `A202124(∑[n+1])` -/
def P11584194252902060220.Spec : Prop :=
  ∀ n, P11584194252902060220.a n = A202117 (n + 1)

end A202117

/-! ## A202117.P7743062001659981842

`or(1, A202124(A000217(n+1)))`
-/

namespace A202117.P7743062001659981842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A202124 (A000217 (n + 1)).toNat)

end

end A202117.P7743062001659981842

namespace A202117

/-- `or(1, A202124(A000217(n+1)))` -/
def P7743062001659981842.Spec : Prop :=
  ∀ n, P7743062001659981842.a n = A202117 (n + 1)

end A202117

/-! ## A202117.P13276521988773997530

`record[root(A202124(n+1), A099375(n))]`
-/

namespace A202117.P13276521988773997530
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202124 (n + 1) : ℝ) ^ (1 / (A099375 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202117.P13276521988773997530

namespace A202117

/-- `record[root(A202124(n+1), A099375(n))]` -/
def P13276521988773997530.Spec : Prop :=
  ∀ n, P13276521988773997530.a n = (A202117 (n + 1) : ℝ)

end A202117

/-! ## A202117.P610966158837813726

`record[gcd(A025581(n), A202124(n+1))]`
-/

namespace A202117.P610966158837813726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A202124 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202117.P610966158837813726

namespace A202117

/-- `record[gcd(A025581(n), A202124(n+1))]` -/
def P610966158837813726.Spec : Prop :=
  ∀ n, (P610966158837813726.a n : ℤ) = A202117 (n + 1)

end A202117

/-! ## A202117.P17834236741735450112

`record[A202124(A000217(A328399(n)))]`
-/

namespace A202117.P17834236741735450112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A000217 (A328399 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202117.P17834236741735450112

namespace A202117

/-- `record[A202124(A000217(A328399(n)))]` -/
def P17834236741735450112.Spec : Prop :=
  ∀ n, P17834236741735450112.a n = A202117 (n + 1)

end A202117

/-!
# A202118: Number of -2..2 arrays of n elements with first, second and third differences also in -2..2.

The programs for A202118, there is no canonical definition to state claims against.
-/

/-! ## A202118.P14645358466695453940

`A202124(∑[n+2])`
-/

namespace A202118.P14645358466695453940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A202118.P14645358466695453940

/-! ## A202118.P8349569733943224933

`record[A202124(A000096(A331742(n)))]`
-/

namespace A202118.P8349569733943224933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A000096 (A331742 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202118.P8349569733943224933

/-! ## A202118.P4847259139109535346

`record[A202124(A000096(A003963(n+1)))]`
-/

namespace A202118.P4847259139109535346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A000096 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202118.P4847259139109535346

/-! ## A202118.P563278576683205426

`record[A202124(A000096(A004737(n+1)))]`
-/

namespace A202118.P563278576683205426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A000096 (A004737 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202118.P563278576683205426

/-! ## A202118.P12506512352316452140

`record[A202124(A000096(A027750(n+1)))]`
-/

namespace A202118.P12506512352316452140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A000096 (A027750 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202118.P12506512352316452140

/-!
# A202119: Number of -3..3 arrays of n elements with first, second and third differences also in -3..3.

The programs for A202119, there is no canonical definition to state claims against.
-/

/-! ## A202119.P11490296079797934702

`A202124(∑[n+3]+1)`
-/

namespace A202119.P11490296079797934702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202119.P11490296079797934702

/-! ## A202119.P11099574885653094606

`or(1, A202124(Δ[A008778(n)]))`
-/

namespace A202119.P11099574885653094606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A202124 (f1 (n + 1) - f1 n).toNat)

end

end A202119.P11099574885653094606

/-! ## A202119.P1951523477869284252

`or(1, A202124(A055999(n)+4))`
-/

namespace A202119.P1951523477869284252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A202124 (A055999 n + 4).toNat)

end

end A202119.P1951523477869284252

/-! ## A202119.P1593368253839407262

`A202124(A055999(n)+4)-A000007(n+1)`
-/

namespace A202119.P1593368253839407262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A055999 n + 4).toNat - A000007 (n + 1)

end

end A202119.P1593368253839407262

/-! ## A202119.P7041032977001289024

`(A057428(n)+1)!*A202124(Δ[A008778(n)])`
-/

namespace A202119.P7041032977001289024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A057428 n + 1).toNat : ℤ) * A202124 (f1 (n + 1) - f1 n).toNat

end

end A202119.P7041032977001289024

/-! ## A202119.P4927241298751973351

`A001222(A045319(n+1))*A202124(A055999(n)+4)`
-/

namespace A202119.P4927241298751973351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A045319 (n + 1)).toNat * A202124 (A055999 n + 4).toNat

end

end A202119.P4927241298751973351

/-!
# A202120: Number of -4..4 arrays of n elements with first, second and third differences also in -4..4.

The programs for A202120, there is no canonical definition to state claims against.
-/

/-! ## A202120.P14646491729226003619

`A202124(A027379(n+2))`
-/

namespace A202120.P14646491729226003619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A027379 (n + 2)).toNat

end

end A202120.P14646491729226003619

/-! ## A202120.P1418635932971441322

`A202124(A055998(n+2))`
-/

namespace A202120.P1418635932971441322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A055998 (n + 2)).toNat

end

end A202120.P1418635932971441322

/-! ## A202120.P1100890115700760600

`A202124(A155212(n)+5)`
-/

namespace A202120.P1100890115700760600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A155212 n + 5).toNat

end

end A202120.P1100890115700760600

/-! ## A202120.P8115345141902732750

`A202124(A056000(n)+7)`
-/

namespace A202120.P8115345141902732750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A056000 n + 7).toNat

end

end A202120.P8115345141902732750

/-! ## A202120.P3887286259885550196

`A202124(A046691(n+2)+1)`
-/

namespace A202120.P3887286259885550196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A046691 (n + 2) + 1).toNat

end

end A202120.P3887286259885550196

/-! ## A202120.P11068606412462992499

`A202124(A052905(n+1)+2)`
-/

namespace A202120.P11068606412462992499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A052905 (n + 1) + 2).toNat

end

end A202120.P11068606412462992499

/-! ## A202120.P1906189454617665009

`A202124(A034856(n+3)-1)`
-/

namespace A202120.P1906189454617665009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A034856 (n + 3) - 1).toNat

end

end A202120.P1906189454617665009

/-! ## A202120.P3324902388244016614

`A202124(A104675(n+1)/2)`
-/

namespace A202120.P3324902388244016614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (SequenceMachineLib.roundAway ((A104675 (n + 1) : ℚ) / 2)).toNat

end

end A202120.P3324902388244016614

/-! ## A202120.P13843014624971328917

`A202124(Δ[A008778(n+1)]-1)`
-/

namespace A202120.P13843014624971328917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (f1 (n + 1) - f1 n - 1).toNat

end

end A202120.P13843014624971328917

/-! ## A202120.P12049068400460506669

`A202124(A167614(n+1)+2*n+1)`
-/

namespace A202120.P12049068400460506669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A167614 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A202120.P12049068400460506669

/-!
# A202121: Number of -5..5 arrays of n elements with first, second and third differences also in -5..5.

The programs for A202121, there is no canonical definition to state claims against.
-/

/-! ## A202121.P6769080874863524865

`A202124(A046691(n+3))`
-/

namespace A202121.P6769080874863524865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A046691 (n + 3)).toNat

end

end A202121.P6769080874863524865

/-! ## A202121.P14683246594538486738

`A202124(Δ[A023545(n+1)])`
-/

namespace A202121.P14683246594538486738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (f1 (n + 1) - f1 n).toNat

end

end A202121.P14683246594538486738

/-! ## A202121.P3151215571659727887

`A202124(Δ[A111396(n)]-1)`
-/

namespace A202121.P3151215571659727887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (f1 (n + 1) - f1 n - 1).toNat

end

end A202121.P3151215571659727887

/-! ## A202121.P11151757772187889452

`A202124(A052905(n+2)+1)`
-/

namespace A202121.P11151757772187889452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A052905 (n + 2) + 1).toNat

end

end A202121.P11151757772187889452

/-! ## A202121.P9223708675366589952

`A202124(A056000(n+1)+6)`
-/

namespace A202121.P9223708675366589952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A056000 (n + 1) + 6).toNat

end

end A202121.P9223708675366589952

/-! ## A202121.P14994354851860454476

`A202124(A000124(n+5)-5)`
-/

namespace A202121.P14994354851860454476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A000124 (n + 5) - 5).toNat

end

end A202121.P14994354851860454476

/-! ## A202121.P4179470830379140163

`A202124(A167614(n+4)-7)`
-/

namespace A202121.P4179470830379140163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A167614 (n + 4) - 7).toNat

end

end A202121.P4179470830379140163

/-! ## A202121.P15392256338790171107

`A202124(A166136(n+1)+A016789(n))`
-/

namespace A202121.P15392256338790171107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A166136 (n + 1) + A016789 n).toNat

end

end A202121.P15392256338790171107

/-! ## A202121.P2578855314125618377

`A202124(A005449(n+6)%A133263(n+6))`
-/

namespace A202121.P2578855314125618377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (Int.tmod (A005449 (n + 6)) (A133263 (n + 6))).toNat

end

end A202121.P2578855314125618377

/-!
# A202122: Number of -6..6 arrays of n elements with first, second and third differences also in -6..6.

The programs for A202122, there is no canonical definition to state claims against.
-/

/-! ## A202122.P17241618724066536892

`A202124(A052905(n+3))`
-/

namespace A202122.P17241618724066536892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A052905 (n + 3)).toNat

end

end A202122.P17241618724066536892

/-! ## A202122.P2471585765977205351

`A202124(A055999(n+3)+1)`
-/

namespace A202122.P2471585765977205351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A055999 (n + 3) + 1).toNat

end

end A202122.P2471585765977205351

/-! ## A202122.P9122133123411430199

`A202124(A000124(n+6)-6)`
-/

namespace A202122.P9122133123411430199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A000124 (n + 6) - 6).toNat

end

end A202122.P9122133123411430199

/-! ## A202122.P4754399976207919028

`A202124(A133263(n+6)-7)`
-/

namespace A202122.P4754399976207919028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A133263 (n + 6) - 7).toNat

end

end A202122.P4754399976207919028

/-! ## A202122.P6613353886114283537

`A202124(Δ[Δ[A006504(n+1)]])`
-/

namespace A202122.P6613353886114283537
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (f1 (n + 1) - f1 n).toNat

end

end A202122.P6613353886114283537

/-! ## A202122.P9054756521616275751

`A202124(Δ[A023545(n+2)]-1)`
-/

namespace A202122.P9054756521616275751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (f1 (n + 1) - f1 n - 1).toNat

end

end A202122.P9054756521616275751

/-! ## A202122.P15810622902515036783

`A202124(Δ[A111396(n+1)]-2)`
-/

namespace A202122.P15810622902515036783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (f1 (n + 1) - f1 n - 2).toNat

end

end A202122.P15810622902515036783

/-! ## A202122.P6699372886639394101

`A202124(Δ[n²]+A155212(n)+13)`
-/

namespace A202122.P6699372886639394101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A155212 n + 13)).toNat

end

end A202122.P6699372886639394101

/-! ## A202122.P14142381374426684227

`A202124(A005408(n)+A000217(n+4)+5)`
-/

namespace A202122.P14142381374426684227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A005408 n + (A000217 (n + 4) + 5)).toNat

end

end A202122.P14142381374426684227

/-!
# A202123: Number of -7..7 arrays of n elements with first, second and third differences also in -7..7.

The programs for A202123, there is no canonical definition to state claims against.
-/

/-! ## A202123.P17667914680600811698

`A202124(A055999(n+4))`
-/

namespace A202123.P17667914680600811698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A055999 (n + 4)).toNat

end

end A202123.P17667914680600811698

/-! ## A202123.P11939272395611257305

`A202124(A000217(n+7)-6)`
-/

namespace A202123.P11939272395611257305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A000217 (n + 7) - 6).toNat

end

end A202123.P11939272395611257305

/-! ## A202123.P1206980278613478047

`A202124(A000124(n+7)-7)`
-/

namespace A202123.P1206980278613478047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A000124 (n + 7) - 7).toNat

end

end A202123.P1206980278613478047

/-! ## A202123.P931040324382859393

`A202124(A133263(n+6)+n-1)`
-/

namespace A202123.P931040324382859393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A133263 (n + 6) + ((n : ℤ) - 1)).toNat

end

end A202123.P931040324382859393

/-! ## A202123.P4347193992914871498

`A202124(A052905(n+3)+n+6)`
-/

namespace A202123.P4347193992914871498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A052905 (n + 3) + (n + 6 : ℤ)).toNat

end

end A202123.P4347193992914871498

/-!
# A202124: T(n,k) is the number of -k..k arrays of n elements with first, second and third differences also in -k..k.

The programs for A202124, there is no canonical definition to state claims against.
-/

/-! ## A202124.P6612058551543754154

`or(A010894(A245300(n)), A202664(n+1))`
-/

namespace A202124.P6612058551543754154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010894 ((A245300 n).toNat + 21)) (A202664 (n + 1))

end

end A202124.P6612058551543754154

/-! ## A202124.P15205000487672471365

`or(A008834(n+2)%A324010(3*n), A202664(n+1))`
-/

namespace A202124.P15205000487672471365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A008834 (n + 2)) (A324010 (3 * n))) (A202664 (n + 1))

end

end A202124.P15205000487672471365

/-! ## A202124.P5326151360821434834

`or(A000188(A250287(n)), A202664(n+1))`
-/

namespace A202124.P5326151360821434834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000188 (A250287 n).toNat) (A202664 (n + 1))

end

end A202124.P5326151360821434834

/-! ## A202124.P11684311674463190219

`or(A008834(A001405(n)), A202664(n+1))`
-/

namespace A202124.P11684311674463190219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008834 (A001405 n).toNat) (A202664 (n + 1))

end

end A202124.P11684311674463190219

/-! ## A202124.P12310800180544155484

`A202664(A077168(n))`
-/

namespace A202124.P12310800180544155484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202664 (A077168 n).toNat

end

end A202124.P12310800180544155484

/-!
# A202125: Number of -n..n arrays of 4 elements with first, second and third differences also in -n..n.

The programs for A202125, there is no canonical definition to state claims against.
-/

/-! ## A202125.P8050035680051325464

`A202124(A052905(n)+9)`
-/

namespace A202125.P8050035680051325464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A052905 n + 9).toNat

end

end A202125.P8050035680051325464

/-! ## A202125.P3247781609802767573

`A202124(A055999(n)+10)`
-/

namespace A202125.P3247781609802767573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A055999 n + 10).toNat

end

end A202125.P3247781609802767573

/-! ## A202125.P13743401107500338416

`A202124(Δ[A238806(n+3)])`
-/

namespace A202125.P13743401107500338416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238806 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (f1 (n + 1) - f1 n).toNat

end

end A202125.P13743401107500338416

/-! ## A202125.P5649455426232821956

`A202124(A167614(n+2)+1)`
-/

namespace A202125.P5649455426232821956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A167614 (n + 2) + 1).toNat

end

end A202125.P5649455426232821956

/-! ## A202125.P7091817962453820495

`A202124(A166136(n+2)-2)`
-/

namespace A202125.P7091817962453820495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A166136 (n + 2) - 2).toNat

end

end A202125.P7091817962453820495

/-! ## A202125.P2322929197312677109

`A202124(A167487(n+2)-3)`
-/

namespace A202125.P2322929197312677109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A167487 (n + 2) - 3).toNat

end

end A202125.P2322929197312677109

/-! ## A202125.P9949554815466833112

`A202124(A034856(n+2)+6)`
-/

namespace A202125.P9949554815466833112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A034856 (n + 2) + 6).toNat

end

end A202125.P9949554815466833112

/-! ## A202125.P8272297817677650434

`A202124(A046691(n+1)+8)`
-/

namespace A202125.P8272297817677650434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A046691 (n + 1) + 8).toNat

end

end A202125.P8272297817677650434

/-! ## A202125.P16091584494002844875

`A202124(A166136(n+1)+1+n)`
-/

namespace A202125.P16091584494002844875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A202125.P16091584494002844875

/-! ## A202125.P6484562079906348518

`A202124(Δ[A023545(n+1)-n²])`
-/

namespace A202125.P6484562079906348518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (f1 (n + 1) - f1 n).toNat

end

end A202125.P6484562079906348518

/-!
# A202126: Number of -n..n arrays of 5 elements with first, second and third differences also in -n..n.

The programs for A202126, there is no canonical definition to state claims against.
-/

/-! ## A202126.P7510682348256559872

`A202124(A167499(n+3))`
-/

namespace A202126.P7510682348256559872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A167499 (n + 3)).toNat

end

end A202126.P7510682348256559872

/-! ## A202126.P1296407163655658297

`A202124(A056000(n)+15)`
-/

namespace A202126.P1296407163655658297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A056000 n + 15).toNat

end

end A202126.P1296407163655658297

/-! ## A202126.P13545865861556761083

`A202124(A000124(n+4)+4)`
-/

namespace A202126.P13545865861556761083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A000124 (n + 4) + 4).toNat

end

end A202126.P13545865861556761083

/-! ## A202126.P6862760318147326205

`A202124(A000217(n+4)+5)`
-/

namespace A202126.P6862760318147326205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A000217 (n + 4) + 5).toNat

end

end A202126.P6862760318147326205

/-! ## A202126.P10933607149180226822

`A202124(A038722(Δ[A023545(n+1)]))`
-/

namespace A202126.P10933607149180226822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A202126.P10933607149180226822

/-! ## A202126.P4836787847861139188

`A202124(A055998(n)+A004273(n+8))`
-/

namespace A202126.P4836787847861139188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A055998 n + A004273 (n + 8)).toNat

end

end A202126.P4836787847861139188

/-!
# A202127: Number of -n..n arrays of 6 elements with first, second and third differences also in -n..n.

The programs for A202127, there is no canonical definition to state claims against.
-/

/-! ## A202127.P3662648378728754618

`A202124(A167499(n+4)+1)`
-/

namespace A202127.P3662648378728754618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A167499 (n + 4) + 1).toNat

end

end A202127.P3662648378728754618

/-! ## A202127.P15580928478294329543

`A202124(A000124(n+5)+5)`
-/

namespace A202127.P15580928478294329543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A000124 (n + 5) + 5).toNat

end

end A202127.P15580928478294329543

/-! ## A202127.P4634176289438371020

`A202124(A000217(n+5)+6)`
-/

namespace A202127.P4634176289438371020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A000217 (n + 5) + 6).toNat

end

end A202127.P4634176289438371020

/-! ## A202127.P5346972035087947250

`A202124(A052905(n+2)+11)`
-/

namespace A202127.P5346972035087947250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A052905 (n + 2) + 11).toNat

end

end A202127.P5346972035087947250

/-! ## A202127.P11807198218283573574

`A202124(A055999(n+2)+12)`
-/

namespace A202127.P11807198218283573574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A055999 (n + 2) + 12).toNat

end

end A202127.P11807198218283573574

/-! ## A202127.P3979309138789357960

`A202124(A166136(A020705(n)))`
-/

namespace A202127.P3979309138789357960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A166136 (A020705 n).toNat).toNat

end

end A202127.P3979309138789357960

/-! ## A202127.P2840387315658422245

`A202124(A055998(n+5)-A103517(n+1))`
-/

namespace A202127.P2840387315658422245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A055998 (n + 5) - A103517 (n + 1)).toNat

end

end A202127.P2840387315658422245

/-! ## A202127.P9625575217255516936

`A202124(A103517(n+8)+A055998(n+1))`
-/

namespace A202127.P9625575217255516936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A103517 (n + 8) + A055998 (n + 1)).toNat

end

end A202127.P9625575217255516936

/-! ## A202127.P1308384412156631176

`A202124(A002620(n+2)+A002620(n+9))`
-/

namespace A202127.P1308384412156631176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A002620 (n + 2) + A002620 (n + 9)).toNat

end

end A202127.P1308384412156631176

/-!
# A202128: Number of -n..n arrays of 7 elements with first, second and third differences also in -n..n.

The programs for A202128, there is no canonical definition to state claims against.
-/

/-! ## A202128.P14201353931363525850

`A202124(A167487(n+5))`
-/

namespace A202128.P14201353931363525850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A167487 (n + 5)).toNat

end

end A202128.P14201353931363525850

/-! ## A202128.P11826321249587661884

`A202124(A167499(n+5)+2)`
-/

namespace A202128.P11826321249587661884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A167499 (n + 5) + 2).toNat

end

end A202128.P11826321249587661884

/-! ## A202128.P7840209212421725552

`A202124(A000124(n+6)+6)`
-/

namespace A202128.P7840209212421725552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A000124 (n + 6) + 6).toNat

end

end A202128.P7840209212421725552

/-! ## A202128.P14493514669536902344

`A202124(A000217(n+6)+7)`
-/

namespace A202128.P14493514669536902344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A000217 (n + 6) + 7).toNat

end

end A202128.P14493514669536902344

/-! ## A202128.P18133958069717481420

`A202124(A055998(n+6)-A004273(n+3))`
-/

namespace A202128.P18133958069717481420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A055998 (n + 6) - A004273 (n + 3)).toNat

end

end A202128.P18133958069717481420

/-!
# A202129: Numbers n such that 90n + 71 is prime.

The programs for A202129, the canonical program `A202129.P16202127655736939832` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202129 has offset 1).

The definition of A202129 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202129.P16202127655736939832

`floor(A142325(n+1)/90)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A202129

/-- `floor(A142325(n+1)/90)` -/
def P16202127655736939832.Spec : Prop :=
  ∀ n, P16202127655736939832.a n = A202129 (n + 1)

theorem P16202127655736939832.correct : P16202127655736939832.Spec := by
  intro n
  simp only [A202129, Nat.add_sub_cancel]

end A202129

/-! ## A202129.P11372236666948144392

`eq[1, A001222(90*(n+1)-19)]`
-/

namespace A202129.P11372236666948144392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (90 * (n + 1) - 19)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202129.P11372236666948144392

namespace A202129

/-- `eq[1, A001222(90*(n+1)-19)]` -/
def P11372236666948144392.Spec : Prop :=
  ∀ n, (P11372236666948144392.a n : ℤ) = A202129 (n + 1)

end A202129

/-! ## A202129.P16156009476429459466

`eq[2, A000005(90*(n+1)-19)]`
-/

namespace A202129.P16156009476429459466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (90 * (n + 1) - 19)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202129.P16156009476429459466

namespace A202129

/-- `eq[2, A000005(90*(n+1)-19)]` -/
def P16156009476429459466.Spec : Prop :=
  ∀ n, (P16156009476429459466.a n : ℤ) = A202129 (n + 1)

end A202129

/-! ## A202129.P8096564381164352126

`eq[90*(n+1)-19, A006530(90*(n+1)-19)]`
-/

namespace A202129.P8096564381164352126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (90 * (n + 1) : ℤ) - 19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (90 * (n + 1) - 19)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202129.P8096564381164352126

namespace A202129

/-- `eq[90*(n+1)-19, A006530(90*(n+1)-19)]` -/
def P8096564381164352126.Spec : Prop :=
  ∀ n, (P8096564381164352126.a n : ℤ) = A202129 (n + 1)

end A202129

/-! ## A202129.P17471881474641551029

`eq[90*(n+1)-19, A020639(90*(n+1)-19)]`
-/

namespace A202129.P17471881474641551029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (90 * (n + 1) : ℤ) - 19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (90 * (n + 1) - 19)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202129.P17471881474641551029

namespace A202129

/-- `eq[90*(n+1)-19, A020639(90*(n+1)-19)]` -/
def P17471881474641551029.Spec : Prop :=
  ∀ n, (P17471881474641551029.a n : ℤ) = A202129 (n + 1)

end A202129

/-! ## A202129.P15851622919509288677

`eq[1, A068695(A017233(n)+1)]`
-/

namespace A202129.P15851622919509288677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (A017233 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202129.P15851622919509288677

namespace A202129

/-- `eq[1, A068695(A017233(n)+1)]` -/
def P15851622919509288677.Spec : Prop :=
  ∀ n, (P15851622919509288677.a n : ℤ) = A202129 (n + 1)

end A202129

/-! ## A202129.P18184025844919468229

`eq[1, A075743(A128473(n+1))]`
-/

namespace A202129.P18184025844919468229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A128473 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202129.P18184025844919468229

namespace A202129

/-- `eq[1, A075743(A128473(n+1))]` -/
def P18184025844919468229.Spec : Prop :=
  ∀ n, (P18184025844919468229.a n : ℤ) = A202129 (n + 1)

end A202129

/-! ## A202129.P10298123260773488501

`eq[1, A068695(A017221(n)+2)]`
-/

namespace A202129.P10298123260773488501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (A017221 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202129.P10298123260773488501

namespace A202129

/-- `eq[1, A068695(A017221(n)+2)]` -/
def P10298123260773488501.Spec : Prop :=
  ∀ n, (P10298123260773488501.a n : ℤ) = A202129 (n + 1)

end A202129

/-! ## A202129.P5261260039830517728

`eq[1, A091088(A017221(n)+2)]`
-/

namespace A202129.P5261260039830517728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 (A017221 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202129.P5261260039830517728

namespace A202129

/-- `eq[1, A091088(A017221(n)+2)]` -/
def P5261260039830517728.Spec : Prop :=
  ∀ n, (P5261260039830517728.a n : ℤ) = A202129 (n + 1)

end A202129

/-! ## A202129.P17131376579562406167

`eq[1, A167020(A257645(n)-2)]`
-/

namespace A202129.P17131376579562406167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (A257645 n - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202129.P17131376579562406167

namespace A202129

/-- `eq[1, A167020(A257645(n)-2)]` -/
def P17131376579562406167.Spec : Prop :=
  ∀ n, (P17131376579562406167.a n : ℤ) = A202129 (n + 1)

end A202129

/-!
# A202130: Number of zero-sum nX1 -3..3 arrays with every element equal to at least one horizontal or vertical neighbor.

The programs for A202130, there is no canonical definition to state claims against.
-/

/-! ## A202130.P12802103164752212531

`A202134(∑[n]+1)`
-/

namespace A202130.P12802103164752212531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202134 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202130.P12802103164752212531

/-! ## A202130.P8331226545515134129

`A202134(A000124(n))+char[23]`
-/

namespace A202130.P8331226545515134129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202134 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A202130.P8331226545515134129

/-! ## A202130.P7548347185068585579

`A055640(n)*A202134(A000124(n))`
-/

namespace A202130.P7548347185068585579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 n * A202134 (A000124 n).toNat

end

end A202130.P7548347185068585579

/-! ## A202130.P4349749317162753318

`A167661(n)*A202134(A000124(n))`
-/

namespace A202130.P4349749317162753318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167661 n * A202134 (A000124 n).toNat

end

end A202130.P4349749317162753318

/-! ## A202130.P15480697244845308969

`A202134(A000124(n))%A002110(n)`
-/

namespace A202130.P15480697244845308969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202134 (A000124 n).toNat) (A002110 n)

end

end A202130.P15480697244845308969

/-!
# A202131: Number of zero-sum nX2 -3..3 arrays with every element equal to at least one horizontal or vertical neighbor.

The programs for A202131, there is no canonical definition to state claims against.
-/

/-! ## A202131.P10456056510067355908

`A202134(∑[n+1]+2)`
-/

namespace A202131.P10456056510067355908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202134 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A202131.P10456056510067355908

/-! ## A202131.P8265180310990666628

`or(1, A202134(A133263(n+1)))`
-/

namespace A202131.P8265180310990666628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A202134 (A133263 (n + 1)).toNat)

end

end A202131.P8265180310990666628

/-! ## A202131.P2979813033401704661

`record[A010054(n)*A202134(n+2)]`
-/

namespace A202131.P2979813033401704661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A202134 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202131.P2979813033401704661

/-! ## A202131.P10451271002770324876

`record[gcd(A202134(n+1), A337615(n))]`
-/

namespace A202131.P10451271002770324876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A202134 (n + 1)) (A337615 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202131.P10451271002770324876

/-!
# A202132: Number of zero-sum nX3 -3..3 arrays with every element equal to at least one horizontal or vertical neighbor.

The programs for A202132, there is no canonical definition to state claims against.
-/

/-! ## A202132.P11973478410805416384

`A202134(∑[n+2]+4)`
-/

namespace A202132.P11973478410805416384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202134 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A202132.P11973478410805416384

/-! ## A202132.P11031831829527209433

`or(1, A202134(A167614(n+1)))`
-/

namespace A202132.P11031831829527209433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A202134 (A167614 (n + 1)).toNat)

end

end A202132.P11031831829527209433

/-! ## A202132.P8937113586015738858

`record[gcd(A202134(n+2), A337615(n))]`
-/

namespace A202132.P8937113586015738858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A202134 (n + 2)) (A337615 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202132.P8937113586015738858

/-!
# A202133: Number of zero-sum nX4 -3..3 arrays with every element equal to at least one horizontal or vertical neighbor.

The programs for A202133, there is no canonical definition to state claims against.
-/

/-! ## A202133.P3432078646627612596

`A202134(A020752(n+1))`
-/

namespace A202133.P3432078646627612596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202134 (A020752 (n + 1)).toNat

end

end A202133.P3432078646627612596

/-!
# A202134: T(n,k) = Number of zero-sum n X k -3..3 arrays with every element equal to at least one horizontal or vertical neighbor.

The programs for A202134, there is no canonical definition to state claims against.
-/

/-! ## A202134.P16507449784312550522

`A337983(or(A003242(n), A265062(n)))`
-/

namespace A202134.P16507449784312550522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337983 (Int.lor (A003242 n) (A265062 n)).toNat

end

end A202134.P16507449784312550522

/-! ## A202134.P15594808114011912864

`A337983(A267108(n+1)+A006128(n))`
-/

namespace A202134.P15594808114011912864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337983 (A267108 (n + 1) + A006128 n).toNat

end

end A202134.P15594808114011912864

/-! ## A202134.P16443751976536586351

`A320056(A087475(n))%A205161(n+1)`
-/

namespace A202134.P16443751976536586351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320056 (A087475 n).toNat) (A205161 (n + 1))

end

end A202134.P16443751976536586351

/-! ## A202134.P359655652966985261

`A182469(A000085(n+3))%A100138(n)`
-/

namespace A202134.P359655652966985261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182469 (A000085 (n + 3)).toNat) (A100138 n)

end

end A202134.P359655652966985261

/-!
# A202135: G.f. satisfies: A(x) = 1 + (eta(x^2*A(x)^2)^10 / (eta(x*A(x))^4 * eta(x^4*A(x)^4)^4) - 1)/4, where eta(q) is the Dedekind eta function without the q^(1/24) factor.

The programs for A202135, there is no canonical definition to state claims against.
-/

/-! ## A202135.P15941843634047650352

`A247908(A322188(n))`
-/

namespace A202135.P15941843634047650352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247908 (A322188 n).toNat

end

end A202135.P15941843634047650352

/-! ## A202135.P16419411674692790690

`A023190(A007454(n+1))`
-/

namespace A202135.P16419411674692790690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A007454 (n + 1)).toNat

end

end A202135.P16419411674692790690

/-!
# A202136: Prefixing digits to Mersenne primes to obtain larger primes.

The programs for A202136, there is no canonical definition to state claims against.
-/

/-! ## A202136.P9920625562667165678

`A065112(A059305(n+1))`
-/

namespace A202136.P9920625562667165678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065112 (A059305 (n + 1)).toNat

end

end A202136.P9920625562667165678

/-!
# A202137: Numbers k such that 24k + 1 is neither square nor prime.

The programs for A202137, the canonical program `A202137.P10979129982781156413` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202137 has offset 1).

The definition of A202137 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2881 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202137.P3194173598221606800

`eq[A010051(A103214(n)), A010815(n)]`
-/

namespace A202137.P3194173598221606800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A103214 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202137.P3194173598221606800

namespace A202137

/-- `eq[A010051(A103214(n)), A010815(n)]` -/
def P3194173598221606800.Spec : Prop :=
  ∀ n, (P3194173598221606800.a n : ℤ) = A202137 (n + 1)

end A202137

/-! ## A202137.P14014531993038479675

`eq[A010051(A103214(n)), A121373(n)]`
-/

namespace A202137.P14014531993038479675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A103214 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202137.P14014531993038479675

namespace A202137

/-- `eq[A010051(A103214(n)), A121373(n)]` -/
def P14014531993038479675.Spec : Prop :=
  ∀ n, (P14014531993038479675.a n : ℤ) = A202137 (n + 1)

end A202137

/-! ## A202137.P10979129982781156413

`eq[A010051(A103214(n)), A133985(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A202137

/-- `eq[A010051(A103214(n)), A133985(n)]` -/
def P10979129982781156413.Spec : Prop :=
  ∀ n, (P10979129982781156413.a n : ℤ) = A202137 (n + 1)

theorem P10979129982781156413.correct : P10979129982781156413.Spec := by
  intro n
  simp only [A202137, Nat.add_sub_cancel]

end A202137

/-! ## A202137.P17983256459822896170

`eq[A010051(A103214(n)), A134756(n)]`
-/

namespace A202137.P17983256459822896170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A103214 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202137.P17983256459822896170

namespace A202137

/-- `eq[A010051(A103214(n)), A134756(n)]` -/
def P17983256459822896170.Spec : Prop :=
  ∀ n, (P17983256459822896170.a n : ℤ) = A202137 (n + 1)

end A202137

/-! ## A202137.P10839349233386472205

`∩[A090864(n+1), A153384(n+1)]`
-/

namespace A202137.P10839349233386472205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202137.P10839349233386472205

namespace A202137

/-- `∩[A090864(n+1), A153384(n+1)]` -/
def P10839349233386472205.Spec : Prop :=
  ∀ n, (P10839349233386472205.a n : ℤ) = A202137 (n + 1)

end A202137

/-! ## A202137.P15615129281873545833

`eq[A007706(n), A014963(A103214(n))]`
-/

namespace A202137.P15615129281873545833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A103214 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202137.P15615129281873545833

namespace A202137

/-- `eq[A007706(n), A014963(A103214(n))]` -/
def P15615129281873545833.Spec : Prop :=
  ∀ n, (P15615129281873545833.a n : ℤ) = A202137 (n + 1)

end A202137

/-! ## A202137.P17336164886600829289

`eq[A055028(A103214(n)), A080332(n)]`
-/

namespace A202137.P17336164886600829289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055028 (A103214 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080332 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202137.P17336164886600829289

namespace A202137

/-- `eq[A055028(A103214(n)), A080332(n)]` -/
def P17336164886600829289.Spec : Prop :=
  ∀ n, (P17336164886600829289.a n : ℤ) = A202137 (n + 1)

end A202137

/-! ## A202137.P3137291713014781158

`eq[A010054(3*n), A055672(A017077(3*n))]`
-/

namespace A202137.P3137291713014781158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (A017077 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202137.P3137291713014781158

namespace A202137

/-- `eq[A010054(3*n), A055672(A017077(3*n))]` -/
def P3137291713014781158.Spec : Prop :=
  ∀ n, (P3137291713014781158.a n : ℤ) = A202137 (n + 1)

end A202137

/-!
# A202138: Numerators of Conway's PRIMEGAME.

The programs for A202138, there is no canonical definition to state claims against.
-/

/-! ## A202138.P17650366578542872505

`A203907(A203363(n+1))`
-/

namespace A202138.P17650366578542872505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203907 (A203363 (n + 1)).toNat

end

end A202138.P17650366578542872505

/-!
# A202139: Expansion of e.g.f. log(1/(1-artanh(x))).

The programs for A202139, there is no canonical definition to state claims against.
-/

/-! ## A202139.P1011993507590146082

`A091194(A000255(n))+A058622(n)`
-/

namespace A202139.P1011993507590146082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091194 (A000255 n).toNat + A058622 n

end

end A202139.P1011993507590146082

/-!
# A202140: Size of the largest semigroup generated by two n X n Boolean matrices.

The programs for A202140, there is no canonical definition to state claims against.
-/

/-! ## A202140.P5604036594710784101

`A003309(∏[A136653(n)+A056239(n+1)])`
-/

namespace A202140.P5604036594710784101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136653 n + A056239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A202140.P5604036594710784101

/-!
# A202141: a(n) = 13*n^2 - 16*n + 5.

The programs for A202141, the canonical program `A202141.P12089517734856142885` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202141 has offset 0).

The definition of A202141 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `13*n²-16*n+5` (program `A202141.P12089517734856142885`, by `A202141.P12089517734856142885.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A202141.P12089517734856142885

`13*n²-16*n+5`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202141

/-- `13*n²-16*n+5` -/
def P12089517734856142885.Spec : Prop :=
  ∀ n, P12089517734856142885.a n = A202141 n

theorem P12089517734856142885.correct : P12089517734856142885.Spec := by
  intro n
  simp only [A202141]

end A202141

/-! ## A202141.P2106751904075052170

`∑[a(n-1)+26]` with `a(0)=5, a(1)=-3`
-/

namespace A202141.P2106751904075052170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, -3] fun n f1 =>
  f1 (n - 1) + 26

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202141.P2106751904075052170

namespace A202141

/-- `∑[a(n-1)+26]` -/
def P2106751904075052170.Spec : Prop :=
  ∀ n, P2106751904075052170.a n = A202141 n

end A202141

/-! ## A202141.P16586342468521881212

`∑[2*a(n-1)-a(n-2)]` with `a(0)=5, a(1)=-3, a(2)=23`
-/

namespace A202141.P16586342468521881212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, -3, 23] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202141.P16586342468521881212

namespace A202141

/-- `∑[2*a(n-1)-a(n-2)]` -/
def P16586342468521881212.Spec : Prop :=
  ∀ n, P16586342468521881212.a n = A202141 n

end A202141

/-!
# A202143: G.f. 1/[Sum_{n>=0} (2*n+1)*(-x)^(n*(n+1)/2)].

The programs for A202143, there is no canonical definition to state claims against.
-/

/-! ## A202143.P371737216857039054

`A229301(A071744(n))`
-/

namespace A202143.P371737216857039054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229301 (A071744 n).toNat

end

end A202143.P371737216857039054

/-! ## A202143.P2262975498480284718

`∑[A283468(A218199(2*n+3)+char[2^n-1])+1]`
-/

namespace A202143.P2262975498480284718
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283468 (A218199 (2 * n + 3) + ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202143.P2262975498480284718

/-!
# A202144: L.g.f.: (-1/3)*log( Sum_{n>=0} (2*n+1)*(-x)^(n*(n+1)/2) ).

The programs for A202144, there is no canonical definition to state claims against.
-/

/-! ## A202144.P1288320876380908752

`A225545(A273251(n))`
-/

namespace A202144.P1288320876380908752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225545 (A273251 n).toNat

end

end A202144.P1288320876380908752

/-!
# A202145: G.f.: 1 + Sum_{n>=1} x^n * Product_{k=1..n} (1 - x^k) / (1 - x^(2*k+1)).

The programs for A202145, there is no canonical definition to state claims against.
-/

/-! ## A202145.P1792656384400622065

`Δ[A083954(A000032(A114637(n+1)))]`
-/

namespace A202145.P1792656384400622065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083954 (A000032 (A114637 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A202145.P1792656384400622065

/-!
# A202146: G.f.: 1/(1-x) + Sum_{n>=1} x^n/(1-x) * Product_{k=1..n} (1 - x^k) / (1 - x^(2*k+1)).

The programs for A202146, there is no canonical definition to state claims against.
-/

/-! ## A202146.P16456017292867647900

`∑[A202145(n)]`
-/

namespace A202146.P16456017292867647900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202146.P16456017292867647900

/-! ## A202146.P1137318946610909136

`A202145(2*n-n)+a(n-1)` with `a(0)=1`
-/

namespace A202146.P1137318946610909136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A202145 (2 * n - n) + a (n - 1)

end

end A202146.P1137318946610909136

/-! ## A202146.P15451741730327015515

`A321090(∏{e}[n+1, #+1]*A185669(n))`
-/

namespace A202146.P15451741730327015515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321090 (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) * A185669 n).toNat

end

end A202146.P15451741730327015515

/-! ## A202146.P5110776104929743464

`A321090(A083902(n+1)*A185669(n))`
-/

namespace A202146.P5110776104929743464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321090 (A083902 (n + 1) * A185669 n).toNat

end

end A202146.P5110776104929743464

/-! ## A202146.P2447807269803499479

`A052345(A046765(n))%3`
-/

namespace A202146.P2447807269803499479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052345 (A046765 n).toNat) 3

end

end A202146.P2447807269803499479

/-!
# A202149: Triangle read by rows: T(n, k) = mod(2^k, n), where 1 <= k < n.

The programs for A202149, the canonical program `A202149.P16063485969264472822` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202149 has offset 2).

The definition of A202149 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4950 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202149.P16063485969264472822

`(2*A059268(n))%A003057(n+2)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A202149

/-- `(2*A059268(n))%A003057(n+2)` -/
def P16063485969264472822.Spec : Prop :=
  ∀ n, P16063485969264472822.a n = A202149 (n + 2)

theorem P16063485969264472822.correct : P16063485969264472822.Spec := by
  intro n
  simp only [A202149, Nat.add_sub_cancel]

end A202149

/-! ## A202149.P1080638243022023744

`(2^A002260(n+1))%A003057(n+2)`
-/

namespace A202149.P1080638243022023744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A002260 (n + 1) : ℤ))) (A003057 (n + 2))

end

end A202149.P1080638243022023744

namespace A202149

/-- `(2^A002260(n+1))%A003057(n+2)` -/
def P1080638243022023744.Spec : Prop :=
  ∀ n, P1080638243022023744.a n = A202149 (n + 2)

end A202149

/-! ## A202149.P6297270052947341074

`A000079(A002260(n+1))%(A003056(n)+2)`
-/

namespace A202149.P6297270052947341074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (A002260 (n + 1)).toNat) (A003056 n + 2)

end

end A202149.P6297270052947341074

namespace A202149

/-- `A000079(A002260(n+1))%(A003056(n)+2)` -/
def P6297270052947341074.Spec : Prop :=
  ∀ n, P6297270052947341074.a n = A202149 (n + 2)

end A202149

/-! ## A202149.P4926534225463932034

`A059268(A014132(n+1))%A003057(n+2)`
-/

namespace A202149.P4926534225463932034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059268 (A014132 (n + 1)).toNat) (A003057 (n + 2))

end

end A202149.P4926534225463932034

namespace A202149

/-- `A059268(A014132(n+1))%A003057(n+2)` -/
def P4926534225463932034.Spec : Prop :=
  ∀ n, P4926534225463932034.a n = A202149 (n + 2)

end A202149

/-! ## A202149.P14317276559215183365

`A060546(A158405(n+1))%A003057(n+2)`
-/

namespace A202149.P14317276559215183365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060546 (A158405 (n + 1)).toNat) (A003057 (n + 2))

end

end A202149.P14317276559215183365

namespace A202149

/-- `A060546(A158405(n+1))%A003057(n+2)` -/
def P14317276559215183365.Spec : Prop :=
  ∀ n, P14317276559215183365.a n = A202149 (n + 2)

end A202149

/-! ## A202149.P12175809292515888925

`A000079(A002262(n)+1)%A097285(2*(n+1))`
-/

namespace A202149.P12175809292515888925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (A002262 n + 1).toNat) (A097285 (2 * (n + 1)))

end

end A202149.P12175809292515888925

namespace A202149

/-- `A000079(A002262(n)+1)%A097285(2*(n+1))` -/
def P12175809292515888925.Spec : Prop :=
  ∀ n, P12175809292515888925.a n = A202149 (n + 2)

end A202149

/-! ## A202149.P10676020741968832189

`A000079(A057555(Δ[n²]))%A097285(2*(n+1))`
-/

namespace A202149.P10676020741968832189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (A057555 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat) (A097285 (2 * (n + 1)))

end

end A202149.P10676020741968832189

namespace A202149

/-- `A000079(A057555(Δ[n²]))%A097285(2*(n+1))` -/
def P10676020741968832189.Spec : Prop :=
  ∀ n, P10676020741968832189.a n = A202149 (n + 2)

end A202149

/-! ## A202149.P14072102492453754148

`A000079(A097285(Δ[n²]))%A097285(2*(n+1))`
-/

namespace A202149.P14072102492453754148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (A097285 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat) (A097285 (2 * (n + 1)))

end

end A202149.P14072102492453754148

namespace A202149

/-- `A000079(A097285(Δ[n²]))%A097285(2*(n+1))` -/
def P14072102492453754148.Spec : Prop :=
  ∀ n, P14072102492453754148.a n = A202149 (n + 2)

end A202149

/-! ## A202149.P6258637084268566051

`A000079(val(A055236(n), 4)+1)%A097285(2*(n+1))`
-/

namespace A202149.P6258637084268566051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (SequenceMachineLib.valuation (A055236 n).toNat 4 + 1)) (A097285 (2 * (n + 1)))

end

end A202149.P6258637084268566051

namespace A202149

/-- `A000079(val(A055236(n), 4)+1)%A097285(2*(n+1))` -/
def P6258637084268566051.Spec : Prop :=
  ∀ n, P6258637084268566051.a n = A202149 (n + 2)

end A202149

/-! ## A202149.P8640250066906933650

`A000079(ceil(A158405(n+1)/2))%A097285(2*(n+1))`
-/

namespace A202149.P8640250066906933650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 ⌈(A158405 (n + 1) : ℚ) / 2⌉.toNat) (A097285 (2 * (n + 1)))

end

end A202149.P8640250066906933650

namespace A202149

/-- `A000079(ceil(A158405(n+1)/2))%A097285(2*(n+1))` -/
def P8640250066906933650.Spec : Prop :=
  ∀ n, P8640250066906933650.a n = A202149 (n + 2)

end A202149

/-! ## A202149.P7498552383622298901

`A005843(A059268(n))%A003057(n+2)`
-/

namespace A202149.P7498552383622298901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A059268 n).toNat) (A003057 (n + 2))

end

end A202149.P7498552383622298901

namespace A202149

/-- `A005843(A059268(n))%A003057(n+2)` -/
def P7498552383622298901.Spec : Prop :=
  ∀ n, P7498552383622298901.a n = A202149 (n + 2)

end A202149

/-!
# A202150: a(n) = A202146( 3*n*(n+1) ) for n>=0.

The programs for A202150, there is no canonical definition to state claims against.
-/

/-! ## A202150.P7062474709412987109

`A202146(3*n*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A202150.P7062474709412987109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202146 (3 * n * (n + 1))

end

end A202150.P7062474709412987109

/-! ## A202150.P9649514040357526818

`A046660(A020712(n))+A016303(n)`
-/

namespace A202150.P9649514040357526818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A020712 n).toNat + A016303 n

end

end A202150.P9649514040357526818

/-! ## A202150.P9468797441016315108

`A046660(A020712(n))+A033999(n)`
-/

namespace A202150.P9468797441016315108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A020712 n).toNat + A033999 n

end

end A202150.P9468797441016315108

/-! ## A202150.P13096603275924249395

`or(A033999(A224227(n)), A052553(n))`
-/

namespace A202150.P13096603275924249395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033999 (A224227 n).toNat) (A052553 n)

end

end A202150.P13096603275924249395

/-! ## A202150.P18117579845913811989

`A276438(A091136(n))`
-/

namespace A202150.P18117579845913811989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276438 (A091136 n).toNat

end

end A202150.P18117579845913811989

/-!
# A202152: Expansion of e.g.f.: exp(x*(1+x)^x).

The programs for A202152, there is no canonical definition to state claims against.
-/

/-! ## A202152.P14653690908542148544

`or(n^(n%2), A048767(A001710(n)))`
-/

namespace A202152.P14653690908542148544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n ^ (n % 2) : ℤ) (A048767 (A001710 n).toNat)

end

end A202152.P14653690908542148544

/-! ## A202152.P1849628546947504001

`A004525(Δ[floor(ϕ*(n+1))]*A141627(n))`
-/

namespace A202152.P1849628546947504001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ((f1 (n + 1) - f1 n) * A141627 n).toNat

end

end A202152.P1849628546947504001

/-! ## A202152.P14834531963893938732

`A028234(A259274(n)+A007208(n))`
-/

namespace A202152.P14834531963893938732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A259274 n + A007208 n).toNat

end

end A202152.P14834531963893938732

/-!
# A202153: G.f.: Sum_{n>=0} x^n * Product_{k=0..n-1} (1 + (2*k+1)*x).

The programs for A202153, there is no canonical definition to state claims against.
-/

/-! ## A202153.P4746800702526668320

`A286131(A304304(n+1))+A202061(n)`
-/

namespace A202153.P4746800702526668320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286131 (A304304 (n + 1)).toNat + A202061 n

end

end A202153.P4746800702526668320

/-! ## A202153.P8377184999338920458

`round(sqrt(A264709(∑[n+2])))`
-/

namespace A202153.P8377184999338920458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A264709 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ))

end

end A202153.P8377184999338920458

/-! ## A202153.P7993230512645775450

`floor(root(A182933(∑[n+3]), 4))`
-/

namespace A202153.P7993230512645775450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A182933 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ) ^ (1 / (4 : ℝ))⌋

end

end A202153.P7993230512645775450

/-!
# A202155: x-values in the solution to x^2 - 13*y^2 = -1.

The programs for A202155, the canonical program `A202155.P3088782194611590404` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202155 has offset 1).

The definition of A202155 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202155.P3088782194611590404

`((18+5*sqrt(13))^(2*(n+1)-1)+(18-5*sqrt(13))^(2*(n+1)-1))/2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202155

/-- `((18+5*sqrt(13))^(2*(n+1)-1)+(18-5*sqrt(13))^(2*(n+1)-1))/2` -/
def P3088782194611590404.Spec : Prop :=
  ∀ n, P3088782194611590404.a n = (A202155 (n + 1) : ℝ)

end A202155

/-! ## A202155.P8636859065097761810

`A041612(2*n)`
-/

namespace A202155.P8636859065097761810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041612 (2 * n)

end

end A202155.P8636859065097761810

namespace A202155

/-- `A041612(2*n)` -/
def P8636859065097761810.Spec : Prop :=
  ∀ n, P8636859065097761810.a n = A202155 (n + 1)

end A202155

/-! ## A202155.P11949213867238056310

`A041018(A017317(n))`
-/

namespace A202155.P11949213867238056310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041018 (A017317 n).toNat

end

end A202155.P11949213867238056310

namespace A202155

/-- `A041018(A017317(n))` -/
def P11949213867238056310.Spec : Prop :=
  ∀ n, P11949213867238056310.a n = A202155 (n + 1)

end A202155

/-! ## A202155.P9318885338035829640

`A041018(A017281(n)+3)`
-/

namespace A202155.P9318885338035829640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041018 (A017281 n + 3).toNat

end

end A202155.P9318885338035829640

namespace A202155

/-- `A041018(A017281(n)+3)` -/
def P9318885338035829640.Spec : Prop :=
  ∀ n, P9318885338035829640.a n = A202155 (n + 1)

end A202155

/-! ## A202155.P8213822549973248707

`A041018(2*A016873(n))`
-/

namespace A202155.P8213822549973248707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041018 (2 * A016873 n).toNat

end

end A202155.P8213822549973248707

namespace A202155

/-- `A041018(2*A016873(n))` -/
def P8213822549973248707.Spec : Prop :=
  ∀ n, P8213822549973248707.a n = A202155 (n + 1)

end A202155

/-!
# A202156: y-values in the solution to x^2 - 13*y^2 = -1.

The programs for A202156, the canonical program `A202156.P3817824681688826009` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202156 has offset 1).

The definition of A202156 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202156.P3817824681688826009

`((18+5*sqrt(13))^(2*(n+1)-1)-(18-5*sqrt(13))^(2*(n+1)-1))/(2*sqrt(13))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202156

/-- `((18+5*sqrt(13))^(2*(n+1)-1)-(18-5*sqrt(13))^(2*(n+1)-1))/(2*sqrt(13))` -/
def P3817824681688826009.Spec : Prop :=
  ∀ n, P3817824681688826009.a n = (A202156 (n + 1) : ℝ)

end A202156

/-! ## A202156.P7322995401471649468

`A195552(3*n+1)`
-/

namespace A202156.P7322995401471649468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195552 (3 * n + 1)

end

end A202156.P7322995401471649468

namespace A202156

/-- `A195552(3*n+1)` -/
def P7322995401471649468.Spec : Prop :=
  ∀ n, P7322995401471649468.a n = A202156 (n + 1)

end A202156

/-! ## A202156.P15026869981582233166

`A006191(6*n+3)`
-/

namespace A202156.P15026869981582233166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006191 (6 * n + 3)

end

end A202156.P15026869981582233166

namespace A202156

/-- `A006191(6*n+3)` -/
def P15026869981582233166.Spec : Prop :=
  ∀ n, P15026869981582233166.a n = A202156 (n + 1)

end A202156

/-! ## A202156.P2635091849099739062

`A041019(A017317(n))`
-/

namespace A202156.P2635091849099739062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041019 (A017317 n).toNat

end

end A202156.P2635091849099739062

namespace A202156

/-- `A041019(A017317(n))` -/
def P2635091849099739062.Spec : Prop :=
  ∀ n, P2635091849099739062.a n = A202156 (n + 1)

end A202156

/-! ## A202156.P12365125306037762432

`A041387(A016969(n)-3)`
-/

namespace A202156.P12365125306037762432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041387 (A016969 n - 3).toNat

end

end A202156.P12365125306037762432

namespace A202156

/-- `A041387(A016969(n)-3)` -/
def P12365125306037762432.Spec : Prop :=
  ∀ n, P12365125306037762432.a n = A202156 (n + 1)

end A202156

/-!
# A202158: a(n) = smallest k having at least three prime divisors d such that (d + n) | (k + n).

The programs for A202158, there is no canonical definition to state claims against.
-/

/-! ## A202158.P18083525242024835198

`A029591(∏{p}[n+1, #]^∑{p}[n+1, ceil(n/#)])`
-/

namespace A202158.P18083525242024835198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029591 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) ^ (∑ p ∈ Nat.primeFactors (f2 n), ⌈(n : ℚ) / (p : ℚ)⌉ : ℤ))).toNat

end

end A202158.P18083525242024835198

/-!
# A202161: Number of n X n 0..3 arrays with every row and column running average nondecreasing rightwards and downwards but some diagonal running average having a decrease.

The programs for A202161, there is no canonical definition to state claims against.
-/

/-! ## A202161.P605419680272750352

`A202168(∑[4*n]+1)`
-/

namespace A202161.P605419680272750352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202168 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202161.P605419680272750352

/-! ## A202161.P2145199966891917889

`A202168(A001844(n))+char[7]`
-/

namespace A202161.P2145199966891917889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202168 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A202161.P2145199966891917889

/-! ## A202161.P5576186853365941878

`A201209(n+1)-A201829(n+1)`
-/

namespace A202161.P5576186853365941878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201209 (n + 1) - A201829 (n + 1)

end

end A202161.P5576186853365941878

/-!
# A202162: Number of nX2 0..3 arrays with every row and column running average nondecreasing rightwards and downwards but some diagonal running average having a decrease.

The programs for A202162, there is no canonical definition to state claims against.
-/

/-! ## A202162.P7170729512557373189

`A201210(n+1)-A201830(n+1)`
-/

namespace A202162.P7170729512557373189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201210 (n + 1) - A201830 (n + 1)

end

end A202162.P7170729512557373189

/-! ## A202162.P15372706718963858884

`A202168(∑[n+1]+2)`
-/

namespace A202162.P15372706718963858884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202168 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A202162.P15372706718963858884

/-! ## A202162.P4106769085584946538

`A201216(∑[n+1]+2)-A201830(n+1)`
-/

namespace A202162.P4106769085584946538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (∑ j ∈ Finset.range (n + 1), f1 j + 2) - A201830 (n + 1)

end

end A202162.P4106769085584946538

/-! ## A202162.P16939713138760349929

`A201210(n+1)-A201836(∑[n+1]+2)`
-/

namespace A202162.P16939713138760349929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201210 (n + 1) - A201836 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A202162.P16939713138760349929

/-! ## A202162.P1338111712266685245

`A201210(n+1)%A201830(A077168(n))`
-/

namespace A202162.P1338111712266685245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201210 (n + 1)) (A201830 (A077168 n).toNat)

end

end A202162.P1338111712266685245

/-!
# A202163: Number of nX3 0..3 arrays with every row and column running average nondecreasing rightwards and downwards but some diagonal running average having a decrease.

The programs for A202163, there is no canonical definition to state claims against.
-/

/-! ## A202163.P11908544954003442710

`A201211(n+1)-A201831(n+1)`
-/

namespace A202163.P11908544954003442710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201211 (n + 1) - A201831 (n + 1)

end

end A202163.P11908544954003442710

/-! ## A202163.P17380618497667697780

`A201211(n+1)+-A201831(n+1)%A201831(n+2)`
-/

namespace A202163.P17380618497667697780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201211 (n + 1) + Int.tmod (-A201831 (n + 1)) (A201831 (n + 2))

end

end A202163.P17380618497667697780

/-! ## A202163.P4214457076802260264

`A202168(∑[n+2]+4)`
-/

namespace A202163.P4214457076802260264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202168 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A202163.P4214457076802260264

/-! ## A202163.P4064812323396057063

`lcm((-1)^n, A202168(A167614(n+1)))`
-/

namespace A202163.P4064812323396057063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A202168 (A167614 (n + 1)).toNat)

end

end A202163.P4064812323396057063

/-! ## A202163.P7898629351773702110

`A201211(n+1)-A201836(∑[n+2]+4)`
-/

namespace A202163.P7898629351773702110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201211 (n + 1) - A201836 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A202163.P7898629351773702110

/-!
# A202164: Number of nX4 0..3 arrays with every row and column running average nondecreasing rightwards and downwards but some diagonal running average having a decrease.

The programs for A202164, there is no canonical definition to state claims against.
-/

/-! ## A202164.P2764241133067274438

`A201212(n+1)-A201832(n+1)`
-/

namespace A202164.P2764241133067274438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201212 (n + 1) - A201832 (n + 1)

end

end A202164.P2764241133067274438

/-! ## A202164.P10976637182642301974

`A202168(∑[n+3]+7)`
-/

namespace A202164.P10976637182642301974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202168 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A202164.P10976637182642301974

/-! ## A202164.P4092720547591860074

`A201212(n+1)-A201836(∑[n+3]+7)`
-/

namespace A202164.P4092720547591860074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201212 (n + 1) - A201836 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A202164.P4092720547591860074

/-! ## A202164.P1189487716527464774

`A201216(∑[n+3]+7)-A201832(n+1)`
-/

namespace A202164.P1189487716527464774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (∑ j ∈ Finset.range (n + 1), f1 j + 7) - A201832 (n + 1)

end

end A202164.P1189487716527464774

/-! ## A202164.P2021614466830666528

`A201212(n+1)%(A326679(n)+A201836(∑[n+3]+7))`
-/

namespace A202164.P2021614466830666528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201212 (n + 1)) (A326679 n + A201836 (∑ j ∈ Finset.range (n + 1), f1 j + 7))

end

end A202164.P2021614466830666528

/-!
# A202165: Number of nX5 0..3 arrays with every row and column running average nondecreasing rightwards and downwards but some diagonal running average having a decrease.

The programs for A202165, there is no canonical definition to state claims against.
-/

/-! ## A202165.P15577854380900455428

`A201213(n+1)-A201833(n+1)`
-/

namespace A202165.P15577854380900455428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201213 (n + 1) - A201833 (n + 1)

end

end A202165.P15577854380900455428

/-! ## A202165.P4842698441503205435

`A201213(n+1)%A201833(A077168(n))`
-/

namespace A202165.P4842698441503205435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201213 (n + 1)) (A201833 (A077168 n).toNat)

end

end A202165.P4842698441503205435

/-! ## A202165.P6508924609165747711

`A202168(A374005(n+1))`
-/

namespace A202165.P6508924609165747711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202168 (A374005 (n + 1)).toNat

end

end A202165.P6508924609165747711

/-! ## A202165.P8936221404232168193

`A202168(A167499(n+3))`
-/

namespace A202165.P8936221404232168193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202168 (A167499 (n + 3)).toNat

end

end A202165.P8936221404232168193

/-! ## A202165.P501529085294191467

`A202168(A155212(n)+13)`
-/

namespace A202165.P501529085294191467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202168 (A155212 n + 13).toNat

end

end A202165.P501529085294191467

/-!
# A202166: Number of nX6 0..3 arrays with every row and column running average nondecreasing rightwards and downwards but some diagonal running average having a decrease.

The programs for A202166, there is no canonical definition to state claims against.
-/

/-! ## A202166.P1071101327920411092

`A202168(A374007(n+1))`
-/

namespace A202166.P1071101327920411092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202168 (A374007 (n + 1)).toNat

end

end A202166.P1071101327920411092

/-! ## A202166.P12665484693645521659

`A202168(A166136(n+4))`
-/

namespace A202166.P12665484693645521659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202168 (A166136 (n + 4)).toNat

end

end A202166.P12665484693645521659

/-! ## A202166.P16640206003477893112

`A202168(A056115(n)+21)`
-/

namespace A202166.P16640206003477893112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202168 (A056115 n + 21).toNat

end

end A202166.P16640206003477893112

/-! ## A202166.P12053749321651889781

`A202168(A167499(n+4)+1)`
-/

namespace A202166.P12053749321651889781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202168 (A167499 (n + 4) + 1).toNat

end

end A202166.P12053749321651889781

/-! ## A202166.P17330413131601999293

`A202168(A167614(n+4)+3)`
-/

namespace A202166.P17330413131601999293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202168 (A167614 (n + 4) + 3).toNat

end

end A202166.P17330413131601999293

/-!
# A202167: Number of nX7 0..3 arrays with every row and column running average nondecreasing rightwards and downwards but some diagonal running average having a decrease.

The programs for A202167, there is no canonical definition to state claims against.
-/

/-! ## A202167.P3213013976549782237

`A202168(C(n+7, 2)+n+1)`
-/

namespace A202167.P3213013976549782237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202168 (Nat.choose (n + 7) 2 + (n + 1))

end

end A202167.P3213013976549782237

/-! ## A202167.P13321018529791964939

`A202168(A374008(n+1))`
-/

namespace A202167.P13321018529791964939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202168 (A374008 (n + 1)).toNat

end

end A202167.P13321018529791964939

/-! ## A202167.P11691458232348675861

`A202168(A055999(n+4))`
-/

namespace A202167.P11691458232348675861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202168 (A055999 (n + 4)).toNat

end

end A202167.P11691458232348675861

/-! ## A202167.P17113676198993246526

`A202168(A056121(n)+22)`
-/

namespace A202167.P17113676198993246526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202168 (A056121 n + 22).toNat

end

end A202167.P17113676198993246526

/-!
# A202168: T(n,k)=Number of nXk 0..3 arrays with every row and column running average nondecreasing rightwards and downwards but some diagonal running average having a decrease.

The programs for A202168, there is no canonical definition to state claims against.
-/

/-! ## A202168.P16283142757854488518

`A201216(n+1)-A201836(n+1)`
-/

namespace A202168.P16283142757854488518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (n + 1) - A201836 (n + 1)

end

end A202168.P16283142757854488518

/-! ## A202168.P11238523103012426331

`A201216(A038722(n+1))%A201836(n+1)`
-/

namespace A202168.P11238523103012426331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201216 (A038722 (n + 1)).toNat) (A201836 (n + 1))

end

end A202168.P11238523103012426331

/-! ## A202168.P8236273473569989716

`(A201216(n+1)%A200767(3*n+2))%A201836(n+1)`
-/

namespace A202168.P8236273473569989716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A201216 (n + 1)) (A200767 (3 * n + 2))) (A201836 (n + 1))

end

end A202168.P8236273473569989716

/-! ## A202168.P6476666261522053380

`(A201216(n+1)%A201830(n+1))%A201836(n+1)`
-/

namespace A202168.P6476666261522053380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A201216 (n + 1)) (A201830 (n + 1))) (A201836 (n + 1))

end

end A202168.P6476666261522053380

/-! ## A202168.P15588311516642207549

`A201216(A000027(n+1))%A000027(A201836(n+1))`
-/

namespace A202168.P15588311516642207549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201216 (A000027 (n + 1)).toNat) (A000027 (A201836 (n + 1)).toNat)

end

end A202168.P15588311516642207549

/-!
# A202170: Numbers k such that k^2 has only digits 0, 4 and 8.

The programs for A202170, there is no canonical definition to state claims against.
-/

/-! ## A202170.P13319326186136384574

`2*∪[A136808(n+1), A277959(n+1)]`
-/

namespace A202170.P13319326186136384574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A202170.P13319326186136384574

/-! ## A202170.P15900185167696848226

`sqrt(A202172(n+1))`
-/

namespace A202170.P15900185167696848226
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A202172 (n + 1) : ℝ)

end

end A202170.P15900185167696848226

/-! ## A202170.P5676547380408411424

`floor(sqrt(A202172(Δ[n²]-n)))`
-/

namespace A202170.P5676547380408411424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A202172 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A202170.P5676547380408411424

/-!
# A202171: The covering numbers rho_3(n).

The programs for A202171, there is no canonical definition to state claims against.
-/

/-! ## A202171.P2067493780117186463

`ceil(∑[(n+2)/sqrt(6)])`
-/

namespace A202171.P2067493780117186463
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℝ) / Real.sqrt (6 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A202171.P2067493780117186463

/-! ## A202171.P4167651516447759528

`floor(A395349(n)/5)`
-/

namespace A202171.P4167651516447759528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A395349 n : ℚ) / 5⌋

end

end A202171.P4167651516447759528

/-! ## A202171.P15433541729319748196

`A194986(∑[n+2])`
-/

namespace A202171.P15433541729319748196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194986 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A202171.P15433541729319748196

/-! ## A202171.P14229279357622194411

`Δ[A029092(5*n)]`
-/

namespace A202171.P14229279357622194411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029092 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A202171.P14229279357622194411

/-! ## A202171.P3470709833829710191

`∑[A054450(or(2, n))]`
-/

namespace A202171.P3470709833829710191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054450 (Nat.lor 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202171.P3470709833829710191

/-!
# A202172: Squares containing only the digits 0, 4 or 8.

The programs for A202172, there is no canonical definition to state claims against.
-/

/-! ## A202172.P16510769885814483438

`A202170(n+1)²`
-/

namespace A202172.P16510769885814483438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202170 (n + 1) ^ 2

end

end A202172.P16510769885814483438

/-! ## A202172.P15178720586822923942

`A202170(2*n+1-n)^2`
-/

namespace A202172.P15178720586822923942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202170 (2 * n + 1 - n) ^ 2

end

end A202172.P15178720586822923942

/-! ## A202172.P16775148395093875288

`record[A202170(A020986(n))²]`
-/

namespace A202172.P16775148395093875288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202170 (A020986 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202172.P16775148395093875288

/-! ## A202172.P2140369961557346259

`record[A202170(A126759(n))²]`
-/

namespace A202172.P2140369961557346259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202170 (A126759 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202172.P2140369961557346259

/-! ## A202172.P12577755136664741529

`A202170(n+1)*A202170(C(n+1, n))`
-/

namespace A202172.P12577755136664741529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202170 (n + 1) * A202170 (Nat.choose (n + 1) n)

end

end A202172.P12577755136664741529

/-!
# A202175: Array read by antidiagonals of spreading numbers alpha_n(k).

The programs for A202175, there is no canonical definition to state claims against.
-/

/-! ## A202175.P6944134493475664976

`A068063(A113949(n+1)+A008288(n))`
-/

namespace A202175.P6944134493475664976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A113949 (n + 1) + A008288 n).toNat

end

end A202175.P6944134493475664976

/-! ## A202175.P13359393862430638197

`A306210(n)-A037800(A189111(n+1))*A037800(n)`
-/

namespace A202175.P13359393862430638197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306210 n - A037800 (A189111 (n + 1)).toNat * A037800 n

end

end A202175.P13359393862430638197

/-! ## A202175.P17502240417654061609

`and(p?[A156041(3*n+1)], A156041(n+1))`
-/

namespace A202175.P17502240417654061609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156041 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A156041 (n + 1))

end

end A202175.P17502240417654061609

/-! ## A202175.P14950106309851941507

`A055091(A047874(n+1)*A098361(n))`
-/

namespace A202175.P14950106309851941507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055091 (A047874 (n + 1) * A098361 n).toNat

end

end A202175.P14950106309851941507

/-! ## A202175.P9481631828525180660

`A357186(A320079(n))+A101673(2*n+3)`
-/

namespace A202175.P9481631828525180660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357186 (A320079 n).toNat + A101673 (2 * n + 3)

end

end A202175.P9481631828525180660

/-!
# A202176: Array read by antidiagonals of covering numbers rho_n(k).

The programs for A202176, there is no canonical definition to state claims against.
-/

/-! ## A202176.P2594539783741734184

`A325678(A210341(n)+A173541(n+1))`
-/

namespace A202176.P2594539783741734184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A210341 n + A173541 (n + 1)).toNat

end

end A202176.P2594539783741734184

/-! ## A202176.P12638266548020739601

`A325678(A210341(n)+A025668(n+2))`
-/

namespace A202176.P12638266548020739601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A210341 n + A025668 (n + 2)).toNat

end

end A202176.P12638266548020739601

/-! ## A202176.P618008350569999060

`A325678(A210341(n)+A104763(n+2))`
-/

namespace A202176.P618008350569999060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A210341 n + A104763 (n + 2)).toNat

end

end A202176.P618008350569999060

/-! ## A202176.P14152237090985433201

`A202175(n+1)-A010815(A005935(n+1))`
-/

namespace A202176.P14152237090985433201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202175 (n + 1) - A010815 (A005935 (n + 1)).toNat

end

end A202176.P14152237090985433201

/-! ## A202176.P6510755330436614996

`A001462(A112564(n)%A291166(3*(n+1)))`
-/

namespace A202176.P6510755330436614996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (Int.tmod (A112564 n) (A291166 (3 * (n + 1)))).toNat

end

end A202176.P6510755330436614996

/-!
# A202177: Number of partitions p of n such that each part of p is prime and each part of the conjugate partition of p is also prime.

The programs for A202177, there is no canonical definition to state claims against.
-/

/-! ## A202177.P7292914001584161040

`A087624(∑[A022183(A287822(n))])`
-/

namespace A202177.P7292914001584161040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022183 (A287822 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087624 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A202177.P7292914001584161040

/-! ## A202177.P3207778734570881163

`gcd(A070824(n+1), A174656(A156764(n)))`
-/

namespace A202177.P3207778734570881163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A070824 (n + 1)) (A174656 (A156764 n).toNat)

end

end A202177.P3207778734570881163

/-! ## A202177.P10627652624300544985

`A087624(record[A219209(n)])`
-/

namespace A202177.P10627652624300544985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087624 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A202177.P10627652624300544985

/-! ## A202177.P10719882167954639471

`A339896(A189686(n+1)-(n+1))`
-/

namespace A202177.P10719882167954639471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339896 (A189686 (n + 1) - (n + 1 : ℤ)).toNat

end

end A202177.P10719882167954639471

/-! ## A202177.P17198896079713735068

`A001221(A144907(record[A219209(n)]))`
-/

namespace A202177.P17198896079713735068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A144907 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A202177.P17198896079713735068

/-!
# A202178: Triangle read by rows: T(n,k) = number of n-element unlabeled connected N-free posets of height k (1 <= k <= n).

The programs for A202178, there is no canonical definition to state claims against.
-/

/-! ## A202178.P17800904032074851623

`A163940(A061579(n))-A112802(A304320(n+1))`
-/

namespace A202178.P17800904032074851623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163940 (A061579 n).toNat - A112802 (A304320 (n + 1)).toNat

end

end A202178.P17800904032074851623

/-! ## A202178.P13288034325829198533

`A163940(A061579(n))%(A090576(n)+1)`
-/

namespace A202178.P13288034325829198533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163940 (A061579 n).toNat) (A090576 n + 1)

end

end A202178.P13288034325829198533

/-! ## A202178.P7822593991071895498

`A163940(A061579(n)%A265759(3*n+5))`
-/

namespace A202178.P7822593991071895498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163940 (Int.tmod (A061579 n) (A265759 (3 * n + 5))).toNat

end

end A202178.P7822593991071895498

/-! ## A202178.P13911841075460383813

`A280710(A000079(n))+A163940(A061579(n))`
-/

namespace A202178.P13911841075460383813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280710 (A000079 n).toNat + A163940 (A061579 n).toNat

end

end A202178.P13911841075460383813

/-! ## A202178.P3994528781869264560

`A040749(A074340(3*n+1))*A163940(A061579(n))`
-/

namespace A202178.P3994528781869264560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040749 (A074340 (3 * n + 1)).toNat * A163940 (A061579 n).toNat

end

end A202178.P3994528781869264560

/-!
# A202179: Triangle read by rows: T(n,k) = number of n-element unlabeled connected N-free posets of height k (2 <= k <= n).

The programs for A202179, there is no canonical definition to state claims against.
-/

/-! ## A202179.P3375867566187980898

`A202178(comp[∑[n]]+1)`
-/

namespace A202179.P3375867566187980898
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202178 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A202179.P3375867566187980898

/-! ## A202179.P7326869374536800524

`or(char[2], A202178(A080036(n+1)))`
-/

namespace A202179.P7326869374536800524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A202178 (A080036 (n + 1)).toNat)

end

end A202179.P7326869374536800524

/-! ## A202179.P13023279321572581253

`A007318(∑[n])*A202178(A080036(n+1))`
-/

namespace A202179.P13023279321572581253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A202178 (A080036 (n + 1)).toNat

end

end A202179.P13023279321572581253

/-! ## A202179.P4050600034591443796

`A202178(A080036(n+1))/A007318(C(2, n))`
-/

namespace A202179.P4050600034591443796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202178 (A080036 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A202179.P4050600034591443796

/-! ## A202179.P10376681491267785150

`A000041(C(n, n²))*A202178(A080036(n+1))`
-/

namespace A202179.P10376681491267785150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) * A202178 (A080036 (n + 1)).toNat

end

end A202179.P10376681491267785150

/-! ## A202179.P7314834418793935840

`A014963(6*(n+1))*A202178(A080036(n+1))`
-/

namespace A202179.P7314834418793935840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A202178 (A080036 (n + 1)).toNat

end

end A202179.P7314834418793935840

/-! ## A202179.P13469574532428807250

`A202178(A080036(n+1))+C(2, A000203(n+2))`
-/

namespace A202179.P13469574532428807250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202178 (A080036 (n + 1)).toNat + (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ)

end

end A202179.P13469574532428807250

/-!
# A202180: Number of n-element unlabeled connected N-free posets.

The programs for A202180, there is no canonical definition to state claims against.
-/

/-! ## A202180.P13303199490091759386

`A350783(∑[n]+1)`
-/

namespace A202180.P13303199490091759386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350783 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202180.P13303199490091759386

/-! ## A202180.P11590592788118439931

`A202182(n+1)-A349367(n+1)`
-/

namespace A202180.P11590592788118439931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202182 (n + 1) - A349367 (n + 1)

end

end A202180.P11590592788118439931

/-! ## A202180.P10952173125703927145

`A350783(A000124(n))%A038830(n)`
-/

namespace A202180.P10952173125703927145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350783 (A000124 n).toNat) (A038830 n)

end

end A202180.P10952173125703927145

/-!
# A202181: Triangle read by rows: T(n,k) = number of n-element unlabeled N-free posets of height k (1 <= k <= n).

The programs for A202181, there is no canonical definition to state claims against.
-/

/-! ## A202181.P1869077939225728976

`A130749(n)-A326459(A274741(n))`
-/

namespace A202181.P1869077939225728976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130749 n - A326459 (A274741 n).toNat

end

end A202181.P1869077939225728976

/-! ## A202181.P10970141450473524869

`A350261(A274741(n))+A008277(n+1)`
-/

namespace A202181.P10970141450473524869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350261 (A274741 n).toNat + A008277 (n + 1)

end

end A202181.P10970141450473524869

/-! ## A202181.P13324543820130058019

`A008277(n+1)-A006925(A084938(n))`
-/

namespace A202181.P13324543820130058019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) - A006925 (A084938 n).toNat

end

end A202181.P13324543820130058019

/-! ## A202181.P16006473551829857062

`A008277(n+1)-A033665(A113092(n))`
-/

namespace A202181.P16006473551829857062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) - A033665 (A113092 n).toNat

end

end A202181.P16006473551829857062

/-!
# A202182: Number of n-element unlabeled N-free posets.

The programs for A202182, there is no canonical definition to state claims against.
-/

/-! ## A202182.P8848077588077331387

`A202180(n+1)+A349367(n+1)`
-/

namespace A202182.P8848077588077331387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202180 (n + 1) + A349367 (n + 1)

end

end A202182.P8848077588077331387

/-! ## A202182.P2252175970894957288

`A350783(∑[n]+1)+A349367(n+1)`
-/

namespace A202182.P2252175970894957288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350783 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + A349367 (n + 1)

end

end A202182.P2252175970894957288

/-! ## A202182.P1181349779155331762

`A349367(n+1)+A202180(A216556(n))`
-/

namespace A202182.P1181349779155331762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349367 (n + 1) + A202180 (A216556 n).toNat

end

end A202182.P1181349779155331762

/-!
# A202184: Triangle T(n,m) = coefficient of x^n in expansion of x^m*(x+1)^(m*x^2) = sum(n>=m, T(n,m) x^n*m!/n!).

The programs for A202184, there is no canonical definition to state claims against.
-/

/-! ## A202184.P14171372601276563165

`A349632(A312902(n)^A106351(n+1))`
-/

namespace A202184.P14171372601276563165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349632 (SequenceMachineLib.roundAway ((A312902 n : ℚ) ^ (A106351 (n + 1) : ℤ))).toNat

end

end A202184.P14171372601276563165

/-!
# A202187: Index of A190874 at record terms.

The programs for A202187, there is no canonical definition to state claims against.
-/

/-! ## A202187.P13553063664280435738

`A056171(A234298(n+1))`
-/

namespace A202187.P13553063664280435738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A234298 (n + 1)).toNat

end

end A202187.P13553063664280435738

/-! ## A202187.P12101673290599689979

`record[A056171(A174641(n+2)-A056171(n+2))]`
-/

namespace A202187.P12101673290599689979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A174641 (n + 2) - A056171 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202187.P12101673290599689979

/-! ## A202187.P17001148353536567726

`record[A202188(n+1)-char[1]]`
-/

namespace A202187.P17001148353536567726
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202188 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202187.P17001148353536567726

/-! ## A202187.P16435967042071828180

`record[A202188(floor(n/(xor(n, n+1)+1))+1)]`
-/

namespace A202187.P16435967042071828180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202188 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202187.P16435967042071828180

/-!
# A202188: Index of A168425 when A174641(n) = A168425(m); a(n) = m.

The programs for A202188, there is no canonical definition to state claims against.
-/

/-! ## A202188.P14948095484786797084

`A056171(A174641(n+1)-1)`
-/

namespace A202188.P14948095484786797084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A174641 (n + 1) - 1).toNat

end

end A202188.P14948095484786797084

/-! ## A202188.P12082153197237020378

`A056171(xor(1, A174641(n+1)))`
-/

namespace A202188.P12082153197237020378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (Int.xor 1 (A174641 (n + 1))).toNat

end

end A202188.P12082153197237020378

/-! ## A202188.P5212759160406376985

`A056171(and(-2, A174641(n+1)))`
-/

namespace A202188.P5212759160406376985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (Int.land (-2) (A174641 (n + 1))).toNat

end

end A202188.P5212759160406376985

/-! ## A202188.P18048287310990072229

`A056171(A000010(A174641(n+1)))`
-/

namespace A202188.P18048287310990072229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A000010 (A174641 (n + 1)).toNat).toNat

end

end A202188.P18048287310990072229

/-! ## A202188.P2281826895818450061

`A057428(n+1)+A056171(A174641(n+1))`
-/

namespace A202188.P2281826895818450061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A056171 (A174641 (n + 1)).toNat

end

end A202188.P2281826895818450061

/-!
# A202190: Triangle T(n,m) = coefficient of x^n in expansion of [x*(x+1)^(x+1)]^m = sum(n>=m, T(n,m) x^n*m!/n!).

The programs for A202190, there is no canonical definition to state claims against.
-/

/-! ## A202190.P7719892022623349552

`gcd(A066667(n), A092960(A008578(n+1)))`
-/

namespace A202190.P7719892022623349552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066667 n) (A092960 (A008578 (n + 1)).toNat)

end

end A202190.P7719892022623349552

/-!
# A202191: Triangle T(n,m) = coefficient of x^n in expansion of [x/(1-x-x^3)]^m = sum(n>=m, T(n,m) x^n).

The programs for A202191, there is no canonical definition to state claims against.
-/

/-! ## A202191.P9767010324213157286

`A144401(∑[char[∑[n]]]²-n)`
-/

namespace A202191.P9767010324213157286
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144401 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A202191.P9767010324213157286

/-! ## A202191.P202108468263068634

`or(char[1], A144401(A038722(n+1)))`
-/

namespace A202191.P202108468263068634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A144401 (A038722 (n + 1)).toNat)

end

end A202191.P202108468263068634

/-! ## A202191.P416365968812173422

`gcd(A000038(n), A144401(A038722(n+1)))`
-/

namespace A202191.P416365968812173422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A144401 (A038722 (n + 1)).toNat)

end

end A202191.P416365968812173422

/-! ## A202191.P2341721606193255754

`lcm(A020985(n), A144401(A038722(n+1)))`
-/

namespace A202191.P2341721606193255754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A144401 (A038722 (n + 1)).toNat)

end

end A202191.P2341721606193255754

/-! ## A202191.P7393588641742267549

`A007318(C(2, n))*A144401(A038722(n+1))`
-/

namespace A202191.P7393588641742267549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A144401 (A038722 (n + 1)).toNat

end

end A202191.P7393588641742267549

/-! ## A202191.P6740516278236202797

`A144401(A038722(n+1))+A008683(4*(n+1))`
-/

namespace A202191.P6740516278236202797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144401 (A038722 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A202191.P6740516278236202797

/-! ## A202191.P10760631730224605680

`A000041(C(2, n+2))*A144401(A038722(n+1))`
-/

namespace A202191.P10760631730224605680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A144401 (A038722 (n + 1)).toNat

end

end A202191.P10760631730224605680

/-! ## A202191.P16719343349748344384

`A000010(floor(1/(n+1))+1)*A144401(A038722(n+1))`
-/

namespace A202191.P16719343349748344384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (⌊1 / (n + 1 : ℚ)⌋ + 1).toNat * A144401 (A038722 (n + 1)).toNat

end

end A202191.P16719343349748344384

/-! ## A202191.P16503836772785531499

`A144401(A038722(n+1))%(A000045(n)+2)`
-/

namespace A202191.P16503836772785531499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144401 (A038722 (n + 1)).toNat) (A000045 n + 2)

end

end A202191.P16503836772785531499

/-! ## A202191.P7748959451721860334

`A144401(A038722(n+1))%A001612(n)`
-/

namespace A202191.P7748959451721860334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144401 (A038722 (n + 1)).toNat) (A001612 n)

end

end A202191.P7748959451721860334

/-!
# A202192: Number of partitions of 5n with equal number of parts congruent to each of 1, 2, 3 and 4 modulo 5.

The programs for A202192, there is no canonical definition to state claims against.
-/

/-! ## A202192.P735844570388857473

`A046787(n)+A000041(n)`
-/

namespace A202192.P735844570388857473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046787 n + A000041 n

end

end A202192.P735844570388857473

/-! ## A202192.P7621459659070146318

`A046775(5*n)`
-/

namespace A202192.P7621459659070146318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046775 (5 * n)

end

end A202192.P7621459659070146318

/-! ## A202192.P2272225084731593116

`A046787(n)+∑[A002865(n)]`
-/

namespace A202192.P2272225084731593116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046787 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202192.P2272225084731593116

/-! ## A202192.P8424299687502117753

`A000065(n)+A046787(n)+1`
-/

namespace A202192.P8424299687502117753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (A046787 n + 1)

end

end A202192.P8424299687502117753

/-! ## A202192.P16121822083532699339

`A046787(n)+A035363(2*n)`
-/

namespace A202192.P16121822083532699339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046787 n + A035363 (2 * n)

end

end A202192.P16121822083532699339

/-! ## A202192.P16375445424282905628

`record[A046775(n+1)+1]-A016777(n+1)%(n+1)`
-/

namespace A202192.P16375445424282905628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046775 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - Int.tmod (A016777 (n + 1)) (n + 1 : ℤ)

end

end A202192.P16375445424282905628

/-! ## A202192.P7364502249136103319

`record[A046775(n+1)]+n+1-(n+1)%A003961(n+1)`
-/

namespace A202192.P7364502249136103319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((n + 1 : ℤ) - Int.tmod (n + 1 : ℤ) (A003961 (n + 1)))

end

end A202192.P7364502249136103319

/-! ## A202192.P14482912176436263652

`A046787(n)+A035444(A008586(n))`
-/

namespace A202192.P14482912176436263652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046787 n + A035444 (A008586 n).toNat

end

end A202192.P14482912176436263652

/-! ## A202192.P13902410223463388419

`A046775(A008458(n)-n)+A000007(n)`
-/

namespace A202192.P13902410223463388419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046775 (A008458 n - (n : ℤ)).toNat + A000007 n

end

end A202192.P13902410223463388419

/-!
# A202193: Triangle read by rows: T(n,m) = coefficient of x^n in expansion of (x/(1 - x - x^2 - x^3 - x^4))^m.

The programs for A202193, there is no canonical definition to state claims against.
-/

/-! ## A202193.P3721176355422179473

`A105306(n+1)-A016389(A119502(n))`
-/

namespace A202193.P3721176355422179473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (n + 1) - A016389 (A119502 n).toNat

end

end A202193.P3721176355422179473

/-! ## A202193.P4900677090158958576

`A105306(n+1)-A185284(A055248(n))`
-/

namespace A202193.P4900677090158958576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (n + 1) - A185284 (A055248 n).toNat

end

end A202193.P4900677090158958576

/-! ## A202193.P12748884933222657240

`A105306(n+1)-A185284(A109435(n))`
-/

namespace A202193.P12748884933222657240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (n + 1) - A185284 (A109435 n).toNat

end

end A202193.P12748884933222657240

/-! ## A202193.P9884524808414945322

`A105306(n+1)-A185284(A130321(n))`
-/

namespace A202193.P9884524808414945322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (n + 1) - A185284 (A130321 n).toNat

end

end A202193.P9884524808414945322

/-!
# A202194: Number of (n+2)X(n+2) binary arrays avoiding patterns 001 and 101 in rows and columns.

The programs for A202194, there is no canonical definition to state claims against.
-/

/-! ## A202194.P12723998099317769096

`4*(n+3)²*(2*(n+1)+1)!/((n+1)!*(n+2)!)`
-/

namespace A202194.P12723998099317769096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * (n + 3) ^ 2 * Nat.factorial (2 * (n + 1) + 1) : ℚ) / (Nat.factorial (n + 1) * Nat.factorial (n + 2) : ℚ)

end

end A202194.P12723998099317769096

/-! ## A202194.P3445396507430517204

`2*A037966(n+3)`
-/

namespace A202194.P3445396507430517204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037966 (n + 3)

end

end A202194.P3445396507430517204

/-! ## A202194.P15260693175849127542

`(n+3)²*A028329(n+2)`
-/

namespace A202194.P15260693175849127542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) * A028329 (n + 2)

end

end A202194.P15260693175849127542

/-! ## A202194.P6498189883030183210

`(n+3)²*A100320(n+2)`
-/

namespace A202194.P6498189883030183210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) * A100320 (n + 2)

end

end A202194.P6498189883030183210

/-! ## A202194.P16752072321464232304

`2*A000108(n+2)*(n+3)^3`
-/

namespace A202194.P16752072321464232304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000108 (n + 2) * ((n + 3) ^ 3 : ℤ)

end

end A202194.P16752072321464232304

/-!
# A202195: Number of (n+2) X 3 binary arrays avoiding patterns 001 and 101 in rows and columns.

The programs for A202195, the canonical program `A202195.P11542650013915500857` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202195 has offset 1).

The definition of A202195 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202195.P10577391861241836165

`3*(n+4)*(n+3)²`
-/

namespace A202195.P10577391861241836165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 4) * (n + 3) ^ 2

end

end A202195.P10577391861241836165

namespace A202195

/-- `3*(n+4)*(n+3)²` -/
def P10577391861241836165.Spec : Prop :=
  ∀ n, (P10577391861241836165.a n : ℤ) = A202195 (n + 1)

theorem P10577391861241836165.correct : P10577391861241836165.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A202195, Nat.add_sub_cancel, A202195.P10577391861241836165.a, A202195.P11542650013915500857.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A202195, Nat.add_sub_cancel, A202195.P10577391861241836165.a, A202195.P11542650013915500857.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A202195

/-! ## A202195.P11542650013915500857

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=108, a(1)=240, a(2)=450, a(3)=756`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202195

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P11542650013915500857.Spec : Prop :=
  ∀ n, P11542650013915500857.a n = A202195 (n + 1)

theorem P11542650013915500857.correct : P11542650013915500857.Spec := by
  intro n
  simp only [A202195, Nat.add_sub_cancel]

end A202195

/-! ## A202195.P13851487994558672642

`lcm(n+3, Δ[(n+3)^3])-(n+3)`
-/

namespace A202195.P13851487994558672642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 3 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℤ) - (n + 3 : ℤ)

end

end A202195.P13851487994558672642

namespace A202195

/-- `lcm(n+3, Δ[(n+3)^3])-(n+3)` -/
def P13851487994558672642.Spec : Prop :=
  ∀ n, P13851487994558672642.a n = A202195 (n + 1)

end A202195

/-! ## A202195.P5415787921218679387

`3*A003777(n+3)+3`
-/

namespace A202195.P5415787921218679387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003777 (n + 3) + 3

end

end A202195.P5415787921218679387

namespace A202195

/-- `3*A003777(n+3)+3` -/
def P5415787921218679387.Spec : Prop :=
  ∀ n, P5415787921218679387.a n = A202195 (n + 1)

theorem P5415787921218679387.correct : P5415787921218679387.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A202195, Nat.add_sub_cancel, A202195.P5415787921218679387.a, A202195.P11542650013915500857.a, A003777, A003777.P10121058096625278706.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A202195, Nat.add_sub_cancel, A202195.P5415787921218679387.a, A202195.P11542650013915500857.a, A003777, A003777.P10121058096625278706.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A202195

/-! ## A202195.P16419097729064695224

`4*A085789(n+3)/2`
-/

namespace A202195.P16419097729064695224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A085789 (n + 3) : ℚ) / 2

end

end A202195.P16419097729064695224

namespace A202195

/-- `4*A085789(n+3)/2` -/
def P16419097729064695224.Spec : Prop :=
  ∀ n, P16419097729064695224.a n = (A202195 (n + 1) : ℚ)

end A202195

/-! ## A202195.P7680725282593549921

`Δ[A206808(n+3)]-(n+3)`
-/

namespace A202195.P7680725282593549921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206808 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 3 : ℤ)

end

end A202195.P7680725282593549921

namespace A202195

/-- `Δ[A206808(n+3)]-(n+3)` -/
def P7680725282593549921.Spec : Prop :=
  ∀ n, P7680725282593549921.a n = A202195 (n + 1)

end A202195

/-! ## A202195.P7909028546591420057

`A059986(n+2)+A033581(n+3)`
-/

namespace A202195.P7909028546591420057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059986 (n + 2) + A033581 (n + 3)

end

end A202195.P7909028546591420057

namespace A202195

/-- `A059986(n+2)+A033581(n+3)` -/
def P7909028546591420057.Spec : Prop :=
  ∀ n, P7909028546591420057.a n = A202195 (n + 1)

theorem P7909028546591420057.correct : P7909028546591420057.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A202195, Nat.add_sub_cancel, A202195.P7909028546591420057.a, A202195.P11542650013915500857.a, A033581, A033581.P13583599227635646969.a, A059986, A059986.P854937850389378493.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A202195, Nat.add_sub_cancel, A202195.P7909028546591420057.a, A202195.P11542650013915500857.a, A033581, A033581.P13583599227635646969.a, A059986, A059986.P854937850389378493.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A202195

/-! ## A202195.P18235756138944232144

`Δ[3*A153978(n+3)]`
-/

namespace A202195.P18235756138944232144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A153978 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A202195.P18235756138944232144

namespace A202195

/-- `Δ[3*A153978(n+3)]` -/
def P18235756138944232144.Spec : Prop :=
  ∀ n, P18235756138944232144.a n = A202195 (n + 1)

end A202195

/-! ## A202195.P2615880683999302628

`Δ[6*A001296(n+2)]`
-/

namespace A202195.P2615880683999302628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A001296 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A202195.P2615880683999302628

namespace A202195

/-- `Δ[6*A001296(n+2)]` -/
def P2615880683999302628.Spec : Prop :=
  ∀ n, P2615880683999302628.a n = A202195 (n + 1)

end A202195

/-! ## A202195.P9878572554907603045

`A249354(n+3)-(n+3)`
-/

namespace A202195.P9878572554907603045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249354 (n + 3) - (n + 3 : ℤ)

end

end A202195.P9878572554907603045

namespace A202195

/-- `A249354(n+3)-(n+3)` -/
def P9878572554907603045.Spec : Prop :=
  ∀ n, P9878572554907603045.a n = A202195 (n + 1)

theorem P9878572554907603045.correct : P9878572554907603045.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A202195, Nat.add_sub_cancel, A202195.P9878572554907603045.a, A202195.P11542650013915500857.a, A249354, A249354.P14794765986060037338.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A202195, Nat.add_sub_cancel, A202195.P9878572554907603045.a, A202195.P11542650013915500857.a, A249354, A249354.P14794765986060037338.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A202195

/-! ## A202195.P16353079658267886265

`A050409(n+3)+A002412(n+3)`
-/

namespace A202195.P16353079658267886265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050409 (n + 3) + A002412 (n + 3)

end

end A202195.P16353079658267886265

namespace A202195

/-- `A050409(n+3)+A002412(n+3)` -/
def P16353079658267886265.Spec : Prop :=
  ∀ n, P16353079658267886265.a n = A202195 (n + 1)

end A202195

/-! ## A202195.P1208438836359921909

`A135713(n+3)+A002414(n+3)`
-/

namespace A202195.P1208438836359921909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135713 (n + 3) + A002414 (n + 3)

end

end A202195.P1208438836359921909

namespace A202195

/-- `A135713(n+3)+A002414(n+3)` -/
def P1208438836359921909.Spec : Prop :=
  ∀ n, P1208438836359921909.a n = A202195 (n + 1)

end A202195

/-! ## A202195.P16417085961964637185

`A027903(n+3)-A002378(n+3)`
-/

namespace A202195.P16417085961964637185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027903 (n + 3) - A002378 (n + 3)

end

end A202195.P16417085961964637185

namespace A202195

/-- `A027903(n+3)-A002378(n+3)` -/
def P16417085961964637185.Spec : Prop :=
  ∀ n, P16417085961964637185.a n = A202195 (n + 1)

theorem P16417085961964637185.correct : P16417085961964637185.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A202195, Nat.add_sub_cancel, A202195.P16417085961964637185.a, A202195.P11542650013915500857.a, A002378, A002378.P6342434596694243671.a, A027903, A027903.P4209147286881915011.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A202195, Nat.add_sub_cancel, A202195.P16417085961964637185.a, A202195.P11542650013915500857.a, A002378, A002378.P6342434596694243671.a, A027903, A027903.P4209147286881915011.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A202195

/-! ## A202195.P116125707167066477

`A220443(n+3)-A045943(n+3)`
-/

namespace A202195.P116125707167066477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220443 (n + 3) - A045943 (n + 3)

end

end A202195.P116125707167066477

namespace A202195

/-- `A220443(n+3)-A045943(n+3)` -/
def P116125707167066477.Spec : Prop :=
  ∀ n, P116125707167066477.a n = A202195 (n + 1)

end A202195

/-! ## A202195.P5967110616027722933

`A204674(n+3)-A069778(n+3)`
-/

namespace A202195.P5967110616027722933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204674 (n + 3) - A069778 (n + 3)

end

end A202195.P5967110616027722933

namespace A202195

/-- `A204674(n+3)-A069778(n+3)` -/
def P5967110616027722933.Spec : Prop :=
  ∀ n, P5967110616027722933.a n = A202195 (n + 1)

theorem P5967110616027722933.correct : P5967110616027722933.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A202195, Nat.add_sub_cancel, A202195.P5967110616027722933.a, A202195.P11542650013915500857.a, A069778, A069778.P902300681639061686.a, A204674, A204674.P410369923834642929.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A202195, Nat.add_sub_cancel, A202195.P5967110616027722933.a, A202195.P11542650013915500857.a, A069778, A069778.P902300681639061686.a, A204674, A204674.P410369923834642929.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A202195

/-! ## A202195.P15312205048024020427

`A270205(n+4)`
-/

namespace A202195.P15312205048024020427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270205 (n + 4)

end

end A202195.P15312205048024020427

namespace A202195

/-- `A270205(n+4)` -/
def P15312205048024020427.Spec : Prop :=
  ∀ n, P15312205048024020427.a n = A202195 (n + 1)

theorem P15312205048024020427.correct : P15312205048024020427.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A202195, Nat.add_sub_cancel, A202195.P15312205048024020427.a, A202195.P11542650013915500857.a, A270205, A270205.P4965580866994252023.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A202195, Nat.add_sub_cancel, A202195.P15312205048024020427.a, A202195.P11542650013915500857.a, A270205, A270205.P4965580866994252023.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A202195

/-! ## A202195.P16558113834585464127

`Δ[A000217(n+2)*A347538(3*n+7)]`
-/

namespace A202195.P16558113834585464127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 2) * A347538 (3 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A202195.P16558113834585464127

namespace A202195

/-- `Δ[A000217(n+2)*A347538(3*n+7)]` -/
def P16558113834585464127.Spec : Prop :=
  ∀ n, P16558113834585464127.a n = A202195 (n + 1)

end A202195

/-! ## A202195.P5575832630178219325

`record[A270205(A061395(A020742(n)))]`
-/

namespace A202195.P5575832630178219325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270205 (A061395 (A020742 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202195.P5575832630178219325

namespace A202195

/-- `record[A270205(A061395(A020742(n)))]` -/
def P5575832630178219325.Spec : Prop :=
  ∀ n, P5575832630178219325.a n = A202195 (n + 1)

end A202195

/-! ## A202195.P4421708925505817097

`A129003(n+3)/A000244(n+2)`
-/

namespace A202195.P4421708925505817097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129003 (n + 3) : ℚ) / (A000244 (n + 2) : ℚ)

end

end A202195.P4421708925505817097

namespace A202195

/-- `A129003(n+3)/A000244(n+2)` -/
def P4421708925505817097.Spec : Prop :=
  ∀ n, P4421708925505817097.a n = (A202195 (n + 1) : ℚ)

theorem P4421708925505817097.correct : P4421708925505817097.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A202195, Nat.add_sub_cancel, A202195.P4421708925505817097.a, A202195.P11542650013915500857.a, A000244, A000244.P17162167222172810417.a, A129003, A129003.P4245029837086348436.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A202195, Nat.add_sub_cancel, A202195.P4421708925505817097.a, A202195.P11542650013915500857.a, A000244, A000244.P17162167222172810417.a, A129003, A129003.P4245029837086348436.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A202195

/-!
# A202196: Number of (n+2) X 4 binary arrays avoiding patterns 001 and 101 in rows and columns.

The programs for A202196, the canonical program `A202196.P16132349134292012780` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202196 has offset 1).

The definition of A202196 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202196.P16132349134292012780

`4*(n+5)*(n+4)*(n+3)²/3`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202196

/-- `4*(n+5)*(n+4)*(n+3)²/3` -/
def P16132349134292012780.Spec : Prop :=
  ∀ n, P16132349134292012780.a n = (A202196 (n + 1) : ℚ)

end A202196

/-! ## A202196.P1441446916735778807

`Δ[8*A034263(n+1)]`
-/

namespace A202196.P1441446916735778807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A034263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A202196.P1441446916735778807

namespace A202196

/-- `Δ[8*A034263(n+1)]` -/
def P1441446916735778807.Spec : Prop :=
  ∀ n, P1441446916735778807.a n = A202196 (n + 1)

end A202196

/-! ## A202196.P4088649762710703172

`8*A002417(n+3)`
-/

namespace A202196.P4088649762710703172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A002417 (n + 3)

end

end A202196.P4088649762710703172

namespace A202196

/-- `8*A002417(n+3)` -/
def P4088649762710703172.Spec : Prop :=
  ∀ n, P4088649762710703172.a n = A202196 (n + 1)

end A202196

/-! ## A202196.P17793070882395737426

`(n+3)*Δ[A162668(n+2)]`
-/

namespace A202196.P17793070882395737426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162668 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * (f1 (n + 1) - f1 n)

end

end A202196.P17793070882395737426

namespace A202196

/-- `(n+3)*Δ[A162668(n+2)]` -/
def P17793070882395737426.Spec : Prop :=
  ∀ n, P17793070882395737426.a n = A202196 (n + 1)

end A202196

/-! ## A202196.P6850843761676975954

`(n+3)*(A273316(n+3)-1)`
-/

namespace A202196.P6850843761676975954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * (A273316 (n + 3) - 1)

end

end A202196.P6850843761676975954

namespace A202196

/-- `(n+3)*(A273316(n+3)-1)` -/
def P6850843761676975954.Spec : Prop :=
  ∀ n, P6850843761676975954.a n = A202196 (n + 1)

end A202196

/-! ## A202196.P4323298720857854233

`2*(n+3)*A210440(n+3)`
-/

namespace A202196.P4323298720857854233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 3 : ℤ) * A210440 (n + 3))

end

end A202196.P4323298720857854233

namespace A202196

/-- `2*(n+3)*A210440(n+3)` -/
def P4323298720857854233.Spec : Prop :=
  ∀ n, P4323298720857854233.a n = A202196 (n + 1)

end A202196

/-! ## A202196.P15005079042190557249

`(n+3)*(A273480(n+3)-(n-1))`
-/

namespace A202196.P15005079042190557249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * (A273480 (n + 3) - ((n : ℤ) - 1))

end

end A202196.P15005079042190557249

namespace A202196

/-- `(n+3)*(A273480(n+3)-(n-1))` -/
def P15005079042190557249.Spec : Prop :=
  ∀ n, P15005079042190557249.a n = A202196 (n + 1)

end A202196

/-! ## A202196.P6863700052812343630

`(2*(n+2)+2)*Δ[A033488(n+2)]`
-/

namespace A202196.P6863700052812343630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033488 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) + 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A202196.P6863700052812343630

namespace A202196

/-- `(2*(n+2)+2)*Δ[A033488(n+2)]` -/
def P6863700052812343630.Spec : Prop :=
  ∀ n, P6863700052812343630.a n = A202196 (n + 1)

end A202196

/-! ## A202196.P6281223222000562286

`A005843(n+3)*A210440(n+3)`
-/

namespace A202196.P6281223222000562286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 3) * A210440 (n + 3)

end

end A202196.P6281223222000562286

namespace A202196

/-- `A005843(n+3)*A210440(n+3)` -/
def P6281223222000562286.Spec : Prop :=
  ∀ n, P6281223222000562286.a n = A202196 (n + 1)

end A202196

/-! ## A202196.P6901771677320508558

`8*A002624(2*(n+2))`
-/

namespace A202196.P6901771677320508558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A002624 (2 * (n + 2))

end

end A202196.P6901771677320508558

namespace A202196

/-- `8*A002624(2*(n+2))` -/
def P6901771677320508558.Spec : Prop :=
  ∀ n, P6901771677320508558.a n = A202196 (n + 1)

end A202196

/-! ## A202196.P14802275280572106180

`4*A032091(2*(n+5))`
-/

namespace A202196.P14802275280572106180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A032091 (2 * (n + 5))

end

end A202196.P14802275280572106180

namespace A202196

/-- `4*A032091(2*(n+5))` -/
def P14802275280572106180.Spec : Prop :=
  ∀ n, P14802275280572106180.a n = A202196 (n + 1)

end A202196

/-! ## A202196.P15643319449138842336

`Δ[8*A038163(2*(n+1))]`
-/

namespace A202196.P15643319449138842336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A038163 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A202196.P15643319449138842336

namespace A202196

/-- `Δ[8*A038163(2*(n+1))]` -/
def P15643319449138842336.Spec : Prop :=
  ∀ n, P15643319449138842336.a n = A202196 (n + 1)

end A202196

/-! ## A202196.P8145762414038607727

`record[A000292(A057979(n+7))*A008574(n+6)]`
-/

namespace A202196.P8145762414038607727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A057979 (n + 7)).toNat * A008574 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202196.P8145762414038607727

namespace A202196

/-- `record[A000292(A057979(n+7))*A008574(n+6)]` -/
def P8145762414038607727.Spec : Prop :=
  ∀ n, P8145762414038607727.a n = A202196 (n + 1)

end A202196

/-! ## A202196.P2929753023350848277

`(n+3)*(A273744(n+3)-(n+3))`
-/

namespace A202196.P2929753023350848277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * (A273744 (n + 3) - (n + 3 : ℤ))

end

end A202196.P2929753023350848277

namespace A202196

/-- `(n+3)*(A273744(n+3)-(n+3))` -/
def P2929753023350848277.Spec : Prop :=
  ∀ n, P2929753023350848277.a n = A202196 (n + 1)

end A202196

/-! ## A202196.P14617581519429582425

`(n+3)*(A273790(n+3)-n)`
-/

namespace A202196.P14617581519429582425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * (A273790 (n + 3) - (n : ℤ))

end

end A202196.P14617581519429582425

namespace A202196

/-- `(n+3)*(A273790(n+3)-n)` -/
def P14617581519429582425.Spec : Prop :=
  ∀ n, P14617581519429582425.a n = A202196 (n + 1)

end A202196

/-!
# A202197: Number of (n+2) X 5 binary arrays avoiding patterns 001 and 101 in rows and columns.

The programs for A202197, the canonical program `A202197.P11282714500540730215` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202197 has offset 1).

The definition of A202197 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202197.P11282714500540730215

`5*(n+6)*(n+5)*(n+4)*(n+3)²/12`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202197

/-- `5*(n+6)*(n+5)*(n+4)*(n+3)²/12` -/
def P11282714500540730215.Spec : Prop :=
  ∀ n, P11282714500540730215.a n = (A202197 (n + 1) : ℚ)

end A202197

/-! ## A202197.P10791236047166563724

`10*A027800(n+2)`
-/

namespace A202197.P10791236047166563724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A027800 (n + 2)

end

end A202197.P10791236047166563724

namespace A202197

/-- `10*A027800(n+2)` -/
def P10791236047166563724.Spec : Prop :=
  ∀ n, P10791236047166563724.a n = A202197 (n + 1)

end A202197

/-! ## A202197.P2525606714049168285

`Δ[10*A051946(n+1)]`
-/

namespace A202197.P2525606714049168285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A051946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A202197.P2525606714049168285

namespace A202197

/-- `Δ[10*A051946(n+1)]` -/
def P2525606714049168285.Spec : Prop :=
  ∀ n, P2525606714049168285.a n = A202197 (n + 1)

end A202197

/-! ## A202197.P11385977956997797475

`2*(n+3)*A154286(n+2)`
-/

namespace A202197.P11385977956997797475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 3 : ℤ) * A154286 (n + 2))

end

end A202197.P11385977956997797475

namespace A202197

/-- `2*(n+3)*A154286(n+2)` -/
def P11385977956997797475.Spec : Prop :=
  ∀ n, P11385977956997797475.a n = A202197 (n + 1)

end A202197

/-! ## A202197.P1016243022432042014

`A005843(n+3)*A154286(n+2)`
-/

namespace A202197.P1016243022432042014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 3) * A154286 (n + 2)

end

end A202197.P1016243022432042014

namespace A202197

/-- `A005843(n+3)*A154286(n+2)` -/
def P1016243022432042014.Spec : Prop :=
  ∀ n, P1016243022432042014.a n = A202197 (n + 1)

end A202197

/-! ## A202197.P7912165897362344497

`(n+3)*Δ[A266732(n+2)]`
-/

namespace A202197.P7912165897362344497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266732 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * (f1 (n + 1) - f1 n)

end

end A202197.P7912165897362344497

namespace A202197

/-- `(n+3)*Δ[A266732(n+2)]` -/
def P7912165897362344497.Spec : Prop :=
  ∀ n, P7912165897362344497.a n = A202197 (n + 1)

end A202197

/-! ## A202197.P11993347024417947819

`A000096(n+3)*A134481(n+3)`
-/

namespace A202197.P11993347024417947819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n + 3) * A134481 (n + 3)

end

end A202197.P11993347024417947819

namespace A202197

/-- `A000096(n+3)*A134481(n+3)` -/
def P11993347024417947819.Spec : Prop :=
  ∀ n, P11993347024417947819.a n = A202197 (n + 1)

end A202197

/-! ## A202197.P8389900951921342657

`10*(n+3)*A000332(n+6)`
-/

namespace A202197.P8389900951921342657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * (n + 3) : ℤ) * A000332 (n + 6)

end

end A202197.P8389900951921342657

namespace A202197

/-- `10*(n+3)*A000332(n+6)` -/
def P8389900951921342657.Spec : Prop :=
  ∀ n, P8389900951921342657.a n = A202197 (n + 1)

end A202197

/-! ## A202197.P1912394790336931191

`A008706(n+3)*A034827(n+6)`
-/

namespace A202197.P1912394790336931191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (n + 3) * A034827 (n + 6)

end

end A202197.P1912394790336931191

namespace A202197

/-- `A008706(n+3)*A034827(n+6)` -/
def P1912394790336931191.Spec : Prop :=
  ∀ n, P1912394790336931191.a n = A202197 (n + 1)

end A202197

/-! ## A202197.P17533989279162207720

`A007318(A052905(n+4))*A008592(n+3)`
-/

namespace A202197.P17533989279162207720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A052905 (n + 4)).toNat * A008592 (n + 3)

end

end A202197.P17533989279162207720

namespace A202197

/-- `A007318(A052905(n+4))*A008592(n+3)` -/
def P17533989279162207720.Spec : Prop :=
  ∀ n, P17533989279162207720.a n = A202197 (n + 1)

end A202197

/-!
# A202198: Number of (n+2) X 6 binary arrays avoiding patterns 001 and 101 in rows and columns.

The programs for A202198, the canonical program `A202198.P11906097394137282086` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202198 has offset 1).

The definition of A202198 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202198.P11906097394137282086

`(n+7)*(n+6)*(n+5)*(n+4)*(n+3)²/10`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202198

/-- `(n+7)*(n+6)*(n+5)*(n+4)*(n+3)²/10` -/
def P11906097394137282086.Spec : Prop :=
  ∀ n, P11906097394137282086.a n = (A202198 (n + 1) : ℚ)

end A202198

/-! ## A202198.P17190488682123380629

`12*A027810(n+2)`
-/

namespace A202198.P17190488682123380629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A027810 (n + 2)

end

end A202198.P17190488682123380629

namespace A202198

/-- `12*A027810(n+2)` -/
def P17190488682123380629.Spec : Prop :=
  ∀ n, P17190488682123380629.a n = A202198 (n + 1)

end A202198

/-! ## A202198.P8726998969861539401

`Δ[Δ[12*A054487(n)]]`
-/

namespace A202198.P8726998969861539401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A054487 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A202198.P8726998969861539401

namespace A202198

/-- `Δ[Δ[12*A054487(n)]]` -/
def P8726998969861539401.Spec : Prop :=
  ∀ n, P8726998969861539401.a n = A202198 (n + 1)

end A202198

/-! ## A202198.P4677635117814341010

`Δ[12*A034265(n+1)]`
-/

namespace A202198.P4677635117814341010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A034265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A202198.P4677635117814341010

namespace A202198

/-- `Δ[12*A034265(n+1)]` -/
def P4677635117814341010.Spec : Prop :=
  ∀ n, P4677635117814341010.a n = A202198 (n + 1)

end A202198

/-! ## A202198.P6471265911140524953

`(n+3)/2*A158874(n+3)`
-/

namespace A202198.P6471265911140524953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / 2 * (A158874 (n + 3) : ℚ)

end

end A202198.P6471265911140524953

namespace A202198

/-- `(n+3)/2*A158874(n+3)` -/
def P6471265911140524953.Spec : Prop :=
  ∀ n, P6471265911140524953.a n = (A202198 (n + 1) : ℚ)

end A202198

/-! ## A202198.P11313676543662699427

`A005843(n+3)*A253945(n+6)`
-/

namespace A202198.P11313676543662699427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 3) * A253945 (n + 6)

end

end A202198.P11313676543662699427

namespace A202198

/-- `A005843(n+3)*A253945(n+6)` -/
def P11313676543662699427.Spec : Prop :=
  ∀ n, P11313676543662699427.a n = A202198 (n + 1)

end A202198

/-! ## A202198.P3178997257420912018

`A008458(n+3)*A277935(n+4)`
-/

namespace A202198.P3178997257420912018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (n + 3) * A277935 (n + 4)

end

end A202198.P3178997257420912018

namespace A202198

/-- `A008458(n+3)*A277935(n+4)` -/
def P3178997257420912018.Spec : Prop :=
  ∀ n, P3178997257420912018.a n = A202198 (n + 1)

end A202198

/-! ## A202198.P5382780310918502067

`A253942(n+6)*4*(n+3)`
-/

namespace A202198.P5382780310918502067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253942 (n + 6) * (4 * (n + 3) : ℤ)

end

end A202198.P5382780310918502067

namespace A202198

/-- `A253942(n+6)*4*(n+3)` -/
def P5382780310918502067.Spec : Prop :=
  ∀ n, P5382780310918502067.a n = A202198 (n + 1)

end A202198

/-! ## A202198.P7244224295665787295

`A000389(n+7)*A008594(n+3)`
-/

namespace A202198.P7244224295665787295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 7) * A008594 (n + 3)

end

end A202198.P7244224295665787295

namespace A202198

/-- `A000389(n+7)*A008594(n+3)` -/
def P7244224295665787295.Spec : Prop :=
  ∀ n, P7244224295665787295.a n = A202198 (n + 1)

end A202198

/-! ## A202198.P9664751903477978919

`A008458(n+3)*A028326(A055999(n+5))`
-/

namespace A202198.P9664751903477978919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (n + 3) * A028326 (A055999 (n + 5)).toNat

end

end A202198.P9664751903477978919

namespace A202198

/-- `A008458(n+3)*A028326(A055999(n+5))` -/
def P9664751903477978919.Spec : Prop :=
  ∀ n, P9664751903477978919.a n = A202198 (n + 1)

end A202198

/-!
# A202199: Number of (n+2) X 7 binary arrays avoiding patterns 001 and 101 in rows and columns.

The programs for A202199, the canonical program `A202199.P9375824708234968921` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202199 has offset 1).

The definition of A202199 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202199.P9375824708234968921

`7*(n+8)*(n+7)*(n+6)*(n+5)*(n+4)*(n+3)²/360`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202199

/-- `7*(n+8)*(n+7)*(n+6)*(n+5)*(n+4)*(n+3)²/360` -/
def P9375824708234968921.Spec : Prop :=
  ∀ n, P9375824708234968921.a n = (A202199 (n + 1) : ℚ)

end A202199

/-! ## A202199.P10785434287540727926

`14*A027818(n+2)`
-/

namespace A202199.P10785434287540727926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * A027818 (n + 2)

end

end A202199.P10785434287540727926

namespace A202199

/-- `14*A027818(n+2)` -/
def P10785434287540727926.Spec : Prop :=
  ∀ n, P10785434287540727926.a n = A202199 (n + 1)

end A202199

/-! ## A202199.P10951963036659461919

`A202202(A374005(n+1))`
-/

namespace A202199.P10951963036659461919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202202 (A374005 (n + 1)).toNat

end

end A202199.P10951963036659461919

namespace A202199

/-- `A202202(A374005(n+1))` -/
def P10951963036659461919.Spec : Prop :=
  ∀ n, P10951963036659461919.a n = A202199 (n + 1)

end A202199

/-! ## A202199.P12470314637298771039

`A202202(A167499(n+3))`
-/

namespace A202199.P12470314637298771039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202202 (A167499 (n + 3)).toNat

end

end A202199.P12470314637298771039

namespace A202199

/-- `A202202(A167499(n+3))` -/
def P12470314637298771039.Spec : Prop :=
  ∀ n, P12470314637298771039.a n = A202199 (n + 1)

end A202199

/-! ## A202199.P357698331515025819

`A202202(A155212(n)+13)`
-/

namespace A202199.P357698331515025819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202202 (A155212 n + 13).toNat

end

end A202199.P357698331515025819

namespace A202199

/-- `A202202(A155212(n)+13)` -/
def P357698331515025819.Spec : Prop :=
  ∀ n, P357698331515025819.a n = A202199 (n + 1)

end A202199

