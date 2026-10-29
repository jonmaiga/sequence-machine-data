import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
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
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C043
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
# A275500: Number of nX4 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,0) or (-1,-1) and new values introduced in order 0..2.

The programs for A275500, there is no canonical definition to state claims against.
-/

/-! ## A275500.P13387312942292206466

`A275504(A141214(n+1))`
-/

namespace A275500.P13387312942292206466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275504 (A141214 (n + 1)).toNat

end

end A275500.P13387312942292206466

/-! ## A275500.P7781340818194175416

`A275504(A027379(n+2))`
-/

namespace A275500.P7781340818194175416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275504 (A027379 (n + 2)).toNat

end

end A275500.P7781340818194175416

/-! ## A275500.P10291779353329789305

`A275504(A055998(n+2))`
-/

namespace A275500.P10291779353329789305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275504 (A055998 (n + 2)).toNat

end

end A275500.P10291779353329789305

/-! ## A275500.P16569266080758220122

`A275504(A155212(n)+5)`
-/

namespace A275500.P16569266080758220122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275504 (A155212 n + 5).toNat

end

end A275500.P16569266080758220122

/-! ## A275500.P10896070559682357767

`A275504(A056000(n)+7)`
-/

namespace A275500.P10896070559682357767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275504 (A056000 n + 7).toNat

end

end A275500.P10896070559682357767

/-!
# A275501: Number of nX5 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,0) or (-1,-1) and new values introduced in order 0..2.

The programs for A275501, there is no canonical definition to state claims against.
-/

/-! ## A275501.P5323904974110140205

`A275504(A046691(n+3))`
-/

namespace A275501.P5323904974110140205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275504 (A046691 (n + 3)).toNat

end

end A275501.P5323904974110140205

/-! ## A275501.P2624504994793850242

`A275504(Δ[A023545(n+1)])`
-/

namespace A275501.P2624504994793850242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275504 (f1 (n + 1) - f1 n).toNat

end

end A275501.P2624504994793850242

/-! ## A275501.P7261339340812767926

`A275504(A052905(n+2)+1)`
-/

namespace A275501.P7261339340812767926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275504 (A052905 (n + 2) + 1).toNat

end

end A275501.P7261339340812767926

/-! ## A275501.P7148110102275639599

`A275504(A055998(n+3)-1)`
-/

namespace A275501.P7148110102275639599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275504 (A055998 (n + 3) - 1).toNat

end

end A275501.P7148110102275639599

/-! ## A275501.P7820141308003575993

`A275504(A034856(n+4)-2)`
-/

namespace A275501.P7820141308003575993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275504 (A034856 (n + 4) - 2).toNat

end

end A275501.P7820141308003575993

/-!
# A275502: Number of nX6 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,0) or (-1,-1) and new values introduced in order 0..2.

The programs for A275502, there is no canonical definition to state claims against.
-/

/-! ## A275502.P4441013242439839962

`A275504(A052905(n+3))`
-/

namespace A275502.P4441013242439839962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275504 (A052905 (n + 3)).toNat

end

end A275502.P4441013242439839962

/-! ## A275502.P2459866028525122847

`A275504(A046691(n+4)-1)`
-/

namespace A275502.P2459866028525122847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275504 (A046691 (n + 4) - 1).toNat

end

end A275502.P2459866028525122847

/-! ## A275502.P5526837294426213933

`A275504(A055998(n+4)-2)`
-/

namespace A275502.P5526837294426213933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275504 (A055998 (n + 4) - 2).toNat

end

end A275502.P5526837294426213933

/-! ## A275502.P1401129940377133604

`A275504(A000124(n+6)-6)`
-/

namespace A275502.P1401129940377133604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275504 (A000124 (n + 6) - 6).toNat

end

end A275502.P1401129940377133604

/-! ## A275502.P7154329676352750

`A275504(Δ[A023545(n+2)]-1)`
-/

namespace A275502.P7154329676352750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275504 (f1 (n + 1) - f1 n - 1).toNat

end

end A275502.P7154329676352750

/-!
# A275503: Number of nX7 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,0) or (-1,-1) and new values introduced in order 0..2.

The programs for A275503, there is no canonical definition to state claims against.
-/

/-! ## A275503.P7912678087337793560

`A275504(A055999(n+4))`
-/

namespace A275503.P7912678087337793560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275504 (A055999 (n + 4)).toNat

end

end A275503.P7912678087337793560

/-! ## A275503.P8474694769335437413

`A275504(A052905(n+4)-1)`
-/

namespace A275503.P8474694769335437413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275504 (A052905 (n + 4) - 1).toNat

end

end A275503.P8474694769335437413

/-! ## A275503.P15870702560966918075

`A275504(A046691(n+5)-2)`
-/

namespace A275503.P15870702560966918075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275504 (A046691 (n + 5) - 2).toNat

end

end A275503.P15870702560966918075

/-! ## A275503.P6375030521481569305

`A275504(A000124(n+7)-7)`
-/

namespace A275503.P6375030521481569305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275504 (A000124 (n + 7) - 7).toNat

end

end A275503.P6375030521481569305

/-! ## A275503.P1537981126489179733

`A275504(A005408(n)+A034856(n+4)+8)`
-/

namespace A275503.P1537981126489179733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275504 (A005408 n + (A034856 (n + 4) + 8)).toNat

end

end A275503.P1537981126489179733

/-!
# A275504: T(n,k)=Number of nXk 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,0) or (-1,-1) and new values introduced in order 0..2.

The programs for A275504, there is no canonical definition to state claims against.
-/

/-! ## A275504.P5130894561898011673

`A275401(n+1)-A004531(A225809(n+1))`
-/

namespace A275504.P5130894561898011673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (n + 1) - A004531 (A225809 (n + 1)).toNat

end

end A275504.P5130894561898011673

/-! ## A275504.P4850305348306141758

`A275401(n+1)-A205295(A191670(n+1))`
-/

namespace A275504.P4850305348306141758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (n + 1) - A205295 (A191670 (n + 1)).toNat

end

end A275504.P4850305348306141758

/-! ## A275504.P15661686260156694629

`A275401(n+1)-A113652(A275407(2*n+5))`
-/

namespace A275504.P15661686260156694629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (n + 1) - A113652 (A275407 (2 * n + 5)).toNat

end

end A275504.P15661686260156694629

/-!
# A275505: Number of 5 X n 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,0) or (-1,-1) and new values introduced in order 0..2.

The programs for A275505, the canonical program `A275505.P14987469937065214546` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275505 has offset 1).

The definition of A275505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275505.P12788378589782003739

`Δ[ogf(4/(1-4x-2x^2+4x^3+x^4))]`
-/

namespace A275505.P12788378589782003739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4] [1, -4, -2, 4, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275505.P12788378589782003739

namespace A275505

/-- `Δ[ogf(4/(1-4x-2x^2+4x^3+x^4))]` -/
def P12788378589782003739.Spec : Prop :=
  ∀ n, P12788378589782003739.a n = A275505 (n + 1)

end A275505

/-! ## A275505.P13411871757152028005

`ogf((12+20x+4x^2)/(1-3x-5x^2-x^3))`
-/

namespace A275505.P13411871757152028005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [12, 20, 4] [1, -3, -5, -1] n

end

end A275505.P13411871757152028005

namespace A275505

/-- `ogf((12+20x+4x^2)/(1-3x-5x^2-x^3))` -/
def P13411871757152028005.Spec : Prop :=
  ∀ n, P13411871757152028005.a n = A275505 (n + 1)

end A275505

/-! ## A275505.P14987469937065214546

`3*a(n-1)+5*a(n-2)+a(n-3)` with `a(0)=12, a(1)=56, a(2)=232`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A275505

/-- `3*a(n-1)+5*a(n-2)+a(n-3)` -/
def P14987469937065214546.Spec : Prop :=
  ∀ n, (P14987469937065214546.a n : ℤ) = A275505 (n + 1)

theorem P14987469937065214546.correct : P14987469937065214546.Spec := by
  intro n
  simp only [A275505, Nat.add_sub_cancel]

end A275505

/-! ## A275505.P12922647000294600519

`4*A110526(n+2)`
-/

namespace A275505.P12922647000294600519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A110526 (n + 2)

end

end A275505.P12922647000294600519

namespace A275505

/-- `4*A110526(n+2)` -/
def P12922647000294600519.Spec : Prop :=
  ∀ n, P12922647000294600519.a n = A275505 (n + 1)

end A275505

/-! ## A275505.P17029493098338297959

`Δ[A140413(n+2)/2]`
-/

namespace A275505.P17029493098338297959
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140413 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275505.P17029493098338297959

namespace A275505

/-- `Δ[A140413(n+2)/2]` -/
def P17029493098338297959.Spec : Prop :=
  ∀ n, P17029493098338297959.a n = (A275505 (n + 1) : ℚ)

end A275505

/-! ## A275505.P4822535253027061845

`Δ[A173434(3*(n+2))]`
-/

namespace A275505.P4822535253027061845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173434 (3 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275505.P4822535253027061845

namespace A275505

/-- `Δ[A173434(3*(n+2))]` -/
def P4822535253027061845.Spec : Prop :=
  ∀ n, P4822535253027061845.a n = A275505 (n + 1)

end A275505

/-! ## A275505.P6776341417552753787

`A008346(3*(n+2)+1)`
-/

namespace A275505.P6776341417552753787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008346 (3 * (n + 2) + 1)

end

end A275505.P6776341417552753787

namespace A275505

/-- `A008346(3*(n+2)+1)` -/
def P6776341417552753787.Spec : Prop :=
  ∀ n, P6776341417552753787.a n = A275505 (n + 1)

end A275505

/-! ## A275505.P18383563055364848793

`2*A024490(3*(n+2))`
-/

namespace A275505.P18383563055364848793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024490 (3 * (n + 2))

end

end A275505.P18383563055364848793

namespace A275505

/-- `2*A024490(3*(n+2))` -/
def P18383563055364848793.Spec : Prop :=
  ∀ n, P18383563055364848793.a n = A275505 (n + 1)

end A275505

/-! ## A275505.P12699794432214787574

`4*A131132(3*(n+1))`
-/

namespace A275505.P12699794432214787574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A131132 (3 * (n + 1))

end

end A275505.P12699794432214787574

namespace A275505

/-- `4*A131132(3*(n+1))` -/
def P12699794432214787574.Spec : Prop :=
  ∀ n, P12699794432214787574.a n = A275505 (n + 1)

end A275505

/-! ## A275505.P10558664962466766383

`2*A293014(3*(n+3))`
-/

namespace A275505.P10558664962466766383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A293014 (3 * (n + 3))

end

end A275505.P10558664962466766383

namespace A275505

/-- `2*A293014(3*(n+3))` -/
def P10558664962466766383.Spec : Prop :=
  ∀ n, P10558664962466766383.a n = A275505 (n + 1)

end A275505

/-! ## A275505.P162807814395384138

`4*(∑[A110679(n+1)]+1)`
-/

namespace A275505.P162807814395384138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A275505.P162807814395384138

namespace A275505

/-- `4*(∑[A110679(n+1)]+1)` -/
def P162807814395384138.Spec : Prop :=
  ∀ n, P162807814395384138.a n = A275505 (n + 1)

end A275505

/-! ## A275505.P4441790124062832456

`2*A174618(6*(n+2)+1)`
-/

namespace A275505.P4441790124062832456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174618 (6 * (n + 2) + 1)

end

end A275505.P4441790124062832456

namespace A275505

/-- `2*A174618(6*(n+2)+1)` -/
def P4441790124062832456.Spec : Prop :=
  ∀ n, P4441790124062832456.a n = A275505 (n + 1)

end A275505

/-! ## A275505.P1838768687754834105

`A033887(n+2)-A033999(n)`
-/

namespace A275505.P1838768687754834105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033887 (n + 2) - A033999 n

end

end A275505.P1838768687754834105

namespace A275505

/-- `A033887(n+2)-A033999(n)` -/
def P1838768687754834105.Spec : Prop :=
  ∀ n, P1838768687754834105.a n = A275505 (n + 1)

end A275505

/-! ## A275505.P17972904508761534583

`A033999(n+1)+A033887(n+2)`
-/

namespace A275505.P17972904508761534583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) + A033887 (n + 2)

end

end A275505.P17972904508761534583

namespace A275505

/-- `A033999(n+1)+A033887(n+2)` -/
def P17972904508761534583.Spec : Prop :=
  ∀ n, P17972904508761534583.a n = A275505 (n + 1)

end A275505

/-! ## A275505.P8103314939568907292

`A110527(n+3)-A001076(n+3)`
-/

namespace A275505.P8103314939568907292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110527 (n + 3) - A001076 (n + 3)

end

end A275505.P8103314939568907292

namespace A275505

/-- `A110527(n+3)-A001076(n+3)` -/
def P8103314939568907292.Spec : Prop :=
  ∀ n, P8103314939568907292.a n = A275505 (n + 1)

end A275505

/-! ## A275505.P14457560112292904170

`A228826(2*n+1)+A033887(n+2)`
-/

namespace A275505.P14457560112292904170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228826 (2 * n + 1) + A033887 (n + 2)

end

end A275505.P14457560112292904170

namespace A275505

/-- `A228826(2*n+1)+A033887(n+2)` -/
def P14457560112292904170.Spec : Prop :=
  ∀ n, P14457560112292904170.a n = A275505 (n + 1)

end A275505

/-! ## A275505.P13707250764232536579

`Δ[A000034(n+1)+Δ[A049652(n+1)]]`
-/

namespace A275505.P13707250764232536579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049652 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275505.P13707250764232536579

namespace A275505

/-- `Δ[A000034(n+1)+Δ[A049652(n+1)]]` -/
def P13707250764232536579.Spec : Prop :=
  ∀ n, P13707250764232536579.a n = A275505 (n + 1)

end A275505

/-! ## A275505.P3220717098558087350

`A001077(n+1)+A110528(n)+A048878(n+1)`
-/

namespace A275505.P3220717098558087350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001077 (n + 1) + (A110528 n + A048878 (n + 1))

end

end A275505.P3220717098558087350

namespace A275505

/-- `A001077(n+1)+A110528(n)+A048878(n+1)` -/
def P3220717098558087350.Spec : Prop :=
  ∀ n, P3220717098558087350.a n = A275505 (n + 1)

end A275505

/-! ## A275505.P9391547546427295393

`Δ[Δ[A110679(n+1)/2]]`
-/

namespace A275505.P9391547546427295393
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110679 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275505.P9391547546427295393

namespace A275505

/-- `Δ[Δ[A110679(n+1)/2]]` -/
def P9391547546427295393.Spec : Prop :=
  ∀ n, P9391547546427295393.a n = (A275505 (n + 1) : ℚ)

end A275505

/-! ## A275505.P18343837460707949509

`A110528(n+2)-A048875(n+2)`
-/

namespace A275505.P18343837460707949509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110528 (n + 2) - A048875 (n + 2)

end

end A275505.P18343837460707949509

namespace A275505

/-- `A110528(n+2)-A048875(n+2)` -/
def P18343837460707949509.Spec : Prop :=
  ∀ n, P18343837460707949509.a n = A275505 (n + 1)

end A275505

/-!
# A275506: Number of 6 X n 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,0) or (-1,-1) and new values introduced in order 0..2.

The programs for A275506, the canonical program `A275506.P14349819221975071259` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275506 has offset 1).

