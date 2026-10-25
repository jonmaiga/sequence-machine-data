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
import Seq.B000.C010
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

/-!
# A223500: Petersen graph (3,1) coloring a rectangular array: number of nX4 0..5 arrays where 0..5 label nodes of a graph with edges 0,1 0,3 3,5 3,4 1,2 1,4 4,5 2,0 2,5 and every array movement to a horizontal, diagonal or antidiagonal neighbor moves along an edge of this graph, with the array starting at 0.

The programs for A223500, there is no canonical definition to state claims against.
-/

/-! ## A223500.P10549175315277467102

`A223504(A141214(n+1))`
-/

namespace A223500.P10549175315277467102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223504 (A141214 (n + 1)).toNat

end

end A223500.P10549175315277467102

/-! ## A223500.P16218777222483894090

`A223504(A055998(n+2))`
-/

namespace A223500.P16218777222483894090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223504 (A055998 (n + 2)).toNat

end

end A223500.P16218777222483894090

/-! ## A223500.P4178803969331035281

`A223504(A056000(n)+7)`
-/

namespace A223500.P4178803969331035281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223504 (A056000 n + 7).toNat

end

end A223500.P4178803969331035281

/-! ## A223500.P14406140062450442126

`A223504(Δ[A006503(n+1)])`
-/

namespace A223500.P14406140062450442126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223504 (f1 (n + 1) - f1 n).toNat

end

end A223500.P14406140062450442126

/-! ## A223500.P14871101060550240082

`A223504(A052905(n+1)+2)`
-/

namespace A223500.P14871101060550240082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223504 (A052905 (n + 1) + 2).toNat

end

end A223500.P14871101060550240082

/-!
# A223501: Petersen graph (3,1) coloring a rectangular array: number of nX5 0..5 arrays where 0..5 label nodes of a graph with edges 0,1 0,3 3,5 3,4 1,2 1,4 4,5 2,0 2,5 and every array movement to a horizontal, diagonal or antidiagonal neighbor moves along an edge of this graph, with the array starting at 0.

The programs for A223501, there is no canonical definition to state claims against.
-/

/-! ## A223501.P2729005295411965442

`A223504(eq[2, A092921(n)])`
-/

namespace A223501.P2729005295411965442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223504 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223501.P2729005295411965442

/-! ## A223501.P310725434549847354

`A223504(eq[4, A193592(n)])`
-/

namespace A223501.P310725434549847354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223504 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223501.P310725434549847354

/-! ## A223501.P7388823064195990324

`A223504(A052905(n+2)+1)`
-/

namespace A223501.P7388823064195990324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223504 (A052905 (n + 2) + 1).toNat

end

end A223501.P7388823064195990324

/-! ## A223501.P2734836391269468554

`A223504(A055999(n+2)+2)`
-/

namespace A223501.P2734836391269468554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223504 (A055999 (n + 2) + 2).toNat

end

end A223501.P2734836391269468554

/-! ## A223501.P7713171451140771734

`A223504(A141214(n+2)-1)`
-/

namespace A223501.P7713171451140771734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223504 (A141214 (n + 2) - 1).toNat

end

end A223501.P7713171451140771734

/-!
# A223502: Petersen graph (3,1) coloring a rectangular array: number of nX6 0..5 arrays where 0..5 label nodes of a graph with edges 0,1 0,3 3,5 3,4 1,2 1,4 4,5 2,0 2,5 and every array movement to a horizontal, diagonal or antidiagonal neighbor moves along an edge of this graph, with the array starting at 0.

The programs for A223502, there is no canonical definition to state claims against.
-/

/-! ## A223502.P5126322151477065363

`A223504(A052905(n+3))`
-/

namespace A223502.P5126322151477065363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223504 (A052905 (n + 3)).toNat

end

end A223502.P5126322151477065363

/-! ## A223502.P6523919308225980821

`A223504(A056119(n)+16)`
-/

namespace A223502.P6523919308225980821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223504 (A056119 n + 16).toNat

end

end A223502.P6523919308225980821

/-! ## A223502.P14096858829192781886

`A223504(eq[5, A193592(n)])`
-/

namespace A223502.P14096858829192781886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223504 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223502.P14096858829192781886

/-! ## A223502.P10629275098216393826

`A223504(eq[8, A185782(n+1)])`
-/

namespace A223502.P10629275098216393826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223504 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223502.P10629275098216393826

/-! ## A223502.P6602838234844484331

`A223504(eq[8, A243070(n+1)])`
-/

namespace A223502.P6602838234844484331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223504 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223502.P6602838234844484331

/-!
# A223503: Petersen graph (3,1) coloring a rectangular array: number of nX7 0..5 arrays where 0..5 label nodes of a graph with edges 0,1 0,3 3,5 3,4 1,2 1,4 4,5 2,0 2,5 and every array movement to a horizontal, diagonal or antidiagonal neighbor moves along an edge of this graph, with the array starting at 0.

The programs for A223503, there is no canonical definition to state claims against.
-/

/-! ## A223503.P9456839916239364555

`A223504(A055999(n+4))`
-/

namespace A223503.P9456839916239364555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223504 (A055999 (n + 4)).toNat

end

end A223503.P9456839916239364555

/-!
# A223505: Petersen graph (3,1) coloring a rectangular array: number of 2 X n 0..5 arrays where 0..5 label nodes of a graph with edges 0,1 0,3 3,5 3,4 1,2 1,4 4,5 2,0 2,5 and every array movement to a horizontal, diagonal or antidiagonal neighbor moves along an edge of this graph, with the array starting at 0.

The programs for A223505, the canonical program `A223505.P12826786049325004811` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223505 has offset 1).

The definition of A223505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223505.P12826786049325004811

`5*a(n-1)+4*a(n-2)-4*a(n-3)` with `a(0)=6, a(1)=19, a(2)=115, a(3)=631`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A223505

/-- `5*a(n-1)+4*a(n-2)-4*a(n-3)` -/
def P12826786049325004811.Spec : Prop :=
  ∀ n, P12826786049325004811.a n = A223505 (n + 1)

theorem P12826786049325004811.correct : P12826786049325004811.Spec := by
  intro n
  simp only [A223505, Nat.add_sub_cancel]

end A223505

/-! ## A223505.P11399654432629960780

`A223504(∑[n+1]+2)`
-/

namespace A223505.P11399654432629960780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223504 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223505.P11399654432629960780

namespace A223505

/-- `A223504(∑[n+1]+2)` -/
def P11399654432629960780.Spec : Prop :=
  ∀ n, P11399654432629960780.a n = A223505 (n + 1)

end A223505

/-! ## A223505.P2624000558406252066

`or(2, A223504(A133263(n+1)))`
-/

namespace A223505.P2624000558406252066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A223504 (A133263 (n + 1)).toNat)

end

end A223505.P2624000558406252066

namespace A223505

/-- `or(2, A223504(A133263(n+1)))` -/
def P2624000558406252066.Spec : Prop :=
  ∀ n, P2624000558406252066.a n = A223505 (n + 1)

end A223505

/-! ## A223505.P16850491992912387543

`record[gcd(A025581(n), A223504(n+3))]`
-/

namespace A223505.P16850491992912387543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A223504 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223505.P16850491992912387543

namespace A223505

/-- `record[gcd(A025581(n), A223504(n+3))]` -/
def P16850491992912387543.Spec : Prop :=
  ∀ n, (P16850491992912387543.a n : ℤ) = A223505 (n + 1)

end A223505

/-! ## A223505.P3264003531465259776

`lcm(A054977(n), A223504(A133263(n+1)))`
-/

namespace A223505.P3264003531465259776
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A223504 (A133263 (n + 1)).toNat)

end

end A223505.P3264003531465259776

namespace A223505

/-- `lcm(A054977(n), A223504(A133263(n+1)))` -/
def P3264003531465259776.Spec : Prop :=
  ∀ n, (P3264003531465259776.a n : ℤ) = A223505 (n + 1)

end A223505

/-!
# A223506: Petersen graph (3,1) coloring a rectangular array: number of 3 X n 0..5 arrays where 0..5 label nodes of a graph with edges 0,1 0,3 3,5 3,4 1,2 1,4 4,5 2,0 2,5 and every array movement to a horizontal, diagonal or antidiagonal neighbor moves along an edge of this graph, with the array starting at 0.

The programs for A223506, there is no canonical definition to state claims against.
-/

/-! ## A223506.P15247154526485862057

`A223504(∑[n+2]+4)`
-/

namespace A223506.P15247154526485862057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223504 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223506.P15247154526485862057

/-! ## A223506.P6062362154644702451

`lcm((-1)^n, A223504(A167614(n+1)))`
-/

namespace A223506.P6062362154644702451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A223504 (A167614 (n + 1)).toNat)

end

end A223506.P6062362154644702451

/-! ## A223506.P9008607409348498460

`A223504(A167614(n+1))+A185255(n)`
-/

namespace A223506.P9008607409348498460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223504 (A167614 (n + 1)).toNat + A185255 n

end

end A223506.P9008607409348498460

/-! ## A223506.P5390780885471583933

`A223504(A167614(n+1))+A185284(n)`
-/

namespace A223506.P5390780885471583933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223504 (A167614 (n + 1)).toNat + A185284 n

end

end A223506.P5390780885471583933

/-! ## A223506.P910135715460581554

`or(A010873(n), A223504(A167614(n+1)))`
-/

namespace A223506.P910135715460581554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010873 n) (A223504 (A167614 (n + 1)).toNat)

end

end A223506.P910135715460581554

/-!
# A223507: Petersen graph (3,1) coloring a rectangular array: number of 4Xn 0..5 arrays where 0..5 label nodes of a graph with edges 0,1 0,3 3,5 3,4 1,2 1,4 4,5 2,0 2,5 and every array movement to a horizontal, diagonal or antidiagonal neighbor moves along an edge of this graph, with the array starting at 0.

The programs for A223507, there is no canonical definition to state claims against.
-/

/-! ## A223507.P17524353180985246054

`A223504(A141214(n)+7)`
-/

namespace A223507.P17524353180985246054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223504 (A141214 n + 7).toNat

end

end A223507.P17524353180985246054

/-! ## A223507.P10658262296609180537

`A223504(A052905(n)+9)`
-/

namespace A223507.P10658262296609180537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223504 (A052905 n + 9).toNat

end

end A223507.P10658262296609180537

/-! ## A223507.P2607784196443573782

`A223504(A055999(n)+10)`
-/

namespace A223507.P2607784196443573782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223504 (A055999 n + 10).toNat

end

end A223507.P2607784196443573782

/-! ## A223507.P12319168831998097933

`A223504(A167614(n+2)+1)`
-/

namespace A223507.P12319168831998097933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223504 (A167614 (n + 2) + 1).toNat

end

end A223507.P12319168831998097933

/-! ## A223507.P7148276959184503608

`A223504(A166136(n+2)-2)`
-/

namespace A223507.P7148276959184503608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223504 (A166136 (n + 2) - 2).toNat

end

end A223507.P7148276959184503608

/-!
# A223508: Petersen graph (3,1) coloring a rectangular array: number of 5Xn 0..5 arrays where 0..5 label nodes of a graph with edges 0,1 0,3 3,5 3,4 1,2 1,4 4,5 2,0 2,5 and every array movement to a horizontal, diagonal or antidiagonal neighbor moves along an edge of this graph, with the array starting at 0.

The programs for A223508, there is no canonical definition to state claims against.
-/

/-! ## A223508.P9085361395279956431

`A223504(A056000(n)+15)`
-/

namespace A223508.P9085361395279956431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223504 (A056000 n + 15).toNat

end

end A223508.P9085361395279956431

/-! ## A223508.P1021414133031462696

`A223504(eq[7, A066657(n)])`
-/

namespace A223508.P1021414133031462696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223504 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223508.P1021414133031462696

/-! ## A223508.P9503041045737631727

`A223504(A167614(n+3)+2)`
-/

namespace A223508.P9503041045737631727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223504 (A167614 (n + 3) + 2).toNat

end

end A223508.P9503041045737631727

/-! ## A223508.P11622378409571756753

`A223504(A141214(n+1)+8)`
-/

namespace A223508.P11622378409571756753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223504 (A141214 (n + 1) + 8).toNat

end

end A223508.P11622378409571756753

/-! ## A223508.P14662384706395954715

`A223504(A034856(n+3)+7)`
-/

namespace A223508.P14662384706395954715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223504 (A034856 (n + 3) + 7).toNat

end

end A223508.P14662384706395954715

/-!
# A223509: Petersen graph (3,1) coloring a rectangular array: number of 6Xn 0..5 arrays where 0..5 label nodes of a graph with edges 0,1 0,3 3,5 3,4 1,2 1,4 4,5 2,0 2,5 and every array movement to a horizontal, diagonal or antidiagonal neighbor moves along an edge of this graph, with the array starting at 0.

The programs for A223509, there is no canonical definition to state claims against.
-/

/-! ## A223509.P562938251031774848

`A223504(A166136(n+4))`
-/

