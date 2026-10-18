import SequenceMachineLib
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
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A280400: Number of 2Xn 0..2 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A280400, the canonical program `A280400.P1395747118551970306` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280400 has offset 1).

The definition of A280400 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280400.P1395747118551970306

`3*a(n-1)+a(n-2)-7*a(n-3)+4*a(n-5)` with `a(0)=0, a(1)=2, a(2)=6, a(3)=16, a(4)=34`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A280400

/-- `3*a(n-1)+a(n-2)-7*a(n-3)+4*a(n-5)` -/
def P1395747118551970306.Spec : Prop :=
  ∀ n, P1395747118551970306.a n = A280400 (n + 1)

theorem P1395747118551970306.correct : P1395747118551970306.Spec := by
  intro n
  simp only [A280400, Nat.add_sub_cancel]

end A280400

/-! ## A280400.P7800725114454070615

`2*(A219755(n+4)-1)`
-/

namespace A280400.P7800725114454070615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A219755 (n + 4) - 1)

end

end A280400.P7800725114454070615

namespace A280400

/-- `2*(A219755(n+4)-1)` -/
def P7800725114454070615.Spec : Prop :=
  ∀ n, P7800725114454070615.a n = A280400 (n + 1)

end A280400

/-! ## A280400.P14559454760082818108

`A279896(n+2)-A074828(A140524(n+1))`
-/

namespace A280400.P14559454760082818108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279896 (n + 2) - A074828 (A140524 (n + 1)).toNat

end

end A280400.P14559454760082818108

namespace A280400

/-- `A279896(n+2)-A074828(A140524(n+1))` -/
def P14559454760082818108.Spec : Prop :=
  ∀ n, P14559454760082818108.a n = A280400 (n + 1)

end A280400

/-! ## A280400.P771551195732588077

`A279851(n+1)-Δ[Δ[A091596(n)]]`
-/

namespace A280400.P771551195732588077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091596 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279851 (n + 1) - (f1 (n + 1) - f1 n)

end

end A280400.P771551195732588077

namespace A280400

/-- `A279851(n+1)-Δ[Δ[A091596(n)]]` -/
def P771551195732588077.Spec : Prop :=
  ∀ n, P771551195732588077.a n = A280400 (n + 1)

end A280400

/-! ## A280400.P17329870029953808098

`(A219755(n+4)-1)%A352706(n)+A219755(n+4)-1`
-/

namespace A280400.P17329870029953808098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219755 (n + 4) - 1) (A352706 n) + (A219755 (n + 4) - 1)

end

end A280400.P17329870029953808098

namespace A280400

/-- `(A219755(n+4)-1)%A352706(n)+A219755(n+4)-1` -/
def P17329870029953808098.Spec : Prop :=
  ∀ n, P17329870029953808098.a n = A280400 (n + 1)

end A280400

/-!
# A280401: Number of 3Xn 0..2 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A280401, there is no canonical definition to state claims against.
-/

/-! ## A280401.P10511226277491685627

`A280398(∑[n+2]+4)`
-/

namespace A280401.P10511226277491685627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280398 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A280401.P10511226277491685627

/-! ## A280401.P15909012114256315757

`A280398(A167614(n+1))+A185227(n)`
-/

namespace A280401.P15909012114256315757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280398 (A167614 (n + 1)).toNat + A185227 n

end

end A280401.P15909012114256315757

/-! ## A280401.P2327886241860039794

`A280398(A167614(n+1))+A192541(n)`
-/

namespace A280401.P2327886241860039794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280398 (A167614 (n + 1)).toNat + A192541 n

end

end A280401.P2327886241860039794

/-! ## A280401.P14955314639702649986

`A057427(n)*A280398(A167614(n+1))`
-/

namespace A280401.P14955314639702649986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A280398 (A167614 (n + 1)).toNat

end

end A280401.P14955314639702649986

/-! ## A280401.P10433277425022948804

`A178334(n)*A280398(A167614(n+1))`
-/

namespace A280401.P10433277425022948804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A280398 (A167614 (n + 1)).toNat

end

end A280401.P10433277425022948804

/-!
# A280402: Number of 4Xn 0..2 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A280402, there is no canonical definition to state claims against.
-/

/-! ## A280402.P16252005512289759800

`A280398(∑[n+3]+7)`
-/

namespace A280402.P16252005512289759800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280398 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A280402.P16252005512289759800

/-! ## A280402.P10438835386169524475

`A098747(A066657(n))*A280398(A141214(n)+7)`
-/

namespace A280402.P10438835386169524475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098747 (A066657 n).toNat * A280398 (A141214 n + 7).toNat

end

end A280402.P10438835386169524475

/-! ## A280402.P9296683765702040382

`A098747(A066657(n))*A280398(A052905(n)+9)`
-/

namespace A280402.P9296683765702040382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098747 (A066657 n).toNat * A280398 (A052905 n + 9).toNat

end

end A280402.P9296683765702040382

/-! ## A280402.P2239684899638199748

`A098747(A066657(n))*A280398(A055999(n)+10)`
-/

namespace A280402.P2239684899638199748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098747 (A066657 n).toNat * A280398 (A055999 n + 10).toNat

end

end A280402.P2239684899638199748

/-! ## A280402.P17723976929116477613

`A098747(A066657(n))*A280398(A167614(n+2)+1)`
-/

namespace A280402.P17723976929116477613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098747 (A066657 n).toNat * A280398 (A167614 (n + 2) + 1).toNat

end

end A280402.P17723976929116477613

/-!
# A280403: Number of 5Xn 0..2 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A280403, there is no canonical definition to state claims against.
-/

/-! ## A280403.P17295950461401490603

`A280398(A167499(n+3))`
-/

namespace A280403.P17295950461401490603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280398 (A167499 (n + 3)).toNat

end

end A280403.P17295950461401490603

/-! ## A280403.P12340080004778243644

`A280398(A155212(n)+13)`
-/

namespace A280403.P12340080004778243644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280398 (A155212 n + 13).toNat

end

end A280403.P12340080004778243644

/-! ## A280403.P7497656934119534592

`A280398(A056000(n)+15)`
-/

namespace A280403.P7497656934119534592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280398 (A056000 n + 15).toNat

end

end A280403.P7497656934119534592

/-! ## A280403.P13000612095295655654

`A280398(eq[7, A066657(n)])`
-/

namespace A280403.P13000612095295655654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280398 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280403.P13000612095295655654

/-! ## A280403.P1399473473681150081

`A280398(A166136(n+3)-1)`
-/

namespace A280403.P1399473473681150081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280398 (A166136 (n + 3) - 1).toNat

end

end A280403.P1399473473681150081

/-!
# A280404: Number of 6Xn 0..2 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A280404, there is no canonical definition to state claims against.
-/

/-! ## A280404.P12068608569388903781

`A280398(eq[6, A256910(n)])`
-/

namespace A280404.P12068608569388903781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280398 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280404.P12068608569388903781

/-! ## A280404.P16101043138365946818

`A280398(A167499(n+4)+1)`
-/

namespace A280404.P16101043138365946818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280398 (A167499 (n + 4) + 1).toNat

end

end A280404.P16101043138365946818

/-! ## A280404.P9623919473706237361

`A280398(A167487(n+4)-1)`
-/

namespace A280404.P9623919473706237361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280398 (A167487 (n + 4) - 1).toNat

end

end A280404.P9623919473706237361

/-! ## A280404.P7494111463437552055

`A280398(A167614(n+4)+3)`
-/

namespace A280404.P7494111463437552055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280398 (A167614 (n + 4) + 3).toNat

end

end A280404.P7494111463437552055

/-! ## A280404.P18437187264773354234

`A280398(A000096(n+4)+7)`
-/

namespace A280404.P18437187264773354234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280398 (A000096 (n + 4) + 7).toNat

end

end A280404.P18437187264773354234

/-!
# A280405: Odd semiprimes that cannot be represented as 2p+3q, where p and q are primes.

The programs for A280405, the canonical program `A280405.P4609664803987210733` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280405 has offset 1).

The definition of A280405 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280405.P4609664803987210733

`6*A104279(n+1)+3`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A280405

/-- `6*A104279(n+1)+3` -/
def P4609664803987210733.Spec : Prop :=
  ∀ n, P4609664803987210733.a n = A280405 (n + 1)

theorem P4609664803987210733.correct : P4609664803987210733.Spec := by
  intro n
  simp only [A280405, Nat.add_sub_cancel]

end A280405

/-! ## A280405.P1840987997379700786

`3*A025584(n+2)`
-/

namespace A280405.P1840987997379700786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A025584 (n + 2)

end

end A280405.P1840987997379700786

namespace A280405

/-- `3*A025584(n+2)` -/
def P1840987997379700786.Spec : Prop :=
  ∀ n, P1840987997379700786.a n = A280405 (n + 1)

end A280405

/-! ## A280405.P9418036630172362796

`3*p?[A100962(n+3)]`
-/

namespace A280405.P9418036630172362796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100962 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A280405.P9418036630172362796

namespace A280405

/-- `3*p?[A100962(n+3)]` -/
def P9418036630172362796.Spec : Prop :=
  ∀ n, P9418036630172362796.a n = A280405 (n + 1)

end A280405

/-! ## A280405.P6099408187524262317

`3*p?[A014092(n+3)]`
-/

namespace A280405.P6099408187524262317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014092 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A280405.P6099408187524262317

namespace A280405

/-- `3*p?[A014092(n+3)]` -/
def P6099408187524262317.Spec : Prop :=
  ∀ n, P6099408187524262317.a n = A280405 (n + 1)

end A280405

/-! ## A280405.P4214961314181423439

`3*p?[A018252(n+1)+2]`
-/

namespace A280405.P4214961314181423439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A280405.P4214961314181423439

namespace A280405

/-- `3*p?[A018252(n+1)+2]` -/
def P4214961314181423439.Spec : Prop :=
  ∀ n, P4214961314181423439.a n = A280405 (n + 1)

end A280405

/-! ## A280405.P6977193197547670812

`A016945(A104279(n+1))`
-/

namespace A280405.P6977193197547670812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 (A104279 (n + 1)).toNat

end

end A280405.P6977193197547670812

namespace A280405

/-- `A016945(A104279(n+1))` -/
def P6977193197547670812.Spec : Prop :=
  ∀ n, P6977193197547670812.a n = A280405 (n + 1)

end A280405

/-! ## A280405.P11745379971501483681

`A073046(A104279(n+1)+2)`
-/

namespace A280405.P11745379971501483681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073046 (A104279 (n + 1) + 2).toNat

end

end A280405.P11745379971501483681

namespace A280405

/-- `A073046(A104279(n+1)+2)` -/
def P11745379971501483681.Spec : Prop :=
  ∀ n, P11745379971501483681.a n = A280405 (n + 1)

end A280405

/-! ## A280405.P17745388807230505370

`A249734(A067774(n+1))`
-/

namespace A280405.P17745388807230505370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249734 (A067774 (n + 1)).toNat

end

end A280405.P17745388807230505370

namespace A280405

/-- `A249734(A067774(n+1))` -/
def P17745388807230505370.Spec : Prop :=
  ∀ n, P17745388807230505370.a n = A280405 (n + 1)

end A280405

/-! ## A280405.P8353574554992863642

`A249734(A141515(n+1)+1)`
-/

namespace A280405.P8353574554992863642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249734 (A141515 (n + 1) + 1).toNat

end

end A280405.P8353574554992863642

namespace A280405

/-- `A249734(A141515(n+1)+1)` -/
def P8353574554992863642.Spec : Prop :=
  ∀ n, P8353574554992863642.a n = A280405 (n + 1)

end A280405

/-! ## A280405.P9382988612465940362

`A008486(A025584(n+2))`
-/

namespace A280405.P9382988612465940362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A025584 (n + 2)).toNat

end

end A280405.P9382988612465940362

namespace A280405

/-- `A008486(A025584(n+2))` -/
def P9382988612465940362.Spec : Prop :=
  ∀ n, P9382988612465940362.a n = A280405 (n + 1)

end A280405

/-! ## A280405.P12649216362950436990

`A034718(p?[A025584(n+2)])`
-/

namespace A280405.P12649216362950436990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034718 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A280405.P12649216362950436990

namespace A280405

/-- `A034718(p?[A025584(n+2)])` -/
def P12649216362950436990.Spec : Prop :=
  ∀ n, P12649216362950436990.a n = A280405 (n + 1)

end A280405

/-! ## A280405.P3958703681003586075

`A008486(p?[A018252(n+1)+2])`
-/

namespace A280405.P3958703681003586075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A280405.P3958703681003586075

namespace A280405

/-- `A008486(p?[A018252(n+1)+2])` -/
def P3958703681003586075.Spec : Prop :=
  ∀ n, P3958703681003586075.a n = A280405 (n + 1)

end A280405

/-! ## A280405.P15049237183130021819

`3*record[A014963(A018252(n+1)+2)]`
-/

namespace A280405.P15049237183130021819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A018252 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280405.P15049237183130021819

namespace A280405

/-- `3*record[A014963(A018252(n+1)+2)]` -/
def P15049237183130021819.Spec : Prop :=
  ∀ n, P15049237183130021819.a n = A280405 (n + 1)

end A280405

/-! ## A280405.P2426317615929004130

`3*record[A014963((n+1)%A151800(n)+2)]`
-/

namespace A280405.P2426317615929004130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Int.tmod (n + 1 : ℤ) (A151800 n) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280405.P2426317615929004130

namespace A280405

/-- `3*record[A014963((n+1)%A151800(n)+2)]` -/
def P2426317615929004130.Spec : Prop :=
  ∀ n, P2426317615929004130.a n = A280405 (n + 1)

end A280405

/-! ## A280405.P13653068998776367284

`A003961(2*A067774(n+1))`
-/

namespace A280405.P13653068998776367284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (2 * A067774 (n + 1)).toNat

end

end A280405.P13653068998776367284

namespace A280405

/-- `A003961(2*A067774(n+1))` -/
def P13653068998776367284.Spec : Prop :=
  ∀ n, P13653068998776367284.a n = A280405 (n + 1)

end A280405

/-! ## A280405.P17193054481676817850

`3*p?[gcd(A046301(n+1), A067998(A065091(n+1)))]`
-/

