import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C001
import Seq.B009.C000
import Seq.B011.C000
import Seq.Opaque.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

/-!
# A221600: Number of nX2 arrays of occupancy after each element moves to some king-move neighbor, without move-in move-out left turns.

The programs for A221600, there is no canonical definition to state claims against.
-/

/-! ## A221600.P3749017128368162936

`A221602(∑[n+1]+2)`
-/

namespace A221600.P3749017128368162936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221602 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221600.P3749017128368162936

/-! ## A221600.P2200123644437157118

`record[gcd(A098825(n), A221602(n+1))]`
-/

namespace A221600.P2200123644437157118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098825 n) (A221602 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221600.P2200123644437157118

/-! ## A221600.P14260498965972868316

`record[A221602(n+3)/A167584(n+1)]`
-/

namespace A221600.P14260498965972868316
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221602 (n + 3) : ℚ) / (A167584 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221600.P14260498965972868316

/-!
# A221601: Number of n X 3 arrays of occupancy after each element moves to some king-move neighbor, without move-in move-out left turns.

The programs for A221601, there is no canonical definition to state claims against.
-/

/-! ## A221601.P15533185378452044168

`A221602(∑[n+2]+4)`
-/

namespace A221601.P15533185378452044168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221602 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221601.P15533185378452044168

/-! ## A221601.P10430182775703418560

`record[A132013(n)*A221602(n+4)]`
-/

namespace A221601.P10430182775703418560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132013 n * A221602 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221601.P10430182775703418560

/-!
# A221602: T(n,k)=Number of nXk arrays of occupancy after each element moves to some king-move neighbor, without move-in move-out left turns.

The programs for A221602, there is no canonical definition to state claims against.
-/

/-! ## A221602.P16228051548275761492

`A221229(n+1)+A137579(A000081(n))`
-/

namespace A221602.P16228051548275761492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221229 (n + 1) + A137579 (A000081 n).toNat

end

end A221602.P16228051548275761492

/-! ## A221602.P2667493453937658445

`A221229(n+1)+A185037(A357940(2*(n+2)))`
-/

namespace A221602.P2667493453937658445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221229 (n + 1) + A185037 (A357940 (2 * (n + 2))).toNat

end

end A221602.P2667493453937658445

/-!
# A221603: Number of n X n arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without move-in move-out left turns.

The programs for A221603, there is no canonical definition to state claims against.
-/

/-! ## A221603.P4447206535123353024

`A221609(4*∑[n]+1)`
-/

namespace A221603.P4447206535123353024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221609 (4 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A221603.P4447206535123353024

/-!
# A221604: Number of n X 3 arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without move-in move-out left turns.

The programs for A221604, the canonical program `A221604.P6365961932242925290` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221604 has offset 1).

The definition of A221604 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221604.P13337348890304310958

`ogf((2-2x+2x^2-x^3)/(1-6x+4x^2-2x^3+2x^4))`
-/

namespace A221604.P13337348890304310958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, 2, -1] [1, -6, 4, -2, 2] n

end

end A221604.P13337348890304310958

namespace A221604

/-- `ogf((2-2x+2x^2-x^3)/(1-6x+4x^2-2x^3+2x^4))` -/
def P13337348890304310958.Spec : Prop :=
  ∀ n, P13337348890304310958.a n = A221604 (n + 1)

end A221604

/-! ## A221604.P6365961932242925290

`6*a(n-1)-4*a(n-2)+2*a(n-3)-2*a(n-4)` with `a(0)=2, a(1)=10, a(2)=54, a(3)=287`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A221604

/-- `6*a(n-1)-4*a(n-2)+2*a(n-3)-2*a(n-4)` -/
def P6365961932242925290.Spec : Prop :=
  ∀ n, P6365961932242925290.a n = A221604 (n + 1)

theorem P6365961932242925290.correct : P6365961932242925290.Spec := by
  intro n
  simp only [A221604, Nat.add_sub_cancel]

end A221604

/-! ## A221604.P8131179660533863917

`A221609(∑[n+3]+1)`
-/

namespace A221604.P8131179660533863917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221609 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221604.P8131179660533863917

namespace A221604

/-- `A221609(∑[n+3]+1)` -/
def P8131179660533863917.Spec : Prop :=
  ∀ n, P8131179660533863917.a n = A221604 (n + 1)

end A221604

/-!
# A221605: Number of n X 4 arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without move-in move-out left turns.

The programs for A221605, there is no canonical definition to state claims against.
-/

/-! ## A221605.P13062934378560008290

`A221609(A141214(n+1))`
-/

namespace A221605.P13062934378560008290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221609 (A141214 (n + 1)).toNat

end

end A221605.P13062934378560008290

/-!
# A221606: Number of nX5 arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without move-in move-out left turns.

The programs for A221606, there is no canonical definition to state claims against.
-/

/-! ## A221606.P519946968787192419

`A221609(Δ[A264443(n)])`
-/

namespace A221606.P519946968787192419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221609 (f1 (n + 1) - f1 n).toNat

end

end A221606.P519946968787192419

/-!
# A221607: Number of nX6 arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without move-in move-out left turns.

The programs for A221607, there is no canonical definition to state claims against.
-/

/-! ## A221607.P12873311909198206566

`A221609(A052905(n+3))`
-/

namespace A221607.P12873311909198206566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221609 (A052905 (n + 3)).toNat

end

end A221607.P12873311909198206566

/-!
# A221608: Number of nX7 arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without move-in move-out left turns.

The programs for A221608, there is no canonical definition to state claims against.
-/

/-! ## A221608.P17145520874751624823

`A221609(eq[6, A193592(n)])`
-/

namespace A221608.P17145520874751624823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221609 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221608.P17145520874751624823

/-!
# A221610: Number of 2 X n arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without move-in move-out left turns.

The programs for A221610, the canonical program `A221610.P11220112268849473239` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221610 has offset 1).

The definition of A221610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221610.P11220112268849473239