namespace A223509.P562938251031774848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223504 (A166136 (n + 4)).toNat

end

end A223509.P562938251031774848

/-! ## A223509.P9857287546672065862

`A223504(A000096(n+4)+7)`
-/

namespace A223509.P9857287546672065862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223504 (A000096 (n + 4) + 7).toNat

end

end A223509.P9857287546672065862

/-! ## A223509.P2441257070825413468

`A223504(A141214(n+2)+9)`
-/

namespace A223509.P2441257070825413468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223504 (A141214 (n + 2) + 9).toNat

end

end A223509.P2441257070825413468

/-! ## A223509.P8047396137139595176

`A223504(eq[7, A131818(n+1)])`
-/

namespace A223509.P8047396137139595176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223504 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223509.P8047396137139595176

/-! ## A223509.P3743676507729893831

`A223504(Δ[A006503(n+2)]+9)`
-/

namespace A223509.P3743676507729893831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223504 (f1 (n + 1) - f1 n + 9).toNat

end

end A223509.P3743676507729893831

/-!
# A223510: Petersen graph (3,1) coloring a rectangular array: number of 7Xn 0..5 arrays where 0..5 label nodes of a graph with edges 0,1 0,3 3,5 3,4 1,2 1,4 4,5 2,0 2,5 and every array movement to a horizontal, diagonal or antidiagonal neighbor moves along an edge of this graph, with the array starting at 0.

The programs for A223510, there is no canonical definition to state claims against.
-/

/-! ## A223510.P14529710826118932181

`A223504(eq[8, A131818(n+1)])`
-/

namespace A223510.P14529710826118932181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223504 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223510.P14529710826118932181

/-!
# A223523: Triangle S(n, k) by rows: coefficients of 2^((n-1)/2)*(x^(1/2)*d/dx)^n, where n = 1, 3, 5, ...

The programs for A223523, there is no canonical definition to state claims against.
-/

/-! ## A223523.P10625890855853255212

`abs(A098503(∑[2*n]%comp[∑[n]]))`
-/

namespace A223523.P10625890855853255212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A098503 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)|

end

end A223523.P10625890855853255212

/-! ## A223523.P8540197513687782774

`A223168(lt[0, n-round(sqrt(n))²]-2)`
-/

namespace A223523.P8540197513687782774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223168 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n - 2)

end

end A223523.P8540197513687782774

/-! ## A223523.P5546423778442061561

`A223168(C(comp[∑[n]]-n, 2)+n-1)`
-/

namespace A223523.P5546423778442061561
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223168 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) + ((n : ℤ) - 1)).toNat

end

end A223523.P5546423778442061561

/-! ## A223523.P3789076116080672340

`A223168(C(comp[∑[n]]-n, 2)-n-(1-2*n))`
-/

namespace A223523.P3789076116080672340
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223168 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) - (1 - (2 * n : ℤ))).toNat

end

end A223523.P3789076116080672340

/-! ## A223523.P9386912603543080651

`abs(A098503(A061579(n)))`
-/

namespace A223523.P9386912603543080651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A098503 (A061579 n).toNat|

end

end A223523.P9386912603543080651

/-!
# A223524: Triangle S(n, k) by rows: coefficients of 2^(n/2)*(x^(1/2)*d/dx)^n, where n = 0, 2, 4, 6, ...

The programs for A223524, there is no canonical definition to state claims against.
-/

/-! ## A223524.P13880630606857315896

`2^(n-C(∑[char[∑[n]]], 2))*A176230(n)`
-/

namespace A223524.P13880630606857315896
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) * (A176230 n : ℚ)

end

end A223524.P13880630606857315896

/-! ## A223524.P13461874044548111025

`abs(2^(n-C(∑[char[∑[n]]], 2))*A176231(n))`
-/

namespace A223524.P13461874044548111025
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) * (A176231 n : ℚ)|

end

end A223524.P13461874044548111025

/-! ## A223524.P15143758401056805527

`A223168(comp[2*(n+1)]-(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A223524.P15143758401056805527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223168 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ))).toNat

end

end A223524.P15143758401056805527

/-! ## A223524.P15811253165196555296

`A223168(floor(2/acot(n))-(1-C(∑[char[∑[n]]], 2)+n))`
-/

namespace A223524.P15811253165196555296
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223168 (⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ - (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ))).toNat

end

end A223524.P15811253165196555296

/-! ## A223524.P2172108930154879651

`A013609(n)*A112292(n)`
-/

namespace A223524.P2172108930154879651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n * A112292 n

end

end A223524.P2172108930154879651

/-!
# A223525: Triangle S(n,k) by rows: coefficients of 3^((n-1)/2)*(x^(1/3)*d/dx)^n when n=1,3,5,...

The programs for A223525, there is no canonical definition to state claims against.
-/

/-! ## A223525.P16863132207461547488

`A014963(A035469(n+1))²*A223526(n+1)`
-/

namespace A223525.P16863132207461547488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A035469 (n + 1)).toNat ^ 2 * A223526 (n + 1)

end

end A223525.P16863132207461547488

/-! ## A223525.P358766797949067059

`A223526(n+1)+A181405(A000079(n))`
-/

namespace A223525.P358766797949067059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223526 (n + 1) + A181405 (A000079 n).toNat

end

end A223525.P358766797949067059

/-! ## A223525.P12311145193534096581

`A223526(n+1)+A049084(A223527(n+1))`
-/

namespace A223525.P12311145193534096581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223526 (n + 1) + A049084 (A223527 (n + 1)).toNat

end

end A223525.P12311145193534096581

/-!
# A223526: Triangle S(n,k) by rows: coefficients of 3^(n/2)*(x^(2/3)*d/dx)^n when n=0,2,4,6,...

The programs for A223526, there is no canonical definition to state claims against.
-/

/-! ## A223526.P6286993284414081353

`A013610(n)*A136214(n)`
-/

namespace A223526.P6286993284414081353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 n * A136214 n

end

end A223526.P6286993284414081353

/-! ## A223526.P13445109545485454

`lcm(A013610(n), A331331(n))`
-/

namespace A223526.P13445109545485454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013610 n) (A331331 n)

end

end A223526.P13445109545485454

/-! ## A223526.P14309043113769112026

`A027465(A061579(n))*A136214(n)`
-/

namespace A223526.P14309043113769112026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 (A061579 n).toNat * A136214 n

end

end A223526.P14309043113769112026

/-! ## A223526.P16690727543729130992

`A000244(A002262(n))*A331331(n)`
-/

namespace A223526.P16690727543729130992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A002262 n).toNat * A331331 n

end

end A223526.P16690727543729130992

/-! ## A223526.P8434322665387555281

`A003959(A059268(n))*A331331(n)`
-/

namespace A223526.P8434322665387555281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A059268 n).toNat * A331331 n

end

end A223526.P8434322665387555281

/-!
# A223527: Triangle S(n,k) by rows: coefficients of 4^((n-1)/2)*(x^(1/4)*d/dx)^n when n=1,3,5,...

The programs for A223527, there is no canonical definition to state claims against.
-/

/-! ## A223527.P14063799809925932668

`A223170(C(comp[∑[n]]-n, 2)+n-1)`
-/

namespace A223527.P14063799809925932668
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223170 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) + ((n : ℤ) - 1)).toNat

end

end A223527.P14063799809925932668

/-! ## A223527.P5194093634198114895

`A223170(C(comp[∑[n]]-n, 2)-n-(1-2*n))`
-/

namespace A223527.P5194093634198114895
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223170 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) - (1 - (2 * n : ℤ))).toNat

end

end A223527.P5194093634198114895

/-! ## A223527.P7612710151439872375

`A223170(A064801(n+1)-1)`
-/

namespace A223527.P7612710151439872375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223170 (A064801 (n + 1) - 1).toNat

end

end A223527.P7612710151439872375

/-! ## A223527.P7096539103769960542

`A223170(A004202(n+1)-2)`
-/

namespace A223527.P7096539103769960542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223170 (A004202 (n + 1) - 2).toNat

end

end A223527.P7096539103769960542

/-! ## A223527.P18004476948451605478

`A223170(A025581(n)+2*n)`
-/

namespace A223527.P18004476948451605478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223170 (A025581 n + (2 * n : ℤ)).toNat

end

end A223527.P18004476948451605478

/-!
# A223528: Triangle S(n,k) by rows: coefficients of 4^(n/2)*(x^(3/4)*d/dx)^n when n=0,2,4,6,...

The programs for A223528, there is no canonical definition to state claims against.
-/

/-! ## A223528.P2994341494968894729

`A223170(comp[A064801(n+2)])`
-/

namespace A223528.P2994341494968894729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064801 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223170 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A223528.P2994341494968894729

/-! ## A223528.P15986342596677946378

`A223170(A057944(n)+abs(1-n))`
-/

namespace A223528.P15986342596677946378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223170 (A057944 n + |1 - (n : ℤ)|).toNat

end

end A223528.P15986342596677946378

/-! ## A223528.P12492584783139233764

`A223170(A004273(n)-A002262(n))`
-/

namespace A223528.P12492584783139233764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223170 (A004273 n - A002262 n).toNat

end

end A223528.P12492584783139233764

/-! ## A223528.P13038873502939580905

`A223170(A061885(n-A057427(n)))`
-/

namespace A223528.P13038873502939580905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223170 (A061885 ((n : ℤ) - A057427 n).toNat).toNat

end

end A223528.P13038873502939580905

/-! ## A223528.P5264694333697493644

`A223170(A004277(n)-A002260(n+1))`
-/

namespace A223528.P5264694333697493644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223170 (A004277 n - A002260 (n + 1)).toNat

end

end A223528.P5264694333697493644

/-!
# A223529: Triangle S(n,k) by rows: coefficients of 5^((n-1)/2)*(x^(1/5)*d/dx)^n when n=1,3,5,...

The programs for A223529, there is no canonical definition to state claims against.
-/

/-! ## A223529.P17450725719078160696

`A223171(lt[0, n-round(sqrt(n))²]-2)`
-/

namespace A223529.P17450725719078160696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223171 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n - 2)

end

end A223529.P17450725719078160696

/-! ## A223529.P2241458274920652907

`A223171(C(comp[∑[n]]-n, 2)+n-1)`
-/

namespace A223529.P2241458274920652907
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223171 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) + ((n : ℤ) - 1)).toNat

end

end A223529.P2241458274920652907

/-! ## A223529.P10067005121354949580

`A223171(A064801(n+1)-1)`
-/

namespace A223529.P10067005121354949580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223171 (A064801 (n + 1) - 1).toNat

end

end A223529.P10067005121354949580

/-! ## A223529.P9931515752924959799

`A223171(A004202(n+1)-2)`
-/

namespace A223529.P9931515752924959799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223171 (A004202 (n + 1) - 2).toNat

end

end A223529.P9931515752924959799

/-! ## A223529.P8913266182147513089

`A223171(A025581(n)+2*n)`
-/

namespace A223529.P8913266182147513089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223171 (A025581 n + (2 * n : ℤ)).toNat

end

end A223529.P8913266182147513089

/-!
# A223530: Triangle S(n,k) by rows: coefficients of 5^(n/2)*(x^(4/5)*d/dx)^n when n=0,2,4,6,...

The programs for A223530, there is no canonical definition to state claims against.
-/

/-! ## A223530.P9581848988710782042

`A223171(comp[A064801(n+2)])`
-/

namespace A223530.P9581848988710782042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064801 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223171 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A223530.P9581848988710782042

/-! ## A223530.P7403865984671593209

`A223171(A061885(n+1)-2)`
-/

namespace A223530.P7403865984671593209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223171 (A061885 (n + 1) - 2).toNat

end

end A223530.P7403865984671593209

/-! ## A223530.P13064569832809810101

`A223171(eq[1, A118175(n+2)])`
-/

namespace A223530.P13064569832809810101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118175 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223171 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223530.P13064569832809810101

/-! ## A223530.P2002165579901027656

`A223171(A004273(n)-A002262(n))`
-/

namespace A223530.P2002165579901027656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223171 (A004273 n - A002262 n).toNat

end

end A223530.P2002165579901027656

/-! ## A223530.P14818028080892252006

`A223171(A061885(n-A057427(n)))`
-/

namespace A223530.P14818028080892252006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223171 (A061885 ((n : ℤ) - A057427 n).toNat).toNat

end

end A223530.P14818028080892252006

/-!
# A223531: Triangle S(n,k) by rows: coefficients of 6^((n-1)/2)*(x^(1/6)*d/dx)^n when n=1,3,5,...

The programs for A223531, there is no canonical definition to state claims against.
-/

/-! ## A223531.P16874013399465121838

`A223172(lt[0, n-round(sqrt(n))²]-2)`
-/

namespace A223531.P16874013399465121838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223172 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n - 2)

end

end A223531.P16874013399465121838

/-! ## A223531.P7942039635974468560

`A223172(C(comp[∑[n]]-n, 2)+n-1)`
-/

namespace A223531.P7942039635974468560
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223172 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) + ((n : ℤ) - 1)).toNat

end

end A223531.P7942039635974468560

/-! ## A223531.P4124845563870824366

`A223172(C(comp[∑[n]]-n, 2)-n-(1-2*n))`
-/

namespace A223531.P4124845563870824366
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223172 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) - (1 - (2 * n : ℤ))).toNat

end

end A223531.P4124845563870824366

/-! ## A223531.P4118594585496463550

`A223172(A064801(n+1)-1)`
-/

namespace A223531.P4118594585496463550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223172 (A064801 (n + 1) - 1).toNat

end

end A223531.P4118594585496463550

/-! ## A223531.P13536428306422954429

`A223172(A004202(n+1)-2)`
-/

namespace A223531.P13536428306422954429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223172 (A004202 (n + 1) - 2).toNat

end

end A223531.P13536428306422954429

/-!
# A223532: Triangle S(n,k) by rows: coefficients of 6^(n/2)*(x^(5/6)*d/dx)^n when n=0,2,4,6,...

The programs for A223532, there is no canonical definition to state claims against.
-/

/-! ## A223532.P4819479786763384128

`A223172(comp[A064801(n+2)])`
-/

namespace A223532.P4819479786763384128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064801 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223172 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A223532.P4819479786763384128

/-! ## A223532.P17000969740060078721

`A223172(eq[A034869(n), A034870(n)])`
-/

namespace A223532.P17000969740060078721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034869 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223172 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A223532.P17000969740060078721

/-! ## A223532.P5365435589025672620

`A223172(eq[A060576(n), A118175(n)])`
-/

namespace A223532.P5365435589025672620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223172 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A223532.P5365435589025672620

/-! ## A223532.P10617839035156901176

`A223172(comp[2*(n+1)]-(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A223532.P10617839035156901176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223172 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ))).toNat

