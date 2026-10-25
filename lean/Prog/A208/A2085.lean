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
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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
# A208500: Number of nX7 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 1 0 and 1 1 1 vertically.

The programs for A208500, there is no canonical definition to state claims against.
-/

/-! ## A208500.P17944196921646260254

`A208501(A055999(n+4))`
-/

namespace A208500.P17944196921646260254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208501 (A055999 (n + 4)).toNat

end

end A208500.P17944196921646260254

/-! ## A208500.P7200516946536435134

`A208501(Δ[A023551(n+2)])`
-/

namespace A208500.P7200516946536435134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208501 (f1 (n + 1) - f1 n).toNat

end

end A208500.P7200516946536435134

/-! ## A208500.P17393609051513672803

`A208501(Δ[A026054(n+4)])`
-/

namespace A208500.P17393609051513672803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208501 (f1 (n + 1) - f1 n).toNat

end

end A208500.P17393609051513672803

/-! ## A208500.P1411217032439554009

`A208501(A056000(n+3)+4)`
-/

namespace A208500.P1411217032439554009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208501 (A056000 (n + 3) + 4).toNat

end

end A208500.P1411217032439554009

/-! ## A208500.P6254457267876624667

`A208501(A046691(n+5)-2)`
-/

namespace A208500.P6254457267876624667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208501 (A046691 (n + 5) - 2).toNat

end

end A208500.P6254457267876624667

/-!
# A208501: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 1 0 and 1 1 1 vertically.

The programs for A208501, there is no canonical definition to state claims against.
-/

/-! ## A208501.P9983720798720513527

`A207589(n+1)-A210709(A067747(n+1))`
-/

namespace A208501.P9983720798720513527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 (n + 1) - A210709 (A067747 (n + 1)).toNat

end

end A208501.P9983720798720513527

/-! ## A208501.P5134522938798253671

`A207589(n+1)-A210709(n+11)`
-/

namespace A208501.P5134522938798253671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 (n + 1) - A210709 (n + 11)

end

end A208501.P5134522938798253671

/-!
# A208502: Number of 4 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 1 0 and 1 1 1 vertically.

The programs for A208502, the canonical program `A208502.P1192186460504101360` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208502 has offset 1).

The definition of A208502 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 242 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208502.P1192186460504101360

`a(n-1)+4*a(n-2)` with `a(0)=9, a(1)=81, a(2)=126, a(3)=324`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A208502

/-- `a(n-1)+4*a(n-2)` -/
def P1192186460504101360.Spec : Prop :=
  ∀ n, (P1192186460504101360.a n : ℤ) = A208502 (n + 1)

theorem P1192186460504101360.correct : P1192186460504101360.Spec := by
  intro n
  simp only [A208502, Nat.add_sub_cancel]

end A208502

/-! ## A208502.P7409559907325149420

`A208501(A052905(n)+9)`
-/

namespace A208502.P7409559907325149420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208501 (A052905 n + 9).toNat

end

end A208502.P7409559907325149420

namespace A208502

/-- `A208501(A052905(n)+9)` -/
def P7409559907325149420.Spec : Prop :=
  ∀ n, P7409559907325149420.a n = A208502 (n + 1)

end A208502

/-! ## A208502.P13458605516503233177

`A208501(A055999(n)+10)`
-/

namespace A208502.P13458605516503233177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208501 (A055999 n + 10).toNat

end

end A208502.P13458605516503233177

namespace A208502

/-- `A208501(A055999(n)+10)` -/
def P13458605516503233177.Spec : Prop :=
  ∀ n, P13458605516503233177.a n = A208502 (n + 1)

end A208502

/-! ## A208502.P8395894128014786589

`A208501(A167614(n+2)+1)`
-/

namespace A208502.P8395894128014786589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208501 (A167614 (n + 2) + 1).toNat

end

end A208502.P8395894128014786589

namespace A208502

/-- `A208501(A167614(n+2)+1)` -/
def P8395894128014786589.Spec : Prop :=
  ∀ n, P8395894128014786589.a n = A208502 (n + 1)

end A208502

/-! ## A208502.P14548860560629647103

`A208501(A000124(n+3)+3)`
-/

namespace A208502.P14548860560629647103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208501 (A000124 (n + 3) + 3).toNat

end

end A208502.P14548860560629647103

namespace A208502

/-- `A208501(A000124(n+3)+3)` -/
def P14548860560629647103.Spec : Prop :=
  ∀ n, P14548860560629647103.a n = A208502 (n + 1)

end A208502

/-!
# A208503: Number of 5 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 1 0 and 1 1 1 vertically.

The programs for A208503, there is no canonical definition to state claims against.
-/

/-! ## A208503.P12116482504864230778

`A208501(A167499(n+3))`
-/

namespace A208503.P12116482504864230778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208501 (A167499 (n + 3)).toNat

end

end A208503.P12116482504864230778

/-! ## A208503.P17931512013553280095

`A208501(A056000(n)+15)`
-/

namespace A208503.P17931512013553280095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208501 (A056000 n + 15).toNat

end

end A208503.P17931512013553280095

/-! ## A208503.P17868094115590692738

`A208501(A133263(n+4)+3)`
-/

namespace A208503.P17868094115590692738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208501 (A133263 (n + 4) + 3).toNat

end

end A208503.P17868094115590692738

/-! ## A208503.P13410943187114795392

`A208501(A000124(n+4)+4)`
-/

namespace A208503.P13410943187114795392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208501 (A000124 (n + 4) + 4).toNat

end

end A208503.P13410943187114795392

/-! ## A208503.P1385004137297999050

`A208501(A000096(n+3)+6)`
-/

namespace A208503.P1385004137297999050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208501 (A000096 (n + 3) + 6).toNat

end

end A208503.P1385004137297999050

/-!
# A208504: Number of 6 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 1 0 and 1 1 1 vertically.

The programs for A208504, there is no canonical definition to state claims against.
-/

/-! ## A208504.P6720583237233683458

`A208501(A167499(n+4)+1)`
-/

namespace A208504.P6720583237233683458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208501 (A167499 (n + 4) + 1).toNat

end

end A208504.P6720583237233683458

/-! ## A208504.P12230230303781090327

`A208501(A167614(n+4)+3)`
-/

namespace A208504.P12230230303781090327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208501 (A167614 (n + 4) + 3).toNat

end

end A208504.P12230230303781090327

/-! ## A208504.P13360718024402839843

`A208501(A000124(n+5)+5)`
-/

namespace A208504.P13360718024402839843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208501 (A000124 (n + 5) + 5).toNat

end

end A208504.P13360718024402839843

/-! ## A208504.P8893813021505549139

`A208501(A000217(n+5)+6)`
-/

namespace A208504.P8893813021505549139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208501 (A000217 (n + 5) + 6).toNat

end

end A208504.P8893813021505549139

/-! ## A208504.P16559066445660677827

`A208501(A055999(n+5)-A008486(n+3))`
-/

namespace A208504.P16559066445660677827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208501 (A055999 (n + 5) - A008486 (n + 3)).toNat

end

end A208504.P16559066445660677827

/-!
# A208505: Number of 7 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 1 0 and 1 1 1 vertically.

The programs for A208505, there is no canonical definition to state claims against.
-/

/-! ## A208505.P17211142701943650372

`A208501(A000124(n+6)+6)`
-/

namespace A208505.P17211142701943650372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208501 (A000124 (n + 6) + 6).toNat

end

end A208505.P17211142701943650372

/-! ## A208505.P2926100973276166538

`A208501(A000217(n+6)+7)`
-/

namespace A208505.P2926100973276166538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208501 (A000217 (n + 6) + 7).toNat

end

end A208505.P2926100973276166538

/-! ## A208505.P9795483814257782477

`A208501(A189833(n+5)-A000096(n+2))`
-/

namespace A208505.P9795483814257782477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208501 (A189833 (n + 5) - A000096 (n + 2)).toNat

end

end A208505.P9795483814257782477

/-! ## A208505.P7626769671372579693

`A208501(A133263(n+3)+A016789(n+6))`
-/

namespace A208505.P7626769671372579693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208501 (A133263 (n + 3) + A016789 (n + 6)).toNat

end

end A208505.P7626769671372579693

/-! ## A208505.P7028280156510523461

`A208501(A189833(n+8)%A000096(n+8))`
-/

namespace A208505.P7028280156510523461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208501 (Int.tmod (A189833 (n + 8)) (A000096 (n + 8))).toNat

end

end A208505.P7028280156510523461

/-!
# A208506: p^(p+1) + (p+1)^p, where p = prime(n).

The programs for A208506, there is no canonical definition to state claims against.
-/

/-! ## A208506.P2899162917221036550

`A051442(record[A051698(n)])`
-/

namespace A208506.P2899162917221036550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051442 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A208506.P2899162917221036550

/-! ## A208506.P9223023728911811129

`A051442(p?[A006370(n)])`
-/

namespace A208506.P9223023728911811129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051442 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A208506.P9223023728911811129

/-! ## A208506.P15154366837679879516

`A051442(p?[A259153(n)])`
-/

namespace A208506.P15154366837679879516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051442 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A208506.P15154366837679879516

/-! ## A208506.P9776845212247566820

`A051442(A000040(n+1))`
-/

namespace A208506.P9776845212247566820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051442 (A000040 (n + 1)).toNat

end

end A208506.P9776845212247566820

/-! ## A208506.P9139995330961620616

`A051442(record[A014963(n+2)])`
-/

namespace A208506.P9139995330961620616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051442 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A208506.P9139995330961620616

/-!
# A208507: Reordering of A070776 such that the cyclotomic polynomial Phi(A070776, m) is in sorted order for any integer m >= 2.

The programs for A208507, there is no canonical definition to state claims against.
-/

/-! ## A208507.P12826260221253233516

`filter[A206225(n+1), A340363(#)]`
-/

namespace A208507.P12826260221253233516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A208507.P12826260221253233516

/-! ## A208507.P12455270875174797734

`A206225(lt[A139391(n+1), A206225(3*n+1)])`
-/

namespace A208507.P12455270875174797734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206225 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206225 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A208507.P12455270875174797734

/-!
# A208508: Triangle of coefficients of polynomials u(n,x) jointly generated with A208509; see the Formula section.

The programs for A208508, the canonical program `A208508.P9829869949086533994` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208508 has offset 1).

The definition of A208508 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208508.P9829869949086533994

`A208513(A056536(n+2))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A208508

/-- `A208513(A056536(n+2))` -/
def P9829869949086533994.Spec : Prop :=
  ∀ n, P9829869949086533994.a n = A208508 (n + 1)

theorem P9829869949086533994.correct : P9829869949086533994.Spec := by
  intro n
  simp only [A208508, Nat.add_sub_cancel]

end A208508

/-! ## A208508.P10319176859798064199

`A208510(∑[A275437(n)]+1)`
-/

namespace A208508.P10319176859798064199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208510 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A208508.P10319176859798064199

namespace A208508

/-- `A208510(∑[A275437(n)]+1)` -/
def P10319176859798064199.Spec : Prop :=
  ∀ n, P10319176859798064199.a n = A208508 (n + 1)

end A208508

/-! ## A208508.P17113322609077365667

`A208510(2*n+3-Δ[A022554(n)])`
-/

namespace A208508.P17113322609077365667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022554 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208510 ((2 * n + 3 : ℤ) - (f1 (n + 1) - f1 n)).toNat

end

end A208508.P17113322609077365667

namespace A208508

/-- `A208510(2*n+3-Δ[A022554(n)])` -/
def P17113322609077365667.Spec : Prop :=
  ∀ n, P17113322609077365667.a n = A208508 (n + 1)

end A208508

/-! ## A208508.P3506669794975522497

`A208510(2*n+3-A000196(n+1))`
-/

namespace A208508.P3506669794975522497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208510 ((2 * n + 3 : ℤ) - A000196 (n + 1)).toNat

end

end A208508.P3506669794975522497

namespace A208508

/-- `A208510(2*n+3-A000196(n+1))` -/
def P3506669794975522497.Spec : Prop :=
  ∀ n, P3506669794975522497.a n = A208508 (n + 1)

end A208508

/-! ## A208508.P2253060275062663214

`A208510(∑[2-A207623(n+1)%2]+1)`
-/

namespace A208508.P2253060275062663214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (A207623 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208510 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A208508.P2253060275062663214

namespace A208508

/-- `A208510(∑[2-A207623(n+1)%2]+1)` -/
def P2253060275062663214.Spec : Prop :=
  ∀ n, P2253060275062663214.a n = A208508 (n + 1)

end A208508

/-!
# A208509: Triangle of coefficients of polynomials v(n,x) jointly generated with A208508; see the Formula section.

The programs for A208509, the canonical program `A208509.P2453513182842311180` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208509 has offset 1).

The definition of A208509 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208509.P2453513182842311180

`2*A034867(n)-A034839(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A208509

/-- `2*A034867(n)-A034839(n)` -/
def P2453513182842311180.Spec : Prop :=
  ∀ n, P2453513182842311180.a n = A208509 (n + 1)

theorem P2453513182842311180.correct : P2453513182842311180.Spec := by
  intro n
  simp only [A208509, Nat.add_sub_cancel]

end A208509

/-! ## A208509.P4718441155183634625

`A111125(A091018(n))`
-/

namespace A208509.P4718441155183634625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111125 (A091018 n).toNat

end

end A208509.P4718441155183634625

namespace A208509

/-- `A111125(A091018(n))` -/
def P4718441155183634625.Spec : Prop :=
  ∀ n, P4718441155183634625.a n = A208509 (n + 1)

end A208509

/-! ## A208509.P3820052328585065680

`A110813(A028391(n)+n)`
-/

namespace A208509.P3820052328585065680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110813 (A028391 n + (n : ℤ)).toNat

end

end A208509.P3820052328585065680

namespace A208509

/-- `A110813(A028391(n)+n)` -/
def P3820052328585065680.Spec : Prop :=
  ∀ n, P3820052328585065680.a n = A208509 (n + 1)

end A208509

/-! ## A208509.P17252096119776062681

`A110813(2*n-A000196(n))`
-/

namespace A208509.P17252096119776062681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110813 ((2 * n : ℤ) - A000196 n).toNat

end

end A208509.P17252096119776062681

namespace A208509

/-- `A110813(2*n-A000196(n))` -/
def P17252096119776062681.Spec : Prop :=
  ∀ n, P17252096119776062681.a n = A208509 (n + 1)

end A208509

/-! ## A208509.P13842087983848998022

`A110813(n-A000196(n)+n)`
-/

namespace A208509.P13842087983848998022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110813 ((n : ℤ) - A000196 n + (n : ℤ)).toNat

end

end A208509.P13842087983848998022

namespace A208509

/-- `A110813(n-A000196(n)+n)` -/
def P13842087983848998022.Spec : Prop :=
  ∀ n, P13842087983848998022.a n = A208509 (n + 1)

end A208509

/-! ## A208509.P8648572853789306642

`A110813(n-(A000196(n)-n))`
-/

namespace A208509.P8648572853789306642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110813 ((n : ℤ) - (A000196 n - (n : ℤ))).toNat

end

end A208509.P8648572853789306642

namespace A208509

/-- `A110813(n-(A000196(n)-n))` -/
def P8648572853789306642.Spec : Prop :=
  ∀ n, P8648572853789306642.a n = A208509 (n + 1)

end A208509

/-! ## A208509.P10383025547984925007

`A110813(2*n+1-A003059(n+1))`
-/

namespace A208509.P10383025547984925007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110813 ((2 * n + 1 : ℤ) - A003059 (n + 1)).toNat

end

end A208509.P10383025547984925007

namespace A208509

/-- `A110813(2*n+1-A003059(n+1))` -/
def P10383025547984925007.Spec : Prop :=
  ∀ n, P10383025547984925007.a n = A208509 (n + 1)

end A208509

/-! ## A208509.P9085622077658738005

`A029653(comp[n²]+n)`
-/

namespace A208509.P9085622077658738005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A208509.P9085622077658738005

namespace A208509

/-- `A029653(comp[n²]+n)` -/
def P9085622077658738005.Spec : Prop :=
  ∀ n, P9085622077658738005.a n = A208509 (n + 1)

end A208509

/-! ## A208509.P12431057871375086433

`A208510(A000037(n+1)+1+n)`
-/

namespace A208509.P12431057871375086433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208510 (A000037 (n + 1) + 1 + (n : ℤ)).toNat

end

end A208509.P12431057871375086433

namespace A208509

/-- `A208510(A000037(n+1)+1+n)` -/
def P12431057871375086433.Spec : Prop :=
  ∀ n, P12431057871375086433.a n = A208509 (n + 1)

end A208509

/-! ## A208509.P11046110238057662095

`A005843(A034867(n))-A034839(n)`
-/

namespace A208509.P11046110238057662095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A034867 n).toNat - A034839 n

end

end A208509.P11046110238057662095

namespace A208509

/-- `A005843(A034867(n))-A034839(n)` -/
def P11046110238057662095.Spec : Prop :=
  ∀ n, P11046110238057662095.a n = A208509 (n + 1)

end A208509

/-!
# A208510: Triangle of coefficients of polynomials u(n,x) jointly generated with A029653; see the Formula section.

The programs for A208510, the canonical program `A208510.P9937072583222605301` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208510 has offset 1).

The definition of A208510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208510.P4503688449281488708

`A029653(n)-char[∑[n+1]]`
-/

namespace A208510.P4503688449281488708
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A208510.P4503688449281488708

namespace A208510

/-- `A029653(n)-char[∑[n+1]]` -/
def P4503688449281488708.Spec : Prop :=
  ∀ n, P4503688449281488708.a n = A208510 (n + 1)

end A208510

/-! ## A208510.P3472380950567464017

`A029653(n*(1-char[∑[n]]))`
-/

namespace A208510.P3472380950567464017
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 ((n : ℤ) * (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))).toNat

end

end A208510.P3472380950567464017

namespace A208510

/-- `A029653(n*(1-char[∑[n]]))` -/
def P3472380950567464017.Spec : Prop :=
  ∀ n, P3472380950567464017.a n = A208510 (n + 1)

end A208510

/-! ## A208510.P9937072583222605301

`A029655(A083920(n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A208510

/-- `A029655(A083920(n))` -/
def P9937072583222605301.Spec : Prop :=
  ∀ n, P9937072583222605301.a n = A208510 (n + 1)

theorem P9937072583222605301.correct : P9937072583222605301.Spec := by
  intro n
  simp only [A208510, Nat.add_sub_cancel]

end A208510

/-! ## A208510.P14183612464769357411

`A029655(A271439(n))`
-/

namespace A208510.P14183612464769357411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029655 (A271439 n).toNat

end

end A208510.P14183612464769357411

namespace A208510

/-- `A029655(A271439(n))` -/
def P14183612464769357411.Spec : Prop :=
  ∀ n, P14183612464769357411.a n = A208510 (n + 1)

end A208510

/-! ## A208510.P10173167956113586050

`A029655(n-A003056(n))`
-/

namespace A208510.P10173167956113586050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029655 ((n : ℤ) - A003056 n).toNat

end

end A208510.P10173167956113586050

namespace A208510

/-- `A029655(n-A003056(n))` -/
def P10173167956113586050.Spec : Prop :=
  ∀ n, P10173167956113586050.a n = A208510 (n + 1)

end A208510

/-! ## A208510.P7834419695173885257

`A028326(n)-A135225(n)`
-/

namespace A208510.P7834419695173885257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A135225 n

end

end A208510.P7834419695173885257

namespace A208510

/-- `A028326(n)-A135225(n)` -/
def P7834419695173885257.Spec : Prop :=
  ∀ n, P7834419695173885257.a n = A208510 (n + 1)

end A208510

/-! ## A208510.P10338986535731133867

`A081277(n)/A232089(n)`
-/

namespace A208510.P10338986535731133867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081277 n : ℚ) / (A232089 n : ℚ)

end

end A208510.P10338986535731133867

namespace A208510

/-- `A081277(n)/A232089(n)` -/
def P10338986535731133867.Spec : Prop :=
  ∀ n, P10338986535731133867.a n = (A208510 (n + 1) : ℚ)

end A208510

/-! ## A208510.P3511801211805657725

`gcd(A010816(n), A029653(n))`
-/

namespace A208510.P3511801211805657725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010816 n) (A029653 n)

end

end A208510.P3511801211805657725

namespace A208510

/-- `gcd(A010816(n), A029653(n))` -/
def P3511801211805657725.Spec : Prop :=
  ∀ n, (P3511801211805657725.a n : ℤ) = A208510 (n + 1)

end A208510

/-! ## A208510.P14219793433747404266

`round(A029653(n)/A035214(n))`
-/

namespace A208510.P14219793433747404266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A029653 n : ℚ) / (A035214 n : ℚ))

end

end A208510.P14219793433747404266

namespace A208510

/-- `round(A029653(n)/A035214(n))` -/
def P14219793433747404266.Spec : Prop :=
  ∀ n, P14219793433747404266.a n = A208510 (n + 1)

end A208510

/-! ## A208510.P4059048094385851094

`A206735(n)+A097805(n+1)`
-/

namespace A208510.P4059048094385851094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 n + A097805 (n + 1)

end

end A208510.P4059048094385851094

namespace A208510

/-- `A206735(n)+A097805(n+1)` -/
def P4059048094385851094.Spec : Prop :=
  ∀ n, P4059048094385851094.a n = A208510 (n + 1)

end A208510

/-! ## A208510.P17397910938476076918

`A029653(n)/(A073424(n)+1)`
-/

namespace A208510.P17397910938476076918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029653 n : ℚ) / (A073424 n + 1 : ℚ)

end

end A208510.P17397910938476076918

namespace A208510

/-- `A029653(n)/(A073424(n)+1)` -/
def P17397910938476076918.Spec : Prop :=
  ∀ n, P17397910938476076918.a n = (A208510 (n + 1) : ℚ)

end A208510

/-! ## A208510.P5208827256973672046

`A185045(n+1)/A059268(n)`
-/

namespace A208510.P5208827256973672046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185045 (n + 1) : ℚ) / (A059268 n : ℚ)

end

end A208510.P5208827256973672046

namespace A208510

/-- `A185045(n+1)/A059268(n)` -/
def P5208827256973672046.Spec : Prop :=
  ∀ n, P5208827256973672046.a n = (A208510 (n + 1) : ℚ)

end A208510

/-! ## A208510.P13839658739260419195

`2*A007318(n)-A135225(n)`
-/

namespace A208510.P13839658739260419195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A135225 n

end

end A208510.P13839658739260419195

namespace A208510

/-- `2*A007318(n)-A135225(n)` -/
def P13839658739260419195.Spec : Prop :=
  ∀ n, P13839658739260419195.a n = A208510 (n + 1)

end A208510

/-! ## A208510.P5623763003492268066

`2*A206735(n)-A177767(n)`
-/

namespace A208510.P5623763003492268066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A206735 n - A177767 n

end

end A208510.P5623763003492268066

namespace A208510

/-- `2*A206735(n)-A177767(n)` -/
def P5623763003492268066.Spec : Prop :=
  ∀ n, P5623763003492268066.a n = A208510 (n + 1)

end A208510

/-! ## A208510.P7795757882272589193

`A029655(1-A002024(n+1)+n)`
-/

namespace A208510.P7795757882272589193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029655 (1 - A002024 (n + 1) + (n : ℤ)).toNat

end

end A208510.P7795757882272589193

namespace A208510

/-- `A029655(1-A002024(n+1)+n)` -/
def P7795757882272589193.Spec : Prop :=
  ∀ n, P7795757882272589193.a n = A208510 (n + 1)

end A208510

/-! ## A208510.P7031640148451190681

`2*A007318(n)-A007318(A056943(n))`
-/

namespace A208510.P7031640148451190681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A007318 (A056943 n).toNat

end

end A208510.P7031640148451190681

namespace A208510

/-- `2*A007318(n)-A007318(A056943(n))` -/
def P7031640148451190681.Spec : Prop :=
  ∀ n, P7031640148451190681.a n = A208510 (n + 1)

end A208510

/-! ## A208510.P13090795681685891125

`A029653(n)/A029653(C(2, A029653(n)))`
-/

namespace A208510.P13090795681685891125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029653 n : ℚ) / (A029653 (Nat.choose 2 (A029653 n).toNat) : ℚ)

end

end A208510.P13090795681685891125

namespace A208510

/-- `A029653(n)/A029653(C(2, A029653(n)))` -/
def P13090795681685891125.Spec : Prop :=
  ∀ n, P13090795681685891125.a n = (A208510 (n + 1) : ℚ)

end A208510

/-! ## A208510.P13738385650491734604

`A029653(n)/A029653(n*A010054(n))`
-/

namespace A208510.P13738385650491734604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029653 n : ℚ) / (A029653 ((n : ℤ) * A010054 n).toNat : ℚ)

end

end A208510.P13738385650491734604

namespace A208510

/-- `A029653(n)/A029653(n*A010054(n))` -/
def P13738385650491734604.Spec : Prop :=
  ∀ n, P13738385650491734604.a n = (A208510 (n + 1) : ℚ)

end A208510

/-! ## A208510.P2780542469808329471

`A029653(n)/A029653(n*A073424(n))`
-/

namespace A208510.P2780542469808329471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029653 n : ℚ) / (A029653 ((n : ℤ) * A073424 n).toNat : ℚ)

end

end A208510.P2780542469808329471

namespace A208510

/-- `A029653(n)/A029653(n*A073424(n))` -/
def P2780542469808329471.Spec : Prop :=
  ∀ n, P2780542469808329471.a n = (A208510 (n + 1) : ℚ)

end A208510

/-! ## A208510.P1086491118856779769

`A007318(n)+A029653(n)%A007318(n)`
-/

namespace A208510.P1086491118856779769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + Int.tmod (A029653 n) (A007318 n)

end

end A208510.P1086491118856779769

namespace A208510

/-- `A007318(n)+A029653(n)%A007318(n)` -/
def P1086491118856779769.Spec : Prop :=
  ∀ n, P1086491118856779769.a n = A208510 (n + 1)

end A208510

/-!
# A208511: Triangle of coefficients of polynomials u(n,x) jointly generated with A208512; see the Formula section.

The programs for A208511, there is no canonical definition to state claims against.
-/

/-! ## A208511.P7476908769405234328

`A209758(n+1)-2*A049600(n)`
-/

namespace A208511.P7476908769405234328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209758 (n + 1) - 2 * A049600 n

end

end A208511.P7476908769405234328

/-! ## A208511.P15069287778865392981

`A160232(n+1)+A209697(n+1)-A121462(n+1)`
-/

namespace A208511.P15069287778865392981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160232 (n + 1) + (A209697 (n + 1) - A121462 (n + 1))

end

end A208511.P15069287778865392981

/-! ## A208511.P4163802092957675115

`A160232(n+1)+A209758(n+1)-A207619(n+1)`
-/

namespace A208511.P4163802092957675115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160232 (n + 1) + (A209758 (n + 1) - A207619 (n + 1))

end

end A208511.P4163802092957675115

/-! ## A208511.P15453670930992438005

`A209697(n+1)+Δ[A049600(n)]`
-/

namespace A208511.P15453670930992438005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209697 (n + 1) + (f1 (n + 1) - f1 n)

end

end A208511.P15453670930992438005

/-! ## A208511.P5781677308932267304

`A207618(n+2)-A209698(n+1)`
-/

namespace A208511.P5781677308932267304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207618 (n + 2) - A209698 (n + 1)

end

end A208511.P5781677308932267304

/-! ## A208511.P15918511684865198981

`2*A160232(n+1)-A055587(A038722(n+1))`
-/

namespace A208511.P15918511684865198981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160232 (n + 1) - A055587 (A038722 (n + 1)).toNat

end

end A208511.P15918511684865198981

/-! ## A208511.P1483280205195474553

`A209758(n+1)-A005843(A049600(n))`
-/

namespace A208511.P1483280205195474553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209758 (n + 1) - A005843 (A049600 n).toNat

end

end A208511.P1483280205195474553

/-! ## A208511.P4901421174056380511

`2*A160232(n+1)-A028310(A049600(n))`
-/

namespace A208511.P4901421174056380511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160232 (n + 1) - A028310 (A049600 n).toNat

end

end A208511.P4901421174056380511

/-! ## A208511.P1818264199233664149

`A005843(A160232(n+1))-A028310(A049600(n))`
-/

namespace A208511.P1818264199233664149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A160232 (n + 1)).toNat - A028310 (A049600 n).toNat

end

end A208511.P1818264199233664149

/-! ## A208511.P12428922766069351445

`A005843(A160232(n+1))-A055587(A038722(n+1))`
-/

namespace A208511.P12428922766069351445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A160232 (n + 1)).toNat - A055587 (A038722 (n + 1)).toNat

end

end A208511.P12428922766069351445

/-!
# A208512: Triangle of coefficients of polynomials v(n,x) jointly generated with A208511; see the Formula section.

The programs for A208512, there is no canonical definition to state claims against.
-/

/-! ## A208512.P4710687155994525050

`2*A208341(n)-A121462(n+1)`
-/

namespace A208512.P4710687155994525050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208341 n - A121462 (n + 1)

end

end A208512.P4710687155994525050

/-! ## A208512.P1016773400613138784

`A208341(n)+A049600(n+1)`
-/

namespace A208512.P1016773400613138784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 n + A049600 (n + 1)

end

end A208512.P1016773400613138784

/-! ## A208512.P7499360074500911058

`A207619(n+1)+Δ[A049600(n)]`
-/

namespace A208512.P7499360074500911058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207619 (n + 1) + (f1 (n + 1) - f1 n)

end

end A208512.P7499360074500911058

/-! ## A208512.P15452307295228782183

`A207619(n+2)-Δ[A208341(n)]`
-/

namespace A208512.P15452307295228782183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207619 (n + 2) - (f1 (n + 1) - f1 n)

end

end A208512.P15452307295228782183

/-! ## A208512.P4542307267168724733

`A049600(n+1)+A160232(n+1)+A049600(n)`
-/

namespace A208512.P4542307267168724733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (n + 1) + (A160232 (n + 1) + A049600 n)

end

end A208512.P4542307267168724733

/-! ## A208512.P17809851678276299012

`A208341(n+1)+A208341(n)-A160232(n+2)`
-/

namespace A208512.P17809851678276299012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 (n + 1) + (A208341 n - A160232 (n + 2))

end

end A208512.P17809851678276299012

/-! ## A208512.P9544953117767130715

`A049600(n+1)+A121462(n+1)+A049600(n+1)`
-/

namespace A208512.P9544953117767130715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (n + 1) + (A121462 (n + 1) + A049600 (n + 1))

end

end A208512.P9544953117767130715

/-! ## A208512.P13142626475074024890

`A106195(A061579(n))+A049600(n+1)`
-/

namespace A208512.P13142626475074024890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106195 (A061579 n).toNat + A049600 (n + 1)

end

end A208512.P13142626475074024890

/-! ## A208512.P665663350786830551

`A049600(n+1)+A049600(∑[A035214(n)])`
-/

namespace A208512.P665663350786830551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (n + 1) + A049600 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A208512.P665663350786830551

/-! ## A208512.P572467937383057232

`A049600(n+1)+A049600(A003057(n+2)+n)`
-/

namespace A208512.P572467937383057232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (n + 1) + A049600 (A003057 (n + 2) + (n : ℤ)).toNat

end

end A208512.P572467937383057232

/-!
# A208513: Triangle of coefficients of polynomials u(n,x) jointly generated with A111125; see the Formula section.

The programs for A208513, the canonical program `A208513.P6652233857505646847` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208513 has offset 1).

The definition of A208513 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208513.P187958007874431387

`A211957(n)/A232089(n)`
-/

namespace A208513.P187958007874431387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211957 n : ℚ) / (A232089 n : ℚ)

end

end A208513.P187958007874431387

namespace A208513

/-- `A211957(n)/A232089(n)` -/
def P187958007874431387.Spec : Prop :=
  ∀ n, P187958007874431387.a n = (A208513 (n + 1) : ℚ)

end A208513

/-! ## A208513.P6652233857505646847

`gcd(A010816(n), A110162(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A208513

/-- `gcd(A010816(n), A110162(n))` -/
def P6652233857505646847.Spec : Prop :=
  ∀ n, (P6652233857505646847.a n : ℤ) = A208513 (n + 1)

theorem P6652233857505646847.correct : P6652233857505646847.Spec := by
  intro n
  simp only [A208513, Nat.add_sub_cancel]

end A208513

/-! ## A208513.P11910650444175436720

`gcd(A103452(n), A127677(n))`
-/

namespace A208513.P11910650444175436720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103452 n) (A127677 n)

end

end A208513.P11910650444175436720

namespace A208513

/-- `gcd(A103452(n), A127677(n))` -/
def P11910650444175436720.Spec : Prop :=
  ∀ n, (P11910650444175436720.a n : ℤ) = A208513 (n + 1)

end A208513

/-! ## A208513.P8750851675538712680

`abs(A127677(n))-A010054(n)`
-/

namespace A208513.P8750851675538712680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A127677 n| - A010054 n

end

end A208513.P8750851675538712680

namespace A208513

/-- `abs(A127677(n))-A010054(n)` -/
def P8750851675538712680.Spec : Prop :=
  ∀ n, P8750851675538712680.a n = A208513 (n + 1)

end A208513

/-! ## A208513.P1940112917584389721

`abs(A127677(n)/A035214(n))`
-/

namespace A208513.P1940112917584389721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A127677 n : ℚ) / (A035214 n : ℚ)|

