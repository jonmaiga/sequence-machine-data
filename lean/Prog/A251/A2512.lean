import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
import Seq.B011.C000
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
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

/-!
# A251200: Number of (n+1)X(7+1) 0..1 arrays with no 2X2 subblock having the minimum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A251200, there is no canonical definition to state claims against.
-/

/-! ## A251200.P16659650191250266543

`A251201(eq[8, A131818(n+1)])`
-/

namespace A251200.P16659650191250266543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251201 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251200.P16659650191250266543

/-! ## A251200.P3064073927902933908

`A251201(A374008(n+1))`
-/

namespace A251200.P3064073927902933908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251201 (A374008 (n + 1)).toNat

end

end A251200.P3064073927902933908

/-! ## A251200.P10880897240846438001

`A251201(A055999(n+4))`
-/

namespace A251200.P10880897240846438001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251201 (A055999 (n + 4)).toNat

end

end A251200.P10880897240846438001

/-! ## A251200.P878192157000123423

`A251201(eq[4, A219347(n)])`
-/

namespace A251200.P878192157000123423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251201 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251200.P878192157000123423

/-! ## A251200.P13772013446311938838

`A251201(eq[6, A193592(n)])`
-/

namespace A251200.P13772013446311938838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251201 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251200.P13772013446311938838

/-!
# A251201: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with no 2X2 subblock having the minimum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A251201, there is no canonical definition to state claims against.
-/

/-! ## A251201.P6134052554713671943

`A055086(4*A210125(n+1))`
-/

namespace A251201.P6134052554713671943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (4 * A210125 (n + 1)).toNat

end

end A251201.P6134052554713671943

/-! ## A251201.P12454045403031765591

`A293137(4*A210125(n+1))`
-/

namespace A251201.P12454045403031765591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 (4 * A210125 (n + 1)).toNat

end

end A251201.P12454045403031765591

/-!
# A251202: Number of (n+1)X(n+1) 0..2 arrays with every 2X2 subblock summing to a nonzero multiple of 2.

The programs for A251202, there is no canonical definition to state claims against.
-/

/-! ## A251202.P11400081862111218063

`A251210(∑[4*n]+1)`
-/

namespace A251202.P11400081862111218063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251210 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251202.P11400081862111218063

/-!
# A251203: Number of (n+1) X (1+1) 0..2 arrays with every 2 X 2 subblock summing to a nonzero multiple of 2.

The programs for A251203, the canonical program `A251203.P14081091797382294216` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251203 has offset 1).

The definition of A251203 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251203.P14081091797382294216