end

end A223532.P10617839035156901176

/-! ## A223532.P11435102140475047930

`A223172(floor(2/acot(n))-(1-C(∑[char[∑[n]]], 2)+n))`
-/

namespace A223532.P11435102140475047930
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223172 (⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ - (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ))).toNat

end

end A223532.P11435102140475047930

/-!
# A223537: Compressed nim-multiplication table read by antidiagonals.

The programs for A223537, there is no canonical definition to state claims against.
-/

/-! ## A223537.P17461993989971184355

`A223539(A223538(n)+1)`
-/

namespace A223537.P17461993989971184355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223539 (A223538 n + 1).toNat

end

end A223537.P17461993989971184355

/-!
# A223539: List of entries in the compressed nim-multiplication table (A223537).

The programs for A223539, there is no canonical definition to state claims against.
-/

/-! ## A223539.P13775625122474060752

`record[A137734(A051775(n)²)]`
-/

namespace A223539.P13775625122474060752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A051775 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223539.P13775625122474060752

/-! ## A223539.P16438024608039242678

`record[A137735(A051775(n)²)]`
-/

namespace A223539.P16438024608039242678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A051775 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223539.P16438024608039242678

/-! ## A223539.P17178829724231735344

`record[A137734(A341288(n)²)]`
-/

namespace A223539.P17178829724231735344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A341288 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223539.P17178829724231735344

/-! ## A223539.P8814688952828526430

`record[A137735(A341288(n)²)]`
-/

namespace A223539.P8814688952828526430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A341288 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223539.P8814688952828526430

/-! ## A223539.P14102325362760197173

`A118759(record[A051776(n+1)])`
-/

namespace A223539.P14102325362760197173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A223539.P14102325362760197173

/-!
# A223540: Matrix T(m,n) = nim-product(2^m,2^n) read by rows of lower triangle.

The programs for A223540, there is no canonical definition to state claims against.
-/

/-! ## A223540.P12077230220474134643

`A223541(A245300(n))`
-/

namespace A223540.P12077230220474134643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223541 (A245300 n).toNat

end

end A223540.P12077230220474134643

/-! ## A223540.P13292346131633908149

`A223541((A214661(n+1)-1)/2)`
-/

namespace A223540.P13292346131633908149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223541 (SequenceMachineLib.roundAway ((A214661 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A223540.P13292346131633908149

/-!
# A223541: Array T(m,n) = nim-product(2^m,2^n) (m>=0, n>=0) read by antidiagonals.

The programs for A223541, there is no canonical definition to state claims against.
-/

/-! ## A223541.P9722025011786728145

`A223543(A223542(n))`
-/

namespace A223541.P9722025011786728145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223543 (A223542 n).toNat

end

end A223541.P9722025011786728145

/-!
# A223542: Key-matrix of A223541 (nim-products of powers of 2) read by antidiagonals.

The programs for A223542, there is no canonical definition to state claims against.
-/

/-! ## A223542.P4348459772666099528

`A000195(A058696(A223541(n)))`
-/

namespace A223542.P4348459772666099528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (A058696 (A223541 n).toNat).toNat

end

end A223542.P4348459772666099528

/-! ## A223542.P5225009806875596560

`∑{e}[A003418(A223541(n)), A008619(#)]`
-/

namespace A223542.P5225009806875596560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A223541 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008619 (Nat.factorization (f1 n).natAbs p)

end

end A223542.P5225009806875596560

/-!
# A223543: Nim-products of powers of 2, list of entries in matrix A223541.

The programs for A223543, there is no canonical definition to state claims against.
-/

/-! ## A223543.P3648670307488333834

`lt[0, char[A223541(n)]]`
-/

namespace A223543.P3648670307488333834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223541 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A223543.P3648670307488333834

/-! ## A223543.P5033191245582680622

`eq[1, char[A223540(n)]]`
-/

namespace A223543.P5033191245582680622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223540 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A223543.P5033191245582680622

/-! ## A223543.P4655340716746372709

`eq[0, char[A223541(floor(n/3))]-1]`
-/

namespace A223543.P4655340716746372709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223541 ⌊(n : ℚ) / 3⌋.toNat

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A223543.P4655340716746372709

/-! ## A223543.P7144122469691718575

`eq[A000007(n)+1, char[A223541(n)]]`
-/

namespace A223543.P7144122469691718575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223541 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A223543.P7144122469691718575

/-! ## A223543.P14281453876764862468

`eq[A000265(A073711(n)), A316767(n+1)]`
-/

namespace A223543.P14281453876764862468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A073711 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316767 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A223543.P14281453876764862468

/-!
# A223544: T(n, k) = n*k - 1.

The programs for A223544, the canonical program `A223544.P171478645526786133` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223544 has offset 1).

The definition of A223544 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A075362, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A223544.P171478645526786133

`A075362(n+1)-1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A223544

/-- `A075362(n+1)-1` -/
def P171478645526786133.Spec : Prop :=
  ∀ n, P171478645526786133.a n = A223544 (n + 1)

theorem P171478645526786133.correct : P171478645526786133.Spec := by
  intro n
  simp only [A223544, Nat.add_sub_cancel]

end A223544

/-! ## A223544.P9005747400413139947

`∑[char[∑[n]]]²-A323956(n+1)`
-/

namespace A223544.P9005747400413139947
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A323956 (n + 1)

end

end A223544.P9005747400413139947

namespace A223544

/-- `∑[char[∑[n]]]²-A323956(n+1)` -/
def P9005747400413139947.Spec : Prop :=
  ∀ n, P9005747400413139947.a n = A223544 (n + 1)

end A223544

/-! ## A223544.P14764697530354646097

`∑[char[∑[n]]]*A002260(n+1)-1`
-/

namespace A223544.P14764697530354646097
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A002260 (n + 1) - 1

end

end A223544.P14764697530354646097

namespace A223544

/-- `∑[char[∑[n]]]*A002260(n+1)-1` -/
def P14764697530354646097.Spec : Prop :=
  ∀ n, P14764697530354646097.a n = A223544 (n + 1)

end A223544

/-! ## A223544.P5846647995637249597

`A162610(n+1)-(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A223544.P5846647995637249597
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162610 (n + 1) - ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A223544.P5846647995637249597

namespace A223544

/-- `A162610(n+1)-(C(comp[∑[n]]-n, 2)-n)` -/
def P5846647995637249597.Spec : Prop :=
  ∀ n, P5846647995637249597.a n = A223544 (n + 1)

end A223544

/-! ## A223544.P14121021649346706225

`A079904(n)+A051162(n)`
-/

namespace A223544.P14121021649346706225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 n + A051162 n

end

end A223544.P14121021649346706225

namespace A223544

/-- `A079904(n)+A051162(n)` -/
def P14121021649346706225.Spec : Prop :=
  ∀ n, P14121021649346706225.a n = A223544 (n + 1)

end A223544

/-! ## A223544.P6830343740745996128

`A061885(n)-A091435(n)`
-/

namespace A223544.P6830343740745996128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 n - A091435 n

end

end A223544.P6830343740745996128

namespace A223544

/-- `A061885(n)-A091435(n)` -/
def P6830343740745996128.Spec : Prop :=
  ∀ n, P6830343740745996128.a n = A223544 (n + 1)

end A223544

/-! ## A223544.P14882782534366898044

`A151890(n)-A079904(n)`
-/

namespace A223544.P14882782534366898044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151890 n - A079904 n

end

end A223544.P14882782534366898044

namespace A223544

/-- `A151890(n)-A079904(n)` -/
def P14882782534366898044.Spec : Prop :=
  ∀ n, P14882782534366898044.a n = A223544 (n + 1)

end A223544

/-! ## A223544.P17818604697869569079

`A185910(n+1)-A176270(n)`
-/

namespace A223544.P17818604697869569079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185910 (n + 1) - A176270 n

end

end A223544.P17818604697869569079

namespace A223544

/-- `A185910(n+1)-A176270(n)` -/
def P17818604697869569079.Spec : Prop :=
  ∀ n, P17818604697869569079.a n = A223544 (n + 1)

end A223544

/-! ## A223544.P7607748453822229353

`A059036(n)+2*A112367(n)`
-/

namespace A223544.P7607748453822229353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059036 n + 2 * A112367 n

end

end A223544.P7607748453822229353

namespace A223544

/-- `A059036(n)+2*A112367(n)` -/
def P7607748453822229353.Spec : Prop :=
  ∀ n, P7607748453822229353.a n = A223544 (n + 1)

end A223544

/-! ## A223544.P10191571249413643087

`A135065(n)/A135278(n)-1`
-/

namespace A223544.P10191571249413643087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135065 n : ℚ) / (A135278 n : ℚ) - 1

end

end A223544.P10191571249413643087

namespace A223544

/-- `A135065(n)/A135278(n)-1` -/
def P10191571249413643087.Spec : Prop :=
  ∀ n, P10191571249413643087.a n = (A223544 (n + 1) : ℚ)

end A223544

/-! ## A223544.P12090362347012971089

`A057944(n)+n-A091435(n)`
-/

namespace A223544.P12090362347012971089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + ((n : ℤ) - A091435 n)

end

end A223544.P12090362347012971089

namespace A223544

/-- `A057944(n)+n-A091435(n)` -/
def P12090362347012971089.Spec : Prop :=
  ∀ n, P12090362347012971089.a n = A223544 (n + 1)

end A223544

/-! ## A223544.P4902502136282461970

`A144204(n+1)+A051162(n)+1`
-/

namespace A223544.P4902502136282461970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144204 (n + 1) + (A051162 n + 1)

end

end A223544.P4902502136282461970

namespace A223544

/-- `A144204(n+1)+A051162(n)+1` -/
def P4902502136282461970.Spec : Prop :=
  ∀ n, P4902502136282461970.a n = A223544 (n + 1)

end A223544

/-! ## A223544.P18304728803269136027

`A144204(n+1)+A094727(n+1)`
-/

namespace A223544.P18304728803269136027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144204 (n + 1) + A094727 (n + 1)

end

end A223544.P18304728803269136027

namespace A223544

/-- `A144204(n+1)+A094727(n+1)` -/
def P18304728803269136027.Spec : Prop :=
  ∀ n, P18304728803269136027.a n = A223544 (n + 1)

end A223544

/-! ## A223544.P5896514985121525509

`A081493(n+1)+A002262(n)-1`
-/

namespace A223544.P5896514985121525509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081493 (n + 1) + (A002262 n - 1)

end

end A223544.P5896514985121525509

namespace A223544

/-- `A081493(n+1)+A002262(n)-1` -/
def P5896514985121525509.Spec : Prop :=
  ∀ n, P5896514985121525509.a n = A223544 (n + 1)

end A223544

/-! ## A223544.P18339603215953666671

`A004201(n+1)-(A091435(n)+1)`
-/

namespace A223544.P18339603215953666671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004201 (n + 1) - (A091435 n + 1)

end

end A223544.P18339603215953666671

namespace A223544

/-- `A004201(n+1)-(A091435(n)+1)` -/
def P18339603215953666671.Spec : Prop :=
  ∀ n, P18339603215953666671.a n = A223544 (n + 1)

end A223544

/-! ## A223544.P17674476842726721418

`A076110(n+1)+A051162(n)-1`
-/

namespace A223544.P17674476842726721418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076110 (n + 1) + (A051162 n - 1)

end

end A223544.P17674476842726721418

namespace A223544

/-- `A076110(n+1)+A051162(n)-1` -/
def P17674476842726721418.Spec : Prop :=
  ∀ n, P17674476842726721418.a n = A223544 (n + 1)

end A223544

/-! ## A223544.P14282598208502842819

`A162610(n+1)-A004736(n+1)`
-/

namespace A223544.P14282598208502842819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162610 (n + 1) - A004736 (n + 1)

end

end A223544.P14282598208502842819

namespace A223544

/-- `A162610(n+1)-A004736(n+1)` -/
def P14282598208502842819.Spec : Prop :=
  ∀ n, P14282598208502842819.a n = A223544 (n + 1)

end A223544

/-! ## A223544.P17428506821599171813

`A094727(n+1)+A079904(n)-1`
-/

namespace A223544.P17428506821599171813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) + (A079904 n - 1)

end

end A223544.P17428506821599171813

namespace A223544

/-- `A094727(n+1)+A079904(n)-1` -/
def P17428506821599171813.Spec : Prop :=
  ∀ n, P17428506821599171813.a n = A223544 (n + 1)

end A223544

/-! ## A223544.P7362824154305662745

`A064801(n+1)-A128140(n+1)`
-/

namespace A223544.P7362824154305662745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064801 (n + 1) - A128140 (n + 1)

end

end A223544.P7362824154305662745

namespace A223544

/-- `A064801(n+1)-A128140(n+1)` -/
def P7362824154305662745.Spec : Prop :=
  ∀ n, P7362824154305662745.a n = A223544 (n + 1)

end A223544

/-! ## A223544.P13632976299906952547

`A127780(n+1)-A081493(n+1)`
-/

namespace A223544.P13632976299906952547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127780 (n + 1) - A081493 (n + 1)

end

end A223544.P13632976299906952547

namespace A223544

/-- `A127780(n+1)-A081493(n+1)` -/
def P13632976299906952547.Spec : Prop :=
  ∀ n, P13632976299906952547.a n = A223544 (n + 1)

end A223544

/-!
# A223545: a(n+1) = Sum_{i=1..a(n)} floor(a(n)/i); a(1) = 2.

The programs for A223545, there is no canonical definition to state claims against.
-/

/-! ## A223545.P174157759429153196

`A006218(a(n-1))` with `a(0)=2`
-/

namespace A223545.P174157759429153196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A006218 (a (n - 1)).toNat

end

end A223545.P174157759429153196

/-! ## A223545.P2881502820480650377

`A054519(a(n-1))-1` with `a(0)=2`
-/

namespace A223545.P2881502820480650377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A054519 (a (n - 1)).toNat - 1

end

end A223545.P2881502820480650377

/-! ## A223545.P10453084260374066624

`A362059(2*a(n-1))` with `a(0)=2`
-/

namespace A223545.P10453084260374066624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A362059 (2 * a (n - 1)).toNat

end

end A223545.P10453084260374066624

/-! ## A223545.P7337499593743037514

`record[A006218(a(floor(n/2)))]` with `a(0)=2, a(1)=3, a(2)=2`
-/

namespace A223545.P7337499593743037514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 2] fun n f1 =>
  A006218 (f1 ⌊(n : ℚ) / 2⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223545.P7337499593743037514

/-! ## A223545.P5133405423817620918

`A002541(a(n-1))+a(n-1)` with `a(0)=2`
-/

namespace A223545.P5133405423817620918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A002541 (a (n - 1)).toNat + a (n - 1)

end

end A223545.P5133405423817620918

/-!
# A223547: G.f.: A(x) = Sum_{n>=0} x^n / (1 - x^n - x^(2*n))^n.

The programs for A223547, there is no canonical definition to state claims against.
-/

/-! ## A223547.P9819159368116235819

`A000196(A002322(n+1)*A083380(n+1))`
-/

namespace A223547.P9819159368116235819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A002322 (n + 1) * A083380 (n + 1)).toNat