namespace A280405.P17193054481676817850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046301 (n + 1)) (A067998 (A065091 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A280405.P17193054481676817850

namespace A280405

/-- `3*p?[gcd(A046301(n+1), A067998(A065091(n+1)))]` -/
def P17193054481676817850.Spec : Prop :=
  ∀ n, (P17193054481676817850.a n : ℤ) = A280405 (n + 1)

end A280405

/-!
# A280406: Odd semiprimes that can be represented as 2p+3q, where p and q are primes, in an increasing number of ways.

The programs for A280406, there is no canonical definition to state claims against.
-/

/-! ## A280406.P6252626230462229402

`A000040(A386775(3*n+5))+2`
-/

namespace A280406.P6252626230462229402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A386775 (3 * n + 5)).toNat + 2

end

end A280406.P6252626230462229402

/-!
# A280408: Irregular triangle read by rows listing the prime numbers that appear from the trajectory of n in Collatz Problem.

The programs for A280408, there is no canonical definition to state claims against.
-/

/-! ## A280408.P277052104917725001

`p?[A070168(n+1)+C(2, n)]`
-/

namespace A280408.P277052104917725001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070168 (n + 1) + (Nat.choose 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A280408.P277052104917725001

/-! ## A280408.P10476366352485003222

`p?[A070168(round(sqrt(n²+1))+1)]`
-/

namespace A280408.P10476366352485003222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070168 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A280408.P10476366352485003222

/-! ## A280408.P4259141945340489124

`p?[A070168(n+1)+A000007(n)]`
-/

namespace A280408.P4259141945340489124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070168 (n + 1) + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A280408.P4259141945340489124

/-! ## A280408.P5660785071297628465

`p?[A235795(n+1)]`
-/

namespace A280408.P5660785071297628465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A280408.P5660785071297628465

/-! ## A280408.P17921555016613068674

`p?[Δ[A347653(n+1)]]`
-/

namespace A280408.P17921555016613068674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347653 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A280408.P17921555016613068674

/-! ## A280408.P14320330634262398374

`p?[A070165(abs(1-n)+1)]`
-/

namespace A280408.P14320330634262398374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070165 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A280408.P14320330634262398374

/-! ## A280408.P2476430985044034879

`p?[A070165(n+1)+C(2, n)]`
-/

namespace A280408.P2476430985044034879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070165 (n + 1) + (Nat.choose 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A280408.P2476430985044034879

/-! ## A280408.P10247804702746400836

`filter[A235795(n+1), A010051(#)]`
-/

namespace A280408.P10247804702746400836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A280408.P10247804702746400836

/-! ## A280408.P14746694846646720302

`p?[A070165(n+1)+A000007(n)]`
-/

namespace A280408.P14746694846646720302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070165 (n + 1) + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A280408.P14746694846646720302

/-! ## A280408.P2585167375795793091

`p?[A070165(n+1)+and(1, A008653(n))]`
-/

namespace A280408.P2585167375795793091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070165 (n + 1) + Int.land 1 (A008653 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A280408.P2585167375795793091

/-! ## A280408.P15910875536460045162

`p?[A070165(n+1)+A029833(2*(n+1))]`
-/

namespace A280408.P15910875536460045162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070165 (n + 1) + A029833 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A280408.P15910875536460045162

/-!
# A280409: Primes in the order that they appear in A280408, without repetitions.

The programs for A280409, there is no canonical definition to state claims against.
-/

/-! ## A280409.P16512191063030808346

`p?[A263716(n)]`
-/

namespace A280409.P16512191063030808346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A280409.P16512191063030808346

/-! ## A280409.P17484404260575558041

`filter[A263716(n), A010051(#)]`
-/

namespace A280409.P17484404260575558041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A280409.P17484404260575558041

/-! ## A280409.P12179197923258438401

`filter[A263716(n+1), A080339(#)]`
-/

namespace A280409.P12179197923258438401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A280409.P12179197923258438401

/-! ## A280409.P12195122592547203461

`p?[A347265(n)]`
-/

namespace A280409.P12195122592547203461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A280409.P12195122592547203461

/-! ## A280409.P8324286739616308372

`filter[A347265(n), A010051(#)]`
-/

namespace A280409.P8324286739616308372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A280409.P8324286739616308372

/-!
# A280410: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 261", based on the 5-celled von Neumann neighborhood.

The programs for A280410, the canonical program `A280410.P15523525945967946313` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280410 has offset 0).

The definition of A280410 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280410.P4685964762829862729

`A286770(n)+char[2]`
-/

namespace A280410.P4685964762829862729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286770 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A280410.P4685964762829862729

namespace A280410

/-- `A286770(n)+char[2]` -/
def P4685964762829862729.Spec : Prop :=
  ∀ n, P4685964762829862729.a n = A280410 n

end A280410

/-! ## A280410.P14998887889912355810

`A285473(n)-n%2`
-/

namespace A280410.P14998887889912355810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285473 n - ((n % 2 : ℕ) : ℤ)

end

end A280410.P14998887889912355810

namespace A280410

/-- `A285473(n)-n%2` -/
def P14998887889912355810.Spec : Prop :=
  ∀ n, P14998887889912355810.a n = A280410 n

end A280410

/-! ## A280410.P8837135382689010048

`A282656(lcm(2, n)-n)`
-/

namespace A280410.P8837135382689010048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282656 (Nat.lcm 2 n - n)

end

end A280410.P8837135382689010048

namespace A280410

/-- `A282656(lcm(2, n)-n)` -/
def P8837135382689010048.Spec : Prop :=
  ∀ n, P8837135382689010048.a n = A280410 n

end A280410

/-! ## A280410.P9976222811388022318

`A287190(n*and(1, n))`
-/

namespace A280410.P9976222811388022318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287190 (n * Nat.land 1 n)

end

end A280410.P9976222811388022318

namespace A280410

/-- `A287190(n*and(1, n))` -/
def P9976222811388022318.Spec : Prop :=
  ∀ n, P9976222811388022318.a n = A280410 n

end A280410

/-! ## A280410.P17372083512715771868

`gcd(A286672(n)-1, log2(gcd(2, n)))`
-/

namespace A280410.P17372083512715771868
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A286672 n - 1) (SequenceMachineLib.roundAway (Real.logb 2 (Nat.gcd 2 n : ℝ)))

end

end A280410.P17372083512715771868

namespace A280410

/-- `gcd(A286672(n)-1, log2(gcd(2, n)))` -/
def P17372083512715771868.Spec : Prop :=
  ∀ n, (P17372083512715771868.a n : ℤ) = A280410 n

end A280410

/-! ## A280410.P10577696996734488563

`abs(floor(atan(n/2))-A285775(n))`
-/

namespace A280410.P10577696996734488563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊Real.arctan ((n : ℚ) / 2 : ℝ)⌋ - A285775 n|

end

end A280410.P10577696996734488563

namespace A280410

/-- `abs(floor(atan(n/2))-A285775(n))` -/
def P10577696996734488563.Spec : Prop :=
  ∀ n, P10577696996734488563.a n = A280410 n

end A280410

/-! ## A280410.P15523525945967946313

`A094026(A266303(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A280410

/-- `A094026(A266303(n))` -/
def P15523525945967946313.Spec : Prop :=
  ∀ n, P15523525945967946313.a n = A280410 n

theorem P15523525945967946313.correct : P15523525945967946313.Spec := by
  intro n
  simp only [A280410]

end A280410

/-! ## A280410.P15022532751687259430

`A285612(A266220(n))`
-/

namespace A280410.P15022532751687259430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285612 (A266220 n).toNat

end

end A280410.P15022532751687259430

namespace A280410

/-- `A285612(A266220(n))` -/
def P15022532751687259430.Spec : Prop :=
  ∀ n, P15022532751687259430.a n = A280410 n

end A280410

/-! ## A280410.P14053172813002091063

`A285612(A266437(n))`
-/

namespace A280410.P14053172813002091063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285612 (A266437 n).toNat

end

end A280410.P14053172813002091063

namespace A280410

/-- `A285612(A266437(n))` -/
def P14053172813002091063.Spec : Prop :=
  ∀ n, P14053172813002091063.a n = A280410 n

end A280410

/-! ## A280410.P4372115453368388418

`A283352(Δ[A008794(n)])`
-/

namespace A280410.P4372115453368388418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283352 (f1 (n + 1) - f1 n).toNat

end

end A280410.P4372115453368388418

namespace A280410

/-- `A283352(Δ[A008794(n)])` -/
def P4372115453368388418.Spec : Prop :=
  ∀ n, P4372115453368388418.a n = A280410 n

end A280410

/-! ## A280410.P4314816643554600682

`A286770(Δ[A008794(n)])`
-/

namespace A280410.P4314816643554600682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286770 (f1 (n + 1) - f1 n).toNat

end

end A280410.P4314816643554600682

namespace A280410

/-- `A286770(Δ[A008794(n)])` -/
def P4314816643554600682.Spec : Prop :=
  ∀ n, P4314816643554600682.a n = A280410 n

end A280410

/-! ## A280410.P9063735815664827157

`A287190(Δ[A008794(n)])`
-/

namespace A280410.P9063735815664827157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287190 (f1 (n + 1) - f1 n).toNat

end

end A280410.P9063735815664827157

namespace A280410

/-- `A287190(Δ[A008794(n)])` -/
def P9063735815664827157.Spec : Prop :=
  ∀ n, P9063735815664827157.a n = A280410 n

end A280410

/-! ## A280410.P5636077651335085380

`A288768(Δ[A008794(n)])`
-/

namespace A280410.P5636077651335085380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288768 (f1 (n + 1) - f1 n).toNat

end

end A280410.P5636077651335085380

namespace A280410

/-- `A288768(Δ[A008794(n)])` -/
def P5636077651335085380.Spec : Prop :=
  ∀ n, P5636077651335085380.a n = A280410 n

end A280410

/-! ## A280410.P11897443334019334169

`A094026(A267354(n+1))`
-/

namespace A280410.P11897443334019334169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (A267354 (n + 1)).toNat

end

end A280410.P11897443334019334169

namespace A280410

/-- `A094026(A267354(n+1))` -/
def P11897443334019334169.Spec : Prop :=
  ∀ n, P11897443334019334169.a n = A280410 n

end A280410

/-! ## A280410.P17399652622795624888

`A285612(A266724(n+1))`
-/

namespace A280410.P17399652622795624888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285612 (A266724 (n + 1)).toNat

end

end A280410.P17399652622795624888

namespace A280410

/-- `A285612(A266724(n+1))` -/
def P17399652622795624888.Spec : Prop :=
  ∀ n, P17399652622795624888.a n = A280410 n

end A280410

/-! ## A280410.P5208568309892340541

`A283352(n*A000035(n))`
-/

namespace A280410.P5208568309892340541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283352 ((n : ℤ) * A000035 n).toNat

end

end A280410.P5208568309892340541

namespace A280410

/-- `A283352(n*A000035(n))` -/
def P5208568309892340541.Spec : Prop :=
  ∀ n, P5208568309892340541.a n = A280410 n

end A280410

/-! ## A280410.P5976046513728920776

`A286770(n*A000035(n))`
-/

namespace A280410.P5976046513728920776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286770 ((n : ℤ) * A000035 n).toNat

end

end A280410.P5976046513728920776

namespace A280410

/-- `A286770(n*A000035(n))` -/
def P5976046513728920776.Spec : Prop :=
  ∀ n, P5976046513728920776.a n = A280410 n

end A280410

/-! ## A280410.P10871008938456011834

`A287190(n*A000035(n))`
-/

namespace A280410.P10871008938456011834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287190 ((n : ℤ) * A000035 n).toNat

end

end A280410.P10871008938456011834

namespace A280410

/-- `A287190(n*A000035(n))` -/
def P10871008938456011834.Spec : Prop :=
  ∀ n, P10871008938456011834.a n = A280410 n

end A280410

/-! ## A280410.P2843729683369171445

`A288768(n*A000035(n))`
-/

namespace A280410.P2843729683369171445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288768 ((n : ℤ) * A000035 n).toNat

end

end A280410.P2843729683369171445

namespace A280410

/-- `A288768(n*A000035(n))` -/
def P2843729683369171445.Spec : Prop :=
  ∀ n, P2843729683369171445.a n = A280410 n

end A280410

/-!
# A280411: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 261", based on the 5-celled von Neumann neighborhood.

The programs for A280411, the canonical program `A280411.P16062598287580684843` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280411 has offset 0).

The definition of A280411 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280411.P16062598287580684843

`A309761(∑[xor(1, n)])`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A280411

/-- `A309761(∑[xor(1, n)])` -/
def P16062598287580684843.Spec : Prop :=
  ∀ n, P16062598287580684843.a n = A280411 n

theorem P16062598287580684843.correct : P16062598287580684843.Spec := by
  intro n
  simp only [A280411]

end A280411

/-! ## A280411.P1221152939946657354

`A309761(∑[n]+and(1, n+1))`
-/

namespace A280411.P1221152939946657354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (∑ j ∈ Finset.range (n + 1), f1 j + Nat.land 1 (n + 1))

end

end A280411.P1221152939946657354

namespace A280411

/-- `A309761(∑[n]+and(1, n+1))` -/
def P1221152939946657354.Spec : Prop :=
  ∀ n, P1221152939946657354.a n = A280411 n

end A280411

/-! ## A280411.P11894679366858798227

`A309761(A084263(n))`
-/

namespace A280411.P11894679366858798227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (A084263 n).toNat

end

end A280411.P11894679366858798227

namespace A280411

/-- `A309761(A084263(n))` -/
def P11894679366858798227.Spec : Prop :=
  ∀ n, P11894679366858798227.a n = A280411 n

end A280411

/-! ## A280411.P9674877933141734615

`A309761(∑[A004442(n)])`
-/

namespace A280411.P9674877933141734615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A280411.P9674877933141734615

namespace A280411

/-- `A309761(∑[A004442(n)])` -/
def P9674877933141734615.Spec : Prop :=
  ∀ n, P9674877933141734615.a n = A280411 n

end A280411

/-! ## A280411.P2618364061321569162

`A164844(A084265(n)-1)`
-/

namespace A280411.P2618364061321569162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164844 (A084265 n - 1).toNat

end

end A280411.P2618364061321569162

namespace A280411

/-- `A164844(A084265(n)-1)` -/
def P2618364061321569162.Spec : Prop :=
  ∀ n, P2618364061321569162.a n = A280411 n

end A280411

/-! ## A280411.P4066647012618855092

`A309761(A084265(n)-n)`
-/

namespace A280411.P4066647012618855092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (A084265 n - (n : ℤ)).toNat

end

end A280411.P4066647012618855092

namespace A280411

/-- `A309761(A084265(n)-n)` -/
def P4066647012618855092.Spec : Prop :=
  ∀ n, P4066647012618855092.a n = A280411 n

end A280411

/-! ## A280411.P9321402204916748255

`A277798(A124625(n))+A277798(n)`
-/

namespace A280411.P9321402204916748255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277798 (A124625 n).toNat + A277798 n

end

end A280411.P9321402204916748255

namespace A280411

/-- `A277798(A124625(n))+A277798(n)` -/
def P9321402204916748255.Spec : Prop :=
  ∀ n, P9321402204916748255.a n = A280411 n

end A280411

/-! ## A280411.P18278688020425557573

`A309761(A000124(n)-A000035(n))`
-/

namespace A280411.P18278688020425557573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (A000124 n - A000035 n).toNat

end

end A280411.P18278688020425557573

namespace A280411

/-- `A309761(A000124(n)-A000035(n))` -/
def P18278688020425557573.Spec : Prop :=
  ∀ n, P18278688020425557573.a n = A280411 n

end A280411

/-! ## A280411.P146132983808900034

`A282451(xor(1, n))`
-/

namespace A280411.P146132983808900034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282451 (Nat.xor 1 n)

end

end A280411.P146132983808900034

namespace A280411

/-- `A282451(xor(1, n))` -/
def P146132983808900034.Spec : Prop :=
  ∀ n, P146132983808900034.a n = A280411 n

end A280411

/-!
# A280412: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 261", based on the 5-celled von Neumann neighborhood.

The programs for A280412, the canonical program `A280412.P781452095873534352` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280412 has offset 0).

The definition of A280412 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A280412.P781452095873534352

`5*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=2, a(2)=1, a(3)=14`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A280412

/-- `5*a(n-2)-4*a(n-4)` -/
def P781452095873534352.Spec : Prop :=
  ∀ n, P781452095873534352.a n = A280412 n

theorem P781452095873534352.correct : P781452095873534352.Spec := by
  intro n
  simp only [A280412]

end A280412

/-! ## A280412.P15021962492730778061

`ogf((1+2x-4x^2+4x^3)/(1-5x^2+4x^4))`
-/

namespace A280412.P15021962492730778061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -4, 4] [1, 0, -5, 0, 4] n

end

end A280412.P15021962492730778061

namespace A280412

/-- `ogf((1+2x-4x^2+4x^3)/(1-5x^2+4x^4))` -/
def P15021962492730778061.Spec : Prop :=
  ∀ n, P15021962492730778061.a n = A280412 n

end A280412

/-! ## A280412.P6993063354946039482

`abs(2-gcd(2, n+1)^(n+1))`
-/

namespace A280412.P6993063354946039482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (Nat.gcd 2 (n + 1) ^ (n + 1) : ℤ)|

end

end A280412.P6993063354946039482

namespace A280412

/-- `abs(2-gcd(2, n+1)^(n+1))` -/
def P6993063354946039482.Spec : Prop :=
  ∀ n, P6993063354946039482.a n = A280412 n

end A280412

/-! ## A280412.P7417884731322648207

`xor(5, 3*n%2+4*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A280412.P7417884731322648207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.xor 5 (3 * (n % 2) + 4 * a (n - 2))

end

end A280412.P7417884731322648207

namespace A280412

/-- `xor(5, 3*n%2+4*a(n-2))` -/
def P7417884731322648207.Spec : Prop :=
  ∀ n, (P7417884731322648207.a n : ℤ) = A280412 n

end A280412

/-! ## A280412.P12140801101990362367

`A286772(n)+char[2]`
-/

namespace A280412.P12140801101990362367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286772 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A280412.P12140801101990362367

namespace A280412

/-- `A286772(n)+char[2]` -/
def P12140801101990362367.Spec : Prop :=
  ∀ n, P12140801101990362367.a n = A280412 n

end A280412

/-! ## A280412.P2718300860435236940

`xor(1, A277799(n))+1`
-/

namespace A280412.P2718300860435236940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A277799 n) + 1

end

end A280412.P2718300860435236940

namespace A280412

/-- `xor(1, A277799(n))+1` -/
def P2718300860435236940.Spec : Prop :=
  ∀ n, P2718300860435236940.a n = A280412 n

end A280412

/-! ## A280412.P3513809122298558825

`abs(2-A072345(n)²)`
-/

namespace A280412.P3513809122298558825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A072345 n ^ 2|

end

end A280412.P3513809122298558825

namespace A280412

/-- `abs(2-A072345(n)²)` -/
def P3513809122298558825.Spec : Prop :=
  ∀ n, P3513809122298558825.a n = A280412 n

end A280412

/-! ## A280412.P2427288884945303419

`A095121(lcm(2, n)-n)`
-/

namespace A280412.P2427288884945303419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 (Nat.lcm 2 n - n)

end

end A280412.P2427288884945303419

namespace A280412

/-- `A095121(lcm(2, n)-n)` -/
def P2427288884945303419.Spec : Prop :=
  ∀ n, P2427288884945303419.a n = A280412 n

end A280412

/-! ## A280412.P1737102339247349293

`A277866(n)+and(1, n)`
-/

namespace A280412.P1737102339247349293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277866 n + (Nat.land 1 n : ℤ)

end

end A280412.P1737102339247349293

namespace A280412

/-- `A277866(n)+and(1, n)` -/
def P1737102339247349293.Spec : Prop :=
  ∀ n, P1737102339247349293.a n = A280412 n

end A280412

/-! ## A280412.P2300469983549624133

`A095121(n*and(1, n))`
-/

namespace A280412.P2300469983549624133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 (n * Nat.land 1 n)

end

end A280412.P2300469983549624133

namespace A280412

/-- `A095121(n*and(1, n))` -/
def P2300469983549624133.Spec : Prop :=
  ∀ n, P2300469983549624133.a n = A280412 n

end A280412

/-! ## A280412.P3949406660781102027

`A282004(n*and(1, n))`
-/

namespace A280412.P3949406660781102027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282004 (n * Nat.land 1 n)

end

end A280412.P3949406660781102027

namespace A280412

/-- `A282004(n*and(1, n))` -/
def P3949406660781102027.Spec : Prop :=
  ∀ n, P3949406660781102027.a n = A280412 n

end A280412

/-! ## A280412.P18367894382457206623

`A282658(n*and(1, n))`
-/

namespace A280412.P18367894382457206623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282658 (n * Nat.land 1 n)

end

end A280412.P18367894382457206623

namespace A280412

/-- `A282658(n*and(1, n))` -/
def P18367894382457206623.Spec : Prop :=
  ∀ n, P18367894382457206623.a n = A280412 n

end A280412

/-! ## A280412.P17307974888527508026

`A283353(n*and(1, n))`
-/

namespace A280412.P17307974888527508026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283353 (n * Nat.land 1 n)

end

end A280412.P17307974888527508026

namespace A280412

/-- `A283353(n*and(1, n))` -/
def P17307974888527508026.Spec : Prop :=
  ∀ n, P17307974888527508026.a n = A280412 n

end A280412

/-! ## A280412.P13277073228348633029

`A286772(n*and(1, n))`
-/

namespace A280412.P13277073228348633029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286772 (n * Nat.land 1 n)

end

end A280412.P13277073228348633029

namespace A280412

/-- `A286772(n*and(1, n))` -/
def P13277073228348633029.Spec : Prop :=
  ∀ n, P13277073228348633029.a n = A280412 n

end A280412

/-! ## A280412.P17687092452250689559

`A287192(n*and(1, n))`
-/

namespace A280412.P17687092452250689559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287192 (n * Nat.land 1 n)

end

end A280412.P17687092452250689559

namespace A280412

/-- `A287192(n*and(1, n))` -/
def P17687092452250689559.Spec : Prop :=
  ∀ n, P17687092452250689559.a n = A280412 n

end A280412

/-! ## A280412.P8557615433474307649

`A288770(n*and(1, n))`
-/

namespace A280412.P8557615433474307649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288770 (n * Nat.land 1 n)

end

end A280412.P8557615433474307649

namespace A280412

/-- `A288770(n*and(1, n))` -/
def P8557615433474307649.Spec : Prop :=
  ∀ n, P8557615433474307649.a n = A280412 n

end A280412

/-! ## A280412.P10549772620453126076

`A289098(n*and(1, n))`
-/

namespace A280412.P10549772620453126076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289098 (n * Nat.land 1 n)

end

end A280412.P10549772620453126076

namespace A280412

/-- `A289098(n*and(1, n))` -/
def P10549772620453126076.Spec : Prop :=
  ∀ n, P10549772620453126076.a n = A280412 n

end A280412

/-! ## A280412.P16687481007971062611

`A289268(n*and(1, n))`
-/

namespace A280412.P16687481007971062611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289268 (n * Nat.land 1 n)

end

end A280412.P16687481007971062611

namespace A280412

/-- `A289268(n*and(1, n))` -/
def P16687481007971062611.Spec : Prop :=
  ∀ n, P16687481007971062611.a n = A280412 n

end A280412

/-! ## A280412.P13211655790362497805

`A283353(Δ[floor(n/2)²])`
-/

namespace A280412.P13211655790362497805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283353 (f1 (n + 1) - f1 n).toNat

end

end A280412.P13211655790362497805

namespace A280412

/-- `A283353(Δ[floor(n/2)²])` -/
def P13211655790362497805.Spec : Prop :=
  ∀ n, P13211655790362497805.a n = A280412 n

end A280412

/-! ## A280412.P15619377877872314889

`xor(1, A059222(n+2)-1)`
-/

namespace A280412.P15619377877872314889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A059222 (n + 2) - 1)

end

end A280412.P15619377877872314889

namespace A280412

/-- `xor(1, A059222(n+2)-1)` -/
def P15619377877872314889.Spec : Prop :=
  ∀ n, P15619377877872314889.a n = A280412 n

end A280412

/-!
# A280413: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 262", based on the 5-celled von Neumann neighborhood.

The programs for A280413, there is no canonical definition to state claims against.
-/

/-! ## A280413.P7415676436582948349

`A002275(n+2)-A283404(n+1)`
-/

namespace A280413.P7415676436582948349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 2) - A283404 (n + 1)

