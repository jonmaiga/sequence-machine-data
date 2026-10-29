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
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
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
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C046
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C024

/-!
# A317900: Number of nX6 0..1 arrays with every element unequal to 2, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317900, there is no canonical definition to state claims against.
-/

/-! ## A317900.P9449067976335414500

`A317902(A374007(n+1))`
-/

namespace A317900.P9449067976335414500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317902 (A374007 (n + 1)).toNat

end

end A317900.P9449067976335414500

/-! ## A317900.P16983597804987975220

`A317902(A166136(n+4))`
-/

namespace A317900.P16983597804987975220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317902 (A166136 (n + 4)).toNat

end

end A317900.P16983597804987975220

/-! ## A317900.P11709323586427076335

`A317902(A056115(n)+21)`
-/

namespace A317900.P11709323586427076335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317902 (A056115 n + 21).toNat

end

end A317900.P11709323586427076335

/-! ## A317900.P8931171280490544768

`A317902(A167499(n+4)+1)`
-/

namespace A317900.P8931171280490544768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317902 (A167499 (n + 4) + 1).toNat

end

end A317900.P8931171280490544768

/-! ## A317900.P3290887226825475919

`A317902(A133263(n+5)+4)`
-/

namespace A317900.P3290887226825475919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317902 (A133263 (n + 5) + 4).toNat

end

end A317900.P3290887226825475919

/-!
# A317901: Number of nX7 0..1 arrays with every element unequal to 2, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317901, there is no canonical definition to state claims against.
-/

/-! ## A317901.P12175484682130357682

`A317902(A374008(n+1))`
-/

namespace A317901.P12175484682130357682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317902 (A374008 (n + 1)).toNat

end

end A317901.P12175484682130357682

/-! ## A317901.P12105474733733446884

`A317902(A056119(n)+28)`
-/

namespace A317901.P12105474733733446884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317902 (A056119 n + 28).toNat

end

end A317901.P12105474733733446884

/-! ## A317901.P1326069583823935260

`A317902(eq[11, A066657(n)])`
-/

namespace A317901.P1326069583823935260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317901.P1326069583823935260

/-! ## A317901.P5521090283627775153

`A317902(A167499(n+5)+2)`
-/

namespace A317901.P5521090283627775153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317902 (A167499 (n + 5) + 2).toNat

end

end A317901.P5521090283627775153

/-! ## A317901.P8222117815891835744

`A317902(A000124(n+6)+6)`
-/

namespace A317901.P8222117815891835744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317902 (A000124 (n + 6) + 6).toNat

end

end A317901.P8222117815891835744

/-!
# A317902: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 2, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317902, there is no canonical definition to state claims against.
-/

/-! ## A317902.P17950359631469392756

`A317871(n+1)/A378397(A347648(3*n+2))`
-/

namespace A317902.P17950359631469392756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317871 (n + 1) : ℚ) / (A378397 (A347648 (3 * n + 2)).toNat : ℚ)

end

end A317902.P17950359631469392756

/-!
# A317905: Convergence speed of m^^m, where m = A067251(n) and n >= 2. a(n) = f(m, m) - f(m, m - 1), where f(x, y) corresponds to the maximum value of k, such that x^^y == x^^(y + 1) (mod 10^k).

The programs for A317905, there is no canonical definition to state claims against.
-/

/-! ## A317905.P2246294672211263884

`A373387(comp[2*a(n-1)-a(n-2)])` with `a(0)=2, a(1)=0, a(2)=10`
-/

namespace A317905.P2246294672211263884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 10] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A317905.P2246294672211263884

/-! ## A317905.P15571271495999454931

`A373387(lt[A010815(n+2), A373387(n)])`
-/

namespace A317905.P15571271495999454931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A317905.P15571271495999454931

/-! ## A317905.P1215835854032061604

`A373387(lt[A242444(3*n+5), A020485(n)])`
-/

namespace A317905.P1215835854032061604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242444 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A317905.P1215835854032061604

/-! ## A317905.P16942135614530980933

`A255326(A236856(n)%A114364(n+1))`
-/

namespace A317905.P16942135614530980933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255326 (Int.tmod (A236856 n) (A114364 (n + 1))).toNat

end

end A317905.P16942135614530980933

/-!
# A317906: Expansion of Khinchin's constant in base 2 (or, binary expansion of Khinchin's constant).

The programs for A317906, there is no canonical definition to state claims against.
-/

/-! ## A317906.P3730999781341365663

`A327222(lcm(A008486(n), A030515(n+1)))`
-/

namespace A317906.P3730999781341365663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327222 (Int.lcm (A008486 n) (A030515 (n + 1)))

end

end A317906.P3730999781341365663

/-! ## A317906.P7078001668613005411

`xor(A267418(2*n), A267423(A267382(n+1)))`
-/

namespace A317906.P7078001668613005411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A267418 (2 * n)) (A267423 (A267382 (n + 1)).toNat)

end

end A317906.P7078001668613005411

/-! ## A317906.P3358454630019031183

`A294937(∑[2*(n+3)²])`
-/

namespace A317906.P3358454630019031183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294937 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A317906.P3358454630019031183

/-! ## A317906.P8836636573997085378

`A065828(A065774(n+2)-A065828(2*(n+1)))`
-/

namespace A317906.P8836636573997085378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065828 (A065774 (n + 2) - A065828 (2 * (n + 1))).toNat

end

end A317906.P8836636573997085378

/-! ## A317906.P12404567523303543653

`A192490(A007544(3*(n+1))+1)`
-/

namespace A317906.P12404567523303543653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192490 (A007544 (3 * (n + 1)) + 1).toNat

end

end A317906.P12404567523303543653

/-!
# A317909: Primes p such that prime(p) + p + 1 is prime.

The programs for A317909, the canonical program `A317909.P6352590682518317222` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317909 has offset 1).

The definition of A317909 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 804 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317909.P6352590682518317222

`p?[A116033(n+1)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A317909

/-- `p?[A116033(n+1)]` -/
def P6352590682518317222.Spec : Prop :=
  ∀ n, P6352590682518317222.a n = A317909 (n + 1)

theorem P6352590682518317222.correct : P6352590682518317222.Spec := by
  intro n
  simp only [A317909, Nat.add_sub_cancel]

end A317909

/-! ## A317909.P15508150047612371034

`filter[A116033(n+1), A010051(#)]`
-/

namespace A317909.P15508150047612371034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A317909.P15508150047612371034

namespace A317909

/-- `filter[A116033(n+1), A010051(#)]` -/
def P15508150047612371034.Spec : Prop :=
  ∀ n, P15508150047612371034.a n = A317909 (n + 1)

end A317909

/-! ## A317909.P7125350261803779590

`filter[A116033(n+1), A302777(#)]`
-/

namespace A317909.P7125350261803779590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A317909.P7125350261803779590

namespace A317909

/-- `filter[A116033(n+1), A302777(#)]` -/
def P7125350261803779590.Spec : Prop :=
  ∀ n, P7125350261803779590.a n = A317909 (n + 1)

end A317909

/-! ## A317909.P11973256208416708821

`filter[A116033(n+2), A355937(#)]`
-/

namespace A317909.P11973256208416708821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116033 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A317909.P11973256208416708821

namespace A317909

/-- `filter[A116033(n+2), A355937(#)]` -/
def P11973256208416708821.Spec : Prop :=
  ∀ n, P11973256208416708821.a n = A317909 (n + 1)

end A317909

/-! ## A317909.P10865984893055519983

`∩[A000040(n+1), A116033(n+1)]`
-/

namespace A317909.P10865984893055519983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317909.P10865984893055519983

namespace A317909

/-- `∩[A000040(n+1), A116033(n+1)]` -/
def P10865984893055519983.Spec : Prop :=
  ∀ n, (P10865984893055519983.a n : ℤ) = A317909 (n + 1)

end A317909

/-! ## A317909.P5941783430928552927

`∩[A000430(n+1), A116033(n+1)]`
-/

namespace A317909.P5941783430928552927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317909.P5941783430928552927

namespace A317909

/-- `∩[A000430(n+1), A116033(n+1)]` -/
def P5941783430928552927.Spec : Prop :=
  ∀ n, (P5941783430928552927.a n : ℤ) = A317909 (n + 1)

end A317909

/-! ## A317909.P13931941005160857936

`∩[A009087(n+1), A116033(n+1)]`
-/

namespace A317909.P13931941005160857936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317909.P13931941005160857936

namespace A317909

/-- `∩[A009087(n+1), A116033(n+1)]` -/
def P13931941005160857936.Spec : Prop :=
  ∀ n, (P13931941005160857936.a n : ℤ) = A317909 (n + 1)

end A317909

/-! ## A317909.P17579087756393062865

`∩[A045344(n+1), A116033(n+1)]`
-/

namespace A317909.P17579087756393062865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317909.P17579087756393062865

namespace A317909

/-- `∩[A045344(n+1), A116033(n+1)]` -/
def P17579087756393062865.Spec : Prop :=
  ∀ n, (P17579087756393062865.a n : ℤ) = A317909 (n + 1)

end A317909

/-! ## A317909.P14859759154703682881

`∩[A050150(n+1), A116033(n+1)]`
-/

namespace A317909.P14859759154703682881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317909.P14859759154703682881

namespace A317909

/-- `∩[A050150(n+1), A116033(n+1)]` -/
def P14859759154703682881.Spec : Prop :=
  ∀ n, (P14859759154703682881.a n : ℤ) = A317909 (n + 1)

end A317909

/-! ## A317909.P13487120017138065613

`∩[A050376(n+1), A116033(n+1)]`
-/

namespace A317909.P13487120017138065613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317909.P13487120017138065613

namespace A317909

/-- `∩[A050376(n+1), A116033(n+1)]` -/
def P13487120017138065613.Spec : Prop :=
  ∀ n, (P13487120017138065613.a n : ℤ) = A317909 (n + 1)

end A317909

/-! ## A317909.P9780287090795898081

`∩[A051948(n+1), A116033(n+1)]`
-/

namespace A317909.P9780287090795898081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317909.P9780287090795898081

namespace A317909

/-- `∩[A051948(n+1), A116033(n+1)]` -/
def P9780287090795898081.Spec : Prop :=
  ∀ n, (P9780287090795898081.a n : ℤ) = A317909 (n + 1)

end A317909

/-! ## A317909.P13542699367630673922

`∩[A065091(n+1), A116033(n+1)]`
-/

namespace A317909.P13542699367630673922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317909.P13542699367630673922

namespace A317909

/-- `∩[A065091(n+1), A116033(n+1)]` -/
def P13542699367630673922.Spec : Prop :=
  ∀ n, (P13542699367630673922.a n : ℤ) = A317909 (n + 1)

end A317909

/-! ## A317909.P6947422921687774535

`∩[A065396(n+1), A116033(n+1)]`
-/

namespace A317909.P6947422921687774535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317909.P6947422921687774535

namespace A317909

/-- `∩[A065396(n+1), A116033(n+1)]` -/
def P6947422921687774535.Spec : Prop :=
  ∀ n, (P6947422921687774535.a n : ℤ) = A317909 (n + 1)

end A317909

/-! ## A317909.P7038329098661667685

`∩[A066542(n+1), A116033(n+1)]`
-/

namespace A317909.P7038329098661667685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317909.P7038329098661667685

namespace A317909

/-- `∩[A066542(n+1), A116033(n+1)]` -/
def P7038329098661667685.Spec : Prop :=
  ∀ n, (P7038329098661667685.a n : ℤ) = A317909 (n + 1)

end A317909

/-! ## A317909.P10839614484028511123

`∩[A083249(n+1), A116033(n+1)]`
-/

namespace A317909.P10839614484028511123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317909.P10839614484028511123

namespace A317909

/-- `∩[A083249(n+1), A116033(n+1)]` -/
def P10839614484028511123.Spec : Prop :=
  ∀ n, (P10839614484028511123.a n : ℤ) = A317909 (n + 1)

end A317909

/-! ## A317909.P202181753448185855

`∩[A115919(n+1), A116033(n+1)]`
-/

namespace A317909.P202181753448185855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317909.P202181753448185855

namespace A317909

/-- `∩[A115919(n+1), A116033(n+1)]` -/
def P202181753448185855.Spec : Prop :=
  ∀ n, (P202181753448185855.a n : ℤ) = A317909 (n + 1)

end A317909

/-! ## A317909.P16136603597185672856

`∩[A116974(n+1), A116033(n+1)]`
-/

namespace A317909.P16136603597185672856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317909.P16136603597185672856

namespace A317909

/-- `∩[A116974(n+1), A116033(n+1)]` -/
def P16136603597185672856.Spec : Prop :=
  ∀ n, (P16136603597185672856.a n : ℤ) = A317909 (n + 1)

end A317909

/-! ## A317909.P7900689122502047970

`filter[A116033(n+1), A171387(#)]`
-/

namespace A317909.P7900689122502047970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A317909.P7900689122502047970

namespace A317909

/-- `filter[A116033(n+1), A171387(#)]` -/
def P7900689122502047970.Spec : Prop :=
  ∀ n, P7900689122502047970.a n = A317909 (n + 1)

end A317909

/-! ## A317909.P697033145137223210

`filter[A116033(n+2), A080339(#)]`
-/

namespace A317909.P697033145137223210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116033 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A317909.P697033145137223210

namespace A317909

/-- `filter[A116033(n+2), A080339(#)]` -/
def P697033145137223210.Spec : Prop :=
  ∀ n, P697033145137223210.a n = A317909 (n + 1)

end A317909

/-! ## A317909.P4681869668842058289

`filter[A116033(n+2), A080545(#)]`
-/

namespace A317909.P4681869668842058289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116033 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A317909.P4681869668842058289

namespace A317909

/-- `filter[A116033(n+2), A080545(#)]` -/
def P4681869668842058289.Spec : Prop :=
  ∀ n, P4681869668842058289.a n = A317909 (n + 1)

end A317909

/-!
# A317910: Expansion of -1/(1 - x)^2 + (1/(1 - x))*Product_{k>=1} (1 + x^k).

The programs for A317910, there is no canonical definition to state claims against.
-/

/-! ## A317910.P16825493965054920881

`A036469(n)-n-1`
-/

namespace A317910.P16825493965054920881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 n - (n : ℤ) - 1

end

end A317910.P16825493965054920881

/-! ## A317910.P14429216388429554560

`∑[A111133(n)]`
-/

namespace A317910.P14429216388429554560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317910.P14429216388429554560

/-! ## A317910.P15307260890321848530

`∑[A000009(n)-1]`
-/

namespace A317910.P15307260890321848530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317910.P15307260890321848530

/-! ## A317910.P13418915174742522164

`A036469(n)-(n+1)`
-/

namespace A317910.P13418915174742522164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 n - (n + 1 : ℤ)

end

end A317910.P13418915174742522164

/-! ## A317910.P9523301081699745984

`∑[abs(A081360(n))-1]`
-/

namespace A317910.P9523301081699745984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317910.P9523301081699745984

/-! ## A317910.P2256619769412339720

`∑[∑[A087897(n)]-1]`
-/

namespace A317910.P2256619769412339720
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317910.P2256619769412339720

/-! ## A317910.P7943496426143213789

`∑[A052839(n)-2]+1`
-/

namespace A317910.P7943496426143213789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A317910.P7943496426143213789

/-! ## A317910.P7332590745610114660

`∑[(A333147(n)-1)/2]`
-/

namespace A317910.P7332590745610114660
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333147 n - 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317910.P7332590745610114660

/-! ## A317910.P4890082305447212629

`floor(A248956(n)/2-n)`
-/

namespace A317910.P4890082305447212629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A248956 n : ℚ) / 2 - (n : ℚ)⌋

end

end A317910.P4890082305447212629

/-! ## A317910.P18224296462854804853

`A026906(C(n, n²)+n)-(C(n, n²)+n)`
-/

namespace A317910.P18224296462854804853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026906 (Nat.choose n (n ^ 2) + n) - (Nat.choose n (n ^ 2) + n : ℤ)

end

end A317910.P18224296462854804853

/-! ## A317910.P17580464210093482775

`∑[∑[A087897(A028310(n))]]`
-/

namespace A317910.P17580464210093482775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317910.P17580464210093482775

/-! ## A317910.P16713337528571093084

`∑[A096765(n+1)+A096765(n)-1]`
-/

namespace A317910.P16713337528571093084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 (n + 1) + A096765 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317910.P16713337528571093084

/-! ## A317910.P12990737598088696773

`∑[A000065(n)-A047967(n)]`
-/

namespace A317910.P12990737598088696773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n - A047967 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317910.P12990737598088696773

/-! ## A317910.P8820744368794384112

`∑[A000041(n)-A047967(n)-1]`
-/

namespace A317910.P8820744368794384112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A047967 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317910.P8820744368794384112

/-! ## A317910.P1452680449728564336

`∑[∑[A002865(n)]-A047967(n)-1]`
-/

namespace A317910.P1452680449728564336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A047967 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317910.P1452680449728564336

/-! ## A317910.P1795841347190412951

`∑[A295341(n)+A000726(n)-A047967(n)-1]`
-/

namespace A317910.P1795841347190412951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295341 n + A000726 n - A047967 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317910.P1795841347190412951

/-! ## A317910.P18293302331532890669

`∑[A139582(n)/2-A047967(n)-1]`
-/

namespace A317910.P18293302331532890669
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 - (A047967 n : ℚ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317910.P18293302331532890669

/-! ## A317910.P17182310607691278135

`∑[A035457(2*n)-1]`
-/

namespace A317910.P17182310607691278135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317910.P17182310607691278135

/-! ## A317910.P16970157852855745565

`∑[A172033(2*n)-1]`
-/

namespace A317910.P16970157852855745565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172033 (2 * n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317910.P16970157852855745565

/-! ## A317910.P11179793476931629546

`A111133(2*n+1)-(A258259(2*n+1)+n)`
-/

namespace A317910.P11179793476931629546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 (2 * n + 1) - (A258259 (2 * n + 1) + (n : ℤ))

end

end A317910.P11179793476931629546

/-!
# A317911: Expansion of Product_{k>=2} 1/(1 - x^k)^p(k), where p(k) = number of partitions of k (A000041).

The programs for A317911, there is no canonical definition to state claims against.
-/

/-! ## A317911.P16769367782646478995

`Δ[A036453(n+1)+A001970(abs(1-n))]`
-/

namespace A317911.P16769367782646478995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) + A001970 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A317911.P16769367782646478995

/-! ## A317911.P13072193966876548561

`Δ[A001970(abs(1-n))%A092690(n)]`
-/

namespace A317911.P13072193966876548561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001970 |1 - (n : ℤ)|.toNat) (A092690 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A317911.P13072193966876548561

/-! ## A317911.P13464196738008120795

`Δ[A290353(A061579(A167614(n+1)))]`
-/

namespace A317911.P13464196738008120795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A061579 (A167614 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A317911.P13464196738008120795

/-!
# A317912: Expansion of Product_{k>=2} 1/(1 - k*x^k).

The programs for A317912, there is no canonical definition to state claims against.
-/

/-! ## A317912.P7925610745620064513

`Δ[A297328(A061579(A000124(n)))]`
-/

namespace A317912.P7925610745620064513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A061579 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A317912.P7925610745620064513

/-! ## A317912.P5023639948843561952

`Δ[A297328(A266977(A048840(n)))]`
-/

namespace A317912.P5023639948843561952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A266977 (A048840 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A317912.P5023639948843561952

/-! ## A317912.P12861595169187528277

`A287769(A238846(n))+A275436(n)`
-/

namespace A317912.P12861595169187528277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287769 (A238846 n).toNat + A275436 n

end

end A317912.P12861595169187528277

/-! ## A317912.P8282518883411425195

`A275436(n)+A020987(A000045(2*(n+2)))`
-/

namespace A317912.P8282518883411425195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275436 n + A020987 (A000045 (2 * (n + 2))).toNat

end

end A317912.P8282518883411425195

/-!
# A317913: Expansion of Product_{k>=2} (1 + k*x^k).

The programs for A317913, there is no canonical definition to state claims against.
-/

/-! ## A317913.P10879030491753113441

`A022629(n)-a(n-1)` with `a(0)=1`
-/

namespace A317913.P10879030491753113441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A022629 n - a (n - 1)

end

end A317913.P10879030491753113441

/-! ## A317913.P14813688052265634196

`abs(∑[A022629(n)*A033999(n)])`
-/

namespace A317913.P14813688052265634196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022629 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A317913.P14813688052265634196

/-! ## A317913.P2357972743843857188

`∑{d}[A028310(n), A300278(#)]-a(n-1)` with `a(0)=1`
-/

namespace A317913.P2357972743843857188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300278 d - a (n - 1)

end

end A317913.P2357972743843857188

/-! ## A317913.P15221688406752871726

`∑{d}[A274922(n), A300278(#)]-a(n-1)` with `a(0)=1`
-/

namespace A317913.P15221688406752871726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274922 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300278 d - a (n - 1)

end

end A317913.P15221688406752871726

/-! ## A317913.P10362488511334672479

`∑[A022629(n)*A033999(n)]*A009001(2*n)`
-/

namespace A317913.P10362488511334672479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022629 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A009001 (2 * n)

end

end A317913.P10362488511334672479

/-! ## A317913.P15759837591366850508

`gcd(∑[A022629(n)*A033999(n)], A049084(2*(n+1)))`
-/

namespace A317913.P15759837591366850508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022629 n * A033999 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A049084 (2 * (n + 1)))

end

end A317913.P15759837591366850508

/-! ## A317913.P673733157586212370

`∑[A022629(n)*A033999(n)]*A260190(6*n)`
-/

namespace A317913.P673733157586212370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022629 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A260190 (6 * n)

end

end A317913.P673733157586212370

/-! ## A317913.P9870684765274219790

`A297321(∑[n+2]-1)-a(n-1)` with `a(0)=1`
-/

namespace A317913.P9870684765274219790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A297321 (∑ j ∈ Finset.range (n + 1), f1 j - 1) - a (n - 1)

end

end A317913.P9870684765274219790

/-! ## A317913.P18394323392474562391

`abs(a(n-1)-A297321(A034856(n+1)))` with `a(0)=1`
-/

namespace A317913.P18394323392474562391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a (n - 1) - A297321 (A034856 (n + 1)).toNat|

end

end A317913.P18394323392474562391

/-!
# A317915: Squares visited by a (2,5)-leaper on a spirally numbered board and moving to the lowest available unvisited square at each step, squares labelled >=0.

The programs for A317915, there is no canonical definition to state claims against.
-/

/-! ## A317915.P1959155474812261194

`A317916(n+1)-1`
-/

namespace A317915.P1959155474812261194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317916 (n + 1) - 1

end

end A317915.P1959155474812261194

/-! ## A317915.P3663996694820783971

`A317939(A001358(n+1))+A317916(n+1)`
-/

namespace A317915.P3663996694820783971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317939 (A001358 (n + 1)).toNat + A317916 (n + 1)

end

end A317915.P3663996694820783971

/-! ## A317915.P13730525822022980362

`(A317917(n+1)+A317916(n+1))%A317918(n+1)`
-/

namespace A317915.P13730525822022980362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317917 (n + 1) + A317916 (n + 1)) (A317918 (n + 1))

end

end A317915.P13730525822022980362

/-! ## A317915.P8150513422814164040

`A023443(A317916(n+1))`
-/

namespace A317915.P8150513422814164040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A317916 (n + 1)).toNat

end

end A317915.P8150513422814164040

/-! ## A317915.P13138634853546576046

`A349920(A000040(n+1))+A317916(n+1)`
-/

namespace A317915.P13138634853546576046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349920 (A000040 (n + 1)).toNat + A317916 (n + 1)

end

end A317915.P13138634853546576046

/-!
# A317916: Squares visited by a (2,5)-leaper on a spirally numbered board and moving to the lowest available unvisited square at each step, squares labelled >=1.

The programs for A317916, there is no canonical definition to state claims against.
-/

/-! ## A317916.P7118829234631297246

`A317915(n)+1`
-/

namespace A317916.P7118829234631297246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317915 n + 1

end

end A317916.P7118829234631297246

/-! ## A317916.P7412864343452938945

`A328399(2*A317915(n))`
-/

namespace A317916.P7412864343452938945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (2 * A317915 n).toNat

end

end A317916.P7412864343452938945

/-! ## A317916.P11627863819357974763

`A008619(2*A317915(n))`
-/

namespace A317916.P11627863819357974763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A317915 n).toNat