`ogf((2x-4x^2+x^3-2x^4+2x^5+3x^6)/(1-7x+9x^2+5x^3-10x^4+3x^5))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A221610

/-- `ogf((2x-4x^2+x^3-2x^4+2x^5+3x^6)/(1-7x+9x^2+5x^3-10x^4+3x^5))` -/
def P11220112268849473239.Spec : Prop :=
  ∀ n, P11220112268849473239.a n = A221610 (n + 1)

theorem P11220112268849473239.correct : P11220112268849473239.Spec := by
  intro n
  simp only [A221610, Nat.add_sub_cancel]

end A221610

/-! ## A221610.P18230584044988143129

`A221609(∑[n+1]+2)`
-/

namespace A221610.P18230584044988143129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221609 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221610.P18230584044988143129

namespace A221610

/-- `A221609(∑[n+1]+2)` -/
def P18230584044988143129.Spec : Prop :=
  ∀ n, P18230584044988143129.a n = A221610 (n + 1)

end A221610

/-! ## A221610.P8640783320846954656

`record[A221609(A133263(n-4*floor(n/10)))]`
-/

namespace A221610.P8640783320846954656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221609 (A133263 ((n : ℤ) - 4 * ⌊(n : ℚ) / 10⌋).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221610.P8640783320846954656

namespace A221610

/-- `record[A221609(A133263(n-4*floor(n/10)))]` -/
def P8640783320846954656.Spec : Prop :=
  ∀ n, P8640783320846954656.a n = A221610 (n + 1)

end A221610

/-! ## A221610.P1522547203058098529

`record[A221609(n+3)/A109281(n)]`
-/

namespace A221610.P1522547203058098529
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221609 (n + 3) : ℚ) / (A109281 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221610.P1522547203058098529

namespace A221610

/-- `record[A221609(n+3)/A109281(n)]` -/
def P1522547203058098529.Spec : Prop :=
  ∀ n, P1522547203058098529.a n = (A221610 (n + 1) : ℚ)

end A221610

/-! ## A221610.P8059185267564034957

`record[A221609(A133263(n)-A217657(n))]`
-/

namespace A221610.P8059185267564034957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221609 (A133263 n - A217657 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221610.P8059185267564034957

namespace A221610

/-- `record[A221609(A133263(n)-A217657(n))]` -/
def P8059185267564034957.Spec : Prop :=
  ∀ n, P8059185267564034957.a n = A221610 (n + 1)

end A221610

/-!
# A221611: Number of 3 X n arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without move-in move-out left turns.

The programs for A221611, there is no canonical definition to state claims against.
-/

/-! ## A221611.P5326681632910150334

`A221609(∑[n+2]+4)`
-/

namespace A221611.P5326681632910150334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221609 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221611.P5326681632910150334

/-!
# A221612: Number of 4Xn arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without move-in move-out left turns.

The programs for A221612, there is no canonical definition to state claims against.
-/

/-! ## A221612.P8936240184062485368

`A221609(A141214(n)+7)`
-/

namespace A221612.P8936240184062485368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221609 (A141214 n + 7).toNat

end

end A221612.P8936240184062485368

/-!
# A221613: Number of 5Xn arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without move-in move-out left turns.

The programs for A221613, there is no canonical definition to state claims against.
-/

/-! ## A221613.P17355234385601853303

`A221609(A167499(n+3))`
-/

namespace A221613.P17355234385601853303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221609 (A167499 (n + 3)).toNat

end

end A221613.P17355234385601853303

/-!
# A221614: Number of 6Xn arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without move-in move-out left turns.

The programs for A221614, there is no canonical definition to state claims against.
-/

/-! ## A221614.P1469257196810451808

`A221609(A056115(n)+21)`
-/

namespace A221614.P1469257196810451808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221609 (A056115 n + 21).toNat

end

end A221614.P1469257196810451808

/-!
# A221615: Number of 7 X n arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without move-in move-out left turns.

The programs for A221615, there is no canonical definition to state claims against.
-/

/-! ## A221615.P5342637515833769098

`A221609(A133263(n+6)+5)`
-/

namespace A221615.P5342637515833769098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221609 (A133263 (n + 6) + 5).toNat

end

end A221615.P5342637515833769098

/-!
# A221618: Number of n X n arrays with each row a permutation of 1..n having at least as many downsteps as the preceding row.

The programs for A221618, there is no canonical definition to state claims against.
-/

/-! ## A221618.P4416528247734334295

`A221623((n+1)²+n²)`
-/

namespace A221618.P4416528247734334295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221623 ((n + 1) ^ 2 + n ^ 2)

end

end A221618.P4416528247734334295

/-!
# A221619: Number of n X 4 arrays with each row a permutation of 1..4 having at least as many downsteps as the preceding row.

The programs for A221619, there is no canonical definition to state claims against.
-/

/-! ## A221619.P17795109139087585742

`∑[A014926(2+n)]+1`
-/

namespace A221619.P17795109139087585742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014926 (2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A221619.P17795109139087585742

/-! ## A221619.P13449093775734751475

`∑[∑[A081127(n+2)]+1]+1`
-/

namespace A221619.P13449093775734751475
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081127 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A221619.P13449093775734751475

/-! ## A221619.P907537214316191023

`A221623(∑[n+4]+3)`
-/

namespace A221619.P907537214316191023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221623 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A221619.P907537214316191023

/-!
# A221620: Number of n X 5 arrays with each row a permutation of 1..5 having at least as many downsteps as the preceding row.

The programs for A221620, there is no canonical definition to state claims against.
-/

/-! ## A221620.P10735777911060653115

`A221623(eq[4, A193592(n)])`
-/

namespace A221620.P10735777911060653115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221623 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221620.P10735777911060653115

/-!
# A221621: Number of nX6 arrays with each row a permutation of 1..6 having at least as many downsteps as the preceding row.

The programs for A221621, there is no canonical definition to state claims against.
-/

/-! ## A221621.P15518370445930914307

`A221623(A052905(n+3))`
-/

namespace A221621.P15518370445930914307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221623 (A052905 (n + 3)).toNat

end

end A221621.P15518370445930914307

/-!
# A221622: Number of nX7 arrays with each row a permutation of 1..7 having at least as many downsteps as the preceding row.

The programs for A221622, there is no canonical definition to state claims against.
-/

/-! ## A221622.P5478763257519301002

`A221623(A055999(n+4))`
-/

namespace A221622.P5478763257519301002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221623 (A055999 (n + 4)).toNat

end

end A221622.P5478763257519301002

/-!
# A221623: T(n,k)=Number of nXk arrays with each row a permutation of 1..k having at least as many downsteps as the preceding row.

The programs for A221623, there is no canonical definition to state claims against.
-/

/-! ## A221623.P2015598862945923017

`A249817(A222159(n+1)^A261585(n))`
-/

namespace A221623.P2015598862945923017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249817 (SequenceMachineLib.roundAway ((A222159 (n + 1) : ℚ) ^ (A261585 n : ℤ))).toNat

end

end A221623.P2015598862945923017

/-! ## A221623.P6404827880980803786

`A250246(A222159(n+1)^A261585(n))`
-/

namespace A221623.P6404827880980803786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (SequenceMachineLib.roundAway ((A222159 (n + 1) : ℚ) ^ (A261585 n : ℤ))).toNat

end

end A221623.P6404827880980803786

/-! ## A221623.P15304720392726731136

`A089900(n)+8*A098862(A203092(n))`
-/

namespace A221623.P15304720392726731136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089900 n + 8 * A098862 (A203092 n).toNat

end

end A221623.P15304720392726731136

/-!
# A221624: Number of 2Xn arrays with each row a permutation of 1..n having at least as many downsteps as the preceding row.

The programs for A221624, there is no canonical definition to state claims against.
-/

/-! ## A221624.P7887220960188013093

`A221623(∑[n+1]+2)`
-/

namespace A221624.P7887220960188013093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221623 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221624.P7887220960188013093

/-! ## A221624.P541615635588014667

`record[ratio[A221623(A080036(n))]]`
-/

namespace A221624.P541615635588014667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221623 (A080036 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221624.P541615635588014667

/-! ## A221624.P13125930748210132670

`record[gcd(A221623(n+1), A264405(n))]`
-/

namespace A221624.P13125930748210132670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A221623 (n + 1)) (A264405 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221624.P13125930748210132670

/-! ## A221624.P8322849912851679305

`record[gcd(A059297(n), A221623(n+2))]`
-/

namespace A221624.P8322849912851679305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059297 n) (A221623 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221624.P8322849912851679305

/-!
# A221625: Number of 3Xn arrays with each row a permutation of 1..n having at least as many downsteps as the preceding row.

The programs for A221625, there is no canonical definition to state claims against.
-/

/-! ## A221625.P4528626344547929445

`A221623(∑[n+2]+4)`
-/

namespace A221625.P4528626344547929445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221623 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221625.P4528626344547929445

/-!
# A221626: Number of 4Xn arrays with each row a permutation of 1..n having at least as many downsteps as the preceding row.

The programs for A221626, there is no canonical definition to state claims against.
-/

/-! ## A221626.P14778670863725725659

`A221623(A141214(n)+7)`
-/

namespace A221626.P14778670863725725659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221623 (A141214 n + 7).toNat

end

end A221626.P14778670863725725659

/-!
# A221627: Number of 5Xn arrays with each row a permutation of 1..n having at least as many downsteps as the preceding row.

The programs for A221627, there is no canonical definition to state claims against.
-/

/-! ## A221627.P5980074557547190665

`A221623(A155212(n)+13)`
-/

namespace A221627.P5980074557547190665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221623 (A155212 n + 13).toNat

end

end A221627.P5980074557547190665

/-!
# A221628: Number of 6Xn arrays with each row a permutation of 1..n having at least as many downsteps as the preceding row.

The programs for A221628, there is no canonical definition to state claims against.
-/

/-! ## A221628.P7373660480376162084

`A221623(A133263(n+5)+4)`
-/

namespace A221628.P7373660480376162084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221623 (A133263 (n + 5) + 4).toNat

end

end A221628.P7373660480376162084

/-!
# A221629: Number of 7Xn arrays with each row a permutation of 1..n having at least as many downsteps as the preceding row.

The programs for A221629, there is no canonical definition to state claims against.
-/

/-! ## A221629.P2547383718587435413

`A221623(A167499(n+5)+2)`
-/

namespace A221629.P2547383718587435413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221623 (A167499 (n + 5) + 2).toNat

end

end A221629.P2547383718587435413

/-!
# A221630: Equals one maps: number of nX3 binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal, diagonal and antidiagonal neighbors in a random 0..3 nX3 array.

The programs for A221630, there is no canonical definition to state claims against.
-/

/-! ## A221630.P3858488010841651331

`A221632(∑[n+3]+1)`
-/

namespace A221630.P3858488010841651331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221632 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221630.P3858488010841651331

/-!
# A221631: Equals one maps: number of nX4 binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal, diagonal and antidiagonal neighbors in a random 0..3 nX4 array.

The programs for A221631, there is no canonical definition to state claims against.
-/

/-! ## A221631.P16295128994879924702

`A221632(A141214(n+1))`
-/

namespace A221631.P16295128994879924702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221632 (A141214 (n + 1)).toNat

end

end A221631.P16295128994879924702

/-!
# A221632: T(n,k)=Equals one maps: number of nXk binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal, diagonal and antidiagonal neighbors in a random 0..3 nXk array.

The programs for A221632, there is no canonical definition to state claims against.
-/

/-! ## A221632.P2625667052217344658

`A220916(n+1)+A046665(A157221(n))`
-/

namespace A221632.P2625667052217344658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220916 (n + 1) + A046665 (A157221 n).toNat

end

end A221632.P2625667052217344658

/-!
# A221633: Equals one maps: number of 2 X n binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal, diagonal and antidiagonal neighbors in a random 0..3 2 X n array.

The programs for A221633, the canonical program `A221633.P4733868854561897862` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221633 has offset 1).

The definition of A221633 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221633.P4733868854561897862

`ogf((1+2x-8x^2+10x^3+53x^4+80x^5+150x^6+72x^7+56x^8-32x^9)/(1-6x+3x^2+32x^3-45x^4-30x^5+77x^6-12x^7-36x^8+16x^9))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A221633

/-- `ogf((1+2x-8x^2+10x^3+53x^4+80x^5+150x^6+72x^7+56x^8-32x^9)/(1-6x+3x^2+32x^3-45x^4-30x^5+77x^6-12x^7-36x^8+16x^9))` -/
def P4733868854561897862.Spec : Prop :=
  ∀ n, P4733868854561897862.a n = A221633 (n + 1)

theorem P4733868854561897862.correct : P4733868854561897862.Spec := by
  intro n
  simp only [A221633, Nat.add_sub_cancel]

end A221633

/-! ## A221633.P5620816906428389386

`A221632(∑[n+1]+2)`
-/

namespace A221633.P5620816906428389386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221632 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221633.P5620816906428389386

namespace A221633

/-- `A221632(∑[n+1]+2)` -/
def P5620816906428389386.Spec : Prop :=
  ∀ n, P5620816906428389386.a n = A221633 (n + 1)

end A221633

/-! ## A221633.P10470097949059707074

`record[A221632(A133263(∑{digits}[n, #]))]`
-/

