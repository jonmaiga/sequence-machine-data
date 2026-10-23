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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
# A242500: Number of compositions of n, where the difference between the number of odd parts and the number of even parts is 2.

The programs for A242500, there is no canonical definition to state claims against.
-/

/-! ## A242500.P8915940664505494795

`A242499(n+4)-(A242499(n+2)+A098123(n+3))`
-/

namespace A242500.P8915940664505494795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242499 (n + 4) - (A242499 (n + 2) + A098123 (n + 3))

end

end A242500.P8915940664505494795

/-! ## A242500.P9717941425316915654

`A242498(A194073(n+2)+1)`
-/

namespace A242500.P9717941425316915654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242498 (A194073 (n + 2) + 1).toNat

end

end A242500.P9717941425316915654

/-! ## A242500.P3974802559035471846

`A242498(A242477(n+2)+2)`
-/

namespace A242500.P3974802559035471846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242498 (A242477 (n + 2) + 2).toNat

end

end A242500.P3974802559035471846

/-!
# A242501: Number of compositions of n, where the difference between the number of odd parts and the number of even parts is 3.

The programs for A242501, there is no canonical definition to state claims against.
-/

/-! ## A242501.P13818967037356803676

`A242498(A194073(n+3)+2)`
-/

namespace A242501.P13818967037356803676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242498 (A194073 (n + 3) + 2).toNat

end

end A242501.P13818967037356803676

/-! ## A242501.P16421106143685965782

`A242498(A242477(n+3)+3)`
-/

namespace A242501.P16421106143685965782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242498 (A242477 (n + 3) + 3).toNat

end

end A242501.P16421106143685965782

/-!
# A242502: Number of compositions of n, where the difference between the number of odd parts and the number of even parts is 4.

The programs for A242502, there is no canonical definition to state claims against.
-/

/-! ## A242502.P14470389552227994749

`A242501(n+6)-A242501(n+4)-A242500(n+5)`
-/

namespace A242502.P14470389552227994749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242501 (n + 6) - A242501 (n + 4) - A242500 (n + 5)

end

end A242502.P14470389552227994749

/-! ## A242502.P17104848741169832185

`A242498(A194073(n+4)+3)`
-/

namespace A242502.P17104848741169832185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242498 (A194073 (n + 4) + 3).toNat

end

end A242502.P17104848741169832185

/-! ## A242502.P8891953221794939143

`A242498(A242477(n+4)+4)`
-/

namespace A242502.P8891953221794939143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242498 (A242477 (n + 4) + 4).toNat

end

end A242502.P8891953221794939143

/-! ## A242502.P12979034215351785631

`A000120(A177260(n))*A006093(n+1)`
-/

namespace A242502.P12979034215351785631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A177260 n).toNat * A006093 (n + 1)

end

end A242502.P12979034215351785631

/-!
# A242503: Number of compositions of n, where the difference between the number of odd parts and the number of even parts is 5.

The programs for A242503, there is no canonical definition to state claims against.
-/

/-! ## A242503.P2685607101251438763

`A242498(A194073(n+5)+4)`
-/

namespace A242503.P2685607101251438763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242498 (A194073 (n + 5) + 4).toNat

end

end A242503.P2685607101251438763

/-!
# A242507: Number of compositions of n, where the difference between the number of odd parts and the number of even parts is 9.

The programs for A242507, there is no canonical definition to state claims against.
-/

/-! ## A242507.P12127334939242835520

`A051775(A197199(2*n+1)*A317876(n+4))`
-/

namespace A242507.P12127334939242835520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051775 (A197199 (2 * n + 1) * A317876 (n + 4)).toNat

end

end A242507.P12127334939242835520

/-!
# A242508: Number of compositions of n, where the difference between the number of odd parts and the number of even parts is 10.

The programs for A242508, there is no canonical definition to state claims against.
-/

/-! ## A242508.P3526041583846615267

`A261866(n)*A261905(A261396(n))`
-/

namespace A242508.P3526041583846615267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261866 n * A261905 (A261396 n).toNat

end

end A242508.P3526041583846615267

/-!
# A242509: Number of n-length words on {1,2,3,4,5} that contain at most one consecutive 1 and at most two consecutive 2's and at most three consecutive 3's and at most four consecutive 4's and at most five consecutive 5's.

The programs for A242509, there is no canonical definition to state claims against.
-/

/-! ## A242509.P13574582367580887093

`record[A242464(A055999(n))]`
-/

namespace A242509.P13574582367580887093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (A055999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242509.P13574582367580887093

/-! ## A242509.P10750854318507538725

`A242464(A055999(n+3))`
-/

namespace A242509.P10750854318507538725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (A055999 (n + 3)).toNat

end

end A242509.P10750854318507538725

/-! ## A242509.P7385909940001380651

`record[A242464(∑[A020705(n)])]`
-/

namespace A242509.P7385909940001380651
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242509.P7385909940001380651

/-! ## A242509.P15524171516424868618

`A242464(Δ[A023551(n+1)])`
-/

namespace A242509.P15524171516424868618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (f1 (n + 1) - f1 n).toNat

end

end A242509.P15524171516424868618

/-! ## A242509.P3716052972160404193

`A242464(Δ[A026054(n+3)])`
-/

namespace A242509.P3716052972160404193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (f1 (n + 1) - f1 n).toNat

end

end A242509.P3716052972160404193

/-! ## A242509.P3011979605952167367

`record[A242464(A052905(n)-1)]`
-/

namespace A242509.P3011979605952167367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (A052905 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242509.P3011979605952167367

/-! ## A242509.P17786394045062683765

`record[A242464(A027379(n)+n)]`
-/

namespace A242509.P17786394045062683765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (A027379 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242509.P17786394045062683765

/-! ## A242509.P871718115830086735

`record[A242464(abs(2-A046691(n)))]`
-/

namespace A242509.P871718115830086735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 |2 - A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242509.P871718115830086735

/-! ## A242509.P4456226153296838252

`record[A242464(A046691(n+1)-2)]`
-/

namespace A242509.P4456226153296838252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (A046691 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242509.P4456226153296838252

/-! ## A242509.P3052472750172814794

`record[A242464(A034856(n+3)-4)]`
-/

namespace A242509.P3052472750172814794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (A034856 (n + 3) - 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242509.P3052472750172814794

/-!
# A242510: Number of n-length words on {1,2,3} such that the maximal blocks (runs) of 1's have odd length, the maximal blocks of 2's have even length and the maximal blocks of 3's have odd length.

The programs for A242510, the canonical program `A242510.P8988747100540038632` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242510 has offset 0).

The definition of A242510 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A242510.P8988747100540038632

`a(n-1)+2*a(n-2)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=8`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A242510

/-- `a(n-1)+2*a(n-2)+a(n-3)-a(n-4)` -/
def P8988747100540038632.Spec : Prop :=
  ∀ n, P8988747100540038632.a n = A242510 n

theorem P8988747100540038632.correct : P8988747100540038632.Spec := by
  intro n
  simp only [A242510]

end A242510

/-! ## A242510.P5704476860594618316

`ogf((1+x-x^2)/(1-x-2x^2-x^3+x^4))`
-/

namespace A242510.P5704476860594618316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, -1, -2, -1, 1] n

end

end A242510.P5704476860594618316

namespace A242510

/-- `ogf((1+x-x^2)/(1-x-2x^2-x^3+x^4))` -/
def P5704476860594618316.Spec : Prop :=
  ∀ n, P5704476860594618316.a n = A242510 n

end A242510

/-! ## A242510.P8972537095768099285

`A105309(n)+A092886(n)`
-/

namespace A242510.P8972537095768099285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105309 n + A092886 n

end

end A242510.P8972537095768099285

namespace A242510

/-- `A105309(n)+A092886(n)` -/
def P8972537095768099285.Spec : Prop :=
  ∀ n, P8972537095768099285.a n = A242510 n

end A242510

/-! ## A242510.P8074519888574108797

`A101400(n)+A105309(n)-A119749(n+1)`
-/

namespace A242510.P8074519888574108797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101400 n + (A105309 n - A119749 (n + 1))

end

end A242510.P8074519888574108797

namespace A242510

/-- `A101400(n)+A105309(n)-A119749(n+1)` -/
def P8074519888574108797.Spec : Prop :=
  ∀ n, P8074519888574108797.a n = A242510 n

end A242510

/-! ## A242510.P9058859892458695939

`Δ[A240513(n+1)]-A092886(n)`
-/

namespace A242510.P9058859892458695939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A092886 n

end

end A242510.P9058859892458695939

namespace A242510

/-- `Δ[A240513(n+1)]-A092886(n)` -/
def P9058859892458695939.Spec : Prop :=
  ∀ n, P9058859892458695939.a n = A242510 n

end A242510

/-! ## A242510.P12034396113060091317

`Δ[A301658(n+1)]-A092886(n)`
-/

namespace A242510.P12034396113060091317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A092886 n

end

end A242510.P12034396113060091317

namespace A242510

/-- `Δ[A301658(n+1)]-A092886(n)` -/
def P12034396113060091317.Spec : Prop :=
  ∀ n, P12034396113060091317.a n = A242510 n

end A242510

/-! ## A242510.P14007182404268904853

`A240513(n+2)-(A240513(n+1)+A092886(n))`
-/

namespace A242510.P14007182404268904853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240513 (n + 2) - (A240513 (n + 1) + A092886 n)

end

end A242510.P14007182404268904853

namespace A242510

/-- `A240513(n+2)-(A240513(n+1)+A092886(n))` -/
def P14007182404268904853.Spec : Prop :=
  ∀ n, P14007182404268904853.a n = A242510 n

end A242510

/-!
# A242511: a(n) = number of knight's move paths of minimal length n steps, from origin (0,0) at center of an infinite open chessboard to square (0,0) for n=0; square (2,-1) for n=1; and square (2n-3, (n+1)mod 2) for n>=2.

The programs for A242511, there is no canonical definition to state claims against.
-/

/-! ## A242511.P3415857898410456520

`A212831(A187183(n+1)*A242513(n))`
-/

namespace A242511.P3415857898410456520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212831 (A187183 (n + 1) * A242513 n).toNat

end

end A242511.P3415857898410456520

/-! ## A242511.P3179749675789956730

`A299956(A274289(n))-1`
-/

namespace A242511.P3179749675789956730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299956 (A274289 n).toNat - 1

end

end A242511.P3179749675789956730

/-! ## A242511.P15030407245716973629

`A003056(A249833(n))*A211860(n)`
-/

namespace A242511.P15030407245716973629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A249833 n).toNat * A211860 n

end

end A242511.P15030407245716973629

/-!
# A242512: a(n) = number of knight's move paths of minimal length n steps, from origin at center of an infinite open chessboard to square (0,0) for n=0; to square (2,-1) for n=1; and to square ([(3n-3)/2], [(3n-4)/2]) for n>=2.

The programs for A242512, there is no canonical definition to state claims against.
-/

/-! ## A242512.P9008153284531981726

`A247973(n+1)*A247973(A208062(n))`
-/

namespace A242512.P9008153284531981726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247973 (n + 1) * A247973 (A208062 n).toNat

end

end A242512.P9008153284531981726

/-!
# A242515: Numbers n such that 12n+1, 12n+5, 12n+7, 12n+11 are all composite numbers.

The programs for A242515, the canonical program `A242515.P17523326989586538796` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242515 has offset 1).

The definition of A242515 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1204 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242515.P17523326989586538796

`lt[12, A175851(12*(n+1))]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A242515

/-- `lt[12, A175851(12*(n+1))]` -/
def P17523326989586538796.Spec : Prop :=
  ∀ n, (P17523326989586538796.a n : ℤ) = A242515 (n + 1)

theorem P17523326989586538796.correct : P17523326989586538796.Spec := by
  intro n
  simp only [A242515, Nat.add_sub_cancel]

end A242515

/-! ## A242515.P1858884321167131556

`lt[A017653(n), n*A175851(A017653(n))]`
-/

namespace A242515.P1858884321167131556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A175851 (A017653 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242515.P1858884321167131556

namespace A242515

/-- `lt[A017653(n), n*A175851(A017653(n))]` -/
def P1858884321167131556.Spec : Prop :=
  ∀ n, (P1858884321167131556.a n : ℤ) = A242515 (n + 1)

end A242515

/-! ## A242515.P14589183487085703008

`lt[11, A060266(A008458(n))]`
-/

namespace A242515.P14589183487085703008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A242515.P14589183487085703008

namespace A242515

/-- `lt[11, A060266(A008458(n))]` -/
def P14589183487085703008.Spec : Prop :=
  ∀ n, (P14589183487085703008.a n : ℤ) = A242515 (n + 1)

end A242515

/-! ## A242515.P8297661073774341315

`lt[5, A051699(12*n+6)]`
-/

namespace A242515.P8297661073774341315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (12 * n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A242515.P8297661073774341315

namespace A242515

/-- `lt[5, A051699(12*n+6)]` -/
def P8297661073774341315.Spec : Prop :=
  ∀ n, (P8297661073774341315.a n : ℤ) = A242515 (n + 1)

end A242515

/-! ## A242515.P17549278703331842972

`lt[10, A007920(A017533(n))]`
-/

namespace A242515.P17549278703331842972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A017533 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A242515.P17549278703331842972

namespace A242515

/-- `lt[10, A007920(A017533(n))]` -/
def P17549278703331842972.Spec : Prop :=
  ∀ n, (P17549278703331842972.a n : ℤ) = A242515 (n + 1)

end A242515

/-!
# A242516: Numbers n such that k!/n is prime for some k.

The programs for A242516, there is no canonical definition to state claims against.
-/

/-! ## A242516.P2223777513234832903

`A306549(eq[1, A001222(A306286(n))])`
-/

namespace A242516.P2223777513234832903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A306286 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306549 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242516.P2223777513234832903

/-! ## A242516.P4564360398080882330

`A306549(eq[2, A000005(A306286(n))])`
-/

namespace A242516.P4564360398080882330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A306286 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306549 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242516.P4564360398080882330

/-! ## A242516.P2956843085712905536

`lt[0, A242457(n+1)]+1`
-/

namespace A242516.P2956843085712905536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242457 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A242516.P2956843085712905536

/-! ## A242516.P7022976108681026034

`lt[1, n*A242457(A028310(n))]`
-/

namespace A242516.P7022976108681026034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A242457 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A242516.P7022976108681026034

/-! ## A242516.P5187990367321388198

`lt[A000038(n), A242457(A028310(n))]`
-/

namespace A242516.P5187990367321388198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242457 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242516.P5187990367321388198

/-!
# A242517: List of primes p for which p^n - 2 is prime for n = 1, 3, and 5.

The programs for A242517, there is no canonical definition to state claims against.
-/

/-! ## A242517.P3506014496249295215

`∩[A154834(n+1), A240126(n+1)]`
-/

namespace A242517.P3506014496249295215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242517.P3506014496249295215

/-!
# A242520: Number of cyclic arrangements of S={1,2,...,2n} such that the difference between any two neighbors is 3^k for some k=0,1,2,...

The programs for A242520, there is no canonical definition to state claims against.
-/

/-! ## A242520.P15878189330672100758

`A117174(∑[floor(n/2)^n])`
-/

namespace A242520.P15878189330672100758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117174 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A242520.P15878189330672100758

/-! ## A242520.P7102414474378424595

`A018252(n^a(n-2)+2)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A242520.P7102414474378424595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3] fun n a =>
  A018252 (SequenceMachineLib.roundAway ((n : ℚ) ^ (a (n - 2) : ℤ) + 2)).toNat

end

end A242520.P7102414474378424595

/-!
# A242522: Number of cyclic arrangements of S={1,2,...,n} such that the difference between any two neighbors is at least 2.

The programs for A242522, there is no canonical definition to state claims against.
-/

/-! ## A242522.P14394805996568933039

`floor(A002493(n+1)/2)/(n+1)`
-/

namespace A242522.P14394805996568933039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A002493 (n + 1) : ℚ) / 2⌋ : ℚ) / (n + 1 : ℚ)

end

end A242522.P14394805996568933039

/-! ## A242522.P312510452819072551

`floor(A002493(n+1)/Δ[A014206(n)])`
-/

namespace A242522.P312510452819072551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002493 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A242522.P312510452819072551

/-! ## A242522.P1481706921326044965

`floor(A002493(n+1)/A051755(n+2))`
-/

namespace A242522.P1481706921326044965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002493 (n + 1) : ℚ) / (A051755 (n + 2) : ℚ)⌋

end

end A242522.P1481706921326044965

/-! ## A242522.P7687755195198470999

`floor(A002493(n+1)/(A004275(n)+4))`
-/

