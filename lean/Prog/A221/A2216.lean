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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B010.C000
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
import Seq.Opaque.C025

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

/-! ## A221601.P16557184388966285009

`lcm(2, A221602(A167614(n+1)))`
-/

namespace A221601.P16557184388966285009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A221602 (A167614 (n + 1)).toNat)

end

end A221601.P16557184388966285009

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

/-!
# A221603: Number of n X n arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without move-in move-out left turns.

The programs for A221603, there is no canonical definition to state claims against.
-/

/-! ## A221603.P16858430300282446030

`A221609((n+1)²+n²)`
-/

namespace A221603.P16858430300282446030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221609 ((n + 1) ^ 2 + n ^ 2)

end

end A221603.P16858430300282446030

/-!
# A221604: Number of n X 3 arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without move-in move-out left turns.

The programs for A221604, the canonical program `A221604.P6365961932242925290` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221604 has offset 1).

The definition of A221604 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221604.P6365961932242925290

`6*a(n-1)-4*a(n-2)+2*a(n-3)-2*a(n-4)` with `a(0)=2, a(1)=10, a(2)=54, a(3)=287`

The canonical program, it is in `Seq.B000.C025`.
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

/-! ## A221604.P8635531223602957135

`A221609(A034856(n+2))%A221605(n+1)`
-/

namespace A221604.P8635531223602957135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221609 (A034856 (n + 2)).toNat) (A221605 (n + 1))

end

end A221604.P8635531223602957135

namespace A221604

/-- `A221609(A034856(n+2))%A221605(n+1)` -/
def P8635531223602957135.Spec : Prop :=
  ∀ n, P8635531223602957135.a n = A221604 (n + 1)

end A221604

/-! ## A221604.P10281358181444445263

`or(A221609(A034856(n+2)), A231108(n+1))`
-/

namespace A221604.P10281358181444445263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A221609 (A034856 (n + 2)).toNat) (A231108 (n + 1))

end

end A221604.P10281358181444445263

namespace A221604

/-- `or(A221609(A034856(n+2)), A231108(n+1))` -/
def P10281358181444445263.Spec : Prop :=
  ∀ n, P10281358181444445263.a n = A221604 (n + 1)

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

/-! ## A221605.P2996433976008167733

`A221609(A055998(n+2))`
-/

namespace A221605.P2996433976008167733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221609 (A055998 (n + 2)).toNat

end

end A221605.P2996433976008167733

/-! ## A221605.P14569065799306451691

`A221609(A155212(n)+5)`
-/

namespace A221605.P14569065799306451691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221609 (A155212 n + 5).toNat

end

end A221605.P14569065799306451691

/-! ## A221605.P786693762117027600

`A221609(A056000(n)+7)`
-/

namespace A221605.P786693762117027600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221609 (A056000 n + 7).toNat

end

end A221605.P786693762117027600

/-! ## A221605.P15774143893793377417

`A221609(eq[2, A054123(n)])`
-/

namespace A221605.P15774143893793377417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221609 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221605.P15774143893793377417

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

/-! ## A221606.P12402533662107421402

`A221609(A046691(n+3))`
-/

namespace A221606.P12402533662107421402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221609 (A046691 (n + 3)).toNat

end

end A221606.P12402533662107421402

/-! ## A221606.P15138282479652097613

`A221609(eq[4, A193592(n)])`
-/

namespace A221606.P15138282479652097613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221609 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221606.P15138282479652097613

/-! ## A221606.P13097357133324820165

`A221609(eq[8, A140996(n)])`
-/

namespace A221606.P13097357133324820165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221609 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221606.P13097357133324820165

/-! ## A221606.P10401715983623880086

`A221609(Δ[A023545(n+1)])`
-/

namespace A221606.P10401715983623880086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221609 (f1 (n + 1) - f1 n).toNat

end

end A221606.P10401715983623880086

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

/-! ## A221607.P1420416333504188254

`A221609(A302537(n)+15)`
-/

namespace A221607.P1420416333504188254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221609 (A302537 n + 15).toNat

end

end A221607.P1420416333504188254

/-! ## A221607.P15526991198945055138

`A221609(A056119(n)+16)`
-/

namespace A221607.P15526991198945055138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221609 (A056119 n + 16).toNat

end

end A221607.P15526991198945055138

/-! ## A221607.P2819674280697663045

`A221609(eq[3, A219347(n)])`
-/

namespace A221607.P2819674280697663045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221609 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221607.P2819674280697663045

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

/-! ## A221608.P13453140190302212472

`A221609(eq[2, A219347(n)-2])`
-/

namespace A221608.P13453140190302212472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221609 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221608.P13453140190302212472

/-!
# A221610: Number of 2 X n arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without move-in move-out left turns.

The programs for A221610, there is no canonical definition to state claims against.
-/

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

/-! ## A221610.P11628817058977307595

`record[A221609(n+3)/A117260(n)]`
-/

namespace A221610.P11628817058977307595
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221609 (n + 3) : ℚ) / (A117260 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221610.P11628817058977307595

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

/-! ## A221611.P10202206493979805709

`ceil(sin(n)²)*A221609(A167614(n+1))`
-/

namespace A221611.P10202206493979805709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉ * A221609 (A167614 (n + 1)).toNat

end

end A221611.P10202206493979805709

/-! ## A221611.P4941403438480120338

`A221609(A167614(n+1))+A185284(n)`
-/

namespace A221611.P4941403438480120338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221609 (A167614 (n + 1)).toNat + A185284 n

end

end A221611.P4941403438480120338

/-! ## A221611.P7373115108189178996

`A057427(n)*A221609(A167614(n+1))`
-/

namespace A221611.P7373115108189178996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A221609 (A167614 (n + 1)).toNat

end

end A221611.P7373115108189178996

/-! ## A221611.P17039095679112956955

`A221609(A167614(n+1))%A001022(n)`
-/

namespace A221611.P17039095679112956955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221609 (A167614 (n + 1)).toNat) (A001022 n)

end

end A221611.P17039095679112956955

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

/-! ## A221612.P10374083948638514437