end

end A208513.P1940112917584389721

namespace A208513

/-- `abs(A127677(n)/A035214(n))` -/
def P1940112917584389721.Spec : Prop :=
  ∀ n, P1940112917584389721.a n = (A208513 (n + 1) : ℚ)

end A208513

/-! ## A208513.P11026549407723538654

`A211957(n)/A011782(A002262(n))`
-/

namespace A208513.P11026549407723538654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211957 n : ℚ) / (A011782 (A002262 n).toNat : ℚ)

end

end A208513.P11026549407723538654

namespace A208513

/-- `A211957(n)/A011782(A002262(n))` -/
def P11026549407723538654.Spec : Prop :=
  ∀ n, P11026549407723538654.a n = (A208513 (n + 1) : ℚ)

end A208513

/-! ## A208513.P6659305275606909579

`A085478(n)/A211955(n)*A211957(n)`
-/

namespace A208513.P6659305275606909579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085478 n : ℚ) / (A211955 n : ℚ) * (A211957 n : ℚ)

end

end A208513.P6659305275606909579

namespace A208513

/-- `A085478(n)/A211955(n)*A211957(n)` -/
def P6659305275606909579.Spec : Prop :=
  ∀ n, P6659305275606909579.a n = (A208513 (n + 1) : ℚ)

end A208513

/-! ## A208513.P16536122628048864844

`gcd(A106459(n), A127677(A106459(n)+n))`
-/

namespace A208513.P16536122628048864844
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106459 n) (A127677 (A106459 n + (n : ℤ)).toNat)

end

end A208513.P16536122628048864844

namespace A208513

/-- `gcd(A106459(n), A127677(A106459(n)+n))` -/
def P16536122628048864844.Spec : Prop :=
  ∀ n, (P16536122628048864844.a n : ℤ) = A208513 (n + 1)

end A208513

/-! ## A208513.P14851335326945631367

`2*A085478(n)-A028310(A128908(n))`
-/

namespace A208513.P14851335326945631367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085478 n - A028310 (A128908 n).toNat

end

end A208513.P14851335326945631367

namespace A208513

/-- `2*A085478(n)-A028310(A128908(n))` -/
def P14851335326945631367.Spec : Prop :=
  ∀ n, P14851335326945631367.a n = A208513 (n + 1)

end A208513

/-! ## A208513.P6703360470182915279

`A014684(abs(A110162(n)))`
-/

namespace A208513.P6703360470182915279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 |A110162 n|.toNat

end

end A208513.P6703360470182915279

namespace A208513

/-- `A014684(abs(A110162(n)))` -/
def P6703360470182915279.Spec : Prop :=
  ∀ n, P6703360470182915279.a n = A208513 (n + 1)

end A208513

/-!
# A208514: Triangle of coefficients of polynomials u(n,x) jointly generated with A208515; see the Formula section.

The programs for A208514, there is no canonical definition to state claims against.
-/

/-! ## A208514.P3689932814595698333

`A208917(n+1)/A059268(n)`
-/

namespace A208514.P3689932814595698333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208917 (n + 1) : ℚ) / (A059268 n : ℚ)

end

end A208514.P3689932814595698333

/-! ## A208514.P16305226253550783737

`A208917(n+1)/A000079(A002262(n))`
-/

namespace A208514.P16305226253550783737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208917 (n + 1) : ℚ) / (A000079 (A002262 n).toNat : ℚ)

end

end A208514.P16305226253550783737

/-! ## A208514.P13037939729316609607

`A208917(n+1)/A036561(A112367(n))`
-/

namespace A208514.P13037939729316609607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208917 (n + 1) : ℚ) / (A036561 (A112367 n).toNat : ℚ)

end

end A208514.P13037939729316609607

/-! ## A208514.P13674044147239227918

`A208917(n+1)/A011782(A002260(n+1))`
-/

namespace A208514.P13674044147239227918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208917 (n + 1) : ℚ) / (A011782 (A002260 (n + 1)).toNat : ℚ)

end

end A208514.P13674044147239227918

/-! ## A208514.P13336092754660982640

`A208515(A014132(n+1)+1)-A208515(n+1)`
-/

namespace A208514.P13336092754660982640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208515 (A014132 (n + 1) + 1).toNat - A208515 (n + 1)

end

end A208514.P13336092754660982640

/-! ## A208514.P13154041144518335305

`A208515(lt[1, A208515(n+1)]+1)-A208515(n+1)`
-/

namespace A208514.P13154041144518335305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) - A208515 (n + 1)

end

end A208514.P13154041144518335305

/-! ## A208514.P5229339565213618797

`A208917(n+1)/A003963(A036561(n))`
-/

namespace A208514.P5229339565213618797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208917 (n + 1) : ℚ) / (A003963 (A036561 n).toNat : ℚ)

end

end A208514.P5229339565213618797

/-!
# A208515: Triangle of coefficients of polynomials v(n,x) jointly generated with A208514; see the Formula section.

The programs for A208515, there is no canonical definition to state claims against.
-/

/-! ## A208515.P11163400587672445890

`A208918(n+1)/A059268(n)`
-/

namespace A208515.P11163400587672445890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208918 (n + 1) : ℚ) / (A059268 n : ℚ)

end

end A208515.P11163400587672445890

/-! ## A208515.P6119070150029608843

`A207611(gcd(A010816(n), A038722(n+1)))`
-/

namespace A208515.P6119070150029608843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207611 (Int.gcd (A010816 n) (A038722 (n + 1)))

end

end A208515.P6119070150029608843

/-! ## A208515.P13251095766045674268

`A207611(A038722(n+1))`
-/

namespace A208515.P13251095766045674268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207611 (A038722 (n + 1)).toNat

end

end A208515.P13251095766045674268

/-! ## A208515.P14823112493600572407

`A207611(A061579(n)+1)`
-/

namespace A208515.P14823112493600572407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207611 (A061579 n + 1).toNat

end

end A208515.P14823112493600572407

/-! ## A208515.P7112228271604446503

`A207611(A114327(n)+1+n)`
-/

namespace A208515.P7112228271604446503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207611 (A114327 n + 1 + (n : ℤ)).toNat

end

end A208515.P7112228271604446503

/-! ## A208515.P12333091098237211474

`A207611(A093995(n+1)-n)`
-/

namespace A208515.P12333091098237211474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207611 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A208515.P12333091098237211474

/-!
# A208516: Triangle of coefficients of polynomials u(n,x) jointly generated with A208517; see the Formula section.

The programs for A208516, there is no canonical definition to state claims against.
-/

/-! ## A208516.P8163712084353484541

`A060207(A010027(n+1))-2`
-/

namespace A208516.P8163712084353484541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060207 (A010027 (n + 1)).toNat - 2

end

end A208516.P8163712084353484541

/-! ## A208516.P7395535181695326624

`A087845(A181854(n))`
-/

namespace A208516.P7395535181695326624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087845 (A181854 n).toNat

end

end A208516.P7395535181695326624

/-! ## A208516.P4252114860946216388

`A163563(A033877(n+1))`
-/

namespace A208516.P4252114860946216388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163563 (A033877 (n + 1)).toNat

end

end A208516.P4252114860946216388

/-! ## A208516.P10913231123336997126

`A003056(A003056(((1-C(∑[char[∑[n]]], 2)+n)*∑[char[∑[n+1]]]!/(C(comp[∑[n]]-n, 2)-(n+1))!)²))`
-/

namespace A208516.P10913231123336997126
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A003056 (SequenceMachineLib.roundAway ((((1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * (Nat.factorial (∑ j ∈ Finset.range (n + 1), f4 j) : ℤ) : ℚ) / (Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f7 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℚ)) ^ 2)).toNat).toNat

end

end A208516.P10913231123336997126

/-! ## A208516.P4122136793872587959

`A008949(n)-A040114(A214676(n+1))`
-/

namespace A208516.P4122136793872587959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 n - A040114 ((A214676 (n + 1)).toNat + 10)

end

end A208516.P4122136793872587959

/-!
# A208517: Triangle of coefficients of polynomials v(n,x) jointly generated with A208516; see the Formula section.

The programs for A208517, there is no canonical definition to state claims against.
-/

/-! ## A208517.P14317543627909203163

`A291812(A103279(n)+1)`
-/

namespace A208517.P14317543627909203163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291812 (A103279 n + 1).toNat

end

end A208517.P14317543627909203163

/-! ## A208517.P2839399235860861619

`A035334(A208527(n+1))`
-/

namespace A208517.P2839399235860861619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035334 (A208527 (n + 1)).toNat

end

end A208517.P2839399235860861619

/-! ## A208517.P14759594297834927729

`A354911(A354904(3*n+2))+A209129(n+1)`
-/

namespace A208517.P14759594297834927729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354911 (A354904 (3 * n + 2)).toNat + A209129 (n + 1)

end

end A208517.P14759594297834927729

/-!
# A208519: Triangle of coefficients of polynomials v(n,x) jointly generated with A208518; see the Formula section.

The programs for A208519, the canonical program `A208519.P8400931654513594547` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208519 has offset 1).

The definition of A208519 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208519.P5654595408655285204

`A094435(n+1)+abs(A113020(n))`
-/

namespace A208519.P5654595408655285204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094435 (n + 1) + |A113020 n|

end

end A208519.P5654595408655285204

namespace A208519

/-- `A094435(n+1)+abs(A113020(n))` -/
def P5654595408655285204.Spec : Prop :=
  ∀ n, P5654595408655285204.a n = A208519 (n + 1)

end A208519

/-! ## A208519.P8400931654513594547

`A094435(n+1)+A094437(n)-A094436(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A208519

/-- `A094435(n+1)+A094437(n)-A094436(n)` -/
def P8400931654513594547.Spec : Prop :=
  ∀ n, P8400931654513594547.a n = A208519 (n + 1)

theorem P8400931654513594547.correct : P8400931654513594547.Spec := by
  intro n
  simp only [A208519, Nat.add_sub_cancel]

end A208519

/-! ## A208519.P12475446649345806939

`abs(A113020(n))+A104763(n+1)*A135278(n)`
-/

namespace A208519.P12475446649345806939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A113020 n| + A104763 (n + 1) * A135278 n

end

end A208519.P12475446649345806939

namespace A208519

/-- `abs(A113020(n))+A104763(n+1)*A135278(n)` -/
def P12475446649345806939.Spec : Prop :=
  ∀ n, P12475446649345806939.a n = A208519 (n + 1)

end A208519

/-! ## A208519.P17908495697465943901

`A094436(n)+abs(Δ[A113020(n)])`
-/

namespace A208519.P17908495697465943901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094436 n + |f1 (n + 1) - f1 n|

end

end A208519.P17908495697465943901

namespace A208519

/-- `A094436(n)+abs(Δ[A113020(n)])` -/
def P17908495697465943901.Spec : Prop :=
  ∀ n, P17908495697465943901.a n = A208519 (n + 1)

end A208519

/-! ## A208519.P6055111925184592296

`A094437(n+1)+A094437(n)-A094436(n+1)`
-/

namespace A208519.P6055111925184592296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094437 (n + 1) + (A094437 n - A094436 (n + 1))

end

end A208519.P6055111925184592296

namespace A208519

/-- `A094437(n+1)+A094437(n)-A094436(n+1)` -/
def P6055111925184592296.Spec : Prop :=
  ∀ n, P6055111925184592296.a n = A208519 (n + 1)

end A208519

/-! ## A208519.P6587301338360458678

`A171731(A061579(n))+A094435(n+1)`
-/

namespace A208519.P6587301338360458678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171731 (A061579 n).toNat + A094435 (n + 1)

end

end A208519.P6587301338360458678

namespace A208519

/-- `A171731(A061579(n))+A094435(n+1)` -/
def P6587301338360458678.Spec : Prop :=
  ∀ n, P6587301338360458678.a n = A208519 (n + 1)

end A208519

/-! ## A208519.P17123046066284736047

`A094440(A038722(n+1))+abs(A113020(n))`
-/

namespace A208519.P17123046066284736047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094440 (A038722 (n + 1)).toNat + |A113020 n|

end

end A208519.P17123046066284736047

namespace A208519

/-- `A094440(A038722(n+1))+abs(A113020(n))` -/
def P17123046066284736047.Spec : Prop :=
  ∀ n, P17123046066284736047.a n = A208519 (n + 1)

end A208519

/-! ## A208519.P15425556097909684137

`A094440(A061579(n)+1)+abs(A113020(n))`
-/

namespace A208519.P15425556097909684137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094440 (A061579 n + 1).toNat + |A113020 n|

end

end A208519.P15425556097909684137

namespace A208519

/-- `A094440(A061579(n)+1)+abs(A113020(n))` -/
def P15425556097909684137.Spec : Prop :=
  ∀ n, P15425556097909684137.a n = A208519 (n + 1)

end A208519

/-! ## A208519.P13789166368813614969

`A094440(A038722(n+1))+A094437(n)-A094436(n)`
-/

namespace A208519.P13789166368813614969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094440 (A038722 (n + 1)).toNat + (A094437 n - A094436 n)

end

end A208519.P13789166368813614969

namespace A208519

/-- `A094440(A038722(n+1))+A094437(n)-A094436(n)` -/
def P13789166368813614969.Spec : Prop :=
  ∀ n, P13789166368813614969.a n = A208519 (n + 1)

end A208519

/-! ## A208519.P6925246542638195867

`A094440(A061579(n)+1)+A094437(n)-A094436(n)`
-/

namespace A208519.P6925246542638195867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094440 (A061579 n + 1).toNat + (A094437 n - A094436 n)

end

end A208519.P6925246542638195867

namespace A208519

/-- `A094440(A061579(n)+1)+A094437(n)-A094436(n)` -/
def P6925246542638195867.Spec : Prop :=
  ∀ n, P6925246542638195867.a n = A208519 (n + 1)

end A208519

/-!
# A208520: Triangle of coefficients of polynomials u(n,x) jointly generated with A208521; see the Formula section.

The programs for A208520, the canonical program `A208520.P11996119381766978288` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208520 has offset 1).

The definition of A208520 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208520.P16132275120265664269

`A208905(n+1)/A000034(A002262(n))`
-/

namespace A208520.P16132275120265664269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208905 (n + 1) : ℚ) / (A000034 (A002262 n).toNat : ℚ)

end

end A208520.P16132275120265664269

namespace A208520

/-- `A208905(n+1)/A000034(A002262(n))` -/
def P16132275120265664269.Spec : Prop :=
  ∀ n, P16132275120265664269.a n = (A208520 (n + 1) : ℚ)

end A208520

/-! ## A208520.P11996119381766978288

`A208913(n+1)/A060546(A002262(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A208520

/-- `A208913(n+1)/A060546(A002262(n))` -/
def P11996119381766978288.Spec : Prop :=
  ∀ n, P11996119381766978288.a n = (A208520 (n + 1) : ℚ)

end A208520

/-! ## A208520.P8899249446331338138

`A208913(n+1)/A016116(A002260(n+1))`
-/

namespace A208520.P8899249446331338138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208913 (n + 1) : ℚ) / (A016116 (A002260 (n + 1)).toNat : ℚ)

end

end A208520.P8899249446331338138

namespace A208520

/-- `A208913(n+1)/A016116(A002260(n+1))` -/
def P8899249446331338138.Spec : Prop :=
  ∀ n, P8899249446331338138.a n = (A208520 (n + 1) : ℚ)

end A208520

/-! ## A208520.P5405715072732433584

`A208913(n+1)/A016116(A002262(n)+1)`
-/

namespace A208520.P5405715072732433584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208913 (n + 1) : ℚ) / (A016116 (A002262 n + 1).toNat : ℚ)

end

end A208520.P5405715072732433584

namespace A208520

/-- `A208913(n+1)/A016116(A002262(n)+1)` -/
def P5405715072732433584.Spec : Prop :=
  ∀ n, P5405715072732433584.a n = (A208520 (n + 1) : ℚ)

end A208520

/-! ## A208520.P8512875854792607524

`A208905(n+1)/A134451(A002260(n+1))`
-/

namespace A208520.P8512875854792607524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208905 (n + 1) : ℚ) / (A134451 (A002260 (n + 1)).toNat : ℚ)

end

end A208520.P8512875854792607524

namespace A208520

/-- `A208905(n+1)/A134451(A002260(n+1))` -/
def P8512875854792607524.Spec : Prop :=
  ∀ n, P8512875854792607524.a n = (A208520 (n + 1) : ℚ)

end A208520

/-! ## A208520.P2826181463112870291

`A133084(n+1)/A208521(n+1)*A208913(n+1)`
-/

namespace A208520.P2826181463112870291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133084 (n + 1) : ℚ) / (A208521 (n + 1) : ℚ) * (A208913 (n + 1) : ℚ)

end

end A208520.P2826181463112870291

namespace A208520

/-- `A133084(n+1)/A208521(n+1)*A208913(n+1)` -/
def P2826181463112870291.Spec : Prop :=
  ∀ n, P2826181463112870291.a n = (A208520 (n + 1) : ℚ)

end A208520

/-! ## A208520.P14450761418786979823

`A208906(n+1)/A208914(n+1)*A208913(n+1)`
-/

namespace A208520.P14450761418786979823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208906 (n + 1) : ℚ) / (A208914 (n + 1) : ℚ) * (A208913 (n + 1) : ℚ)

end

end A208520.P14450761418786979823

namespace A208520

/-- `A208906(n+1)/A208914(n+1)*A208913(n+1)` -/
def P14450761418786979823.Spec : Prop :=
  ∀ n, P14450761418786979823.a n = (A208520 (n + 1) : ℚ)

end A208520

/-! ## A208520.P16396295880008477538

`A208905(n+1)/A000034(A061885(n))`
-/

namespace A208520.P16396295880008477538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208905 (n + 1) : ℚ) / (A000034 (A061885 n).toNat : ℚ)

end

end A208520.P16396295880008477538

namespace A208520

/-- `A208905(n+1)/A000034(A061885(n))` -/
def P16396295880008477538.Spec : Prop :=
  ∀ n, P16396295880008477538.a n = (A208520 (n + 1) : ℚ)

end A208520

/-! ## A208520.P16011276012396525468

`A208905(n+1)/A054977(A162514(n))`
-/

namespace A208520.P16011276012396525468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208905 (n + 1) : ℚ) / (A054977 (A162514 n).toNat : ℚ)

end

end A208520.P16011276012396525468

namespace A208520