namespace A221633.P10470097949059707074
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221632 (A133263 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221633.P10470097949059707074

namespace A221633

/-- `record[A221632(A133263(∑{digits}[n, #]))]` -/
def P10470097949059707074.Spec : Prop :=
  ∀ n, P10470097949059707074.a n = A221633 (n + 1)

end A221633

/-! ## A221633.P13934800058548009670

`record[gcd(A097230(n), A221632(n+1))]`
-/

namespace A221633.P13934800058548009670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097230 n) (A221632 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221633.P13934800058548009670

namespace A221633

/-- `record[gcd(A097230(n), A221632(n+1))]` -/
def P13934800058548009670.Spec : Prop :=
  ∀ n, (P13934800058548009670.a n : ℤ) = A221633 (n + 1)

end A221633

/-! ## A221633.P5660620673797773558

`record[gcd(A061199(n), A221632(n+2))]`
-/

namespace A221633.P5660620673797773558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061199 n) (A221632 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221633.P5660620673797773558

namespace A221633

/-- `record[gcd(A061199(n), A221632(n+2))]` -/
def P5660620673797773558.Spec : Prop :=
  ∀ n, (P5660620673797773558.a n : ℤ) = A221633 (n + 1)

end A221633

/-!
# A221634: Equals one maps: number of 3Xn binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal, diagonal and antidiagonal neighbors in a random 0..3 3Xn array.

The programs for A221634, there is no canonical definition to state claims against.
-/

/-! ## A221634.P8447842383671033250

`A221632(∑[n+2]+4)`
-/

namespace A221634.P8447842383671033250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221632 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221634.P8447842383671033250

/-! ## A221634.P6251204512158743192

`record[gcd(A221632(n+1), A303913(n))]`
-/

namespace A221634.P6251204512158743192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A221632 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221634.P6251204512158743192

/-! ## A221634.P7985981256285490242

`record[gcd(A221632(n+2), A290317(n))]`
-/

namespace A221634.P7985981256285490242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A221632 (n + 2)) (A290317 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221634.P7985981256285490242

/-!
# A221635: Equals one maps: number of 4Xn binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal, diagonal and antidiagonal neighbors in a random 0..3 4Xn array.

The programs for A221635, there is no canonical definition to state claims against.
-/

/-! ## A221635.P12146086355615386850

`A221632(A141214(n)+7)`
-/

namespace A221635.P12146086355615386850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221632 (A141214 n + 7).toNat

end

end A221635.P12146086355615386850

/-!
# A221636: Odd numbers n with the property that Collatz (3x+1) trajectory of n contains exactly four terms that are divisible by 5.

The programs for A221636, there is no canonical definition to state claims against.
-/

/-! ## A221636.P15742930266123838997

`lt[A292120(A083382(n+1)), (2*n)^(n%2)]`
-/

namespace A221636.P15742930266123838997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292120 (A083382 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A221636.P15742930266123838997

/-! ## A221636.P8877428739511625417

`eq[A075190(A075019(n+1)), A306227(2*(n+1))]`
-/

namespace A221636.P8877428739511625417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075190 (A075019 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306227 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A221636.P8877428739511625417

/-!
# A221638: Numbers that are divisible by the sum of the squares of their digits when alternately added and subtracted starting from units (rightmost).

The programs for A221638, the canonical program `A221638.P15570366108095338475` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221638 has offset 1).

The definition of A221638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 702 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221638.P15570366108095338475

`eq[n+1, lcm(n+1, A257588(n+1))]+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A221638

/-- `eq[n+1, lcm(n+1, A257588(n+1))]+1` -/
def P15570366108095338475.Spec : Prop :=
  ∀ n, (P15570366108095338475.a n : ℤ) = A221638 (n + 1)

theorem P15570366108095338475.correct : P15570366108095338475.Spec := by
  intro n
  simp only [A221638, Nat.add_sub_cancel]

end A221638

/-!
# A221639: a(n) = 5^(5*n+1) + 4^(5*n+2) + 3^(5*n).

The programs for A221639, the canonical program `A221639.P11233895453618504225` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221639 has offset 0).

The definition of A221639 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^(5*n+1)+4^(5*n+2)+3^(5*n)` (program `A221639.P11233895453618504225`, by `A221639.P11233895453618504225.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A221639.P13911141312828503004

`5^(5*n+1)+4^(5*n+2)+243^n`
-/

namespace A221639.P13911141312828503004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ (5 * n + 1) + 4 ^ (5 * n + 2) + 243 ^ n

end

end A221639.P13911141312828503004

namespace A221639

/-- `5^(5*n+1)+4^(5*n+2)+243^n` -/
def P13911141312828503004.Spec : Prop :=
  ∀ n, (P13911141312828503004.a n : ℤ) = A221639 n

end A221639

/-! ## A221639.P11233895453618504225

`5^(5*n+1)+4^(5*n+2)+3^(5*n)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A221639

/-- `5^(5*n+1)+4^(5*n+2)+3^(5*n)` -/
def P11233895453618504225.Spec : Prop :=
  ∀ n, (P11233895453618504225.a n : ℤ) = A221639 n

theorem P11233895453618504225.correct : P11233895453618504225.Spec := by
  intro n
  simp only [A221639]

end A221639

/-!
# A221640: Number T(n,k) of different numbers of square parts in the set of partitions of an n X k rectangle into squares with integer sides, considering only the list of parts; triangle T(n,k), 1 <= k <= n, read by rows.

The programs for A221640, there is no canonical definition to state claims against.
-/

/-! ## A221640.P14941452852493382312

`A091064(A035040(n))+A026820(n+1)`
-/

namespace A221640.P14941452852493382312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091064 (A035040 n).toNat + A026820 (n + 1)

end

end A221640.P14941452852493382312

/-! ## A221640.P12103793373036190525

`A213008(n+1)+A091064(A035040(n))`
-/

namespace A221640.P12103793373036190525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213008 (n + 1) + A091064 (A035040 n).toNat

end

end A221640.P12103793373036190525

/-! ## A221640.P10878967087641845236

`A283297(A176120(n))`
-/

namespace A221640.P10878967087641845236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283297 (A176120 n).toNat

end

end A221640.P10878967087641845236

/-! ## A221640.P17767696410151062332

`A113764(A133644(n+1))`
-/

namespace A221640.P17767696410151062332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113764 (A133644 (n + 1)).toNat

end

end A221640.P17767696410151062332

/-! ## A221640.P17724280993811940669

`A082429(A188211(n+1))`
-/

namespace A221640.P17724280993811940669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082429 (A188211 (n + 1)).toNat

end

end A221640.P17724280993811940669

/-!
# A221641: Square array read by antidiagonals T(n,k) in which column k lists 1 interleaved with j-1 zeros, if k = j^2 or k = j^2 + j, otherwise column k lists only zeros, with n>=1, j>=1, k>=1.

The programs for A221641, there is no canonical definition to state claims against.
-/

/-! ## A221641.P8394260587522324641

`round(atan(A221642(n+1)))`
-/

namespace A221641.P8394260587522324641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A221642 (n + 1) : ℝ))

end

end A221641.P8394260587522324641

/-! ## A221641.P3789107264267520432

`A057427(A221642(1+n))`
-/

namespace A221641.P3789107264267520432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A221642 (1 + n)).toNat

end

end A221641.P3789107264267520432

/-! ## A221641.P13997236371005364873

`A011585(A221642(1+n)²)`
-/

namespace A221641.P13997236371005364873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011585 (A221642 (1 + n) ^ 2).toNat

end

end A221641.P13997236371005364873

/-! ## A221641.P1594167103959467627

`A323022(A221642(n+1)+1)`
-/

namespace A221641.P1594167103959467627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (A221642 (n + 1) + 1).toNat

end

end A221641.P1594167103959467627

/-! ## A221641.P16971008819159423183

`A327103(2*A221642(n+1))`
-/

namespace A221641.P16971008819159423183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327103 (2 * A221642 (n + 1)).toNat

end

end A221641.P16971008819159423183

/-! ## A221641.P9156314960039879006

`A001221(2^A221642(n+1))`
-/

namespace A221641.P9156314960039879006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A221642 (n + 1) : ℤ))).toNat

end

end A221641.P9156314960039879006

/-! ## A221641.P5626524525486892181

`A284939(2^A221642(n+1))`
-/

namespace A221641.P5626524525486892181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284939 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A221642 (n + 1) : ℤ))).toNat

end

end A221641.P5626524525486892181

/-! ## A221641.P6329973688158571123

`A291759(2^A221642(n+1))`
-/

namespace A221641.P6329973688158571123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291759 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A221642 (n + 1) : ℤ))).toNat

end

end A221641.P6329973688158571123

/-! ## A221641.P2128134539463634170

`A000045(ceil(A221642(n+1)/11))`
-/

namespace A221641.P2128134539463634170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈(A221642 (n + 1) : ℚ) / 11⌉.toNat

end

end A221641.P2128134539463634170

/-! ## A221641.P814978753819620417

`A050292(ceil(A221642(n+1)/11))`
-/

namespace A221641.P814978753819620417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050292 ⌈(A221642 (n + 1) : ℚ) / 11⌉.toNat

end

end A221641.P814978753819620417

/-!
# A221642: Square array read by antidiagonals: T(n,k) in which if k = j^2 then column k lists j interleaved with j-1 zeros. Otherwise if k = j^2 + j then column k lists the positive integers, starting with j+1, interleaved with j-1 zeros. Otherwise column k lists only zeros. n>=1, j>=1, k>=1.

The programs for A221642, there is no canonical definition to state claims against.
-/

/-! ## A221642.P17323829203838531437

`A210959(∑[A221641(n+1)])*A221641(n+1)`
-/

namespace A221642.P17323829203838531437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210959 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A221641 (n + 1)

end

end A221642.P17323829203838531437

/-! ## A221642.P8426213791040289189

`A127094(gcd(n, A189394(n+1)))`
-/

namespace A221642.P8426213791040289189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127094 (Int.gcd (n : ℤ) (A189394 (n + 1)))

end

end A221642.P8426213791040289189

/-!
# A221643: Numbers k such that k^2 XOR (k+1)^2 is a square, where XOR is the bitwise XOR operator.

The programs for A221643, there is no canonical definition to state claims against.
-/

/-! ## A221643.P18136930187155665301

`A224515(floor(A224511(n+1)/2))`
-/

namespace A221643.P18136930187155665301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224515 ⌊(A224511 (n + 1) : ℚ) / 2⌋.toNat

end

end A221643.P18136930187155665301

/-! ## A221643.P8177830283376594590

`eq[1, A335424(xor((n+1)², n²))]`
-/

namespace A221643.P8177830283376594590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335424 (Nat.xor ((n + 1) ^ 2) (n ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A221643.P8177830283376594590

/-! ## A221643.P13080315945205726885

`eq[1, A335424(A283750(n))]`
-/

namespace A221643.P13080315945205726885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335424 (A283750 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A221643.P13080315945205726885

/-! ## A221643.P14813323151424696079

`eq[A344616(A283750(n)), A369034(3*n+2)]`
-/

namespace A221643.P14813323151424696079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (A283750 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369034 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A221643.P14813323151424696079

/-!
# A221645: Square array read by antidiagonals: T(n,k^2) = A040000(n) (= 1,2,2,2,...) if n=0 (mod k), T(n,k) = 0 else, n>=0, k>=1.

The programs for A221645, there is no canonical definition to state claims against.
-/

/-! ## A221645.P3762566965615275200

`val(A238523(n+1), A238501(A059268(n)))`
-/

namespace A221645.P3762566965615275200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A238523 (n + 1)).toNat (A238501 (A059268 n).toNat).toNat

end

end A221645.P3762566965615275200

/-! ## A221645.P8618384997134342118

`A114099(n)+A000038(A211608(n))`
-/

namespace A221645.P8618384997134342118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n + A000038 (A211608 n).toNat

end

end A221645.P8618384997134342118

/-! ## A221645.P6641598583019212497

`A114099(n)+A000038(A257740(n))`
-/

namespace A221645.P6641598583019212497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n + A000038 (A257740 n).toNat

end

end A221645.P6641598583019212497

/-! ## A221645.P10389547748790465260

`A114099(n)+A000038(A290776(n))`
-/

namespace A221645.P10389547748790465260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n + A000038 (A290776 n).toNat

end

end A221645.P10389547748790465260

/-! ## A221645.P5433032538803163069

`and(A023443(A215083(n)), A347833(n+1))`
-/

namespace A221645.P5433032538803163069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023443 (A215083 n).toNat) (A347833 (n + 1))

end

end A221645.P5433032538803163069

/-!
# A221646: A continuous "Look and Say" sequence (without repetition, method 2).

The programs for A221646, there is no canonical definition to state claims against.
-/

/-! ## A221646.P3540568097698364259

`gcd(A140110(A114503(3*n+1)), A329320(n+4))`
-/

namespace A221646.P3540568097698364259
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A140110 (A114503 (3 * n + 1)).toNat) (A329320 (n + 4))

end

end A221646.P3540568097698364259

/-! ## A221646.P13892967278318622050

`A071625(lcm(A024897(n+1), A057176(n)))`
-/

namespace A221646.P13892967278318622050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (Int.lcm (A024897 (n + 1)) (A057176 n))

end

end A221646.P13892967278318622050

/-! ## A221646.P17044349755348064043

`A001221(A185131(n+4)+A007302(3*(n+1)))`
-/

namespace A221646.P17044349755348064043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A185131 (n + 4) + A007302 (3 * (n + 1))).toNat

end

end A221646.P17044349755348064043

/-! ## A221646.P10008382708242031398

`A001221(or(A001611(n), A181450(n+1)))`
-/

namespace A221646.P10008382708242031398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A001611 n) (A181450 (n + 1))).toNat

end

end A221646.P10008382708242031398

/-!
# A221647: Smallest number k such that prime(n) is the n-th divisor of k.

The programs for A221647, there is no canonical definition to state claims against.
-/

/-! ## A221647.P18401262262710306440

`A046899(n)*A328613(A027307(n))`
-/