namespace A242522.P7687755195198470999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002493 (n + 1) : ℚ) / (A004275 n + 4 : ℚ)⌋

end

end A242522.P7687755195198470999

/-! ## A242522.P18408451378950454342

`floor(A002493(n+1)/(A016789(n)-n))`
-/

namespace A242522.P18408451378950454342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002493 (n + 1) : ℚ) / (A016789 n - (n : ℤ) : ℚ)⌋

end

end A242522.P18408451378950454342

/-! ## A242522.P13864103156343831778

`(A002493(n+1)-A000007(n))/A051755(n+2)`
-/

namespace A242522.P13864103156343831778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002493 (n + 1) - A000007 n : ℚ) / (A051755 (n + 2) : ℚ)

end

end A242522.P13864103156343831778

/-!
# A242523: Number of cyclic arrangements of S={1,2,...,n} such that the difference between any two neighbors is at least 3.

The programs for A242523, there is no canonical definition to state claims against.
-/

/-! ## A242523.P5166400587990558850

`A216807(A306731(n))`
-/

namespace A242523.P5166400587990558850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216807 (A306731 n).toNat

end

end A242523.P5166400587990558850

/-! ## A242523.P10771648724645551144

`Δ[A304714(A048736(n))]`
-/

namespace A242523.P10771648724645551144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304714 (A048736 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A242523.P10771648724645551144

/-! ## A242523.P11487433287983611417

`A349156(A080498(n+1))`
-/

namespace A242523.P11487433287983611417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349156 (A080498 (n + 1)).toNat

end

end A242523.P11487433287983611417

/-! ## A242523.P2657408821168370881

`A352829(A000322(n))-1`
-/

namespace A242523.P2657408821168370881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352829 (A000322 n).toNat - 1

end

end A242523.P2657408821168370881

/-! ## A242523.P12658946767471823116

`A293495(A370529(n))-1`
-/

namespace A242523.P12658946767471823116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293495 (A370529 n).toNat - 1

end

end A242523.P12658946767471823116

/-!
# A242524: Number of cyclic arrangements of S={1,2,...,n} such that the difference between any two neighbors is at least 4.

The programs for A242524, there is no canonical definition to state claims against.
-/

/-! ## A242524.P12373126131059386771

`Δ[A035059(A122055(n))²]`
-/

namespace A242524.P12373126131059386771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035059 (A122055 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A242524.P12373126131059386771

/-! ## A242524.P4311965042566909608

`Δ[A180101(A036640(n))²]`
-/

namespace A242524.P4311965042566909608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (A036640 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A242524.P4311965042566909608

/-! ## A242524.P8300643438181588424

`Δ[A002265(A306752(n)²)]`
-/

namespace A242524.P8300643438181588424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A306752 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A242524.P8300643438181588424

/-! ## A242524.P8385532168424972345

`Δ[A008621(A306752(n)²)]`
-/

namespace A242524.P8385532168424972345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A306752 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A242524.P8385532168424972345

/-! ## A242524.P3642995095107304536

`A004396(A000110(n)-A141081(n))`
-/

namespace A242524.P3642995095107304536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A000110 n - A141081 n).toNat

end

end A242524.P3642995095107304536

/-!
# A242525: Number of cyclic arrangements of S={1,2,...,n} such that the difference between any two neighbors is at most 3.

The programs for A242525, the canonical program `A242525.P4612208154450146113` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242525 has offset 1).

The definition of A242525 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 389 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242525.P4612208154450146113

`a(n-1)+a(n-2)+a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=6, a(5)=10, a(6)=17`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A242525

/-- `a(n-1)+a(n-2)+a(n-4)+a(n-5)` -/
def P4612208154450146113.Spec : Prop :=
  ∀ n, (P4612208154450146113.a n : ℤ) = A242525 (n + 1)

theorem P4612208154450146113.correct : P4612208154450146113.Spec := by
  intro n
  simp only [A242525, Nat.add_sub_cancel]

end A242525

/-! ## A242525.P7467933128286781164

`abs(Δ[A185265(abs(1-n))])`
-/

namespace A242525.P7467933128286781164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185265 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A242525.P7467933128286781164

namespace A242525

/-- `abs(Δ[A185265(abs(1-n))])` -/
def P7467933128286781164.Spec : Prop :=
  ∀ n, P7467933128286781164.a n = A242525 (n + 1)

end A242525

/-! ## A242525.P15538478703571517562

`Δ[A014743(n)-A014743(A289207(n))]`
-/

namespace A242525.P15538478703571517562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014743 n - A014743 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A242525.P15538478703571517562

namespace A242525

/-- `Δ[A014743(n)-A014743(A289207(n))]` -/
def P15538478703571517562.Spec : Prop :=
  ∀ n, P15538478703571517562.a n = A242525 (n + 1)

end A242525

/-! ## A242525.P7018581156164147437

`A304497(A054175(n))`
-/

namespace A242525.P7018581156164147437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304497 (A054175 n).toNat

end

end A242525.P7018581156164147437

namespace A242525

/-- `A304497(A054175(n))` -/
def P7018581156164147437.Spec : Prop :=
  ∀ n, P7018581156164147437.a n = A242525 (n + 1)

end A242525

/-! ## A242525.P16331940414141078295

`A035936(A034742(n+1))`
-/

namespace A242525.P16331940414141078295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 (A034742 (n + 1)).toNat

end

end A242525.P16331940414141078295

namespace A242525

/-- `A035936(A034742(n+1))` -/
def P16331940414141078295.Spec : Prop :=
  ∀ n, P16331940414141078295.a n = A242525 (n + 1)

end A242525

/-!
# A242526: Number of cyclic arrangements of S={1,2,...,n} such that the difference between any two neighbors is at most 4.

The programs for A242526, there is no canonical definition to state claims against.
-/

/-! ## A242526.P8213932687523714855

`A106609(4*A174700(n))`
-/

namespace A242526.P8213932687523714855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (4 * A174700 n).toNat

end

end A242526.P8213932687523714855

/-! ## A242526.P14327816660633592581

`A106611(5*A174700(n))`
-/

namespace A242526.P14327816660633592581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106611 (5 * A174700 n).toNat

end

end A242526.P14327816660633592581

/-! ## A242526.P10316128967856510227

`A174700(n)/A020639(n!)`
-/

namespace A242526.P10316128967856510227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174700 n : ℚ) / (A020639 (Nat.factorial n) : ℚ)

end

end A242526.P10316128967856510227

/-! ## A242526.P1763324955408328025

`A174700(n)/A020639(-∏[n-C(2, n+2)])`
-/

namespace A242526.P1763324955408328025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174700 n : ℚ) / (A020639 (-(∏ j ∈ Finset.range (n + 1), f1 j)).toNat : ℚ)

end

end A242526.P1763324955408328025

/-! ## A242526.P14383673638008066886

`A174700(n)/A020639(A000142(n))`
-/

namespace A242526.P14383673638008066886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174700 n : ℚ) / (A020639 (A000142 n).toNat : ℚ)

end

end A242526.P14383673638008066886

/-!
# A242527: Number of cyclic arrangements (up to direction) of {0,1,...,n-1} such that the sum of any two neighbors is a prime.

The programs for A242527, there is no canonical definition to state claims against.
-/

/-! ## A242527.P1719226249017005871

`A085860(A343177(n)+A034340(n+1))`
-/

namespace A242527.P1719226249017005871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085860 (A343177 n + A034340 (n + 1)).toNat

end

end A242527.P1719226249017005871

/-!
# A242529: Number of cyclic arrangements (up to direction) of numbers 1,2,...,n such that any two neighbors are coprime.

The programs for A242529, there is no canonical definition to state claims against.
-/

/-! ## A242529.P4487654506534854117

`ceil(A086595(n+1)/2)`
-/

namespace A242529.P4487654506534854117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A086595 (n + 1) : ℚ) / 2⌉

end

end A242529.P4487654506534854117

/-! ## A242529.P7154351523842413038

`A086595(n+1)/A020639(A152763(n))`
-/

namespace A242529.P7154351523842413038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086595 (n + 1) : ℚ) / (A020639 (A152763 n).toNat : ℚ)

end

end A242529.P7154351523842413038

/-! ## A242529.P15049457719711132537

`A086595(n+1)/A040001(A173522(n))`
-/

namespace A242529.P15049457719711132537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086595 (n + 1) : ℚ) / (A040001 (A173522 n).toNat : ℚ)

end

end A242529.P15049457719711132537

/-! ## A242529.P12151224361934359272

`A086595(n+1)/A020639(A219654(n))`
-/

namespace A242529.P12151224361934359272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086595 (n + 1) : ℚ) / (A020639 (A219654 n).toNat : ℚ)

end

end A242529.P12151224361934359272

/-! ## A242529.P8929270991628311251

`A086595(n+1)/A014963(A016116(n))`
-/

namespace A242529.P8929270991628311251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086595 (n + 1) : ℚ) / (A014963 (A016116 n).toNat : ℚ)

end

end A242529.P8929270991628311251

/-!
# A242530: Number of cyclic arrangements of S={1,2,...,2n} such that the binary expansions of any two neighbors differ by one bit.

The programs for A242530, there is no canonical definition to state claims against.
-/

/-! ## A242530.P7746009050957395905

`A073610(A293004(n)+A000110(n))`
-/

namespace A242530.P7746009050957395905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (A293004 n + A000110 n).toNat

end

end A242530.P7746009050957395905

/-! ## A242530.P5828448863340561911

`A292373(A001352(n)-A001371(n))`
-/

namespace A242530.P5828448863340561911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 (A001352 n - A001371 n).toNat

end

end A242530.P5828448863340561911

/-! ## A242530.P18298955008916924257

`A058480(n)%A129243(A239678(n))`
-/

namespace A242530.P18298955008916924257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058480 n) (A129243 (A239678 n).toNat)

end

end A242530.P18298955008916924257

/-! ## A242530.P5440395032000661111

`A298206(n)%A300978(A298184(n+3))`
-/

namespace A242530.P5440395032000661111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298206 n) (A300978 (A298184 (n + 3)).toNat)

end

end A242530.P5440395032000661111

/-! ## A242530.P8477186253974271630

`A292373(xor(A343406(n), A347297(n+1)))`
-/

namespace A242530.P8477186253974271630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 (Int.xor (A343406 n) (A347297 (n + 1))).toNat

end

end A242530.P8477186253974271630

/-!
# A242532: Number of cyclic arrangements of S={2,3,...,n+1} such that the difference of any two neighbors is greater than 1, and a divisor of their sum.

The programs for A242532, there is no canonical definition to state claims against.
-/

/-! ## A242532.P11142464990141969816

`A111900(A379791(n+1)+A077643(n))`
-/

namespace A242532.P11142464990141969816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111900 (A379791 (n + 1) + A077643 n).toNat

end

end A242532.P11142464990141969816

/-! ## A242532.P9456455367786301096

`A162427(A347131(n+1))%A049811(A145271(n))`
-/

namespace A242532.P9456455367786301096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162427 (A347131 (n + 1)).toNat) (A049811 (A145271 n).toNat)

end

end A242532.P9456455367786301096

/-!
# A242533: Number of cyclic arrangements of S={1,2,...,2n} such that the difference of any two neighbors is coprime to their sum.

The programs for A242533, there is no canonical definition to state claims against.
-/

/-! ## A242533.P14927188078310242957

`A242529(2*(n+1))`
-/

namespace A242533.P14927188078310242957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242529 (2 * (n + 1))

end

end A242533.P14927188078310242957

/-! ## A242533.P14053051942267510075

`ceil(A086595(2*(n+1))/2)`
-/

namespace A242533.P14053051942267510075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A086595 (2 * (n + 1)) : ℚ) / 2⌉

end

end A242533.P14053051942267510075

/-! ## A242533.P6346861029784820374

`round(A086595(2*n+2)/2)`
-/

namespace A242533.P6346861029784820374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A086595 (2 * n + 2) : ℚ) / 2)

end

end A242533.P6346861029784820374

/-! ## A242533.P9226337937749075089

`and(-1, A242529(record[2-xor(1, -n)]))`
-/

namespace A242533.P9226337937749075089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A242529 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A242533.P9226337937749075089

/-!
# A242534: Number of cyclic arrangements of S={1,2,...,n} such that the difference of any two neighbors is not coprime to their sum.

The programs for A242534, there is no canonical definition to state claims against.
-/

/-! ## A242534.P13243083867657941173

`and(A008574(C((n+1)², 2)), A052931(n))`
-/

namespace A242534.P13243083867657941173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008574 (Nat.choose ((n + 1) ^ 2) 2)) (A052931 n)

end

end A242534.P13243083867657941173

/-! ## A242534.P9316634514180810717

`A282780(n)%A066085(A025048(n))`
-/

namespace A242534.P9316634514180810717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282780 n) (A066085 (A025048 n).toNat)

end

end A242534.P9316634514180810717

/-! ## A242534.P14272528099237493525

`A365603(n)%A033879(A232126(n))`
-/

namespace A242534.P14272528099237493525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A365603 n) (A033879 (A232126 n).toNat)

end

end A242534.P14272528099237493525

/-! ## A242534.P16147090866092335169

`and(A000027(A000984(n)), A143571(n))`
-/

namespace A242534.P16147090866092335169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000027 (A000984 n).toNat) (A143571 n)

end

end A242534.P16147090866092335169

/-! ## A242534.P3482190218800033788

`and(A000027(A000984(n)), A291700(n))`
-/

namespace A242534.P3482190218800033788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000027 (A000984 n).toNat) (A291700 n)

end

end A242534.P3482190218800033788

/-!
# A242535: Start with the natural numbers and repeatedly take and keep the current initial term i, and remove m and 2m, where m = i-th term of the rest; repeat.

The programs for A242535, there is no canonical definition to state claims against.
-/

/-! ## A242535.P18056935658180764477

`lt[A114002(n+3), A297331(A151573(n))]`
-/