/-- `A208905(n+1)/A054977(A162514(n))` -/
def P16011276012396525468.Spec : Prop :=
  ∀ n, P16011276012396525468.a n = (A208520 (n + 1) : ℚ)

end A208520

/-! ## A208520.P6994323180140761924

`A208905(n+1)/A007913(A059268(n))`
-/

namespace A208520.P6994323180140761924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208905 (n + 1) : ℚ) / (A007913 (A059268 n).toNat : ℚ)

end

end A208520.P6994323180140761924

namespace A208520

/-- `A208905(n+1)/A007913(A059268(n))` -/
def P6994323180140761924.Spec : Prop :=
  ∀ n, P6994323180140761924.a n = (A208520 (n + 1) : ℚ)

end A208520

/-!
# A208521: Triangle of coefficients of polynomials v(n,x) jointly generated with A208520; see the Formula section.

The programs for A208521, the canonical program `A208521.P14308452571978604591` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208521 has offset 1).

The definition of A208521 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208521.P14308452571978604591

`A060546(A002262(n))*A133084(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A208521

/-- `A060546(A002262(n))*A133084(n+1)` -/
def P14308452571978604591.Spec : Prop :=
  ∀ n, P14308452571978604591.a n = A208521 (n + 1)

theorem P14308452571978604591.correct : P14308452571978604591.Spec := by
  intro n
  simp only [A208521, Nat.add_sub_cancel]

end A208521

/-! ## A208521.P11808611836757800192

`A000034(A002262(n))*A208906(n+1)`
-/

namespace A208521.P11808611836757800192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A002262 n).toNat * A208906 (n + 1)

end

end A208521.P11808611836757800192

namespace A208521

/-- `A000034(A002262(n))*A208906(n+1)` -/
def P11808611836757800192.Spec : Prop :=
  ∀ n, P11808611836757800192.a n = A208521 (n + 1)

end A208521

/-! ## A208521.P8066879064339407620

`A016116(A002260(n+1))*A133084(n+1)`
-/

namespace A208521.P8066879064339407620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A002260 (n + 1)).toNat * A133084 (n + 1)

end

end A208521.P8066879064339407620

namespace A208521

/-- `A016116(A002260(n+1))*A133084(n+1)` -/
def P8066879064339407620.Spec : Prop :=
  ∀ n, P8066879064339407620.a n = A208521 (n + 1)

end A208521

/-! ## A208521.P4828228006569753796

`A016116(A002262(n)+1)*A133084(n+1)`
-/

namespace A208521.P4828228006569753796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A002262 n + 1).toNat * A133084 (n + 1)

end

end A208521.P4828228006569753796

namespace A208521

/-- `A016116(A002262(n)+1)*A133084(n+1)` -/
def P4828228006569753796.Spec : Prop :=
  ∀ n, P4828228006569753796.a n = A208521 (n + 1)

end A208521

/-! ## A208521.P11059953306102365800

`A135837(n+1)+A135837(n+2)-A117919(n+2)`
-/

namespace A208521.P11059953306102365800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135837 (n + 1) + (A135837 (n + 2) - A117919 (n + 2))

end

end A208521.P11059953306102365800

namespace A208521

/-- `A135837(n+1)+A135837(n+2)-A117919(n+2)` -/
def P11059953306102365800.Spec : Prop :=
  ∀ n, P11059953306102365800.a n = A208521 (n + 1)

end A208521

/-! ## A208521.P1279480751740453688

`A000034(A061885(n))*A208906(n+1)`
-/

namespace A208521.P1279480751740453688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A061885 n).toNat * A208906 (n + 1)

end

end A208521.P1279480751740453688

namespace A208521

/-- `A000034(A061885(n))*A208906(n+1)` -/
def P1279480751740453688.Spec : Prop :=
  ∀ n, P1279480751740453688.a n = A208521 (n + 1)

end A208521

/-! ## A208521.P13464868447796183889

`A007913(A059268(n))*A208906(n+1)`
-/

namespace A208521.P13464868447796183889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A059268 n).toNat * A208906 (n + 1)

end

end A208521.P13464868447796183889

namespace A208521

/-- `A007913(A059268(n))*A208906(n+1)` -/
def P13464868447796183889.Spec : Prop :=
  ∀ n, P13464868447796183889.a n = A208521 (n + 1)

end A208521

/-! ## A208521.P2124052580886883647

`A019554(A059268(n))*A133084(n+1)`
-/

namespace A208521.P2124052580886883647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A059268 n).toNat * A133084 (n + 1)

end

end A208521.P2124052580886883647

namespace A208521

/-- `A019554(A059268(n))*A133084(n+1)` -/
def P2124052580886883647.Spec : Prop :=
  ∀ n, P2124052580886883647.a n = A208521 (n + 1)

end A208521

/-! ## A208521.P16062506505765220796

`A000188(2*A059268(n))*A133084(n+1)`
-/

namespace A208521.P16062506505765220796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (2 * A059268 n).toNat * A133084 (n + 1)

end

end A208521.P16062506505765220796

namespace A208521

/-- `A000188(2*A059268(n))*A133084(n+1)` -/
def P16062506505765220796.Spec : Prop :=
  ∀ n, P16062506505765220796.a n = A208521 (n + 1)

end A208521

/-! ## A208521.P13575367180404990597

`A072504(2*A059268(n))*A133084(n+1)`
-/

namespace A208521.P13575367180404990597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072504 (2 * A059268 n).toNat * A133084 (n + 1)

end

end A208521.P13575367180404990597

namespace A208521

/-- `A072504(2*A059268(n))*A133084(n+1)` -/
def P13575367180404990597.Spec : Prop :=
  ∀ n, P13575367180404990597.a n = A208521 (n + 1)

end A208521

/-!
# A208522: Triangle of coefficients of polynomials u(n,x) jointly generated with A208522; see the Formula section.

The programs for A208522, there is no canonical definition to state claims against.
-/

/-! ## A208522.P14671022750792516207

`A003056(A193635(n)%A198196(n+1))`
-/

namespace A208522.P14671022750792516207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.tmod (A193635 n) (A198196 (n + 1))).toNat

end

end A208522.P14671022750792516207

/-! ## A208522.P6088883740010742599

`A001222(A055496(n+1))*A003056(A193635(n))`
-/

namespace A208522.P6088883740010742599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A055496 (n + 1)).toNat * A003056 (A193635 n).toNat

end

end A208522.P6088883740010742599

/-! ## A208522.P10890163291532781238

`A303953(A136555(n))`
-/

namespace A208522.P10890163291532781238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303953 (A136555 n).toNat

end

end A208522.P10890163291532781238

/-! ## A208522.P3098195007014549752

`A003056(A193722(n))%A153672(n+5)`
-/

namespace A208522.P3098195007014549752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003056 (A193722 n).toNat) (A153672 (n + 5))

end

end A208522.P3098195007014549752

/-! ## A208522.P5159105795808983270

`A003056(C(A193722(n), A119788(n+1)))`
-/

namespace A208522.P5159105795808983270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Nat.choose (A193722 n).toNat (A119788 (n + 1)).toNat)

end

end A208522.P5159105795808983270

/-!
# A208523: Triangle of coefficients of polynomials v(n,x) jointly generated with A208522; see the Formula section.

The programs for A208523, there is no canonical definition to state claims against.
-/

/-! ## A208523.P9879406097433922053

`A165258(A355721(n))`
-/

namespace A208523.P9879406097433922053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165258 (A355721 n).toNat

end

end A208523.P9879406097433922053

/-! ## A208523.P1083094432576335705

`A133772(A101031(n)+1)`
-/

namespace A208523.P1083094432576335705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133772 (A101031 n + 1).toNat

end

end A208523.P1083094432576335705

/-! ## A208523.P13046096662457841487

`or(A048766(A013618(n)), A303929(n))`
-/

namespace A208523.P13046096662457841487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048766 (A013618 n).toNat) (A303929 n)

end

end A208523.P13046096662457841487

/-! ## A208523.P7069168043438320478

`or(A005136(A294411(n)), A156042(n+1))`
-/

namespace A208523.P7069168043438320478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005136 (A294411 n).toNat) (A156042 (n + 1))

end

end A208523.P7069168043438320478

/-! ## A208523.P569076671425297357

`A381524(A193860(n))`
-/

namespace A208523.P569076671425297357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381524 (A193860 n).toNat

end

end A208523.P569076671425297357

/-!
# A208524: Triangle of coefficients of polynomials u(n,x) jointly generated with A208525; see the Formula section.

The programs for A208524, there is no canonical definition to state claims against.
-/

/-! ## A208524.P9319907002938083697

`A207627(n+2)-A208525(n+1)`
-/

namespace A208524.P9319907002938083697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207627 (n + 2) - A208525 (n + 1)

end

end A208524.P9319907002938083697

/-!
# A208525: Triangle of coefficients of polynomials v(n,x) jointly generated with A208524; see the Formula section.

The programs for A208525, there is no canonical definition to state claims against.
-/

/-! ## A208525.P16378131748134466302

`A207627(n+2)-A208524(n+1)`
-/

namespace A208525.P16378131748134466302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207627 (n + 2) - A208524 (n + 1)

end

end A208525.P16378131748134466302

/-!
# A208526: Triangle of coefficients of polynomials u(n,x) jointly generated with A208527; see the Formula section.

The programs for A208526, there is no canonical definition to state claims against.
-/

/-! ## A208526.P9202020954275762668

`A084320(A132945(n))`
-/

namespace A208526.P9202020954275762668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084320 (A132945 n).toNat

end

end A208526.P9202020954275762668

/-! ## A208526.P8350588029936790985

`A357714(A128570(n))`
-/

namespace A208526.P8350588029936790985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357714 (A128570 n).toNat

end

end A208526.P8350588029936790985

/-! ## A208526.P11574195096001283176

`A290726(A297192(n))`
-/

namespace A208526.P11574195096001283176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290726 (A297192 n).toNat

end

end A208526.P11574195096001283176

/-! ## A208526.P8461676827352715125

`A381637(A089503(n+1))`
-/

namespace A208526.P8461676827352715125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381637 (A089503 (n + 1)).toNat

end

end A208526.P8461676827352715125

/-! ## A208526.P15737344626787150235

`A172263(A087644(n+2))`
-/

namespace A208526.P15737344626787150235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172263 (A087644 (n + 2)).toNat

end

end A208526.P15737344626787150235

/-!
# A208527: Triangle of coefficients of polynomials v(n,x) jointly generated with A208526; see the Formula section.

The programs for A208527, there is no canonical definition to state claims against.
-/

/-! ## A208527.P18245527647598265371

`2*A208910(n+1)-A208757(n+1)`
-/

namespace A208527.P18245527647598265371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208910 (n + 1) - A208757 (n + 1)

end

end A208527.P18245527647598265371

/-! ## A208527.P4487030945615326587

`A208333(n+1)+A208910(n+1)-A208758(n+1)`
-/

namespace A208527.P4487030945615326587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208333 (n + 1) + (A208910 (n + 1) - A208758 (n + 1))

end

end A208527.P4487030945615326587

/-! ## A208527.P10048834850692150404

`A208757(n+1)+A208910(n+1)-A208332(n+1)`
-/

namespace A208527.P10048834850692150404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208757 (n + 1) + (A208910 (n + 1) - A208332 (n + 1))

end

end A208527.P10048834850692150404

/-! ## A208527.P18343933414813398988

`A208333(n+1)+A208757(n+2)-A208332(n+2)`
-/

namespace A208527.P18343933414813398988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208333 (n + 1) + (A208757 (n + 2) - A208332 (n + 2))

end

end A208527.P18343933414813398988

/-! ## A208527.P17264924411285398558

`A208333(n+2)+A208333(n+1)-A208758(n+2)`
-/

namespace A208527.P17264924411285398558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208333 (n + 2) + (A208333 (n + 1) - A208758 (n + 2))

end

end A208527.P17264924411285398558

/-! ## A208527.P4977160844061995512

`A208333(n+1)+A208910(n+2)-A208757(n+2)`
-/

namespace A208527.P4977160844061995512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208333 (n + 1) + (A208910 (n + 2) - A208757 (n + 2))

end

end A208527.P4977160844061995512

/-! ## A208527.P12143114599083923837

`A208757(n+1)+A005843(A208757(n+1)-A208332(n+1))`
-/

namespace A208527.P12143114599083923837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208757 (n + 1) + A005843 (A208757 (n + 1) - A208332 (n + 1)).toNat

end

end A208527.P12143114599083923837

/-! ## A208527.P15149916004094484840

`A208757(n+1)+A005843(A208910(n+1)-A208757(n+1))`
-/

namespace A208527.P15149916004094484840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208757 (n + 1) + A005843 (A208910 (n + 1) - A208757 (n + 1)).toNat

end

end A208527.P15149916004094484840

/-! ## A208527.P9608772379009111602

`A005843(A208910(n+1))-A208757(n+1)`
-/

namespace A208527.P9608772379009111602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A208910 (n + 1)).toNat - A208757 (n + 1)

end

end A208527.P9608772379009111602

/-!
# A208528: Number of permutations of n>1 having exactly 3 points P on the boundary of their bounding square.

The programs for A208528, the canonical program `A208528.P9601945296398694276` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208528 has offset 2).

The definition of A208528 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208528.P9601945296398694276

`(4*(n+2)-8)*n!`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A208528

/-- `(4*(n+2)-8)*n!` -/
def P9601945296398694276.Spec : Prop :=
  ∀ n, P9601945296398694276.a n = A208528 (n + 2)

theorem P9601945296398694276.correct : P9601945296398694276.Spec := by
  intro n
  simp only [A208528, Nat.add_sub_cancel]

end A208528

/-! ## A208528.P14466170036844122641

`Δ[4*n!]`
-/

namespace A208528.P14466170036844122641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A208528.P14466170036844122641

namespace A208528

/-- `Δ[4*n!]` -/
def P14466170036844122641.Spec : Prop :=
  ∀ n, P14466170036844122641.a n = A208528 (n + 2)

theorem P14466170036844122641.correct : P14466170036844122641.Spec := by
  intro n
  simp only [A208528, Nat.add_sub_cancel, A208528.P14466170036844122641.f1, A208528.P14466170036844122641.a, A208528.P9601945296398694276.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A208528

/-! ## A208528.P7159230581659342604

`4*n*n!`
-/

namespace A208528.P7159230581659342604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n * Nat.factorial n)

end

end A208528.P7159230581659342604

namespace A208528

/-- `4*n*n!` -/
def P7159230581659342604.Spec : Prop :=
  ∀ n, (P7159230581659342604.a n : ℤ) = A208528 (n + 2)

theorem P7159230581659342604.correct : P7159230581659342604.Spec := by
  intro n
  simp only [A208528, Nat.add_sub_cancel, A208528.P7159230581659342604.a, A208528.P9601945296398694276.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A208528

/-! ## A208528.P12340803770827790215

`Δ[lcm(4, 1-n!)]`
-/

namespace A208528.P12340803770827790215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (1 - (Nat.factorial n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A208528.P12340803770827790215

namespace A208528

/-- `Δ[lcm(4, 1-n!)]` -/
def P12340803770827790215.Spec : Prop :=
  ∀ n, P12340803770827790215.a n = A208528 (n + 2)

end A208528

/-! ## A208528.P17678439663362098977

`Δ[n*a(n-1)]` with `a(0)=4`
-/

namespace A208528.P17678439663362098977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A208528.P17678439663362098977

namespace A208528

/-- `Δ[n*a(n-1)]` -/
def P17678439663362098977.Spec : Prop :=
  ∀ n, P17678439663362098977.a n = A208528 (n + 2)

end A208528

/-! ## A208528.P13405506875517150056

`Δ[n!/(1/2)²]`
-/

namespace A208528.P13405506875517150056
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / ((1 : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A208528.P13405506875517150056

namespace A208528

/-- `Δ[n!/(1/2)²]` -/
def P13405506875517150056.Spec : Prop :=
  ∀ n, P13405506875517150056.a n = (A208528 (n + 2) : ℚ)

theorem P13405506875517150056.correct : P13405506875517150056.Spec := by
  intro n
  simp only [A208528, Nat.add_sub_cancel, A208528.P13405506875517150056.f1, A208528.P13405506875517150056.a, A208528.P9601945296398694276.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A208528

/-! ## A208528.P10625525113415329158

`Δ[∏[a(n-1)+1]]` with `a(0)=4, a(1)=1`
-/

namespace A208528.P10625525113415329158
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4, 1] fun n f2 =>
  f2 (n - 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A208528.P10625525113415329158

namespace A208528

/-- `Δ[∏[a(n-1)+1]]` -/
def P10625525113415329158.Spec : Prop :=
  ∀ n, P10625525113415329158.a n = A208528 (n + 2)

end A208528

/-! ## A208528.P15622765082233408674

`Δ[∏[C(n, a(n-1))]]` with `a(0)=4, a(1)=1`
-/

namespace A208528.P15622765082233408674
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4, 1] fun n f2 =>
  Nat.choose n (f2 (n - 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A208528.P15622765082233408674

namespace A208528

/-- `Δ[∏[C(n, a(n-1))]]` -/
def P15622765082233408674.Spec : Prop :=
  ∀ n, P15622765082233408674.a n = A208528 (n + 2)

end A208528

/-! ## A208528.P14400516730202938406

`n*∏[C(2, n+1)+n]`
-/

namespace A208528.P14400516730202938406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A208528.P14400516730202938406

namespace A208528

/-- `n*∏[C(2, n+1)+n]` -/
def P14400516730202938406.Spec : Prop :=
  ∀ n, (P14400516730202938406.a n : ℤ) = A208528 (n + 2)

end A208528

/-! ## A208528.P13550702195815850876

`n*∏[a(n-1)+1]` with `a(0)=4, a(1)=1`
-/

namespace A208528.P13550702195815850876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 1] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A208528.P13550702195815850876

namespace A208528

/-- `n*∏[a(n-1)+1]` -/
def P13550702195815850876.Spec : Prop :=
  ∀ n, (P13550702195815850876.a n : ℤ) = A208528 (n + 2)

end A208528

/-!
# A208529: Number of permutations of n > 1 having exactly 2 points on the boundary of their bounding square.

The programs for A208529, the canonical program `A208529.P5793487270198147832` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208529 has offset 2).

The definition of A208529 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208529.P5793487270198147832

`2*n!`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A208529

/-- `2*n!` -/
def P5793487270198147832.Spec : Prop :=
  ∀ n, (P5793487270198147832.a n : ℤ) = A208529 (n + 2)

theorem P5793487270198147832.correct : P5793487270198147832.Spec := by
  intro n
  simp only [A208529, Nat.add_sub_cancel]

end A208529

/-! ## A208529.P11882248345927167969

`n!+n!`
-/

namespace A208529.P11882248345927167969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n + Nat.factorial n

end

end A208529.P11882248345927167969

namespace A208529

/-- `n!+n!` -/
def P11882248345927167969.Spec : Prop :=
  ∀ n, (P11882248345927167969.a n : ℤ) = A208529 (n + 2)

theorem P11882248345927167969.correct : P11882248345927167969.Spec := by
  intro n
  simp only [A208529, Nat.add_sub_cancel, A208529.P11882248345927167969.a, A208529.P5793487270198147832.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A208529

/-! ## A208529.P9272937234091924346

`n!/log2(sqrt(2))`
-/

namespace A208529.P9272937234091924346
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℝ) / Real.logb 2 (Real.sqrt (2 : ℝ))

end

end A208529.P9272937234091924346

namespace A208529

/-- `n!/log2(sqrt(2))` -/
def P9272937234091924346.Spec : Prop :=
  ∀ n, P9272937234091924346.a n = (A208529 (n + 2) : ℝ)

end A208529

/-! ## A208529.P5777225362181305245

`∏[gcd(n, round(acot(n)))]`
-/

namespace A208529.P5777225362181305245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A208529.P5777225362181305245

namespace A208529

/-- `∏[gcd(n, round(acot(n)))]` -/
def P5777225362181305245.Spec : Prop :=
  ∀ n, (P5777225362181305245.a n : ℤ) = A208529 (n + 2)

end A208529

/-! ## A208529.P8688134779947521177

`∏[or(n, round(acot(n)))]`
-/

namespace A208529.P8688134779947521177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A208529.P8688134779947521177

namespace A208529

/-- `∏[or(n, round(acot(n)))]` -/
def P8688134779947521177.Spec : Prop :=
  ∀ n, P8688134779947521177.a n = A208529 (n + 2)

end A208529

/-! ## A208529.P5898095501295366369

`a(n-1)*n` with `a(0)=2`
-/

namespace A208529.P5898095501295366369
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * n

end

end A208529.P5898095501295366369

namespace A208529

/-- `a(n-1)*n` -/
def P5898095501295366369.Spec : Prop :=
  ∀ n, (P5898095501295366369.a n : ℤ) = A208529 (n + 2)

end A208529

/-! ## A208529.P15954019131118037935

`∏[abs(1-n)+1]`
-/

namespace A208529.P15954019131118037935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A208529.P15954019131118037935

namespace A208529

/-- `∏[abs(1-n)+1]` -/
def P15954019131118037935.Spec : Prop :=
  ∀ n, P15954019131118037935.a n = A208529 (n + 2)

end A208529

/-! ## A208529.P14432280455173853900

`floor(n!/sqrt(1/4))`
-/

namespace A208529.P14432280455173853900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial n : ℝ) / Real.sqrt ((1 : ℚ) / 4 : ℝ)⌋

end

end A208529.P14432280455173853900

namespace A208529

/-- `floor(n!/sqrt(1/4))` -/
def P14432280455173853900.Spec : Prop :=
  ∀ n, P14432280455173853900.a n = A208529 (n + 2)

end A208529

/-! ## A208529.P16135190982653987053

`ceil(n!/sqrt(1/4))`
-/

namespace A208529.P16135190982653987053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.factorial n : ℝ) / Real.sqrt ((1 : ℚ) / 4 : ℝ)⌉

end

end A208529.P16135190982653987053

namespace A208529

/-- `ceil(n!/sqrt(1/4))` -/
def P16135190982653987053.Spec : Prop :=
  ∀ n, P16135190982653987053.a n = A208529 (n + 2)

end A208529

/-! ## A208529.P1130355871560259732

`round(n!/sqrt(1/4))`
-/

namespace A208529.P1130355871560259732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.factorial n : ℝ) / Real.sqrt ((1 : ℚ) / 4 : ℝ))

end

end A208529.P1130355871560259732

namespace A208529

/-- `round(n!/sqrt(1/4))` -/
def P1130355871560259732.Spec : Prop :=
  ∀ n, P1130355871560259732.a n = A208529 (n + 2)

end A208529

/-!
# A208530: Numbers n such that both n*Pi and n*e are within 1/sqrt(n) of integers.

The programs for A208530, there is no canonical definition to state claims against.
-/

/-! ## A208530.P12198889168932068937

`lt[A239348(n+1), A343524(A178052(n+1))]`
-/

namespace A208530.P12198889168932068937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343524 (A178052 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A208530.P12198889168932068937

/-! ## A208530.P8615086089332194631

`∑[A225634(A081579(and(n, -7)))]`
-/

namespace A208530.P8615086089332194631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225634 (A081579 (Int.land (n : ℤ) (-7)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208530.P8615086089332194631

/-! ## A208530.P2574176426580097571

`lt[lcm(7, C(n, 2))/18, n]`
-/

namespace A208530.P2574176426580097571
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 7 (Nat.choose n 2) : ℚ) / 18

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A208530.P2574176426580097571

/-! ## A208530.P2374823497731154618

`∑[A263324(or(6, n))]`
-/

namespace A208530.P2374823497731154618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263324 (Nat.lor 6 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208530.P2374823497731154618

/-! ## A208530.P12600293344022341464

`∑[A326047((floor(n/(xor(n, n+1)+1))+1)!)]`
-/

namespace A208530.P12600293344022341464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326047 (Nat.factorial (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208530.P12600293344022341464

/-!
# A208531: Number of distinct sums of subsets of the first n squares {1,4,9,...,n^2}.

The programs for A208531, there is no canonical definition to state claims against.
-/

/-! ## A208531.P7348162990851081586

`A095684(A094373(n))+A027187(2*n+3)`
-/

namespace A208531.P7348162990851081586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095684 (A094373 n).toNat + A027187 (2 * n + 3)

end

end A208531.P7348162990851081586

/-! ## A208531.P5155329018216987582

`A237871(2*(n+1))+A003849(A139751(2*n+5))`
-/

namespace A208531.P5155329018216987582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237871 (2 * (n + 1)) + A003849 (A139751 (2 * n + 5)).toNat

end

end A208531.P5155329018216987582

/-!
# A208532: Mirror image of triangle in A125185; unsigned version of A120058.

The programs for A208532, the canonical program `A208532.P12192542412581332263` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208532 has offset 0).

The definition of A208532 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208532.P12192542412581332263

`ceil(A209757(n+1)/2)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A208532

/-- `ceil(A209757(n+1)/2)` -/
def P12192542412581332263.Spec : Prop :=
  ∀ n, P12192542412581332263.a n = A208532 n

theorem P12192542412581332263.correct : P12192542412581332263.Spec := by
  intro n
  simp only [A208532]

end A208532

/-! ## A208532.P5374890154257385163

`round(A209757(n+1)/A020639(A004277(n)))`
-/

namespace A208532.P5374890154257385163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A209757 (n + 1) : ℚ) / (A020639 (A004277 n).toNat : ℚ))

end

end A208532.P5374890154257385163

namespace A208532

/-- `round(A209757(n+1)/A020639(A004277(n)))` -/
def P5374890154257385163.Spec : Prop :=
  ∀ n, P5374890154257385163.a n = A208532 n

end A208532

/-! ## A208532.P14136499808105240599

`A125185(A061579(n))`
-/

namespace A208532.P14136499808105240599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125185 (A061579 n).toNat

end

end A208532.P14136499808105240599

namespace A208532