`A221609(A052905(n)+9)`
-/

namespace A221612.P10374083948638514437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221609 (A052905 n + 9).toNat

end

end A221612.P10374083948638514437

/-! ## A221612.P13271667489232480386

`A221609(A055999(n)+10)`
-/

namespace A221612.P13271667489232480386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221609 (A055999 n + 10).toNat

end

end A221612.P13271667489232480386

/-! ## A221612.P7606858641554258127

`A221609(A167614(n+2)+1)`
-/

namespace A221612.P7606858641554258127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221609 (A167614 (n + 2) + 1).toNat

end

end A221612.P7606858641554258127

/-! ## A221612.P16768771581174089187

`A221609(A166136(n+2)-2)`
-/

namespace A221612.P16768771581174089187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221609 (A166136 (n + 2) - 2).toNat

end

end A221612.P16768771581174089187

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

/-! ## A221613.P17910225565157755678

`A221609(A155212(n)+13)`
-/

namespace A221613.P17910225565157755678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221609 (A155212 n + 13).toNat

end

end A221613.P17910225565157755678

/-! ## A221613.P5364283827623923920

`A221609(A056000(n)+15)`
-/

namespace A221613.P5364283827623923920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221609 (A056000 n + 15).toNat

end

end A221613.P5364283827623923920

/-! ## A221613.P8898628446195108053

`A221609(eq[7, A066657(n)])`
-/

namespace A221613.P8898628446195108053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221609 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221613.P8898628446195108053

/-! ## A221613.P8439806807638730072

`A221609(A133263(n+4)+3)`
-/

namespace A221613.P8439806807638730072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221609 (A133263 (n + 4) + 3).toNat

end

end A221613.P8439806807638730072

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

/-! ## A221614.P4024383399692623884

`A221609(A167499(n+4)+1)`
-/

namespace A221614.P4024383399692623884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221609 (A167499 (n + 4) + 1).toNat

end

end A221614.P4024383399692623884

/-! ## A221614.P1585408961473475360

`A221609(A167614(n+4)+3)`
-/

namespace A221614.P1585408961473475360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221609 (A167614 (n + 4) + 3).toNat

end

end A221614.P1585408961473475360

/-! ## A221614.P4301083648058799284

`A221609(A000217(n+5)+6)`
-/

namespace A221614.P4301083648058799284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221609 (A000217 (n + 5) + 6).toNat

end

end A221614.P4301083648058799284

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

/-! ## A221619.P2770357707325248770

`∑[A014926(n+2)]+1`
-/

namespace A221619.P2770357707325248770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014926 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A221619.P2770357707325248770

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

/-! ## A221619.P2192848677146017760

`A221623(A141214(n+1))%A184492(n+1)`
-/

namespace A221619.P2192848677146017760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221623 (A141214 (n + 1)).toNat) (A184492 (n + 1))

end

end A221619.P2192848677146017760

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

/-! ## A221620.P11872984128622707040

`A221623(Δ[A023545(n+1)])`
-/

namespace A221620.P11872984128622707040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221623 (f1 (n + 1) - f1 n).toNat

end

end A221620.P11872984128622707040

/-! ## A221620.P13729983010660489787

`A221623(eq[3, A059623(n+1)])`
-/

namespace A221620.P13729983010660489787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221623 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221620.P13729983010660489787

/-! ## A221620.P4928764010950469534

`A221623(eq[3, A144018(n+1)])`
-/

namespace A221620.P4928764010950469534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144018 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221623 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221620.P4928764010950469534

/-! ## A221620.P16819953325100457528

`A221623(eq[6, A185782(n+1)])`
-/

namespace A221620.P16819953325100457528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221623 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221620.P16819953325100457528

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

/-! ## A221621.P17355719663117335926

`A221623(eq[5, A193592(n)])`
-/

namespace A221621.P17355719663117335926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221623 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221621.P17355719663117335926

/-! ## A221621.P12885986508246457655

`A221623(Δ[A023545(n+2)]-1)`
-/

namespace A221621.P12885986508246457655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221623 (f1 (n + 1) - f1 n - 1).toNat

end

end A221621.P12885986508246457655

/-!
# A221622: 

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

/-! ## A221623.P14457040575628116802

`A249817(C(A222159(n+1), A261585(n)))`
-/

namespace A221623.P14457040575628116802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249817 (Nat.choose (A222159 (n + 1)).toNat (A261585 n).toNat)

end

end A221623.P14457040575628116802

/-! ## A221623.P12167111182299044990

`A250246(C(A222159(n+1), A261585(n)))`
-/

namespace A221623.P12167111182299044990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (Nat.choose (A222159 (n + 1)).toNat (A261585 n).toNat)

end

end A221623.P12167111182299044990

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

/-! ## A221624.P1351661261923841782

`A221623(A089071(n+3))+A000007(n+1)`
-/

namespace A221624.P1351661261923841782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221623 (A089071 (n + 3)).toNat + A000007 (n + 1)

end

end A221624.P1351661261923841782

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

/-! ## A221625.P11034120259145409505

`A221623(A167614(n+1))+log2(1/2)+1`
-/

namespace A221625.P11034120259145409505
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A221623 (A167614 (n + 1)).toNat : ℝ) + Real.logb 2 ((1 : ℚ) / 2 : ℝ) + 1

end

end A221625.P11034120259145409505

/-! ## A221625.P7187988084056098396

`gcd(A000038(n), A221623(A167614(n+1)))`
-/

namespace A221625.P7187988084056098396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A221623 (A167614 (n + 1)).toNat)

end

end A221625.P7187988084056098396

/-! ## A221625.P2477157154810391763

`lcm(A000034(n), A221623(A167614(n+1)))`
-/

namespace A221625.P2477157154810391763
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A221623 (A167614 (n + 1)).toNat)

end

end A221625.P2477157154810391763

/-! ## A221625.P8623277366504663839

`or(A000007(n), A221623(A167614(n+1)))`
-/

namespace A221625.P8623277366504663839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A221623 (A167614 (n + 1)).toNat)

end