end

end A280413.P7415676436582948349

/-! ## A280413.P424310464012226420

`A007088(A280415(n))`
-/

namespace A280413.P424310464012226420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A280415 n).toNat

end

end A280413.P424310464012226420

/-! ## A280413.P5892852665278224791

`A007088(A281737(n))`
-/

namespace A280413.P5892852665278224791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281737 n).toNat

end

end A280413.P5892852665278224791

/-! ## A280413.P2524796513217055390

`A007088(A126646(n))-A283400(A028310(n))`
-/

namespace A280413.P2524796513217055390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A126646 n).toNat - A283400 (A028310 n).toNat

end

end A280413.P2524796513217055390

/-! ## A280413.P7666059544455967330

`A185544(2*A280415(n))`
-/

namespace A280413.P7666059544455967330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A280415 n).toNat

end

end A280413.P7666059544455967330

/-!
# A280414: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 262", based on the 5-celled von Neumann neighborhood.

The programs for A280414, there is no canonical definition to state claims against.
-/

/-! ## A280414.P12280242334697640714

`A007088(A280416(n)+A137579(n))`
-/

namespace A280414.P12280242334697640714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A280416 n + A137579 n).toNat

end

end A280414.P12280242334697640714

/-!
# A280415: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 262", based on the 5-celled von Neumann neighborhood.

The programs for A280415, there is no canonical definition to state claims against.
-/

/-! ## A280415.P14964787371501997641

`∑[A000079(n+1)-Δ[A283406(n)]]`
-/

namespace A280415.P14964787371501997641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283406 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280415.P14964787371501997641

/-! ## A280415.P11475967874413626684

`A281737(n)-A285007(A035607(n))`
-/

namespace A280415.P11475967874413626684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281737 n - A285007 (A035607 n).toNat

end

end A280415.P11475967874413626684

/-! ## A280415.P9861916103474387562

`A281737(n)%Δ[A157519(n)]`
-/

namespace A280415.P9861916103474387562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281737 n) (f1 (n + 1) - f1 n)

end

end A280415.P9861916103474387562

/-! ## A280415.P13994388358313434188

`A281737(n)^A281748(floor((π-e)*sqrt(n)))`
-/

namespace A280415.P13994388358313434188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281737 n : ℚ) ^ (A281748 ⌊(Real.pi - Real.exp 1) * Real.sqrt (n : ℝ)⌋.toNat : ℤ)

end

end A280415.P13994388358313434188

/-! ## A280415.P6505088886340320516

`or(A000035(A127302(n)), A281737(n))`
-/

namespace A280415.P6505088886340320516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A127302 n).toNat) (A281737 n)

end

end A280415.P6505088886340320516

/-!
# A280416: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 262", based on the 5-celled von Neumann neighborhood.

The programs for A280416, there is no canonical definition to state claims against.
-/

/-! ## A280416.P12795154809729444195

`A281738(n)*A355925(A157212(n))`
-/

namespace A280416.P12795154809729444195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281738 n * A355925 (A157212 n).toNat

end

end A280416.P12795154809729444195

/-!
# A280417: Number of distinct length-n blocks (a.k.a. subword complexity) of the characteristic sequence of the prime numbers A010051.

The programs for A280417, there is no canonical definition to state claims against.
-/

/-! ## A280417.P5554780623690514346

`∑[A036043(A036249(n)+1)]`
-/

namespace A280417.P5554780623690514346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036043 (A036249 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280417.P5554780623690514346

/-! ## A280417.P9233190495766633189

`A117115(n)+A001221(A000110(n))`
-/

namespace A280417.P9233190495766633189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117115 n + A001221 (A000110 n).toNat

end

end A280417.P9233190495766633189

/-! ## A280417.P18005649029832638609

`A056556(A270932(n)+A135471(n+1))`
-/

namespace A280417.P18005649029832638609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A270932 n + A135471 (n + 1)).toNat

end

end A280417.P18005649029832638609

/-! ## A280417.P559501523573354001

`xor(A281615(n+1), A328615(A083323(n)))`
-/

namespace A280417.P559501523573354001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A281615 (n + 1)) (A328615 (A083323 n).toNat)

end

end A280417.P559501523573354001

/-! ## A280417.P14229180971794831845

`A004526(A211372(n+1)+A024786(n+1))`
-/

namespace A280417.P14229180971794831845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A211372 (n + 1) + A024786 (n + 1)).toNat

end

end A280417.P14229180971794831845

/-!
# A280420: Product of divisors of n!.

The programs for A280420, the canonical program `A280420.P7252291216696291508` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280420 has offset 0).

The definition of A280420 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A280420.P7252291216696291508

`A007955(A000142(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A280420

/-- `A007955(A000142(n))` -/
def P7252291216696291508.Spec : Prop :=
  ∀ n, P7252291216696291508.a n = A280420 n

theorem P7252291216696291508.correct : P7252291216696291508.Spec := by
  intro n
  simp only [A280420]

end A280420

/-! ## A280420.P8343711192409495201

`∏{d}[n!, #]`
-/

namespace A280420.P8343711192409495201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A280420.P8343711192409495201

namespace A280420

/-- `∏{d}[n!, #]` -/
def P8343711192409495201.Spec : Prop :=
  ∀ n, (P8343711192409495201.a n : ℤ) = A280420 n

end A280420

/-! ## A280420.P1768742204247858728

`exp(∑{d}[n!, log(#)])`
-/

namespace A280420.P1768742204247858728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ d ∈ Nat.divisors (f1 n), Real.log (d : ℝ))

end

end A280420.P1768742204247858728

namespace A280420

/-- `exp(∑{d}[n!, log(#)])` -/
def P1768742204247858728.Spec : Prop :=
  ∀ n, P1768742204247858728.a n = (A280420 n : ℝ)

end A280420

/-!
# A280421: G.f.: Product_{k>=1} (1 + x^(k*(k+1)/2)) / (1 - x^k).

The programs for A280421, there is no canonical definition to state claims against.
-/

/-! ## A280421.P16136444000547700321

`A071521(A340920(n))+A000045(n)`
-/

namespace A280421.P16136444000547700321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071521 (A340920 n).toNat + A000045 n

end

end A280421.P16136444000547700321

/-! ## A280421.P5185820030219106180

`A157271(A157254(n+1)+A062399(n))`
-/

namespace A280421.P5185820030219106180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A157254 (n + 1) + A062399 n).toNat

end

end A280421.P5185820030219106180

/-! ## A280421.P3477803134146108981

`A053264(A016885(n))%A194785(n+1)`
-/

namespace A280421.P3477803134146108981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053264 (A016885 n).toNat) (A194785 (n + 1))

end

end A280421.P3477803134146108981

/-! ## A280421.P2352460707654018661

`A053264(A016885(n)+A062399(n)-n)`
-/

namespace A280421.P2352460707654018661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053264 (A016885 n + (A062399 n - (n : ℤ))).toNat

end

end A280421.P2352460707654018661

/-! ## A280421.P4337814974178127132

`A108932(3*n+2)+A007949(A235517(n+1))`
-/

namespace A280421.P4337814974178127132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108932 (3 * n + 2) + A007949 (A235517 (n + 1)).toNat

end

end A280421.P4337814974178127132

/-!
# A280422: G.f.: Product_{k>=1} (1 + x^k) / (1 - x^(k*(k+1)/2)).

The programs for A280422, there is no canonical definition to state claims against.
-/

/-! ## A280422.P18247635187173742295

`A135665(A025048(n)*A134919(2*n+3))`
-/

namespace A280422.P18247635187173742295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135665 (A025048 n * A134919 (2 * n + 3)).toNat

end

end A280422.P18247635187173742295

/-! ## A280422.P242455751788971111

`A364913(n)+A261466(A363740(n+1))`
-/

namespace A280422.P242455751788971111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364913 n + A261466 (A363740 (n + 1)).toNat

end

end A280422.P242455751788971111

/-! ## A280422.P2215037703250040771

`A328085(n+2)+A080224(A325708(n+1))`
-/

namespace A280422.P2215037703250040771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328085 (n + 2) + A080224 (A325708 (n + 1)).toNat

end

end A280422.P2215037703250040771

/-! ## A280422.P2468943967642708655

`A057048(n+2)-A183024(A057048(n+2))`
-/

namespace A280422.P2468943967642708655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057048 (n + 2) - A183024 (A057048 (n + 2)).toNat

end

end A280422.P2468943967642708655

/-!
# A280423: G.f.: Product_{k>=1} (1 + x^(k*(k+1))) / (1 - x^k).

The programs for A280423, there is no canonical definition to state claims against.
-/

/-! ## A280423.P15631692852322799332

`A326468(A187829(n+1))+A098613(n)`
-/

namespace A280423.P15631692852322799332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326468 (A187829 (n + 1)).toNat + A098613 n

end

end A280423.P15631692852322799332

/-! ## A280423.P10661525512894988586

`A000188(A036019(2*n)²)`
-/

namespace A280423.P10661525512894988586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A036019 (2 * n) ^ 2).toNat

end

end A280423.P10661525512894988586

/-! ## A280423.P5778384906590313757

`A000196(A036019(2*n)²)`
-/

namespace A280423.P5778384906590313757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A036019 (2 * n) ^ 2).toNat

end

end A280423.P5778384906590313757

/-! ## A280423.P14952461004986891564

`A019554(A036019(2*n)²)`
-/

namespace A280423.P14952461004986891564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A036019 (2 * n) ^ 2).toNat

end

end A280423.P14952461004986891564

/-! ## A280423.P7597614757167601663

`filter[A036019(2*n), A102609(#)]`
-/

namespace A280423.P7597614757167601663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036019 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A280423.P7597614757167601663

/-!
# A280424: G.f.: Product_{k>=1} (1 + x^k) / (1 - x^(k*(k+1))).

The programs for A280424, there is no canonical definition to state claims against.
-/

/-! ## A280424.P14885964057069733136

`A001935(n)-A328499(A328508(n))`
-/

namespace A280424.P14885964057069733136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 n - A328499 (A328508 n).toNat

end

end A280424.P14885964057069733136

/-! ## A280424.P617979668212862959

`A001935(n)-A115247(A185344(n))`
-/

namespace A280424.P617979668212862959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 n - A115247 (A185344 n).toNat

end

end A280424.P617979668212862959

/-! ## A280424.P4234709249475131667

`A303944(n)+A048766(A107373(n+1))`
-/

namespace A280424.P4234709249475131667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303944 n + A048766 (A107373 (n + 1)).toNat

end

end A280424.P4234709249475131667

/-! ## A280424.P7688200930934588371

`A259899(A346736(n))`
-/

namespace A280424.P7688200930934588371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259899 (A346736 n).toNat

end

end A280424.P7688200930934588371

/-! ## A280424.P17162769460516242145

`A001935(n)-A275947(A283821(n+1))`
-/

namespace A280424.P17162769460516242145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 n - A275947 (A283821 (n + 1)).toNat

end

end A280424.P17162769460516242145

/-!
# A280425: Sixth column of Euler's difference table in A068106.

The programs for A280425, there is no canonical definition to state claims against.
-/

/-! ## A280425.P3318965216502793839

`lcm(A068106(A167499(n)), A156877(n+1))`
-/

namespace A280425.P3318965216502793839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A068106 (A167499 n).toNat) (A156877 (n + 1))

end

end A280425.P3318965216502793839

/-! ## A280425.P1403419159459298628

`char[A191724(n+4)]*A068106(A167499(n))`
-/

namespace A280425.P1403419159459298628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191724 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A068106 (A167499 n).toNat

end

end A280425.P1403419159459298628

/-! ## A280425.P5800599455427386777

`char[A267758(n+4)]*A068106(A167499(n))`
-/

namespace A280425.P5800599455427386777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267758 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A068106 (A167499 n).toNat

end

end A280425.P5800599455427386777

/-! ## A280425.P9531959161870514857

`char[A061579(n+1)+3]*A068106(A167499(n))`
-/

namespace A280425.P9531959161870514857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (n + 1) + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A068106 (A167499 n).toNat

end

end A280425.P9531959161870514857

/-! ## A280425.P13558147038478349976

`A068106(A167499(n))%A000041(A007531(n))`
-/

namespace A280425.P13558147038478349976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068106 (A167499 n).toNat) (A000041 (A007531 n).toNat)

end

end A280425.P13558147038478349976

/-!
# A280426: Digital roots of tetranacci numbers A000078.

The programs for A280426, the canonical program `A280426.P4387657100138312277` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280426 has offset 0).

The definition of A280426 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A280426.P4387657100138312277

`A010888(A000078(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A280426

/-- `A010888(A000078(n))` -/
def P4387657100138312277.Spec : Prop :=
  ∀ n, P4387657100138312277.a n = A280426 n

theorem P4387657100138312277.correct : P4387657100138312277.Spec := by
  intro n
  simp only [A280426]

end A280426

/-!
# A280427: a(n) is a prime, such that a(n) = p^d-2 where p is a prime and d is the number of digits of p.

The programs for A280427, there is no canonical definition to state claims against.
-/

/-! ## A280427.P1343617221466814667

`p?[A321322(n+1)%A265016(n)]`
-/

namespace A280427.P1343617221466814667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321322 (n + 1)) (A265016 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A280427.P1343617221466814667

/-! ## A280427.P8893389361244779004

`A099377(A049002(n+3)%A000108(2*n+3))`
-/

namespace A280427.P8893389361244779004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099377 (Int.tmod (A049002 (n + 3)) (A000108 (2 * n + 3))).toNat

end

end A280427.P8893389361244779004

/-! ## A280427.P9912208931620081268

`record[A051698(A062326(n+1)^A043537(3*n+2))]`
-/

namespace A280427.P9912208931620081268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (SequenceMachineLib.roundAway ((A062326 (n + 1) : ℚ) ^ (A043537 (3 * n + 2) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280427.P9912208931620081268

/-!
# A280428: a(n) = 1729*n^3.

The programs for A280428, the canonical program `A280428.P4815761797308640122` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280428 has offset 1).

The definition of A280428 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A280428.P4815761797308640122

`A017163(n+1)+A017271(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A280428

/-- `A017163(n+1)+A017271(n+1)` -/
def P4815761797308640122.Spec : Prop :=
  ∀ n, P4815761797308640122.a n = A280428 (n + 1)

theorem P4815761797308640122.correct : P4815761797308640122.Spec := by
  intro n
  simp only [A280428, Nat.add_sub_cancel]

end A280428

/-! ## A280428.P10686800725207539513

`A000578(n+1)+A017523(n+1)`
-/

namespace A280428.P10686800725207539513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) + A017523 (n + 1)

end

end A280428.P10686800725207539513

namespace A280428

/-- `A000578(n+1)+A017523(n+1)` -/
def P10686800725207539513.Spec : Prop :=
  ∀ n, P10686800725207539513.a n = A280428 (n + 1)

end A280428

/-! ## A280428.P16880373614732218193

`(3*4*(n+1))^3+(n+1)^3`
-/

namespace A280428.P16880373614732218193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * (4 * (n + 1))) ^ 3 + (n + 1) ^ 3

end

end A280428.P16880373614732218193

namespace A280428

/-- `(3*4*(n+1))^3+(n+1)^3` -/
def P16880373614732218193.Spec : Prop :=
  ∀ n, (P16880373614732218193.a n : ℤ) = A280428 (n + 1)

end A280428

/-! ## A280428.P820028911428109756

`(n+1)²*Δ[A130876(n)]`
-/

namespace A280428.P820028911428109756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130876 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A280428.P820028911428109756

namespace A280428

/-- `(n+1)²*Δ[A130876(n)]` -/
def P820028911428109756.Spec : Prop :=
  ∀ n, P820028911428109756.a n = A280428 (n + 1)

end A280428

/-! ## A280428.P16524678790238836308

`(n+1)²*A138129(n+1)`
-/

namespace A280428.P16524678790238836308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A138129 (n + 1)

end

end A280428.P16524678790238836308

namespace A280428

/-- `(n+1)²*A138129(n+1)` -/
def P16524678790238836308.Spec : Prop :=
  ∀ n, P16524678790238836308.a n = A280428 (n + 1)

end A280428

/-! ## A280428.P6405925519956436585

`(n+1)*∑[A138129(2*n+1)]`
-/

namespace A280428.P6405925519956436585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138129 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A280428.P6405925519956436585

namespace A280428

/-- `(n+1)*∑[A138129(2*n+1)]` -/
def P6405925519956436585.Spec : Prop :=
  ∀ n, P6405925519956436585.a n = A280428 (n + 1)

end A280428

/-! ## A280428.P4168324929938729440

`∑[∑[A138129(A008458(n))]]`
-/

