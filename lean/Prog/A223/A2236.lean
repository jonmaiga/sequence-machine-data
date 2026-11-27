import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C046
import Seq.B000.C048
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C001
import Seq.B004.C001
import Seq.B005.C002
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C004
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C022

/-!
# A223600: Petersen graph (8,2) coloring a rectangular array: number of 2 X n 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal, diagonal or antidiagonal neighbor moves along an edge of this graph.

The programs for A223600, there is no canonical definition to state claims against.
-/

/-! ## A223600.P9812899803725089490

`A223599(∑[n+1]+2)`
-/

namespace A223600.P9812899803725089490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223600.P9812899803725089490

/-!
# A223601: Petersen graph (8,2) coloring a rectangular array: number of 3Xn 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal, diagonal or antidiagonal neighbor moves along an edge of this graph.

The programs for A223601, there is no canonical definition to state claims against.
-/

/-! ## A223601.P6164336418156844125

`A223599(∑[n+2]+4)`
-/

namespace A223601.P6164336418156844125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223601.P6164336418156844125

/-!
# A223602: Petersen graph (8,2) coloring a rectangular array: number of 4Xn 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal, diagonal or antidiagonal neighbor moves along an edge of this graph.

The programs for A223602, there is no canonical definition to state claims against.
-/

/-! ## A223602.P16567547111279296723

`A223599(A141214(n)+7)`
-/

namespace A223602.P16567547111279296723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (A141214 n + 7).toNat

end

end A223602.P16567547111279296723

/-!
# A223603: Petersen graph (8,2) coloring a rectangular array: number of 5Xn 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal, diagonal or antidiagonal neighbor moves along an edge of this graph.

The programs for A223603, there is no canonical definition to state claims against.
-/

/-! ## A223603.P7295817656482529850

`A223599(A167499(n+3))`
-/

namespace A223603.P7295817656482529850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (A167499 (n + 3)).toNat

end

end A223603.P7295817656482529850

/-!
# A223604: Petersen graph (8,2) coloring a rectangular array: number of 6Xn 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal, diagonal or antidiagonal neighbor moves along an edge of this graph.

The programs for A223604, there is no canonical definition to state claims against.
-/

/-! ## A223604.P2026028176536257143

`A223599(A167499(n+4)+1)`
-/

namespace A223604.P2026028176536257143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (A167499 (n + 4) + 1).toNat

end

end A223604.P2026028176536257143

/-!
# A223605: Petersen graph (8,2) coloring a rectangular array: number of 7 X n 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal, diagonal or antidiagonal neighbor moves along an edge of this graph.

The programs for A223605, there is no canonical definition to state claims against.
-/

/-! ## A223605.P8426551728268099624

`A223599(A000124(n+6)+6)`
-/

namespace A223605.P8426551728268099624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (A000124 (n + 6) + 6).toNat

end

end A223605.P8426551728268099624

/-!
# A223606: Numbers k whose deficiency is 22: sigma(k) - 2*k = -22.

The programs for A223606, there is no canonical definition to state claims against.
-/

/-! ## A223606.P17131061712982206113

`eq[20, 2*n-A000203(n+1)]+1`
-/

namespace A223606.P17131061712982206113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A223606.P17131061712982206113

/-! ## A223606.P2143070318912250643

`eq[15, A286449(n+1)]+1`
-/

namespace A223606.P2143070318912250643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286449 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A223606.P2143070318912250643

/-! ## A223606.P17334935536330795016

`eq[21, A235796(n+1)]+1`
-/

namespace A223606.P17334935536330795016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235796 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A223606.P17334935536330795016

/-! ## A223606.P13067666017858064408

`eq[22, A033879(n+1)]+1`
-/

namespace A223606.P13067666017858064408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A223606.P13067666017858064408

/-!
# A223607: Numbers whose deficiency is 20: sigma(k) - 2*k = -20.

The programs for A223607, there is no canonical definition to state claims against.
-/

/-! ## A223607.P3400782519788654542

`A274566(n+9)`
-/

namespace A223607.P3400782519788654542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274566 (n + 9)

end

end A223607.P3400782519788654542

/-!
# A223608: Numbers k whose deficiency is 18: sigma(k) - 2*k = -18.

The programs for A223608, there is no canonical definition to state claims against.
-/

/-! ## A223608.P17328879995432862190

`A274564(A065475(n+1)+6)`
-/

namespace A223608.P17328879995432862190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274564 (A065475 (n + 1) + 6).toNat

end

end A223608.P17328879995432862190

/-! ## A223608.P13356390172661577181

`A274564(A274552(n+1)+5)`
-/

namespace A223608.P13356390172661577181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274564 (A274552 (n + 1) + 5).toNat

end

end A223608.P13356390172661577181

/-!
# A223610: Numbers k whose abundance is 18: sigma(k) - 2*k = 18.

The programs for A223610, there is no canonical definition to state claims against.
-/

/-! ## A223610.P769055469097581461

`A274563(2+n)`
-/

namespace A223610.P769055469097581461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274563 (2 + n)

end

end A223610.P769055469097581461

/-! ## A223610.P16111113581679674584

`record[A274563(A085058(n))]`
-/