end A221625.P8623277366504663839

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

/-! ## A221626.P3127637145347750017

`A221623(A052905(n)+9)`
-/

namespace A221626.P3127637145347750017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221623 (A052905 n + 9).toNat

end

end A221626.P3127637145347750017

/-! ## A221626.P5974479016668084562

`A221623(A055999(n)+10)`
-/

namespace A221626.P5974479016668084562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221623 (A055999 n + 10).toNat

end

end A221626.P5974479016668084562

/-! ## A221626.P9419000268727637964

`A221623(A167614(n+2)+1)`
-/

namespace A221626.P9419000268727637964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221623 (A167614 (n + 2) + 1).toNat

end

end A221626.P9419000268727637964

/-! ## A221626.P9003419846069950922

`A221623(eq[5, A131818(n+1)])`
-/

namespace A221626.P9003419846069950922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221623 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221626.P9003419846069950922

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

/-! ## A221627.P16532443934163567446

`A221623(eq[6, A131818(n+1)])`
-/

namespace A221627.P16532443934163567446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221623 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221627.P16532443934163567446

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

/-! ## A221628.P1918652630941376385

`A221623(eq[7, A131818(n+1)])`
-/

namespace A221628.P1918652630941376385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221623 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221628.P1918652630941376385

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

/-! ## A221629.P14399521800089770920

`A221623(eq[8, A131818(n+1)])`
-/

namespace A221629.P14399521800089770920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221623 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221629.P14399521800089770920

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

/-! ## A221631.P13703342969100874425

`A221632(A027379(n+2))`
-/

namespace A221631.P13703342969100874425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221632 (A027379 (n + 2)).toNat

end

end A221631.P13703342969100874425

/-! ## A221631.P1132690522477798968

`A221632(A055998(n+2))`
-/

namespace A221631.P1132690522477798968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221632 (A055998 (n + 2)).toNat

end

end A221631.P1132690522477798968

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

The programs for A221633, there is no canonical definition to state claims against.
-/

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

/-! ## A221633.P16923072061272560588

`record[gcd(A025581(n), A221632(n+3))]`
-/

namespace A221633.P16923072061272560588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A221632 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221633.P16923072061272560588

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

/-! ## A221634.P17259421091296409665

`A221632(A167614(n+1))+A025442(n)`
-/

namespace A221634.P17259421091296409665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221632 (A167614 (n + 1)).toNat + A025442 n

end

end A221634.P17259421091296409665

/-! ## A221634.P13283504724437585956

`A221632(A167614(n+1))+A025465(n)`
-/

namespace A221634.P13283504724437585956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221632 (A167614 (n + 1)).toNat + A025465 n

end

end A221634.P13283504724437585956

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

/-! ## A221635.P8976818431245642704

`A221632(A052905(n)+9)`
-/

namespace A221635.P8976818431245642704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221632 (A052905 n + 9).toNat

end

end A221635.P8976818431245642704

/-! ## A221635.P18036536585041907945

`A221632(A055999(n)+10)`
-/

namespace A221635.P18036536585041907945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221632 (A055999 n + 10).toNat

end

end A221635.P18036536585041907945

/-! ## A221635.P7039947124576764823

`A221632(eq[5, A066657(n)])`
-/

namespace A221635.P7039947124576764823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221635.P7039947124576764823

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

The programs for A221638, there is no canonical definition to state claims against.
-/

/-! ## A221638.P15570366108095338475

`eq[n+1, lcm(n+1, A257588(n+1))]+1`
-/

namespace A221638.P15570366108095338475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A257588 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A221638.P15570366108095338475

/-!
# A221639: a(n) = 5^(5*n+1) + 4^(5*n+2) + 3^(5*n).

The programs for A221639, the canonical program `A221639.P13911141312828503004` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221639 has offset 0).

The definition of A221639 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A221639.P13911141312828503004

`5^(5*n+1)+4^(5*n+2)+243^n`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A221639

/-- `5^(5*n+1)+4^(5*n+2)+243^n` -/
def P13911141312828503004.Spec : Prop :=
  ∀ n, (P13911141312828503004.a n : ℤ) = A221639 n

theorem P13911141312828503004.correct : P13911141312828503004.Spec := by
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

/-! ## A221641.P1662319244331606264

`A057427(A221642(n+1))`
-/

namespace A221641.P1662319244331606264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A221642 (n + 1)).toNat

end

end A221641.P1662319244331606264

/-! ## A221641.P11541110098140171398

`A011585(A221642(n+1)²)`
-/

namespace A221641.P11541110098140171398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011585 (A221642 (n + 1) ^ 2).toNat

end

end A221641.P11541110098140171398

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

/-! ## A221642.P14217923227973066530

`A127094(C(A064642(n+1), n²)+n)`
-/

namespace A221642.P14217923227973066530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127094 (Nat.choose (A064642 (n + 1)).toNat (n ^ 2) + n)

end

end A221642.P14217923227973066530

/-! ## A221642.P1177417244596565358

`A127094(A001222(A042950(n)))`
-/

namespace A221642.P1177417244596565358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127094 (A001222 (A042950 n).toNat).toNat

end

end A221642.P1177417244596565358

/-! ## A221642.P7974130262909307888

`A127094(A001222(Δ[A003945(n)]))`
-/

namespace A221642.P7974130262909307888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127094 (A001222 (f1 (n + 1) - f1 n).toNat).toNat

end

end A221642.P7974130262909307888

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

/-! ## A221643.P10731322569880450360

`A224515((A224511(n+1)-1)/2)`
-/