/-- `A125185(A061579(n))` -/
def P14136499808105240599.Spec : Prop :=
  ∀ n, P14136499808105240599.a n = A208532 n

end A208532

/-! ## A208532.P10419916900261455913

`A193862(A066182(n+1))-A082137(n)`
-/

namespace A208532.P10419916900261455913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193862 (A066182 (n + 1)).toNat - A082137 n

end

end A208532.P10419916900261455913

namespace A208532

/-- `A193862(A066182(n+1))-A082137(n)` -/
def P10419916900261455913.Spec : Prop :=
  ∀ n, P10419916900261455913.a n = A208532 n

end A208532

/-! ## A208532.P14524568139571729611

`abs(floor(A079628(∑[A035214(n)])/2))`
-/

namespace A208532.P14524568139571729611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(A079628 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2⌋|

end

end A208532.P14524568139571729611

namespace A208532

/-- `abs(floor(A079628(∑[A035214(n)])/2))` -/
def P14524568139571729611.Spec : Prop :=
  ∀ n, P14524568139571729611.a n = A208532 n

end A208532

/-! ## A208532.P14884492148747147484

`round(A209757(n+1)/A000005(A059496(n+1)))`
-/

namespace A208532.P14884492148747147484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A209757 (n + 1) : ℚ) / (A000005 (A059496 (n + 1)).toNat : ℚ))

end

end A208532.P14884492148747147484

namespace A208532

/-- `round(A209757(n+1)/A000005(A059496(n+1)))` -/
def P14884492148747147484.Spec : Prop :=
  ∀ n, P14884492148747147484.a n = A208532 n

end A208532

/-! ## A208532.P15019024482993103540

`round(A209757(n+1)/A105560(A164024(n+6)))`
-/

namespace A208532.P15019024482993103540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A209757 (n + 1) : ℚ) / (A105560 (A164024 (n + 6)).toNat : ℚ))

end

end A208532.P15019024482993103540

namespace A208532

/-- `round(A209757(n+1)/A105560(A164024(n+6)))` -/
def P15019024482993103540.Spec : Prop :=
  ∀ n, P15019024482993103540.a n = A208532 n

end A208532

/-! ## A208532.P2226721505291223974

`A193862(n)-A318518(A013609(n))`
-/

namespace A208532.P2226721505291223974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193862 n - A318518 (A013609 n).toNat

end

end A208532.P2226721505291223974

namespace A208532

/-- `A193862(n)-A318518(A013609(n))` -/
def P2226721505291223974.Spec : Prop :=
  ∀ n, P2226721505291223974.a n = A208532 n

end A208532

/-! ## A208532.P14036945241468845253

`A209706(n+1)-A318518(A208659(n+1))`
-/

namespace A208532.P14036945241468845253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209706 (n + 1) - A318518 (A208659 (n + 1)).toNat

end

end A208532.P14036945241468845253

namespace A208532

/-- `A209706(n+1)-A318518(A208659(n+1))` -/
def P14036945241468845253.Spec : Prop :=
  ∀ n, P14036945241468845253.a n = A208532 n

end A208532

/-!
# A208533: Number of n-bead necklaces of n colors not allowing reversal, with no adjacent beads having the same color.

The programs for A208533, there is no canonical definition to state claims against.
-/

/-! ## A208533.P1395593631361687418

`A208535((n+1)²+n²)`
-/

namespace A208533.P1395593631361687418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208535 ((n + 1) ^ 2 + n ^ 2)

end

end A208533.P1395593631361687418

/-! ## A208533.P3623710015325067421

`lcm(A087960(n), A208535(A001844(n)))`
-/

namespace A208533.P3623710015325067421
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A208535 (A001844 n).toNat)

end

end A208533.P3623710015325067421

/-! ## A208533.P4246108894745522637

`or(A000007(n), A208535(A001844(n)))`
-/

namespace A208533.P4246108894745522637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A208535 (A001844 n).toNat)

end

end A208533.P4246108894745522637

/-! ## A208533.P13734482536238735556

`A014578(3*n+1)*A208535(A001844(n))`
-/

namespace A208533.P13734482536238735556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014578 (3 * n + 1) * A208535 (A001844 n).toNat

end

end A208533.P13734482536238735556

/-! ## A208533.P16929697137942927774

`A000045(2-C(2, n+2))*A208535(A001844(n))`
-/

namespace A208533.P16929697137942927774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 - Nat.choose 2 (n + 2)) * A208535 (A001844 n).toNat

end

end A208533.P16929697137942927774

/-!
# A208534: Number of n-bead necklaces of 7 colors not allowing reversal, with no adjacent beads having the same color.

The programs for A208534, there is no canonical definition to state claims against.
-/

/-! ## A208534.P7824734307041751792

`A208535(A055999(n+4))`
-/

namespace A208534.P7824734307041751792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208535 (A055999 (n + 4)).toNat

end

end A208534.P7824734307041751792

/-! ## A208534.P276026438014205384

`A208535(eq[4, A219347(n)])`
-/

namespace A208534.P276026438014205384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208535 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208534.P276026438014205384

/-! ## A208534.P2358892821959839982

`A208535(eq[6, A193592(n)])`
-/

namespace A208534.P2358892821959839982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208535 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208534.P2358892821959839982

/-! ## A208534.P8938783084635952742

`A208535(Δ[A023551(n+2)])`
-/

namespace A208534.P8938783084635952742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208535 (f1 (n + 1) - f1 n).toNat

end

end A208534.P8938783084635952742

/-! ## A208534.P5141756543747745053

`A208535(A155212(n+3)+2)`
-/

namespace A208534.P5141756543747745053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208535 (A155212 (n + 3) + 2).toNat

end

end A208534.P5141756543747745053

/-!
# A208535: Square array read by descending antidiagonals: T(n,k) is the number of n-bead necklaces of k colors not allowing reversal, with no adjacent beads having the same color (n, k >= 1).

The programs for A208535, there is no canonical definition to state claims against.
-/

/-! ## A208535.P10330040262056468196

`A043281(A233301(n+1))*A208544(n+1)`
-/

namespace A208535.P10330040262056468196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043281 (A233301 (n + 1)).toNat * A208544 (n + 1)

end

end A208535.P10330040262056468196

/-! ## A208535.P119620501449346723

`A208544(n+1)*A214566(A243502(n+1))`
-/

namespace A208535.P119620501449346723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208544 (n + 1) * A214566 (A243502 (n + 1)).toNat

end

end A208535.P119620501449346723

/-! ## A208535.P16613517612894283413

`A124778(A028813(n+2))*A208544(n+1)`
-/

namespace A208535.P16613517612894283413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 (A028813 (n + 2)).toNat * A208544 (n + 1)

end

end A208535.P16613517612894283413

/-! ## A208535.P7266595529974227599

`A043289(A000041(2*n))*A208544(n+1)`
-/

namespace A208535.P7266595529974227599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043289 (A000041 (2 * n)).toNat * A208544 (n + 1)

end

end A208535.P7266595529974227599

/-! ## A208535.P269659949430729573

`A007318(A136680(n+1))*A208544(n+1)`
-/

namespace A208535.P269659949430729573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A136680 (n + 1)).toNat * A208544 (n + 1)

end

end A208535.P269659949430729573

/-!
# A208536: Number of 5-bead necklaces of n colors not allowing reversal, with no adjacent beads having the same color.

The programs for A208536, the canonical program `A208536.P18178628656572755051` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208536 has offset 1).

The definition of A208536 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208536.P18178628656572755051

`(n^5-n)/5`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A208536

/-- `(n^5-n)/5` -/
def P18178628656572755051.Spec : Prop :=
  ∀ n, P18178628656572755051.a n = (A208536 (n + 1) : ℚ)

end A208536

/-! ## A208536.P7966389297672410138

`1/5*lcm(n, 1-n²²)`
-/

namespace A208536.P7966389297672410138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 5 * (Int.lcm (n : ℤ) (1 - ((n ^ 2) ^ 2 : ℤ)) : ℚ)

end

end A208536.P7966389297672410138

namespace A208536

/-- `1/5*lcm(n, 1-n²²)` -/
def P7966389297672410138.Spec : Prop :=
  ∀ n, P7966389297672410138.a n = (A208536 (n + 1) : ℚ)

end A208536

/-! ## A208536.P17825540474424830360

`∑[2*C((1-n)²+n, 2)]`
-/

namespace A208536.P17825540474424830360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208536.P17825540474424830360

namespace A208536

/-- `∑[2*C((1-n)²+n, 2)]` -/
def P17825540474424830360.Spec : Prop :=
  ∀ n, (P17825540474424830360.a n : ℤ) = A208536 (n + 1)

end A208536

/-! ## A208536.P5446945001667713543

`2*∑[C(n²-(n-1), 2)]`
-/

namespace A208536.P5446945001667713543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n ^ 2 : ℤ) - ((n : ℤ) - 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A208536.P5446945001667713543

namespace A208536

/-- `2*∑[C(n²-(n-1), 2)]` -/
def P5446945001667713543.Spec : Prop :=
  ∀ n, (P5446945001667713543.a n : ℤ) = A208536 (n + 1)

end A208536

/-! ## A208536.P9321502151643399775

`∑[floor(((4*C(n, 2)+1)/2)²)]`
-/

namespace A208536.P9321502151643399775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((4 * Nat.choose n 2 + 1 : ℚ) / 2) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208536.P9321502151643399775

namespace A208536

/-- `∑[floor(((4*C(n, 2)+1)/2)²)]` -/
def P9321502151643399775.Spec : Prop :=
  ∀ n, P9321502151643399775.a n = A208536 (n + 1)

end A208536

/-! ## A208536.P13953504497110480205

`∑[n^4-n²]-C(n², 2)`
-/

namespace A208536.P13953504497110480205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Nat.choose (n ^ 2) 2 : ℤ)

end

end A208536.P13953504497110480205

namespace A208536

/-- `∑[n^4-n²]-C(n², 2)` -/
def P13953504497110480205.Spec : Prop :=
  ∀ n, P13953504497110480205.a n = A208536 (n + 1)

end A208536

/-! ## A208536.P9106405630159275793

`∑[lcm(n²-n, (1-n)²+n)]`
-/

namespace A208536.P9106405630159275793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n ^ 2 : ℤ) - (n : ℤ)) ((1 - (n : ℤ)) ^ 2 + (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208536.P9106405630159275793

namespace A208536

/-- `∑[lcm(n²-n, (1-n)²+n)]` -/
def P9106405630159275793.Spec : Prop :=
  ∀ n, (P9106405630159275793.a n : ℤ) = A208536 (n + 1)

end A208536

/-! ## A208536.P1563008207382056175

`∑[(n²-n)*xor(1, n²-n)]`
-/

namespace A208536.P1563008207382056175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - (n : ℤ)) * Int.xor 1 ((n ^ 2 : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208536.P1563008207382056175

namespace A208536

/-- `∑[(n²-n)*xor(1, n²-n)]` -/
def P1563008207382056175.Spec : Prop :=
  ∀ n, P1563008207382056175.a n = A208536 (n + 1)

end A208536

/-! ## A208536.P147351656778837654

`∑[or(1, n²-n)²-or(1, n²-n)]`
-/

namespace A208536.P147351656778837654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n ^ 2 : ℤ) - (n : ℤ)) ^ 2 - Int.lor 1 ((n ^ 2 : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208536.P147351656778837654

namespace A208536

/-- `∑[or(1, n²-n)²-or(1, n²-n)]` -/
def P147351656778837654.Spec : Prop :=
  ∀ n, P147351656778837654.a n = A208536 (n + 1)

end A208536

/-! ## A208536.P13535325037378361422

`6*∑[∑[∑[∑[a(n-1)+4]]]]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=4`
-/

namespace A208536.P13535325037378361422
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 4] fun n f4 =>
  f4 (n - 1) + 4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A208536.P13535325037378361422

namespace A208536

/-- `6*∑[∑[∑[∑[a(n-1)+4]]]]` -/
def P13535325037378361422.Spec : Prop :=
  ∀ n, (P13535325037378361422.a n : ℤ) = A208536 (n + 1)

end A208536

/-! ## A208536.P1028226929495752806

`a(n-1)+(n-1)*n*((n+1)²-3*(n+1)+3)` with `a(0)=0`
-/

namespace A208536.P1028226929495752806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((n : ℤ) - 1) * ((n : ℤ) * (((n + 1) ^ 2 : ℤ) - (3 * (n + 1) : ℤ) + 3))

end

end A208536.P1028226929495752806

namespace A208536

/-- `a(n-1)+(n-1)*n*((n+1)²-3*(n+1)+3)` -/
def P1028226929495752806.Spec : Prop :=
  ∀ n, P1028226929495752806.a n = A208536 (n + 1)

end A208536

/-! ## A208536.P12836154687300233319

`A134327(n)+1`
-/

namespace A208536.P12836154687300233319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134327 n + 1

end

end A208536.P12836154687300233319

namespace A208536

/-- `A134327(n)+1` -/
def P12836154687300233319.Spec : Prop :=
  ∀ n, P12836154687300233319.a n = A208536 (n + 1)

end A208536

/-! ## A208536.P15274524466001062883

`A054620(n)-n`
-/

namespace A208536.P15274524466001062883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054620 n - (n : ℤ)

end

end A208536.P15274524466001062883

namespace A208536

/-- `A054620(n)-n` -/
def P15274524466001062883.Spec : Prop :=
  ∀ n, P15274524466001062883.a n = A208536 (n + 1)

end A208536

/-! ## A208536.P633372636498905015

`∑[6*A006325(n)]`
-/

namespace A208536.P633372636498905015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A006325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208536.P633372636498905015

namespace A208536

/-- `∑[6*A006325(n)]` -/
def P633372636498905015.Spec : Prop :=
  ∀ n, P633372636498905015.a n = A208536 (n + 1)

end A208536

/-! ## A208536.P9548805991932102664

`2*(A131176(n)+1)`
-/

namespace A208536.P9548805991932102664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A131176 n + 1)

end

end A208536.P9548805991932102664

namespace A208536

/-- `2*(A131176(n)+1)` -/
def P9548805991932102664.Spec : Prop :=
  ∀ n, P9548805991932102664.a n = A208536 (n + 1)

end A208536

/-! ## A208536.P103714573730243783

`A054604(n)/5-n`
-/

namespace A208536.P103714573730243783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054604 n : ℚ) / 5 - (n : ℚ)

end

end A208536.P103714573730243783

namespace A208536

/-- `A054604(n)/5-n` -/
def P103714573730243783.Spec : Prop :=
  ∀ n, P103714573730243783.a n = (A208536 (n + 1) : ℚ)

end A208536

/-! ## A208536.P7825522446648652514

`∑[n²²-A059722(n)]`
-/

namespace A208536.P7825522446648652514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A059722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208536.P7825522446648652514

namespace A208536

/-- `∑[n²²-A059722(n)]` -/
def P7825522446648652514.Spec : Prop :=
  ∀ n, P7825522446648652514.a n = A208536 (n + 1)

end A208536

/-! ## A208536.P648809169253410488

`∑[n²²]-A212560(n)`
-/

namespace A208536.P648809169253410488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A212560 n

end

end A208536.P648809169253410488

namespace A208536

/-- `∑[n²²]-A212560(n)` -/
def P648809169253410488.Spec : Prop :=
  ∀ n, P648809169253410488.a n = A208536 (n + 1)

end A208536

/-! ## A208536.P10359724479995737451

`A385894(n)-A006527(n)`
-/

namespace A208536.P10359724479995737451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385894 n - A006527 n

end

end A208536.P10359724479995737451

namespace A208536

/-- `A385894(n)-A006527(n)` -/
def P10359724479995737451.Spec : Prop :=
  ∀ n, P10359724479995737451.a n = A208536 (n + 1)

end A208536

/-!
# A208537: Number of 7-bead necklaces of n colors not allowing reversal, with no adjacent beads having the same color.

The programs for A208537, the canonical program `A208537.P12216040020520956620` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208537 has offset 1).

The definition of A208537 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208537.P12216040020520956620

`(n^7-n)/7`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A208537

/-- `(n^7-n)/7` -/
def P12216040020520956620.Spec : Prop :=
  ∀ n, P12216040020520956620.a n = (A208537 (n + 1) : ℚ)

end A208537

/-! ## A208537.P2411920523292556856

`6*A030180(n)`
-/

namespace A208537.P2411920523292556856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A030180 n

end

end A208537.P2411920523292556856

namespace A208537

/-- `6*A030180(n)` -/
def P2411920523292556856.Spec : Prop :=
  ∀ n, P2411920523292556856.a n = A208537 (n + 1)

end A208537

/-! ## A208537.P1077644512291968380

`A054621(n)-n`
-/

namespace A208537.P1077644512291968380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054621 n - (n : ℤ)

end

end A208537.P1077644512291968380

namespace A208537

/-- `A054621(n)-n` -/
def P1077644512291968380.Spec : Prop :=
  ∀ n, P1077644512291968380.a n = A208537 (n + 1)

end A208537

/-! ## A208537.P15322279048993748138

`2*A208545(n+1)`
-/

namespace A208537.P15322279048993748138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208545 (n + 1)

end

end A208537.P15322279048993748138

namespace A208537

/-- `2*A208545(n+1)` -/
def P15322279048993748138.Spec : Prop :=
  ∀ n, P15322279048993748138.a n = A208537 (n + 1)

end A208537

/-! ## A208537.P5111004899727591524

`6/7*A108495(n)`
-/

namespace A208537.P5111004899727591524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) / 7 * (A108495 n : ℚ)

end

end A208537.P5111004899727591524

namespace A208537

/-- `6/7*A108495(n)` -/
def P5111004899727591524.Spec : Prop :=
  ∀ n, P5111004899727591524.a n = (A208537 (n + 1) : ℚ)

end A208537

/-! ## A208537.P16336557186455016592

`A054606(n)/7-n`
-/

namespace A208537.P16336557186455016592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054606 n : ℚ) / 7 - (n : ℚ)

end

end A208537.P16336557186455016592

namespace A208537

/-- `A054606(n)/7-n` -/
def P16336557186455016592.Spec : Prop :=
  ∀ n, P16336557186455016592.a n = (A208537 (n + 1) : ℚ)

end A208537

/-! ## A208537.P7577598931541089884

`2*(A168029(n)-n)/7`
-/

namespace A208537.P7577598931541089884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A168029 n - (n : ℤ) : ℚ) / 7)

end

end A208537.P7577598931541089884

namespace A208537

/-- `2*(A168029(n)-n)/7` -/
def P7577598931541089884.Spec : Prop :=
  ∀ n, P7577598931541089884.a n = (A208537 (n + 1) : ℚ)

end A208537

/-! ## A208537.P14278152361912925438

`A108495(n)-A030180(n)`
-/

namespace A208537.P14278152361912925438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108495 n - A030180 n

end

end A208537.P14278152361912925438

namespace A208537

/-- `A108495(n)-A030180(n)` -/
def P14278152361912925438.Spec : Prop :=
  ∀ n, P14278152361912925438.a n = A208537 (n + 1)

end A208537

/-! ## A208537.P3949055605857417692

`2*(A060532(n)-A027441(n))`
-/

namespace A208537.P3949055605857417692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A060532 n - A027441 n)

end

end A208537.P3949055605857417692

namespace A208537

/-- `2*(A060532(n)-A027441(n))` -/
def P3949055605857417692.Spec : Prop :=
  ∀ n, P3949055605857417692.a n = A208537 (n + 1)

end A208537

/-! ## A208537.P1859969385827405357

`6*∑[A002061(n)*A006325(n)]`
-/

namespace A208537.P1859969385827405357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n * A006325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A208537.P1859969385827405357

namespace A208537

/-- `6*∑[A002061(n)*A006325(n)]` -/
def P1859969385827405357.Spec : Prop :=
  ∀ n, P1859969385827405357.a n = A208537 (n + 1)

end A208537

/-! ## A208537.P8827309390179096146

`∑[A045991((1-n)²+n)]`
-/

namespace A208537.P8827309390179096146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045991 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208537.P8827309390179096146

namespace A208537

/-- `∑[A045991((1-n)²+n)]` -/
def P8827309390179096146.Spec : Prop :=
  ∀ n, P8827309390179096146.a n = A208537 (n + 1)

end A208537

/-! ## A208537.P7734638216049685041

`2*∑[A006002(n²-n)]`
-/

namespace A208537.P7734638216049685041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 (n ^ 2 - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A208537.P7734638216049685041

namespace A208537

/-- `2*∑[A006002(n²-n)]` -/
def P7734638216049685041.Spec : Prop :=
  ∀ n, P7734638216049685041.a n = A208537 (n + 1)

end A208537

/-!
# A208538: Number of n-bead necklaces of n colors allowing reversal, with no adjacent beads having the same color.

The programs for A208538, there is no canonical definition to state claims against.
-/

/-! ## A208538.P17985663722851990741

`A208544((n+1)²+n²)`
-/

namespace A208538.P17985663722851990741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208544 ((n + 1) ^ 2 + n ^ 2)

end

end A208538.P17985663722851990741

/-! ## A208538.P10516187553332502102

`A007318(∑[n])*A208544(A001844(n))`
-/

namespace A208538.P10516187553332502102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A208544 (A001844 n).toNat

end

end A208538.P10516187553332502102

/-! ## A208538.P9606072356120671271

`A208544(A001844(n))/A007318(C(2, n²))`
-/

namespace A208538.P9606072356120671271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208544 (A001844 n).toNat : ℚ) / (A007318 (Nat.choose 2 (n ^ 2)) : ℚ)

end

end A208538.P9606072356120671271

/-! ## A208538.P3400715284635884884

`A208544(A001844(n))+char[A000040(n+2)^4]`
-/

namespace A208538.P3400715284635884884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) ^ 4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208544 (A001844 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A208538.P3400715284635884884

/-! ## A208538.P6628446842406727103

`A208544(A001844(n))+(3*A000010(n+1))%3`
-/

namespace A208538.P6628446842406727103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208544 (A001844 n).toNat + Int.tmod (3 * A000010 (n + 1)) 3

end

end A208538.P6628446842406727103

/-!
# A208539: Number of n-bead necklaces of 3 colors allowing reversal, with no adjacent beads having the same color.

The programs for A208539, the canonical program `A208539.P8659955523163642094` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208539 has offset 1).

The definition of A208539 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208539.P8659955523163642094