end

end A223547.P9819159368116235819

/-! ## A223547.P12701634378616070170

`lcm(A019538(n+1), A152805(A195204(n+2)))`
-/

namespace A223547.P12701634378616070170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A019538 (n + 1)) (A152805 (A195204 (n + 2)).toNat)

end

end A223547.P12701634378616070170

/-!
# A223549: Triangle T(n,k), read by rows, giving the numerator of the coefficient of x^k in the Boros-Moll polynomial P_n(x) for n >= 0 and 0 <= k <=n.

The programs for A223549, there is no canonical definition to state claims against.
-/

/-! ## A223549.P12120218693508361043

`lcm(A000079(n), A126936(n))/2^n`
-/

namespace A223549.P12120218693508361043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000079 n) (A126936 n) : ℚ) / (2 ^ n : ℚ)

end

end A223549.P12120218693508361043

/-! ## A223549.P270390702494891535

`A126936(n)/gcd(A000079(n), A126936(n))`
-/

namespace A223549.P270390702494891535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126936 n : ℚ) / (Int.gcd (A000079 n) (A126936 n) : ℚ)

end

end A223549.P270390702494891535

/-! ## A223549.P4769247456529394293

`A000265(ceil(A126936(n)/2))`
-/

namespace A223549.P4769247456529394293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 ⌈(A126936 n : ℚ) / 2⌉.toNat

end

end A223549.P4769247456529394293

/-! ## A223549.P7632863397214470280

`A000265(A126936(n)/gcd(2, n+1))`
-/

namespace A223549.P7632863397214470280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A126936 n : ℚ) / (Nat.gcd 2 (n + 1) : ℚ))).toNat

end

end A223549.P7632863397214470280

/-! ## A223549.P17687875567248434957

`A000265(A126936(n)/A000034(n))`
-/

namespace A223549.P17687875567248434957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A126936 n : ℚ) / (A000034 n : ℚ))).toNat

end

end A223549.P17687875567248434957

/-!
# A223550: Triangle T(n,k), read by rows, giving the denominator of the coefficient of x^k in the Boros-Moll polynomial P_n(x) for n >= 0 and 0 <= k <= n.

The programs for A223550, there is no canonical definition to state claims against.
-/

/-! ## A223550.P7341334003060497991

`A187791(n)/A006519(A157751(n))`
-/

namespace A223550.P7341334003060497991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187791 n : ℚ) / (A006519 (A157751 n).toNat : ℚ)

end

end A223550.P7341334003060497991

/-! ## A223550.P3685787922227136513

`A001316((A187791(n)-A157751(n))*A157751(n))`
-/

namespace A223550.P3685787922227136513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 ((A187791 n - A157751 n) * A157751 n).toNat

end

end A223550.P3685787922227136513

/-! ## A223550.P1518151787015582114

`A001316((A157751(n)-A187791(n))²)`
-/

namespace A223550.P1518151787015582114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 ((A157751 n - A187791 n) ^ 2).toNat

end

end A223550.P1518151787015582114

/-!
# A223551: Petersen graph (3,1) coloring a rectangular array: number of n X n 0..5 arrays where 0..5 label nodes of a graph with edges 0,1 0,3 3,5 3,4 1,2 1,4 4,5 2,0 2,5 and every array movement to a horizontal or antidiagonal neighbor moves along an edge of this graph, with the array starting at 0.

The programs for A223551, there is no canonical definition to state claims against.
-/

/-! ## A223551.P10607970270169869849

`A223556((n+1)²+n²)`
-/

namespace A223551.P10607970270169869849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223556 ((n + 1) ^ 2 + n ^ 2)

end

end A223551.P10607970270169869849

/-! ## A223551.P6914967861927133816

`record[A223556(A152271(n²))]`
-/

namespace A223551.P6914967861927133816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223556 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223551.P6914967861927133816

/-!
# A223552: Petersen graph (3,1) coloring a rectangular array: number of n X 4 0..5 arrays where 0..5 label nodes of a graph with edges 0,1 0,3 3,5 3,4 1,2 1,4 4,5 2,0 2,5 and every array movement to a horizontal or antidiagonal neighbor moves along an edge of this graph, with the array starting at 0.

The programs for A223552, there is no canonical definition to state claims against.
-/

/-! ## A223552.P13540565119331286472

`A223557(2*(n+1))`
-/

namespace A223552.P13540565119331286472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223557 (2 * (n + 1))

end

end A223552.P13540565119331286472

/-! ## A223552.P8475711392820160620

`9*A138977(2*n+1)`
-/

namespace A223552.P8475711392820160620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A138977 (2 * n + 1)

end

end A223552.P8475711392820160620

/-! ## A223552.P9234633570672062832

`record[gcd((-1)^n-1, A223557(n+2))]`
-/

namespace A223552.P9234633570672062832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((-1) ^ n - 1) (A223557 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223552.P9234633570672062832

/-! ## A223552.P8711068595729071174

`record[A223557(2*A344180(n))]`
-/

namespace A223552.P8711068595729071174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223557 (2 * A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223552.P8711068595729071174

/-! ## A223552.P5049750286142359488

`record[A223557(A344180(n)+A344180(n))]`
-/

namespace A223552.P5049750286142359488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223557 (A344180 n + A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223552.P5049750286142359488

/-!
# A223553: Petersen graph (3,1) coloring a rectangular array: number of n X 5 0..5 arrays where 0..5 label nodes of a graph with edges 0,1 0,3 3,5 3,4 1,2 1,4 4,5 2,0 2,5 and every array movement to a horizontal or antidiagonal neighbor moves along an edge of this graph, with the array starting at 0.

The programs for A223553, there is no canonical definition to state claims against.
-/

/-! ## A223553.P10885294827144028673

`A223556(Δ[A264443(n)])`
-/

namespace A223553.P10885294827144028673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223556 (f1 (n + 1) - f1 n).toNat

end

end A223553.P10885294827144028673

/-! ## A223553.P6051139899326252439

`A223556(A056115(n)+11)`
-/

namespace A223553.P6051139899326252439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223556 (A056115 n + 11).toNat

end

end A223553.P6051139899326252439

/-! ## A223553.P9773301168526365206

`A223556(eq[4, A193592(n)])`
-/

namespace A223553.P9773301168526365206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223556 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223553.P9773301168526365206

/-! ## A223553.P2529371547926690269

`A223556(Δ[A023545(n+1)])`
-/

namespace A223553.P2529371547926690269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223556 (f1 (n + 1) - f1 n).toNat

end

end A223553.P2529371547926690269

/-! ## A223553.P6679138742324261995

`A223556(A052905(n+2)+1)`
-/

namespace A223553.P6679138742324261995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223556 (A052905 (n + 2) + 1).toNat

end

end A223553.P6679138742324261995

/-!
# A223554: Petersen graph (3,1) coloring a rectangular array: number of nX6 0..5 arrays where 0..5 label nodes of a graph with edges 0,1 0,3 3,5 3,4 1,2 1,4 4,5 2,0 2,5 and every array movement to a horizontal or antidiagonal neighbor moves along an edge of this graph, with the array starting at 0.

The programs for A223554, there is no canonical definition to state claims against.
-/

/-! ## A223554.P7494231508273864788

`A223556(eq[6, A200370(n+1)])`
-/

namespace A223554.P7494231508273864788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223556 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223554.P7494231508273864788

/-! ## A223554.P290198434165150757

`A223556(Δ[Δ[A006504(n+1)]])`
-/

namespace A223554.P290198434165150757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223556 (f1 (n + 1) - f1 n).toNat

end

end A223554.P290198434165150757

/-! ## A223554.P3099560484147832016

`A223556(Δ[A264443(n+1)]-1)`
-/

namespace A223554.P3099560484147832016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223556 (f1 (n + 1) - f1 n - 1).toNat

end

end A223554.P3099560484147832016

/-!
# A223555: Petersen graph (3,1) coloring a rectangular array: number of nX7 0..5 arrays where 0..5 label nodes of a graph with edges 0,1 0,3 3,5 3,4 1,2 1,4 4,5 2,0 2,5 and every array movement to a horizontal or antidiagonal neighbor moves along an edge of this graph, with the array starting at 0.

The programs for A223555, there is no canonical definition to state claims against.
-/

/-! ## A223555.P3865065116502793374

`A223556(A055999(n+4))`
-/

namespace A223555.P3865065116502793374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223556 (A055999 (n + 4)).toNat

end

end A223555.P3865065116502793374

/-! ## A223555.P15622421423358986781

`A223556(eq[7, A200370(n+1)])`
-/

namespace A223555.P15622421423358986781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223556 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223555.P15622421423358986781

/-!
# A223557: Petersen graph (3,1) coloring a rectangular array: number of 2 X n 0..5 arrays where 0..5 label nodes of a graph with edges 0,1 0,3 3,5 3,4 1,2 1,4 4,5 2,0 2,5 and every array movement to a horizontal or antidiagonal neighbor moves along an edge of this graph, with the array starting at 0.

The programs for A223557, the canonical program `A223557.P14595318979050791316` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223557 has offset 1).

The definition of A223557 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223557.P5062278723566776066

`ogf((6-15x+6x^2)/(1-7x+4x^2))`
-/

namespace A223557.P5062278723566776066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -15, 6] [1, -7, 4] n

end

end A223557.P5062278723566776066

namespace A223557

/-- `ogf((6-15x+6x^2)/(1-7x+4x^2))` -/
def P5062278723566776066.Spec : Prop :=
  ∀ n, P5062278723566776066.a n = A223557 (n + 1)

end A223557

/-! ## A223557.P14595318979050791316

`7*a(n-1)-4*a(n-2)` with `a(0)=6, a(1)=27, a(2)=171`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A223557

/-- `7*a(n-1)-4*a(n-2)` -/
def P14595318979050791316.Spec : Prop :=
  ∀ n, P14595318979050791316.a n = A223557 (n + 1)

theorem P14595318979050791316.correct : P14595318979050791316.Spec := by
  intro n
  simp only [A223557, Nat.add_sub_cancel]

end A223557

/-! ## A223557.P12820103197047894637

`A138977(A028310(n))*A248322(C(3, n²))`
-/

namespace A223557.P12820103197047894637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138977 (A028310 n).toNat * A248322 (Nat.choose 3 (n ^ 2))

end

end A223557.P12820103197047894637

namespace A223557

/-- `A138977(A028310(n))*A248322(C(3, n²))` -/
def P12820103197047894637.Spec : Prop :=
  ∀ n, P12820103197047894637.a n = A223557 (n + 1)

end A223557

/-! ## A223557.P1047305905804781343

`A138977(A000007(n)+n)*A248322(C(3, n²))`
-/

namespace A223557.P1047305905804781343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138977 (A000007 n + (n : ℤ)).toNat * A248322 (Nat.choose 3 (n ^ 2))

end

end A223557.P1047305905804781343

namespace A223557

/-- `A138977(A000007(n)+n)*A248322(C(3, n²))` -/
def P1047305905804781343.Spec : Prop :=
  ∀ n, P1047305905804781343.a n = A223557 (n + 1)

end A223557

/-! ## A223557.P12559184814650780395

`A223556(∑[n+1]+2)`
-/

namespace A223557.P12559184814650780395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223556 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223557.P12559184814650780395

namespace A223557

/-- `A223556(∑[n+1]+2)` -/
def P12559184814650780395.Spec : Prop :=
  ∀ n, P12559184814650780395.a n = A223557 (n + 1)

end A223557

/-!
# A223558: Petersen graph (3,1) coloring a rectangular array: number of 3 X n 0..5 arrays where 0..5 label nodes of a graph with edges 0,1 0,3 3,5 3,4 1,2 1,4 4,5 2,0 2,5 and every array movement to a horizontal or antidiagonal neighbor moves along an edge of this graph, with the array starting at 0.

The programs for A223558, there is no canonical definition to state claims against.
-/

/-! ## A223558.P1790805467491282525

`A223556(∑[n+2]+4)`
-/

namespace A223558.P1790805467491282525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223556 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223558.P1790805467491282525

/-! ## A223558.P17356495759608131136

`lcm(3, A223556(A167614(n+1)))`
-/

namespace A223558.P17356495759608131136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A223556 (A167614 (n + 1)).toNat)