namespace A242535.P18056935658180764477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114002 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297331 (A151573 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242535.P18056935658180764477

/-! ## A242535.P7126571380094663106

`∑[gcd(A001222(n+1)+1, A178605(2*(n+2)))]`
-/

namespace A242535.P7126571380094663106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (n + 1) + 1) (A178605 (2 * (n + 2)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242535.P7126571380094663106

/-! ## A242535.P7160158373162139999

`record[A002024(A016861(A233971(n)))]`
-/

namespace A242535.P7160158373162139999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A016861 (A233971 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242535.P7160158373162139999

/-! ## A242535.P11951634959364842306

`lt[A133135(n), A133135(A280851(n+2))]`
-/

namespace A242535.P11951634959364842306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133135 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133135 (A280851 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242535.P11951634959364842306

/-! ## A242535.P17951188914326609504

`lt[A335489(3*n+1), A093421(A335454(n))]`
-/

namespace A242535.P17951188914326609504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335489 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093421 (A335454 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242535.P17951188914326609504

/-!
# A242536: Number of n-length words on {1,2,3,4} such that the maximal runs of identical odd integers are of odd length and the maximal runs of identical even integers are of even length.

The programs for A242536, the canonical program `A242536.P1447552213761890907` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242536 has offset 0).

The definition of A242536 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A242536.P1447552213761890907

`a(n-1)+3*a(n-2)+2*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=12`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A242536

/-- `a(n-1)+3*a(n-2)+2*a(n-3)-2*a(n-4)` -/
def P1447552213761890907.Spec : Prop :=
  ∀ n, P1447552213761890907.a n = A242536 n

theorem P1447552213761890907.correct : P1447552213761890907.Spec := by
  intro n
  simp only [A242536]

end A242536

/-! ## A242536.P9960795889495506757

`ogf((1+x-x^2)/(1-x-3x^2-2x^3+2x^4))`
-/

namespace A242536.P9960795889495506757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, -1, -3, -2, 2] n

end

end A242536.P9960795889495506757

namespace A242536

/-- `ogf((1+x-x^2)/(1-x-3x^2-2x^3+2x^4))` -/
def P9960795889495506757.Spec : Prop :=
  ∀ n, P9960795889495506757.a n = A242536 n

end A242536

/-! ## A242536.P732829077351360173

`A133428(A002843(n+1))`
-/

namespace A242536.P732829077351360173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133428 (A002843 (n + 1)).toNat

end

end A242536.P732829077351360173

namespace A242536

/-- `A133428(A002843(n+1))` -/
def P732829077351360173.Spec : Prop :=
  ∀ n, P732829077351360173.a n = A242536 n

end A242536

/-!
# A242537: Number of n-length words on {1,2,3,4,5} such that the maximal runs of identical odd integers are of odd length and the maximal runs of identical even integers are of even length.

The programs for A242537, the canonical program `A242537.P10393266776478865770` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242537 has offset 0).

The definition of A242537 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A242537.P10393266776478865770

`2*a(n-1)+3*a(n-2)+2*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=3, a(2)=8, a(3)=27`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A242537

/-- `2*a(n-1)+3*a(n-2)+2*a(n-3)-2*a(n-4)` -/
def P10393266776478865770.Spec : Prop :=
  ∀ n, P10393266776478865770.a n = A242537 n

theorem P10393266776478865770.correct : P10393266776478865770.Spec := by
  intro n
  simp only [A242537]

end A242537

/-! ## A242537.P9322495431324133259

`ogf((1+x-x^2)/(1-2x-3x^2-2x^3+2x^4))`
-/

namespace A242537.P9322495431324133259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, -2, -3, -2, 2] n

end

end A242537.P9322495431324133259

namespace A242537

/-- `ogf((1+x-x^2)/(1-2x-3x^2-2x^3+2x^4))` -/
def P9322495431324133259.Spec : Prop :=
  ∀ n, P9322495431324133259.a n = A242537 n

end A242537

/-! ## A242537.P896711518304828356

`A317686(A098183(n+1))`
-/

namespace A242537.P896711518304828356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317686 (A098183 (n + 1)).toNat

end

end A242537.P896711518304828356

namespace A242537

/-- `A317686(A098183(n+1))` -/
def P896711518304828356.Spec : Prop :=
  ∀ n, P896711518304828356.a n = A242537 n

end A242537

/-!
# A242538: Squares that are sum of digits of factorials.

The programs for A242538, there is no canonical definition to state claims against.
-/

/-! ## A242538.P4599310177452661804

`record[A008833(A004152(n))]`
-/

namespace A242538.P4599310177452661804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A004152 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242538.P4599310177452661804

/-! ## A242538.P6947584879703811712

`record[A004152(A066235(n+1)%A000043(n+1))]`
-/

namespace A242538.P6947584879703811712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004152 (Int.tmod (A066235 (n + 1)) (A000043 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242538.P6947584879703811712

/-! ## A242538.P18044941006701932412

`record[A000188(A004152(n+1))²]`
-/

namespace A242538.P18044941006701932412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A004152 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242538.P18044941006701932412

/-! ## A242538.P7843051584292833356

`record[A143697(A143718(n+1))]`
-/

namespace A242538.P7843051584292833356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143697 (A143718 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242538.P7843051584292833356

/-! ## A242538.P9148756603320339320

`∑[A375465(∏{e}[A267780(n), #+1])]²`
-/

namespace A242538.P9148756603320339320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267780 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375465 (∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A242538.P9148756603320339320

/-!
# A242541: Undulating primes: prime numbers whose digits follow the pattern A, B, A, B, A, B, A, B, ...

The programs for A242541, there is no canonical definition to state claims against.
-/

/-! ## A242541.P1095518019146621354

`∩[A030291(n+1), A033619(n+1)]`
-/

namespace A242541.P1095518019146621354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242541.P1095518019146621354

/-! ## A242541.P3381685538587069800

`p?[A033619(n+1)]`
-/

namespace A242541.P3381685538587069800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242541.P3381685538587069800

/-! ## A242541.P8409257710753393087

`record[A020639(A033619(n+3))]`
-/

namespace A242541.P8409257710753393087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A033619 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242541.P8409257710753393087

/-! ## A242541.P11138925738247351415

`∩[A033619(n+1), A049569(n+1)]`
-/

namespace A242541.P11138925738247351415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242541.P11138925738247351415

/-!
# A242542: Number of length n+3 0..n arrays with no four elements in a row with pattern aabb (possibly a=b) and new values 0..n introduced in 0..n order.

The programs for A242542, there is no canonical definition to state claims against.
-/

/-! ## A242542.P5616126832350705068

`A242549(∑[4*n]+1)`
-/

namespace A242542.P5616126832350705068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242549 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A242542.P5616126832350705068

/-! ## A242542.P1876241040821260465

`record[A003982(n)*A242549(n+1)]`
-/

namespace A242542.P1876241040821260465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A242549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242542.P1876241040821260465

/-! ## A242542.P8869596772400592721

`record[gcd(A114327(n), A242549(n+1))]`
-/

namespace A242542.P8869596772400592721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A242549 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242542.P8869596772400592721

/-! ## A242542.P8122473248551676977

`A242549(A001844(n))%A282398(n+1)`
-/

namespace A242542.P8122473248551676977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242549 (A001844 n).toNat) (A282398 (n + 1))

end

end A242542.P8122473248551676977

/-! ## A242542.P14670389869492890639

`Δ[A010751(n)]²*A242549(A001844(n))`
-/

namespace A242542.P14670389869492890639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010751 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A242549 (A001844 n).toNat

end

end A242542.P14670389869492890639

/-!
# A242543: Number of length n+3 0..2 arrays with no four elements in a row with pattern aabb (possibly a=b) and new values 0..2 introduced in 0..2 order.

The programs for A242543, the canonical program `A242543.P18428073251894840506` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242543 has offset 1).

The definition of A242543 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 227 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242543.P18428073251894840506

`2*a(n-1)+4*a(n-3)+4*a(n-4)` with `a(0)=12, a(1)=32, a(2)=88, a(3)=242`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A242543

/-- `2*a(n-1)+4*a(n-3)+4*a(n-4)` -/
def P18428073251894840506.Spec : Prop :=
  ∀ n, (P18428073251894840506.a n : ℤ) = A242543 (n + 1)

theorem P18428073251894840506.correct : P18428073251894840506.Spec := by
  intro n
  simp only [A242543, Nat.add_sub_cancel]

end A242543

/-! ## A242543.P2643949452246860857

`A242549(∑[n+2])`
-/

namespace A242543.P2643949452246860857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242549 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A242543.P2643949452246860857

namespace A242543

/-- `A242549(∑[n+2])` -/
def P2643949452246860857.Spec : Prop :=
  ∀ n, P2643949452246860857.a n = A242543 (n + 1)

end A242543

/-! ## A242543.P10994621220389025184

`record[A242549(A000096(A002260(n+1)))]`
-/

namespace A242543.P10994621220389025184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242549 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242543.P10994621220389025184

namespace A242543

/-- `record[A242549(A000096(A002260(n+1)))]` -/
def P10994621220389025184.Spec : Prop :=
  ∀ n, P10994621220389025184.a n = A242543 (n + 1)

end A242543

/-! ## A242543.P7287695718630400907

`record[A242549(A000096(A003602(n+1)))]`
-/

namespace A242543.P7287695718630400907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242549 (A000096 (A003602 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242543.P7287695718630400907

namespace A242543

/-- `record[A242549(A000096(A003602(n+1)))]` -/
def P7287695718630400907.Spec : Prop :=
  ∀ n, P7287695718630400907.a n = A242543 (n + 1)

end A242543

/-! ## A242543.P2918617343412581590

`record[A242549(A000096(A004736(n+1)))]`
-/

namespace A242543.P2918617343412581590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242549 (A000096 (A004736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242543.P2918617343412581590

namespace A242543

/-- `record[A242549(A000096(A004736(n+1)))]` -/
def P2918617343412581590.Spec : Prop :=
  ∀ n, P2918617343412581590.a n = A242543 (n + 1)

end A242543

/-! ## A242543.P3164440858167780761

`record[A242549(A000096(A137734(n)))]`
-/

namespace A242543.P3164440858167780761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242549 (A000096 (A137734 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242543.P3164440858167780761

namespace A242543

/-- `record[A242549(A000096(A137734(n)))]` -/
def P3164440858167780761.Spec : Prop :=
  ∀ n, P3164440858167780761.a n = A242543 (n + 1)

end A242543

/-! ## A242543.P802061174875165146

`record[A242549(A000096(A000188(n+1)))]`
-/

namespace A242543.P802061174875165146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242549 (A000096 (A000188 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242543.P802061174875165146

namespace A242543

/-- `record[A242549(A000096(A000188(n+1)))]` -/
def P802061174875165146.Spec : Prop :=
  ∀ n, P802061174875165146.a n = A242543 (n + 1)

end A242543

/-! ## A242543.P6138764278465321231

`record[A242549(A000096(A325783(n+1)))]`
-/

namespace A242543.P6138764278465321231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242549 (A000096 (A325783 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242543.P6138764278465321231

namespace A242543

/-- `record[A242549(A000096(A325783(n+1)))]` -/
def P6138764278465321231.Spec : Prop :=
  ∀ n, P6138764278465321231.a n = A242543 (n + 1)

end A242543

/-!
# A242544: Number of length n+3 0..3 arrays with no four elements in a row with pattern aabb (possibly a=b) and new values 0..3 introduced in 0..3 order.

The programs for A242544, there is no canonical definition to state claims against.
-/

/-! ## A242544.P11563191966414918894

`A242549(∑[n+3]+1)`
-/

namespace A242544.P11563191966414918894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242549 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A242544.P11563191966414918894

/-! ## A242544.P10478735437966790909

`C(A242549(A055998(n+1)+1), A000034(2*n))`
-/

namespace A242544.P10478735437966790909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A242549 (A055998 (n + 1) + 1).toNat).toNat (A000034 (2 * n)).toNat

end

end A242544.P10478735437966790909

/-! ## A242544.P6651572406814054371

`A242549(A055998(n+1)+1)+A005843(n)-n-n`
-/

namespace A242544.P6651572406814054371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242549 (A055998 (n + 1) + 1).toNat + A005843 n - (n : ℤ) - (n : ℤ)

end

end A242544.P6651572406814054371

/-! ## A242544.P17261176413710038144

`A145677(A000217(n))*A242549(A055998(n+1)+1)`
-/

namespace A242544.P17261176413710038144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 (A000217 n).toNat * A242549 (A055998 (n + 1) + 1).toNat

end

end A242544.P17261176413710038144

/-! ## A242544.P10031830792100225210

`A242549(A055998(n+1)+1)+1-A001222(A227826(n))`
-/

namespace A242544.P10031830792100225210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242549 (A055998 (n + 1) + 1).toNat + 1 - A001222 (A227826 n).toNat

end

end A242544.P10031830792100225210

/-!
# A242545: Number of length n+3 0..4 arrays with no four elements in a row with pattern aabb (possibly a=b) and new values 0..4 introduced in 0..4 order.

The programs for A242545, there is no canonical definition to state claims against.
-/

/-! ## A242545.P2453384013003758911

`A242549(A027379(n+2))`
-/

namespace A242545.P2453384013003758911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242549 (A027379 (n + 2)).toNat

end

end A242545.P2453384013003758911

/-! ## A242545.P582068362737385994

`A242549(A055998(n+2))`
-/

namespace A242545.P582068362737385994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242549 (A055998 (n + 2)).toNat

end

end A242545.P582068362737385994

/-! ## A242545.P11730528660998696714

`A242549(A155212(n)+5)`
-/

namespace A242545.P11730528660998696714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242549 (A155212 n + 5).toNat

end

end A242545.P11730528660998696714

/-! ## A242545.P16472533418976378159

`A242549(A052905(n+1)+2)`
-/

namespace A242545.P16472533418976378159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242549 (A052905 (n + 1) + 2).toNat

end

end A242545.P16472533418976378159

/-! ## A242545.P13011670224374094466

`A242549(A167614(n+1)+A005408(n))`
-/

namespace A242545.P13011670224374094466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242549 (A167614 (n + 1) + A005408 n).toNat

end

end A242545.P13011670224374094466

/-! ## A242545.P8771380830534635132

`A242549(Δ[A023545(n+1)-A055999(n)])`
-/

namespace A242545.P8771380830534635132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - A055999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242549 (f1 (n + 1) - f1 n).toNat

end

end A242545.P8771380830534635132

/-!
# A242546: Number of length n+3 0..5 arrays with no four elements in a row with pattern aabb (possibly a=b) and new values 0..5 introduced in 0..5 order.

The programs for A242546, there is no canonical definition to state claims against.
-/

/-! ## A242546.P8643585800066136010

`A242549(A046691(n+3))`
-/

namespace A242546.P8643585800066136010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242549 (A046691 (n + 3)).toNat

end

end A242546.P8643585800066136010

/-! ## A242546.P1970158677456088190

`A242549(Δ[A023545(n+1)])`
-/

namespace A242546.P1970158677456088190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242549 (f1 (n + 1) - f1 n).toNat

end

end A242546.P1970158677456088190

/-! ## A242546.P564231393750713444

`A242549(Δ[A111396(n)]-1)`
-/

namespace A242546.P564231393750713444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242549 (f1 (n + 1) - f1 n - 1).toNat

end

end A242546.P564231393750713444

/-! ## A242546.P16886217936094722435

`A242549(A000217(n+5)-4)`
-/

namespace A242546.P16886217936094722435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242549 (A000217 (n + 5) - 4).toNat

end

end A242546.P16886217936094722435

/-! ## A242546.P7905030380572392906

`A242549(A000124(n+5)-5)`
-/

namespace A242546.P7905030380572392906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242549 (A000124 (n + 5) - 5).toNat

end

end A242546.P7905030380572392906

/-! ## A242546.P18161437424363914710

`A242549(A155212(n+2)-(n+2))`
-/

namespace A242546.P18161437424363914710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242549 (A155212 (n + 2) - (n + 2 : ℤ)).toNat

end

end A242546.P18161437424363914710

/-!
# A242547: Number of length n+3 0..6 arrays with no four elements in a row with pattern aabb (possibly a=b) and new values 0..6 introduced in 0..6 order.

The programs for A242547, there is no canonical definition to state claims against.
-/

/-! ## A242547.P10070786783639434216

`A242549(A052905(n+3))`
-/

namespace A242547.P10070786783639434216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242549 (A052905 (n + 3)).toNat

end

end A242547.P10070786783639434216

/-! ## A242547.P16623301912536023974

`A242549(A055998(n+4)-2)`
-/

namespace A242547.P16623301912536023974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242549 (A055998 (n + 4) - 2).toNat

end

end A242547.P16623301912536023974

/-! ## A242547.P10845715008728611109

`A242549(A034856(n+5)-3)`
-/

namespace A242547.P10845715008728611109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242549 (A034856 (n + 5) - 3).toNat

end

end A242547.P10845715008728611109

/-! ## A242547.P11043454113661383192

`A242549(A000124(n+6)-6)`
-/

namespace A242547.P11043454113661383192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242549 (A000124 (n + 6) - 6).toNat

end

end A242547.P11043454113661383192

/-! ## A242547.P14187394256033361261

`A242549(Δ[Δ[A006504(n+1)]])`
-/

namespace A242547.P14187394256033361261
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242549 (f1 (n + 1) - f1 n).toNat

end

end A242547.P14187394256033361261

/-! ## A242547.P11780812461738431624

`A242549(Δ[A023545(n+2)]-1)`
-/

namespace A242547.P11780812461738431624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242549 (f1 (n + 1) - f1 n - 1).toNat

end

end A242547.P11780812461738431624

/-! ## A242547.P4323922503429969474

`A242549(Δ[A111396(n+1)]-2)`
-/

namespace A242547.P4323922503429969474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242549 (f1 (n + 1) - f1 n - 2).toNat

end

end A242547.P4323922503429969474

/-! ## A242547.P4873329485939930963

`A242549(A000217(n+5)+n+1)`
-/

namespace A242547.P4873329485939930963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242549 (A000217 (n + 5) + (n + 1 : ℤ)).toNat

end

end A242547.P4873329485939930963

/-!
# A242548: Number of length n+3 0..7 arrays with no four elements in a row with pattern aabb (possibly a=b) and new values 0..7 introduced in 0..7 order.

The programs for A242548, there is no canonical definition to state claims against.
-/

/-! ## A242548.P729359647975109910

`A242549(A055999(n+4))`
-/

namespace A242548.P729359647975109910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242549 (A055999 (n + 4)).toNat

end

end A242548.P729359647975109910

/-! ## A242548.P12389756059156154409

`A242549(A000217(n+7)-6)`
-/

namespace A242548.P12389756059156154409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242549 (A000217 (n + 7) - 6).toNat

end

end A242548.P12389756059156154409

/-! ## A242548.P16902945309456325326

`A242549(A000124(n+7)-7)`
-/

namespace A242548.P16902945309456325326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242549 (A000124 (n + 7) - 7).toNat

end

end A242548.P16902945309456325326

/-! ## A242548.P4355524683072134587

`A242549(A133263(n+6)+n-1)`
-/

namespace A242548.P4355524683072134587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242549 (A133263 (n + 6) + ((n : ℤ) - 1)).toNat

end

end A242548.P4355524683072134587

/-! ## A242548.P12665380352811664029

`A242549(A166136(n+4)+2*n+1)`
-/

namespace A242548.P12665380352811664029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242549 (A166136 (n + 4) + (2 * n + 1 : ℤ)).toNat

end

end A242548.P12665380352811664029

/-! ## A242548.P12166814414538218100

`A242549(A005408(n)+A046691(n+3)+10)`
-/

namespace A242548.P12166814414538218100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242549 (A005408 n + (A046691 (n + 3) + 10)).toNat

end

end A242548.P12166814414538218100

/-!
# A242550: Prime numbers that will become composite after removing any group of initial digits.

The programs for A242550, there is no canonical definition to state claims against.
-/

/-! ## A242550.P4630328346265921981

`∩[10*n+9, A196095(n+2)]`
-/

namespace A242550.P4630328346265921981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n + 9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196095 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242550.P4630328346265921981

/-! ## A242550.P10763506692832448182

`∩[A196095(n+1), A017377(n)]`
-/

namespace A242550.P10763506692832448182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242550.P10763506692832448182

/-! ## A242550.P5562652120018860412

`∩[A196095(n+1), A277596(n+1)]`
-/

namespace A242550.P5562652120018860412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242550.P5562652120018860412

/-! ## A242550.P1660236715817799369

`∩[A196095(n+1), A327753(n+1)]`
-/

namespace A242550.P1660236715817799369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242550.P1660236715817799369

/-! ## A242550.P9671704494846778007

`filter[A196095(n+1), A185709(#)]`
-/

namespace A242550.P9671704494846778007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196095 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185709 (f1 j).toNat = 1) n)

end

end A242550.P9671704494846778007

/-! ## A242550.P18418766715673272555

`filter[A196095(n+1), A011658(#)]`
-/

namespace A242550.P18418766715673272555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196095 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011658 (f1 j).toNat = 1) n)

end

end A242550.P18418766715673272555

/-! ## A242550.P9966629334063000025

`filter[A196095(n+1), A144597(#)]`
-/

namespace A242550.P9966629334063000025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196095 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144597 (f1 j).toNat = 1) n)

end

end A242550.P9966629334063000025

/-!
# A242551: Number of n-length words on infinite alphabet {1,2,...} such that the maximal runs of consecutive equal integers have lengths that are at least as great as the integer.

The programs for A242551, there is no canonical definition to state claims against.
-/

/-! ## A242551.P8822469782376928129

`A088305(n)-A374925(n)`
-/

namespace A242551.P8822469782376928129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 n - A374925 n

end

end A242551.P8822469782376928129

/-! ## A242551.P14702251842944553171

`A375100(∑[abs(1-n)])`
-/

namespace A242551.P14702251842944553171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375100 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A242551.P14702251842944553171

/-! ## A242551.P13655681584530670678

`A226190(A117160(n+2))`
-/

namespace A242551.P13655681584530670678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A117160 (n + 2)).toNat

end

end A242551.P13655681584530670678

/-! ## A242551.P17753480663675826455

`A001462(ceil(A240418(n+1)/59))`
-/

namespace A242551.P17753480663675826455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 ⌈(A240418 (n + 1) : ℚ) / 59⌉.toNat

end

end A242551.P17753480663675826455

/-! ## A242551.P2364120630149672955

`∑[A331904(A045623(n)+∑{e}[n, #])]+1`
-/

namespace A242551.P2364120630149672955
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331904 (A045623 n + ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A242551.P2364120630149672955

/-!
# A242552: Least number k such that n^4 + k^4 is prime.

The programs for A242552, there is no canonical definition to state claims against.
-/

/-! ## A242552.P14519834908405989058

`gcd(A098122(A255747(n)), A098123(n))`
-/

namespace A242552.P14519834908405989058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098122 (A255747 n).toNat) (A098123 n)

end

end A242552.P14519834908405989058

/-! ## A242552.P15677947071052050123

`gcd(A000203(A138017(n+1)), A200874(n+1))`
-/

namespace A242552.P15677947071052050123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (A138017 (n + 1)).toNat) (A200874 (n + 1))

end

end A242552.P15677947071052050123

/-! ## A242552.P1517051147546255401

`A107286(A107286(n+2)+A005179(3*(n+1)))`
-/

namespace A242552.P1517051147546255401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A107286 (n + 2) + A005179 (3 * (n + 1))).toNat

end

end A242552.P1517051147546255401

/-!
# A242555: Least number k such that k^32 + n^32 is prime.

The programs for A242555, there is no canonical definition to state claims against.
-/

/-! ## A242555.P4748169946841187922

`A244948(n+1)^A001221(A001018(n))`
-/

namespace A242555.P4748169946841187922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244948 (n + 1) : ℚ) ^ (A001221 (A001018 n).toNat : ℤ)

end

end A242555.P4748169946841187922

/-! ## A242555.P16309510090493168198

`A244948(n+1)^A052947(A285774(n))`
-/

namespace A242555.P16309510090493168198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244948 (n + 1) : ℚ) ^ (A052947 (A285774 n).toNat : ℤ)

end

end A242555.P16309510090493168198

/-!
# A242556: Least number k such that k^64 + n^64 is prime.

The programs for A242556, there is no canonical definition to state claims against.
-/

/-! ## A242556.P4836691309951658104

`A244949(n+1)^A057979(A100396(n))`
-/

namespace A242556.P4836691309951658104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244949 (n + 1) : ℚ) ^ (A057979 (A100396 n).toNat : ℤ)