`A330632(n+1)+A010674(A028310(n))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A208539

/-- `A330632(n+1)+A010674(A028310(n))` -/
def P8659955523163642094.Spec : Prop :=
  ∀ n, P8659955523163642094.a n = A208539 (n + 1)

theorem P8659955523163642094.correct : P8659955523163642094.Spec := by
  intro n
  simp only [A208539, Nat.add_sub_cancel]

end A208539

/-! ## A208539.P1703261774189553319

`A330632(n+1)+A010674(A105343(n))`
-/

namespace A208539.P1703261774189553319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330632 (n + 1) + A010674 (A105343 n).toNat

end

end A208539.P1703261774189553319

namespace A208539

/-- `A330632(n+1)+A010674(A105343(n))` -/
def P1703261774189553319.Spec : Prop :=
  ∀ n, P1703261774189553319.a n = A208539 (n + 1)

end A208539

/-! ## A208539.P1655973477772455433

`A330632(n+1)+A010674(A238531(2*n))`
-/

namespace A208539.P1655973477772455433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330632 (n + 1) + A010674 (A238531 (2 * n)).toNat

end

end A208539.P1655973477772455433

namespace A208539

/-- `A330632(n+1)+A010674(A238531(2*n))` -/
def P1655973477772455433.Spec : Prop :=
  ∀ n, P1655973477772455433.a n = A208539 (n + 1)

end A208539

/-! ## A208539.P4371126933605757439

`A010674(A238531(2*n+1))+A091696(n+1)-A256217(A141310(n))`
-/

namespace A208539.P4371126933605757439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010674 (A238531 (2 * n + 1)).toNat + (A091696 (n + 1) - A256217 (A141310 n).toNat)

end

end A208539.P4371126933605757439

namespace A208539

/-- `A010674(A238531(2*n+1))+A091696(n+1)-A256217(A141310(n))` -/
def P4371126933605757439.Spec : Prop :=
  ∀ n, P4371126933605757439.a n = A208539 (n + 1)

end A208539

/-! ## A208539.P14453141740529804854

`A208544(A034856(n+2))`
-/

namespace A208539.P14453141740529804854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208544 (A034856 (n + 2)).toNat

end

end A208539.P14453141740529804854

namespace A208539

/-- `A208544(A034856(n+2))` -/
def P14453141740529804854.Spec : Prop :=
  ∀ n, P14453141740529804854.a n = A208539 (n + 1)

end A208539

/-!
# A208540: Number of n-bead necklaces of 4 colors allowing reversal, with no adjacent beads having the same color.

The programs for A208540, there is no canonical definition to state claims against.
-/

/-! ## A208540.P9638777756680524309

`A208544(A055998(n+2))`
-/

namespace A208540.P9638777756680524309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208544 (A055998 (n + 2)).toNat

end

end A208540.P9638777756680524309

/-! ## A208540.P11410995223308018401

`A208544(Δ[A034857(n+1)])`
-/

namespace A208540.P11410995223308018401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208544 (f1 (n + 1) - f1 n).toNat

end

end A208540.P11410995223308018401

/-! ## A208540.P11469977590538302117

`A208544(∑[A020705(n)]+3)`
-/

namespace A208540.P11469977590538302117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208544 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A208540.P11469977590538302117

/-! ## A208540.P10183583119373013243

`A208544(A052905(n+1)+2)`
-/

namespace A208540.P10183583119373013243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208544 (A052905 (n + 1) + 2).toNat

end

end A208540.P10183583119373013243

/-! ## A208540.P11636936922568913543

`A208544(A167614(n+1)+2*n+1)`
-/

namespace A208540.P11636936922568913543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208544 (A167614 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A208540.P11636936922568913543

/-!
# A208541: Number of n-bead necklaces of 5 colors allowing reversal, with no adjacent beads having the same color.

The programs for A208541, there is no canonical definition to state claims against.
-/

/-! ## A208541.P6976017407198836359

`A208544(∑[n+1]+4*n+10)`
-/

namespace A208541.P6976017407198836359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208544 (∑ j ∈ Finset.range (n + 1), f1 j + (4 * n + 10))

end

end A208541.P6976017407198836359

/-! ## A208541.P5352205748081789862

`A007318(∑[n])*A208544(A046691(n+3))`
-/

namespace A208541.P5352205748081789862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A208544 (A046691 (n + 3)).toNat

end

end A208541.P5352205748081789862

/-! ## A208541.P1523669215935046978

`A208544(A046691(n+3))+A000007(n+1)`
-/

namespace A208541.P1523669215935046978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208544 (A046691 (n + 3)).toNat + A000007 (n + 1)

end

end A208541.P1523669215935046978

/-! ## A208541.P7142015738592916524

`lcm(A033999(n), A208544(A000217(n+5)-4))`
-/

namespace A208541.P7142015738592916524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A208544 (A000217 (n + 5) - 4).toNat)

end

end A208541.P7142015738592916524

/-! ## A208541.P9244842408418827830

`A208544(A000124(n+5)-5)/A007318(∑[n+2])`
-/

namespace A208541.P9244842408418827830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208544 (A000124 (n + 5) - 5).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A208541.P9244842408418827830

/-!
# A208542: Number of n-bead necklaces of 6 colors allowing reversal, with no adjacent beads having the same color.

The programs for A208542, there is no canonical definition to state claims against.
-/

/-! ## A208542.P5657102131765432099

`A208544(A052905(n+3))`
-/

namespace A208542.P5657102131765432099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208544 (A052905 (n + 3)).toNat

end

end A208542.P5657102131765432099

/-! ## A208542.P8854903681813408850

`A208544(A055999(n+3)+1)`
-/

namespace A208542.P8854903681813408850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208544 (A055999 (n + 3) + 1).toNat

end

end A208542.P8854903681813408850

/-! ## A208542.P11797670916840177340

`A208544(A000096(n+5)-4)`
-/

namespace A208542.P11797670916840177340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208544 (A000096 (n + 5) - 4).toNat

end

end A208542.P11797670916840177340

/-! ## A208542.P7395137307466842989

`A208544(A000217(n+6)-5)`
-/

namespace A208542.P7395137307466842989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208544 (A000217 (n + 6) - 5).toNat

end

end A208542.P7395137307466842989

/-! ## A208542.P17823974062757173287

`A208544(A000124(n+6)-6)`
-/

namespace A208542.P17823974062757173287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208544 (A000124 (n + 6) - 6).toNat

end

end A208542.P17823974062757173287

/-!
# A208543: Number of n-bead necklaces of 7 colors allowing reversal, with no adjacent beads having the same color.

The programs for A208543, there is no canonical definition to state claims against.
-/

/-! ## A208543.P18407535376129400604

`A208544(A055999(n+4))`
-/

namespace A208543.P18407535376129400604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208544 (A055999 (n + 4)).toNat

end

end A208543.P18407535376129400604

/-! ## A208543.P11848305657107974509

`A208544(A000217(n+7)-6)`
-/

namespace A208543.P11848305657107974509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208544 (A000217 (n + 7) - 6).toNat

end

end A208543.P11848305657107974509

/-! ## A208543.P1300388753607147917

`A208544(A000124(n+7)-7)`
-/

namespace A208543.P1300388753607147917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208544 (A000124 (n + 7) - 7).toNat

end

end A208543.P1300388753607147917

/-! ## A208543.P6149552872491911535

`A208544(A161680(n+7)+n+1)`
-/

namespace A208543.P6149552872491911535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208544 (A161680 (n + 7) + (n + 1 : ℤ)).toNat

end

end A208543.P6149552872491911535

/-! ## A208543.P5949933292942560289

`A208544(A166136(n+4)+A005408(n))`
-/

namespace A208543.P5949933292942560289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208544 (A166136 (n + 4) + A005408 n).toNat

end

end A208543.P5949933292942560289

/-!
# A208544: T(n,k) = Number of n-bead necklaces of k colors allowing reversal, with no adjacent beads having the same color.

The programs for A208544, there is no canonical definition to state claims against.
-/

/-! ## A208544.P6606555241311134139

`A208535(n+1)/A043281(A233301(n+1))`
-/

namespace A208544.P6606555241311134139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208535 (n + 1) : ℚ) / (A043281 (A233301 (n + 1)).toNat : ℚ)

end

end A208544.P6606555241311134139

/-! ## A208544.P6625107647599257202

`A208535(n+1)/A214566(A243502(n+1))`
-/

namespace A208544.P6625107647599257202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208535 (n + 1) : ℚ) / (A214566 (A243502 (n + 1)).toNat : ℚ)

end

end A208544.P6625107647599257202

/-! ## A208544.P16079351610670926948

`A208535(n+1)/A181651(A000032(A331508(n)))`
-/

namespace A208544.P16079351610670926948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208535 (n + 1) : ℚ) / (A181651 (A000032 (A331508 n).toNat).toNat : ℚ)

end

end A208544.P16079351610670926948

/-! ## A208544.P14909925027768234717

`A208535(n+1)/A099564(A266152(3*n+1))`
-/

namespace A208544.P14909925027768234717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208535 (n + 1) : ℚ) / (A099564 (A266152 (3 * n + 1)).toNat : ℚ)

end

end A208544.P14909925027768234717

/-! ## A208544.P7543753198971228820

`A208535(n+1)/A181651(A331508(A081146(n+1)))`
-/

namespace A208544.P7543753198971228820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208535 (n + 1) : ℚ) / (A181651 (A331508 (A081146 (n + 1)).toNat).toNat : ℚ)

end

end A208544.P7543753198971228820

/-!
# A208545: Number of 7-bead necklaces of n colors allowing reversal, with no adjacent beads having the same color.

The programs for A208545, the canonical program `A208545.P16727584937765902822` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208545 has offset 1).

The definition of A208545 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208545.P15854230490672057940

`(n^7-n)/14`
-/

namespace A208545.P15854230490672057940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 7 : ℤ) - (n : ℤ) : ℚ) / 14

end

end A208545.P15854230490672057940

namespace A208545

/-- `(n^7-n)/14` -/
def P15854230490672057940.Spec : Prop :=
  ∀ n, P15854230490672057940.a n = (A208545 (n + 1) : ℚ)

end A208545

/-! ## A208545.P16727584937765902822

`∑[((1-n)²+n)²*C(n, 2)]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A208545

/-- `∑[((1-n)²+n)²*C(n, 2)]` -/
def P16727584937765902822.Spec : Prop :=
  ∀ n, P16727584937765902822.a n = A208545 (n + 1)

theorem P16727584937765902822.correct : P16727584937765902822.Spec := by
  intro n
  simp only [A208545, Nat.add_sub_cancel]

end A208545

/-! ## A208545.P10571363806493826286

`3*A030180(n)`
-/

namespace A208545.P10571363806493826286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A030180 n

end

end A208545.P10571363806493826286

namespace A208545

/-- `3*A030180(n)` -/
def P10571363806493826286.Spec : Prop :=
  ∀ n, P10571363806493826286.a n = A208545 (n + 1)

end A208545

/-! ## A208545.P4727006813235178791

`3/7*A108495(n)`
-/

namespace A208545.P4727006813235178791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 7 * (A108495 n : ℚ)

end

end A208545.P4727006813235178791

namespace A208545

/-- `3/7*A108495(n)` -/
def P4727006813235178791.Spec : Prop :=
  ∀ n, P4727006813235178791.a n = (A208545 (n + 1) : ℚ)

end A208545

/-! ## A208545.P14401942289547010887

`ceil(A208537(n+1)/2)`
-/

namespace A208545.P14401942289547010887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A208537 (n + 1) : ℚ) / 2⌉

end

end A208545.P14401942289547010887

namespace A208545

/-- `ceil(A208537(n+1)/2)` -/
def P14401942289547010887.Spec : Prop :=
  ∀ n, P14401942289547010887.a n = A208545 (n + 1)

end A208545

/-! ## A208545.P6332224204296363944

`abs((A168029(n)-n)/7)`
-/

namespace A208545.P6332224204296363944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A168029 n - (n : ℤ) : ℚ) / 7|

end

end A208545.P6332224204296363944

namespace A208545

/-- `abs((A168029(n)-n)/7)` -/
def P6332224204296363944.Spec : Prop :=
  ∀ n, P6332224204296363944.a n = (A208545 (n + 1) : ℚ)

end A208545

/-! ## A208545.P11918329561054564348

`A060532(n)-A027441(n)`
-/

namespace A208545.P11918329561054564348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060532 n - A027441 n

end

end A208545.P11918329561054564348

namespace A208545

/-- `A060532(n)-A027441(n)` -/
def P11918329561054564348.Spec : Prop :=
  ∀ n, P11918329561054564348.a n = A208545 (n + 1)

end A208545

/-! ## A208545.P15315875594970603876

`3*∑[A002061(n)*A006325(n)]`
-/

namespace A208545.P15315875594970603876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n * A006325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A208545.P15315875594970603876

namespace A208545

/-- `3*∑[A002061(n)*A006325(n)]` -/
def P15315875594970603876.Spec : Prop :=
  ∀ n, P15315875594970603876.a n = A208545 (n + 1)

end A208545

/-! ## A208545.P4140786281950641244

`gcd(n-A168029(n), A208537(n+1))`
-/

namespace A208545.P4140786281950641244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - A168029 n) (A208537 (n + 1))

end

end A208545.P4140786281950641244

namespace A208545

/-- `gcd(n-A168029(n), A208537(n+1))` -/
def P4140786281950641244.Spec : Prop :=
  ∀ n, (P4140786281950641244.a n : ℤ) = A208545 (n + 1)

end A208545

/-! ## A208545.P13662153522734998513

`∑[A243099(2*(n+2))²*(n²-n)/2]`
-/

namespace A208545.P13662153522734998513
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243099 (2 * (n + 2)) ^ 2 : ℚ) * (((n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208545.P13662153522734998513

namespace A208545

/-- `∑[A243099(2*(n+2))²*(n²-n)/2]` -/
def P13662153522734998513.Spec : Prop :=
  ∀ n, P13662153522734998513.a n = (A208545 (n + 1) : ℚ)

end A208545

/-! ## A208545.P4264927746497153447

`∑[A084367(∑[n]-n)]`
-/

namespace A208545.P4264927746497153447
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084367 (∑ j ∈ Finset.range (n + 1), f2 j - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208545.P4264927746497153447

namespace A208545

/-- `∑[A084367(∑[n]-n)]` -/
def P4264927746497153447.Spec : Prop :=
  ∀ n, P4264927746497153447.a n = A208545 (n + 1)

end A208545

/-! ## A208545.P6399756960204514840

`∑[A006002(n²-n)]`
-/

namespace A208545.P6399756960204514840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 (n ^ 2 - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208545.P6399756960204514840

namespace A208545

/-- `∑[A006002(n²-n)]` -/
def P6399756960204514840.Spec : Prop :=
  ∀ n, P6399756960204514840.a n = A208545 (n + 1)

end A208545

/-! ## A208545.P11262920563261664053

`∑[A368047(n²-n)]`
-/

namespace A208545.P11262920563261664053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368047 (n ^ 2 - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208545.P11262920563261664053

namespace A208545

/-- `∑[A368047(n²-n)]` -/
def P11262920563261664053.Spec : Prop :=
  ∀ n, P11262920563261664053.a n = A208545 (n + 1)

end A208545

/-! ## A208545.P5019408819683661638

`∑[A265645((1-n)²+n)]`
-/

namespace A208545.P5019408819683661638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265645 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208545.P5019408819683661638

namespace A208545

/-- `∑[A265645((1-n)²+n)]` -/
def P5019408819683661638.Spec : Prop :=
  ∀ n, P5019408819683661638.a n = A208545 (n + 1)

end A208545

/-! ## A208545.P9771460803184618035

`∑[A303692((1-n)²+n)]`
-/

namespace A208545.P9771460803184618035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303692 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208545.P9771460803184618035

namespace A208545

/-- `∑[A303692((1-n)²+n)]` -/
def P9771460803184618035.Spec : Prop :=
  ∀ n, P9771460803184618035.a n = A208545 (n + 1)

end A208545

/-!
# A208546: Expansion of f(-x^29, x^31) + x * f(-x^19, x^41) - x^3 * f(-x^11, x^49) + x^7 * f(x, -x^59) in powers of x where f() is Ramanujan's two-variable theta function.

The programs for A208546, there is no canonical definition to state claims against.
-/

/-! ## A208546.P14465887225917945034

`(1-and(2, n))*A207710(n)`
-/

namespace A208546.P14465887225917945034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 2 n : ℤ)) * A207710 n

end

end A208546.P14465887225917945034

/-! ## A208546.P14638051665181536803

`A087960(n)*A113430(n)`
-/

namespace A208546.P14638051665181536803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A113430 n

end

end A208546.P14638051665181536803

/-! ## A208546.P7455365087000007580

`A033999(n)*A214529(n)`
-/

namespace A208546.P7455365087000007580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A214529 n

end

end A208546.P7455365087000007580

/-! ## A208546.P2518687520294504171

`A057077(n)*A207710(n)`
-/

namespace A208546.P2518687520294504171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A207710 n

end

end A208546.P2518687520294504171

/-! ## A208546.P8773108009269695177

`(A004442(n)-n)*A214529(n)`
-/

namespace A208546.P8773108009269695177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A214529 n

end

end A208546.P8773108009269695177

/-! ## A208546.P16581729034570439397

`A214529(n)/A057077(A057077(n)+n)`
-/

namespace A208546.P16581729034570439397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214529 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A208546.P16581729034570439397

/-! ## A208546.P1018089823113621631

`A057077(n+1)*A113430(n)`
-/

namespace A208546.P1018089823113621631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A113430 n

end

end A208546.P1018089823113621631

/-! ## A208546.P15908463947220066660

`A214529(Δ[A004526(n)])*A214529(n)`
-/

namespace A208546.P15908463947220066660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214529 (f1 (n + 1) - f1 n).toNat * A214529 n

end

end A208546.P15908463947220066660

/-! ## A208546.P15075014649188986048

`A057077(2*n)*A214529(n)`
-/

namespace A208546.P15075014649188986048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A214529 n

end

end A208546.P15075014649188986048

/-! ## A208546.P15388346846786483397

`A087960(2*n)*A214529(n)`
-/

namespace A208546.P15388346846786483397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A214529 n

end

end A208546.P15388346846786483397

/-! ## A208546.P9637562111090154729

`A209615(2*n+1)*A214529(n)`
-/

namespace A208546.P9637562111090154729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (2 * n + 1) * A214529 n

end

end A208546.P9637562111090154729

/-! ## A208546.P4852015823388785744

`A010892(A008585(n))*A214529(n)`
-/

namespace A208546.P4852015823388785744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A008585 n).toNat * A214529 n

end

end A208546.P4852015823388785744

/-! ## A208546.P5149951975742005014

`A010892(A008585(n)+A214529(n)-1)`
-/

namespace A208546.P5149951975742005014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A008585 n + (A214529 n - 1)).toNat

end

end A208546.P5149951975742005014

/-! ## A208546.P5995207085475206626

`A010892(A008585(n)-(1-A214529(n)))`
-/

namespace A208546.P5995207085475206626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A008585 n - (1 - A214529 n)).toNat

end

end A208546.P5995207085475206626

/-! ## A208546.P17507950901109959592

`A010892(A016777(n))*A214529(n)`
-/

namespace A208546.P17507950901109959592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A016777 n).toNat * A214529 n

end

end A208546.P17507950901109959592

/-! ## A208546.P16235308376818555457

`A010892(A016777(n)+1-A214529(n))`
-/

namespace A208546.P16235308376818555457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A016777 n + (1 - A214529 n)).toNat

end

end A208546.P16235308376818555457

/-! ## A208546.P4042285798887312340

`A010892(1-(A214529(n)-A016777(n)))`
-/

namespace A208546.P4042285798887312340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (1 - (A214529 n - A016777 n)).toNat

end

end A208546.P4042285798887312340

/-! ## A208546.P6304608607928143961

`A113430(A093722(n+1))*A113430(n)`
-/

namespace A208546.P6304608607928143961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113430 (A093722 (n + 1)).toNat * A113430 n

end

end A208546.P6304608607928143961

/-!
# A208547: Phi(k,m) with squarefree k values in sorted order for any integer m > 1.

The programs for A208547, there is no canonical definition to state claims against.
-/

/-! ## A208547.P10787890567831058223

`filter[A206225(n+1), A008966(#)]`
-/

namespace A208547.P10787890567831058223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A208547.P10787890567831058223

/-!
# A208548: a(n) = floor((4/3)*(2+prime(n)) - prime(n+1)).

The programs for A208548, the canonical program `A208548.P11240313443183236661` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208548 has offset 1).

The definition of A208548 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208548.P10581075299634094329

`A126759(A000040(n+1))-A046933(n+1)`
-/

namespace A208548.P10581075299634094329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126759 (A000040 (n + 1)).toNat - A046933 (n + 1)

end

end A208548.P10581075299634094329

namespace A208548

/-- `A126759(A000040(n+1))-A046933(n+1)` -/
def P10581075299634094329.Spec : Prop :=
  ∀ n, P10581075299634094329.a n = A208548 (n + 1)

end A208548

/-! ## A208548.P11240313443183236661

`A002264(A175222(n+1))-A046933(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A208548

/-- `A002264(A175222(n+1))-A046933(n+1)` -/
def P11240313443183236661.Spec : Prop :=
  ∀ n, P11240313443183236661.a n = A208548 (n + 1)

theorem P11240313443183236661.correct : P11240313443183236661.Spec := by
  intro n
  simp only [A208548, Nat.add_sub_cancel]

end A208548

/-! ## A208548.P216723367948167985

`A349392(A000040(n+1))-A001223(n+1)`
-/

namespace A208548.P216723367948167985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349392 (A000040 (n + 1)).toNat - A001223 (n + 1)

end

end A208548.P216723367948167985

namespace A208548

/-- `A349392(A000040(n+1))-A001223(n+1)` -/
def P216723367948167985.Spec : Prop :=
  ∀ n, P216723367948167985.a n = A208548 (n + 1)

end A208548

/-! ## A208548.P11106594527375955998

`A002264(A175224(n+1))-Δ[A175224(n+1)]`
-/

namespace A208548.P11106594527375955998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A175224 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A208548.P11106594527375955998

namespace A208548

/-- `A002264(A175224(n+1))-Δ[A175224(n+1)]` -/
def P11106594527375955998.Spec : Prop :=
  ∀ n, P11106594527375955998.a n = A208548 (n + 1)

end A208548

/-! ## A208548.P4570800466528494549

`A047564(A052147(n+1))-p?[A047564(n+1)]`
-/

namespace A208548.P4570800466528494549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047564 (A052147 (n + 1)).toNat - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A208548.P4570800466528494549

namespace A208548

/-- `A047564(A052147(n+1))-p?[A047564(n+1)]` -/
def P4570800466528494549.Spec : Prop :=
  ∀ n, P4570800466528494549.a n = A208548 (n + 1)

end A208548

/-! ## A208548.P5023820257144673010

`A004773(A000040(n+1)+2)-A000040(n+2)`
-/

namespace A208548.P5023820257144673010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A000040 (n + 1) + 2).toNat - A000040 (n + 2)

end

end A208548.P5023820257144673010

namespace A208548

/-- `A004773(A000040(n+1)+2)-A000040(n+2)` -/
def P5023820257144673010.Spec : Prop :=
  ∀ n, P5023820257144673010.a n = A208548 (n + 1)

end A208548

/-! ## A208548.P11110406611746808168

`A042965(A006093(n+1)+3)-A006093(n+2)`
-/

namespace A208548.P11110406611746808168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A006093 (n + 1) + 3).toNat - A006093 (n + 2)

end

end A208548.P11110406611746808168

namespace A208548

/-- `A042965(A006093(n+1)+3)-A006093(n+2)` -/
def P11110406611746808168.Spec : Prop :=
  ∀ n, P11110406611746808168.a n = A208548 (n + 1)

end A208548

/-!
# A208550: Number of n X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A208550, there is no canonical definition to state claims against.
-/

/-! ## A208550.P12731156001863122413

`A208555((n+1)²+n²)`
-/

namespace A208550.P12731156001863122413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208555 ((n + 1) ^ 2 + n ^ 2)

end

end A208550.P12731156001863122413

/-! ## A208550.P4293876570608906763

`record[A003982(n)*A208555(n+1)]`
-/

namespace A208550.P4293876570608906763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A208555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208550.P4293876570608906763

/-! ## A208550.P16162954598951387986

`record[gcd(A114327(n), A208555(n+1))]`
-/

namespace A208550.P16162954598951387986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A208555 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208550.P16162954598951387986

/-! ## A208550.P15838017612746237074

`A208555(A001844(n))*A291168(n)`
-/

namespace A208550.P15838017612746237074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208555 (A001844 n).toNat * A291168 n

end

end A208550.P15838017612746237074

/-! ## A208550.P9608083429194750269

`gcd(A000038(n), A208555(A001844(n)))`
-/

namespace A208550.P9608083429194750269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A208555 (A001844 n).toNat)

end

end A208550.P9608083429194750269

/-!
# A208551: Number of n X 4 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A208551, the canonical program `A208551.P8544895162570105866` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208551 has offset 1).

The definition of A208551 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208551.P8544895162570105866

`A081437(floor(n/2)+1)*A081437(A110654(n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A208551

/-- `A081437(floor(n/2)+1)*A081437(A110654(n))` -/
def P8544895162570105866.Spec : Prop :=
  ∀ n, P8544895162570105866.a n = A208551 (n + 1)

theorem P8544895162570105866.correct : P8544895162570105866.Spec := by
  intro n
  simp only [A208551, Nat.add_sub_cancel]

end A208551

/-! ## A208551.P2096963673665800146

`A207363(n+1)/A208114(n+1)*A208115(n+1)`
-/

namespace A208551.P2096963673665800146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207363 (n + 1) : ℚ) / (A208114 (n + 1) : ℚ) * (A208115 (n + 1) : ℚ)

end

end A208551.P2096963673665800146

namespace A208551

/-- `A207363(n+1)/A208114(n+1)*A208115(n+1)` -/
def P2096963673665800146.Spec : Prop :=
  ∀ n, P2096963673665800146.a n = (A208551 (n + 1) : ℚ)

end A208551

/-! ## A208551.P2034522319895212877

`A207363(n+1)/A208115(n+1)*A208116(n+1)`
-/

namespace A208551.P2034522319895212877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207363 (n + 1) : ℚ) / (A208115 (n + 1) : ℚ) * (A208116 (n + 1) : ℚ)

end

end A208551.P2034522319895212877

namespace A208551

/-- `A207363(n+1)/A208115(n+1)*A208116(n+1)` -/
def P2034522319895212877.Spec : Prop :=
  ∀ n, P2034522319895212877.a n = (A208551 (n + 1) : ℚ)

end A208551

/-! ## A208551.P3525782520259308658

`A085490(A080513(n+1))*A085490(A080513(n))`
-/

namespace A208551.P3525782520259308658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085490 (A080513 (n + 1)).toNat * A085490 (A080513 n).toNat

end

end A208551.P3525782520259308658

namespace A208551

/-- `A085490(A080513(n+1))*A085490(A080513(n))` -/
def P3525782520259308658.Spec : Prop :=
  ∀ n, P3525782520259308658.a n = A208551 (n + 1)

end A208551

/-! ## A208551.P11762682785337170599

`A085490(A004526(n+3))*A085490(A004526(n)+2)`
-/

namespace A208551.P11762682785337170599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085490 (A004526 (n + 3)).toNat * A085490 (A004526 n + 2).toNat

end

end A208551.P11762682785337170599

namespace A208551

/-- `A085490(A004526(n+3))*A085490(A004526(n)+2)` -/
def P11762682785337170599.Spec : Prop :=
  ∀ n, P11762682785337170599.a n = A208551 (n + 1)

end A208551

/-! ## A208551.P13559904037571979635

`A085490(A123108(n+3))*A085490(A123108(n+4))`
-/

namespace A208551.P13559904037571979635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085490 (A123108 (n + 3)).toNat * A085490 (A123108 (n + 4)).toNat

end

end A208551.P13559904037571979635

namespace A208551

/-- `A085490(A123108(n+3))*A085490(A123108(n+4))` -/
def P13559904037571979635.Spec : Prop :=
  ∀ n, P13559904037571979635.a n = A208551 (n + 1)

end A208551

/-! ## A208551.P465826427165118187

`A208555(A055998(n+2))`
-/

namespace A208551.P465826427165118187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208555 (A055998 (n + 2)).toNat

end

end A208551.P465826427165118187

namespace A208551

/-- `A208555(A055998(n+2))` -/
def P465826427165118187.Spec : Prop :=
  ∀ n, P465826427165118187.a n = A208551 (n + 1)

end A208551

/-! ## A208551.P5677772596621825382

`A208555(A052905(n+1)+2)`
-/

namespace A208551.P5677772596621825382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208555 (A052905 (n + 1) + 2).toNat

end

end A208551.P5677772596621825382

namespace A208551

/-- `A208555(A052905(n+1)+2)` -/
def P5677772596621825382.Spec : Prop :=
  ∀ n, P5677772596621825382.a n = A208551 (n + 1)

end A208551

/-! ## A208551.P17401830685448209712

`A208555(A167614(n+1)+2*n+1)`
-/

namespace A208551.P17401830685448209712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208555 (A167614 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A208551.P17401830685448209712

namespace A208551

/-- `A208555(A167614(n+1)+2*n+1)` -/
def P17401830685448209712.Spec : Prop :=
  ∀ n, P17401830685448209712.a n = A208551 (n + 1)

end A208551

/-!
# A208552: Number of n X 5 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A208552, the canonical program `A208552.P1317976317445560117` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208552 has offset 1).

The definition of A208552 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208552.P14603215225777718342

`A207363(n+1)/A208115(n+1)*A208117(n+1)`
-/

namespace A208552.P14603215225777718342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207363 (n + 1) : ℚ) / (A208115 (n + 1) : ℚ) * (A208117 (n + 1) : ℚ)