end

end A223558.P17356495759608131136

/-! ## A223558.P7703451640001097190

`or(A021913(n), A223556(A167614(n+1)))`
-/

namespace A223558.P7703451640001097190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A021913 n) (A223556 (A167614 (n + 1)).toNat)

end

end A223558.P7703451640001097190

/-! ## A223558.P4243444228739374439

`A223556(A167614(n+1))+A122180(n+1)`
-/

namespace A223558.P4243444228739374439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223556 (A167614 (n + 1)).toNat + A122180 (n + 1)

end

end A223558.P4243444228739374439

/-! ## A223558.P4892373784200117715

`A057427(n+1)*A223556(A167614(n+1))`
-/

namespace A223558.P4892373784200117715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A223556 (A167614 (n + 1)).toNat

end

end A223558.P4892373784200117715

/-!
# A223559: Petersen graph (3,1) coloring a rectangular array: number of 4Xn 0..5 arrays where 0..5 label nodes of a graph with edges 0,1 0,3 3,5 3,4 1,2 1,4 4,5 2,0 2,5 and every array movement to a horizontal or antidiagonal neighbor moves along an edge of this graph, with the array starting at 0.

The programs for A223559, there is no canonical definition to state claims against.
-/

/-! ## A223559.P6681448730282658605

`A223556(A141214(n)+7)`
-/

namespace A223559.P6681448730282658605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223556 (A141214 n + 7).toNat

end

end A223559.P6681448730282658605

/-! ## A223559.P16078682487333685263

`A223556(A052905(n)+9)`
-/

namespace A223559.P16078682487333685263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223556 (A052905 n + 9).toNat

end

end A223559.P16078682487333685263

/-! ## A223559.P11428468168075945024

`A223556(A055999(n)+10)`
-/

namespace A223559.P11428468168075945024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223556 (A055999 n + 10).toNat

end

end A223559.P11428468168075945024

/-! ## A223559.P14458476059190825306

`A223556(A167614(n+2)+1)`
-/

namespace A223559.P14458476059190825306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223556 (A167614 (n + 2) + 1).toNat

end

end A223559.P14458476059190825306

/-! ## A223559.P3810383876748588148

`A223556(eq[5, A131818(n+1)])`
-/

namespace A223559.P3810383876748588148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223556 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223559.P3810383876748588148

/-!
# A223560: Petersen graph (3,1) coloring a rectangular array: number of 5Xn 0..5 arrays where 0..5 label nodes of a graph with edges 0,1 0,3 3,5 3,4 1,2 1,4 4,5 2,0 2,5 and every array movement to a horizontal or antidiagonal neighbor moves along an edge of this graph, with the array starting at 0.

The programs for A223560, there is no canonical definition to state claims against.
-/

/-! ## A223560.P3807184954128265504

`A223556(A167499(n+3))`
-/

namespace A223560.P3807184954128265504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223556 (A167499 (n + 3)).toNat

end

end A223560.P3807184954128265504

/-! ## A223560.P8516786625958108615

`A223556(A155212(n)+13)`
-/

namespace A223560.P8516786625958108615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223556 (A155212 n + 13).toNat

end

end A223560.P8516786625958108615

/-! ## A223560.P17023507358772318540

`A223556(A056000(n)+15)`
-/

namespace A223560.P17023507358772318540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223556 (A056000 n + 15).toNat

end

end A223560.P17023507358772318540

/-! ## A223560.P11485935114529621087

`A223556(eq[7, A066657(n)])`
-/

namespace A223560.P11485935114529621087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223556 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223560.P11485935114529621087

/-! ## A223560.P17476557549202186887

`A223556(eq[6, A131818(n+1)])`
-/

namespace A223560.P17476557549202186887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223556 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223560.P17476557549202186887

/-!
# A223561: Petersen graph (3,1) coloring a rectangular array: number of 6Xn 0..5 arrays where 0..5 label nodes of a graph with edges 0,1 0,3 3,5 3,4 1,2 1,4 4,5 2,0 2,5 and every array movement to a horizontal or antidiagonal neighbor moves along an edge of this graph, with the array starting at 0.

The programs for A223561, there is no canonical definition to state claims against.
-/

/-! ## A223561.P7271592398942970199

`A223556(A056115(n)+21)`
-/

namespace A223561.P7271592398942970199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223556 (A056115 n + 21).toNat

end

end A223561.P7271592398942970199

/-! ## A223561.P4807977172706736919

`A223556(A167499(n+4)+1)`
-/

namespace A223561.P4807977172706736919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223556 (A167499 (n + 4) + 1).toNat

end

end A223561.P4807977172706736919

/-! ## A223561.P10969180661305590886

`A223556(A253145(n+4)+6)`
-/

namespace A223561.P10969180661305590886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223556 (A253145 (n + 4) + 6).toNat

end

end A223561.P10969180661305590886

/-! ## A223561.P4897446708183442669

`A223556(eq[7, A131818(n+1)])`
-/

namespace A223561.P4897446708183442669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223556 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223561.P4897446708183442669

/-! ## A223561.P460639062279116265

`A223556(A000096(n+5)+1-n)`
-/

namespace A223561.P460639062279116265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223556 (A000096 (n + 5) + (1 - (n : ℤ))).toNat

end

end A223561.P460639062279116265

/-!
# A223562: Petersen graph (3,1) coloring a rectangular array: number of 7Xn 0..5 arrays where 0..5 label nodes of a graph with edges 0,1 0,3 3,5 3,4 1,2 1,4 4,5 2,0 2,5 and every array movement to a horizontal or antidiagonal neighbor moves along an edge of this graph, with the array starting at 0.

The programs for A223562, there is no canonical definition to state claims against.
-/

/-! ## A223562.P15920852500686254270

`A223556(eq[8, A131818(n+1)])`
-/

namespace A223562.P15920852500686254270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223556 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223562.P15920852500686254270

/-! ## A223562.P7866908788663952843

`A223556(A000217(n+7)-n)`
-/

namespace A223562.P7866908788663952843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223556 (A000217 (n + 7) - (n : ℤ)).toNat

end

end A223562.P7866908788663952843

/-!
# A223563: Number of n X n 0..1 arrays with antidiagonals unimodal.

The programs for A223563, there is no canonical definition to state claims against.
-/

/-! ## A223563.P7579241135255213798

`∏[(∑[n+1]+1)*(∑[n]+1)]`
-/

namespace A223563.P7579241135255213798
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j + 1) * (∑ j ∈ Finset.range (n + 1), f3 j + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A223563.P7579241135255213798

/-! ## A223563.P1053102101856467362

`(∑[n+1]+1)*∏[A000124(n)²]`
-/

namespace A223563.P1053102101856467362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A223563.P1053102101856467362

/-! ## A223563.P8464961027198751710

`(∑[A063488(n+1)]+1)*a(n-1)` with `a(0)=2`
-/

namespace A223563.P8464961027198751710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * a (n - 1)

end

end A223563.P8464961027198751710

/-! ## A223563.P10150142774550668444

`(A000217((n+1)²+1)+1)/2*a(n-1)` with `a(0)=2`
-/

namespace A223563.P10150142774550668444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (A000217 ((n + 1) ^ 2 + 1) + 1 : ℚ) / 2 * a (n - 1)

end

end A223563.P10150142774550668444

/-! ## A223563.P6974272611984462975

`A128814(n+1)*A128814(n)`
-/

namespace A223563.P6974272611984462975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128814 (n + 1) * A128814 n

end

end A223563.P6974272611984462975

/-!
# A223564: Number of nX3 0..1 arrays with antidiagonals unimodal.

The programs for A223564, the canonical program `A223564.P2481218618890604230` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223564 has offset 1).

The definition of A223564 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A223564.P2481218618890604230

`7*a(n-1)` with `a(0)=8, a(1)=64`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A223564

/-- `7*a(n-1)` -/
def P2481218618890604230.Spec : Prop :=
  ∀ n, (P2481218618890604230.a n : ℤ) = A223564 (n + 1)

theorem P2481218618890604230.correct : P2481218618890604230.Spec := by
  intro n
  simp only [A223564, Nat.add_sub_cancel]

end A223564

/-! ## A223564.P17093234900469769378

`ogf((8+8x)/(1-7x))`
-/

namespace A223564.P17093234900469769378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 8] [1, -7] n

end

end A223564.P17093234900469769378

namespace A223564

/-- `ogf((8+8x)/(1-7x))` -/
def P17093234900469769378.Spec : Prop :=
  ∀ n, P17093234900469769378.a n = A223564 (n + 1)

end A223564

/-! ## A223564.P10584865324419793258

`8*floor(8*7^(n-1))`
-/

namespace A223564.P10584865324419793258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * ⌊8 * (7 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A223564.P10584865324419793258

namespace A223564

/-- `8*floor(8*7^(n-1))` -/
def P10584865324419793258.Spec : Prop :=
  ∀ n, P10584865324419793258.a n = A223564 (n + 1)

end A223564

/-! ## A223564.P9884294567918688624

`abs(∏[-a(n-1)])` with `a(0)=8, a(1)=8, a(2)=7`
-/

namespace A223564.P9884294567918688624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8, 8, 7] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A223564.P9884294567918688624

namespace A223564

/-- `abs(∏[-a(n-1)])` -/
def P9884294567918688624.Spec : Prop :=
  ∀ n, P9884294567918688624.a n = A223564 (n + 1)

end A223564

/-! ## A223564.P11373653788845808448

`abs(8*(2*A000420(n)-A055272(n)))`
-/

namespace A223564.P11373653788845808448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |8 * (2 * A000420 n - A055272 n)|

end

end A223564.P11373653788845808448

namespace A223564

/-- `abs(8*(2*A000420(n)-A055272(n)))` -/
def P11373653788845808448.Spec : Prop :=
  ∀ n, P11373653788845808448.a n = A223564 (n + 1)

end A223564

/-!
# A223565: Number of nX4 0..1 arrays with antidiagonals unimodal.

The programs for A223565, there is no canonical definition to state claims against.
-/