namespace A280428.P4168324929938729440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138129 (A008458 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280428.P4168324929938729440

namespace A280428

/-- `∑[∑[A138129(A008458(n))]]` -/
def P4168324929938729440.Spec : Prop :=
  ∀ n, P4168324929938729440.a n = A280428 (n + 1)

end A280428

/-! ## A280428.P3075524525056761297

`∑[A138129(Δ[n^3])]`
-/

namespace A280428.P3075524525056761297
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138129 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280428.P3075524525056761297

namespace A280428

/-- `∑[A138129(Δ[n^3])]` -/
def P3075524525056761297.Spec : Prop :=
  ∀ n, P3075524525056761297.a n = A280428 (n + 1)

end A280428

/-!
# A280429: Longest word T from a string S using no breakpoint-reuse.

The programs for A280429, there is no canonical definition to state claims against.
-/

/-! ## A280429.P7871192916514527292

`A349294(∑[A085484(n)])`
-/

namespace A280429.P7871192916514527292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349294 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A280429.P7871192916514527292

/-! ## A280429.P10982371462356204318

`lt[A032741(A000009(n)), A079167(3*n+1)]`
-/

namespace A280429.P10982371462356204318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A000009 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079167 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A280429.P10982371462356204318

/-! ## A280429.P1093899939807859683

`lt[A000005(A000009(n)), A327527(3*n+1)]`
-/

namespace A280429.P1093899939807859683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000009 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327527 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A280429.P1093899939807859683

/-!
# A280431: Numbers k such that (2*10^k - 41)/3 is prime.

The programs for A280431, there is no canonical definition to state claims against.
-/

/-! ## A280431.P9359663017163730820

`record[A014197(A128606(n+1))]`
-/

namespace A280431.P9359663017163730820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (A128606 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280431.P9359663017163730820

/-!
# A280432: Maximum size of a set whose integrity can be checked with n weighings.

The programs for A280432, there is no canonical definition to state claims against.
-/

/-! ## A280432.P1595701840241432863

`ogf((2-6x-2x^2)/(1-5x+4x^2+2x^3-6x^4))`
-/

namespace A280432.P1595701840241432863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -6, -2] [1, -5, 4, 2, -6] n

end

end A280432.P1595701840241432863

/-!
# A280433: The mailbox manufacturer's problem, for the 2-mailbox case.

The programs for A280433, there is no canonical definition to state claims against.
-/

/-! ## A280433.P6860980829178851552

`A160385(n)+A157795(n)`
-/

namespace A280433.P6860980829178851552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 n + A157795 n

end

end A280433.P6860980829178851552

/-! ## A280433.P12483225857116396863

`∑[A297770(∑[A105309(n)])]`
-/

namespace A280433.P12483225857116396863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105309 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297770 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280433.P12483225857116396863

/-! ## A280433.P17292895268637516431

`∑[A297033(A173554(n+1))]`
-/

namespace A280433.P17292895268637516431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297033 (A173554 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280433.P17292895268637516431

/-! ## A280433.P13684732242287298062

`A316434(n+1)+A289139(A129403(n+1))`
-/

namespace A280433.P13684732242287298062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316434 (n + 1) + A289139 (A129403 (n + 1)).toNat

end

end A280433.P13684732242287298062

/-! ## A280433.P6588311811898905690

`A222172(n)+A070939(A134816(3*n+1))`
-/

namespace A280433.P6588311811898905690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222172 n + A070939 (A134816 (3 * n + 1)).toNat

end

end A280433.P6588311811898905690

/-!
# A280434: Number of n X n 0..1 arrays with no element equal to more than one of its horizontal and vertical neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A280434, there is no canonical definition to state claims against.
-/

/-! ## A280434.P7528798757574126075

`A280440(∑[4*n]+1)`
-/

namespace A280434.P7528798757574126075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280440 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A280434.P7528798757574126075

/-! ## A280434.P14490204066907912007

`A280440(A001844(n))+char[17]`
-/

namespace A280434.P14490204066907912007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280440 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A280434.P14490204066907912007

/-! ## A280434.P12567391672835499935

`record[A003982(n)*A280440(n+1)]`
-/

namespace A280434.P12567391672835499935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A280440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280434.P12567391672835499935

/-! ## A280434.P3664727022992406792

`A280440(A001844(n))%A010997(n)`
-/

namespace A280434.P3664727022992406792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280440 (A001844 n).toNat) (A010997 (n + 44))

end

end A280434.P3664727022992406792

/-! ## A280434.P4889244499955071746

`A007318(∑[n])*A280440(A001844(n))`
-/

namespace A280434.P4889244499955071746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A280440 (A001844 n).toNat

end

end A280434.P4889244499955071746

/-!
# A280435: Number of nX3 0..1 arrays with no element equal to more than one of its horizontal and vertical neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A280435, the canonical program `A280435.P227786769919913002` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280435 has offset 1).

The definition of A280435 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 466 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280435.P227786769919913002

`3*a(n-1)-a(n-2)-3*a(n-3)+a(n-4)+a(n-5)` with `a(0)=1, a(1)=10, a(2)=21, a(3)=42, a(4)=77, a(5)=136`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A280435

/-- `3*a(n-1)-a(n-2)-3*a(n-3)+a(n-4)+a(n-5)` -/
def P227786769919913002.Spec : Prop :=
  ∀ n, P227786769919913002.a n = A280435 (n + 1)

theorem P227786769919913002.correct : P227786769919913002.Spec := by
  intro n
  simp only [A280435, Nat.add_sub_cancel]

end A280435

/-! ## A280435.P10385415483815107853

`A280440(∑[n+2]+4)`
-/

namespace A280435.P10385415483815107853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280440 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A280435.P10385415483815107853

namespace A280435

/-- `A280440(∑[n+2]+4)` -/
def P10385415483815107853.Spec : Prop :=
  ∀ n, P10385415483815107853.a n = A280435 (n + 1)

end A280435

/-! ## A280435.P12994027359696887646

`or(char[2], A280440(A167614(n+1)))`
-/

namespace A280435.P12994027359696887646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A280440 (A167614 (n + 1)).toNat)

end

end A280435.P12994027359696887646

namespace A280435

/-- `or(char[2], A280440(A167614(n+1)))` -/
def P12994027359696887646.Spec : Prop :=
  ∀ n, P12994027359696887646.a n = A280435 (n + 1)

end A280435

/-! ## A280435.P16891733957332152197

`or(char[2], A280440(A046691(n)+7))`
-/

namespace A280435.P16891733957332152197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A280440 (A046691 n + 7).toNat)

end

end A280435.P16891733957332152197

namespace A280435

/-- `or(char[2], A280440(A046691(n)+7))` -/
def P16891733957332152197.Spec : Prop :=
  ∀ n, P16891733957332152197.a n = A280435 (n + 1)

end A280435

/-! ## A280435.P10966779551005304880

`A280440(A167614(n+1))+A185284(n)`
-/

namespace A280435.P10966779551005304880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280440 (A167614 (n + 1)).toNat + A185284 n

end

end A280435.P10966779551005304880

namespace A280435

/-- `A280440(A167614(n+1))+A185284(n)` -/
def P10966779551005304880.Spec : Prop :=
  ∀ n, P10966779551005304880.a n = A280435 (n + 1)

end A280435

/-!
# A280436: Number of nX4 0..1 arrays with no element equal to more than one of its horizontal and vertical neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A280436, the canonical program `A280436.P1325952450512008200` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280436 has offset 1).

The definition of A280436 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280436.P1325952450512008200

`4*a(n-1)-4*a(n-2)-2*a(n-3)+4*a(n-4)-a(n-6)` with `a(0)=2, a(1)=20, a(2)=42, a(3)=80, a(4)=138, a(5)=232, a(6)=386`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A280436

/-- `4*a(n-1)-4*a(n-2)-2*a(n-3)+4*a(n-4)-a(n-6)` -/
def P1325952450512008200.Spec : Prop :=
  ∀ n, P1325952450512008200.a n = A280436 (n + 1)

theorem P1325952450512008200.correct : P1325952450512008200.Spec := by
  intro n
  simp only [A280436, Nat.add_sub_cancel]

end A280436

/-! ## A280436.P6616164746214028873

`A280440(∑[n+3]+7)`
-/

namespace A280436.P6616164746214028873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280440 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A280436.P6616164746214028873

namespace A280436

/-- `A280440(∑[n+3]+7)` -/
def P6616164746214028873.Spec : Prop :=
  ∀ n, P6616164746214028873.a n = A280436 (n + 1)

end A280436

/-! ## A280436.P14471670593514242825

`lcm(2, A280440(A055999(n)+10))`
-/

namespace A280436.P14471670593514242825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A280440 (A055999 n + 10).toNat)

end

end A280436.P14471670593514242825

namespace A280436

/-- `lcm(2, A280440(A055999(n)+10))` -/
def P14471670593514242825.Spec : Prop :=
  ∀ n, (P14471670593514242825.a n : ℤ) = A280436 (n + 1)

end A280436

/-! ## A280436.P11270844449568489040

`A007318(C(n, 2))*A280440(A055999(n)+10)`
-/

namespace A280436.P11270844449568489040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A280440 (A055999 n + 10).toNat

end

end A280436.P11270844449568489040

namespace A280436

/-- `A007318(C(n, 2))*A280440(A055999(n)+10)` -/
def P11270844449568489040.Spec : Prop :=
  ∀ n, P11270844449568489040.a n = A280436 (n + 1)

end A280436

/-! ## A280436.P10724926405764199575

`A007318(C(2, n))+A280440(A055999(n)+10)-1`
-/

namespace A280436.P10724926405764199575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) + (A280440 (A055999 n + 10).toNat - 1)

end

end A280436.P10724926405764199575

namespace A280436

/-- `A007318(C(2, n))+A280440(A055999(n)+10)-1` -/
def P10724926405764199575.Spec : Prop :=
  ∀ n, P10724926405764199575.a n = A280436 (n + 1)

end A280436

/-!
# A280437: Number of n X 5 0..1 arrays with no element equal to more than one of its horizontal and vertical neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A280437, the canonical program `A280437.P12152829356020761336` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280437 has offset 1).

The definition of A280437 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280437.P12152829356020761336

`4*a(n-1)-4*a(n-2)-2*a(n-3)+4*a(n-4)-a(n-6)` with `a(0)=5, a(1)=38, a(2)=77, a(3)=138, a(4)=225, a(5)=360, a(6)=574`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A280437

/-- `4*a(n-1)-4*a(n-2)-2*a(n-3)+4*a(n-4)-a(n-6)` -/
def P12152829356020761336.Spec : Prop :=
  ∀ n, P12152829356020761336.a n = A280437 (n + 1)

theorem P12152829356020761336.correct : P12152829356020761336.Spec := by
  intro n
  simp only [A280437, Nat.add_sub_cancel]

end A280437

/-! ## A280437.P14784363220426825188

`A280440(A155212(n)+13)`
-/

namespace A280437.P14784363220426825188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280440 (A155212 n + 13).toNat

end

end A280437.P14784363220426825188

namespace A280437

/-- `A280440(A155212(n)+13)` -/
def P14784363220426825188.Spec : Prop :=
  ∀ n, P14784363220426825188.a n = A280437 (n + 1)

end A280437

/-! ## A280437.P8973859635533800334

`A280440(A056000(n)+15)`
-/

namespace A280437.P8973859635533800334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280440 (A056000 n + 15).toNat

end

end A280437.P8973859635533800334

namespace A280437

/-- `A280440(A056000(n)+15)` -/
def P8973859635533800334.Spec : Prop :=
  ∀ n, P8973859635533800334.a n = A280437 (n + 1)

end A280437

/-! ## A280437.P6966502032985475027

`A280440(A167614(n+3)+2)`
-/

namespace A280437.P6966502032985475027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280440 (A167614 (n + 3) + 2).toNat

end

end A280437.P6966502032985475027

namespace A280437

/-- `A280440(A167614(n+3)+2)` -/
def P6966502032985475027.Spec : Prop :=
  ∀ n, P6966502032985475027.a n = A280437 (n + 1)

end A280437

/-! ## A280437.P14052516144087825018

`A280440(A133263(n+4)+3)`
-/

namespace A280437.P14052516144087825018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280440 (A133263 (n + 4) + 3).toNat

end

end A280437.P14052516144087825018

namespace A280437

/-- `A280440(A133263(n+4)+3)` -/
def P14052516144087825018.Spec : Prop :=
  ∀ n, P14052516144087825018.a n = A280437 (n + 1)

end A280437

/-!
# A280438: Number of n X 6 0..1 arrays with no element equal to more than one of its horizontal and vertical neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A280438, the canonical program `A280438.P3183054787145534470` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280438 has offset 1).

The definition of A280438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280438.P3183054787145534470

`4*a(n-1)-4*a(n-2)-2*a(n-3)+4*a(n-4)-a(n-6)` with `a(0)=10, a(1)=68, a(2)=136, a(3)=232, a(4)=360, a(5)=548, a(6)=834`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A280438

/-- `4*a(n-1)-4*a(n-2)-2*a(n-3)+4*a(n-4)-a(n-6)` -/
def P3183054787145534470.Spec : Prop :=
  ∀ n, P3183054787145534470.a n = A280438 (n + 1)

theorem P3183054787145534470.correct : P3183054787145534470.Spec := by
  intro n
  simp only [A280438, Nat.add_sub_cancel]

end A280438

/-! ## A280438.P5030961342600500369

`A280440(A056115(n)+21)`
-/

namespace A280438.P5030961342600500369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280440 (A056115 n + 21).toNat

end

end A280438.P5030961342600500369

namespace A280438

/-- `A280440(A056115(n)+21)` -/
def P5030961342600500369.Spec : Prop :=
  ∀ n, P5030961342600500369.a n = A280438 (n + 1)

end A280438

/-! ## A280438.P8163945548320651898

`A280440(Δ[A264443(n)]+10)`
-/

namespace A280438.P8163945548320651898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280440 (f1 (n + 1) - f1 n + 10).toNat

end

end A280438.P8163945548320651898

namespace A280438

/-- `A280440(Δ[A264443(n)]+10)` -/
def P8163945548320651898.Spec : Prop :=
  ∀ n, P8163945548320651898.a n = A280438 (n + 1)

end A280438

/-! ## A280438.P7898400372112224304

`A280440(A167614(n+4)+3)`
-/

namespace A280438.P7898400372112224304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280440 (A167614 (n + 4) + 3).toNat

end

end A280438.P7898400372112224304

namespace A280438

/-- `A280440(A167614(n+4)+3)` -/
def P7898400372112224304.Spec : Prop :=
  ∀ n, P7898400372112224304.a n = A280438 (n + 1)

end A280438

/-! ## A280438.P4958802940146228767

`A280440(A000124(n+5)+5)`
-/

namespace A280438.P4958802940146228767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280440 (A000124 (n + 5) + 5).toNat

end

end A280438.P4958802940146228767

namespace A280438

/-- `A280440(A000124(n+5)+5)` -/
def P4958802940146228767.Spec : Prop :=
  ∀ n, P4958802940146228767.a n = A280438 (n + 1)

end A280438

/-!
# A280439: Number of n X 7 0..1 arrays with no element equal to more than one of its horizontal and vertical neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A280439, there is no canonical definition to state claims against.
-/

/-! ## A280439.P3162236583973779418

`A280440(A056119(n)+28)`
-/

namespace A280439.P3162236583973779418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280440 (A056119 n + 28).toNat

end

end A280439.P3162236583973779418

/-! ## A280439.P5596289379304908904

`A280440(A167499(n+5)+2)`
-/

namespace A280439.P5596289379304908904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280440 (A167499 (n + 5) + 2).toNat

end

end A280439.P5596289379304908904

/-! ## A280439.P17109622936716646942

`A280440(A000124(n+6)+6)`
-/

namespace A280439.P17109622936716646942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280440 (A000124 (n + 6) + 6).toNat

end

end A280439.P17109622936716646942

/-! ## A280439.P5226768459065800799

`A280440(A000217(n+6)+7)`
-/

namespace A280439.P5226768459065800799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280440 (A000217 (n + 6) + 7).toNat

end

end A280439.P5226768459065800799

/-! ## A280439.P16423947694062992964

`A280440(A022856(n+10)+5)`
-/

namespace A280439.P16423947694062992964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280440 (A022856 (n + 10) + 5).toNat

end

end A280439.P16423947694062992964

/-!
# A280442: Numerators of coefficients in the Taylor series expansion of Sum_{n>=0} exp((-1)^n*euler(2*n)*x^n/(2*n)).

The programs for A280442, there is no canonical definition to state claims against.
-/

/-! ## A280442.P14151552852520652664

`A223067(n)*A280443(n)`
-/

namespace A280442.P14151552852520652664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223067 n * A280443 n

end

end A280442.P14151552852520652664

/-! ## A280442.P13766781953375985026

`A051699(A002182(2*n+3))*A223067(n)`
-/

namespace A280442.P13766781953375985026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A002182 (2 * n + 3)).toNat * A223067 n

end

end A280442.P13766781953375985026

/-! ## A280442.P8373657911719236817

`A223067(n)*A302776(A057625(n+1))`
-/

namespace A280442.P8373657911719236817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223067 n * A302776 (A057625 (n + 1)).toNat

end

end A280442.P8373657911719236817

/-!
# A280444: Least positive integer m such that n - p(m) = x*(3x-1)/2 + y*(3y+1)/2 for some nonnegative integers x and y, or 0 if no such m exists, where p(.) is the partition function given by A000041.

The programs for A280444, there is no canonical definition to state claims against.
-/

/-! ## A280444.P55829993545197654

`gcd(A194066(n+1), A280016(n+7))`
-/

namespace A280444.P55829993545197654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A194066 (n + 1)) (A280016 (n + 7))

end

end A280444.P55829993545197654

/-! ## A280444.P1033232374782207669

`gcd(A001222(A119104(n+1)), A291029(n))`
-/

namespace A280444.P1033232374782207669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (A119104 (n + 1)).toNat) (A291029 n)

end

end A280444.P1033232374782207669

/-! ## A280444.P13449007739432904054

`gcd(A288853(2*n+1)+2, A006218(A082482(n+1)))`
-/

namespace A280444.P13449007739432904054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A288853 (2 * n + 1) + 2) (A006218 (A082482 (n + 1)).toNat)

end

end A280444.P13449007739432904054

/-! ## A280444.P17940092268172790148

`gcd(A078165(A008965(n+1)), A216763(n))`
-/

namespace A280444.P17940092268172790148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A078165 (A008965 (n + 1)).toNat) (A216763 n)

end

end A280444.P17940092268172790148

/-! ## A280444.P10836193483709415809

`A212180(A002260(n+1)*A032258(n+1))`
-/

namespace A280444.P10836193483709415809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212180 (A002260 (n + 1) * A032258 (n + 1)).toNat

end

end A280444.P10836193483709415809

/-!
# A280449: Numbers k such that (2*10^k - 71)/3 is prime.

The programs for A280449, there is no canonical definition to state claims against.
-/

/-! ## A280449.P18002129910944344090

`A119605(A007601(n+2))`
-/

namespace A280449.P18002129910944344090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119605 (A007601 (n + 2)).toNat

end

end A280449.P18002129910944344090

/-! ## A280449.P6903495397199469493

`record[A349339(A294775(n))+1]`
-/

namespace A280449.P6903495397199469493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349339 (A294775 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280449.P6903495397199469493

/-! ## A280449.P17350004407647839763

`A119605(A000792(n+1)+1)`
-/

namespace A280449.P17350004407647839763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119605 (A000792 (n + 1) + 1).toNat

end

end A280449.P17350004407647839763

/-! ## A280449.P7076341567935449913

`A151798(n)+A003056(A124481(n+1))`
-/

namespace A280449.P7076341567935449913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151798 n + A003056 (A124481 (n + 1)).toNat

end

end A280449.P7076341567935449913

/-! ## A280449.P4703831164600495194

`A341140(A007562(n+1)+A004273(n+4))`
-/

namespace A280449.P4703831164600495194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341140 (A007562 (n + 1) + A004273 (n + 4)).toNat

end

end A280449.P4703831164600495194

/-!
# A280450: Smallest k > 2n+1 such that phi(k) = phi(2n+1).

The programs for A280450, there is no canonical definition to state claims against.
-/

/-! ## A280450.P18101588965922655431

`A066659(2*n+3)`
-/

namespace A280450.P18101588965922655431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066659 (2 * n + 3)

end

end A280450.P18101588965922655431

/-! ## A280450.P12064082011904777819

`A262599(2*n+3)`
-/

namespace A280450.P12064082011904777819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262599 (2 * n + 3)

end

end A280450.P12064082011904777819

/-! ## A280450.P11461753352412117985

`A032447(A064275(2*n+3)+1)`
-/

namespace A280450.P11461753352412117985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032447 (A064275 (2 * n + 3) + 1).toNat

end

end A280450.P11461753352412117985

/-! ## A280450.P15712961842691772547

`A028310(A066659(n+3+n))`
-/

namespace A280450.P15712961842691772547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A066659 (n + 3 + n)).toNat

end

end A280450.P15712961842691772547

/-! ## A280450.P2173807350593407805

`A028310(A262599(Δ[(n+1)²]))`
-/

namespace A280450.P2173807350593407805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A262599 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A280450.P2173807350593407805

/-! ## A280450.P7257670250353258646

`A262603(A262599(A262599(n+3+n)))`
-/

namespace A280450.P7257670250353258646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262603 (A262599 (A262599 (n + 3 + n)).toNat).toNat

end

end A280450.P7257670250353258646

/-!
# A280451: G.f.: Product_{k>=1, j>=1} (1+x^(j*k^2)).

The programs for A280451, there is no canonical definition to state claims against.
-/

/-! ## A280451.P17229399053170342013

`A280949(n)-A253513(A232623(n))`
-/

namespace A280451.P17229399053170342013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280949 n - A253513 (A232623 n).toNat

end

end A280451.P17229399053170342013

/-! ## A280451.P6219636177754248307

`A107236(n)+A035562(A187829(n+1))`
-/

namespace A280451.P6219636177754248307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107236 n + A035562 (A187829 (n + 1)).toNat

end