The definition of A275506 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275506.P14349819221975071259

`ogf((24+32x-36x^2-56x^3+20x^4)/(1-3x-10x^2-4x^3+4x^4))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A275506

/-- `ogf((24+32x-36x^2-56x^3+20x^4)/(1-3x-10x^2-4x^3+4x^4))` -/
def P14349819221975071259.Spec : Prop :=
  ∀ n, P14349819221975071259.a n = A275506 (n + 1)

theorem P14349819221975071259.correct : P14349819221975071259.Spec := by
  intro n
  simp only [A275506, Nat.add_sub_cancel]

end A275506

/-! ## A275506.P8447574279521148784

`A275504(A000217(n+5)+6)`
-/

namespace A275506.P8447574279521148784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275504 (A000217 (n + 5) + 6).toNat

end

end A275506.P8447574279521148784

namespace A275506

/-- `A275504(A000217(n+5)+6)` -/
def P8447574279521148784.Spec : Prop :=
  ∀ n, P8447574279521148784.a n = A275506 (n + 1)

end A275506

/-! ## A275506.P4969460016873565615

`A275504(A141214(n+2)+9)`
-/

namespace A275506.P4969460016873565615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275504 (A141214 (n + 2) + 9).toNat

end

end A275506.P4969460016873565615

namespace A275506

/-- `A275504(A141214(n+2)+9)` -/
def P4969460016873565615.Spec : Prop :=
  ∀ n, P4969460016873565615.a n = A275506 (n + 1)

end A275506

/-! ## A275506.P4365164444736480110

`A275504(A034856(n+4)+8)`
-/

namespace A275506.P4365164444736480110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275504 (A034856 (n + 4) + 8).toNat

end

end A275506.P4365164444736480110

namespace A275506

/-- `A275504(A034856(n+4)+8)` -/
def P4365164444736480110.Spec : Prop :=
  ∀ n, P4365164444736480110.a n = A275506 (n + 1)

end A275506

/-! ## A275506.P8007707011809896958

`A275504(Δ[A023545(n+2)]-(n-4))`
-/

namespace A275506.P8007707011809896958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275504 (f1 (n + 1) - f1 n - ((n : ℤ) - 4)).toNat

end

end A275506.P8007707011809896958

namespace A275506

/-- `A275504(Δ[A023545(n+2)]-(n-4))` -/
def P8007707011809896958.Spec : Prop :=
  ∀ n, P8007707011809896958.a n = A275506 (n + 1)

end A275506

/-!
# A275507: Number of 7 X n 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,0) or (-1,-1) and new values introduced in order 0..2.

The programs for A275507, there is no canonical definition to state claims against.
-/

/-! ## A275507.P10174902202357588707

`A275504(A167487(n+5))`
-/

namespace A275507.P10174902202357588707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275504 (A167487 (n + 5)).toNat

end

end A275507.P10174902202357588707

/-! ## A275507.P14876488159935193365

`A275504(A167499(n+5)+2)`
-/

namespace A275507.P14876488159935193365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275504 (A167499 (n + 5) + 2).toNat

end

end A275507.P14876488159935193365

/-! ## A275507.P17961569909532235784

`A275504(A000217(n+6)+7)`
-/

namespace A275507.P17961569909532235784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275504 (A000217 (n + 6) + 7).toNat

end

end A275507.P17961569909532235784

/-! ## A275507.P16859685830031842577

`A275504(A161680(n+7)+7)`
-/

namespace A275507.P16859685830031842577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275504 (A161680 (n + 7) + 7).toNat

end

end A275507.P16859685830031842577

/-! ## A275507.P13859231516664794717

`A275504(A000124(n+8)-A004273(n+5))`
-/

namespace A275507.P13859231516664794717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275504 (A000124 (n + 8) - A004273 (n + 5)).toNat

end

end A275507.P13859231516664794717

/-!
# A275508: First occurrence of a run of exactly n consecutive integers with an even number of prime factors.

The programs for A275508, there is no canonical definition to state claims against.
-/

/-! ## A275508.P4875487117196962452

`A020639(A125651(n+1))*A125667(A125658(n))`
-/

namespace A275508.P4875487117196962452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A125651 (n + 1)).toNat * A125667 (A125658 n).toNat

end

end A275508.P4875487117196962452

/-!
# A275510: Triangle read by rows, T(n,k) = floor(n/k) - 2*floor(n/(2*k)), for n>=2 and 2<=k<=n; additionally T(1,2) = 0.

The programs for A275510, there is no canonical definition to state claims against.
-/

/-! ## A275510.P14748913516970527686

`A010766(comp[∑[char[2]+n]])%2`
-/

namespace A275510.P14748913516970527686
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010766 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) 2

end

end A275510.P14748913516970527686

/-! ## A275510.P5442965877873682217

`and(ceil(acot(n)), A010766(comp[∑[char[1]+n]]))`
-/

namespace A275510.P5442965877873682217
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌈SequenceMachineLib.acot (n : ℝ)⌉ (A010766 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A275510.P5442965877873682217

/-! ## A275510.P16130101529529745344

`and(ceil(sin(n)²), A010766(A080036(n)))`
-/

namespace A275510.P16130101529529745344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌈Real.sin (n : ℝ) ^ 2⌉ (A010766 (A080036 n).toNat)

end

end A275510.P16130101529529745344

/-! ## A275510.P14086287716054554065

`(A003988(n+1)%A029635(n)+1)%2`
-/

namespace A275510.P14086287716054554065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A003988 (n + 1)) (A029635 n) + 1) 2

end

end A275510.P14086287716054554065

/-! ## A275510.P17569894918261559953

`(A010766(comp[∑[n]])%A075196(n+1))%2`
-/

namespace A275510.P17569894918261559953
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A010766 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A075196 (n + 1))) 2

end

end A275510.P17569894918261559953

/-! ## A275510.P1998906393430518156

`and(A000051(n), A010766(A080036(n)))`
-/

namespace A275510.P1998906393430518156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000051 n) (A010766 (A080036 n).toNat)

end

end A275510.P1998906393430518156

/-! ## A275510.P6562301263615169935

`and(A010766(A080036(n)), A054977(n))`
-/

namespace A275510.P6562301263615169935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010766 (A080036 n).toNat) (A054977 n)

end

end A275510.P6562301263615169935

/-! ## A275510.P4864429929641051418

`and(A010766(A080036(n)), A057427(n))`
-/

namespace A275510.P4864429929641051418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010766 (A080036 n).toNat) (A057427 n)

end

end A275510.P4864429929641051418

/-! ## A275510.P3904099456922718365

`and(A000038(n)!, A010766(A080036(n)))`
-/

namespace A275510.P3904099456922718365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial (A000038 n).toNat : ℤ) (A010766 (A080036 n).toNat)

end

end A275510.P3904099456922718365

/-! ## A275510.P1161499090958655984

`and(A000040(n+1)², A010766(A080036(n)))`
-/

namespace A275510.P1161499090958655984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000040 (n + 1) ^ 2) (A010766 (A080036 n).toNat)

end

end A275510.P1161499090958655984

/-!
# A275514: Triangle read by rows: the coefficient [t^k] of the Ehrhart polynomial of the 2-hypersimplex in dimension n.

The programs for A275514, there is no canonical definition to state claims against.
-/

/-! ## A275514.P2274949263487271367

`A105809(n)-A001221(A041475(n))`
-/

namespace A275514.P2274949263487271367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105809 n - A001221 (A041475 n).toNat

end

end A275514.P2274949263487271367

/-!
# A275515: Table read by rows: list of prime triples of the form (p, p+2, p+6).

The programs for A275515, there is no canonical definition to state claims against.
-/

/-! ## A275515.P15976716351046883264

`A123252(A275513(n+2))`
-/

namespace A275515.P15976716351046883264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123252 (A275513 (n + 2)).toNat

end

end A275515.P15976716351046883264

/-! ## A275515.P10792773652390344736

`A107257(A275513(n+2)-1)`
-/

namespace A275515.P10792773652390344736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107257 (A275513 (n + 2) - 1).toNat

end

end A275515.P10792773652390344736

/-! ## A275515.P5605955520739634909

`p?[Δ[A056172((4*n+1)²)]]`
-/

namespace A275515.P5605955520739634909
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 ((4 * n + 1) ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A275515.P5605955520739634909

/-! ## A275515.P6503401509182439634

`A107257(A048410(n+1))`
-/

namespace A275515.P6503401509182439634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107257 (A048410 (n + 1)).toNat

end

end A275515.P6503401509182439634

/-! ## A275515.P8147484288034222407

`A107257(A341011(n+1))`
-/

namespace A275515.P8147484288034222407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107257 (A341011 (n + 1)).toNat

end

end A275515.P8147484288034222407

/-!
# A275516: Table read by rows: list of prime triples of the form (p, p+4, p+6).

The programs for A275516, there is no canonical definition to state claims against.
-/

/-! ## A275516.P10799601212376418252

`A137847(∑[p?[xor(n, n+1)]]+7)`
-/

namespace A275516.P10799601212376418252
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137847 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A275516.P10799601212376418252

/-! ## A275516.P11856272297895987101

`p?[C(A255395(n+3), A255361(n))]`
-/

namespace A275516.P11856272297895987101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A255395 (n + 3)).toNat (A255361 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A275516.P11856272297895987101

/-! ## A275516.P16638495276176708114

`p?[A345435(n+1)+A246146(3*n+1)]`
-/

namespace A275516.P16638495276176708114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345435 (n + 1) + A246146 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A275516.P16638495276176708114

/-!
# A275517: Number of n-block bicoverings of an n-set.

The programs for A275517, there is no canonical definition to state claims against.
-/

/-! ## A275517.P2354489601484339655

`A110656(A055519(n)-n)`
-/

namespace A275517.P2354489601484339655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A055519 n - (n : ℤ)).toNat

end

end A275517.P2354489601484339655

/-! ## A275517.P11826608524072519064

`A060646(A294603(n))-n`
-/

namespace A275517.P11826608524072519064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060646 (A294603 n).toNat - (n : ℤ)

end

end A275517.P11826608524072519064

/-!
# A275518: Number of simplices in corner-cut triangulation of the n-cube.

The programs for A275518, there is no canonical definition to state claims against.
-/

/-! ## A275518.P8142999016087568776

`A261231(A078009(n))+n`
-/

namespace A275518.P8142999016087568776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261231 (A078009 n).toNat + (n : ℤ)

end

end A275518.P8142999016087568776

/-! ## A275518.P1437894519672726207

`A036234(A365773(n)+n)`
-/

namespace A275518.P1437894519672726207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A365773 n + (n : ℤ)).toNat

end

end A275518.P1437894519672726207

/-!
# A275521: Number of (n+floor(n/2))-block bicoverings of an n-set.

The programs for A275521, there is no canonical definition to state claims against.
-/

/-! ## A275521.P1620446757243096917

`A201636(∑[A248034(n)])`
-/

namespace A275521.P1620446757243096917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201636 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A275521.P1620446757243096917

/-! ## A275521.P11237066158958507051

`A201636(eq[1, A053538(n)])`
-/

namespace A275521.P11237066158958507051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275521.P11237066158958507051

/-! ## A275521.P5392932483868448320

`A201636(eq[1, A101566(n)])`
-/

namespace A275521.P5392932483868448320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275521.P5392932483868448320

/-! ## A275521.P10047256436571012797

`A201636(eq[1, A169945(n)])`
-/

namespace A275521.P10047256436571012797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275521.P10047256436571012797

/-! ## A275521.P124431364902916137

`A201636(eq[1, A169946(n)])`
-/

namespace A275521.P124431364902916137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275521.P124431364902916137

/-!
# A275527: Number of distinct classes of permutations of length n under reversal and complement to n+1.

The programs for A275527, there is no canonical definition to state claims against.
-/

/-! ## A275527.P17557055538695819811

`A113247(n)-A142150(A006882(n))`
-/

namespace A275527.P17557055538695819811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113247 n - A142150 (A006882 n).toNat

end

end A275527.P17557055538695819811

/-! ## A275527.P14493815221292743318

`A065033(A006882(n))*A172089(A000217(n))`
-/

namespace A275527.P14493815221292743318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A006882 n).toNat * A172089 (A000217 n).toNat

end

end A275527.P14493815221292743318

/-! ## A275527.P16446320867236846005

`(A037223(n)+A000142(n))/2-A142150(A006882(n))`
-/

namespace A275527.P16446320867236846005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037223 n + A000142 n : ℚ) / 2 - (A142150 (A006882 n).toNat : ℚ)

end

end A275527.P16446320867236846005

/-! ## A275527.P738524378464110125

`2*A300931(n)-A000085(n)-A142150(A006882(n))`
-/

namespace A275527.P738524378464110125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A300931 n - A000085 n - A142150 (A006882 n).toNat

end

end A275527.P738524378464110125

/-!
# A275528: Prime factors of numbers of the form 4^(2^m) - 2^(2^m) + 1 with m >= 0.

The programs for A275528, there is no canonical definition to state claims against.
-/

/-! ## A275528.P9001530312263748273

`A091937(A372891(n+1))`
-/

namespace A275528.P9001530312263748273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091937 (A372891 (n + 1)).toNat

end

end A275528.P9001530312263748273

/-! ## A275528.P11766326579287779470

`p?[A304804(record[A007426(2*n+1)])]`
-/

namespace A275528.P11766326579287779470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007426 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304804 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A275528.P11766326579287779470

/-!
# A275530: Smallest positive integer m such that (m^(2^n) + 1)/2 is prime.

The programs for A275530, there is no canonical definition to state claims against.
-/

/-! ## A275530.P16190666136434858894

`and(record[A337425(2*n+3)], A341211(n))`
-/

namespace A275530.P16190666136434858894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337425 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A341211 n)

end

end A275530.P16190666136434858894

/-! ## A275530.P4562218865073822294

`and(A188532(A341211(n)), A341211(n))`
-/

namespace A275530.P4562218865073822294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A188532 (A341211 n).toNat) (A341211 n)

end

end A275530.P4562218865073822294

/-! ## A275530.P2444425834796485368

`and(A023447(A045891(n+4)), A341211(n))`
-/

namespace A275530.P2444425834796485368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023447 (A045891 (n + 4)).toNat) (A341211 n)

end

end A275530.P2444425834796485368

/-! ## A275530.P780138671115233926

`A049154(((n+1)/∏{p}[n+1, #])^(Δ[n²]-∑{d}[n+1, #]+1)+1)`
-/

namespace A275530.P780138671115233926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049154 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)) ^ ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ) + 1 : ℤ) + 1)).toNat