/-! ## A223565.P6389003233416418553

`A223569(A374004(n+1))`
-/

namespace A223565.P6389003233416418553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223569 (A374004 (n + 1)).toNat

end

end A223565.P6389003233416418553

/-! ## A223565.P6694233686085089554

`A223569(A052905(n)+9)`
-/

namespace A223565.P6694233686085089554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223569 (A052905 n + 9).toNat

end

end A223565.P6694233686085089554

/-! ## A223565.P6272975449844740022

`A223569(A055999(n)+10)`
-/

namespace A223565.P6272975449844740022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223569 (A055999 n + 10).toNat

end

end A223565.P6272975449844740022

/-! ## A223565.P6448014668447467203

`A223569(A167614(n+2)+1)`
-/

namespace A223565.P6448014668447467203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223569 (A167614 (n + 2) + 1).toNat

end

end A223565.P6448014668447467203

/-! ## A223565.P12530397998185001183

`A223569(A166136(n+2)-2)`
-/

namespace A223565.P12530397998185001183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223569 (A166136 (n + 2) - 2).toNat

end

end A223565.P12530397998185001183

/-!
# A223566: Number of nX5 0..1 arrays with antidiagonals unimodal.

The programs for A223566, there is no canonical definition to state claims against.
-/

/-! ## A223566.P10530916007674805940

`A223569(A374005(n+1))`
-/

namespace A223566.P10530916007674805940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223569 (A374005 (n + 1)).toNat

end

end A223566.P10530916007674805940

/-! ## A223566.P3885723978896242729

`A223569(A167499(n+3))`
-/

namespace A223566.P3885723978896242729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223569 (A167499 (n + 3)).toNat

end

end A223566.P3885723978896242729

/-! ## A223566.P10496959760436135860

`A223569(eq[6, A131818(n+1)])`
-/

namespace A223566.P10496959760436135860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223566.P10496959760436135860

/-! ## A223566.P4464011118006903997

`A223569(Δ[A264443(n)])`
-/

namespace A223566.P4464011118006903997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223569 (f1 (n + 1) - f1 n).toNat

end

end A223566.P4464011118006903997

/-! ## A223566.P7748236757960696265

`A223569(A046691(n+3))`
-/

namespace A223566.P7748236757960696265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223569 (A046691 (n + 3)).toNat

end

end A223566.P7748236757960696265

/-!
# A223567: Number of nX6 0..1 arrays with antidiagonals unimodal.

The programs for A223567, there is no canonical definition to state claims against.
-/

/-! ## A223567.P6714222745180232176

`A223569(A374007(n+1))`
-/

namespace A223567.P6714222745180232176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223569 (A374007 (n + 1)).toNat

end

end A223567.P6714222745180232176

/-! ## A223567.P1666971424000531776

`A223569(A166136(n+4))`
-/

namespace A223567.P1666971424000531776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223569 (A166136 (n + 4)).toNat

end

end A223567.P1666971424000531776

/-! ## A223567.P12924610397324982083

`A223569(eq[7, A131818(n+1)])`
-/

namespace A223567.P12924610397324982083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223567.P12924610397324982083

/-! ## A223567.P3518010155280803493

`A223569(A052905(n+3))`
-/

namespace A223567.P3518010155280803493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223569 (A052905 (n + 3)).toNat

end

end A223567.P3518010155280803493

/-! ## A223567.P15401951680073668147

`A223569(A056119(n)+16)`
-/

namespace A223567.P15401951680073668147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223569 (A056119 n + 16).toNat

end

end A223567.P15401951680073668147

/-!
# A223568: Number of nX7 0..1 arrays with antidiagonals unimodal.

The programs for A223568, there is no canonical definition to state claims against.
-/

/-! ## A223568.P18158344617981878841

`A223569(A374008(n+1))`
-/

namespace A223568.P18158344617981878841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223569 (A374008 (n + 1)).toNat

end

end A223568.P18158344617981878841

/-! ## A223568.P1370563396070056392

`A223569(eq[8, A131818(n+1)])`
-/

namespace A223568.P1370563396070056392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223568.P1370563396070056392

/-! ## A223568.P7264677202896559138

`A223569(A055999(n+4))`
-/

namespace A223568.P7264677202896559138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223569 (A055999 (n + 4)).toNat

end

end A223568.P7264677202896559138

/-! ## A223568.P1885113372629985941

`A223569(eq[6, A193592(n)])`
-/

namespace A223568.P1885113372629985941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223568.P1885113372629985941

/-! ## A223568.P884074978625195213

`A223569(eq[10, A185782(n+1)])`
-/

namespace A223568.P884074978625195213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223568.P884074978625195213

/-!
# A223569: T(n,k)=Number of nXk 0..1 arrays with antidiagonals unimodal.

The programs for A223569, there is no canonical definition to state claims against.
-/

/-! ## A223569.P7307472670488516696

`A145342(2*A300182(n+1))`
-/

namespace A223569.P7307472670488516696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145342 (2 * A300182 (n + 1)).toNat

end

end A223569.P7307472670488516696

/-! ## A223569.P9436384995911099320

`A145342(A300182(n+1)+A300182(n+1))`
-/

namespace A223569.P9436384995911099320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145342 (A300182 (n + 1) + A300182 (n + 1)).toNat

end

end A223569.P9436384995911099320

/-! ## A223569.P5724711798785786671

`A055034(6*A301443(n+1))`
-/

namespace A223569.P5724711798785786671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (6 * A301443 (n + 1)).toNat

end

end A223569.P5724711798785786671

/-! ## A223569.P17344519812914947628

`A055034(6*A303456(n+1))`
-/

namespace A223569.P17344519812914947628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (6 * A303456 (n + 1)).toNat

end

end A223569.P17344519812914947628

/-! ## A223569.P6525409051698403371

`A289460(6*A227594(n+1))`
-/

namespace A223569.P6525409051698403371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289460 (6 * A227594 (n + 1)).toNat

end

end A223569.P6525409051698403371

/-!
# A223570: Number of n X n 0..2 arrays with antidiagonals unimodal.

The programs for A223570, there is no canonical definition to state claims against.
-/

/-! ## A223570.P4346429983123291724

`A223576((n+1)²+n²)`
-/

namespace A223570.P4346429983123291724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223576 ((n + 1) ^ 2 + n ^ 2)

end

end A223570.P4346429983123291724

/-!
# A223571: Number of nX3 0..2 arrays with antidiagonals unimodal.

The programs for A223571, the canonical program `A223571.P7632983328283551286` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223571 has offset 1).

The definition of A223571 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A223571.P7632983328283551286

`22*a(n-1)` with `a(0)=27, a(1)=729`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A223571

/-- `22*a(n-1)` -/
def P7632983328283551286.Spec : Prop :=
  ∀ n, (P7632983328283551286.a n : ℤ) = A223571 (n + 1)

theorem P7632983328283551286.correct : P7632983328283551286.Spec := by
  intro n
  simp only [A223571, Nat.add_sub_cancel]

end A223571

/-! ## A223571.P15552345246338229142

`A223576(∑[n+2]+4)`
-/

namespace A223571.P15552345246338229142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223576 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223571.P15552345246338229142

namespace A223571

/-- `A223576(∑[n+2]+4)` -/
def P15552345246338229142.Spec : Prop :=
  ∀ n, P15552345246338229142.a n = A223571 (n + 1)

end A223571

/-! ## A223571.P14853623838995596552

`lcm(3, A223576(A167614(n+1)))`
-/

namespace A223571.P14853623838995596552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A223576 (A167614 (n + 1)).toNat)

end

end A223571.P14853623838995596552

namespace A223571

/-- `lcm(3, A223576(A167614(n+1)))` -/
def P14853623838995596552.Spec : Prop :=
  ∀ n, (P14853623838995596552.a n : ℤ) = A223571 (n + 1)

end A223571

/-! ## A223571.P1731659443189279361

`A223576(A167614(n+1))+A025469(n)`
-/

namespace A223571.P1731659443189279361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223576 (A167614 (n + 1)).toNat + A025469 n

end

end A223571.P1731659443189279361

namespace A223571

/-- `A223576(A167614(n+1))+A025469(n)` -/
def P1731659443189279361.Spec : Prop :=
  ∀ n, P1731659443189279361.a n = A223571 (n + 1)

end A223571

/-! ## A223571.P11874627206173842266

`or(A000007(n), A223576(A167614(n+1)))`
-/

namespace A223571.P11874627206173842266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A223576 (A167614 (n + 1)).toNat)

end

end A223571.P11874627206173842266

namespace A223571

/-- `or(A000007(n), A223576(A167614(n+1)))` -/
def P11874627206173842266.Spec : Prop :=
  ∀ n, P11874627206173842266.a n = A223571 (n + 1)

end A223571

/-!
# A223572: Number of nX4 0..2 arrays with antidiagonals unimodal.

The programs for A223572, there is no canonical definition to state claims against.
-/

/-! ## A223572.P5239445230087552520

`A223576(A052905(n)+9)`
-/

namespace A223572.P5239445230087552520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223576 (A052905 n + 9).toNat

end

end A223572.P5239445230087552520

/-! ## A223572.P6883799914680753630

`A223576(A055999(n)+10)`
-/

namespace A223572.P6883799914680753630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223576 (A055999 n + 10).toNat

end

end A223572.P6883799914680753630

/-! ## A223572.P16578181305717794443

`A223576(A167614(n+2)+1)`
-/

namespace A223572.P16578181305717794443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223576 (A167614 (n + 2) + 1).toNat

end

end A223572.P16578181305717794443

/-! ## A223572.P11967266197798139056

`A223576(Δ[A264443(n)-n²])`
-/

namespace A223572.P11967266197798139056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223576 (f1 (n + 1) - f1 n).toNat

end

end A223572.P11967266197798139056

/-! ## A223572.P18205937978657223292

`A223576(Δ[A023545(n+1)-n²])`
-/

namespace A223572.P18205937978657223292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223576 (f1 (n + 1) - f1 n).toNat

end

end A223572.P18205937978657223292

/-!
# A223573: Number of nX5 0..2 arrays with antidiagonals unimodal.

The programs for A223573, there is no canonical definition to state claims against.
-/

/-! ## A223573.P10793051267419460302

`A223576(Δ[A006504(n+1)]-A264443(n))`
-/

namespace A223573.P10793051267419460302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223576 (f1 (n + 1) - f1 n - A264443 n).toNat

end

end A223573.P10793051267419460302

/-! ## A223573.P610582607160347197

`A223576(Δ[A264443(n)])`
-/

namespace A223573.P610582607160347197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223576 (f1 (n + 1) - f1 n).toNat

end

end A223573.P610582607160347197

/-! ## A223573.P14239847631349888707

`A223576(A374005(n+1))`
-/

namespace A223573.P14239847631349888707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223576 (A374005 (n + 1)).toNat

end

end A223573.P14239847631349888707

/-! ## A223573.P3904867027886554089

`A223576(A046691(n+3))`
-/

namespace A223573.P3904867027886554089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223576 (A046691 (n + 3)).toNat

end

end A223573.P3904867027886554089

/-! ## A223573.P18061627882778245886

`A223576(eq[2, A092921(n)])`
-/

namespace A223573.P18061627882778245886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223573.P18061627882778245886

/-!
# A223574: Number of nX6 0..2 arrays with antidiagonals unimodal.

The programs for A223574, there is no canonical definition to state claims against.
-/

/-! ## A223574.P1377887056726943350

`A223576(A133263(n+6)-(n+2))`
-/

namespace A223574.P1377887056726943350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223576 (A133263 (n + 6) - (n + 2 : ℤ)).toNat

end

end A223574.P1377887056726943350

/-! ## A223574.P12843305010175803229

`A223576(A374007(n+1))`
-/

namespace A223574.P12843305010175803229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223576 (A374007 (n + 1)).toNat

end

end A223574.P12843305010175803229

/-! ## A223574.P2803912167173899328

`A223576(eq[3, A219347(n)])`
-/

namespace A223574.P2803912167173899328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223574.P2803912167173899328

/-! ## A223574.P12729629333543322613

`A223576(eq[16, A057728(n+1)])`
-/

namespace A223574.P12729629333543322613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223574.P12729629333543322613

/-! ## A223574.P13156530157787963345

`A223576(Δ[Δ[A006504(n+1)]])`
-/

namespace A223574.P13156530157787963345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223576 (f1 (n + 1) - f1 n).toNat

end

end A223574.P13156530157787963345

/-!
# A223575: Number of nX7 0..2 arrays with antidiagonals unimodal.

The programs for A223575, there is no canonical definition to state claims against.
-/

/-! ## A223575.P1843726658032127365

`A223576(A133263(n+6)+5)`
-/

namespace A223575.P1843726658032127365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223576 (A133263 (n + 6) + 5).toNat

end

end A223575.P1843726658032127365

/-! ## A223575.P6453788436294708643

`A223576(eq[8, A131818(n+1)])`
-/

namespace A223575.P6453788436294708643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223575.P6453788436294708643

/-! ## A223575.P946868140123522053