end

end A317916.P11627863819357974763

/-! ## A317916.P16120098352611247636

`A008611(3*A317915(n))`
-/

namespace A317916.P16120098352611247636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A317915 n).toNat

end

end A317916.P16120098352611247636

/-! ## A317916.P16674211090340059288

`A008620(3*A317915(n))`
-/

namespace A317916.P16674211090340059288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A317915 n).toNat

end

end A317916.P16674211090340059288

/-!
# A317917: Numbers missing from A317915.

The programs for A317917, there is no canonical definition to state claims against.
-/

/-! ## A317917.P13225797494546485773

`A317918(n+1)-1`
-/

namespace A317917.P13225797494546485773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317918 (n + 1) - 1

end

end A317917.P13225797494546485773

/-! ## A317917.P6615764101310853939

`A317939(A001358(n+1))+A317918(n+1)`
-/

namespace A317917.P6615764101310853939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317939 (A001358 (n + 1)).toNat + A317918 (n + 1)

end

end A317917.P6615764101310853939

/-! ## A317917.P17673048939254302931

`A060000(A317918(n+1))`
-/

namespace A317917.P17673048939254302931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060000 (A317918 (n + 1)).toNat

end

end A317917.P17673048939254302931

/-! ## A317917.P8838615911195090288

`A023443(A317918(n+1))`
-/

namespace A317917.P8838615911195090288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A317918 (n + 1)).toNat

end

end A317917.P8838615911195090288

/-! ## A317917.P9660606809062881703

`A349920(A000040(n+1))+A317918(n+1)`
-/

namespace A317917.P9660606809062881703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349920 (A000040 (n + 1)).toNat + A317918 (n + 1)

end

end A317917.P9660606809062881703

/-! ## A317917.P7911052466091924051

`A349920(A045319(n+1))+A317918(n+1)`
-/

namespace A317917.P7911052466091924051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349920 (A045319 (n + 1)).toNat + A317918 (n + 1)

end

end A317917.P7911052466091924051

/-! ## A317917.P4738059681380864282

`A349920(A002476(n+1))+A317918(n+1)`
-/

namespace A317917.P4738059681380864282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349920 (A002476 (n + 1)).toNat + A317918 (n + 1)

end

end A317917.P4738059681380864282

/-!
# A317918: Numbers missing from A317916.

The programs for A317918, there is no canonical definition to state claims against.
-/

/-! ## A317918.P7921180056097353891

`A317917(n+1)+1`
-/

namespace A317918.P7921180056097353891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317917 (n + 1) + 1

end

end A317918.P7921180056097353891

/-! ## A317918.P11079743576653199126

`A004830(A317917(n+1))`
-/

namespace A317918.P11079743576653199126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004830 (A317917 (n + 1)).toNat

end

end A317918.P11079743576653199126

/-!
# A317922: a(n) = number of k with 0 < 2*k < n-1 such that a(n-k) AND a(n-2*k) = a(n-k) (where AND denotes the bitwise AND operator).

The programs for A317922, there is no canonical definition to state claims against.
-/

/-! ## A317922.P65641551173420557

`∑{e}[A287551(A321898(n+1)), #]`
-/

namespace A317922.P65641551173420557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287551 (A321898 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A317922.P65641551173420557

/-! ## A317922.P15786917884139221086

`A037800(A226666(floor(n/(xor(n, n+1)+1))+1))`
-/

namespace A317922.P15786917884139221086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (A226666 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat).toNat

end

end A317922.P15786917884139221086

/-! ## A317922.P16528701895921381926

`A001221(A283406((n+1)/2^val(n+1, 2)-1))`
-/

namespace A317922.P16528701895921381926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A283406 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) - 1)).toNat).toNat

end

end A317922.P16528701895921381926

/-! ## A317922.P12982183737958237408

`A001221(A283406(2*A025480(n)))`
-/

namespace A317922.P12982183737958237408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A283406 (2 * A025480 n).toNat).toNat

end

end A317922.P12982183737958237408

/-! ## A317922.P8495994261065984191

`A069010(A326635(∏{e}[n+1, #]+3*(n+1)/2^val(n+1, 2)))`
-/

namespace A317922.P8495994261065984191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A326635 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ) + 3 * ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)))).toNat).toNat

end

end A317922.P8495994261065984191

/-!
# A317923: Integers m such that A071324(m) = A206369(m).

The programs for A317923, there is no canonical definition to state claims against.
-/

/-! ## A317923.P16187477564957969241

`∪[A000961(n+1), A317924(n+1)]`
-/

namespace A317923.P16187477564957969241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317923.P16187477564957969241

/-! ## A317923.P4296494004209209357

`eq[1, A345064(n+1)]+1`
-/

namespace A317923.P4296494004209209357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345064 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A317923.P4296494004209209357

/-! ## A317923.P3222811558931489107

`filter[A265640(n+1), A345064(#)]`
-/

namespace A317923.P3222811558931489107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345064 (f1 j).toNat = 1) n)

end

end A317923.P3222811558931489107

/-! ## A317923.P1564018486792686016

`filter[A344586(n+1), A345064(#)]`
-/

namespace A317923.P1564018486792686016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345064 (f1 j).toNat = 1) n)

end

end A317923.P1564018486792686016

/-! ## A317923.P9785078310578169850

`filter[A119314(n+1), A345064(#)]`
-/

namespace A317923.P9785078310578169850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345064 (f1 j).toNat = 1) n)

end

end A317923.P9785078310578169850

/-! ## A317923.P18375072959769978156

`filter[A285801(n+1), A345064(#)]`
-/

namespace A317923.P18375072959769978156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345064 (f1 j).toNat = 1) n)

end

end A317923.P18375072959769978156

/-! ## A317923.P1258344239816330064

`filter[A320340(n+1), A345064(#)]`
-/

namespace A317923.P1258344239816330064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345064 (f1 j).toNat = 1) n)

end

end A317923.P1258344239816330064

/-! ## A317923.P10601022676890729378

`filter[A363597(n+1), A345064(#)]`
-/

namespace A317923.P10601022676890729378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345064 (f1 j).toNat = 1) n)

end

end A317923.P10601022676890729378

/-! ## A317923.P15504754847345052622

`filter[A344609(n+1), A345064(#)]`
-/

namespace A317923.P15504754847345052622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345064 (f1 j).toNat = 1) n)

end

end A317923.P15504754847345052622

/-! ## A317923.P390394447308581168

`eq[1, A345062(n+1)]+1`
-/

namespace A317923.P390394447308581168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345062 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A317923.P390394447308581168

/-! ## A317923.P9137535931699542746

`lt[A345060(n+1), 1]+1`
-/

namespace A317923.P9137535931699542746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345060 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A317923.P9137535931699542746

/-! ## A317923.P18143100700783359608

`eq[1, A000010(A345060(n+1)+1)]+1`
-/

namespace A317923.P18143100700783359608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A345060 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A317923.P18143100700783359608

/-! ## A317923.P18098479090207197766

`record[(n+1)/A060886(A345060(n+1)+1)]`
-/

namespace A317923.P18098479090207197766
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A060886 (A345060 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317923.P18098479090207197766

/-! ## A317923.P17091503721589127258

`record[(n+1)/A227844(A345060(n+1)+2)]`
-/

namespace A317923.P17091503721589127258
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A227844 (A345060 (n + 1) + 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317923.P17091503721589127258

/-! ## A317923.P10502564932755996974

`record[(n+1)/A027379(A345060(n+1)/2)]`
-/

namespace A317923.P10502564932755996974
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A027379 (SequenceMachineLib.roundAway ((A345060 (n + 1) : ℚ) / 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317923.P10502564932755996974

/-! ## A317923.P12813782665420368292

`filter[A246716(n+1), A345064(#)]`
-/

namespace A317923.P12813782665420368292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345064 (f1 j).toNat = 1) n)

end

end A317923.P12813782665420368292

/-! ## A317923.P7323077149853963491

`filter[A107750(n+1), A345064(#)]`
-/

namespace A317923.P7323077149853963491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345064 (f1 j).toNat = 1) n)

end

end A317923.P7323077149853963491

/-! ## A317923.P13379760863062649932

`filter[A319630(n+1), A345064(#)]`
-/

namespace A317923.P13379760863062649932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345064 (f1 j).toNat = 1) n)

end

end A317923.P13379760863062649932

/-! ## A317923.P8056966443952914817

`filter[A253567(n+1), A345064(#)]`
-/

namespace A317923.P8056966443952914817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345064 (f1 j).toNat = 1) n)

end

end A317923.P8056966443952914817

/-! ## A317923.P9457089659096872470

`filter[A299702(n+1), A345064(#)]`
-/

namespace A317923.P9457089659096872470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345064 (f1 j).toNat = 1) n)

end

end A317923.P9457089659096872470

/-!
# A317924: Integers m, not powers of primes (A000961), such that A071324(m) = A206369(m).

The programs for A317924, there is no canonical definition to state claims against.
-/

/-! ## A317924.P5704833088818297898

`filter[A317923(n+1), A065202(#)]`
-/

namespace A317924.P5704833088818297898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317923 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065202 (f1 j).toNat = 1) n)

end

end A317924.P5704833088818297898

/-! ## A317924.P1156751384736174425

`filter[A317923(n+1), A355447(#)]`
-/

namespace A317924.P1156751384736174425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317923 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A317924.P1156751384736174425

/-! ## A317924.P363588515901747876

`filter[A367455(n+1), A345064(#)]`
-/

namespace A317924.P363588515901747876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345064 (f1 j).toNat = 1) n)

end

end A317924.P363588515901747876

/-! ## A317924.P5335680420628724813

`∩[A317923(n+1), A367455(n+1)]`
-/

namespace A317924.P5335680420628724813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317923 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317924.P5335680420628724813

/-! ## A317924.P4813697587944165689

`filter[A065201(n+1), A345064(#)]`
-/

namespace A317924.P4813697587944165689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345064 (f1 j).toNat = 1) n)

end

end A317924.P4813697587944165689

/-! ## A317924.P641910503036901967

`∩[A065201(n+1), A317923(n+1)]`
-/

namespace A317924.P641910503036901967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317923 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317924.P641910503036901967

/-! ## A317924.P8174186351576386857

`filter[A368089(n+1), A345064(#)]`
-/

namespace A317924.P8174186351576386857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345064 (f1 j).toNat = 1) n)

end

end A317924.P8174186351576386857

/-! ## A317924.P17272243445634522064

`∩[A317923(n+1), A368089(n+1)]`
-/

namespace A317924.P17272243445634522064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317923 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317924.P17272243445634522064

/-! ## A317924.P6212286860267588792

`filter[A367268(n+1), A345064(#)]`
-/

namespace A317924.P6212286860267588792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345064 (f1 j).toNat = 1) n)

end

end A317924.P6212286860267588792

/-! ## A317924.P101246679612348323

`∩[A317923(n+1), A367268(n+1)]`
-/

namespace A317924.P101246679612348323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317923 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317924.P101246679612348323

/-! ## A317924.P11158867824322118367

`filter[A126706(n+1), A345064(#)]`
-/

namespace A317924.P11158867824322118367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345064 (f1 j).toNat = 1) n)

end

end A317924.P11158867824322118367

/-! ## A317924.P92200660111262222

`∩[A126706(n+1), A317923(n+1)]`
-/

namespace A317924.P92200660111262222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317923 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317924.P92200660111262222

/-! ## A317924.P2857094299379106559

`filter[A307517(n+1), A345064(#)]`
-/

namespace A317924.P2857094299379106559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345064 (f1 j).toNat = 1) n)

end

end A317924.P2857094299379106559

/-! ## A317924.P15497521717227041420

`∩[A307517(n+1), A317923(n+1)]`
-/

namespace A317924.P15497521717227041420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317923 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317924.P15497521717227041420

/-! ## A317924.P17375892745989785808

`∩[A317923(n+1), A389812(n+1)]`
-/

namespace A317924.P17375892745989785808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317923 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317924.P17375892745989785808

/-! ## A317924.P3290188254356873034

`filter[A132982(n+1), A345064(#)]`
-/

namespace A317924.P3290188254356873034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345064 (f1 j).toNat = 1) n)

end

end A317924.P3290188254356873034

/-! ## A317924.P16053601292704095492

`filter[A156683(n+1), A345064(#)]`
-/

namespace A317924.P16053601292704095492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345064 (f1 j).toNat = 1) n)

end

end A317924.P16053601292704095492

/-! ## A317924.P4832086319531279947

`∩[A132982(n+1), A317923(n+1)]`
-/

namespace A317924.P4832086319531279947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317923 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317924.P4832086319531279947

/-! ## A317924.P5019164414198715434

`∩[A156683(n+1), A317923(n+1)]`
-/

namespace A317924.P5019164414198715434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317923 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317924.P5019164414198715434

/-! ## A317924.P6047701528674392242

`filter[A162685(n+1), A345064(#)]`
-/

namespace A317924.P6047701528674392242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345064 (f1 j).toNat = 1) n)

end

end A317924.P6047701528674392242

/-!
# A317928: Denominators of rational valued sequence whose Dirichlet convolution with itself yields A005187.

The programs for A317928, there is no canonical definition to state claims against.
-/

/-! ## A317928.P14880111197962844149

`A317832(C(A326848(n+1), lcm(9, n)/9))`
-/

namespace A317928.P14880111197962844149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317832 (Nat.choose (A326848 (n + 1)).toNat (SequenceMachineLib.roundAway ((Nat.lcm 9 n : ℚ) / 9)).toNat)

end

end A317928.P14880111197962844149

/-! ## A317928.P6206723748550511523

`A001917(A147300(n+2)+A061712(n+1))`
-/

namespace A317928.P6206723748550511523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001917 (A147300 (n + 2) + A061712 (n + 1)).toNat

end

end A317928.P6206723748550511523

/-! ## A317928.P2138792784627648331

`A317832(C(A102363(n), n))`
-/

namespace A317928.P2138792784627648331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317832 (Nat.choose (A102363 n).toNat n)

end

end A317928.P2138792784627648331

/-! ## A317928.P14027167664102972534

`A317832(C(A000961(n+1), n))`
-/

namespace A317928.P14027167664102972534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317832 (Nat.choose (A000961 (n + 1)).toNat n)

end

end A317928.P14027167664102972534

/-! ## A317928.P14379432738890635824

`A317832(C(A326848(n+1), n))`
-/

namespace A317928.P14379432738890635824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317832 (Nat.choose (A326848 (n + 1)).toNat n)

end

end A317928.P14379432738890635824

/-!
# A317929: Numerators of rational valued sequence whose Dirichlet convolution with itself yields A235199, which is a multiplicative permutation of natural numbers.

The programs for A317929, there is no canonical definition to state claims against.
-/

/-! ## A317929.P3999431173682550814

`A299149(A235199(n+1))`
-/

namespace A317929.P3999431173682550814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299149 (A235199 (n + 1)).toNat

end

end A317929.P3999431173682550814

/-! ## A317929.P8773474386913244547

`A046643(n+1)*A235199(A000265(n+1))`
-/

namespace A317929.P8773474386913244547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046643 (n + 1) * A235199 (A000265 (n + 1)).toNat

end

end A317929.P8773474386913244547

/-! ## A317929.P16218444586487206074

`A235199(A000265(n+1))*A318449(A003961(n+1))`
-/

namespace A317929.P16218444586487206074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235199 (A000265 (n + 1)).toNat * A318449 (A003961 (n + 1)).toNat

end

end A317929.P16218444586487206074

/-! ## A317929.P5699232119259996998

`A235199(A153733(n)+1)*A318449(A003961(n+1))`
-/

namespace A317929.P5699232119259996998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235199 (A153733 n + 1).toNat * A318449 (A003961 (n + 1)).toNat

end

end A317929.P5699232119259996998

/-! ## A317929.P8541489374007785083

`A235199(A000265(n+1))*A000265(A317848(n+1))`
-/

namespace A317929.P8541489374007785083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235199 (A000265 (n + 1)).toNat * A000265 (A317848 (n + 1)).toNat

end

end A317929.P8541489374007785083

/-! ## A317929.P4289794394146249014

`A235199(A000265(n+1))*A317933((n+1)²)`
-/

namespace A317929.P4289794394146249014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235199 (A000265 (n + 1)).toNat * A317933 ((n + 1) ^ 2)

end

end A317929.P4289794394146249014

/-! ## A317929.P8868704387393837562

`A235199(A153733(n)+1)*A317933((n+1)²)`
-/

namespace A317929.P8868704387393837562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235199 (A153733 n + 1).toNat * A317933 ((n + 1) ^ 2)

end

end A317929.P8868704387393837562

/-! ## A317929.P10085651215205638433

`A317930(A234744(n+1))`
-/

namespace A317929.P10085651215205638433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317930 (A234744 (n + 1)).toNat

end

end A317929.P10085651215205638433

/-!
# A317930: Numerators of rational valued sequence whose Dirichlet convolution with itself yields A234840, which is a multiplicative permutation of natural numbers.

The programs for A317930, there is no canonical definition to state claims against.
-/

/-! ## A317930.P6507101757230611763

`A046643(n+1)*A234840(A038502(n+1))`
-/

namespace A317930.P6507101757230611763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046643 (n + 1) * A234840 (A038502 (n + 1)).toNat

end

end A317930.P6507101757230611763

/-! ## A317930.P7471288291759760817

`∏{e}[n+1, A001790(#)]*A234840(A038502(n+1))`
-/

namespace A317930.P7471288291759760817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), A001790 (Nat.factorization (f1 n) p)) * A234840 (A038502 (n + 1)).toNat

end

end A317930.P7471288291759760817

/-! ## A317930.P1616641199880350966

`A234840(A038502(n+1))/A000265(n+1)*A299149(n+1)`
-/

namespace A317930.P1616641199880350966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234840 (A038502 (n + 1)).toNat : ℚ) / (A000265 (n + 1) : ℚ) * (A299149 (n + 1) : ℚ)

end

end A317930.P1616641199880350966

/-! ## A317930.P561546428956415715

`A318649(n+1)/(n+1)²*A318651(n+1)*A234840(A038502(n+1))`
-/

namespace A317930.P561546428956415715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318649 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ) * (A318651 (n + 1) : ℚ) * (A234840 (A038502 (n + 1)).toNat : ℚ)

end

end A317930.P561546428956415715

/-! ## A317930.P6195289633267732030

`A234840(A038502(n+1))*A318449(A045965(n+1))`
-/

namespace A317930.P6195289633267732030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234840 (A038502 (n + 1)).toNat * A318449 (A045965 (n + 1)).toNat

end

end A317930.P6195289633267732030

/-! ## A317930.P14328972648139542750

`A234840(A038502(n+1))*A318449(A064988(n+1))`
-/

namespace A317930.P14328972648139542750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234840 (A038502 (n + 1)).toNat * A318449 (A064988 (n + 1)).toNat

end

end A317930.P14328972648139542750

/-! ## A317930.P15064556003402979541

`A000265(A317848(n+1))*A234840(A038502(n+1))`
-/

namespace A317930.P15064556003402979541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A317848 (n + 1)).toNat * A234840 (A038502 (n + 1)).toNat

end

end A317930.P15064556003402979541

/-! ## A317930.P4503038861126889197

`A234840(A038502(n+1))*A317933((n+1)²)`
-/

namespace A317930.P4503038861126889197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234840 (A038502 (n + 1)).toNat * A317933 ((n + 1) ^ 2)

end

end A317930.P4503038861126889197

/-! ## A317930.P6403344280846702178

`A299149(A234840(n+1))`
-/

namespace A317930.P6403344280846702178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299149 (A234840 (n + 1)).toNat

end

end A317930.P6403344280846702178

/-! ## A317930.P1690403038059090005

`A317929(A234743(n+1))`
-/

namespace A317930.P1690403038059090005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317929 (A234743 (n + 1)).toNat

end

end A317930.P1690403038059090005

/-!
# A317931: Numerators of rational valued sequence whose Dirichlet convolution with itself yields A002487, Stern's Diatomic sequence.

The programs for A317931, there is no canonical definition to state claims against.
-/

/-! ## A317931.P11475406342641697367

`or(1, A001511(A349432(n+1)!))`
-/

namespace A317931.P11475406342641697367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001511 (Nat.factorial (A349432 (n + 1)).toNat))

end

end A317931.P11475406342641697367