`(A069306(n+3)+A000079(n+3))*A000079(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A251203

/-- `(A069306(n+3)+A000079(n+3))*A000079(n+1)` -/
def P14081091797382294216.Spec : Prop :=
  ∀ n, P14081091797382294216.a n = A251203 (n + 1)

theorem P14081091797382294216.correct : P14081091797382294216.Spec := by
  intro n
  simp only [A251203, Nat.add_sub_cancel]

end A251203

/-! ## A251203.P3083224614631185952

`(A000129(n+4)+A000079(n+3))*A000079(n+1)`
-/

namespace A251203.P3083224614631185952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000129 (n + 4) + A000079 (n + 3)) * A000079 (n + 1)

end

end A251203.P3083224614631185952

namespace A251203

/-- `(A000129(n+4)+A000079(n+3))*A000079(n+1)` -/
def P3083224614631185952.Spec : Prop :=
  ∀ n, P3083224614631185952.a n = A251203 (n + 1)

end A251203

/-! ## A251203.P5076029050936758737

`(A011782(n+4)+A000129(n+4))*A011782(n+2)`
-/

namespace A251203.P5076029050936758737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 4) + A000129 (n + 4)) * A011782 (n + 2)

end

end A251203.P5076029050936758737

namespace A251203

/-- `(A011782(n+4)+A000129(n+4))*A011782(n+2)` -/
def P5076029050936758737.Spec : Prop :=
  ∀ n, P5076029050936758737.a n = A251203 (n + 1)

end A251203

/-! ## A251203.P4161423142140428483

`8*a(n-1)-12*a(n-2)-16*a(n-3)` with `a(0)=40, a(1)=180, a(2)=816`
-/

namespace A251203.P4161423142140428483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [40, 180, 816] fun n a =>
  8 * a (n - 1) - 12 * a (n - 2) - 16 * a (n - 3)

end

end A251203.P4161423142140428483

namespace A251203

/-- `8*a(n-1)-12*a(n-2)-16*a(n-3)` -/
def P4161423142140428483.Spec : Prop :=
  ∀ n, P4161423142140428483.a n = A251203 (n + 1)

end A251203

/-! ## A251203.P9191380411289238726

`A251210(∑[n]+1)`
-/

namespace A251203.P9191380411289238726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251210 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251203.P9191380411289238726

namespace A251203

/-- `A251210(∑[n]+1)` -/
def P9191380411289238726.Spec : Prop :=
  ∀ n, P9191380411289238726.a n = A251203 (n + 1)

end A251203

/-!
# A251204: Number of (n+1) X (2+1) 0..2 arrays with every 2 X 2 subblock summing to a nonzero multiple of 2.

The programs for A251204, there is no canonical definition to state claims against.
-/

/-! ## A251204.P14032985582010310250

`A251210(∑[n+1]+2)`
-/

namespace A251204.P14032985582010310250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251210 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251204.P14032985582010310250

/-! ## A251204.P8594410773702872804

`record[A251210(A286235(n+1)+1)]`
-/

namespace A251204.P8594410773702872804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251210 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251204.P8594410773702872804

/-! ## A251204.P14886266486647184629

`record[A251210(A286237(n+1)+1)]`
-/

namespace A251204.P14886266486647184629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251210 (A286237 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251204.P14886266486647184629

/-! ## A251204.P17345524808192568699

`record[A251210(A286238(n+1)+1)]`
-/

namespace A251204.P17345524808192568699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251210 (A286238 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251204.P17345524808192568699

/-! ## A251204.P2788401240661167902

`record[A251210(A000096(C(comp[∑[n]]-n, 2)-n))]`
-/

namespace A251204.P2788401240661167902
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251210 (A000096 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251204.P2788401240661167902

/-!
# A251205: Number of (n+1)X(3+1) 0..2 arrays with every 2X2 subblock summing to a nonzero multiple of 2.

The programs for A251205, there is no canonical definition to state claims against.
-/

/-! ## A251205.P8546414983098391509

`A251210(∑[n+2]+4)`
-/

namespace A251205.P8546414983098391509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251210 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251205.P8546414983098391509

/-! ## A251205.P18200953191436056189

`A251210(A167614(n+1))+A025469(n)`
-/

namespace A251205.P18200953191436056189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251210 (A167614 (n + 1)).toNat + A025469 n

end

end A251205.P18200953191436056189

/-! ## A251205.P14980775169200459293

`A251210(A167614(n+1))+A034518(n+1)`
-/

namespace A251205.P14980775169200459293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251210 (A167614 (n + 1)).toNat + A034518 (n + 1)

end

end A251205.P14980775169200459293

/-! ## A251205.P14941955366809663449

`A251210(A167614(n+1))%A251206(n+1)`
-/

namespace A251205.P14941955366809663449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251210 (A167614 (n + 1)).toNat) (A251206 (n + 1))

end

end A251205.P14941955366809663449

/-! ## A251205.P910631350262032100

`lcm(A153881(n+1), A251210(A167614(n+1)))`
-/

namespace A251205.P910631350262032100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A153881 (n + 1)) (A251210 (A167614 (n + 1)).toNat)

end

end A251205.P910631350262032100

/-!
# A251206: Number of (n+1)X(4+1) 0..2 arrays with every 2X2 subblock summing to a nonzero multiple of 2.

The programs for A251206, there is no canonical definition to state claims against.
-/

/-! ## A251206.P8961116358438809618

`A251210(A374004(n+1))`
-/

namespace A251206.P8961116358438809618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251210 (A374004 (n + 1)).toNat

end

end A251206.P8961116358438809618

/-! ## A251206.P1258610296548075386

`A251210(A052905(n)+9)`
-/

namespace A251206.P1258610296548075386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251210 (A052905 n + 9).toNat

end

end A251206.P1258610296548075386

/-! ## A251206.P5211639329145700289

`A251210(A055999(n)+10)`
-/

namespace A251206.P5211639329145700289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251210 (A055999 n + 10).toNat

end

end A251206.P5211639329145700289

/-! ## A251206.P15315122121879925106

`A251210(A167614(n+2)+1)`
-/

namespace A251206.P15315122121879925106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251210 (A167614 (n + 2) + 1).toNat

end

end A251206.P15315122121879925106

/-! ## A251206.P9431630112310458174

`A251210(Δ[A264443(n)-n²])`
-/

namespace A251206.P9431630112310458174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251210 (f1 (n + 1) - f1 n).toNat

end

end A251206.P9431630112310458174

/-!
# A251207: Number of (n+1)X(5+1) 0..2 arrays with every 2X2 subblock summing to a nonzero multiple of 2.

The programs for A251207, there is no canonical definition to state claims against.
-/

/-! ## A251207.P8125473291987212841

`A251210(A374005(n+1))`
-/

namespace A251207.P8125473291987212841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251210 (A374005 (n + 1)).toNat

end

end A251207.P8125473291987212841

/-! ## A251207.P11685960991401476118

`A251210(A056000(n)+15)`
-/

namespace A251207.P11685960991401476118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251210 (A056000 n + 15).toNat

end

end A251207.P11685960991401476118

/-! ## A251207.P13567002425693599547

`A251210(Δ[A264443(n)])`
-/

namespace A251207.P13567002425693599547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251210 (f1 (n + 1) - f1 n).toNat

end

end A251207.P13567002425693599547

/-! ## A251207.P12338661837437121144

`A251210(A056115(n)+11)`
-/

namespace A251207.P12338661837437121144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251210 (A056115 n + 11).toNat

end

end A251207.P12338661837437121144

/-! ## A251207.P14188036398177445579

`A251210(eq[4, A193592(n)])`
-/

namespace A251207.P14188036398177445579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251210 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251207.P14188036398177445579

/-!
# A251208: Number of (n+1)X(6+1) 0..2 arrays with every 2X2 subblock summing to a nonzero multiple of 2.

The programs for A251208, there is no canonical definition to state claims against.
-/

/-! ## A251208.P15738521478764819617

`A251210(A374007(n+1))`
-/

namespace A251208.P15738521478764819617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251210 (A374007 (n + 1)).toNat

end

end A251208.P15738521478764819617

/-! ## A251208.P13020047471290043319

`A251210(eq[5, A193592(n)])`
-/

namespace A251208.P13020047471290043319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251210 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251208.P13020047471290043319

/-! ## A251208.P14981363573055549806

`A251210(eq[1, A219347(n)-2])`
-/

namespace A251208.P14981363573055549806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251210 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251208.P14981363573055549806

/-! ## A251208.P2912799174250726436

`A251210(eq[6, A200370(n+1)])`
-/

namespace A251208.P2912799174250726436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251210 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251208.P2912799174250726436

/-!
# A251209: Number of (n+1)X(7+1) 0..2 arrays with every 2X2 subblock summing to a nonzero multiple of 2.

The programs for A251209, there is no canonical definition to state claims against.
-/

/-! ## A251209.P3483739337658369497

`A251210(A374008(n+1))`
-/

namespace A251209.P3483739337658369497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251210 (A374008 (n + 1)).toNat

end

end A251209.P3483739337658369497

/-! ## A251209.P1931544972779104902

`A251210(eq[4, A219347(n)])`
-/

namespace A251209.P1931544972779104902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251210 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251209.P1931544972779104902

/-! ## A251209.P18340862905872996054

`A251210(eq[6, A193592(n)])`
-/

namespace A251209.P18340862905872996054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251210 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251209.P18340862905872996054

/-! ## A251209.P10117367633727087760

`A251210(eq[7, A200370(n+1)])`
-/

namespace A251209.P10117367633727087760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251210 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251209.P10117367633727087760

/-! ## A251209.P5491679207637416251

`A251210(eq[10, A185782(n+1)])`
-/

namespace A251209.P5491679207637416251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251210 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251209.P5491679207637416251

/-!
# A251211: Number of (n+1) X (n+1) 0..1 arrays with no 2 X 2 subblock having zero or two 1's.

The programs for A251211, there is no canonical definition to state claims against.
-/

/-! ## A251211.P13112951899667810436

`A251219(∑[4*n]+1)`
-/

namespace A251211.P13112951899667810436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251219 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251211.P13112951899667810436

/-! ## A251211.P1441680208009959838

`record[gcd(A049581(n), A251219(n+1))]`
-/

namespace A251211.P1441680208009959838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A251219 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251211.P1441680208009959838

/-! ## A251211.P13298959922298721158

`or(A000007(n), A251219(A001844(n)))`
-/

namespace A251211.P13298959922298721158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A251219 (A001844 n).toNat)

end

end A251211.P13298959922298721158

/-! ## A251211.P6071624089005293224

`or(A251219(A001844(n)), A330549(n))`
-/

namespace A251211.P6071624089005293224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A251219 (A001844 n).toNat) (A330549 n)

end

end A251211.P6071624089005293224

/-! ## A251211.P5138165174440385079

`or(A251219(A001844(n)), A340998(n))`
-/

namespace A251211.P5138165174440385079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A251219 (A001844 n).toNat) (A340998 (n + 140))

end

end A251211.P5138165174440385079

/-!
# A251212: Number of (n+1) X (1+1) 0..1 arrays with no 2 X 2 subblock having zero or two 1's.

The programs for A251212, the canonical program `A251212.P4558109924610362017` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251212 has offset 1).

The definition of A251212 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 268 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251212.P4558109924610362017

`a(n-1)+4*a(n-2)-2*a(n-3)` with `a(0)=9, a(1)=21, a(2)=49`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A251212

/-- `a(n-1)+4*a(n-2)-2*a(n-3)` -/
def P4558109924610362017.Spec : Prop :=
  ∀ n, P4558109924610362017.a n = A251212 (n + 1)

theorem P4558109924610362017.correct : P4558109924610362017.Spec := by
  intro n
  simp only [A251212, Nat.add_sub_cancel]

end A251212

/-! ## A251212.P3850490537383584255

`A251219(∑[n]+1)`
-/

namespace A251212.P3850490537383584255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251219 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251212.P3850490537383584255

namespace A251212

/-- `A251219(∑[n]+1)` -/
def P3850490537383584255.Spec : Prop :=
  ∀ n, P3850490537383584255.a n = A251212 (n + 1)

end A251212

/-! ## A251212.P13964429167389496133

`or(1, A251219(A000124(n)))`
-/

namespace A251212.P13964429167389496133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A251219 (A000124 n).toNat)

end

end A251212.P13964429167389496133

namespace A251212

/-- `or(1, A251219(A000124(n)))` -/
def P13964429167389496133.Spec : Prop :=
  ∀ n, P13964429167389496133.a n = A251212 (n + 1)

end A251212

/-! ## A251212.P4601241030487105071

`record[root(A251219(n+1), A007318(n))]`
-/

namespace A251212.P4601241030487105071
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251219 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251212.P4601241030487105071

namespace A251212

/-- `record[root(A251219(n+1), A007318(n))]` -/
def P4601241030487105071.Spec : Prop :=
  ∀ n, P4601241030487105071.a n = (A251212 (n + 1) : ℝ)

end A251212

/-! ## A251212.P12274925246152365062

`record[root(A251219(n+1), A091042(n))]`
-/

namespace A251212.P12274925246152365062
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251219 (n + 1) : ℝ) ^ (1 / (A091042 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251212.P12274925246152365062

namespace A251212

/-- `record[root(A251219(n+1), A091042(n))]` -/
def P12274925246152365062.Spec : Prop :=
  ∀ n, P12274925246152365062.a n = (A251212 (n + 1) : ℝ)

end A251212

/-!
# A251213: Number of (n+1)X(2+1) 0..1 arrays with no 2X2 subblock having zero or two 1s.

The programs for A251213, there is no canonical definition to state claims against.
-/

/-! ## A251213.P11007483675256205442

`A251219(∑[n+1]+2)`
-/

namespace A251213.P11007483675256205442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251219 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251213.P11007483675256205442

/-! ## A251213.P3178561600057074625

`or(1, A251219(A133263(n+1)))`
-/

namespace A251213.P3178561600057074625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A251219 (A133263 (n + 1)).toNat)

end

end A251213.P3178561600057074625

/-! ## A251213.P13976471710071640238

`record[A251219(A114091(n+1)+1)]`
-/

namespace A251213.P13976471710071640238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251219 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251213.P13976471710071640238

/-! ## A251213.P18258823160515640703

`record[A251219(abs(A201163(n)))]`
-/

namespace A251213.P18258823160515640703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251219 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251213.P18258823160515640703

/-! ## A251213.P5840578027077892675

`record[A251219(Δ[A003453(n+5)])]`
-/

namespace A251213.P5840578027077892675
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251219 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251213.P5840578027077892675

/-!
# A251214: Number of (n+1) X (3+1) 0..1 arrays with no 2 X 2 subblock having zero or two 1s.

The programs for A251214, there is no canonical definition to state claims against.
-/

/-! ## A251214.P13703463426001939874

`A251219(∑[n+2]+4)`
-/

namespace A251214.P13703463426001939874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251219 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251214.P13703463426001939874

/-! ## A251214.P16787073544665664281

`lcm(A020985(n), A251219(A167614(n+1)))`
-/

namespace A251214.P16787073544665664281
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A251219 (A167614 (n + 1)).toNat)

end

end A251214.P16787073544665664281

/-! ## A251214.P13021445371297989582

`or(A000007(n), A251219(A167614(n+1)))`
-/

namespace A251214.P13021445371297989582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A251219 (A167614 (n + 1)).toNat)

end

end A251214.P13021445371297989582

/-! ## A251214.P10969748444505415189

`A007318(C(2, n))*A251219(A167614(n+1))`
-/

namespace A251214.P10969748444505415189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A251219 (A167614 (n + 1)).toNat

end

end A251214.P10969748444505415189

/-! ## A251214.P11574519347182611544

`A000041(round(1/(n+1)))*A251219(A000124(n+2)+2)`
-/

namespace A251214.P11574519347182611544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway (1 / (n + 1 : ℚ))).toNat * A251219 (A000124 (n + 2) + 2).toNat

end

end A251214.P11574519347182611544

/-!
# A251215: Number of (n+1)X(4+1) 0..1 arrays with no 2X2 subblock having zero or two 1s.

The programs for A251215, there is no canonical definition to state claims against.
-/

/-! ## A251215.P10791936403300252996

`A251219(A374004(n+1))`
-/

namespace A251215.P10791936403300252996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251219 (A374004 (n + 1)).toNat

end

end A251215.P10791936403300252996

/-! ## A251215.P9786421809240738378

`A251219(A052905(n)+9)`
-/

namespace A251215.P9786421809240738378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251219 (A052905 n + 9).toNat

end

end A251215.P9786421809240738378

/-! ## A251215.P11535714908586188487

`A251219(A055999(n)+10)`
-/

namespace A251215.P11535714908586188487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251219 (A055999 n + 10).toNat

end

end A251215.P11535714908586188487

/-! ## A251215.P5187503177096170467

`A251219(A167614(n+2)+1)`
-/

namespace A251215.P5187503177096170467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251219 (A167614 (n + 2) + 1).toNat

end

end A251215.P5187503177096170467

/-! ## A251215.P4767870991397453951

`A251219(Δ[A023545(n+1)-n²])`
-/

namespace A251215.P4767870991397453951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251219 (f1 (n + 1) - f1 n).toNat

end

end A251215.P4767870991397453951

/-!
# A251216: Number of (n+1)X(5+1) 0..1 arrays with no 2X2 subblock having zero or two 1s.

The programs for A251216, there is no canonical definition to state claims against.
-/

/-! ## A251216.P5424706371056857953

`A251219(A374005(n+1))`
-/

namespace A251216.P5424706371056857953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251219 (A374005 (n + 1)).toNat

end

end A251216.P5424706371056857953

/-! ## A251216.P6866975818185224382

`A251219(A167499(n+3))`
-/

namespace A251216.P6866975818185224382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251219 (A167499 (n + 3)).toNat

end

end A251216.P6866975818185224382

/-! ## A251216.P6127941612114021292

`A251219(A056000(n)+15)`
-/

namespace A251216.P6127941612114021292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251219 (A056000 n + 15).toNat

end

end A251216.P6127941612114021292

/-! ## A251216.P11006290844658586015

`A251219(eq[6, A131818(n+1)])`
-/

namespace A251216.P11006290844658586015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251219 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251216.P11006290844658586015

/-! ## A251216.P16127379040119427467

`A251219(A046691(n+3))`
-/

namespace A251216.P16127379040119427467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251219 (A046691 (n + 3)).toNat

end

end A251216.P16127379040119427467

/-!
# A251217: Number of (n+1)X(6+1) 0..1 arrays with no 2X2 subblock having zero or two 1s.

The programs for A251217, there is no canonical definition to state claims against.
-/

/-! ## A251217.P11980203597454208543

`A251219(A374007(n+1))`
-/

namespace A251217.P11980203597454208543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251219 (A374007 (n + 1)).toNat

end

end A251217.P11980203597454208543

/-! ## A251217.P14711140818616832927

`A251219(eq[7, A131818(n+1)])`
-/

namespace A251217.P14711140818616832927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251219 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251217.P14711140818616832927

/-! ## A251217.P3447019138844264055

`A251219(eq[3, A219347(n)])`
-/

namespace A251217.P3447019138844264055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251219 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251217.P3447019138844264055

/-! ## A251217.P13675609417282522181

`A251219(eq[5, A193592(n)])`
-/

namespace A251217.P13675609417282522181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251219 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251217.P13675609417282522181

/-! ## A251217.P13262337320039518993

`A251219(eq[8, A185782(n+1)])`
-/

namespace A251217.P13262337320039518993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251219 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251217.P13262337320039518993

/-!
# A251218: Number of (n+1)X(7+1) 0..1 arrays with no 2X2 subblock having zero or two 1s.

The programs for A251218, there is no canonical definition to state claims against.
-/

/-! ## A251218.P14268978503110408089

`A251219(A374008(n+1))`
-/

namespace A251218.P14268978503110408089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251219 (A374008 (n + 1)).toNat

end

end A251218.P14268978503110408089

/-! ## A251218.P7549934774401896799

`A251219(eq[8, A131818(n+1)])`
-/

namespace A251218.P7549934774401896799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251219 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251218.P7549934774401896799

/-! ## A251218.P4714842103830253854

`A251219(A055999(n+4))`
-/

namespace A251218.P4714842103830253854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251219 (A055999 (n + 4)).toNat

end

end A251218.P4714842103830253854

/-! ## A251218.P9286205748680523522

`A251219(eq[4, A219347(n)])`
-/

namespace A251218.P9286205748680523522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251219 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251218.P9286205748680523522

/-! ## A251218.P8806099365296680103

`A251219(eq[6, A193592(n)])`
-/

namespace A251218.P8806099365296680103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251219 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251218.P8806099365296680103

/-!
# A251220: Number of (n+1) X (n+1) 0..1 arrays with no 2 X 2 subblock having the minimum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251220, there is no canonical definition to state claims against.
-/

/-! ## A251220.P17816995718464617002

`A251228(∑[4*n]+1)`
-/

namespace A251220.P17816995718464617002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251228 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251220.P17816995718464617002

/-!
# A251221: Number of (n+1) X (1+1) 0..1 arrays with no 2 X 2 subblock having the minimum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251221, the canonical program `A251221.P118416565368792048` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251221 has offset 1).

The definition of A251221 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 183 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251221.P118416565368792048

`3*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=14, a(1)=49, a(2)=171`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A251221

/-- `3*a(n-1)+2*a(n-2)-a(n-3)` -/
def P118416565368792048.Spec : Prop :=
  ∀ n, P118416565368792048.a n = A251221 (n + 1)

theorem P118416565368792048.correct : P118416565368792048.Spec := by
  intro n
  simp only [A251221, Nat.add_sub_cancel]

end A251221

/-! ## A251221.P13545888048455972508

`A251228(∑[n]+1)`
-/

namespace A251221.P13545888048455972508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251228 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251221.P13545888048455972508

namespace A251221

/-- `A251228(∑[n]+1)` -/
def P13545888048455972508.Spec : Prop :=
  ∀ n, P13545888048455972508.a n = A251221 (n + 1)

end A251221

/-! ## A251221.P4354974431369433472

`record[A251228(n+1)/A022166(n)]`
-/

namespace A251221.P4354974431369433472
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251228 (n + 1) : ℚ) / (A022166 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251221.P4354974431369433472

namespace A251221

/-- `record[A251228(n+1)/A022166(n)]` -/
def P4354974431369433472.Spec : Prop :=
  ∀ n, P4354974431369433472.a n = (A251221 (n + 1) : ℚ)

end A251221

/-! ## A251221.P13933161260385183512

`record[root(A251228(n+1), A008949(n))]`
-/

namespace A251221.P13933161260385183512
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251228 (n + 1) : ℝ) ^ (1 / (A008949 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251221.P13933161260385183512

namespace A251221

/-- `record[root(A251228(n+1), A008949(n))]` -/
def P13933161260385183512.Spec : Prop :=
  ∀ n, P13933161260385183512.a n = (A251221 (n + 1) : ℝ)

end A251221

/-! ## A251221.P820475745804799918

`record[gcd(A002262(n), A251228(n+1))]`
-/

namespace A251221.P820475745804799918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A251228 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251221.P820475745804799918

namespace A251221

/-- `record[gcd(A002262(n), A251228(n+1))]` -/
def P820475745804799918.Spec : Prop :=
  ∀ n, (P820475745804799918.a n : ℤ) = A251221 (n + 1)

end A251221

/-!
# A251222: Number of (n+1) X (2+1) 0..1 arrays with no 2 X 2 subblock having the minimum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251222, there is no canonical definition to state claims against.
-/

/-! ## A251222.P12509111932593011281

`A251228(∑[n+1]+2)`
-/

namespace A251222.P12509111932593011281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251228 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251222.P12509111932593011281

/-! ## A251222.P13522832821397606501

`record[root(A251228(n+2), A008949(n))]`
-/

namespace A251222.P13522832821397606501
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251228 (n + 2) : ℝ) ^ (1 / (A008949 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251222.P13522832821397606501

/-! ## A251222.P13330279189769041909

`record[gcd(A002262(n), A251228(n+2))]`
-/

namespace A251222.P13330279189769041909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A251228 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251222.P13330279189769041909

/-! ## A251222.P14349154289530255627

`record[A251228(Δ[A003453(n+5)])]`
-/

namespace A251222.P14349154289530255627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251228 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251222.P14349154289530255627

/-! ## A251222.P13067186215434371638

`A251228(A000096(n+1))%A251224(n+1)`
-/

namespace A251222.P13067186215434371638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251228 (A000096 (n + 1)).toNat) (A251224 (n + 1))

end

end A251222.P13067186215434371638

/-!
# A251223: Number of (n+1)X(3+1) 0..1 arrays with no 2X2 subblock having the minimum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251223, there is no canonical definition to state claims against.
-/

/-! ## A251223.P16777405373506416095

`A251228(∑[n+2]+4)`
-/

namespace A251223.P16777405373506416095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251228 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251223.P16777405373506416095

/-! ## A251223.P5368474888415387857

`A251228(A167614(n+1))+A011745(n)`
-/

namespace A251223.P5368474888415387857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251228 (A167614 (n + 1)).toNat + A011745 n

end

end A251223.P5368474888415387857

/-! ## A251223.P12317707026860847055

`A251228(A167614(n+1))+A185238(n)`
-/

namespace A251223.P12317707026860847055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251228 (A167614 (n + 1)).toNat + A185238 n

end

end A251223.P12317707026860847055

/-! ## A251223.P13890495474868147628

`A251228(A167614(n+1))+A185284(n)`
-/

namespace A251223.P13890495474868147628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251228 (A167614 (n + 1)).toNat + A185284 n

end

end A251223.P13890495474868147628

/-! ## A251223.P12757623094602064355

`A251228(A167614(n+1))+A210632(n)`
-/

namespace A251223.P12757623094602064355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251228 (A167614 (n + 1)).toNat + A210632 n

end

end A251223.P12757623094602064355

/-!
# A251224: Number of (n+1)X(4+1) 0..1 arrays with no 2X2 subblock having the minimum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251224, there is no canonical definition to state claims against.
-/

/-! ## A251224.P3131832763477462623

`A251228(A052905(n)+9)`
-/

namespace A251224.P3131832763477462623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251228 (A052905 n + 9).toNat

end

end A251224.P3131832763477462623

/-! ## A251224.P2152894202488614954

`A251228(A167614(n+2)+1)`
-/

namespace A251224.P2152894202488614954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251228 (A167614 (n + 2) + 1).toNat

end

end A251224.P2152894202488614954

/-! ## A251224.P10865076526624966553

`A251228(A167487(n+2)-3)`
-/

namespace A251224.P10865076526624966553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251228 (A167487 (n + 2) - 3).toNat

end

end A251224.P10865076526624966553

/-! ## A251224.P8943942803543591302

`A251228(A000096(n+2)+5)`
-/

namespace A251224.P8943942803543591302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251228 (A000096 (n + 2) + 5).toNat

end

end A251224.P8943942803543591302

/-! ## A251224.P11680856917510550576

`A251228(Δ[A023545(n+1)-n²])`
-/

namespace A251224.P11680856917510550576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251228 (f1 (n + 1) - f1 n).toNat

end

end A251224.P11680856917510550576

/-!
# A251225: Number of (n+1)X(5+1) 0..1 arrays with no 2X2 subblock having the minimum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251225, there is no canonical definition to state claims against.
-/

/-! ## A251225.P5337143844484948161

`A251228(A167499(n+3))`
-/

namespace A251225.P5337143844484948161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251228 (A167499 (n + 3)).toNat

end

end A251225.P5337143844484948161

/-! ## A251225.P5993141906627322388

`A251228(A056000(n)+15)`
-/

namespace A251225.P5993141906627322388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251228 (A056000 n + 15).toNat

end

end A251225.P5993141906627322388

/-! ## A251225.P683846023211383862

`A251228(eq[6, A131818(n+1)])`
-/

namespace A251225.P683846023211383862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251225.P683846023211383862

/-! ## A251225.P8988256426890110983

`A251228(A374005(n+1))`
-/

namespace A251225.P8988256426890110983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251228 (A374005 (n + 1)).toNat

end

end A251225.P8988256426890110983

/-! ## A251225.P17509172976658159095

`A251228(A046691(n+3))`
-/

namespace A251225.P17509172976658159095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251228 (A046691 (n + 3)).toNat

end

end A251225.P17509172976658159095

/-!
# A251226: Number of (n+1) X (6+1) 0..1 arrays with no 2 X 2 subblock having the minimum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251226, there is no canonical definition to state claims against.
-/

/-! ## A251226.P4891915384957984706

`A251228(eq[7, A131818(n+1)])`
-/

namespace A251226.P4891915384957984706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251226.P4891915384957984706

/-! ## A251226.P7004630394300309384

`A251228(A374007(n+1))`
-/

namespace A251226.P7004630394300309384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251228 (A374007 (n + 1)).toNat

end

end A251226.P7004630394300309384

/-! ## A251226.P4294094870981742135

`A251228(A052905(n+3))`
-/

namespace A251226.P4294094870981742135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251228 (A052905 (n + 3)).toNat

end

end A251226.P4294094870981742135

/-! ## A251226.P14635984030509582743

`A251228(eq[3, A219347(n)])`
-/

namespace A251226.P14635984030509582743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251226.P14635984030509582743

/-! ## A251226.P9722980999780320189

`A251228(eq[5, A193592(n)])`
-/

namespace A251226.P9722980999780320189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251226.P9722980999780320189

/-!
# A251227: Number of (n+1)X(7+1) 0..1 arrays with no 2X2 subblock having the minimum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251227, there is no canonical definition to state claims against.
-/

/-! ## A251227.P8418127055243286965

`A251228(eq[8, A131818(n+1)])`
-/

namespace A251227.P8418127055243286965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251227.P8418127055243286965

/-! ## A251227.P2818684399687105232

`A251228(A374008(n+1))`
-/

namespace A251227.P2818684399687105232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251228 (A374008 (n + 1)).toNat

end

end A251227.P2818684399687105232

/-! ## A251227.P17293330945936697969

`A251228(eq[2, A219347(n)-2])`
-/

namespace A251227.P17293330945936697969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251227.P17293330945936697969

/-!
# A251228: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with no 2X2 subblock having the minimum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251228, there is no canonical definition to state claims against.
-/

/-! ## A251228.P9484385551318274168

`A250973(n+1)-A082117(A047707(n))`
-/

namespace A251228.P9484385551318274168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250973 (n + 1) - A082117 (A047707 n).toNat

end

end A251228.P9484385551318274168

/-! ## A251228.P4127389560683658089

`A250973(n+1)-A230427(A249640(n))`
-/

namespace A251228.P4127389560683658089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250973 (n + 1) - A230427 (A249640 n).toNat

end

end A251228.P4127389560683658089

/-!
# A251229: Number of (n+1) X (1+1) 0..3 arrays with every 2 X 2 subblock summing to 6 and no 2 X 2 subblock having exactly two nonzero entries.

The programs for A251229, the canonical program `A251229.P17582263469719223754` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251229 has offset 1).

The definition of A251229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 194 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251229.P17582263469719223754

`7*a(n-1)-12*a(n-2)-8*a(n-3)+24*a(n-4)` with `a(0)=38, a(1)=110, a(2)=322, a(3)=966`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A251229

/-- `7*a(n-1)-12*a(n-2)-8*a(n-3)+24*a(n-4)` -/
def P17582263469719223754.Spec : Prop :=
  ∀ n, P17582263469719223754.a n = A251229 (n + 1)

theorem P17582263469719223754.correct : P17582263469719223754.Spec := by
  intro n
  simp only [A251229, Nat.add_sub_cancel]

end A251229

/-! ## A251229.P9140043002322736979

`A251236(∑[n]+1)`
-/

namespace A251229.P9140043002322736979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251236 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251229.P9140043002322736979

namespace A251229

/-- `A251236(∑[n]+1)` -/
def P9140043002322736979.Spec : Prop :=
  ∀ n, P9140043002322736979.a n = A251229 (n + 1)

end A251229

/-! ## A251229.P1684309259566738003

`record[A251236(n+1)]`
-/

namespace A251229.P1684309259566738003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251229.P1684309259566738003

namespace A251229

/-- `record[A251236(n+1)]` -/
def P1684309259566738003.Spec : Prop :=
  ∀ n, P1684309259566738003.a n = A251229 (n + 1)

end A251229

/-! ## A251229.P12566288680646035130

`record[or(2, A251236(n-log2(1/2)))]`
-/

namespace A251229.P12566288680646035130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A251236 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251229.P12566288680646035130

namespace A251229

/-- `record[or(2, A251236(n-log2(1/2)))]` -/
def P12566288680646035130.Spec : Prop :=
  ∀ n, P12566288680646035130.a n = A251229 (n + 1)

end A251229

/-! ## A251229.P15439442449366797469

`lcm(2, A251236(A000124(n)))`
-/

namespace A251229.P15439442449366797469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251236 (A000124 n).toNat)

end

end A251229.P15439442449366797469

namespace A251229

/-- `lcm(2, A251236(A000124(n)))` -/
def P15439442449366797469.Spec : Prop :=
  ∀ n, (P15439442449366797469.a n : ℤ) = A251229 (n + 1)

end A251229

/-!
# A251230: Number of (n+1) X (2+1) 0..3 arrays with every 2 X 2 subblock summing to 6 and no 2 X 2 subblock having exactly two nonzero entries.

The programs for A251230, there is no canonical definition to state claims against.
-/

/-! ## A251230.P2437995344098419305

`A251236(∑[n+1]+2)`
-/

namespace A251230.P2437995344098419305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251236 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251230.P2437995344098419305

/-! ## A251230.P4614228688403049401

`lcm(2, A251236(A000096(n)+3))`
-/

namespace A251230.P4614228688403049401
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251236 (A000096 n + 3).toNat)

end

end A251230.P4614228688403049401

/-! ## A251230.P658929349138601384

`or(2, A251236(A133263(n+1)))`
-/

namespace A251230.P658929349138601384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A251236 (A133263 (n + 1)).toNat)

end

end A251230.P658929349138601384

/-! ## A251230.P15362656041559078716

`record[A010054(n)*A251236(n+2)]`
-/

namespace A251230.P15362656041559078716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251236 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251230.P15362656041559078716

/-! ## A251230.P12653006913328522580

`record[A132013(n)*A251236(n+3)]`
-/

namespace A251230.P12653006913328522580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132013 n * A251236 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251230.P12653006913328522580

/-!
# A251231: Number of (n+1) X (3+1) 0..3 arrays with every 2 X 2 subblock summing to 6 and no 2 X 2 subblock having exactly two nonzero entries.

The programs for A251231, there is no canonical definition to state claims against.
-/

/-! ## A251231.P9384877074622685450

`A251236(∑[n+2]+4)`
-/

namespace A251231.P9384877074622685450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251236 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251231.P9384877074622685450

/-! ## A251231.P9405084871675579369

`lcm(2, A251236(A167614(n+1)))`
-/

namespace A251231.P9405084871675579369
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251236 (A167614 (n + 1)).toNat)

end

end A251231.P9405084871675579369

/-! ## A251231.P8430920777598140279

`A305821(n+1)+A251236(A167614(n+1))`
-/

namespace A251231.P8430920777598140279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305821 (n + 1) + A251236 (A167614 (n + 1)).toNat

end

end A251231.P8430920777598140279

/-! ## A251231.P12370219976749561827

`A305892(n+1)+A251236(A167614(n+1))`
-/

namespace A251231.P12370219976749561827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305892 (n + 1) + A251236 (A167614 (n + 1)).toNat

end

end A251231.P12370219976749561827

/-! ## A251231.P1092256606083584323

`A251236(A167614(n+1))%A251232(n+1)`
-/

namespace A251231.P1092256606083584323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251236 (A167614 (n + 1)).toNat) (A251232 (n + 1))

end

end A251231.P1092256606083584323

/-!
# A251232: Number of (n+1) X (4+1) 0..3 arrays with every 2 X 2 subblock summing to 6 and no 2 X 2 subblock having exactly two nonzero entries.

The programs for A251232, there is no canonical definition to state claims against.
-/

/-! ## A251232.P12637559871138826938

`A251236(A374004(n+1))`
-/

namespace A251232.P12637559871138826938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251236 (A374004 (n + 1)).toNat

end

end A251232.P12637559871138826938

/-! ## A251232.P13307179843589566394

`A251236(A141214(n)+7)`
-/

namespace A251232.P13307179843589566394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251236 (A141214 n + 7).toNat

end

end A251232.P13307179843589566394

/-! ## A251232.P2735283719429034153

`A251236(A052905(n)+9)`
-/

namespace A251232.P2735283719429034153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251236 (A052905 n + 9).toNat

end

end A251232.P2735283719429034153

/-! ## A251232.P5634991369226771401

`A251236(A055999(n)+10)`
-/

namespace A251232.P5634991369226771401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251236 (A055999 n + 10).toNat

end

end A251232.P5634991369226771401

/-! ## A251232.P13462541755627943288

`A251236(eq[5, A066657(n)])`
-/

namespace A251232.P13462541755627943288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251236 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251232.P13462541755627943288

/-!
# A251233: Number of (n+1) X (5+1) 0..3 arrays with every 2 X 2 subblock summing to 6 and no 2 X 2 subblock having exactly two nonzero entries.

The programs for A251233, there is no canonical definition to state claims against.
-/

/-! ## A251233.P11937288512340012379

`A251236(A374005(n+1))`
-/

namespace A251233.P11937288512340012379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251236 (A374005 (n + 1)).toNat

end

end A251233.P11937288512340012379

/-! ## A251233.P12060630141206811927

`A251236(A167499(n+3))`
-/

namespace A251233.P12060630141206811927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251236 (A167499 (n + 3)).toNat

end

end A251233.P12060630141206811927

/-! ## A251233.P930869685264525486

`A251236(A155212(n)+13)`
-/

namespace A251233.P930869685264525486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251236 (A155212 n + 13).toNat

end

end A251233.P930869685264525486

/-! ## A251233.P239086596996812952

`A251236(A056000(n)+15)`
-/

namespace A251233.P239086596996812952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251236 (A056000 n + 15).toNat

end

end A251233.P239086596996812952

/-! ## A251233.P17043932155377262222

`A251236(eq[7, A066657(n)])`
-/

namespace A251233.P17043932155377262222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251236 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251233.P17043932155377262222

/-!
# A251234: Number of (n+1) X (6+1) 0..3 arrays with every 2 X 2 subblock summing to 6 and no 2 X 2 subblock having exactly two nonzero entries.

The programs for A251234, there is no canonical definition to state claims against.
-/

/-! ## A251234.P15736893620236217689

`A251236(A374007(n+1))`
-/

namespace A251234.P15736893620236217689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251236 (A374007 (n + 1)).toNat

end

end A251234.P15736893620236217689

/-! ## A251234.P3567330678536288076

`A251236(A166136(n+4))`
-/

namespace A251234.P3567330678536288076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251236 (A166136 (n + 4)).toNat

end

end A251234.P3567330678536288076

/-! ## A251234.P14444053524416708568

`A251236(A056115(n)+21)`
-/

namespace A251234.P14444053524416708568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251236 (A056115 n + 21).toNat

end

end A251234.P14444053524416708568

/-! ## A251234.P13653944863517972846

`A251236(A167499(n+4)+1)`
-/

namespace A251234.P13653944863517972846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251236 (A167499 (n + 4) + 1).toNat

end

end A251234.P13653944863517972846

/-! ## A251234.P17476868618108508336

`A251236(A000124(n+5)+5)`
-/

namespace A251234.P17476868618108508336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251236 (A000124 (n + 5) + 5).toNat

end

end A251234.P17476868618108508336

/-!
# A251235: Number of (n+1) X (7+1) 0..3 arrays with every 2 X 2 subblock summing to 6 and no 2 X 2 subblock having exactly two nonzero entries.

The programs for A251235, there is no canonical definition to state claims against.
-/

/-! ## A251235.P8309562708392610419

`A251236(A374008(n+1))`
-/

namespace A251235.P8309562708392610419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251236 (A374008 (n + 1)).toNat

end

end A251235.P8309562708392610419

/-! ## A251235.P5151942454526702070

`A251236(A167487(n+5))`
-/

namespace A251235.P5151942454526702070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251236 (A167487 (n + 5)).toNat

end

end A251235.P5151942454526702070

/-! ## A251235.P14933472538357082771

`A251236(A056119(n)+28)`
-/

namespace A251235.P14933472538357082771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251236 (A056119 n + 28).toNat

end

end A251235.P14933472538357082771

/-! ## A251235.P10349192699298470491

`A251236(eq[11, A066657(n)])`
-/

namespace A251235.P10349192699298470491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251236 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251235.P10349192699298470491

/-! ## A251235.P14349822486504777069

`A251236(A166136(n+5)+1)`
-/

namespace A251235.P14349822486504777069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251236 (A166136 (n + 5) + 1).toNat

end

end A251235.P14349822486504777069

/-!
# A251237: Indices of even numbers in A098550.

The programs for A251237, there is no canonical definition to state claims against.
-/

/-! ## A251237.P8219679953490326508

`eq[0, A250299(n+1)]+1`
-/

namespace A251237.P8219679953490326508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250299 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A251237.P8219679953490326508

/-! ## A251237.P7555060246092957211

`eq[2, A251101(n+1)]+1`
-/

namespace A251237.P7555060246092957211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251101 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A251237.P7555060246092957211

/-! ## A251237.P16839191722761055433

`eq[2, gcd(2, A098550(n+1))]+1`
-/

namespace A251237.P16839191722761055433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A098550 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A251237.P16839191722761055433

/-! ## A251237.P9466219859479238859

`eq[1, val(A251089(n+1), 2)]+1`
-/

namespace A251237.P9466219859479238859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A251089 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A251237.P9466219859479238859

/-! ## A251237.P10748539402693840782

`eq[1, A250299(A028310(n))+1]`
-/

namespace A251237.P10748539402693840782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250299 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A251237.P10748539402693840782

/-! ## A251237.P3702722858210872459

`eq[2, A020639(A098550(n+1))]+1`
-/

namespace A251237.P3702722858210872459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A098550 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A251237.P3702722858210872459

/-! ## A251237.P15169676751117411770

`record[(A005408(n)+1)/A251101(n+1)]`
-/

namespace A251237.P15169676751117411770
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n + 1 : ℚ) / (A251101 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251237.P15169676751117411770

/-! ## A251237.P16729351842754909481

`record[2*A000027(n+1)/A251101(n+1)]`
-/

namespace A251237.P16729351842754909481
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A000027 (n + 1) : ℚ) / (A251101 (n + 1) : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251237.P16729351842754909481

/-! ## A251237.P7633400125876237706

`record[n+1-A291544(A251101(n+2)+1)]+8`
-/

namespace A251237.P7633400125876237706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A291544 (A251101 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 8

end

end A251237.P7633400125876237706

/-! ## A251237.P8181956695511625150

`lt[A146076(A098550(n+1)+1), A160094(n+1)]+1`
-/

namespace A251237.P8181956695511625150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A098550 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160094 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A251237.P8181956695511625150

/-! ## A251237.P4275764666921906272

`A251716(∑[n+1])`
-/

namespace A251237.P4275764666921906272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251716 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A251237.P4275764666921906272

/-! ## A251237.P7746028849264958521

`A098551(A251637(∑[n+1]))`
-/

namespace A251237.P7746028849264958521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A251637 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A251237.P7746028849264958521

/-!
# A251238: Indices of odd numbers in A098550.

The programs for A251238, there is no canonical definition to state claims against.
-/

/-! ## A251238.P13809743531557410963

`filter[n+1, A250299(#)]`
-/

namespace A251238.P13809743531557410963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A250299 (f1 j) = 1) n)