end

end A275530.P780138671115233926

/-!
# A275531: Values taken by the sum of numbers in Collatz trajectory (A033493), sorted into ascending order.

The programs for A275531, there is no canonical definition to state claims against.
-/

/-! ## A275531.P16919357150053581991

`A275532(A348553(n)-A105517(n))`
-/

namespace A275531.P16919357150053581991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275532 (A348553 n - A105517 n).toNat

end

end A275531.P16919357150053581991

/-! ## A275531.P4467904996448333935

`A275532(n+1)%Δ[A317502(n)]`
-/

namespace A275531.P4467904996448333935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317502 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275532 (n + 1)) (f1 (n + 1) - f1 n)

end

end A275531.P4467904996448333935

/-! ## A275531.P10676068152515202201

`and(A275532(n+1), A387415(n+1))`
-/

namespace A275531.P10676068152515202201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A275532 (n + 1)) (A387415 (n + 1))

end

end A275531.P10676068152515202201

/-! ## A275531.P16491144365653869046

`and(A275532(n+1), A387418(n+1))`
-/

namespace A275531.P16491144365653869046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A275532 (n + 1)) (A387418 (n + 1))

end

end A275531.P16491144365653869046

/-! ## A275531.P5416719681238309229

`A326291(2*n+1)+A275532(n+1)`
-/

namespace A275531.P5416719681238309229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326291 (2 * n + 1) + A275532 (n + 1)

end

end A275531.P5416719681238309229

/-!
# A275532: Possible values for sum of numbers in Collatz trajectory (A033493), sorted into ascending order.

The programs for A275532, there is no canonical definition to state claims against.
-/

/-! ## A275532.P8702801559274613299

`record[A275531(A020986(n))]`
-/

namespace A275532.P8702801559274613299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275531 (A020986 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275532.P8702801559274613299

/-! ## A275532.P11055263425933433380

`record[A275531(A028920(n))]`
-/

namespace A275532.P11055263425933433380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275531 (A028920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275532.P11055263425933433380

/-! ## A275532.P17703437392521193871

`record[A275531(A117910(n))]`
-/

namespace A275532.P17703437392521193871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275531 (A117910 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275532.P17703437392521193871

/-! ## A275532.P9165846940867728640

`record[A275531(A126759(n))]`
-/

namespace A275532.P9165846940867728640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275531 (A126759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275532.P9165846940867728640

/-! ## A275532.P11365947856141689142

`record[A275531(A133310(n))]`
-/

namespace A275532.P11365947856141689142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275531 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275532.P11365947856141689142

/-! ## A275532.P11166489290112971300

`record[A275531(A134478(n))]`
-/

namespace A275532.P11166489290112971300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275531 (A134478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275532.P11166489290112971300

/-! ## A275532.P7867721206436198332

`record[A275531(A152271(n))]`
-/

namespace A275532.P7867721206436198332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275531 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275532.P7867721206436198332

/-! ## A275532.P1244466900969181028

`record[A275531(A331742(n))]`
-/

namespace A275532.P1244466900969181028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275531 (A331742 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275532.P1244466900969181028

/-! ## A275532.P5658611021951176643

`record[A275531(A003602(n+1))]`
-/

namespace A275532.P5658611021951176643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275531 (A003602 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275532.P5658611021951176643

/-! ## A275532.P18124433984379384631

`record[A275531(A026346(n+1))]`
-/

namespace A275532.P18124433984379384631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275531 (A026346 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275532.P18124433984379384631

/-!
# A275534: Number of primes of the form x^2 + y^2 less than or equal to 2*n^2.

The programs for A275534, the canonical program `A275534.P744122955191144669` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275534 has offset 1).

The definition of A275534 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 640 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275534.P744122955191144669

`A278114(n+1)-A267098(A278114(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A275534

/-- `A278114(n+1)-A267098(A278114(n+1))` -/
def P744122955191144669.Spec : Prop :=
  ∀ n, P744122955191144669.a n = A275534 (n + 1)

theorem P744122955191144669.correct : P744122955191144669.Spec := by
  intro n
  simp only [A275534, Nat.add_sub_cancel]

end A275534

/-! ## A275534.P6991076168407177766

`A292375(A060308((n+1)²))`
-/

namespace A275534.P6991076168407177766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292375 (A060308 ((n + 1) ^ 2)).toNat

end

end A275534.P6991076168407177766

namespace A275534

/-- `A292375(A060308((n+1)²))` -/
def P6991076168407177766.Spec : Prop :=
  ∀ n, P6991076168407177766.a n = A275534 (n + 1)

end A275534

/-! ## A275534.P11843678794175966438

`A066339(2*(n+1)²)+1`
-/

namespace A275534.P11843678794175966438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066339 (2 * (n + 1) ^ 2) + 1

end

end A275534.P11843678794175966438

namespace A275534

/-- `A066339(2*(n+1)²)+1` -/
def P11843678794175966438.Spec : Prop :=
  ∀ n, P11843678794175966438.a n = A275534 (n + 1)

end A275534

/-! ## A275534.P3716347615394894998

`A292375(A285738(n+1))`
-/

namespace A275534.P3716347615394894998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292375 (A285738 (n + 1)).toNat

end

end A275534.P3716347615394894998

namespace A275534

/-- `A292375(A285738(n+1))` -/
def P3716347615394894998.Spec : Prop :=
  ∀ n, P3716347615394894998.a n = A275534 (n + 1)

end A275534

/-! ## A275534.P7177295878293011095

`∑[A115623(∑[A202012(n)])]`
-/

namespace A275534.P7177295878293011095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202012 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115623 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275534.P7177295878293011095

namespace A275534

/-- `∑[A115623(∑[A202012(n)])]` -/
def P7177295878293011095.Spec : Prop :=
  ∀ n, P7177295878293011095.a n = A275534 (n + 1)

end A275534

/-!
# A275535: a(n) = the smallest positive multiple of n that is the sum of more than 1 consecutive positive integers.

The programs for A275535, there is no canonical definition to state claims against.
-/

/-! ## A275535.P14249019955403979453

`(n+1)*3^Δ[ceil(log2(n+1))]`
-/

namespace A275535.P14249019955403979453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 1 : ℝ)⌉

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (3 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A275535.P14249019955403979453

/-! ## A275535.P17699891673866589257

`Δ[2*a(floor(n/2))]+1+n` with `a(0)=2`
-/

namespace A275535.P17699891673866589257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  2 * f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1 + (n : ℤ)

end

end A275535.P17699891673866589257

/-! ## A275535.P16417585654903335001

`Δ[2*a(floor(n/2))]-xor(n, -1)` with `a(0)=2`
-/

namespace A275535.P16417585654903335001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  2 * f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - Int.xor (n : ℤ) (-1)

end

end A275535.P16417585654903335001

/-! ## A275535.P14617969574678542454

`2*C(and(n+1, 2*n), n)+n+1`
-/

namespace A275535.P14617969574678542454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (Nat.land (n + 1) (2 * n)) n + (n + 1)

end

end A275535.P14617969574678542454

/-! ## A275535.P12555260685063030321

`Δ[2/a(floor(n/2))^(-1)]+1+n` with `a(0)=2`
-/

namespace A275535.P12555260685063030321
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  2 / f1 ⌊(n : ℚ) / 2⌋.toNat ^ (-1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1 + (n : ℚ)

end

end A275535.P12555260685063030321

/-! ## A275535.P14121088105520720428

`xor(n, n+1)+abs(xor(n, n+1)-n)+1`
-/

namespace A275535.P14121088105520720428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (n + 1) : ℤ) + (|(Nat.xor n (n + 1) : ℤ) - (n : ℤ)| + 1)

end

end A275535.P14121088105520720428

/-! ## A275535.P6438817468392389212

`xor(n, A135561(n+1))`
-/

namespace A275535.P6438817468392389212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A135561 (n + 1))

end

end A275535.P6438817468392389212

/-! ## A275535.P3798510334199347949

`A099890(n+1)+1+n`
-/

namespace A275535.P3798510334199347949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099890 (n + 1) + 1 + (n : ℤ)

end

end A275535.P3798510334199347949

/-! ## A275535.P5672729308017557278

`2*A099894(n)+n+1`
-/

namespace A275535.P5672729308017557278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099894 n + (n + 1 : ℤ)

end

end A275535.P5672729308017557278

/-! ## A275535.P14650098235517675387

`A153151(2*(n+1))-n`
-/

namespace A275535.P14650098235517675387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153151 (2 * (n + 1)) - (n : ℤ)

end

end A275535.P14650098235517675387

/-!
# A275536: Differences of the exponents of the adjacent distinct powers of 2 in the binary representation of n (with -1 subtracted from the least exponent present) are concatenated as decimal digits in reverse order.

The programs for A275536, there is no canonical definition to state claims against.
-/

/-! ## A275536.P7411452410445212786

`A004086(A004719(A071160(n+1)))`
-/

namespace A275536.P7411452410445212786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A004719 (A071160 (n + 1)).toNat).toNat

end

end A275536.P7411452410445212786

/-! ## A275536.P17125328070205454060

`A069800(A209861(n+1))`
-/

namespace A275536.P17125328070205454060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069800 (A209861 (n + 1)).toNat

end

end A275536.P17125328070205454060

/-! ## A275536.P2579000997296507987

`A318926(A006068(n+1))`
-/

namespace A275536.P2579000997296507987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318926 (A006068 (n + 1)).toNat

end

end A275536.P2579000997296507987

/-! ## A275536.P4505847813228273064

`A318927(A341916(n+1))`
-/

namespace A275536.P4505847813228273064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318927 (A341916 (n + 1)).toNat

end

end A275536.P4505847813228273064

/-! ## A275536.P7004998488035629672

`∑{digits}[A096299(n+1), A178501(#)]`
-/

namespace A275536.P7004998488035629672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A178501 x).sum

end

end A275536.P7004998488035629672

/-! ## A275536.P15634875326410540841

`A048794(n+1)-A048794(A053645(n+1))`
-/

namespace A275536.P15634875326410540841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (n + 1) - A048794 (A053645 (n + 1)).toNat

end

end A275536.P15634875326410540841

/-! ## A275536.P7631003834801292057

`A261300(A059893(n+1))`
-/

namespace A275536.P7631003834801292057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261300 (A059893 (n + 1)).toNat

end

end A275536.P7631003834801292057

/-! ## A275536.P12114728372292389688

`A004086(A261300(n+1))`
-/

namespace A275536.P12114728372292389688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A261300 (n + 1)).toNat

end

end A275536.P12114728372292389688

/-!
# A275537: Let S be a set of n-digit positive numbers; a(n) is the cardinality of S which guarantees there exist two disjoint subsets of S with equal sums of elements.

The programs for A275537, there is no canonical definition to state claims against.
-/

/-! ## A275537.P18127543769194847226

`A046693(A186327(n+1))+A008486(A187829(n+1))`
-/

namespace A275537.P18127543769194847226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046693 (A186327 (n + 1)).toNat + A008486 (A187829 (n + 1)).toNat

end

end A275537.P18127543769194847226

/-! ## A275537.P12108641652140207719

`A285950(3*n+4)-A046660(A169064(n))`
-/

namespace A275537.P12108641652140207719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285950 (3 * n + 4) - A046660 (A169064 n).toNat

end

end A275537.P12108641652140207719

/-! ## A275537.P6314677567543479962

`A179891(2*n+1)+A038548(A000079(n+1))`
-/

namespace A275537.P6314677567543479962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179891 (2 * n + 1) + A038548 (A000079 (n + 1)).toNat

end

end A275537.P6314677567543479962

/-! ## A275537.P5513144756770461851

`A008585(n)+A000523(A005902(n+2))`
-/

namespace A275537.P5513144756770461851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + A000523 (A005902 (n + 2)).toNat

end

end A275537.P5513144756770461851

/-!
# A275539: a(n) = n! + n*(n-1)!!.

The programs for A275539, there is no canonical definition to state claims against.
-/

/-! ## A275539.P9675145457914013466

`n!+n*A172089(∑[n])`
-/

namespace A275539.P9675145457914013466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) + (n : ℤ) * A172089 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A275539.P9675145457914013466

/-! ## A275539.P112852064492304364

`A000142(n)+Δ[A076051(A028310(n))]`
-/

namespace A275539.P112852064492304364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076051 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + (f1 (n + 1) - f1 n)

end

end A275539.P112852064492304364

/-! ## A275539.P6124150309068576437

`Δ[A076051(A028310(n))+A003422(n)]`
-/

namespace A275539.P6124150309068576437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076051 (A028310 n).toNat + A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275539.P6124150309068576437

/-! ## A275539.P14397527373608755867

`(A006882(n)+n)*A172089(A000217(n))`
-/

namespace A275539.P14397527373608755867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006882 n + (n : ℤ)) * A172089 (A000217 n).toNat

end

end A275539.P14397527373608755867

/-! ## A275539.P2247022012486824700

`A076051(n+1)+A000142(n)-A076051(A028310(n))`
-/

namespace A275539.P2247022012486824700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076051 (n + 1) + (A000142 n - A076051 (A028310 n).toNat)

end

end A275539.P2247022012486824700

/-! ## A275539.P6047068506076430734

`A000142(n)+A001563(n)/A006882(n)`
-/

namespace A275539.P6047068506076430734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) + (A001563 n : ℚ) / (A006882 n : ℚ)

end

end A275539.P6047068506076430734

/-!
# A275540: a(n) = n! + n!! - n - 1.

The programs for A275540, there is no canonical definition to state claims against.
-/

/-! ## A275540.P357603727242702977

`∏[n/a(n-1)]+n!-(n+1)` with `a(0)=1`
-/

namespace A275540.P357603727242702977
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (Nat.factorial n : ℚ) - (n + 1 : ℚ)

end

end A275540.P357603727242702977

/-! ## A275540.P8697705515061613478

`A308434(n)-(n+1)`
-/

namespace A275540.P8697705515061613478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308434 n - (n + 1 : ℤ)

end

end A275540.P8697705515061613478

/-! ## A275540.P15722447954489962708

`A128882(n)+n!-n`
-/

namespace A275540.P15722447954489962708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128882 n + (Nat.factorial n : ℤ) - (n : ℤ)

end

end A275540.P15722447954489962708

/-! ## A275540.P1278977210978998481

`n!+A006882(n)-(n+1)`
-/

namespace A275540.P1278977210978998481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) + (A006882 n - (n + 1 : ℤ))

end

end A275540.P1278977210978998481

/-! ## A275540.P952952659004603515

`A005096(n)+A006882(n)-1`
-/

namespace A275540.P952952659004603515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005096 n + (A006882 n - 1)

end

end A275540.P952952659004603515

/-!
# A275541: (n)! + (n + 1)!!/(n + 1) - 2.

The programs for A275541, there is no canonical definition to state claims against.
-/

/-! ## A275541.P17939342378455596810

`n!-(2-A172089(∑[n]))`
-/

namespace A275541.P17939342378455596810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - (2 - A172089 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A275541.P17939342378455596810

/-! ## A275541.P746471612433050766

`A261193(n)+A172089(A000217(n))`
-/

namespace A275541.P746471612433050766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261193 n + A172089 (A000217 n).toNat

end

end A275541.P746471612433050766

/-! ## A275541.P17852218349645474583

`A261193(n)+A000142(n)/A006882(n)`
-/

namespace A275541.P17852218349645474583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261193 n : ℚ) + (A000142 n : ℚ) / (A006882 n : ℚ)

end

end A275541.P17852218349645474583

/-! ## A275541.P4454481596913747369

`floor(A275540(n+1)/(n+1))`
-/

namespace A275541.P4454481596913747369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A275540 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A275541.P4454481596913747369

/-!
# A275542: The digits of the integers with the nonprimes removed.

The programs for A275542, there is no canonical definition to state claims against.
-/

/-! ## A275542.P18145712636900427255

`p?[A007376(n)]`
-/

namespace A275542.P18145712636900427255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A275542.P18145712636900427255

/-! ## A275542.P9856730157287241485

`p?[A033307(n)]`
-/

namespace A275542.P9856730157287241485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A275542.P9856730157287241485

/-! ## A275542.P932914376502956173

`p?[Δ[A054632(n)]]`
-/

namespace A275542.P932914376502956173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054632 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A275542.P932914376502956173

/-! ## A275542.P4862059308520698397

`p?[A065649(n)%10]`
-/

namespace A275542.P4862059308520698397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065649 n) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A275542.P4862059308520698397

/-! ## A275542.P1856986079562680280

`p?[A108712(2*n+1)]`
-/

namespace A275542.P1856986079562680280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A275542.P1856986079562680280

/-! ## A275542.P11509847105816038793

`p?[A108202(2*n)]`
-/

namespace A275542.P11509847105816038793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A275542.P11509847105816038793

/-! ## A275542.P2913657784861428572

`p?[dr(A030066(n))]`
-/

namespace A275542.P2913657784861428572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A030066 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A275542.P2913657784861428572

/-!
# A275543: A081585 and A069129 interleaved.

The programs for A275543, the canonical program `A275543.P10676769887343348769` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275543 has offset 0).

The definition of A275543 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A275543.P10676769887343348769

`(-1)^n+2*n²`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A275543

/-- `(-1)^n+2*n²` -/
def P10676769887343348769.Spec : Prop :=
  ∀ n, P10676769887343348769.a n = A275543 n

theorem P10676769887343348769.correct : P10676769887343348769.Spec := by
  intro n
  simp only [A275543]

end A275543

/-! ## A275543.P13978806255151679820

`ogf((1-x+7x^2+x^3)/(1-2x+2x^3-x^4))`
-/

namespace A275543.P13978806255151679820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 7, 1] [1, -2, 0, 2, -1] n

