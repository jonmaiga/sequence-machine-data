import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C005
import Seq.B000.C010
import Seq.B000.C021
import Seq.B000.C027
import Seq.B000.C031
import Seq.B001.C000
import Seq.B002.C002
import Seq.B003.C000
import Seq.B005.C001
import Seq.Opaque.C006
import Seq.Opaque.C012
import Seq.Opaque.C015
import Seq.Opaque.C020

/-!
# A172802: Number of n X n 0..4 arrays with row sums 16 and column sums 16.

The programs for A172802, there is no canonical definition to state claims against.
-/

/-! ## A172802.P14649531587453357922

`floor(n/3)*A257493(A000254(n))`
-/

namespace A172802.P14649531587453357922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋ * A257493 (A000254 n).toNat

end

end A172802.P14649531587453357922

/-!
# A172806: Number of n X n of nonnegative integers with all row and column sums equal to 4.

The programs for A172806, there is no canonical definition to state claims against.
-/

/-! ## A172806.P2424677603821473334

`A257493(A052905(n+2))`
-/

namespace A172806.P2424677603821473334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (A052905 (n + 2)).toNat

end

end A172806.P2424677603821473334

/-! ## A172806.P13726916164978138034

`A257493(eq[4, A025581(n)])`
-/

namespace A172806.P13726916164978138034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172806.P13726916164978138034

/-! ## A172806.P8849143487137477333

`A257493(eq[5, A193739(n)])`
-/

namespace A172806.P8849143487137477333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172806.P8849143487137477333

/-! ## A172806.P2779808101574128682

`A257493(eq[9, A099375(n)])`
-/

namespace A172806.P2779808101574128682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172806.P2779808101574128682

/-! ## A172806.P5274691085694290782

`A257493(eq[16, A130321(n)])`
-/

namespace A172806.P5274691085694290782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172806.P5274691085694290782

/-!
# A172816: Number of n X 4 0..4 arrays with row sums 4 and column sums n.

The programs for A172816, there is no canonical definition to state claims against.
-/

/-! ## A172816.P3419780943031817998

`A333901(A052905(n+3))`
-/

namespace A172816.P3419780943031817998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333901 (A052905 (n + 3)).toNat

end

end A172816.P3419780943031817998

/-! ## A172816.P4233881351730390135

`A333901(A056115(n)+19)`
-/

namespace A172816.P4233881351730390135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333901 (A056115 n + 19).toNat

end

end A172816.P4233881351730390135

/-! ## A172816.P13193409682460140406

`A333901(eq[3, A219347(n)])`
-/

namespace A172816.P13193409682460140406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333901 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172816.P13193409682460140406

/-! ## A172816.P7745917132260101987

`A333901(eq[5, A193592(n)])`
-/

namespace A172816.P7745917132260101987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333901 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172816.P7745917132260101987

/-! ## A172816.P1506567891705154797

`A333901(eq[16, Δ[A059268(n)]])`
-/

namespace A172816.P1506567891705154797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333901 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172816.P1506567891705154797

/-!
# A172862: Number of n X n 0..5 arrays with row sums 5 and column sums 5.

The programs for A172862, there is no canonical definition to state claims against.
-/

/-! ## A172862.P7450597164253781854

`A257493(A055999(n+3))`
-/

namespace A172862.P7450597164253781854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (A055999 (n + 3)).toNat

end

end A172862.P7450597164253781854

/-! ## A172862.P7771159815480774269

`A257493(eq[4, A212551(n)])`
-/

namespace A172862.P7771159815480774269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172862.P7771159815480774269

/-! ## A172862.P452763369787931588

`A257493(eq[5, A025581(n)])`
-/

namespace A172862.P452763369787931588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172862.P452763369787931588

/-! ## A172862.P17652225522790319655

`A257493(eq[11, A099375(n)])`
-/

namespace A172862.P17652225522790319655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172862.P17652225522790319655

/-! ## A172862.P8306622407700582160

`A257493(Δ[A023551(n+1)])`
-/

namespace A172862.P8306622407700582160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (f1 (n + 1) - f1 n).toNat

end

end A172862.P8306622407700582160

/-!
# A172868: Number of n X 5 0..5 arrays with row sums 5 and column sums n.

The programs for A172868, there is no canonical definition to state claims against.
-/

/-! ## A172868.P14994031539256486310

`A333901(A055999(n+4))`
-/

namespace A172868.P14994031539256486310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333901 (A055999 (n + 4)).toNat

end

end A172868.P14994031539256486310

/-! ## A172868.P6623084927777200311

`A333901(A167499(n+5))`
-/

namespace A172868.P6623084927777200311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333901 (A167499 (n + 5)).toNat

end

end A172868.P6623084927777200311

/-! ## A172868.P8169586475811604372

`A333901(eq[4, A219347(n)])`
-/

namespace A172868.P8169586475811604372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333901 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172868.P8169586475811604372

/-! ## A172868.P40003293374185520

`A333901(eq[6, A193592(n)])`
-/

namespace A172868.P40003293374185520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333901 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172868.P40003293374185520

/-! ## A172868.P2355763909856481714

`A333901(A052905(n+3)+10)`
-/

namespace A172868.P2355763909856481714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333901 (A052905 (n + 3) + 10).toNat

end

end A172868.P2355763909856481714

/-!
# A172873: Number of n X n 0..5 arrays with row sums n and column sums n.

The programs for A172873, there is no canonical definition to state claims against.
-/

/-! ## A172873.P1536157469704590710

`A110058(n*gcd(5, n)+1)`
-/

namespace A172873.P1536157469704590710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110058 (n * Nat.gcd 5 n + 1)

end

end A172873.P1536157469704590710

/-!
# A172894: Number of n X n 0..6 arrays with row sums 6 and column sums 6.

The programs for A172894, there is no canonical definition to state claims against.
-/

/-! ## A172894.P5983384549907240630

`A257493(eq[6, A025581(n)])`
-/

namespace A172894.P5983384549907240630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172894.P5983384549907240630

/-! ## A172894.P1598973218832783800

`A257493(eq[7, A193739(n)])`
-/

namespace A172894.P1598973218832783800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172894.P1598973218832783800

/-! ## A172894.P11059490596567191830

`A257493(eq[13, A099375(n)])`
-/

namespace A172894.P11059490596567191830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172894.P11059490596567191830

/-! ## A172894.P10087928303130437667

`A257493(eq[6, log2(A130321(n))])`
-/

namespace A172894.P10087928303130437667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A130321 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A172894.P10087928303130437667

/-! ## A172894.P1703331865725961065

`A257493(eq[7, A004736(n+1)])`
-/

namespace A172894.P1703331865725961065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172894.P1703331865725961065