/-! ## A317931.P18385744234042162836

`A089643(A024478(Δ[A233041(n+1)]))`
-/

namespace A317931.P18385744234042162836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089643 (A024478 (f1 (n + 1) - f1 n).toNat).toNat

end

end A317931.P18385744234042162836

/-! ## A317931.P4748577281570182827

`or(A001826(A067802(n)), A049653(n+2))`
-/

namespace A317931.P4748577281570182827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001826 (A067802 n).toNat) (A049653 (n + 2))

end

end A317931.P4748577281570182827

/-! ## A317931.P3090100849317734298

`or(A046643(n+1), A328167(A308360(n+1)))`
-/

namespace A317931.P3090100849317734298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046643 (n + 1)) (A328167 (A308360 (n + 1)).toNat)

end

end A317931.P3090100849317734298

/-! ## A317931.P15274166219016757834

`A325685(A318653(2*(n+1))+A256690(n+1))`
-/

namespace A317931.P15274166219016757834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325685 (A318653 (2 * (n + 1)) + A256690 (n + 1)).toNat

end

end A317931.P15274166219016757834

/-!
# A317932: Denominators of certain "Dirichlet Square Root" sequences: a(n) = A046644(n)/(2^A007949(n)).

The programs for A317932, the canonical program `A317932.P6928807366266153349` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317932 has offset 1).

The definition of A317932 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A305439, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A317932.P6928807366266153349

`2^A305439(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A317932

/-- `2^A305439(n+1)` -/
def P6928807366266153349.Spec : Prop :=
  ∀ n, P6928807366266153349.a n = (A317932 (n + 1) : ℚ)

end A317932

/-! ## A317932.P5650310794815381288

`A046644(n+1)/2^val(n+1, 3)`
-/

namespace A317932.P5650310794815381288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046644 (n + 1) : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ)

end

end A317932.P5650310794815381288

namespace A317932

/-- `A046644(n+1)/2^val(n+1, 3)` -/
def P5650310794815381288.Spec : Prop :=
  ∀ n, P5650310794815381288.a n = (A317932 (n + 1) : ℚ)

end A317932

/-! ## A317932.P10939915367304727711

`A046644(n+1)/A318666(n+1)`
-/

namespace A317932.P10939915367304727711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046644 (n + 1) : ℚ) / (A318666 (n + 1) : ℚ)

end

end A317932.P10939915367304727711

namespace A317932

/-- `A046644(n+1)/A318666(n+1)` -/
def P10939915367304727711.Spec : Prop :=
  ∀ n, P10939915367304727711.a n = (A317932 (n + 1) : ℚ)

end A317932

/-! ## A317932.P6360092601904256527

`A046644(n+1)/2^A007949(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A317932.P6360092601904256527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046644 (n + 1) : ℚ) / (2 : ℚ) ^ (A007949 (n + 1) : ℤ)

end

end A317932.P6360092601904256527

namespace A317932

/-- `A046644(n+1)/2^A007949(n+1)` -/
def P6360092601904256527.Spec : Prop :=
  ∀ n, P6360092601904256527.a n = (A317932 (n + 1) : ℚ)

end A317932

/-! ## A317932.P12750336651128575015

`A000079(A305439(n+1))`
-/

namespace A317932.P12750336651128575015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A305439 (n + 1)).toNat

end

end A317932.P12750336651128575015

namespace A317932

/-- `A000079(A305439(n+1))` -/
def P12750336651128575015.Spec : Prop :=
  ∀ n, P12750336651128575015.a n = A317932 (n + 1)

end A317932

/-! ## A317932.P5552787270910971483

`A011782(A305439(n+1)+1)`
-/

namespace A317932.P5552787270910971483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A305439 (n + 1) + 1).toNat

end

end A317932.P5552787270910971483

namespace A317932

/-- `A011782(A305439(n+1)+1)` -/
def P5552787270910971483.Spec : Prop :=
  ∀ n, P5552787270910971483.a n = A317932 (n + 1)

end A317932

/-! ## A317932.P18089322889701190953

`2^(A007814(n+1)+A318440(n+1)-A007949(n+1))`
-/

namespace A317932.P18089322889701190953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A007814 (n + 1) + (A318440 (n + 1) - A007949 (n + 1)) : ℤ)

end

end A317932.P18089322889701190953

namespace A317932

/-- `2^(A007814(n+1)+A318440(n+1)-A007949(n+1))` -/
def P18089322889701190953.Spec : Prop :=
  ∀ n, P18089322889701190953.a n = (A317932 (n + 1) : ℚ)

end A317932

/-! ## A317932.P14697547804953673317

`A299150(A061898(n+1))`
-/

namespace A317932.P14697547804953673317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299150 (A061898 (n + 1)).toNat

end

end A317932.P14697547804953673317

namespace A317932

/-- `A299150(A061898(n+1))` -/
def P14697547804953673317.Spec : Prop :=
  ∀ n, P14697547804953673317.a n = A317932 (n + 1)

end A317932

/-! ## A317932.P15714533514686667766

`A299150(A064614(n+1))`
-/

namespace A317932.P15714533514686667766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299150 (A064614 (n + 1)).toNat

end

end A317932.P15714533514686667766

namespace A317932

/-- `A299150(A064614(n+1))` -/
def P15714533514686667766.Spec : Prop :=
  ∀ n, P15714533514686667766.a n = A317932 (n + 1)

end A317932

/-! ## A317932.P1075679650801129050

`A299150(A072027(n+1))`
-/

namespace A317932.P1075679650801129050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299150 (A072027 (n + 1)).toNat

end

end A317932.P1075679650801129050

namespace A317932

/-- `A299150(A072027(n+1))` -/
def P1075679650801129050.Spec : Prop :=
  ∀ n, P1075679650801129050.a n = A317932 (n + 1)

end A317932

/-! ## A317932.P7718753103234155599

`A299150(A234747(n+1))`
-/

namespace A317932.P7718753103234155599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299150 (A234747 (n + 1)).toNat

end

end A317932.P7718753103234155599

namespace A317932

/-- `A299150(A234747(n+1))` -/
def P7718753103234155599.Spec : Prop :=
  ∀ n, P7718753103234155599.a n = A317932 (n + 1)

end A317932

/-! ## A317932.P5966950164079173947

`A007283(n)/A007283(n-A305439(n+1))`
-/

namespace A317932.P5966950164079173947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007283 n : ℚ) / (A007283 ((n : ℤ) - A305439 (n + 1)).toNat : ℚ)

end

end A317932.P5966950164079173947

namespace A317932

/-- `A007283(n)/A007283(n-A305439(n+1))` -/
def P5966950164079173947.Spec : Prop :=
  ∀ n, P5966950164079173947.a n = (A317932 (n + 1) : ℚ)

end A317932

/-! ## A317932.P3781842350313411184

`A007283(A305439(n+1)+n)/A007283(n)`
-/

namespace A317932.P3781842350313411184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007283 (A305439 (n + 1) + (n : ℤ)).toNat : ℚ) / (A007283 n : ℚ)

end

end A317932.P3781842350313411184

namespace A317932

/-- `A007283(A305439(n+1)+n)/A007283(n)` -/
def P3781842350313411184.Spec : Prop :=
  ∀ n, P3781842350313411184.a n = (A317932 (n + 1) : ℚ)

end A317932

/-! ## A317932.P1498405381558661964

`A299150(A234748(n+1))`
-/

namespace A317932.P1498405381558661964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299150 (A234748 (n + 1)).toNat

end

end A317932.P1498405381558661964

namespace A317932

/-- `A299150(A234748(n+1))` -/
def P1498405381558661964.Spec : Prop :=
  ∀ n, P1498405381558661964.a n = A317932 (n + 1)

end A317932

/-! ## A317932.P5688992928518575623

`A299150(A234743(n+1))`
-/

namespace A317932.P5688992928518575623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299150 (A234743 (n + 1)).toNat

end

end A317932.P5688992928518575623

namespace A317932

/-- `A299150(A234743(n+1))` -/
def P5688992928518575623.Spec : Prop :=
  ∀ n, P5688992928518575623.a n = A317932 (n + 1)

end A317932

/-! ## A317932.P7276936818457605173

`A299150(A234840(n+1))`
-/

namespace A317932.P7276936818457605173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299150 (A234840 (n + 1)).toNat

end

end A317932.P7276936818457605173

namespace A317932

/-- `A299150(A234840(n+1))` -/
def P7276936818457605173.Spec : Prop :=
  ∀ n, P7276936818457605173.a n = A317932 (n + 1)

end A317932

/-! ## A317932.P11900041598439772487

`A299150(A234744(n+1))`
-/

namespace A317932.P11900041598439772487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299150 (A234744 (n + 1)).toNat

end

end A317932.P11900041598439772487

namespace A317932

/-- `A299150(A234744(n+1))` -/
def P11900041598439772487.Spec : Prop :=
  ∀ n, P11900041598439772487.a n = A317932 (n + 1)

end A317932

/-!
# A317933: Numerators of rational valued sequence whose Dirichlet convolution with itself yields A034444 (number of unitary divisors of n).

The programs for A317933, the canonical program `A317933.P9961828793587788294` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317933 has offset 1).

The definition of A317933 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317933.P9961828793587788294

`A046643(∏{p}[n+1, #^val(n+1, #²)])`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A317933

/-- `A046643(∏{p}[n+1, #^val(n+1, #²)])` -/
def P9961828793587788294.Spec : Prop :=
  ∀ n, P9961828793587788294.a n = A317933 (n + 1)

theorem P9961828793587788294.correct : P9961828793587788294.Spec := by
  intro n
  simp only [A317933, Nat.add_sub_cancel]

end A317933

/-! ## A317933.P4399739127827821375

`A046643(A000188(n+1))`
-/

namespace A317933.P4399739127827821375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046643 (A000188 (n + 1)).toNat

end

end A317933.P4399739127827821375

namespace A317933

/-- `A046643(A000188(n+1))` -/
def P4399739127827821375.Spec : Prop :=
  ∀ n, P4399739127827821375.a n = A317933 (n + 1)

end A317933

/-! ## A317933.P2117044511172851265

`∏{e}[n+1, A232096(#!)]`
-/

namespace A317933.P2117044511172851265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A232096 (Nat.factorial (Nat.factorization (f1 n) p))

end

end A317933.P2117044511172851265

namespace A317933

/-- `∏{e}[n+1, A232096(#!)]` -/
def P2117044511172851265.Spec : Prop :=
  ∀ n, P2117044511172851265.a n = A317933 (n + 1)

end A317933

/-! ## A317933.P6620454978675443538

`or(1, A007814(A051903(n+1)!))`
-/

namespace A317933.P6620454978675443538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A007814 (Nat.factorial (A051903 (n + 1)).toNat))

end

end A317933.P6620454978675443538

namespace A317933

/-- `or(1, A007814(A051903(n+1)!))` -/
def P6620454978675443538.Spec : Prop :=
  ∀ n, P6620454978675443538.a n = A317933 (n + 1)

end A317933

/-! ## A317933.P13537471223774068857

`A037227(A051724(A051903(n+1)!))`
-/

namespace A317933.P13537471223774068857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037227 (A051724 (Nat.factorial (A051903 (n + 1)).toNat)).toNat

end

end A317933.P13537471223774068857

namespace A317933

/-- `A037227(A051724(A051903(n+1)!))` -/
def P13537471223774068857.Spec : Prop :=
  ∀ n, P13537471223774068857.a n = A317933 (n + 1)

end A317933

/-! ## A317933.P5949258819157843074

`A331991(∏{p}[A331736(n+1), A057502(#)]+1)`
-/

namespace A317933.P5949258819157843074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331991 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A057502 p + 1).toNat

end

end A317933.P5949258819157843074

namespace A317933

/-- `A331991(∏{p}[A331736(n+1), A057502(#)]+1)` -/
def P5949258819157843074.Spec : Prop :=
  ∀ n, P5949258819157843074.a n = A317933 (n + 1)

end A317933

/-! ## A317933.P5776010337321146988

`or(1, A333487(n+1))`
-/

namespace A317933.P5776010337321146988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A333487 (n + 1))

end

end A317933.P5776010337321146988

namespace A317933

/-- `or(1, A333487(n+1))` -/
def P5776010337321146988.Spec : Prop :=
  ∀ n, P5776010337321146988.a n = A317933 (n + 1)

end A317933

/-! ## A317933.P8506090218847191228

`gcd(A064191(A085731(n+1)), A251559(n+3))`
-/

namespace A317933.P8506090218847191228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064191 (A085731 (n + 1)).toNat) (A251559 (n + 3))

end

end A317933.P8506090218847191228

namespace A317933

/-- `gcd(A064191(A085731(n+1)), A251559(n+3))` -/
def P8506090218847191228.Spec : Prop :=
  ∀ n, (P8506090218847191228.a n : ℤ) = A317933 (n + 1)

end A317933

/-! ## A317933.P11546936122646822704

`A026141(A059152(n))`
-/

namespace A317933.P11546936122646822704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026141 (A059152 n).toNat

end

end A317933.P11546936122646822704

namespace A317933

/-- `A026141(A059152(n))` -/
def P11546936122646822704.Spec : Prop :=
  ∀ n, P11546936122646822704.a n = A317933 (n + 1)

end A317933

/-! ## A317933.P15798586203697425608

`gcd(A057381(n), A333844(n+1))`
-/

namespace A317933.P15798586203697425608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057381 n) (A333844 (n + 1))

end

end A317933.P15798586203697425608

namespace A317933

/-- `gcd(A057381(n), A333844(n+1))` -/
def P15798586203697425608.Spec : Prop :=
  ∀ n, (P15798586203697425608.a n : ℤ) = A317933 (n + 1)

end A317933

/-!
# A317934: Multiplicative with a(p^n) = 2^A011371(n); denominators for certain "Dirichlet Square Roots" sequences.

The programs for A317934, the canonical program `A317934.P10452850100069077886` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317934 has offset 1).

The definition of A317934 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A317946, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A317934.P10452850100069077886

`2^A317946(n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A317934

/-- `2^A317946(n+1)` -/
def P10452850100069077886.Spec : Prop :=
  ∀ n, P10452850100069077886.a n = (A317934 (n + 1) : ℚ)

end A317934

/-! ## A317934.P232137974790519909

`2^∑{e}[n+1, val(#!, 2)]`
-/

namespace A317934.P232137974790519909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n) p)) 2)

end

end A317934.P232137974790519909

namespace A317934

/-- `2^∑{e}[n+1, val(#!, 2)]` -/
def P232137974790519909.Spec : Prop :=
  ∀ n, (P232137974790519909.a n : ℤ) = A317934 (n + 1)

end A317934

/-! ## A317934.P16475532167604292821

`2^val(∏{e}[n+1, #!], 2)`
-/

namespace A317934.P16475532167604292821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p)) 2

end

end A317934.P16475532167604292821

namespace A317934

/-- `2^val(∏{e}[n+1, #!], 2)` -/
def P16475532167604292821.Spec : Prop :=
  ∀ n, (P16475532167604292821.a n : ℤ) = A317934 (n + 1)

end A317934

/-! ## A317934.P15670792459285089470

`∏{e}[n+1, gcd(4^#, #!)]`
-/

namespace A317934.P15670792459285089470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd (4 ^ Nat.factorization (f1 n) p) (Nat.factorial (Nat.factorization (f1 n) p))

end

end A317934.P15670792459285089470

namespace A317934

/-- `∏{e}[n+1, gcd(4^#, #!)]` -/
def P15670792459285089470.Spec : Prop :=
  ∀ n, (P15670792459285089470.a n : ℤ) = A317934 (n + 1)

end A317934

/-! ## A317934.P7969479480989592847

`∏{e}[n+1, and(-#!, #!)]`
-/

namespace A317934.P7969479480989592847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Int.land (-(Nat.factorial (Nat.factorization (f1 n) p) : ℤ)) (Nat.factorial (Nat.factorization (f1 n) p) : ℤ)

end

end A317934.P7969479480989592847

namespace A317934

/-- `∏{e}[n+1, and(-#!, #!)]` -/
def P7969479480989592847.Spec : Prop :=
  ∀ n, P7969479480989592847.a n = A317934 (n + 1)

end A317934

/-! ## A317934.P12224444306594860434

`∏{e}[n+1, A060818(#)]`
-/

namespace A317934.P12224444306594860434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A060818 (Nat.factorization (f1 n) p)

end

end A317934.P12224444306594860434

namespace A317934

/-- `∏{e}[n+1, A060818(#)]` -/
def P12224444306594860434.Spec : Prop :=
  ∀ n, P12224444306594860434.a n = A317934 (n + 1)

end A317934

/-! ## A317934.P270887947251365794

`∏{e}[n+1, sqrt(A124399(#))]`
-/

namespace A317934.P270887947251365794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Real.sqrt (A124399 (Nat.factorization (f1 n) p) : ℝ)

end

end A317934.P270887947251365794

namespace A317934

/-- `∏{e}[n+1, sqrt(A124399(#))]` -/
def P270887947251365794.Spec : Prop :=
  ∀ n, P270887947251365794.a n = (A317934 (n + 1) : ℝ)

end A317934

/-! ## A317934.P2744713998811804712

`A318314(n+1)/and(n+1, -(n+1))`
-/

namespace A317934.P2744713998811804712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318314 (n + 1) : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

end

end A317934.P2744713998811804712

namespace A317934

/-- `A318314(n+1)/and(n+1, -(n+1))` -/
def P2744713998811804712.Spec : Prop :=
  ∀ n, P2744713998811804712.a n = (A317934 (n + 1) : ℚ)

end A317934

/-! ## A317934.P16478481022704254963

`A046644(A000188(n+1))`
-/

namespace A317934.P16478481022704254963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046644 (A000188 (n + 1)).toNat

end

end A317934.P16478481022704254963

namespace A317934

/-- `A046644(A000188(n+1))` -/
def P16478481022704254963.Spec : Prop :=
  ∀ n, P16478481022704254963.a n = A317934 (n + 1)

end A317934

/-! ## A317934.P13311316345921939537

`A000079(A317946(n+1))`
-/

namespace A317934.P13311316345921939537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A317946 (n + 1)).toNat

end

end A317934.P13311316345921939537

namespace A317934

/-- `A000079(A317946(n+1))` -/
def P13311316345921939537.Spec : Prop :=
  ∀ n, P13311316345921939537.a n = A317934 (n + 1)

end A317934

/-! ## A317934.P9685155908813823660

`A082392(2*A317946(n+1))`
-/

namespace A317934.P9685155908813823660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082392 (2 * A317946 (n + 1)).toNat

end

end A317934.P9685155908813823660

namespace A317934

/-- `A082392(2*A317946(n+1))` -/
def P9685155908813823660.Spec : Prop :=
  ∀ n, P9685155908813823660.a n = A317934 (n + 1)

end A317934

/-! ## A317934.P1020435621125556792

`A061142(n+1)/A037445(n+1)`
-/

namespace A317934.P1020435621125556792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061142 (n + 1) : ℚ) / (A037445 (n + 1) : ℚ)

end

end A317934.P1020435621125556792

namespace A317934

/-- `A061142(n+1)/A037445(n+1)` -/
def P1020435621125556792.Spec : Prop :=
  ∀ n, P1020435621125556792.a n = (A317934 (n + 1) : ℚ)

end A317934

/-! ## A317934.P12585133529010274300

`A046644(n+1)/A061142(n+1)`
-/

namespace A317934.P12585133529010274300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046644 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A317934.P12585133529010274300

namespace A317934

/-- `A046644(n+1)/A061142(n+1)` -/
def P12585133529010274300.Spec : Prop :=
  ∀ n, P12585133529010274300.a n = (A317934 (n + 1) : ℚ)

end A317934

/-! ## A317934.P14986130050583173608

`A318314(n+1)/A006519(n+1)`
-/

namespace A317934.P14986130050583173608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318314 (n + 1) : ℚ) / (A006519 (n + 1) : ℚ)

end

end A317934.P14986130050583173608

namespace A317934

/-- `A318314(n+1)/A006519(n+1)` -/
def P14986130050583173608.Spec : Prop :=
  ∀ n, P14986130050583173608.a n = (A317934 (n + 1) : ℚ)

end A317934

/-! ## A317934.P8286917848052549505

`A256691(n+1)/A165825(n+1)`
-/

namespace A317934.P8286917848052549505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256691 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ)

end

end A317934.P8286917848052549505

namespace A317934

/-- `A256691(n+1)/A165825(n+1)` -/
def P8286917848052549505.Spec : Prop :=
  ∀ n, P8286917848052549505.a n = (A317934 (n + 1) : ℚ)

end A317934

/-! ## A317934.P4473567777277538117

`A046644(n+1)/A000079(A001222(n+1))`
-/

namespace A317934.P4473567777277538117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046644 (n + 1) : ℚ) / (A000079 (A001222 (n + 1)).toNat : ℚ)

end

end A317934.P4473567777277538117

namespace A317934

/-- `A046644(n+1)/A000079(A001222(n+1))` -/
def P4473567777277538117.Spec : Prop :=
  ∀ n, P4473567777277538117.a n = (A317934 (n + 1) : ℚ)

end A317934

/-! ## A317934.P3958944648569120433

`A046644(n+1)*A046644(n+1)/A256691(n+1)`
-/

namespace A317934.P3958944648569120433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046644 (n + 1) * A046644 (n + 1) : ℚ) / (A256691 (n + 1) : ℚ)

end

end A317934.P3958944648569120433

namespace A317934

/-- `A046644(n+1)*A046644(n+1)/A256691(n+1)` -/
def P3958944648569120433.Spec : Prop :=
  ∀ n, P3958944648569120433.a n = (A317934 (n + 1) : ℚ)

end A317934

/-! ## A317934.P4179772009411243804

`A299150(n+1)/A046644(n+1)*A318314(n+1)`
-/

namespace A317934.P4179772009411243804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299150 (n + 1) : ℚ) / (A046644 (n + 1) : ℚ) * (A318314 (n + 1) : ℚ)

end

end A317934.P4179772009411243804

namespace A317934

/-- `A299150(n+1)/A046644(n+1)*A318314(n+1)` -/
def P4179772009411243804.Spec : Prop :=
  ∀ n, P4179772009411243804.a n = (A317934 (n + 1) : ℚ)

end A317934

/-! ## A317934.P13432427451213722797

`A318314(A003961(n+1))`
-/