end

end A242556.P4836691309951658104

/-! ## A242556.P8465535320307005362

`A244949(n+1)^A211111(A007051(n))`
-/

namespace A242556.P8465535320307005362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244949 (n + 1) : ℚ) ^ (A211111 (A007051 n).toNat : ℤ)

end

end A242556.P8465535320307005362

/-! ## A242556.P2278623767498458083

`A244949(n+1)^A211111(A244869(n))`
-/

namespace A242556.P2278623767498458083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244949 (n + 1) : ℚ) ^ (A211111 (A244869 n).toNat : ℤ)

end

end A242556.P2278623767498458083

/-!
# A242557: Least number k such that n^128+k^128 is prime.

The programs for A242557, there is no canonical definition to state claims against.
-/

/-! ## A242557.P3948353527623680726

`A244950(n+1)%A129911(n+1)`
-/

namespace A242557.P3948353527623680726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244950 (n + 1)) (A129911 (n + 1))

end

end A242557.P3948353527623680726

/-! ## A242557.P8149682555389675003

`gcd(A119271(A000124(n)), A244950(n+1))`
-/

namespace A242557.P8149682555389675003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A119271 (A000124 n).toNat) (A244950 (n + 1))

end

end A242557.P8149682555389675003

/-! ## A242557.P10530613831379577541

`A244950(n+1)^A007814(A010006(n))`
-/

namespace A242557.P10530613831379577541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244950 (n + 1) : ℚ) ^ (A007814 (A010006 n).toNat : ℤ)

end

end A242557.P10530613831379577541

/-! ## A242557.P7503293788129974009

`A244950(n+1)^A001221(A291778(n+1))`
-/

namespace A242557.P7503293788129974009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244950 (n + 1) : ℚ) ^ (A001221 (A291778 (n + 1)).toNat : ℤ)

end

end A242557.P7503293788129974009

/-! ## A242557.P10538954391394639915

`A244950(n+1)^A086780(A007283(n))`
-/

namespace A242557.P10538954391394639915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244950 (n + 1) : ℚ) ^ (A086780 (A007283 n).toNat : ℤ)

end

end A242557.P10538954391394639915

/-!
# A242558: a(n) = Sum_{j=0..n} Sum_{i=0..j} L(i)*F(j) where L(i)=A000032(i) and F(j)=A000045(j).

The programs for A242558, the canonical program `A242558.P7844537951495856975` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242558 has offset 0).

The definition of A242558 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A242558.P7844537951495856975

`A001519(n+2)-A000045(n+2)-A059841(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A242558

/-- `A001519(n+2)-A000045(n+2)-A059841(n)` -/
def P7844537951495856975.Spec : Prop :=
  ∀ n, P7844537951495856975.a n = A242558 n

theorem P7844537951495856975.correct : P7844537951495856975.Spec := by
  intro n
  simp only [A242558]

end A242558

/-! ## A242558.P16557824387821579072

`A129361(2*n)-log2(gcd(2, n))`
-/

namespace A242558.P16557824387821579072
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A129361 (2 * n) : ℝ) - Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A242558.P16557824387821579072

namespace A242558

/-- `A129361(2*n)-log2(gcd(2, n))` -/
def P16557824387821579072.Spec : Prop :=
  ∀ n, P16557824387821579072.a n = (A242558 n : ℝ)

end A242558

/-! ## A242558.P3454805041654918783

`∑[A128533(n)-A000045(n)]`
-/

namespace A242558.P3454805041654918783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128533 n - A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242558.P3454805041654918783

namespace A242558

/-- `∑[A128533(n)-A000045(n)]` -/
def P3454805041654918783.Spec : Prop :=
  ∀ n, P3454805041654918783.a n = A242558 n

end A242558

/-! ## A242558.P17134033219695927568

`A027941(n+1)-A052952(n)`
-/

namespace A242558.P17134033219695927568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 (n + 1) - A052952 n

end

end A242558.P17134033219695927568

namespace A242558

/-- `A027941(n+1)-A052952(n)` -/
def P17134033219695927568.Spec : Prop :=
  ∀ n, P17134033219695927568.a n = A242558 n

end A242558

/-! ## A242558.P17659175290600426863

`A054451(2*n)-A052952(n)`
-/

namespace A242558.P17659175290600426863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054451 (2 * n) - A052952 n

end

end A242558.P17659175290600426863

namespace A242558

/-- `A054451(2*n)-A052952(n)` -/
def P17659175290600426863.Spec : Prop :=
  ∀ n, P17659175290600426863.a n = A242558 n

end A242558

/-! ## A242558.P311394352918743565

`A052952(Δ[n²])-A052952(n)`
-/

namespace A242558.P311394352918743565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052952 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A052952 n

end

end A242558.P311394352918743565

namespace A242558

/-- `A052952(Δ[n²])-A052952(n)` -/
def P311394352918743565.Spec : Prop :=
  ∀ n, P311394352918743565.a n = A242558 n

end A242558

/-! ## A242558.P8342048599576093148

`∑[∑[A000032(n)]*A000045(n)]`
-/

namespace A242558.P8342048599576093148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242558.P8342048599576093148

namespace A242558

/-- `∑[∑[A000032(n)]*A000045(n)]` -/
def P8342048599576093148.Spec : Prop :=
  ∀ n, P8342048599576093148.a n = A242558 n

end A242558

/-! ## A242558.P9866842782759891075

`∑[A000045(n)*∑[A169985(n)]]`
-/

namespace A242558.P9866842782759891075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169985 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242558.P9866842782759891075

namespace A242558

/-- `∑[A000045(n)*∑[A169985(n)]]` -/
def P9866842782759891075.Spec : Prop :=
  ∀ n, P9866842782759891075.a n = A242558 n

end A242558

/-! ## A242558.P11588654859056327074

`∑[A001906(n+1)-A008346(n)]`
-/

namespace A242558.P11588654859056327074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1) - A008346 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242558.P11588654859056327074

namespace A242558

/-- `∑[A001906(n+1)-A008346(n)]` -/
def P11588654859056327074.Spec : Prop :=
  ∀ n, P11588654859056327074.a n = A242558 n

end A242558

/-! ## A242558.P10360933821920991080

`∑[A000045(n)*A001610(n+1)]`
-/

namespace A242558.P10360933821920991080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A001610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242558.P10360933821920991080

namespace A242558

/-- `∑[A000045(n)*A001610(n+1)]` -/
def P10360933821920991080.Spec : Prop :=
  ∀ n, P10360933821920991080.a n = A242558 n

end A242558

/-! ## A242558.P7398650827131205936

`∑[(A014739(n)+1)*A000045(n)]`
-/

namespace A242558.P7398650827131205936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014739 n + 1) * A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242558.P7398650827131205936

namespace A242558

/-- `∑[(A014739(n)+1)*A000045(n)]` -/
def P7398650827131205936.Spec : Prop :=
  ∀ n, P7398650827131205936.a n = A242558 n

end A242558

/-! ## A242558.P1920971215510059765

`∑[A052952(2*n)-A008346(n)]`
-/

namespace A242558.P1920971215510059765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052952 (2 * n) - A008346 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242558.P1920971215510059765

namespace A242558

/-- `∑[A052952(2*n)-A008346(n)]` -/
def P1920971215510059765.Spec : Prop :=
  ∀ n, P1920971215510059765.a n = A242558 n

end A242558

/-! ## A242558.P1089416243864819259

`∑[A052952(2*n)]-A052952(n)`
-/

namespace A242558.P1089416243864819259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052952 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A052952 n

end

end A242558.P1089416243864819259

namespace A242558

/-- `∑[A052952(2*n)]-A052952(n)` -/
def P1089416243864819259.Spec : Prop :=
  ∀ n, P1089416243864819259.a n = A242558 n

end A242558

/-! ## A242558.P16189318425187512809

`A192068(n+1)+A097040(n+1)`
-/

namespace A242558.P16189318425187512809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192068 (n + 1) + A097040 (n + 1)

end

end A242558.P16189318425187512809

namespace A242558

/-- `A192068(n+1)+A097040(n+1)` -/
def P16189318425187512809.Spec : Prop :=
  ∀ n, P16189318425187512809.a n = A242558 n

end A242558

/-! ## A242558.P1199629988557894930

`A001519(n+2)-A127968(n+1)`
-/

namespace A242558.P1199629988557894930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 2) - A127968 (n + 1)

end

end A242558.P1199629988557894930

namespace A242558

/-- `A001519(n+2)-A127968(n+1)` -/
def P1199629988557894930.Spec : Prop :=
  ∀ n, P1199629988557894930.a n = A242558 n

end A242558

/-! ## A242558.P3279618702684229407

`A192243(n+2)-A000045(n+2)`
-/

namespace A242558.P3279618702684229407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192243 (n + 2) - A000045 (n + 2)

end

end A242558.P3279618702684229407

namespace A242558

/-- `A192243(n+2)-A000045(n+2)` -/
def P3279618702684229407.Spec : Prop :=
  ∀ n, P3279618702684229407.a n = A242558 n

end A242558

/-! ## A242558.P3686352781903157705

`A054451(2*n)-A074331(n+1)`
-/

namespace A242558.P3686352781903157705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054451 (2 * n) - A074331 (n + 1)

end

end A242558.P3686352781903157705

namespace A242558

/-- `A054451(2*n)-A074331(n+1)` -/
def P3686352781903157705.Spec : Prop :=
  ∀ n, P3686352781903157705.a n = A242558 n

end A242558

/-! ## A242558.P13769064787923862114

`∑[A000045(2*(n+1))-A008346(n)]`
-/

namespace A242558.P13769064787923862114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * (n + 1)) - A008346 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242558.P13769064787923862114

namespace A242558

/-- `∑[A000045(2*(n+1))-A008346(n)]` -/
def P13769064787923862114.Spec : Prop :=
  ∀ n, P13769064787923862114.a n = A242558 n

end A242558

/-! ## A242558.P16898407318963599240

`A000071(2*n+3)-∑[A008346(n)]`
-/

namespace A242558.P16898407318963599240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008346 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (2 * n + 3) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242558.P16898407318963599240

namespace A242558

/-- `A000071(2*n+3)-∑[A008346(n)]` -/
def P16898407318963599240.Spec : Prop :=
  ∀ n, P16898407318963599240.a n = A242558 n

end A242558

/-! ## A242558.P7103655445909138370

`A052952(2*n+1)-A074331(n+1)`
-/

namespace A242558.P7103655445909138370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052952 (2 * n + 1) - A074331 (n + 1)

end

end A242558.P7103655445909138370

namespace A242558

/-- `A052952(2*n+1)-A074331(n+1)` -/
def P7103655445909138370.Spec : Prop :=
  ∀ n, P7103655445909138370.a n = A242558 n

end A242558

/-!
# A242559: Zeroless numbers n such that n^3 contains a 0.

The programs for A242559, the canonical program `A242559.P4660459681427850123` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242559 has offset 1).

The definition of A242559 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6255 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242559.P4660459681427850123

`∩[A052382(n+1), A291639(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A242559

/-- `∩[A052382(n+1), A291639(n+1)]` -/
def P4660459681427850123.Spec : Prop :=
  ∀ n, (P4660459681427850123.a n : ℤ) = A242559 (n + 1)

theorem P4660459681427850123.correct : P4660459681427850123.Spec := by
  intro n
  simp only [A242559, Nat.add_sub_cancel]

end A242559

/-! ## A242559.P9986249209775169103

`eq[A053668(n), A055641(n)]`
-/

namespace A242559.P9986249209775169103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053668 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242559.P9986249209775169103

namespace A242559

/-- `eq[A053668(n), A055641(n)]` -/
def P9986249209775169103.Spec : Prop :=
  ∀ n, (P9986249209775169103.a n : ℤ) = A242559 (n + 1)

end A242559

/-! ## A242559.P8508122899536926995

`eq[A053668(n), A067898(n)]`
-/

namespace A242559.P8508122899536926995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053668 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242559.P8508122899536926995

namespace A242559

/-- `eq[A053668(n), A067898(n)]` -/
def P8508122899536926995.Spec : Prop :=
  ∀ n, (P8508122899536926995.a n : ℤ) = A242559 (n + 1)

end A242559

/-! ## A242559.P13341527660575884601

`eq[A053668(n), A217096(n)]`
-/

namespace A242559.P13341527660575884601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053668 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217096 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242559.P13341527660575884601

namespace A242559

/-- `eq[A053668(n), A217096(n)]` -/
def P13341527660575884601.Spec : Prop :=
  ∀ n, (P13341527660575884601.a n : ℤ) = A242559 (n + 1)

end A242559

/-! ## A242559.P6567402140007959779

`lt[A053668(n), A004428(n)]`
-/

namespace A242559.P6567402140007959779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053668 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242559.P6567402140007959779

namespace A242559

/-- `lt[A053668(n), A004428(n)]` -/
def P6567402140007959779.Spec : Prop :=
  ∀ n, (P6567402140007959779.a n : ℤ) = A242559 (n + 1)

end A242559

/-! ## A242559.P4176704700612533306

`lt[A053668(n), A004429(n)]`
-/

namespace A242559.P4176704700612533306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053668 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004429 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242559.P4176704700612533306

namespace A242559

/-- `lt[A053668(n), A004429(n)]` -/
def P4176704700612533306.Spec : Prop :=
  ∀ n, (P4176704700612533306.a n : ℤ) = A242559 (n + 1)

end A242559

/-! ## A242559.P16791052998761345503

`lt[A053668(n), A004430(n)]`
-/

namespace A242559.P16791052998761345503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053668 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004430 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242559.P16791052998761345503

namespace A242559

/-- `lt[A053668(n), A004430(n)]` -/
def P16791052998761345503.Spec : Prop :=
  ∀ n, (P16791052998761345503.a n : ℤ) = A242559 (n + 1)

end A242559

/-! ## A242559.P12134825842903768156

`lt[A053668(n), A007954(n)]`
-/

namespace A242559.P12134825842903768156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053668 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242559.P12134825842903768156

namespace A242559

/-- `lt[A053668(n), A007954(n)]` -/
def P12134825842903768156.Spec : Prop :=
  ∀ n, (P12134825842903768156.a n : ℤ) = A242559 (n + 1)

end A242559

/-! ## A242559.P503449143149695582

`lt[A053668(n), A054054(n)]`
-/

namespace A242559.P503449143149695582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053668 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242559.P503449143149695582

namespace A242559

/-- `lt[A053668(n), A054054(n)]` -/
def P503449143149695582.Spec : Prop :=
  ∀ n, (P503449143149695582.a n : ℤ) = A242559 (n + 1)

end A242559

/-! ## A242559.P10324787815703677676

`lt[A053668(n), A168046(n)]`
-/

namespace A242559.P10324787815703677676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053668 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242559.P10324787815703677676

namespace A242559

/-- `lt[A053668(n), A168046(n)]` -/
def P10324787815703677676.Spec : Prop :=
  ∀ n, (P10324787815703677676.a n : ℤ) = A242559 (n + 1)

end A242559

/-! ## A242559.P1354231125186879743

`lt[A333206(n), A168046(n)]`
-/

namespace A242559.P1354231125186879743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333206 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242559.P1354231125186879743

namespace A242559

/-- `lt[A333206(n), A168046(n)]` -/
def P1354231125186879743.Spec : Prop :=
  ∀ n, (P1354231125186879743.a n : ℤ) = A242559 (n + 1)

end A242559

/-! ## A242559.P4072881066219019718

`filter[A291639(n+1), A168046(#)]`
-/

namespace A242559.P4072881066219019718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A242559.P4072881066219019718

namespace A242559

/-- `filter[A291639(n+1), A168046(#)]` -/
def P4072881066219019718.Spec : Prop :=
  ∀ n, P4072881066219019718.a n = A242559 (n + 1)

end A242559

/-! ## A242559.P17373720886271082362

`filter[A242214(n+1), A168046(#)]`
-/

namespace A242559.P17373720886271082362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A242559.P17373720886271082362

namespace A242559

/-- `filter[A242214(n+1), A168046(#)]` -/
def P17373720886271082362.Spec : Prop :=
  ∀ n, P17373720886271082362.a n = A242559 (n + 1)

end A242559

/-! ## A242559.P16412199128918488821

`∩[A052382(n+1), A242214(n+1)]`
-/

namespace A242559.P16412199128918488821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242559.P16412199128918488821

namespace A242559

/-- `∩[A052382(n+1), A242214(n+1)]` -/
def P16412199128918488821.Spec : Prop :=
  ∀ n, (P16412199128918488821.a n : ℤ) = A242559 (n + 1)

end A242559

/-!
# A242560: Least number k such that (n!-k)/(n-k) is an integer.

The programs for A242560, there is no canonical definition to state claims against.
-/

/-! ## A242560.P5164456395329726934

`A346483(A196957(n+1))+A060681(n+1)`
-/

namespace A242560.P5164456395329726934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346483 (A196957 (n + 1)).toNat + A060681 (n + 1)

end

end A242560.P5164456395329726934

/-! ## A242560.P8971570326944665972

`A346483(A196957(n+1))+∑{d}[n+1, A300721(#)]`
-/

namespace A242560.P8971570326944665972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346483 (A196957 (n + 1)).toNat + ∑ d ∈ Nat.divisors (f1 n), A300721 d

end

end A242560.P8971570326944665972

/-! ## A242560.P5773541583465722469

`A346483(A196957(n+1))+n-floor(n/A020639(n+1))`
-/

namespace A242560.P5773541583465722469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346483 (A196957 (n + 1)).toNat + ((n : ℤ) - ⌊(n : ℚ) / (A020639 (n + 1) : ℚ)⌋)

end

end A242560.P5773541583465722469

/-! ## A242560.P12466580089898582582

`A346483(A196957(n+1))+n+1-(n+1)/A020639(C(n+1, n))`
-/

namespace A242560.P12466580089898582582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346483 (A196957 (n + 1)).toNat : ℚ) + ((n + 1 : ℚ) - (n + 1 : ℚ) / (A020639 (Nat.choose (n + 1) n) : ℚ))

end

end A242560.P12466580089898582582

/-! ## A242560.P295362400672045037

`A346483(A196957(n+1))+n+1-(n+1)/A020639(∏{p}[n+1, #])`
-/

namespace A242560.P295362400672045037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346483 (A196957 (n + 1)).toNat : ℚ) + ((n + 1 : ℚ) - (n + 1 : ℚ) / (A020639 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ))