namespace A221647.P18401262262710306440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 n * A328613 (A027307 n).toNat

end

end A221647.P18401262262710306440

/-! ## A221647.P1686780669178856996

`A001223(A364431(n))*A065091(n+1)`
-/

namespace A221647.P1686780669178856996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A364431 n).toNat * A065091 (n + 1)

end

end A221647.P1686780669178856996

/-!
# A221648: Floor(integral_{n=0..infinity} (log(x) - log(1 + x^2))^n/(1 + x^2)^2 dx).

The programs for A221648, there is no canonical definition to state claims against.
-/

/-! ## A221648.P9363185371648340997

`A133942(n)-A168313(A000142(n))`
-/

namespace A221648.P9363185371648340997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133942 n - A168313 (A000142 n).toNat

end

end A221648.P9363185371648340997

/-! ## A221648.P7510015751840033941

`xor(n!, A008683(A219508(n)))`
-/

namespace A221648.P7510015751840033941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.factorial n : ℤ) (A008683 (A219508 n).toNat)

end

end A221648.P7510015751840033941

/-! ## A221648.P11466471332182783246

`xor(n!, A008683(A062871(n+1)))`
-/

namespace A221648.P11466471332182783246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.factorial n : ℤ) (A008683 (A062871 (n + 1)).toNat)

end

end A221648.P11466471332182783246

/-!
# A221649: Tetrahedron E(n,j,k) = k*T(j,k)*p(n-j), where T(j,k) = 1 if k divides j otherwise 0.

The programs for A221649, there is no canonical definition to state claims against.
-/

/-! ## A221649.P13073254246415193636

`A221650(n+1)*A333516(n+1)`
-/

namespace A221649.P13073254246415193636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221650 (n + 1) * A333516 (n + 1)

end

end A221649.P13073254246415193636

/-!
# A221650: Tetrahedron P(n,j,k) = T(j,k)*p(n-j), where T(j,k) = 1 if k divides j otherwise 0.

The programs for A221650, there is no canonical definition to state claims against.
-/

/-! ## A221650.P3310560563340157851

`A221649(n+1)/A333516(n+1)`
-/

namespace A221650.P3310560563340157851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221649 (n + 1) : ℚ) / (A333516 (n + 1) : ℚ)

end

end A221650.P3310560563340157851

/-! ## A221650.P14899518063988573430

`A341675(A341646(2*n+3)^A333750(3*n+2))`
-/

namespace A221650.P14899518063988573430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341675 (SequenceMachineLib.roundAway ((A341646 (2 * n + 3) : ℚ) ^ (A333750 (3 * n + 2) : ℤ))).toNat

end

end A221650.P14899518063988573430

/-! ## A221650.P7729515695314433884

`A038769(A304339(∑[A136417(n)]))`
-/

namespace A221650.P7729515695314433884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136417 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (A304339 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A221650.P7729515695314433884

/-! ## A221650.P4552439446173981721

`A331539(A240708(n+1)+A033282(n+3))`
-/

namespace A221650.P4552439446173981721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331539 (A240708 (n + 1) + A033282 (n + 3)).toNat

end

end A221650.P4552439446173981721

/-! ## A221650.P2605145286331199837

`A339095(A216487(n+3))`
-/

namespace A221650.P2605145286331199837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339095 (A216487 (n + 3)).toNat

end

end A221650.P2605145286331199837

/-!
# A221652: Number of n X 2 arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, without move-in move-out left turns.

The programs for A221652, the canonical program `A221652.P12665017434536375062` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221652 has offset 1).

The definition of A221652 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 189 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221652.P14049337490574197373

`ogf((-1-x+x^2+x^3)/(-1+3x+x^2+x^3))`
-/

namespace A221652.P14049337490574197373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1, -1] [1, -3, -1, -1] n

end

end A221652.P14049337490574197373

namespace A221652

/-- `ogf((-1-x+x^2+x^3)/(-1+3x+x^2+x^3))` -/
def P14049337490574197373.Spec : Prop :=
  ∀ n, P14049337490574197373.a n = A221652 (n + 1)

end A221652

/-! ## A221652.P12665017434536375062

`3*a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=4, a(2)=12, a(3)=40`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A221652

/-- `3*a(n-1)+a(n-2)+a(n-3)` -/
def P12665017434536375062.Spec : Prop :=
  ∀ n, (P12665017434536375062.a n : ℤ) = A221652 (n + 1)

theorem P12665017434536375062.correct : P12665017434536375062.Spec := by
  intro n
  simp only [A221652, Nat.add_sub_cancel]

end A221652

/-! ## A221652.P6106489792625609414

`A196700(Δ[n²])`
-/

namespace A221652.P6106489792625609414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196700 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A221652.P6106489792625609414

namespace A221652

/-- `A196700(Δ[n²])` -/
def P6106489792625609414.Spec : Prop :=
  ∀ n, P6106489792625609414.a n = A221652 (n + 1)

end A221652

/-! ## A221652.P13522420449050964522

`record[(n%2+1)*A213816(2*(n+1))]`
-/

namespace A221652.P13522420449050964522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 1 : ℕ) : ℤ) * A213816 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221652.P13522420449050964522

namespace A221652

/-- `record[(n%2+1)*A213816(2*(n+1))]` -/
def P13522420449050964522.Spec : Prop :=
  ∀ n, P13522420449050964522.a n = A221652 (n + 1)

end A221652

/-! ## A221652.P18423053597883027092

`record[A196700(A182469(n+1))]`
-/

namespace A221652.P18423053597883027092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196700 (A182469 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221652.P18423053597883027092

namespace A221652

/-- `record[A196700(A182469(n+1))]` -/
def P18423053597883027092.Spec : Prop :=
  ∀ n, P18423053597883027092.a n = A221652 (n + 1)

end A221652

/-! ## A221652.P12390037321115033439

`Δ[A098184(n)+A057427(n)]`
-/

namespace A221652.P12390037321115033439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098184 n + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A221652.P12390037321115033439

namespace A221652

/-- `Δ[A098184(n)+A057427(n)]` -/
def P12390037321115033439.Spec : Prop :=
  ∀ n, P12390037321115033439.a n = A221652 (n + 1)

end A221652

/-! ## A221652.P14303746108130471302

`Δ[A157532(n+1)+A098184(n)]`
-/

namespace A221652.P14303746108130471302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1) + A098184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A221652.P14303746108130471302

namespace A221652

/-- `Δ[A157532(n+1)+A098184(n)]` -/
def P14303746108130471302.Spec : Prop :=
  ∀ n, P14303746108130471302.a n = A221652 (n + 1)

end A221652

/-! ## A221652.P16199605001883198336

`A000007(n)+Δ[A000213(2*n)]`
-/

namespace A221652.P16199605001883198336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A221652.P16199605001883198336

namespace A221652

/-- `A000007(n)+Δ[A000213(2*n)]` -/
def P16199605001883198336.Spec : Prop :=
  ∀ n, P16199605001883198336.a n = A221652 (n + 1)

end A221652

/-! ## A221652.P2245971653931626120

`Δ[A040000(n)+A000213(2*n)]`
-/

namespace A221652.P2245971653931626120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n + A000213 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A221652.P2245971653931626120

namespace A221652

/-- `Δ[A040000(n)+A000213(2*n)]` -/
def P2245971653931626120.Spec : Prop :=
  ∀ n, P2245971653931626120.a n = A221652 (n + 1)

end A221652

/-! ## A221652.P8428103188983620224

`Δ[A057427(n)+A000213(2*n)]`
-/

namespace A221652.P8428103188983620224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A000213 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A221652.P8428103188983620224

namespace A221652

/-- `Δ[A057427(n)+A000213(2*n)]` -/
def P8428103188983620224.Spec : Prop :=
  ∀ n, P8428103188983620224.a n = A221652 (n + 1)

end A221652

/-! ## A221652.P10637571395460591346

`record[A078042(n)*A327767(n+1)]`
-/

namespace A221652.P10637571395460591346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078042 n * A327767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221652.P10637571395460591346

namespace A221652

/-- `record[A078042(n)*A327767(n+1)]` -/
def P10637571395460591346.Spec : Prop :=
  ∀ n, P10637571395460591346.a n = A221652 (n + 1)

end A221652

/-! ## A221652.P432976184867861723

`A000007(n)+Δ[Δ[A000073(2*n)]]`
-/

namespace A221652.P432976184867861723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A221652.P432976184867861723

namespace A221652

/-- `A000007(n)+Δ[Δ[A000073(2*n)]]` -/
def P432976184867861723.Spec : Prop :=
  ∀ n, P432976184867861723.a n = A221652 (n + 1)

end A221652

/-! ## A221652.P7483757412494057965

`Δ[A000213(2*n)-A000007(2*n)]`
-/

namespace A221652.P7483757412494057965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (2 * n) - A000007 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A221652.P7483757412494057965

namespace A221652

/-- `Δ[A000213(2*n)-A000007(2*n)]` -/
def P7483757412494057965.Spec : Prop :=
  ∀ n, P7483757412494057965.a n = A221652 (n + 1)

end A221652

/-! ## A221652.P2352851712080660099

`record[A001590(n+1)*A040001(n+1)]`
-/

namespace A221652.P2352851712080660099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 1) * A040001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221652.P2352851712080660099

namespace A221652

/-- `record[A001590(n+1)*A040001(n+1)]` -/
def P2352851712080660099.Spec : Prop :=
  ∀ n, P2352851712080660099.a n = A221652 (n + 1)

end A221652

/-! ## A221652.P11389754530715924370

`Δ[A000213(2*n)*A057427(2*n)]`
-/

namespace A221652.P11389754530715924370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (2 * n) * A057427 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A221652.P11389754530715924370

namespace A221652

/-- `Δ[A000213(2*n)*A057427(2*n)]` -/
def P11389754530715924370.Spec : Prop :=
  ∀ n, P11389754530715924370.a n = A221652 (n + 1)

end A221652

/-! ## A221652.P7030352505781288919

`A000073(2*n)+record[A081172(2*n)]`
-/

namespace A221652.P7030352505781288919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (2 * n) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221652.P7030352505781288919

namespace A221652

/-- `A000073(2*n)+record[A081172(2*n)]` -/
def P7030352505781288919.Spec : Prop :=
  ∀ n, P7030352505781288919.a n = A221652 (n + 1)

end A221652

/-! ## A221652.P11713682945973692676

`record[A141036(2*n)]-A214727(2*n)`
-/

namespace A221652.P11713682945973692676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141036 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A214727 (2 * n)

end

end A221652.P11713682945973692676

namespace A221652

/-- `record[A141036(2*n)]-A214727(2*n)` -/
def P11713682945973692676.Spec : Prop :=
  ∀ n, P11713682945973692676.a n = A221652 (n + 1)

end A221652

/-! ## A221652.P15888322052770185076

`A135491(2*n+1)-A135491(2*n)`
-/

namespace A221652.P15888322052770185076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135491 (2 * n + 1) - A135491 (2 * n)

end

end A221652.P15888322052770185076

namespace A221652