namespace A221643.P10731322569880450360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224515 (SequenceMachineLib.roundAway ((A224511 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A221643.P10731322569880450360

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

/-! ## A221643.P15917345735786361791

`eq[A008833(A283750(n)), A283750(n)]`
-/

namespace A221643.P15917345735786361791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A283750 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283750 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A221643.P15917345735786361791

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

/-! ## A221646.P5156409345924961857

`A001221(A000034(A089408(n))*A000124(n))`
-/

namespace A221646.P5156409345924961857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000034 (A089408 n).toNat * A000124 n).toNat

end

end A221646.P5156409345924961857

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

The programs for A221652, the canonical program `A221652.P12665017434536375062` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221652 has offset 1).

The definition of A221652 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 189 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221652.P12665017434536375062

`3*a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=4, a(2)=12, a(3)=40`

The canonical program, it is in `Seq.B000.C025`.
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

/-! ## A221652.P6983821040410061919

`record[A214727(A014681(n))+A020992(n)]`
-/

namespace A221652.P6983821040410061919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 (A014681 n).toNat + A020992 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221652.P6983821040410061919

namespace A221652

/-- `record[A214727(A014681(n))+A020992(n)]` -/
def P6983821040410061919.Spec : Prop :=
  ∀ n, P6983821040410061919.a n = A221652 (n + 1)

end A221652

/-! ## A221652.P1396622353080689505

`A214727(2*n)+A020992(A014681(2*n))`
-/

namespace A221652.P1396622353080689505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 (2 * n) + A020992 (A014681 (2 * n)).toNat

end

end A221652.P1396622353080689505

namespace A221652

/-- `A214727(2*n)+A020992(A014681(2*n))` -/
def P1396622353080689505.Spec : Prop :=
  ∀ n, P1396622353080689505.a n = A221652 (n + 1)

end A221652

/-! ## A221652.P568155442214575443

`A288599(2*n+1)-(A288599(2*n)+A000007(n))`
-/

namespace A221652.P568155442214575443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288599 (2 * n + 1) - (A288599 (2 * n) + A000007 n)

end

end A221652.P568155442214575443

namespace A221652

/-- `A288599(2*n+1)-(A288599(2*n)+A000007(n))` -/
def P568155442214575443.Spec : Prop :=
  ∀ n, P568155442214575443.a n = A221652 (n + 1)

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

/-! ## A221656.P1704240533570787504

`A221655(∑[n+1]+2)`
-/

namespace A221656.P1704240533570787504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221655 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221656.P1704240533570787504

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

/-! ## A221657.P6377648686630469202

`A221655(∑[n+2]+4)`
-/

namespace A221657.P6377648686630469202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221655 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221657.P6377648686630469202

/-! ## A221657.P14580567678536453756

`and(-1, A221655(A167614(n+1)))`
-/

namespace A221657.P14580567678536453756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A221655 (A167614 (n + 1)).toNat)

end

end A221657.P14580567678536453756

/-! ## A221657.P4286496268499424714

`A221655(A167614(n+1))+A025434(n)`
-/

namespace A221657.P4286496268499424714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221655 (A167614 (n + 1)).toNat + A025434 n

end

end A221657.P4286496268499424714

/-! ## A221657.P9686381410031486871

`A221655(A167614(n+1))+A025443(n)`
-/

namespace A221657.P9686381410031486871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221655 (A167614 (n + 1)).toNat + A025443 n

end

end A221657.P9686381410031486871

/-!
# A221658: Number of 4Xn arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, without move-in move-out left turns.

The programs for A221658, there is no canonical definition to state claims against.
-/

/-! ## A221658.P2113647759484329972

`A221655(∑[2*a(n-1)-a(n-2)])` with `a(0)=10, a(1)=4, a(2)=5`
-/

namespace A221658.P2113647759484329972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [10, 4, 5] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221655 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A221658.P2113647759484329972

/-! ## A221658.P15200366385616436559

`A221655(A141214(n)+7)`
-/

namespace A221658.P15200366385616436559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221655 (A141214 n + 7).toNat

end

end A221658.P15200366385616436559

/-! ## A221658.P14815866831439279417

`A221655(A052905(n)+9)`
-/

namespace A221658.P14815866831439279417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221655 (A052905 n + 9).toNat

end

end A221658.P14815866831439279417

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

/-! ## A221659.P17360317921893031281

`A221660(A056119(n)+16)`
-/

namespace A221659.P17360317921893031281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221660 (A056119 n + 16).toNat

end

end A221659.P17360317921893031281

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

/-! ## A221661.P2804692900388771939

`A221660(A167614(n+1))+A011745(n)`
-/

namespace A221661.P2804692900388771939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221660 (A167614 (n + 1)).toNat + A011745 n

end

end A221661.P2804692900388771939

/-! ## A221661.P9039390903320942320

`A221660(A167614(n+1))+A014083(n)`
-/

namespace A221661.P9039390903320942320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221660 (A167614 (n + 1)).toNat + A014083 n

end

end A221661.P9039390903320942320

/-! ## A221661.P13348156755423694073

`A221660(A167614(n+1))+A025434(n)`
-/

namespace A221661.P13348156755423694073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221660 (A167614 (n + 1)).toNat + A025434 n

end

end A221661.P13348156755423694073

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

/-! ## A221662.P14926637248913936813

`A221660(A052905(n)+9)`
-/

namespace A221662.P14926637248913936813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221660 (A052905 n + 9).toNat

end

end A221662.P14926637248913936813

/-! ## A221662.P31950352631889803

`A221660(A055999(n)+10)`
-/

namespace A221662.P31950352631889803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221660 (A055999 n + 10).toNat

end

end A221662.P31950352631889803

/-! ## A221662.P17424014604308192851

`A221660(eq[5, A066657(n)])`
-/

namespace A221662.P17424014604308192851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221662.P17424014604308192851

/-! ## A221662.P16007576959898357413

`A221660(A167614(n+2)+1)`
-/

namespace A221662.P16007576959898357413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221660 (A167614 (n + 2) + 1).toNat

end

end A221662.P16007576959898357413

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

/-! ## A221663.P11958143397088328442

`A221666(∑[n+2])`
-/

namespace A221663.P11958143397088328442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221666 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A221663.P11958143397088328442

/-! ## A221663.P8909456447968417834

`lcm(2, A221666(A000096(n+1)))`
-/

namespace A221663.P8909456447968417834
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A221666 (A000096 (n + 1)).toNat)

end

end A221663.P8909456447968417834

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

/-! ## A221664.P7364123760169571173