end

end A275543.P13978806255151679820

namespace A275543

/-- `ogf((1-x+7x^2+x^3)/(1-2x+2x^3-x^4))` -/
def P13978806255151679820.Spec : Prop :=
  ∀ n, P13978806255151679820.a n = A275543 n

end A275543

/-! ## A275543.P7271147821700863466

`xor(1, n²)+n²`
-/

namespace A275543.P7271147821700863466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n ^ 2) + n ^ 2

end

end A275543.P7271147821700863466

namespace A275543

/-- `xor(1, n²)+n²` -/
def P7271147821700863466.Spec : Prop :=
  ∀ n, (P7271147821700863466.a n : ℤ) = A275543 n

end A275543

/-! ## A275543.P1026809644358039635

`2*or(1, n²)-1`
-/

namespace A275543.P1026809644358039635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lor 1 (n ^ 2) : ℤ) - 1

end

end A275543.P1026809644358039635

namespace A275543

/-- `2*or(1, n²)-1` -/
def P1026809644358039635.Spec : Prop :=
  ∀ n, P1026809644358039635.a n = A275543 n

end A275543

/-! ## A275543.P13900317362638588383

`lcm(2, or(1, n²))-1`
-/

namespace A275543.P13900317362638588383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (Nat.lor 1 (n ^ 2)) : ℤ) - 1

end

end A275543.P13900317362638588383

namespace A275543

/-- `lcm(2, or(1, n²))-1` -/
def P13900317362638588383.Spec : Prop :=
  ∀ n, P13900317362638588383.a n = A275543 n

end A275543

/-! ## A275543.P12108083640721845227

`xor(3, 2*or(1, n²))`
-/

namespace A275543.P12108083640721845227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (2 * Nat.lor 1 (n ^ 2))

end

end A275543.P12108083640721845227

namespace A275543

/-- `xor(3, 2*or(1, n²))` -/
def P12108083640721845227.Spec : Prop :=
  ∀ n, (P12108083640721845227.a n : ℤ) = A275543 n

end A275543

/-! ## A275543.P5623681284179570215

`or(2, n*2*n)-1`
-/

namespace A275543.P5623681284179570215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (n * (2 * n)) : ℤ) - 1

end

end A275543.P5623681284179570215

namespace A275543

/-- `or(2, n*2*n)-1` -/
def P5623681284179570215.Spec : Prop :=
  ∀ n, P5623681284179570215.a n = A275543 n

end A275543

/-! ## A275543.P6121092236906799119

`and(2*n²+1, -3)`
-/

namespace A275543.P6121092236906799119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n ^ 2 + 1 : ℤ) (-3)

end

end A275543.P6121092236906799119

namespace A275543

/-- `and(2*n²+1, -3)` -/
def P6121092236906799119.Spec : Prop :=
  ∀ n, P6121092236906799119.a n = A275543 n

end A275543

/-! ## A275543.P16740313940187113168

`xor(2, or(3, n*2*n))`
-/

namespace A275543.P16740313940187113168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (Nat.lor 3 (n * (2 * n)))

end

end A275543.P16740313940187113168

namespace A275543

/-- `xor(2, or(3, n*2*n))` -/
def P16740313940187113168.Spec : Prop :=
  ∀ n, (P16740313940187113168.a n : ℤ) = A275543 n

end A275543

/-! ## A275543.P6773076709103371190

`or(1, 2*and(-2, n²))`
-/

namespace A275543.P6773076709103371190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * Int.land (-2) (n ^ 2 : ℤ))

end

end A275543.P6773076709103371190

namespace A275543

/-- `or(1, 2*and(-2, n²))` -/
def P6773076709103371190.Spec : Prop :=
  ∀ n, P6773076709103371190.a n = A275543 n

end A275543

/-! ## A275543.P13926834710142400827

`xor(1, 2*and(-2, n²))`
-/

namespace A275543.P13926834710142400827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * Int.land (-2) (n ^ 2 : ℤ))

end

end A275543.P13926834710142400827

namespace A275543

/-- `xor(1, 2*and(-2, n²))` -/
def P13926834710142400827.Spec : Prop :=
  ∀ n, P13926834710142400827.a n = A275543 n

end A275543

/-! ## A275543.P1347882664859644369

`∑[a(n-2)+8]` with `a(0)=1, a(1)=0, a(2)=8`
-/

namespace A275543.P1347882664859644369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 8] fun n f1 =>
  f1 (n - 2) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275543.P1347882664859644369

namespace A275543

/-- `∑[a(n-2)+8]` -/
def P1347882664859644369.Spec : Prop :=
  ∀ n, (P1347882664859644369.a n : ℤ) = A275543 n

end A275543

/-! ## A275543.P3939743939446046880

`or(1, and(n*2*n, -3))`
-/

namespace A275543.P3939743939446046880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (Int.land (n * (2 * n) : ℤ) (-3))

end

end A275543.P3939743939446046880

namespace A275543

/-- `or(1, and(n*2*n, -3))` -/
def P3939743939446046880.Spec : Prop :=
  ∀ n, P3939743939446046880.a n = A275543 n

end A275543

/-! ## A275543.P7361736744660289507

`xor(1, and(n*2*n, -3))`
-/

namespace A275543.P7361736744660289507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.land (n * (2 * n) : ℤ) (-3))

end

end A275543.P7361736744660289507

namespace A275543

/-- `xor(1, and(n*2*n, -3))` -/
def P7361736744660289507.Spec : Prop :=
  ∀ n, P7361736744660289507.a n = A275543 n

end A275543

/-! ## A275543.P4686026633251665313

`abs(xor(1, n*(2*n+1))-n)`
-/

namespace A275543.P4686026633251665313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.xor 1 (n * (2 * n + 1)) : ℤ) - (n : ℤ)|

end

end A275543.P4686026633251665313

namespace A275543

/-- `abs(xor(1, n*(2*n+1))-n)` -/
def P4686026633251665313.Spec : Prop :=
  ∀ n, P4686026633251665313.a n = A275543 n

end A275543

/-! ## A275543.P14487564861861573282

`xor(n*2*n, (2*n+1)%4)`
-/

namespace A275543.P14487564861861573282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n * (2 * n)) ((2 * n + 1) % 4)

end

end A275543.P14487564861861573282

namespace A275543

/-- `xor(n*2*n, (2*n+1)%4)` -/
def P14487564861861573282.Spec : Prop :=
  ∀ n, (P14487564861861573282.a n : ℤ) = A275543 n

end A275543

/-! ## A275543.P12734299737935827472

`floor(a(n-1)+4*(n-n%2))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A275543.P12734299737935827472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 4 * ((n : ℤ) - ((n % 2 : ℕ) : ℤ))

end

end A275543.P12734299737935827472

namespace A275543

/-- `floor(a(n-1)+4*(n-n%2))` -/
def P12734299737935827472.Spec : Prop :=
  ∀ n, P12734299737935827472.a n = A275543 n

end A275543

/-! ## A275543.P18441371355303620782

`or(1, A077221(n))`
-/

namespace A275543.P18441371355303620782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A077221 n)

end

end A275543.P18441371355303620782

namespace A275543

/-- `or(1, A077221(n))` -/
def P18441371355303620782.Spec : Prop :=
  ∀ n, P18441371355303620782.a n = A275543 n

end A275543

/-! ## A275543.P3659561920181784665

`xor(2*n², A010684(n))`
-/

namespace A275543.P3659561920181784665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * n ^ 2 : ℤ) (A010684 n)

end

end A275543.P3659561920181784665

namespace A275543

/-- `xor(2*n², A010684(n))` -/
def P3659561920181784665.Spec : Prop :=
  ∀ n, P3659561920181784665.a n = A275543 n

end A275543

/-! ## A275543.P12852743479716844314

`xor(A010673(n), A058331(n))`
-/

namespace A275543.P12852743479716844314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010673 n) (A058331 n)

end

end A275543.P12852743479716844314

namespace A275543

/-- `xor(A010673(n), A058331(n))` -/
def P12852743479716844314.Spec : Prop :=
  ∀ n, P12852743479716844314.a n = A275543 n

end A275543

/-!
# A275544: Number of distinct terms at a given iteration of the Collatz (or 3x+1) map starting with 0.

The programs for A275544, there is no canonical definition to state claims against.
-/

/-! ## A275544.P6031724025995129650

`2*a(n-1)-A275545(n)` with `a(0)=1`
-/

namespace A275544.P6031724025995129650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - A275545 n

end

end A275544.P6031724025995129650

/-! ## A275544.P14699301021094182559

`A005843(a(n-1))-A275545(n)` with `a(0)=1`
-/

namespace A275544.P14699301021094182559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005843 (a (n - 1)).toNat - A275545 n

end

end A275544.P14699301021094182559

/-! ## A275544.P6698920295510698057

`A000078(n+4)-A089859(A324098(n+1))`
-/

namespace A275544.P6698920295510698057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (n + 4) - A089859 (A324098 (n + 1)).toNat

end

end A275544.P6698920295510698057

/-! ## A275544.P16482962411005395057

`A194640(2*(a(n-1)+a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A275544.P16482962411005395057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A194640 (2 * (a (n - 1) + a (n - 2))).toNat

end

end A275544.P16482962411005395057

/-! ## A275544.P11457954562429965016

`∑[A280194(A087051(n))]`
-/

namespace A275544.P11457954562429965016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280194 (A087051 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275544.P11457954562429965016

/-!
# A275545: Number of new duplicate terms at a given iteration of the Collatz (or 3x+1) map starting with 0.

The programs for A275545, there is no canonical definition to state claims against.
-/

/-! ## A275545.P976962762576864417

`A008651(A000740(n+1)+A000700(n))`
-/

namespace A275545.P976962762576864417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A000740 (n + 1) + A000700 n).toNat

end

end A275545.P976962762576864417

/-! ## A275545.P14398918108109212832

`A008651(A008680(n)+A000740(n+1))`
-/

namespace A275545.P14398918108109212832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A008680 n + A000740 (n + 1)).toNat

end

end A275545.P14398918108109212832

/-! ## A275545.P11142617356635508196

`A008651(or(A000325(n), A269526(n+1)))`
-/

namespace A275545.P11142617356635508196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (Int.lor (A000325 n) (A269526 (n + 1))).toNat

end

end A275545.P11142617356635508196

/-! ## A275545.P15774001210590523418

`A008651(or(A000325(n), A226762(2*(n+1))))`
-/

namespace A275545.P15774001210590523418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (Int.lor (A000325 n) (A226762 (2 * (n + 1)))).toNat

end

end A275545.P15774001210590523418

/-! ## A275545.P7601400501636072398

`A175045(A001591(n))+A001591(n)`
-/

namespace A275545.P7601400501636072398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175045 (A001591 n).toNat + A001591 n

end

end A275545.P7601400501636072398

/-!
# A275548: Number of compositions of n if only the order of the odd numbers matter.

The programs for A275548, there is no canonical definition to state claims against.
-/

/-! ## A275548.P13340017380411059500

`A319642(n)+Δ[A018794(n)]`
-/

namespace A275548.P13340017380411059500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319642 n + (f1 (n + 1) - f1 n)

end

end A275548.P13340017380411059500

/-! ## A275548.P26332781919205435

`A319642(n)+∑[A033483(n+2)]`
-/

namespace A275548.P26332781919205435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033483 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319642 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275548.P26332781919205435

/-! ## A275548.P762787976800380580

`A319642(n)+A026812(A000009(n))`
-/

namespace A275548.P762787976800380580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319642 n + A026812 (A000009 n).toNat

end

end A275548.P762787976800380580

/-! ## A275548.P8682060225073116857

`A319642(n)+A000196(A036597(n))`
-/

namespace A275548.P8682060225073116857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319642 n + A000196 (A036597 n).toNat

end

end A275548.P8682060225073116857

/-! ## A275548.P6098533351928308731

`A094192(A292548(n))-A000041(n)`
-/

namespace A275548.P6098533351928308731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094192 (A292548 n).toNat - A000041 n

end

end A275548.P6098533351928308731

/-!
# A275549: Number of classes of endofunctions of [n] under reversal.

The programs for A275549, the canonical program `A275549.P3866610754205526086` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275549 has offset 0).