namespace A317934.P13432427451213722797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318314 (A003961 (n + 1)).toNat

end

end A317934.P13432427451213722797

namespace A317934

/-- `A318314(A003961(n+1))` -/
def P13432427451213722797.Spec : Prop :=
  ∀ n, P13432427451213722797.a n = A317934 (n + 1)

end A317934

/-! ## A317934.P1920062679502092197

`A318314(A064988(n+1))`
-/

namespace A317934.P1920062679502092197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318314 (A064988 (n + 1)).toNat

end

end A317934.P1920062679502092197

namespace A317934

/-- `A318314(A064988(n+1))` -/
def P1920062679502092197.Spec : Prop :=
  ∀ n, P1920062679502092197.a n = A317934 (n + 1)

end A317934

/-!
# A317935: Numerators of rational valued sequence whose Dirichlet convolution with itself yields A003557, n divided by largest squarefree divisor of n.

The programs for A317935, there is no canonical definition to state claims against.
-/

/-! ## A317935.P2297302811658099036

`A340144(A057521(n+1)%A141214(n))`
-/

namespace A317935.P2297302811658099036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340144 (Int.tmod (A057521 (n + 1)) (A141214 n)).toNat

end

end A317935.P2297302811658099036

/-! ## A317935.P17022088107026227874

`A340144(∏{d}[A057521(n+1), A007947(#)])`
-/

namespace A317935.P17022088107026227874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340144 (∏ d ∈ Nat.divisors (f1 n).natAbs, A007947 d).toNat

end

end A317935.P17022088107026227874

/-! ## A317935.P11095247328260164023

`A340144(∑{d}[n+1, A349379(#)]%A141214(n))`
-/

namespace A317935.P11095247328260164023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340144 (Int.tmod (∑ d ∈ Nat.divisors (f1 n), A349379 d) (A141214 n)).toNat

end

end A317935.P11095247328260164023

/-! ## A317935.P1926283483858098548

`A340141(gcd(n+1, ∑{p}[n+1, ((n+1)/#)²])%A290394(2*n+3))`
-/

namespace A317935.P1926283483858098548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340141 (Int.tmod (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), ((n + 1 : ℚ) / (p : ℚ)) ^ 2)) : ℤ) (A290394 (2 * n + 3))).toNat

end

end A317935.P1926283483858098548

/-! ## A317935.P1170690892675974919

`A340141(gcd(n+1, ∑{p}[n+1, ((n+1)/#)²])%A332290(n+2))`
-/

namespace A317935.P1170690892675974919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340141 (Int.tmod (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), ((n + 1 : ℚ) / (p : ℚ)) ^ 2)) : ℤ) (A332290 (n + 2))).toNat

end

end A317935.P1170690892675974919

/-!
# A317937: Numerators of sequence whose Dirichlet convolution with itself yields sequence A001221 (omega n) + A063524 (1, 0, 0, 0, ...).

The programs for A317937, there is no canonical definition to state claims against.
-/

/-! ## A317937.P15684615984140799686

`A046643(n+1)+A001222(A301315(A304404(n+1)))`
-/

namespace A317937.P15684615984140799686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046643 (n + 1) + A001222 (A301315 (A304404 (n + 1)).toNat).toNat

end

end A317937.P15684615984140799686

/-! ## A317937.P15756977389555889312

`A097248(A016116(A001055(n+1)²))`
-/

namespace A317937.P15756977389555889312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097248 (A016116 (A001055 (n + 1) ^ 2).toNat).toNat

end

end A317937.P15756977389555889312

/-! ## A317937.P3302834998971394485

`A293442(A131572(A001055(n+1)²))`
-/

namespace A317937.P3302834998971394485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293442 (A131572 (A001055 (n + 1) ^ 2).toNat).toNat

end

end A317937.P3302834998971394485

/-! ## A317937.P18197392683291878463

`A046643(n+1)+2*A289618(A007955(n+1))`
-/

namespace A317937.P18197392683291878463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046643 (n + 1) + 2 * A289618 (A007955 (n + 1)).toNat

end

end A317937.P18197392683291878463

/-! ## A317937.P3514571439552149316

`or(1, A370814((n+1)²/∏{p}[n+1, #]))`
-/

namespace A317937.P3514571439552149316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A370814 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat)

end

end A317937.P3514571439552149316

/-!
# A317938: Numerators of rational valued sequence whose Dirichlet convolution with itself yields sequence A001222 (bigomega n) + A063524 (1, 0, 0, 0, ...).

The programs for A317938, there is no canonical definition to state claims against.
-/

/-! ## A317938.P8353700164119748029

`A360908((2^∑{e}[n+1, #])^∏{e}[n+1, #])`
-/

namespace A317938.P8353700164119748029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360908 ((2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) ^ (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

end

end A317938.P8353700164119748029

/-! ## A317938.P11857114063327482117

`A059101(A321751(n+1))`
-/

namespace A317938.P11857114063327482117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059101 (A321751 (n + 1)).toNat

end

end A317938.P11857114063327482117

/-! ## A317938.P6190196077759532845

`A007953(A094984(∏{e}[n+1, C(2*#, #)]))`
-/

namespace A317938.P6190196077759532845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A094984 (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (2 * Nat.factorization (f1 n) p) (Nat.factorization (f1 n) p))).toNat

end

end A317938.P6190196077759532845

/-! ## A317938.P2899183188937251955

`A360908((2^∑{e}[n+1, #])^A005361(n+1))`
-/

namespace A317938.P2899183188937251955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360908 (SequenceMachineLib.roundAway ((2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) ^ (A005361 (n + 1) : ℤ))).toNat

end

end A317938.P2899183188937251955

/-! ## A317938.P24374632330984056

`A360908(A028233(n+1)^A001222(n+1))`
-/

namespace A317938.P24374632330984056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360908 (SequenceMachineLib.roundAway ((A028233 (n + 1) : ℚ) ^ (A001222 (n + 1) : ℤ))).toNat

end

end A317938.P24374632330984056

/-!
# A317939: Numerators of sequence whose Dirichlet convolution with itself yields A080339 = A010051 (characteristic function of primes) + A063524 (1, 0, 0, 0, ...).

The programs for A317939, there is no canonical definition to state claims against.
-/

/-! ## A317939.P13718135404486958643

`A005135(A046523(n+1))-A193511(n+1)`
-/

namespace A317939.P13718135404486958643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005135 (A046523 (n + 1)).toNat - A193511 (n + 1)

end

end A317939.P13718135404486958643

/-! ## A317939.P12360638342496094081

`A212181(A290480(n+1))-A193511(n+1)`
-/

namespace A317939.P12360638342496094081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212181 (A290480 (n + 1)).toNat - A193511 (n + 1)

end

end A317939.P12360638342496094081

/-! ## A317939.P10218808616770847672

`A241597(A069626(n+1))-A193511(n+1)`
-/

namespace A317939.P10218808616770847672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241597 (A069626 (n + 1)).toNat - A193511 (n + 1)

end

end A317939.P10218808616770847672

/-! ## A317939.P3513228303356666370

`A267482(A073093(n+1)^A317145(n+1))`
-/

namespace A317939.P3513228303356666370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267482 (SequenceMachineLib.roundAway ((A073093 (n + 1) : ℚ) ^ (A317145 (n + 1) : ℤ))).toNat

end

end A317939.P3513228303356666370

/-! ## A317939.P4836021195933849075

`A301305(A001055(n+1))%A089856(3*n+5)`
-/

namespace A317939.P4836021195933849075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301305 (A001055 (n + 1)).toNat) (A089856 (3 * n + 5))

end

end A317939.P4836021195933849075

/-!
# A317940: Numerators of sequence whose Dirichlet convolution with itself yields A046644.

The programs for A317940, there is no canonical definition to state claims against.
-/

/-! ## A317940.P14614432814308595760

`A195159(A337517(abs(∏{e}[n+1, (-2)^#/2])))`
-/

namespace A317940.P14614432814308595760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195159 (A337517 (SequenceMachineLib.roundAway |∏ p ∈ Nat.primeFactors (f1 n), ((-2) ^ Nat.factorization (f1 n) p : ℚ) / 2|).toNat).toNat

end

end A317940.P14614432814308595760

/-! ## A317940.P17389990885897008423

`A169908(A042581(A051903(n+1))²)`
-/

namespace A317940.P17389990885897008423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169908 (A042581 (A051903 (n + 1)).toNat ^ 2).toNat

end

end A317940.P17389990885897008423

/-!
# A317941: Numerators of rational valued sequence whose Dirichlet convolution with itself yields A037445, number of infinitary divisors (or i-divisors) of n.

The programs for A317941, there is no canonical definition to state claims against.
-/

/-! ## A317941.P6438882434324650272

`A318667(n+1)%A085731(A360902(3*(n+1)))`
-/

namespace A317941.P6438882434324650272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318667 (n + 1)) (A085731 (A360902 (3 * (n + 1))).toNat)

end

end A317941.P6438882434324650272

/-! ## A317941.P6515224922373709819

`A318667(n+1)%A195637(A020330(n+1))`
-/

namespace A317941.P6515224922373709819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318667 (n + 1)) (A195637 (A020330 (n + 1)).toNat)

end

end A317941.P6515224922373709819

/-! ## A317941.P11431065001344627950

`A318667(n+1)%A343501(A065405(A131843(n)))`
-/

namespace A317941.P11431065001344627950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318667 (n + 1)) (A343501 (A065405 (A131843 n).toNat).toNat)

end

end A317941.P11431065001344627950

/-! ## A317941.P5866477175130382722

`A318667(n+1)%A174225(n+1)`
-/

namespace A317941.P5866477175130382722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318667 (n + 1)) (A174225 (n + 1))

end

end A317941.P5866477175130382722

/-! ## A317941.P3330288344022710771

`A318667(n+1)%A223623(A131843(n))`
-/

namespace A317941.P3330288344022710771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318667 (n + 1)) (A223623 (A131843 n).toNat)

end

end A317941.P3330288344022710771

/-!
# A317942: a(n) = Product_{d|n, d<n} prime(A286378(d)-1).

The programs for A317942, there is no canonical definition to state claims against.
-/

/-! ## A317942.P14431205357765404850

`A052126(2*A317944(n+1))`
-/

namespace A317942.P14431205357765404850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (2 * A317944 (n + 1)).toNat

end

end A317942.P14431205357765404850

/-! ## A317942.P1518740627312234412

`A052126(A317944(n+1)+A317944(n+1))`
-/

namespace A317942.P1518740627312234412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A317944 (n + 1) + A317944 (n + 1)).toNat

end

end A317942.P1518740627312234412

/-!
# A317944: a(n) = Product_{d|n, d>1} prime(A286378(d)-1).

The programs for A317944, there is no canonical definition to state claims against.
-/

/-! ## A317944.P6590453360727129234

`A053833(A361637(n)+n)`
-/

namespace A317944.P6590453360727129234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053833 (A361637 n + (n : ℤ)).toNat

end

end A317944.P6590453360727129234

/-! ## A317944.P9823706975792825495

`A191525(A304330(n))+n`
-/

namespace A317944.P9823706975792825495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191525 (A304330 n).toNat + (n : ℤ)

end

end A317944.P9823706975792825495

/-! ## A317944.P11017025656607984111

`A166293(A349147(n))+n`
-/

namespace A317944.P11017025656607984111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166293 (A349147 n).toNat + (n : ℤ)

end

end A317944.P11017025656607984111

/-! ## A317944.P10215208429834521239

`A180500(A076112(n+1))+n`
-/

namespace A317944.P10215208429834521239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180500 (A076112 (n + 1)).toNat + (n : ℤ)

end

end A317944.P10215208429834521239

/-! ## A317944.P5346851772866840412

`A122003(A195805(n+1))+n`
-/

namespace A317944.P5346851772866840412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122003 (A195805 (n + 1)).toNat + (n : ℤ)

end

end A317944.P5346851772866840412

/-!
# A317946: Additive with a(p^e) = A011371(e); the 2-adic valuation of A317934(n).

The programs for A317946, the canonical program `A317946.P13520593184723688134` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317946 has offset 1).

The definition of A317946 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317946.P3151057329633030275

`A007814(A317934(n+1))`
-/

namespace A317946.P3151057329633030275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A317934 (n + 1)).toNat

end

end A317946.P3151057329633030275

namespace A317946

/-- `A007814(A317934(n+1))` -/
def P3151057329633030275.Spec : Prop :=
  ∀ n, P3151057329633030275.a n = A317946 (n + 1)

end A317946

/-! ## A317946.P13520593184723688134

`∑{e}[n+1, val(#!, 2)]`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A317946

/-- `∑{e}[n+1, val(#!, 2)]` -/
def P13520593184723688134.Spec : Prop :=
  ∀ n, (P13520593184723688134.a n : ℤ) = A317946 (n + 1)

theorem P13520593184723688134.correct : P13520593184723688134.Spec := by
  intro n
  simp only [A317946, Nat.add_sub_cancel]

end A317946

/-! ## A317946.P13688417058399907386

`val(∏{e}[n+1, #!], 2)`
-/

namespace A317946.P13688417058399907386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p)) 2

end

end A317946.P13688417058399907386

namespace A317946

/-- `val(∏{e}[n+1, #!], 2)` -/
def P13688417058399907386.Spec : Prop :=
  ∀ n, (P13688417058399907386.a n : ℤ) = A317946 (n + 1)

end A317946

/-! ## A317946.P12417392891480856647

`log2(A317934(n+1))`
-/

namespace A317946.P12417392891480856647
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A317934 (n + 1) : ℝ)

end

end A317946.P12417392891480856647

namespace A317946

/-- `log2(A317934(n+1))` -/
def P12417392891480856647.Spec : Prop :=
  ∀ n, P12417392891480856647.a n = (A317946 (n + 1) : ℝ)

end A317946

/-! ## A317946.P7129457021654760150

`val(A112624(n+1), 2)`
-/

namespace A317946.P7129457021654760150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A112624 (n + 1)).toNat 2

end

end A317946.P7129457021654760150

namespace A317946

/-- `val(A112624(n+1), 2)` -/
def P7129457021654760150.Spec : Prop :=
  ∀ n, (P7129457021654760150.a n : ℤ) = A317946 (n + 1)

end A317946

/-! ## A317946.P11244254901413423075

`∑{e}[n+1, A011371(#)]`
-/

namespace A317946.P11244254901413423075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A011371 (Nat.factorization (f1 n) p)

end

end A317946.P11244254901413423075

namespace A317946

/-- `∑{e}[n+1, A011371(#)]` -/
def P11244254901413423075.Spec : Prop :=
  ∀ n, P11244254901413423075.a n = A317946 (n + 1)

end A317946

/-! ## A317946.P2033251347035358451

`A046645(A000188(n+1))`
-/

namespace A317946.P2033251347035358451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (A000188 (n + 1)).toNat

end

end A317946.P2033251347035358451

namespace A317946

/-- `A046645(A000188(n+1))` -/
def P2033251347035358451.Spec : Prop :=
  ∀ n, P2033251347035358451.a n = A317946 (n + 1)

end A317946

/-! ## A317946.P4105417745083544881

`A000120(A317934(n+1)-1)`
-/

namespace A317946.P4105417745083544881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A317934 (n + 1) - 1).toNat

end

end A317946.P4105417745083544881

namespace A317946

/-- `A000120(A317934(n+1)-1)` -/
def P4105417745083544881.Spec : Prop :=
  ∀ n, P4105417745083544881.a n = A317946 (n + 1)

end A317946

/-! ## A317946.P2845442820316478357

`A002487(A317934(n+1)-1)`
-/

namespace A317946.P2845442820316478357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A317934 (n + 1) - 1).toNat

end

end A317946.P2845442820316478357

namespace A317946

/-- `A002487(A317934(n+1)-1)` -/
def P2845442820316478357.Spec : Prop :=
  ∀ n, P2845442820316478357.a n = A317946 (n + 1)

end A317946

/-! ## A317946.P2448744512566678187

`A283997(A317934(n+1)-1)`
-/

namespace A317946.P2448744512566678187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283997 (A317934 (n + 1) - 1).toNat

end

end A317946.P2448744512566678187

namespace A317946

/-- `A283997(A317934(n+1)-1)` -/
def P2448744512566678187.Spec : Prop :=
  ∀ n, P2448744512566678187.a n = A317946 (n + 1)

end A317946

/-! ## A317946.P2209514119572714538

`A037861(2*A317934(n+1))`
-/

namespace A317946.P2209514119572714538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (2 * A317934 (n + 1)).toNat

end

end A317946.P2209514119572714538

namespace A317946

/-- `A037861(2*A317934(n+1))` -/
def P2209514119572714538.Spec : Prop :=
  ∀ n, P2209514119572714538.a n = A317946 (n + 1)

end A317946

/-! ## A317946.P3528215892084684923

`A048105(2*A317934(n+1))`
-/

namespace A317946.P3528215892084684923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (2 * A317934 (n + 1)).toNat

end

end A317946.P3528215892084684923

namespace A317946

/-- `A048105(2*A317934(n+1))` -/
def P3528215892084684923.Spec : Prop :=
  ∀ n, P3528215892084684923.a n = A317946 (n + 1)

end A317946

/-! ## A317946.P12075349460598144081

`A195150(2*A317934(n+1))`
-/

namespace A317946.P12075349460598144081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195150 (2 * A317934 (n + 1)).toNat

end

end A317946.P12075349460598144081

namespace A317946

/-- `A195150(2*A317934(n+1))` -/
def P12075349460598144081.Spec : Prop :=
  ∀ n, P12075349460598144081.a n = A317946 (n + 1)

end A317946

/-! ## A317946.P2343596091496537918

`∑{d}[A317934(n+1), A001221(#)]`
-/

namespace A317946.P2343596091496537918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A317946.P2343596091496537918

namespace A317946

/-- `∑{d}[A317934(n+1), A001221(#)]` -/
def P2343596091496537918.Spec : Prop :=
  ∀ n, P2343596091496537918.a n = A317946 (n + 1)

end A317946

/-! ## A317946.P395490323650851854

`A046645(n+1)-Δ[A022559(n)]`
-/

namespace A317946.P395490323650851854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (n + 1) - (f1 (n + 1) - f1 n)

end

end A317946.P395490323650851854

namespace A317946

/-- `A046645(n+1)-Δ[A022559(n)]` -/
def P395490323650851854.Spec : Prop :=
  ∀ n, P395490323650851854.a n = A317946 (n + 1)

end A317946

/-! ## A317946.P6503000713496816638

`A000005(2*A317934(n+1))-2`
-/

namespace A317946.P6503000713496816638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * A317934 (n + 1)).toNat - 2

end

end A317946.P6503000713496816638

namespace A317946

/-- `A000005(2*A317934(n+1))-2` -/
def P6503000713496816638.Spec : Prop :=
  ∀ n, P6503000713496816638.a n = A317946 (n + 1)

end A317946

/-! ## A317946.P12404296701864722302

`A046645(n+1)-A001222(n+1)`
-/

namespace A317946.P12404296701864722302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (n + 1) - A001222 (n + 1)

end

end A317946.P12404296701864722302

namespace A317946

/-- `A046645(n+1)-A001222(n+1)` -/
def P12404296701864722302.Spec : Prop :=
  ∀ n, P12404296701864722302.a n = A317946 (n + 1)

end A317946

/-! ## A317946.P4956002395778062905

`A001222(n+1)-A064547(n+1)`
-/

namespace A317946.P4956002395778062905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A064547 (n + 1)

end

end A317946.P4956002395778062905

namespace A317946

/-- `A001222(n+1)-A064547(n+1)` -/
def P4956002395778062905.Spec : Prop :=
  ∀ n, P4956002395778062905.a n = A317946 (n + 1)

end A317946

/-! ## A317946.P17930771138451402034

`A318315(n+1)-A007814(n+1)`
-/

namespace A317946.P17930771138451402034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318315 (n + 1) - A007814 (n + 1)

end

end A317946.P17930771138451402034

namespace A317946

/-- `A318315(n+1)-A007814(n+1)` -/
def P17930771138451402034.Spec : Prop :=
  ∀ n, P17930771138451402034.a n = A317946 (n + 1)

end A317946

/-! ## A317946.P7579581925287861156

`A318440(n+1)-A087436(n+1)`
-/

namespace A317946.P7579581925287861156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318440 (n + 1) - A087436 (n + 1)

end

end A317946.P7579581925287861156

namespace A317946

/-- `A318440(n+1)-A087436(n+1)` -/
def P7579581925287861156.Spec : Prop :=
  ∀ n, P7579581925287861156.a n = A317946 (n + 1)

end A317946

/-!
# A317947: Concatenate n and n-1 in binary.

The programs for A317947, there is no canonical definition to state claims against.
-/

/-! ## A317947.P8999439497649009696

`A085210(A184636(n+1))`
-/

namespace A317947.P8999439497649009696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085210 (A184636 (n + 1)).toNat

end

end A317947.P8999439497649009696

/-! ## A317947.P3065287722026007067

`A257831(A007088(2*(n+1))+n)`
-/

namespace A317947.P3065287722026007067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257831 (A007088 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A317947.P3065287722026007067

/-!
# A317948: An example of a morphic word: the sorted (by length, then alphabetically) sequence of words of the form a*b* under the action of a finite automaton defined as follows: start state is 0; a and b map states [0, 1, 2, 3] to states [1, 2, 3, 0] and [0, 3, 1, 2], respectively.

The programs for A317948, there is no canonical definition to state claims against.
-/

/-! ## A317948.P4199599834270085001

`A334291(n)%A162341(A008458(n))`
-/

namespace A317948.P4199599834270085001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334291 n) (A162341 (A008458 n).toNat)

end

end A317948.P4199599834270085001

/-! ## A317948.P7253750871389282234

`and(A020639(A018101(n)), A334291(n))`
-/

namespace A317948.P7253750871389282234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020639 (A018101 n).toNat) (A334291 n)

end

end A317948.P7253750871389282234

/-! ## A317948.P6987950459833042399

`and(A010684(A049905(n+1)), A334291(n))`
-/

namespace A317948.P6987950459833042399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010684 (A049905 (n + 1)).toNat) (A334291 n)

end

end A317948.P6987950459833042399

/-! ## A317948.P6572224057927584192

`and(A056000(A153695(n+1)), A334291(n))`
-/

namespace A317948.P6572224057927584192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056000 (A153695 (n + 1)).toNat) (A334291 n)