end

end A208552.P14603215225777718342

namespace A208552

/-- `A207363(n+1)/A208115(n+1)*A208117(n+1)` -/
def P14603215225777718342.Spec : Prop :=
  ∀ n, P14603215225777718342.a n = (A208552 (n + 1) : ℚ)

end A208552

/-! ## A208552.P1317976317445560117

`A100176(A008619(n+1))*A100176(A008619(n)+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A208552

/-- `A100176(A008619(n+1))*A100176(A008619(n)+1)` -/
def P1317976317445560117.Spec : Prop :=
  ∀ n, P1317976317445560117.a n = A208552 (n + 1)

theorem P1317976317445560117.correct : P1317976317445560117.Spec := by
  intro n
  simp only [A208552, Nat.add_sub_cancel]

end A208552

/-! ## A208552.P6249025654371762122

`A208555(A046691(n+3))`
-/

namespace A208552.P6249025654371762122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208555 (A046691 (n + 3)).toNat

end

end A208552.P6249025654371762122

namespace A208552

/-- `A208555(A046691(n+3))` -/
def P6249025654371762122.Spec : Prop :=
  ∀ n, P6249025654371762122.a n = A208552 (n + 1)

end A208552

/-! ## A208552.P17092645873391718233

`A208555(A000217(n+5)-4)`
-/

namespace A208552.P17092645873391718233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208555 (A000217 (n + 5) - 4).toNat

end

end A208552.P17092645873391718233

namespace A208552

/-- `A208555(A000217(n+5)-4)` -/
def P17092645873391718233.Spec : Prop :=
  ∀ n, P17092645873391718233.a n = A208552 (n + 1)

end A208552

/-! ## A208552.P12493994771265754692

`A208555(A000124(n+5)-5)`
-/

namespace A208552.P12493994771265754692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208555 (A000124 (n + 5) - 5).toNat

end

end A208552.P12493994771265754692

namespace A208552

/-- `A208555(A000124(n+5)-5)` -/
def P12493994771265754692.Spec : Prop :=
  ∀ n, P12493994771265754692.a n = A208552 (n + 1)

end A208552

/-! ## A208552.P17297615712369257375

`A208555(4*n+5+A167499(n))`
-/

namespace A208552.P17297615712369257375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208555 ((4 * n + 5 : ℤ) + A167499 n).toNat

end

end A208552.P17297615712369257375

namespace A208552

/-- `A208555(4*n+5+A167499(n))` -/
def P17297615712369257375.Spec : Prop :=
  ∀ n, P17297615712369257375.a n = A208552 (n + 1)

end A208552

/-!
# A208553: Number of nX6 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A208553, there is no canonical definition to state claims against.
-/

/-! ## A208553.P5281908642395427314

`A208555(∑[n+6]+10)`
-/

namespace A208553.P5281908642395427314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208555 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A208553.P5281908642395427314

/-! ## A208553.P12401502282417791796

`A208555(A052905(n+3))%A017441(n)`
-/

namespace A208553.P12401502282417791796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208555 (A052905 (n + 3)).toNat) (A017441 n)

end

end A208553.P12401502282417791796

/-! ## A208553.P12962667063977478710

`A208555(A052905(n+3))+A000035(2*(n+1))`
-/

namespace A208553.P12962667063977478710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208555 (A052905 (n + 3)).toNat + A000035 (2 * (n + 1))

end

end A208553.P12962667063977478710

/-! ## A208553.P2120540171366755288

`A208555(A052905(n+3))/(n*A002448(3*n+2)²+1)`
-/

namespace A208553.P2120540171366755288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208555 (A052905 (n + 3)).toNat : ℚ) / ((n : ℤ) * A002448 (3 * n + 2) ^ 2 + 1 : ℚ)

end

end A208553.P2120540171366755288

/-! ## A208553.P17875561425108927742

`A208555(A052905(n+3))*A318434(A006530(n+1))`
-/

namespace A208553.P17875561425108927742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208555 (A052905 (n + 3)).toNat * A318434 (A006530 (n + 1)).toNat

end

end A208553.P17875561425108927742

/-!
# A208554: Number of nX7 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A208554, there is no canonical definition to state claims against.
-/

/-! ## A208554.P4215160500569185907

`A208555(A055999(n+4))`
-/

namespace A208554.P4215160500569185907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208555 (A055999 (n + 4)).toNat

end

end A208554.P4215160500569185907

/-! ## A208554.P13145234769411574853

`A208555(A000217(n+7)-6)`
-/

namespace A208554.P13145234769411574853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208555 (A000217 (n + 7) - 6).toNat

end

end A208554.P13145234769411574853

/-! ## A208554.P3968364338988315577

`A208555(A000124(n+7)-7)`
-/

namespace A208554.P3968364338988315577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208555 (A000124 (n + 7) - 7).toNat

end

end A208554.P3968364338988315577

/-! ## A208554.P17089022026777633704

`A208555(A133263(n+7)-8)`
-/

namespace A208554.P17089022026777633704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208555 (A133263 (n + 7) - 8).toNat

end

end A208554.P17089022026777633704

/-! ## A208554.P12537068354688862222

`A208555(A161680(n+7)+n+1)`
-/

namespace A208554.P12537068354688862222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208555 (A161680 (n + 7) + (n + 1 : ℤ)).toNat

end

end A208554.P12537068354688862222

/-! ## A208554.P11936242423755845093

`A208555(A166136(n+4)+A005408(n))`
-/

namespace A208554.P11936242423755845093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208555 (A166136 (n + 4) + A005408 n).toNat

end

end A208554.P11936242423755845093

/-!
# A208555: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A208555, there is no canonical definition to state claims against.
-/

/-! ## A208555.P7844735794053234144

`A000196(A207717(n+1)*A208069(n+1))`
-/

namespace A208555.P7844735794053234144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A207717 (n + 1) * A208069 (n + 1)).toNat

end

end A208555.P7844735794053234144

/-! ## A208555.P10057091931014157089

`A000196(A208069(n+1)*A208369(n+1))`
-/

namespace A208555.P10057091931014157089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A208069 (n + 1) * A208369 (n + 1)).toNat

end

end A208555.P10057091931014157089

/-! ## A208555.P5486090522223259660

`A279948(A000217(n))+A207661(n+1)`
-/

namespace A208555.P5486090522223259660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279948 (A000217 n).toNat + A207661 (n + 1)

end

end A208555.P5486090522223259660

/-! ## A208555.P15601308077576614570

`A279948(A000217(n))+A207774(n+1)`
-/

namespace A208555.P15601308077576614570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279948 (A000217 n).toNat + A207774 (n + 1)

end

end A208555.P15601308077576614570

/-! ## A208555.P874423510181439708

`A331428(∑[A033886(n)])+A208688(n+1)`
-/

namespace A208555.P874423510181439708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033886 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331428 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A208688 (n + 1)

end

end A208555.P874423510181439708

/-!
# A208556: Number of 4 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A208556, the canonical program `A208556.P14159871515860968554` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208556 has offset 1).

The definition of A208556 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208556.P14159871515860968554

`(1-(-2)^(n+2))²`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A208556

/-- `(1-(-2)^(n+2))²` -/
def P14159871515860968554.Spec : Prop :=
  ∀ n, P14159871515860968554.a n = A208556 (n + 1)

theorem P14159871515860968554.correct : P14159871515860968554.Spec := by
  intro n
  simp only [A208556, Nat.add_sub_cancel]

end A208556

/-! ## A208556.P1737574401607388899

`3*a(n-1)+6*a(n-2)-8*a(n-3)` with `a(0)=9, a(1)=81, a(2)=225`
-/

namespace A208556.P1737574401607388899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9, 81, 225] fun n a =>
  3 * a (n - 1) + 6 * a (n - 2) - 8 * a (n - 3)

end

end A208556.P1737574401607388899

namespace A208556

/-- `3*a(n-1)+6*a(n-2)-8*a(n-3)` -/
def P1737574401607388899.Spec : Prop :=
  ∀ n, P1737574401607388899.a n = A208556 (n + 1)

theorem P1737574401607388899.correct : P1737574401607388899.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A208556, Nat.add_sub_cancel, A208556.P1737574401607388899.a, A208556.P14159871515860968554.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A208556, Nat.add_sub_cancel, A208556.P1737574401607388899.a, A208556.P14159871515860968554.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A208556

/-! ## A208556.P8214497873445683385

`A323210(n+2)`
-/

namespace A208556.P8214497873445683385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323210 (n + 2)

end

end A208556.P8214497873445683385

namespace A208556

/-- `A323210(n+2)` -/
def P8214497873445683385.Spec : Prop :=
  ∀ n, P8214497873445683385.a n = A208556 (n + 1)

end A208556

/-! ## A208556.P8617045155684475069

`9*A139818(n+2)`
-/

namespace A208556.P8617045155684475069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A139818 (n + 2)

end

end A208556.P8617045155684475069

namespace A208556

/-- `9*A139818(n+2)` -/
def P8617045155684475069.Spec : Prop :=
  ∀ n, P8617045155684475069.a n = A208556 (n + 1)

end A208556

/-! ## A208556.P5821977375833166467

`record[A323210(abs(1-n))]`
-/

namespace A208556.P5821977375833166467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323210 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208556.P5821977375833166467

namespace A208556

/-- `record[A323210(abs(1-n))]` -/
def P5821977375833166467.Spec : Prop :=
  ∀ n, P5821977375833166467.a n = A208556 (n + 1)

end A208556

/-! ## A208556.P1242395578372382531

`9*A001045(n+2)²`
-/

namespace A208556.P1242395578372382531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A001045 (n + 2) ^ 2

end

end A208556.P1242395578372382531

namespace A208556

/-- `9*A001045(n+2)²` -/
def P1242395578372382531.Spec : Prop :=
  ∀ n, P1242395578372382531.a n = A208556 (n + 1)

end A208556

/-! ## A208556.P9311461785025330159

`or(1, A062510(n+2)²)`
-/

namespace A208556.P9311461785025330159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A062510 (n + 2) ^ 2)

end

end A208556.P9311461785025330159

namespace A208556

/-- `or(1, A062510(n+2)²)` -/
def P9311461785025330159.Spec : Prop :=
  ∀ n, P9311461785025330159.a n = A208556 (n + 1)

end A208556

/-! ## A208556.P10431408119439186554

`8*A003665(n+1)+1`
-/

namespace A208556.P10431408119439186554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A003665 (n + 1) + 1

end

end A208556.P10431408119439186554

namespace A208556

/-- `8*A003665(n+1)+1` -/
def P10431408119439186554.Spec : Prop :=
  ∀ n, P10431408119439186554.a n = A208556 (n + 1)

end A208556

/-! ## A208556.P9353424103393874512

`record[A062510(A007599(n))²]`
-/

namespace A208556.P9353424103393874512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062510 (A007599 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208556.P9353424103393874512

namespace A208556

/-- `record[A062510(A007599(n))²]` -/
def P9353424103393874512.Spec : Prop :=
  ∀ n, P9353424103393874512.a n = A208556 (n + 1)

end A208556

/-! ## A208556.P7487212163395379039

`record[A062510(A008611(n))²]`
-/

namespace A208556.P7487212163395379039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062510 (A008611 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208556.P7487212163395379039

namespace A208556

/-- `record[A062510(A008611(n))²]` -/
def P7487212163395379039.Spec : Prop :=
  ∀ n, P7487212163395379039.a n = A208556 (n + 1)

end A208556

/-! ## A208556.P14657544481670014297

`record[A062510(A008612(n))²]`
-/

namespace A208556.P14657544481670014297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062510 (A008612 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208556.P14657544481670014297

namespace A208556

/-- `record[A062510(A008612(n))²]` -/
def P14657544481670014297.Spec : Prop :=
  ∀ n, P14657544481670014297.a n = A208556 (n + 1)

end A208556

/-! ## A208556.P11740820120927924649

`record[A062510(A008624(n))²]`
-/

namespace A208556.P11740820120927924649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062510 (A008624 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208556.P11740820120927924649

namespace A208556

/-- `record[A062510(A008624(n))²]` -/
def P11740820120927924649.Spec : Prop :=
  ∀ n, P11740820120927924649.a n = A208556 (n + 1)

end A208556

/-! ## A208556.P13287333802114117746

`record[A062510(A028242(n))²]`
-/

namespace A208556.P13287333802114117746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062510 (A028242 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208556.P13287333802114117746

namespace A208556

/-- `record[A062510(A028242(n))²]` -/
def P13287333802114117746.Spec : Prop :=
  ∀ n, P13287333802114117746.a n = A208556 (n + 1)

end A208556

/-! ## A208556.P15703096681175190015

`record[A062510(A117910(n))²]`
-/

namespace A208556.P15703096681175190015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062510 (A117910 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208556.P15703096681175190015

namespace A208556

/-- `record[A062510(A117910(n))²]` -/
def P15703096681175190015.Spec : Prop :=
  ∀ n, P15703096681175190015.a n = A208556 (n + 1)

end A208556

/-! ## A208556.P1532833579423073389

`A014551(n+1)*A020707(n+1)+1`
-/

namespace A208556.P1532833579423073389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 (n + 1) * A020707 (n + 1) + 1

end

end A208556.P1532833579423073389

namespace A208556

/-- `A014551(n+1)*A020707(n+1)+1` -/
def P1532833579423073389.Spec : Prop :=
  ∀ n, P1532833579423073389.a n = A208556 (n + 1)

end A208556

/-! ## A208556.P15467846381931168822

`A207454(n+1)/A206981(n+1)*A207454(n+1)`
-/

namespace A208556.P15467846381931168822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207454 (n + 1) : ℚ) / (A206981 (n + 1) : ℚ) * (A207454 (n + 1) : ℚ)

end

end A208556.P15467846381931168822

namespace A208556

/-- `A207454(n+1)/A206981(n+1)*A207454(n+1)` -/
def P15467846381931168822.Spec : Prop :=
  ∀ n, P15467846381931168822.a n = (A208556 (n + 1) : ℚ)

end A208556

/-! ## A208556.P9401602198197748205

`A085435(n+2)/A060867(n+2)*A085435(n+2)`
-/

namespace A208556.P9401602198197748205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085435 (n + 2) : ℚ) / (A060867 (n + 2) : ℚ) * (A085435 (n + 2) : ℚ)

end

end A208556.P9401602198197748205

namespace A208556

/-- `A085435(n+2)/A060867(n+2)*A085435(n+2)` -/
def P9401602198197748205.Spec : Prop :=
  ∀ n, P9401602198197748205.a n = (A208556 (n + 1) : ℚ)

end A208556

/-! ## A208556.P12928687729908518277

`A092297(n+3)²/4`
-/

namespace A208556.P12928687729908518277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092297 (n + 3) ^ 2 : ℚ) / 4

end

end A208556.P12928687729908518277

namespace A208556

/-- `A092297(n+3)²/4` -/
def P12928687729908518277.Spec : Prop :=
  ∀ n, P12928687729908518277.a n = (A208556 (n + 1) : ℚ)

end A208556

/-! ## A208556.P4317958118098154444

`Δ[Δ[A283642(n)²]]+1`
-/

namespace A208556.P4317958118098154444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283642 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A208556.P4317958118098154444

namespace A208556

/-- `Δ[Δ[A283642(n)²]]+1` -/
def P4317958118098154444.Spec : Prop :=
  ∀ n, P4317958118098154444.a n = A208556 (n + 1)

end A208556

/-!
# A208557: Number of 5 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A208557, there is no canonical definition to state claims against.
-/

/-! ## A208557.P5419402450664577442

`A208555(A167499(n+3))`
-/

namespace A208557.P5419402450664577442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208555 (A167499 (n + 3)).toNat

end

end A208557.P5419402450664577442

/-! ## A208557.P4576441793415844114

`A208555(A000124(n+4)+4)`
-/

namespace A208557.P4576441793415844114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208555 (A000124 (n + 4) + 4).toNat

end

end A208557.P4576441793415844114

/-! ## A208557.P17207715604910613491

`A208555(A000217(n+4)+5)`
-/

namespace A208557.P17207715604910613491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208555 (A000217 (n + 4) + 5).toNat

end

end A208557.P17207715604910613491

/-! ## A208557.P14516008689682190199

`A208555(A000096(n+4)-(n-1))`
-/

namespace A208557.P14516008689682190199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208555 (A000096 (n + 4) - ((n : ℤ) - 1)).toNat

end

end A208557.P14516008689682190199

/-! ## A208557.P843072395710676261

`A208555(A008486(n+5)+A000096(n))`
-/

namespace A208557.P843072395710676261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208555 (A008486 (n + 5) + A000096 n).toNat

end

end A208557.P843072395710676261

/-!
# A208558: Number of 6 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A208558, the canonical program `A208558.P4879471248993644472` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208558 has offset 1).

The definition of A208558 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208558.P4879471248993644472

`Δ[3*a(n-2)-(a(n-1)+1)]²` with `a(0)=9, a(1)=5`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A208558

/-- `Δ[3*a(n-2)-(a(n-1)+1)]²` -/
def P4879471248993644472.Spec : Prop :=
  ∀ n, P4879471248993644472.a n = A208558 (n + 1)

theorem P4879471248993644472.correct : P4879471248993644472.Spec := by
  intro n
  simp only [A208558, Nat.add_sub_cancel]

end A208558

/-! ## A208558.P2169025136326228993

`4*a(n-1)+12*a(n-2)-27*a(n-3)` with `a(0)=16, a(1)=256, a(2)=784`
-/

namespace A208558.P2169025136326228993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16, 256, 784] fun n a =>
  4 * a (n - 1) + 12 * a (n - 2) - 27 * a (n - 3)

end

end A208558.P2169025136326228993

namespace A208558

/-- `4*a(n-1)+12*a(n-2)-27*a(n-3)` -/
def P2169025136326228993.Spec : Prop :=
  ∀ n, P2169025136326228993.a n = A208558 (n + 1)

end A208558

/-! ## A208558.P5982420712652541309

`(2*A228661(n+2))²`
-/

namespace A208558.P5982420712652541309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A228661 (n + 2)) ^ 2

end

end A208558.P5982420712652541309

namespace A208558

/-- `(2*A228661(n+2))²` -/
def P5982420712652541309.Spec : Prop :=
  ∀ n, P5982420712652541309.a n = A208558 (n + 1)

end A208558

/-! ## A208558.P16573084621698711181

`(4*A006130(n+1))²`
-/

namespace A208558.P16573084621698711181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * A006130 (n + 1)) ^ 2

end

end A208558.P16573084621698711181

namespace A208558

/-- `(4*A006130(n+1))²` -/
def P16573084621698711181.Spec : Prop :=
  ∀ n, P16573084621698711181.a n = A208558 (n + 1)

end A208558

/-! ## A208558.P10113551442291226880

`(4*A140167(n+2))²`
-/

namespace A208558.P10113551442291226880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * A140167 (n + 2)) ^ 2

end

end A208558.P10113551442291226880

namespace A208558

/-- `(4*A140167(n+2))²` -/
def P10113551442291226880.Spec : Prop :=
  ∀ n, P10113551442291226880.a n = A208558 (n + 1)

end A208558

/-! ## A208558.P5947824545266411411

`(4*A182228(n+2))²`
-/

namespace A208558.P5947824545266411411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * A182228 (n + 2)) ^ 2

end

end A208558.P5947824545266411411

namespace A208558

/-- `(4*A182228(n+2))²` -/
def P5947824545266411411.Spec : Prop :=
  ∀ n, P5947824545266411411.a n = A208558 (n + 1)

end A208558

/-! ## A208558.P3608951164698159181

`(4*A143461(A034856(n+1)))²`
-/

namespace A208558.P3608951164698159181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * A143461 (A034856 (n + 1)).toNat) ^ 2

end

end A208558.P3608951164698159181

namespace A208558

/-- `(4*A143461(A034856(n+1)))²` -/
def P3608951164698159181.Spec : Prop :=
  ∀ n, P3608951164698159181.a n = A208558 (n + 1)

end A208558

/-! ## A208558.P9020750703834199894

`(A176737(n+3)+A176737(n))²`
-/

namespace A208558.P9020750703834199894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A176737 (n + 3) + A176737 n) ^ 2

end

end A208558.P9020750703834199894

namespace A208558

/-- `(A176737(n+3)+A176737(n))²` -/
def P9020750703834199894.Spec : Prop :=
  ∀ n, P9020750703834199894.a n = A208558 (n + 1)

end A208558

/-! ## A208558.P4384469040049384136

`(2*(A274977(n)+A006138(n)))²`
-/

namespace A208558.P4384469040049384136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (A274977 n + A006138 n)) ^ 2

end

end A208558.P4384469040049384136

namespace A208558

/-- `(2*(A274977(n)+A006138(n)))²` -/
def P4384469040049384136.Spec : Prop :=
  ∀ n, P4384469040049384136.a n = A208558 (n + 1)

end A208558

/-! ## A208558.P12507304991623509445

`(A228661(n+2)²/A006130(n+1))²`
-/

namespace A208558.P12507304991623509445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A228661 (n + 2) ^ 2 : ℚ) / (A006130 (n + 1) : ℚ)) ^ 2

end

end A208558.P12507304991623509445

namespace A208558

/-- `(A228661(n+2)²/A006130(n+1))²` -/
def P12507304991623509445.Spec : Prop :=
  ∀ n, P12507304991623509445.a n = (A208558 (n + 1) : ℚ)

end A208558

/-! ## A208558.P16966548360222285051

`A207455(n+1)/A206981(n+1)*A207455(n+1)`
-/

namespace A208558.P16966548360222285051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207455 (n + 1) : ℚ) / (A206981 (n + 1) : ℚ) * (A207455 (n + 1) : ℚ)

end

end A208558.P16966548360222285051

namespace A208558

/-- `A207455(n+1)/A206981(n+1)*A207455(n+1)` -/
def P16966548360222285051.Spec : Prop :=
  ∀ n, P16966548360222285051.a n = (A208558 (n + 1) : ℚ)

end A208558

/-!
# A208559: Number of 7 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A208559, there is no canonical definition to state claims against.
-/

/-! ## A208559.P14543900452133383376

`A208555(A167499(n+5)+2)`
-/

namespace A208559.P14543900452133383376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208555 (A167499 (n + 5) + 2).toNat

end

end A208559.P14543900452133383376

/-! ## A208559.P5996688605125431887

`A208555(A077169(n+7)+2)`
-/

namespace A208559.P5996688605125431887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208555 (A077169 (n + 7) + 2).toNat

end

end A208559.P5996688605125431887

/-! ## A208559.P3347519415595008384

`A208555(A133263(n+6)+5)`
-/

namespace A208559.P3347519415595008384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208555 (A133263 (n + 6) + 5).toNat

end

end A208559.P3347519415595008384

/-! ## A208559.P5382038430206352008

`A208555(A000217(n+6)+7)`
-/

namespace A208559.P5382038430206352008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208555 (A000217 (n + 6) + 7).toNat

end

end A208559.P5382038430206352008

/-! ## A208559.P1185739940313515287

`A208555(A052905(n+3)+12)`
-/

namespace A208559.P1185739940313515287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208555 (A052905 (n + 3) + 12).toNat

end

end A208559.P1185739940313515287

/-! ## A208559.P3653374044613248663

`A208555(A000096(n+7)-A223134(n+3))`
-/

namespace A208559.P3653374044613248663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208555 (A000096 (n + 7) - A223134 (n + 3)).toNat

end

end A208559.P3653374044613248663

/-! ## A208559.P1335327292563057720

`A208555(A223134(n+9)+A000096(n+3))`
-/

namespace A208559.P1335327292563057720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208555 (A223134 (n + 9) + A000096 (n + 3)).toNat

end

end A208559.P1335327292563057720

/-!
# A208560: Number of n X n 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than one of its immediate leftward or upward or left-upward diagonal neighbors.

The programs for A208560, there is no canonical definition to state claims against.
-/

/-! ## A208560.P10325787315532300804

`A208567((n+1)²+n²)`
-/

namespace A208560.P10325787315532300804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208567 ((n + 1) ^ 2 + n ^ 2)

end

end A208560.P10325787315532300804

/-! ## A208560.P11878963626208878391

`A208567(A001844(n))+A098851(n+1)`
-/

namespace A208560.P11878963626208878391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208567 (A001844 n).toNat + A098851 (n + 1)

end

end A208560.P11878963626208878391

/-! ## A208560.P15772444381276053758

`A208567(A001844(n))+A098852(n+1)`
-/

namespace A208560.P15772444381276053758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208567 (A001844 n).toNat + A098852 (n + 1)

end

end A208560.P15772444381276053758

/-! ## A208560.P8624215205040743383

`A208567(A001844(n))+A098854(n+1)`
-/

namespace A208560.P8624215205040743383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208567 (A001844 n).toNat + A098854 (n + 1)

end

end A208560.P8624215205040743383

/-!
# A208561: Number of n X 2 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than one of its immediate leftward or upward or left-upward diagonal neighbors.

The programs for A208561, the canonical program `A208561.P11190416411063885544` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208561 has offset 1).

The definition of A208561 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208561.P17676437312458832659

`ogf((2-6x+4x^2)/(1-8x+8x^2))`
-/

namespace A208561.P17676437312458832659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -6, 4] [1, -8, 8] n

end

end A208561.P17676437312458832659

namespace A208561

/-- `ogf((2-6x+4x^2)/(1-8x+8x^2))` -/
def P17676437312458832659.Spec : Prop :=
  ∀ n, P17676437312458832659.a n = A208561 (n + 1)

end A208561

/-! ## A208561.P11190416411063885544

`8*a(n-1)-8*a(n-2)` with `a(0)=2, a(1)=10, a(2)=68`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A208561

/-- `8*a(n-1)-8*a(n-2)` -/
def P11190416411063885544.Spec : Prop :=
  ∀ n, P11190416411063885544.a n = A208561 (n + 1)

theorem P11190416411063885544.correct : P11190416411063885544.Spec := by
  intro n
  simp only [A208561, Nat.add_sub_cancel]

end A208561

/-! ## A208561.P1487132325490018106

`ceil(A114479(n+1)/2)`
-/

namespace A208561.P1487132325490018106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A114479 (n + 1) : ℚ) / 2⌉

end

end A208561.P1487132325490018106

namespace A208561

/-- `ceil(A114479(n+1)/2)` -/
def P1487132325490018106.Spec : Prop :=
  ∀ n, P1487132325490018106.a n = A208561 (n + 1)

end A208561

/-! ## A208561.P10508830871687933007

`Δ[floor(2^(n-1))*A006012(n)]`
-/

namespace A208561.P10508830871687933007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ * A006012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A208561.P10508830871687933007

namespace A208561

/-- `Δ[floor(2^(n-1))*A006012(n)]` -/
def P10508830871687933007.Spec : Prop :=
  ∀ n, P10508830871687933007.a n = A208561 (n + 1)

end A208561

/-! ## A208561.P15819805292845547842

`Δ[A006012(n)*A131577(n)]`
-/

namespace A208561.P15819805292845547842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 n * A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A208561.P15819805292845547842

namespace A208561

/-- `Δ[A006012(n)*A131577(n)]` -/
def P15819805292845547842.Spec : Prop :=
  ∀ n, P15819805292845547842.a n = A208561 (n + 1)

end A208561

/-! ## A208561.P16598150307474113287

`Δ[A006012(n)*A034008(n+1)]`
-/

namespace A208561.P16598150307474113287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 n * A034008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A208561.P16598150307474113287

namespace A208561

/-- `Δ[A006012(n)*A034008(n+1)]` -/
def P16598150307474113287.Spec : Prop :=
  ∀ n, P16598150307474113287.a n = A208561 (n + 1)

end A208561

/-! ## A208561.P8051668926397752791

`Δ[2*A003480(n)]*A011782(n)`
-/

namespace A208561.P8051668926397752791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A011782 n

end

end A208561.P8051668926397752791

namespace A208561

/-- `Δ[2*A003480(n)]*A011782(n)` -/
def P8051668926397752791.Spec : Prop :=
  ∀ n, P8051668926397752791.a n = A208561 (n + 1)

end A208561

/-! ## A208561.P7868848590397744925

`Δ[ceil((A007070(n)+1)/2)]*A000079(n)`
-/

namespace A208561.P7868848590397744925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007070 n + 1 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 n

end

end A208561.P7868848590397744925

namespace A208561

/-- `Δ[ceil((A007070(n)+1)/2)]*A000079(n)` -/
def P7868848590397744925.Spec : Prop :=
  ∀ n, P7868848590397744925.a n = A208561 (n + 1)

end A208561

/-! ## A208561.P17300747842602515436

`Δ[A003480(n)]*A000079(A028310(n))`
-/

namespace A208561.P17300747842602515436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 (A028310 n).toNat

end

end A208561.P17300747842602515436

namespace A208561

/-- `Δ[A003480(n)]*A000079(A028310(n))` -/
def P17300747842602515436.Spec : Prop :=
  ∀ n, P17300747842602515436.a n = A208561 (n + 1)

end A208561

/-! ## A208561.P13945174954830626893

`(A007052(n)+A003480(n))*A000079(n)`
-/

namespace A208561.P13945174954830626893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007052 n + A003480 n) * A000079 n

end

end A208561.P13945174954830626893

namespace A208561

/-- `(A007052(n)+A003480(n))*A000079(n)` -/
def P13945174954830626893.Spec : Prop :=
  ∀ n, P13945174954830626893.a n = A208561 (n + 1)

end A208561

/-! ## A208561.P8848320865194912151

`round(Δ[A228568(n)/2]/2)`
-/

namespace A208561.P8848320865194912151
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228568 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n) / 2)

end

end A208561.P8848320865194912151

namespace A208561

/-- `round(Δ[A228568(n)/2]/2)` -/
def P8848320865194912151.Spec : Prop :=
  ∀ n, P8848320865194912151.a n = A208561 (n + 1)

end A208561

/-!
# A208562: Number of n X 3 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than one of its immediate leftward or upward or left-upward diagonal neighbors.

The programs for A208562, there is no canonical definition to state claims against.
-/

/-! ## A208562.P13967776347401722163

`A208567(∑[n+2]+4)`
-/

namespace A208562.P13967776347401722163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208567 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A208562.P13967776347401722163

/-! ## A208562.P17057337781835745609

`lcm(A033999(n), A208567(A167614(n+1)))`
-/

namespace A208562.P17057337781835745609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A208567 (A167614 (n + 1)).toNat)

end

end A208562.P17057337781835745609

/-! ## A208562.P7735906422139837667

`or(A000007(n), A208567(A167614(n+1)))`
-/

namespace A208562.P7735906422139837667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A208567 (A167614 (n + 1)).toNat)

end

end A208562.P7735906422139837667

/-! ## A208562.P11073101927655558767

`or(A151934(n), A208567(A167614(n+1)))`
-/

namespace A208562.P11073101927655558767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151934 n) (A208567 (A167614 (n + 1)).toNat)

end

end A208562.P11073101927655558767

/-! ## A208562.P2494056161273834532

`A208567(A167614(n+1))%A207218(n+1)`
-/

namespace A208562.P2494056161273834532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208567 (A167614 (n + 1)).toNat) (A207218 (n + 1))

end

end A208562.P2494056161273834532

/-!
# A208563: Number of nX4 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than one of its immediate leftward or upward or left-upward diagonal neighbors.

The programs for A208563, there is no canonical definition to state claims against.
-/

/-! ## A208563.P2646071296000361352

`A208567(A374004(n+1))`
-/

namespace A208563.P2646071296000361352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208567 (A374004 (n + 1)).toNat

end

end A208563.P2646071296000361352

/-! ## A208563.P7695708707394426205

`A208567(A141214(n)+7)`
-/

namespace A208563.P7695708707394426205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208567 (A141214 n + 7).toNat

end

end A208563.P7695708707394426205

/-! ## A208563.P6728052977811526354

`A208567(A052905(n)+9)`
-/

namespace A208563.P6728052977811526354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208567 (A052905 n + 9).toNat

end

end A208563.P6728052977811526354

/-! ## A208563.P12580976797134810025

`A208567(A055999(n)+10)`
-/

namespace A208563.P12580976797134810025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208567 (A055999 n + 10).toNat

end

end A208563.P12580976797134810025

/-! ## A208563.P6098794347569162380

`A208567(A167614(n+2)+1)`
-/

namespace A208563.P6098794347569162380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208567 (A167614 (n + 2) + 1).toNat

end

end A208563.P6098794347569162380

/-!
# A208564: Number of nX5 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than one of its immediate leftward or upward or left-upward diagonal neighbors.

The programs for A208564, there is no canonical definition to state claims against.
-/

/-! ## A208564.P3473397072721484302

`A208567(A374005(n+1))`
-/

namespace A208564.P3473397072721484302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208567 (A374005 (n + 1)).toNat

end

end A208564.P3473397072721484302

/-! ## A208564.P2755211312112202753

`A208567(A034856(n+3)+7)`
-/

namespace A208564.P2755211312112202753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208567 (A034856 (n + 3) + 7).toNat

end

end A208564.P2755211312112202753

/-! ## A208564.P16968070138389930456

`A208567(eq[6, A131818(n+1)])`
-/

namespace A208564.P16968070138389930456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208567 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208564.P16968070138389930456

/-! ## A208564.P18442478992385890091

`A208567(A052905(n+3)-(2*n+1))`
-/

namespace A208564.P18442478992385890091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208567 (A052905 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A208564.P18442478992385890091

/-! ## A208564.P15051562026176179457

`A208567(Δ[A023545(n+1)])`
-/

namespace A208564.P15051562026176179457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208567 (f1 (n + 1) - f1 n).toNat

end

end A208564.P15051562026176179457

/-!
# A208565: Number of nX6 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than one of its immediate leftward or upward or left-upward diagonal neighbors.

The programs for A208565, there is no canonical definition to state claims against.
-/

/-! ## A208565.P11437286225083020003

`A208567(A374007(n+1))`
-/

namespace A208565.P11437286225083020003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208567 (A374007 (n + 1)).toNat

end

end A208565.P11437286225083020003

/-! ## A208565.P11870662315781611683

`A208567(eq[7, A131818(n+1)])`
-/

namespace A208565.P11870662315781611683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208567 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208565.P11870662315781611683

/-! ## A208565.P10887722395875563170

`A208567(A052905(n+3))`
-/

namespace A208565.P10887722395875563170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208567 (A052905 (n + 3)).toNat

end

end A208565.P10887722395875563170

/-! ## A208565.P12369047628966084481

`A208567(A056119(n)+16)`
-/

namespace A208565.P12369047628966084481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208567 (A056119 n + 16).toNat

end

end A208565.P12369047628966084481

/-! ## A208565.P17528790344638055428

`A208567(eq[3, A219347(n)])`
-/

namespace A208565.P17528790344638055428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208567 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208565.P17528790344638055428

/-!
# A208566: Number of nX7 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than one of its immediate leftward or upward or left-upward diagonal neighbors.

The programs for A208566, there is no canonical definition to state claims against.
-/

/-! ## A208566.P14242394390948507427

`A208567(A374008(n+1))`
-/

namespace A208566.P14242394390948507427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208567 (A374008 (n + 1)).toNat

end

end A208566.P14242394390948507427

/-! ## A208566.P7016859295180052876

`A208567(eq[8, A131818(n+1)])`
-/

namespace A208566.P7016859295180052876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208567 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208566.P7016859295180052876

/-! ## A208566.P1919564615240560313

`A208567(A000124(n+7)-7)`
-/

namespace A208566.P1919564615240560313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208567 (A000124 (n + 7) - 7).toNat

end

end A208566.P1919564615240560313

/-! ## A208566.P604806549520796222

`A208567(eq[2, A219347(n)-2])`
-/

namespace A208566.P604806549520796222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208567 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208566.P604806549520796222

/-!
# A208567: T(n,k)=Number of nXk 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than one of its immediate leftward or upward or left-upward diagonal neighbors.

The programs for A208567, there is no canonical definition to state claims against.
-/

/-! ## A208567.P8349808761198557972

`A267303(A316815(n+1)+A301626(n))`
-/

namespace A208567.P8349808761198557972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267303 (A316815 (n + 1) + A301626 n).toNat

end

end A208567.P8349808761198557972

/-! ## A208567.P16917927922837375911

`A092450(lt[A000108(n), A174694(n+1)²])`
-/

namespace A208567.P16917927922837375911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174694 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092450 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A208567.P16917927922837375911

/-!
# A208570: LCM of n and smallest nondivisor of n.

The programs for A208570, there is no canonical definition to state claims against.
-/

/-! ## A208570.P12577520139784814327

`lcm(n+1, A007978(n+1))`
-/

namespace A208570.P12577520139784814327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A007978 (n + 1))

end

end A208570.P12577520139784814327

/-! ## A208570.P6076363428468075397

`(n+1)*A258115(n+1)`
-/

namespace A208570.P6076363428468075397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A258115 (n + 1)

end

end A208570.P6076363428468075397

/-! ## A208570.P8512648675838137491

`(n+1)*A007978(A061853(n+1)+n+1)`
-/

namespace A208570.P8512648675838137491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007978 (A061853 (n + 1) + (n : ℤ) + 1).toNat

end

end A208570.P8512648675838137491

/-! ## A208570.P11926209089005068581

`(n+1)*A053669(A061853(n+1)+n+1)`
-/

namespace A208570.P11926209089005068581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A053669 (A061853 (n + 1) + (n + 1 : ℤ)).toNat

end

end A208570.P11926209089005068581

/-! ## A208570.P2026030711122968297

`(n+1)*A020639(A346563(n+1)-(n+1))`
-/

namespace A208570.P2026030711122968297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A020639 (A346563 (n + 1) - (n + 1 : ℤ)).toNat

end

end A208570.P2026030711122968297

/-! ## A208570.P12209794468282983374

`(n+1)*A020639(A000040(n+1)*A007978(n+1))`
-/

namespace A208570.P12209794468282983374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A020639 (A000040 (n + 1) * A007978 (n + 1)).toNat

end

end A208570.P12209794468282983374

/-! ## A208570.P314200602669946701

`(n+1)*A014963(A331886(2*(n+1)²))`
-/

namespace A208570.P314200602669946701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A014963 (A331886 (2 * (n + 1) ^ 2)).toNat

end

end A208570.P314200602669946701

/-!
# A208571: Number of non-practical binary partitions of n.

The programs for A208571, there is no canonical definition to state claims against.
-/

/-! ## A208571.P10587190744208112313

`A225099(A247157(n+1))+A160588(n)`
-/

namespace A208571.P10587190744208112313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225099 (A247157 (n + 1)).toNat + A160588 n

end

end A208571.P10587190744208112313

/-! ## A208571.P13282884714893379248

`A341675(A016873(n)*A059966(n+1))`
-/

namespace A208571.P13282884714893379248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341675 (A016873 n * A059966 (n + 1)).toNat

end

end A208571.P13282884714893379248

/-! ## A208571.P15314290890506252128

`A063725(A242534(n+1))+A025480(n+1)`
-/

namespace A208571.P15314290890506252128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (A242534 (n + 1)).toNat + A025480 (n + 1)

end

end A208571.P15314290890506252128

/-! ## A208571.P4435080904241761

`A007636(A153653(n+1))%A000265(n+2)`
-/

namespace A208571.P4435080904241761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007636 (A153653 (n + 1)).toNat) (A000265 (n + 2))

end

end A208571.P4435080904241761

/-!
# A208572: Smallest twin prime > 2^n.

The programs for A208572, there is no canonical definition to state claims against.
-/

/-! ## A208572.P6290824656013354991

`A173937(n+1)+2^(n+1)`
-/

namespace A208572.P6290824656013354991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173937 (n + 1) + (2 ^ (n + 1) : ℤ)

end

end A208572.P6290824656013354991

/-! ## A208572.P6349546811213800124

`A126646(n)+A173937(n+1)+1`
-/

namespace A208572.P6349546811213800124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n + (A173937 (n + 1) + 1)

end

end A208572.P6349546811213800124

/-! ## A208572.P6344227124906291777

`A000225(n+1)+A173937(n+1)+1`
-/

namespace A208572.P6344227124906291777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + (A173937 (n + 1) + 1)

end

end A208572.P6344227124906291777

/-! ## A208572.P14341090830229658498

`A181821(A000040(n+1))+A173937(n+1)`
-/

namespace A208572.P14341090830229658498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A000040 (n + 1)).toNat + A173937 (n + 1)

end

end A208572.P14341090830229658498

/-! ## A208572.P13686294352946729268

`A014210(n+1)+A173937(n+1)-A013597(n+1)`
-/

namespace A208572.P13686294352946729268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 (n + 1) + (A173937 (n + 1) - A013597 (n + 1))

end

end A208572.P13686294352946729268

/-! ## A208572.P16324938075228008855

`record[A173937(n)+Δ[A296965(n)]]`
-/

namespace A208572.P16324938075228008855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296965 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173937 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208572.P16324938075228008855

/-!
# A208573: Smallest twin prime > 3*2^n.

The programs for A208573, there is no canonical definition to state claims against.
-/

/-! ## A208573.P17637313333007456928

`A208574(comp[2*n+3]+3)`
-/

namespace A208573.P17637313333007456928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208574 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 3)

end

end A208573.P17637313333007456928

/-! ## A208573.P12707286830035771092

`∩[A078864(n+1), A132247(A071404(n+2))]`
-/

namespace A208573.P12707286830035771092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (A071404 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208573.P12707286830035771092

/-!
# A208574: Union of A208572 and A208573.

The programs for A208574, there is no canonical definition to state claims against.
-/

/-! ## A208574.P14779577487591639958

`∪[A208572(n+1), A208573(n+1)]`
-/

namespace A208574.P14779577487591639958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A208574.P14779577487591639958

/-! ## A208574.P5848153145559730273

`∪[A173937(n+1)+2^(n+1), A208573(n+1)]`
-/

namespace A208574.P5848153145559730273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173937 (n + 1) + (2 ^ (n + 1) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A208574.P5848153145559730273

/-! ## A208574.P14829458118364171741

`∪[A208573(n+1), A126646(n)+A173937(n+1)+1]`
-/

namespace A208574.P14829458118364171741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n + (A173937 (n + 1) + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A208574.P14829458118364171741

/-! ## A208574.P1992467135074168151

`∪[A000225(n+1)+A173937(n+1)+1, A208573(n+1)]`
-/

namespace A208574.P1992467135074168151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + (A173937 (n + 1) + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A208574.P1992467135074168151

/-! ## A208574.P3594981609016675102

`A117120(record[A117120(A001359(n+1))])`
-/

namespace A208574.P3594981609016675102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117120 (A001359 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117120 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A208574.P3594981609016675102

/-!
# A208575: Product of digits of n in factorial base.

The programs for A208575, there is no canonical definition to state claims against.
-/

/-! ## A208575.P14231037167827751408

`∏{digits}[A007623(n), #]`
-/

namespace A208575.P14231037167827751408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A208575.P14231037167827751408

/-! ## A208575.P13467376158509461669

`char[A227157(n+1)]*A227153(n)`
-/

namespace A208575.P13467376158509461669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227157 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A227153 n

end

end A208575.P13467376158509461669

/-! ## A208575.P10035737917047942731

`A355037(A351576(n))`
-/

namespace A208575.P10035737917047942731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355037 (A351576 n).toNat

end

end A208575.P10035737917047942731

/-! ## A208575.P10242372590583885198

`∏{digits}[A276326(A153880(n)-n), #]`
-/

namespace A208575.P10242372590583885198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276326 (A153880 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A208575.P10242372590583885198

/-! ## A208575.P6436554330182133638

`A037213(A187844(A007623(n))²)`
-/

namespace A208575.P6436554330182133638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A187844 (A007623 n).toNat ^ 2).toNat

end

end A208575.P6436554330182133638

/-! ## A208575.P15827705796295172737

`lcm(A099563(n), A187844(A007623(n)))`
-/

namespace A208575.P15827705796295172737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A099563 n) (A187844 (A007623 n).toNat)