The definition of A275549 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A275549.P3866610754205526086

`(n^n+n^ceil(n/2))/2`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A275549

/-- `(n^n+n^ceil(n/2))/2` -/
def P3866610754205526086.Spec : Prop :=
  ∀ n, P3866610754205526086.a n = (A275549 n : ℚ)

end A275549

/-! ## A275549.P668927065787333752

`ceil((A078707(n)+A000312(n))/2)`
-/

namespace A275549.P668927065787333752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A078707 n + A000312 n : ℚ) / 2⌉

end

end A275549.P668927065787333752

namespace A275549

/-- `ceil((A078707(n)+A000312(n))/2)` -/
def P668927065787333752.Spec : Prop :=
  ∀ n, P668927065787333752.a n = A275549 n

end A275549

/-! ## A275549.P15830448449206109188

`A277504(∑[4*n])`
-/

namespace A275549.P15830448449206109188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277504 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A275549.P15830448449206109188

namespace A275549

/-- `A277504(∑[4*n])` -/
def P15830448449206109188.Spec : Prop :=
  ∀ n, P15830448449206109188.a n = A275549 n

end A275549

/-! ## A275549.P11089268558014925394

`A284979((1-n)²+n²)`
-/

namespace A275549.P11089268558014925394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284979 ((1 - (n : ℤ)) ^ 2 + (n ^ 2 : ℤ)).toNat

end

end A275549.P11089268558014925394

namespace A275549

/-- `A284979((1-n)²+n²)` -/
def P11089268558014925394.Spec : Prop :=
  ∀ n, P11089268558014925394.a n = A275549 n

end A275549

/-! ## A275549.P17361386812279753843

`A277504(A046092(n))+A025444(n)`
-/

namespace A275549.P17361386812279753843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277504 (A046092 n).toNat + A025444 n

end

end A275549.P17361386812279753843

namespace A275549

/-- `A277504(A046092(n))+A025444(n)` -/
def P17361386812279753843.Spec : Prop :=
  ∀ n, P17361386812279753843.a n = A275549 n

end A275549

/-!
# A275550: Number of classes of endofunctions of [n] under reversal and complement to n+1.

The programs for A275550, there is no canonical definition to state claims against.
-/

/-! ## A275550.P5402608281593810180

`A244989(A298691(n))+1`
-/

namespace A275550.P5402608281593810180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244989 (A298691 n).toNat + 1

end

end A275550.P5402608281593810180

/-! ## A275550.P16082471048526355146

`A140106(xor(4, A347020(n)))`
-/

namespace A275550.P16082471048526355146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (Int.xor 4 (A347020 n)).toNat

end

end A275550.P16082471048526355146

/-!
# A275551: Number of classes of endofunctions of [n] under vertical translation mod n and reversal.

The programs for A275551, there is no canonical definition to state claims against.
-/

/-! ## A275551.P6609578759644525274

`n*A184411(a(n-1))` with `a(0)=1`
-/

namespace A275551.P6609578759644525274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A184411 (a (n - 1)).toNat

end

end A275551.P6609578759644525274

/-! ## A275551.P12932701770010586016

`n*A384879(a(n-1))` with `a(0)=1`
-/

namespace A275551.P12932701770010586016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A384879 (a (n - 1)).toNat

end

end A275551.P12932701770010586016

/-!
# A275552: Number of classes of endofunctions of [n] under vertical translation mod n and complement to n+1.

The programs for A275552, there is no canonical definition to state claims against.
-/

/-! ## A275552.P12041517533682886539

`A152271(A330471(n))+floor((xor(1, n)+1)/4)`
-/

namespace A275552.P12041517533682886539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A330471 n).toNat + ⌊(Nat.xor 1 n + 1 : ℚ) / 4⌋

end

end A275552.P12041517533682886539

/-! ## A275552.P2169458992566335880

`A065033(A330471(n)+A028242(n))`
-/

namespace A275552.P2169458992566335880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A330471 n + A028242 n).toNat

end

end A275552.P2169458992566335880

/-! ## A275552.P5931835443287605185

`A110654(A330471(n)+A028242(n))`
-/

namespace A275552.P5931835443287605185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A330471 n + A028242 n).toNat

end

end A275552.P5931835443287605185

/-!
# A275553: Number of classes of endofunctions of [n] under vertical translation mod n, complement to n+1 and reversal.

The programs for A275553, there is no canonical definition to state claims against.
-/

/-! ## A275553.P12600590780351760835

`A030727((8*C(n, 2))²+2)`
-/

namespace A275553.P12600590780351760835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030727 ((8 * Nat.choose n 2) ^ 2 + 2)

end

end A275553.P12600590780351760835

/-! ## A275553.P1248703885135448070

`A194463(∏[∏[2-char[2^n-1]]])`
-/

namespace A275553.P1248703885135448070
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194463 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A275553.P1248703885135448070

/-!
# A275555: Number of classes of endofunctions of [n] under vertical translation mod n, rotation and reversal.

The programs for A275555, there is no canonical definition to state claims against.
-/

/-! ## A275555.P16547665445866892447

`A212218(A112306(n)-A033264(n+1))`
-/

namespace A275555.P16547665445866892447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212218 (A112306 n - A033264 (n + 1)).toNat

end

end A275555.P16547665445866892447

/-! ## A275555.P15919443840425658463

`A212218(A125899(n+1)-A000523(3*n+1))`
-/

namespace A275555.P15919443840425658463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212218 (A125899 (n + 1) - A000523 (3 * n + 1)).toNat

end

end A275555.P15919443840425658463

/-!
# A275556: Number of classes of endofunctions of [n] under vertical translation mod n, rotation, complement to n+1 and reversal.

The programs for A275556, there is no canonical definition to state claims against.
-/

/-! ## A275556.P1273970919915680799

`A351007(A007910(n))+A047874(n+1)`
-/

namespace A275556.P1273970919915680799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351007 (A007910 n).toNat + A047874 (n + 1)

end

end A275556.P1273970919915680799

/-! ## A275556.P9570320148783546833

`A122651(A350138(n)+A180629(n+1))`
-/

namespace A275556.P9570320148783546833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122651 (A350138 n + A180629 (n + 1)).toNat

end

end A275556.P9570320148783546833

/-!
# A275557: Number of classes of endofunctions of [n] under rotation and complement to n+1.

The programs for A275557, there is no canonical definition to state claims against.
-/

/-! ## A275557.P2140262150625852417

`ceil(Δ[A006218(a(n-1))]/63)` with `a(0)=5`
-/

namespace A275557.P2140262150625852417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A006218 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n : ℚ) / 63⌉

end

end A275557.P2140262150625852417

/-! ## A275557.P13450456488346844111

`floor(A066490((n+1)^n+1)/log2(3))+1`
-/

namespace A275557.P13450456488346844111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A066490 ((n + 1) ^ n + 1) : ℝ) / Real.logb 2 (3 : ℝ)⌋ + 1

end

end A275557.P13450456488346844111

/-!
# A275558: Number of classes of endofunctions of [n] under rotation, complement to n+1 and reversal.

The programs for A275558, there is no canonical definition to state claims against.
-/

/-! ## A275558.P26930906679841115

`xor(1, A029674(A058712(n)))`
-/

namespace A275558.P26930906679841115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A029674 (A058712 n).toNat)

end

end A275558.P26930906679841115

/-! ## A275558.P6500315576915135811

`A275870(2^n)-∑[∑{d}[n, #%2]]`
-/

namespace A275558.P6500315576915135811
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275870 (2 ^ n) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A275558.P6500315576915135811

/-!
# A275559: Number of n X n 0..2 arrays with no element equal to any value at offset (-2,0), (-1,2) or (0,-2) and new values introduced in order 0..2.

The programs for A275559, there is no canonical definition to state claims against.
-/

/-! ## A275559.P10536228163076105048

`A275565(∑[4*n]+1)`
-/

namespace A275559.P10536228163076105048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275565 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A275559.P10536228163076105048

/-! ## A275559.P9293421079188995459

`record[gcd(A114327(n), A275565(n+1))]`
-/

namespace A275559.P9293421079188995459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A275565 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275559.P9293421079188995459

/-! ## A275559.P8374622067648294909

`record[and(A185917(n+1), A275565(n+1))]`
-/

namespace A275559.P8374622067648294909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185917 (n + 1)) (A275565 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275559.P8374622067648294909

/-! ## A275559.P17545061690263006178

`A275565(A001844(n))%A275546(n)`
-/

namespace A275559.P17545061690263006178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275565 (A001844 n).toNat) (A275546 n)

end

end A275559.P17545061690263006178

/-! ## A275559.P3135001976775841195

`gcd(A000038(n), A275565(A001844(n)))`
-/

namespace A275559.P3135001976775841195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A275565 (A001844 n).toNat)

end

end A275559.P3135001976775841195

/-!
# A275560: Number of n X 3 0..2 arrays with no element equal to any value at offset (-2,0) (-1,2) or (0,-2) and new values introduced in order 0..2.

The programs for A275560, the canonical program `A275560.P12813857197327026980` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275560 has offset 1).

The definition of A275560 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275560.P12813857197327026980

`ogf((3+30x+30x^2-36x^3-96x^4)/(1-2x-8x^2+16x^4))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A275560

/-- `ogf((3+30x+30x^2-36x^3-96x^4)/(1-2x-8x^2+16x^4))` -/
def P12813857197327026980.Spec : Prop :=
  ∀ n, P12813857197327026980.a n = A275560 (n + 1)

theorem P12813857197327026980.correct : P12813857197327026980.Spec := by
  intro n
  simp only [A275560, Nat.add_sub_cancel]

end A275560

/-! ## A275560.P1623432214573748877

`floor(sqrt(A208428(n+1)*A275561(n+1)))`
-/

namespace A275560.P1623432214573748877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A208428 (n + 1) * A275561 (n + 1))

end

end A275560.P1623432214573748877

namespace A275560

/-- `floor(sqrt(A208428(n+1)*A275561(n+1)))` -/
def P1623432214573748877.Spec : Prop :=
  ∀ n, P1623432214573748877.a n = A275560 (n + 1)

end A275560

/-! ## A275560.P6740963534252783789

`A275565(∑[n+3]+1)`
-/

namespace A275560.P6740963534252783789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275565 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A275560.P6740963534252783789

namespace A275560

/-- `A275565(∑[n+3]+1)` -/
def P6740963534252783789.Spec : Prop :=
  ∀ n, P6740963534252783789.a n = A275560 (n + 1)

end A275560

/-!
# A275561: Number of n X 4 0..2 arrays with no element equal to any value at offset (-2,0) (-1,2) or (0,-2) and new values introduced in order 0..2.

The programs for A275561, there is no canonical definition to state claims against.
-/

/-! ## A275561.P532680485811904796

`A275562(n+1)/A275563(n+1)*A275562(n+1)`
-/

namespace A275561.P532680485811904796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275562 (n + 1) : ℚ) / (A275563 (n + 1) : ℚ) * (A275562 (n + 1) : ℚ)

end

end A275561.P532680485811904796

/-! ## A275561.P14260601169360597942

`A275562(n+1)²/A275563(n+1)`
-/

namespace A275561.P14260601169360597942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275562 (n + 1) ^ 2 : ℚ) / (A275563 (n + 1) : ℚ)

end

end A275561.P14260601169360597942

/-! ## A275561.P235705867075192154

`A275565(A141214(n+1))`
-/

namespace A275561.P235705867075192154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275565 (A141214 (n + 1)).toNat

end

end A275561.P235705867075192154

/-! ## A275561.P3150057275108143866

`A275565(A027379(n+2))`
-/

namespace A275561.P3150057275108143866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275565 (A027379 (n + 2)).toNat

end

end A275561.P3150057275108143866

/-! ## A275561.P729370406160239816

`A275565(A052905(n+1)+2)`
-/

namespace A275561.P729370406160239816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275565 (A052905 (n + 1) + 2).toNat

end

end A275561.P729370406160239816

/-!
# A275562: Number of n X 5 0..2 arrays with no element equal to any value at offset (-2,0) (-1,2) or (0,-2) and new values introduced in order 0..2.

The programs for A275562, there is no canonical definition to state claims against.
-/

/-! ## A275562.P15373709213041890355

`sqrt(A275561(n+1))*sqrt(A275563(n+1))`
-/

namespace A275562.P15373709213041890355
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A275561 (n + 1) : ℝ) * Real.sqrt (A275563 (n + 1) : ℝ)

end

end A275562.P15373709213041890355

/-! ## A275562.P7893422167785723630

`sqrt(A275561(n+1)*A275563(n+1))`
-/

namespace A275562.P7893422167785723630
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A275561 (n + 1) * A275563 (n + 1) : ℝ)

end

end A275562.P7893422167785723630

/-! ## A275562.P16926866830965271888

`A275565(A046691(n+3))`
-/

namespace A275562.P16926866830965271888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275565 (A046691 (n + 3)).toNat

end

end A275562.P16926866830965271888

/-! ## A275562.P13270119836014784447

`A275565(Δ[A023545(n+1)])`
-/

namespace A275562.P13270119836014784447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275565 (f1 (n + 1) - f1 n).toNat

end

end A275562.P13270119836014784447

/-! ## A275562.P16506177580468624872

`A275565(A052905(n+2)+1)`
-/

namespace A275562.P16506177580468624872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275565 (A052905 (n + 2) + 1).toNat

end

end A275562.P16506177580468624872

/-!
# A275563: Number of nX6 0..2 arrays with no element equal to any value at offset (-2,0) (-1,2) or (0,-2) and new values introduced in order 0..2.

The programs for A275563, the canonical program `A275563.P1265381108197995457` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275563 has offset 1).

The definition of A275563 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275563.P1265381108197995457

`6*A274890(n+1)²`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A275563

/-- `6*A274890(n+1)²` -/
def P1265381108197995457.Spec : Prop :=
  ∀ n, P1265381108197995457.a n = A275563 (n + 1)

theorem P1265381108197995457.correct : P1265381108197995457.Spec := by
  intro n
  simp only [A275563, Nat.add_sub_cancel]

end A275563

/-! ## A275563.P17145709702871376994

`A275562(n+1)/A275561(n+1)*A275562(n+1)`
-/

namespace A275563.P17145709702871376994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275562 (n + 1) : ℚ) / (A275561 (n + 1) : ℚ) * (A275562 (n + 1) : ℚ)

end

end A275563.P17145709702871376994

namespace A275563

/-- `A275562(n+1)/A275561(n+1)*A275562(n+1)` -/
def P17145709702871376994.Spec : Prop :=
  ∀ n, P17145709702871376994.a n = (A275563 (n + 1) : ℚ)

end A275563

/-! ## A275563.P3319793541113663595

`A275562(n+1)²/A275561(n+1)`
-/

namespace A275563.P3319793541113663595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275562 (n + 1) ^ 2 : ℚ) / (A275561 (n + 1) : ℚ)

end

end A275563.P3319793541113663595

namespace A275563

/-- `A275562(n+1)²/A275561(n+1)` -/
def P3319793541113663595.Spec : Prop :=
  ∀ n, P3319793541113663595.a n = (A275563 (n + 1) : ℚ)

end A275563

/-! ## A275563.P1286980161681177542

`6*A274895(∑[n+3]+1)²`
-/

namespace A275563.P1286980161681177542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A274895 (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A275563.P1286980161681177542

namespace A275563

/-- `6*A274895(∑[n+3]+1)²` -/
def P1286980161681177542.Spec : Prop :=
  ∀ n, P1286980161681177542.a n = A275563 (n + 1)

end A275563

/-! ## A275563.P15258351971072528088

`A275565(A052905(n+3))`
-/

namespace A275563.P15258351971072528088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275565 (A052905 (n + 3)).toNat

end

end A275563.P15258351971072528088

namespace A275563

/-- `A275565(A052905(n+3))` -/
def P15258351971072528088.Spec : Prop :=
  ∀ n, P15258351971072528088.a n = A275563 (n + 1)

end A275563

/-!
# A275564: Number of nX7 0..2 arrays with no element equal to any value at offset (-2,0) (-1,2) or (0,-2) and new values introduced in order 0..2.

The programs for A275564, there is no canonical definition to state claims against.
-/

/-! ## A275564.P18418510497673899590

`6*A274890(n+1)*A274891(n+1)`
-/

namespace A275564.P18418510497673899590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A274890 (n + 1) * A274891 (n + 1))

end

end A275564.P18418510497673899590

/-! ## A275564.P4332610827652762631

`A275565(A055999(n+4))`
-/

namespace A275564.P4332610827652762631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275565 (A055999 (n + 4)).toNat

end

end A275564.P4332610827652762631

/-! ## A275564.P10253068216317113683

`A275565(A052905(n+4)-1)`
-/

namespace A275564.P10253068216317113683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275565 (A052905 (n + 4) - 1).toNat

end

end A275564.P10253068216317113683

/-! ## A275564.P1861625743075513248

`A275565(A000124(n+7)-7)`
-/

namespace A275564.P1861625743075513248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275565 (A000124 (n + 7) - 7).toNat

end

end A275564.P1861625743075513248

/-! ## A275564.P11018287164072681368

`A275565(A000217(n+6)+n+1)`
-/

namespace A275564.P11018287164072681368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275565 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A275564.P11018287164072681368

/-!
# A275566: Number of 3 X n 0..2 arrays with no element equal to any value at offset (-2,0) (-1,2) or (0,-2) and new values introduced in order 0..2.

The programs for A275566, the canonical program `A275566.P1744264717891592838` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275566 has offset 1).

The definition of A275566 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 270 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275566.P1744264717891592838

`ogf((3+45x-36x^2-69x^3+57x^4+75x^5-75x^6+12x^7+24x^8-15x^9)/(1-3x+5x^3-x^4-7x^5+5x^6-2x^8+x^9))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A275566