end

end A317948.P6572224057927584192

/-! ## A317948.P735077786298415837

`and(A124768(A160050(n+1)), A334291(n))`
-/

namespace A317948.P735077786298415837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A124768 (A160050 (n + 1)).toNat) (A334291 n)

end

end A317948.P735077786298415837

/-!
# A317950: First differences of ternary tribonacci word A080843.

The programs for A317950, the canonical program `A317950.P649723107157043023` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317950 has offset 0).

The definition of A317950 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317950.P10362563455900167843

`Δ[A080843(n)]`
-/

namespace A317950.P10362563455900167843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A317950.P10362563455900167843

namespace A317950

/-- `Δ[A080843(n)]` -/
def P10362563455900167843.Spec : Prop :=
  ∀ n, P10362563455900167843.a n = A317950 n

end A317950

/-! ## A317950.P717454756408440423

`Δ[A092782(n+1)]`
-/

namespace A317950.P717454756408440423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A317950.P717454756408440423

namespace A317950

/-- `Δ[A092782(n+1)]` -/
def P717454756408440423.Spec : Prop :=
  ∀ n, P717454756408440423.a n = A317950 n

end A317950

/-! ## A317950.P776313029610007677

`Δ[-A305394(n+1)]`
-/

namespace A317950.P776313029610007677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A305394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A317950.P776313029610007677

namespace A317950

/-- `Δ[-A305394(n+1)]` -/
def P776313029610007677.Spec : Prop :=
  ∀ n, P776313029610007677.a n = A317950 n

end A317950

/-! ## A317950.P649723107157043023

`Δ[abs(1-A317198(n))]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A317950

/-- `Δ[abs(1-A317198(n))]` -/
def P649723107157043023.Spec : Prop :=
  ∀ n, P649723107157043023.a n = A317950 n

theorem P649723107157043023.correct : P649723107157043023.Spec := by
  intro n
  simp only [A317950]

end A317950

/-! ## A317950.P4685944572990726849

`Δ[round(8/A275925(n+2))]`
-/

namespace A317950.P4685944572990726849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 / (A275925 (n + 2) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A317950.P4685944572990726849

namespace A317950

/-- `Δ[round(8/A275925(n+2))]` -/
def P4685944572990726849.Spec : Prop :=
  ∀ n, P4685944572990726849.a n = A317950 n

end A317950

/-! ## A317950.P6779642241358382691

`Δ[(A317193(n+1)+17)%3]`
-/

namespace A317950.P6779642241358382691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317193 (n + 1) + 17) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A317950.P6779642241358382691

namespace A317950

/-- `Δ[(A317193(n+1)+17)%3]` -/
def P6779642241358382691.Spec : Prop :=
  ∀ n, P6779642241358382691.a n = A317950 n

end A317950

/-! ## A317950.P14871574696097365401

`A080843(n+1)-A080843(n)`
-/

namespace A317950.P14871574696097365401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 (n + 1) - A080843 n

end

end A317950.P14871574696097365401

namespace A317950

/-- `A080843(n+1)-A080843(n)` -/
def P14871574696097365401.Spec : Prop :=
  ∀ n, P14871574696097365401.a n = A317950 n

end A317950

/-! ## A317950.P10808878951294907619

`A317198(n)-A317198(n+1)`
-/

namespace A317950.P10808878951294907619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317198 n - A317198 (n + 1)

end

end A317950.P10808878951294907619

namespace A317950

/-- `A317198(n)-A317198(n+1)` -/
def P10808878951294907619.Spec : Prop :=
  ∀ n, P10808878951294907619.a n = A317950 n

end A317950

/-! ## A317950.P7388281036607897961

`Δ[A278040(n)-A003145(n+2)]`
-/

namespace A317950.P7388281036607897961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 n - A003145 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A317950.P7388281036607897961

namespace A317950

/-- `Δ[A278040(n)-A003145(n+2)]` -/
def P7388281036607897961.Spec : Prop :=
  ∀ n, P7388281036607897961.a n = A317950 n

end A317950

/-! ## A317950.P7755280961142985401

`A092782(n+2)-A092782(n+1)`
-/

namespace A317950.P7755280961142985401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092782 (n + 2) - A092782 (n + 1)

end

end A317950.P7755280961142985401

namespace A317950

/-- `A092782(n+2)-A092782(n+1)` -/
def P7755280961142985401.Spec : Prop :=
  ∀ n, P7755280961142985401.a n = A317950 n

end A317950

/-! ## A317950.P5555907207862287663

`A276789(n+1)-A276789(n+2)`
-/

namespace A317950.P5555907207862287663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276789 (n + 1) - A276789 (n + 2)

end

end A317950.P5555907207862287663

namespace A317950

/-- `A276789(n+1)-A276789(n+2)` -/
def P5555907207862287663.Spec : Prop :=
  ∀ n, P5555907207862287663.a n = A317950 n

end A317950

/-! ## A317950.P10473348058515039346

`A305394(n+1)-A305394(n+2)`
-/

namespace A317950.P10473348058515039346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305394 (n + 1) - A305394 (n + 2)

end

end A317950.P10473348058515039346

namespace A317950

/-- `A305394(n+1)-A305394(n+2)` -/
def P10473348058515039346.Spec : Prop :=
  ∀ n, P10473348058515039346.a n = A317950 n

end A317950

/-! ## A317950.P13990336821815323886

`Δ[A003145(n+1)-A003145(n+2)]`
-/

namespace A317950.P13990336821815323886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003145 (n + 1) - A003145 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A317950.P13990336821815323886

namespace A317950

/-- `Δ[A003145(n+1)-A003145(n+2)]` -/
def P13990336821815323886.Spec : Prop :=
  ∀ n, P13990336821815323886.a n = A317950 n

end A317950

/-! ## A317950.P336228524486923481

`Δ[Δ[-A278040(n)]]`
-/

namespace A317950.P336228524486923481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A278040 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A317950.P336228524486923481

namespace A317950

/-- `Δ[Δ[-A278040(n)]]` -/
def P336228524486923481.Spec : Prop :=
  ∀ n, P336228524486923481.a n = A317950 n

end A317950

/-! ## A317950.P9329436527918952727

`Δ[val(Δ[A278041(n)], 2)]`
-/

namespace A317950.P9329436527918952727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278041 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (n + 1) - f2 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A317950.P9329436527918952727

namespace A317950

/-- `Δ[val(Δ[A278041(n)], 2)]` -/
def P9329436527918952727.Spec : Prop :=
  ∀ n, P9329436527918952727.a n = A317950 n

end A317950

/-! ## A317950.P11044431848971666395

`Δ[Δ[-A003145(n+1)]]`
-/

namespace A317950.P11044431848971666395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A003145 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A317950.P11044431848971666395

namespace A317950

/-- `Δ[Δ[-A003145(n+1)]]` -/
def P11044431848971666395.Spec : Prop :=
  ∀ n, P11044431848971666395.a n = A317950 n

end A317950

/-! ## A317950.P17746590101386692267

`Δ[A000041(5-Δ[A003145(n+1)])]`
-/

namespace A317950.P17746590101386692267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003145 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (5 - (f2 (n + 1) - f2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A317950.P17746590101386692267

namespace A317950

/-- `Δ[A000041(5-Δ[A003145(n+1)])]` -/
def P17746590101386692267.Spec : Prop :=
  ∀ n, P17746590101386692267.a n = A317950 n

end A317950

/-! ## A317950.P16981612474862769153

`Δ[Δ[A275916(n+1)]%8]`
-/

namespace A317950.P16981612474862769153
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275916 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A317950.P16981612474862769153

namespace A317950

/-- `Δ[Δ[A275916(n+1)]%8]` -/
def P16981612474862769153.Spec : Prop :=
  ∀ n, P16981612474862769153.a n = A317950 n

end A317950

/-!
# A317952: Trajectory of 1 under repeated application of the morphism 1->121, 2->232, 3->343, 4->414.

The programs for A317952, the canonical program `A317952.P18212444331799081196` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317952 has offset 0).

The definition of A317952 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317952.P18212444331799081196

`A062756(n)%4+1`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A317952

/-- `A062756(n)%4+1` -/
def P18212444331799081196.Spec : Prop :=
  ∀ n, P18212444331799081196.a n = A317952 n

theorem P18212444331799081196.correct : P18212444331799081196.Spec := by
  intro n
  simp only [A317952]

end A317952

/-! ## A317952.P10729260357769463943

`(2*A189674(n+1)-n)%4+1`
-/

namespace A317952.P10729260357769463943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A189674 (n + 1) - (n : ℤ)) 4 + 1

end

end A317952.P10729260357769463943

namespace A317952

/-- `(2*A189674(n+1)-n)%4+1` -/
def P10729260357769463943.Spec : Prop :=
  ∀ n, P10729260357769463943.a n = A317952 n

end A317952

/-! ## A317952.P16130985039656446256

`(∑[2*A189673(n+1)]-n)%4+1`
-/

namespace A317952.P16130985039656446256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A189673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)) 4 + 1

end

end A317952.P16130985039656446256

namespace A317952

/-- `(∑[2*A189673(n+1)]-n)%4+1` -/
def P16130985039656446256.Spec : Prop :=
  ∀ n, P16130985039656446256.a n = A317952 n

end A317952

/-! ## A317952.P12871773021743844

`A010883(A006287(n))`
-/

namespace A317952.P12871773021743844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010883 (A006287 n).toNat

end

end A317952.P12871773021743844

namespace A317952

/-- `A010883(A006287(n))` -/
def P12871773021743844.Spec : Prop :=
  ∀ n, P12871773021743844.a n = A317952 n

end A317952

/-! ## A317952.P6449528889389525466

`A001222(A120880(n))%4+1`
-/

namespace A317952.P6449528889389525466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A120880 n).toNat) 4 + 1

end

end A317952.P6449528889389525466

namespace A317952

/-- `A001222(A120880(n))%4+1` -/
def P6449528889389525466.Spec : Prop :=
  ∀ n, P6449528889389525466.a n = A317952 n

end A317952

/-! ## A317952.P1744790023396147883

`A043290(a(n-1))+and(3, A062756(n))` with `a(0)=1`
-/

namespace A317952.P1744790023396147883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A043290 (a (n - 1)).toNat + Int.land 3 (A062756 n)

end

end A317952.P1744790023396147883

namespace A317952

/-- `A043290(a(n-1))+and(3, A062756(n))` -/
def P1744790023396147883.Spec : Prop :=
  ∀ n, P1744790023396147883.a n = A317952 n

end A317952

/-! ## A317952.P5966328225242435332

`A105500(A332497(n))`
-/

namespace A317952.P5966328225242435332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105500 (A332497 n).toNat

end

end A317952.P5966328225242435332

namespace A317952

/-- `A105500(A332497(n))` -/
def P5966328225242435332.Spec : Prop :=
  ∀ n, P5966328225242435332.a n = A317952 n

end A317952

/-! ## A317952.P1627820216235284894

`and(A062756(A023694(n+1)), A062756(n))+1`
-/

namespace A317952.P1627820216235284894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062756 (A023694 (n + 1)).toNat) (A062756 n) + 1

end

end A317952.P1627820216235284894

namespace A317952

/-- `and(A062756(A023694(n+1)), A062756(n))+1` -/
def P1627820216235284894.Spec : Prop :=
  ∀ n, P1627820216235284894.a n = A317952 n

end A317952

/-!
# A317954: Fixed point of the morphism 1 -> 12, 2 -> 13, 3 -> 14, 4 -> 1, starting from a(1) = 1.

The programs for A317954, there is no canonical definition to state claims against.
-/

/-! ## A317954.P6430285912378927444

`A254990(n)+1`
-/

namespace A317954.P6430285912378927444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254990 n + 1

end

end A317954.P6430285912378927444

/-! ## A317954.P10866747293676340989

`1-(A052787(a(n-1))-A254990(n))` with `a(0)=1`
-/

namespace A317954.P10866747293676340989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (A052787 (a (n - 1)).toNat - A254990 n)

end

end A317954.P10866747293676340989

/-! ## A317954.P15940387367914902636

`A001316(A001316(n))-(1-A254990(n))`
-/

namespace A317954.P15940387367914902636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A001316 n).toNat - (1 - A254990 n)

end

end A317954.P15940387367914902636

/-! ## A317954.P8915767798983528952

`val(Δ[A316840(n+1)], 2)+1`
-/

namespace A317954.P8915767798983528952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316840 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2 + 1

end

end A317954.P8915767798983528952

/-! ## A317954.P12617760914465318775

`abs(A316823(Δ[A316839(n+1)]))`
-/

namespace A317954.P12617760914465318775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A316823 (f1 (n + 1) - f1 n).toNat|

end

end A317954.P12617760914465318775

/-! ## A317954.P18307556067683382520

`1-(A004526(Δ[A004526(n)])-A254990(n))`
-/

namespace A317954.P18307556067683382520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A004526 (f1 (n + 1) - f1 n).toNat - A254990 n)

end

end A317954.P18307556067683382520

/-! ## A317954.P11550689505808141704

`A254990(n)-1-A007427(A007918(n))`
-/

namespace A317954.P11550689505808141704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254990 n - 1 - A007427 (A007918 n).toNat

end

end A317954.P11550689505808141704

/-! ## A317954.P16353379670373174812

`2-(A007318(∑[n])-A254990(n))`
-/

namespace A317954.P16353379670373174812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) - A254990 n)

end

end A317954.P16353379670373174812

/-! ## A317954.P15798328429595883286

`2-(A257088(A151934(n))-A254990(n))`
-/

namespace A317954.P15798328429595883286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A257088 (A151934 n).toNat - A254990 n)

end

end A317954.P15798328429595883286

/-!
# A317960: Trajectory of 12 under the morphism f: X -> XYX, where Y=1 if X contains an odd number of 1's, otherwise Y = 2.

The programs for A317960, there is no canonical definition to state claims against.
-/

/-! ## A317960.P2631797988225621875

`2-val(∑[gcd(3, n)!], 2)²%3`
-/

namespace A317960.P2631797988225621875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.gcd 3 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2 ^ 2 % 3 : ℕ) : ℤ)

end

end A317960.P2631797988225621875

/-! ## A317960.P17113541450195175432

`2-val(∑[((n+1)%3)²+1], 2)²%3`
-/

namespace A317960.P17113541450195175432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) % 3) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2 ^ 2 % 3 : ℕ) : ℤ)

end

end A317960.P17113541450195175432

/-! ## A317960.P13839724259354799369

`((2*n)%3*val(∑[(n%3)!], 2)%3)!`
-/

namespace A317960.P13839724259354799369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n % 3 * (SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2 % 3))

end

end A317960.P13839724259354799369

/-! ## A317960.P11942607420895495220

`2-val(floor(Δ[(2*n+1)²]/3), 2)²%3`
-/

namespace A317960.P11942607420895495220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((SequenceMachineLib.valuation ⌊((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 3⌋.toNat 2 ^ 2 % 3 : ℕ) : ℤ)

end

end A317960.P11942607420895495220

/-! ## A317960.P8345365090848168843

`2-A317961(n)`
-/

namespace A317960.P8345365090848168843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A317961 n

end

end A317960.P8345365090848168843

/-! ## A317960.P15703126801075854781

`(A333363(n+1)%3)!`
-/

namespace A317960.P15703126801075854781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod (A333363 (n + 1)) 3).toNat

end

end A317960.P15703126801075854781

/-! ## A317960.P2479502686961962496

`A001221(val(∑[(n%3)!], 2)+13)`
-/

namespace A317960.P2479502686961962496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2 + 13)

end

end A317960.P2479502686961962496

/-! ## A317960.P16661304242136143421

`A001221(val(∑[((n+2)%3)%2+1], 2)+13)`
-/

namespace A317960.P16661304242136143421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) % 3 % 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2 + 13)

end

end A317960.P16661304242136143421

/-! ## A317960.P6764725434838454759

`A000002(A100833(n+1))`
-/

namespace A317960.P6764725434838454759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A100833 (n + 1)).toNat

end

end A317960.P6764725434838454759

/-! ## A317960.P10863616989735106929

`A007061(A333363(n+1))`
-/

namespace A317960.P10863616989735106929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007061 (A333363 (n + 1)).toNat

end

end A317960.P10863616989735106929

/-!
# A317961: Trajectory of 10 under the morphism f: X -> XYX, where Y=1 if X contains an odd number of 1's, otherwise Y = 0.

The programs for A317961, there is no canonical definition to state claims against.
-/

/-! ## A317961.P9188927393471960864

`val(∑[gcd(3, n)!], 2)²%3`
-/

namespace A317961.P9188927393471960864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.gcd 3 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2 ^ 2 % 3

end

end A317961.P9188927393471960864

/-! ## A317961.P3828140367589368015

`val(∑[((n+1)%3)²+1], 2)²%3`
-/

namespace A317961.P3828140367589368015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) % 3) ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2 ^ 2 % 3

end

end A317961.P3828140367589368015

/-! ## A317961.P13749916850924777686

`val(floor(Δ[(2*n+1)²]/3), 2)²%3`
-/

namespace A317961.P13749916850924777686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ⌊((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 3⌋.toNat 2 ^ 2 % 3

end

end A317961.P13749916850924777686

/-! ## A317961.P9643343445878848545

`2-A317960(n)`
-/

namespace A317961.P9643343445878848545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A317960 n

end

end A317961.P9643343445878848545

/-! ## A317961.P3673602936785847288

`round(abs(cos(A333363(n+1))))`
-/

namespace A317961.P3673602936785847288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway |Real.cos (A333363 (n + 1) : ℝ)|

end

end A317961.P3673602936785847288

/-! ## A317961.P12167695485323210556

`A070000(val(∑[gcd(3, n)!], 2))`
-/

namespace A317961.P12167695485323210556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.gcd 3 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070000 (SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2)

end

end A317961.P12167695485323210556

/-! ## A317961.P8662601160035490861

`2-A001221(val(∑[(n%3)!], 2)+13)`
-/

namespace A317961.P8662601160035490861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A001221 (SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2 + 13)

end

end A317961.P8662601160035490861

/-! ## A317961.P3663602709328863478

`2-A001221(val(∑[((n+2)%3)%2+1], 2)+13)`
-/

namespace A317961.P3663602709328863478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) % 3 % 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A001221 (SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2 + 13)

end

end A317961.P3663602709328863478

/-! ## A317961.P1057651431163651655

`A035217(A100833(n+1))`
-/

namespace A317961.P1057651431163651655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035217 (A100833 (n + 1)).toNat

end

end A317961.P1057651431163651655

/-! ## A317961.P12300118325156292243

`A020944(A333363(n+1))`
-/

namespace A317961.P12300118325156292243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020944 (A333363 (n + 1)).toNat

end

end A317961.P12300118325156292243

/-!
# A317963: First differences of A304360.

The programs for A317963, there is no canonical definition to state claims against.
-/

/-! ## A317963.P12793202271524226984

`Δ[A304360(n+1)]`
-/

namespace A317963.P12793202271524226984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A317963.P12793202271524226984

/-! ## A317963.P1753612654143357602

`abs(Δ[A304360(-xor(n, -1))])`
-/

namespace A317963.P1753612654143357602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304360 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A317963.P1753612654143357602

/-! ## A317963.P17331558622283605513

`Δ[record[A304360(A324347(n))]]`
-/

namespace A317963.P17331558622283605513
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304360 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A317963.P17331558622283605513

/-! ## A317963.P300603670637665521

`A304360(n+2)-A304360(n+1)`
-/

namespace A317963.P300603670637665521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304360 (n + 2) - A304360 (n + 1)

end

end A317963.P300603670637665521

/-! ## A317963.P16942483775234947906

`-A001489(Δ[A304360(-xor(n, -1))])`
-/

namespace A317963.P16942483775234947906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304360 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001489 (f1 (n + 1) - f1 n).toNat

end

end A317963.P16942483775234947906

/-! ## A317963.P3017094910206636140

`Δ[record[A304360(A133310(n))]]`
-/

namespace A317963.P3017094910206636140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304360 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A317963.P3017094910206636140

/-! ## A317963.P17601471449748658040

`Δ[record[A304360(A152271(n))]]`
-/

namespace A317963.P17601471449748658040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304360 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A317963.P17601471449748658040

/-! ## A317963.P8068378409602268444

`Δ[record[A304360(A126759(n))]]`
-/

namespace A317963.P8068378409602268444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304360 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A317963.P8068378409602268444

/-! ## A317963.P5335213136318689381

`Δ[record[A304360(A117910(n))]]`
-/

namespace A317963.P5335213136318689381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304360 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A317963.P5335213136318689381

/-! ## A317963.P17677353484912186703

`Δ[record[A304360(A134478(n))]]`
-/

namespace A317963.P17677353484912186703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304360 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A317963.P17677353484912186703

/-!
# A317964: Prime numbers in the lexicographically earliest sequence of positive integers whose prime indices are not already in the sequence (A304360).

The programs for A317964, there is no canonical definition to state claims against.
-/

/-! ## A317964.P16741476421344466436

`A000040(A324696(n+1))`
-/

namespace A317964.P16741476421344466436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A324696 (n + 1)).toNat

end

end A317964.P16741476421344466436

/-! ## A317964.P4875843153031562835

`A000040(comp[A304360(n+1)-1]+1)`
-/

namespace A317964.P4875843153031562835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304360 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A317964.P4875843153031562835

/-! ## A317964.P1702280214817659856

`A028815(comp[A304360(n+1)-1]+1)-1`
-/

namespace A317964.P1702280214817659856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304360 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) - 1

end

end A317964.P1702280214817659856

/-! ## A317964.P5292078803226039364

`A000040(comp[A317963(n)+a(n-1)]+1)` with `a(0)=1`
-/

namespace A317964.P5292078803226039364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A317963 n + f1 (n - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A317964.P5292078803226039364

/-! ## A317964.P1956519930925213930

`p?[A304360(n+1)]`
-/

namespace A317964.P1956519930925213930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A317964.P1956519930925213930

/-! ## A317964.P16530164153376085168

`p?[A317963(n)+a(n-1)]` with `a(0)=2`
-/

namespace A317964.P16530164153376085168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A317963 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A317964.P16530164153376085168

/-! ## A317964.P10659751867825258068

`record[A006530(A304360(n+2))]`
-/

namespace A317964.P10659751867825258068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A304360 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317964.P10659751867825258068

/-! ## A317964.P5150151093969200964

`filter[A304360(n+1), A010051(#)]`
-/

namespace A317964.P5150151093969200964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A317964.P5150151093969200964

/-! ## A317964.P17769489170964006890

`∩[A000040(n+1), A304360(n+1)]`
-/

namespace A317964.P17769489170964006890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317964.P17769489170964006890

/-! ## A317964.P15798509394404352673

`∩[A008578(n+1), A304360(n+1)]`
-/

namespace A317964.P15798509394404352673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317964.P15798509394404352673

/-! ## A317964.P662010799515731

`∩[A033946(n+1), A304360(n+1)]`
-/

namespace A317964.P662010799515731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317964.P662010799515731

/-! ## A317964.P8778423823499168060

`∩[A045344(n+1), A304360(n+1)]`
-/

namespace A317964.P8778423823499168060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317964.P8778423823499168060

/-! ## A317964.P5008234445635510233

`∩[A106843(n+1), A304360(n+1)]`
-/

namespace A317964.P5008234445635510233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317964.P5008234445635510233

/-! ## A317964.P16034322134874183458

`∩[A116974(n+1), A304360(n+1)]`
-/

namespace A317964.P16034322134874183458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317964.P16034322134874183458

/-! ## A317964.P4877954146964005774

`∩[A158611(n+1), A304360(n+1)]`
-/

namespace A317964.P4877954146964005774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317964.P4877954146964005774

/-! ## A317964.P12990714216409233362

`∩[A182986(n+1), A304360(n+1)]`
-/

namespace A317964.P12990714216409233362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317964.P12990714216409233362

/-! ## A317964.P13330787536133062335

`∩[A326715(n+1), A304360(n+1)]`
-/

namespace A317964.P13330787536133062335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317964.P13330787536133062335

/-! ## A317964.P17321276191342484172

`record[A020639(A304360(n+1)%A272100(n+1))]`
-/

namespace A317964.P17321276191342484172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.tmod (A304360 (n + 1)) (A272100 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317964.P17321276191342484172

/-! ## A317964.P17532152094681176840

`filter[A304360(n+1), A080339(#)]`
-/

namespace A317964.P17532152094681176840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A317964.P17532152094681176840

/-! ## A317964.P13524275264870134654

`A000040(record[A003963(A304360(n+1))])`
-/

namespace A317964.P13524275264870134654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A304360 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A317964.P13524275264870134654

/-!
# A317966: Nonsquares congruent to 1 or 2 mod 4 which are not the sum of a prime and a square.

The programs for A317966, there is no canonical definition to state claims against.
-/

/-! ## A317966.P12506873145470268248

`∩[A064233(n+1), A132777(n+1)]`
-/

namespace A317966.P12506873145470268248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317966.P12506873145470268248

/-!
# A317967: Number of connected line structures or "topoglyphs" with n regions.

The programs for A317967, there is no canonical definition to state claims against.
-/

/-! ## A317967.P10285260980503700158

`round(∏[∑[atan(2^n)²]])`
-/

namespace A317967.P10285260980503700158
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (2 ^ n : ℝ) ^ 2

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A317967.P10285260980503700158

/-!
# A317968: Number of (not necessarily connected) line structures or "topoglyphs" with n regions.

The programs for A317968, there is no canonical definition to state claims against.
-/

/-! ## A317968.P9752610024569290876

`ogf((-1+7x+3x^2+12x^3+4x^4)/(-1+8x))`
-/

namespace A317968.P9752610024569290876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -7, -3, -12, -4] [1, -8] n

end

end A317968.P9752610024569290876

/-!
# A317971: Numbers m such that the Pisano period A001175(m) divides m.

The programs for A317971, there is no canonical definition to state claims against.
-/

/-! ## A317971.P5577628505540502055

`∩[A111035(n+1), A160665(n+1)]`
-/

namespace A317971.P5577628505540502055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317971.P5577628505540502055

/-! ## A317971.P18435479246499641763

`∩[A023172(n+1), A111035(n+1)]`
-/

namespace A317971.P18435479246499641763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317971.P18435479246499641763

/-! ## A317971.P13134787074838777292

`∩[A023172(n+1), A160665(n+1)]`
-/

namespace A317971.P13134787074838777292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317971.P13134787074838777292

/-! ## A317971.P13226606569594756466

`∩[A111035(n+1), A140972(n+1)]`
-/

namespace A317971.P13226606569594756466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317971.P13226606569594756466

/-! ## A317971.P1456846933502768127

`∩[A140972(n+1), A160665(n+1)]`
-/

namespace A317971.P1456846933502768127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317971.P1456846933502768127

/-! ## A317971.P4895333426380254644

`∩[A111058(n+1), A160665(n+1)]`
-/

namespace A317971.P4895333426380254644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317971.P4895333426380254644

/-! ## A317971.P11719697080138645637

`∩[A023172(n+1), A263578(n+1)]`
-/

namespace A317971.P11719697080138645637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317971.P11719697080138645637

/-! ## A317971.P462290296040366198

`∩[A111035(n+1), A263578(n+1)]`
-/

namespace A317971.P462290296040366198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317971.P462290296040366198

/-! ## A317971.P13971528131247472198

`∩[A111058(n+1), A263578(n+1)]`
-/

namespace A317971.P13971528131247472198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317971.P13971528131247472198

/-! ## A317971.P963495392200941412

`∩[A140972(n+1), A263578(n+1)]`
-/

namespace A317971.P963495392200941412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317971.P963495392200941412

/-! ## A317971.P10436384132988630357

`∩[A111035(n+1), A231959(n+1)]`
-/

namespace A317971.P10436384132988630357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317971.P10436384132988630357

/-! ## A317971.P8286968802869033795

`∩[A160665(n+1), A231959(n+1)]`
-/

namespace A317971.P8286968802869033795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317971.P8286968802869033795

/-! ## A317971.P1139417112224891654

`∩[A023172(n+1), A219612(n+1)]`
-/

namespace A317971.P1139417112224891654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317971.P1139417112224891654

/-! ## A317971.P4185508237564657352

`∩[A111035(n+1), A219612(n+1)]`
-/

namespace A317971.P4185508237564657352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317971.P4185508237564657352

/-! ## A317971.P8105224116079278076

`∩[A111058(n+1), A219612(n+1)]`
-/

namespace A317971.P8105224116079278076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317971.P8105224116079278076

/-! ## A317971.P15478727494350517978

`∩[A140971(n+1), A219612(n+1)]`
-/

namespace A317971.P15478727494350517978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317971.P15478727494350517978

/-! ## A317971.P8845118674892746184

`∩[A140972(n+1), A219612(n+1)]`
-/

namespace A317971.P8845118674892746184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317971.P8845118674892746184

/-! ## A317971.P11539132443062101431

`∩[A160665(n+1), A219612(n+1)]`
-/

namespace A317971.P11539132443062101431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317971.P11539132443062101431

/-! ## A317971.P11160177192301884511

`∩[A219612(n+1), A263578(n+1)]`
-/

namespace A317971.P11160177192301884511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317971.P11160177192301884511

/-! ## A317971.P10319884227971403869

`A008574(record[A104714(2*n)-n])`
-/

namespace A317971.P10319884227971403869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104714 (2 * n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A317971.P10319884227971403869

/-!
# A317972: Pseudoprimes congruent to 7 mod 10.

The programs for A317972, there is no canonical definition to state claims against.
-/

/-! ## A317972.P293055267915096544

`A001567(eq[2, A001567(n+1)%5]+1)`
-/

namespace A317972.P293055267915096544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001567 (n + 1)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A317972.P293055267915096544

/-! ## A317972.P5062551471501512537

`filter[A227869(n+1), A257531(#)]`
-/

namespace A317972.P5062551471501512537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A317972.P5062551471501512537

/-! ## A317972.P4899444926457169272

`∩[A016873(6*n+7), A001567(n+1)]`
-/

namespace A317972.P4899444926457169272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 (6 * n + 7)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317972.P4899444926457169272

/-! ## A317972.P13936225355015383248

`∩[A016873(6*n+7), A066488(n+1)]`
-/

namespace A317972.P13936225355015383248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 (6 * n + 7)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317972.P13936225355015383248

/-!
# A317973: a(n) = 2*(a(n-1)+a(n-2)+a(n-3))-a(n-4) for n >= 4, with initial terms -1, 2, 3, 6.

The programs for A317973, the canonical program `A317973.P1790774288851644594` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317973 has offset 0).

The definition of A317973 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(a(n-1)+a(n-2)+a(n-3))-a(n-4)` (program `A317973.P1790774288851644594`, by `A317973.P1790774288851644594.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A317973.P3719856933621899190

`ogf((-1+4x+x^2-2x^3)/(1-2x-2x^2-2x^3+x^4))`
-/

namespace A317973.P3719856933621899190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 4, 1, -2] [1, -2, -2, -2, 1] n

end

end A317973.P3719856933621899190

namespace A317973

/-- `ogf((-1+4x+x^2-2x^3)/(1-2x-2x^2-2x^3+x^4))` -/
def P3719856933621899190.Spec : Prop :=
  ∀ n, P3719856933621899190.a n = A317973 n

end A317973

/-! ## A317973.P1790774288851644594

`2*(a(n-1)+a(n-2)+a(n-3))-a(n-4)` with `a(0)=-1, a(1)=2, a(2)=3, a(3)=6`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A317973

/-- `2*(a(n-1)+a(n-2)+a(n-3))-a(n-4)` -/
def P1790774288851644594.Spec : Prop :=
  ∀ n, P1790774288851644594.a n = A317973 n

theorem P1790774288851644594.correct : P1790774288851644594.Spec := by
  intro n
  simp only [A317973]

end A317973

/-! ## A317973.P18275656257603892029

`A138573(n)+A045821(n)`
-/

namespace A317973.P18275656257603892029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138573 n + A045821 n

end

end A317973.P18275656257603892029

namespace A317973

/-- `A138573(n)+A045821(n)` -/
def P18275656257603892029.Spec : Prop :=
  ∀ n, P18275656257603892029.a n = A317973 n

end A317973

/-! ## A317973.P10378918658042129874

`A192234(n+1)+2*A045821(n)`
-/

namespace A317973.P10378918658042129874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192234 (n + 1) + 2 * A045821 n

end

end A317973.P10378918658042129874

namespace A317973

/-- `A192234(n+1)+2*A045821(n)` -/
def P10378918658042129874.Spec : Prop :=
  ∀ n, P10378918658042129874.a n = A317973 n

end A317973

/-! ## A317973.P4068556262318387139

`A138573(n)+A138573(n)-A192234(n+1)`
-/

namespace A317973.P4068556262318387139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138573 n + (A138573 n - A192234 (n + 1))

end

end A317973.P4068556262318387139

namespace A317973

/-- `A138573(n)+A138573(n)-A192234(n+1)` -/
def P4068556262318387139.Spec : Prop :=
  ∀ n, P4068556262318387139.a n = A317973 n

end A317973

/-! ## A317973.P10702987373757626425

`A206625(2*n)+A206625(2*n)-A192234(n+1)`
-/

namespace A317973.P10702987373757626425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206625 (2 * n) + (A206625 (2 * n) - A192234 (n + 1))

end

end A317973.P10702987373757626425

namespace A317973

/-- `A206625(2*n)+A206625(2*n)-A192234(n+1)` -/
def P10702987373757626425.Spec : Prop :=
  ∀ n, P10702987373757626425.a n = A317973 n

end A317973

/-! ## A317973.P10791181195449655869

`4*A138573(n)-A038989(n)`
-/

namespace A317973.P10791181195449655869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A138573 n - A038989 n

end

end A317973.P10791181195449655869

namespace A317973

/-- `4*A138573(n)-A038989(n)` -/
def P10791181195449655869.Spec : Prop :=
  ∀ n, P10791181195449655869.a n = A317973 n

end A317973

/-! ## A317973.P11896422681906681059

`record[A192234(n)]-Δ[A192234(n)]`
-/

namespace A317973.P11896422681906681059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192234 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (f2 (n + 1) - f2 n)

end

end A317973.P11896422681906681059

namespace A317973

/-- `record[A192234(n)]-Δ[A192234(n)]` -/
def P11896422681906681059.Spec : Prop :=
  ∀ n, P11896422681906681059.a n = A317973 n

end A317973

/-! ## A317973.P5693356453314077668

`A192234(n)+Δ[A192234(n+1)]`
-/

namespace A317973.P5693356453314077668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192234 n + (f1 (n + 1) - f1 n)

end

end A317973.P5693356453314077668

namespace A317973

/-- `A192234(n)+Δ[A192234(n+1)]` -/
def P5693356453314077668.Spec : Prop :=
  ∀ n, P5693356453314077668.a n = A317973 n

end A317973

/-! ## A317973.P7150089880038319226

`2*A138573(n)-A192234(n+1)`
-/

namespace A317973.P7150089880038319226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138573 n - A192234 (n + 1)

end

end A317973.P7150089880038319226

namespace A317973

/-- `2*A138573(n)-A192234(n+1)` -/
def P7150089880038319226.Spec : Prop :=
  ∀ n, P7150089880038319226.a n = A317973 n

end A317973

/-! ## A317973.P2200826171807317811

`2*A206625(2*n)-A192234(n+1)`
-/

namespace A317973.P2200826171807317811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A206625 (2 * n) - A192234 (n + 1)

end

end A317973.P2200826171807317811

namespace A317973

/-- `2*A206625(2*n)-A192234(n+1)` -/
def P2200826171807317811.Spec : Prop :=
  ∀ n, P2200826171807317811.a n = A317973 n

end A317973

/-! ## A317973.P10764294646079457108

`A038989(n)-(A192234(n+1)+A192234(n+1))`
-/

namespace A317973.P10764294646079457108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038989 n - (A192234 (n + 1) + A192234 (n + 1))

end

end A317973.P10764294646079457108

namespace A317973

/-- `A038989(n)-(A192234(n+1)+A192234(n+1))` -/
def P10764294646079457108.Spec : Prop :=
  ∀ n, P10764294646079457108.a n = A317973 n

end A317973

/-!
# A317974: a(n) = 2*(a(n-1)+a(n-2)+a(n-3))-a(n-4) for n >= 4, with initial terms 0,0,1,1.

The programs for A317974, the canonical program `A317974.P11548014945757365643` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317974 has offset 0).