end

end A251238.P13809743531557410963

/-! ## A251238.P3106531017932812769

`eq[1, A250299(n+1)]+1`
-/

namespace A251238.P3106531017932812769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250299 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A251238.P3106531017932812769

/-! ## A251238.P8241370952178079573

`eq[1, A098550(n+1)%2]+1`
-/

namespace A251238.P8241370952178079573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098550 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A251238.P8241370952178079573

/-! ## A251238.P2296573545249269235

`eq[1, gcd(2, A251089(n+1))]+1`
-/

namespace A251238.P2296573545249269235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A251089 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A251238.P2296573545249269235

/-! ## A251238.P3314014624851406181

`lt[1, A114567(A098550(n+1))]+1`
-/

namespace A251238.P3314014624851406181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114567 (A098550 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A251238.P3314014624851406181

/-! ## A251238.P10812670869338600276

`record[A000027(n+1)*A250299(n+1)]`
-/

namespace A251238.P10812670869338600276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A250299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251238.P10812670869338600276

/-! ## A251238.P180675232928641350

`eq[A057427(n), A250299(A028310(n))]`
-/

namespace A251238.P180675232928641350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250299 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A251238.P180675232928641350

/-! ## A251238.P11581185420536118799

`record[n-A033999(A098550(n+1))]`
-/

namespace A251238.P11581185420536118799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A033999 (A098550 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251238.P11581185420536118799

/-! ## A251238.P1227934976238835019

`lt[A319307(A098550(n+1))+1, A160094(n+1)]+1`
-/

namespace A251238.P1227934976238835019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319307 (A098550 (n + 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160094 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A251238.P1227934976238835019

/-! ## A251238.P14967873102076909932

`record[(n+1)/A000188(2*A251089(n+1))]`
-/

namespace A251238.P14967873102076909932
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000188 (2 * A251089 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251238.P14967873102076909932

/-!
# A251239: Indices of prime numbers in A098550.

The programs for A251239, there is no canonical definition to state claims against.
-/

/-! ## A251239.P13700013308882589641

`A247253(n)+a(n-1)` with `a(0)=2`
-/

namespace A251239.P13700013308882589641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A247253 n + a (n - 1)

end

end A251239.P13700013308882589641

/-! ## A251239.P15595547975238928911

`A352195(n+1)+A100484(n+1)`
-/

namespace A251239.P15595547975238928911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352195 (n + 1) + A100484 (n + 1)

end

end A251239.P15595547975238928911

/-! ## A251239.P13900756816413204101

`∑[A247253(n+1)]+2-A247253(n+1)`
-/

namespace A251239.P13900756816413204101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 - A247253 (n + 1)

end

end A251239.P13900756816413204101

/-! ## A251239.P2365712482853948719

`eq[2, A304115(n+2)]+2`
-/

namespace A251239.P2365712482853948719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304115 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A251239.P2365712482853948719

/-! ## A251239.P10268989686696459663

`A098551(p?[comp[n²]])`
-/

namespace A251239.P10268989686696459663
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A251239.P10268989686696459663

/-! ## A251239.P6349400607717013671

`A249943(p?[comp[n²]])`
-/

namespace A251239.P6349400607717013671
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249943 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A251239.P6349400607717013671

/-! ## A251239.P14027667172248828969

`A098551(Δ[A007504(n)])`
-/

namespace A251239.P14027667172248828969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (f1 (n + 1) - f1 n).toNat

end

end A251239.P14027667172248828969

/-! ## A251239.P9535264314067072982

`A098551(A000040(n+1))`
-/

namespace A251239.P9535264314067072982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A000040 (n + 1)).toNat

end

end A251239.P9535264314067072982

/-! ## A251239.P12080636842806160739

`A249943(A078444(n+1))`
-/

namespace A251239.P12080636842806160739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249943 (A078444 (n + 1)).toNat

end

end A251239.P12080636842806160739

/-! ## A251239.P5589118628572705835

`A098551(A008578(n+2))`
-/

namespace A251239.P5589118628572705835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A008578 (n + 2)).toNat

end

end A251239.P5589118628572705835

/-! ## A251239.P18393008456574221168

`A098551(A182986(n+2))`
-/

namespace A251239.P18393008456574221168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A182986 (n + 2)).toNat

end

end A251239.P18393008456574221168

/-! ## A251239.P6231995322858514779

`A098551(sqrt(A001248(n+1)))`
-/

namespace A251239.P6231995322858514779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A251239.P6231995322858514779

/-! ## A251239.P2935694085113206092

`record[A098551(A007843(n)+1)]`
-/

namespace A251239.P2935694085113206092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A007843 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251239.P2935694085113206092

/-! ## A251239.P11539325493482468158

`A098551(record[A006530(n+2)])`
-/

namespace A251239.P11539325493482468158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A251239.P11539325493482468158

/-! ## A251239.P7359718502751354702

`A098551(record[A014963(n+2)])`
-/

namespace A251239.P7359718502751354702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A251239.P7359718502751354702

/-! ## A251239.P7785585509971255183

`A098551(record[A020639(n+2)])`
-/

namespace A251239.P7785585509971255183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A251239.P7785585509971255183

/-! ## A251239.P6652602389069196434

`A249943(record[A006530(n+2)])`
-/

namespace A251239.P6652602389069196434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249943 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A251239.P6652602389069196434

/-! ## A251239.P12477256159009298025

`A249943(record[A014963(n+2)])`
-/

namespace A251239.P12477256159009298025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249943 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A251239.P12477256159009298025

/-! ## A251239.P11891326482821726552

`A249943(record[A020639(n+2)])`
-/

namespace A251239.P11891326482821726552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249943 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A251239.P11891326482821726552

/-! ## A251239.P13110830331464845324

`A098551(A006093(n+1)+1)`
-/

namespace A251239.P13110830331464845324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A006093 (n + 1) + 1).toNat

end

end A251239.P13110830331464845324

/-!
# A251240: Indices of squares of primes in A098550.

The programs for A251240, there is no canonical definition to state claims against.
-/

/-! ## A251240.P15440439233036837108

`A098551(p?[comp[n²]]²)`
-/

namespace A251240.P15440439233036837108
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2)