/-- `ogf((3+45x-36x^2-69x^3+57x^4+75x^5-75x^6+12x^7+24x^8-15x^9)/(1-3x+5x^3-x^4-7x^5+5x^6-2x^8+x^9))` -/
def P1744264717891592838.Spec : Prop :=
  ∀ n, P1744264717891592838.a n = A275566 (n + 1)

theorem P1744264717891592838.correct : P1744264717891592838.Spec := by
  intro n
  simp only [A275566, Nat.add_sub_cancel]

end A275566

/-! ## A275566.P7654033738947535358

`A275565(∑[n+2]+4)`
-/

namespace A275566.P7654033738947535358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275565 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A275566.P7654033738947535358

namespace A275566

/-- `A275565(∑[n+2]+4)` -/
def P7654033738947535358.Spec : Prop :=
  ∀ n, P7654033738947535358.a n = A275566 (n + 1)

end A275566

/-! ## A275566.P9419647761819432291

`lcm(3, A275565(A167614(n+1)))`
-/

namespace A275566.P9419647761819432291
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A275565 (A167614 (n + 1)).toNat)

end

end A275566.P9419647761819432291

namespace A275566

/-- `lcm(3, A275565(A167614(n+1)))` -/
def P9419647761819432291.Spec : Prop :=
  ∀ n, (P9419647761819432291.a n : ℤ) = A275566 (n + 1)

end A275566

/-! ## A275566.P17026922000017438987

`A015342(n)*A275565(A167614(n+1))`
-/

namespace A275566.P17026922000017438987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015342 n * A275565 (A167614 (n + 1)).toNat

end

end A275566.P17026922000017438987

namespace A275566

/-- `A015342(n)*A275565(A167614(n+1))` -/
def P17026922000017438987.Spec : Prop :=
  ∀ n, P17026922000017438987.a n = A275566 (n + 1)

end A275566

/-! ## A275566.P15307679007509611110

`or(A000007(n), A275565(A167614(n+1)))`
-/

namespace A275566.P15307679007509611110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A275565 (A167614 (n + 1)).toNat)

end

end A275566.P15307679007509611110

namespace A275566

/-- `or(A000007(n), A275565(A167614(n+1)))` -/
def P15307679007509611110.Spec : Prop :=
  ∀ n, P15307679007509611110.a n = A275566 (n + 1)

end A275566

/-!
# A275567: Number of 4Xn 0..2 arrays with no element equal to any value at offset (-2,0) (-1,2) or (0,-2) and new values introduced in order 0..2.

The programs for A275567, there is no canonical definition to state claims against.
-/

/-! ## A275567.P8144662743074549304

`A275565(A141214(n)+7)`
-/

namespace A275567.P8144662743074549304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275565 (A141214 n + 7).toNat

end

end A275567.P8144662743074549304

/-! ## A275567.P13575453828383561980

`A275565(A052905(n)+9)`
-/

namespace A275567.P13575453828383561980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275565 (A052905 n + 9).toNat

end

end A275567.P13575453828383561980

/-! ## A275567.P7687507106758901108

`A275565(A055999(n)+10)`
-/

namespace A275567.P7687507106758901108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275565 (A055999 n + 10).toNat

end

end A275567.P7687507106758901108

/-! ## A275567.P3367538548406514624

`A275565(A167614(n+2)+1)`
-/

namespace A275567.P3367538548406514624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275565 (A167614 (n + 2) + 1).toNat

end

end A275567.P3367538548406514624

/-! ## A275567.P12730491369138496676

`A275565(A112355(n+1)+4)`
-/

namespace A275567.P12730491369138496676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275565 (A112355 (n + 1) + 4).toNat

end

end A275567.P12730491369138496676

/-!
# A275568: Number of 5Xn 0..2 arrays with no element equal to any value at offset (-2,0) (-1,2) or (0,-2) and new values introduced in order 0..2.

The programs for A275568, there is no canonical definition to state claims against.
-/

/-! ## A275568.P1434612225858034087

`A275565(A000096(n+3)+6)`
-/

namespace A275568.P1434612225858034087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275565 (A000096 (n + 3) + 6).toNat

end

end A275568.P1434612225858034087

/-! ## A275568.P12524134903322218897

`A275565(A000217(n+4)+5)`
-/

namespace A275568.P12524134903322218897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275565 (A000217 (n + 4) + 5).toNat

end

end A275568.P12524134903322218897

/-! ## A275568.P12146662372372877455

`A275565(A052905(n+1)+10)`
-/

namespace A275568.P12146662372372877455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275565 (A052905 (n + 1) + 10).toNat

end

end A275568.P12146662372372877455

/-! ## A275568.P8039524977923705989

`A275565(A000124(n+5)-(n+1))`
-/

namespace A275568.P8039524977923705989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275565 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A275568.P8039524977923705989

/-! ## A275568.P15021349683134473953

`A275565(A046691(n+4)-2*(n+1))`
-/

namespace A275568.P15021349683134473953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275565 (A046691 (n + 4) - (2 * (n + 1) : ℤ)).toNat

end

end A275568.P15021349683134473953

/-!
# A275569: Number of 6Xn 0..2 arrays with no element equal to any value at offset (-2,0) (-1,2) or (0,-2) and new values introduced in order 0..2.

The programs for A275569, there is no canonical definition to state claims against.
-/

/-! ## A275569.P2406537103893718794

`A275565(A167499(n+4)+1)`
-/

namespace A275569.P2406537103893718794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275565 (A167499 (n + 4) + 1).toNat

end

end A275569.P2406537103893718794

/-! ## A275569.P136237569331036528

`A275565(A000217(n+5)+6)`
-/

namespace A275569.P136237569331036528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275565 (A000217 (n + 5) + 6).toNat

end

end A275569.P136237569331036528

/-! ## A275569.P4145087237633434026

`A275565(eq[6, A002260(A233583(n+1))])`
-/

namespace A275569.P4145087237633434026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275565 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275569.P4145087237633434026

/-! ## A275569.P11951545127620282907

`A275565(A000096(n+6)-A005843(n+3))`
-/

namespace A275569.P11951545127620282907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275565 (A000096 (n + 6) - A005843 (n + 3)).toNat

end

end A275569.P11951545127620282907

/-! ## A275569.P9679327276978459081

`A275565(A005843(n+8)+A000096(n+2))`
-/

namespace A275569.P9679327276978459081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275565 (A005843 (n + 8) + A000096 (n + 2)).toNat

end

end A275569.P9679327276978459081

/-!
# A275570: Number of 7Xn 0..2 arrays with no element equal to any value at offset (-2,0) (-1,2) or (0,-2) and new values introduced in order 0..2.

The programs for A275570, there is no canonical definition to state claims against.
-/

/-! ## A275570.P2328841107685682421

`A275565(A167499(n+5)+2)`
-/

namespace A275570.P2328841107685682421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275565 (A167499 (n + 5) + 2).toNat

end

end A275570.P2328841107685682421

/-! ## A275570.P7064639889041424519

`A275565(A000096(n+5)+8)`
-/

namespace A275570.P7064639889041424519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275565 (A000096 (n + 5) + 8).toNat

end

end A275570.P7064639889041424519

/-! ## A275570.P9182917271800136101

`A275565(A000217(n+6)+7)`
-/

namespace A275570.P9182917271800136101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275565 (A000217 (n + 6) + 7).toNat

end

end A275570.P9182917271800136101

/-! ## A275570.P4306539190148068821

`A275565(A161680(n+7)+7)`
-/

namespace A275570.P4306539190148068821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275565 (A161680 (n + 7) + 7).toNat

end

end A275570.P4306539190148068821

/-! ## A275570.P9476157948349256662

`A275565(A133263(n+4)+A117804(n+13))`
-/

namespace A275570.P9476157948349256662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275565 (A133263 (n + 4) + A117804 (n + 13)).toNat

end

end A275570.P9476157948349256662

/-!
# A275572: Consider the function G(m) that adds to m a fractional part whose digits are the digits of m (informally, G(m) = m.m). Sequence lists integers of the form Sum_{i=1..k} G(i) for some k.

The programs for A275572, there is no canonical definition to state claims against.
-/

/-! ## A275572.P16371836737791938175

`A275623(n+1)+A000217(A054464(n+1))`
-/

namespace A275572.P16371836737791938175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275623 (n + 1) + A000217 (A054464 (n + 1)).toNat

end

end A275572.P16371836737791938175

/-!
# A275574: ((-1)^n - 1 + 2*(n^floor((n + 1)/2)))/4.

The programs for A275574, the canonical program `A275574.P14646251904470881344` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275574 has offset 1).

The definition of A275574 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A275574.P14646251904470881344

`((-1)^(n+1)-1+2*(n+1)^floor((n+2)/2))/4`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A275574

/-- `((-1)^(n+1)-1+2*(n+1)^floor((n+2)/2))/4` -/
def P14646251904470881344.Spec : Prop :=
  ∀ n, P14646251904470881344.a n = (A275574 (n + 1) : ℚ)

end A275574

/-! ## A275574.P5357979084498903148

`floor((n+1)^∑[log2(gcd(2, n))]/2)`
-/

namespace A275574.P5357979084498903148
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) ^ (∑ j ∈ Finset.range (n + 1), f1 j) / 2⌋

end

end A275574.P5357979084498903148

namespace A275574

/-- `floor((n+1)^∑[log2(gcd(2, n))]/2)` -/
def P5357979084498903148.Spec : Prop :=
  ∀ n, P5357979084498903148.a n = A275574 (n + 1)

end A275574

/-! ## A275574.P10690201957910379515

`floor((n+1)^∑[1-a(n-1)]/2)` with `a(0)=1`
-/

namespace A275574.P10690201957910379515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ) / 2⌋

end

end A275574.P10690201957910379515

namespace A275574

/-- `floor((n+1)^∑[1-a(n-1)]/2)` -/
def P10690201957910379515.Spec : Prop :=
  ∀ n, P10690201957910379515.a n = A275574 (n + 1)

end A275574

/-! ## A275574.P7946216209532470841

`ceil((A078707(n+1)-1)/2)`
-/

namespace A275574.P7946216209532470841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A078707 (n + 1) - 1 : ℚ) / 2⌉

end

end A275574.P7946216209532470841

namespace A275574

/-- `ceil((A078707(n+1)-1)/2)` -/
def P7946216209532470841.Spec : Prop :=
  ∀ n, P7946216209532470841.a n = A275574 (n + 1)

end A275574

/-! ## A275574.P11333459162913390095

`ceil(((n+1)^A008619(n)-1)/2)`
-/

namespace A275574.P11333459162913390095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1 : ℚ) ^ (A008619 n : ℤ) - 1) / 2⌉

end

end A275574.P11333459162913390095

namespace A275574

/-- `ceil(((n+1)^A008619(n)-1)/2)` -/
def P11333459162913390095.Spec : Prop :=
  ∀ n, P11333459162913390095.a n = A275574 (n + 1)

end A275574

/-! ## A275574.P2998525495387374506

`A275549(n+1)-A168658(n+1)`
-/

namespace A275574.P2998525495387374506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275549 (n + 1) - A168658 (n + 1)

end

end A275574.P2998525495387374506

namespace A275574

/-- `A275549(n+1)-A168658(n+1)` -/
def P2998525495387374506.Spec : Prop :=
  ∀ n, P2998525495387374506.a n = A275574 (n + 1)

end A275574

/-! ## A275574.P6855867817222666587

`(A275549(n+1)%A168658(n+1))%A078707(n+1)`
-/

namespace A275574.P6855867817222666587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A275549 (n + 1)) (A168658 (n + 1))) (A078707 (n + 1))

end

end A275574.P6855867817222666587

namespace A275574

/-- `(A275549(n+1)%A168658(n+1))%A078707(n+1)` -/
def P6855867817222666587.Spec : Prop :=
  ∀ n, P6855867817222666587.a n = A275574 (n + 1)