The definition of A317974 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(a(n-1)+a(n-2)+a(n-3))-a(n-4)` (program `A317974.P11548014945757365643`, by `A317974.P11548014945757365643.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A317974.P18289546009651824754

`ogf((x^2-x^3)/(1-2x-2x^2-2x^3+x^4))`
-/

namespace A317974.P18289546009651824754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, -1] [1, -2, -2, -2, 1] n

end

end A317974.P18289546009651824754

namespace A317974

/-- `ogf((x^2-x^3)/(1-2x-2x^2-2x^3+x^4))` -/
def P18289546009651824754.Spec : Prop :=
  ∀ n, P18289546009651824754.a n = A317974 n

end A317974

/-! ## A317974.P11548014945757365643

`2*(a(n-1)+a(n-2)+a(n-3))-a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A317974

/-- `2*(a(n-1)+a(n-2)+a(n-3))-a(n-4)` -/
def P11548014945757365643.Spec : Prop :=
  ∀ n, P11548014945757365643.a n = A317974 n

theorem P11548014945757365643.correct : P11548014945757365643.Spec := by
  intro n
  simp only [A317974]

end A317974

/-! ## A317974.P8996327973172721384

`Δ[A192237(n)]`
-/

namespace A317974.P8996327973172721384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192237 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A317974.P8996327973172721384

namespace A317974

/-- `Δ[A192237(n)]` -/
def P8996327973172721384.Spec : Prop :=
  ∀ n, P8996327973172721384.a n = A317974 n

end A317974

/-! ## A317974.P1443198171503771998

`A138573(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A317974.P1443198171503771998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A138573 (n - 1) - a (n - 1)

end

end A317974.P1443198171503771998

namespace A317974

/-- `A138573(n-1)-a(n-1)` -/
def P1443198171503771998.Spec : Prop :=
  ∀ n, P1443198171503771998.a n = A317974 n

end A317974

/-! ## A317974.P4637762924031575263

`A317976(n)+A192237(n)`
-/

namespace A317974.P4637762924031575263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317976 n + A192237 n

end

end A317974.P4637762924031575263

namespace A317974

/-- `A317976(n)+A192237(n)` -/
def P4637762924031575263.Spec : Prop :=
  ∀ n, P4637762924031575263.a n = A317974 n

end A317974

/-! ## A317974.P4579148610194395502

`A192237(n+1)-A192237(n)`
-/

namespace A317974.P4579148610194395502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192237 (n + 1) - A192237 n

end

end A317974.P4579148610194395502

namespace A317974

/-- `A192237(n+1)-A192237(n)` -/
def P4579148610194395502.Spec : Prop :=
  ∀ n, P4579148610194395502.a n = A317974 n

end A317974

/-! ## A317974.P13493988994870786202

`A317976(n+1)+A317976(n)-A192234(n)`
-/

namespace A317974.P13493988994870786202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317976 (n + 1) + (A317976 n - A192234 n)

end

end A317974.P13493988994870786202

namespace A317974

/-- `A317976(n+1)+A317976(n)-A192234(n)` -/
def P13493988994870786202.Spec : Prop :=
  ∀ n, P13493988994870786202.a n = A317974 n

end A317974

/-! ## A317974.P389688224855809515

`A192234(n+1)+A192234(n)-A317975(n+1)`
-/

namespace A317974.P389688224855809515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192234 (n + 1) + (A192234 n - A317975 (n + 1))

end

end A317974.P389688224855809515

namespace A317974

/-- `A192234(n+1)+A192234(n)-A317975(n+1)` -/
def P389688224855809515.Spec : Prop :=
  ∀ n, P389688224855809515.a n = A317974 n

end A317974

/-! ## A317974.P8653935208753784887

`record[A192234(n)]-∑[A138573(n)]`
-/

namespace A317974.P8653935208753784887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192234 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A317974.P8653935208753784887

namespace A317974

/-- `record[A192234(n)]-∑[A138573(n)]` -/
def P8653935208753784887.Spec : Prop :=
  ∀ n, P8653935208753784887.a n = A317974 n

end A317974

/-! ## A317974.P5764064737878217922

`A138574(n+1)-∑[A138573(n+1)]`
-/

namespace A317974.P5764064737878217922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138573 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138574 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317974.P5764064737878217922

namespace A317974

/-- `A138574(n+1)-∑[A138573(n+1)]` -/
def P5764064737878217922.Spec : Prop :=
  ∀ n, P5764064737878217922.a n = A317974 n

end A317974

/-!
# A317975: a(n) = 2*(a(n-1)+a(n-2)+a(n-3))-a(n-4) for n >= 4, with initial terms 0, 1, 1, 0.

The programs for A317975, the canonical program `A317975.P17212426151745252141` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317975 has offset 0).

The definition of A317975 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(a(n-1)+a(n-2)+a(n-3))-a(n-4)` (program `A317975.P17212426151745252141`, by `A317975.P17212426151745252141.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A317975.P6367733358576069104

`ogf((x-x^2-4x^3)/(1-2x-2x^2-2x^3+x^4))`
-/

namespace A317975.P6367733358576069104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1, -4] [1, -2, -2, -2, 1] n

end

end A317975.P6367733358576069104

namespace A317975

/-- `ogf((x-x^2-4x^3)/(1-2x-2x^2-2x^3+x^4))` -/
def P6367733358576069104.Spec : Prop :=
  ∀ n, P6367733358576069104.a n = A317975 n

end A317975

/-! ## A317975.P17212426151745252141

`2*(a(n-1)+a(n-2)+a(n-3))-a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=0`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A317975

/-- `2*(a(n-1)+a(n-2)+a(n-3))-a(n-4)` -/
def P17212426151745252141.Spec : Prop :=
  ∀ n, P17212426151745252141.a n = A317975 n

theorem P17212426151745252141.correct : P17212426151745252141.Spec := by
  intro n
  simp only [A317975]

end A317975

/-! ## A317975.P16127398362701855579

`A192234(n)+A317976(n)-A192237(n)`
-/

namespace A317975.P16127398362701855579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192234 n + (A317976 n - A192237 n)

end

end A317975.P16127398362701855579

namespace A317975

/-- `A192234(n)+A317976(n)-A192237(n)` -/
def P16127398362701855579.Spec : Prop :=
  ∀ n, P16127398362701855579.a n = A317975 n

end A317975

/-! ## A317975.P15181229606609865794

`A192234(n)-A192237(n)+A317974(n)-A192237(n)`
-/

namespace A317975.P15181229606609865794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192234 n - A192237 n + (A317974 n - A192237 n)

end

end A317975.P15181229606609865794

namespace A317975

/-- `A192234(n)-A192237(n)+A317974(n)-A192237(n)` -/
def P15181229606609865794.Spec : Prop :=
  ∀ n, P15181229606609865794.a n = A317975 n

end A317975

/-!
# A317976: a(n) = 2*(a(n-1)+a(n-2)+a(n-3))-a(n-4) for n >= 4, with initial terms 0,0,1,0.

The programs for A317976, the canonical program `A317976.P10444950071558399212` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317976 has offset 0).

The definition of A317976 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(a(n-1)+a(n-2)+a(n-3))-a(n-4)` (program `A317976.P10444950071558399212`, by `A317976.P10444950071558399212.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A317976.P5660122625093723886

`ogf((x^2-2x^3)/(1-2x-2x^2-2x^3+x^4))`
-/

namespace A317976.P5660122625093723886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, -2] [1, -2, -2, -2, 1] n

end

end A317976.P5660122625093723886

namespace A317976

/-- `ogf((x^2-2x^3)/(1-2x-2x^2-2x^3+x^4))` -/
def P5660122625093723886.Spec : Prop :=
  ∀ n, P5660122625093723886.a n = A317976 n

end A317976

/-! ## A317976.P10444950071558399212