end

end A208575.P15827705796295172737

/-! ## A208575.P14231977419684864098

`∏{digits}[A001202(A277012(n)+1), #]`
-/

namespace A208575.P14231977419684864098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001202 (A277012 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A208575.P14231977419684864098

/-! ## A208575.P671395702589762781

`A007954(A007623(n))`
-/

namespace A208575.P671395702589762781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A007623 n).toNat

end

end A208575.P671395702589762781

/-!
# A208576: Multiplicative persistence of n in factorial base.

The programs for A208576, there is no canonical definition to state claims against.
-/

/-! ## A208576.P1694615905840196688

`1+a(A208575(n))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A208576.P1694615905840196688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  1 + a (A208575 n).toNat

end

end A208576.P1694615905840196688

/-! ## A208576.P15977595969888962151

`a(A208575(n))+1` with `a(0)=0, a(1)=0`
-/

namespace A208576.P15977595969888962151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (A208575 n).toNat + 1

end

end A208576.P15977595969888962151

/-! ## A208576.P8904665621925089171

`A005728(a(A208575(n)))` with `a(0)=0, a(1)=0`
-/

namespace A208576.P8904665621925089171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A005728 (a (A208575 n).toNat).toNat

end

end A208576.P8904665621925089171

/-! ## A208576.P79774822653742912

`A083662(a(A208575(n)))` with `a(0)=0, a(1)=0`
-/

namespace A208576.P79774822653742912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A083662 (a (A208575 n).toNat).toNat

end

end A208576.P79774822653742912

/-! ## A208576.P1571098573336067884

`A132045(a(A208575(n)))` with `a(0)=0, a(1)=0`
-/

namespace A208576.P1571098573336067884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A132045 (a (A208575 n).toNat).toNat

end

end A208576.P1571098573336067884

/-! ## A208576.P9449745841265201619

`A260443(a(A208575(n)))` with `a(0)=0, a(1)=0`
-/

namespace A208576.P9449745841265201619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A260443 (a (A208575 n).toNat).toNat

end

end A208576.P9449745841265201619

/-! ## A208576.P252314632986723347

`A020639(A016116(A208575(n)))%A016116(n)`
-/

namespace A208576.P252314632986723347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A016116 (A208575 n).toNat).toNat) (A016116 n)

end

end A208576.P252314632986723347

/-!
# A208577: Number of nX2 nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to more than one of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208577, there is no canonical definition to state claims against.
-/

/-! ## A208577.P3872145586588411249

`A208581(∑[n+2])`
-/

namespace A208577.P3872145586588411249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208581 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A208577.P3872145586588411249

/-! ## A208577.P18227872687761411445

`record[A208581(abs(A201163(n)))]`
-/

namespace A208577.P18227872687761411445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208581 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208577.P18227872687761411445

/-! ## A208577.P13043750424785404061

`record[A208581(A101881(n)+1)]`
-/

namespace A208577.P13043750424785404061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208581 (A101881 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208577.P13043750424785404061

/-! ## A208577.P6866877821105774795

`record[A208581(A198453(n+1))]`
-/

namespace A208577.P6866877821105774795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208581 (A198453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208577.P6866877821105774795

/-!
# A208578: Number of nX3 nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to more than one of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208578, there is no canonical definition to state claims against.
-/

/-! ## A208578.P7086431079843341264

`A208581(∑[n+3]+1)`
-/

namespace A208578.P7086431079843341264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208581 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208578.P7086431079843341264

/-!
# A208579: Number of nX4 nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to more than one of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208579, there is no canonical definition to state claims against.
-/

/-! ## A208579.P14527681743020479065

`A208581(A141214(n+1))`
-/

namespace A208579.P14527681743020479065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208581 (A141214 (n + 1)).toNat

end

end A208579.P14527681743020479065

/-! ## A208579.P13830979405223134084

`A208581(A027379(n+2))`
-/

namespace A208579.P13830979405223134084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208581 (A027379 (n + 2)).toNat

end

end A208579.P13830979405223134084

/-!
# A208581: T(n,k)=Number of nXk nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to more than one of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208581, there is no canonical definition to state claims against.
-/

/-! ## A208581.P5353990404856167174

`A343344(A184761(n+1))+A208872(n+1)`
-/

namespace A208581.P5353990404856167174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343344 (A184761 (n + 1)).toNat + A208872 (n + 1)

end

end A208581.P5353990404856167174

/-! ## A208581.P2154579351473726970

`A039158(A240629(n+1)^A178239(n))`
-/

namespace A208581.P2154579351473726970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039158 (SequenceMachineLib.roundAway ((A240629 (n + 1) : ℚ) ^ (A178239 n : ℤ))).toNat

end

end A208581.P2154579351473726970

/-! ## A208581.P4656710779039434376

`A039158(A240629(n+1)^A212363(n))`
-/

namespace A208581.P4656710779039434376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039158 (SequenceMachineLib.roundAway ((A240629 (n + 1) : ℚ) ^ (A212363 n : ℤ))).toNat

end

end A208581.P4656710779039434376

/-! ## A208581.P8875150559295799844

`A039158(A240629(n+1)^A275043(n))`
-/

namespace A208581.P8875150559295799844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039158 (SequenceMachineLib.roundAway ((A240629 (n + 1) : ℚ) ^ (A275043 n : ℤ))).toNat

end

end A208581.P8875150559295799844

/-!
# A208582: Number of 2Xn nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to more than one of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208582, there is no canonical definition to state claims against.
-/

/-! ## A208582.P4298658211314820800

`A208581(∑[n+1]+2)`
-/

namespace A208582.P4298658211314820800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208581 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A208582.P4298658211314820800

/-! ## A208582.P15463319972756536808

`record[A010054(n)*A208581(n+2)]`
-/

namespace A208582.P15463319972756536808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A208581 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208582.P15463319972756536808

/-! ## A208582.P1637542350667484766

`A208581(A000096(n)+3)/A000034(2*n)`
-/

namespace A208582.P1637542350667484766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208581 (A000096 n + 3).toNat : ℚ) / (A000034 (2 * n) : ℚ)

end

end A208582.P1637542350667484766

/-!
# A208583: Number of 3Xn nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to more than one of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208583, there is no canonical definition to state claims against.
-/

/-! ## A208583.P16584824347758817830

`A208581(∑[n+2]+4)`
-/

namespace A208583.P16584824347758817830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208581 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A208583.P16584824347758817830

/-! ## A208583.P14042852531741685139

`A208581(A167614(n+1))+A185238(n)`
-/

namespace A208583.P14042852531741685139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208581 (A167614 (n + 1)).toNat + A185238 n

end

end A208583.P14042852531741685139

/-! ## A208583.P10768554770690981007

`A208581(A167614(n+1))+A185284(n)`
-/

namespace A208583.P10768554770690981007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208581 (A167614 (n + 1)).toNat + A185284 n

end

end A208583.P10768554770690981007

/-! ## A208583.P6606570144686145006

`A261424(n)+A208581(A167614(n+1))`
-/

namespace A208583.P6606570144686145006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 n + A208581 (A167614 (n + 1)).toNat

end

end A208583.P6606570144686145006

/-!
# A208584: Number of 4Xn nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to more than one of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208584, there is no canonical definition to state claims against.
-/

/-! ## A208584.P13256232368705395872

`A208581(A020752(n+1))`
-/

namespace A208584.P13256232368705395872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208581 (A020752 (n + 1)).toNat

end

end A208584.P13256232368705395872

/-!
# A208589: Expansion of phi(x) / psi(x^4) in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A208589, there is no canonical definition to state claims against.
-/

/-! ## A208589.P15925334078983744614

`(-1)^n*A093085(n)`
-/

namespace A208589.P15925334078983744614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A093085 n

end

end A208589.P15925334078983744614

/-! ## A208589.P1612690896993899568

`A046980(n)*A112171(n)`
-/

namespace A208589.P1612690896993899568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046980 n * A112171 n

end

end A208589.P1612690896993899568

/-! ## A208589.P5680704026485844598

`A093085(n)*A094267(n)`
-/

namespace A208589.P5680704026485844598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093085 n * A094267 n

end

end A208589.P5680704026485844598

/-! ## A208589.P17728474440133410468

`A112172(n)*A128130(n)`
-/

namespace A208589.P17728474440133410468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112172 n * A128130 n

end

end A208589.P17728474440133410468

/-! ## A208589.P618700132227611400

`A112172(n)*A143431(n)`
-/

namespace A208589.P618700132227611400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112172 n * A143431 n

end

end A208589.P618700132227611400

/-! ## A208589.P5135625343278906199

`A112171(n)*A143621(n)`
-/

namespace A208589.P5135625343278906199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112171 n * A143621 n

end

end A208589.P5135625343278906199

/-! ## A208589.P4841311220580544444

`A112172(n)*A162285(n)`
-/

namespace A208589.P4841311220580544444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112172 n * A162285 n

end

end A208589.P4841311220580544444

/-! ## A208589.P1082378982084362153

`A093085(n)*A219977(n)`
-/

namespace A208589.P1082378982084362153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093085 n * A219977 n

end

end A208589.P1082378982084362153

/-! ## A208589.P110635138933494021

`A093085(n)/A033999(n)`
-/

namespace A208589.P110635138933494021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093085 n : ℚ) / (A033999 n : ℚ)

end

end A208589.P110635138933494021

/-! ## A208589.P16386514920092857698

`A093085(n)/A087960(n)`
-/

namespace A208589.P16386514920092857698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093085 n : ℚ) / (A087960 n : ℚ)

end

end A208589.P16386514920092857698

/-! ## A208589.P10877022980041636120

`A112172(n)*A118828(n+1)`
-/

namespace A208589.P10877022980041636120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112172 n * A118828 (n + 1)

end

end A208589.P10877022980041636120

/-! ## A208589.P8588368910181839746

`A093085(n)*A309873(n+1)`
-/

namespace A208589.P8588368910181839746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093085 n * A309873 (n + 1)

end

end A208589.P8588368910181839746

/-! ## A208589.P17837866834283607471

`A093085(n)/A071935(n+1)`
-/

namespace A208589.P17837866834283607471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093085 n : ℚ) / (A071935 (n + 1) : ℚ)

end

end A208589.P17837866834283607471

/-! ## A208589.P4249753468340729142

`2*A245434(n)-A029841(n)`
-/

namespace A208589.P4249753468340729142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A245434 n - A029841 n

end

end A208589.P4249753468340729142

/-! ## A208589.P12367606344531537547

`A093085(n)/A106400(A106400(n+1)+n+1)`
-/

namespace A208589.P12367606344531537547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093085 n : ℚ) / (A106400 (A106400 (n + 1) + (n + 1 : ℤ)).toNat : ℚ)

end

end A208589.P12367606344531537547

/-! ## A208589.P11481408060508169052

`A093085(n)*A162285(2*n)`
-/

namespace A208589.P11481408060508169052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093085 n * A162285 (2 * n)

end

end A208589.P11481408060508169052

/-! ## A208589.P15123556484521186716

`A093085(n)*A187154(n)/A210063(n)`
-/

namespace A208589.P15123556484521186716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093085 n * A187154 n : ℚ) / (A210063 n : ℚ)

end

end A208589.P15123556484521186716

/-! ## A208589.P13719001689582713025

`A093085(n)*A128130(n²)`
-/

namespace A208589.P13719001689582713025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093085 n * A128130 (n ^ 2)

end

end A208589.P13719001689582713025

/-! ## A208589.P13411107011098819674

`A093085(n)*A143431(n²)`
-/

namespace A208589.P13411107011098819674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093085 n * A143431 (n ^ 2)

end

end A208589.P13411107011098819674

/-! ## A208589.P11153831253756066237

`A093085(n)/A162285(n²)`
-/

namespace A208589.P11153831253756066237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093085 n : ℚ) / (A162285 (n ^ 2) : ℚ)

end

end A208589.P11153831253756066237

/-!
# A208590: Number of n-bead necklaces labeled with numbers -n..n not allowing reversal, with sum zero.

The programs for A208590, there is no canonical definition to state claims against.
-/

/-! ## A208590.P9602730827242866834

`A208597(∑[4*n]+1)`
-/

namespace A208590.P9602730827242866834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208597 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208590.P9602730827242866834

/-! ## A208590.P13947906525484983678

`or(1, A208597(A001844(n)))`
-/

namespace A208590.P13947906525484983678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A208597 (A001844 n).toNat)

end

end A208590.P13947906525484983678

/-! ## A208590.P2154137670087527503

`record[gcd(A080232(n), A208597(n+1))]`
-/

namespace A208590.P2154137670087527503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080232 n) (A208597 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208590.P2154137670087527503

/-! ## A208590.P13314511856242411529

`gcd(A151935(n), A208597(A001844(n)))`
-/

namespace A208590.P13314511856242411529
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151935 n) (A208597 (A001844 n).toNat)

end

end A208590.P13314511856242411529

/-! ## A208590.P17620950351512417455

`lcm(A033999(n), A208597(A001844(n)))`
-/

namespace A208590.P17620950351512417455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A208597 (A001844 n).toNat)

end

end A208590.P17620950351512417455

/-!
# A208591: Number of n-bead necklaces labeled with numbers -2..2 not allowing reversal, with sum zero.

The programs for A208591, there is no canonical definition to state claims against.
-/

/-! ## A208591.P17251856750091048511

`A208597(∑[n+2])`
-/

namespace A208591.P17251856750091048511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208597 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A208591.P17251856750091048511

/-! ## A208591.P645305644429441779

`or(1, A208597(A000096(n+1)))`
-/

namespace A208591.P645305644429441779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A208597 (A000096 (n + 1)).toNat)

end

end A208591.P645305644429441779

/-! ## A208591.P1882017671904752558

`record[gcd(A116598(n), A208597(n+1))]`
-/

namespace A208591.P1882017671904752558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A116598 n) (A208597 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208591.P1882017671904752558

/-! ## A208591.P14173421071173310063

`record[A208597(A000096(A002260(n+1)))]`
-/

namespace A208591.P14173421071173310063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208597 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208591.P14173421071173310063

/-! ## A208591.P17827563253205995131

`record[A208597(A000096(A004736(n+1)))]`
-/

namespace A208591.P17827563253205995131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208597 (A000096 (A004736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208591.P17827563253205995131

/-!
# A208592: Number of n-bead necklaces labeled with numbers -3..3 not allowing reversal, with sum zero.

The programs for A208592, there is no canonical definition to state claims against.
-/

/-! ## A208592.P9029701382387922367

`A208597(∑[n+3]+1)`
-/

namespace A208592.P9029701382387922367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208597 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208592.P9029701382387922367

/-! ## A208592.P6761451627215811803

`record[A208597(gcd(n, A116598(n)))]`
-/

namespace A208592.P6761451627215811803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208597 (Int.gcd (n : ℤ) (A116598 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208592.P6761451627215811803

/-! ## A208592.P8439686968302336077

`record[A208597(n+1)/A208608(n+4)]`
-/

namespace A208592.P8439686968302336077
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208597 (n + 1) : ℚ) / (A208608 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208592.P8439686968302336077

/-! ## A208592.P1133689716830035578

`record[gcd(A208597(n+1), A286335(n+2))]`
-/

namespace A208592.P1133689716830035578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A208597 (n + 1)) (A286335 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208592.P1133689716830035578

/-! ## A208592.P17072198768936870296

`A208597(A034856(n+2))%A206984(2*n+1)`
-/

namespace A208592.P17072198768936870296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208597 (A034856 (n + 2)).toNat) (A206984 (2 * n + 1))

end

end A208592.P17072198768936870296

/-!
# A208593: Number of n-bead necklaces labeled with numbers -4..4 not allowing reversal, with sum zero.

The programs for A208593, there is no canonical definition to state claims against.
-/

/-! ## A208593.P17968072952447710191

`A208597(∑[a(n-1)+1]+3)` with `a(0)=4`
-/

namespace A208593.P17968072952447710191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208597 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A208593.P17968072952447710191

/-! ## A208593.P12982971596352886788

`A208597(A027379(n+2))`
-/

namespace A208593.P12982971596352886788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208597 (A027379 (n + 2)).toNat

end

end A208593.P12982971596352886788

/-! ## A208593.P8371740651460361338

`A208597(A055998(n+2))`
-/

namespace A208593.P8371740651460361338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208597 (A055998 (n + 2)).toNat

end

end A208593.P8371740651460361338

/-! ## A208593.P13644619583111933983

`A208597(Δ[A034857(n+1)])`
-/

namespace A208593.P13644619583111933983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208597 (f1 (n + 1) - f1 n).toNat

end

end A208593.P13644619583111933983

/-! ## A208593.P2435883251230879898

`A208597(A000096(n+3)-2)`
-/

namespace A208593.P2435883251230879898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208597 (A000096 (n + 3) - 2).toNat

end

end A208593.P2435883251230879898

/-!
# A208594: Number of n-bead necklaces labeled with numbers -5..5 not allowing reversal, with sum zero.

The programs for A208594, there is no canonical definition to state claims against.
-/

/-! ## A208594.P14583714875087401701

`A208597(A046691(n+3))`
-/

namespace A208594.P14583714875087401701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208597 (A046691 (n + 3)).toNat

end

end A208594.P14583714875087401701

/-! ## A208594.P16512841585661508290

`A208597(Δ[A023545(n+1)])`
-/

namespace A208594.P16512841585661508290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208597 (f1 (n + 1) - f1 n).toNat

end

end A208594.P16512841585661508290

/-! ## A208594.P11323621552672163617

`A208597(A000217(n+5)-4)`
-/

namespace A208594.P11323621552672163617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208597 (A000217 (n + 5) - 4).toNat

end

end A208594.P11323621552672163617

/-! ## A208594.P11191441577750891887

`A208597(A000124(n+5)-5)`
-/

namespace A208594.P11191441577750891887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208597 (A000124 (n + 5) - 5).toNat

end

end A208594.P11191441577750891887

/-! ## A208594.P14326072324392416189

`A208597(Δ[A034857(n+2)]-1)`
-/

namespace A208594.P14326072324392416189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208597 (f1 (n + 1) - f1 n - 1).toNat

end

end A208594.P14326072324392416189

/-!
# A208595: Number of n-bead necklaces labeled with numbers -6..6 not allowing reversal, with sum zero.

The programs for A208595, there is no canonical definition to state claims against.
-/

/-! ## A208595.P11271266211585315304

`A208597(A055999(n+3)+1)`
-/

namespace A208595.P11271266211585315304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208597 (A055999 (n + 3) + 1).toNat

end

end A208595.P11271266211585315304

/-! ## A208595.P17208687690878050703

`A208597(A046691(n+4)-1)`
-/

namespace A208595.P17208687690878050703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208597 (A046691 (n + 4) - 1).toNat

end

end A208595.P17208687690878050703

/-! ## A208595.P15442902309275621572

`A208597(A000096(n+5)-4)`
-/

namespace A208595.P15442902309275621572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208597 (A000096 (n + 5) - 4).toNat

end

end A208595.P15442902309275621572

/-! ## A208595.P18396547366063630479

`A208597(A000217(n+6)-5)`
-/

namespace A208595.P18396547366063630479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208597 (A000217 (n + 6) - 5).toNat

end

end A208595.P18396547366063630479

/-! ## A208595.P13776076386533560586

`A208597(A000124(n+6)-6)`
-/

namespace A208595.P13776076386533560586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208597 (A000124 (n + 6) - 6).toNat

end

end A208595.P13776076386533560586

/-!
# A208596: Number of n-bead necklaces labeled with numbers -7..7 not allowing reversal, with sum zero.

The programs for A208596, there is no canonical definition to state claims against.
-/

/-! ## A208596.P626609189609421676

`A208597(A046691(n+5)-2)`
-/

namespace A208596.P626609189609421676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208597 (A046691 (n + 5) - 2).toNat

end

end A208596.P626609189609421676

/-! ## A208596.P8742035333236188848

`A208597(A000096(n+6)-5)`
-/

namespace A208596.P8742035333236188848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208597 (A000096 (n + 6) - 5).toNat

end

end A208596.P8742035333236188848

/-! ## A208596.P9106410023351747432

`A208597(A000217(n+7)-6)`
-/

namespace A208596.P9106410023351747432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208597 (A000217 (n + 7) - 6).toNat

end

end A208596.P9106410023351747432

/-! ## A208596.P15301541432958045901

`A208597(A000124(n+7)-7)`
-/

namespace A208596.P15301541432958045901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208597 (A000124 (n + 7) - 7).toNat

end

end A208596.P15301541432958045901

/-! ## A208596.P5646312113035504427

`A208597(eq[6, A025581(n)]+1)`
-/

namespace A208596.P5646312113035504427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208597 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A208596.P5646312113035504427

/-!
# A208597: T(n,k) = number of n-bead necklaces labeled with numbers -k..k not allowing reversal, with sum zero.

The programs for A208597, there is no canonical definition to state claims against.
-/

/-! ## A208597.P8072189948610925974

`A392370(A166350(n+1))+A209073(n+1)`
-/

namespace A208597.P8072189948610925974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392370 (A166350 (n + 1)).toNat + A209073 (n + 1)

end

end A208597.P8072189948610925974

/-! ## A208597.P2872511933678549909

`A097289(A087644(n+2))`
-/

namespace A208597.P2872511933678549909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097289 (A087644 (n + 2)).toNat

end

end A208597.P2872511933678549909

/-! ## A208597.P10411133669322377938

`A070939((2-char[∑[n]])^A056860(n+1))`
-/

namespace A208597.P10411133669322377938
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.roundAway ((2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℚ) ^ (A056860 (n + 1) : ℤ))).toNat

end

end A208597.P10411133669322377938

/-! ## A208597.P6687709391942669214

`A196169(A193722(n)+A123125(n))`
-/

namespace A208597.P6687709391942669214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196169 (A193722 n + A123125 n).toNat

end

end A208597.P6687709391942669214

/-! ## A208597.P5788947288231153886

`A115726(A145901(n))`
-/

namespace A208597.P5788947288231153886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115726 (A145901 n).toNat

end

end A208597.P5788947288231153886

/-!
# A208598: Number of 4-bead necklaces labeled with numbers -n..n not allowing reversal, with sum zero.

The programs for A208598, the canonical program `A208598.P10915151960140826612` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208598 has offset 1).

The definition of A208598 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208598.P9558392804017238671

`∑[ceil(4/acot((n+1)²))]`
-/

namespace A208598.P9558392804017238671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈4 / SequenceMachineLib.acot ((n + 1) ^ 2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208598.P9558392804017238671

namespace A208598

/-- `∑[ceil(4/acot((n+1)²))]` -/
def P9558392804017238671.Spec : Prop :=
  ∀ n, P9558392804017238671.a n = A208598 (n + 1)

end A208598

/-! ## A208598.P10915151960140826612

`C(2*(n+2), 3)+2+n`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A208598

/-- `C(2*(n+2), 3)+2+n` -/
def P10915151960140826612.Spec : Prop :=
  ∀ n, (P10915151960140826612.a n : ℤ) = A208598 (n + 1)

theorem P10915151960140826612.correct : P10915151960140826612.Spec := by
  intro n
  simp only [A208598, Nat.add_sub_cancel]

end A208598

/-! ## A208598.P16754621368601317581

`∑[(2*(n+1))²+1]+1`
-/

namespace A208598.P16754621368601317581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1)) ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A208598.P16754621368601317581

namespace A208598

/-- `∑[(2*(n+1))²+1]+1` -/
def P16754621368601317581.Spec : Prop :=
  ∀ n, (P16754621368601317581.a n : ℤ) = A208598 (n + 1)

end A208598

/-! ## A208598.P17447231826594183601

`floor(∑[4/acot((n+1)²)+1])`
-/

namespace A208598.P17447231826594183601
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  4 / SequenceMachineLib.acot ((n + 1) ^ 2 : ℝ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A208598.P17447231826594183601

namespace A208598

/-- `floor(∑[4/acot((n+1)²)+1])` -/
def P17447231826594183601.Spec : Prop :=
  ∀ n, P17447231826594183601.a n = A208598 (n + 1)

end A208598

/-! ## A208598.P10833633959654922362

`∑[A184635(n+1)+1]`
-/

namespace A208598.P10833633959654922362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184635 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208598.P10833633959654922362

namespace A208598

/-- `∑[A184635(n+1)+1]` -/
def P10833633959654922362.Spec : Prop :=
  ∀ n, P10833633959654922362.a n = A208598 (n + 1)

end A208598

/-! ## A208598.P14528415184272217369

`2/(n+1)*A213846(n+1)`
-/

namespace A208598.P14528415184272217369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A213846 (n + 1) : ℚ)

end

end A208598.P14528415184272217369

namespace A208598

/-- `2/(n+1)*A213846(n+1)` -/
def P14528415184272217369.Spec : Prop :=
  ∀ n, P14528415184272217369.a n = (A208598 (n + 1) : ℚ)

end A208598

/-! ## A208598.P3602032261641322441

`Δ[∑[A050533(n)]+n]`
-/

namespace A208598.P3602032261641322441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050533 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A208598.P3602032261641322441

namespace A208598

/-- `Δ[∑[A050533(n)]+n]` -/
def P3602032261641322441.Spec : Prop :=
  ∀ n, P3602032261641322441.a n = A208598 (n + 1)

end A208598

/-! ## A208598.P733638903060727651

`Δ[A014820(n)-∑[n]]`
-/

namespace A208598.P733638903060727651
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014820 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A208598.P733638903060727651

namespace A208598

/-- `Δ[A014820(n)-∑[n]]` -/
def P733638903060727651.Spec : Prop :=
  ∀ n, P733638903060727651.a n = A208598 (n + 1)

end A208598

/-! ## A208598.P7228419326210542391

`ceil(A057813(n+1)/2)`
-/

namespace A208598.P7228419326210542391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057813 (n + 1) : ℚ) / 2⌉

end

end A208598.P7228419326210542391

namespace A208598

/-- `ceil(A057813(n+1)/2)` -/
def P7228419326210542391.Spec : Prop :=
  ∀ n, P7228419326210542391.a n = A208598 (n + 1)

end A208598

/-! ## A208598.P13553986973121074138

`Δ[A077538(n)/(n+1)]`
-/

namespace A208598.P13553986973121074138
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077538 n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A208598.P13553986973121074138

namespace A208598

/-- `Δ[A077538(n)/(n+1)]` -/
def P13553986973121074138.Spec : Prop :=
  ∀ n, P13553986973121074138.a n = (A208598 (n + 1) : ℚ)

end A208598

/-! ## A208598.P14526228115480427374

`∑[(A004277(2*n)+4)*(n+1)+1]`
-/

namespace A208598.P14526228115480427374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004277 (2 * n) + 4) * (n + 1 : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208598.P14526228115480427374

namespace A208598

/-- `∑[(A004277(2*n)+4)*(n+1)+1]` -/
def P14526228115480427374.Spec : Prop :=
  ∀ n, P14526228115480427374.a n = A208598 (n + 1)

end A208598

/-! ## A208598.P7449449363565880625

`A084570(2*(n+1))`
-/

namespace A208598.P7449449363565880625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084570 (2 * (n + 1))

end

end A208598.P7449449363565880625

namespace A208598

/-- `A084570(2*(n+1))` -/
def P7449449363565880625.Spec : Prop :=
  ∀ n, P7449449363565880625.a n = A208598 (n + 1)

end A208598

/-! ## A208598.P2736655352794726116

`A135301(2*n+3)`
-/

namespace A208598.P2736655352794726116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135301 (2 * n + 3)

end

end A208598.P2736655352794726116

namespace A208598

/-- `A135301(2*n+3)` -/
def P2736655352794726116.Spec : Prop :=
  ∀ n, P2736655352794726116.a n = A208598 (n + 1)

end A208598

/-! ## A208598.P16909781258181039397

`A116731(2*(n+2))/2`
-/

namespace A208598.P16909781258181039397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116731 (2 * (n + 2)) : ℚ) / 2

end

end A208598.P16909781258181039397

namespace A208598

/-- `A116731(2*(n+2))/2` -/
def P16909781258181039397.Spec : Prop :=
  ∀ n, P16909781258181039397.a n = (A208598 (n + 1) : ℚ)

end A208598

/-! ## A208598.P2359663689542649251

`abs(A004006(2*n+3)-(n+1))`
-/

namespace A208598.P2359663689542649251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004006 (2 * n + 3) - (n + 1 : ℤ)|

end

end A208598.P2359663689542649251

namespace A208598

/-- `abs(A004006(2*n+3)-(n+1))` -/
def P2359663689542649251.Spec : Prop :=
  ∀ n, P2359663689542649251.a n = A208598 (n + 1)

end A208598

/-! ## A208598.P4868926351548072220

`A326504(A004767(n+1))`
-/

namespace A208598.P4868926351548072220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326504 (A004767 (n + 1)).toNat

end

end A208598.P4868926351548072220

namespace A208598

/-- `A326504(A004767(n+1))` -/
def P4868926351548072220.Spec : Prop :=
  ∀ n, P4868926351548072220.a n = A208598 (n + 1)

end A208598

/-! ## A208598.P15409777313447109770

`A109001(∑[n+3]+1)`
-/

namespace A208598.P15409777313447109770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109001 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208598.P15409777313447109770

namespace A208598

/-- `A109001(∑[n+3]+1)` -/
def P15409777313447109770.Spec : Prop :=
  ∀ n, P15409777313447109770.a n = A208598 (n + 1)

end A208598

/-! ## A208598.P11984919426016100394

`∑[record[Δ[comp[n²]²]]+1]`
-/

namespace A208598.P11984919426016100394
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208598.P11984919426016100394

namespace A208598

/-- `∑[record[Δ[comp[n²]²]]+1]` -/
def P11984919426016100394.Spec : Prop :=
  ∀ n, P11984919426016100394.a n = A208598 (n + 1)

end A208598

/-!
# A208599: Number of 5-bead necklaces labeled with numbers -n..n not allowing reversal, with sum zero.

The programs for A208599, the canonical program `A208599.P12743837169727898204` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208599 has offset 1).

The definition of A208599 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208599.P18060934039271892103

`23/12*(n+1)^4+23/6*(n+1)^3+37/12*(n+1)²+7/6*(n+1)+1`
-/

namespace A208599.P18060934039271892103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (23 : ℚ) / 12 * ((n + 1) ^ 4 : ℚ) + (23 : ℚ) / 6 * ((n + 1) ^ 3 : ℚ) + (37 : ℚ) / 12 * ((n + 1) ^ 2 : ℚ) + (7 : ℚ) / 6 * (n + 1 : ℚ) + 1

end

end A208599.P18060934039271892103

namespace A208599

/-- `23/12*(n+1)^4+23/6*(n+1)^3+37/12*(n+1)²+7/6*(n+1)+1` -/
def P18060934039271892103.Spec : Prop :=
  ∀ n, P18060934039271892103.a n = (A208599 (n + 1) : ℚ)

end A208599

/-! ## A208599.P12743837169727898204

`ceil(A083669(n+1)/5)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A208599