end A275574

/-!
# A275575: Numbers k such that (3^k + 1)/(3 - (-1)^k) is a prime.

The programs for A275575, there is no canonical definition to state claims against.
-/

/-! ## A275575.P14869720653442767308

`eq[2, A366580(n)]`
-/

namespace A275575.P14869720653442767308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366580 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275575.P14869720653442767308

/-! ## A275575.P13281306534506567854

`eq[A010711(n), A366577(n)]`
-/

namespace A275575.P13281306534506567854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010711 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366577 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275575.P13281306534506567854

/-! ## A275575.P7436539873099740621

`eq[A020639(3*(n+1)), A057941(n+1)]+1`
-/

namespace A275575.P7436539873099740621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057941 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A275575.P7436539873099740621

/-! ## A275575.P6808176280407819991

`eq[A074476(n), A167205(n)]`
-/

namespace A275575.P6808176280407819991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074476 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167205 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275575.P6808176280407819991

/-! ## A275575.P9881896508133247505

`eq[A064131(n), A286851(n)]`
-/

namespace A275575.P9881896508133247505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064131 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286851 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275575.P9881896508133247505

/-!
# A275576: Sums of lengths of longest (strictly) increasing subsequences of all n^n length-n lists of integers from {1,2,...,n}.

The programs for A275576, there is no canonical definition to state claims against.
-/

/-! ## A275576.P17321037008613638314

`A166546(A209671(n+1)-A035026(n+1))`
-/

namespace A275576.P17321037008613638314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166546 (A209671 (n + 1) - A035026 (n + 1)).toNat

end

end A275576.P17321037008613638314

/-!
# A275578: Expansion of (F(x) + F(-x)) / 2 in powers of x^2 where F(x) = (f(-x) * f(-x^11))^2 and f() is a Ramanujan theta function.

The programs for A275578, there is no canonical definition to state claims against.
-/

/-! ## A275578.P11696998558869272485

`A006571(2*n+1)`
-/

namespace A275578.P11696998558869272485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006571 (2 * n + 1)

end

end A275578.P11696998558869272485

/-! ## A275578.P17446252460548775295

`A000035(A005408(n))*A006571(A005408(n))`
-/

namespace A275578.P17446252460548775295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A005408 n).toNat * A006571 (A005408 n).toNat

end

end A275578.P17446252460548775295

/-! ## A275578.P970383843786087001

`A226075(Δ[n²])`
-/

namespace A275578.P970383843786087001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226075 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A275578.P970383843786087001

/-! ## A275578.P310334990625992098

`A226075(2*n+1)%(n+2)`
-/

namespace A275578.P310334990625992098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226075 (2 * n + 1)) (n + 2 : ℤ)

end

end A275578.P310334990625992098

/-! ## A275578.P12140312223159484539

`A279371(Δ[n²])`
-/

namespace A275578.P12140312223159484539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279371 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A275578.P12140312223159484539

/-! ## A275578.P8486220203172854819

`A279371(2*n+1)%(n+2)`
-/

namespace A275578.P8486220203172854819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279371 (2 * n + 1)) (n + 2 : ℤ)

end

end A275578.P8486220203172854819

/-! ## A275578.P396495812254675966

`A279371(2*n+1)+A000007(n+2)`
-/

namespace A275578.P396495812254675966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279371 (2 * n + 1) + A000007 (n + 2)

end

end A275578.P396495812254675966

/-! ## A275578.P15728857572130825944

`A279371(2*n+1)+A008683(A005877(n))`
-/

namespace A275578.P15728857572130825944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279371 (2 * n + 1) + A008683 (A005877 n).toNat

end

end A275578.P15728857572130825944

/-! ## A275578.P9849438983451637598

`A279371(3*n+n+2)/2`
-/

namespace A275578.P9849438983451637598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279371 (3 * n + (n + 2)) : ℚ) / 2

end

end A275578.P9849438983451637598

/-!
# A275579: Nearest integer to imaginary part of Riemann zeta zeros divided by 2*Pi.

The programs for A275579, there is no canonical definition to state claims against.
-/

/-! ## A275579.P9421074621335437141

`A275737(n)+a(n-1)` with `a(0)=2`
-/

namespace A275579.P9421074621335437141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A275737 n + a (n - 1)

end

end A275579.P9421074621335437141

/-! ## A275579.P17444897511552309113

`∑[char[A275341(n+1)]]+2`
-/

namespace A275579.P17444897511552309113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275341 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A275579.P17444897511552309113

/-! ## A275579.P2823176181544036947

`∑[A275737(n+1)]+2-A275737(n+1)`
-/

namespace A275579.P2823176181544036947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A275737 (n + 1))

end

end A275579.P2823176181544036947

/-! ## A275579.P767626854439109992

`A167146(n+1)/2`
-/

namespace A275579.P767626854439109992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167146 (n + 1) : ℚ) / 2

end

end A275579.P767626854439109992

/-! ## A275579.P606835014645869014

`A001281(A167146(n+1))`
-/

namespace A275579.P606835014645869014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A167146 (n + 1)).toNat

end

end A275579.P606835014645869014

/-! ## A275579.P14149728356471013647

`A130722(A167146(n+1)+1)`
-/

namespace A275579.P14149728356471013647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130722 (A167146 (n + 1) + 1).toNat

end

end A275579.P14149728356471013647

/-!
# A275580: Add square root of sum of terms.

The programs for A275580, the canonical program `A275580.P7321185300986580126` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275580 has offset 0).

The definition of A275580 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A275580.P7321185300986580126

`ogf((1-x+x^2-x^3+x^4)/(1-3x+4x^2-5x^3+6x^4-5x^5+4x^6-3x^7+x^8))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A275580

/-- `ogf((1-x+x^2-x^3+x^4)/(1-3x+4x^2-5x^3+6x^4-5x^5+4x^6-3x^7+x^8))` -/
def P7321185300986580126.Spec : Prop :=
  ∀ n, P7321185300986580126.a n = A275580 n

theorem P7321185300986580126.correct : P7321185300986580126.Spec := by
  intro n
  simp only [A275580]

end A275580

/-! ## A275580.P9160718085758722014

`∑[ceil(∑[(n+1)/6])]`
-/

namespace A275580.P9160718085758722014
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275580.P9160718085758722014

namespace A275580

/-- `∑[ceil(∑[(n+1)/6])]` -/
def P9160718085758722014.Spec : Prop :=
  ∀ n, P9160718085758722014.a n = A275580 n

end A275580

/-! ## A275580.P2257436727615334840

`A253012(n)+a(n-1)` with `a(0)=1`
-/

namespace A275580.P2257436727615334840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A253012 n + a (n - 1)

end

end A275580.P2257436727615334840

namespace A275580

/-- `A253012(n)+a(n-1)` -/
def P2257436727615334840.Spec : Prop :=
  ∀ n, P2257436727615334840.a n = A275580 n

end A275580

/-! ## A275580.P15272244855895113200

`abs(∑[A186390(n+1)-n])`
-/

namespace A275580.P15272244855895113200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186390 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A275580.P15272244855895113200

namespace A275580

/-- `abs(∑[A186390(n+1)-n])` -/
def P15272244855895113200.Spec : Prop :=
  ∀ n, P15272244855895113200.a n = A275580 n

end A275580

/-! ## A275580.P16411573023670729506

`∑[floor(A000096(n)/6)]+n+1`
-/

namespace A275580.P16411573023670729506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000096 n : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A275580.P16411573023670729506

namespace A275580

/-- `∑[floor(A000096(n)/6)]+n+1` -/
def P16411573023670729506.Spec : Prop :=
  ∀ n, P16411573023670729506.a n = A275580 n

end A275580

/-! ## A275580.P5820449729193974373

`A181120(n)+A001972(n)`
-/

namespace A275580.P5820449729193974373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181120 n + A001972 n

end

end A275580.P5820449729193974373

namespace A275580

/-- `A181120(n)+A001972(n)` -/
def P5820449729193974373.Spec : Prop :=
  ∀ n, P5820449729193974373.a n = A275580 n

end A275580

/-! ## A275580.P800158732013862561

`A322108(n+1)-A358042(n)`
-/

namespace A275580.P800158732013862561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322108 (n + 1) - A358042 n

end

end A275580.P800158732013862561

namespace A275580

/-- `A322108(n+1)-A358042(n)` -/
def P800158732013862561.Spec : Prop :=
  ∀ n, P800158732013862561.a n = A275580 n

end A275580

/-! ## A275580.P5921382293932307735

`A001971(n+1)+A000601(n)-A002620(n+1)`
-/

namespace A275580.P5921382293932307735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (n + 1) + (A000601 n - A002620 (n + 1))

end

end A275580.P5921382293932307735

namespace A275580

/-- `A001971(n+1)+A000601(n)-A002620(n+1)` -/
def P5921382293932307735.Spec : Prop :=
  ∀ n, P5921382293932307735.a n = A275580 n

end A275580

/-! ## A275580.P9153632291983740761

`A000601(n)-A130519(n+2)`
-/

namespace A275580.P9153632291983740761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000601 n - A130519 (n + 2)

end

end A275580.P9153632291983740761

namespace A275580

/-- `A000601(n)-A130519(n+2)` -/
def P9153632291983740761.Spec : Prop :=
  ∀ n, P9153632291983740761.a n = A275580 n

end A275580

/-! ## A275580.P1048423239576206973

`∑[A004525(n)+A000933(n+2)]+1`
-/

namespace A275580.P1048423239576206973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + A000933 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A275580.P1048423239576206973

namespace A275580

/-- `∑[A004525(n)+A000933(n+2)]+1` -/
def P1048423239576206973.Spec : Prop :=
  ∀ n, P1048423239576206973.a n = A275580 n

end A275580

/-! ## A275580.P13110974462211991183

`Δ[A025765(∑[n+1])]`
-/

namespace A275580.P13110974462211991183
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025765 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275580.P13110974462211991183

namespace A275580

/-- `Δ[A025765(∑[n+1])]` -/
def P13110974462211991183.Spec : Prop :=
  ∀ n, P13110974462211991183.a n = A275580 n

end A275580

/-!
# A275584: Primes p such that S_e(p-1)/S_o(p-1) is an integer, where S_e(x) is the sum of the even numbers and S_o(x) is the sum of the odd numbers in the Collatz iteration of x.

The programs for A275584, there is no canonical definition to state claims against.
-/

/-! ## A275584.P12453584150919925187

`p?[A274796(n+1)+1]`
-/

namespace A275584.P12453584150919925187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274796 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A275584.P12453584150919925187

/-! ## A275584.P6053382519008526239

`record[A020639(A274796(n+1)+1)]`
-/

namespace A275584.P6053382519008526239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A274796 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275584.P6053382519008526239

/-!
# A275585: Expansion of Product_{k>=1} 1/(1 - x^k)^(sigma_2(k)).

The programs for A275585, there is no canonical definition to state claims against.
-/

/-! ## A275585.P16224227443630677924

`A321876(∑[n+3])`
-/

namespace A275585.P16224227443630677924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321876 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A275585.P16224227443630677924

/-! ## A275585.P10102416704628840882

`A321876(A055998(n+1))%A088653(n)`
-/

namespace A275585.P10102416704628840882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321876 (A055998 (n + 1)).toNat) (A088653 n)

end

end A275585.P10102416704628840882

/-! ## A275585.P16083542027240926825

`or(A000007(n), A321876(A055998(n+1)))`
-/

namespace A275585.P16083542027240926825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A321876 (A055998 (n + 1)).toNat)

end

end A275585.P16083542027240926825

/-! ## A275585.P9946772068438901838

`A321876(A055998(n+1))^A000038(n)!`
-/

namespace A275585.P9946772068438901838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321876 (A055998 (n + 1)).toNat ^ Nat.factorial (A000038 n).toNat

end

end A275585.P9946772068438901838

/-! ## A275585.P8311318446761420817

`A321876(A055998(n+1))+A000038(n+1)`
-/

namespace A275585.P8311318446761420817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321876 (A055998 (n + 1)).toNat + A000038 (n + 1)

end

end A275585.P8311318446761420817

/-! ## A275585.P5332210213426383647

`(A004442(n)-n)²*A321876(A055998(n+1))`
-/

namespace A275585.P5332210213426383647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) ^ 2 * A321876 (A055998 (n + 1)).toNat

end

end A275585.P5332210213426383647

/-! ## A275585.P10339059232573678359

`A000265(A048896(n))*A321876(A055998(n+1))`
-/

namespace A275585.P10339059232573678359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A048896 n).toNat * A321876 (A055998 (n + 1)).toNat

end

end A275585.P10339059232573678359

/-! ## A275585.P11376406565914591808

`A007318(A051699(n))*A321876(A055998(n+1))`
-/

namespace A275585.P11376406565914591808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A051699 n).toNat * A321876 (A055998 (n + 1)).toNat

end

end A275585.P11376406565914591808

/-! ## A275585.P7261877240457715450

`A001222(A126715(n))*A321876(A055998(n+1))`
-/

namespace A275585.P7261877240457715450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A126715 n).toNat * A321876 (A055998 (n + 1)).toNat

end

end A275585.P7261877240457715450

/-! ## A275585.P15886319985578476347

`A001222(A331807(n+2))*A321876(A055998(n+1))`
-/

namespace A275585.P15886319985578476347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A331807 (n + 2)).toNat * A321876 (A055998 (n + 1)).toNat

end

end A275585.P15886319985578476347

/-!
# A275586: Numbers k that appear more than once in c_{m,n} for integers m >= n >= 1 where c_{m,n} = ((m+n)!(m-n+1))/((n)!(m+1)!).

The programs for A275586, there is no canonical definition to state claims against.
-/

/-! ## A275586.P16992195707541903800

`record[gcd(A119308(n), A269332(n+1))]`
-/

namespace A275586.P16992195707541903800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A119308 n) (A269332 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275586.P16992195707541903800

/-! ## A275586.P14983958371395917014

`record[A050175(A007318(n))%A039599(n+3)]`
-/

namespace A275586.P14983958371395917014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050175 (A007318 n).toNat) (A039599 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275586.P14983958371395917014

/-! ## A275586.P9537175869023689664

`lt[A027466(n)%(A128468(n+1)+n), A182165(n+1)]`
-/

namespace A275586.P9537175869023689664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027466 n) (A128468 (n + 1) + (n : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182165 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275586.P9537175869023689664

/-!
# A275587: a(1) = 0; thereafter a(n) = s^s where s = Sum_{k=1..n-1} a(k).

The programs for A275587, there is no canonical definition to state claims against.
-/

/-! ## A275587.P7628683476584044620

`floor(ϕ*n)^xor(2, n)`
-/

namespace A275587.P7628683476584044620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋ ^ Nat.xor 2 n

end

end A275587.P7628683476584044620

/-!
# A275588: 

The programs for A275588, there is no canonical definition to state claims against.
-/

/-! ## A275588.P1471879276721378594

`(4*(n+1))^a(n-2)^5` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A275588.P1471879276721378594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  (4 * (n + 1)) ^ a (n - 2) ^ 5

end

end A275588.P1471879276721378594

/-!
# A275591: a(n) = n^2 + 9*n + 1.

The programs for A275591, the canonical program `A275591.P14317602606310303744` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275591 has offset 0).

The definition of A275591 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+9*n+1` (program `A275591.P14317602606310303744`, by `A275591.P14317602606310303744.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A275591.P14317602606310303744

`n²+9*n+1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A275591

/-- `n²+9*n+1` -/
def P14317602606310303744.Spec : Prop :=
  ∀ n, (P14317602606310303744.a n : ℤ) = A275591 n

theorem P14317602606310303744.correct : P14317602606310303744.Spec := by
  intro n
  simp only [A275591]

end A275591

/-! ## A275591.P7369621605641735874

`ogf((1+8x-7x^2)/(1-3x+3x^2-x^3))`
-/

namespace A275591.P7369621605641735874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8, -7] [1, -3, 3, -1] n