`2*(a(n-1)+a(n-2)+a(n-3))-a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A317976

/-- `2*(a(n-1)+a(n-2)+a(n-3))-a(n-4)` -/
def P10444950071558399212.Spec : Prop :=
  ∀ n, P10444950071558399212.a n = A317976 n

theorem P10444950071558399212.correct : P10444950071558399212.Spec := by
  intro n
  simp only [A317976]

end A317976

/-! ## A317976.P17285348903140511596

`A317974(n)-A192237(n)`
-/

namespace A317976.P17285348903140511596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317974 n - A192237 n

end

end A317976.P17285348903140511596

namespace A317976

/-- `A317974(n)-A192237(n)` -/
def P17285348903140511596.Spec : Prop :=
  ∀ n, P17285348903140511596.a n = A317976 n

end A317976

/-! ## A317976.P17079390297093392847

`A192237(n+1)-2*A192237(n)`
-/

namespace A317976.P17079390297093392847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192237 (n + 1) - 2 * A192237 n

end

end A317976.P17079390297093392847

namespace A317976

/-- `A192237(n+1)-2*A192237(n)` -/
def P17079390297093392847.Spec : Prop :=
  ∀ n, P17079390297093392847.a n = A317976 n

end A317976

/-! ## A317976.P2823792052020951337

`Δ[A192237(A028310(n))]-A192237(n)`
-/

namespace A317976.P2823792052020951337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192237 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A192237 n

end

end A317976.P2823792052020951337

namespace A317976

/-- `Δ[A192237(A028310(n))]-A192237(n)` -/
def P2823792052020951337.Spec : Prop :=
  ∀ n, P2823792052020951337.a n = A317976 n

end A317976

/-! ## A317976.P3742610198237064824

`A192237(n)+A317975(n)-A192234(n)`
-/

namespace A317976.P3742610198237064824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192237 n + (A317975 n - A192234 n)

end

end A317976.P3742610198237064824

namespace A317976

/-- `A192237(n)+A317975(n)-A192234(n)` -/
def P3742610198237064824.Spec : Prop :=
  ∀ n, P3742610198237064824.a n = A317976 n

end A317976

/-!
# A317977: a(n) = A003010(n-2) mod (2^n - 1).

The programs for A317977, there is no canonical definition to state claims against.
-/

/-! ## A317977.P2462750721404055438

`A003010(n)%A023443(A020707(n))`
-/

namespace A317977.P2462750721404055438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003010 n) (A023443 (A020707 n).toNat)

end

end A317977.P2462750721404055438

/-! ## A317977.P14195922987963992622

`(A178497(n+1)+1)%A023443(A020707(n))`
-/

namespace A317977.P14195922987963992622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178497 (n + 1) + 1) (A023443 (A020707 n).toNat)

end

end A317977.P14195922987963992622

/-! ## A317977.P8957435510210745954

`(2*A006695(2*n))%A023443(A020707(n))`
-/

namespace A317977.P8957435510210745954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A006695 (2 * n)) (A023443 (A020707 n).toNat)

end

end A317977.P8957435510210745954

/-! ## A317977.P11264039034736846240

`(2*A002531(2^(n+1)))%A023443(A020707(n))`
-/

namespace A317977.P11264039034736846240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A002531 (2 ^ (n + 1))) (A023443 (A020707 n).toNat)

end

end A317977.P11264039034736846240

/-!
# A317979: Numbers k such that k^4 + k^3 + k^2 + 1 is prime.

The programs for A317979, there is no canonical definition to state claims against.
-/

/-! ## A317979.P16037244304824061942

`A214628(A250190(n+1))`
-/

namespace A317979.P16037244304824061942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214628 (A250190 (n + 1)).toNat

end

end A317979.P16037244304824061942

/-! ## A317979.P12247191801713264073

`∑[A036273(∑[A000079(n+4)])]`
-/

namespace A317979.P12247191801713264073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036273 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317979.P12247191801713264073

/-! ## A317979.P4985877970453386553

`∑[A000005(A343036(∑{p}[n+1, #]+2+n))]`
-/

namespace A317979.P4985877970453386553
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A343036 (∑ p ∈ Nat.primeFactors (f2 n), p + 2 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317979.P4985877970453386553

/-! ## A317979.P4930101525787897944

`A006530(C(A000040(n+1)-1, 2*n))+2*n+1`
-/

namespace A317979.P4930101525787897944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.choose (A000040 (n + 1) - 1).toNat (2 * n)) + (2 * n + 1 : ℤ)

end

end A317979.P4930101525787897944

/-! ## A317979.P1458775203607305096

`A076274(n+1)-A033999(A207651(n))`
-/

namespace A317979.P1458775203607305096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076274 (n + 1) - A033999 (A207651 n).toNat

end

end A317979.P1458775203607305096

/-!
# A317980: a(n) = Product_{i=1..n} floor(5*i/2).

The programs for A317980, there is no canonical definition to state claims against.
-/

/-! ## A317980.P5898240997446995205

`∏[∑[n%2+2]]`
-/

namespace A317980.P5898240997446995205
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A317980.P5898240997446995205

/-! ## A317980.P7525612780475682206

`∏[∑[4-gcd(2, n)]]`
-/

namespace A317980.P7525612780475682206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (Nat.gcd 2 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A317980.P7525612780475682206

/-! ## A317980.P16468109812312962166

`∏[∑[and(1, n)+2]]`
-/

namespace A317980.P16468109812312962166
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A317980.P16468109812312962166

/-! ## A317980.P15110749441242088358

`∏[∑[and(3, n²-2)]]`
-/

namespace A317980.P15110749441242088358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 ((n ^ 2 : ℤ) - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A317980.P15110749441242088358

/-! ## A317980.P17195573902119224393

`∏[∑[3-char[2*n]]]`
-/

namespace A317980.P17195573902119224393
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A317980.P17195573902119224393

/-! ## A317980.P1610758487974978726

`a(n-1)*∑[and(1, n)+2]` with `a(0)=2`
-/

namespace A317980.P1610758487974978726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 2

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A317980.P1610758487974978726

/-! ## A317980.P8245698660035329084

`a(n-1)*∑[5-a(n-1)]` with `a(0)=2`
-/

namespace A317980.P8245698660035329084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A317980.P8245698660035329084

/-! ## A317980.P15618942776805610980

`floor(5*(n+1)/2)*a(n-1)` with `a(0)=2`
-/

namespace A317980.P15618942776805610980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊5 * ((n + 1 : ℚ) / 2)⌋ * a (n - 1)

end

end A317980.P15618942776805610980

/-! ## A317980.P14756737124101888783

`2*∏[A256680(n+1)]`
-/

namespace A317980.P14756737124101888783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A317980.P14756737124101888783

/-!
# A317981: Expansion of x*(125 + 8028*x + 42237*x^2 + 42272*x^3 + 8007*x^4 + 132*x^5 - x^6) / (1 - x)^8.

The programs for A317981, the canonical program `A317981.P5573603697589932580` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317981 has offset 1).

The definition of A317981 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A317981.P5573603697589932580

`20*(n+1)^7+70*(n+1)^6+70*(n+1)^5-28*(n+1)^3-7*(n+1)²`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A317981

/-- `20*(n+1)^7+70*(n+1)^6+70*(n+1)^5-28*(n+1)^3-7*(n+1)²` -/
def P5573603697589932580.Spec : Prop :=
  ∀ n, P5573603697589932580.a n = A317981 (n + 1)

theorem P5573603697589932580.correct : P5573603697589932580.Spec := by
  intro n
  simp only [A317981, Nat.add_sub_cancel]

end A317981

/-! ## A317981.P4078694266497002606

`A316387(4*n+1)`
-/

namespace A317981.P4078694266497002606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316387 (4 * n + 1)

end

end A317981.P4078694266497002606

namespace A317981

/-- `A316387(4*n+1)` -/
def P4078694266497002606.Spec : Prop :=
  ∀ n, P4078694266497002606.a n = A317981 (n + 1)

end A317981

/-! ## A317981.P2180145622128882921

`lcm(n+1, A316387(A016813(n)))`
-/

namespace A317981.P2180145622128882921
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A316387 (A016813 n).toNat)

end

end A317981.P2180145622128882921

namespace A317981

/-- `lcm(n+1, A316387(A016813(n)))` -/
def P2180145622128882921.Spec : Prop :=
  ∀ n, (P2180145622128882921.a n : ℤ) = A317981 (n + 1)

end A317981

/-! ## A317981.P14405480188678607259

`record[A316387(A157502(n+1)-1)]`
-/

namespace A317981.P14405480188678607259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316387 (A157502 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317981.P14405480188678607259

namespace A317981

/-- `record[A316387(A157502(n+1)-1)]` -/
def P14405480188678607259.Spec : Prop :=
  ∀ n, P14405480188678607259.a n = A317981 (n + 1)

end A317981

/-! ## A317981.P13604931336978899056

`record[A316387(n+1)/A001903(n)]`
-/

namespace A317981.P13604931336978899056
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316387 (n + 1) : ℚ) / (A001903 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317981.P13604931336978899056

namespace A317981

/-- `record[A316387(n+1)/A001903(n)]` -/
def P13604931336978899056.Spec : Prop :=
  ∀ n, P13604931336978899056.a n = (A317981 (n + 1) : ℚ)

end A317981

/-! ## A317981.P4084949730592369100

`record[A316387(n+1)^A056594(n)]`
-/

namespace A317981.P4084949730592369100
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316387 (n + 1) : ℚ) ^ (A056594 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317981.P4084949730592369100

namespace A317981

/-- `record[A316387(n+1)^A056594(n)]` -/
def P4084949730592369100.Spec : Prop :=
  ∀ n, P4084949730592369100.a n = (A317981 (n + 1) : ℚ)

end A317981

/-! ## A317981.P10495572222678555837

`record[gcd(A316386(n), A316387(n+1))]`
-/

namespace A317981.P10495572222678555837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A316386 n) (A316387 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317981.P10495572222678555837

namespace A317981

/-- `record[gcd(A316386(n), A316387(n+1))]` -/
def P10495572222678555837.Spec : Prop :=
  ∀ n, (P10495572222678555837.a n : ℤ) = A317981 (n + 1)

end A317981

/-! ## A317981.P751768185141759821

`record[A316387(A099375(n+2))]`
-/

namespace A317981.P751768185141759821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316387 (A099375 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317981.P751768185141759821

namespace A317981

/-- `record[A316387(A099375(n+2))]` -/
def P751768185141759821.Spec : Prop :=
  ∀ n, P751768185141759821.a n = A317981 (n + 1)

end A317981

/-!
# A317982: Expansion of 14*x*(29 + 784*x + 1974*x^2 + 784*x^3 + 29*x^4) / (1 - x)^7.

The programs for A317982, the canonical program `A317982.P6409656463389282082` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317982 has offset 1).

The definition of A317982 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A317982.P6409656463389282082

`70*(n+1)^6+210*(n+1)^5+175*(n+1)^4-42*(n+1)²-7*(n+1)`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A317982

/-- `70*(n+1)^6+210*(n+1)^5+175*(n+1)^4-42*(n+1)²-7*(n+1)` -/
def P6409656463389282082.Spec : Prop :=
  ∀ n, P6409656463389282082.a n = A317982 (n + 1)

theorem P6409656463389282082.correct : P6409656463389282082.Spec := by
  intro n
  simp only [A317982, Nat.add_sub_cancel]

end A317982

/-! ## A317982.P15862915103655373739

`A316387(4*n+2)`
-/

namespace A317982.P15862915103655373739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316387 (4 * n + 2)

end

end A317982.P15862915103655373739

namespace A317982

/-- `A316387(4*n+2)` -/
def P15862915103655373739.Spec : Prop :=
  ∀ n, P15862915103655373739.a n = A317982 (n + 1)

end A317982

/-! ## A317982.P3716379244724441234

`lcm(2, A316387(A016825(n)))`
-/

namespace A317982.P3716379244724441234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A316387 (A016825 n).toNat)

end

end A317982.P3716379244724441234

namespace A317982

/-- `lcm(2, A316387(A016825(n)))` -/
def P3716379244724441234.Spec : Prop :=
  ∀ n, (P3716379244724441234.a n : ℤ) = A317982 (n + 1)

end A317982

/-! ## A317982.P3784386894474816391

`record[A316387(A157502(n+1))]`
-/

namespace A317982.P3784386894474816391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316387 (A157502 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317982.P3784386894474816391

namespace A317982

/-- `record[A316387(A157502(n+1))]` -/
def P3784386894474816391.Spec : Prop :=
  ∀ n, P3784386894474816391.a n = A317982 (n + 1)

end A317982

/-! ## A317982.P14872125092539170446

`record[gcd(A316386(n), A316387(n+2))]`
-/

namespace A317982.P14872125092539170446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A316386 n) (A316387 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317982.P14872125092539170446

namespace A317982

/-- `record[gcd(A316386(n), A316387(n+2))]` -/
def P14872125092539170446.Spec : Prop :=
  ∀ n, (P14872125092539170446.a n : ℤ) = A317982 (n + 1)

end A317982

/-! ## A317982.P16052390696794328826

`record[A316387(A099375(n)+1)]`
-/

namespace A317982.P16052390696794328826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316387 (A099375 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317982.P16052390696794328826

namespace A317982

/-- `record[A316387(A099375(n)+1)]` -/
def P16052390696794328826.Spec : Prop :=
  ∀ n, P16052390696794328826.a n = A317982 (n + 1)

end A317982

/-!
# A317983: Expansion of 420*x*(1 + x)*(1 + 10*x + x^2) / (1 - x)^6.

The programs for A317983, the canonical program `A317983.P728339327642909911` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317983 has offset 1).

The definition of A317983 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A317983.P728339327642909911

`84*(n+1)^5+210*(n+1)^4+140*(n+1)^3-14*(n+1)`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A317983

/-- `84*(n+1)^5+210*(n+1)^4+140*(n+1)^3-14*(n+1)` -/
def P728339327642909911.Spec : Prop :=
  ∀ n, P728339327642909911.a n = A317983 (n + 1)

theorem P728339327642909911.correct : P728339327642909911.Spec := by
  intro n
  simp only [A317983, Nat.add_sub_cancel]

end A317983

/-! ## A317983.P9703424227937289404

`420*A000538(n+1)`
-/

namespace A317983.P9703424227937289404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  420 * A000538 (n + 1)

end

end A317983.P9703424227937289404

namespace A317983

/-- `420*A000538(n+1)` -/
def P9703424227937289404.Spec : Prop :=
  ∀ n, P9703424227937289404.a n = A317983 (n + 1)

end A317983

/-! ## A317983.P6734686675597468125

`A316387(3*(n+1)+n)`
-/

namespace A317983.P6734686675597468125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316387 (3 * (n + 1) + n)

end

end A317983.P6734686675597468125

namespace A317983

/-- `A316387(3*(n+1)+n)` -/
def P6734686675597468125.Spec : Prop :=
  ∀ n, P6734686675597468125.a n = A317983 (n + 1)

end A317983

/-! ## A317983.P16412235019233329518

`lcm(2, A316387(A004767(n)))`
-/

namespace A317983.P16412235019233329518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A316387 (A004767 n).toNat)

end

end A317983.P16412235019233329518

namespace A317983

/-- `lcm(2, A316387(A004767(n)))` -/
def P16412235019233329518.Spec : Prop :=
  ∀ n, (P16412235019233329518.a n : ℤ) = A317983 (n + 1)

end A317983

/-! ## A317983.P15932535302133888571

`abs(A033999(n)*A316387(A004767(n)))`
-/

namespace A317983.P15932535302133888571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A316387 (A004767 n).toNat|

end

end A317983.P15932535302133888571

namespace A317983

/-- `abs(A033999(n)*A316387(A004767(n)))` -/
def P15932535302133888571.Spec : Prop :=
  ∀ n, P15932535302133888571.a n = A317983 (n + 1)

end A317983

/-! ## A317983.P10842046425773660035

`and(1, A088653(n))*A316387(A004767(n))`
-/

namespace A317983.P10842046425773660035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A088653 n) * A316387 (A004767 n).toNat

end

end A317983.P10842046425773660035

namespace A317983

/-- `and(1, A088653(n))*A316387(A004767(n))` -/
def P10842046425773660035.Spec : Prop :=
  ∀ n, P10842046425773660035.a n = A317983 (n + 1)

end A317983

/-! ## A317983.P12152660939448975377

`7*∑[10*A033581((n+1)²)]`
-/

namespace A317983.P12152660939448975377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A033581 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A317983.P12152660939448975377

namespace A317983

/-- `7*∑[10*A033581((n+1)²)]` -/
def P12152660939448975377.Spec : Prop :=
  ∀ n, P12152660939448975377.a n = A317983 (n + 1)

end A317983

/-!
# A317984: Expansion of g.f. 140*x*(1 + 4*x + x^2) / (1 - x)^5.

The programs for A317984, the canonical program `A317984.P15653232882426572643` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317984 has offset 1).

The definition of A317984 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((140+560x+140x^2)/(1-5x+10x^2-10x^3+5x^4-x^5))` (program `A317984.P15653232882426572643`, by `A317984.P15653232882426572643.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A317984.P15653232882426572643

`ogf((140+560x+140x^2)/(1-5x+10x^2-10x^3+5x^4-x^5))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A317984

/-- `ogf((140+560x+140x^2)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P15653232882426572643.Spec : Prop :=
  ∀ n, P15653232882426572643.a n = A317984 (n + 1)

theorem P15653232882426572643.correct : P15653232882426572643.Spec := by
  intro n
  simp only [A317984, Nat.add_sub_cancel]

end A317984

/-! ## A317984.P9257059830405783756

`35*(n+1)^4+70*(n+1)^3+35*(n+1)²`
-/

namespace A317984.P9257059830405783756
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35 * (n + 1) ^ 4 + 70 * (n + 1) ^ 3 + 35 * (n + 1) ^ 2

end

end A317984.P9257059830405783756

namespace A317984

/-- `35*(n+1)^4+70*(n+1)^3+35*(n+1)²` -/
def P9257059830405783756.Spec : Prop :=
  ∀ n, (P9257059830405783756.a n : ℤ) = A317984 (n + 1)

end A317984

/-! ## A317984.P1943179877023803040

`35*A035287(n+2)`
-/

namespace A317984.P1943179877023803040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  35 * A035287 (n + 2)

end

end A317984.P1943179877023803040

namespace A317984

/-- `35*A035287(n+2)` -/
def P1943179877023803040.Spec : Prop :=
  ∀ n, P1943179877023803040.a n = A317984 (n + 1)

end A317984

/-! ## A317984.P16087181016645354737

`140*A000537(n+1)`
-/

namespace A317984.P16087181016645354737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  140 * A000537 (n + 1)

end

end A317984.P16087181016645354737

namespace A317984

/-- `140*A000537(n+1)` -/
def P16087181016645354737.Spec : Prop :=
  ∀ n, P16087181016645354737.a n = A317984 (n + 1)

end A317984

/-! ## A317984.P6457922821662599635

`∑[7*(n+1)*A195322(n+1)]`
-/

namespace A317984.P6457922821662599635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * (n + 1) : ℤ) * A195322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317984.P6457922821662599635

namespace A317984

/-- `∑[7*(n+1)*A195322(n+1)]` -/
def P6457922821662599635.Spec : Prop :=
  ∀ n, P6457922821662599635.a n = A317984 (n + 1)

end A317984

/-! ## A317984.P15476498135426519409

`Δ[14*A222716(n+1)]`
-/

namespace A317984.P15476498135426519409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * A222716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A317984.P15476498135426519409

namespace A317984

/-- `Δ[14*A222716(n+1)]` -/
def P15476498135426519409.Spec : Prop :=
  ∀ n, P15476498135426519409.a n = A317984 (n + 1)

end A317984

/-! ## A317984.P6676515750417847393

`∑[28*A244725(n+1)]`
-/

namespace A317984.P6676515750417847393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  28 * A244725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317984.P6676515750417847393

namespace A317984

/-- `∑[28*A244725(n+1)]` -/
def P6676515750417847393.Spec : Prop :=
  ∀ n, P6676515750417847393.a n = A317984 (n + 1)

end A317984

/-! ## A317984.P512792105079952357

`(A028895(n+1)+A027468(n+1))*A124080(n+1)`
-/

namespace A317984.P512792105079952357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028895 (n + 1) + A027468 (n + 1)) * A124080 (n + 1)

end

end A317984.P512792105079952357

namespace A317984

/-- `(A028895(n+1)+A027468(n+1))*A124080(n+1)` -/
def P512792105079952357.Spec : Prop :=
  ∀ n, P512792105079952357.a n = A317984 (n + 1)

end A317984

/-! ## A317984.P10545338751246827304

`(A033996(n+1)+A028896(n+1))*A124080(n+1)`
-/

namespace A317984.P10545338751246827304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033996 (n + 1) + A028896 (n + 1)) * A124080 (n + 1)

end

end A317984.P10545338751246827304

namespace A317984

/-- `(A033996(n+1)+A028896(n+1))*A124080(n+1)` -/
def P10545338751246827304.Spec : Prop :=
  ∀ n, P10545338751246827304.a n = A317984 (n + 1)

end A317984

/-! ## A317984.P1488128601555072489

`(A124080(n+1)+A046092(n+1))*A124080(n+1)`
-/

namespace A317984.P1488128601555072489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A124080 (n + 1) + A046092 (n + 1)) * A124080 (n + 1)

end

end A317984.P1488128601555072489

namespace A317984

/-- `(A124080(n+1)+A046092(n+1))*A124080(n+1)` -/
def P1488128601555072489.Spec : Prop :=
  ∀ n, P1488128601555072489.a n = A317984 (n + 1)

end A317984

/-! ## A317984.P14505000010649018458

`(A162940(n+1)-A000217(n+1))*A046092(n+1)`
-/

namespace A317984.P14505000010649018458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A162940 (n + 1) - A000217 (n + 1)) * A046092 (n + 1)

end

end A317984.P14505000010649018458

namespace A317984

/-- `(A162940(n+1)-A000217(n+1))*A046092(n+1)` -/
def P14505000010649018458.Spec : Prop :=
  ∀ n, P14505000010649018458.a n = A317984 (n + 1)

end A317984

/-! ## A317984.P18276115879533170239

`(A194715(n+1)-A028895(n+1))*A163756(n+1)`
-/

namespace A317984.P18276115879533170239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A194715 (n + 1) - A028895 (n + 1)) * A163756 (n + 1)

end

end A317984.P18276115879533170239

namespace A317984

/-- `(A194715(n+1)-A028895(n+1))*A163756(n+1)` -/
def P18276115879533170239.Spec : Prop :=
  ∀ n, P18276115879533170239.a n = A317984 (n + 1)

end A317984

/-! ## A317984.P14776717164170571484

`A033429(n+1)*A033582(n+2)`
-/