/-- `A135491(2*n+1)-A135491(2*n)` -/
def P15888322052770185076.Spec : Prop :=
  ∀ n, P15888322052770185076.a n = A221652 (n + 1)

end A221652

/-! ## A221652.P663490867260532955

`Δ[Δ[A004277(2*n)+A000073(2*n)]]`
-/

namespace A221652.P663490867260532955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n) + A000073 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A221652.P663490867260532955

namespace A221652

/-- `Δ[Δ[A004277(2*n)+A000073(2*n)]]` -/
def P663490867260532955.Spec : Prop :=
  ∀ n, P663490867260532955.a n = A221652 (n + 1)

end A221652

/-!
# A221653: Number of n X 3 arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, without move-in move-out left turns.

The programs for A221653, there is no canonical definition to state claims against.
-/

/-! ## A221653.P1388235545881417709

`A221655(∑[n+3]+1)`
-/

namespace A221653.P1388235545881417709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221655 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221653.P1388235545881417709

/-!
# A221654: Number of nX4 arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, without move-in move-out left turns.

The programs for A221654, there is no canonical definition to state claims against.
-/

/-! ## A221654.P11132458545540916031

`A221655(∑[n+4]+3)`
-/

namespace A221654.P11132458545540916031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221655 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A221654.P11132458545540916031

/-!
# A221656: Number of 2 X n arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, without move-in move-out left turns.

The programs for A221656, there is no canonical definition to state claims against.
-/

/-! ## A221656.P6580605908662321823

`A221655(2+∑[n+1])`
-/

namespace A221656.P6580605908662321823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221655 (2 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A221656.P6580605908662321823

/-! ## A221656.P6946927246223187772

`record[A023531(n)*A221655(n+3)]`
-/

namespace A221656.P6946927246223187772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A221655 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221656.P6946927246223187772

/-! ## A221656.P386895475722779174

`record[A124744(n)*A221655(n+3)]`
-/

namespace A221656.P386895475722779174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124744 n * A221655 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221656.P386895475722779174

/-! ## A221656.P8917931402824645439

`record[A124788(n)*A221655(n+3)]`
-/

namespace A221656.P8917931402824645439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124788 n * A221655 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221656.P8917931402824645439

/-! ## A221656.P11473475506871212974

`record[A167374(n)*A221655(n+3)]`
-/

namespace A221656.P11473475506871212974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 n * A221655 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221656.P11473475506871212974

/-!
# A221657: Number of 3Xn arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, without move-in move-out left turns.

The programs for A221657, there is no canonical definition to state claims against.
-/

/-! ## A221657.P7807657031022028976

`A221655(4+∑[n+2])`
-/

namespace A221657.P7807657031022028976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221655 (4 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A221657.P7807657031022028976

/-!
# A221658: Number of 4Xn arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, without move-in move-out left turns.

The programs for A221658, there is no canonical definition to state claims against.
-/

/-! ## A221658.P15979746197399675625

`A221655(7+∑[n+3])`
-/

namespace A221658.P15979746197399675625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221655 (7 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A221658.P15979746197399675625

/-!
# A221659: Equals one maps: number of nX6 binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal and antidiagonal neighbors in a random 0..2 nX6 array.

The programs for A221659, there is no canonical definition to state claims against.
-/

/-! ## A221659.P10825673606194696736

`A221660(A052905(n+3))`
-/

namespace A221659.P10825673606194696736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221660 (A052905 (n + 3)).toNat

end

end A221659.P10825673606194696736

/-!
# A221661: Equals one maps: number of 3Xn binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal and antidiagonal neighbors in a random 0..2 3Xn array.

The programs for A221661, there is no canonical definition to state claims against.
-/

/-! ## A221661.P16682911024083430319

`A221660(∑[n+2]+4)`
-/

namespace A221661.P16682911024083430319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221660 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221661.P16682911024083430319

/-! ## A221661.P13687539224308429361

`record[gcd(A098825(n+3), A221660(n+5))]`
-/

namespace A221661.P13687539224308429361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098825 (n + 3)) (A221660 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221661.P13687539224308429361

/-!
# A221662: Equals one maps: number of 4Xn binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal and antidiagonal neighbors in a random 0..2 4Xn array.

The programs for A221662, there is no canonical definition to state claims against.
-/

/-! ## A221662.P1064397954870441075

`A221660(A141214(n)+7)`
-/

namespace A221662.P1064397954870441075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221660 (A141214 n + 7).toNat

end

end A221662.P1064397954870441075

/-!
# A221663: Sum of neighbor maps: number of nX2 binary arrays indicating the locations of corresponding elements equal to the sum mod 3 of their horizontal, diagonal and antidiagonal neighbors in a random 0..2 nX2 array.

The programs for A221663, there is no canonical definition to state claims against.
-/

/-! ## A221663.P3533184536459030949

`A221666(A373662(n+1))`
-/

namespace A221663.P3533184536459030949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221666 (A373662 (n + 1)).toNat

end

end A221663.P3533184536459030949

/-! ## A221663.P955077208810793189

`A221666(∑[2+n])`
-/

namespace A221663.P955077208810793189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221666 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A221663.P955077208810793189

/-! ## A221663.P15574313924344657156

`record[A221666(record[A271875(n+1)])]`
-/

namespace A221663.P15574313924344657156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271875 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221666 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221663.P15574313924344657156

/-! ## A221663.P13851225364350682330

`record[A129186(n)*A221666(n+1)]`
-/

namespace A221663.P13851225364350682330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129186 n * A221666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221663.P13851225364350682330

/-!
# A221664: Sum of neighbor maps: number of n X 3 binary arrays indicating the locations of corresponding elements equal to the sum mod 3 of their horizontal, diagonal and antidiagonal neighbors in a random 0..2 n X 3 array.

The programs for A221664, there is no canonical definition to state claims against.
-/

/-! ## A221664.P3493516379985547043

`A221666(∑[n+3]+1)`
-/

namespace A221664.P3493516379985547043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221666 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221664.P3493516379985547043

/-!
# A221665: Sum of neighbor maps: number of nX4 binary arrays indicating the locations of corresponding elements equal to the sum mod 3 of their horizontal, diagonal and antidiagonal neighbors in a random 0..2 nX4 array.

The programs for A221665, there is no canonical definition to state claims against.
-/

/-! ## A221665.P14637911691180113660

`A221666(C(n+5, 2)-n)`
-/

namespace A221665.P14637911691180113660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221666 (Nat.choose (n + 5) 2 - n)

end

end A221665.P14637911691180113660

/-!
# A221666: T(n,k)=Sum of neighbor maps: number of nXk binary arrays indicating the locations of corresponding elements equal to the sum mod 3 of their horizontal, diagonal and antidiagonal neighbors in a random 0..2 nXk array.

The programs for A221666, there is no canonical definition to state claims against.
-/

/-! ## A221666.P5267979517358539762

`A000005(A006318(n))*A240545(n)`
-/

namespace A221666.P5267979517358539762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006318 n).toNat * A240545 n

end

end A221666.P5267979517358539762

/-! ## A221666.P4776825265411355980

`A000005(lcm(A059100(n), A071725(n)))`
-/

namespace A221666.P4776825265411355980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lcm (A059100 n) (A071725 n))

end

end A221666.P4776825265411355980

/-!
# A221667: Sum of neighbor maps: number of 2 X n binary arrays indicating the locations of corresponding elements equal to the sum mod 3 of their horizontal, diagonal and antidiagonal neighbors in a random 0..2 2 X n array.

The programs for A221667, the canonical program `A221667.P2097943824916358446` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221667 has offset 1).

The definition of A221667 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221667.P2097943824916358446

`ogf((4-4x+16x^2-32x^3+64x^6)/(1-4x-8x^3+32x^4+16x^6-64x^7))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A221667

/-- `ogf((4-4x+16x^2-32x^3+64x^6)/(1-4x-8x^3+32x^4+16x^6-64x^7))` -/
def P2097943824916358446.Spec : Prop :=
  ∀ n, P2097943824916358446.a n = A221667 (n + 1)

theorem P2097943824916358446.correct : P2097943824916358446.Spec := by
  intro n
  simp only [A221667, Nat.add_sub_cancel]

end A221667

/-! ## A221667.P10620291239851717390

`A220172(2*n+3)/2`
-/

namespace A221667.P10620291239851717390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220172 (2 * n + 3) : ℚ) / 2

end

end A221667.P10620291239851717390

namespace A221667

/-- `A220172(2*n+3)/2` -/
def P10620291239851717390.Spec : Prop :=
  ∀ n, P10620291239851717390.a n = (A221667 (n + 1) : ℚ)

end A221667

/-! ## A221667.P2204271758028468858

`(A220172(n+3+n)-2)/2+1`
-/

namespace A221667.P2204271758028468858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220172 (n + 3 + n) - 2 : ℚ) / 2 + 1

end

end A221667.P2204271758028468858

namespace A221667

/-- `(A220172(n+3+n)-2)/2+1` -/
def P2204271758028468858.Spec : Prop :=
  ∀ n, P2204271758028468858.a n = (A221667 (n + 1) : ℚ)

end A221667

/-! ## A221667.P6134350890220338706

`record[A220172(A033999(n)+2+n)/2]`
-/

namespace A221667.P6134350890220338706
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220172 (A033999 n + 2 + (n : ℤ)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221667.P6134350890220338706

namespace A221667

/-- `record[A220172(A033999(n)+2+n)/2]` -/
def P6134350890220338706.Spec : Prop :=
  ∀ n, P6134350890220338706.a n = (A221667 (n + 1) : ℚ)

end A221667

/-! ## A221667.P203080998796490745

`A221666(∑[n+1]+2)`
-/

namespace A221667.P203080998796490745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221666 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221667.P203080998796490745

namespace A221667

/-- `A221666(∑[n+1]+2)` -/
def P203080998796490745.Spec : Prop :=
  ∀ n, P203080998796490745.a n = A221667 (n + 1)

end A221667

/-!
# A221668: Sum of neighbor maps: number of 3Xn binary arrays indicating the locations of corresponding elements equal to the sum mod 3 of their horizontal, diagonal and antidiagonal neighbors in a random 0..2 3Xn array.

The programs for A221668, there is no canonical definition to state claims against.
-/

/-! ## A221668.P11449009453029150267

`A221666(∑[n+2]+4)`
-/

namespace A221668.P11449009453029150267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221666 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221668.P11449009453029150267

/-! ## A221668.P761729479280518330

`record[gcd(A089840(n), A221666(n+4))]`
-/

namespace A221668.P761729479280518330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A089840 n) (A221666 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221668.P761729479280518330

/-! ## A221668.P14866093749910610992

`record[A221666(n+4)/A221660(n+1)]`
-/

namespace A221668.P14866093749910610992
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221666 (n + 4) : ℚ) / (A221660 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221668.P14866093749910610992

/-! ## A221668.P3736500605108426048

`record[A221666(n+4)/A221693(n+1)]`
-/

namespace A221668.P3736500605108426048
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221666 (n + 4) : ℚ) / (A221693 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221668.P3736500605108426048

/-!
# A221671: Maximum number of squares in a non-constant arithmetic progression (AP) of length n.

The programs for A221671, there is no canonical definition to state claims against.
-/

/-! ## A221671.P13460706888989757915

`char[4]+∑[char[∑[gcd(n, ∑[n])]]]`
-/

namespace A221671.P13460706888989757915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f5 j)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A221671.P13460706888989757915

/-! ## A221671.P9152627282999515106

`char[4]+∑[A080995(n)]`
-/

namespace A221671.P9152627282999515106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080995 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A221671.P9152627282999515106

/-! ## A221671.P13338293058248366349

`char[4]+Δ[A260706(n)]`
-/

namespace A221671.P13338293058248366349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260706 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A221671.P13338293058248366349

/-! ## A221671.P7005873437050457967

`A193832(char[4]+1+n)`
-/

namespace A221671.P7005873437050457967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193832 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)

end

end A221671.P7005873437050457967

/-! ## A221671.P6472000566571328499

`char[4]+∑[abs(A010815(n))]`
-/

namespace A221671.P6472000566571328499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010815 n|

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A221671.P6472000566571328499

/-! ## A221671.P11933976374590338167

`char[4]+∑[char[A001318(n)]]`
-/

namespace A221671.P11933976374590338167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A221671.P11933976374590338167

/-! ## A221671.P16055149194256304620

`char[4]+∑[A089806(2*n)]`
-/

namespace A221671.P16055149194256304620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089806 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A221671.P16055149194256304620

/-! ## A221671.P7603696236497707533

`char[4]+∑[A010054(3*n)]`
-/

namespace A221671.P7603696236497707533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (3 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A221671.P7603696236497707533

/-! ## A221671.P11600903227930746151

`char[4]+∑[A089812(3*n)]`
-/

namespace A221671.P11600903227930746151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089812 (3 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A221671.P11600903227930746151

/-!
# A221672: Length of shortest non-constant arithmetic progression (AP) containing n squares.

The programs for A221672, there is no canonical definition to state claims against.
-/

/-! ## A221672.P17957081966664070589

`∑[gcd(n, ∑[n])]+1-char[3]`
-/

namespace A221672.P17957081966664070589
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (1 - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ))

end

end A221672.P17957081966664070589

/-! ## A221672.P16902987506060542981

`∑[lcm(2, n)/2]+1-char[3]`
-/

namespace A221672.P16902987506060542981
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) : ℚ)

end

end A221672.P16902987506060542981

/-! ## A221672.P6116301167077487529

`A319390(n)-char[3]`
-/

namespace A221672.P6116301167077487529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319390 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A221672.P6116301167077487529

/-! ## A221672.P5899093002141912883

`∑[A105658(n)]-char[3]`
-/

namespace A221672.P5899093002141912883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105658 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A221672.P5899093002141912883

/-! ## A221672.P8881068954724089124

`A001318(n)+1-char[3]`
-/

namespace A221672.P8881068954724089124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n + (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A221672.P8881068954724089124

/-!
# A221673: Number of n X 2 arrays of occupancy after each element moves to some horizontal or vertical neighbor, without move-in move-out left turns.

The programs for A221673, the canonical program `A221673.P11819171511627121868` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221673 has offset 1).

The definition of A221673 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221673.P11819171511627121868

`ogf((1-2x+x^2)/(1-7x+9x^2+5x^3-10x^4+3x^5))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A221673