/-- `ceil(A083669(n+1)/5)` -/
def P12743837169727898204.Spec : Prop :=
  ∀ n, P12743837169727898204.a n = A208599 (n + 1)

theorem P12743837169727898204.correct : P12743837169727898204.Spec := by
  intro n
  simp only [A208599, Nat.add_sub_cancel]

end A208599

/-! ## A208599.P9627003756479192118

`round(A001222(A007918(n))+A083669(n+1)/5)`
-/

namespace A208599.P9627003756479192118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001222 (A007918 n).toNat : ℚ) + (A083669 (n + 1) : ℚ) / 5)

end

end A208599.P9627003756479192118

namespace A208599

/-- `round(A001222(A007918(n))+A083669(n+1)/5)` -/
def P9627003756479192118.Spec : Prop :=
  ∀ n, P9627003756479192118.a n = A208599 (n + 1)

end A208599

/-! ## A208599.P9447206394200542285

`ceil(A077044(2*n+3)/5)`
-/

namespace A208599.P9447206394200542285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A077044 (2 * n + 3) : ℚ) / 5⌉

end

end A208599.P9447206394200542285

namespace A208599

/-- `ceil(A077044(2*n+3)/5)` -/
def P9447206394200542285.Spec : Prop :=
  ∀ n, P9447206394200542285.a n = A208599 (n + 1)

end A208599

/-! ## A208599.P15978398618405701516

`round(A001221(A030665(n+1))+A083669(n+1)/5)`
-/

namespace A208599.P15978398618405701516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001221 (A030665 (n + 1)).toNat : ℚ) + (A083669 (n + 1) : ℚ) / 5)

end

end A208599.P15978398618405701516

namespace A208599

/-- `round(A001221(A030665(n+1))+A083669(n+1)/5)` -/
def P15978398618405701516.Spec : Prop :=
  ∀ n, P15978398618405701516.a n = A208599 (n + 1)

end A208599

/-! ## A208599.P7294901642742965827

`floor(A014963(A000132(n))+A083669(n+1)/5)`
-/

namespace A208599.P7294901642742965827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014963 (A000132 n).toNat : ℚ) + (A083669 (n + 1) : ℚ) / 5⌋

end

end A208599.P7294901642742965827

namespace A208599

/-- `floor(A014963(A000132(n))+A083669(n+1)/5)` -/
def P7294901642742965827.Spec : Prop :=
  ∀ n, P7294901642742965827.a n = A208599 (n + 1)

end A208599