namespace A317984.P14776717164170571484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033429 (n + 1) * A033582 (n + 2)

end

end A317984.P14776717164170571484

namespace A317984

/-- `A033429(n+1)*A033582(n+2)` -/
def P14776717164170571484.Spec : Prop :=
  ∀ n, P14776717164170571484.a n = A317984 (n + 1)

end A317984

/-! ## A317984.P62374010444007431

`A316387(4*(n+1))`
-/

namespace A317984.P62374010444007431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316387 (4 * (n + 1))

end

end A317984.P62374010444007431

namespace A317984

/-- `A316387(4*(n+1))` -/
def P62374010444007431.Spec : Prop :=
  ∀ n, P62374010444007431.a n = A317984 (n + 1)

end A317984

/-! ## A317984.P11165809213023794941

`5*A064763(∑[n+1])`
-/

namespace A317984.P11165809213023794941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A064763 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A317984.P11165809213023794941

namespace A317984

/-- `5*A064763(∑[n+1])` -/
def P11165809213023794941.Spec : Prop :=
  ∀ n, P11165809213023794941.a n = A317984 (n + 1)

end A317984

/-!
# A317985: Number of self-avoiding planar walks starting at (0,0), ending at (n,0), remaining in the first quadrant and using steps (0,1), (1,0), (1,1), (-1,1), and (1,-1) such that (0,1) is never used directly before or after (1,0) or (1,1).

The programs for A317985, the canonical program `A317985.P10062987794035754891` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317985 has offset 0).

The definition of A317985 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A317985.P10062987794035754891

`2*n*a(n-1)-(n-2)*a(n-2)-(2*n-5)*a(n-3)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=38`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A317985

/-- `2*n*a(n-1)-(n-2)*a(n-2)-(2*n-5)*a(n-3)` -/
def P10062987794035754891.Spec : Prop :=
  ∀ n, P10062987794035754891.a n = A317985 n

theorem P10062987794035754891.correct : P10062987794035754891.Spec := by
  intro n
  simp only [A317985]

end A317985

/-! ## A317985.P10643964958539452964

`A268318(n)+A000201(A083355(n))`
-/

namespace A317985.P10643964958539452964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268318 n + A000201 (A083355 n).toNat

end

end A317985.P10643964958539452964

namespace A317985

/-- `A268318(n)+A000201(A083355(n))` -/
def P10643964958539452964.Spec : Prop :=
  ∀ n, P10643964958539452964.a n = A317985 n

end A317985

/-!
# A317986: Odd numbers k > 1 such that k == 1 (mod 4), Product_{n>=1} (a(n)-1)/(a(n)+1) = Pi/4, and Limit_{n->oo} a(n+1)/a(n) = 3, where a(1) = 13 (see comments).

The programs for A317986, there is no canonical definition to state claims against.
-/

/-! ## A317986.P7951334311746912537

`A185006(A148186(n+1))`
-/

namespace A317986.P7951334311746912537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185006 (A148186 (n + 1)).toNat

end

end A317986.P7951334311746912537

/-!
# A317988: Farey fraction tree, reading each fraction's numerator first, then its denominator.

The programs for A317988, there is no canonical definition to state claims against.
-/

/-! ## A317988.P4263794295701021354

`A071912(A136565(Δ[A267880(n)]))`
-/

namespace A317988.P4263794295701021354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071912 (A136565 (f1 (n + 1) - f1 n).toNat).toNat

end

end A317988.P4263794295701021354

/-! ## A317988.P97784259279020862

`A001222(or(ceil(ϕ*n), A165799(n)))`
-/

namespace A317988.P97784259279020862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor ⌈Real.goldenRatio * (n : ℝ)⌉ (A165799 n)).toNat

end

end A317988.P97784259279020862

/-! ## A317988.P1335352647621810934

`A091954(n*A091980(n+1)+1)`
-/

namespace A317988.P1335352647621810934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 ((n : ℤ) * A091980 (n + 1) + 1).toNat

end

end A317988.P1335352647621810934

/-! ## A317988.P16161298536806118121

`A139351(A015521(n)%A140504(n))`
-/

namespace A317988.P16161298536806118121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (Int.tmod (A015521 n) (A140504 n)).toNat

end

end A317988.P16161298536806118121

/-! ## A317988.P10492814818794411007

`A083914(A295904(n+1))`
-/

namespace A317988.P10492814818794411007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083914 (A295904 (n + 1)).toNat

end

end A317988.P10492814818794411007

/-!
# A317989: Number of genera of the real quadratic field with discriminant A003658(n), n >= 2.

The programs for A317989, the canonical program `A317989.P12307513283101322343` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317989 has offset 2).

The definition of A317989 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A317991, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A317989.P12307513283101322343

`2^A317991(n+2)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A317989

/-- `2^A317991(n+2)` -/
def P12307513283101322343.Spec : Prop :=
  ∀ n, P12307513283101322343.a n = (A317989 (n + 2) : ℚ)

end A317989

/-! ## A317989.P7607602691400498226

`A000005(∑{p}[A003658(n+2), A001221(#)]!)`
-/

namespace A317989.P7607602691400498226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 p).toNat)

end

end A317989.P7607602691400498226

namespace A317989

/-- `A000005(∑{p}[A003658(n+2), A001221(#)]!)` -/
def P7607602691400498226.Spec : Prop :=
  ∀ n, P7607602691400498226.a n = A317989 (n + 2)

end A317989

/-! ## A317989.P5592327749081504297

`A000079(∑{p}[A003658(n+2), A001221(#)]-1)`
-/

namespace A317989.P5592327749081504297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 p - 1).toNat

end

end A317989.P5592327749081504297

namespace A317989

/-- `A000079(∑{p}[A003658(n+2), A001221(#)]-1)` -/
def P5592327749081504297.Spec : Prop :=
  ∀ n, P5592327749081504297.a n = A317989 (n + 2)

end A317989

/-! ## A317989.P8977113674375336721

`A007875(A003658(n+2))`
-/

namespace A317989.P8977113674375336721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (A003658 (n + 2)).toNat

end

end A317989.P8977113674375336721

namespace A317989

/-- `A007875(A003658(n+2))` -/
def P8977113674375336721.Spec : Prop :=
  ∀ n, P8977113674375336721.a n = A317989 (n + 2)

end A317989

/-! ## A317989.P9281572692518719334

`2*A106032(n+1)-A003646(n+2)`
-/

namespace A317989.P9281572692518719334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A106032 (n + 1) - A003646 (n + 2)

end

end A317989.P9281572692518719334

namespace A317989

/-- `2*A106032(n+1)-A003646(n+2)` -/
def P9281572692518719334.Spec : Prop :=
  ∀ n, P9281572692518719334.a n = A317989 (n + 2)

end A317989

/-! ## A317989.P12891280013777203358

`A029578(A304042(n)+A106032(n+1))`
-/

namespace A317989.P12891280013777203358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A304042 n + A106032 (n + 1)).toNat

end

end A317989.P12891280013777203358

namespace A317989

/-- `A029578(A304042(n)+A106032(n+1))` -/
def P12891280013777203358.Spec : Prop :=
  ∀ n, P12891280013777203358.a n = A317989 (n + 2)

end A317989

/-! ## A317989.P12219372745078355847

`A106032((A239374(n+2)+A106032(n+1))²)`
-/

namespace A317989.P12219372745078355847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106032 ((A239374 (n + 2) + A106032 (n + 1)) ^ 2).toNat

end

end A317989.P12219372745078355847

namespace A317989

/-- `A106032((A239374(n+2)+A106032(n+1))²)` -/
def P12219372745078355847.Spec : Prop :=
  ∀ n, P12219372745078355847.a n = A317989 (n + 2)

end A317989

/-!
# A317990: Number of genera of the real quadratic field Q(sqrt(k)), k squarefree > 1.

The programs for A317990, the canonical program `A317990.P13986122005631344601` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317990 has offset 2).

The definition of A317990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317990.P13986122005631344601

`2^A317992(n+2)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A317990

/-- `2^A317992(n+2)` -/
def P13986122005631344601.Spec : Prop :=
  ∀ n, P13986122005631344601.a n = (A317990 (n + 2) : ℚ)

end A317990

/-! ## A317990.P17557505256733160706

`A011782(A317992(n+2)-(A007318(C(3, n))-2))`
-/

namespace A317990.P17557505256733160706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A317992 (n + 2) - (A007318 (Nat.choose 3 n) - 2)).toNat

end

end A317990.P17557505256733160706

namespace A317990

/-- `A011782(A317992(n+2)-(A007318(C(3, n))-2))` -/
def P17557505256733160706.Spec : Prop :=
  ∀ n, P17557505256733160706.a n = A317990 (n + 2)

end A317990

/-! ## A317990.P12680380615790238327

`A038548(∏{p}[A033198(n+1), #])`
-/

namespace A317990.P12680380615790238327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033198 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A317990.P12680380615790238327

namespace A317990

/-- `A038548(∏{p}[A033198(n+1), #])` -/
def P12680380615790238327.Spec : Prop :=
  ∀ n, P12680380615790238327.a n = A317990 (n + 2)

end A317990

/-! ## A317990.P16835192716066201539

`A341595(∏{p}[A033198(n+1), #])`
-/

namespace A317990.P16835192716066201539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033198 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341595 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A317990.P16835192716066201539

namespace A317990

/-- `A341595(∏{p}[A033198(n+1), #])` -/
def P16835192716066201539.Spec : Prop :=
  ∀ n, P16835192716066201539.a n = A317990 (n + 2)

end A317990

/-! ## A317990.P16235134641074251990

`A007875(A033198(n+1))`
-/

namespace A317990.P16235134641074251990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (A033198 (n + 1)).toNat

end

end A317990.P16235134641074251990

namespace A317990

/-- `A007875(A033198(n+1))` -/
def P16235134641074251990.Spec : Prop :=
  ∀ n, P16235134641074251990.a n = A317990 (n + 2)

end A317990

/-! ## A317990.P15589252113593924015

`gcd(A033757(n), A104888(n+2))`
-/

namespace A317990.P15589252113593924015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033757 n) (A104888 (n + 2))

end

end A317990.P15589252113593924015

namespace A317990

/-- `gcd(A033757(n), A104888(n+2))` -/
def P15589252113593924015.Spec : Prop :=
  ∀ n, (P15589252113593924015.a n : ℤ) = A317990 (n + 2)

end A317990

/-! ## A317990.P21365409939906135

`A106030(n+1)+A106030(n+1)-A104888(n+2)`
-/

namespace A317990.P21365409939906135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106030 (n + 1) + (A106030 (n + 1) - A104888 (n + 2))

end

end A317990.P21365409939906135

namespace A317990

/-- `A106030(n+1)+A106030(n+1)-A104888(n+2)` -/
def P21365409939906135.Spec : Prop :=
  ∀ n, P21365409939906135.a n = A317990 (n + 2)

end A317990

/-!
# A317991: 2-rank of the narrow class group of the real quadratic field with discriminant A003658(n), n >= 2.

The programs for A317991, the canonical program `A317991.P6443215802569184834` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317991 has offset 2).

The definition of A317991 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003658, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A317991.P1333235406774140562

`log2(A317989(n+2))`
-/

namespace A317991.P1333235406774140562
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A317989 (n + 2) : ℝ)

end

end A317991.P1333235406774140562

namespace A317991

/-- `log2(A317989(n+2))` -/
def P1333235406774140562.Spec : Prop :=
  ∀ n, P1333235406774140562.a n = (A317991 (n + 2) : ℝ)

end A317991

/-! ## A317991.P6443215802569184834

`A001221(A003658(n+2))-1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A317991

/-- `A001221(A003658(n+2))-1` -/
def P6443215802569184834.Spec : Prop :=
  ∀ n, P6443215802569184834.a n = A317991 (n + 2)

theorem P6443215802569184834.correct : P6443215802569184834.Spec := by
  intro n
  simp only [A317991, Nat.add_sub_cancel]

end A317991

/-! ## A317991.P17949439729289457991

`A001222(lcm((-1)^n, A317989(n+2)))`
-/

namespace A317991.P17949439729289457991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm ((-1) ^ n) (A317989 (n + 2)))

end

end A317991.P17949439729289457991

namespace A317991

/-- `A001222(lcm((-1)^n, A317989(n+2)))` -/
def P17949439729289457991.Spec : Prop :=
  ∀ n, P17949439729289457991.a n = A317991 (n + 2)

end A317991

/-! ## A317991.P8496905643825124057

`A001222(or(C(n, n²), A317989(n+2)))`
-/

namespace A317991.P8496905643825124057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (Nat.choose n (n ^ 2) : ℤ) (A317989 (n + 2))).toNat

end

end A317991.P8496905643825124057

namespace A317991

/-- `A001222(or(C(n, n²), A317989(n+2)))` -/
def P8496905643825124057.Spec : Prop :=
  ∀ n, P8496905643825124057.a n = A317991 (n + 2)

end A317991

/-! ## A317991.P15470068782377977153

`val(A317989(n+2), A020639(2*(n+1)))`
-/

namespace A317991.P15470068782377977153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A317989 (n + 2)).toNat (A020639 (2 * (n + 1))).toNat

end

end A317991.P15470068782377977153

namespace A317991

/-- `val(A317989(n+2), A020639(2*(n+1)))` -/
def P15470068782377977153.Spec : Prop :=
  ∀ n, (P15470068782377977153.a n : ℤ) = A317991 (n + 2)

end A317991

/-! ## A317991.P4920942795475916844

`A297155(A003658(n+2))`
-/

namespace A317991.P4920942795475916844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (A003658 (n + 2)).toNat

end

end A317991.P4920942795475916844

namespace A317991

/-- `A297155(A003658(n+2))` -/
def P4920942795475916844.Spec : Prop :=
  ∀ n, P4920942795475916844.a n = A317991 (n + 2)

end A317991

/-!
# A317992: 2-rank of the narrow class group of the real quadratic field Q(sqrt(k)), k squarefree > 1.

The programs for A317992, the canonical program `A317992.P5649410725794310829` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317992 has offset 2).

The definition of A317992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317992.P14224741703406196046

`log2(A317990(n+2))`
-/

namespace A317992.P14224741703406196046
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A317990 (n + 2) : ℝ)

end

end A317992.P14224741703406196046

namespace A317992

/-- `log2(A317990(n+2))` -/
def P14224741703406196046.Spec : Prop :=
  ∀ n, P14224741703406196046.a n = (A317992 (n + 2) : ℝ)

end A317992

/-! ## A317992.P5649410725794310829

`A001221(A033198(n+1))-1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A317992

/-- `A001221(A033198(n+1))-1` -/
def P5649410725794310829.Spec : Prop :=
  ∀ n, P5649410725794310829.a n = A317992 (n + 2)

theorem P5649410725794310829.correct : P5649410725794310829.Spec := by
  intro n
  simp only [A317992, Nat.add_sub_cancel]

end A317992

/-! ## A317992.P17309077674473301190

`val(A317990(n+2), 2)*A057427(n)`
-/

namespace A317992.P17309077674473301190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A317990 (n + 2)).toNat 2 : ℤ) * A057427 n

end

end A317992.P17309077674473301190

namespace A317992

/-- `val(A317990(n+2), 2)*A057427(n)` -/
def P17309077674473301190.Spec : Prop :=
  ∀ n, P17309077674473301190.a n = A317992 (n + 2)

end A317992

/-! ## A317992.P4228859914077098317

`val(lcm(A126719(n), A317990(n+2)), 2)`
-/

namespace A317992.P4228859914077098317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.lcm (A126719 n) (A317990 (n + 2))) 2

end

end A317992.P4228859914077098317

namespace A317992

/-- `val(lcm(A126719(n), A317990(n+2)), 2)` -/
def P4228859914077098317.Spec : Prop :=
  ∀ n, (P4228859914077098317.a n : ℤ) = A317992 (n + 2)

end A317992

/-! ## A317992.P6115833229374835643

`val(A317990(n+2), A000005(A007918(n)))`
-/

namespace A317992.P6115833229374835643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A317990 (n + 2)).toNat (A000005 (A007918 n).toNat).toNat

end

end A317992.P6115833229374835643

namespace A317992

/-- `val(A317990(n+2), A000005(A007918(n)))` -/
def P6115833229374835643.Spec : Prop :=
  ∀ n, (P6115833229374835643.a n : ℤ) = A317992 (n + 2)

end A317992

/-! ## A317992.P16816089289694618500

`A297155(A033198(n+1))`
-/

namespace A317992.P16816089289694618500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (A033198 (n + 1)).toNat

end

end A317992.P16816089289694618500

namespace A317992

/-- `A297155(A033198(n+1))` -/
def P16816089289694618500.Spec : Prop :=
  ∀ n, P16816089289694618500.a n = A317992 (n + 2)

end A317992

/-!
# A317993: Number of k such that (Z/kZ)* is isomorphic to (Z/nZ)*, where (Z/nZ)* is the multiplicative group of integers modulo n.

The programs for A317993, there is no canonical definition to state claims against.
-/

/-! ## A317993.P7765307934154050350

`A303755(A320046(n+1))`
-/

namespace A317993.P7765307934154050350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303755 (A320046 (n + 1)).toNat

end

end A317993.P7765307934154050350

/-! ## A317993.P3815779268337155380

`A112605(A325042((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])²)`
-/

namespace A317993.P3815779268337155380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112605 (A325042 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat ^ 2).toNat

end

end A317993.P3815779268337155380

/-!
# A317994: Number of inequivalent leaf-colorings of the free pure symmetric multifunction with e-number n.

The programs for A317994, there is no canonical definition to state claims against.
-/

/-! ## A317994.P10563478808724510560

`A340071(A316112(n+1)^A008611(n))`
-/

namespace A317994.P10563478808724510560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340071 (SequenceMachineLib.roundAway ((A316112 (n + 1) : ℚ) ^ (A008611 n : ℤ))).toNat

end

end A317994.P10563478808724510560

/-! ## A317994.P2982621667956301996

`A340071(A316112(n+1)^A230980(n))`
-/

namespace A317994.P2982621667956301996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340071 (SequenceMachineLib.roundAway ((A316112 (n + 1) : ℚ) ^ (A230980 n : ℤ))).toNat

end

end A317994.P2982621667956301996

/-! ## A317994.P15233681572417836891

`A010126(A316112(n+1)^A296072(n+1))`
-/

namespace A317994.P15233681572417836891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010126 (SequenceMachineLib.roundAway ((A316112 (n + 1) : ℚ) ^ (A296072 (n + 1) : ℤ))).toNat

end

end A317994.P15233681572417836891

/-! ## A317994.P13177508892716661545

`2^A061395(A316112(n+1)^A230980(n))`
-/

namespace A317994.P13177508892716661545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A061395 (SequenceMachineLib.roundAway ((A316112 (n + 1) : ℚ) ^ (A230980 n : ℤ))).toNat : ℤ)

end

end A317994.P13177508892716661545

/-! ## A317994.P15381921586427685096

`A148076(A011776(A231332(n+1)*A316112(n+1)))`
-/

namespace A317994.P15381921586427685096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148076 (A011776 (A231332 (n + 1) * A316112 (n + 1)).toNat).toNat

end

end A317994.P15381921586427685096

/-!
# A317996: Expansion of e.g.f. exp((1 - exp(-3*x))/3).

The programs for A317996, there is no canonical definition to state claims against.
-/

/-! ## A317996.P2682800149665317525

`A309386(∑[n+3]+n+3)`
-/

namespace A317996.P2682800149665317525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309386 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A317996.P2682800149665317525

/-! ## A317996.P1607903816032177046

`A110162(3*n)-A357136(A267604(n))`
-/

namespace A317996.P1607903816032177046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110162 (3 * n) - A357136 (A267604 n).toNat

end

end A317996.P1607903816032177046

/-!
# A317997: G.f. A(x) satisfies: Sum_{n>=0} ( x^n + (-1)^n*A(x) )^n = 1.

The programs for A317997, there is no canonical definition to state claims against.
-/

/-! ## A317997.P11976224752300056865

`A003056(A129324(n))+A000108(n)`
-/

namespace A317997.P11976224752300056865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A129324 n).toNat + A000108 n

end

end A317997.P11976224752300056865

/-! ## A317997.P5295187512232448792

`A256502(A247333(n+1)+A001629(n))`
-/

namespace A317997.P5295187512232448792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A247333 (n + 1) + A001629 n).toNat

end

end A317997.P5295187512232448792

/-! ## A317997.P7940797452570076785

`A226762(A001168(n+1))+Δ[A103140(n+1)]`
-/

namespace A317997.P7940797452570076785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A001168 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A317997.P7940797452570076785

/-!
# A317998: G.f. A(x) satisfies: Sum_{n>=1} (x + (-1)^n*A(x))^n = 0.

The programs for A317998, there is no canonical definition to state claims against.
-/

/-! ## A317998.P18006261544099596149

`A000010(A111546(n)+A000351(n))`
-/

namespace A317998.P18006261544099596149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A111546 n + A000351 n).toNat

end

end A317998.P18006261544099596149

/-! ## A317998.P11420109524427941460

`A000010(A195948(n+1)+A111546(n))`
-/

namespace A317998.P11420109524427941460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A195948 (n + 1) + A111546 n).toNat

end

end A317998.P11420109524427941460

/-! ## A317998.P13562272201480021297

`A002024(A081654(n))*A049140(n+1)`
-/

namespace A317998.P13562272201480021297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A081654 n).toNat * A049140 (n + 1)

end

end A317998.P13562272201480021297

/-!
# A317999: G.f. A(x) satisfies: Sum_{n>=1} (-1)^n * (A(x) - (-1)^n*A(-x))^n = 0.

The programs for A317999, there is no canonical definition to state claims against.
-/

/-! ## A317999.P2457270628263630754

`lcm(2^n, A109919(ceil(2^(n-1))))`
-/

namespace A317999.P2457270628263630754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ n : ℤ) (A109919 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat)

end

end A317999.P2457270628263630754

/-! ## A317999.P6828261290675887658

`lcm((-2)^n, A360006(ceil(2^(n-1))))`
-/

namespace A317999.P6828261290675887658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-2) ^ n) (A360006 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat)

end

end A317999.P6828261290675887658

/-! ## A317999.P16658494819174323135

`2^n*A111654(A000255(n))`
-/

namespace A317999.P16658494819174323135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A111654 (A000255 n).toNat

end

end A317999.P16658494819174323135