end A280451.P6219636177754248307

/-! ## A280451.P9347423450423584374

`A066806(n)-A026813(A187829(n+1))`
-/

namespace A280451.P9347423450423584374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066806 n - A026813 (A187829 (n + 1)).toNat

end

end A280451.P9347423450423584374

/-!
# A280454: Expansion of Product_{k>=0} (1 + x^(5*k+1)).

The programs for A280454, there is no canonical definition to state claims against.
-/

/-! ## A280454.P13553027647481936877

`gcd(A000122(A141126(n)), A284314(n))`
-/

namespace A280454.P13553027647481936877
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000122 (A141126 n).toNat) (A284314 n)

end

end A280454.P13553027647481936877

/-! ## A280454.P2903007399626025138

`abs(A284314(n)%A194368(n+1))`
-/

namespace A280454.P2903007399626025138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A284314 n) (A194368 (n + 1))|

end

end A280454.P2903007399626025138

/-! ## A280454.P1223213497338222224

`lcm(A001065(A142191(n+1)), A284314(n))`
-/

namespace A280454.P1223213497338222224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001065 (A142191 (n + 1)).toNat) (A284314 n)

end

end A280454.P1223213497338222224

/-! ## A280454.P9965120312422883248

`abs(A284314(n)/A053632(A194436(n+1)))`
-/

namespace A280454.P9965120312422883248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A284314 n : ℚ) / (A053632 (A194436 (n + 1)).toNat : ℚ)|

end

end A280454.P9965120312422883248

/-! ## A280454.P2459392310294088400

`abs(A284314(n))*A053632(A194436(n+2))`
-/

namespace A280454.P2459392310294088400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A284314 n| * A053632 (A194436 (n + 2)).toNat

end

end A280454.P2459392310294088400

/-! ## A280454.P4867065932336961175

`gcd(A284314(n), A339086(n))`
-/

namespace A280454.P4867065932336961175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A284314 n) (A339086 n)

end

end A280454.P4867065932336961175

/-! ## A280454.P11157852963958131411

`A001222(A000079(abs(A284314(n))))`
-/

namespace A280454.P11157852963958131411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000079 |A284314 n|.toNat).toNat

end

end A280454.P11157852963958131411

/-!
# A280456: Expansion of Product_{k>=0} (1 + x^(6*k+1)).

The programs for A280456, there is no canonical definition to state claims against.
-/

/-! ## A280456.P12315059611940031357

`abs(A284585(n))`
-/

namespace A280456.P12315059611940031357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A284585 n|

end

end A280456.P12315059611940031357

/-! ## A280456.P4432219193998294658

`A033999(n)*A284585(n)`
-/

namespace A280456.P4432219193998294658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A284585 n

end

end A280456.P4432219193998294658

/-! ## A280456.P14699280518377874139

`gcd(A000038(n), A284585(n))`
-/

namespace A280456.P14699280518377874139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A284585 n)

end

end A280456.P14699280518377874139

/-! ## A280456.P12005991431573974188

`lcm(A008836(n+1), A284585(n))`
-/

namespace A280456.P12005991431573974188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A284585 n)

end

end A280456.P12005991431573974188

/-! ## A280456.P15045221917210118176

`A284585(1-A109613(n)+n)*A284585(n)`
-/

namespace A280456.P15045221917210118176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284585 (1 - A109613 n + (n : ℤ)).toNat * A284585 n

end

end A280456.P15045221917210118176

/-! ## A280456.P7948676822126169307

`A284585(n)/A284585(A109613(n+1)-(n+1))`
-/

namespace A280456.P7948676822126169307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284585 n : ℚ) / (A284585 (A109613 (n + 1) - (n + 1 : ℤ)).toNat : ℚ)

end

end A280456.P7948676822126169307

/-! ## A280456.P13063237421686964330

`A056926(A284585(n)²)`
-/

namespace A280456.P13063237421686964330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A284585 n ^ 2).toNat

end

end A280456.P13063237421686964330

/-!
# A280457: Expansion of Product_{k>=0} (1 + x^(7*k+1)).

The programs for A280457, there is no canonical definition to state claims against.
-/

/-! ## A280457.P3282338442493365869

`abs(A284499(n)%A272607(n+1))`
-/

namespace A280457.P3282338442493365869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A284499 n) (A272607 (n + 1))|

end

end A280457.P3282338442493365869

/-! ## A280457.P17505611349034346881

`gcd(A000038(A152998(n)), A284499(n))`
-/

namespace A280457.P17505611349034346881
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (A152998 n).toNat) (A284499 n)

end

end A280457.P17505611349034346881

/-! ## A280457.P126364598829751889

`lcm(A268354(A133263(n)), A284499(n))`
-/

namespace A280457.P126364598829751889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A268354 (A133263 n).toNat) (A284499 n)

end

end A280457.P126364598829751889

/-! ## A280457.P12640113409148546935

`abs(1-(A268354(A133263(n+2))-A284499(n)))`
-/

namespace A280457.P12640113409148546935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A268354 (A133263 (n + 2)).toNat - A284499 n)|

end

end A280457.P12640113409148546935

/-! ## A280457.P14531462084832213749

`abs(A284499(n))%A186882(n+1)`
-/

namespace A280457.P14531462084832213749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A284499 n| (A186882 (n + 1))

end

end A280457.P14531462084832213749

/-! ## A280457.P13149503504126807529

`sqrt(A284499(n)²%A126105(n+1))`
-/

namespace A280457.P13149503504126807529
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.tmod (A284499 n ^ 2) (A126105 (n + 1)) : ℝ)

end

end A280457.P13149503504126807529

/-! ## A280457.P10464677715466195474

`A118759(abs(A284499(n)))`
-/

namespace A280457.P10464677715466195474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 |A284499 n|.toNat

end

end A280457.P10464677715466195474

/-! ## A280457.P7957078886385173338

`A000194(A284499(n)²)`
-/

namespace A280457.P7957078886385173338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A284499 n ^ 2).toNat

end

end A280457.P7957078886385173338

/-! ## A280457.P1361387985234019232

`A000196(A284499(n)²)`
-/

namespace A280457.P1361387985234019232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A284499 n ^ 2).toNat

end

end A280457.P1361387985234019232

/-! ## A280457.P6434721165770335117

`A037213(A284499(n)²)`
-/

namespace A280457.P6434721165770335117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A284499 n ^ 2).toNat

end

end A280457.P6434721165770335117

/-! ## A280457.P6603408407582703909

`A038690(A284499(n)²)`
-/

namespace A280457.P6603408407582703909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038690 (A284499 n ^ 2).toNat

end

end A280457.P6603408407582703909

/-! ## A280457.P17295027722327476270

`A178786(A284499(n)²)`
-/

namespace A280457.P17295027722327476270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178786 (A284499 n ^ 2).toNat

end

end A280457.P17295027722327476270

/-! ## A280457.P14492272044910743957

`A000196(A284499(n)*A284499(n))`
-/

namespace A280457.P14492272044910743957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A284499 n * A284499 n).toNat

end

end A280457.P14492272044910743957

/-!
# A280458: Partial products of A023896.

The programs for A280458, there is no canonical definition to state claims against.
-/

/-! ## A280458.P11552598868312186585

`∏[A023896(n+1)]`
-/

namespace A280458.P11552598868312186585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280458.P11552598868312186585

/-! ## A280458.P4478167805101930636

`∏[A388286((n+1)²)]`
-/

namespace A280458.P4478167805101930636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388286 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280458.P4478167805101930636

/-! ## A280458.P3091303572552000455

`∏[A308477(∑[n+2])]`
-/

namespace A280458.P3091303572552000455
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308477 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280458.P3091303572552000455

/-! ## A280458.P12959384071769851260

`2*∏[A000010((n+1)²)/2]`
-/

namespace A280458.P12959384071769851260
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 ((n + 1) ^ 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A280458.P12959384071769851260

/-! ## A280458.P1647710377175876130

`a(n-1)*A023022((n+1)²)` with `a(0)=1`
-/

namespace A280458.P1647710377175876130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A023022 ((n + 1) ^ 2)

end

end A280458.P1647710377175876130

/-!
# A280459: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 267", based on the 5-celled von Neumann neighborhood.

The programs for A280459, there is no canonical definition to state claims against.
-/

/-! ## A280459.P5689235318087275467

`A007088(A280461(n))`
-/

namespace A280459.P5689235318087275467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A280461 n).toNat

end

end A280459.P5689235318087275467

/-! ## A280459.P13311737955728747573

`A185544(2*A280461(n))`
-/

namespace A280459.P13311737955728747573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A280461 n).toNat

end

end A280459.P13311737955728747573

/-! ## A280459.P11592575083103716292

`A007088(or(A000120(n!), A281178(n)))`
-/

namespace A280459.P11592575083103716292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A000120 (Nat.factorial n)) (A281178 n)).toNat

end

end A280459.P11592575083103716292

/-!
# A280460: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 267", based on the 5-celled von Neumann neighborhood.

The programs for A280460, there is no canonical definition to state claims against.
-/

/-! ## A280460.P1546030862370030604

`A007088(A280462(n))`
-/

namespace A280460.P1546030862370030604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A280462 n).toNat

end

end A280460.P1546030862370030604

/-! ## A280460.P6049517897929755177

`A185544(2*A280462(n))`
-/

namespace A280460.P6049517897929755177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A280462 n).toNat

end

end A280460.P6049517897929755177

/-! ## A280460.P16684427941210866653

`A281177(A004868(n+1))`
-/

namespace A280460.P16684427941210866653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281177 (A004868 (n + 1)).toNat

end

end A280460.P16684427941210866653

/-!
# A280461: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 267", based on the 5-celled von Neumann neighborhood.

The programs for A280461, there is no canonical definition to state claims against.
-/

/-! ## A280461.P8478047226804001378

`or(A000120(n!), A281178(n))`
-/

namespace A280461.P8478047226804001378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000120 (Nat.factorial n)) (A281178 n)

end

end A280461.P8478047226804001378

/-! ## A280461.P4290765166957231508

`A281178(n)+A184955(2*n+1)`
-/

namespace A280461.P4290765166957231508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281178 n + A184955 (2 * n + 1)

end

end A280461.P4290765166957231508

/-! ## A280461.P3177859543770417459

`A368413(A186424(n))+A281178(n)`
-/

namespace A280461.P3177859543770417459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368413 (A186424 n).toNat + A281178 n

end

end A280461.P3177859543770417459

/-! ## A280461.P17108659075294712793

`or(A001511(A000142(n)), A281178(n))`
-/

namespace A280461.P17108659075294712793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001511 (A000142 n).toNat) (A281178 n)

end

end A280461.P17108659075294712793

/-!
# A280462: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 267", based on the 5-celled von Neumann neighborhood.

The programs for A280462, there is no canonical definition to state claims against.
-/

/-! ## A280462.P12737811774232970754

`or(A018795(A018799(n+1)), A281179(n))`
-/

namespace A280462.P12737811774232970754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A018795 (A018799 (n + 1)).toNat) (A281179 n)

end

end A280462.P12737811774232970754

/-!
# A280463: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 270", based on the 5-celled von Neumann neighborhood.

The programs for A280463, there is no canonical definition to state claims against.
-/

/-! ## A280463.P15654764276891416755

`A007088(A280465(n))`
-/

namespace A280463.P15654764276891416755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A280465 n).toNat

end

end A280463.P15654764276891416755

/-! ## A280463.P7256293361203733137

`A256078(A283081(n+1))`
-/

namespace A280463.P7256293361203733137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256078 (A283081 (n + 1)).toNat

end

end A280463.P7256293361203733137

/-! ## A280463.P16002577232468914304

`A185544(2*A280465(n))`
-/

namespace A280463.P16002577232468914304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A280465 n).toNat

end

end A280463.P16002577232468914304

/-! ## A280463.P2543068116380573868

`A185544(A280465(n)+A280465(n))`
-/

namespace A280463.P2543068116380573868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A280465 n + A280465 n).toNat

end

end A280463.P2543068116380573868

/-! ## A280463.P1037081737678824334

`A281756(n)^a(floor(n/10))` with `a(0)=1`
-/

namespace A280463.P1037081737678824334
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (A281756 n : ℝ) ^ (a ⌊(n : ℚ) / 10⌋.toNat)

end

end A280463.P1037081737678824334

/-!
# A280464: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 270", based on the 5-celled von Neumann neighborhood.

The programs for A280464, there is no canonical definition to state claims against.
-/

/-! ## A280464.P18203289760183932464

`A007088(A280467(n))`
-/

namespace A280464.P18203289760183932464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A280467 n).toNat

end

end A280464.P18203289760183932464

/-! ## A280464.P4015205474197988990

`A305989(A280465(n))`
-/

namespace A280464.P4015205474197988990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A280465 n).toNat

end

end A280464.P4015205474197988990

/-! ## A280464.P1011004742297986

`A185544(2*A280467(n))`
-/

namespace A280464.P1011004742297986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A280467 n).toNat

end

end A280464.P1011004742297986

/-! ## A280464.P14354394009205566555

`A185544(lcm(2, A280467(n)))`
-/

namespace A280464.P14354394009205566555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A280467 n))

end

end A280464.P14354394009205566555

/-! ## A280464.P4791755449564354682

`A185544(A280467(n)+A280467(n))`
-/

namespace A280464.P4791755449564354682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A280467 n + A280467 n).toNat

end

end A280464.P4791755449564354682

/-!
# A280465: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 270", based on the 5-celled von Neumann neighborhood.

The programs for A280465, there is no canonical definition to state claims against.
-/

/-! ## A280465.P2656244200859663092

`A035327(A283081(n+1))`
-/

namespace A280465.P2656244200859663092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A283081 (n + 1)).toNat

end

end A280465.P2656244200859663092

/-! ## A280465.P3590650720844207594

`A281758(n)+A058343(A191438(n+1))`
-/

namespace A280465.P3590650720844207594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281758 n + A058343 (A191438 (n + 1)).toNat

end

end A280465.P3590650720844207594

/-! ## A280465.P11855865700831829278

`A281758(A046469(n))`
-/

namespace A280465.P11855865700831829278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281758 (A046469 n).toNat

end

end A280465.P11855865700831829278

/-! ## A280465.P14909526695304180295

`A065668(A281758(n))`
-/

namespace A280465.P14909526695304180295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065668 (A281758 n).toNat

end

end A280465.P14909526695304180295

/-! ## A280465.P1640607456164961622

`A281758(A087036(n))`
-/

namespace A280465.P1640607456164961622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281758 (A087036 n).toNat

end

end A280465.P1640607456164961622

/-!
# A280466: Number of distinct length-n blocks (a.k.a. subword complexity) of Möbius function mu(n) (A008683).

The programs for A280466, there is no canonical definition to state claims against.
-/

/-! ## A280466.P15300771630567555761

`or(3^(n%2), A062108(∑[ceil((sqrt(3)+2)^n)]))`
-/

namespace A280466.P15300771630567555761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sqrt (3 : ℝ) + 2) ^ n⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (3 ^ (n % 2) : ℤ) (A062108 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A280466.P15300771630567555761

/-!
# A280467: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 270", based on the 5-celled von Neumann neighborhood.

The programs for A280467, there is no canonical definition to state claims against.
-/

/-! ## A280467.P18079759382340090786

`A325401(A280465(n))`
-/

namespace A280467.P18079759382340090786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A280465 n).toNat

end

end A280467.P18079759382340090786

/-! ## A280467.P4774486594000710825

`A000079(n+1)-A110654(A283082(n+1))`
-/

namespace A280467.P4774486594000710825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A110654 (A283082 (n + 1)).toNat

end

end A280467.P4774486594000710825

/-! ## A280467.P4645603936095957982

`A030101(lcm(2, A280465(n)))`
-/

namespace A280467.P4645603936095957982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.lcm 2 (A280465 n))

end

end A280467.P4645603936095957982

/-! ## A280467.P5876792719150156255

`A030101(A280465(n)+A000007(n))`
-/

namespace A280467.P5876792719150156255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A280465 n + A000007 n).toNat

end

end A280467.P5876792719150156255

/-! ## A280467.P2903754953473440677

`A030101(A280465(n)+A058343(n))`
-/

namespace A280467.P2903754953473440677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A280465 n + A058343 n).toNat

end

end A280467.P2903754953473440677

/-!
# A280469: Numbers n such that n-1 and n+1 are squarefree and have the same number of prime factors.

The programs for A280469, the canonical program `A280469.P12523109073399917992` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280469 has offset 1).

The definition of A280469 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6388 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280469.P2926426925735445376

`record[A007947(A279767(n+1))+1]`
-/

namespace A280469.P2926426925735445376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A279767 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280469.P2926426925735445376

namespace A280469

/-- `record[A007947(A279767(n+1))+1]` -/
def P2926426925735445376.Spec : Prop :=
  ∀ n, P2926426925735445376.a n = A280469 (n + 1)

end A280469

/-! ## A280469.P12523109073399917992

`filter[A067888(n+1), A379971(#)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A280469

/-- `filter[A067888(n+1), A379971(#)]` -/
def P12523109073399917992.Spec : Prop :=
  ∀ n, P12523109073399917992.a n = A280469 (n + 1)

theorem P12523109073399917992.correct : P12523109073399917992.Spec := by
  intro n
  simp only [A280469, Nat.add_sub_cancel]

end A280469

/-! ## A280469.P8421880163062918209

`filter[A074997(n+1), A379971(#)]`
-/

namespace A280469.P8421880163062918209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379971 (f1 j).toNat = 1) n)

end

end A280469.P8421880163062918209

namespace A280469

/-- `filter[A074997(n+1), A379971(#)]` -/
def P8421880163062918209.Spec : Prop :=
  ∀ n, P8421880163062918209.a n = A280469 (n + 1)

end A280469

/-! ## A280469.P10560053142268294175

`filter[A074998(n+1), A379971(#)]`
-/

namespace A280469.P10560053142268294175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379971 (f1 j).toNat = 1) n)

end

end A280469.P10560053142268294175

namespace A280469

/-- `filter[A074998(n+1), A379971(#)]` -/
def P10560053142268294175.Spec : Prop :=
  ∀ n, P10560053142268294175.a n = A280469 (n + 1)

end A280469

/-! ## A280469.P2587383836940619427

`filter[A280383(n+1), A379971(#)]`
-/

namespace A280469.P2587383836940619427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379971 (f1 j).toNat = 1) n)

end

end A280469.P2587383836940619427

namespace A280469

/-- `filter[A280383(n+1), A379971(#)]` -/
def P2587383836940619427.Spec : Prop :=
  ∀ n, P2587383836940619427.a n = A280469 (n + 1)

end A280469

/-! ## A280469.P13980567061499901511

`filter[A280382(n+1), A379971(#)]`
-/

namespace A280469.P13980567061499901511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379971 (f1 j).toNat = 1) n)

end

end A280469.P13980567061499901511

namespace A280469

/-- `filter[A280382(n+1), A379971(#)]` -/
def P13980567061499901511.Spec : Prop :=
  ∀ n, P13980567061499901511.a n = A280469 (n + 1)

end A280469

/-! ## A280469.P4695852141076359837

`filter[A275418(n+1), A379971(#)]`
-/

namespace A280469.P4695852141076359837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379971 (f1 j).toNat = 1) n)

end

end A280469.P4695852141076359837

namespace A280469

/-- `filter[A275418(n+1), A379971(#)]` -/
def P4695852141076359837.Spec : Prop :=
  ∀ n, P4695852141076359837.a n = A280469 (n + 1)