/-- `ogf((1-2x+x^2)/(1-7x+9x^2+5x^3-10x^4+3x^5))` -/
def P11819171511627121868.Spec : Prop :=
  ∀ n, P11819171511627121868.a n = A221673 (n + 1)

theorem P11819171511627121868.correct : P11819171511627121868.Spec := by
  intro n
  simp only [A221673, Nat.add_sub_cancel]

end A221673

/-! ## A221673.P17783952179701322019

`A221676(∑[n+1]+2)`
-/

namespace A221673.P17783952179701322019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221676 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221673.P17783952179701322019

namespace A221673

/-- `A221676(∑[n+1]+2)` -/
def P17783952179701322019.Spec : Prop :=
  ∀ n, P17783952179701322019.a n = A221673 (n + 1)

end A221673

/-! ## A221673.P1026179265482671553

`record[gcd(A067586(n), A221676(n+2))]`
-/

namespace A221673.P1026179265482671553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A067586 n) (A221676 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221673.P1026179265482671553

namespace A221673

/-- `record[gcd(A067586(n), A221676(n+2))]` -/
def P1026179265482671553.Spec : Prop :=
  ∀ n, (P1026179265482671553.a n : ℤ) = A221673 (n + 1)

end A221673

/-! ## A221673.P3018438347356524132

`record[gcd(A101276(n), A221676(n+1))]`
-/

namespace A221673.P3018438347356524132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A101276 n) (A221676 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221673.P3018438347356524132

namespace A221673

/-- `record[gcd(A101276(n), A221676(n+1))]` -/
def P3018438347356524132.Spec : Prop :=
  ∀ n, (P3018438347356524132.a n : ℤ) = A221673 (n + 1)

end A221673

/-! ## A221673.P9945057071308367434

`record[A221676(n+2)/A221660(n+3)]`
-/

namespace A221673.P9945057071308367434
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221676 (n + 2) : ℚ) / (A221660 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221673.P9945057071308367434

namespace A221673

/-- `record[A221676(n+2)/A221660(n+3)]` -/
def P9945057071308367434.Spec : Prop :=
  ∀ n, P9945057071308367434.a n = (A221673 (n + 1) : ℚ)

end A221673

/-!
# A221674: Number of nX3 arrays of occupancy after each element moves to some horizontal or vertical neighbor, without move-in move-out left turns.

The programs for A221674, there is no canonical definition to state claims against.
-/

/-! ## A221674.P10700493736237436156

`A221676(∑[n+2]+4)`
-/

namespace A221674.P10700493736237436156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221676 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221674.P10700493736237436156

/-!
# A221675: Number of n X 4 arrays of occupancy after each element moves to some horizontal or vertical neighbor, without move-in move-out left turns.

The programs for A221675, there is no canonical definition to state claims against.
-/

/-! ## A221675.P14051007472828128054

`A221676(∑[n+3]+7)`
-/

namespace A221675.P14051007472828128054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221676 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A221675.P14051007472828128054

/-!
# A221677: Number of 0..2 arrays of length n with each element differing from at least one neighbor by 1 or less, starting with 0.

The programs for A221677, the canonical program `A221677.P5112293346657275236` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221677 has offset 1).

The definition of A221677 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221677.P8545749497188414879

`ogf((2x+x^2)/(1-2x-2x^2-x^3))`
-/

namespace A221677.P8545749497188414879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1] [1, -2, -2, -1] n

end

end A221677.P8545749497188414879

namespace A221677

/-- `ogf((2x+x^2)/(1-2x-2x^2-x^3))` -/
def P8545749497188414879.Spec : Prop :=
  ∀ n, P8545749497188414879.a n = A221677 (n + 1)

end A221677

/-! ## A221677.P5112293346657275236

`a(n-3)+2*(a(n-1)+a(n-2))` with `a(0)=0, a(1)=2, a(2)=5`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A221677

/-- `a(n-3)+2*(a(n-1)+a(n-2))` -/
def P5112293346657275236.Spec : Prop :=
  ∀ n, (P5112293346657275236.a n : ℤ) = A221677 (n + 1)

theorem P5112293346657275236.correct : P5112293346657275236.Spec := by
  intro n
  simp only [A221677, Nat.add_sub_cancel]

end A221677

/-! ## A221677.P3077839038063719820

`A233828(n)+A077995(n)`
-/

namespace A221677.P3077839038063719820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233828 n + A077995 n

end

end A221677.P3077839038063719820

namespace A221677

/-- `A233828(n)+A077995(n)` -/
def P3077839038063719820.Spec : Prop :=
  ∀ n, P3077839038063719820.a n = A221677 (n + 1)

end A221677

/-! ## A221677.P3032888374378448119

`A101168(n)-A077995(n)`
-/

namespace A221677.P3032888374378448119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101168 n - A077995 n

end

end A221677.P3032888374378448119

namespace A221677

/-- `A101168(n)-A077995(n)` -/
def P3032888374378448119.Spec : Prop :=
  ∀ n, P3032888374378448119.a n = A221677 (n + 1)

end A221677

/-! ## A221677.P11891287180245236559

`(A233828(n)+A101168(n))/2`
-/

namespace A221677.P11891287180245236559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233828 n + A101168 n : ℚ) / 2

end

end A221677.P11891287180245236559

namespace A221677

/-- `(A233828(n)+A101168(n))/2` -/
def P11891287180245236559.Spec : Prop :=
  ∀ n, P11891287180245236559.a n = (A221677 (n + 1) : ℚ)

end A221677

/-! ## A221677.P10847783172627385267

`Δ[A077936(n)]-A077936(n)`
-/

namespace A221677.P10847783172627385267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077936 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A077936 n

end

end A221677.P10847783172627385267

namespace A221677

/-- `Δ[A077936(n)]-A077936(n)` -/
def P10847783172627385267.Spec : Prop :=
  ∀ n, P10847783172627385267.a n = A221677 (n + 1)

end A221677

/-! ## A221677.P1403483335043780158

`A077995(n+1)-A077936(n)`
-/

namespace A221677.P1403483335043780158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077995 (n + 1) - A077936 n

end

end A221677.P1403483335043780158

namespace A221677

/-- `A077995(n+1)-A077936(n)` -/
def P1403483335043780158.Spec : Prop :=
  ∀ n, P1403483335043780158.a n = A221677 (n + 1)

end A221677

/-! ## A221677.P16275068791371003233

`A193642(n+1)%A078054(n)`
-/

namespace A221677.P16275068791371003233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193642 (n + 1)) (A078054 n)

end

end A221677.P16275068791371003233

namespace A221677

/-- `A193642(n+1)%A078054(n)` -/
def P16275068791371003233.Spec : Prop :=
  ∀ n, P16275068791371003233.a n = A221677 (n + 1)

end A221677

/-! ## A221677.P13069955548265135200

`A077995(n+1)-abs(A077983(n))`
-/

namespace A221677.P13069955548265135200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077995 (n + 1) - |A077983 n|

end

end A221677.P13069955548265135200

namespace A221677

/-- `A077995(n+1)-abs(A077983(n))` -/
def P13069955548265135200.Spec : Prop :=
  ∀ n, P13069955548265135200.a n = A221677 (n + 1)

end A221677

/-! ## A221677.P13351144346546535869

`A077995(n+1)-∑[A077995(n)]`
-/

namespace A221677.P13351144346546535869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077995 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077995 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221677.P13351144346546535869

namespace A221677

/-- `A077995(n+1)-∑[A077995(n)]` -/
def P13351144346546535869.Spec : Prop :=
  ∀ n, P13351144346546535869.a n = A221677 (n + 1)

end A221677

/-! ## A221677.P1249222371573020881

`A077936(n+1)-2*A077936(n)`
-/

namespace A221677.P1249222371573020881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077936 (n + 1) - 2 * A077936 n

end

end A221677.P1249222371573020881

namespace A221677