end

end A251240.P15440439233036837108

/-! ## A251240.P6699541237991949271

`A098551(A001248(n+1))`
-/

namespace A251240.P6699541237991949271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A001248 (n + 1)).toNat

end

end A251240.P6699541237991949271

/-! ## A251240.P11328641503214835552

`A098551(A359757(n+1))`
-/

namespace A251240.P11328641503214835552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A359757 (n + 1)).toNat

end

end A251240.P11328641503214835552

/-! ## A251240.P4091811319889892008

`A098551(A280076(n+2))`
-/

namespace A251240.P4091811319889892008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A280076 (n + 2)).toNat

end

end A251240.P4091811319889892008

/-! ## A251240.P1832798179868747811

`A098551(Δ[A007504(n)]²)`
-/

namespace A251240.P1832798179868747811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A251240.P1832798179868747811

/-!
# A251241: Indices of prime powers in A098550.

The programs for A251241, there is no canonical definition to state claims against.
-/

/-! ## A251241.P2131544704412625861

`record[n/a(A251138(n))]` with `a(0)=1`
-/

namespace A251241.P2131544704412625861
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) / f1 (A251138 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251241.P2131544704412625861

/-! ## A251241.P1554127524225583323

`eq[n, n*A251138(n+1)]+1`
-/

namespace A251241.P1554127524225583323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A251138 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A251241.P1554127524225583323

/-! ## A251241.P10557685287464446535

`record[gcd(n+1, A001221(A098550(n+1))+n)]`
-/

namespace A251241.P10557685287464446535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A001221 (A098550 (n + 1)).toNat + (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251241.P10557685287464446535

/-! ## A251241.P6092994169839582781

`record[(n+1)/A231813(A098550(n+1))]`
-/

namespace A251241.P6092994169839582781
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A231813 (A098550 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251241.P6092994169839582781

/-! ## A251241.P18261240684691389036

`eq[A014963(A251089(n+1)), A251089(n+1)]+1`
-/

namespace A251241.P18261240684691389036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A251089 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251089 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A251241.P18261240684691389036

/-!
# A251242: 

The programs for A251242, there is no canonical definition to state claims against.
-/

/-! ## A251242.P7355971066588115514

`A251249(∑[4*n]+1)`
-/

namespace A251242.P7355971066588115514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251249 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251242.P7355971066588115514

/-! ## A251242.P8403785820632565189

`or(1, A251249(A001844(n)))`
-/

namespace A251242.P8403785820632565189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A251249 (A001844 n).toNat)

end

end A251242.P8403785820632565189

/-! ## A251242.P18277029004936342355

`lcm(A033999(n), A251249(A001844(n)))`
-/

namespace A251242.P18277029004936342355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A251249 (A001844 n).toNat)

end

end A251242.P18277029004936342355

/-!
# A251243: Number of (n+1) X (2+1) 0..2 arrays with no 2 X 2 subblock having the sum of its diagonal elements less than the minimum of its antidiagonal elements.

The programs for A251243, there is no canonical definition to state claims against.
-/

/-! ## A251243.P9520586786880529745

`A251249(∑[n+1]+2)`
-/

namespace A251243.P9520586786880529745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251249 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251243.P9520586786880529745

/-! ## A251243.P5816142837510404921

`or(1, A251249(A133263(n+1)))`
-/

namespace A251243.P5816142837510404921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A251249 (A133263 (n + 1)).toNat)

end

end A251243.P5816142837510404921

/-! ## A251243.P17693626010993671841

`A251249(A133263(n+1))%A251277(n+1)`
-/

namespace A251243.P17693626010993671841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251249 (A133263 (n + 1)).toNat) (A251277 (n + 1))

end

end A251243.P17693626010993671841

/-! ## A251243.P835426173668672420

`record[A185917(n+3)*A251249(n+2)]`
-/

namespace A251243.P835426173668672420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185917 (n + 3) * A251249 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251243.P835426173668672420

/-! ## A251243.P595885756055647429

`record[A251249(A198453(n+1))]`
-/

namespace A251243.P595885756055647429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251249 (A198453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251243.P595885756055647429

/-!
# A251244: Number of (n+1)X(3+1) 0..2 arrays with no 2X2 subblock having the sum of its diagonal elements less than the minimum of its antidiagonal elements.

The programs for A251244, there is no canonical definition to state claims against.
-/

/-! ## A251244.P7463394714502712572

`A251249(∑[n+2]+4)`
-/

namespace A251244.P7463394714502712572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251249 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251244.P7463394714502712572

/-! ## A251244.P202385653151632189

`or(1, A251249(A167614(n+1)))`
-/

namespace A251244.P202385653151632189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A251249 (A167614 (n + 1)).toNat)

end

end A251244.P202385653151632189

/-! ## A251244.P16096967328657491398

`A251249(A167614(n+1))+A185238(n)`
-/

namespace A251244.P16096967328657491398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251249 (A167614 (n + 1)).toNat + A185238 n

end

end A251244.P16096967328657491398

/-! ## A251244.P13505565834023838223

`A251249(A167614(n+1))+A070097(n+1)`
-/

namespace A251244.P13505565834023838223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251249 (A167614 (n + 1)).toNat + A070097 (n + 1)

end

end A251244.P13505565834023838223

/-! ## A251244.P2636501073709468625

`A251249(A167614(n+1))%A236122(n+1)`
-/

namespace A251244.P2636501073709468625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251249 (A167614 (n + 1)).toNat) (A236122 (n + 1))

end

end A251244.P2636501073709468625

/-!
# A251245: Number of (n+1)X(4+1) 0..2 arrays with no 2X2 subblock having the sum of its diagonal elements less than the minimum of its antidiagonal elements.

The programs for A251245, there is no canonical definition to state claims against.
-/

/-! ## A251245.P14988592141024368731

`A251249(A052905(n)+9)`
-/

namespace A251245.P14988592141024368731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251249 (A052905 n + 9).toNat

end

end A251245.P14988592141024368731

/-! ## A251245.P3575245402793243248

`A251249(A167614(n+2)+1)`
-/

namespace A251245.P3575245402793243248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251249 (A167614 (n + 2) + 1).toNat

end

end A251245.P3575245402793243248

/-! ## A251245.P14269307162040915786

`A251249(A034856(n+2)+6)`
-/

namespace A251245.P14269307162040915786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251249 (A034856 (n + 2) + 6).toNat

end

end A251245.P14269307162040915786

/-! ## A251245.P5276471133928597611

`A251249(A141214(n+1))`
-/

namespace A251245.P5276471133928597611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251249 (A141214 (n + 1)).toNat

end

end A251245.P5276471133928597611

/-! ## A251245.P777410382161307514

`A251249(A055998(n+2))`
-/

namespace A251245.P777410382161307514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251249 (A055998 (n + 2)).toNat

end

end A251245.P777410382161307514

/-!
# A251246: 

The programs for A251246, there is no canonical definition to state claims against.
-/

/-! ## A251246.P13841266486689950237

`A251249(A052905(n+1)+10)`
-/

namespace A251246.P13841266486689950237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251249 (A052905 (n + 1) + 10).toNat

end

end A251246.P13841266486689950237

/-! ## A251246.P1674566849323042095

`A251249(Δ[A264443(n)])`
-/

namespace A251246.P1674566849323042095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251249 (f1 (n + 1) - f1 n).toNat

end

end A251246.P1674566849323042095

/-! ## A251246.P5111801005083794904

`A251249(A046691(n+3))`
-/

namespace A251246.P5111801005083794904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251249 (A046691 (n + 3)).toNat

end

end A251246.P5111801005083794904

/-! ## A251246.P9562818910028954536

`A251249(A056000(n+1)+6)`
-/

namespace A251246.P9562818910028954536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251249 (A056000 (n + 1) + 6).toNat

end

end A251246.P9562818910028954536

/-! ## A251246.P6711688930253237628

`A251249(eq[5, A200370(n+1)])`
-/

namespace A251246.P6711688930253237628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251246.P6711688930253237628

/-!
# A251247: 

The programs for A251247, there is no canonical definition to state claims against.
-/

/-! ## A251247.P8325974568795780239

`A251249(A052905(n+3))`
-/

namespace A251247.P8325974568795780239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251249 (A052905 (n + 3)).toNat

end

end A251247.P8325974568795780239

/-! ## A251247.P1551262413707560994

`A251249(A056000(n+2)+5)`
-/

namespace A251247.P1551262413707560994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251249 (A056000 (n + 2) + 5).toNat

end

end A251247.P1551262413707560994

/-! ## A251247.P32397586436815947

`A251249(eq[6, A200370(n+1)])`
-/

namespace A251247.P32397586436815947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251247.P32397586436815947

/-!
# A251248: 

The programs for A251248, there is no canonical definition to state claims against.
-/