namespace A223610.P16111113581679674584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274563 (A085058 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223610.P16111113581679674584

/-! ## A223610.P15245560448397375743

`record[A274563(A328578(n))]`
-/

namespace A223610.P15245560448397375743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274563 (A328578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223610.P15245560448397375743

/-! ## A223610.P1710016533772685448

`record[A274563(Δ[A061885(n)])]`
-/

namespace A223610.P1710016533772685448
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274563 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223610.P1710016533772685448

/-! ## A223610.P6875273940868834918

`record[A274563(A008619(n)*A054977(n))]`
-/

namespace A223610.P6875273940868834918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274563 (A008619 n * A054977 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223610.P6875273940868834918

/-!
# A223611: Numbers k whose abundance is 20: sigma(k) - 2*k = 20.

The programs for A223611, there is no canonical definition to state claims against.
-/

/-! ## A223611.P11750113136980050411

`A274565(2+n)`
-/

namespace A223611.P11750113136980050411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274565 (2 + n)

end

end A223611.P11750113136980050411

/-! ## A223611.P673162722073796276

`record[A274565(A008619(n)*A054977(n))]`
-/

namespace A223611.P673162722073796276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274565 (A008619 n * A054977 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223611.P673162722073796276

/-! ## A223611.P4527821003548501552

`record[A274565(A328578(n))]`
-/

namespace A223611.P4527821003548501552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274565 (A328578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223611.P4527821003548501552

/-! ## A223611.P11075474212442120506

`record[A274565(A085058(n))]`
-/

namespace A223611.P11075474212442120506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274565 (A085058 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223611.P11075474212442120506

/-!
# A223614: Number of n X n 0..1 arrays with rows and columns unimodal.

The programs for A223614, there is no canonical definition to state claims against.
-/

/-! ## A223614.P10961253145915903298

`A223620(∑[4*n]+1)`
-/

namespace A223614.P10961253145915903298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223620 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223614.P10961253145915903298

/-! ## A223614.P15633601093472473298

`record[A003982(n)*A223620(n+1)]`
-/

namespace A223614.P15633601093472473298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A223620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223614.P15633601093472473298

/-! ## A223614.P4060899568181357341

`record[gcd(A003987(n), A223620(n+1))]`
-/

namespace A223614.P4060899568181357341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A223620 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223614.P4060899568181357341

/-! ## A223614.P12062881431718551199

`record[root(A223620(n+1), A286157(n+1))]`
-/

namespace A223614.P12062881431718551199
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A223620 (n + 1) : ℝ) ^ (1 / (A286157 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223614.P12062881431718551199

/-!
# A223615: Number of n X 3 0..1 arrays with rows and columns unimodal.

The programs for A223615, the canonical program `A223615.P15685536621697471457` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223615 has offset 1).

The definition of A223615 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223615.P15685536621697471457

`ogf((7+44x^2-20x^3+20x^4-6x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A223615

/-- `ogf((7+44x^2-20x^3+20x^4-6x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P15685536621697471457.Spec : Prop :=
  ∀ n, P15685536621697471457.a n = A223615 (n + 1)

theorem P15685536621697471457.correct : P15685536621697471457.Spec := by
  intro n
  simp only [A223615, Nat.add_sub_cancel]

end A223615

/-! ## A223615.P366381862986921102

`A223620(∑[n+2]+4)`
-/

namespace A223615.P366381862986921102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223620 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223615.P366381862986921102

namespace A223615

/-- `A223620(∑[n+2]+4)` -/
def P366381862986921102.Spec : Prop :=
  ∀ n, P366381862986921102.a n = A223615 (n + 1)

end A223615

/-!
# A223616: Number of n X 4 0..1 arrays with rows and columns unimodal.

The programs for A223616, the canonical program `A223616.P11959310100342708005` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223616 has offset 1).

The definition of A223616 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223616.P11959310100342708005

`ogf((11+22x+183x^2+14x^3+158x^4-56x^5+35x^6-8x^7+x^8)/(1-9x+36x^2-84x^3+126x^4-126x^5+84x^6-36x^7+9x^8-x^9))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A223616

/-- `ogf((11+22x+183x^2+14x^3+158x^4-56x^5+35x^6-8x^7+x^8)/(1-9x+36x^2-84x^3+126x^4-126x^5+84x^6-36x^7+9x^8-x^9))` -/
def P11959310100342708005.Spec : Prop :=
  ∀ n, P11959310100342708005.a n = A223616 (n + 1)

theorem P11959310100342708005.correct : P11959310100342708005.Spec := by
  intro n
  simp only [A223616, Nat.add_sub_cancel]

end A223616

/-! ## A223616.P3282737346927814615

`A223620(A374004(n+1))`
-/

namespace A223616.P3282737346927814615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223620 (A374004 (n + 1)).toNat

end

end A223616.P3282737346927814615

namespace A223616

/-- `A223620(A374004(n+1))` -/
def P3282737346927814615.Spec : Prop :=
  ∀ n, P3282737346927814615.a n = A223616 (n + 1)

end A223616

/-! ## A223616.P9058232743839343390

`A223620(A141214(n+1))`
-/

namespace A223616.P9058232743839343390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223620 (A141214 (n + 1)).toNat

end

end A223616.P9058232743839343390

namespace A223616

/-- `A223620(A141214(n+1))` -/
def P9058232743839343390.Spec : Prop :=
  ∀ n, P9058232743839343390.a n = A223616 (n + 1)

end A223616

/-!
# A223617: Number of n X 5 0..1 arrays with rows and columns unimodal.

The programs for A223617, there is no canonical definition to state claims against.
-/

/-! ## A223617.P4682063924024867303

`A223620(A374005(n+1))`
-/

namespace A223617.P4682063924024867303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223620 (A374005 (n + 1)).toNat

end

end A223617.P4682063924024867303

/-!
# A223618: Number of nX6 0..1 arrays with rows and columns unimodal.

The programs for A223618, there is no canonical definition to state claims against.
-/

/-! ## A223618.P13056103126882353224

`A223620(A374007(n+1))`
-/

namespace A223618.P13056103126882353224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223620 (A374007 (n + 1)).toNat

end

end A223618.P13056103126882353224

/-!
# A223619: Number of nX7 0..1 arrays with rows and columns unimodal.

The programs for A223619, there is no canonical definition to state claims against.
-/

/-! ## A223619.P17012267611218980012

`A223620(A374008(n+1))`
-/

namespace A223619.P17012267611218980012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223620 (A374008 (n + 1)).toNat

end

end A223619.P17012267611218980012

/-!
# A223620: T(n,k) = Number of n X k 0..1 arrays with rows and columns unimodal.

The programs for A223620, there is no canonical definition to state claims against.
-/

/-! ## A223620.P7293130793781703578

`A223637(n+1)+A185203(A223012(n+1))`
-/

namespace A223620.P7293130793781703578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223637 (n + 1) + A185203 (A223012 (n + 1)).toNat

end

end A223620.P7293130793781703578

/-! ## A223620.P9791309511639576281

`A223637(A031501(∑[n]))`
-/

namespace A223620.P9791309511639576281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223637 (A031501 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A223620.P9791309511639576281

/-! ## A223620.P11932126091396093762

`A223644(A004885(n+2))`
-/

namespace A223620.P11932126091396093762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223644 (A004885 (n + 2)).toNat

end

end A223620.P11932126091396093762

/-! ## A223620.P6187595832690621105

`A223644(A032557(n+1))`
-/

namespace A223620.P6187595832690621105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223644 (A032557 (n + 1)).toNat

end

end A223620.P6187595832690621105

/-!
# A223621: Number of nX3 0..1 arrays with row sums nondecreasing and column sums unimodal.

The programs for A223621, there is no canonical definition to state claims against.
-/

/-! ## A223621.P16334669480808770830

`A223625(∑[n+3]+1)`
-/

namespace A223621.P16334669480808770830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223625 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223621.P16334669480808770830

/-! ## A223621.P9789759054759899363

`record[A223625(A365231(n+5)-3)]`
-/

namespace A223621.P9789759054759899363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223625 (A365231 (n + 5) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223621.P9789759054759899363

/-!
# A223622: Number of nX4 0..1 arrays with row sums nondecreasing and column sums unimodal.

The programs for A223622, there is no canonical definition to state claims against.
-/

/-! ## A223622.P6648105266399470232

`A223625(A141214(n+1))`
-/

namespace A223622.P6648105266399470232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223625 (A141214 (n + 1)).toNat

end

end A223622.P6648105266399470232

/-!
# A223623: Number of nX5 0..1 arrays with row sums nondecreasing and column sums unimodal.

The programs for A223623, there is no canonical definition to state claims against.
-/

/-! ## A223623.P16419187100278023507

`A223625(∑[n+5]+6)`
-/

namespace A223623.P16419187100278023507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223625 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A223623.P16419187100278023507

/-!
# A223624: Number of n X 6 0..1 arrays with row sums nondecreasing and column sums unimodal.

The programs for A223624, there is no canonical definition to state claims against.
-/

/-! ## A223624.P3662876905393626568

`A223625(A052905(n+3))`
-/

namespace A223624.P3662876905393626568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223625 (A052905 (n + 3)).toNat

end

end A223624.P3662876905393626568

/-!
# A223626: Number of 2Xn 0..1 arrays with row sums nondecreasing and column sums unimodal.

The programs for A223626, there is no canonical definition to state claims against.
-/

/-! ## A223626.P12160887376867485454

`A223625(∑[n+1]+2)`
-/

namespace A223626.P12160887376867485454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223625 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223626.P12160887376867485454

/-!
# A223627: Number of 3Xn 0..1 arrays with row sums nondecreasing and column sums unimodal.

The programs for A223627, there is no canonical definition to state claims against.
-/

/-! ## A223627.P10046687462189492854

`A223625(∑[n+2]+4)`
-/

namespace A223627.P10046687462189492854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223625 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223627.P10046687462189492854

/-!
# A223628: Number of 4Xn 0..1 arrays with row sums nondecreasing and column sums unimodal.

The programs for A223628, there is no canonical definition to state claims against.
-/

/-! ## A223628.P3102923676998104236

`A223625(∑[n+3]+7)`
-/

namespace A223628.P3102923676998104236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223625 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A223628.P3102923676998104236

/-!
# A223629: Number of 5Xn 0..1 arrays with row sums nondecreasing and column sums unimodal.

The programs for A223629, there is no canonical definition to state claims against.
-/

/-! ## A223629.P8748674018421224735

`A223625(A167499(n+3))`
-/

namespace A223629.P8748674018421224735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223625 (A167499 (n + 3)).toNat

end

end A223629.P8748674018421224735

/-!
# A223630: Number of 6Xn 0..1 arrays with row sums nondecreasing and column sums unimodal.

The programs for A223630, there is no canonical definition to state claims against.
-/

/-! ## A223630.P8225083301517077969

`A223625(A056115(n)+21)`
-/

namespace A223630.P8225083301517077969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223625 (A056115 n + 21).toNat

end

end A223630.P8225083301517077969

/-!
# A223631: Number of n X n 0..1 arrays with rows, antidiagonals and columns unimodal.

The programs for A223631, there is no canonical definition to state claims against.
-/

/-! ## A223631.P8486191307293011381

`A223637(∑[4*n]+1)`
-/

namespace A223631.P8486191307293011381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223637 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223631.P8486191307293011381

/-! ## A223631.P3542602139581388956

`record[gcd(abs(round(sqrt(2*(n+1)))²-(2*n+1)), A223637(n+1))]`
-/

namespace A223631.P3542602139581388956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd |SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)| (A223637 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223631.P3542602139581388956

/-! ## A223631.P2960825628895298334

`record[A223637(Δ[A235355(n)])]`
-/

namespace A223631.P2960825628895298334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223637 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223631.P2960825628895298334

/-! ## A223631.P2328615891040822611

`record[A223637(A272267(n+1))]`
-/

namespace A223631.P2328615891040822611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223637 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223631.P2328615891040822611

/-! ## A223631.P3587571957216622840

`record[A223637(A330613(n+1))]`
-/

namespace A223631.P3587571957216622840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223637 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223631.P3587571957216622840

/-!
# A223632: Number of n X 3 0..1 arrays with rows, antidiagonals and columns unimodal.

The programs for A223632, the canonical program `A223632.P17644367188917755630` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223632 has offset 1).

The definition of A223632 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223632.P17644367188917755630

`ogf((7+33x^2-18x^3+29x^4-6x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A223632

/-- `ogf((7+33x^2-18x^3+29x^4-6x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P17644367188917755630.Spec : Prop :=
  ∀ n, P17644367188917755630.a n = A223632 (n + 1)

theorem P17644367188917755630.correct : P17644367188917755630.Spec := by
  intro n
  simp only [A223632, Nat.add_sub_cancel]

end A223632

/-! ## A223632.P1036889567306648143

`A223637(∑[n+2]+4)`
-/

namespace A223632.P1036889567306648143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223637 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223632.P1036889567306648143

namespace A223632

/-- `A223637(∑[n+2]+4)` -/
def P1036889567306648143.Spec : Prop :=
  ∀ n, P1036889567306648143.a n = A223632 (n + 1)

end A223632

/-! ## A223632.P9647407004895427957

`record[A223637(n+4)/A213118(n+1)]`
-/

namespace A223632.P9647407004895427957
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223637 (n + 4) : ℚ) / (A213118 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223632.P9647407004895427957

namespace A223632

/-- `record[A223637(n+4)/A213118(n+1)]` -/
def P9647407004895427957.Spec : Prop :=
  ∀ n, P9647407004895427957.a n = (A223632 (n + 1) : ℚ)

end A223632

/-!
# A223633: Number of n X 4 0..1 arrays with rows, antidiagonals and columns unimodal.

The programs for A223633, the canonical program `A223633.P10415433183899451409` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223633 has offset 1).

The definition of A223633 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223633.P10415433183899451409

`ogf((11+22x+108x^2-65x^3+249x^4-74x^5+92x^6+18x^7+9x^8-11x^9+x^10)/(1-9x+36x^2-84x^3+126x^4-126x^5+84x^6-36x^7+9x^8-x^9))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A223633

/-- `ogf((11+22x+108x^2-65x^3+249x^4-74x^5+92x^6+18x^7+9x^8-11x^9+x^10)/(1-9x+36x^2-84x^3+126x^4-126x^5+84x^6-36x^7+9x^8-x^9))` -/
def P10415433183899451409.Spec : Prop :=
  ∀ n, P10415433183899451409.a n = A223633 (n + 1)

theorem P10415433183899451409.correct : P10415433183899451409.Spec := by
  intro n
  simp only [A223633, Nat.add_sub_cancel]

end A223633

/-! ## A223633.P14787189945347647151

`A223637(∑[n+3]+7)`
-/

namespace A223633.P14787189945347647151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223637 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A223633.P14787189945347647151

namespace A223633

/-- `A223637(∑[n+3]+7)` -/
def P14787189945347647151.Spec : Prop :=
  ∀ n, P14787189945347647151.a n = A223633 (n + 1)

end A223633

/-!
# A223634: Number of nX5 0..1 arrays with rows, antidiagonals and columns unimodal.

The programs for A223634, there is no canonical definition to state claims against.
-/

/-! ## A223634.P15606253304795957454

`A223637(∑[n+4]+11)`
-/

namespace A223634.P15606253304795957454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223637 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A223634.P15606253304795957454

/-!
# A223635: Number of nX6 0..1 arrays with rows, antidiagonals and columns unimodal.

The programs for A223635, there is no canonical definition to state claims against.
-/

/-! ## A223635.P15663779737368820164

`A223637(∑[n+5]+16)`
-/

namespace A223635.P15663779737368820164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223637 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A223635.P15663779737368820164

/-!
# A223636: Number of nX7 0..1 arrays with rows, antidiagonals and columns unimodal.

The programs for A223636, there is no canonical definition to state claims against.
-/

/-! ## A223636.P9802600417580788866

`A223637(A374008(n+1))`
-/

namespace A223636.P9802600417580788866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223637 (A374008 (n + 1)).toNat

end

end A223636.P9802600417580788866

/-!
# A223637: T(n,k)=Number of nXk 0..1 arrays with rows, antidiagonals and columns unimodal.

The programs for A223637, there is no canonical definition to state claims against.
-/

/-! ## A223637.P3060594641398598583

`A223644(n+1)+A185203(A124816(3*n+4))`
-/

namespace A223637.P3060594641398598583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223644 (n + 1) + A185203 (A124816 (3 * n + 4)).toNat

end

end A223637.P3060594641398598583

/-! ## A223637.P6904780822064763120

`A223644(n+1)+A185203(A223012(n+1))`
-/

namespace A223637.P6904780822064763120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223644 (n + 1) + A185203 (A223012 (n + 1)).toNat

end

end A223637.P6904780822064763120

/-!
# A223638: Number of n X n 0..1 arrays with rows, columns, diagonals and antidiagonals unimodal.

The programs for A223638, there is no canonical definition to state claims against.
-/

/-! ## A223638.P9443944706029108444

`A223644(∑[4*n]+1)`
-/

namespace A223638.P9443944706029108444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223644 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223638.P9443944706029108444

/-! ## A223638.P9537340998458029495

`record[A223644(A272267(n+1))]`
-/

namespace A223638.P9537340998458029495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223644 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223638.P9537340998458029495

/-! ## A223638.P14102131167248682475

`record[A223644(A330613(n+1))]`
-/

namespace A223638.P14102131167248682475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223644 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223638.P14102131167248682475

/-! ## A223638.P9660146569180495829

`record[A003982(n)*A223644(n+1)]`
-/

namespace A223638.P9660146569180495829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A223644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223638.P9660146569180495829

/-!
# A223639: Number of n X 3 0..1 arrays with rows, columns, diagonals and antidiagonals unimodal.

The programs for A223639, the canonical program `A223639.P6064572698041313301` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223639 has offset 1).

The definition of A223639 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223639.P6064572698041313301

`ogf((7+22x^2-16x^3+40x^4-10x^5+3x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A223639

/-- `ogf((7+22x^2-16x^3+40x^4-10x^5+3x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P6064572698041313301.Spec : Prop :=
  ∀ n, P6064572698041313301.a n = A223639 (n + 1)

theorem P6064572698041313301.correct : P6064572698041313301.Spec := by
  intro n
  simp only [A223639, Nat.add_sub_cancel]

end A223639

/-! ## A223639.P10145294275389055144

`A223644(∑[n+2]+4)`
-/

namespace A223639.P10145294275389055144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223644 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223639.P10145294275389055144

namespace A223639

/-- `A223644(∑[n+2]+4)` -/
def P10145294275389055144.Spec : Prop :=
  ∀ n, P10145294275389055144.a n = A223639 (n + 1)

end A223639

/-! ## A223639.P9665777194564573230

`record[A223644(n+4)/A123967(n)]`
-/

namespace A223639.P9665777194564573230
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223644 (n + 4) : ℚ) / (A123967 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223639.P9665777194564573230

namespace A223639

/-- `record[A223644(n+4)/A123967(n)]` -/
def P9665777194564573230.Spec : Prop :=
  ∀ n, P9665777194564573230.a n = (A223639 (n + 1) : ℚ)

end A223639

/-!
# A223640: Number of n X 4 0..1 arrays with rows, columns, diagonals and antidiagonals unimodal.

The programs for A223640, the canonical program `A223640.P9264041573738351229` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223640 has offset 1).

The definition of A223640 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223640.P9264041573738351229

`ogf((11+22x+33x^2-140x^3+508x^4-314x^5-17x^6+432x^7-233x^8+28x^9+56x^10-28x^11+2x^12)/(1-9x+36x^2-84x^3+126x^4-126x^5+84x^6-36x^7+9x^8-x^9))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A223640

/-- `ogf((11+22x+33x^2-140x^3+508x^4-314x^5-17x^6+432x^7-233x^8+28x^9+56x^10-28x^11+2x^12)/(1-9x+36x^2-84x^3+126x^4-126x^5+84x^6-36x^7+9x^8-x^9))` -/
def P9264041573738351229.Spec : Prop :=
  ∀ n, P9264041573738351229.a n = A223640 (n + 1)

theorem P9264041573738351229.correct : P9264041573738351229.Spec := by
  intro n
  simp only [A223640, Nat.add_sub_cancel]

end A223640

/-! ## A223640.P6765593010351910470

`A223644(∑[n+3]+7)`
-/

namespace A223640.P6765593010351910470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223644 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A223640.P6765593010351910470

namespace A223640

/-- `A223644(∑[n+3]+7)` -/
def P6765593010351910470.Spec : Prop :=
  ∀ n, P6765593010351910470.a n = A223640 (n + 1)

end A223640

/-!
# A223641: Number of nX5 0..1 arrays with rows, columns, diagonals and antidiagonals unimodal.

The programs for A223641, there is no canonical definition to state claims against.
-/

/-! ## A223641.P8922068424991830905

`A223644(∑[n+4]+11)`
-/

namespace A223641.P8922068424991830905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223644 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A223641.P8922068424991830905

/-!
# A223642: Number of nX6 0..1 arrays with rows, columns, diagonals and antidiagonals unimodal.

The programs for A223642, there is no canonical definition to state claims against.
-/

/-! ## A223642.P15517119890082829219

`A223644(∑[n+5]+16)`
-/

namespace A223642.P15517119890082829219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223644 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A223642.P15517119890082829219

/-!
# A223643: Number of nX7 0..1 arrays with rows, columns, diagonals and antidiagonals unimodal.

The programs for A223643, there is no canonical definition to state claims against.
-/

/-! ## A223643.P16276401838519898685

`A223644(A167487(n+5))`
-/

namespace A223643.P16276401838519898685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223644 (A167487 (n + 5)).toNat

end

end A223643.P16276401838519898685

/-! ## A223643.P14601235393160414091

`A223644(A374008(n+1))`
-/

namespace A223643.P14601235393160414091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223644 (A374008 (n + 1)).toNat

end

end A223643.P14601235393160414091

/-!
# A223644: T(n,k)=Number of nXk 0..1 arrays with rows, columns, diagonals and antidiagonals unimodal.

The programs for A223644, there is no canonical definition to state claims against.
-/

/-! ## A223644.P12315117579428884547

`A223637(n+1)-A185203(A223012(n+1))`
-/

namespace A223644.P12315117579428884547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223637 (n + 1) - A185203 (A223012 (n + 1)).toNat

end

end A223644.P12315117579428884547

/-!
# A223645: Number of (n+2)X1 0..1 arrays with all rows having a nonnegative second derivative, and all and columns having a positive second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223645, there is no canonical definition to state claims against.
-/

/-! ## A223645.P1525029792369346298

`2^(n+3)-A223220(n+3)`
-/

namespace A223645.P1525029792369346298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 3) : ℤ) - A223220 (n + 3)

end

end A223645.P1525029792369346298

/-! ## A223645.P17038444140713314350

`A011782(n+4)%A223220(n+3)`
-/

namespace A223645.P17038444140713314350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011782 (n + 4)) (A223220 (n + 3))

end

end A223645.P17038444140713314350

/-! ## A223645.P13866861817632734629

`(A000079(n+2)+A000079(n+2))%A223220(n+3)`
-/

namespace A223645.P13866861817632734629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (n + 2) + A000079 (n + 2)) (A223220 (n + 3))

end

end A223645.P13866861817632734629

/-! ## A223645.P1145224562442117610

`sqrt(A223646(n+1))`
-/

namespace A223645.P1145224562442117610
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A223646 (n + 1) : ℝ)

end

end A223645.P1145224562442117610

/-! ## A223645.P892239866435927744

`A223652(∑[n+1])`
-/

namespace A223645.P892239866435927744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223652 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A223645.P892239866435927744

/-!
# A223646: Number of (n+2)X2 0..1 arrays with all rows having a nonnegative second derivative, and all and columns having a positive second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223646, there is no canonical definition to state claims against.
-/

/-! ## A223646.P13676408033889829676

`A223645(n+1)²`
-/

namespace A223646.P13676408033889829676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223645 (n + 1) ^ 2

end

end A223646.P13676408033889829676

/-! ## A223646.P17130152574118892498

`(2^(n+3)-A223220(n+3))²`
-/

namespace A223646.P17130152574118892498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 3) : ℤ) - A223220 (n + 3)) ^ 2

end

end A223646.P17130152574118892498

/-! ## A223646.P587585051667438725

`(2^(n+3)-A223220(n+3))*A223645(n+1)`
-/

namespace A223646.P587585051667438725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 3) : ℤ) - A223220 (n + 3)) * A223645 (n + 1)

end

end A223646.P587585051667438725

/-! ## A223646.P5905873900871403074

`A223652(∑[n+1])²`
-/

namespace A223646.P5905873900871403074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223652 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A223646.P5905873900871403074

/-! ## A223646.P8617023993712195709

`A223652(∑[n+2])`
-/

namespace A223646.P8617023993712195709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223652 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A223646.P8617023993712195709

/-!
# A223647: Number of (n+2)X3 0..1 arrays with all rows having a nonnegative second derivative, and all and columns having a positive second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223647, there is no canonical definition to state claims against.
-/

/-! ## A223647.P12109442418367445403

`A223652(∑[n+3]+1)`
-/

namespace A223647.P12109442418367445403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223652 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223647.P12109442418367445403

/-!
# A223648: Number of (n+2)X4 0..1 arrays with all rows having a nonnegative second derivative, and all and columns having a positive second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223648, there is no canonical definition to state claims against.
-/

/-! ## A223648.P12041365669345501130

`A223652(∑[n+4]+3)`
-/

namespace A223648.P12041365669345501130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223652 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A223648.P12041365669345501130

/-!
# A223649: Number of (n+2)X5 0..1 arrays with all rows having a nonnegative second derivative, and all and columns having a positive second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223649, there is no canonical definition to state claims against.
-/

/-! ## A223649.P11539057075720871113

`A223652(Δ[A264443(n)])`
-/

namespace A223649.P11539057075720871113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223652 (f1 (n + 1) - f1 n).toNat

end

end A223649.P11539057075720871113

/-!
# A223650: Number of (n+2)X6 0..1 arrays with all rows having a nonnegative second derivative, and all and columns having a positive second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223650, there is no canonical definition to state claims against.
-/

/-! ## A223650.P15086573026521690740

`A223652(A052905(n+3))`
-/

namespace A223650.P15086573026521690740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223652 (A052905 (n + 3)).toNat

end

end A223650.P15086573026521690740

/-!
# A223651: Number of (n+2)X7 0..1 arrays with all rows having a nonnegative second derivative, and all and columns having a positive second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223651, there is no canonical definition to state claims against.
-/

/-! ## A223651.P16034349643573790468

`A223652(A055999(n+4))`
-/

namespace A223651.P16034349643573790468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223652 (A055999 (n + 4)).toNat

end

end A223651.P16034349643573790468

/-!
# A223653: Number of 3Xn 0..1 arrays with all rows having a nonnegative second derivative, and all and columns having a positive second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223653, there is no canonical definition to state claims against.
-/

/-! ## A223653.P10314797814672693052

`A223652(∑[n]+1)`
-/

namespace A223653.P10314797814672693052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223652 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223653.P10314797814672693052

/-!
# A223654: Number of 4Xn 0..1 arrays with all rows having a nonnegative second derivative, and all and columns having a positive second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223654, there is no canonical definition to state claims against.
-/

/-! ## A223654.P12189373753078957075

`A223652(∑[n+1]+2)`
-/

namespace A223654.P12189373753078957075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223652 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223654.P12189373753078957075

/-! ## A223654.P12993444187906614530

`record[A167374(n)*A223652(n+3)]`
-/

namespace A223654.P12993444187906614530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 n * A223652 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223654.P12993444187906614530

/-! ## A223654.P16587366857708236285

`record[A223652(n+3)/A030526(n+1)]`
-/

namespace A223654.P16587366857708236285
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223652 (n + 3) : ℚ) / (A030526 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223654.P16587366857708236285

/-! ## A223654.P6019089976814249436

`record[A223652(n+3)/A124574(n+1)]`
-/

namespace A223654.P6019089976814249436
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223652 (n + 3) : ℚ) / (A124574 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223654.P6019089976814249436

/-!
# A223655: Number of 5 X n 0..1 arrays with all rows having a nonnegative second derivative, and all and columns having a positive second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223655, there is no canonical definition to state claims against.
-/

/-! ## A223655.P2895238717952462506

`A223652(∑[n+2]+4)`
-/

namespace A223655.P2895238717952462506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223652 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223655.P2895238717952462506

/-!
# A223656: Number of 6Xn 0..1 arrays with all rows having a nonnegative second derivative, and all and columns having a positive second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223656, there is no canonical definition to state claims against.
-/

/-! ## A223656.P16859009390019396617

`A223652(∑[n+3]+7)`
-/

namespace A223656.P16859009390019396617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223652 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A223656.P16859009390019396617

/-!
# A223657: Number of 7Xn 0..1 arrays with all rows having a nonnegative second derivative, and all and columns having a positive second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223657, there is no canonical definition to state claims against.
-/

/-! ## A223657.P8155368340481731685

`A223652(A167499(n+3))`
-/

namespace A223657.P8155368340481731685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223652 (A167499 (n + 3)).toNat

end

end A223657.P8155368340481731685

/-!
# A223658: Number of n X n 0..3 arrays with row sums unimodal and column sums inverted unimodal.

The programs for A223658, there is no canonical definition to state claims against.
-/

/-! ## A223658.P11817558393448670198

`A223663(∑[4*n]+1)`
-/

namespace A223658.P11817558393448670198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223663 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223658.P11817558393448670198

/-!
# A223659: Number of unimodal maps [1..n]->[0..3].

The programs for A223659, the canonical program `A223659.P8780444890061114934` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223659 has offset 0).

The definition of A223659 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223659.P6386086402658481436

`(C(n+6, 6)+a(n-1))/2` with `a(0)=1`
-/

namespace A223659.P6386086402658481436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((Nat.choose (n + 6) 6 : ℚ) + a (n - 1)) / 2

end

end A223659.P6386086402658481436

namespace A223659

/-- `(C(n+6, 6)+a(n-1))/2` -/
def P6386086402658481436.Spec : Prop :=
  ∀ n, P6386086402658481436.a n = (A223659 n : ℚ)

end A223659

/-! ## A223659.P8780444890061114934

`ogf((1-3x+9x^2-13x^3+11x^4-5x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A223659

/-- `ogf((1-3x+9x^2-13x^3+11x^4-5x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P8780444890061114934.Spec : Prop :=
  ∀ n, P8780444890061114934.a n = A223659 n

theorem P8780444890061114934.correct : P8780444890061114934.Spec := by
  intro n
  simp only [A223659]

end A223659

/-! ## A223659.P5351616603865460080

`1+n*(n+1)*(n^4+14*n^3+n²*101+n*304+660)/720`
-/

namespace A223659.P5351616603865460080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + (n : ℚ) * ((n + 1 : ℚ) * ((n ^ 4 + 14 * n ^ 3 + n ^ 2 * 101 + n * 304 + 660 : ℚ) / 720))

end

end A223659.P5351616603865460080

namespace A223659

/-- `1+n*(n+1)*(n^4+14*n^3+n²*101+n*304+660)/720` -/
def P5351616603865460080.Spec : Prop :=
  ∀ n, P5351616603865460080.a n = (A223659 n : ℚ)

end A223659

/-! ## A223659.P11070349253865172658

`∑[∑[A223718(n)-A185017(3*n+4)]]`
-/

namespace A223659.P11070349253865172658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223718 n - A185017 (3 * n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A223659.P11070349253865172658

namespace A223659

/-- `∑[∑[A223718(n)-A185017(3*n+4)]]` -/
def P11070349253865172658.Spec : Prop :=
  ∀ n, P11070349253865172658.a n = A223659 n

end A223659

/-! ## A223659.P10318734445180729502

`A210219(∑[n+3])`
-/

namespace A223659.P10318734445180729502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210219 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A223659.P10318734445180729502

namespace A223659

/-- `A210219(∑[n+3])` -/
def P10318734445180729502.Spec : Prop :=
  ∀ n, P10318734445180729502.a n = A223659 n

end A223659

/-! ## A223659.P5080899892429097208

`A071922(A155212(n)+4)`
-/

namespace A223659.P5080899892429097208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071922 (A155212 n + 4).toNat

end

end A223659.P5080899892429097208

namespace A223659

/-- `A071922(A155212(n)+4)` -/
def P5080899892429097208.Spec : Prop :=
  ∀ n, P5080899892429097208.a n = A223659 n

end A223659

/-! ## A223659.P15925376981373553107

`record[A131054(A155212(n))]`
-/

namespace A223659.P15925376981373553107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131054 (A155212 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223659.P15925376981373553107

namespace A223659

/-- `record[A131054(A155212(n))]` -/
def P15925376981373553107.Spec : Prop :=
  ∀ n, P15925376981373553107.a n = A223659 n

end A223659

/-!
# A223660: Number of nX2 0..3 arrays with row sums unimodal and column sums inverted unimodal.

The programs for A223660, there is no canonical definition to state claims against.
-/

/-! ## A223660.P14718375185315351883

`A223663(∑[n+1]+2)`
-/

namespace A223660.P14718375185315351883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223663 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223660.P14718375185315351883

/-! ## A223660.P7157506616317857120

`A224113(∑[n+1]+2)`
-/

namespace A223660.P7157506616317857120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224113 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223660.P7157506616317857120

/-! ## A223660.P16909367917693886723

`record[A224113(A133263(val(n+1, 2)+1))]`
-/

namespace A223660.P16909367917693886723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224113 (A133263 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223660.P16909367917693886723

/-!
# A223661: Number of nX3 0..3 arrays with row sums unimodal and column sums inverted unimodal.

The programs for A223661, there is no canonical definition to state claims against.
-/

/-! ## A223661.P7919097207680715190

`A223663(∑[n+2]+4)`
-/

namespace A223661.P7919097207680715190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223663 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223661.P7919097207680715190

/-!
# A223662: Number of nX4 0..3 arrays with row sums unimodal and column sums inverted unimodal.

The programs for A223662, there is no canonical definition to state claims against.
-/

/-! ## A223662.P10554345908447464815

`A223663(∑[n+3]+7)`
-/

namespace A223662.P10554345908447464815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223663 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A223662.P10554345908447464815

/-!
# A223664: Number of n X n 0..1 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223664, there is no canonical definition to state claims against.
-/

/-! ## A223664.P1912119660368498420

`A223669(∑[4*n]+1)`
-/

namespace A223664.P1912119660368498420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223664.P1912119660368498420

/-! ## A223664.P1133835304350485176

`record[A223669(Δ[A235355(n)])]`
-/

namespace A223664.P1133835304350485176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223664.P1133835304350485176

/-! ## A223664.P7527781355513233429

`record[A223669(record[A326657(n)])]`
-/

namespace A223664.P7527781355513233429
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326657 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223664.P7527781355513233429

/-! ## A223664.P3330817879002132420

`record[A223669(A178218(n+1))]`
-/

namespace A223664.P3330817879002132420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (A178218 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223664.P3330817879002132420

/-!
# A223665: Number of nX4 0..1 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223665, there is no canonical definition to state claims against.
-/

/-! ## A223665.P4228181307696699943

`A223669(∑[n+3]+n+4)`
-/

namespace A223665.P4228181307696699943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 4))

end

end A223665.P4228181307696699943

/-!
# A223666: Number of nX5 0..1 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223666, there is no canonical definition to state claims against.
-/

/-! ## A223666.P3901723946960110498

`A223669(∑[n+5]+6)`
-/

namespace A223666.P3901723946960110498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A223666.P3901723946960110498

/-!
# A223667: Number of nX6 0..1 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223667, there is no canonical definition to state claims against.
-/

/-! ## A223667.P7403649495823234113

`A223669(A052905(n+3))`
-/

namespace A223667.P7403649495823234113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (A052905 (n + 3)).toNat

end

end A223667.P7403649495823234113

/-!
# A223668: Number of nX7 0..1 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223668, there is no canonical definition to state claims against.
-/

/-! ## A223668.P15163874616317093800

`A223669(A055999(n+4))`
-/

namespace A223668.P15163874616317093800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (A055999 (n + 4)).toNat

end

end A223668.P15163874616317093800

/-!
# A223670: Number of 3 X n 0..1 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223670, the canonical program `A223670.P12786203746219474248` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223670 has offset 1).

The definition of A223670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223670.P12786203746219474248

`ogf((8+8x+12x^2-32x^3+63x^4-16x^5+5x^6-2x^7)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A223670

/-- `ogf((8+8x+12x^2-32x^3+63x^4-16x^5+5x^6-2x^7)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P12786203746219474248.Spec : Prop :=
  ∀ n, P12786203746219474248.a n = A223670 (n + 1)

theorem P12786203746219474248.correct : P12786203746219474248.Spec := by
  intro n
  simp only [A223670, Nat.add_sub_cancel]

end A223670

/-! ## A223670.P3546909090518369191

`A223669(∑[n+2]+4)`
-/

namespace A223670.P3546909090518369191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223670.P3546909090518369191

namespace A223670

/-- `A223669(∑[n+2]+4)` -/
def P3546909090518369191.Spec : Prop :=
  ∀ n, P3546909090518369191.a n = A223670 (n + 1)

end A223670

/-!
# A223671: Number of 4Xn 0..1 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223671, there is no canonical definition to state claims against.
-/

/-! ## A223671.P16372092829907253351

`A223669(∑[n+3]+7)`
-/

namespace A223671.P16372092829907253351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A223671.P16372092829907253351

/-! ## A223671.P6592126095442461573

`record[A223669(∑[A031285(n)])]`
-/

namespace A223671.P6592126095442461573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223671.P6592126095442461573

/-! ## A223671.P14389030451825614708

`record[A223669(A145018(n+2))]`
-/

namespace A223671.P14389030451825614708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (A145018 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223671.P14389030451825614708

/-! ## A223671.P14321823612815947708

`record[A223669(A167499(n)-1)]`
-/

namespace A223671.P14321823612815947708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (A167499 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223671.P14321823612815947708

/-! ## A223671.P6652215835636038607

`record[A223669(A167487(n)-3)]`
-/

namespace A223671.P6652215835636038607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (A167487 n - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223671.P6652215835636038607

/-!
# A223672: Number of 5 X n 0..1 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223672, there is no canonical definition to state claims against.
-/

/-! ## A223672.P16465601230199649452

`A223669(∑[n+4]+11)`
-/

namespace A223672.P16465601230199649452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A223672.P16465601230199649452

/-!
# A223673: Number of 6Xn 0..1 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223673, there is no canonical definition to state claims against.
-/

/-! ## A223673.P6089785876670233184

`A223669(∑[n+5]+16)`
-/

namespace A223673.P6089785876670233184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A223673.P6089785876670233184

/-!
# A223674: Number of 7Xn 0..1 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223674, there is no canonical definition to state claims against.
-/

/-! ## A223674.P13562458577368317995

`A223669(A167487(n+5))`
-/

namespace A223674.P13562458577368317995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (A167487 (n + 5)).toNat

end

end A223674.P13562458577368317995

/-!
# A223675: Number of n X n 0..1 arrays with rows and antidiagonals unimodal.

The programs for A223675, there is no canonical definition to state claims against.
-/

/-! ## A223675.P9497475301233608603

`A223680((n+1)²+n²)`
-/

namespace A223675.P9497475301233608603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 ((n + 1) ^ 2 + n ^ 2)

end

end A223675.P9497475301233608603

/-! ## A223675.P17547930718383056162

`record[A003982(n)*A223680(n+1)]`
-/

namespace A223675.P17547930718383056162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A223680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223675.P17547930718383056162

/-! ## A223675.P4705981403536677247

`record[gcd(A114327(n), A223680(n+1))]`
-/

namespace A223675.P4705981403536677247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A223680 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223675.P4705981403536677247

/-!
# A223676: Number of nX4 0..1 arrays with rows and antidiagonals unimodal.

The programs for A223676, there is no canonical definition to state claims against.
-/

/-! ## A223676.P3712090676798001145

`A223680(∑[n+4]+3)`
-/

namespace A223676.P3712090676798001145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A223676.P3712090676798001145

/-!
# A223677: Number of nX5 0..1 arrays with rows and antidiagonals unimodal.

The programs for A223677, there is no canonical definition to state claims against.
-/

/-! ## A223677.P18393052558617692355

`A223680(Δ[A264443(n)])`
-/

namespace A223677.P18393052558617692355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (f1 (n + 1) - f1 n).toNat

end

end A223677.P18393052558617692355

/-!
# A223678: Number of nX6 0..1 arrays with rows and antidiagonals unimodal.

The programs for A223678, there is no canonical definition to state claims against.
-/

/-! ## A223678.P4295226376816437796

`A223680(A052905(n+3))`
-/

namespace A223678.P4295226376816437796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (A052905 (n + 3)).toNat

end

end A223678.P4295226376816437796

/-!
# A223679: Number of nX7 0..1 arrays with rows and antidiagonals unimodal.

The programs for A223679, there is no canonical definition to state claims against.
-/

/-! ## A223679.P17164523144438623843

`A223680(A055999(n+4))`
-/

namespace A223679.P17164523144438623843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (A055999 (n + 4)).toNat

end

end A223679.P17164523144438623843

/-!
# A223681: Number of 3 X n 0..1 arrays with rows and antidiagonals unimodal.

The programs for A223681, the canonical program `A223681.P10757438609770355679` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223681 has offset 1).

The definition of A223681 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223681.P10757438609770355679

`ogf((8+8x+36x^2-30x^3+27x^4-4x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A223681

/-- `ogf((8+8x+36x^2-30x^3+27x^4-4x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P10757438609770355679.Spec : Prop :=
  ∀ n, P10757438609770355679.a n = A223681 (n + 1)

theorem P10757438609770355679.correct : P10757438609770355679.Spec := by
  intro n
  simp only [A223681, Nat.add_sub_cancel]

end A223681

/-! ## A223681.P13712874479619402503

`A223680(∑[n+2]+4)`
-/

namespace A223681.P13712874479619402503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223681.P13712874479619402503

namespace A223681

/-- `A223680(∑[n+2]+4)` -/
def P13712874479619402503.Spec : Prop :=
  ∀ n, P13712874479619402503.a n = A223681 (n + 1)

end A223681

/-!
# A223682: Number of 4 X n 0..1 arrays with rows and antidiagonals unimodal.

The programs for A223682, the canonical program `A223682.P3799456975570104334` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223682 has offset 1).

The definition of A223682 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223682.P3799456975570104334

`ogf((16+112x+304x^2-594x^3+775x^4-442x^5+216x^6-36x^7+9x^8)/(1-9x+36x^2-84x^3+126x^4-126x^5+84x^6-36x^7+9x^8-x^9))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A223682

/-- `ogf((16+112x+304x^2-594x^3+775x^4-442x^5+216x^6-36x^7+9x^8)/(1-9x+36x^2-84x^3+126x^4-126x^5+84x^6-36x^7+9x^8-x^9))` -/
def P3799456975570104334.Spec : Prop :=
  ∀ n, P3799456975570104334.a n = A223682 (n + 1)

theorem P3799456975570104334.correct : P3799456975570104334.Spec := by
  intro n
  simp only [A223682, Nat.add_sub_cancel]

end A223682

/-! ## A223682.P3504081092730578219

`A223680(A141214(n)+7)`
-/

namespace A223682.P3504081092730578219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (A141214 n + 7).toNat

end

end A223682.P3504081092730578219

namespace A223682

/-- `A223680(A141214(n)+7)` -/
def P3504081092730578219.Spec : Prop :=
  ∀ n, P3504081092730578219.a n = A223682 (n + 1)

end A223682

/-! ## A223682.P13128372367297676420

`record[A223680(A167499(n)-1)]`
-/

namespace A223682.P13128372367297676420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (A167499 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223682.P13128372367297676420

namespace A223682

/-- `record[A223680(A167499(n)-1)]` -/
def P13128372367297676420.Spec : Prop :=
  ∀ n, P13128372367297676420.a n = A223682 (n + 1)

end A223682

/-! ## A223682.P3532120135845423727

`record[A223680(A008805(n)+4)]`
-/

namespace A223682.P3532120135845423727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (A008805 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223682.P3532120135845423727

namespace A223682

/-- `record[A223680(A008805(n)+4)]` -/
def P3532120135845423727.Spec : Prop :=
  ∀ n, P3532120135845423727.a n = A223682 (n + 1)

end A223682

/-!
# A223683: Number of 5Xn 0..1 arrays with rows and antidiagonals unimodal.

The programs for A223683, there is no canonical definition to state claims against.
-/

/-! ## A223683.P7340810646498470671

`A223680(A167499(n+3))`
-/

namespace A223683.P7340810646498470671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (A167499 (n + 3)).toNat

end

end A223683.P7340810646498470671

/-!
# A223684: Number of 6Xn 0..1 arrays with rows and antidiagonals unimodal.

The programs for A223684, there is no canonical definition to state claims against.
-/

/-! ## A223684.P2594133735402705814

`A223680(A166136(n+4))`
-/

namespace A223684.P2594133735402705814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (A166136 (n + 4)).toNat

end

end A223684.P2594133735402705814

/-!
# A223685: Number of 7Xn 0..1 arrays with rows and antidiagonals unimodal.

The programs for A223685, there is no canonical definition to state claims against.
-/

/-! ## A223685.P2843182260517477167

`A223680(A167487(n+5))`
-/

namespace A223685.P2843182260517477167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (A167487 (n + 5)).toNat

end

end A223685.P2843182260517477167

/-!
# A223686: Petersen graph (8,2) coloring a rectangular array: number of n X n 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal or antidiagonal neighbor moves along an edge of this graph.

The programs for A223686, there is no canonical definition to state claims against.
-/

/-! ## A223686.P3833337352466803430

`A223692((n+1)²+n²)`
-/

namespace A223686.P3833337352466803430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 ((n + 1) ^ 2 + n ^ 2)

end

end A223686.P3833337352466803430

/-!
# A223687: Petersen graph (8,2) coloring a rectangular array: number of n X 3 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal or antidiagonal neighbor moves along an edge of this graph.

The programs for A223687, there is no canonical definition to state claims against.
-/

/-! ## A223687.P4151998083230938995

`A223692(∑[n+3]+1)`
-/

namespace A223687.P4151998083230938995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223687.P4151998083230938995

/-! ## A223687.P17084065083200868471

`record[A223692(A198464(n+1))]`
-/

namespace A223687.P17084065083200868471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223687.P17084065083200868471

/-!
# A223688: Petersen graph (8,2) coloring a rectangular array: number of n X 4 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal or antidiagonal neighbor moves along an edge of this graph.

The programs for A223688, there is no canonical definition to state claims against.
-/

/-! ## A223688.P6830473722182016642

`A223692(A141214(n+1))`
-/

namespace A223688.P6830473722182016642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (A141214 (n + 1)).toNat

end

end A223688.P6830473722182016642

/-!
# A223689: Petersen graph (8,2) coloring a rectangular array: number of nX5 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal or antidiagonal neighbor moves along an edge of this graph.

The programs for A223689, there is no canonical definition to state claims against.
-/

/-! ## A223689.P17834707171312482048

`A223692(Δ[A264443(n)])`
-/

namespace A223689.P17834707171312482048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (f1 (n + 1) - f1 n).toNat

end

end A223689.P17834707171312482048

/-!
# A223690: Petersen graph (8,2) coloring a rectangular array: number of nX6 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal or antidiagonal neighbor moves along an edge of this graph.

The programs for A223690, there is no canonical definition to state claims against.
-/

/-! ## A223690.P13394277194058661879

`A223692(A052905(n+3))`
-/

namespace A223690.P13394277194058661879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (A052905 (n + 3)).toNat

end

end A223690.P13394277194058661879

/-!
# A223691: Petersen graph (8,2) coloring a rectangular array: number of nX7 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal or antidiagonal neighbor moves along an edge of this graph.

The programs for A223691, there is no canonical definition to state claims against.
-/

/-! ## A223691.P11110855359112878118

`A223692(Δ[A023551(n+2)])`
-/

namespace A223691.P11110855359112878118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (f1 (n + 1) - f1 n).toNat

end

end A223691.P11110855359112878118

/-!
# A223692: T(n,k)=Petersen graph (8,2) coloring a rectangular array: number of nXk 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal or antidiagonal neighbor moves along an edge of this graph.

The programs for A223692, there is no canonical definition to state claims against.
-/

/-! ## A223692.P15480496862507290171

`A223599(A082284(n)-∑[A119093(2*n+5)]%3)`
-/

namespace A223692.P15480496862507290171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119093 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (A082284 n - Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3).toNat

end

end A223692.P15480496862507290171

/-! ## A223692.P18366548376750336433

`A223599(gcd(A000984(3*n+1), A023095(n+4)))`
-/

namespace A223692.P18366548376750336433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (Int.gcd (A000984 (3 * n + 1)) (A023095 (n + 4)))

end

end A223692.P18366548376750336433

/-!
# A223693: Petersen graph (8,2) coloring a rectangular array: number of 2 X n 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal or antidiagonal neighbor moves along an edge of this graph.

The programs for A223693, there is no canonical definition to state claims against.
-/

/-! ## A223693.P16730404063991257157

`A223692(∑[n+1]+2)`
-/

namespace A223693.P16730404063991257157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223693.P16730404063991257157

/-! ## A223693.P6937302086302956327

`record[A223692(A347629(n+1)+1)]`
-/

namespace A223693.P6937302086302956327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (A347629 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223693.P6937302086302956327

/-! ## A223693.P7939777588684090313

`record[gcd(A223692(n+3), A302728(n+1))]`
-/

namespace A223693.P7939777588684090313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A223692 (n + 3)) (A302728 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223693.P7939777588684090313

/-! ## A223693.P17494954624478763935

`record[A223692(A133263(val(n+1, 2)+1))]`
-/

namespace A223693.P17494954624478763935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (A133263 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223693.P17494954624478763935

/-!
# A223694: Petersen graph (8,2) coloring a rectangular array: number of 3Xn 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal or antidiagonal neighbor moves along an edge of this graph.

The programs for A223694, there is no canonical definition to state claims against.
-/

/-! ## A223694.P13559045703709066645

`A223692(∑[n+2]+4)`
-/

namespace A223694.P13559045703709066645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223694.P13559045703709066645

/-!
# A223695: Petersen graph (8,2) coloring a rectangular array: number of 4Xn 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal or antidiagonal neighbor moves along an edge of this graph.

The programs for A223695, there is no canonical definition to state claims against.
-/

/-! ## A223695.P14191549032604045508

`A223692(A141214(n)+7)`
-/

namespace A223695.P14191549032604045508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (A141214 n + 7).toNat

end

end A223695.P14191549032604045508

/-!
# A223696: Petersen graph (8,2) coloring a rectangular array: number of 5Xn 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal or antidiagonal neighbor moves along an edge of this graph.

The programs for A223696, there is no canonical definition to state claims against.
-/

/-! ## A223696.P14633289334668483464

`A223692(A167499(n+3))`
-/

namespace A223696.P14633289334668483464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (A167499 (n + 3)).toNat

end

end A223696.P14633289334668483464

/-!
# A223697: Petersen graph (8,2) coloring a rectangular array: number of 6Xn 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal or antidiagonal neighbor moves along an edge of this graph.

The programs for A223697, there is no canonical definition to state claims against.
-/

/-! ## A223697.P5039544794904959599

`A223692(A056115(n)+21)`
-/

namespace A223697.P5039544794904959599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (A056115 n + 21).toNat

end

end A223697.P5039544794904959599

/-!
# A223698: Petersen graph (8,2) coloring a rectangular array: number of 7Xn 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal or antidiagonal neighbor moves along an edge of this graph.

The programs for A223698, there is no canonical definition to state claims against.
-/

/-! ## A223698.P1859269901039387067

`A223692(A167487(n+5))`
-/

namespace A223698.P1859269901039387067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (A167487 (n + 5)).toNat

end

end A223698.P1859269901039387067

/-!
# A223699: Least number whose Collatz (3x+1) iteration has its maximum value at position n (counting from 1).

The programs for A223699, there is no canonical definition to state claims against.
-/

/-! ## A223699.P684865541561959293

`fo[A222641(n+1)]+1`
-/

namespace A223699.P684865541561959293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222641 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A223699.P684865541561959293

/-! ## A223699.P17347685942692836105

`A087263(A223700(n+1))`
-/

namespace A223699.P17347685942692836105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087263 (A223700 (n + 1)).toNat

end

end A223699.P17347685942692836105