/-- `A077936(n+1)-2*A077936(n)` -/
def P1249222371573020881.Spec : Prop :=
  ∀ n, P1249222371573020881.a n = A221677 (n + 1)

end A221677

/-!
# A221678: Number of 0..3 arrays of length n with each element differing from at least one neighbor by 1 or less, starting with 0.

The programs for A221678, the canonical program `A221678.P11234986961513364289` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221678 has offset 1).

The definition of A221678 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221678.P6045492605505322391

`ogf((2x-x^2+x^3)/(1-3x-2x^2+x^3-x^4))`
-/

namespace A221678.P6045492605505322391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -1, 1] [1, -3, -2, 1, -1] n

end

end A221678.P6045492605505322391

namespace A221678

/-- `ogf((2x-x^2+x^3)/(1-3x-2x^2+x^3-x^4))` -/
def P6045492605505322391.Spec : Prop :=
  ∀ n, P6045492605505322391.a n = A221678 (n + 1)

end A221678

/-! ## A221678.P11234986961513364289

`3*a(n-1)+2*a(n-2)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=2, a(2)=5, a(3)=20`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A221678

/-- `3*a(n-1)+2*a(n-2)-a(n-3)+a(n-4)` -/
def P11234986961513364289.Spec : Prop :=
  ∀ n, P11234986961513364289.a n = A221678 (n + 1)

theorem P11234986961513364289.correct : P11234986961513364289.Spec := by
  intro n
  simp only [A221678, Nat.add_sub_cancel]

end A221678

/-! ## A221678.P4848092013732327331

`A082679(n+1)-char[2*n]`
-/

namespace A221678.P4848092013732327331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082679 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A221678.P4848092013732327331

namespace A221678

/-- `A082679(n+1)-char[2*n]` -/
def P4848092013732327331.Spec : Prop :=
  ∀ n, P4848092013732327331.a n = A221678 (n + 1)

end A221678

/-! ## A221678.P15280341020565269507

`A082679(n+1)+A000034(n)-2`
-/

namespace A221678.P15280341020565269507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082679 (n + 1) + A000034 n - 2

end

end A221678.P15280341020565269507

namespace A221678

/-- `A082679(n+1)+A000034(n)-2` -/
def P15280341020565269507.Spec : Prop :=
  ∀ n, P15280341020565269507.a n = A221678 (n + 1)

end A221678

/-! ## A221678.P6884816098210917113

`Δ[∑[A082679(n)]-A097992(3*(n+1))]`
-/

namespace A221678.P6884816098210917113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082679 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A097992 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A221678.P6884816098210917113

namespace A221678

/-- `Δ[∑[A082679(n)]-A097992(3*(n+1))]` -/
def P6884816098210917113.Spec : Prop :=
  ∀ n, P6884816098210917113.a n = A221678 (n + 1)

end A221678

/-! ## A221678.P5161166054506666049

`A221683(∑[n+3]+1)`
-/

namespace A221678.P5161166054506666049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221683 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221678.P5161166054506666049

namespace A221678

/-- `A221683(∑[n+3]+1)` -/
def P5161166054506666049.Spec : Prop :=
  ∀ n, P5161166054506666049.a n = A221678 (n + 1)

end A221678

/-!
# A221679: Number of 0..4 arrays of length n with each element differing from at least one neighbor by 1 or less, starting with 0.

The programs for A221679, the canonical program `A221679.P13689111371278932230` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221679 has offset 1).

The definition of A221679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221679.P13689111371278932230

`ogf((2x-x^2+3x^3+2x^4+2x^5)/(1-3x-4x^2-6x^4-4x^5-4x^6))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A221679

/-- `ogf((2x-x^2+3x^3+2x^4+2x^5)/(1-3x-4x^2-6x^4-4x^5-4x^6))` -/
def P13689111371278932230.Spec : Prop :=
  ∀ n, P13689111371278932230.a n = A221679 (n + 1)

theorem P13689111371278932230.correct : P13689111371278932230.Spec := by
  intro n
  simp only [A221679, Nat.add_sub_cancel]

end A221679

/-! ## A221679.P15717921289967732841

`A221683(∑[n+4]+3)`
-/

namespace A221679.P15717921289967732841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221683 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A221679.P15717921289967732841

namespace A221679

/-- `A221683(∑[n+4]+3)` -/
def P15717921289967732841.Spec : Prop :=
  ∀ n, P15717921289967732841.a n = A221679 (n + 1)

end A221679

/-! ## A221679.P1019196691791725065

`record[A221683(A027379(n))]`
-/

namespace A221679.P1019196691791725065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221683 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221679.P1019196691791725065

namespace A221679

/-- `record[A221683(A027379(n))]` -/
def P1019196691791725065.Spec : Prop :=
  ∀ n, P1019196691791725065.a n = A221679 (n + 1)

end A221679

/-! ## A221679.P14981579690175534679

`record[A221683(A267874(n)-∑[n])]`
-/

namespace A221679.P14981579690175534679
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221683 (A267874 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221679.P14981579690175534679

namespace A221679

/-- `record[A221683(A267874(n)-∑[n])]` -/
def P14981579690175534679.Spec : Prop :=
  ∀ n, P14981579690175534679.a n = A221679 (n + 1)

end A221679

/-!
# A221680: Number of 0..5 arrays of length n with each element differing from at least one neighbor by 1 or less, starting with 0.

The programs for A221680, the canonical program `A221680.P7547546924730560448` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221680 has offset 1).

The definition of A221680 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221680.P7547546924730560448

`ogf((2x-3x^2+6x^3+2x^4)/(1-4x-3x^2+6x^3-19x^4-5x^5-x^6))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A221680

/-- `ogf((2x-3x^2+6x^3+2x^4)/(1-4x-3x^2+6x^3-19x^4-5x^5-x^6))` -/
def P7547546924730560448.Spec : Prop :=
  ∀ n, P7547546924730560448.a n = A221680 (n + 1)

theorem P7547546924730560448.correct : P7547546924730560448.Spec := by
  intro n
  simp only [A221680, Nat.add_sub_cancel]

end A221680

/-! ## A221680.P10905562117101394412

`A221683(∑[n+5]+6)`
-/

namespace A221680.P10905562117101394412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221683 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A221680.P10905562117101394412

namespace A221680

/-- `A221683(∑[n+5]+6)` -/
def P10905562117101394412.Spec : Prop :=
  ∀ n, P10905562117101394412.a n = A221680 (n + 1)

end A221680

/-! ## A221680.P12197650331122795834

`record[A221683(A060576(n)+A052905(n))]`
-/

namespace A221680.P12197650331122795834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221683 (A060576 n + A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221680.P12197650331122795834

namespace A221680

/-- `record[A221683(A060576(n)+A052905(n))]` -/
def P12197650331122795834.Spec : Prop :=
  ∀ n, P12197650331122795834.a n = A221680 (n + 1)

end A221680

/-!
# A221681: Number of 0..6 arrays of length n with each element differing from at least one neighbor by 1 or less, starting with 0.

The programs for A221681, the canonical program `A221681.P4738487277682501992` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221681 has offset 1).

The definition of A221681 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221681.P4738487277682501992

`ogf((2x-3x^2+8x^3+3x^4+6x^5-x^6+x^7)/(1-4x-5x^2+7x^3-33x^4-17x^5-24x^6+5x^7-2x^8))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A221681

/-- `ogf((2x-3x^2+8x^3+3x^4+6x^5-x^6+x^7)/(1-4x-5x^2+7x^3-33x^4-17x^5-24x^6+5x^7-2x^8))` -/
def P4738487277682501992.Spec : Prop :=
  ∀ n, P4738487277682501992.a n = A221681 (n + 1)

theorem P4738487277682501992.correct : P4738487277682501992.Spec := by
  intro n
  simp only [A221681, Nat.add_sub_cancel]

end A221681

/-! ## A221681.P8750687083338124439

`A221683(A052905(n+3))`
-/

namespace A221681.P8750687083338124439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221683 (A052905 (n + 3)).toNat

end

end A221681.P8750687083338124439

namespace A221681

/-- `A221683(A052905(n+3))` -/
def P8750687083338124439.Spec : Prop :=
  ∀ n, P8750687083338124439.a n = A221681 (n + 1)

end A221681

/-!
# A221682: Number of 0..7 arrays of length n with each element differing from at least one neighbor by 1 or less, starting with 0.

The programs for A221682, the canonical program `A221682.P4529476275212075082` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221682 has offset 1).

The definition of A221682 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221682.P4529476275212075082

`ogf((2x-5x^2+13x^3-4x^4+5x^5+2x^6+2x^7)/(1-5x-3x^2+16x^3-65x^4+14x^5-23x^6-2x^7-8x^8))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A221682

/-- `ogf((2x-5x^2+13x^3-4x^4+5x^5+2x^6+2x^7)/(1-5x-3x^2+16x^3-65x^4+14x^5-23x^6-2x^7-8x^8))` -/
def P4529476275212075082.Spec : Prop :=
  ∀ n, P4529476275212075082.a n = A221682 (n + 1)

theorem P4529476275212075082.correct : P4529476275212075082.Spec := by
  intro n
  simp only [A221682, Nat.add_sub_cancel]

end A221682

/-! ## A221682.P12076781352555418397

`A221683(A055999(4+n))`
-/

namespace A221682.P12076781352555418397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221683 (A055999 (4 + n)).toNat

end

end A221682.P12076781352555418397

namespace A221682

/-- `A221683(A055999(4+n))` -/
def P12076781352555418397.Spec : Prop :=
  ∀ n, P12076781352555418397.a n = A221682 (n + 1)

end A221682

/-!
# A221683: T(n,k)=Number of 0..k arrays of length n with each element differing from at least one neighbor by 1 or less, starting with 0.

The programs for A221683, there is no canonical definition to state claims against.
-/

/-! ## A221683.P8454488182048317240

`A203647(n+1)+A008683(A329049(n))`
-/

namespace A221683.P8454488182048317240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (n + 1) + A008683 (A329049 n).toNat

end

end A221683.P8454488182048317240

/-! ## A221683.P3148060216016017619

`A203647(n+1)-A248908(A013609(n))`
-/

namespace A221683.P3148060216016017619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (n + 1) - A248908 (A013609 n).toNat

end

end A221683.P3148060216016017619

/-! ## A221683.P2857939124234091031

`A203647(n+1)-A008683(A285066(n))`
-/

namespace A221683.P2857939124234091031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (n + 1) - A008683 (A285066 n).toNat

end

end A221683.P2857939124234091031

/-! ## A221683.P263670762794608929

`A203647(n+1)%A298975(A193844(n))`
-/

namespace A221683.P263670762794608929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203647 (n + 1)) (A298975 (A193844 n).toNat)

end

end A221683.P263670762794608929

/-! ## A221683.P10213681355988191835

`A203647(n+1)-A000089(A186695(n+1))`
-/

namespace A221683.P10213681355988191835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (n + 1) - A000089 (A186695 (n + 1)).toNat

end

end A221683.P10213681355988191835

/-!
# A221684: Number of 0..n arrays of length 5 with each element differing from at least one neighbor by 1 or less, starting with 0.

The programs for A221684, there is no canonical definition to state claims against.
-/