/-! ## A251248.P3380015807765968148

`A251249(eq[7, A200370(n+1)])`
-/

namespace A251248.P3380015807765968148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251248.P3380015807765968148

/-!
# A251250: Number of (n+1)X(n+1) 0..1 arrays with every 2X2 subblock having a single 1 or two 1s on the same edge.

The programs for A251250, there is no canonical definition to state claims against.
-/

/-! ## A251250.P12462574287710206833

`A251258(∑[4*n]+1)`
-/

namespace A251250.P12462574287710206833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251258 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251250.P12462574287710206833

/-! ## A251250.P182329853349772855

`lcm(2, A251258(A001844(n)))`
-/

namespace A251250.P182329853349772855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251258 (A001844 n).toNat)

end

end A251250.P182329853349772855

/-! ## A251250.P13795210787006996970

`record[A003982(n)*A251258(n+1)]`
-/

namespace A251250.P13795210787006996970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A251258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251250.P13795210787006996970

/-! ## A251250.P12178290098192706774

`record[gcd(A114327(n), A251258(n+1))]`
-/

namespace A251250.P12178290098192706774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A251258 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251250.P12178290098192706774

/-! ## A251250.P18304438934150906251

`record[(2-A143182(n))*A251258(n+1)]`
-/

namespace A251250.P18304438934150906251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A143182 n) * A251258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251250.P18304438934150906251

/-!
# A251251: Number of (n+1) X (1+1) 0..1 arrays with every 2 X 2 subblock having a single 1 or two 1s on the same edge.

The programs for A251251, the canonical program `A251251.P11346308950328129492` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251251 has offset 1).

The definition of A251251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 295 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251251.P10821990197547389460

`ogf((8+10x-4x^2)/(1-x-3x^2+x^3))`
-/

namespace A251251.P10821990197547389460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 10, -4] [1, -1, -3, 1] n

end

end A251251.P10821990197547389460

namespace A251251

/-- `ogf((8+10x-4x^2)/(1-x-3x^2+x^3))` -/
def P10821990197547389460.Spec : Prop :=
  ∀ n, P10821990197547389460.a n = A251251 (n + 1)

end A251251

/-! ## A251251.P11346308950328129492

`a(n-1)+3*a(n-2)-a(n-3)` with `a(0)=8, a(1)=18, a(2)=38`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A251251

/-- `a(n-1)+3*a(n-2)-a(n-3)` -/
def P11346308950328129492.Spec : Prop :=
  ∀ n, P11346308950328129492.a n = A251251 (n + 1)

theorem P11346308950328129492.correct : P11346308950328129492.Spec := by
  intro n
  simp only [A251251, Nat.add_sub_cancel]

end A251251

/-! ## A251251.P17661936223087638637

`2*A307464(n+3)`
-/

namespace A251251.P17661936223087638637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A307464 (n + 3)

end

end A251251.P17661936223087638637

namespace A251251

/-- `2*A307464(n+3)` -/
def P17661936223087638637.Spec : Prop :=
  ∀ n, P17661936223087638637.a n = A251251 (n + 1)

end A251251

/-! ## A251251.P15642922691623659833

`A087955(n)+2*a(n-1)` with `a(0)=8`
-/

namespace A251251.P15642922691623659833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A087955 n + 2 * a (n - 1)

end

end A251251.P15642922691623659833

namespace A251251

/-- `A087955(n)+2*a(n-1)` -/
def P15642922691623659833.Spec : Prop :=
  ∀ n, P15642922691623659833.a n = A251251 (n + 1)

end A251251

/-! ## A251251.P14437032900688079634

`2*(A125691(n+2)+A052973(n+1))`
-/

namespace A251251.P14437032900688079634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A125691 (n + 2) + A052973 (n + 1))

end

end A251251.P14437032900688079634

namespace A251251

/-- `2*(A125691(n+2)+A052973(n+1))` -/
def P14437032900688079634.Spec : Prop :=
  ∀ n, P14437032900688079634.a n = A251251 (n + 1)

end A251251

/-! ## A251251.P824112770267694460

`Δ[A288176(n+2)]`
-/

namespace A251251.P824112770267694460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288176 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251251.P824112770267694460

namespace A251251

/-- `Δ[A288176(n+2)]` -/
def P824112770267694460.Spec : Prop :=
  ∀ n, P824112770267694460.a n = A251251 (n + 1)

end A251251

/-! ## A251251.P16658502535473451579

`A288176(n+3)-A288176(n+2)`
-/

namespace A251251.P16658502535473451579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288176 (n + 3) - A288176 (n + 2)

end

end A251251.P16658502535473451579

namespace A251251

/-- `A288176(n+3)-A288176(n+2)` -/
def P16658502535473451579.Spec : Prop :=
  ∀ n, P16658502535473451579.a n = A251251 (n + 1)

end A251251

/-!
# A251252: Number of (n+1) X (2+1) 0..1 arrays with every 2 X 2 subblock having a single 1 or two 1s on the same edge.

The programs for A251252, there is no canonical definition to state claims against.
-/

/-! ## A251252.P14619137835677578677

`A251258(∑[n+1]+2)`
-/

namespace A251252.P14619137835677578677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251258 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251252.P14619137835677578677

/-! ## A251252.P6357795911047986887

`lcm(2, A251258(A000096(n)+3))`
-/

namespace A251252.P6357795911047986887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251258 (A000096 n + 3).toNat)

end

end A251252.P6357795911047986887

/-! ## A251252.P34342546756030036

`record[A251258(A286159(n+1)+2)]`
-/

namespace A251252.P34342546756030036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251258 (A286159 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251252.P34342546756030036

/-! ## A251252.P8868762783843760262

`record[A251258(A133263(A143182(n)))]`
-/

namespace A251252.P8868762783843760262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251258 (A133263 (A143182 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251252.P8868762783843760262

/-! ## A251252.P4882482063733497166

`A251258(A000096(n)+3)%A251253(n+1)`
-/

namespace A251252.P4882482063733497166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251258 (A000096 n + 3).toNat) (A251253 (n + 1))

end

end A251252.P4882482063733497166

/-!
# A251253: Number of (n+1) X (3+1) 0..1 arrays with every 2 X 2 subblock having a single 1 or two 1s on the same edge.

The programs for A251253, there is no canonical definition to state claims against.
-/

/-! ## A251253.P11226650501565276149

`A251258(∑[n+2]+4)`
-/

namespace A251253.P11226650501565276149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251258 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251253.P11226650501565276149

/-! ## A251253.P5939841463457275545

`lcm(2, A251258(A167614(n+1)))`
-/

namespace A251253.P5939841463457275545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251258 (A167614 (n + 1)).toNat)

end

end A251253.P5939841463457275545

/-! ## A251253.P12188936290213448605

`A251258(A167499(n)+n)+C(n, 64)`
-/

namespace A251253.P12188936290213448605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251258 (A167499 n + (n : ℤ)).toNat + (Nat.choose n 64 : ℤ)

end

end A251253.P12188936290213448605

/-! ## A251253.P5781568801294347196

`or(A000038(n), A251258(A167614(n+1)))`
-/

namespace A251253.P5781568801294347196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A251258 (A167614 (n + 1)).toNat)

end

end A251253.P5781568801294347196

/-! ## A251253.P2519114161076745441

`A239700(n+1)*A251258(A167614(n+1))`
-/

namespace A251253.P2519114161076745441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239700 (n + 1) * A251258 (A167614 (n + 1)).toNat

end

end A251253.P2519114161076745441

/-!
# A251254: Number of (n+1)X(4+1) 0..1 arrays with every 2X2 subblock having a single 1 or two 1s on the same edge.

The programs for A251254, there is no canonical definition to state claims against.
-/

/-! ## A251254.P17913553554728785335

`A251258(A374004(n+1))`
-/

namespace A251254.P17913553554728785335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251258 (A374004 (n + 1)).toNat

end

end A251254.P17913553554728785335

/-! ## A251254.P8235967988509904953

`A251258(A141214(n)+7)`
-/

namespace A251254.P8235967988509904953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251258 (A141214 n + 7).toNat

end

end A251254.P8235967988509904953

/-! ## A251254.P11896955175403821845

`A251258(A052905(n)+9)`
-/

namespace A251254.P11896955175403821845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251258 (A052905 n + 9).toNat

end

end A251254.P11896955175403821845

/-! ## A251254.P4692473247718216489

`A251258(A167614(n+2)+1)`
-/

namespace A251254.P4692473247718216489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251258 (A167614 (n + 2) + 1).toNat

end

end A251254.P4692473247718216489

/-! ## A251254.P6819204015861094450

`A251258(A133263(n+3)+2)`
-/

namespace A251254.P6819204015861094450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251258 (A133263 (n + 3) + 2).toNat

end

end A251254.P6819204015861094450

/-!
# A251255: Number of (n+1)X(5+1) 0..1 arrays with every 2X2 subblock having a single 1 or two 1s on the same edge.

The programs for A251255, there is no canonical definition to state claims against.
-/

/-! ## A251255.P17106746728391034533

`A251258(A374005(n+1))`
-/

namespace A251255.P17106746728391034533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251258 (A374005 (n + 1)).toNat

end

end A251255.P17106746728391034533

/-! ## A251255.P7750452794513204799

`A251258(A167499(n+3))`
-/

namespace A251255.P7750452794513204799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251258 (A167499 (n + 3)).toNat

end

end A251255.P7750452794513204799

/-! ## A251255.P1776093633325234244

`A251258(A000217(n+4)+5)`
-/

namespace A251255.P1776093633325234244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251258 (A000217 (n + 4) + 5).toNat

end

end A251255.P1776093633325234244

/-! ## A251255.P5159868399199686629

`A251258(Δ[A264443(n)])`
-/

namespace A251255.P5159868399199686629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251258 (f1 (n + 1) - f1 n).toNat

end

end A251255.P5159868399199686629

/-! ## A251255.P10260756573303482414

`A251258(A046691(n+3))`
-/

namespace A251255.P10260756573303482414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251258 (A046691 (n + 3)).toNat

end

end A251255.P10260756573303482414

/-!
# A251256: Number of (n+1)X(6+1) 0..1 arrays with every 2X2 subblock having a single 1 or two 1s on the same edge.

The programs for A251256, there is no canonical definition to state claims against.
-/

/-! ## A251256.P5144447211460538634

`A251258(A374007(n+1))`
-/

namespace A251256.P5144447211460538634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251258 (A374007 (n + 1)).toNat

end

end A251256.P5144447211460538634

/-! ## A251256.P12721482012513991884

`A251258(A166136(n+4))`
-/

namespace A251256.P12721482012513991884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251258 (A166136 (n + 4)).toNat

end

end A251256.P12721482012513991884

/-! ## A251256.P657937356400202736

`A251258(A000124(n+5)+5)`
-/

namespace A251256.P657937356400202736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251258 (A000124 (n + 5) + 5).toNat

end

end A251256.P657937356400202736

/-! ## A251256.P15978302063945581627

`A251258(A000217(n+5)+6)`
-/

namespace A251256.P15978302063945581627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251258 (A000217 (n + 5) + 6).toNat

end

end A251256.P15978302063945581627

/-! ## A251256.P16472283946249249926

`A251258(A161680(n+6)+6)`
-/

namespace A251256.P16472283946249249926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251258 (A161680 (n + 6) + 6).toNat

end

end A251256.P16472283946249249926

/-!
# A251257: Number of (n+1)X(7+1) 0..1 arrays with every 2X2 subblock having a single 1 or two 1s on the same edge.

The programs for A251257, there is no canonical definition to state claims against.
-/

/-! ## A251257.P12338872315846604704

`A251258(A374008(n+1))`
-/

namespace A251257.P12338872315846604704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251258 (A374008 (n + 1)).toNat

end

end A251257.P12338872315846604704

/-! ## A251257.P12241896469084298171

`A251258(eq[8, A131818(n+1)])`
-/

namespace A251257.P12241896469084298171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251258 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251257.P12241896469084298171

/-! ## A251257.P12194454769658811576

`A251258(A123199(n²)+A167614(n+5)+3)`
-/

namespace A251257.P12194454769658811576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251258 (A123199 (n ^ 2) + (A167614 (n + 5) + 3)).toNat

end

end A251257.P12194454769658811576

/-! ## A251257.P8364131718411181170

`A251258(A055999(n+4))`
-/

namespace A251257.P8364131718411181170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251258 (A055999 (n + 4)).toNat

end

end A251257.P8364131718411181170

/-! ## A251257.P16106866856858697682

`A251258(eq[4, A219347(n)])`
-/

namespace A251257.P16106866856858697682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251258 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251257.P16106866856858697682

/-!
# A251260: Expansion of (1 + 2*x + x^2 + x^3) / ((1 - x^2)^2 * (1 - x^3) * (1 - x^4)) in powers of x.

The programs for A251260, the canonical program `A251260.P5454479438887788540` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251260 has offset 0).

The definition of A251260 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+x^2+x^3)/(1-2x^2-x^3+2x^5+2x^6-x^8-2x^9+x^11))` (program `A251260.P5454479438887788540`, by `A251260.P5454479438887788540.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A251260.P5454479438887788540