`A223576(A374008(n+1))`
-/

namespace A223575.P946868140123522053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223576 (A374008 (n + 1)).toNat

end

end A223575.P946868140123522053

/-! ## A223575.P2678349335643284500

`A223576(eq[4, A219347(n)])`
-/

namespace A223575.P2678349335643284500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223575.P2678349335643284500

/-! ## A223575.P10402884596154713082

`A223576(eq[10, A185782(n+1)])`
-/

namespace A223575.P10402884596154713082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223575.P10402884596154713082

/-!
# A223576: T(n,k)=Number of nXk 0..2 arrays with antidiagonals unimodal.

The programs for A223576, there is no canonical definition to state claims against.
-/

/-! ## A223576.P15146204020407542590

`A064235(A154696(n))`
-/

namespace A223576.P15146204020407542590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064235 (A154696 n).toNat

end

end A223576.P15146204020407542590

/-! ## A223576.P14591480859831659449

`A132171(A154816(n))`
-/

namespace A223576.P14591480859831659449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132171 (A154816 n).toNat

end

end A223576.P14591480859831659449

/-! ## A223576.P9229224267690710771

`A132171(A257622(n))`
-/

namespace A223576.P9229224267690710771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132171 (A257622 n).toNat

end

end A223576.P9229224267690710771

/-! ## A223576.P8441945976155702188

`A006166(A183508(n+1))`
-/

namespace A223576.P8441945976155702188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006166 (A183508 (n + 1)).toNat

end

end A223576.P8441945976155702188

/-! ## A223576.P8164396528504500668

`A064235(A206700(n+1))`
-/

namespace A223576.P8164396528504500668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064235 (A206700 (n + 1)).toNat

end

end A223576.P8164396528504500668

/-!
# A223577: Positive integers k for which there is exactly one negative integer m such that -k = floor(cot(Pi/(2*m))).

The programs for A223577, there is no canonical definition to state claims against.
-/

/-! ## A223577.P12856528223124545990

`(A223578(n+1)+n)/2`
-/

namespace A223577.P12856528223124545990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223578 (n + 1) + (n : ℤ) : ℚ) / 2

end

end A223577.P12856528223124545990

/-! ## A223577.P8291472540303263258

`A004525(A223578(n+1)+n)`
-/

namespace A223577.P8291472540303263258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A223578 (n + 1) + (n : ℤ)).toNat

end

end A223577.P8291472540303263258

/-! ## A223577.P11824250907778397747

`A110654(A223578(n+1)+n)`
-/

namespace A223577.P11824250907778397747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A223578 (n + 1) + (n : ℤ)).toNat

end

end A223577.P11824250907778397747

/-! ## A223577.P5970786486725156739

`A001281(A223578(n+1)+n)`
-/

namespace A223577.P5970786486725156739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A223578 (n + 1) + (n : ℤ)).toNat

end

end A223577.P5970786486725156739

/-! ## A223577.P1700275160755940070

`A004526(A223578(n+1)+n)`
-/

namespace A223577.P1700275160755940070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A223578 (n + 1) + (n : ℤ)).toNat

end

end A223577.P1700275160755940070

/-!
# A223578: Positive integers k for which f(-k-1) < f(-k) < f(-k+1), where f(m) = floor(cot(Pi/(2m))).

The programs for A223578, there is no canonical definition to state claims against.
-/

/-! ## A223578.P11377417880478148434

`2*A223577(n+1)-n`
-/

namespace A223578.P11377417880478148434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A223577 (n + 1) - (n : ℤ)

end

end A223578.P11377417880478148434

/-! ## A223578.P12708012258332256767

`∪[A024813(n+1), A038537(n+1)]`
-/

namespace A223578.P12708012258332256767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A223578.P12708012258332256767

/-! ## A223578.P10394683242921786848

`∪[A024813(n+1), A171161(n+1)]`
-/

namespace A223578.P10394683242921786848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A223578.P10394683242921786848

/-! ## A223578.P1072230962610482673

`∪[A024813(n+1), A216977(n+1)]`
-/

namespace A223578.P1072230962610482673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A223578.P1072230962610482673

/-! ## A223578.P10713878892422762518

`A004277(A223577(n+1))-n`
-/

namespace A223578.P10713878892422762518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A223577 (n + 1)).toNat - (n : ℤ)

end

end A223578.P10713878892422762518

/-!
# A223579: Number of n X n 0..3 arrays with antidiagonals unimodal.

The programs for A223579, there is no canonical definition to state claims against.
-/

/-! ## A223579.P12450973971082398484

`A223585(∑[4*n]+1)`
-/

namespace A223579.P12450973971082398484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223585 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223579.P12450973971082398484

/-! ## A223579.P5540921816235833558

`∏[A223756(n+1)]/A223659(n+1)`
-/

namespace A223579.P5540921816235833558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223756 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A223659 (n + 1) : ℚ)

end

end A223579.P5540921816235833558

/-!
# A223580: Number of nX3 0..3 arrays with antidiagonals unimodal.

The programs for A223580, there is no canonical definition to state claims against.
-/

/-! ## A223580.P3471883316730758174

`A047900(n+1)²/ceil(2^(n-1))`
-/

namespace A223580.P3471883316730758174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047900 (n + 1) ^ 2 : ℚ) / (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℚ)

end

end A223580.P3471883316730758174

/-! ## A223580.P3242142252389784130

`(8*A346178(n))²/A011782(n)`
-/

namespace A223580.P3242142252389784130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 * A346178 n) ^ 2 : ℚ) / (A011782 n : ℚ)

end

end A223580.P3242142252389784130

/-! ## A223580.P9776114396297426269

`(Δ[A048490(n)]*A005054(n))²/A011782(n)`
-/

namespace A223580.P9776114396297426269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048490 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) * A005054 n) ^ 2 : ℚ) / (A011782 n : ℚ)

end

end A223580.P9776114396297426269

/-! ## A223580.P2309329458177755566

`(A000079(n+3)*A005054(n))²/A011782(n)`
-/

namespace A223580.P2309329458177755566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000079 (n + 3) * A005054 n) ^ 2 : ℚ) / (A011782 n : ℚ)

end

end A223580.P2309329458177755566

/-! ## A223580.P7980350194559910278

`(A005054(n)*A011782(n+4))²/A011782(n)`
-/

namespace A223580.P7980350194559910278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A005054 n * A011782 (n + 4)) ^ 2 : ℚ) / (A011782 n : ℚ)

end

end A223580.P7980350194559910278

/-! ## A223580.P16210468367519513802

`(A000079(n+3)*A026395(2*n))²/A011782(n)`
-/

namespace A223580.P16210468367519513802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000079 (n + 3) * A026395 (2 * n)) ^ 2 : ℚ) / (A011782 n : ℚ)

end

end A223580.P16210468367519513802

/-! ## A223580.P3811012201875727763

`((A055842(n+1)+A000007(n))*A000079(n+1))²/A011782(n)`
-/

namespace A223580.P3811012201875727763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A055842 (n + 1) + A000007 n) * A000079 (n + 1)) ^ 2 : ℚ) / (A011782 n : ℚ)

end

end A223580.P3811012201875727763

/-!
# A223581: Number of nX4 0..3 arrays with antidiagonals unimodal.

The programs for A223581, there is no canonical definition to state claims against.
-/

/-! ## A223581.P17912854350076526707

`A223585(A141214(n)+7)`
-/

namespace A223581.P17912854350076526707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223585 (A141214 n + 7).toNat

end

end A223581.P17912854350076526707

/-! ## A223581.P8238672396492556924

`A223585(A052905(n)+9)`
-/

namespace A223581.P8238672396492556924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223585 (A052905 n + 9).toNat

end

end A223581.P8238672396492556924

/-! ## A223581.P17434742818043808004

`A223585(A055999(n)+10)`
-/

namespace A223581.P17434742818043808004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223585 (A055999 n + 10).toNat

end

end A223581.P17434742818043808004

/-! ## A223581.P2621655711313895725

`A223585(A167614(n+2)+1)`
-/

namespace A223581.P2621655711313895725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223585 (A167614 (n + 2) + 1).toNat

end

end A223581.P2621655711313895725

/-! ## A223581.P5344675050386489022

`A223585(Δ[A264443(n)-n²])`
-/

namespace A223581.P5344675050386489022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223585 (f1 (n + 1) - f1 n).toNat

end

end A223581.P5344675050386489022

/-!
# A223582: Number of nX5 0..3 arrays with antidiagonals unimodal.

The programs for A223582, there is no canonical definition to state claims against.
-/

/-! ## A223582.P16250767418483422067

`A223585(Δ[A006504(n+1)]-A264443(n))`
-/

namespace A223582.P16250767418483422067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223585 (f1 (n + 1) - f1 n - A264443 n).toNat

end

end A223582.P16250767418483422067

/-! ## A223582.P6370065905561554830

`A223585(Δ[A264443(n)])`
-/

namespace A223582.P6370065905561554830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223585 (f1 (n + 1) - f1 n).toNat

end

end A223582.P6370065905561554830

/-! ## A223582.P4132631808892056438

`A223585(A374005(n+1))`
-/

namespace A223582.P4132631808892056438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223585 (A374005 (n + 1)).toNat

end

end A223582.P4132631808892056438

/-! ## A223582.P16807146151358192093

`A223585(eq[4, A025581(n)]+1)`
-/

namespace A223582.P16807146151358192093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223585 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A223582.P16807146151358192093

/-!
# A223583: 

The programs for A223583, there is no canonical definition to state claims against.
-/

/-! ## A223583.P17816031484944175354

`A223585(A167499(n+4)+1)`
-/

namespace A223583.P17816031484944175354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223585 (A167499 (n + 4) + 1).toNat

end

end A223583.P17816031484944175354

/-! ## A223583.P5538174134081426954

`A223585(A055999(n+3)+1)`
-/

namespace A223583.P5538174134081426954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223585 (A055999 (n + 3) + 1).toNat

end

end A223583.P5538174134081426954

/-! ## A223583.P2415727906232897112

`A223585(eq[5, A025581(n)]+1)`
-/

namespace A223583.P2415727906232897112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223585 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A223583.P2415727906232897112

/-! ## A223583.P14944294467854788004

`A223585(Δ[Δ[A006504(n+1)]])`
-/

namespace A223583.P14944294467854788004
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223585 (f1 (n + 1) - f1 n).toNat

end

end A223583.P14944294467854788004

/-!
# A223585: T(n,k)=Number of nXk 0..3 arrays with antidiagonals unimodal.

The programs for A223585, there is no canonical definition to state claims against.
-/

/-! ## A223585.P7916044467291873006

`A006288(A223576(n+1))`
-/

namespace A223585.P7916044467291873006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006288 (A223576 (n + 1)).toNat

end

end A223585.P7916044467291873006

/-! ## A223585.P6756807934249442356

`A187084(A185957(n+1))`
-/

namespace A223585.P6756807934249442356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187084 (A185957 (n + 1)).toNat

end

end A223585.P6756807934249442356

/-!
# A223586: Number of n X n 0..1 arrays with every row having the same least squares slope fit to a straight line, and every column the same least squares slope fit to a straight line, with a single point array taken as having zero slope.

The programs for A223586, there is no canonical definition to state claims against.
-/

/-! ## A223586.P11881014702206974864

`A223592(∑[4*n]+1)`
-/

namespace A223586.P11881014702206974864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223592 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223586.P11881014702206974864

/-! ## A223586.P11354328283476901816

`lcm(2, A223592(or(1, ∑[4*n])))`
-/

namespace A223586.P11354328283476901816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A223592 (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A223586.P11354328283476901816

/-! ## A223586.P11803098393127137239

`lcm(2, A223592(A001844(n)))`
-/

namespace A223586.P11803098393127137239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A223592 (A001844 n).toNat)

end

end A223586.P11803098393127137239

/-! ## A223586.P14655492374118747380

`A223592(A001844(n))/A007318(∑[n])`
-/

namespace A223586.P14655492374118747380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223592 (A001844 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A223586.P14655492374118747380

/-! ## A223586.P18076204601333635374

`A223592(A001844(n))*A330098(n+1)`
-/

namespace A223586.P18076204601333635374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223592 (A001844 n).toNat * A330098 (n + 1)

end

end A223586.P18076204601333635374

/-!
# A223587: Number of nX3 0..1 arrays with every row having the same least squares slope fit to a straight line, and every column the same least squares slope fit to a straight line, with a single point array taken as having zero slope.

The programs for A223587, there is no canonical definition to state claims against.
-/

/-! ## A223587.P10499176210557191529

`A223592(∑[n+2]+4)`
-/

namespace A223587.P10499176210557191529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223592 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223587.P10499176210557191529

/-! ## A223587.P5803263127727548712

`lcm(2, A223592(A167614(n+1)))`
-/

namespace A223587.P5803263127727548712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A223592 (A167614 (n + 1)).toNat)

end

end A223587.P5803263127727548712

/-! ## A223587.P7928444778368186125

`record[A223592(n+4)/A092392(n)]`
-/