end

end A242560.P295362400672045037

/-!
# A242561: a(0)=0; thereafter, a(n) is n multiplied by the distance of a(n-1) to the nearest prime.

The programs for A242561, there is no canonical definition to state claims against.
-/

/-! ## A242561.P2657612319824777764

`n*A051699(a(n-1))` with `a(0)=0`
-/

namespace A242561.P2657612319824777764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * A051699 (a (n - 1)).toNat

end

end A242561.P2657612319824777764

/-! ## A242561.P8150051118636441825

`n*A263250(A100188(n+1))`
-/

namespace A242561.P8150051118636441825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A263250 (A100188 (n + 1)).toNat

end

end A242561.P8150051118636441825

/-! ## A242561.P15642358570920997333

`n*A244215(A244185(2*(n+1)))`
-/

namespace A242561.P15642358570920997333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A244215 (A244185 (2 * (n + 1))).toNat

end

end A242561.P15642358570920997333

/-!
# A242562: Primes p such that 1000p+1, 1000p+3, 1000p+7 and 1000p+9 are prime.

The programs for A242562, there is no canonical definition to state claims against.
-/

/-! ## A242562.P9081388817185357825

`p?[A064962(n+1)]`
-/

namespace A242562.P9081388817185357825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242562.P9081388817185357825

/-! ## A242562.P8284338725138134723

`p?[record[A064962(A133310(n))]]`
-/

namespace A242562.P8284338725138134723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064962 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242562.P8284338725138134723

/-! ## A242562.P17206522745315871992

`p?[record[A064962(A286544(n))]]`
-/

namespace A242562.P17206522745315871992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064962 (A286544 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242562.P17206522745315871992

/-! ## A242562.P10541866606030239853

`p?[record[A064962(A291769(n))]]`
-/

namespace A242562.P10541866606030239853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064962 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242562.P10541866606030239853

/-! ## A242562.P9972124762951455895

`p?[record[A064962(A324346(n))]]`
-/

namespace A242562.P9972124762951455895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064962 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242562.P9972124762951455895

/-!
# A242563: a(n) = 2*a(n-1) - a(n-3) + 2*a(n-4), a(0)=a(1)=0, a(2)=2, a(3)=3.

The programs for A242563, the canonical program `A242563.P102746207598133428` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242563 has offset 0).

The definition of A242563 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-a(n-3)+2*a(n-4)` (program `A242563.P102746207598133428`, by `A242563.P102746207598133428.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A242563.P102746207598133428

`2*a(n-1)-a(n-3)+2*a(n-4)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A242563

/-- `2*a(n-1)-a(n-3)+2*a(n-4)` -/
def P102746207598133428.Spec : Prop :=
  ∀ n, P102746207598133428.a n = A242563 n

theorem P102746207598133428.correct : P102746207598133428.Spec := by
  intro n
  simp only [A242563]

end A242563

/-! ## A242563.P960638900266518552

`A001045(n)-A092220(n)`
-/

namespace A242563.P960638900266518552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n - A092220 n

end

end A242563.P960638900266518552

namespace A242563

/-- `A001045(n)-A092220(n)` -/
def P960638900266518552.Spec : Prop :=
  ∀ n, P960638900266518552.a n = A242563 n

end A242563

/-! ## A242563.P8611537866630291313

`A024495(n)+A131531(n+1)`
-/

namespace A242563.P8611537866630291313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 n + A131531 (n + 1)

end

end A242563.P8611537866630291313

namespace A242563

/-- `A024495(n)+A131531(n+1)` -/
def P8611537866630291313.Spec : Prop :=
  ∀ n, P8611537866630291313.a n = A242563 n

end A242563

/-! ## A242563.P2659216899735434229

`2*A113405(n+1)-A113405(n)`
-/

namespace A242563.P2659216899735434229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A113405 (n + 1) - A113405 n

end

end A242563.P2659216899735434229

namespace A242563

/-- `2*A113405(n+1)-A113405(n)` -/
def P2659216899735434229.Spec : Prop :=
  ∀ n, P2659216899735434229.a n = A242563 n

end A242563

/-! ## A242563.P2764619916120593982

`1/3*((-1)^n-2*cos(n*π/3)+2^n)`
-/

namespace A242563.P2764619916120593982
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 3 : ℝ) * (((-1) ^ n : ℝ) - 2 * Real.cos ((n : ℝ) * Real.pi / 3) + (2 ^ n : ℝ))

end

end A242563.P2764619916120593982

namespace A242563

/-- `1/3*((-1)^n-2*cos(n*π/3)+2^n)` -/
def P2764619916120593982.Spec : Prop :=
  ∀ n, P2764619916120593982.a n = (A242563 n : ℝ)

end A242563

/-! ## A242563.P17697107248727194193

`2^n-A081374(n+1)`
-/

namespace A242563.P17697107248727194193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A081374 (n + 1)

end

end A242563.P17697107248727194193

namespace A242563

/-- `2^n-A081374(n+1)` -/
def P17697107248727194193.Spec : Prop :=
  ∀ n, P17697107248727194193.a n = A242563 n

end A242563

/-! ## A242563.P12336428444924090695

`ogf((2x^2-x^3)/(1-2x+x^3-2x^4))`
-/

namespace A242563.P12336428444924090695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, -1] [1, -2, 0, 1, -2] n

end

end A242563.P12336428444924090695

namespace A242563

/-- `ogf((2x^2-x^3)/(1-2x+x^3-2x^4))` -/
def P12336428444924090695.Spec : Prop :=
  ∀ n, P12336428444924090695.a n = A242563 n

end A242563

/-! ## A242563.P11679579957610846913

`A133684(A047271(n+1))`
-/

namespace A242563.P11679579957610846913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (A047271 (n + 1)).toNat

end

end A242563.P11679579957610846913

namespace A242563

/-- `A133684(A047271(n+1))` -/
def P11679579957610846913.Spec : Prop :=
  ∀ n, P11679579957610846913.a n = A242563 n

end A242563

/-! ## A242563.P17308651037307229508

`A166249(n)-A132419(n)`
-/

namespace A242563.P17308651037307229508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166249 n - A132419 n

end

end A242563.P17308651037307229508

namespace A242563

/-- `A166249(n)-A132419(n)` -/
def P17308651037307229508.Spec : Prop :=
  ∀ n, P17308651037307229508.a n = A242563 n

end A242563

/-! ## A242563.P9612180782411831523

`A131666(n)+∑[A131666(n)]`
-/

namespace A242563.P9612180782411831523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242563.P9612180782411831523

namespace A242563

/-- `A131666(n)+∑[A131666(n)]` -/
def P9612180782411831523.Spec : Prop :=
  ∀ n, P9612180782411831523.a n = A242563 n

end A242563

/-! ## A242563.P12352634810390160773

`A133684(A047234(n+2)-1)`
-/

namespace A242563.P12352634810390160773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (A047234 (n + 2) - 1).toNat

end

end A242563.P12352634810390160773

namespace A242563

/-- `A133684(A047234(n+2)-1)` -/
def P12352634810390160773.Spec : Prop :=
  ∀ n, P12352634810390160773.a n = A242563 n

end A242563

/-! ## A242563.P13935703960754643794

`A133684(A047268(n+2)-2)`
-/

namespace A242563.P13935703960754643794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (A047268 (n + 2) - 2).toNat

end

end A242563.P13935703960754643794

namespace A242563

/-- `A133684(A047268(n+2)-2)` -/
def P13935703960754643794.Spec : Prop :=
  ∀ n, P13935703960754643794.a n = A242563 n

end A242563

/-! ## A242563.P12659108641769377252

`A131666(n)+A113405(n+1)`
-/

namespace A242563.P12659108641769377252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 n + A113405 (n + 1)

end

end A242563.P12659108641769377252

namespace A242563

/-- `A131666(n)+A113405(n+1)` -/
def P12659108641769377252.Spec : Prop :=
  ∀ n, P12659108641769377252.a n = A242563 n

end A242563

/-! ## A242563.P996506899152725360

`A328881(n+1)+A135259(n)`
-/

namespace A242563.P996506899152725360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328881 (n + 1) + A135259 n

end

end A242563.P996506899152725360

namespace A242563

/-- `A328881(n+1)+A135259(n)` -/
def P996506899152725360.Spec : Prop :=
  ∀ n, P996506899152725360.a n = A242563 n

end A242563

/-! ## A242563.P9151892720535321174

`A005578(n)-A088911(n+1)`
-/

namespace A242563.P9151892720535321174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n - A088911 (n + 1)

end

end A242563.P9151892720535321174

namespace A242563

/-- `A005578(n)-A088911(n+1)` -/
def P9151892720535321174.Spec : Prop :=
  ∀ n, P9151892720535321174.a n = A242563 n

end A242563

/-! ## A242563.P14855548060354894836

`A024493(n)-A130151(n+1)`
-/

namespace A242563.P14855548060354894836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024493 n - A130151 (n + 1)

end

end A242563.P14855548060354894836

namespace A242563

/-- `A024493(n)-A130151(n+1)` -/
def P14855548060354894836.Spec : Prop :=
  ∀ n, P14855548060354894836.a n = A242563 n

end A242563

/-! ## A242563.P7956942934024463037

`A092220(n+3)+A001045(n)`
-/

namespace A242563.P7956942934024463037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092220 (n + 3) + A001045 n

end

end A242563.P7956942934024463037

namespace A242563

/-- `A092220(n+3)+A001045(n)` -/
def P7956942934024463037.Spec : Prop :=
  ∀ n, P7956942934024463037.a n = A242563 n

end A242563

/-! ## A242563.P8034011020841211669

`A113405(n+2)-A131090(n)`
-/

namespace A242563.P8034011020841211669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 (n + 2) - A131090 n

end

end A242563.P8034011020841211669

namespace A242563

/-- `A113405(n+2)-A131090(n)` -/
def P8034011020841211669.Spec : Prop :=
  ∀ n, P8034011020841211669.a n = A242563 n

end A242563

/-! ## A242563.P3176112387941716188

`A131708(n)-A131531(n+2)`
-/

namespace A242563.P3176112387941716188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131708 n - A131531 (n + 2)

end

end A242563.P3176112387941716188

namespace A242563

/-- `A131708(n)-A131531(n+2)` -/
def P3176112387941716188.Spec : Prop :=
  ∀ n, P3176112387941716188.a n = A242563 n

end A242563

/-! ## A242563.P9658608841733112399

`A078008(n)-A131531(n+3)`
-/

namespace A242563.P9658608841733112399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n - A131531 (n + 3)

end

end A242563.P9658608841733112399

namespace A242563

/-- `A078008(n)-A131531(n+3)` -/
def P9658608841733112399.Spec : Prop :=
  ∀ n, P9658608841733112399.a n = A242563 n

end A242563

/-!
# A242565: Numbers k such that (k!+1)/(k+1) is prime.

The programs for A242565, there is no canonical definition to state claims against.
-/

/-! ## A242565.P12736426830566086550

`A050299(n+2)-1`
-/

namespace A242565.P12736426830566086550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050299 (n + 2) - 1

end

end A242565.P12736426830566086550

/-! ## A242565.P15803839557858624692

`p?[A317507(n+1)]-1`
-/

namespace A242565.P15803839557858624692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317507 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A242565.P15803839557858624692

/-! ## A242565.P7879071231236567076

`∑[abs(Δ[A050299(n+1)])]`
-/

namespace A242565.P7879071231236567076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050299 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242565.P7879071231236567076

/-!
# A242566: Expansion of (1-sqrt(1-(2*(1-sqrt(1-4*x^2)))/x))/2.

The programs for A242566, there is no canonical definition to state claims against.
-/

/-! ## A242566.P459242047562333480

`A087011(A148434(n+1))`
-/

namespace A242566.P459242047562333480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087011 (A148434 (n + 1)).toNat

end

end A242566.P459242047562333480

/-! ## A242566.P15026778331891017422

`A256502(A087559(6*a(n-1))+1)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A242566.P15026778331891017422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 3] fun n a =>
  A256502 (A087559 (6 * a (n - 1)).toNat + 1).toNat