`A221666(A034856(n+2))/A008406(n+1)`
-/

namespace A221664.P7364123760169571173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221666 (A034856 (n + 2)).toNat : ℚ) / (A008406 (n + 1) : ℚ)

end

end A221664.P7364123760169571173

/-! ## A221664.P9806345101761872745

`A221666(A034856(n+2))/A215788(n+1)`
-/

namespace A221664.P9806345101761872745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221666 (A034856 (n + 2)).toNat : ℚ) / (A215788 (n + 1) : ℚ)

end

end A221664.P9806345101761872745

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

/-! ## A221665.P16704901023116613510

`A221666(A374004(n+1))`
-/

namespace A221665.P16704901023116613510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221666 (A374004 (n + 1)).toNat

end

end A221665.P16704901023116613510

/-! ## A221665.P4696494177652329999

`A221666(A141214(n)+7)`
-/

namespace A221665.P4696494177652329999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221666 (A141214 n + 7).toNat

end

end A221665.P4696494177652329999

/-! ## A221665.P11345335667576490924

`A221666(A052905(n)+9)`
-/

namespace A221665.P11345335667576490924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221666 (A052905 n + 9).toNat

end

end A221665.P11345335667576490924

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

/-! ## A221666.P11789128954170254757

`A000005(lcm(A115140(n+3), A221915(n)))`
-/

namespace A221666.P11789128954170254757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lcm (A115140 (n + 3)) (A221915 n))

end

end A221666.P11789128954170254757

/-! ## A221666.P5012155581141185803

`A000005(A000740(n+1)*A139250(2*(n+1)))`
-/

namespace A221666.P5012155581141185803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000740 (n + 1) * A139250 (2 * (n + 1))).toNat

end

end A221666.P5012155581141185803

/-!
# A221667: Sum of neighbor maps: number of 2 X n binary arrays indicating the locations of corresponding elements equal to the sum mod 3 of their horizontal, diagonal and antidiagonal neighbors in a random 0..2 2 X n array.

The programs for A221667, there is no canonical definition to state claims against.
-/

/-! ## A221667.P10620291239851717390

`A220172(2*n+3)/2`
-/

namespace A221667.P10620291239851717390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220172 (2 * n + 3) : ℚ) / 2

end

end A221667.P10620291239851717390

/-! ## A221667.P9494718639945213485

`floor(A220172(n+3+n)/2)`
-/

namespace A221667.P9494718639945213485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A220172 (n + 3 + n) : ℚ) / 2⌋

end

end A221667.P9494718639945213485

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

/-! ## A221667.P2602635280705975176

`2^A008683(A031927(n))*A220172(2*n+3)`
-/

namespace A221667.P2602635280705975176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A031927 n).toNat : ℤ) * (A220172 (2 * n + 3) : ℚ)

end

end A221667.P2602635280705975176

/-! ## A221667.P3583867781891771665

`2^A008683(A181758(n+1))*A220172(2*n+3)`
-/

namespace A221667.P3583867781891771665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A181758 (n + 1)).toNat : ℤ) * (A220172 (2 * n + 3) : ℚ)

end

end A221667.P3583867781891771665

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

/-! ## A221668.P7698609705656761782

`lcm(2, A221666(A167614(n+1)))`
-/

namespace A221668.P7698609705656761782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A221666 (A167614 (n + 1)).toNat)

end

end A221668.P7698609705656761782

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

/-! ## A221672.P753631016458566118

`∑[A026741(n)]+1-char[3]`
-/

namespace A221672.P753631016458566118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))

end

end A221672.P753631016458566118

/-! ## A221672.P4358547426591336064

`A086257(n)+∑[gcd(n, ∑[n])]`
-/

namespace A221672.P4358547426591336064
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086257 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A221672.P4358547426591336064

/-!
# A221673: Number of n X 2 arrays of occupancy after each element moves to some horizontal or vertical neighbor, without move-in move-out left turns.

The programs for A221673, there is no canonical definition to state claims against.
-/

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

/-! ## A221673.P13986090709448916057

`record[gcd(A221655(n+1), A221676(n+3))]`
-/

namespace A221673.P13986090709448916057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A221655 (n + 1)) (A221676 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221673.P13986090709448916057

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

/-! ## A221674.P6184313344970942914

`A221676(A167614(n+1))+char[9]`
-/

namespace A221674.P6184313344970942914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221676 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A221674.P6184313344970942914

/-! ## A221674.P12773192635222925610

`A067059(n)*A221676(A167614(n+1))`
-/

namespace A221674.P12773192635222925610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 n * A221676 (A167614 (n + 1)).toNat

end

end A221674.P12773192635222925610

/-! ## A221674.P10366796166302533808

`gcd(A000038(n), A221676(A167614(n+1)))`
-/

namespace A221674.P10366796166302533808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A221676 (A167614 (n + 1)).toNat)

end

end A221674.P10366796166302533808

/-! ## A221674.P5510883309491109552

`A221676(A167614(n+1))/A067059(n+1)`
-/

namespace A221674.P5510883309491109552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221676 (A167614 (n + 1)).toNat : ℚ) / (A067059 (n + 1) : ℚ)

end

end A221674.P5510883309491109552

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

/-! ## A221675.P1350591267406888468

`A007318(floor(n/2))*A221676(A141214(n)+7)`
-/

namespace A221675.P1350591267406888468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊(n : ℚ) / 2⌋.toNat * A221676 (A141214 n + 7).toNat

end

end A221675.P1350591267406888468

/-! ## A221675.P2811739250676480262

`A007318(floor(n/2))*A221676(A052905(n)+9)`
-/

namespace A221675.P2811739250676480262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊(n : ℚ) / 2⌋.toNat * A221676 (A052905 n + 9).toNat

end

end A221675.P2811739250676480262

/-! ## A221675.P220704370359680001

`A007318(floor(n/2))*A221676(A055999(n)+10)`
-/

namespace A221675.P220704370359680001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊(n : ℚ) / 2⌋.toNat * A221676 (A055999 n + 10).toNat

end

end A221675.P220704370359680001