namespace A223587.P7928444778368186125
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223592 (n + 4) : ℚ) / (A092392 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223587.P7928444778368186125

/-! ## A223587.P2058953282824289775

`record[A223592(n+4)/A100100(n)]`
-/

namespace A223587.P2058953282824289775
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223592 (n + 4) : ℚ) / (A100100 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223587.P2058953282824289775

/-! ## A223587.P14854986058905704370

`record[gcd(A025581(n), A223592(n+4))]`
-/

namespace A223587.P14854986058905704370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A223592 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223587.P14854986058905704370

/-!
# A223588: Number of nX4 0..1 arrays with every row having the same least squares slope fit to a straight line, and every column the same least squares slope fit to a straight line, with a single point array taken as having zero slope.

The programs for A223588, there is no canonical definition to state claims against.
-/

/-! ## A223588.P4554149959310512364

`A223592(∑[n+3]+7)`
-/

namespace A223588.P4554149959310512364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223592 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A223588.P4554149959310512364

/-! ## A223588.P1740393932563288612

`lcm(2, A223592(A052905(n)+9))`
-/

namespace A223588.P1740393932563288612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A223592 (A052905 n + 9).toNat)

end

end A223588.P1740393932563288612

/-! ## A223588.P12517346675170265876

`A007318(C(n, 2))*A223592(A052905(n)+9)`
-/

namespace A223588.P12517346675170265876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A223592 (A052905 n + 9).toNat

end

end A223588.P12517346675170265876

/-! ## A223588.P8649164584575399827

`A223592(A052905(n)+9)+A000045(floor(n/30))`
-/

namespace A223588.P8649164584575399827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223592 (A052905 n + 9).toNat + A000045 ⌊(n : ℚ) / 30⌋.toNat

end

end A223588.P8649164584575399827

/-! ## A223588.P7708079439619655961

`A007318(floor(n/30))*A223592(A052905(n)+9)`
-/

namespace A223588.P7708079439619655961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊(n : ℚ) / 30⌋.toNat * A223592 (A052905 n + 9).toNat

end

end A223588.P7708079439619655961

/-!
# A223589: Number of nX5 0..1 arrays with every row having the same least squares slope fit to a straight line, and every column the same least squares slope fit to a straight line, with a single point array taken as having zero slope.

The programs for A223589, there is no canonical definition to state claims against.
-/

/-! ## A223589.P13958201257523019159

`A223592(A374005(n+1))`
-/

namespace A223589.P13958201257523019159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223592 (A374005 (n + 1)).toNat

end

end A223589.P13958201257523019159

/-! ## A223589.P5750206053811029878

`A223592(A155212(n)+13)`
-/

namespace A223589.P5750206053811029878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223592 (A155212 n + 13).toNat

end

end A223589.P5750206053811029878

/-! ## A223589.P5238056267168335038

`A223592(A056000(n)+15)`
-/

namespace A223589.P5238056267168335038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223592 (A056000 n + 15).toNat

end

end A223589.P5238056267168335038

/-! ## A223589.P9281631999825433593

`A223592(eq[7, A066657(n)])`
-/

namespace A223589.P9281631999825433593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223592 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223589.P9281631999825433593

/-! ## A223589.P12413544137182389413

`A223592(A167614(n+3)+2)`
-/

namespace A223589.P12413544137182389413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223592 (A167614 (n + 3) + 2).toNat

end

end A223589.P12413544137182389413

/-!
# A223590: Number of n X 6 0..1 arrays with every row having the same least squares slope fit to a straight line, and every column the same least squares slope fit to a straight line, with a single point array taken as having zero slope.

The programs for A223590, there is no canonical definition to state claims against.
-/

/-! ## A223590.P15305475899390931870

`A223592(A374007(n+1))`
-/

namespace A223590.P15305475899390931870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223592 (A374007 (n + 1)).toNat

end

end A223590.P15305475899390931870

/-! ## A223590.P3493154227697186514

`A223592(A167499(n+4)+1)`
-/

namespace A223590.P3493154227697186514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223592 (A167499 (n + 4) + 1).toNat

end

end A223590.P3493154227697186514

/-! ## A223590.P4363246916829799130

`A223592(A000217(n+5)+6)`
-/

namespace A223590.P4363246916829799130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223592 (A000217 (n + 5) + 6).toNat

end

end A223590.P4363246916829799130

/-! ## A223590.P8371509727831890253

`A223592(A034856(n+4)+8)`
-/

namespace A223590.P8371509727831890253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223592 (A034856 (n + 4) + 8).toNat

end

end A223590.P8371509727831890253

/-! ## A223590.P13874459886577385543

`A223592(A052905(n+2)+11)`
-/

namespace A223590.P13874459886577385543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223592 (A052905 (n + 2) + 11).toNat

end

end A223590.P13874459886577385543

/-!
# A223591: Number of nX7 0..1 arrays with every row having the same least squares slope fit to a straight line, and every column the same least squares slope fit to a straight line, with a single point array taken as having zero slope.

The programs for A223591, there is no canonical definition to state claims against.
-/

/-! ## A223591.P2165080106498827417

`A223592(A374008(n+1))`
-/

namespace A223591.P2165080106498827417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223592 (A374008 (n + 1)).toNat

end

end A223591.P2165080106498827417

/-! ## A223591.P2293572150912053845

`A223592(eq[11, A066657(n)])`
-/

namespace A223591.P2293572150912053845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223592 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223591.P2293572150912053845

/-! ## A223591.P16659368736484746454

`A223592(A000124(n+6)+6)`
-/

namespace A223591.P16659368736484746454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223592 (A000124 (n + 6) + 6).toNat

end

end A223591.P16659368736484746454

/-! ## A223591.P3608779315017763837

`A223592(A155212(n+2)+15)`
-/

namespace A223591.P3608779315017763837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223592 (A155212 (n + 2) + 15).toNat

end

end A223591.P3608779315017763837

/-! ## A223591.P8484542711737646977

`A223592(eq[8, A131818(n+1)])`
-/

namespace A223591.P8484542711737646977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223592 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223591.P8484542711737646977

/-!
# A223592: T(n,k) = Number of n X k 0..1 arrays with every row having the same least squares slope fit to a straight line, and every column the same least squares slope fit to a straight line, with a single point array taken as having zero slope.

The programs for A223592, there is no canonical definition to state claims against.
-/

/-! ## A223592.P13879719515719240483

`∏{e}[A008776(n), A131816(#)]`
-/

namespace A223592.P13879719515719240483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A131816 (Nat.factorization (f1 n).natAbs p)

end

end A223592.P13879719515719240483

/-! ## A223592.P15258017964298737313

`A131816(n)*A242200(A061906(n))`
-/

namespace A223592.P15258017964298737313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131816 n * A242200 (A061906 n).toNat

end

end A223592.P15258017964298737313

/-!
# A223593: Petersen graph (8,2) coloring a rectangular array: number of n X n 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal, diagonal or antidiagonal neighbor moves along an edge of this graph.

The programs for A223593, there is no canonical definition to state claims against.
-/

/-! ## A223593.P18311142360223457305

`A223599((n+1)²+n²)`
-/

namespace A223593.P18311142360223457305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 ((n + 1) ^ 2 + n ^ 2)

end

end A223593.P18311142360223457305

/-!
# A223594: Petersen graph (8,2) coloring a rectangular array: number of n X 3 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal, diagonal or antidiagonal neighbor moves along an edge of this graph.

The programs for A223594, there is no canonical definition to state claims against.
-/

/-! ## A223594.P17710471454540628622

`A223599(∑[n+3]+1)`
-/

namespace A223594.P17710471454540628622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223594.P17710471454540628622

/-! ## A223594.P12397569700591231033

`record[A223599(A198464(n+1))]`
-/

namespace A223594.P12397569700591231033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223594.P12397569700591231033

/-! ## A223594.P14402074005516063239

`A223599(A034856(n+2))*A353627(3*n+5)`
-/

namespace A223594.P14402074005516063239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (A034856 (n + 2)).toNat * A353627 (3 * n + 5)

end

end A223594.P14402074005516063239

/-!
# A223595: Petersen graph (8,2) coloring a rectangular array: number of nX4 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal, diagonal or antidiagonal neighbor moves along an edge of this graph.

The programs for A223595, there is no canonical definition to state claims against.
-/

/-! ## A223595.P18034673999351581329

`A223599(A141214(n+1))`
-/

namespace A223595.P18034673999351581329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (A141214 (n + 1)).toNat

end

end A223595.P18034673999351581329

/-! ## A223595.P18441989784012312665

`A223599(A155212(n)+5)`
-/

namespace A223595.P18441989784012312665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (A155212 n + 5).toNat

end

end A223595.P18441989784012312665

/-! ## A223595.P788653995148770981

`A223599(A056000(n)+7)`
-/

namespace A223595.P788653995148770981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (A056000 n + 7).toNat

end

end A223595.P788653995148770981

/-! ## A223595.P12389002005120084844

`A223599(eq[3, A193592(n)])`
-/

namespace A223595.P12389002005120084844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223595.P12389002005120084844

/-! ## A223595.P17035540545569268735

`A223599(A052905(n+1)+2)`
-/

namespace A223595.P17035540545569268735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (A052905 (n + 1) + 2).toNat

end

end A223595.P17035540545569268735

/-!
# A223596: Petersen graph (8,2) coloring a rectangular array: number of nX5 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal, diagonal or antidiagonal neighbor moves along an edge of this graph.

The programs for A223596, there is no canonical definition to state claims against.
-/

/-! ## A223596.P13835481391650973935

`A223599(Δ[A264443(n)])`
-/

namespace A223596.P13835481391650973935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (f1 (n + 1) - f1 n).toNat

end

end A223596.P13835481391650973935

/-! ## A223596.P15174736611142528638

`A223599(A046691(n+3))`
-/

namespace A223596.P15174736611142528638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (A046691 (n + 3)).toNat

end

end A223596.P15174736611142528638

/-! ## A223596.P18374457431202309576

`A223599(eq[2, A092921(n)])`
-/

namespace A223596.P18374457431202309576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223596.P18374457431202309576

/-! ## A223596.P12382943114019904953

`A223599(eq[4, A193592(n)])`
-/

namespace A223596.P12382943114019904953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223596.P12382943114019904953

/-! ## A223596.P7583235207880209693

`A223599(Δ[A023545(n+1)])`
-/

namespace A223596.P7583235207880209693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (f1 (n + 1) - f1 n).toNat

end

end A223596.P7583235207880209693

/-!
# A223597: Petersen graph (8,2) coloring a rectangular array: number of nX6 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal, diagonal or antidiagonal neighbor moves along an edge of this graph.

The programs for A223597, there is no canonical definition to state claims against.
-/

/-! ## A223597.P7408447782845257188

`A223599(eq[3, A219347(n)])`
-/

namespace A223597.P7408447782845257188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223597.P7408447782845257188

/-! ## A223597.P15218258761258485328

`A223599(eq[5, A193592(n)])`
-/

namespace A223597.P15218258761258485328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223597.P15218258761258485328

/-! ## A223597.P3918598628165409264

`A223599(eq[8, A258709(n)])`
-/

namespace A223597.P3918598628165409264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223597.P3918598628165409264

/-! ## A223597.P13810864158202086645

`A223599(eq[8, A185782(n+1)])`
-/

namespace A223597.P13810864158202086645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223597.P13810864158202086645

/-! ## A223597.P13211364366675383403

`A223599(Δ[Δ[A006504(n+1)]])`
-/

namespace A223597.P13211364366675383403
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (f1 (n + 1) - f1 n).toNat

end

end A223597.P13211364366675383403

/-!
# A223598: Petersen graph (8,2) coloring a rectangular array: number of nX7 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal, diagonal or antidiagonal neighbor moves along an edge of this graph.

The programs for A223598, there is no canonical definition to state claims against.
-/

/-! ## A223598.P8948868894351857193

`A223599(eq[4, A219347(n)])`
-/

namespace A223598.P8948868894351857193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223598.P8948868894351857193

/-! ## A223598.P14562599248011086898

`A223599(eq[6, A193592(n)])`
-/

namespace A223598.P14562599248011086898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223598.P14562599248011086898

/-!
# A223599: T(n,k)=Petersen graph (8,2) coloring a rectangular array: number of nXk 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal, diagonal or antidiagonal neighbor moves along an edge of this graph.

The programs for A223599, there is no canonical definition to state claims against.
-/

/-! ## A223599.P3199752573692470320

`A223692(A341313(n+2)^A366168(n+1))`
-/

namespace A223599.P3199752573692470320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (SequenceMachineLib.roundAway ((A341313 (n + 2) : ℚ) ^ (A366168 (n + 1) : ℤ))).toNat

end

end A223599.P3199752573692470320

/-! ## A223599.P13858492967050083008

`A223692(A080383(n)^A229885(n))`
-/

namespace A223599.P13858492967050083008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (SequenceMachineLib.roundAway ((A080383 n : ℚ) ^ (A229885 n : ℤ))).toNat

end

end A223599.P13858492967050083008