end

end A242566.P15026778331891017422

/-!
# A242567: Least number k >= 0 such that (n!+k)/(n+k) is an integer.

The programs for A242567, there is no canonical definition to state claims against.
-/

/-! ## A242567.P15636650437609492334

`A049704(7*A000270(n))`
-/

namespace A242567.P15636650437609492334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049704 (7 * A000270 n).toNat

end

end A242567.P15636650437609492334

/-! ## A242567.P6398443822952719969

`A213276(n!%A225041(n))`
-/

namespace A242567.P6398443822952719969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (Int.tmod (Nat.factorial n : ℤ) (A225041 n)).toNat

end

end A242567.P6398443822952719969

/-! ## A242567.P289484808543735971

`A213276(-∏[n-C(2, n+2)]%A225041(n))`
-/

namespace A242567.P289484808543735971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (Int.tmod (-(∏ j ∈ Finset.range (n + 1), f1 j)) (A225041 n)).toNat

end

end A242567.P289484808543735971

/-!
# A242569: a(n) = n! - 2*n.

The programs for A242569, the canonical program `A242569.P17218078758710414940` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242569 has offset 0).

The definition of A242569 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!-2*n` (program `A242569.P17218078758710414940`, by `A242569.P17218078758710414940.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A242569.P17218078758710414940

`n!-2*n`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A242569

/-- `n!-2*n` -/
def P17218078758710414940.Spec : Prop :=
  ∀ n, P17218078758710414940.a n = A242569 n

theorem P17218078758710414940.correct : P17218078758710414940.Spec := by
  intro n
  simp only [A242569]

end A242569

/-! ## A242569.P13113715127636744425

`n!-n-n`
-/

namespace A242569.P13113715127636744425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - (n : ℤ) - (n : ℤ)

end

end A242569.P13113715127636744425

namespace A242569

/-- `n!-n-n` -/
def P13113715127636744425.Spec : Prop :=
  ∀ n, P13113715127636744425.a n = A242569 n

theorem P13113715127636744425.correct : P13113715127636744425.Spec := by
  intro n
  simp only [A242569, Nat.add_sub_cancel, A242569.P13113715127636744425.a, A242569.P17218078758710414940.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A242569

/-! ## A242569.P17875528836861679567

`tan(-atan(2*n))+n!`
-/

namespace A242569.P17875528836861679567
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (-Real.arctan (2 * n : ℝ)) + (Nat.factorial n : ℝ)

end

end A242569.P17875528836861679567

namespace A242569

/-- `tan(-atan(2*n))+n!` -/
def P17875528836861679567.Spec : Prop :=
  ∀ n, P17875528836861679567.a n = (A242569 n : ℝ)

theorem P17875528836861679567.correct : P17875528836861679567.Spec := by
  intro n
  simp only [A242569, Nat.add_sub_cancel, A242569.P17875528836861679567.a, A242569.P17218078758710414940.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A242569

/-! ## A242569.P6105926267836215383

`cot(-acot(2*n))+n!`
-/

namespace A242569.P6105926267836215383
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (-SequenceMachineLib.acot (2 * n : ℝ)) + (Nat.factorial n : ℝ)

end

end A242569.P6105926267836215383

namespace A242569

/-- `cot(-acot(2*n))+n!` -/
def P6105926267836215383.Spec : Prop :=
  ∀ n, P6105926267836215383.a n = (A242569 n : ℝ)

end A242569

/-! ## A242569.P175643962700597123

`-(xor(-1, n!)+2*n+1)`
-/

namespace A242569.P175643962700597123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.xor (-1) (Nat.factorial n : ℤ) + (2 * n + 1 : ℤ))

end

end A242569.P175643962700597123

namespace A242569

/-- `-(xor(-1, n!)+2*n+1)` -/
def P175643962700597123.Spec : Prop :=
  ∀ n, P175643962700597123.a n = A242569 n

end A242569

/-! ## A242569.P7576935639140063157

`∏[C(2, n+2)+n]-2*n`
-/

namespace A242569.P7576935639140063157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 * n : ℤ)

end

end A242569.P7576935639140063157

namespace A242569

/-- `∏[C(2, n+2)+n]-2*n` -/
def P7576935639140063157.Spec : Prop :=
  ∀ n, P7576935639140063157.a n = A242569 n

end A242569

/-! ## A242569.P11349389957983690800

`∏[a(n-1)+1]-2*n` with `a(0)=1, a(1)=1`
-/

namespace A242569.P11349389957983690800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 * n : ℤ)

end

end A242569.P11349389957983690800

namespace A242569

/-- `∏[a(n-1)+1]-2*n` -/
def P11349389957983690800.Spec : Prop :=
  ∀ n, P11349389957983690800.a n = A242569 n

end A242569

/-! ## A242569.P10753869588036911450

`n*(a(n-1)+2*(n-2))` with `a(0)=1`
-/

namespace A242569.P10753869588036911450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (a (n - 1) + 2 * ((n : ℤ) - 2))

end

end A242569.P10753869588036911450

namespace A242569

/-- `n*(a(n-1)+2*(n-2))` -/
def P10753869588036911450.Spec : Prop :=
  ∀ n, P10753869588036911450.a n = A242569 n

end A242569

/-! ## A242569.P12903585947584603817

`n*(2*n-(4-a(n-1)))` with `a(0)=1`
-/

namespace A242569.P12903585947584603817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * ((2 * n : ℤ) - (4 - a (n - 1)))

end

end A242569.P12903585947584603817

namespace A242569

/-- `n*(2*n-(4-a(n-1)))` -/
def P12903585947584603817.Spec : Prop :=
  ∀ n, P12903585947584603817.a n = A242569 n

end A242569

/-! ## A242569.P6998015771170575

`∏[round((n+1)²/(n+2))]-2*n`
-/

namespace A242569.P6998015771170575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (n + 2 : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (2 * n : ℤ)

end

end A242569.P6998015771170575

namespace A242569

/-- `∏[round((n+1)²/(n+2))]-2*n` -/
def P6998015771170575.Spec : Prop :=
  ∀ n, P6998015771170575.a n = A242569 n

end A242569

/-!
# A242570: a(n) = 252 * n.

The programs for A242570, the canonical program `A242570.P5850914128767183235` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242570 has offset 0).

The definition of A242570 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `252*n` (program `A242570.P5850914128767183235`, by `A242570.P5850914128767183235.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A242570.P5850914128767183235

`252*n`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A242570

/-- `252*n` -/
def P5850914128767183235.Spec : Prop :=
  ∀ n, (P5850914128767183235.a n : ℤ) = A242570 n

theorem P5850914128767183235.correct : P5850914128767183235.Spec := by
  intro n
  simp only [A242570]

end A242570

/-!
# A242571: Triangular numbers T such that sum of the factorials of digits of T is semiprime.

The programs for A242571, there is no canonical definition to state claims against.
-/

/-! ## A242571.P2781140301753159897

`∩[A242868(n+1), ∑[n]]`
-/

namespace A242571.P2781140301753159897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242868 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A242571.P2781140301753159897

/-! ## A242571.P8772359750576109186

`∩[A000217(n), A242868(n+1)]`
-/

namespace A242571.P8772359750576109186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242571.P8772359750576109186

/-! ## A242571.P9788927121952983429

`filter[A242868(n+1), A010054(#)]`
-/

namespace A242571.P9788927121952983429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010054 (f1 j).toNat = 1) n)

end

end A242571.P9788927121952983429

/-!
# A242573: a(n) = [x^n] G(n-1,x) where G(n,x) is the n-th iteration of G(1,x) = x/(1-x+x^2), so that G(n,x) = G(n-1, G(1,x)) with G(0,x)=x.

The programs for A242573, there is no canonical definition to state claims against.
-/

/-! ## A242573.P8949685315795577031

`n!-A200214(n!+n)`
-/

namespace A242573.P8949685315795577031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A200214 (Nat.factorial n + n)

end

end A242573.P8949685315795577031

/-! ## A242573.P8253994834638212240

`n*(a(n-1)-A170963(a(n-1)))` with `a(0)=1`
-/

namespace A242573.P8253994834638212240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (a (n - 1) - A170963 (a (n - 1)).toNat)

end

end A242573.P8253994834638212240

/-! ## A242573.P7577284721628127066

`n!-A221351(A156919(n))`
-/

namespace A242573.P7577284721628127066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A221351 (A156919 n).toNat

end

end A242573.P7577284721628127066

/-!
# A242574: a(n) = [x^n] G(n,x) where G(n,x) is the n-th iteration of G(1,x) = x/(1-x+x^2), so that G(n,x) = G(n-1, G(1,x)) with G(0,x)=x.

The programs for A242574, there is no canonical definition to state claims against.
-/

/-! ## A242574.P7452004585216235554

`A003963(ceil(sqrt(A275286(n))))`
-/

namespace A242574.P7452004585216235554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 ⌈Real.sqrt (A275286 n : ℝ)⌉.toNat

end

end A242574.P7452004585216235554

/-! ## A242574.P14760759514532819650

`record[A123306(n)-A184993(n)]`
-/

namespace A242574.P14760759514532819650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123306 n - A184993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242574.P14760759514532819650

/-!
# A242575: a(n) = [x^n] G(n+1,x) where G(n,x) is the n-th iteration of G(1,x) = x/(1-x+x^2), so that G(n+1,x) = G(n, G(1,x)) with G(0,x)=x.

The programs for A242575, there is no canonical definition to state claims against.
-/

/-! ## A242575.P2088531890544049073

`A000196(A000312(n))*A108639(n+1)`
-/

namespace A242575.P2088531890544049073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000312 n).toNat * A108639 (n + 1)

end

end A242575.P2088531890544049073

/-!
# A242576: Prime terms in A214828.

The programs for A242576, there is no canonical definition to state claims against.
-/

/-! ## A242576.P13272717349599468768

`A214828(A242572(n+1))`
-/

namespace A242576.P13272717349599468768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214828 (A242572 (n + 1)).toNat

end

end A242576.P13272717349599468768

/-!
# A242577: Number of length n+3 0..n arrays with no four elements in a row with pattern aabb (with a!=b) and new values 0..n introduced in 0..n order.

The programs for A242577, there is no canonical definition to state claims against.
-/

/-! ## A242577.P12851157883284144404

`A242584(∑[4*n]+1)`
-/

namespace A242577.P12851157883284144404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A242577.P12851157883284144404

/-! ## A242577.P9034251420572593039

`record[A003982(n)*A242584(n+1)]`
-/

namespace A242577.P9034251420572593039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A242584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242577.P9034251420572593039

/-! ## A242577.P3910631516602590831

`record[gcd(A003987(n), A242584(n+1))]`
-/

namespace A242577.P3910631516602590831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A242584 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242577.P3910631516602590831

/-! ## A242577.P13684898420416123576

`lcm(A033999(n), A242584(A001844(n)))`
-/

namespace A242577.P13684898420416123576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A242584 (A001844 n).toNat)

end

end A242577.P13684898420416123576

/-! ## A242577.P15398591827744588863

`or(A000007(n), A242584(A001844(n)))`
-/

namespace A242577.P15398591827744588863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A242584 (A001844 n).toNat)

end

end A242577.P15398591827744588863

/-! ## A242577.P14558422779470033973

`or(A000038(n), A242584(A001844(n)))`
-/

namespace A242577.P14558422779470033973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A242584 (A001844 n).toNat)

end

end A242577.P14558422779470033973

/-!
# A242578: Number of length n+3 0..2 arrays with no four elements in a row with pattern aabb (with a!=b) and new values 0..2 introduced in 0..2 order.

The programs for A242578, the canonical program `A242578.P9890771044721935936` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242578 has offset 1).

The definition of A242578 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242578.P9890771044721935936

`4*a(n-1)-5*a(n-2)+6*a(n-3)-4*a(n-4)` with `a(0)=13, a(1)=35, a(2)=97, a(3)=271`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A242578

/-- `4*a(n-1)-5*a(n-2)+6*a(n-3)-4*a(n-4)` -/
def P9890771044721935936.Spec : Prop :=
  ∀ n, P9890771044721935936.a n = A242578 (n + 1)

theorem P9890771044721935936.correct : P9890771044721935936.Spec := by
  intro n
  simp only [A242578, Nat.add_sub_cancel]

end A242578

/-! ## A242578.P4379122014284952295

`A242584(∑[n+2])`
-/

namespace A242578.P4379122014284952295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A242578.P4379122014284952295

namespace A242578

/-- `A242584(∑[n+2])` -/
def P4379122014284952295.Spec : Prop :=
  ∀ n, P4379122014284952295.a n = A242578 (n + 1)

end A242578

/-! ## A242578.P11169228254726461389

`record[A242584(A000096(A117910(n)))]`
-/