/-!
# A221677: Number of 0..2 arrays of length n with each element differing from at least one neighbor by 1 or less, starting with 0.

The programs for A221677, the canonical program `A221677.P5112293346657275236` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221677 has offset 1).

The definition of A221677 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221677.P5112293346657275236

`a(n-3)+2*(a(n-1)+a(n-2))` with `a(0)=0, a(1)=2, a(2)=5`

The canonical program, it is in `Seq.B000.C025`.
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

The programs for A221678, the canonical program `A221678.P11234986961513364289` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221678 has offset 1).

The definition of A221678 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221678.P11234986961513364289

`3*a(n-1)+2*a(n-2)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=2, a(2)=5, a(3)=20`

The canonical program, it is in `Seq.B000.C025`.
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

/-! ## A221678.P6412620543181728110

`A057427(n)*A221683(A034856(n+2))`
-/

namespace A221678.P6412620543181728110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A221683 (A034856 (n + 2)).toNat

end

end A221678.P6412620543181728110

namespace A221678

/-- `A057427(n)*A221683(A034856(n+2))` -/
def P6412620543181728110.Spec : Prop :=
  ∀ n, P6412620543181728110.a n = A221678 (n + 1)

end A221678

/-! ## A221678.P9875975913080510231

`A000038(n)!*A221683(A034856(n+2))`
-/

namespace A221678.P9875975913080510231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000038 n).toNat : ℤ) * A221683 (A034856 (n + 2)).toNat

end

end A221678.P9875975913080510231

namespace A221678

/-- `A000038(n)!*A221683(A034856(n+2))` -/
def P9875975913080510231.Spec : Prop :=
  ∀ n, P9875975913080510231.a n = A221678 (n + 1)

end A221678

/-! ## A221678.P4704705054986733018

`lcm(A004442(n)-n, A221683(A034856(n+2)))`
-/

namespace A221678.P4704705054986733018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004442 n - (n : ℤ)) (A221683 (A034856 (n + 2)).toNat)

end

end A221678.P4704705054986733018

namespace A221678

/-- `lcm(A004442(n)-n, A221683(A034856(n+2)))` -/
def P4704705054986733018.Spec : Prop :=
  ∀ n, (P4704705054986733018.a n : ℤ) = A221678 (n + 1)

end A221678

/-! ## A221678.P15359093310544353812

`char[A038722(n+1)]*A221683(A034856(n+2))`
-/

namespace A221678.P15359093310544353812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A221683 (A034856 (n + 2)).toNat

end

end A221678.P15359093310544353812

namespace A221678

/-- `char[A038722(n+1)]*A221683(A034856(n+2))` -/
def P15359093310544353812.Spec : Prop :=
  ∀ n, P15359093310544353812.a n = A221678 (n + 1)

end A221678

/-! ## A221678.P11284075592949467598

`A007318(gcd(n, n+1))*A221683(A034856(n+2))`
-/

namespace A221678.P11284075592949467598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.gcd n (n + 1)) * A221683 (A034856 (n + 2)).toNat

end

end A221678.P11284075592949467598

namespace A221678

/-- `A007318(gcd(n, n+1))*A221683(A034856(n+2))` -/
def P11284075592949467598.Spec : Prop :=
  ∀ n, P11284075592949467598.a n = A221678 (n + 1)

end A221678

/-! ## A221678.P14618029598660250618

`A007318(A087436(n+1))*A221683(A034856(n+2))`
-/

namespace A221678.P14618029598660250618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A087436 (n + 1)).toNat * A221683 (A034856 (n + 2)).toNat

end

end A221678.P14618029598660250618

namespace A221678

/-- `A007318(A087436(n+1))*A221683(A034856(n+2))` -/
def P14618029598660250618.Spec : Prop :=
  ∀ n, P14618029598660250618.a n = A221678 (n + 1)

end A221678

/-!
# A221679: Number of 0..4 arrays of length n with each element differing from at least one neighbor by 1 or less, starting with 0.

The programs for A221679, there is no canonical definition to state claims against.
-/

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

/-! ## A221679.P11193906484402302682

`A057427(n)*A221683(A027379(n+2))`
-/

namespace A221679.P11193906484402302682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A221683 (A027379 (n + 2)).toNat

end

end A221679.P11193906484402302682

/-! ## A221679.P18185477213962509058

`lcm(A020985(n), A221683(A027379(n+2)))`
-/

namespace A221679.P18185477213962509058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A221683 (A027379 (n + 2)).toNat)

end

end A221679.P18185477213962509058

/-! ## A221679.P8678377324455624804

`char[A002262(n)]*A221683(A056000(n)+7)`
-/

namespace A221679.P8678377324455624804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A221683 (A056000 n + 7).toNat

end

end A221679.P8678377324455624804

/-! ## A221679.P10475516936401624670

`A221683(A027379(n+2))+A000007(n+1)`
-/

namespace A221679.P10475516936401624670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221683 (A027379 (n + 2)).toNat + A000007 (n + 1)

end

end A221679.P10475516936401624670

/-! ## A221679.P13240011264228152526

`A221683(A056000(n)+7)%A221663(n+1)`
-/

namespace A221679.P13240011264228152526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221683 (A056000 n + 7).toNat) (A221663 (n + 1))

end

end A221679.P13240011264228152526

/-!
# A221680: Number of 0..5 arrays of length n with each element differing from at least one neighbor by 1 or less, starting with 0.

The programs for A221680, there is no canonical definition to state claims against.
-/

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

/-! ## A221680.P9843216689447185213

`A221683(Δ[A264443(n)])%A083425(n)`
-/

namespace A221680.P9843216689447185213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221683 (f1 (n + 1) - f1 n).toNat) (A083425 n)

end

end A221680.P9843216689447185213

/-! ## A221680.P10977193077347758581

`A334872(A330979(n+1))+A221683(Δ[A264443(n)])`
-/

namespace A221680.P10977193077347758581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334872 (A330979 (n + 1)).toNat + A221683 (f1 (n + 1) - f1 n).toNat

end

end A221680.P10977193077347758581