end A280469

/-! ## A280469.P9612731975586140077

`filter[A088070(n+1), A379971(#)]`
-/

namespace A280469.P9612731975586140077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379971 (f1 j).toNat = 1) n)

end

end A280469.P9612731975586140077

namespace A280469

/-- `filter[A088070(n+1), A379971(#)]` -/
def P9612731975586140077.Spec : Prop :=
  ∀ n, P9612731975586140077.a n = A280469 (n + 1)

end A280469

/-! ## A280469.P9364497877887695786

`∩[A005117(n+1), A279767(n+1)]+1`
-/

namespace A280469.P9364497877887695786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A280469.P9364497877887695786

namespace A280469

/-- `∩[A005117(n+1), A279767(n+1)]+1` -/
def P9364497877887695786.Spec : Prop :=
  ∀ n, (P9364497877887695786.a n : ℤ) = A280469 (n + 1)

end A280469

/-! ## A280469.P6055357544163120699

`record[A019555(A279767(C(n+1, n)))]+1`
-/

namespace A280469.P6055357544163120699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A279767 (Nat.choose (n + 1) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A280469.P6055357544163120699

namespace A280469

/-- `record[A019555(A279767(C(n+1, n)))]+1` -/
def P6055357544163120699.Spec : Prop :=
  ∀ n, P6055357544163120699.a n = A280469 (n + 1)

end A280469

/-! ## A280469.P10406627122807833846

`record[A019555(A279767(floor(n/2)+1))]+1`
-/

namespace A280469.P10406627122807833846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A279767 (⌊(n : ℚ) / 2⌋ + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A280469.P10406627122807833846

namespace A280469

/-- `record[A019555(A279767(floor(n/2)+1))]+1` -/
def P10406627122807833846.Spec : Prop :=
  ∀ n, P10406627122807833846.a n = A280469 (n + 1)

end A280469

/-! ## A280469.P15307263795716247426

`A014681(record[A007947(A279767(n+1))])`
-/

namespace A280469.P15307263795716247426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A279767 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A280469.P15307263795716247426

namespace A280469

/-- `A014681(record[A007947(A279767(n+1))])` -/
def P15307263795716247426.Spec : Prop :=
  ∀ n, P15307263795716247426.a n = A280469 (n + 1)

end A280469

/-! ## A280469.P8913929548830367698

`A014681(record[A019555(A279767(n+1))])`
-/

namespace A280469.P8913929548830367698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A279767 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A280469.P8913929548830367698

namespace A280469

/-- `A014681(record[A019555(A279767(n+1))])` -/
def P8913929548830367698.Spec : Prop :=
  ∀ n, P8913929548830367698.a n = A280469 (n + 1)

end A280469

/-! ## A280469.P16253085995954664137

`(record[A019555(A279767(n+1))]+1)%A000290(n+4)`
-/

namespace A280469.P16253085995954664137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A279767 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1) (A000290 (n + 4))

end

end A280469.P16253085995954664137

namespace A280469

/-- `(record[A019555(A279767(n+1))]+1)%A000290(n+4)` -/
def P16253085995954664137.Spec : Prop :=
  ∀ n, P16253085995954664137.a n = A280469 (n + 1)

end A280469

/-!
# A280470: Triangle A106534 with reversed rows.

The programs for A280470, there is no canonical definition to state claims against.
-/

/-! ## A280470.P246103048510013298

`A106534(∑[2*n]%comp[∑[n]])`
-/

namespace A280470.P246103048510013298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106534 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A280470.P246103048510013298

/-! ## A280470.P14863379589829831866

`A106534(∑[char[∑[n]]]²-(n+1))`
-/

namespace A280470.P14863379589829831866
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106534 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A280470.P14863379589829831866

/-! ## A280470.P15974466233201072902

`or(char[1], A106534(A061579(n)))`
-/

namespace A280470.P15974466233201072902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A106534 (A061579 n).toNat)

end

end A280470.P15974466233201072902

/-! ## A280470.P249799299818584640

`A106534(A061579(n))^A178334(n)`
-/

namespace A280470.P249799299818584640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106534 (A061579 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A280470.P249799299818584640

/-! ## A280470.P11816290460251570674

`char[A014682(n)]*A106534(A061579(n))`
-/

namespace A280470.P11816290460251570674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A106534 (A061579 n).toNat

end

end A280470.P11816290460251570674

/-! ## A280470.P16962935454786957272

`A106534(A061579(n))*A178334(n+1)`
-/

namespace A280470.P16962935454786957272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106534 (A061579 n).toNat * A178334 (n + 1)

end

end A280470.P16962935454786957272

/-! ## A280470.P13196716664565965347

`A106534(A061579(n))%A000032(n+2)`
-/

namespace A280470.P13196716664565965347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106534 (A061579 n).toNat) (A000032 (n + 2))

end

end A280470.P13196716664565965347

/-! ## A280470.P2920636005593901785

`A007318(C(2, n))*A106534(A061579(n))`
-/

namespace A280470.P2920636005593901785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A106534 (A061579 n).toNat

end

end A280470.P2920636005593901785

/-! ## A280470.P6381792945071354649

`A000108(C(n, 64))*A106534(A061579(n))`
-/

namespace A280470.P6381792945071354649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose n 64) * A106534 (A061579 n).toNat

end

end A280470.P6381792945071354649

/-! ## A280470.P8761677632971701558

`A106534(A061579(n))+A000010(n+3)%2`
-/

namespace A280470.P8761677632971701558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106534 (A061579 n).toNat + Int.tmod (A000010 (n + 3)) 2

end

end A280470.P8761677632971701558

/-!
# A280471: Solutions to the Gamow-Stern Elevator Problem, a(n) = ceiling((log_10(5))/(log_10(1+2/(n-2)))) for n >= 3.

The programs for A280471, there is no canonical definition to state claims against.
-/

/-! ## A280471.P16156133052949307816

`ceil(log(A249513(n+1)))`
-/

namespace A280471.P16156133052949307816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A249513 (n + 1) : ℝ)⌉

end

end A280471.P16156133052949307816

/-! ## A280471.P8401611709505311431

`A121900(A121282(A121830((n+2)²)))`
-/

namespace A280471.P8401611709505311431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (A121282 (A121830 ((n + 2) ^ 2)).toNat).toNat

end

end A280471.P8401611709505311431

/-! ## A280471.P10473922545650425236

`A204560(∑[A034099(n+1)])`
-/

namespace A280471.P10473922545650425236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204560 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A280471.P10473922545650425236

/-! ## A280471.P10413211530418591491

`A204551(A371129(n+1)+A062786(n+1))`
-/

namespace A280471.P10413211530418591491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204551 (A371129 (n + 1) + A062786 (n + 1)).toNat

end

end A280471.P10413211530418591491

/-! ## A280471.P11712823132066143497

`A074279(∑[∑[n+2]])`
-/

namespace A280471.P11712823132066143497
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074279 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A280471.P11712823132066143497

/-!
# A280474: Number of n X 2 0..2 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280474, there is no canonical definition to state claims against.
-/

/-! ## A280474.P15158160979206964996

`A279865(2*(n+1))`
-/

namespace A280474.P15158160979206964996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279865 (2 * (n + 1))

end

end A280474.P15158160979206964996

/-! ## A280474.P11791367553590137662

`record[A279865(A093178(n)+1)]`
-/

namespace A280474.P11791367553590137662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279865 (A093178 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280474.P11791367553590137662

/-! ## A280474.P4670831798913852741

`record[A279865(A004278(n+2))]`
-/

namespace A280474.P4670831798913852741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279865 (A004278 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280474.P4670831798913852741

/-! ## A280474.P10037609964942541495

`record[gcd(A035457(n), A279865(n+1))]`
-/

namespace A280474.P10037609964942541495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035457 n) (A279865 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280474.P10037609964942541495

/-! ## A280474.P15884140947746708021

`A117316(A096376(n+1))`
-/

namespace A280474.P15884140947746708021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117316 (A096376 (n + 1)).toNat

end

end A280474.P15884140947746708021

/-! ## A280474.P7065747327036211456

`A117316(A152950(2*(n+1))+2*n+1)`
-/

namespace A280474.P7065747327036211456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117316 (A152950 (2 * (n + 1)) + (2 * n + 1 : ℤ)).toNat

end

end A280474.P7065747327036211456

/-!
# A280475: Number of nX3 0..2 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280475, there is no canonical definition to state claims against.
-/

/-! ## A280475.P5032879082813040741

`A280480(∑[n+3]+1)`
-/

namespace A280475.P5032879082813040741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280480 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A280475.P5032879082813040741

/-! ## A280475.P6458757670311690798

`record[A280480(A198464(n+1))]`
-/

namespace A280475.P6458757670311690798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280480 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280475.P6458757670311690798

/-! ## A280475.P18350613749295305930

`record[A280480(n+1)%A000045(A130270(n+4))]`
-/

namespace A280475.P18350613749295305930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280480 (n + 1)) (A000045 (A130270 (n + 4)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280475.P18350613749295305930

/-!
# A280476: Number of n X 4 0..2 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280476, there is no canonical definition to state claims against.
-/

/-! ## A280476.P15448851719480807492

`A280480(∑[n+4]+3)`
-/

namespace A280476.P15448851719480807492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280480 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A280476.P15448851719480807492

/-!
# A280477: Number of nX5 0..2 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280477, there is no canonical definition to state claims against.
-/

/-! ## A280477.P9098075577224030534

`A280480(∑[n+5]+6)`
-/

namespace A280477.P9098075577224030534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280480 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A280477.P9098075577224030534

/-!
# A280478: Number of nX6 0..2 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280478, there is no canonical definition to state claims against.
-/

/-! ## A280478.P10975925210111106142

`A280480(A052905(n+3))`
-/

namespace A280478.P10975925210111106142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280480 (A052905 (n + 3)).toNat

end

end A280478.P10975925210111106142

/-! ## A280478.P790370852344157634

`A280480(A302537(n)+15)`
-/

namespace A280478.P790370852344157634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280480 (A302537 n + 15).toNat

end

end A280478.P790370852344157634

/-! ## A280478.P12331476146410851951

`A280480(A056119(n)+16)`
-/

namespace A280478.P12331476146410851951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280480 (A056119 n + 16).toNat

end

end A280478.P12331476146410851951

/-! ## A280478.P10884637209665564528

`A280480(eq[3, A219347(n)])`
-/

namespace A280478.P10884637209665564528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280480 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280478.P10884637209665564528

/-!
# A280479: Number of nX7 0..2 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280479, there is no canonical definition to state claims against.
-/

/-! ## A280479.P15823690543354453665

`A280480(A055999(n+4))`
-/

namespace A280479.P15823690543354453665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280480 (A055999 (n + 4)).toNat

end

end A280479.P15823690543354453665

/-! ## A280479.P16368717432200651440

`A280480(eq[4, A219347(n)])`
-/

namespace A280479.P16368717432200651440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280480 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280479.P16368717432200651440

/-! ## A280479.P8025101983947356429

`A280480(eq[5, A332954(n)])`
-/

namespace A280479.P8025101983947356429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280480 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280479.P8025101983947356429

/-!
# A280481: Number of 2 X n 0..2 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280481, there is no canonical definition to state claims against.
-/

/-! ## A280481.P12916470057303790586

`A280480(∑[n+1]+2)`
-/

namespace A280481.P12916470057303790586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280480 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A280481.P12916470057303790586

/-! ## A280481.P2206199237242157701

`record[A280480(A133263(∑{e}[n, #]))]`
-/

namespace A280481.P2206199237242157701
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280480 (A133263 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280481.P2206199237242157701

/-! ## A280481.P16266798137576674193

`record[A280480(A130270(n+1)+2)]`
-/

namespace A280481.P16266798137576674193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280480 (A130270 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280481.P16266798137576674193

/-! ## A280481.P16662812832997714052

`record[A280480(n+3)/A103364(n+1)]`
-/

namespace A280481.P16662812832997714052
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280480 (n + 3) : ℚ) / (A103364 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280481.P16662812832997714052

/-! ## A280481.P14957895803956772754

`A280480(A133263(n+1))%A022596(n)`
-/

namespace A280481.P14957895803956772754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280480 (A133263 (n + 1)).toNat) (A022596 n)

end

end A280481.P14957895803956772754

/-!
# A280482: Number of 3Xn 0..2 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280482, there is no canonical definition to state claims against.
-/

/-! ## A280482.P2925716440799654408

`A280480(∑[n+2]+4)`
-/

namespace A280482.P2925716440799654408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280480 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A280482.P2925716440799654408

/-! ## A280482.P562963679033450331

`record[A280480(A130270(n+1)+3)]`
-/

namespace A280482.P562963679033450331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280480 (A130270 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280482.P562963679033450331

/-! ## A280482.P10068473221028212890

`record[A010054(n)*A280480(n+3)]`
-/

namespace A280482.P10068473221028212890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A280480 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280482.P10068473221028212890

/-! ## A280482.P12780440426043642179

`lcm(abs(1-n)-n, A280480(A167614(n+1)))`
-/

namespace A280482.P12780440426043642179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (|1 - (n : ℤ)| - (n : ℤ)) (A280480 (A167614 (n + 1)).toNat)

end

end A280482.P12780440426043642179

/-! ## A280482.P11290659527628125284

`A280480(A167614(n+1))+A011737(n)`
-/

namespace A280482.P11290659527628125284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280480 (A167614 (n + 1)).toNat + A011737 n

end

end A280482.P11290659527628125284

/-!
# A280483: Number of 4Xn 0..2 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280483, there is no canonical definition to state claims against.
-/

/-! ## A280483.P8321306002488717395

`A280480(∑[n+3]+7)`
-/

namespace A280483.P8321306002488717395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280480 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A280483.P8321306002488717395

/-!
# A280484: Number of 5Xn 0..2 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280484, there is no canonical definition to state claims against.
-/

/-! ## A280484.P7164639276189169745

`A280480(A167499(n+3))`
-/

namespace A280484.P7164639276189169745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280480 (A167499 (n + 3)).toNat

end

end A280484.P7164639276189169745

/-! ## A280484.P4101881975702784972

`A280480(A155212(n)+13)`
-/

namespace A280484.P4101881975702784972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280480 (A155212 n + 13).toNat

end

end A280484.P4101881975702784972

/-! ## A280484.P11803015485675666535

`A280480(A056000(n)+15)`
-/

namespace A280484.P11803015485675666535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280480 (A056000 n + 15).toNat

end

end A280484.P11803015485675666535

/-! ## A280484.P9505577131108819920

`A280480(eq[7, A066657(n)])`
-/

namespace A280484.P9505577131108819920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280480 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280484.P9505577131108819920

/-! ## A280484.P11692778209820673318

`A280480(A000124(n+4)+4)`
-/

namespace A280484.P11692778209820673318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280480 (A000124 (n + 4) + 4).toNat

end

end A280484.P11692778209820673318

/-!
# A280485: Number of 6Xn 0..2 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280485, there is no canonical definition to state claims against.
-/

/-! ## A280485.P3807469937777852105

`A280480(C(2*n+7-n, 2)-n)`
-/

namespace A280485.P3807469937777852105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280480 (Nat.choose ((2 * n + 7 : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A280485.P3807469937777852105

/-! ## A280485.P13971919299777674172

`A280480(A056115(n)+21)`
-/

namespace A280485.P13971919299777674172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280480 (A056115 n + 21).toNat

end

end A280485.P13971919299777674172

/-! ## A280485.P4238318723373262200

`A280480(A167499(n+4)+1)`
-/

namespace A280485.P4238318723373262200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280480 (A167499 (n + 4) + 1).toNat

end

end A280485.P4238318723373262200

/-! ## A280485.P15708140918534584946

`A280480(A000124(n+5)+5)`
-/

namespace A280485.P15708140918534584946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280480 (A000124 (n + 5) + 5).toNat

end

end A280485.P15708140918534584946

/-! ## A280485.P2521440571912931592

`A280480(A000096(n+4)+7)`
-/

namespace A280485.P2521440571912931592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280480 (A000096 (n + 4) + 7).toNat

end

end A280485.P2521440571912931592

/-!
# A280486: G.f.: Product_{i>=1, j>=1, k>=1, l>=1} (1 + x^(i*j*k*l)).

The programs for A280486, there is no canonical definition to state claims against.
-/

/-! ## A280486.P16724307939107244256

`A353355(A030427(n+1)-1)`
-/

namespace A280486.P16724307939107244256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353355 (A030427 (n + 1) - 1).toNat

end

end A280486.P16724307939107244256

/-! ## A280486.P11663306604637260869

`A097163(n)-A344617(A030822(n+1))`
-/

namespace A280486.P11663306604637260869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097163 n - A344617 (A030822 (n + 1)).toNat

end

end A280486.P11663306604637260869

/-!
# A280487: G.f.: Product_{i>=1, j>=1, k>=1, l>=1} 1/(1 - x^(i*j*k*l)).

The programs for A280487, there is no canonical definition to state claims against.
-/

/-! ## A280487.P12687016535154389049

`A137469(A001970(n)-A004526(n))`
-/

namespace A280487.P12687016535154389049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137469 (A001970 n - A004526 n).toNat

end

end A280487.P12687016535154389049

/-! ## A280487.P10799046763181196120

`or(A301747(n), A341970(A038610(n+1)))`
-/

namespace A280487.P10799046763181196120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A301747 n) (A341970 (A038610 (n + 1)).toNat)

end

end A280487.P10799046763181196120

/-! ## A280487.P6474245170816375391

`A175019(A174958(n+2)*A175030(n+1))`
-/

namespace A280487.P6474245170816375391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175019 (A174958 (n + 2) * A175030 (n + 1)).toNat

end

end A280487.P6474245170816375391

/-!
# A280488: a(n) = n / A280489(n) = n / gcd(n,A241909(n)).

The programs for A280488, there is no canonical definition to state claims against.
-/

/-! ## A280488.P217450466827142979

`(n+1)/A280489(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A280488.P217450466827142979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A280489 (n + 1) : ℚ)

end

end A280488.P217450466827142979

/-! ## A280488.P15865443050390228503

`(n+1)/gcd(n+1, A241909(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A280488.P15865443050390228503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A241909 (n + 1)) : ℚ)

end

end A280488.P15865443050390228503

/-! ## A280488.P16849852221436475512

`lcm(A000027(n+1), A241909(n+1))/A241909(n+1)`
-/

namespace A280488.P16849852221436475512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000027 (n + 1)) (A241909 (n + 1)) : ℚ) / (A241909 (n + 1) : ℚ)

end

end A280488.P16849852221436475512

/-! ## A280488.P314234140036674766

`A219158(A280489(n+1)+∑[n])`
-/

namespace A280488.P314234140036674766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219158 (A280489 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A280488.P314234140036674766

/-! ## A280488.P2699921840118217227

`A054531(A280489(n+1)+∑[n])`
-/

namespace A280488.P2699921840118217227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A280489 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A280488.P2699921840118217227

/-! ## A280488.P17687661740600602987

`A126988(A280489(n+1)+∑[n])`
-/

namespace A280488.P17687661740600602987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A280489 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A280488.P17687661740600602987

/-! ## A280488.P16526350125122575270

`A010766(A280489(n+1)+A000217(n))`
-/

namespace A280488.P16526350125122575270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A280489 (n + 1) + A000217 n).toNat

end

end A280488.P16526350125122575270

/-!
# A280489: a(n) = gcd(n,A241909(n)).

The programs for A280489, there is no canonical definition to state claims against.
-/

/-! ## A280489.P212428245398843365

`(n+1)/A280488(n+1)`
-/

namespace A280489.P212428245398843365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A280488 (n + 1) : ℚ)

end

end A280489.P212428245398843365

/-! ## A280489.P12962646688585981352

`gcd(n+1, A241909(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A280489.P12962646688585981352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A241909 (n + 1))

end

end A280489.P12962646688585981352

/-! ## A280489.P10547869620486683958

`A219158(A280488(n+1)+A000217(n))`
-/

namespace A280489.P10547869620486683958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219158 (A280488 (n + 1) + A000217 n).toNat

end

end A280489.P10547869620486683958

/-! ## A280489.P3832976495209714711

`gcd(A131738(n), A279356(A249817(n+1)))`
-/

namespace A280489.P3832976495209714711
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131738 n) (A279356 (A249817 (n + 1)).toNat)

end

end A280489.P3832976495209714711

/-! ## A280489.P2798538443758129916

`gcd(A000027(n+1), A279356(A250247(n+1)))`
-/

namespace A280489.P2798538443758129916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A279356 (A250247 (n + 1)).toNat)

end

end A280489.P2798538443758129916

/-! ## A280489.P17037954066495547075

`A054531(A280488(n+1)+∑[n])`
-/

namespace A280489.P17037954066495547075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A280488 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A280489.P17037954066495547075

/-! ## A280489.P3299925189900823983

`A001222(root(A000225(n+1)+1, A280488(n+1)))`
-/

namespace A280489.P3299925189900823983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A000225 (n + 1) + 1 : ℝ) ^ (1 / (A280488 (n + 1) : ℝ)))).toNat

end

end A280489.P3299925189900823983

/-! ## A280489.P11308391569074668336

`gcd(A163511(A322993(n+1)), A255408(n+1))`
-/

namespace A280489.P11308391569074668336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A163511 (A322993 (n + 1)).toNat) (A255408 (n + 1))

end

end A280489.P11308391569074668336

/-!
# A280490: a(n) = n / A280491(n) = n / gcd(n,A122111(n)).

The programs for A280490, the canonical program `A280490.P16005457522464852937` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280490 has offset 1).

The definition of A280490 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A280490.P346371510493918845

`(n+1)/A280491(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A280490.P346371510493918845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A280491 (n + 1) : ℚ)

end

end A280490.P346371510493918845

namespace A280490

/-- `(n+1)/A280491(n+1)` -/
def P346371510493918845.Spec : Prop :=
  ∀ n, P346371510493918845.a n = (A280490 (n + 1) : ℚ)

end A280490

/-! ## A280490.P16005457522464852937

`(n+1)/gcd(n+1, A122111(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A280490

/-- `(n+1)/gcd(n+1, A122111(n+1))` -/
def P16005457522464852937.Spec : Prop :=
  ∀ n, P16005457522464852937.a n = (A280490 (n + 1) : ℚ)

end A280490

/-! ## A280490.P3431009793147685893

`(n+1)/gcd(A122111(n+1), A131738(n))`
-/

namespace A280490.P3431009793147685893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A122111 (n + 1)) (A131738 n) : ℚ)

end

end A280490.P3431009793147685893

namespace A280490

/-- `(n+1)/gcd(A122111(n+1), A131738(n))` -/
def P3431009793147685893.Spec : Prop :=
  ∀ n, P3431009793147685893.a n = (A280490 (n + 1) : ℚ)

end A280490

/-! ## A280490.P12415065739470371333

`lcm(A000027(n+1), A122111(n+1))/A122111(n+1)`
-/

namespace A280490.P12415065739470371333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000027 (n + 1)) (A122111 (n + 1)) : ℚ) / (A122111 (n + 1) : ℚ)

end

end A280490.P12415065739470371333

namespace A280490

/-- `lcm(A000027(n+1), A122111(n+1))/A122111(n+1)` -/
def P12415065739470371333.Spec : Prop :=
  ∀ n, P12415065739470371333.a n = (A280490 (n + 1) : ℚ)

end A280490

/-! ## A280490.P8381636453459974759

`A219158(A280491(n+1)+A000217(n))`
-/

namespace A280490.P8381636453459974759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219158 (A280491 (n + 1) + A000217 n).toNat

end

end A280490.P8381636453459974759

namespace A280490

/-- `A219158(A280491(n+1)+A000217(n))` -/
def P8381636453459974759.Spec : Prop :=
  ∀ n, P8381636453459974759.a n = A280490 (n + 1)

end A280490

/-! ## A280490.P5272996557669427035

`A126988(A280491(n+1)+∑[n])`
-/

namespace A280490.P5272996557669427035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A280491 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A280490.P5272996557669427035

namespace A280490

/-- `A126988(A280491(n+1)+∑[n])` -/
def P5272996557669427035.Spec : Prop :=
  ∀ n, P5272996557669427035.a n = A280490 (n + 1)

end A280490

/-! ## A280490.P1401973052045094056

`A010766(A280491(n+1)+A000217(n))`
-/

namespace A280490.P1401973052045094056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A280491 (n + 1) + A000217 n).toNat

end

end A280490.P1401973052045094056

namespace A280490

/-- `A010766(A280491(n+1)+A000217(n))` -/
def P1401973052045094056.Spec : Prop :=
  ∀ n, P1401973052045094056.a n = A280490 (n + 1)

end A280490

/-! ## A280490.P9750814001023028620

`A054531(A280491(n+1)+A000217(n))`
-/

namespace A280490.P9750814001023028620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A280491 (n + 1) + A000217 n).toNat

end

end A280490.P9750814001023028620

namespace A280490

/-- `A054531(A280491(n+1)+A000217(n))` -/
def P9750814001023028620.Spec : Prop :=
  ∀ n, P9750814001023028620.a n = A280490 (n + 1)

end A280490

/-!
# A280491: a(n) = gcd(n,A122111(n)).

The programs for A280491, the canonical program `A280491.P4937932659771709306` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280491 has offset 1).

The definition of A280491 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A280491.P8094191455637081218

`(n+1)/A280490(n+1)`
-/

namespace A280491.P8094191455637081218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A280490 (n + 1) : ℚ)

end

end A280491.P8094191455637081218

namespace A280491

/-- `(n+1)/A280490(n+1)` -/
def P8094191455637081218.Spec : Prop :=
  ∀ n, P8094191455637081218.a n = (A280491 (n + 1) : ℚ)

end A280491

/-! ## A280491.P4937932659771709306

`gcd(n+1, A122111(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A280491

/-- `gcd(n+1, A122111(n+1))` -/
def P4937932659771709306.Spec : Prop :=
  ∀ n, (P4937932659771709306.a n : ℤ) = A280491 (n + 1)

theorem P4937932659771709306.correct : P4937932659771709306.Spec := by
  intro n
  simp only [A280491, Nat.add_sub_cancel]

end A280491

/-! ## A280491.P5803052063917920597

`gcd(-xor(n, -1), ∑{d}[n+1, A329034(#)])`
-/

namespace A280491.P5803052063917920597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-Int.xor (n : ℤ) (-1)) (∑ d ∈ Nat.divisors (f1 n), A329034 d)

end

end A280491.P5803052063917920597

namespace A280491

/-- `gcd(-xor(n, -1), ∑{d}[n+1, A329034(#)])` -/
def P5803052063917920597.Spec : Prop :=
  ∀ n, (P5803052063917920597.a n : ℤ) = A280491 (n + 1)

end A280491

/-! ## A280491.P18168974869147057121

`gcd(A122111(n+1), A131738(n))`
-/

namespace A280491.P18168974869147057121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122111 (n + 1)) (A131738 n)

end

end A280491.P18168974869147057121

namespace A280491

/-- `gcd(A122111(n+1), A131738(n))` -/
def P18168974869147057121.Spec : Prop :=
  ∀ n, (P18168974869147057121.a n : ℤ) = A280491 (n + 1)

end A280491

/-! ## A280491.P12781718571729898621

`gcd(∑{d}[n+1, A329034(#)], A209662(n+1))`
-/

namespace A280491.P12781718571729898621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ d ∈ Nat.divisors (f1 n), A329034 d) (A209662 (n + 1))

end

end A280491.P12781718571729898621

namespace A280491

/-- `gcd(∑{d}[n+1, A329034(#)], A209662(n+1))` -/
def P12781718571729898621.Spec : Prop :=
  ∀ n, (P12781718571729898621.a n : ℤ) = A280491 (n + 1)

end A280491

/-! ## A280491.P12780488009790237074

`gcd(A000027(n+1), A352491(n+1))`
-/

namespace A280491.P12780488009790237074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A352491 (n + 1))

end

end A280491.P12780488009790237074

namespace A280491

/-- `gcd(A000027(n+1), A352491(n+1))` -/
def P12780488009790237074.Spec : Prop :=
  ∀ n, (P12780488009790237074.a n : ℤ) = A280491 (n + 1)

end A280491

/-! ## A280491.P13434218298211542649

`A126988(A280490(n+1)+∑[n])`
-/

namespace A280491.P13434218298211542649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A280490 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A280491.P13434218298211542649

namespace A280491

/-- `A126988(A280490(n+1)+∑[n])` -/
def P13434218298211542649.Spec : Prop :=
  ∀ n, P13434218298211542649.a n = A280491 (n + 1)

end A280491

/-! ## A280491.P14178422064698208605

`A054531(A280490(n+1)+A000217(n))`
-/

namespace A280491.P14178422064698208605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A280490 (n + 1) + A000217 n).toNat

end

end A280491.P14178422064698208605

namespace A280491

/-- `A054531(A280490(n+1)+A000217(n))` -/
def P14178422064698208605.Spec : Prop :=
  ∀ n, P14178422064698208605.a n = A280491 (n + 1)

end A280491

/-! ## A280491.P15555888637099649450

`gcd(n+1, A243070(A001844(n)))`
-/

namespace A280491.P15555888637099649450
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A243070 (A001844 n).toNat)