end

end A275591.P7369621605641735874

namespace A275591

/-- `ogf((1+8x-7x^2)/(1-3x+3x^2-x^3))` -/
def P7369621605641735874.Spec : Prop :=
  ∀ n, P7369621605641735874.a n = A275591 n

end A275591

/-! ## A275591.P17946130274399590677

`record[1-n*(9-n)]`
-/

namespace A275591.P17946130274399590677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) * (9 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275591.P17946130274399590677

namespace A275591

/-- `record[1-n*(9-n)]` -/
def P17946130274399590677.Spec : Prop :=
  ∀ n, P17946130274399590677.a n = A275591 n

end A275591

/-! ## A275591.P13973295574106330498

`∑[a(n-1)+2]` with `a(0)=1, a(1)=10`
-/

namespace A275591.P13973295574106330498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275591.P13973295574106330498

namespace A275591

/-- `∑[a(n-1)+2]` -/
def P13973295574106330498.Spec : Prop :=
  ∀ n, (P13973295574106330498.a n : ℤ) = A275591 n

end A275591

/-! ## A275591.P13463351194807267313

`∑[ogf((1+8x-7x^2)/(1-2x+x^2))]`
-/

namespace A275591.P13463351194807267313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8, -7] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275591.P13463351194807267313

namespace A275591

/-- `∑[ogf((1+8x-7x^2)/(1-2x+x^2))]` -/
def P13463351194807267313.Spec : Prop :=
  ∀ n, P13463351194807267313.a n = A275591 n

end A275591

/-! ## A275591.P7740332381160351934

`floor(a(n-1)+8+n+n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A275591.P7740332381160351934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 8 + n + n

end

end A275591.P7740332381160351934

namespace A275591

/-- `floor(a(n-1)+8+n+n)` -/
def P7740332381160351934.Spec : Prop :=
  ∀ n, (P7740332381160351934.a n : ℤ) = A275591 n

theorem P7740332381160351934.correct : P7740332381160351934.Spec := by
  intro n
  induction n with
  | zero => simp [A275591, A275591.P7740332381160351934.a, A275591.P14317602606310303744.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A275591, Nat.add_sub_cancel, A275591.P7740332381160351934.a, A275591.P14317602606310303744.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A275591

/-! ## A275591.P11163898675682482465

`xor(1, A028566(n)+n)`
-/

namespace A275591.P11163898675682482465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A028566 n + (n : ℤ))

end

end A275591.P11163898675682482465

namespace A275591

/-- `xor(1, A028566(n)+n)` -/
def P11163898675682482465.Spec : Prop :=
  ∀ n, P11163898675682482465.a n = A275591 n

end A275591

/-! ## A275591.P14569315178259257816

`abs(A098603(n)+1-n)`
-/

namespace A275591.P14569315178259257816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A098603 n + (1 - (n : ℤ))|

end

end A275591.P14569315178259257816

namespace A275591

/-- `abs(A098603(n)+1-n)` -/
def P14569315178259257816.Spec : Prop :=
  ∀ n, P14569315178259257816.a n = A275591 n

end A275591

/-! ## A275591.P12496896030756325088

`(A139580(n)+2+n)/2`
-/

namespace A275591.P12496896030756325088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139580 n + 2 + (n : ℤ) : ℚ) / 2

end

end A275591.P12496896030756325088

namespace A275591

/-- `(A139580(n)+2+n)/2` -/
def P12496896030756325088.Spec : Prop :=
  ∀ n, P12496896030756325088.a n = (A275591 n : ℚ)

theorem P12496896030756325088.correct : P12496896030756325088.Spec := by
  intro n
  simp only [A275591, Nat.add_sub_cancel, A275591.P12496896030756325088.a, A275591.P14317602606310303744.a, A139580, A139580.P14196476466695398530.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A275591

/-! ## A275591.P4906698307384544816

`(A139581(n)+2-n)/2`
-/

namespace A275591.P4906698307384544816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139581 n + (2 - (n : ℤ)) : ℚ) / 2

end

end A275591.P4906698307384544816

namespace A275591

/-- `(A139581(n)+2-n)/2` -/
def P4906698307384544816.Spec : Prop :=
  ∀ n, P4906698307384544816.a n = (A275591 n : ℚ)

theorem P4906698307384544816.correct : P4906698307384544816.Spec := by
  intro n
  simp only [A275591, Nat.add_sub_cancel, A275591.P4906698307384544816.a, A275591.P14317602606310303744.a, A139581, A139581.P16722424302175688649.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A275591

/-! ## A275591.P15382607423859204706

`A110831(n+1)%A154599(n+1)`
-/

namespace A275591.P15382607423859204706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110831 (n + 1)) (A154599 (n + 1))

end

end A275591.P15382607423859204706

namespace A275591

/-- `A110831(n+1)%A154599(n+1)` -/
def P15382607423859204706.Spec : Prop :=
  ∀ n, P15382607423859204706.a n = A275591 n

end A275591

/-! ## A275591.P13282141473758116898

`A067727(n+1)%A228319(n+1)`
-/

namespace A275591.P13282141473758116898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067727 (n + 1)) (A228319 (n + 1))

end

end A275591.P13282141473758116898

namespace A275591

/-- `A067727(n+1)%A228319(n+1)` -/
def P13282141473758116898.Spec : Prop :=
  ∀ n, P13282141473758116898.a n = A275591 n

end A275591

/-! ## A275591.P3904764861841282415

`∑[A171892(n+2)+n]`
-/

namespace A275591.P3904764861841282415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171892 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275591.P3904764861841282415

namespace A275591

/-- `∑[A171892(n+2)+n]` -/
def P3904764861841282415.Spec : Prop :=
  ∀ n, P3904764861841282415.a n = A275591 n

end A275591

/-! ## A275591.P1109151918291347886

`∑[A163750(n+4)]`
-/

namespace A275591.P1109151918291347886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163750 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275591.P1109151918291347886

namespace A275591

/-- `∑[A163750(n+4)]` -/
def P1109151918291347886.Spec : Prop :=
  ∀ n, P1109151918291347886.a n = A275591 n

end A275591

/-! ## A275591.P17152614366624033777

`∑[record[A010690(n)+n]]`
-/

namespace A275591.P17152614366624033777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010690 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275591.P17152614366624033777

namespace A275591

/-- `∑[record[A010690(n)+n]]` -/
def P17152614366624033777.Spec : Prop :=
  ∀ n, P17152614366624033777.a n = A275591 n

end A275591

/-! ## A275591.P12982387004829066978

`∑[A171892(2*(n+1))]`
-/

namespace A275591.P12982387004829066978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171892 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275591.P12982387004829066978

namespace A275591

/-- `∑[A171892(2*(n+1))]` -/
def P12982387004829066978.Spec : Prop :=
  ∀ n, P12982387004829066978.a n = A275591 n

end A275591

/-! ## A275591.P9601837834650830370

`∑[A171893(2*n+1)]`
-/

namespace A275591.P9601837834650830370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171893 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275591.P9601837834650830370

namespace A275591

/-- `∑[A171893(2*n+1)]` -/
def P9601837834650830370.Spec : Prop :=
  ∀ n, P9601837834650830370.a n = A275591 n

end A275591

/-! ## A275591.P10338728292516211510

`A004273(∑[n+3]+n-2)`
-/

namespace A275591.P10338728292516211510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((n : ℤ) - 2)).toNat

end

end A275591.P10338728292516211510

namespace A275591

/-- `A004273(∑[n+3]+n-2)` -/
def P10338728292516211510.Spec : Prop :=
  ∀ n, P10338728292516211510.a n = A275591 n

end A275591

/-! ## A275591.P10367087638685029906

`A047259(∑[n+3]+n-2)`
-/

namespace A275591.P10367087638685029906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047259 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((n : ℤ) - 2)).toNat

end

end A275591.P10367087638685029906

namespace A275591

/-- `A047259(∑[n+3]+n-2)` -/
def P10367087638685029906.Spec : Prop :=
  ∀ n, P10367087638685029906.a n = A275591 n

end A275591

/-! ## A275591.P1283436717788859903

`A033465(A056000(n))`
-/

namespace A275591.P1283436717788859903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033465 (A056000 n).toNat

end

end A275591.P1283436717788859903

namespace A275591

/-- `A033465(A056000(n))` -/
def P1283436717788859903.Spec : Prop :=
  ∀ n, P1283436717788859903.a n = A275591 n

end A275591

/-!
# A275592: Number of compositions of n if only the order of the even numbers matter.

The programs for A275592, there is no canonical definition to state claims against.
-/

/-! ## A275592.P18089041499445565897

`A000196(floor(sqrt(A041014(n))))`
-/

namespace A275592.P18089041499445565897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.sqrt (A041014 n)).toNat

end

end A275592.P18089041499445565897

/-! ## A275592.P5040722201052898814

`A137735(floor(sqrt(A041014(n))))`
-/

namespace A275592.P5040722201052898814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (Int.sqrt (A041014 n)).toNat

end

end A275592.P5040722201052898814

/-! ## A275592.P18275952234431435003

`A000196(round(sqrt(A041014(n))))`
-/

namespace A275592.P18275952234431435003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway (Real.sqrt (A041014 n : ℝ))).toNat

end

end A275592.P18275952234431435003

/-! ## A275592.P8460925950520881885

`A000194(n*A346799(n+1)+1)`
-/

namespace A275592.P8460925950520881885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((n : ℤ) * A346799 (n + 1) + 1).toNat

end

end A275592.P8460925950520881885

/-! ## A275592.P10873968867328379059

`A319635(n)-A218470(n)`
-/

namespace A275592.P10873968867328379059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319635 n - A218470 n

end

end A275592.P10873968867328379059

/-!
# A275593: Shifts 2 places left under MNL transform.

The programs for A275593, there is no canonical definition to state claims against.
-/

/-! ## A275593.P18102684983012939112

`∏[A034178(∏[or(1, n)])]`
-/

namespace A275593.P18102684983012939112
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A275593.P18102684983012939112

/-! ## A275593.P14594138235188466269

`∏[A038548(∏[or(1, n)])]`
-/

namespace A275593.P14594138235188466269
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A275593.P14594138235188466269

/-! ## A275593.P15533224058365099168

`lcm(2, A385754(a(n-1)))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A275593.P15533224058365099168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  Int.lcm 2 (A385754 (a (n - 1)))

end

end A275593.P15533224058365099168

/-!
# A275594: Shifts 3 places left under MNL transform.

The programs for A275594, there is no canonical definition to state claims against.
-/

/-! ## A275594.P13853070063528782071

`∏[floor(sqrt(A283314(n+1)))]`
-/

namespace A275594.P13853070063528782071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A283314 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A275594.P13853070063528782071

/-! ## A275594.P2047353075007694255

`∏[A237593(Δ[floor(10^(n/2))])]`
-/

namespace A275594.P2047353075007694255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 : ℝ) ^ ((n : ℚ) / 2 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237593 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A275594.P2047353075007694255

/-! ## A275594.P12641132113517281414

`∏[A000005(7^floor(C(n, 2)/4))]`
-/

namespace A275594.P12641132113517281414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (⌊(Nat.choose n 2 : ℚ) / 4⌋ : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A275594.P12641132113517281414

/-! ## A275594.P13907523004141895060

`∏[A050252(a(n-1)+n!)]` with `a(0)=1`
-/

namespace A275594.P13907523004141895060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A050252 (f1 (n - 1) + (Nat.factorial n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A275594.P13907523004141895060

/-!
# A275597: Number of simple labeled graphs G on n vertices such that for each k in {1,2,...,n}, G has exactly k connected components and the vertices labeled with {1,2,...,k} are all in different components.

The programs for A275597, there is no canonical definition to state claims against.
-/

/-! ## A275597.P13124891839895515210

`A122621(A200862(n))`
-/

namespace A275597.P13124891839895515210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122621 (A200862 n).toNat

end

end A275597.P13124891839895515210

/-!
# A275598: Primes p such that the number of odd divisors of p-1 is a prime q which is equal to the number of odd divisors of p+1.

The programs for A275598, there is no canonical definition to state claims against.
-/

/-! ## A275598.P17681117673891672929

`∩[A215504(n+1), A275418(n+1)]`
-/

namespace A275598.P17681117673891672929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275598.P17681117673891672929

/-! ## A275598.P11533798305190343703

`∩[A275418(n+1), A284037(n+1)]`
-/

namespace A275598.P11533798305190343703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275418 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275598.P11533798305190343703

/-! ## A275598.P8111686059408138845

`∩[A215504(n+1), A391384(n+1)]`
-/

namespace A275598.P8111686059408138845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275598.P8111686059408138845

/-!
# A275599: Triangle read by rows: T(n,k) = number of right-skewed domino towers with n dominoes having a base of k dominoes placed end-to-end.

The programs for A275599, there is no canonical definition to state claims against.
-/

/-! ## A275599.P901847937959171459

`A104709(n)+A008683(A235421(n+1))`
-/

namespace A275599.P901847937959171459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104709 n + A008683 (A235421 (n + 1)).toNat

end

end A275599.P901847937959171459

/-! ## A275599.P10457159160572729505

`A210038(n+1)-A025469(A155020(n))`
-/

namespace A275599.P10457159160572729505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210038 (n + 1) - A025469 (A155020 n).toNat

end

end A275599.P10457159160572729505

/-! ## A275599.P7308071605814780547

`A372832(C(A143496(n+4), A118350(n)))`
-/

namespace A275599.P7308071605814780547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372832 (Nat.choose (A143496 (n + 4)).toNat (A118350 n).toNat)

end

end A275599.P7308071605814780547

/-! ## A275599.P5928343293707284792

`A372832(C(A143496(n+4), A286335(n)))`
-/

namespace A275599.P5928343293707284792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372832 (Nat.choose (A143496 (n + 4)).toNat (A286335 n).toNat)

end

end A275599.P5928343293707284792