namespace A242578.P11169228254726461389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 (A000096 (A117910 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242578.P11169228254726461389

namespace A242578

/-- `record[A242584(A000096(A117910(n)))]` -/
def P11169228254726461389.Spec : Prop :=
  ∀ n, P11169228254726461389.a n = A242578 (n + 1)

end A242578

/-! ## A242578.P7590251210535361354

`record[A242584(A000096(A193738(n)))]`
-/

namespace A242578.P7590251210535361354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 (A000096 (A193738 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242578.P7590251210535361354

namespace A242578

/-- `record[A242584(A000096(A193738(n)))]` -/
def P7590251210535361354.Spec : Prop :=
  ∀ n, P7590251210535361354.a n = A242578 (n + 1)

end A242578

/-! ## A242578.P9980526544411669910

`record[A242584(A000096(A002260(n+1)))]`
-/

namespace A242578.P9980526544411669910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242578.P9980526544411669910

namespace A242578

/-- `record[A242584(A000096(A002260(n+1)))]` -/
def P9980526544411669910.Spec : Prop :=
  ∀ n, P9980526544411669910.a n = A242578 (n + 1)

end A242578

/-! ## A242578.P12493969770930410218

`record[A242584(A000096(A320004(n+1)))]`
-/

namespace A242578.P12493969770930410218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 (A000096 (A320004 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242578.P12493969770930410218

namespace A242578

/-- `record[A242584(A000096(A320004(n+1)))]` -/
def P12493969770930410218.Spec : Prop :=
  ∀ n, P12493969770930410218.a n = A242578 (n + 1)

end A242578

/-!
# A242579: Number of length n+3 0..3 arrays with no four elements in a row with pattern aabb (with a!=b) and new values 0..3 introduced in 0..3 order.

The programs for A242579, there is no canonical definition to state claims against.
-/

/-! ## A242579.P12659289061028297417

`A242584(∑[n+3]+1)`
-/

namespace A242579.P12659289061028297417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A242579.P12659289061028297417

/-! ## A242579.P16568318410703429891

`A242584(Δ[A008778(n)])%A198275(n)²`
-/

namespace A242579.P16568318410703429891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242584 (f1 (n + 1) - f1 n).toNat) (A198275 n ^ 2)

end

end A242579.P16568318410703429891

/-! ## A242579.P11712172244744621984

`(1-A010673(n))²*A242584(Δ[A008778(n)])`
-/

namespace A242579.P11712172244744621984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010673 n) ^ 2 * A242584 (f1 (n + 1) - f1 n).toNat

end

end A242579.P11712172244744621984

/-! ## A242579.P15490043796213805688

`A014963(6*(n+1))*A242584(Δ[A008778(n)])`
-/

namespace A242579.P15490043796213805688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A242584 (f1 (n + 1) - f1 n).toNat

end

end A242579.P15490043796213805688

/-! ## A242579.P12654089072820896317

`A242584(Δ[A008778(n)])+A008683(16*n+8)`
-/

namespace A242579.P12654089072820896317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 (f1 (n + 1) - f1 n).toNat + A008683 (16 * n + 8)

end

end A242579.P12654089072820896317

/-!
# A242580: Number of length n+3 0..4 arrays with no four elements in a row with pattern aabb (with a!=b) and new values 0..4 introduced in 0..4 order.

The programs for A242580, there is no canonical definition to state claims against.
-/

/-! ## A242580.P10492528438667019789

`A242584(A055998(n+2))`
-/

namespace A242580.P10492528438667019789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 (A055998 (n + 2)).toNat

end

end A242580.P10492528438667019789

/-! ## A242580.P13844911691697238428

`A242584(A052905(n+1)+2)`
-/

namespace A242580.P13844911691697238428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 (A052905 (n + 1) + 2).toNat

end

end A242580.P13844911691697238428

/-! ## A242580.P15627979298671850897

`A242584(A000124(n+4)-4)`
-/

namespace A242580.P15627979298671850897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 (A000124 (n + 4) - 4).toNat

end

end A242580.P15627979298671850897

/-! ## A242580.P9534495398741233260

`A242584(Δ[A008778(n+1)]-1)`
-/

namespace A242580.P9534495398741233260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 (f1 (n + 1) - f1 n - 1).toNat

end

end A242580.P9534495398741233260

/-! ## A242580.P11130047123020705935

`A242584(A167499(n)+A016777(n))`
-/

namespace A242580.P11130047123020705935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 (A167499 n + A016777 n).toNat

end

end A242580.P11130047123020705935

/-! ## A242580.P5589494164473527917

`A242584(A271439(Δ[A023545(n+1)]))`
-/

namespace A242580.P5589494164473527917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 (A271439 (f1 (n + 1) - f1 n).toNat).toNat

end

end A242580.P5589494164473527917

/-! ## A242580.P10653234436308754678

`A242584(A167614(n+1)+A005408(n))`
-/

namespace A242580.P10653234436308754678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 (A167614 (n + 1) + A005408 n).toNat

end

end A242580.P10653234436308754678

/-!
# A242581: Number of length n+3 0..5 arrays with no four elements in a row with pattern aabb (with a!=b) and new values 0..5 introduced in 0..5 order.

The programs for A242581, there is no canonical definition to state claims against.
-/

/-! ## A242581.P17978657071278401039

`A242584(A046691(n+3))`
-/

namespace A242581.P17978657071278401039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 (A046691 (n + 3)).toNat

end

end A242581.P17978657071278401039

/-! ## A242581.P1081461941941251911

`A242584(Δ[A023545(n+1)])`
-/

namespace A242581.P1081461941941251911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 (f1 (n + 1) - f1 n).toNat

end

end A242581.P1081461941941251911

/-! ## A242581.P3436630533377819208

`A242584(A052905(n+2)+1)`
-/

namespace A242581.P3436630533377819208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 (A052905 (n + 2) + 1).toNat

end

end A242581.P3436630533377819208

/-! ## A242581.P13018270869138837967

`A242584(A000096(n+4)-3)`
-/

namespace A242581.P13018270869138837967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 (A000096 (n + 4) - 3).toNat

end

end A242581.P13018270869138837967

/-! ## A242581.P5066462230267868994

`A242584(A000217(n+5)-4)`
-/

namespace A242581.P5066462230267868994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 (A000217 (n + 5) - 4).toNat

end

end A242581.P5066462230267868994

/-! ## A242581.P10187994825645755164

`A242584(A000124(n+5)-5)`
-/

namespace A242581.P10187994825645755164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 (A000124 (n + 5) - 5).toNat

end

end A242581.P10187994825645755164

/-! ## A242581.P13638286455830281144

`A242584(A161680(n+6)-4)`
-/

namespace A242581.P13638286455830281144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 (A161680 (n + 6) - 4).toNat

end

end A242581.P13638286455830281144

/-! ## A242581.P10861668840178044996

`A242584(A167499(n)+4*n+5)`
-/

namespace A242581.P10861668840178044996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 (A167499 n + (4 * n + 5 : ℤ)).toNat

end

end A242581.P10861668840178044996

/-! ## A242581.P5165481016195686683

`A242584(eq[4, A002262(n)]+n-3)`
-/

namespace A242581.P5165481016195686683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + ((n : ℤ) - 3)).toNat

end

end A242581.P5165481016195686683

/-!
# A242582: Number of length n+3 0..6 arrays with no four elements in a row with pattern aabb (with a!=b) and new values 0..6 introduced in 0..6 order.

The programs for A242582, there is no canonical definition to state claims against.
-/

/-! ## A242582.P16594180128321691386

`A242584(A052905(n+3))`
-/

namespace A242582.P16594180128321691386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 (A052905 (n + 3)).toNat

end

end A242582.P16594180128321691386

/-! ## A242582.P11503384677369990949

`A242584(A046691(n+4)-1)`
-/

namespace A242582.P11503384677369990949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 (A046691 (n + 4) - 1).toNat

end

end A242582.P11503384677369990949

/-! ## A242582.P15229559465134501962

`A242584(A055998(n+4)-2)`
-/

namespace A242582.P15229559465134501962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 (A055998 (n + 4) - 2).toNat

end

end A242582.P15229559465134501962

/-! ## A242582.P7919060431158066856

`A242584(A000217(n+6)-5)`
-/

namespace A242582.P7919060431158066856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 (A000217 (n + 6) - 5).toNat

end

end A242582.P7919060431158066856

/-! ## A242582.P7248555802563975573

`A242584(A000124(n+6)-6)`
-/

namespace A242582.P7248555802563975573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 (A000124 (n + 6) - 6).toNat

end

end A242582.P7248555802563975573

/-! ## A242582.P10072858456821070524

`A242584(A167614(n+5)-8)`
-/

namespace A242582.P10072858456821070524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 (A167614 (n + 5) - 8).toNat

end

end A242582.P10072858456821070524

/-! ## A242582.P15040336903852390338

`A242584(Δ[A023551(n+1)]+1)`
-/

namespace A242582.P15040336903852390338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 (f1 (n + 1) - f1 n + 1).toNat

end

end A242582.P15040336903852390338

/-! ## A242582.P17321025666730695062

`A242584(Δ[A023545(n+2)]-1)`
-/

namespace A242582.P17321025666730695062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 (f1 (n + 1) - f1 n - 1).toNat

end

end A242582.P17321025666730695062

/-! ## A242582.P9825761846438776046

`A242584(A000096(n+4)+n+2)`
-/

namespace A242582.P9825761846438776046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 (A000096 (n + 4) + (n + 2 : ℤ)).toNat

end

end A242582.P9825761846438776046

/-! ## A242582.P12703879285125797883

`A242584(A161680(n+6)+n+1)`
-/

namespace A242582.P12703879285125797883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 (A161680 (n + 6) + (n + 1 : ℤ)).toNat

end

end A242582.P12703879285125797883

/-! ## A242582.P739150641994502056

`A242584(A167499(n+3)+2*n+1)`
-/

namespace A242582.P739150641994502056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 (A167499 (n + 3) + (2 * n + 1 : ℤ)).toNat

end

end A242582.P739150641994502056

/-!
# A242583: Number of length n+3 0..7 arrays with no four elements in a row with pattern aabb (with a!=b) and new values 0..7 introduced in 0..7 order.

The programs for A242583, there is no canonical definition to state claims against.
-/

/-! ## A242583.P17584546738901729634

`A242584(A055999(n+4))`
-/

namespace A242583.P17584546738901729634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 (A055999 (n + 4)).toNat

end

end A242583.P17584546738901729634

/-! ## A242583.P9875848111778347863

`A242584(Δ[A023551(n+2)])`
-/

namespace A242583.P9875848111778347863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 (f1 (n + 1) - f1 n).toNat

end

end A242583.P9875848111778347863

/-! ## A242583.P1072870686924144642

`A242584(A000217(n+7)-6)`
-/

namespace A242583.P1072870686924144642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 (A000217 (n + 7) - 6).toNat

end

end A242583.P1072870686924144642

/-! ## A242583.P10550757789814965375

`A242584(A000124(n+7)-7)`
-/

namespace A242583.P10550757789814965375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 (A000124 (n + 7) - 7).toNat

end

end A242583.P10550757789814965375

/-! ## A242583.P15302194997048739028

`A242584(A167614(n+5)+n-2)`
-/

namespace A242583.P15302194997048739028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 (A167614 (n + 5) + ((n : ℤ) - 2)).toNat

end

end A242583.P15302194997048739028

/-! ## A242583.P7376107432477352279

`A242584(Δ[n²]+A000124(n+5)+5)`
-/

namespace A242583.P7376107432477352279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A000124 (n + 5) + 5)).toNat

end

end A242583.P7376107432477352279

/-!
# A242584: T(n,k)=Number of length n+3 0..k arrays with no four elements in a row with pattern aabb (with a!=b) and new values 0..k introduced in 0..k order.

The programs for A242584, there is no canonical definition to state claims against.
-/

/-! ## A242584.P16123404412888251287

`A243389(n+1)+A051768(A074586(n+1))`
-/

namespace A242584.P16123404412888251287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243389 (n + 1) + A051768 (A074586 (n + 1)).toNat

end

end A242584.P16123404412888251287

/-! ## A242584.P2708533800195931529

`A243389(n+1)+A100910(A290234(n))`
-/

namespace A242584.P2708533800195931529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243389 (n + 1) + A100910 (A290234 n).toNat

end

end A242584.P2708533800195931529

/-! ## A242584.P2203768851104587858

`or(A159684(A117186(n)), A243389(n+1))`
-/

namespace A242584.P2203768851104587858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A159684 (A117186 n).toNat) (A243389 (n + 1))

end

end A242584.P2203768851104587858

/-! ## A242584.P10858262677239312793

`or(A243389(n+1), A300067(A135541(n)))`
-/

namespace A242584.P10858262677239312793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A243389 (n + 1)) (A300067 (A135541 n).toNat)

end

end A242584.P10858262677239312793

/-! ## A242584.P15863960043361134910

`or(A020987(A301700(n+1)), A243389(n+1))`
-/

namespace A242584.P15863960043361134910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020987 (A301700 (n + 1)).toNat) (A243389 (n + 1))

end

end A242584.P15863960043361134910

/-!
# A242585: Number of divisors of the n-th positive number that is both triangular and square.

The programs for A242585, there is no canonical definition to state claims against.
-/

/-! ## A242585.P1756720849971297180

`∏{e}[∑[A117719(2*n)], 2*#+1]`
-/

namespace A242585.P1756720849971297180
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117719 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (2 * Nat.factorization (f1 n).natAbs p + 1)

end

end A242585.P1756720849971297180

/-! ## A242585.P5007805793118583957

`∏{e}[A001109(n+1), A000978(#)]`
-/

namespace A242585.P5007805793118583957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000978 (Nat.factorization (f1 n).natAbs p)

end

end A242585.P5007805793118583957

/-! ## A242585.P11468859095814003988

`∏{e}[A001109(n+1), A005408(#)]`
-/

namespace A242585.P11468859095814003988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A005408 (Nat.factorization (f1 n).natAbs p)

end

end A242585.P11468859095814003988

/-! ## A242585.P3204314840377339077

`∏{e}[A001109(n+1), A052334(#)]`
-/

namespace A242585.P3204314840377339077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A052334 (Nat.factorization (f1 n).natAbs p)

end

end A242585.P3204314840377339077

/-!
# A242586: Expansion of 1/(2*sqrt(1-x))*(1/sqrt(1-x)+1/(sqrt(1-5*x))).

The programs for A242586, the canonical program `A242586.P10140578431717822349` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242586 has offset 0).

The definition of A242586 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242586.P10140578431717822349