end

end A280491.P15555888637099649450

namespace A280491

/-- `gcd(n+1, A243070(A001844(n)))` -/
def P15555888637099649450.Spec : Prop :=
  ∀ n, (P15555888637099649450.a n : ℤ) = A280491 (n + 1)

end A280491

/-!
# A280492: a(1) = 0; for n > 1, a(n) = A246277(n) - A078898(n).

The programs for A280492, there is no canonical definition to state claims against.
-/

/-! ## A280492.P8281356897618609346

`A078898(A348717(n+1))-A078898(n+1)`
-/

namespace A280492.P8281356897618609346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A348717 (n + 1)).toNat - A078898 (n + 1)

end

end A280492.P8281356897618609346

/-! ## A280492.P4425811055603924521

`A246277(n+1)-A078898((n+1)%A000959(n+1))`
-/

namespace A280492.P4425811055603924521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (n + 1) - A078898 (Int.tmod (n + 1 : ℤ) (A000959 (n + 1))).toNat

end

end A280492.P4425811055603924521

/-! ## A280492.P1433140641914670850

`(A246277(n+1)-A078898(n+1))%A032742(n+1)`
-/

namespace A280492.P1433140641914670850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246277 (n + 1) - A078898 (n + 1)) (A032742 (n + 1))

end

end A280492.P1433140641914670850

/-! ## A280492.P8135406359364685021

`floor(A348717(n+1)/2)-A260439(A255553(n+1))`
-/

namespace A280492.P8135406359364685021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A348717 (n + 1) : ℚ) / 2⌋ - A260439 (A255553 (n + 1)).toNat

end

end A280492.P8135406359364685021

/-! ## A280492.P9901147445412250043

`A260439(A348717(n+1))-A260439(A255553(n+1))`
-/

namespace A280492.P9901147445412250043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260439 (A348717 (n + 1)).toNat - A260439 (A255553 (n + 1)).toNat

end

end A280492.P9901147445412250043

/-! ## A280492.P9541126125307678021

`A246277(n+1)+A249820(n+1)-A249810(n+1)`
-/

namespace A280492.P9541126125307678021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (n + 1) + (A249820 (n + 1) - A249810 (n + 1))

end

end A280492.P9541126125307678021

/-! ## A280492.P8320863398518031665

`A078898(A249817(n+1))-A078898(n+1)`
-/

namespace A280492.P8320863398518031665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A249817 (n + 1)).toNat - A078898 (n + 1)

end

end A280492.P8320863398518031665

/-! ## A280492.P9551732771612437828

`A078898(A250247(n+1))-A078898(n+1)`
-/

namespace A280492.P9551732771612437828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A250247 (n + 1)).toNat - A078898 (n + 1)

end

end A280492.P9551732771612437828

/-! ## A280492.P6027403693519236146

`A246277(n+1)-A246277(A249818(n+1))`
-/

namespace A280492.P6027403693519236146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (n + 1) - A246277 (A249818 (n + 1)).toNat

end

end A280492.P6027403693519236146

/-! ## A280492.P5926577195758486168

`A246277(n+1)-A246277(A250248(n+1))`
-/

namespace A280492.P5926577195758486168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (n + 1) - A246277 (A250248 (n + 1)).toNat

end

end A280492.P5926577195758486168

/-!
# A280493: Sum of GF(2)[X] divisors of n: the sum is ordinary sum of integers, the summands being all the natural numbers whose binary expansions encode such (0,1)-polynomials that divide the (0,1)-polynomial encoded by n when the polynomial factorization is done over the field GF(2).

The programs for A280493, there is no canonical definition to state claims against.
-/

/-! ## A280493.P11590716454121100144

`∑{d}[A091203(n+1), A091202(#)]`
-/

namespace A280493.P11590716454121100144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A091202 d

end

end A280493.P11590716454121100144

/-! ## A280493.P629593825420240559

`∑{d}[A091205(n+1), A091204(#)]`
-/

namespace A280493.P629593825420240559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A091204 d

end

end A280493.P629593825420240559

/-! ## A280493.P10772991296139332162

`∑{d}[A235042(n+1), A235041(#)]`
-/

namespace A280493.P10772991296139332162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A235041 d

end

end A280493.P10772991296139332162

/-! ## A280493.P14763187200684070544

`∑{d}[A245821(A245704(n+1)), A091204(#)]`
-/

namespace A280493.P14763187200684070544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245821 (A245704 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A091204 d

end

end A280493.P14763187200684070544

/-! ## A280493.P9257605486621434176

`∑{d}[A163511(A305428(n+1)), A091202(#)]`
-/

namespace A280493.P9257605486621434176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A305428 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A091202 d

end

end A280493.P9257605486621434176

/-!
# A280494: Rows of triangular table A280499 read in reverse order.

The programs for A280494, there is no canonical definition to state claims against.
-/

/-! ## A280494.P2072060562407309880

`A280499(∑[char[∑[n]]]²-n)`
-/

namespace A280494.P2072060562407309880
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280499 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A280494.P2072060562407309880

/-! ## A280494.P13077457055061502195

`A280499(A038722(n+1))%(n+2)`
-/

namespace A280494.P13077457055061502195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280499 (A038722 (n + 1)).toNat) (n + 2 : ℤ)

end

end A280494.P13077457055061502195

/-! ## A280494.P7225616448650941797

`A280499(A038722(n+1))*A340375(n*char[2^n])`
-/

namespace A280494.P7225616448650941797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280499 (A038722 (n + 1)).toNat * A340375 (n * (if ∃ j, f1 j = n then 1 else 0))

end

end A280494.P7225616448650941797

/-! ## A280494.P14834064901712957448

`A010051(A084126(n+1))*A280499(A038722(n+1))`
-/

namespace A280494.P14834064901712957448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A084126 (n + 1)).toNat * A280499 (A038722 (n + 1)).toNat

end

end A280494.P14834064901712957448

/-! ## A280494.P17629816174989557960

`A010051(A075583(n+1))*A280499(A038722(n+1))`
-/

namespace A280494.P17629816174989557960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A075583 (n + 1)).toNat * A280499 (A038722 (n + 1)).toNat

end

end A280494.P17629816174989557960

/-! ## A280494.P10922284928345270540

`A340375(A075583(2*(n+2)))+A280499(A038722(n+1))`
-/

namespace A280494.P10922284928345270540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340375 (A075583 (2 * (n + 2))).toNat + A280499 (A038722 (n + 1)).toNat

end

end A280494.P10922284928345270540

/-! ## A280494.P13218235539654333163

`A280499(A038722(n+1))+A010051(A329142(n+1))`
-/

namespace A280494.P13218235539654333163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280499 (A038722 (n + 1)).toNat + A010051 (A329142 (n + 1)).toNat

end

end A280494.P13218235539654333163

/-!
# A280495: a(n) = A032742(A250245(n)).

The programs for A280495, there is no canonical definition to state claims against.
-/

/-! ## A280495.P14533172557622313973

`A250245(n+1)/A020639(n+1)`
-/

namespace A280495.P14533172557622313973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250245 (n + 1) : ℚ) / (A020639 (n + 1) : ℚ)

end

end A280495.P14533172557622313973

/-! ## A280495.P6314507106078217628