/-! ## A221680.P1861134009166690767

`A334872(A027748(n+2))+A221683(Δ[A264443(n)])`
-/

namespace A221680.P1861134009166690767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334872 (A027748 (n + 2)).toNat + A221683 (f1 (n + 1) - f1 n).toNat

end

end A221680.P1861134009166690767

/-!
# A221681: Number of 0..6 arrays of length n with each element differing from at least one neighbor by 1 or less, starting with 0.

The programs for A221681, there is no canonical definition to state claims against.
-/

/-! ## A221681.P8750687083338124439

`A221683(A052905(n+3))`
-/

namespace A221681.P8750687083338124439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221683 (A052905 (n + 3)).toNat

end

end A221681.P8750687083338124439

/-! ## A221681.P14055808077952906497

`A221683(A056119(n)+16)`
-/

namespace A221681.P14055808077952906497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221683 (A056119 n + 16).toNat

end

end A221681.P14055808077952906497

/-! ## A221681.P7028142014046700475

`A221683(A046691(n+4)-1)`
-/

namespace A221681.P7028142014046700475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221683 (A046691 (n + 4) - 1).toNat

end

end A221681.P7028142014046700475

/-! ## A221681.P7089655687543111224

`A221683(A000096(n+5)-4)`
-/

namespace A221681.P7089655687543111224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221683 (A000096 (n + 5) - 4).toNat

end

end A221681.P7089655687543111224

/-! ## A221681.P13345125466967693584

`A221683(A000124(n+6)-6)`
-/

namespace A221681.P13345125466967693584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221683 (A000124 (n + 6) - 6).toNat

end

end A221681.P13345125466967693584

/-! ## A221681.P6112563720304440177

`A221683(Δ[A023551(n+1)]+1)`
-/

namespace A221681.P6112563720304440177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221683 (f1 (n + 1) - f1 n + 1).toNat

end

end A221681.P6112563720304440177

/-! ## A221681.P16036128786457233841

`A221683(Δ[A264443(n+1)]-1)`
-/

namespace A221681.P16036128786457233841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221683 (f1 (n + 1) - f1 n - 1).toNat

end

end A221681.P16036128786457233841

/-!
# A221682: Number of 0..7 arrays of length n with each element differing from at least one neighbor by 1 or less, starting with 0.

The programs for A221682, there is no canonical definition to state claims against.
-/

/-! ## A221682.P14282378205183919052

`A221683(A055999(n+4))`
-/

namespace A221682.P14282378205183919052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221683 (A055999 (n + 4)).toNat

end

end A221682.P14282378205183919052

/-! ## A221682.P14336780973620261185

`A221683(Δ[A023551(n+2)])`
-/

namespace A221682.P14336780973620261185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221683 (f1 (n + 1) - f1 n).toNat

end

end A221682.P14336780973620261185

/-! ## A221682.P1224723056347072923

`A221683(A052905(n+4)-1)`
-/

namespace A221682.P1224723056347072923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221683 (A052905 (n + 4) - 1).toNat

end

end A221682.P1224723056347072923

/-! ## A221682.P14800073967204593373

`A221683(A046691(n+5)-2)`
-/

namespace A221682.P14800073967204593373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221683 (A046691 (n + 5) - 2).toNat

end

end A221682.P14800073967204593373

/-! ## A221682.P12535740795562148765

`A221683(A000124(n+7)-7)`
-/

namespace A221682.P12535740795562148765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221683 (A000124 (n + 7) - 7).toNat

end

end A221682.P12535740795562148765

/-! ## A221682.P17073714682802851609

`A221683(A000217(n+6)+n+1)`
-/

namespace A221682.P17073714682802851609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221683 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A221682.P17073714682802851609

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

The programs for A221685, there is no canonical definition to state claims against.
-/

/-! ## A221685.P10481047774177990808

`A221683(A167614(n+4)+3)`
-/

namespace A221685.P10481047774177990808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221683 (A167614 (n + 4) + 3).toNat

end

end A221685.P10481047774177990808

/-! ## A221685.P17607250655789036563

`A221683(A000124(n+5)+5)`
-/

namespace A221685.P17607250655789036563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221683 (A000124 (n + 5) + 5).toNat

end

end A221685.P17607250655789036563

/-! ## A221685.P2880056468262726192

`A221683(A000217(n+5)+6)`
-/

namespace A221685.P2880056468262726192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221683 (A000217 (n + 5) + 6).toNat

end

end A221685.P2880056468262726192

/-! ## A221685.P3232330477042669560

`A221683(A046691(n+3)+10)`
-/

namespace A221685.P3232330477042669560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221683 (A046691 (n + 3) + 10).toNat

end

end A221685.P3232330477042669560

/-! ## A221685.P11875043776387445802

`A221683(A112355(n+3)+6)`
-/

namespace A221685.P11875043776387445802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221683 (A112355 (n + 3) + 6).toNat

end

end A221685.P11875043776387445802

/-!
# A221686: Number of 0..n arrays of length 7 with each element differing from at least one neighbor by 1 or less, starting with 0.

The programs for A221686, there is no canonical definition to state claims against.
-/

/-! ## A221686.P16530007327683866439

`A221683(A167487(n+5))`
-/

namespace A221686.P16530007327683866439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221683 (A167487 (n + 5)).toNat

end

end A221686.P16530007327683866439

/-! ## A221686.P6180536954964220426

`A221683(A056119(n)+28)`
-/

namespace A221686.P6180536954964220426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221683 (A056119 n + 28).toNat

end

end A221686.P6180536954964220426

/-! ## A221686.P16085272328865744183

`A221683(A167499(n+5)+2)`
-/

namespace A221686.P16085272328865744183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221683 (A167499 (n + 5) + 2).toNat

end

end A221686.P16085272328865744183

/-! ## A221686.P7587271152209682031

`A221683(A000124(n+6)+6)`
-/

namespace A221686.P7587271152209682031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221683 (A000124 (n + 6) + 6).toNat

end

end A221686.P7587271152209682031

/-! ## A221686.P9018641473630184146