`A026378(n)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A242586

/-- `A026378(n)+a(n-1)` -/
def P10140578431717822349.Spec : Prop :=
  ∀ n, P10140578431717822349.a n = A242586 n

theorem P10140578431717822349.correct : P10140578431717822349.Spec := by
  intro n
  simp only [A242586]

end A242586

/-! ## A242586.P167392146087456402

`∑[A026378(A028310(n))]`
-/

namespace A242586.P167392146087456402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026378 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242586.P167392146087456402

namespace A242586

/-- `∑[A026378(A028310(n))]` -/
def P167392146087456402.Spec : Prop :=
  ∀ n, P167392146087456402.a n = A242586 n

end A242586

/-! ## A242586.P9805259071225043418

`A102319(n)-A097861(n)`
-/

namespace A242586.P9805259071225043418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102319 n - A097861 n

end

end A242586.P9805259071225043418

namespace A242586

/-- `A102319(n)-A097861(n)` -/
def P9805259071225043418.Spec : Prop :=
  ∀ n, P9805259071225043418.a n = A242586 n

end A242586

/-! ## A242586.P14991453401167739024

`A085362(n)-∑[A128752(n)]`
-/

namespace A242586.P14991453401167739024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128752 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085362 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242586.P14991453401167739024

namespace A242586

/-- `A085362(n)-∑[A128752(n)]` -/
def P14991453401167739024.Spec : Prop :=
  ∀ n, P14991453401167739024.a n = A242586 n

end A242586

/-! ## A242586.P12213296554918163296

`A126568(n)-∑[A128732(n)]`
-/

namespace A242586.P12213296554918163296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126568 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242586.P12213296554918163296

namespace A242586

/-- `A126568(n)-∑[A128732(n)]` -/
def P12213296554918163296.Spec : Prop :=
  ∀ n, P12213296554918163296.a n = A242586 n

end A242586

/-! ## A242586.P3647072027416139745

`∑[A085362(n)/A036453(n+1)]`
-/

namespace A242586.P3647072027416139745
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085362 n : ℚ) / (A036453 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242586.P3647072027416139745

namespace A242586

/-- `∑[A085362(n)/A036453(n+1)]` -/
def P3647072027416139745.Spec : Prop :=
  ∀ n, P3647072027416139745.a n = (A242586 n : ℚ)

end A242586

/-! ## A242586.P13719343334539279588

`ceil(A026375(n)/2)`
-/

namespace A242586.P13719343334539279588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A026375 n : ℚ) / 2⌉

end

end A242586.P13719343334539279588

namespace A242586

/-- `ceil(A026375(n)/2)` -/
def P13719343334539279588.Spec : Prop :=
  ∀ n, P13719343334539279588.a n = A242586 n

end A242586

/-! ## A242586.P14252266569523027624

`(A239201(n+1)+1)/3`
-/

namespace A242586.P14252266569523027624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239201 (n + 1) + 1 : ℚ) / 3

end

end A242586.P14252266569523027624

namespace A242586

/-- `(A239201(n+1)+1)/3` -/
def P14252266569523027624.Spec : Prop :=
  ∀ n, P14252266569523027624.a n = (A242586 n : ℚ)

end A242586

/-! ## A242586.P3745829416160096338

`(A026380(A004273(n))+1)/2`
-/

namespace A242586.P3745829416160096338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026380 (A004273 n).toNat + 1 : ℚ) / 2

end

end A242586.P3745829416160096338

namespace A242586

/-- `(A026380(A004273(n))+1)/2` -/
def P3745829416160096338.Spec : Prop :=
  ∀ n, P3745829416160096338.a n = (A242586 n : ℚ)

end A242586

/-! ## A242586.P2274746724597664533

`A129164(n+1)+1-A026378(n+1)`
-/

namespace A242586.P2274746724597664533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129164 (n + 1) + (1 - A026378 (n + 1))

end

end A242586.P2274746724597664533

namespace A242586

/-- `A129164(n+1)+1-A026378(n+1)` -/
def P2274746724597664533.Spec : Prop :=
  ∀ n, P2274746724597664533.a n = A242586 n

end A242586

/-! ## A242586.P1853753536593875212

`(A236833(A236833(n))+A026375(n))/2`
-/

namespace A242586.P1853753536593875212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236833 (A236833 n).toNat + A026375 n : ℚ) / 2

end

end A242586.P1853753536593875212

namespace A242586

/-- `(A236833(A236833(n))+A026375(n))/2` -/
def P1853753536593875212.Spec : Prop :=
  ∀ n, P1853753536593875212.a n = (A242586 n : ℚ)

end A242586

/-! ## A242586.P8813319514852266412

`∑[A126791(∑[n]-n)]`
-/

namespace A242586.P8813319514852266412
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126791 (∑ j ∈ Finset.range (n + 1), f2 j - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242586.P8813319514852266412

namespace A242586

/-- `∑[A126791(∑[n]-n)]` -/
def P8813319514852266412.Spec : Prop :=
  ∀ n, P8813319514852266412.a n = A242586 n

end A242586

/-! ## A242586.P1508621990923844504

`(A272866(A002378(n))+1)/2`
-/

namespace A242586.P1508621990923844504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272866 (A002378 n).toNat + 1 : ℚ) / 2

end

end A242586.P1508621990923844504

namespace A242586

/-- `(A272866(A002378(n))+1)/2` -/
def P1508621990923844504.Spec : Prop :=
  ∀ n, P1508621990923844504.a n = (A242586 n : ℚ)

end A242586

/-!
# A242587: The number of conjugacy classes of n X n matrices over F_3.

The programs for A242587, there is no canonical definition to state claims against.
-/

/-! ## A242587.P18252922650523136455

`A300582(n)/2^n`
-/

namespace A242587.P18252922650523136455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300582 n : ℚ) / (2 ^ n : ℚ)

end

end A242587.P18252922650523136455

/-! ## A242587.P17495082135502889027

`floor(A300582(n)/A000079(n))`
-/

namespace A242587.P17495082135502889027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A300582 n : ℚ) / (A000079 n : ℚ)⌋

end

end A242587.P17495082135502889027

/-! ## A242587.P7539363467705487365

`A246935(∑[n+3]+n+3)`
-/

namespace A242587.P7539363467705487365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A242587.P7539363467705487365

/-! ## A242587.P7051457535777179131

`record[A246935(abs(A046691(n)))]`
-/

namespace A242587.P7051457535777179131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242587.P7051457535777179131

/-! ## A242587.P16087791080168282837

`record[A246935(A038722(A167499(n)))]`
-/

namespace A242587.P16087791080168282837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (A038722 (A167499 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242587.P16087791080168282837

/-!
# A242589: Primes p such that p = the cumulative sum of the digit-sum in base 15 of the digit-product in base 4 of each prime < p.

The programs for A242589, there is no canonical definition to state claims against.
-/

/-! ## A242589.P10470958562579350660

`p?[A069623(A197878(n+1)²)]`
-/

namespace A242589.P10470958562579350660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069623 (A197878 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242589.P10470958562579350660

/-! ## A242589.P1176557078115995250

`p?[∑[A061280(A309548(n+1))]]`
-/

namespace A242589.P1176557078115995250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061280 (A309548 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242589.P1176557078115995250

/-!
# A242590: Numbers whose representation in Roman numerals is horizontally symmetrical.

The programs for A242590, there is no canonical definition to state claims against.
-/

/-! ## A242590.P152622913637382096

`record[A222244(n)+A000007(25*n)]`
-/

namespace A242590.P152622913637382096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222244 n + A000007 (25 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242590.P152622913637382096

/-! ## A242590.P458414054031626354

`record[A222244(n+1)%A222263(2*(n+1))]`
-/

namespace A242590.P458414054031626354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222244 (n + 1)) (A222263 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242590.P458414054031626354

/-! ## A242590.P16922081191090942534

`record[A222244(n+1)]%A222267(2*n+3)`
-/

namespace A242590.P16922081191090942534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A222267 (2 * n + 3))

end

end A242590.P16922081191090942534

/-! ## A242590.P9321073750020991045

`record[A222244(A036987(A000096(n))+n)]`
-/

namespace A242590.P9321073750020991045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222244 (A036987 (A000096 n).toNat + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242590.P9321073750020991045

/-! ## A242590.P3774593521373915408

`record[A222244(A023193(n+1))]`
-/

namespace A242590.P3774593521373915408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222244 (A023193 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242590.P3774593521373915408

/-! ## A242590.P5666033293977352302

`record[A222244(A036987(n²)+n)]`
-/

namespace A242590.P5666033293977352302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222244 (A036987 (n ^ 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242590.P5666033293977352302

/-!
# A242592: Squarefree semiprimes, n=p*q, where reversal(n) is semiprime and reversal(n) = reversal(p)*reversal(q).

The programs for A242592, there is no canonical definition to state claims against.
-/

/-! ## A242592.P6350767307798620122

`record[A007913(A239307(n+2))]`
-/

namespace A242592.P6350767307798620122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A239307 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242592.P6350767307798620122

/-! ## A242592.P13265811676508690240

`filter[A239307(n+1), A008966(#)]`
-/

namespace A242592.P13265811676508690240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A242592.P13265811676508690240

/-! ## A242592.P693106775919997034

`filter[A239307(n+1), A049240(#)]`
-/

namespace A242592.P693106775919997034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A242592.P693106775919997034

/-! ## A242592.P11537221621965673744

`filter[A239307(n+1), A181183(#)]`
-/

namespace A242592.P11537221621965673744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A242592.P11537221621965673744

/-! ## A242592.P11925260676032426481

`filter[A239307(n+1), A262684(#)]`
-/

namespace A242592.P11925260676032426481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262684 (f1 j).toNat = 1) n)

end

end A242592.P11925260676032426481

/-! ## A242592.P15036793069456631215

`filter[A239307(n+1), A280710(#)]`
-/

namespace A242592.P15036793069456631215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A242592.P15036793069456631215

/-! ## A242592.P9751604430391382101

`filter[A239307(n+1), A295316(#)]`
-/

namespace A242592.P9751604430391382101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A242592.P9751604430391382101

/-! ## A242592.P6759433096066254929

`filter[A239307(n+1), A323154(#)]`
-/

namespace A242592.P6759433096066254929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A242592.P6759433096066254929

/-! ## A242592.P11028393954283978847

`filter[A239307(n+1), A343219(#)]`
-/

namespace A242592.P11028393954283978847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A343219 (f1 j).toNat = 1) n)

end

end A242592.P11028393954283978847

/-! ## A242592.P5092031114846919964

`filter[A239307(n+1), A353471(#)]`
-/

namespace A242592.P5092031114846919964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A242592.P5092031114846919964

/-! ## A242592.P6988283074564149321

`filter[A239307(n+1), A353519(#)]`
-/

namespace A242592.P6988283074564149321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A242592.P6988283074564149321

/-! ## A242592.P18258161364716679160

`filter[A239307(n+1), A353559(#)]`
-/

namespace A242592.P18258161364716679160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A242592.P18258161364716679160

/-! ## A242592.P18440860504934110737

`filter[A239307(n+1), A353629(#)]`
-/

namespace A242592.P18440860504934110737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353629 (f1 j).toNat = 1) n)

end

end A242592.P18440860504934110737

/-! ## A242592.P15933157264397996042

`filter[A239307(n+1), A353669(#)]`
-/

namespace A242592.P15933157264397996042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353669 (f1 j).toNat = 1) n)

end

end A242592.P15933157264397996042

/-! ## A242592.P6801804840508996088

`filter[A239307(n+2), A353627(#)]`
-/

namespace A242592.P6801804840508996088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239307 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A242592.P6801804840508996088

/-! ## A242592.P1838435813999397540

`filter[A239307(n+2), A353628(#)]`
-/

namespace A242592.P1838435813999397540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239307 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353628 (f1 j).toNat = 1) n)

end

end A242592.P1838435813999397540

/-! ## A242592.P10627849675903442613

`∩[A006881(n+1), A239307(n+1)]`
-/

namespace A242592.P10627849675903442613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242592.P10627849675903442613

/-! ## A242592.P10750393810523021698

`∩[A007422(n+1), A239307(n+1)]`
-/

namespace A242592.P10750393810523021698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242592.P10750393810523021698

/-! ## A242592.P11646362683644246624

`∩[A030513(n+1), A239307(n+1)]`
-/

namespace A242592.P11646362683644246624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242592.P11646362683644246624

/-! ## A242592.P16114331266612995176

`∩[A068993(n+1), A239307(n+1)]`
-/

namespace A242592.P16114331266612995176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242592.P16114331266612995176

/-!
# A242593: Triangular array read by rows: T(n,k) is the number of length n words on {B,G} that contain exactly k occurrences of the contiguous substrings BGB or GBG. The substrings are allowed to overlap; n>=0, 0<=k<=max(n-2,0).

The programs for A242593, there is no canonical definition to state claims against.
-/

/-! ## A242593.P5935791961560134994

`∏{e}[A003945(n), A076791(#)]`
-/

namespace A242593.P5935791961560134994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A076791 (Nat.factorization (f1 n).natAbs p)

end

end A242593.P5935791961560134994

/-!
# A242594: Numbers k such that 4^k has initial digit 4.

The programs for A242594, the canonical program `A242594.P11226976374991562602` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242594 has offset 1).

The definition of A242594 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4849 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242594.P11226976374991562602

`eq[4, A008952(2*n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A242594

/-- `eq[4, A008952(2*n)]` -/
def P11226976374991562602.Spec : Prop :=
  ∀ n, (P11226976374991562602.a n : ℤ) = A242594 (n + 1)

theorem P11226976374991562602.correct : P11226976374991562602.Spec := by
  intro n
  simp only [A242594, Nat.add_sub_cancel]

end A242594

/-! ## A242594.P712181073516451181

`eq[2, A008952(n+n)-2]`
-/

namespace A242594.P712181073516451181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 (n + n) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242594.P712181073516451181

namespace A242594

/-- `eq[2, A008952(n+n)-2]` -/
def P712181073516451181.Spec : Prop :=
  ∀ n, (P712181073516451181.a n : ℤ) = A242594 (n + 1)

end A242594

/-! ## A242594.P17994379474284145454

`eq[A008952(n), A010715(n)]/2`
-/

namespace A242594.P17994379474284145454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010715 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A242594.P17994379474284145454

namespace A242594

/-- `eq[A008952(n), A010715(n)]/2` -/
def P17994379474284145454.Spec : Prop :=
  ∀ n, P17994379474284145454.a n = (A242594 (n + 1) : ℚ)

end A242594

/-! ## A242594.P1067344308616466464

`A006370(eq[1-a(n-1), A008952(n)])` with `a(0)=4`
-/

namespace A242594.P1067344308616466464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  1 - f1 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A242594.P1067344308616466464

namespace A242594

/-- `A006370(eq[1-a(n-1), A008952(n)])` -/
def P1067344308616466464.Spec : Prop :=
  ∀ n, P1067344308616466464.a n = A242594 (n + 1)

end A242594

/-! ## A242594.P2693915492145818341

`A004525(eq[A008952(n), A010715(n)])`
-/

namespace A242594.P2693915492145818341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A242594.P2693915492145818341

namespace A242594

/-- `A004525(eq[A008952(n), A010715(n)])` -/
def P2693915492145818341.Spec : Prop :=
  ∀ n, P2693915492145818341.a n = A242594 (n + 1)

end A242594

/-! ## A242594.P15124475029963642825

`A006370(eq[A008952(n), A010715(n)])`
-/

namespace A242594.P15124475029963642825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A242594.P15124475029963642825

namespace A242594

/-- `A006370(eq[A008952(n), A010715(n)])` -/
def P15124475029963642825.Spec : Prop :=
  ∀ n, P15124475029963642825.a n = A242594 (n + 1)

end A242594

/-! ## A242594.P17880454108489025680

`A025480(eq[A008952(n), A010715(n)])`
-/

namespace A242594.P17880454108489025680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A242594.P17880454108489025680

namespace A242594

/-- `A025480(eq[A008952(n), A010715(n)])` -/
def P17880454108489025680.Spec : Prop :=
  ∀ n, P17880454108489025680.a n = A242594 (n + 1)

end A242594

/-!
# A242595: a(n) is the primitive period length for the sequence 2^k (mod n), k = 1, 2, ...

The programs for A242595, there is no canonical definition to state claims against.
-/

/-! ## A242595.P14395118655229073353

`char[comp[or(3, n)]]*A007733(n+1)`
-/

namespace A242595.P14395118655229073353
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A007733 (n + 1)

end

end A242595.P14395118655229073353

/-! ## A242595.P8347948233352435187

`∑[A102560(n)]*A007733(n+1)`
-/

namespace A242595.P8347948233352435187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A007733 (n + 1)

end

end A242595.P8347948233352435187

/-! ## A242595.P16573028053808079063

`char[A004773(n)]*A007733(n+1)`
-/

namespace A242595.P16573028053808079063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A007733 (n + 1)

end

end A242595.P16573028053808079063

/-! ## A242595.P8966439378509698112

`char[A131452(n)]*A007733(n+1)`
-/

namespace A242595.P8966439378509698112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131452 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A007733 (n + 1)

end

end A242595.P8966439378509698112

/-! ## A242595.P15312941273240028298

`A007733(n+1)*A152822(n+3)`
-/

namespace A242595.P15312941273240028298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (n + 1) * A152822 (n + 3)

end

end A242595.P15312941273240028298

/-! ## A242595.P18341550347205240440

`A007733(n+1)%A075554(n+1)`
-/

namespace A242595.P18341550347205240440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007733 (n + 1)) (A075554 (n + 1))

end

end A242595.P18341550347205240440

/-! ## A242595.P13753886930888842865

`lcm(A007733(n+1), A112299(n+1))`
-/

namespace A242595.P13753886930888842865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007733 (n + 1)) (A112299 (n + 1))

end

end A242595.P13753886930888842865

/-! ## A242595.P8785409450049896604

`A005920(n)%2*A007733(n+1)`
-/

namespace A242595.P8785409450049896604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005920 n) 2 * A007733 (n + 1)

end

end A242595.P8785409450049896604

/-! ## A242595.P4550020934980847676

`char[A002264(4*n)]*A007733(n+1)`
-/

namespace A242595.P4550020934980847676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (4 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A007733 (n + 1)

end

end A242595.P4550020934980847676

/-! ## A242595.P7055341722049699123

`lcm(A007733(n+1), A008683(A345225(n)))`
-/

namespace A242595.P7055341722049699123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007733 (n + 1)) (A008683 (A345225 n).toNat)

end

end A242595.P7055341722049699123

/-!
# A242597: One half of the denominators of the partial sums of dilog(1/2).

The programs for A242597, there is no canonical definition to state claims against.
-/

/-! ## A242597.P8390810868202509286

`A001221(A048617(n))*A111919(n+1)`
-/

namespace A242597.P8390810868202509286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A048617 n).toNat * A111919 (n + 1)

end

end A242597.P8390810868202509286

/-! ## A242597.P4934309898084665013

`A111919(n+1)*A193773(A014566(n))`
-/

namespace A242597.P4934309898084665013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111919 (n + 1) * A193773 (A014566 n).toNat

end

end A242597.P4934309898084665013

/-!
# A242598: Triangle read by rows: T(n,k) is the coefficient A_k in the transformation of 1 + x + x^2 + ... + x^n to the polynomial A_k*(x-k)^k for 0 <= k <= n.

The programs for A242598, there is no canonical definition to state claims against.
-/

/-! ## A242598.P6197404799415383166

`A110197(n^A135302(n))`
-/

namespace A242598.P6197404799415383166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110197 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A135302 n : ℤ))).toNat

end

end A242598.P6197404799415383166

/-! ## A242598.P903169744055757573

`A325107(A215080(n+1))%A000040(n+2)`
-/

namespace A242598.P903169744055757573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325107 (A215080 (n + 1)).toNat) (A000040 (n + 2))

end

end A242598.P903169744055757573