`A032742(A250245(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A280495.P6314507106078217628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A250245 (n + 1)).toNat

end

end A280495.P6314507106078217628

/-! ## A280495.P2250823267382586242

`A250245(n+1)/sqrt(A088377(n+1))`
-/

namespace A280495.P2250823267382586242
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A250245 (n + 1) : ℝ) / Real.sqrt (A088377 (n + 1) : ℝ)

end

end A280495.P2250823267382586242

/-! ## A280495.P4318911055200098180

`A250245(n+1)/(A061228(n+1)-(n+1))`
-/

namespace A280495.P4318911055200098180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250245 (n + 1) : ℚ) / (A061228 (n + 1) - (n + 1 : ℤ) : ℚ)

end

end A280495.P4318911055200098180

/-! ## A280495.P15501997427145713129

`A250245(n+1)/gcd(n+1, A063918(n+1))`
-/

namespace A280495.P15501997427145713129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250245 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A063918 (n + 1)) : ℚ)

end

end A280495.P15501997427145713129

/-! ## A280495.P7462626226385842543

`A250245(n+1)/(A140524(n+1)-xor(1, n))`
-/

namespace A280495.P7462626226385842543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250245 (n + 1) : ℚ) / (A140524 (n + 1) - (Nat.xor 1 n : ℤ) : ℚ)

end

end A280495.P7462626226385842543

/-! ## A280495.P9947314396044803107

`A250245(n+1)/A249817(n+1)*A280497(n+1)`
-/

namespace A280495.P9947314396044803107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250245 (n + 1) : ℚ) / (A249817 (n + 1) : ℚ) * (A280497 (n + 1) : ℚ)

end

end A280495.P9947314396044803107

/-! ## A280495.P9489466955619176175

`A250245(n+1)/A249818(n+1)*A280498(n+1)`
-/

namespace A280495.P9489466955619176175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250245 (n + 1) : ℚ) / (A249818 (n + 1) : ℚ) * (A280498 (n + 1) : ℚ)

end

end A280495.P9489466955619176175

/-! ## A280495.P2547318471963290282

`A250245(n+1)*A280496(n+1)/A250246(n+1)`
-/

namespace A280495.P2547318471963290282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250245 (n + 1) * A280496 (n + 1) : ℚ) / (A250246 (n + 1) : ℚ)

end

end A280495.P2547318471963290282

/-! ## A280495.P17499537996909572581

`A250245(n+1)/A249817(A249817(n+1)/A280497(n+1))`
-/

namespace A280495.P17499537996909572581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250245 (n + 1) : ℚ) / (A249817 (SequenceMachineLib.roundAway ((A249817 (n + 1) : ℚ) / (A280497 (n + 1) : ℚ))).toNat : ℚ)

end

end A280495.P17499537996909572581

/-! ## A280495.P5876437008462927945

`A250245(n+1)/A249817(A249818(n+1)/A280498(n+1))`
-/

namespace A280495.P5876437008462927945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250245 (n + 1) : ℚ) / (A249817 (SequenceMachineLib.roundAway ((A249818 (n + 1) : ℚ) / (A280498 (n + 1) : ℚ))).toNat : ℚ)

end

end A280495.P5876437008462927945

/-! ## A280495.P17778013762798922385

`A250245(n+1)/A249818(A249818(n+1)/A280498(n+1))`
-/

namespace A280495.P17778013762798922385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250245 (n + 1) : ℚ) / (A249818 (SequenceMachineLib.roundAway ((A249818 (n + 1) : ℚ) / (A280498 (n + 1) : ℚ))).toNat : ℚ)

end

end A280495.P17778013762798922385

/-! ## A280495.P6743616109732988345

`A250245(n+1)/A250245(A250246(n+1)/A280496(n+1))`
-/

namespace A280495.P6743616109732988345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250245 (n + 1) : ℚ) / (A250245 (SequenceMachineLib.roundAway ((A250246 (n + 1) : ℚ) / (A280496 (n + 1) : ℚ))).toNat : ℚ)

end

end A280495.P6743616109732988345

/-! ## A280495.P2394613422307612208

`A032742(A269172(A302025(n+1)))`
-/

namespace A280495.P2394613422307612208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A269172 (A302025 (n + 1)).toNat).toNat

end

end A280495.P2394613422307612208

/-!
# A280496: a(n) = A032742(A250246(n)).

The programs for A280496, there is no canonical definition to state claims against.
-/

/-! ## A280496.P13811300707777758398

`A250246(n+1)/A020639(n+1)`
-/

namespace A280496.P13811300707777758398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250246 (n + 1) : ℚ) / (A020639 (n + 1) : ℚ)

end

end A280496.P13811300707777758398

/-! ## A280496.P18256639521767939908

`A032742(A250246(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A280496.P18256639521767939908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A250246 (n + 1)).toNat

end

end A280496.P18256639521767939908

/-! ## A280496.P729666454556622847

`A250246(A302042(n+1))`
-/

namespace A280496.P729666454556622847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (A302042 (n + 1)).toNat

end

end A280496.P729666454556622847

/-! ## A280496.P8951424577462891301

`A250246(1-A302043(n+1)+n)`
-/

namespace A280496.P8951424577462891301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (1 - A302043 (n + 1) + (n : ℤ)).toNat

end

end A280496.P8951424577462891301

/-! ## A280496.P13456462089096242604

`A250246(n+1)/sqrt(A088377(n+1))`
-/

namespace A280496.P13456462089096242604
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A250246 (n + 1) : ℝ) / Real.sqrt (A088377 (n + 1) : ℝ)

end

end A280496.P13456462089096242604

/-! ## A280496.P6568176980550223417

`A346486(A302044(n+1))*A346487(n+1)`
-/

namespace A280496.P6568176980550223417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346486 (A302044 (n + 1)).toNat * A346487 (n + 1)

end

end A280496.P6568176980550223417

/-! ## A280496.P13793109404250171718

`A250246(n+1)/A028233(A007947(n+1))`
-/

namespace A280496.P13793109404250171718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250246 (n + 1) : ℚ) / (A028233 (A007947 (n + 1)).toNat : ℚ)

end

end A280496.P13793109404250171718

/-! ## A280496.P1856358193523721030

`A250246(n+1)/A014963(A028233(n+1))`
-/

namespace A280496.P1856358193523721030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250246 (n + 1) : ℚ) / (A014963 (A028233 (n + 1)).toNat : ℚ)

end

end A280496.P1856358193523721030

/-! ## A280496.P15484379085335807886

`A250246(n+1)/A006530(A068794(n+1))`
-/

namespace A280496.P15484379085335807886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250246 (n + 1) : ℚ) / (A006530 (A068794 (n + 1)).toNat : ℚ)

end

end A280496.P15484379085335807886

/-! ## A280496.P1977137064951203434

`(A324546(n+1)+A324535(n+1))/A020639(n+1)`
-/

namespace A280496.P1977137064951203434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324546 (n + 1) + A324535 (n + 1) : ℚ) / (A020639 (n + 1) : ℚ)

end

end A280496.P1977137064951203434

/-! ## A280496.P9043118314317329822

`(A324545(n+1)-A324535(n+1))/A020639(n+1)`
-/

namespace A280496.P9043118314317329822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324545 (n + 1) - A324535 (n + 1) : ℚ) / (A020639 (n + 1) : ℚ)

end

end A280496.P9043118314317329822

/-! ## A280496.P10541614703104441916

`A346486(n+1)/A020639(n+1)*A346487(n+1)`
-/

namespace A280496.P10541614703104441916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346486 (n + 1) : ℚ) / (A020639 (n + 1) : ℚ) * (A346487 (n + 1) : ℚ)

end

end A280496.P10541614703104441916

/-! ## A280496.P6677129157225444738

`A250246(n+1)/A249817(n+1)*A280497(n+1)`
-/

namespace A280496.P6677129157225444738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250246 (n + 1) : ℚ) / (A249817 (n + 1) : ℚ) * (A280497 (n + 1) : ℚ)

end

end A280496.P6677129157225444738

/-! ## A280496.P11297619999574436217

`A250246(n+1)/A249817(A249817(n+1)/A280497(n+1))`
-/

namespace A280496.P11297619999574436217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250246 (n + 1) : ℚ) / (A249817 (SequenceMachineLib.roundAway ((A249817 (n + 1) : ℚ) / (A280497 (n + 1) : ℚ))).toNat : ℚ)

end

end A280496.P11297619999574436217

/-! ## A280496.P4684002293119374907

`A302026(A269171(n+1))/A020639(n+1)`
-/

namespace A280496.P4684002293119374907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302026 (A269171 (n + 1)).toNat : ℚ) / (A020639 (n + 1) : ℚ)

end

end A280496.P4684002293119374907

/-! ## A280496.P2092209099497994936

`A028234(A346486(n+1))*A346487(n+1)`
-/

namespace A280496.P2092209099497994936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A346486 (n + 1)).toNat * A346487 (n + 1)

end

end A280496.P2092209099497994936

/-! ## A280496.P17749471112046914192

`A054576(A250246(2*(n+1)))`
-/

namespace A280496.P17749471112046914192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A250246 (2 * (n + 1))).toNat

end

end A280496.P17749471112046914192

/-! ## A280496.P10896748317158537889

`A054576(A250246(n+1)+A250246(n+1))`
-/

namespace A280496.P10896748317158537889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A250246 (n + 1) + A250246 (n + 1)).toNat

end

end A280496.P10896748317158537889

/-!
# A280497: a(n) = A032742(A249817(n)).

The programs for A280497, there is no canonical definition to state claims against.
-/

/-! ## A280497.P3472264677621270269

`A249817(n+1)/A020639(n+1)`
-/

namespace A280497.P3472264677621270269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249817 (n + 1) : ℚ) / (A020639 (n + 1) : ℚ)

end

end A280497.P3472264677621270269

/-! ## A280497.P16108188831198621639

`A032742(A249817(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A280497.P16108188831198621639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A249817 (n + 1)).toNat

end

end A280497.P16108188831198621639

/-! ## A280497.P14291273746233223312

`A249817(n+1)/A008578(A055396(n+1)+1)`
-/

namespace A280497.P14291273746233223312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249817 (n + 1) : ℚ) / (A008578 (A055396 (n + 1) + 1).toNat : ℚ)

end

end A280497.P14291273746233223312

/-! ## A280497.P6682907672642276107

`A249817(n+1)/A249818(n+1)*A280498(n+1)`
-/

namespace A280497.P6682907672642276107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249817 (n + 1) : ℚ) / (A249818 (n + 1) : ℚ) * (A280498 (n + 1) : ℚ)

end

end A280497.P6682907672642276107

/-! ## A280497.P6030623727471001875

`A249817(n+1)*A280496(n+1)/A250246(n+1)`
-/

namespace A280497.P6030623727471001875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249817 (n + 1) * A280496 (n + 1) : ℚ) / (A250246 (n + 1) : ℚ)

end

end A280497.P6030623727471001875

/-! ## A280497.P4109581250910815274

`A249817(n+1)/A249817(A249818(n+1)/A280498(n+1))`
-/

namespace A280497.P4109581250910815274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249817 (n + 1) : ℚ) / (A249817 (SequenceMachineLib.roundAway ((A249818 (n + 1) : ℚ) / (A280498 (n + 1) : ℚ))).toNat : ℚ)

end

end A280497.P4109581250910815274

/-! ## A280497.P2177538326662127635

`A249817(n+1)/A249817(A250246(n+1)/A280496(n+1))`
-/

namespace A280497.P2177538326662127635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249817 (n + 1) : ℚ) / (A249817 (SequenceMachineLib.roundAway ((A250246 (n + 1) : ℚ) / (A280496 (n + 1) : ℚ))).toNat : ℚ)

end

end A280497.P2177538326662127635

/-! ## A280497.P5988652297913954200

`A250247(n+1)/A250247(A020639(n+1))`
-/

namespace A280497.P5988652297913954200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250247 (n + 1) : ℚ) / (A250247 (A020639 (n + 1)).toNat : ℚ)

end

end A280497.P5988652297913954200

/-! ## A280497.P10426408833718348461

`A032742(A250247(n+1))`
-/

namespace A280497.P10426408833718348461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A250247 (n + 1)).toNat

end

end A280497.P10426408833718348461

/-! ## A280497.P11379483454162829434

`A249817(n+1)/A266646(n+1)*A283464(n+1)`
-/

namespace A280497.P11379483454162829434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249817 (n + 1) : ℚ) / (A266646 (n + 1) : ℚ) * (A283464 (n + 1) : ℚ)

end

end A280497.P11379483454162829434

/-! ## A280497.P4912277404744218719

`A249817(n+1)/A249817(A266646(n+1)/A283464(n+1))`
-/

namespace A280497.P4912277404744218719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249817 (n + 1) : ℚ) / (A249817 (SequenceMachineLib.roundAway ((A266646 (n + 1) : ℚ) / (A283464 (n + 1) : ℚ))).toNat : ℚ)

end

end A280497.P4912277404744218719

/-! ## A280497.P15307603647367352661

`A283464(A266645(A249817(A266645(A266646(n+1)))))`
-/

namespace A280497.P15307603647367352661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283464 (A266645 (A249817 (A266645 (A266646 (n + 1)).toNat).toNat).toNat).toNat

end

end A280497.P15307603647367352661

/-! ## A280497.P11767633979692650056

`A280498(A249817(A249817(A266646(A266645(n+1)))))`
-/

namespace A280497.P11767633979692650056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280498 (A249817 (A249817 (A266646 (A266645 (n + 1)).toNat).toNat).toNat).toNat

end

end A280497.P11767633979692650056

/-! ## A280497.P5706815201279366078

`A249817(n+1)/A250470(A003961(n+1))*A283464(n+1)`
-/

namespace A280497.P5706815201279366078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249817 (n + 1) : ℚ) / (A250470 (A003961 (n + 1)).toNat : ℚ) * (A283464 (n + 1) : ℚ)

end

end A280497.P5706815201279366078

/-! ## A280497.P10139862391698946658

`A250470(2*A003961(n+1))/A020639(n+1)`
-/

namespace A280497.P10139862391698946658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250470 (2 * A003961 (n + 1)).toNat : ℚ) / (A020639 (n + 1) : ℚ)

end

end A280497.P10139862391698946658

/-!
# A280498: a(n) = A032742(A249818(n)).

The programs for A280498, there is no canonical definition to state claims against.
-/

/-! ## A280498.P10877354012489565272

`A249818(n+1)/A020639(n+1)`
-/

namespace A280498.P10877354012489565272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249818 (n + 1) : ℚ) / (A020639 (n + 1) : ℚ)

end

end A280498.P10877354012489565272

/-! ## A280498.P1114005811068953438

`A032742(A249818(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A280498.P1114005811068953438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A249818 (n + 1)).toNat

end

end A280498.P1114005811068953438

/-! ## A280498.P10876600952277897816

`A249818(n+1)/sqrt(A088377(n+1))`
-/

namespace A280498.P10876600952277897816
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A249818 (n + 1) : ℝ) / Real.sqrt (A088377 (n + 1) : ℝ)

end

end A280498.P10876600952277897816

/-! ## A280498.P7058342490946682087

`A249818(n+1)/(A061228(n+1)-(n+1))`
-/

namespace A280498.P7058342490946682087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249818 (n + 1) : ℚ) / (A061228 (n + 1) - (n + 1 : ℤ) : ℚ)

end

end A280498.P7058342490946682087

/-! ## A280498.P12076059318749721882

`A249818(n+1)/gcd(n+1, A063918(n+1))`
-/

namespace A280498.P12076059318749721882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249818 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A063918 (n + 1)) : ℚ)

end

end A280498.P12076059318749721882

/-! ## A280498.P11369311047534904660

`A249818(n+1)/(A140524(n+1)-xor(1, n))`
-/

namespace A280498.P11369311047534904660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249818 (n + 1) : ℚ) / (A140524 (n + 1) - (Nat.xor 1 n : ℤ) : ℚ)

end

end A280498.P11369311047534904660

/-! ## A280498.P17870413165196726840

`A249818(n+1)/A249817(n+1)*A280497(n+1)`
-/

namespace A280498.P17870413165196726840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249818 (n + 1) : ℚ) / (A249817 (n + 1) : ℚ) * (A280497 (n + 1) : ℚ)

end

end A280498.P17870413165196726840

/-! ## A280498.P5513850291676051103

`A249818(n+1)*A280495(n+1)/A250245(n+1)`
-/

namespace A280498.P5513850291676051103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249818 (n + 1) * A280495 (n + 1) : ℚ) / (A250245 (n + 1) : ℚ)

end

end A280498.P5513850291676051103

/-! ## A280498.P4650203596061188658

`A249818(n+1)/A266645(n+1)*A283463(n+1)`
-/

namespace A280498.P4650203596061188658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249818 (n + 1) : ℚ) / (A266645 (n + 1) : ℚ) * (A283463 (n + 1) : ℚ)

end

end A280498.P4650203596061188658

/-! ## A280498.P10601644715788049168

`A249818(n+1)/A249817(A249817(n+1)/A280497(n+1))`
-/

namespace A280498.P10601644715788049168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249818 (n + 1) : ℚ) / (A249817 (SequenceMachineLib.roundAway ((A249817 (n + 1) : ℚ) / (A280497 (n + 1) : ℚ))).toNat : ℚ)

end

end A280498.P10601644715788049168

/-! ## A280498.P3087888455075437586

`A249818(n+1)/A249818(A250245(n+1)/A280495(n+1))`
-/

namespace A280498.P3087888455075437586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249818 (n + 1) : ℚ) / (A249818 (SequenceMachineLib.roundAway ((A250245 (n + 1) : ℚ) / (A280495 (n + 1) : ℚ))).toNat : ℚ)

end

end A280498.P3087888455075437586

/-! ## A280498.P12746736865306098333

`A249818(n+1)/A249818(A266645(n+1)/A283463(n+1))`
-/

namespace A280498.P12746736865306098333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249818 (n + 1) : ℚ) / (A249818 (SequenceMachineLib.roundAway ((A266645 (n + 1) : ℚ) / (A283463 (n + 1) : ℚ))).toNat : ℚ)

end

end A280498.P12746736865306098333

/-! ## A280498.P17853878425798339102

`A250248(n+1)/A250248(A020639(n+1))`
-/

namespace A280498.P17853878425798339102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250248 (n + 1) : ℚ) / (A250248 (A020639 (n + 1)).toNat : ℚ)

end

end A280498.P17853878425798339102

/-! ## A280498.P1066458946612924485

`A249818(n+1)/A266646(n+1)*A283464(n+1)`
-/

namespace A280498.P1066458946612924485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249818 (n + 1) : ℚ) / (A266646 (n + 1) : ℚ) * (A283464 (n + 1) : ℚ)

end

end A280498.P1066458946612924485

/-! ## A280498.P4942772112485573578

`A249818(n+1)/A249818(A266646(n+1)/A283464(n+1))`
-/

namespace A280498.P4942772112485573578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249818 (n + 1) : ℚ) / (A249818 (SequenceMachineLib.roundAway ((A266646 (n + 1) : ℚ) / (A283464 (n + 1) : ℚ))).toNat : ℚ)

end

end A280498.P4942772112485573578

/-! ## A280498.P1347593589880909893

`A032742(A250248(n+1))`
-/

namespace A280498.P1347593589880909893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A250248 (n + 1)).toNat

end

end A280498.P1347593589880909893

/-! ## A280498.P2679914654543779928

`A283463(A266646(A064989(A249818(A250469(n+1)))))`
-/

namespace A280498.P2679914654543779928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (A266646 (A064989 (A249818 (A250469 (n + 1)).toNat).toNat).toNat).toNat

end

end A280498.P2679914654543779928

/-! ## A280498.P17272140611036131440

`A283463(A266646(A249818(A266403(A266403(n+1)))))`
-/

namespace A280498.P17272140611036131440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (A266646 (A249818 (A266403 (A266403 (n + 1)).toNat).toNat).toNat).toNat

end

end A280498.P17272140611036131440

/-! ## A280498.P379532902020440659

`A283463(A266646(A249818(A266646(A266645(n+1)))))`
-/

namespace A280498.P379532902020440659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (A266646 (A249818 (A266646 (A266645 (n + 1)).toNat).toNat).toNat).toNat

end

end A280498.P379532902020440659

/-!
# A280499: Triangular table for division in ring GF(2)[X]: T(n,k) = n/k, or 0 if k is not a divisor of n, where the binary expansion of each number defines the corresponding (0,1)-polynomial.

The programs for A280499, there is no canonical definition to state claims against.
-/

/-! ## A280499.P7534638393790320637

`A280494(A038722(n+1))`
-/

namespace A280499.P7534638393790320637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280494 (A038722 (n + 1)).toNat

end

end A280499.P7534638393790320637

/-! ## A280499.P5437576467826506545

`A280494(A061579(n)+1)`
-/

namespace A280499.P5437576467826506545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280494 (A061579 n + 1).toNat

end

end A280499.P5437576467826506545

/-! ## A280499.P9275508589353403692

`A280494(∑[A198954(n)]-n)`
-/

namespace A280499.P9275508589353403692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280494 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A280499.P9275508589353403692

/-! ## A280499.P13081629470134350768

`A280494(A093995(n+1)-n)`
-/

namespace A280499.P13081629470134350768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280494 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A280499.P13081629470134350768

/-! ## A280499.P17772936555179277020

`A280494(n+2-A127948(n))`
-/

namespace A280499.P17772936555179277020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280494 ((n + 2 : ℤ) - A127948 n).toNat

end

end A280499.P17772936555179277020

/-! ## A280499.P13626090102397286480

`A280494(A002024(n+1)²-n)`
-/

namespace A280499.P13626090102397286480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280494 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A280499.P13626090102397286480