`A221683(A000217(n+6)+7)`
-/

namespace A221686.P9018641473630184146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221683 (A000217 (n + 6) + 7).toNat

end

end A221686.P9018641473630184146

/-! ## A221686.P11552573337854269323

`A221683(A046691(n+6)-A005843(n+2))`
-/

namespace A221686.P11552573337854269323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221683 (A046691 (n + 6) - A005843 (n + 2)).toNat

end

end A221686.P11552573337854269323

/-!
# A221687: Number of n X 2 arrays of occupancy after each element stays put or moves to some king-move neighbor, without consecutive moves in the same direction.

The programs for A221687, there is no canonical definition to state claims against.
-/

/-! ## A221687.P5348550911256513794

`A221688(∑[n+1]+2)`
-/

namespace A221687.P5348550911256513794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221688 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221687.P5348550911256513794

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

/-! ## A221687.P7957814592089111943

`record[A221688(n+3)/A221693(n+1)]`
-/

namespace A221687.P7957814592089111943
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221688 (n + 3) : ℚ) / (A221693 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221687.P7957814592089111943

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

/-! ## A221689.P15543774348866581360

`record[A221693(A141214(n)+A108104(n))]`
-/

namespace A221689.P15543774348866581360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221693 (A141214 n + A108104 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221689.P15543774348866581360

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

/-! ## A221690.P3752437291510060207

`A221693(A027379(n+2))`
-/

namespace A221690.P3752437291510060207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221693 (A027379 (n + 2)).toNat

end

end A221690.P3752437291510060207

/-! ## A221690.P933021954302834603

`A221693(A055998(n+2))`
-/

namespace A221690.P933021954302834603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221693 (A055998 (n + 2)).toNat

end

end A221690.P933021954302834603

/-! ## A221690.P16514744232518660087

`A221693(A155212(n)+5)`
-/

namespace A221690.P16514744232518660087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221693 (A155212 n + 5).toNat

end

end A221690.P16514744232518660087

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

/-! ## A221691.P10670530934151165017

`A221693(eq[2, A193592(n)-2])`
-/

namespace A221691.P10670530934151165017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221693 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221691.P10670530934151165017

/-!
# A221692: Number of nX6 arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, without consecutive moves in the same direction.

The programs for A221692, there is no canonical definition to state claims against.
-/

/-! ## A221692.P11802911150948587897

`A221693(eq[5, A193592(n)])`
-/

namespace A221692.P11802911150948587897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221693 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221692.P11802911150948587897

/-! ## A221692.P12076746759774390789

`A221693(Δ[A023545(n+2)]-1)`
-/

namespace A221692.P12076746759774390789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221693 (f1 (n + 1) - f1 n - 1).toNat

end

end A221692.P12076746759774390789

/-!
# A221694: Number of 2 X n arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, without consecutive moves in the same direction.

The programs for A221694, there is no canonical definition to state claims against.
-/

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

/-! ## A221694.P8236894991906289308

`record[gcd(A050186(n), A221693(n+2))]`
-/

namespace A221694.P8236894991906289308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050186 n) (A221693 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221694.P8236894991906289308

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

/-! ## A221695.P15406831404474007112

`A221693(A167614(n+1))+A178798(n)`
-/

namespace A221695.P15406831404474007112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221693 (A167614 (n + 1)).toNat + A178798 n

end

end A221695.P15406831404474007112

/-! ## A221695.P12314021163755917540

`A221693(A167614(n+1))+A184955(n)`
-/

namespace A221695.P12314021163755917540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221693 (A167614 (n + 1)).toNat + A184955 n

end

end A221695.P12314021163755917540

/-! ## A221695.P10014303958988625236

`A221693(A167614(n+1))+A185284(n)`
-/

namespace A221695.P10014303958988625236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221693 (A167614 (n + 1)).toNat + A185284 n

end

end A221695.P10014303958988625236

/-! ## A221695.P16519262758661474743

`A055642(n)*A221693(A167614(n+1))`
-/

namespace A221695.P16519262758661474743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n * A221693 (A167614 (n + 1)).toNat

end

end A221695.P16519262758661474743

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

/-! ## A221696.P14659618008752540083

`A221693(A052905(n)+9)`
-/

namespace A221696.P14659618008752540083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221693 (A052905 n + 9).toNat

end

end A221696.P14659618008752540083

/-! ## A221696.P17219045651740954004

`A221693(A055999(n)+10)`
-/

namespace A221696.P17219045651740954004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221693 (A055999 n + 10).toNat

end

end A221696.P17219045651740954004

/-! ## A221696.P8665890327849994543

`A221693(A167614(n+2)+1)`
-/

namespace A221696.P8665890327849994543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221693 (A167614 (n + 2) + 1).toNat

end

end A221696.P8665890327849994543

/-! ## A221696.P12515030360762962249

`A221693(A166136(n+2)-2)`
-/

namespace A221696.P12515030360762962249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221693 (A166136 (n + 2) - 2).toNat

end

end A221696.P12515030360762962249

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

/-! ## A221699.P18041337534725295753

`or(A000122(A008778(n)), A182175(n+11))`
-/

namespace A221699.P18041337534725295753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000122 (A008778 n).toNat) (A182175 (n + 11))

end

end A221699.P18041337534725295753

/-! ## A221699.P6469353106346233739

`A182175(n+11)%A082919(Δ[A010785(n)])`
-/

namespace A221699.P6469353106346233739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182175 (n + 11)) (A082919 (f1 (n + 1) - f1 n).toNat)

end

end A221699.P6469353106346233739

/-! ## A221699.P15819590870677369784

`A182175(n+11)+A000007(A217349(n+1))`
-/

namespace A221699.P15819590870677369784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182175 (n + 11) + A000007 (A217349 (n + 1)).toNat

end

end A221699.P15819590870677369784

/-! ## A221699.P12374094889733981910

`A182175(n+11)+A000007(A332404(n+1))`
-/

namespace A221699.P12374094889733981910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182175 (n + 11) + A000007 (A332404 (n + 1)).toNat

end

end A221699.P12374094889733981910