/-! ## A221684.P2003582368000356638

`A221683(∪[A233678(n+1), A167499(n+3)])`
-/

namespace A221684.P2003582368000356638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167499 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221683 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A221684.P2003582368000356638

/-!
# A221685: Number of 0..n arrays of length 6 with each element differing from at least one neighbor by 1 or less, starting with 0.

The programs for A221685, the canonical program `A221685.P9730600692259050910` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221685 has offset 1).

The definition of A221685 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221685.P9730600692259050910

`ogf((32+17x-2x^2+2x^3-8x^4-4x^5-x^6)/(1-3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A221685

/-- `ogf((32+17x-2x^2+2x^3-8x^4-4x^5-x^6)/(1-3x+3x^2-x^3))` -/
def P9730600692259050910.Spec : Prop :=
  ∀ n, P9730600692259050910.a n = A221685 (n + 1)

theorem P9730600692259050910.correct : P9730600692259050910.Spec := by
  intro n
  simp only [A221685, Nat.add_sub_cancel]

end A221685

/-! ## A221685.P10481047774177990808

`A221683(A167614(n+4)+3)`
-/

namespace A221685.P10481047774177990808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221683 (A167614 (n + 4) + 3).toNat

end

end A221685.P10481047774177990808

namespace A221685

/-- `A221683(A167614(n+4)+3)` -/
def P10481047774177990808.Spec : Prop :=
  ∀ n, P10481047774177990808.a n = A221685 (n + 1)

end A221685

/-!
# A221686: Number of 0..n arrays of length 7 with each element differing from at least one neighbor by 1 or less, starting with 0.

The programs for A221686, the canonical program `A221686.P3797361045702554587` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221686 has offset 1).

The definition of A221686 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221686.P3797361045702554587

`ogf((64+128x+76x^2+56x^3-8x^4-10x^5)/(1-3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A221686

/-- `ogf((64+128x+76x^2+56x^3-8x^4-10x^5)/(1-3x+3x^2-x^3))` -/
def P3797361045702554587.Spec : Prop :=
  ∀ n, P3797361045702554587.a n = A221686 (n + 1)

theorem P3797361045702554587.correct : P3797361045702554587.Spec := by
  intro n
  simp only [A221686, Nat.add_sub_cancel]

end A221686

/-! ## A221686.P16530007327683866439

`A221683(A167487(n+5))`
-/

namespace A221686.P16530007327683866439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221683 (A167487 (n + 5)).toNat

end

end A221686.P16530007327683866439

namespace A221686

/-- `A221683(A167487(n+5))` -/
def P16530007327683866439.Spec : Prop :=
  ∀ n, P16530007327683866439.a n = A221686 (n + 1)

end A221686

/-!
# A221687: Number of n X 2 arrays of occupancy after each element stays put or moves to some king-move neighbor, without consecutive moves in the same direction.

The programs for A221687, there is no canonical definition to state claims against.
-/

/-! ## A221687.P14727147314685273735

`ogf((3-4x-5x^2-2x^3-2x^4)/(1-13x+18x^2+29x^3+15x^4+12x^5+2x^6))`
-/

namespace A221687.P14727147314685273735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -4, -5, -2, -2] [1, -13, 18, 29, 15, 12, 2] n

end

end A221687.P14727147314685273735

/-! ## A221687.P16183295599795014641

`A221688(∑[1+n]+2)`
-/

namespace A221687.P16183295599795014641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221688 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221687.P16183295599795014641

/-! ## A221687.P15424377982886564993

`record[A221688(n+3)/A137650(n+1)]`
-/

namespace A221687.P15424377982886564993
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221688 (n + 3) : ℚ) / (A137650 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221687.P15424377982886564993

/-!
# A221689: Number of n X 3 arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, without consecutive moves in the same direction.

The programs for A221689, there is no canonical definition to state claims against.
-/

/-! ## A221689.P11829993590303341375

`A221693(∑[n+3]+1)`
-/

namespace A221689.P11829993590303341375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221693 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221689.P11829993590303341375

/-! ## A221689.P2982980274002420655

`record[A221693(A198464(n+1))]`
-/

namespace A221689.P2982980274002420655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221693 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221689.P2982980274002420655

/-!
# A221690: Number of nX4 arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, without consecutive moves in the same direction.

The programs for A221690, there is no canonical definition to state claims against.
-/

/-! ## A221690.P3415670432136527500

`A221693(A141214(n+1))`
-/

namespace A221690.P3415670432136527500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221693 (A141214 (n + 1)).toNat

end

end A221690.P3415670432136527500

/-!
# A221691: Number of nX5 arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, without consecutive moves in the same direction.

The programs for A221691, there is no canonical definition to state claims against.
-/

/-! ## A221691.P8617629974080033760

`A221693(Δ[A023545(n+1)])`
-/

namespace A221691.P8617629974080033760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221693 (f1 (n + 1) - f1 n).toNat

end

end A221691.P8617629974080033760

/-!
# A221692: Number of nX6 arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, without consecutive moves in the same direction.

The programs for A221692, there is no canonical definition to state claims against.
-/

/-! ## A221692.P12260660281952955714

`A221693(A052905(n+3))`
-/

namespace A221692.P12260660281952955714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221693 (A052905 (n + 3)).toNat

end

end A221692.P12260660281952955714

/-!
# A221694: Number of 2 X n arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, without consecutive moves in the same direction.

The programs for A221694, the canonical program `A221694.P4936224135107506454` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221694 has offset 1).

The definition of A221694 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221694.P4936224135107506454

`ogf((1+16x+19x^2-21x^3-27x^4+36x^5+38x^6-24x^7+24x^8)/(1-5x-28x^2-9x^3+62x^4+30x^5-64x^6-32x^7+32x^8-32x^9))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A221694

/-- `ogf((1+16x+19x^2-21x^3-27x^4+36x^5+38x^6-24x^7+24x^8)/(1-5x-28x^2-9x^3+62x^4+30x^5-64x^6-32x^7+32x^8-32x^9))` -/
def P4936224135107506454.Spec : Prop :=
  ∀ n, P4936224135107506454.a n = A221694 (n + 1)

theorem P4936224135107506454.correct : P4936224135107506454.Spec := by
  intro n
  simp only [A221694, Nat.add_sub_cancel]

end A221694

/-! ## A221694.P4402701993372015276

`A221693(∑[n+1]+2)`
-/

namespace A221694.P4402701993372015276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221693 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221694.P4402701993372015276

namespace A221694

/-- `A221693(∑[n+1]+2)` -/
def P4402701993372015276.Spec : Prop :=
  ∀ n, P4402701993372015276.a n = A221694 (n + 1)

end A221694

/-! ## A221694.P9334500162406740551

`record[ratio[A221693(A080036(n))]]`
-/

namespace A221694.P9334500162406740551
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221693 (A080036 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221694.P9334500162406740551

namespace A221694

/-- `record[ratio[A221693(A080036(n))]]` -/
def P9334500162406740551.Spec : Prop :=
  ∀ n, P9334500162406740551.a n = (A221694 (n + 1) : ℚ)

end A221694

/-! ## A221694.P6070014221380092775

`record[A221693(n+1)*A326822(n)]`
-/

namespace A221694.P6070014221380092775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221693 (n + 1) * A326822 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221694.P6070014221380092775

namespace A221694

/-- `record[A221693(n+1)*A326822(n)]` -/
def P6070014221380092775.Spec : Prop :=
  ∀ n, P6070014221380092775.a n = A221694 (n + 1)

end A221694

/-! ## A221694.P9672245249219162520

`record[gcd(A098825(n), A221693(n+1))]`
-/

namespace A221694.P9672245249219162520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098825 n) (A221693 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221694.P9672245249219162520

namespace A221694

/-- `record[gcd(A098825(n), A221693(n+1))]` -/
def P9672245249219162520.Spec : Prop :=
  ∀ n, (P9672245249219162520.a n : ℤ) = A221694 (n + 1)

end A221694

/-!
# A221695: Number of 3Xn arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, without consecutive moves in the same direction.

The programs for A221695, there is no canonical definition to state claims against.
-/

/-! ## A221695.P12875812398355222075

`A221693(∑[n+2]+4)`
-/

namespace A221695.P12875812398355222075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221693 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221695.P12875812398355222075

/-!
# A221696: Number of 4Xn arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, without consecutive moves in the same direction.

The programs for A221696, there is no canonical definition to state claims against.
-/

/-! ## A221696.P5501797434270541601

`A221693(A141214(n)+7)`
-/

namespace A221696.P5501797434270541601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221693 (A141214 n + 7).toNat

end

end A221696.P5501797434270541601

/-!
# A221697: Numbers whose largest digit of all divisors is 2.

The programs for A221697, there is no canonical definition to state claims against.
-/

/-! ## A221697.P5196742302492080034

`∩[A277964(n+1), A385344(n+1)]`
-/

namespace A221697.P5196742302492080034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221697.P5196742302492080034

/-! ## A221697.P15648804287960247100

`∩[A072227(n+1), A277964(n+1)]`
-/

namespace A221697.P15648804287960247100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221697.P15648804287960247100

/-! ## A221697.P3752379161753230916

`eq[2, A209928(n+1)]+1`
-/

namespace A221697.P3752379161753230916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209928 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A221697.P3752379161753230916

/-! ## A221697.P5050251069121417005

`eq[2, A209928(A028310(n))]`
-/

namespace A221697.P5050251069121417005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209928 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A221697.P5050251069121417005

/-! ## A221697.P12034436115447005319

`eq[4, A209928(A004277(n))]`
-/

namespace A221697.P12034436115447005319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209928 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A221697.P12034436115447005319

/-!
# A221698: Composite numbers n such that largest digit of all divisors of n is 2.

The programs for A221698, there is no canonical definition to state claims against.
-/

/-! ## A221698.P5449167483763124610

`∩[A100657(n+1), A118594(n+1)]`
-/

namespace A221698.P5449167483763124610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221698.P5449167483763124610

/-!
# A221699: Numbers with the property that each sum of any pair of their digits is prime.

The programs for A221699, there is no canonical definition to state claims against.
-/

/-! ## A221699.P6961846008117901517

`∩[A182175(n+1), A088134(n+2)]`
-/

namespace A221699.P6961846008117901517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088134 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221699.P6961846008117901517

/-! ## A221699.P11411376117280326003

`A182175(n+11)`
-/

namespace A221699.P11411376117280326003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182175 (n + 11)

end

end A221699.P11411376117280326003

/-! ## A221699.P17118474300009544998

`A227823(A071669(n+1))`
-/

namespace A221699.P17118474300009544998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227823 (A071669 (n + 1)).toNat

end

end A221699.P17118474300009544998

/-! ## A221699.P7295974836348320472

`∩[A001637(n+1), A088134(n+1)]`
-/

namespace A221699.P7295974836348320472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221699.P7295974836348320472

/-! ## A221699.P3245119545625201825

`A227823(A048266(n+1))`
-/

namespace A221699.P3245119545625201825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227823 (A048266 (n + 1)).toNat

end

end A221699.P3245119545625201825