`ogf((1+2x+x^2+x^3)/(1-2x^2-x^3+2x^5+2x^6-x^8-2x^9+x^11))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A251260

/-- `ogf((1+2x+x^2+x^3)/(1-2x^2-x^3+2x^5+2x^6-x^8-2x^9+x^11))` -/
def P5454479438887788540.Spec : Prop :=
  ∀ n, P5454479438887788540.a n = A251260 n

theorem P5454479438887788540.correct : P5454479438887788540.Spec := by
  intro n
  simp only [A251260]

end A251260

/-! ## A251260.P11882481288067174509

`∑[A001399(gcd(n, ∑[n]))]`
-/

namespace A251260.P11882481288067174509
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A251260.P11882481288067174509

namespace A251260

/-- `∑[A001399(gcd(n, ∑[n]))]` -/
def P11882481288067174509.Spec : Prop :=
  ∀ n, P11882481288067174509.a n = A251260 n

end A251260

/-! ## A251260.P13259440758365962922

`∑[round((A026741(n)+3)²/12)]`
-/

namespace A251260.P13259440758365962922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A026741 n + 3) ^ 2 : ℚ) / 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A251260.P13259440758365962922

namespace A251260

/-- `∑[round((A026741(n)+3)²/12)]` -/
def P13259440758365962922.Spec : Prop :=
  ∀ n, P13259440758365962922.a n = A251260 n

end A251260

/-! ## A251260.P17553893907752314330

`∑[A001399(A026741(n))]`
-/

namespace A251260.P17553893907752314330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A251260.P17553893907752314330

namespace A251260

/-- `∑[A001399(A026741(n))]` -/
def P17553893907752314330.Spec : Prop :=
  ∀ n, P17553893907752314330.a n = A251260 n

end A251260

/-! ## A251260.P9667236829085876677

`∑[A001399(n-(n+1)%A008619(n))]`
-/

namespace A251260.P9667236829085876677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 ((n : ℤ) - Int.tmod (n + 1 : ℤ) (A008619 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A251260.P9667236829085876677

namespace A251260

/-- `∑[A001399(n-(n+1)%A008619(n))]` -/
def P9667236829085876677.Spec : Prop :=
  ∀ n, P9667236829085876677.a n = A251260 n

end A251260

/-! ## A251260.P10364406322752105500

`∑[A001399(n/Δ[A001651(n+2)])]`
-/

namespace A251260.P10364406322752105500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (SequenceMachineLib.roundAway ((n : ℚ) / (f2 (n + 1) - f2 n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A251260.P10364406322752105500

namespace A251260

/-- `∑[A001399(n/Δ[A001651(n+2)])]` -/
def P10364406322752105500.Spec : Prop :=
  ∀ n, P10364406322752105500.a n = A251260 n

end A251260

/-! ## A251260.P2975254943933838438

`∑[A266755(lcm(2, n))]`
-/

namespace A251260.P2975254943933838438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 (Nat.lcm 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A251260.P2975254943933838438

namespace A251260

/-- `∑[A266755(lcm(2, n))]` -/
def P2975254943933838438.Spec : Prop :=
  ∀ n, P2975254943933838438.a n = A251260 n

end A251260

/-! ## A251260.P3420576222303456541

`∑[A266755(n*(n%2+1))]`
-/

namespace A251260.P3420576222303456541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 (n * (n % 2 + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A251260.P3420576222303456541

namespace A251260

/-- `∑[A266755(n*(n%2+1))]` -/
def P3420576222303456541.Spec : Prop :=
  ∀ n, P3420576222303456541.a n = A251260 n

end A251260

/-! ## A251260.P9265013701602328690

`A029042(A047208(n+1))`
-/

namespace A251260.P9265013701602328690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029042 (A047208 (n + 1)).toNat

end

end A251260.P9265013701602328690

namespace A251260

/-- `A029042(A047208(n+1))` -/
def P9265013701602328690.Spec : Prop :=
  ∀ n, P9265013701602328690.a n = A251260 n

end A251260

/-! ## A251260.P8779659119336687941

`A029042(A008851(n+2)-1)`
-/

namespace A251260.P8779659119336687941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029042 (A008851 (n + 2) - 1).toNat

end

end A251260.P8779659119336687941

namespace A251260

/-- `A029042(A008851(n+2)-1)` -/
def P8779659119336687941.Spec : Prop :=
  ∀ n, P8779659119336687941.a n = A251260 n

end A251260

/-! ## A251260.P3917142038131196371

`A029329(A273669(n+2))`
-/

namespace A251260.P3917142038131196371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029329 (A273669 (n + 2)).toNat

end

end A251260.P3917142038131196371

namespace A251260

/-- `A029329(A273669(n+2))` -/
def P3917142038131196371.Spec : Prop :=
  ∀ n, P3917142038131196371.a n = A251260 n

end A251260

/-! ## A251260.P7406913979471871117

`A029329(A090773(n+2)-2)`
-/

namespace A251260.P7406913979471871117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029329 (A090773 (n + 2) - 2).toNat

end

end A251260.P7406913979471871117

namespace A251260

/-- `A029329(A090773(n+2)-2)` -/
def P7406913979471871117.Spec : Prop :=
  ∀ n, P7406913979471871117.a n = A251260 n

end A251260

/-!
# A251261: Number of (n+1)X(n+1) 0..1 arrays with no 2X2 subblock having x11-x00 less than x10-x01.

The programs for A251261, there is no canonical definition to state claims against.
-/

/-! ## A251261.P7977067228324870849

`A251268(∑[4*n]+1)`
-/

namespace A251261.P7977067228324870849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251261.P7977067228324870849

/-! ## A251261.P7158394023629009930

`record[A251268(A152271(n²))]`
-/

namespace A251261.P7158394023629009930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251261.P7158394023629009930

/-! ## A251261.P464850566081285294

`lcm(A002635(n), A251268(A001844(n)))`
-/

namespace A251261.P464850566081285294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002635 n) (A251268 (A001844 n).toNat)

end

end A251261.P464850566081285294

/-! ## A251261.P15653105987191546981

`or(A000007(n), A251268(A001844(n)))`
-/

namespace A251261.P15653105987191546981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A251268 (A001844 n).toNat)

end

end A251261.P15653105987191546981

/-! ## A251261.P14287836088839787944

`A101598(n+1)*A251268(A001844(n))`
-/

namespace A251261.P14287836088839787944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101598 (n + 1) * A251268 (A001844 n).toNat

end

end A251261.P14287836088839787944

/-!
# A251262: Number of (n+1) X (2+1) 0..1 arrays with no 2 X 2 subblock having x11-x00 less than x10-x01.

The programs for A251262, there is no canonical definition to state claims against.
-/

/-! ## A251262.P9120942433728582388

`A251268(∑[n+2])`
-/

namespace A251262.P9120942433728582388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A251262.P9120942433728582388

/-! ## A251262.P9148485615830928709

`record[A251268(abs(A201163(n)))]`
-/

namespace A251262.P9148485615830928709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251262.P9148485615830928709

/-! ## A251262.P3377038467844797176

`record[A251268(A000096(A152271(n)))]`
-/

namespace A251262.P3377038467844797176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (A000096 (A152271 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251262.P3377038467844797176

/-! ## A251262.P12659421201797536015

`record[A251268(A000096(A002260(n+1)))]`
-/

namespace A251262.P12659421201797536015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251262.P12659421201797536015

/-! ## A251262.P3250082845943455768

`record[A251268(A000096(A004736(n+1)))]`
-/

namespace A251262.P3250082845943455768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (A000096 (A004736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251262.P3250082845943455768

/-!
# A251263: Number of (n+1)X(3+1) 0..1 arrays with no 2X2 subblock having x11-x00 less than x10-x01.

The programs for A251263, there is no canonical definition to state claims against.
-/

/-! ## A251263.P14457240077241669078

`A251268(∑[n+3]+1)`
-/

namespace A251263.P14457240077241669078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251263.P14457240077241669078

/-!
# A251264: Number of (n+1)X(4+1) 0..1 arrays with no 2X2 subblock having x11-x00 less than x10-x01.

The programs for A251264, there is no canonical definition to state claims against.
-/

/-! ## A251264.P16474030077704353015

`A251268(A141214(n+1))`
-/

namespace A251264.P16474030077704353015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (A141214 (n + 1)).toNat

end

end A251264.P16474030077704353015

/-! ## A251264.P15092422924497460584

`A251268(A027379(n+2))`
-/

namespace A251264.P15092422924497460584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (A027379 (n + 2)).toNat

end

end A251264.P15092422924497460584

/-! ## A251264.P1241550740020360478

`A251268(A055998(n+2))`
-/

namespace A251264.P1241550740020360478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (A055998 (n + 2)).toNat

end

end A251264.P1241550740020360478

/-! ## A251264.P3239700158859275266

`A251268(A155212(n)+5)`
-/

namespace A251264.P3239700158859275266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (A155212 n + 5).toNat

end

end A251264.P3239700158859275266

/-! ## A251264.P2998997628546060770

`A251268(A056000(n)+7)`
-/

namespace A251264.P2998997628546060770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (A056000 n + 7).toNat

end

end A251264.P2998997628546060770

/-!
# A251265: Number of (n+1)X(5+1) 0..1 arrays with no 2X2 subblock having x11-x00 less than x10-x01.

The programs for A251265, there is no canonical definition to state claims against.
-/

/-! ## A251265.P10910939010254688194

`A251268(A046691(n+3))`
-/

namespace A251265.P10910939010254688194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (A046691 (n + 3)).toNat

end

end A251265.P10910939010254688194

/-! ## A251265.P11774413528705460284

`A251268(eq[4, A193592(n)])`
-/

namespace A251265.P11774413528705460284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251265.P11774413528705460284

/-! ## A251265.P2558300736484163266

`A251268(Δ[A023545(n+1)])`
-/

namespace A251265.P2558300736484163266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (f1 (n + 1) - f1 n).toNat

end

end A251265.P2558300736484163266

/-! ## A251265.P10292487833756677196

`A251268(A052905(n+2)+1)`
-/

namespace A251265.P10292487833756677196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (A052905 (n + 2) + 1).toNat

end

end A251265.P10292487833756677196

/-! ## A251265.P14867380639595604542

`A251268(A000217(n+5)-4)`
-/

namespace A251265.P14867380639595604542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (A000217 (n + 5) - 4).toNat

end

end A251265.P14867380639595604542

/-!
# A251266: Number of (n+1)X(6+1) 0..1 arrays with no 2X2 subblock having x11-x00 less than x10-x01.

The programs for A251266, there is no canonical definition to state claims against.
-/

/-! ## A251266.P7338571995450110482

`A251268(A056119(n)+16)`
-/

namespace A251266.P7338571995450110482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (A056119 n + 16).toNat

end

end A251266.P7338571995450110482

/-! ## A251266.P17966877638938099321

`A251268(eq[3, A219347(n)])`
-/

namespace A251266.P17966877638938099321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251266.P17966877638938099321

/-! ## A251266.P6176480006195942980

`A251268(eq[5, A193592(n)])`
-/

namespace A251266.P6176480006195942980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251266.P6176480006195942980

/-! ## A251266.P14780669036450574811

`A251268(A000124(n+6)-6)`
-/

namespace A251266.P14780669036450574811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (A000124 (n + 6) - 6).toNat

end

end A251266.P14780669036450574811

/-! ## A251266.P16791830122690030823

`A251268(Δ[Δ[A006504(n+1)]])`
-/

namespace A251266.P16791830122690030823
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (f1 (n + 1) - f1 n).toNat

end

end A251266.P16791830122690030823

/-!
# A251267: Number of (n+1)X(7+1) 0..1 arrays with no 2X2 subblock having x11-x00 less than x10-x01.

The programs for A251267, there is no canonical definition to state claims against.
-/

/-! ## A251267.P2229655528517279635

`A251268(A055999(n+4))`
-/

namespace A251267.P2229655528517279635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (A055999 (n + 4)).toNat

end

end A251267.P2229655528517279635

/-! ## A251267.P11239848141721191467

`A251268(eq[4, A219347(n)])`
-/

namespace A251267.P11239848141721191467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251267.P11239848141721191467

/-! ## A251267.P13798000815940967346

`A251268(eq[6, A193592(n)])`
-/

namespace A251267.P13798000815940967346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251267.P13798000815940967346

/-! ## A251267.P13562098402108623561

`A251268(eq[10, A185782(n+1)])`
-/

namespace A251267.P13562098402108623561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251267.P13562098402108623561

/-! ## A251267.P10977919278900069728

`A251268(eq[7, A200370(n+1)])`
-/

namespace A251267.P10977919278900069728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251267.P10977919278900069728

/-!
# A251268: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with no 2X2 subblock having x11-x00 less than x10-x01.

The programs for A251268, there is no canonical definition to state claims against.
-/

/-! ## A251268.P15307261806934469565

`A333918(∑[2^n])-A042965(2*(n+1))`
-/

namespace A251268.P15307261806934469565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333918 (∑ j ∈ Finset.range (n + 1), f1 j) - A042965 (2 * (n + 1))

end

end A251268.P15307261806934469565

/-!
# A251269: Number of (2+1) X (n+1) 0..1 arrays with no 2 X 2 subblock having x11-x00 less than x10-x01.

The programs for A251269, the canonical program `A251269.P10418591958814959337` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251269 has offset 1).

The definition of A251269 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251269.P10418591958814959337

`8*(9*2^(n+1)-8)-109*(n+1)/3-8*(n+1)²-2*(n+1)^3/3`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A251269

/-- `8*(9*2^(n+1)-8)-109*(n+1)/3-8*(n+1)²-2*(n+1)^3/3` -/
def P10418591958814959337.Spec : Prop :=
  ∀ n, P10418591958814959337.a n = (A251269 (n + 1) : ℚ)

end A251269

/-! ## A251269.P6478773869201737914

`A251268(∑[n+1]+2)`
-/

namespace A251269.P6478773869201737914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251269.P6478773869201737914

namespace A251269

/-- `A251268(∑[n+1]+2)` -/
def P6478773869201737914.Spec : Prop :=
  ∀ n, P6478773869201737914.a n = A251269 (n + 1)

end A251269

/-! ## A251269.P16363266730230200121

`record[A251268(A133263(abs(1-n)))]`
-/

namespace A251269.P16363266730230200121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251269.P16363266730230200121

namespace A251269

/-- `record[A251268(A133263(abs(1-n)))]` -/
def P16363266730230200121.Spec : Prop :=
  ∀ n, P16363266730230200121.a n = A251269 (n + 1)

end A251269

/-! ## A251269.P12098667154844509235

`A007318(A000217(n+6))*A251268(A133263(n+1))`
-/

namespace A251269.P12098667154844509235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 6)).toNat * A251268 (A133263 (n + 1)).toNat

end

end A251269.P12098667154844509235

namespace A251269

/-- `A007318(A000217(n+6))*A251268(A133263(n+1))` -/
def P12098667154844509235.Spec : Prop :=
  ∀ n, P12098667154844509235.a n = A251269 (n + 1)

end A251269

/-!
# A251270: Number of (3+1) X (n+1) 0..1 arrays with no 2 X 2 subblock having x11-x00 less than x10-x01.

The programs for A251270, there is no canonical definition to state claims against.
-/

/-! ## A251270.P11436422148940208081

`A251268(∑[n+2]+4)`
-/

namespace A251270.P11436422148940208081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251270.P11436422148940208081

/-! ## A251270.P1494937315385200963

`lcm(A000034(n), A251268(A167614(n+1)))`
-/

namespace A251270.P1494937315385200963
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A251268 (A167614 (n + 1)).toNat)

end

end A251270.P1494937315385200963

/-! ## A251270.P10692739621253709689

`A251268(A167614(n+1))%A183972(n+1)`
-/

namespace A251270.P10692739621253709689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251268 (A167614 (n + 1)).toNat) (A183972 (n + 1))

end

end A251270.P10692739621253709689

/-! ## A251270.P16083407240154580731

`A251268(A000124(n+2)+2)%A251255(n+1)`
-/

namespace A251270.P16083407240154580731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251268 (A000124 (n + 2) + 2).toNat) (A251255 (n + 1))

end

end A251270.P16083407240154580731

/-! ## A251270.P1365120162348119521

`A007318(A000217(n))*A251268(A167614(n+1))`
-/

namespace A251270.P1365120162348119521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A251268 (A167614 (n + 1)).toNat

end

end A251270.P1365120162348119521

/-!
# A251271: Number of (4+1) X (n+1) 0..1 arrays with no 2 X 2 subblock having x11-x00 less than x10-x01.

The programs for A251271, there is no canonical definition to state claims against.
-/

/-! ## A251271.P9143596277369626227

`A251268(∑[n+2]+n+8)`
-/

namespace A251271.P9143596277369626227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 8))

end

end A251271.P9143596277369626227

/-! ## A251271.P6876600339280360700

`lcm(A000034(n), A251268(A052905(n)+9))`
-/

namespace A251271.P6876600339280360700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A251268 (A052905 n + 9).toNat)

end

end A251271.P6876600339280360700

/-! ## A251271.P5548181557856417470

`A251268(A052905(n)+9)+A000035(2*n)`
-/

namespace A251271.P5548181557856417470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (A052905 n + 9).toNat + A000035 (2 * n)

end

end A251271.P5548181557856417470

/-! ## A251271.P10414956316550907934

`or(A003982(n), A251268(A167614(n+2)+1))`
-/

namespace A251271.P10414956316550907934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003982 n) (A251268 (A167614 (n + 2) + 1).toNat)

end

end A251271.P10414956316550907934

/-! ## A251271.P5785838162353502188

`A251268(A167614(n+2)+1)%A251272(n+1)`
-/

namespace A251271.P5785838162353502188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251268 (A167614 (n + 2) + 1).toNat) (A251272 (n + 1))

end

end A251271.P5785838162353502188

/-!
# A251272: Number of (5+1)X(n+1) 0..1 arrays with no 2X2 subblock having x11-x00 less than x10-x01.

The programs for A251272, there is no canonical definition to state claims against.
-/

/-! ## A251272.P2698643725100842667

`A251268(A167499(n+3))`
-/

namespace A251272.P2698643725100842667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (A167499 (n + 3)).toNat

end

end A251272.P2698643725100842667

/-! ## A251272.P5703341110289158418

`A251268(A056000(n)+15)`
-/

namespace A251272.P5703341110289158418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (A056000 n + 15).toNat

end

end A251272.P5703341110289158418

/-! ## A251272.P6277470318194326370

`A251268(A167614(n+3)+2)`
-/

namespace A251272.P6277470318194326370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (A167614 (n + 3) + 2).toNat

end

end A251272.P6277470318194326370

/-! ## A251272.P15204409239206417479

`A251268(A000217(n+4)+5)`
-/

namespace A251272.P15204409239206417479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (A000217 (n + 4) + 5).toNat

end

end A251272.P15204409239206417479

/-! ## A251272.P14744604989683206191

`A251268(A161680(n+5)+5)`
-/

namespace A251272.P14744604989683206191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (A161680 (n + 5) + 5).toNat

end

end A251272.P14744604989683206191

/-!
# A251273: Number of (6+1)X(n+1) 0..1 arrays with no 2X2 subblock having x11-x00 less than x10-x01.

The programs for A251273, there is no canonical definition to state claims against.
-/

/-! ## A251273.P6512939963534314847

`A251268(A166136(n+4))`
-/

namespace A251273.P6512939963534314847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (A166136 (n + 4)).toNat

end

end A251273.P6512939963534314847

/-! ## A251273.P7935581479865947477

`A251268(A167499(n+4)+1)`
-/

namespace A251273.P7935581479865947477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (A167499 (n + 4) + 1).toNat

end

end A251273.P7935581479865947477

/-! ## A251273.P2690830325978371398

`A251268(A000217(n+5)+6)`
-/

namespace A251273.P2690830325978371398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (A000217 (n + 5) + 6).toNat

end

end A251273.P2690830325978371398

/-! ## A251273.P944742460195620565

`A251268(A161680(n+6)+6)`
-/

namespace A251273.P944742460195620565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (A161680 (n + 6) + 6).toNat

end

end A251273.P944742460195620565

/-! ## A251273.P12116413881113387393

`A251268(A167614(n+3)+n+8)`
-/

namespace A251273.P12116413881113387393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (A167614 (n + 3) + (n + 8 : ℤ)).toNat

end

end A251273.P12116413881113387393

/-!
# A251274: Number of (7+1)X(n+1) 0..1 arrays with no 2X2 subblock having x11-x00 less than x10-x01.

The programs for A251274, there is no canonical definition to state claims against.
-/

/-! ## A251274.P14653226493836573412

`A251268(eq[11, A066657(n)])`
-/

namespace A251274.P14653226493836573412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251274.P14653226493836573412

/-! ## A251274.P7527160807407505354

`A251268(A166136(n+5)+1)`
-/

namespace A251274.P7527160807407505354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (A166136 (n + 5) + 1).toNat

end

end A251274.P7527160807407505354

/-! ## A251274.P4638328462740461593

`A251268(A077169(n+7)+2)`
-/

namespace A251274.P4638328462740461593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (A077169 (n + 7) + 2).toNat

end

end A251274.P4638328462740461593

/-! ## A251274.P17092349240897756429

`A251268(A000217(n+6)+7)`
-/

namespace A251274.P17092349240897756429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (A000217 (n + 6) + 7).toNat

end

end A251274.P17092349240897756429

/-! ## A251274.P6557609942250868936

`A251268(eq[8, A131818(n+1)])`
-/

namespace A251274.P6557609942250868936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251268 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251274.P6557609942250868936

/-!
# A251275: 

The programs for A251275, there is no canonical definition to state claims against.
-/

/-! ## A251275.P4972608266105286896

`A251283(∑[4*n]+1)`
-/

namespace A251275.P4972608266105286896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251283 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251275.P4972608266105286896

/-!
# A251276: Number of (n+1) X (1+1) 0..3 arrays with no 2 X 2 subblock having its maximum diagonal element less than its minimum antidiagonal element.

The programs for A251276, there is no canonical definition to state claims against.
-/

/-! ## A251276.P13454459080301800536

`A251283(∑[n]+1)`
-/

namespace A251276.P13454459080301800536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251283 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251276.P13454459080301800536

/-! ## A251276.P17014092640259060834

`record[A010054(n)*A251283(n+1)]`
-/

namespace A251276.P17014092640259060834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251276.P17014092640259060834

/-! ## A251276.P11520464112617070888

`record[root(A251283(n+1), A059268(n))]`
-/

namespace A251276.P11520464112617070888
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251283 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251276.P11520464112617070888

/-! ## A251276.P8403917727884414625

`lcm(2, A251283(A000096(n)+1))`
-/

namespace A251276.P8403917727884414625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251283 (A000096 n + 1).toNat)

end

end A251276.P8403917727884414625

/-! ## A251276.P6245194315862092949

`record[gcd(A217346(n+1), A251283(n+1))]`
-/

namespace A251276.P6245194315862092949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A217346 (n + 1)) (A251283 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251276.P6245194315862092949

/-!
# A251277: Number of (n+1) X (2+1) 0..3 arrays with no 2 X 2 subblock having its maximum diagonal element less than its minimum antidiagonal element.

The programs for A251277, there is no canonical definition to state claims against.
-/

/-! ## A251277.P11513634121052879069

`A251283(∑[n+1]+2)`
-/

namespace A251277.P11513634121052879069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251283 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251277.P11513634121052879069

/-! ## A251277.P9768491878342346698

`lcm(2, A251283(A000096(n)+3))`
-/

namespace A251277.P9768491878342346698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251283 (A000096 n + 3).toNat)

end

end A251277.P9768491878342346698

/-! ## A251277.P3020281508962622002

`record[A251283(A255548(n+1)+2)]`
-/

namespace A251277.P3020281508962622002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251283 (A255548 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251277.P3020281508962622002

/-! ## A251277.P16969722264346333781

`record[A010054(n)*A251283(n+2)]`
-/

namespace A251277.P16969722264346333781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251283 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251277.P16969722264346333781

/-! ## A251277.P17935239533857744543

`record[root(A251283(n+2), A059268(n))]`
-/

namespace A251277.P17935239533857744543
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251283 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251277.P17935239533857744543

/-!
# A251278: Number of (n+1)X(3+1) 0..3 arrays with no 2X2 subblock having its maximum diagonal element less than its minimum antidiagonal element.

The programs for A251278, there is no canonical definition to state claims against.
-/

/-! ## A251278.P12558366613595911234

`A251283(∑[n+2]+4)`
-/

namespace A251278.P12558366613595911234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251283 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251278.P12558366613595911234

/-!
# A251279: 

The programs for A251279, there is no canonical definition to state claims against.
-/

/-! ## A251279.P8868403491307183399

`A251283(eq[5, A131818(n+1)])`
-/

namespace A251279.P8868403491307183399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251283 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251279.P8868403491307183399

/-! ## A251279.P7082511954417292440

`A251283(A027379(n+2))`
-/

namespace A251279.P7082511954417292440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251283 (A027379 (n + 2)).toNat

end

end A251279.P7082511954417292440

/-! ## A251279.P18376177683944759682

`A251283(A055998(n+2))`
-/

namespace A251279.P18376177683944759682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251283 (A055998 (n + 2)).toNat

end

end A251279.P18376177683944759682

/-! ## A251279.P2112326548628420747

`A251283(A056000(n)+7)`
-/

namespace A251279.P2112326548628420747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251283 (A056000 n + 7).toNat

end

end A251279.P2112326548628420747

/-! ## A251279.P11244831446258764306

`A251283(eq[3, A193592(n)])`
-/

namespace A251279.P11244831446258764306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251283 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251279.P11244831446258764306

/-!
# A251280: 

The programs for A251280, there is no canonical definition to state claims against.
-/

/-! ## A251280.P9651131892148347692

`A251283(A167614(n+3)+2)`
-/

namespace A251280.P9651131892148347692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251283 (A167614 (n + 3) + 2).toNat

end

end A251280.P9651131892148347692

/-! ## A251280.P11468768981562454345

`A251283(eq[6, A131818(n+1)])`
-/

namespace A251280.P11468768981562454345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251283 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251280.P11468768981562454345

/-! ## A251280.P5224261524163141643

`A251283(eq[4, A193592(n)])`
-/

namespace A251280.P5224261524163141643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251283 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251280.P5224261524163141643

/-! ## A251280.P5927720187490850061

`A251283(Δ[A023545(n+1)])`
-/

namespace A251280.P5927720187490850061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251283 (f1 (n + 1) - f1 n).toNat

end

end A251280.P5927720187490850061

/-! ## A251280.P4158508669392171895

`A251283(eq[5, A200370(n+1)])`
-/

namespace A251280.P4158508669392171895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251283 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251280.P4158508669392171895

/-!
# A251281: 

The programs for A251281, there is no canonical definition to state claims against.
-/

/-! ## A251281.P4591033741387634206

`A251283(eq[7, A131818(n+1)])`
-/

namespace A251281.P4591033741387634206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251283 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251281.P4591033741387634206

/-! ## A251281.P3098679353931073817

`A251283(eq[3, A219347(n)])`
-/

namespace A251281.P3098679353931073817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251283 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251281.P3098679353931073817

/-! ## A251281.P7013776101500807861

`A251283(eq[5, A193592(n)])`
-/

namespace A251281.P7013776101500807861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251283 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251281.P7013776101500807861

/-! ## A251281.P12388118721882850171

`A251283(eq[6, A200370(n+1)])`
-/

namespace A251281.P12388118721882850171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251283 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251281.P12388118721882850171

/-!
# A251282: 

The programs for A251282, there is no canonical definition to state claims against.
-/

/-! ## A251282.P2809850019474861750

`A251283(eq[4, A219347(n)])`
-/

namespace A251282.P2809850019474861750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251283 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251282.P2809850019474861750

/-! ## A251282.P12212103499827918664

`A251283(eq[6, A193592(n)])`
-/

namespace A251282.P12212103499827918664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251283 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251282.P12212103499827918664

/-! ## A251282.P4135983198936717989

`A251283(eq[7, A200370(n+1)])`
-/

namespace A251282.P4135983198936717989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251283 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251282.P4135983198936717989

/-!
# A251284: Number of (n+1)X(n+1) 0..1 arrays with every 2X2 subblock having a single 1 or two 1s on the same edge or main diagonally.

The programs for A251284, there is no canonical definition to state claims against.
-/

/-! ## A251284.P8156051834840127495

`A251292(∑[4*n]+1)`
-/

namespace A251284.P8156051834840127495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251292 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251284.P8156051834840127495

/-! ## A251284.P5341548931836740946

`record[A003982(n)*A251292(n+1)]`
-/

namespace A251284.P5341548931836740946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A251292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251284.P5341548931836740946

/-! ## A251284.P4958402849985528343

`record[gcd(A003987(n), A251292(n+1))]`
-/

namespace A251284.P4958402849985528343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A251292 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251284.P4958402849985528343

/-! ## A251284.P8385202553716869975

`record[A077606(n+1)*A251292(n+1)]`
-/

namespace A251284.P8385202553716869975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A251292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251284.P8385202553716869975

/-! ## A251284.P9180586893704585019

`A251292(A001844(n))+A235044(n)`
-/

namespace A251284.P9180586893704585019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251292 (A001844 n).toNat + A235044 n

end

end A251284.P9180586893704585019

/-!
# A251285: Number of (n+1) X (1+1) 0..1 arrays with every 2 X 2 subblock having a single 1 or two 1s on the same edge or main diagonally.

The programs for A251285, the canonical program `A251285.P481963255079470464` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251285 has offset 1).

The definition of A251285 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251285.P481963255079470464

`2*a(n-1)+2*a(n-2)-3*a(n-3)+a(n-4)` with `a(0)=9, a(1)=22, a(2)=52, a(3)=125`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A251285

/-- `2*a(n-1)+2*a(n-2)-3*a(n-3)+a(n-4)` -/
def P481963255079470464.Spec : Prop :=
  ∀ n, P481963255079470464.a n = A251285 (n + 1)

theorem P481963255079470464.correct : P481963255079470464.Spec := by
  intro n
  simp only [A251285, Nat.add_sub_cancel]

end A251285

/-! ## A251285.P7540843684755373026

`A251292(∑[n]+1)`
-/

namespace A251285.P7540843684755373026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251292 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251285.P7540843684755373026

namespace A251285

/-- `A251292(∑[n]+1)` -/
def P7540843684755373026.Spec : Prop :=
  ∀ n, P7540843684755373026.a n = A251285 (n + 1)

end A251285

/-! ## A251285.P5144508233477404756

`record[A251292(n+1)/A008518(n)]`
-/

namespace A251285.P5144508233477404756
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251292 (n + 1) : ℚ) / (A008518 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251285.P5144508233477404756

namespace A251285

/-- `record[A251292(n+1)/A008518(n)]` -/
def P5144508233477404756.Spec : Prop :=
  ∀ n, P5144508233477404756.a n = (A251285 (n + 1) : ℚ)

end A251285

/-! ## A251285.P10175392988319262786

`record[root(A251292(n+1), A007318(n))]`
-/

namespace A251285.P10175392988319262786
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251292 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251285.P10175392988319262786

namespace A251285

/-- `record[root(A251292(n+1), A007318(n))]` -/
def P10175392988319262786.Spec : Prop :=
  ∀ n, P10175392988319262786.a n = (A251285 (n + 1) : ℝ)

end A251285

/-! ## A251285.P7894334464077330983

`record[gcd(A002262(n), A251292(n+1))]`
-/

namespace A251285.P7894334464077330983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A251292 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251285.P7894334464077330983

namespace A251285

/-- `record[gcd(A002262(n), A251292(n+1))]` -/
def P7894334464077330983.Spec : Prop :=
  ∀ n, (P7894334464077330983.a n : ℤ) = A251285 (n + 1)

end A251285

/-!
# A251286: Number of (n+1) X (2+1) 0..1 arrays with every 2 X 2 subblock having a single 1 or two 1s on the same edge or main diagonally.

The programs for A251286, there is no canonical definition to state claims against.
-/

/-! ## A251286.P817193543067392103

`A251292(∑[n+1]+2)`
-/

namespace A251286.P817193543067392103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251292 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251286.P817193543067392103

/-! ## A251286.P10938694492032735400

`record[A251292(2-A271439(n)+n)]`
-/

namespace A251286.P10938694492032735400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251292 (2 - A271439 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251286.P10938694492032735400

/-! ## A251286.P13145021866189751509

`record[gcd(A002262(n), A251292(n+2))]`
-/

namespace A251286.P13145021866189751509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A251292 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251286.P13145021866189751509

/-! ## A251286.P5977928521902234756

`record[A251292(gcd(n+2, A271439(n)))]`
-/

namespace A251286.P5977928521902234756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251292 (Int.gcd (n + 2 : ℤ) (A271439 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251286.P5977928521902234756

/-! ## A251286.P17178176132275116942

`A251292(A133263(n+1))+and(1, 2*n)`
-/

namespace A251286.P17178176132275116942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251292 (A133263 (n + 1)).toNat + (Nat.land 1 (2 * n) : ℤ)

end

end A251286.P17178176132275116942

/-!
# A251287: Number of (n+1)X(3+1) 0..1 arrays with every 2X2 subblock having a single 1 or two 1s on the same edge or main diagonally.

The programs for A251287, there is no canonical definition to state claims against.
-/

/-! ## A251287.P6830340545601180538

`A251292(∑[n+2]+4)`
-/

namespace A251287.P6830340545601180538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251292 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251287.P6830340545601180538

/-! ## A251287.P10340714504913495894

`A251292(A167614(n+1))%A251288(n+1)`
-/

namespace A251287.P10340714504913495894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251292 (A167614 (n + 1)).toNat) (A251288 (n + 1))

end

end A251287.P10340714504913495894

/-! ## A251287.P15952095896705666281

`A251292(A034856(n+2))%A251254(n+1)`
-/

namespace A251287.P15952095896705666281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251292 (A034856 (n + 2)).toNat) (A251254 (n + 1))

end

end A251287.P15952095896705666281

/-! ## A251287.P7539171541965390338

`A251292(A000096(n+2)-1)%A251254(n+1)`
-/

namespace A251287.P7539171541965390338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251292 (A000096 (n + 2) - 1).toNat) (A251254 (n + 1))

end

end A251287.P7539171541965390338

/-! ## A251287.P12976919915238989236

`A251292(A000096(n+2)-1)+char[A254845(n+1)]`
-/

namespace A251287.P12976919915238989236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254845 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251292 (A000096 (n + 2) - 1).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A251287.P12976919915238989236

/-!
# A251288: Number of (n+1)X(4+1) 0..1 arrays with every 2X2 subblock having a single 1 or two 1s on the same edge or main diagonally.

The programs for A251288, there is no canonical definition to state claims against.
-/

/-! ## A251288.P9071362417922422235

`A251292(A374004(n+1))`
-/

namespace A251288.P9071362417922422235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251292 (A374004 (n + 1)).toNat

end

end A251288.P9071362417922422235

/-! ## A251288.P13720826158035779016

`A251292(A141214(n)+7)`
-/

namespace A251288.P13720826158035779016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251292 (A141214 n + 7).toNat

end

end A251288.P13720826158035779016

/-! ## A251288.P13360774584771886671

`A251292(A052905(n)+9)`
-/

namespace A251288.P13360774584771886671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251292 (A052905 n + 9).toNat

end

end A251288.P13360774584771886671

/-! ## A251288.P14899051545237342417

`A251292(A055999(n)+10)`
-/

namespace A251288.P14899051545237342417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251292 (A055999 n + 10).toNat

end

end A251288.P14899051545237342417

/-! ## A251288.P6473908517971379220

`A251292(A167614(n+2)+1)`
-/

namespace A251288.P6473908517971379220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251292 (A167614 (n + 2) + 1).toNat

end

end A251288.P6473908517971379220

/-!
# A251289: Number of (n+1)X(5+1) 0..1 arrays with every 2X2 subblock having a single 1 or two 1s on the same edge or main diagonally.

The programs for A251289, there is no canonical definition to state claims against.
-/

/-! ## A251289.P9742369494197123763

`A251292(A374005(n+1))`
-/

namespace A251289.P9742369494197123763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251292 (A374005 (n + 1)).toNat

end

end A251289.P9742369494197123763

/-! ## A251289.P10975401544451173910

`A251292(A056000(n)+15)`
-/

namespace A251289.P10975401544451173910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251292 (A056000 n + 15).toNat

end

end A251289.P10975401544451173910

/-! ## A251289.P1075973476718518977

`A251292(A000217(n+4)+5)`
-/

namespace A251289.P1075973476718518977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251292 (A000217 (n + 4) + 5).toNat

end

end A251289.P1075973476718518977

/-! ## A251289.P13648921029737026909

`A251292(A034856(n+3)+7)`
-/

namespace A251289.P13648921029737026909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251292 (A034856 (n + 3) + 7).toNat

end

end A251289.P13648921029737026909

/-! ## A251289.P11823763899386105740

`A251292((n+4)²-A052905(n))`
-/

namespace A251289.P11823763899386105740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251292 (((n + 4) ^ 2 : ℤ) - A052905 n).toNat

end

end A251289.P11823763899386105740

/-!
# A251290: Number of (n+1)X(6+1) 0..1 arrays with every 2X2 subblock having a single 1 or two 1s on the same edge or main diagonally.

The programs for A251290, there is no canonical definition to state claims against.
-/

/-! ## A251290.P15687410547423355969

`A251292(A374007(n+1))`
-/

namespace A251290.P15687410547423355969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251292 (A374007 (n + 1)).toNat

end

end A251290.P15687410547423355969

/-! ## A251290.P13056386939481068766

`A251292(eq[7, A131818(n+1)])`
-/

namespace A251290.P13056386939481068766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251290.P13056386939481068766

/-! ## A251290.P9617169579121175738

`A251292(A052905(n+3))`
-/

namespace A251290.P9617169579121175738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251292 (A052905 (n + 3)).toNat

end

end A251290.P9617169579121175738

/-! ## A251290.P10381823426272207651

`A251292(eq[3, A219347(n)])`
-/

namespace A251290.P10381823426272207651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251290.P10381823426272207651

/-! ## A251290.P10161705659710430692

`A251292(eq[5, A193592(n)])`
-/

namespace A251290.P10161705659710430692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251290.P10161705659710430692

/-!
# A251291: Number of (n+1)X(7+1) 0..1 arrays with every 2X2 subblock having a single 1 or two 1s on the same edge or main diagonally.

The programs for A251291, there is no canonical definition to state claims against.
-/

/-! ## A251291.P16203461233276398563

`A251292(A374008(n+1))`
-/

namespace A251291.P16203461233276398563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251292 (A374008 (n + 1)).toNat

end

end A251291.P16203461233276398563

/-! ## A251291.P17311840623762946533

`A251292(eq[8, A131818(n+1)])`
-/

namespace A251291.P17311840623762946533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251291.P17311840623762946533

/-! ## A251291.P4863521365640971361

`A251292(A055999(n+4))`
-/

namespace A251291.P4863521365640971361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251292 (A055999 (n + 4)).toNat

end

end A251291.P4863521365640971361

/-! ## A251291.P15819760604837848349

`A251292(eq[4, A219347(n)])`
-/

namespace A251291.P15819760604837848349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251291.P15819760604837848349

/-! ## A251291.P5684863949237997200

`A251292(eq[6, A193592(n)])`
-/

namespace A251291.P5684863949237997200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251291.P5684863949237997200

/-!
# A251293: Number of (n+1) X (1+1) 0..3 arrays with every 2 X 2 subblock summing to 3 6 or 9.

The programs for A251293, there is no canonical definition to state claims against.
-/

/-! ## A251293.P7057998349098244343

`A251300(∑[n]+1)`
-/

namespace A251293.P7057998349098244343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251300 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251293.P7057998349098244343

/-! ## A251293.P8675049914093630373

`lcm(2, A251300(A000124(n)))`
-/

namespace A251293.P8675049914093630373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251300 (A000124 n).toNat)

end

end A251293.P8675049914093630373

/-! ## A251293.P17573271119147864385

`record[A251300(n+1)/A015116(n)]`
-/

namespace A251293.P17573271119147864385
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251300 (n + 1) : ℚ) / (A015116 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251293.P17573271119147864385

/-! ## A251293.P1468647162521096213

`record[A251300(n+1)/A022167(n)]`
-/

namespace A251293.P1468647162521096213
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251300 (n + 1) : ℚ) / (A022167 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251293.P1468647162521096213

/-! ## A251293.P9115760628592413364

`record[A251300(n+1)/A174109(n)]`
-/

namespace A251293.P9115760628592413364
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251300 (n + 1) : ℚ) / (A174109 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251293.P9115760628592413364

/-!
# A251294: Number of (n+1) X (2+1) 0..3 arrays with every 2 X 2 subblock summing to 3 6 or 9.

The programs for A251294, there is no canonical definition to state claims against.
-/

/-! ## A251294.P6482848845376565893

`A251300(∑[n+1]+2)`
-/

namespace A251294.P6482848845376565893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251300 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251294.P6482848845376565893

/-! ## A251294.P13017011610403991048

`lcm(2, A251300(A000096(n+1)))`
-/

namespace A251294.P13017011610403991048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251300 (A000096 (n + 1)).toNat)

end

end A251294.P13017011610403991048

/-! ## A251294.P15817243806712637749

`record[gcd(A212551(n+1), A251300(n+2))]`
-/

namespace A251294.P15817243806712637749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A212551 (n + 1)) (A251300 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251294.P15817243806712637749

/-! ## A251294.P11965858167784390258

`A251300(A000096(n+1))+A000007(n+1)`
-/

namespace A251294.P11965858167784390258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251300 (A000096 (n + 1)).toNat + A000007 (n + 1)

end

end A251294.P11965858167784390258

/-! ## A251294.P13915639725352018601

`A297043(n+1)+A251300(A000096(n+1))`
-/

namespace A251294.P13915639725352018601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297043 (n + 1) + A251300 (A000096 (n + 1)).toNat

end

end A251294.P13915639725352018601

/-!
# A251295: Number of (n+1)X(3+1) 0..3 arrays with every 2X2 subblock summing to 3 6 or 9.

The programs for A251295, there is no canonical definition to state claims against.
-/

/-! ## A251295.P4687366117923891222

`A251300(∑[n+2]+4)`
-/

namespace A251295.P4687366117923891222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251300 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251295.P4687366117923891222

/-! ## A251295.P15680735609192340930

`lcm(2, A251300(A167614(n+1)))`
-/

namespace A251295.P15680735609192340930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251300 (A167614 (n + 1)).toNat)

end

end A251295.P15680735609192340930

/-! ## A251295.P2977838941438174718

`A251300(A167614(n+1))*A254730(n)`
-/

namespace A251295.P2977838941438174718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251300 (A167614 (n + 1)).toNat * A254730 n

end

end A251295.P2977838941438174718

/-! ## A251295.P7273481789534683369

`A251300(A167614(n+1))+A000038(n+1)`
-/

namespace A251295.P7273481789534683369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251300 (A167614 (n + 1)).toNat + A000038 (n + 1)

end

end A251295.P7273481789534683369

/-! ## A251295.P2659335324127519742

`A251300(A167614(n+1))%A232390(n+1)`
-/

namespace A251295.P2659335324127519742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251300 (A167614 (n + 1)).toNat) (A232390 (n + 1))

end

end A251295.P2659335324127519742

/-!
# A251296: Number of (n+1)X(4+1) 0..3 arrays with every 2X2 subblock summing to 3 6 or 9.

The programs for A251296, there is no canonical definition to state claims against.
-/

/-! ## A251296.P8987837048146784604

`A251300(A374004(n+1))`
-/

namespace A251296.P8987837048146784604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251300 (A374004 (n + 1)).toNat

end

end A251296.P8987837048146784604

/-! ## A251296.P1413169852645637877

`A251300(A141214(n)+7)`
-/

namespace A251296.P1413169852645637877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251300 (A141214 n + 7).toNat

end

end A251296.P1413169852645637877

/-! ## A251296.P13212795465606220433

`A251300(A052905(n)+9)`
-/

namespace A251296.P13212795465606220433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251300 (A052905 n + 9).toNat

end

end A251296.P13212795465606220433

/-! ## A251296.P72836381669546

`A251300(A055999(n)+10)`
-/

namespace A251296.P72836381669546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251300 (A055999 n + 10).toNat

end

end A251296.P72836381669546

/-! ## A251296.P15432784251364261677

`A251300(A167614(n+2)+1)`
-/

namespace A251296.P15432784251364261677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251300 (A167614 (n + 2) + 1).toNat

end

end A251296.P15432784251364261677

/-!
# A251297: Number of (n+1)X(5+1) 0..3 arrays with every 2X2 subblock summing to 3 6 or 9.

The programs for A251297, there is no canonical definition to state claims against.
-/

/-! ## A251297.P506349303128835327

`A251300(A374005(n+1))`
-/

namespace A251297.P506349303128835327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251300 (A374005 (n + 1)).toNat

end

end A251297.P506349303128835327

/-! ## A251297.P431072425415925287

`A251300(A056000(n)+15)`
-/

namespace A251297.P431072425415925287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251300 (A056000 n + 15).toNat

end

end A251297.P431072425415925287

/-! ## A251297.P14592615871950036903

`A251300(eq[6, A131818(n+1)])`
-/

namespace A251297.P14592615871950036903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251300 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251297.P14592615871950036903

/-! ## A251297.P7550123010318307002

`A251300(Δ[A264443(n)])`
-/

namespace A251297.P7550123010318307002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251300 (f1 (n + 1) - f1 n).toNat

end

end A251297.P7550123010318307002

/-! ## A251297.P7178631959875976475

`A251300(Δ[A023545(n+1)])`
-/

namespace A251297.P7178631959875976475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251300 (f1 (n + 1) - f1 n).toNat

end

end A251297.P7178631959875976475

/-!
# A251298: Number of (n+1)X(6+1) 0..3 arrays with every 2X2 subblock summing to 3 6 or 9.

The programs for A251298, there is no canonical definition to state claims against.
-/

/-! ## A251298.P3840616211651989453

`A251300(A374007(n+1))`
-/

namespace A251298.P3840616211651989453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251300 (A374007 (n + 1)).toNat

end

end A251298.P3840616211651989453

/-! ## A251298.P17738763738036140518

`A251300(eq[7, A131818(n+1)])`
-/

namespace A251298.P17738763738036140518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251300 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251298.P17738763738036140518

/-! ## A251298.P10073688183266790977

`A251300(eq[3, A219347(n)])`
-/

namespace A251298.P10073688183266790977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251300 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251298.P10073688183266790977

/-! ## A251298.P2390005354654433655

`A251300(eq[6, A200370(n+1)])`
-/

namespace A251298.P2390005354654433655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251300 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251298.P2390005354654433655

/-! ## A251298.P14290091613613917402

`A251300(eq[16, A057728(n+1)])`
-/

namespace A251298.P14290091613613917402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251300 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251298.P14290091613613917402

/-!
# A251299: Number of (n+1)X(7+1) 0..3 arrays with every 2X2 subblock summing to 3 6 or 9.

The programs for A251299, there is no canonical definition to state claims against.
-/

/-! ## A251299.P17363255804032490824

`A251300(A374008(n+1))`
-/

namespace A251299.P17363255804032490824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251300 (A374008 (n + 1)).toNat

end

end A251299.P17363255804032490824

/-! ## A251299.P4518894594617717933

`A251300(eq[8, A131818(n+1)])`
-/

namespace A251299.P4518894594617717933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251300 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251299.P4518894594617717933

/-! ## A251299.P11745739583459601242

`A251300(eq[2, A219347(n)-2])`
-/

namespace A251299.P11745739583459601242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251300 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251299.P11745739583459601242

