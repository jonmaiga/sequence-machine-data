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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
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

/-!
# A244800: Number of moduli m such that (prime(n) mod m) is even, where 1 <= m < prime(n).

The programs for A244800, there is no canonical definition to state claims against.
-/

/-! ## A244800.P6157860222348156115

`Δ[A007504(n)]-A244799(n+1)`
-/

namespace A244800.P6157860222348156115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A244799 (n + 1)

end

end A244800.P6157860222348156115

/-! ## A244800.P5080287978388428248

`p?[A014681(n)]-A244799(n+1)`
-/

namespace A244800.P5080287978388428248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A244799 (n + 1)

end

end A244800.P5080287978388428248

/-! ## A244800.P10863667608489651001

`A000040(n+1)-A244799(n+1)`
-/

namespace A244800.P10863667608489651001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A244799 (n + 1)

end

end A244800.P10863667608489651001

/-! ## A244800.P4361980087167565330

`A008578(n+2)-A244799(n+1)`
-/

namespace A244800.P4361980087167565330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A244799 (n + 1)

end

end A244800.P4361980087167565330

/-! ## A244800.P9620750195430989902

`p?[A000961(n+1)]-A244799(n+1)`
-/

namespace A244800.P9620750195430989902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A244799 (n + 1)

end

end A244800.P9620750195430989902

/-! ## A244800.P808774847780177414

`p?[A210882(n+1)]-A244799(n+1)`
-/

namespace A244800.P808774847780177414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A244799 (n + 1)

end

end A244800.P808774847780177414

/-! ## A244800.P7514200585518208193

`p?[(n+1)*A001222(n+1)]-A244799(n+1)`
-/

namespace A244800.P7514200585518208193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A244799 (n + 1)

end

end A244800.P7514200585518208193

/-! ## A244800.P15390324014130892099

`record[A052369(n+1)]-A244799(n+1)`
-/

namespace A244800.P15390324014130892099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A244799 (n + 1)

end

end A244800.P15390324014130892099

/-! ## A244800.P16115540859262979580

`p?[A302026(n+1)]-A244799(n+1)`
-/

namespace A244800.P16115540859262979580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A244799 (n + 1)

end

end A244800.P16115540859262979580

/-! ## A244800.P9507516325817931047

`A332801(A000040(n+1))+2`
-/

namespace A244800.P9507516325817931047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332801 (A000040 (n + 1)).toNat + 2

end

end A244800.P9507516325817931047

/-! ## A244800.P1432043435012678558

`A332801(record[A020639(n+2)])+2`
-/

namespace A244800.P1432043435012678558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332801 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 2

end

end A244800.P1432043435012678558

/-!
# A244801: Smallest m such that for the prime p = prime(n) the congruence F_(p-(p/5)) == mp (mod p^2) holds (i.e., smallest m such that prime(n) is a near-Wall-Sun-Sun prime), where F_k is the k-th Fibonacci number and (p/5) is the Legendre symbol.

The programs for A244801, there is no canonical definition to state claims against.
-/

/-! ## A244801.P18097736218086142453

`A113650(n+1)/A000040(n+1)`
-/

namespace A244801.P18097736218086142453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113650 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A244801.P18097736218086142453

/-! ## A244801.P17156204350616521438

`(n+1)/A033286(n+1)*A113650(n+1)`
-/

namespace A244801.P17156204350616521438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A033286 (n + 1) : ℚ) * (A113650 (n + 1) : ℚ)

end

end A244801.P17156204350616521438

/-! ## A244801.P7555810639671164490

`A113650(n+1)/A008578(n+2)`
-/

namespace A244801.P7555810639671164490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113650 (n + 1) : ℚ) / (A008578 (n + 2) : ℚ)

end

end A244801.P7555810639671164490

/-! ## A244801.P8099206478013947753

`A113650(n+1)/p?[A000961(n+1)]`
-/

namespace A244801.P8099206478013947753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113650 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A244801.P8099206478013947753

/-! ## A244801.P6456061538039267989

`A113650(n+1)/p?[(n+1)*A001222(n+1)]`
-/

namespace A244801.P6456061538039267989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113650 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A244801.P6456061538039267989

/-! ## A244801.P2544323059352613106

`A113650(n+1)/p?[A326066(n+1)]`
-/

namespace A244801.P2544323059352613106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326066 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113650 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A244801.P2544323059352613106

/-! ## A244801.P9555096438753618771

`A113649(A182986(n+2))/A182986(n+2)`
-/

namespace A244801.P9555096438753618771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113649 (A182986 (n + 2)).toNat : ℚ) / (A182986 (n + 2) : ℚ)

end

end A244801.P9555096438753618771

/-! ## A244801.P9189510401435265183

`A113650(n+1)/p?[A117909(n)]`
-/

namespace A244801.P9189510401435265183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117909 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113650 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A244801.P9189510401435265183

/-! ## A244801.P14156000169265088868

`A113650(n+1)/p?[A000463(n+1)]`
-/

namespace A244801.P14156000169265088868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113650 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A244801.P14156000169265088868

/-! ## A244801.P13664385687802209638

`A302776(A113650(n+1))`
-/

namespace A244801.P13664385687802209638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302776 (A113650 (n + 1)).toNat

end

end A244801.P13664385687802209638

/-!
# A244802: The 60-degree spoke (or ray) of a hexagonal spiral of Ulam.

The programs for A244802, the canonical program `A244802.P1468068994303542896` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244802 has offset 1).

The definition of A244802 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244802.P1468068994303542896

`12*(n+1)²-27*(n+1)+16`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A244802

/-- `12*(n+1)²-27*(n+1)+16` -/
def P1468068994303542896.Spec : Prop :=
  ∀ n, P1468068994303542896.a n = A244802 (n + 1)

theorem P1468068994303542896.correct : P1468068994303542896.Spec := by
  intro n
  simp only [A244802, Nat.add_sub_cancel]

end A244802

/-! ## A244802.P6682940917958672874

`∑[a(n-1)+24]` with `a(0)=1, a(1)=9`
-/

namespace A244802.P6682940917958672874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244802.P6682940917958672874

namespace A244802

/-- `∑[a(n-1)+24]` -/
def P6682940917958672874.Spec : Prop :=
  ∀ n, (P6682940917958672874.a n : ℤ) = A244802 (n + 1)

end A244802

/-! ## A244802.P5283466526998057618

`-xor(n*(12*n-3), -1)`
-/

namespace A244802.P5283466526998057618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ((n : ℤ) * ((12 * n : ℤ) - 3)) (-1)

end

end A244802.P5283466526998057618

namespace A244802

/-- `-xor(n*(12*n-3), -1)` -/
def P5283466526998057618.Spec : Prop :=
  ∀ n, P5283466526998057618.a n = A244802 (n + 1)

end A244802

/-! ## A244802.P14509147245381817585

`abs(∑[n]-A081587(n))`
-/

namespace A244802.P14509147245381817585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A081587 n|

end

end A244802.P14509147245381817585

namespace A244802

/-- `abs(∑[n]-A081587(n))` -/
def P14509147245381817585.Spec : Prop :=
  ∀ n, P14509147245381817585.a n = A244802 (n + 1)

end A244802

/-! ## A244802.P17429319887952497598

`abs(n-(A185918(n)+2))`
-/

namespace A244802.P17429319887952497598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - (A185918 n + 2)|

end

end A244802.P17429319887952497598

namespace A244802

/-- `abs(n-(A185918(n)+2))` -/
def P17429319887952497598.Spec : Prop :=
  ∀ n, P17429319887952497598.a n = A244802 (n + 1)

end A244802

/-! ## A244802.P1407813603934582507

`abs(11*n-A014641(n))`
-/

namespace A244802.P1407813603934582507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(11 * n : ℤ) - A014641 n|

end

end A244802.P1407813603934582507

namespace A244802

/-- `abs(11*n-A014641(n))` -/
def P1407813603934582507.Spec : Prop :=
  ∀ n, P1407813603934582507.a n = A244802 (n + 1)

end A244802

/-! ## A244802.P14835940284807448882

`ceil(A174371(n)/3+n)`
-/

namespace A244802.P14835940284807448882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A174371 n : ℚ) / 3 + (n : ℚ)⌉

end

end A244802.P14835940284807448882

namespace A244802

/-- `ceil(A174371(n)/3+n)` -/
def P14835940284807448882.Spec : Prop :=
  ∀ n, P14835940284807448882.a n = A244802 (n + 1)

end A244802

/-! ## A244802.P13046801162383386373

`floor(sqrt(A014794(n))+n+1)`
-/

namespace A244802.P13046801162383386373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A014794 n : ℝ) + (n + 1 : ℝ)⌋

end

end A244802.P13046801162383386373

namespace A244802

/-- `floor(sqrt(A014794(n))+n+1)` -/
def P13046801162383386373.Spec : Prop :=
  ∀ n, P13046801162383386373.a n = A244802 (n + 1)

end A244802

/-! ## A244802.P2987491336273438412

`abs(A014642(n)+Δ[n²]-n)`
-/

namespace A244802.P2987491336273438412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014642 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ))|

end

end A244802.P2987491336273438412

namespace A244802

/-- `abs(A014642(n)+Δ[n²]-n)` -/
def P2987491336273438412.Spec : Prop :=
  ∀ n, P2987491336273438412.a n = A244802 (n + 1)

end A244802

/-! ## A244802.P6088470604224210999

`(A062783(n)+1)%(4*(n+1))²`
-/

namespace A244802.P6088470604224210999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062783 n + 1) ((4 * (n + 1)) ^ 2 : ℤ)

end

end A244802.P6088470604224210999

namespace A244802

/-- `(A062783(n)+1)%(4*(n+1))²` -/
def P6088470604224210999.Spec : Prop :=
  ∀ n, P6088470604224210999.a n = A244802 (n + 1)

end A244802

/-! ## A244802.P13459865000599931847

`abs(n*(12*n-2)-A023443(n))`
-/

namespace A244802.P13459865000599931847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * ((12 * n : ℤ) - 2) - A023443 n|

end

end A244802.P13459865000599931847

namespace A244802

/-- `abs(n*(12*n-2)-A023443(n))` -/
def P13459865000599931847.Spec : Prop :=
  ∀ n, P13459865000599931847.a n = A244802 (n + 1)

end A244802

/-! ## A244802.P14984027875208275630

`abs(A022282(n)-A046691(n))`
-/

namespace A244802.P14984027875208275630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A022282 n - A046691 n|

end

end A244802.P14984027875208275630

namespace A244802

/-- `abs(A022282(n)-A046691(n))` -/
def P14984027875208275630.Spec : Prop :=
  ∀ n, P14984027875208275630.a n = A244802 (n + 1)

end A244802

/-! ## A244802.P1374510429123125393

`abs(A081587(n)-A000217(n))`
-/

namespace A244802.P1374510429123125393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081587 n - A000217 n|

end

end A244802.P1374510429123125393

namespace A244802

/-- `abs(A081587(n)-A000217(n))` -/
def P1374510429123125393.Spec : Prop :=
  ∀ n, P1374510429123125393.a n = A244802 (n + 1)

end A244802

/-! ## A244802.P13692968825781336819

`abs(A001478(n+1)-A014642(n))`
-/

namespace A244802.P13692968825781336819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001478 (n + 1) - A014642 n|

end

end A244802.P13692968825781336819

namespace A244802

/-- `abs(A001478(n+1)-A014642(n))` -/
def P13692968825781336819.Spec : Prop :=
  ∀ n, P13692968825781336819.a n = A244802 (n + 1)

end A244802

/-! ## A244802.P845063822216326125

`abs(A143861(n+1)-A016742(n))`
-/

namespace A244802.P845063822216326125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143861 (n + 1) - A016742 n|

end

end A244802.P845063822216326125

namespace A244802

/-- `abs(A143861(n+1)-A016742(n))` -/
def P845063822216326125.Spec : Prop :=
  ∀ n, P845063822216326125.a n = A244802 (n + 1)

end A244802

/-! ## A244802.P10311670707360364151

`root(A056106(2*n)-n, 2)²`
-/

namespace A244802.P10311670707360364151
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A056106 (2 * n) - (n : ℤ) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A244802.P10311670707360364151

namespace A244802

/-- `root(A056106(2*n)-n, 2)²` -/
def P10311670707360364151.Spec : Prop :=
  ∀ n, P10311670707360364151.a n = (A244802 (n + 1) : ℝ)

end A244802

/-! ## A244802.P15143712766745443093

`(A056106(2*n)-n)%A139619(n)²`
-/

namespace A244802.P15143712766745443093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056106 (2 * n) - (n : ℤ)) (A139619 n ^ 2)

end

end A244802.P15143712766745443093

namespace A244802

/-- `(A056106(2*n)-n)%A139619(n)²` -/
def P15143712766745443093.Spec : Prop :=
  ∀ n, P15143712766745443093.a n = A244802 (n + 1)

end A244802

/-! ## A244802.P14511346306347869250

`∑[Δ[A000567(abs(1-n)+n-1)]+1]`
-/

namespace A244802.P14511346306347869250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 (|1 - (n : ℤ)| + ((n : ℤ) - 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244802.P14511346306347869250

namespace A244802

/-- `∑[Δ[A000567(abs(1-n)+n-1)]+1]` -/
def P14511346306347869250.Spec : Prop :=
  ∀ n, P14511346306347869250.a n = A244802 (n + 1)

end A244802

/-! ## A244802.P10296410160657979082

`∑[A017077(record[n-dr(3*n)])]`
-/

namespace A244802.P10296410160657979082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.digitalRoot (3 * n : ℤ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244802.P10296410160657979082

namespace A244802

/-- `∑[A017077(record[n-dr(3*n)])]` -/
def P10296410160657979082.Spec : Prop :=
  ∀ n, P10296410160657979082.a n = A244802 (n + 1)

end A244802

/-!
# A244803: The 360 degree spoke (or ray) of a hexagonal spiral of Ulam.

The programs for A244803, the canonical program `A244803.P8350523515693649205` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244803 has offset 1).

The definition of A244803 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244803.P8350523515693649205

`12*(n+1)²-25*(n+1)+14`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A244803

/-- `12*(n+1)²-25*(n+1)+14` -/
def P8350523515693649205.Spec : Prop :=
  ∀ n, P8350523515693649205.a n = A244803 (n + 1)

theorem P8350523515693649205.correct : P8350523515693649205.Spec := by
  intro n
  simp only [A244803, Nat.add_sub_cancel]

end A244803

/-! ## A244803.P271510387992553864

`∑[a(n-1)+24]` with `a(0)=1, a(1)=11`
-/

namespace A244803.P271510387992553864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244803.P271510387992553864

namespace A244803

/-- `∑[a(n-1)+24]` -/
def P271510387992553864.Spec : Prop :=
  ∀ n, (P271510387992553864.a n : ℤ) = A244803 (n + 1)

end A244803

/-! ## A244803.P6806190603393246464

`floor(3/acot(2*n)²-n)`
-/

namespace A244803.P6806190603393246464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot (2 * n : ℝ) ^ 2 - (n : ℝ)⌋

end

end A244803.P6806190603393246464

namespace A244803

/-- `floor(3/acot(2*n)²-n)` -/
def P6806190603393246464.Spec : Prop :=
  ∀ n, P6806190603393246464.a n = A244803 (n + 1)

end A244803

/-! ## A244803.P10938722274531043567

`abs(n-A158480(n))`
-/

namespace A244803.P10938722274531043567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A158480 n|

end

end A244803.P10938722274531043567

namespace A244803

/-- `abs(n-A158480(n))` -/
def P10938722274531043567.Spec : Prop :=
  ∀ n, P10938722274531043567.a n = A244803 (n + 1)

end A244803

/-! ## A244803.P4065334927989214171

`abs(n-(A135453(n)+1))`
-/

namespace A244803.P4065334927989214171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - (A135453 n + 1)|

end

end A244803.P4065334927989214171

namespace A244803

/-- `abs(n-(A135453(n)+1))` -/
def P4065334927989214171.Spec : Prop :=
  ∀ n, P4065334927989214171.a n = A244803 (n + 1)

end A244803

/-! ## A244803.P14273598386115024803

`abs(A185918(n)+2+n)`
-/

namespace A244803.P14273598386115024803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A185918 n + 2 + (n : ℤ)|

end

end A244803.P14273598386115024803

namespace A244803

/-- `abs(A185918(n)+2+n)` -/
def P14273598386115024803.Spec : Prop :=
  ∀ n, P14273598386115024803.a n = A244803 (n + 1)

end A244803

/-! ## A244803.P9510041424290840292

`abs(n-(A158463(n)+2))`
-/

namespace A244803.P9510041424290840292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - (A158463 n + 2)|

end

end A244803.P9510041424290840292

namespace A244803

/-- `abs(n-(A158463(n)+2))` -/
def P9510041424290840292.Spec : Prop :=
  ∀ n, P9510041424290840292.a n = A244803 (n + 1)

end A244803

/-! ## A244803.P11942654290848833083

`ceil(A010014(n)/2-n)`
-/

namespace A244803.P11942654290848833083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A010014 n : ℚ) / 2 - (n : ℚ)⌉

end

end A244803.P11942654290848833083

namespace A244803

/-- `ceil(A010014(n)/2-n)` -/
def P11942654290848833083.Spec : Prop :=
  ∀ n, P11942654290848833083.a n = A244803 (n + 1)

end A244803

/-! ## A244803.P3799833966175408032

`ceil(A158547(n)/2-n)`
-/

namespace A244803.P3799833966175408032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158547 n : ℚ) / 2 - (n : ℚ)⌉

end

end A244803.P3799833966175408032

namespace A244803

/-- `ceil(A158547(n)/2-n)` -/
def P3799833966175408032.Spec : Prop :=
  ∀ n, P3799833966175408032.a n = A244803 (n + 1)

end A244803

/-! ## A244803.P8694226284286752081

`abs(2*n-A244804(n+1))`
-/

namespace A244803.P8694226284286752081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - A244804 (n + 1)|

end

end A244803.P8694226284286752081

namespace A244803

/-- `abs(2*n-A244804(n+1))` -/
def P8694226284286752081.Spec : Prop :=
  ∀ n, P8694226284286752081.a n = A244803 (n + 1)

end A244803

/-! ## A244803.P11456518078559458393

`abs(A033577(n)-n-7*n)`
-/

namespace A244803.P11456518078559458393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033577 n - (n : ℤ) - (7 * n : ℤ)|

end

end A244803.P11456518078559458393

namespace A244803

/-- `abs(A033577(n)-n-7*n)` -/
def P11456518078559458393.Spec : Prop :=
  ∀ n, P11456518078559458393.a n = A244803 (n + 1)

end A244803

/-! ## A244803.P7828467527232143170

`floor(A014641(n)-n/(1/3)²)`
-/

namespace A244803.P7828467527232143170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014641 n : ℚ) - (n : ℚ) / ((1 : ℚ) / 3) ^ 2⌋

end

end A244803.P7828467527232143170

namespace A244803

/-- `floor(A014641(n)-n/(1/3)²)` -/
def P7828467527232143170.Spec : Prop :=
  ∀ n, P7828467527232143170.a n = A244803 (n + 1)

end A244803

/-! ## A244803.P11276396896323324818

`abs(3*n*A008574(n)+1-n)`
-/

namespace A244803.P11276396896323324818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 * n : ℤ) * A008574 n + 1 - (n : ℤ)|

end

end A244803.P11276396896323324818

namespace A244803

/-- `abs(3*n*A008574(n)+1-n)` -/
def P11276396896323324818.Spec : Prop :=
  ∀ n, P11276396896323324818.a n = A244803 (n + 1)

end A244803

/-! ## A244803.P427128328236905635

`abs(6*n*A004277(n)+1-n)`
-/

namespace A244803.P427128328236905635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(6 * n : ℤ) * A004277 n + 1 - (n : ℤ)|

end

end A244803.P427128328236905635

namespace A244803

/-- `abs(6*n*A004277(n)+1-n)` -/
def P427128328236905635.Spec : Prop :=
  ∀ n, P427128328236905635.a n = A244803 (n + 1)

end A244803

/-! ## A244803.P9088540048308128749

`abs((3*n-1)*(A004767(n)-2)+2)`
-/

namespace A244803.P9088540048308128749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((3 * n : ℤ) - 1) * (A004767 n - 2) + 2|

end

end A244803.P9088540048308128749

namespace A244803

/-- `abs((3*n-1)*(A004767(n)-2)+2)` -/
def P9088540048308128749.Spec : Prop :=
  ∀ n, P9088540048308128749.a n = A244803 (n + 1)

end A244803

/-! ## A244803.P8276070803253537941

`abs(A005408(n)-A244804(n+1)-1)`
-/

namespace A244803.P8276070803253537941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005408 n - A244804 (n + 1) - 1|

end

end A244803.P8276070803253537941

namespace A244803

/-- `abs(A005408(n)-A244804(n+1)-1)` -/
def P8276070803253537941.Spec : Prop :=
  ∀ n, P8276070803253537941.a n = A244803 (n + 1)

end A244803

/-! ## A244803.P573198710618600858

`Δ[Δ[(1-n)²²]-C(n+1, 2)]`
-/

namespace A244803.P573198710618600858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (Nat.choose (n + 1) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A244803.P573198710618600858

namespace A244803

/-- `Δ[Δ[(1-n)²²]-C(n+1, 2)]` -/
def P573198710618600858.Spec : Prop :=
  ∀ n, P573198710618600858.a n = A244803 (n + 1)

end A244803

/-! ## A244803.P7931178729724188515

`abs(3*A000290(2*n)+1-n)`
-/

namespace A244803.P7931178729724188515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * A000290 (2 * n) + 1 - (n : ℤ)|

end

end A244803.P7931178729724188515

namespace A244803

/-- `abs(3*A000290(2*n)+1-n)` -/
def P7931178729724188515.Spec : Prop :=
  ∀ n, P7931178729724188515.a n = A244803 (n + 1)

end A244803

/-! ## A244803.P5633257063163255826

`3*(A056105(2*n)/3+n)`
-/

namespace A244803.P5633257063163255826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A056105 (2 * n) : ℚ) / 3 + (n : ℚ))

end

end A244803.P5633257063163255826

namespace A244803

/-- `3*(A056105(2*n)/3+n)` -/
def P5633257063163255826.Spec : Prop :=
  ∀ n, P5633257063163255826.a n = (A244803 (n + 1) : ℚ)

end A244803

/-!
# A244804: The 300-degree spoke (or ray) of a hexagonal spiral of Ulam.

The programs for A244804, the canonical program `A244804.P18087651801228786928` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244804 has offset 1).

The definition of A244804 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244804.P18087651801228786928

`12*(n+1)²-23*(n+1)+12`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A244804

/-- `12*(n+1)²-23*(n+1)+12` -/
def P18087651801228786928.Spec : Prop :=
  ∀ n, P18087651801228786928.a n = A244804 (n + 1)

theorem P18087651801228786928.correct : P18087651801228786928.Spec := by
  intro n
  simp only [A244804, Nat.add_sub_cancel]

end A244804

/-! ## A244804.P4013801068086456857

`∑[a(n-1)+24]` with `a(0)=1, a(1)=13`
-/

namespace A244804.P4013801068086456857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 13] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244804.P4013801068086456857

namespace A244804

/-- `∑[a(n-1)+24]` -/
def P4013801068086456857.Spec : Prop :=
  ∀ n, (P4013801068086456857.a n : ℤ) = A244804 (n + 1)

end A244804

/-! ## A244804.P9193987540855542184

`abs(n-A194454(n))`
-/

namespace A244804.P9193987540855542184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A194454 n|

end

end A244804.P9193987540855542184

namespace A244804

/-- `abs(n-A194454(n))` -/
def P9193987540855542184.Spec : Prop :=
  ∀ n, P9193987540855542184.a n = A244804 (n + 1)

end A244804

/-! ## A244804.P496290869777200782

`∑[or(1, A101103(n+1))]`
-/

namespace A244804.P496290869777200782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A101103 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244804.P496290869777200782

namespace A244804

/-- `∑[or(1, A101103(n+1))]` -/
def P496290869777200782.Spec : Prop :=
  ∀ n, P496290869777200782.a n = A244804 (n + 1)

end A244804

/-! ## A244804.P13418452592906667274

`abs(A158463(n)+2+n)`
-/

namespace A244804.P13418452592906667274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158463 n + 2 + (n : ℤ)|

end

end A244804.P13418452592906667274

namespace A244804

/-- `abs(A158463(n)+2+n)` -/
def P13418452592906667274.Spec : Prop :=
  ∀ n, P13418452592906667274.a n = A244804 (n + 1)

end A244804

/-! ## A244804.P6695945312254093070

`ceil(A010014(n)/2+n)`
-/

namespace A244804.P6695945312254093070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A010014 n : ℚ) / 2 + (n : ℚ)⌉

end

end A244804.P6695945312254093070

namespace A244804

/-- `ceil(A010014(n)/2+n)` -/
def P6695945312254093070.Spec : Prop :=
  ∀ n, P6695945312254093070.a n = A244804 (n + 1)

end A244804

/-! ## A244804.P13992759887010118117

`ceil(A158547(n)/2+n)`
-/

namespace A244804.P13992759887010118117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158547 n : ℚ) / 2 + (n : ℚ)⌉

end

end A244804.P13992759887010118117

namespace A244804

/-- `ceil(A158547(n)/2+n)` -/
def P13992759887010118117.Spec : Prop :=
  ∀ n, P13992759887010118117.a n = A244804 (n + 1)

end A244804

/-! ## A244804.P4354579909549246382

`∑[3*record[4*A006257(n)]+1]`
-/

namespace A244804.P4354579909549246382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A006257 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244804.P4354579909549246382

namespace A244804

/-- `∑[3*record[4*A006257(n)]+1]` -/
def P4354579909549246382.Spec : Prop :=
  ∀ n, P4354579909549246382.a n = A244804 (n + 1)

end A244804

/-! ## A244804.P1911941380548931205

`abs(A244803(n+1)+comp[2*n]-1)`
-/

namespace A244804.P1911941380548931205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A244803 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - 1|

end

end A244804.P1911941380548931205

namespace A244804

/-- `abs(A244803(n+1)+comp[2*n]-1)` -/
def P1911941380548931205.Spec : Prop :=
  ∀ n, P1911941380548931205.a n = A244804 (n + 1)

end A244804

/-! ## A244804.P9382975287984493729

`Δ[A007531(n)+A005945(n)]`
-/

namespace A244804.P9382975287984493729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 n + A005945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A244804.P9382975287984493729

namespace A244804

/-- `Δ[A007531(n)+A005945(n)]` -/
def P9382975287984493729.Spec : Prop :=
  ∀ n, P9382975287984493729.a n = A244804 (n + 1)

end A244804

/-! ## A244804.P12523608975593919937

`∑[A017533(A004273(n))]`
-/

namespace A244804.P12523608975593919937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244804.P12523608975593919937

namespace A244804

/-- `∑[A017533(A004273(n))]` -/
def P12523608975593919937.Spec : Prop :=
  ∀ n, P12523608975593919937.a n = A244804 (n + 1)

end A244804

/-! ## A244804.P7200510616275014589

`∑[A017533(record[A026741(n)])]`
-/

namespace A244804.P7200510616275014589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244804.P7200510616275014589

namespace A244804

/-- `∑[A017533(record[A026741(n)])]` -/
def P7200510616275014589.Spec : Prop :=
  ∀ n, P7200510616275014589.a n = A244804 (n + 1)

end A244804

/-! ## A244804.P7948872179285048067

`∑[A016921(record[A064680(n)])]`
-/

namespace A244804.P7948872179285048067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244804.P7948872179285048067

namespace A244804

/-- `∑[A016921(record[A064680(n)])]` -/
def P7948872179285048067.Spec : Prop :=
  ∀ n, P7948872179285048067.a n = A244804 (n + 1)

end A244804

/-! ## A244804.P9227002459299251371

`∑[A016921(A004275(2*n))]`
-/

namespace A244804.P9227002459299251371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A004275 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244804.P9227002459299251371

namespace A244804

/-- `∑[A016921(A004275(2*n))]` -/
def P9227002459299251371.Spec : Prop :=
  ∀ n, P9227002459299251371.a n = A244804 (n + 1)

end A244804

/-! ## A244804.P4730815547077192132

`∑[A016921(2*A004273(n))]`
-/

namespace A244804.P4730815547077192132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (2 * A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244804.P4730815547077192132

namespace A244804

/-- `∑[A016921(2*A004273(n))]` -/
def P4730815547077192132.Spec : Prop :=
  ∀ n, P4730815547077192132.a n = A244804 (n + 1)

end A244804

/-! ## A244804.P11241685391485359852

`∑[A026472(2*n+2*n+1)]`
-/

namespace A244804.P11241685391485359852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026472 (2 * n + (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244804.P11241685391485359852

namespace A244804

/-- `∑[A026472(2*n+2*n+1)]` -/
def P11241685391485359852.Spec : Prop :=
  ∀ n, P11241685391485359852.a n = A244804 (n + 1)

end A244804

/-! ## A244804.P9113230745545266530

`∑[A100764(2*n+2*n+1)]`
-/

namespace A244804.P9113230745545266530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100764 (2 * n + (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244804.P9113230745545266530

namespace A244804

/-- `∑[A100764(2*n+2*n+1)]` -/
def P9113230745545266530.Spec : Prop :=
  ∀ n, P9113230745545266530.a n = A244804 (n + 1)

end A244804

/-! ## A244804.P5572162211701017675

`∑[A017533(record[A272727(n)])]`
-/

namespace A244804.P5572162211701017675
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272727 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244804.P5572162211701017675

namespace A244804

/-- `∑[A017533(record[A272727(n)])]` -/
def P5572162211701017675.Spec : Prop :=
  ∀ n, P5572162211701017675.a n = A244804 (n + 1)

end A244804

/-!
# A244805: The 240-degree spoke (or ray) of a hexagonal spiral of Ulam.

The programs for A244805, the canonical program `A244805.P654540247455590507` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244805 has offset 1).

The definition of A244805 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244805.P654540247455590507

`12*(n+1)²-21*(n+1)+10`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A244805

/-- `12*(n+1)²-21*(n+1)+10` -/
def P654540247455590507.Spec : Prop :=
  ∀ n, P654540247455590507.a n = A244805 (n + 1)

theorem P654540247455590507.correct : P654540247455590507.Spec := by
  intro n
  simp only [A244805, Nat.add_sub_cancel]

end A244805

/-! ## A244805.P12196754475869921779

`∑[a(n-1)+24]` with `a(0)=1, a(1)=15`
-/

namespace A244805.P12196754475869921779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 15] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244805.P12196754475869921779

namespace A244805

/-- `∑[a(n-1)+24]` -/
def P12196754475869921779.Spec : Prop :=
  ∀ n, (P12196754475869921779.a n : ℤ) = A244805 (n + 1)

end A244805

/-! ## A244805.P16053641168664912734

`(A381424(n)+1)/2`
-/

namespace A244805.P16053641168664912734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A381424 n + 1 : ℚ) / 2

end

end A244805.P16053641168664912734

namespace A244805

/-- `(A381424(n)+1)/2` -/
def P16053641168664912734.Spec : Prop :=
  ∀ n, P16053641168664912734.a n = (A244805 (n + 1) : ℚ)

end A244805

/-! ## A244805.P7316501767527331604

`abs(A179741(n)+2-n)`
-/

namespace A244805.P7316501767527331604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A179741 n + (2 - (n : ℤ))|

end

end A244805.P7316501767527331604

namespace A244805

/-- `abs(A179741(n)+2-n)` -/
def P7316501767527331604.Spec : Prop :=
  ∀ n, P7316501767527331604.a n = A244805 (n + 1)

end A244805

/-! ## A244805.P5652362407651756698

`round(sqrt((A244804(n+1)+n+n)²+1))`
-/

namespace A244805.P5652362407651756698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A244804 (n + 1) + (n : ℤ) + (n : ℤ)) ^ 2 + 1 : ℝ))

end

end A244805.P5652362407651756698

namespace A244805

/-- `round(sqrt((A244804(n+1)+n+n)²+1))` -/
def P5652362407651756698.Spec : Prop :=
  ∀ n, P5652362407651756698.a n = A244805 (n + 1)

end A244805

/-! ## A244805.P7420969293945313477

`abs(A244804(n+1)+A005408(n)-1)`
-/

namespace A244805.P7420969293945313477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A244804 (n + 1) + A005408 n - 1|

end

end A244805.P7420969293945313477

namespace A244805

/-- `abs(A244804(n+1)+A005408(n)-1)` -/
def P7420969293945313477.Spec : Prop :=
  ∀ n, P7420969293945313477.a n = A244805 (n + 1)

end A244805

/-! ## A244805.P15457432647211158801

`Δ[A006566(n)-A135503(n)]`
-/

namespace A244805.P15457432647211158801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006566 n - A135503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A244805.P15457432647211158801

namespace A244805

/-- `Δ[A006566(n)-A135503(n)]` -/
def P15457432647211158801.Spec : Prop :=
  ∀ n, P15457432647211158801.a n = A244805 (n + 1)

end A244805

/-! ## A244805.P4893442634613438096

`∑[A316320(2*n)]`
-/

namespace A244805.P4893442634613438096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316320 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244805.P4893442634613438096

namespace A244805

/-- `∑[A316320(2*n)]` -/
def P4893442634613438096.Spec : Prop :=
  ∀ n, P4893442634613438096.a n = A244805 (n + 1)

end A244805

/-! ## A244805.P8844592934306283078

`(A085473(2*n)+1)/2`
-/

namespace A244805.P8844592934306283078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085473 (2 * n) + 1 : ℚ) / 2

end

end A244805.P8844592934306283078

namespace A244805

/-- `(A085473(2*n)+1)/2` -/
def P8844592934306283078.Spec : Prop :=
  ∀ n, P8844592934306283078.a n = (A244805 (n + 1) : ℚ)

end A244805

/-! ## A244805.P11701801061923743237

`ceil(sqrt(A027628(2*n))/2)`
-/

namespace A244805.P11701801061923743237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A027628 (2 * n) : ℝ) / 2⌉

end

end A244805.P11701801061923743237

namespace A244805

/-- `ceil(sqrt(A027628(2*n))/2)` -/
def P11701801061923743237.Spec : Prop :=
  ∀ n, P11701801061923743237.a n = A244805 (n + 1)

end A244805

/-! ## A244805.P5531972157977796460

`∑[A133655(A004273(n)+n)]`
-/

namespace A244805.P5531972157977796460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133655 (A004273 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244805.P5531972157977796460

namespace A244805

/-- `∑[A133655(A004273(n)+n)]` -/
def P5531972157977796460.Spec : Prop :=
  ∀ n, P5531972157977796460.a n = A244805 (n + 1)

end A244805

/-! ## A244805.P4840063197669223194

`A213484(4*n)`
-/

namespace A244805.P4840063197669223194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213484 (4 * n)

end

end A244805.P4840063197669223194

namespace A244805

/-- `A213484(4*n)` -/
def P4840063197669223194.Spec : Prop :=
  ∀ n, P4840063197669223194.a n = A244805 (n + 1)

end A244805

/-! ## A244805.P14240436092492741480

`A281333(6*n)`
-/

namespace A244805.P14240436092492741480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281333 (6 * n)

end

end A244805.P14240436092492741480

namespace A244805

/-- `A281333(6*n)` -/
def P14240436092492741480.Spec : Prop :=
  ∀ n, P14240436092492741480.a n = A244805 (n + 1)

end A244805

/-! ## A244805.P9353952425257129497

`A014679(12*n)`
-/

namespace A244805.P9353952425257129497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014679 (12 * n)

end

end A244805.P9353952425257129497

namespace A244805

/-- `A014679(12*n)` -/
def P9353952425257129497.Spec : Prop :=
  ∀ n, P9353952425257129497.a n = A244805 (n + 1)

end A244805

/-! ## A244805.P13668009331909939537

`A253012(12*n)`
-/

namespace A244805.P13668009331909939537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253012 (12 * n)

end

end A244805.P13668009331909939537

namespace A244805

/-- `A253012(12*n)` -/
def P13668009331909939537.Spec : Prop :=
  ∀ n, P13668009331909939537.a n = A244805 (n + 1)

end A244805

/-! ## A244805.P13322449098768926098

`A000933(A017581(n))`
-/

namespace A244805.P13322449098768926098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000933 (A017581 n).toNat

end

end A244805.P13322449098768926098

namespace A244805

/-- `A000933(A017581(n))` -/
def P13322449098768926098.Spec : Prop :=
  ∀ n, P13322449098768926098.a n = A244805 (n + 1)

end A244805

/-!
# A244806: The 180-degree spoke (or ray) of a hexagonal spiral of Ulam.

The programs for A244806, the canonical program `A244806.P12540561993492766238` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244806 has offset 1).

The definition of A244806 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244806.P12540561993492766238

`12*(n+1)²-19*(n+1)+8`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A244806

/-- `12*(n+1)²-19*(n+1)+8` -/
def P12540561993492766238.Spec : Prop :=
  ∀ n, P12540561993492766238.a n = A244806 (n + 1)

theorem P12540561993492766238.correct : P12540561993492766238.Spec := by
  intro n
  simp only [A244806, Nat.add_sub_cancel]

end A244806

/-! ## A244806.P3469606047794288457

`∑[a(n-1)+24]` with `a(0)=1, a(1)=17`
-/

namespace A244806.P3469606047794288457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 17] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244806.P3469606047794288457

namespace A244806

/-- `∑[a(n-1)+24]` -/
def P3469606047794288457.Spec : Prop :=
  ∀ n, (P3469606047794288457.a n : ℤ) = A244806 (n + 1)

end A244806

/-! ## A244806.P6451293476067825087

`abs(6*C(Δ[n²], 2)-(n-1))`
-/

namespace A244806.P6451293476067825087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(6 * Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 2 : ℤ) - ((n : ℤ) - 1)|

end

end A244806.P6451293476067825087

namespace A244806

/-- `abs(6*C(Δ[n²], 2)-(n-1))` -/
def P6451293476067825087.Spec : Prop :=
  ∀ n, P6451293476067825087.a n = A244806 (n + 1)

end A244806

/-! ## A244806.P14405128656383391095

`abs(A000326(n)-A093485(n))`
-/

namespace A244806.P14405128656383391095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000326 n - A093485 n|

end

end A244806.P14405128656383391095

namespace A244806

/-- `abs(A000326(n)-A093485(n))` -/
def P14405128656383391095.Spec : Prop :=
  ∀ n, P14405128656383391095.a n = A244806 (n + 1)

end A244806

/-! ## A244806.P12715907583040588427

`ceil(A033570(2*n)/2)`
-/

namespace A244806.P12715907583040588427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A033570 (2 * n) : ℚ) / 2⌉

end

end A244806.P12715907583040588427

namespace A244806

/-- `ceil(A033570(2*n)/2)` -/
def P12715907583040588427.Spec : Prop :=
  ∀ n, P12715907583040588427.a n = A244806 (n + 1)

end A244806

/-! ## A244806.P5423079728478396997

`(A014632(2*n)+1)/2`
-/

namespace A244806.P5423079728478396997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014632 (2 * n) + 1 : ℚ) / 2

end

end A244806.P5423079728478396997

namespace A244806

/-- `(A014632(2*n)+1)/2` -/
def P5423079728478396997.Spec : Prop :=
  ∀ n, P5423079728478396997.a n = (A244806 (n + 1) : ℚ)

end A244806

/-! ## A244806.P7078734315822690325

`abs(A016754(2*n)-A033954(n))`
-/

namespace A244806.P7078734315822690325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016754 (2 * n) - A033954 n|

end

end A244806.P7078734315822690325

namespace A244806

/-- `abs(A016754(2*n)-A033954(n))` -/
def P7078734315822690325.Spec : Prop :=
  ∀ n, P7078734315822690325.a n = A244806 (n + 1)

end A244806

/-! ## A244806.P18124002663513480941

`∑[A087445(A004275(2*n+1))]`
-/

namespace A244806.P18124002663513480941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087445 (A004275 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244806.P18124002663513480941

namespace A244806

/-- `∑[A087445(A004275(2*n+1))]` -/
def P18124002663513480941.Spec : Prop :=
  ∀ n, P18124002663513480941.a n = A244806 (n + 1)

end A244806

/-! ## A244806.P3799023342010170577

`A129863(4*n)/6`
-/

namespace A244806.P3799023342010170577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129863 (4 * n) : ℚ) / 6

end

end A244806.P3799023342010170577

namespace A244806

/-- `A129863(4*n)/6` -/
def P3799023342010170577.Spec : Prop :=
  ∀ n, P3799023342010170577.a n = (A244806 (n + 1) : ℚ)

end A244806

/-! ## A244806.P14524763857666947050

`A340648(3*n+n+1)`
-/

namespace A244806.P14524763857666947050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340648 (3 * n + (n + 1))

end

end A244806.P14524763857666947050

namespace A244806

/-- `A340648(3*n+n+1)` -/
def P14524763857666947050.Spec : Prop :=
  ∀ n, P14524763857666947050.a n = A244806 (n + 1)

end A244806

/-! ## A244806.P16537371473608633426

`A143689(A016813(n))/2`
-/

namespace A244806.P16537371473608633426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143689 (A016813 n).toNat : ℚ) / 2

end

end A244806.P16537371473608633426

namespace A244806

/-- `A143689(A016813(n))/2` -/
def P16537371473608633426.Spec : Prop :=
  ∀ n, P16537371473608633426.a n = (A244806 (n + 1) : ℚ)

end A244806

/-! ## A244806.P282990334357899312

`A143689(Δ[A130883(n)])/2`
-/

namespace A244806.P282990334357899312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130883 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143689 (f1 (n + 1) - f1 n).toNat : ℚ) / 2

end

end A244806.P282990334357899312

namespace A244806

/-- `A143689(Δ[A130883(n)])/2` -/
def P282990334357899312.Spec : Prop :=
  ∀ n, P282990334357899312.a n = (A244806 (n + 1) : ℚ)

end A244806

/-! ## A244806.P9290855636092875540

`∑[A178414(record[A075677(n+1)])]`
-/

namespace A244806.P9290855636092875540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075677 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178414 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244806.P9290855636092875540

namespace A244806

/-- `∑[A178414(record[A075677(n+1)])]` -/
def P9290855636092875540.Spec : Prop :=
  ∀ n, P9290855636092875540.a n = A244806 (n + 1)

end A244806

/-! ## A244806.P11506130340626706506

`A253012(A017533(n))`
-/

namespace A244806.P11506130340626706506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253012 (A017533 n).toNat

end

end A244806.P11506130340626706506

namespace A244806

/-- `A253012(A017533(n))` -/
def P11506130340626706506.Spec : Prop :=
  ∀ n, P11506130340626706506.a n = A244806 (n + 1)

end A244806

/-! ## A244806.P1915222814026114272

`A253012(A016921(2*n))`
-/

namespace A244806.P1915222814026114272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253012 (A016921 (2 * n)).toNat

end

end A244806.P1915222814026114272

namespace A244806

/-- `A253012(A016921(2*n))` -/
def P1915222814026114272.Spec : Prop :=
  ∀ n, P1915222814026114272.a n = A244806 (n + 1)

end A244806

/-! ## A244806.P12395103920418941508

`A000933(6*(2*n+1))`
-/

namespace A244806.P12395103920418941508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000933 (6 * (2 * n + 1))

end

end A244806.P12395103920418941508

namespace A244806

/-- `A000933(6*(2*n+1))` -/
def P12395103920418941508.Spec : Prop :=
  ∀ n, P12395103920418941508.a n = A244806 (n + 1)

end A244806

/-!
# A244807: The hexagonal spiral of Champernowne, read along the East (or 90-degree) ray.

The programs for A244807, there is no canonical definition to state claims against.
-/

/-! ## A244807.P5635797418590157485

`A007376(∑[6*n-5]+6)`
-/

namespace A244807.P5635797418590157485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (∑ j ∈ Finset.range (n + 1), f1 j + 6).toNat

end

end A244807.P5635797418590157485

/-! ## A244807.P9433301233402085944

`A007376((2*n)²+2-(n+1)²)%10`
-/

namespace A244807.P9433301233402085944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 ((2 * n) ^ 2 + 2 - (n + 1) ^ 2)) 10

end

end A244807.P9433301233402085944

/-! ## A244807.P9663594815229180191

`dr(A007376(or(2, (2*n+n-1)²)/3))`
-/

namespace A244807.P9663594815229180191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (SequenceMachineLib.roundAway ((Int.lor 2 (((2 * n : ℤ) + ((n : ℤ) - 1)) ^ 2) : ℚ) / 3)).toNat)

end

end A244807.P9663594815229180191

/-! ## A244807.P10667011085966015473

`dr(A007376(xor(2, (2*n+n-1)²)/3))`
-/

namespace A244807.P10667011085966015473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (SequenceMachineLib.roundAway ((Int.xor 2 (((2 * n : ℤ) + ((n : ℤ) - 1)) ^ 2) : ℚ) / 3)).toNat)

end

end A244807.P10667011085966015473

/-! ## A244807.P15238614848383402023

`dr(A007376(abs((n+1)²-((2*n)²+2))))`
-/

namespace A244807.P15238614848383402023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 |((n + 1) ^ 2 : ℤ) - ((2 * n) ^ 2 + 2 : ℤ)|.toNat)

end

end A244807.P15238614848383402023

/-! ## A244807.P8860183827124194027

`A007376(A049450(n)+1-n)/(1-4/2)²`
-/

namespace A244807.P8860183827124194027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007376 (A049450 n + (1 - (n : ℤ))).toNat : ℚ) / (1 - (4 : ℚ) / 2) ^ 2

end

end A244807.P8860183827124194027

/-! ## A244807.P4610028070746699573

`gcd(A000038(n), A007376(A056105(n)))`
-/

namespace A244807.P4610028070746699573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A007376 (A056105 n).toNat)

end

end A244807.P4610028070746699573

/-! ## A244807.P10719586890292224343

`or(A000007(n), A007376(A056105(n)))`
-/

namespace A244807.P10719586890292224343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A007376 (A056105 n).toNat)

end

end A244807.P10719586890292224343

/-! ## A244807.P1882158579136116228

`A007376(A056105(n))+A000007(n+1)`
-/

namespace A244807.P1882158579136116228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A056105 n).toNat + A000007 (n + 1)

end

end A244807.P1882158579136116228

/-! ## A244807.P9604976146501350418

`A007376(A056105(n))^A019430(2*n)`
-/

namespace A244807.P9604976146501350418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007376 (A056105 n).toNat : ℚ) ^ (A019430 (2 * n) : ℤ)

end

end A244807.P9604976146501350418

/-! ## A244807.P11521957727501945708

`A007318(C(2, n))*A007376(A056105(n))`
-/

namespace A244807.P11521957727501945708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A007376 (A056105 n).toNat

end

end A244807.P11521957727501945708

/-! ## A244807.P13299295545528161106

`A000108(C(2, 2*n))*A007376(A056105(n))`
-/

namespace A244807.P13299295545528161106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (2 * n)) * A007376 (A056105 n).toNat

end

end A244807.P13299295545528161106

/-! ## A244807.P7248862669742596908

`A007376(A056105(n))/A006530(gcd(n, n+1))`
-/

namespace A244807.P7248862669742596908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007376 (A056105 n).toNat : ℚ) / (A006530 (Nat.gcd n (n + 1)) : ℚ)

end

end A244807.P7248862669742596908

/-! ## A244807.P4008994768887579949

`A014963(6*(n+1))*A007376(A049450(n)+1-n)`
-/

namespace A244807.P4008994768887579949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A007376 (A049450 n + (1 - (n : ℤ))).toNat

end

end A244807.P4008994768887579949

/-!
# A244808: The hexagonal spiral of Champernowne, read along the 60-degree ray.

The programs for A244808, there is no canonical definition to state claims against.
-/

/-! ## A244808.P14146447784079763426

`A007376(∑[a(n-1)+24])` with `a(0)=1, a(1)=9`
-/

namespace A244808.P14146447784079763426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244808.P14146447784079763426

/-! ## A244808.P12598626967308340765

`A007376(n*(12*n-3)+1)`
-/

namespace A244808.P12598626967308340765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 ((n : ℤ) * ((12 * n : ℤ) - 3) + 1).toNat

end

end A244808.P12598626967308340765

/-! ## A244808.P5843633186547729242

`dr(A007376(A244802(n+1)))`
-/

namespace A244808.P5843633186547729242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A244802 (n + 1)).toNat)

end

end A244808.P5843633186547729242

/-! ## A244808.P4257414835328710284

`A007376(A081587(n)-∑[n])%10`
-/

namespace A244808.P4257414835328710284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 (A081587 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat) 10

end

end A244808.P4257414835328710284

/-! ## A244808.P2294708996460175459

`dr(A007376(abs(n-(A185918(n)+2))))`
-/

namespace A244808.P2294708996460175459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 |(n : ℤ) - (A185918 n + 2)|.toNat)

end

end A244808.P2294708996460175459

/-! ## A244808.P4479464288166748402

`dr(A007376(abs(11*n-A014641(n))))`
-/

namespace A244808.P4479464288166748402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 |(11 * n : ℤ) - A014641 n|.toNat)

end

end A244808.P4479464288166748402

/-! ## A244808.P9918962521964179707

`dr(A007376(root(A056106(2*n)-n, 2)²))`
-/

namespace A244808.P9918962521964179707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (SequenceMachineLib.roundAway (((A056106 (2 * n) - (n : ℤ) : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat)

end

end A244808.P9918962521964179707

/-! ## A244808.P6326752255257886712

`dr(A007376(n*(12*n-2)-A023443(n)))`
-/

namespace A244808.P6326752255257886712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 ((n : ℤ) * ((12 * n : ℤ) - 2) - A023443 n).toNat)

end

end A244808.P6326752255257886712

/-! ## A244808.P5910539173605132070

`dr(A007376((A062783(n)+1)%(4*(n+1))²))`
-/

namespace A244808.P5910539173605132070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (Int.tmod (A062783 n + 1) ((4 * (n + 1)) ^ 2 : ℤ)).toNat)

end

end A244808.P5910539173605132070

/-!
# A244809: The hexagonal spiral of Champernowne, read along the 30-degree ray.

The programs for A244809, there is no canonical definition to state claims against.
-/

/-! ## A244809.P750078432973523087

`A007376(∑[6*n-4]+5)`
-/

namespace A244809.P750078432973523087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (∑ j ∈ Finset.range (n + 1), f1 j + 5).toNat

end

end A244809.P750078432973523087

/-! ## A244809.P9542860117132853393

`dr(A007376(or(1, 3*n²-n)))`
-/

namespace A244809.P9542860117132853393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (Int.lor 1 ((3 * n ^ 2 : ℤ) - (n : ℤ))).toNat)

end

end A244809.P9542860117132853393

/-! ## A244809.P7345379555911704181

`dr(A007376(xor(1, 3*n²-n)))`
-/

namespace A244809.P7345379555911704181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (Int.xor 1 ((3 * n ^ 2 : ℤ) - (n : ℤ))).toNat)

end

end A244809.P7345379555911704181

/-! ## A244809.P17849329908843872611

`dr(A007376(floor(3/acot(n)²-n)))`
-/

namespace A244809.P17849329908843872611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 ⌊3 / SequenceMachineLib.acot (n : ℝ) ^ 2 - (n : ℝ)⌋.toNat)

end

end A244809.P17849329908843872611

/-! ## A244809.P7871320603619141788

`dr(A007376(ceil(3/acot(n)²-(n+1))))`
-/

namespace A244809.P7871320603619141788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 ⌈3 / SequenceMachineLib.acot (n : ℝ) ^ 2 - (n + 1 : ℝ)⌉.toNat)

end

end A244809.P7871320603619141788

/-! ## A244809.P7201056545650849733

`dr(A007376(∑[record[(2*n)^((n%3)%2)]]))`
-/

namespace A244809.P7201056545650849733
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ (n % 3 % 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A244809.P7201056545650849733

/-! ## A244809.P9345567424113900239

`dr(A007376(∑[5*(2*n)%(n+1)+n+1]))`
-/

namespace A244809.P9345567424113900239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (2 * n % (n + 1)) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A244809.P9345567424113900239

/-! ## A244809.P8170320789819880322

`dr(A007376(A056106(n)))`
-/

namespace A244809.P8170320789819880322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A056106 n).toNat)

end

end A244809.P8170320789819880322

/-! ## A244809.P9890470870826456154

`dr(A007376(A056105(n)+n))`
-/

namespace A244809.P9890470870826456154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A056105 n + (n : ℤ)).toNat)

end

end A244809.P9890470870826456154

/-! ## A244809.P3561463429138308807

`dr(A007376(Δ[n*A160457(n)]))`
-/

namespace A244809.P3561463429138308807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A160457 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (f1 (n + 1) - f1 n).toNat)

end

end A244809.P3561463429138308807

/-! ## A244809.P3700167213687734579

`gcd(A000038(n), A007376(A056106(n)))`
-/

namespace A244809.P3700167213687734579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A007376 (A056106 n).toNat)

end

end A244809.P3700167213687734579

/-! ## A244809.P11721828717729848118

`char[A051176(n)]*A007376(A056106(n))`
-/

namespace A244809.P11721828717729848118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A007376 (A056106 n).toNat

end

end A244809.P11721828717729848118

/-! ## A244809.P13176997415410516120

`A007376(A056106(n))+A000007(n+1)`
-/

namespace A244809.P13176997415410516120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A056106 n).toNat + A000007 (n + 1)

end

end A244809.P13176997415410516120

/-! ## A244809.P8252740831849876604

`A007376(A056106(n))+A000038(n+1)`
-/

namespace A244809.P8252740831849876604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A056106 n).toNat + A000038 (n + 1)

end

end A244809.P8252740831849876604

/-! ## A244809.P3913429250519100684

`A000034(2*n)*A007376(A056106(n))`
-/

namespace A244809.P3913429250519100684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A007376 (A056106 n).toNat

end

end A244809.P3913429250519100684

/-! ## A244809.P1336239490523188762

`A007318(C(2, n))*A007376(A056106(n))`
-/

namespace A244809.P1336239490523188762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A007376 (A056106 n).toNat

end

end A244809.P1336239490523188762

/-! ## A244809.P7383249120821677207

`A014963(6*(n+1))*A007376(A056106(n))`
-/

namespace A244809.P7383249120821677207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A007376 (A056106 n).toNat

end

end A244809.P7383249120821677207

/-! ## A244809.P9247126536297530571

`A000041(C(2, n+2))*A007376(A056106(n))`
-/

namespace A244809.P9247126536297530571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A007376 (A056106 n).toNat

end

end A244809.P9247126536297530571

/-! ## A244809.P3458876353202988473

`A007318(and(2, n-1))*A007376(A056106(n))`
-/

namespace A244809.P3458876353202988473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 2 ((n : ℤ) - 1)).toNat * A007376 (A056106 n).toNat

end

end A244809.P3458876353202988473

/-! ## A244809.P12262531678171080381

`A007376(A056106(n))^and(1, A000040(n+1))`
-/

namespace A244809.P12262531678171080381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007376 (A056106 n).toNat : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A244809.P12262531678171080381

/-!
# A244810: The hexagonal spiral of Champernowne, read along the North (or 360-degree) ray.

The programs for A244810, there is no canonical definition to state claims against.
-/

/-! ## A244810.P10679763378322996895

`A007376(12*n²+1-n)`
-/

namespace A244810.P10679763378322996895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 ((12 * n ^ 2 : ℤ) + (1 - (n : ℤ))).toNat

end

end A244810.P10679763378322996895

/-! ## A244810.P12672148299401237913

`dr(A007376(∑[a(n-1)+24]))` with `a(0)=1, a(1)=11`
-/

namespace A244810.P12672148299401237913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A244810.P12672148299401237913

/-! ## A244810.P12989946235424791515

`dr(A007376(floor(3/acot(2*n)²-n)))`
-/

namespace A244810.P12989946235424791515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 ⌊3 / SequenceMachineLib.acot (2 * n : ℝ) ^ 2 - (n : ℝ)⌋.toNat)

end

end A244810.P12989946235424791515

/-! ## A244810.P14248456224196008917

`dr(A007376(A244803(n+1)))`
-/

namespace A244810.P14248456224196008917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A244803 (n + 1)).toNat)

end

end A244810.P14248456224196008917

/-! ## A244810.P3216537550563517639

`dr(A007376(A158480(n)-n))`
-/

namespace A244810.P3216537550563517639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A158480 n - (n : ℤ)).toNat)

end

end A244810.P3216537550563517639

/-! ## A244810.P12889621724757463316

`dr(A007376(A185918(n)+2+n))`
-/

namespace A244810.P12889621724757463316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A185918 n + 2 + (n : ℤ)).toNat)

end

end A244810.P12889621724757463316

/-! ## A244810.P11056840280931058788

`dr(A007376(abs(n-(A135453(n)+1))))`
-/

namespace A244810.P11056840280931058788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 |(n : ℤ) - (A135453 n + 1)|.toNat)

end

end A244810.P11056840280931058788

/-! ## A244810.P16541251645722598452

`dr(A007376(abs(n-(A158463(n)+2))))`
-/

namespace A244810.P16541251645722598452
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 |(n : ℤ) - (A158463 n + 2)|.toNat)

end

end A244810.P16541251645722598452

/-! ## A244810.P14492145852541597671

`dr(A007376(abs(2*n-A244804(n+1))))`
-/

namespace A244810.P14492145852541597671
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 |(2 * n : ℤ) - A244804 (n + 1)|.toNat)

end

end A244810.P14492145852541597671

/-! ## A244810.P16345685787623014323

`A007318(C(2, n))*A007376(A244803(n+1))`
-/

namespace A244810.P16345685787623014323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A007376 (A244803 (n + 1)).toNat

end

end A244810.P16345685787623014323

/-!
# A244811: The hexagonal spiral of Champernowne, read along the 330-degree ray.

The programs for A244811, there is no canonical definition to state claims against.
-/

/-! ## A244811.P7114137634101802992

`A007376(3*n²+1)`
-/

namespace A244811.P7114137634101802992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (3 * n ^ 2 + 1)

end

end A244811.P7114137634101802992

/-! ## A244811.P314822840926523373

`dr(A007376(xor(2, lcm(3, n²+1))))`
-/

namespace A244811.P314822840926523373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (Nat.xor 2 (Nat.lcm 3 (n ^ 2 + 1))))

end

end A244811.P314822840926523373

/-! ## A244811.P18122623533286510183

`dr(A007376(abs(xor(3*n², -1))))`
-/

namespace A244811.P18122623533286510183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 |Int.xor (3 * n ^ 2 : ℤ) (-1)|.toNat)

end

end A244811.P18122623533286510183

/-! ## A244811.P15445280126599287731

`dr(A007376(-xor(3*n², -1)))`
-/

namespace A244811.P15445280126599287731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (-Int.xor (3 * n ^ 2 : ℤ) (-1)).toNat)

end

end A244811.P15445280126599287731

/-! ## A244811.P8800927709680104736

`dr(A007376(floor(3*(n²-cos(2)))))`
-/

namespace A244811.P8800927709680104736
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 ⌊3 * ((n ^ 2 : ℝ) - Real.cos (2 : ℝ))⌋.toNat)

end

end A244811.P8800927709680104736

/-! ## A244811.P1983076220088413026

`dr(A007376(round(3*(n²-cos(2)))))`
-/

namespace A244811.P1983076220088413026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (SequenceMachineLib.roundAway (3 * ((n ^ 2 : ℝ) - Real.cos (2 : ℝ)))).toNat)

end

end A244811.P1983076220088413026

/-! ## A244811.P11652278818736675206

`dr(A007376(floor(3*(n²-cot(2)))))`
-/

namespace A244811.P11652278818736675206
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 ⌊3 * ((n ^ 2 : ℝ) - Real.cot (2 : ℝ))⌋.toNat)

end

end A244811.P11652278818736675206

/-! ## A244811.P6272473381778414136

`dr(A007376(round(3*(n²-cot(2)))))`
-/

namespace A244811.P6272473381778414136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (SequenceMachineLib.roundAway (3 * ((n ^ 2 : ℝ) - Real.cot (2 : ℝ)))).toNat)

end

end A244811.P6272473381778414136

/-! ## A244811.P1469194654145098025

`dr(A007376(abs(n²-xor(1, (2*n)²))))`
-/

namespace A244811.P1469194654145098025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 |(n ^ 2 : ℤ) - (Nat.xor 1 ((2 * n) ^ 2) : ℤ)|.toNat)

end

end A244811.P1469194654145098025

/-! ## A244811.P2021201259824185834

`dr(A007376(A056107(n)))`
-/

namespace A244811.P2021201259824185834
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A056107 n).toNat)

end

end A244811.P2021201259824185834

/-! ## A244811.P14796380160730703516

`or(A000007(n), A007376(A056107(n)))`
-/

namespace A244811.P14796380160730703516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A007376 (A056107 n).toNat)

end

end A244811.P14796380160730703516

/-! ## A244811.P15437105155881565788

`A007376(A056107(n))+A000007(n+1)`
-/

namespace A244811.P15437105155881565788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A056107 n).toNat + A000007 (n + 1)

end

end A244811.P15437105155881565788

/-! ## A244811.P9129810218835643876

`A007376(A056107(n))+A000038(n+1)`
-/

namespace A244811.P9129810218835643876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A056107 n).toNat + A000038 (n + 1)

end

end A244811.P9129810218835643876

/-! ## A244811.P3881214685195360061

`A007376(A056107(n))+A000035(2*n)`
-/

namespace A244811.P3881214685195360061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A056107 n).toNat + A000035 (2 * n)

end

end A244811.P3881214685195360061

/-! ## A244811.P14853638508285012648

`A007318(C(2, n))*A007376(A056107(n))`
-/

namespace A244811.P14853638508285012648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A007376 (A056107 n).toNat

end

end A244811.P14853638508285012648

/-! ## A244811.P3402545803717747615

`∏{p}[n, A001222(#)]*A007376(A056107(n))`
-/

namespace A244811.P3402545803717747615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), A001222 p) * A007376 (A056107 n).toNat

end

end A244811.P3402545803717747615

/-! ## A244811.P18069580481380243285

`A007376(A056107(n))/A007318(C(2, n²))`
-/

namespace A244811.P18069580481380243285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007376 (A056107 n).toNat : ℚ) / (A007318 (Nat.choose 2 (n ^ 2)) : ℚ)

end

end A244811.P18069580481380243285

/-! ## A244811.P7628136641258450655

`A000041(C(n, n²))*A007376(A056107(n))`
-/

namespace A244811.P7628136641258450655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) * A007376 (A056107 n).toNat

end

end A244811.P7628136641258450655

/-! ## A244811.P9639094400352844259

`A007376(A056107(n))+A008683(8*n+4)`
-/

namespace A244811.P9639094400352844259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A056107 n).toNat + A008683 (8 * n + 4)

end

end A244811.P9639094400352844259

/-! ## A244811.P18382621843667510866

`A007318(val(n+1, 4))*A007376(A056107(n))`
-/

namespace A244811.P18382621843667510866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n + 1) 4) * A007376 (A056107 n).toNat

end

end A244811.P18382621843667510866

/-!
# A244812: The hexagonal spiral of Champernowne, read along the 300-degree ray.

The programs for A244812, there is no canonical definition to state claims against.
-/

/-! ## A244812.P2667996117514796619

`A007376(12*n²+1+n)`
-/

namespace A244812.P2667996117514796619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (12 * n ^ 2 + 1 + n)

end

end A244812.P2667996117514796619

/-! ## A244812.P13632553556669180014

`dr(A007376(A244804(n+1)))`
-/

namespace A244812.P13632553556669180014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A244804 (n + 1)).toNat)

end

end A244812.P13632553556669180014

/-! ## A244812.P17792578900106084602

`dr(A007376(A194454(n)-n))`
-/

namespace A244812.P17792578900106084602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A194454 n - (n : ℤ)).toNat)

end

end A244812.P17792578900106084602

/-! ## A244812.P4486693514203663846

`dr(A007376(∑[A272564(4*n)]))`
-/

namespace A244812.P4486693514203663846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272564 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A244812.P4486693514203663846

/-! ## A244812.P2884908113554332718

`dr(A007376(A158463(n)+2+n))`
-/

namespace A244812.P2884908113554332718
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A158463 n + 2 + (n : ℤ)).toNat)

end

end A244812.P2884908113554332718

/-! ## A244812.P10673466573040600035

`A007318(C(2, n))*A007376(A244804(n+1))`
-/

namespace A244812.P10673466573040600035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A007376 (A244804 (n + 1)).toNat

end

end A244812.P10673466573040600035

/-! ## A244812.P3461016336982124931

`A007376(A244804(n+1))+A008683(4*(n+1))`
-/

namespace A244812.P3461016336982124931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A244804 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A244812.P3461016336982124931

/-! ## A244812.P5026835174355175206

`A007376(A244804(n+1))^A014963(4*n+2)`
-/

namespace A244812.P5026835174355175206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007376 (A244804 (n + 1)).toNat : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A244812.P5026835174355175206

/-! ## A244812.P6701809941830408126

`A000040(n+2)%2*A007376(A244804(n+1))`
-/

namespace A244812.P6701809941830408126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * A007376 (A244804 (n + 1)).toNat

end

end A244812.P6701809941830408126

/-! ## A244812.P958913129184265503

`A007376(A244804(n+1))+val(A014963(n+1), 4)`
-/

namespace A244812.P958913129184265503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A244804 (n + 1)).toNat + (SequenceMachineLib.valuation (A014963 (n + 1)).toNat 4 : ℤ)

end

end A244812.P958913129184265503

/-!
# A244813: The hexagonal spiral of Champernowne, read along the West (or 270-degree) ray.

The programs for A244813, there is no canonical definition to state claims against.
-/

/-! ## A244813.P416745337114259595

`A007376(∑[6*n-2]+3)`
-/

namespace A244813.P416745337114259595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A244813.P416745337114259595

/-! ## A244813.P16964356603798243800

`dr(A007376(or(1, 3*n²+n)))`
-/

namespace A244813.P16964356603798243800
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (Nat.lor 1 (3 * n ^ 2 + n)))

end

end A244813.P16964356603798243800

/-! ## A244813.P4458574761469114243

`dr(A007376(xor(1, 3*n²+n)))`
-/

namespace A244813.P4458574761469114243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (Nat.xor 1 (3 * n ^ 2 + n)))

end

end A244813.P4458574761469114243

/-! ## A244813.P5155662014055471529

`dr(A007376(floor(3/acot(n)²+n)))`
-/

namespace A244813.P5155662014055471529
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 ⌊3 / SequenceMachineLib.acot (n : ℝ) ^ 2 + (n : ℝ)⌋.toNat)

end

end A244813.P5155662014055471529

/-! ## A244813.P9484229020298604751

`dr(A007376(round((3*n+1)/acot(n))))`
-/

namespace A244813.P9484229020298604751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (SequenceMachineLib.roundAway ((3 * n + 1 : ℝ) / SequenceMachineLib.acot (n : ℝ))).toNat)

end

end A244813.P9484229020298604751

/-! ## A244813.P7080233500615214519

`dr(A007376(Δ[n*((1-n)²+n)]))`
-/

namespace A244813.P7080233500615214519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((1 - (n : ℤ)) ^ 2 + (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (f1 (n + 1) - f1 n).toNat)

end

end A244813.P7080233500615214519

/-! ## A244813.P2287113158145019488

`abs(A000038(n)-A007376(A056108(n)))`
-/

namespace A244813.P2287113158145019488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000038 n - A007376 (A056108 n).toNat|

end

end A244813.P2287113158145019488

/-! ## A244813.P1421106406291385697

`A007376(A056108(n))+A000007(n+1)`
-/

namespace A244813.P1421106406291385697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A056108 n).toNat + A000007 (n + 1)

end

end A244813.P1421106406291385697

/-! ## A244813.P4896565741446777584

`A007376(A056108(n))+A000038(n+1)`
-/

namespace A244813.P4896565741446777584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A056108 n).toNat + A000038 (n + 1)

end

end A244813.P4896565741446777584

/-! ## A244813.P4161194057941526712

`A007318(C(2, n))*A007376(A056108(n))`
-/

namespace A244813.P4161194057941526712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A007376 (A056108 n).toNat

end

end A244813.P4161194057941526712

/-! ## A244813.P10089411252503646820

`A000041(C(n, n²))*A007376(A056108(n))`
-/

namespace A244813.P10089411252503646820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) * A007376 (A056108 n).toNat

end

end A244813.P10089411252503646820

/-! ## A244813.P14250366782831035629

`A007376(A056108(n))+A008683(4*(n+1))`
-/

namespace A244813.P14250366782831035629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A056108 n).toNat + A008683 (4 * (n + 1))

end

end A244813.P14250366782831035629

/-! ## A244813.P2752318145883235580

`A014963(12*n+6)*A007376(A056108(n))`
-/

namespace A244813.P2752318145883235580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * n + 6) * A007376 (A056108 n).toNat

end

end A244813.P2752318145883235580

/-! ## A244813.P4612950246574337287

`A007318(val(n+1, 4))*A007376(A056108(n))`
-/

namespace A244813.P4612950246574337287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n + 1) 4) * A007376 (A056108 n).toNat

end

end A244813.P4612950246574337287

/-! ## A244813.P18297544844806707196

`A000108(C(2, n+2))*A007376(A056108(n))`
-/

namespace A244813.P18297544844806707196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A007376 (A056108 n).toNat

end

end A244813.P18297544844806707196

/-! ## A244813.P14616892460384028589

`A007376(A056108(n))^gcd(7, A000005(n+2))`
-/

namespace A244813.P14616892460384028589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A056108 n).toNat ^ Int.gcd 7 (A000005 (n + 2))

end

end A244813.P14616892460384028589

/-! ## A244813.P9909024408186066

`A007376(A056108(n))^A014963(∑[n+4]+3)`
-/

namespace A244813.P9909024408186066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007376 (A056108 n).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j + 3) : ℤ)

end

end A244813.P9909024408186066

/-!
# A244814: The hexagonal spiral of Champernowne, read along the 240-degree ray.

The programs for A244814, there is no canonical definition to state claims against.
-/

/-! ## A244814.P8121536674957384827

`A007376(∑[a(n-1)+24])` with `a(0)=1, a(1)=15`
-/

namespace A244814.P8121536674957384827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 15] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244814.P8121536674957384827

/-! ## A244814.P8910776571402687722

`A007376(n*(12*n+3)+1)`
-/

namespace A244814.P8910776571402687722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (n * (12 * n + 3) + 1)

end

end A244814.P8910776571402687722

/-! ## A244814.P7887297046609865967

`dr(A007376(A244805(n+1)))`
-/

namespace A244814.P7887297046609865967
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A244805 (n + 1)).toNat)

end

end A244814.P7887297046609865967

/-! ## A244814.P15917776900108024202

`dr(A007376(A213484(4*n)))`
-/

namespace A244814.P15917776900108024202
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A213484 (4 * n)).toNat)

end

end A244814.P15917776900108024202

/-! ## A244814.P1213412122826646971

`dr(A007376(A281333(6*n)))`
-/

namespace A244814.P1213412122826646971
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A281333 (6 * n)).toNat)

end

end A244814.P1213412122826646971

/-! ## A244814.P10620661896872184584

`dr(A007376(A253012(12*n)))`
-/

namespace A244814.P10620661896872184584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A253012 (12 * n)).toNat)

end

end A244814.P10620661896872184584

/-! ## A244814.P12190924097989934940

`or(A000007(n), A007376(A244805(n+1)))`
-/

namespace A244814.P12190924097989934940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A007376 (A244805 (n + 1)).toNat)

end

end A244814.P12190924097989934940

/-! ## A244814.P23438250804681693

`char[A014681(n)]*A007376(A244805(n+1))`
-/

namespace A244814.P23438250804681693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A007376 (A244805 (n + 1)).toNat

end

end A244814.P23438250804681693

/-! ## A244814.P6838146448387712472

`A007376(A244805(n+1))+A000007(n+1)`
-/

namespace A244814.P6838146448387712472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A244805 (n + 1)).toNat + A000007 (n + 1)

end

end A244814.P6838146448387712472

/-! ## A244814.P17339561482641411042

`lcm(A008683(∏{p}[n+1, #]), A007376(A244805(n+1)))`
-/

namespace A244814.P17339561482641411042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (∏ p ∈ Nat.primeFactors (f1 n), p)) (A007376 (A244805 (n + 1)).toNat)

end

end A244814.P17339561482641411042

/-!
# A244815: The hexagonal spiral of Champernowne, read along the 210-degree ray.

The programs for A244815, there is no canonical definition to state claims against.
-/

/-! ## A244815.P16602755909449385643

`A007376(Δ[n^3]-n)`
-/

namespace A244815.P16602755909449385643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A244815.P16602755909449385643

/-! ## A244815.P7552763063677683348

`dr(A007376(∑[abs(1-6*n)]))`
-/

namespace A244815.P7552763063677683348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (6 * n : ℤ)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A244815.P7552763063677683348

/-! ## A244815.P8772412322006347446

`and(15, A007376((2*n)²+2-(1-n)²))`
-/

namespace A244815.P8772412322006347446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 15 (A007376 (((2 * n) ^ 2 + 2 : ℤ) - (1 - (n : ℤ)) ^ 2).toNat)

end

end A244815.P8772412322006347446

/-! ## A244815.P17205669526011201321

`A007376(or(2, (2*n+1+n)²)/3)%10`
-/

namespace A244815.P17205669526011201321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 (SequenceMachineLib.roundAway ((Nat.lor 2 ((2 * n + 1 + n) ^ 2) : ℚ) / 3)).toNat) 10

end

end A244815.P17205669526011201321

/-! ## A244815.P14880964495177046124

`A007376(abs((1-n)²-((2*n)²+2)))%10`
-/

namespace A244815.P14880964495177046124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 |(1 - (n : ℤ)) ^ 2 - ((2 * n) ^ 2 + 2 : ℤ)|.toNat) 10

end

end A244815.P14880964495177046124

/-! ## A244815.P5804169261068630232

`gcd(A000038(n), A007376(A056109(n)))`
-/

namespace A244815.P5804169261068630232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A007376 (A056109 n).toNat)

end

end A244815.P5804169261068630232

/-! ## A244815.P8954086712686253170

`or(A000007(n), A007376(A056109(n)))`
-/

namespace A244815.P8954086712686253170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A007376 (A056109 n).toNat)

end

end A244815.P8954086712686253170

/-! ## A244815.P30939883414884700

`A007376(A056109(n))+A000007(n+1)`
-/

namespace A244815.P30939883414884700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A056109 n).toNat + A000007 (n + 1)

end

end A244815.P30939883414884700

/-! ## A244815.P4156882944640491367

`A007376(A056109(n))+A000038(n+1)`
-/

namespace A244815.P4156882944640491367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A056109 n).toNat + A000038 (n + 1)

end

end A244815.P4156882944640491367

/-! ## A244815.P14365914974479812307

`A007376(A056109(n))+A000035(2*n)`
-/

namespace A244815.P14365914974479812307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A056109 n).toNat + A000035 (2 * n)

end

end A244815.P14365914974479812307

/-! ## A244815.P11316427946608122256

`A007318(C(2, n))*A007376(A056109(n))`
-/

namespace A244815.P11316427946608122256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A007376 (A056109 n).toNat

end

end A244815.P11316427946608122256

/-! ## A244815.P7836327203459263116

`ceil(1/A000041(n))*A007376(A056109(n))`
-/

namespace A244815.P7836327203459263116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A000041 n : ℚ)⌉ * A007376 (A056109 n).toNat

end

end A244815.P7836327203459263116

/-! ## A244815.P5536338648666499130

`A007376(A056109(n))+char[A000032(n+11)]`
-/

namespace A244815.P5536338648666499130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 11)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A056109 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A244815.P5536338648666499130

/-! ## A244815.P6927747331993858888

`A007376(A056109(n))+char[A000108(n+14)]`
-/

namespace A244815.P6927747331993858888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 14)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A056109 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A244815.P6927747331993858888

/-! ## A244815.P2117973496142232697

`A000108(C(n, n²))*A007376(A056109(n))`
-/

namespace A244815.P2117973496142232697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose n (n ^ 2)) * A007376 (A056109 n).toNat

end

end A244815.P2117973496142232697

/-! ## A244815.P420468781893422773

`A008683(gcd(n, n+1))*A007376(A056109(n))`
-/

namespace A244815.P420468781893422773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.gcd n (n + 1)) * A007376 (A056109 n).toNat

end

end A244815.P420468781893422773

/-!
# A244816: The hexagonal spiral of Champernowne, read along the South (or 180-degree) ray.

The programs for A244816, there is no canonical definition to state claims against.
-/

/-! ## A244816.P15176246074746683597

`A007376(∑[a(n-1)+24])` with `a(0)=1, a(1)=17`
-/

namespace A244816.P15176246074746683597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 17] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244816.P15176246074746683597

/-! ## A244816.P16344052679748984843

`A007376(n*(12*n+5)+1)`
-/

namespace A244816.P16344052679748984843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (n * (12 * n + 5) + 1)

end

end A244816.P16344052679748984843

/-! ## A244816.P15606955402287006228

`dr(A007376(A244806(n+1)))`
-/

namespace A244816.P15606955402287006228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A244806 (n + 1)).toNat)

end

end A244816.P15606955402287006228

/-! ## A244816.P10159501780541931118

`dr(A007376(A129863(4*n)/6))`
-/

namespace A244816.P10159501780541931118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (SequenceMachineLib.roundAway ((A129863 (4 * n) : ℚ) / 6)).toNat)

end

end A244816.P10159501780541931118

/-! ## A244816.P14319156521792660534

`dr(A007376(A056109(2*n)+n))`
-/

namespace A244816.P14319156521792660534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A056109 (2 * n) + (n : ℤ)).toNat)

end

end A244816.P14319156521792660534

/-! ## A244816.P14360234946197933829

`dr(A007376(A003215(2*n)-n))`
-/

namespace A244816.P14360234946197933829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A003215 (2 * n) - (n : ℤ)).toNat)

end

end A244816.P14360234946197933829

/-! ## A244816.P8472657763289333237

`dr(A007376(A244805(n+1)+n+n))`
-/

namespace A244816.P8472657763289333237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A244805 (n + 1) + (n : ℤ) + (n : ℤ)).toNat)

end

end A244816.P8472657763289333237

/-! ## A244816.P1025875111388546037

`dr(A007376(A014641(n)-A008585(n)))`
-/

namespace A244816.P1025875111388546037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A014641 n - A008585 n).toNat)

end

end A244816.P1025875111388546037

/-! ## A244816.P713443906305810708

`A007376(A003215(2*n)-n)/A010684(A008594(n))`
-/

namespace A244816.P713443906305810708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007376 (A003215 (2 * n) - (n : ℤ)).toNat : ℚ) / (A010684 (A008594 n).toNat : ℚ)

end

end A244816.P713443906305810708

/-! ## A244816.P5712345117326897657

`A007376(A003215(2*n)-n)/A010684(A069894(n))`
-/

namespace A244816.P5712345117326897657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007376 (A003215 (2 * n) - (n : ℤ)).toNat : ℚ) / (A010684 (A069894 n).toNat : ℚ)

end

end A244816.P5712345117326897657

/-!
# A244817: The hexagonal spiral of Champernowne, read along the 150-degree ray.

The programs for A244817, there is no canonical definition to state claims against.
-/

/-! ## A244817.P14307115164436007597

`A007376(Δ[n^3])`
-/

namespace A244817.P14307115164436007597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A244817.P14307115164436007597

/-! ## A244817.P7051232792149926553

`dr(A007376(Δ[n*n²]))`
-/

namespace A244817.P7051232792149926553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A244817.P7051232792149926553

/-! ## A244817.P10873769255949285121

`A007376(∑[6*n]+1)%15`
-/

namespace A244817.P10873769255949285121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) 15

end

end A244817.P10873769255949285121

/-! ## A244817.P5913196285553842046

`and(15, A007376(lcm(2, Δ[n*n²])/2))`
-/

namespace A244817.P5913196285553842046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 15 (A007376 (SequenceMachineLib.roundAway ((Int.lcm 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) / 2)).toNat)

end

end A244817.P5913196285553842046

/-! ## A244817.P2884190082335374805

`and(-1, A007376(A003215(n)))`
-/

namespace A244817.P2884190082335374805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A007376 (A003215 n).toNat)

end

end A244817.P2884190082335374805

/-! ## A244817.P5676296224762288963

`or(A000007(n), A007376(Δ[n*n²]))`
-/

namespace A244817.P5676296224762288963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A007376 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A244817.P5676296224762288963

/-! ## A244817.P8668304960567226107

`A007376(Δ[n*n²])+A000007(n+1)`
-/

namespace A244817.P8668304960567226107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A000007 (n + 1)

end

end A244817.P8668304960567226107

/-! ## A244817.P17158136302989101420

`A000034(2*n)*A007376(Δ[n*n²])`
-/

namespace A244817.P17158136302989101420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A007376 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A244817.P17158136302989101420

/-! ## A244817.P3633132177340570242

`A007318(C(2, n))*A007376(Δ[n*n²])`
-/

namespace A244817.P3633132177340570242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A007376 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A244817.P3633132177340570242

/-! ## A244817.P7201093723138321588

`∏{p}[n, A001221(#)]*A007376(Δ[n*n²])`
-/

namespace A244817.P7201093723138321588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), A001221 p) * A007376 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

end

end A244817.P7201093723138321588

/-! ## A244817.P5366556627359637502

`(A000041(n)%2)!*A007376(Δ[n*n²])`
-/

namespace A244817.P5366556627359637502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * A007376 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A244817.P5366556627359637502

/-! ## A244817.P11165724865932799615

`A000041(C(n, n²))*A007376(Δ[n*n²])`
-/

namespace A244817.P11165724865932799615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) * A007376 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A244817.P11165724865932799615

/-! ## A244817.P3776744014008022139

`A007376(Δ[n*n²])+A008683(4*(n+1))`
-/

namespace A244817.P3776744014008022139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A008683 (4 * (n + 1))

end

end A244817.P3776744014008022139

/-! ## A244817.P7407189727560840925

`A000041(gcd(n, n+1))*A007376(Δ[n*n²])`
-/

namespace A244817.P7407189727560840925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.gcd n (n + 1)) * A007376 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A244817.P7407189727560840925

/-! ## A244817.P4102189037918252349

`A007376(A003215(n))*A010684(2*n)`
-/

namespace A244817.P4102189037918252349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A003215 n).toNat * A010684 (2 * n)

end

end A244817.P4102189037918252349

/-! ## A244817.P4435677996361345717

`gcd(A000038(n), A007376(A056109(n)+n))`
-/

namespace A244817.P4435677996361345717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A007376 (A056109 n + (n : ℤ)).toNat)

end

end A244817.P4435677996361345717

/-! ## A244817.P15424161294778179264

`A007376(Δ[n*n²])+A000122(A000040(n+1))`
-/

namespace A244817.P15424161294778179264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A000122 (A000040 (n + 1)).toNat

end

end A244817.P15424161294778179264

/-! ## A244817.P8620082678993584161

`A007376(A003215(n))/A010684(A008594(n))`
-/

namespace A244817.P8620082678993584161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007376 (A003215 n).toNat : ℚ) / (A010684 (A008594 n).toNat : ℚ)

end

end A244817.P8620082678993584161

/-! ## A244817.P10634750925166480809

`A007376(A003215(n))^A066328(A102376(n))`
-/

namespace A244817.P10634750925166480809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007376 (A003215 n).toNat : ℚ) ^ (A066328 (A102376 n).toNat : ℤ)

end

end A244817.P10634750925166480809

/-! ## A244817.P9785894419096545762

`A007376(A003215(n))*A069897(A008578(n+1))`
-/

namespace A244817.P9785894419096545762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A003215 n).toNat * A069897 (A008578 (n + 1)).toNat

end

end A244817.P9785894419096545762

/-!
# A244818: The hexagonal spiral of Champernowne, read along the 120-degree ray.

The programs for A244818, there is no canonical definition to state claims against.
-/

/-! ## A244818.P3235758822365165220

`A007376(∑[a(n-1)+24])` with `a(0)=1, a(1)=19`
-/

namespace A244818.P3235758822365165220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 19] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244818.P3235758822365165220

/-! ## A244818.P15153582568722614425

`A007376(n*(12*n+7)+1)`
-/

namespace A244818.P15153582568722614425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (n * (12 * n + 7) + 1)

end

end A244818.P15153582568722614425

/-! ## A244818.P15846692983969719616

`dr(A007376(A033577(n)))`
-/

namespace A244818.P15846692983969719616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A033577 n).toNat)

end

end A244818.P15846692983969719616

/-! ## A244818.P4715336548469421127

`dr(A007376(A212978(3*n)))`
-/

namespace A244818.P4715336548469421127
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A212978 (3 * n)).toNat)

end

end A244818.P4715336548469421127

/-! ## A244818.P11479547662731455568

`dr(A007376(A164576(Δ[n²])))`
-/

namespace A244818.P11479547662731455568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A164576 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat)

end

end A244818.P11479547662731455568

/-! ## A244818.P6943951238269367723

`dr(A007376(ceil(A033576(n)/2)))`
-/

namespace A244818.P6943951238269367723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 ⌈(A033576 n : ℚ) / 2⌉.toNat)

end

end A244818.P6943951238269367723

/-! ## A244818.P12059497299863972108

`dr(A007376(A033591(n)/Δ[n²]))`
-/

namespace A244818.P12059497299863972108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (SequenceMachineLib.roundAway ((A033591 n : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ))).toNat)

end

end A244818.P12059497299863972108

/-! ## A244818.P14787147038336197145

`dr(A007376(A016816(n)%A017102(n)))`
-/

namespace A244818.P14787147038336197145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (Int.tmod (A016816 n) (A017102 n)).toNat)

end

end A244818.P14787147038336197145

/-!
# A244819: Positive numbers primitively represented by the binary quadratic form (1, 0, 3).

The programs for A244819, there is no canonical definition to state claims against.
-/

/-! ## A244819.P3086044211027710013

`∩[round(4*n/3), A057128(n+1)]`
-/

namespace A244819.P3086044211027710013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (4 * ((n : ℚ) / 3))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244819.P3086044211027710013

/-! ## A244819.P5535932136812468004

`∪[∑[2*n]+1, A092574(n+1)]`
-/

namespace A244819.P5535932136812468004
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A244819.P5535932136812468004

/-! ## A244819.P991401246921979351

`filter[A057128(n+1), A035263(#)]`
-/

namespace A244819.P991401246921979351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A244819.P991401246921979351

/-! ## A244819.P11930163797883994732

`filter[A057128(n+1), A104106(#)]`
-/

namespace A244819.P11930163797883994732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A104106 (f1 j).toNat = 1) n)

end

end A244819.P11930163797883994732

/-! ## A244819.P15297785761165596059

`filter[A057128(n+1), A137893(#)]`
-/

namespace A244819.P15297785761165596059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137893 (f1 j).toNat = 1) n)

end

end A244819.P15297785761165596059

/-! ## A244819.P2420331071427840450

`filter[A057128(n+1), A141260(#)]`
-/

namespace A244819.P2420331071427840450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A141260 (f1 j).toNat = 1) n)

end

end A244819.P2420331071427840450

/-! ## A244819.P18238201367180260644

`filter[A057128(n+1), A152822(#)]`
-/

namespace A244819.P18238201367180260644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A244819.P18238201367180260644

/-! ## A244819.P3750757337726898521

`filter[A057128(n+1), A259044(#)]`
-/

namespace A244819.P3750757337726898521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A259044 (f1 j).toNat = 1) n)

end

end A244819.P3750757337726898521

/-! ## A244819.P11721796401426215891

`filter[A057128(n+1), A259599(#)]`
-/

namespace A244819.P11721796401426215891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A259599 (f1 j).toNat = 1) n)

end

end A244819.P11721796401426215891

/-! ## A244819.P18233423830674779695

`filter[A057128(n+1), A353816(#)]`
-/

namespace A244819.P18233423830674779695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A244819.P18233423830674779695

/-!
# A244820: E.g.f.: Sum_{n>=0} exp(n*2^n*x) * x^n/n!.

The programs for A244820, there is no canonical definition to state claims against.
-/

/-! ## A244820.P3785752049446793661

`and(A302596(A302617(n+1)), A302616(n))`
-/

namespace A244820.P3785752049446793661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A302596 (A302617 (n + 1)).toNat) (A302616 n)

end

end A244820.P3785752049446793661

/-!
# A244821: E.g.f.: Sum_{n>=0} exp(n*3^n*x) * x^n/n!.

The programs for A244821, there is no canonical definition to state claims against.
-/

/-! ## A244821.P2269137952481057473

`A136505(n)-A109082(A136505(n))`
-/

namespace A244821.P2269137952481057473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136505 n - A109082 (A136505 n).toNat

end

end A244821.P2269137952481057473

/-!
# A244822: E.g.f.: Sum_{n>=0} exp(n*4^n*x) * x^n/n!.

The programs for A244822, there is no canonical definition to state claims against.
-/

/-! ## A244822.P15040614365300848788

`A087087(A025014(n))`
-/

namespace A244822.P15040614365300848788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087087 (A025014 n).toNat

end

end A244822.P15040614365300848788

/-!
# A244824: Sum of all divisors of all positive integers <= 2^n.

The programs for A244824, the canonical program `A244824.P13510409849128085719` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244824 has offset 0).

The definition of A244824 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244824.P13510409849128085719

`A024916(A000079(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A244824

/-- `A024916(A000079(n))` -/
def P13510409849128085719.Spec : Prop :=
  ∀ n, P13510409849128085719.a n = A244824 n

theorem P13510409849128085719.correct : P13510409849128085719.Spec := by
  intro n
  simp only [A244824]

end A244824

/-! ## A244824.P5339275416155845961

`A024916(2^n)`
-/

namespace A244824.P5339275416155845961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (2 ^ n)

end

end A244824.P5339275416155845961

namespace A244824

/-- `A024916(2^n)` -/
def P5339275416155845961.Spec : Prop :=
  ∀ n, P5339275416155845961.a n = A244824 n

end A244824

/-! ## A244824.P5210468037117945569

`∑[A350146(2^n)]`
-/

namespace A244824.P5210468037117945569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350146 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244824.P5210468037117945569

namespace A244824

/-- `∑[A350146(2^n)]` -/
def P5210468037117945569.Spec : Prop :=
  ∀ n, P5210468037117945569.a n = A244824 n

end A244824

/-! ## A244824.P14505355322075810182

`A160664(2^n)-1`
-/

namespace A244824.P14505355322075810182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (2 ^ n) - 1

end

end A244824.P14505355322075810182

namespace A244824

/-- `A160664(2^n)-1` -/
def P14505355322075810182.Spec : Prop :=
  ∀ n, P14505355322075810182.a n = A244824 n

end A244824

/-! ## A244824.P15227653735923626954

`A327329(2^n)/2`
-/

namespace A244824.P15227653735923626954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327329 (2 ^ n) : ℚ) / 2

end

end A244824.P15227653735923626954

namespace A244824

/-- `A327329(2^n)/2` -/
def P15227653735923626954.Spec : Prop :=
  ∀ n, P15227653735923626954.a n = (A244824 n : ℚ)

end A244824

/-!
# A244825: Number of length n 0..1 arrays with each partial sum starting from the beginning no more than two standard deviations from its mean.

The programs for A244825, there is no canonical definition to state claims against.
-/

/-! ## A244825.P13884197010721735920

`A244832(∑[n+1])`
-/

namespace A244825.P13884197010721735920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244825.P13884197010721735920

/-! ## A244825.P15700585777507968230

`lcm(2, A244832(A000217(n+1)))`
-/

namespace A244825.P15700585777507968230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A244832 (A000217 (n + 1)).toNat)

end

end A244825.P15700585777507968230

/-! ## A244825.P6273888743186247989

`record[gcd(A244832(n+1), A245842(n+1))]`
-/

namespace A244825.P6273888743186247989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A244832 (n + 1)) (A245842 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244825.P6273888743186247989

/-! ## A244825.P12527149348643080110

`record[A244832(A000217(A344180(n)))]`
-/

namespace A244825.P12527149348643080110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A000217 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244825.P12527149348643080110

/-! ## A244825.P5823159273143895841

`record[A244832(A000217(A002260(n+1)))]`
-/

namespace A244825.P5823159273143895841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A000217 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244825.P5823159273143895841

/-! ## A244825.P16474877398745788487

`record[A244832(A000217(A027750(n+1)))]`
-/

namespace A244825.P16474877398745788487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A000217 (A027750 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244825.P16474877398745788487

/-! ## A244825.P8724488673190883650

`record[A244832(A000217(A302032(n+1)))]`
-/

namespace A244825.P8724488673190883650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A000217 (A302032 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244825.P8724488673190883650

/-!
# A244826: Number of length n 0..2 arrays with each partial sum starting from the beginning no more than two standard deviations from its mean.

The programs for A244826, there is no canonical definition to state claims against.
-/

/-! ## A244826.P18112954373642205812

`A244832(∑[n+2])`
-/

namespace A244826.P18112954373642205812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244826.P18112954373642205812

/-! ## A244826.P15912087139521912817

`or(1, A244832(A000096(n+1)))`
-/

namespace A244826.P15912087139521912817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A244832 (A000096 (n + 1)).toNat)

end

end A244826.P15912087139521912817

/-! ## A244826.P7528400950975931878

`record[A244832(A000096(A274640(n)))]`
-/

namespace A244826.P7528400950975931878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A000096 (A274640 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244826.P7528400950975931878

/-! ## A244826.P10442327744285622842

`record[A244832(A000096(A286614(n)))]`
-/

namespace A244826.P10442327744285622842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A000096 (A286614 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244826.P10442327744285622842

/-! ## A244826.P829586240396149065

`record[A244832(A000096(A003602(n+1)))]`
-/

namespace A244826.P829586240396149065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A000096 (A003602 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244826.P829586240396149065

/-! ## A244826.P3652188798935914970

`record[A244832(A000096(A003963(n+1)))]`
-/

namespace A244826.P3652188798935914970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A000096 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244826.P3652188798935914970

/-! ## A244826.P16595472253860726129

`record[A244832(A000096(A010783(n+1)))]`
-/

namespace A244826.P16595472253860726129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A000096 (A010783 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244826.P16595472253860726129

/-! ## A244826.P2067923800831324445

`record[A244832(A000096(A097285(n+1)))]`
-/

namespace A244826.P2067923800831324445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A000096 (A097285 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244826.P2067923800831324445

/-! ## A244826.P14357422151894064398

`record[A244832(A000096(A198789(n+1)))]`
-/

namespace A244826.P14357422151894064398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A000096 (A198789 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244826.P14357422151894064398

/-! ## A244826.P8459949877662452545

`record[A244832(A000096(A265110(n+1)))]`
-/

namespace A244826.P8459949877662452545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A000096 (A265110 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244826.P8459949877662452545

/-!
# A244827: Number of length n 0..3 arrays with each partial sum starting from the beginning no more than two standard deviations from its mean.

The programs for A244827, there is no canonical definition to state claims against.
-/

/-! ## A244827.P4388085361611471149

`A244832(∑[n+3]+1)`
-/

namespace A244827.P4388085361611471149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A244827.P4388085361611471149

/-! ## A244827.P903317733776466896

`lcm(2, A244832(A034856(n+2)))`
-/

namespace A244827.P903317733776466896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A244832 (A034856 (n + 2)).toNat)

end

end A244827.P903317733776466896

/-! ## A244827.P14454818459839185462

`A244832(A034856(n+2))+A000035(2*(n+1))`
-/

namespace A244827.P14454818459839185462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A034856 (n + 2)).toNat + A000035 (2 * (n + 1))

end

end A244827.P14454818459839185462

/-! ## A244827.P4954940563356206770

`A007318(A000217(n+6))*A244832(A034856(n+2))`
-/

namespace A244827.P4954940563356206770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 6)).toNat * A244832 (A034856 (n + 2)).toNat

end

end A244827.P4954940563356206770

/-!
# A244828: Number of length n 0..4 arrays with each partial sum starting from the beginning no more than two standard deviations from its mean.

The programs for A244828, there is no canonical definition to state claims against.
-/

/-! ## A244828.P8695099005165174471

`A244832(A027379(n+2))`
-/

namespace A244828.P8695099005165174471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A027379 (n + 2)).toNat

end

end A244828.P8695099005165174471

/-! ## A244828.P4414064208564574821

`A244832(A055998(n+2))`
-/

namespace A244828.P4414064208564574821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A055998 (n + 2)).toNat

end

end A244828.P4414064208564574821

/-! ## A244828.P7142885888497245076

`A244832(A155212(n)+5)`
-/

namespace A244828.P7142885888497245076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A155212 n + 5).toNat

end

end A244828.P7142885888497245076

/-! ## A244828.P5584865575646430722

`A244832(A056000(n)+7)`
-/

namespace A244828.P5584865575646430722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A056000 n + 7).toNat

end

end A244828.P5584865575646430722

/-! ## A244828.P15409146753053104340

`A244832(Δ[A034857(n+1)])`
-/

namespace A244828.P15409146753053104340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (f1 (n + 1) - f1 n).toNat

end

end A244828.P15409146753053104340

/-! ## A244828.P8067049309794377535

`A244832(A052905(n+1)+2)`
-/

namespace A244828.P8067049309794377535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A052905 (n + 1) + 2).toNat

end

end A244828.P8067049309794377535

/-! ## A244828.P12389132210643037329

`A244832(A165157(Δ[A028387(n)]))`
-/

namespace A244828.P12389132210643037329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A165157 (f1 (n + 1) - f1 n).toNat).toNat

end

end A244828.P12389132210643037329

/-! ## A244828.P12572032496188472816

`A244832(A167614(n+1)+A005408(n))`
-/

namespace A244828.P12572032496188472816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A167614 (n + 1) + A005408 n).toNat

end

end A244828.P12572032496188472816

/-!
# A244829: Number of length n 0..5 arrays with each partial sum starting from the beginning no more than two standard deviations from its mean.

The programs for A244829, there is no canonical definition to state claims against.
-/

/-! ## A244829.P1258784192758535644

`A244832(A046691(n+3))`
-/

namespace A244829.P1258784192758535644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A046691 (n + 3)).toNat

end

end A244829.P1258784192758535644

/-! ## A244829.P5685971839952757642

`A244832(Δ[A023545(n+1)])`
-/

namespace A244829.P5685971839952757642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (f1 (n + 1) - f1 n).toNat

end

end A244829.P5685971839952757642

/-! ## A244829.P4355679628812653550

`A244832(A056000(n+1)+6)`
-/

namespace A244829.P4355679628812653550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A056000 (n + 1) + 6).toNat

end

end A244829.P4355679628812653550

/-! ## A244829.P16582116033546872039

`A244832(Δ[A034857(n+2)]-1)`
-/

namespace A244829.P16582116033546872039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (f1 (n + 1) - f1 n - 1).toNat

end

end A244829.P16582116033546872039

/-! ## A244829.P6992053537005917729

`A244832(A000217(n+6)-(n+10))`
-/

namespace A244829.P6992053537005917729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A000217 (n + 6) - (n + 10 : ℤ)).toNat

end

end A244829.P6992053537005917729

/-! ## A244829.P3860501697240796623

`A244832(A000124(n+6)-(n+11))`
-/

namespace A244829.P3860501697240796623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A000124 (n + 6) - (n + 11 : ℤ)).toNat

end

end A244829.P3860501697240796623

/-! ## A244829.P15964847146713080623

`A244832(A028387(n+2)-A000096(n))`
-/

namespace A244829.P15964847146713080623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A028387 (n + 2) - A000096 n).toNat

end

end A244829.P15964847146713080623

/-!
# A244830: Number of length n 0..6 arrays with each partial sum starting from the beginning no more than two standard deviations from its mean.

The programs for A244830, there is no canonical definition to state claims against.
-/

/-! ## A244830.P12239472339808809343

`A244832(A052905(n+3))`
-/

namespace A244830.P12239472339808809343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A052905 (n + 3)).toNat

end

end A244830.P12239472339808809343

/-! ## A244830.P8211717307770367039

`A244832(A056000(n+2)+5)`
-/

namespace A244830.P8211717307770367039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A056000 (n + 2) + 5).toNat

end

end A244830.P8211717307770367039

/-! ## A244830.P4108526388332173725

`A244832(A000124(n+6)-6)`
-/

namespace A244830.P4108526388332173725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A000124 (n + 6) - 6).toNat

end

end A244830.P4108526388332173725

/-! ## A244830.P13661820139695227876

`A244832(Δ[Δ[A006504(n+1)]])`
-/

namespace A244830.P13661820139695227876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (f1 (n + 1) - f1 n).toNat

end

end A244830.P13661820139695227876

/-! ## A244830.P9651589868675342388

`A244832(Δ[A023545(n+2)]-1)`
-/

namespace A244830.P9651589868675342388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (f1 (n + 1) - f1 n - 1).toNat

end

end A244830.P9651589868675342388

/-! ## A244830.P13115072680544507339

`A244832(A000217(n+5)+n+1)`
-/

namespace A244830.P13115072680544507339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A000217 (n + 5) + (n + 1 : ℤ)).toNat

end

end A244830.P13115072680544507339

/-! ## A244830.P14387586570990821878

`A244832(A133263(n+8)-A005843(n+11))`
-/

namespace A244830.P14387586570990821878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A133263 (n + 8) - A005843 (n + 11)).toNat

end

end A244830.P14387586570990821878

/-!
# A244831: Number of length n 0..7 arrays with each partial sum starting from the beginning no more than two standard deviations from its mean.

The programs for A244831, there is no canonical definition to state claims against.
-/

/-! ## A244831.P2709792379877670743

`A244832(A055999(n+4))`
-/

namespace A244831.P2709792379877670743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A055999 (n + 4)).toNat

end

end A244831.P2709792379877670743

/-! ## A244831.P12728997969793185504

`A244832(A000096(n+6)-5)`
-/

namespace A244831.P12728997969793185504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A000096 (n + 6) - 5).toNat

end

end A244831.P12728997969793185504

/-! ## A244831.P4900046776366034852

`A244832(A000124(n+7)-7)`
-/

namespace A244831.P4900046776366034852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A000124 (n + 7) - 7).toNat

end

end A244831.P4900046776366034852

/-! ## A244831.P13205743080238806358

`A244832(A133263(n+6)-(1-n))`
-/

namespace A244831.P13205743080238806358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A133263 (n + 6) - (1 - (n : ℤ))).toNat

end

end A244831.P13205743080238806358

/-! ## A244831.P1902650505206333682

`A244832(Δ[Δ[A006504(n+1)]]+n+6)`
-/

namespace A244831.P1902650505206333682
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (f1 (n + 1) - f1 n + (n + 6 : ℤ)).toNat

end

end A244831.P1902650505206333682

/-! ## A244831.P3720041555941021542

`A244832(A000217(n+8)-A009056(n+12))`
-/

namespace A244831.P3720041555941021542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A000217 (n + 8) - A009056 (n + 12)).toNat

end

end A244831.P3720041555941021542

/-!
# A244832: T(n,k) = Number of length n 0..k arrays with each partial sum starting from the beginning no more than two standard deviations from its mean.

The programs for A244832, there is no canonical definition to state claims against.
-/

/-! ## A244832.P18077238387310648643

`A347249(n+1)+A250351(A077168(n))`
-/

namespace A244832.P18077238387310648643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347249 (n + 1) + A250351 (A077168 n).toNat

end

end A244832.P18077238387310648643

/-! ## A244832.P15829554856824766520

`A250351(n+1)-A025465(A077168(n))`
-/

namespace A244832.P15829554856824766520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250351 (n + 1) - A025465 (A077168 n).toNat

end

end A244832.P15829554856824766520

/-! ## A244832.P15397775628247368511

`A250351(n+1)-A025465(A099962(n))`
-/

namespace A244832.P15397775628247368511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250351 (n + 1) - A025465 (A099962 n).toNat

end

end A244832.P15397775628247368511

/-! ## A244832.P14173691507636264510

`A250351(A077168(n))-A083919(n+1)`
-/

namespace A244832.P14173691507636264510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250351 (A077168 n).toNat - A083919 (n + 1)

end

end A244832.P14173691507636264510

/-! ## A244832.P13292477275230952594

`A250351(n+1)-A189632(A036618(n))`
-/

namespace A244832.P13292477275230952594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250351 (n + 1) - A189632 (A036618 n).toNat

end

end A244832.P13292477275230952594

/-!
# A244833: Number of length 2 0..n arrays with each partial sum starting from the beginning no more than two standard deviations from its mean.

The programs for A244833, there is no canonical definition to state claims against.
-/

/-! ## A244833.P11939937202986166282

`A244832(∑[n+1]+2)`
-/

namespace A244833.P11939937202986166282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A244833.P11939937202986166282

/-! ## A244833.P8092902062764370793

`or(char[1], A244832(A133263(n+1)))`
-/

namespace A244833.P8092902062764370793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A244832 (A133263 (n + 1)).toNat)

end

end A244833.P8092902062764370793

/-! ## A244833.P11503420180477002245

`A244832(C(n+2, 2)+2)%A017055(n)`
-/

namespace A244833.P11503420180477002245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244832 (Nat.choose (n + 2) 2 + 2)) (A017055 n)

end

end A244833.P11503420180477002245

/-! ## A244833.P2031116099865335263

`or(A000035(n), A244832(C(n+2, 2)+2))`
-/

namespace A244833.P2031116099865335263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A244832 (Nat.choose (n + 2) 2 + 2))

end

end A244833.P2031116099865335263

/-! ## A244833.P5991048575769103824

`∑{d}[A244832(A133263(n+1)), A000010(#)]`
-/

namespace A244833.P5991048575769103824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A133263 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A244833.P5991048575769103824

/-! ## A244833.P2918826005514065870

`A244832(A133263(n+1))+A002483(2*n)`
-/

namespace A244833.P2918826005514065870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A133263 (n + 1)).toNat + A002483 (2 * n)

end

end A244833.P2918826005514065870

/-! ## A244833.P10141482456114147979

`A244832(A133263(n+1))%A020465(n+1)`
-/

namespace A244833.P10141482456114147979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244832 (A133263 (n + 1)).toNat) (A020465 (n + 1))

end

end A244833.P10141482456114147979

/-! ## A244833.P11259716476715726660

`A244832(A000096(n)+3)%A108792(n+5)`
-/

namespace A244833.P11259716476715726660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244832 (A000096 n + 3).toNat) (A108792 (n + 5))

end

end A244833.P11259716476715726660

/-! ## A244833.P16855867822959279968

`A244832(A000217(n+1)+2)%A027818(n+1)`
-/

namespace A244833.P16855867822959279968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244832 (A000217 (n + 1) + 2).toNat) (A027818 (n + 1))

end

end A244833.P16855867822959279968

/-!
# A244834: Number of length 3 0..n arrays with each partial sum starting from the beginning no more than two standard deviations from its mean.

The programs for A244834, there is no canonical definition to state claims against.
-/

/-! ## A244834.P8962302434719092373

`A244832(∑[n+2]+4)`
-/

namespace A244834.P8962302434719092373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A244834.P8962302434719092373

/-! ## A244834.P6828069502415372225

`A244832(A167614(n+1))%A016972(n)`
-/

namespace A244834.P6828069502415372225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244832 (A167614 (n + 1)).toNat) (A016972 n)

end

end A244834.P6828069502415372225

/-! ## A244834.P4175430629992268495

`lcm(A033999(n), A244832(A167614(n+1)))`
-/

namespace A244834.P4175430629992268495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A244832 (A167614 (n + 1)).toNat)

end

end A244834.P4175430629992268495

/-! ## A244834.P6759080815058752152

`or(A000035(n), A244832(A167614(n+1)))`
-/

namespace A244834.P6759080815058752152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A244832 (A167614 (n + 1)).toNat)

end

end A244834.P6759080815058752152

/-! ## A244834.P68209666575143220

`or(A063524(n), A244832(A167614(n+1)))`
-/

namespace A244834.P68209666575143220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063524 n) (A244832 (A167614 (n + 1)).toNat)

end

end A244834.P68209666575143220

/-!
# A244835: Number of length 4 0..n arrays with each partial sum starting from the beginning no more than two standard deviations from its mean.

The programs for A244835, there is no canonical definition to state claims against.
-/

/-! ## A244835.P14641555070648329542

`A244832(A052905(n)+9)`
-/

namespace A244835.P14641555070648329542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A052905 n + 9).toNat

end

end A244835.P14641555070648329542

/-! ## A244835.P17640405025067149086

`A244832(A055999(n)+10)`
-/

namespace A244835.P17640405025067149086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A055999 n + 10).toNat

end

end A244835.P17640405025067149086

/-! ## A244835.P14409011127460921095

`A244832(A167614(n+2)+1)`
-/

namespace A244835.P14409011127460921095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A167614 (n + 2) + 1).toNat

end

end A244835.P14409011127460921095

/-! ## A244835.P8383730631224024321

`A244832(A167499(n+2)-1)`
-/

namespace A244835.P8383730631224024321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A167499 (n + 2) - 1).toNat

end

end A244835.P8383730631224024321

/-! ## A244835.P8043823656916428420

`A244832(A000096(n+2)+5)`
-/

namespace A244835.P8043823656916428420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A000096 (n + 2) + 5).toNat

end

end A244835.P8043823656916428420

/-! ## A244835.P12105001154300734968

`A244832(A027379(n+1)+7)`
-/

namespace A244835.P12105001154300734968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A027379 (n + 1) + 7).toNat

end

end A244835.P12105001154300734968

/-! ## A244835.P2665972438470474522

`A244832(A055998(n+1)+7)`
-/

namespace A244835.P2665972438470474522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A055998 (n + 1) + 7).toNat

end

end A244835.P2665972438470474522

/-! ## A244835.P14691629793003260163

`A244832(Δ[A023545(n+1)-n²])`
-/

namespace A244835.P14691629793003260163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (f1 (n + 1) - f1 n).toNat

end

end A244835.P14691629793003260163

/-! ## A244835.P16339939362483951374

`A244832(A038722(Δ[A034857(n+1)]))`
-/

namespace A244835.P16339939362483951374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A244835.P16339939362483951374

/-!
# A244836: Number of length 5 0..n arrays with each partial sum starting from the beginning no more than two standard deviations from its mean.

The programs for A244836, there is no canonical definition to state claims against.
-/

/-! ## A244836.P8918415090884827143

`A244832(A167499(n+3))`
-/

namespace A244836.P8918415090884827143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A167499 (n + 3)).toNat

end

end A244836.P8918415090884827143

/-! ## A244836.P11633401905416889193

`A244832(A056000(n)+15)`
-/

namespace A244836.P11633401905416889193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A056000 n + 15).toNat

end

end A244836.P11633401905416889193

/-! ## A244836.P744468184988882500

`A244832(A167614(n+3)+2)`
-/

namespace A244836.P744468184988882500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A167614 (n + 3) + 2).toNat

end

end A244836.P744468184988882500

/-! ## A244836.P6569843047477947677

`A244832(A027379(n+2)+8)`
-/

namespace A244836.P6569843047477947677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A027379 (n + 2) + 8).toNat

end

end A244836.P6569843047477947677

/-! ## A244836.P13249477913253797374

`A244832(A055998(n+2)+8)`
-/

namespace A244836.P13249477913253797374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A055998 (n + 2) + 8).toNat

end

end A244836.P13249477913253797374

/-! ## A244836.P10611452080978072402

`A244832(A038722(Δ[A023545(n+1)]))`
-/

namespace A244836.P10611452080978072402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A244836.P10611452080978072402

/-! ## A244836.P7005973455123840405

`A244832(A110654(Δ[A026046(n+6)]))`
-/

namespace A244836.P7005973455123840405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026046 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A110654 (f1 (n + 1) - f1 n).toNat).toNat

end

end A244836.P7005973455123840405

/-!
# A244837: Number of length 6 0..n arrays with each partial sum starting from the beginning no more than two standard deviations from its mean.

The programs for A244837, there is no canonical definition to state claims against.
-/

/-! ## A244837.P7045448719435933984

`A244832(A000124(n+5)+5)`
-/

namespace A244837.P7045448719435933984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A000124 (n + 5) + 5).toNat

end

end A244837.P7045448719435933984

/-! ## A244837.P12060002075259630220

`A244832(A000096(n+4)+7)`
-/

namespace A244837.P12060002075259630220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A000096 (n + 4) + 7).toNat

end

end A244837.P12060002075259630220

/-! ## A244837.P11139968400464652698

`A244832(A000217(n+5)+6)`
-/

namespace A244837.P11139968400464652698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A000217 (n + 5) + 6).toNat

end

end A244837.P11139968400464652698

/-! ## A244837.P2494857479644072802

`A244832(A103517(n+9)+A052905(n))`
-/

namespace A244837.P2494857479644072802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A103517 (n + 9) + A052905 n).toNat

end

end A244837.P2494857479644072802

/-! ## A244837.P13862137585691677539

`A244832(A055998(n+2)-A024000(n+15))`
-/

namespace A244837.P13862137585691677539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A055998 (n + 2) - A024000 (n + 15)).toNat

end

end A244837.P13862137585691677539

/-!
# A244838: Number of length 7 0..n arrays with each partial sum starting from the beginning no more than two standard deviations from its mean.

The programs for A244838, there is no canonical definition to state claims against.
-/

/-! ## A244838.P6614714032647892841

`A244832(A167499(n+5)+2)`
-/

namespace A244838.P6614714032647892841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A167499 (n + 5) + 2).toNat

end

end A244838.P6614714032647892841

/-! ## A244838.P13332085330709374849

`A244832(A167614(n+5)+4)`
-/

namespace A244838.P13332085330709374849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A167614 (n + 5) + 4).toNat

end

end A244838.P13332085330709374849

/-! ## A244838.P17945563814598103741

`A244832(A133263(n+6)+5)`
-/

namespace A244838.P17945563814598103741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A133263 (n + 6) + 5).toNat

end

end A244838.P17945563814598103741

/-! ## A244838.P7884392217107567760

`A244832(A000124(n+6)+6)`
-/

namespace A244838.P7884392217107567760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A000124 (n + 6) + 6).toNat

end

end A244838.P7884392217107567760

/-! ## A244838.P12589524537357287914

`A244832(A000217(n+6)+7)`
-/

namespace A244838.P12589524537357287914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A000217 (n + 6) + 7).toNat

end

end A244838.P12589524537357287914

/-! ## A244838.P7080886639841472241

`A244832(A173036(n+6)-6)`
-/

namespace A244838.P7080886639841472241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A173036 (n + 6) - 6).toNat

end

end A244838.P7080886639841472241

/-! ## A244838.P3642292167225931617

`A244832(A155212(n+2)+15)`
-/

namespace A244838.P3642292167225931617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A155212 (n + 2) + 15).toNat

end

end A244838.P3642292167225931617

/-!
# A244840: Denominators of the triangle T(n,k) = (n*(n+1)/2+k+1)/(k+1) for n >= k >= 0.

The programs for A244840, the canonical program `A244840.P8759654480892561535` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244840 has offset 0).

The definition of A244840 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244840.P8759654480892561535

`lcm(n+1, A002260(n+1))/(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A244840

/-- `lcm(n+1, A002260(n+1))/(n+1)` -/
def P8759654480892561535.Spec : Prop :=
  ∀ n, P8759654480892561535.a n = (A244840 n : ℚ)

end A244840

/-! ## A244840.P14020433447713461916

`lcm(A002262(n)+1, C(n+1, n))/(n+1)`
-/

namespace A244840.P14020433447713461916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A002262 n + 1) (Nat.choose (n + 1) n : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A244840.P14020433447713461916

namespace A244840

/-- `lcm(A002262(n)+1, C(n+1, n))/(n+1)` -/
def P14020433447713461916.Spec : Prop :=
  ∀ n, P14020433447713461916.a n = (A244840 n : ℚ)

end A244840

/-! ## A244840.P5759177277046417444

`A002260(n+1)/gcd(n+1, A057944(n))`
-/

namespace A244840.P5759177277046417444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A057944 n) : ℚ)

end

end A244840.P5759177277046417444

namespace A244840

/-- `A002260(n+1)/gcd(n+1, A057944(n))` -/
def P5759177277046417444.Spec : Prop :=
  ∀ n, P5759177277046417444.a n = (A244840 n : ℚ)

end A244840

/-! ## A244840.P776842559703727579

`lcm(A000027(n+1), A057555(2*n+1))/(n+1)`
-/

namespace A244840.P776842559703727579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000027 (n + 1)) (A057555 (2 * n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A244840.P776842559703727579

namespace A244840

/-- `lcm(A000027(n+1), A057555(2*n+1))/(n+1)` -/
def P776842559703727579.Spec : Prop :=
  ∀ n, P776842559703727579.a n = (A244840 n : ℚ)

end A244840

/-! ## A244840.P4820346176987578366

`lcm(n+1, A000005(A059268(n)))/(n+1)`
-/

namespace A244840.P4820346176987578366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A000005 (A059268 n).toNat) : ℚ) / (n + 1 : ℚ)

end

end A244840.P4820346176987578366

namespace A244840

/-- `lcm(n+1, A000005(A059268(n)))/(n+1)` -/
def P4820346176987578366.Spec : Prop :=
  ∀ n, P4820346176987578366.a n = (A244840 n : ℚ)

end A244840

/-! ## A244840.P11000466144904514414

`A164306(∑[n]+1-C(∑[char[∑[n]]], 2)+n)`
-/

namespace A244840.P11000466144904514414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ) + (n : ℤ))).toNat

end

end A244840.P11000466144904514414

namespace A244840

/-- `A164306(∑[n]+1-C(∑[char[∑[n]]], 2)+n)` -/
def P11000466144904514414.Spec : Prop :=
  ∀ n, P11000466144904514414.a n = A244840 n

end A244840

/-! ## A244840.P17679604914661919319

`A164306(A002260(n+1)+∑[n])`
-/

namespace A244840.P17679604914661919319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (A002260 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A244840.P17679604914661919319

namespace A244840

/-- `A164306(A002260(n+1)+∑[n])` -/
def P17679604914661919319.Spec : Prop :=
  ∀ n, P17679604914661919319.a n = A244840 n

end A244840

/-! ## A244840.P905068076279693918

`A164306(∑[n]+A002262(n)+1)`
-/

namespace A244840.P905068076279693918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A002262 n + 1)).toNat

end

end A244840.P905068076279693918

namespace A244840

/-- `A164306(∑[n]+A002262(n)+1)` -/
def P905068076279693918.Spec : Prop :=
  ∀ n, P905068076279693918.a n = A244840 n

end A244840

/-! ## A244840.P9176771019182226796

`A164306(∑[n+1]-A057944(n))`
-/

namespace A244840.P9176771019182226796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A057944 n).toNat

end

end A244840.P9176771019182226796

namespace A244840

/-- `A164306(∑[n+1]-A057944(n))` -/
def P9176771019182226796.Spec : Prop :=
  ∀ n, P9176771019182226796.a n = A244840 n

end A244840

/-! ## A244840.P3076277446962463060

`A164306(A002262(n)+A000124(n))`
-/

namespace A244840.P3076277446962463060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (A002262 n + A000124 n).toNat

end

end A244840.P3076277446962463060

namespace A244840

/-- `A164306(A002262(n)+A000124(n))` -/
def P3076277446962463060.Spec : Prop :=
  ∀ n, P3076277446962463060.a n = A244840 n

end A244840

/-!
# A244841: 4^p - 3^p - 1, where p is prime.

The programs for A244841, there is no canonical definition to state claims against.
-/

/-! ## A244841.P7207991267859991053

`A005061(p?[A007989(n)])-1`
-/

namespace A244841.P7207991267859991053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005061 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A244841.P7207991267859991053

/-! ## A244841.P10229133069835701125

`A005061(p?[A091203(n)])-1`
-/

namespace A244841.P10229133069835701125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005061 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A244841.P10229133069835701125

/-! ## A244841.P14974013334966722221

`A005061(A000040(n+1))-1`
-/

namespace A244841.P14974013334966722221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005061 (A000040 (n + 1)).toNat - 1

end

end A244841.P14974013334966722221

/-! ## A244841.P9590368970267811022

`A167762(2*A000040(n+1))-1`
-/

namespace A244841.P9590368970267811022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167762 (2 * A000040 (n + 1)).toNat - 1

end

end A244841.P9590368970267811022

/-! ## A244841.P909639892418400886

`A155609(p?[A018252(n+1)-7])-2`
-/

namespace A244841.P909639892418400886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155609 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 2

end

end A244841.P909639892418400886

/-!
# A244842: a(n) = (10^n - 1)*(10^n - 10)/90.

The programs for A244842, the canonical program `A244842.P18218065838507829442` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244842 has offset 1).

The definition of A244842 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244842.P18218065838507829442

`(10^(n+1)-1)*(10^(n+1)-10)/90`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A244842

/-- `(10^(n+1)-1)*(10^(n+1)-10)/90` -/
def P18218065838507829442.Spec : Prop :=
  ∀ n, P18218065838507829442.a n = (A244842 (n + 1) : ℚ)

end A244842

/-! ## A244842.P10012548213529022324

`record[Δ[A288662(n)]]`
-/

namespace A244842.P10012548213529022324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288662 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244842.P10012548213529022324

namespace A244842

/-- `record[Δ[A288662(n)]]` -/
def P10012548213529022324.Spec : Prop :=
  ∀ n, P10012548213529022324.a n = A244842 (n + 1)

end A244842

/-! ## A244842.P4076228402302725174

`record[Δ[-A282416(n)]]`
-/

namespace A244842.P4076228402302725174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A282416 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244842.P4076228402302725174

namespace A244842

/-- `record[Δ[-A282416(n)]]` -/
def P4076228402302725174.Spec : Prop :=
  ∀ n, P4076228402302725174.a n = A244842 (n + 1)

end A244842

/-! ## A244842.P1042833014230492727

`A138148(n)-∑[floor(10^n/5)]`
-/

namespace A244842.P1042833014230492727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138148 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244842.P1042833014230492727

namespace A244842

/-- `A138148(n)-∑[floor(10^n/5)]` -/
def P1042833014230492727.Spec : Prop :=
  ∀ n, P1042833014230492727.a n = A244842 (n + 1)

end A244842

/-! ## A244842.P3019137719786452345

`A332112(n)-∑[10*a(n-1)]` with `a(0)=2`
-/

namespace A244842.P3019137719786452345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332112 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A244842.P3019137719786452345

namespace A244842

/-- `A332112(n)-∑[10*a(n-1)]` -/
def P3019137719786452345.Spec : Prop :=
  ∀ n, P3019137719786452345.a n = A244842 (n + 1)

end A244842

/-! ## A244842.P15082795851376001799

`lcm(∑[10*a(n-1)], A002283(n))` with `a(0)=9`
-/

namespace A244842.P15082795851376001799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A002283 n)

end

end A244842.P15082795851376001799

namespace A244842

/-- `lcm(∑[10*a(n-1)], A002283(n))` -/
def P15082795851376001799.Spec : Prop :=
  ∀ n, (P15082795851376001799.a n : ℤ) = A244842 (n + 1)

end A244842

/-! ## A244842.P8121318360635596473

`A163663(n)-A002275(n)`
-/

namespace A244842.P8121318360635596473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163663 n - A002275 n

end

end A244842.P8121318360635596473

namespace A244842

/-- `A163663(n)-A002275(n)` -/
def P8121318360635596473.Spec : Prop :=
  ∀ n, P8121318360635596473.a n = A244842 (n + 1)

end A244842

/-! ## A244842.P8574150926904085847

`record[A282416(n)-A282415(n)]`
-/

namespace A244842.P8574150926904085847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282416 n - A282415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244842.P8574150926904085847

namespace A244842

/-- `record[A282416(n)-A282415(n)]` -/
def P8574150926904085847.Spec : Prop :=
  ∀ n, P8574150926904085847.a n = A244842 (n + 1)

end A244842

/-! ## A244842.P16475502605451076205

`A075412(n)+A168624(n)-1`
-/

namespace A244842.P16475502605451076205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075412 n + (A168624 n - 1)

end

end A244842.P16475502605451076205

namespace A244842

/-- `A075412(n)+A168624(n)-1` -/
def P16475502605451076205.Spec : Prop :=
  ∀ n, P16475502605451076205.a n = A244842 (n + 1)

end A244842

/-!
# A244845: Binary representation of 4^n - 2^(n+1) - 1.

The programs for A244845, there is no canonical definition to state claims against.
-/

/-! ## A244845.P9243854818463007822

`A099814(n+2)-A011557(n+3)`
-/

namespace A244845.P9243854818463007822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099814 (n + 2) - A011557 (n + 3)

end

end A244845.P9243854818463007822

/-! ## A244845.P15199077118852856476

`A000042(2*(n+2))-A011557(n+3)`
-/

namespace A244845.P15199077118852856476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (2 * (n + 2)) - A011557 (n + 3)

end

end A244845.P15199077118852856476

/-! ## A244845.P17182760564178379229

`A002275(2*(n+2))-Δ[A105279(n+2)]`
-/

namespace A244845.P17182760564178379229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105279 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (2 * (n + 2)) - (f1 (n + 1) - f1 n)

end

end A244845.P17182760564178379229

/-! ## A244845.P18089560859519802680

`A002275(2*(n+2))-Δ[A098406(n+3)]`
-/

namespace A244845.P18089560859519802680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098406 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (2 * (n + 2)) - (f1 (n + 1) - f1 n)

end

end A244845.P18089560859519802680

/-! ## A244845.P3361456091961468209

`A002275(2*(n+2))-(A002283(n+3)+1)`
-/

namespace A244845.P3361456091961468209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (2 * (n + 2)) - (A002283 (n + 3) + 1)

end

end A244845.P3361456091961468209

/-!
# A244847: Decimal expansion of rho_c = (5-sqrt(5))/10, the asymptotic critical density for the hard hexagon model.

The programs for A244847, there is no canonical definition to state claims against.
-/

/-! ## A244847.P13892089553153465582

`9-A242671(n)`
-/

namespace A244847.P13892089553153465582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A242671 n

end

end A244847.P13892089553153465582

/-! ## A244847.P4258881582173318604

`A040020(n)-(A002163(n)+1)`
-/

namespace A244847.P4258881582173318604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040020 n - (A002163 (n + 1) + 1)

end

end A244847.P4258881582173318604

/-! ## A244847.P16632922778045662569

`A040006(n)+3-A098317(n)`
-/

namespace A244847.P16632922778045662569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040006 n + (3 - A098317 (n + 1))

end

end A244847.P16632922778045662569

/-! ## A244847.P3109632383228190698

`xor(3, A040020(n))-A098317(n)`
-/

namespace A244847.P3109632383228190698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A040020 n) - A098317 (n + 1)

end

end A244847.P3109632383228190698

/-! ## A244847.P10242166301149970717

`dr(A040012(n)!)-A098317(n)`
-/

namespace A244847.P10242166301149970717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (Nat.factorial (A040012 n).toNat : ℤ) : ℤ) - A098317 (n + 1)

end

end A244847.P10242166301149970717

/-! ## A244847.P7540509918319984677

`dr(A040020(n)!)-A134972(n)`
-/

namespace A244847.P7540509918319984677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (Nat.factorial (A040020 n).toNat : ℤ) : ℤ) - A134972 (n + 1)

end

end A244847.P7540509918319984677

/-! ## A244847.P17507371406181255943

`A001622(n+1)+A225667(n)-A229780(n)`
-/

namespace A244847.P17507371406181255943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1 + 1) + (A225667 (n + 1) - A229780 n)

end

end A244847.P17507371406181255943

/-!
# A244853: Let d(1)d(2)... d(q) denote the decimal expansion of a prime number n > 9. The sequence lists the primes such that replacing each digit d(i) with d(i+1) copies for i = 1..q-1 and d(q) with d(1) copies produces a prime. Zeros are not allowed.

The programs for A244853, there is no canonical definition to state claims against.
-/

/-! ## A244853.P9063117571883343169

`∩[A117835(n+1), A265402(n+1)]`
-/

namespace A244853.P9063117571883343169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244853.P9063117571883343169

/-!
# A244855: a(n) = Fibonacci(n)^4-1.

The programs for A244855, the canonical program `A244855.P16069968218495320223` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244855 has offset 1).

The definition of A244855 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244855.P16069968218495320223

`A056571(n+1)-1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A244855

/-- `A056571(n+1)-1` -/
def P16069968218495320223.Spec : Prop :=
  ∀ n, P16069968218495320223.a n = A244855 (n + 1)

theorem P16069968218495320223.correct : P16069968218495320223.Spec := by
  intro n
  simp only [A244855, Nat.add_sub_cancel]

end A244855

/-! ## A244855.P16636846394923297520

`∑[a(n-1)+a(n-2)]^4-1` with `a(0)=1, a(1)=0`
-/

namespace A244855.P16636846394923297520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 4 : ℕ) : ℤ) - 1

end

end A244855.P16636846394923297520

namespace A244855

/-- `∑[a(n-1)+a(n-2)]^4-1` -/
def P16636846394923297520.Spec : Prop :=
  ∀ n, P16636846394923297520.a n = A244855 (n + 1)

end A244855

/-! ## A244855.P7346097493583469251

`∑[a(n-1)+a(n-2)]²²-1` with `a(0)=1, a(1)=0`
-/

namespace A244855.P7346097493583469251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2 : ℕ) : ℤ) - 1

end

end A244855.P7346097493583469251

namespace A244855

/-- `∑[a(n-1)+a(n-2)]²²-1` -/
def P7346097493583469251.Spec : Prop :=
  ∀ n, P7346097493583469251.a n = A244855 (n + 1)

end A244855

/-! ## A244855.P8303791992702343687

`abs(Δ[A119285(n)])-1`
-/

namespace A244855.P8303791992702343687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - 1

end

end A244855.P8303791992702343687

namespace A244855

/-- `abs(Δ[A119285(n)])-1` -/
def P8303791992702343687.Spec : Prop :=
  ∀ n, P8303791992702343687.a n = A244855 (n + 1)

end A244855

/-! ## A244855.P15248296519974320714

`∑[A099496(n)]²-1`
-/

namespace A244855.P15248296519974320714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099496 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - 1

end

end A244855.P15248296519974320714

namespace A244855

/-- `∑[A099496(n)]²-1` -/
def P15248296519974320714.Spec : Prop :=
  ∀ n, P15248296519974320714.a n = A244855 (n + 1)

end A244855

/-! ## A244855.P12943195283605666529

`Δ[A001654(n)]²-1`
-/

namespace A244855.P12943195283605666529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - 1

end

end A244855.P12943195283605666529

namespace A244855

/-- `Δ[A001654(n)]²-1` -/
def P12943195283605666529.Spec : Prop :=
  ∀ n, P12943195283605666529.a n = A244855 (n + 1)

end A244855

/-! ## A244855.P7475540718933569336

`Δ[A119283(n)]²-1`
-/

namespace A244855.P7475540718933569336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - 1

end

end A244855.P7475540718933569336

namespace A244855

/-- `Δ[A119283(n)]²-1` -/
def P7475540718933569336.Spec : Prop :=
  ∀ n, P7475540718933569336.a n = A244855 (n + 1)

end A244855

/-! ## A244855.P5908405925957164978

`A007598(n+1)²-1`
-/

namespace A244855.P5908405925957164978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (n + 1) ^ 2 - 1

end

end A244855.P5908405925957164978

namespace A244855

/-- `A007598(n+1)²-1` -/
def P5908405925957164978.Spec : Prop :=
  ∀ n, P5908405925957164978.a n = A244855 (n + 1)

end A244855

/-! ## A244855.P12447951304706917680

`A006498(2*n)²-1`
-/

namespace A244855.P12447951304706917680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (2 * n) ^ 2 - 1

end

end A244855.P12447951304706917680

namespace A244855

/-- `A006498(2*n)²-1` -/
def P12447951304706917680.Spec : Prop :=
  ∀ n, P12447951304706917680.a n = A244855 (n + 1)

end A244855

/-! ## A244855.P16216473390744024421

`∑[A212804(n)]²²-1`
-/

namespace A244855.P16216473390744024421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2 - 1

end

end A244855.P16216473390744024421

namespace A244855

/-- `∑[A212804(n)]²²-1` -/
def P16216473390744024421.Spec : Prop :=
  ∀ n, P16216473390744024421.a n = A244855 (n + 1)

end A244855

/-! ## A244855.P1756933865161012951

`Δ[A119282(n)]²²-1`
-/

namespace A244855.P1756933865161012951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2) ^ 2 - 1

end

end A244855.P1756933865161012951

namespace A244855

/-- `Δ[A119282(n)]²²-1` -/
def P1756933865161012951.Spec : Prop :=
  ∀ n, P1756933865161012951.a n = A244855 (n + 1)

end A244855

/-! ## A244855.P11431591730766138852

`∑[∑[A219233(n)]]²-1`
-/

namespace A244855.P11431591730766138852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219233 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - 1

end

end A244855.P11431591730766138852

namespace A244855

/-- `∑[∑[A219233(n)]]²-1` -/
def P11431591730766138852.Spec : Prop :=
  ∀ n, P11431591730766138852.a n = A244855 (n + 1)

end A244855

/-! ## A244855.P14289760519748888456

`Δ[Δ[A166516(n)]]²-1`
-/

namespace A244855.P14289760519748888456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166516 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - 1

end

end A244855.P14289760519748888456

namespace A244855

/-- `Δ[Δ[A166516(n)]]²-1` -/
def P14289760519748888456.Spec : Prop :=
  ∀ n, P14289760519748888456.a n = A244855 (n + 1)

end A244855

/-! ## A244855.P1263947256466839678

`A000045(n+1)^4-1`
-/

namespace A244855.P1263947256466839678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) ^ 4 - 1

end

end A244855.P1263947256466839678

namespace A244855

/-- `A000045(n+1)^4-1` -/
def P1263947256466839678.Spec : Prop :=
  ∀ n, P1263947256466839678.a n = A244855 (n + 1)

end A244855

/-! ## A244855.P14861855438516286952

`A236191(n+1)²²-1`
-/

namespace A244855.P14861855438516286952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A236191 (n + 1) ^ 2) ^ 2 - 1

end

end A244855.P14861855438516286952

namespace A244855

/-- `A236191(n+1)²²-1` -/
def P14861855438516286952.Spec : Prop :=
  ∀ n, P14861855438516286952.a n = A244855 (n + 1)

end A244855

/-! ## A244855.P5141308114731980193

`A333378(n+1)²²-1`
-/

namespace A244855.P5141308114731980193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A333378 (n + 1) ^ 2) ^ 2 - 1

end

end A244855.P5141308114731980193

namespace A244855

/-- `A333378(n+1)²²-1` -/
def P5141308114731980193.Spec : Prop :=
  ∀ n, P5141308114731980193.a n = A244855 (n + 1)

end A244855

/-! ## A244855.P18159826334480068911

`A094571(∑[n+1])²-1`
-/

namespace A244855.P18159826334480068911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094571 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - 1

end

end A244855.P18159826334480068911

namespace A244855

/-- `A094571(∑[n+1])²-1` -/
def P18159826334480068911.Spec : Prop :=
  ∀ n, P18159826334480068911.a n = A244855 (n + 1)

end A244855

/-! ## A244855.P10136806441571666923

`∑[A121646(n+1)]²-1`
-/

namespace A244855.P10136806441571666923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - 1

end

end A244855.P10136806441571666923

namespace A244855

/-- `∑[A121646(n+1)]²-1` -/
def P10136806441571666923.Spec : Prop :=
  ∀ n, P10136806441571666923.a n = A244855 (n + 1)

end A244855

/-! ## A244855.P8824956022964019497

`A143211(∑[n+1])²-1`
-/

namespace A244855.P8824956022964019497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143211 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - 1

end

end A244855.P8824956022964019497

namespace A244855

/-- `A143211(∑[n+1])²-1` -/
def P8824956022964019497.Spec : Prop :=
  ∀ n, P8824956022964019497.a n = A244855 (n + 1)

end A244855

/-!
# A244856: G.f. satisfies: A(x) = (4 + A(x)^4) / (5-x).

The programs for A244856, there is no canonical definition to state claims against.
-/

/-! ## A244856.P17240436165429216232

`A265711(A332578(n²))`
-/

namespace A244856.P17240436165429216232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265711 (A332578 (n ^ 2)).toNat

end

end A244856.P17240436165429216232

/-!
# A244857: Numbers divisible by both the sum of the squares of their digits and the product of their digits.

The programs for A244857, there is no canonical definition to state claims against.
-/

/-! ## A244857.P13058908613447339237

`∩[A007602(n+1), A034087(n+1)]`
-/

namespace A244857.P13058908613447339237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244857.P13058908613447339237

/-! ## A244857.P10681904663227826817

`∩[A007602(n+1), A117562(n+1)]`
-/

namespace A244857.P10681904663227826817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244857.P10681904663227826817

/-! ## A244857.P3529498100243554776

`∩[A034087(n+1), A288069(n+1)*A360075(n+1)]`
-/

namespace A244857.P3529498100243554776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288069 (n + 1) * A360075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244857.P3529498100243554776

/-!
# A244859: Least positive multiple of n which when written in base 10 is either a repunit or of the form 111...000.

The programs for A244859, there is no canonical definition to state claims against.
-/

/-! ## A244859.P2947400641957780011

`n*A244927(abs(1-n)+1)`
-/

namespace A244859.P2947400641957780011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A244927 (|1 - (n : ℤ)| + 1).toNat

end

end A244859.P2947400641957780011

/-! ## A244859.P3706327591680536808

`lcm(A001222(2^n), A244927(abs(1-n)+1))`
-/

namespace A244859.P3706327591680536808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001222 (2 ^ n)) (A244927 (|1 - (n : ℤ)| + 1).toNat)

end

end A244859.P3706327591680536808

/-! ## A244859.P7539279379568366761

`A244927(A028310(n))*A257345(A007088(n))`
-/

namespace A244859.P7539279379568366761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244927 (A028310 n).toNat * A257345 (A007088 n).toNat

end

end A244859.P7539279379568366761

/-!
# A244860: Number of Fibonacci numbers in generation n of the tree at A232559.

The programs for A244860, there is no canonical definition to state claims against.
-/

/-! ## A244860.P6317063548670838517

`A125514(A103000(n+1))%3`
-/

namespace A244860.P6317063548670838517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125514 (A103000 (n + 1)).toNat) 3

end

end A244860.P6317063548670838517

/-! ## A244860.P14978502516291591637

`A188040(A268092(n+1))%3`
-/

namespace A244860.P14978502516291591637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188040 (A268092 (n + 1)).toNat) 3

end

end A244860.P14978502516291591637

/-! ## A244860.P734970874018119531

`A317637(A194633(n+1))%7`
-/

namespace A244860.P734970874018119531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317637 (A194633 (n + 1)).toNat) 7

end

end A244860.P734970874018119531

/-! ## A244860.P6030941799499017246

`A308009(∑[A214829(A326636(n))])`
-/

namespace A244860.P6030941799499017246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214829 (A326636 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308009 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A244860.P6030941799499017246

/-! ## A244860.P4426284831122268427

`A328248(A257624(n)+A115361(n))`
-/

namespace A244860.P4426284831122268427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328248 (A257624 n + A115361 n).toNat

end

end A244860.P4426284831122268427

/-!
# A244862: List of pairs of prime numbers (p,q) starting with (2, 3) such that p || q (where || denotes concatenation) is a prime number and the sequence is always extended with the smallest prime not yet present in the sequence.

The programs for A244862, there is no canonical definition to state claims against.
-/

/-! ## A244862.P9388227635845895074

`A373794(n+1)+A099653(A084849(n+3))`
-/

namespace A244862.P9388227635845895074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373794 (n + 1) + A099653 (A084849 (n + 3)).toNat

end

end A244862.P9388227635845895074

/-! ## A244862.P10125468489436318652

`A373794(n+1)+A007814(A188754(2*n+5))`
-/

namespace A244862.P10125468489436318652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373794 (n + 1) + A007814 (A188754 (2 * n + 5)).toNat

end

end A244862.P10125468489436318652

/-! ## A244862.P17812711163117231474

`A373794(n+1)+A098108(A195024(n+2))`
-/

namespace A244862.P17812711163117231474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373794 (n + 1) + A098108 (A195024 (n + 2)).toNat

end

end A244862.P17812711163117231474

/-! ## A244862.P2075529412408323260

`A373794(n+1)^A204160(A003586(n+1))`
-/

namespace A244862.P2075529412408323260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373794 (n + 1) : ℚ) ^ (A204160 (A003586 (n + 1)).toNat : ℤ)

end

end A244862.P2075529412408323260

/-! ## A244862.P9447677674423813251

`A373794(n+1)+A185017(A036039(n+1))`
-/

namespace A244862.P9447677674423813251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373794 (n + 1) + A185017 (A036039 (n + 1)).toNat

end

end A244862.P9447677674423813251

/-! ## A244862.P798424360778288272

`A373794(n+1)+A185017(A250656(n+1))`
-/

namespace A244862.P798424360778288272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373794 (n + 1) + A185017 (A250656 (n + 1)).toNat

end

end A244862.P798424360778288272

/-! ## A244862.P12893297116272823493

`A373794(n+1)%A052242(A033638(n))`
-/

namespace A244862.P12893297116272823493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373794 (n + 1)) (A052242 (A033638 n).toNat)

end

end A244862.P12893297116272823493

/-! ## A244862.P14375853402363696195

`A373794(n+1)+A185017(A046404(n+1))`
-/

namespace A244862.P14375853402363696195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373794 (n + 1) + A185017 (A046404 (n + 1)).toNat

end

end A244862.P14375853402363696195

/-! ## A244862.P4161451555336287622

`A373794(n+1)+A185017(A273758(2*n))`
-/

namespace A244862.P4161451555336287622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373794 (n + 1) + A185017 (A273758 (2 * n)).toNat

end

end A244862.P4161451555336287622

/-!
# A244863: Semiprimes whose digit sum is a perfect square.

The programs for A244863, the canonical program `A244863.P1603054009884730602` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244863 has offset 1).

The definition of A244863 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1291 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244863.P17843683628897899118

`filter[A028839(n+1), A064911(#)]`
-/

namespace A244863.P17843683628897899118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A244863.P17843683628897899118

namespace A244863

/-- `filter[A028839(n+1), A064911(#)]` -/
def P17843683628897899118.Spec : Prop :=
  ∀ n, P17843683628897899118.a n = A244863 (n + 1)

end A244863

/-! ## A244863.P1603054009884730602

`∩[A001358(n+1), A028839(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A244863

/-- `∩[A001358(n+1), A028839(n+1)]` -/
def P1603054009884730602.Spec : Prop :=
  ∀ n, (P1603054009884730602.a n : ℤ) = A244863 (n + 1)

theorem P1603054009884730602.correct : P1603054009884730602.Spec := by
  intro n
  simp only [A244863, Nat.add_sub_cancel]

end A244863

/-! ## A244863.P15428055394881221870

`∩[A028839(n+1), A077135(n+1)]`
-/

namespace A244863.P15428055394881221870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244863.P15428055394881221870

namespace A244863

/-- `∩[A028839(n+1), A077135(n+1)]` -/
def P15428055394881221870.Spec : Prop :=
  ∀ n, (P15428055394881221870.a n : ℤ) = A244863 (n + 1)

end A244863

/-! ## A244863.P13054106701330248348

`lt[A002828(A007953(n)), A105700(n)]`
-/

namespace A244863.P13054106701330248348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244863.P13054106701330248348

namespace A244863

/-- `lt[A002828(A007953(n)), A105700(n)]` -/
def P13054106701330248348.Spec : Prop :=
  ∀ n, (P13054106701330248348.a n : ℤ) = A244863 (n + 1)

end A244863

/-! ## A244863.P5421211129807633210

`lt[A002828(2*A169805(n)), A105700(n)]`
-/

namespace A244863.P5421211129807633210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (2 * A169805 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244863.P5421211129807633210

namespace A244863

/-- `lt[A002828(2*A169805(n)), A105700(n)]` -/
def P5421211129807633210.Spec : Prop :=
  ∀ n, (P5421211129807633210.a n : ℤ) = A244863 (n + 1)

end A244863

/-! ## A244863.P17677233109247788701

`lt[A249111(2*A169805(n)), A105700(n)]`
-/

namespace A244863.P17677233109247788701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249111 (2 * A169805 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244863.P17677233109247788701

namespace A244863

/-- `lt[A249111(2*A169805(n)), A105700(n)]` -/
def P17677233109247788701.Spec : Prop :=
  ∀ n, (P17677233109247788701.a n : ℤ) = A244863 (n + 1)

end A244863

/-! ## A244863.P15551668572260512913

`lt[A002828(A169805(n)/2), A105700(n)]`
-/

namespace A244863.P15551668572260512913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (SequenceMachineLib.roundAway ((A169805 n : ℚ) / 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244863.P15551668572260512913

namespace A244863

/-- `lt[A002828(A169805(n)/2), A105700(n)]` -/
def P15551668572260512913.Spec : Prop :=
  ∀ n, (P15551668572260512913.a n : ℤ) = A244863 (n + 1)

end A244863

/-! ## A244863.P15559019340677288724

`lt[A249111(A169805(n)/2), A105700(n)]`
-/

namespace A244863.P15559019340677288724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249111 (SequenceMachineLib.roundAway ((A169805 n : ℚ) / 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244863.P15559019340677288724

namespace A244863

/-- `lt[A249111(A169805(n)/2), A105700(n)]` -/
def P15559019340677288724.Spec : Prop :=
  ∀ n, (P15559019340677288724.a n : ℤ) = A244863 (n + 1)

end A244863

/-! ## A244863.P15351212035994924323

`lt[A002828(A118880(n)), A105700(n)]`
-/

namespace A244863.P15351212035994924323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A118880 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244863.P15351212035994924323

namespace A244863

/-- `lt[A002828(A118880(n)), A105700(n)]` -/
def P15351212035994924323.Spec : Prop :=
  ∀ n, (P15351212035994924323.a n : ℤ) = A244863 (n + 1)

end A244863

/-!
# A244864: a(n) = binomial(n+5,5) + 4*binomial(n+4,5) + 4*binomial(n+3,5) + binomial(n+2,5).

The programs for A244864, the canonical program `A244864.P7911075438919539318` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244864 has offset 0).

The definition of A244864 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244864.P7911075438919539318

`(2*n+3)*(n+2)*(n+1)*(n²+3*n+4)/24`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A244864

/-- `(2*n+3)*(n+2)*(n+1)*(n²+3*n+4)/24` -/
def P7911075438919539318.Spec : Prop :=
  ∀ n, P7911075438919539318.a n = (A244864 n : ℚ)

end A244864

/-! ## A244864.P6356655544683609429

`∑[∑[A063489(n+1)]]`
-/

namespace A244864.P6356655544683609429
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063489 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244864.P6356655544683609429

namespace A244864

/-- `∑[∑[A063489(n+1)]]` -/
def P6356655544683609429.Spec : Prop :=
  ∀ n, P6356655544683609429.a n = A244864 n

end A244864

/-! ## A244864.P4323983664014738025

`A034263(n)+∑[∑[n]²]`
-/

namespace A244864.P4323983664014738025
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034263 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A244864.P4323983664014738025

namespace A244864

/-- `A034263(n)+∑[∑[n]²]` -/
def P4323983664014738025.Spec : Prop :=
  ∀ n, P4323983664014738025.a n = A244864 n

end A244864

/-! ## A244864.P2063459137118330314

`A095166(n+1)+∑[∑[n]]`
-/

namespace A244864.P2063459137118330314
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095166 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A244864.P2063459137118330314

namespace A244864

/-- `A095166(n+1)+∑[∑[n]]` -/
def P2063459137118330314.Spec : Prop :=
  ∀ n, P2063459137118330314.a n = A244864 n

end A244864

/-! ## A244864.P6688285989676861858

`A244869(n)+A011888(n)`
-/

namespace A244864.P6688285989676861858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244869 n + A011888 n

end

end A244864.P6688285989676861858

namespace A244864

/-- `A244869(n)+A011888(n)` -/
def P6688285989676861858.Spec : Prop :=
  ∀ n, P6688285989676861858.a n = A244864 n

end A244864

/-! ## A244864.P565806312789766685

`A373733(n+1)-A054563(n)`
-/

namespace A244864.P565806312789766685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373733 (n + 1) - A054563 n

end

end A244864.P565806312789766685

namespace A244864

/-- `A373733(n+1)-A054563(n)` -/
def P565806312789766685.Spec : Prop :=
  ∀ n, P565806312789766685.a n = A244864 n

end A244864

/-! ## A244864.P1240224605866054260

`A244870(n)+2*A011888(n)`
-/

namespace A244864.P1240224605866054260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244870 n + 2 * A011888 n

end

end A244864.P1240224605866054260

namespace A244864

/-- `A244870(n)+2*A011888(n)` -/
def P1240224605866054260.Spec : Prop :=
  ∀ n, P1240224605866054260.a n = A244864 n

end A244864

/-! ## A244864.P5564951281856527059

`2*A244869(n)-A244870(n)`
-/

namespace A244864.P5564951281856527059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A244869 n - A244870 n

end

end A244864.P5564951281856527059

namespace A244864

/-- `2*A244869(n)-A244870(n)` -/
def P5564951281856527059.Spec : Prop :=
  ∀ n, P5564951281856527059.a n = A244864 n

end A244864

/-! ## A244864.P6764739842259438981

`A244869(n)+∑[∑[A019298(n)]]`
-/

namespace A244864.P6764739842259438981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019298 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244869 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244864.P6764739842259438981

namespace A244864

/-- `A244869(n)+∑[∑[A019298(n)]]` -/
def P6764739842259438981.Spec : Prop :=
  ∀ n, P6764739842259438981.a n = A244864 n

end A244864

/-! ## A244864.P10943351330445285553

`2*A006414(n)-A006322(n+1)`
-/

namespace A244864.P10943351330445285553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006414 n - A006322 (n + 1)

end

end A244864.P10943351330445285553

namespace A244864

/-- `2*A006414(n)-A006322(n+1)` -/
def P10943351330445285553.Spec : Prop :=
  ∀ n, P10943351330445285553.a n = A244864 n

end A244864

/-! ## A244864.P15928053813535339598

`2*A085463(n+1)-A085462(n+1)`
-/

namespace A244864.P15928053813535339598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085463 (n + 1) - A085462 (n + 1)

end

end A244864.P15928053813535339598

namespace A244864

/-- `2*A085463(n+1)-A085462(n+1)` -/
def P15928053813535339598.Spec : Prop :=
  ∀ n, P15928053813535339598.a n = A244864 n

end A244864

/-! ## A244864.P8671036013733800500

`A244882(n)+A244882(n)-A002817(n+1)`
-/

namespace A244864.P8671036013733800500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244882 n + (A244882 n - A002817 (n + 1))

end

end A244864.P8671036013733800500

namespace A244864

/-- `A244882(n)+A244882(n)-A002817(n+1)` -/
def P8671036013733800500.Spec : Prop :=
  ∀ n, P8671036013733800500.a n = A244864 n

end A244864

/-! ## A244864.P8111680684503950398

`A373733(n+1)+A000292(n)-A373733(n)`
-/

namespace A244864.P8111680684503950398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373733 (n + 1) + (A000292 n - A373733 n)

end

end A244864.P8111680684503950398

namespace A244864

/-- `A373733(n+1)+A000292(n)-A373733(n)` -/
def P8111680684503950398.Spec : Prop :=
  ∀ n, P8111680684503950398.a n = A244864 n

end A244864

/-! ## A244864.P15194176023060510479

`A000292(n+1)+A054563(n+1)-A054563(n)`
-/

namespace A244864.P15194176023060510479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + (A054563 (n + 1) - A054563 n)

end

end A244864.P15194176023060510479

namespace A244864

/-- `A000292(n+1)+A054563(n+1)-A054563(n)` -/
def P15194176023060510479.Spec : Prop :=
  ∀ n, P15194176023060510479.a n = A244864 n

end A244864

/-! ## A244864.P14977333157454108974

`∑[A139594(n+1)]`
-/

namespace A244864.P14977333157454108974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244864.P14977333157454108974

namespace A244864

/-- `∑[A139594(n+1)]` -/
def P14977333157454108974.Spec : Prop :=
  ∀ n, P14977333157454108974.a n = A244864 n

end A244864

/-! ## A244864.P16793811782737371356

`A001296(n+1)+A000217(n+1)*A000292(n)`
-/

namespace A244864.P16793811782737371356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001296 (n + 1) + A000217 (n + 1) * A000292 n

end

end A244864.P16793811782737371356

namespace A244864

/-- `A001296(n+1)+A000217(n+1)*A000292(n)` -/
def P16793811782737371356.Spec : Prop :=
  ∀ n, P16793811782737371356.a n = A244864 n

end A244864

/-! ## A244864.P4920082634952457739

`A002817(n+1)+A000124(n+1)*A000292(n)`
-/

namespace A244864.P4920082634952457739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 (n + 1) + A000124 (n + 1) * A000292 n

end

end A244864.P4920082634952457739

namespace A244864

/-- `A002817(n+1)+A000124(n+1)*A000292(n)` -/
def P4920082634952457739.Spec : Prop :=
  ∀ n, P4920082634952457739.a n = A244864 n

end A244864

/-! ## A244864.P2270304481162902111

`A085461(n+1)+A079547(n+2)-A085462(n+1)`
-/

namespace A244864.P2270304481162902111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085461 (n + 1) + (A079547 (n + 2) - A085462 (n + 1))

end

end A244864.P2270304481162902111

namespace A244864

/-- `A085461(n+1)+A079547(n+2)-A085462(n+1)` -/
def P2270304481162902111.Spec : Prop :=
  ∀ n, P2270304481162902111.a n = A244864 n

end A244864

/-! ## A244864.P11949049644212506484

`A085463(n+1)+A079547(n+2)-A085461(n+1)`
-/

namespace A244864.P11949049644212506484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085463 (n + 1) + (A079547 (n + 2) - A085461 (n + 1))

end

end A244864.P11949049644212506484

namespace A244864

/-- `A085463(n+1)+A079547(n+2)-A085461(n+1)` -/
def P11949049644212506484.Spec : Prop :=
  ∀ n, P11949049644212506484.a n = A244864 n

end A244864

/-! ## A244864.P1889730589182872491

`A271662(n)+A000389(n+2)`
-/

namespace A244864.P1889730589182872491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271662 n + A000389 (n + 2)

end

end A244864.P1889730589182872491

namespace A244864

/-- `A271662(n)+A000389(n+2)` -/
def P1889730589182872491.Spec : Prop :=
  ∀ n, P1889730589182872491.a n = A244864 n

end A244864

/-!
# A244865: Number of 3 X 3 symmetric matrices with row and column sums <= n.

The programs for A244865, the canonical program `A244865.P10352670384836654121` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244865 has offset 0).

The definition of A244865 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244865.P10352670384836654121

`∑[∑[∑[∑[(3*n)²+2]-1]]-∑[floor(((n+1)/2)^4)]]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A244865

/-- `∑[∑[∑[∑[(3*n)²+2]-1]]-∑[floor(((n+1)/2)^4)]]` -/
def P10352670384836654121.Spec : Prop :=
  ∀ n, P10352670384836654121.a n = A244865 n

theorem P10352670384836654121.correct : P10352670384836654121.Spec := by
  intro n
  simp only [A244865]

end A244865

/-! ## A244865.P11175876488163317035

`abs(∑[A085462(n+1)-A011888(n)])`
-/

namespace A244865.P11175876488163317035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085462 (n + 1) - A011888 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A244865.P11175876488163317035

namespace A244865

/-- `abs(∑[A085462(n+1)-A011888(n)])` -/
def P11175876488163317035.Spec : Prop :=
  ∀ n, P11175876488163317035.a n = A244865 n

end A244865

/-! ## A244865.P6883201642486421881

`A000007(n+1)+∑[A085462(n+1)-A011888(n)]`
-/

namespace A244865.P6883201642486421881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085462 (n + 1) - A011888 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244865.P6883201642486421881

namespace A244865

/-- `A000007(n+1)+∑[A085462(n+1)-A011888(n)]` -/
def P6883201642486421881.Spec : Prop :=
  ∀ n, P6883201642486421881.a n = A244865 n

end A244865

/-! ## A244865.P17222910874345297137

`A033999(2*n+1)²*∑[A085462(n+1)-A011888(n)]`
-/

namespace A244865.P17222910874345297137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085462 (n + 1) - A011888 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244865.P17222910874345297137

namespace A244865

/-- `A033999(2*n+1)²*∑[A085462(n+1)-A011888(n)]` -/
def P17222910874345297137.Spec : Prop :=
  ∀ n, P17222910874345297137.a n = A244865 n

end A244865

/-! ## A244865.P13645394438883563144

`∑[A085462(n+1)-A011888(n)]%A164469(2*(n+4))`
-/

namespace A244865.P13645394438883563144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085462 (n + 1) - A011888 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A164469 (2 * (n + 4)))

end

end A244865.P13645394438883563144

namespace A244865

/-- `∑[A085462(n+1)-A011888(n)]%A164469(2*(n+4))` -/
def P13645394438883563144.Spec : Prop :=
  ∀ n, P13645394438883563144.a n = A244865 n

end A244865

/-! ## A244865.P2446420720725809223

`∑[A085462(n+1)-A011888(n)]%A000166(n+4)`
-/

namespace A244865.P2446420720725809223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085462 (n + 1) - A011888 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000166 (n + 4))

end

end A244865.P2446420720725809223

namespace A244865

/-- `∑[A085462(n+1)-A011888(n)]%A000166(n+4)` -/
def P2446420720725809223.Spec : Prop :=
  ∀ n, P2446420720725809223.a n = A244865 n

end A244865

/-!
# A244866: Let G denote the 7-node, 12-edge graph formed from a hexagon with main diagonals drawn and a node at the center; a(n) = number of magic labelings of G with magic sum 2n.

The programs for A244866, the canonical program `A244866.P13520207271853188257` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244866 has offset 0).

The definition of A244866 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244866.P13520207271853188257

`(n+1)*(n+2)*(19*n^3+63*n²+68*n+30)/60`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A244866

/-- `(n+1)*(n+2)*(19*n^3+63*n²+68*n+30)/60` -/
def P13520207271853188257.Spec : Prop :=
  ∀ n, P13520207271853188257.a n = (A244866 n : ℚ)

end A244866

/-! ## A244866.P3286868727186192905

`∑[∑[n+1]²+(n+1)*A002492(n)]`
-/

namespace A244866.P3286868727186192905
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ) + (n + 1 : ℤ) * A002492 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244866.P3286868727186192905

namespace A244866

/-- `∑[∑[n+1]²+(n+1)*A002492(n)]` -/
def P3286868727186192905.Spec : Prop :=
  ∀ n, P3286868727186192905.a n = A244866 n

end A244866

/-! ## A244866.P13658755847107530197

`∑[∑[A085490(n)+A085474(n)]]`
-/

namespace A244866.P13658755847107530197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085490 n + A085474 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244866.P13658755847107530197

namespace A244866

/-- `∑[∑[A085490(n)+A085474(n)]]` -/
def P13658755847107530197.Spec : Prop :=
  ∀ n, P13658755847107530197.a n = A244866 n

end A244866

/-! ## A244866.P14485911348562107874

`∑[∑[A005902(n)+3*A000578(n)]]`
-/

namespace A244866.P14485911348562107874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005902 n + 3 * A000578 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244866.P14485911348562107874

namespace A244866

/-- `∑[∑[A005902(n)+3*A000578(n)]]` -/
def P14485911348562107874.Spec : Prop :=
  ∀ n, P14485911348562107874.a n = A244866 n

end A244866

/-! ## A244866.P8951596093295467482

`A061927(n+1)+n*∑[n+1]²`
-/

namespace A244866.P8951596093295467482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061927 (n + 1) + ((n * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A244866.P8951596093295467482

namespace A244866

/-- `A061927(n+1)+n*∑[n+1]²` -/
def P8951596093295467482.Spec : Prop :=
  ∀ n, P8951596093295467482.a n = A244866 n

end A244866

/-!
# A244868: Number of symmetric 5 X 5 matrices of nonnegative integers with zeros on the main diagonal and every row and column adding to n.

The programs for A244868, the canonical program `A244868.P13149409410096620812` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244868 has offset 0).

The definition of A244868 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244868.P13149409410096620812

`(24+94*n+165*n²+155*n^3+75*n^4+15*n^5)/24`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A244868

/-- `(24+94*n+165*n²+155*n^3+75*n^4+15*n^5)/24` -/
def P13149409410096620812.Spec : Prop :=
  ∀ n, P13149409410096620812.a n = (A244868 n : ℚ)

end A244868

/-! ## A244868.P13140237529266020122

`∑[C(∑[5*n]+2, 2)]`
-/

namespace A244868.P13140237529266020122
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j + 2) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244868.P13140237529266020122

namespace A244868

/-- `∑[C(∑[5*n]+2, 2)]` -/
def P13140237529266020122.Spec : Prop :=
  ∀ n, (P13140237529266020122.a n : ℤ) = A244868 n

end A244868

/-! ## A244868.P1917314415206071223

`∑[A160767(n)+A152041(n)]`
-/

namespace A244868.P1917314415206071223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160767 n + A152041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244868.P1917314415206071223

namespace A244868

/-- `∑[A160767(n)+A152041(n)]` -/
def P1917314415206071223.Spec : Prop :=
  ∀ n, P1917314415206071223.a n = A244868 n

end A244868

/-! ## A244868.P7855408991385515911

`∑[A007204(n)-A152041(n)]`
-/

namespace A244868.P7855408991385515911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007204 n - A152041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244868.P7855408991385515911

namespace A244868

/-- `∑[A007204(n)-A152041(n)]` -/
def P7855408991385515911.Spec : Prop :=
  ∀ n, P7855408991385515911.a n = A244868 n

end A244868

/-! ## A244868.P3963011775877426817

`∑[A001844(n)²-A152041(n)]`
-/

namespace A244868.P3963011775877426817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n ^ 2 - A152041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244868.P3963011775877426817

namespace A244868

/-- `∑[A001844(n)²-A152041(n)]` -/
def P3963011775877426817.Spec : Prop :=
  ∀ n, P3963011775877426817.a n = A244868 n

end A244868

/-! ## A244868.P1424454867260878279

`∑[A007204(n)-A008893(n)/2]`
-/

namespace A244868.P1424454867260878279
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007204 n : ℚ) - (A008893 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244868.P1424454867260878279

namespace A244868

/-- `∑[A007204(n)-A008893(n)/2]` -/
def P1424454867260878279.Spec : Prop :=
  ∀ n, P1424454867260878279.a n = (A244868 n : ℚ)

end A244868

/-! ## A244868.P2075911502397048981

`∑[A007204(n)-((n²+n)²-A050534(n+1))]`
-/

namespace A244868.P2075911502397048981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007204 n - (((n ^ 2 + n) ^ 2 : ℤ) - A050534 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244868.P2075911502397048981

namespace A244868

/-- `∑[A007204(n)-((n²+n)²-A050534(n+1))]` -/
def P2075911502397048981.Spec : Prop :=
  ∀ n, P2075911502397048981.a n = A244868 n

end A244868

/-! ## A244868.P17463789666330748719

`∑[A243201(n)+A161680(∑[n])]`
-/

namespace A244868.P17463789666330748719
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243201 n + A161680 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244868.P17463789666330748719

namespace A244868

/-- `∑[A243201(n)+A161680(∑[n])]` -/
def P17463789666330748719.Spec : Prop :=
  ∀ n, P17463789666330748719.a n = A244868 n

end A244868

/-! ## A244868.P11143008144684791235

`Δ[A004068(∑[n])]`
-/

namespace A244868.P11143008144684791235
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004068 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A244868.P11143008144684791235

namespace A244868

/-- `Δ[A004068(∑[n])]` -/
def P11143008144684791235.Spec : Prop :=
  ∀ n, P11143008144684791235.a n = A244868 n

end A244868

/-! ## A244868.P8402447873350624509

`abs(Δ[A004068(A000217(n))])`
-/

namespace A244868.P8402447873350624509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004068 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A244868.P8402447873350624509

namespace A244868

/-- `abs(Δ[A004068(A000217(n))])` -/
def P8402447873350624509.Spec : Prop :=
  ∀ n, P8402447873350624509.a n = A244868 n

end A244868

/-! ## A244868.P1824753970705349705

`Δ[A004068(A000217(n))%A017560(n)]`
-/

namespace A244868.P1824753970705349705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004068 (A000217 n).toNat) (A017560 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A244868.P1824753970705349705

namespace A244868

/-- `Δ[A004068(A000217(n))%A017560(n)]` -/
def P1824753970705349705.Spec : Prop :=
  ∀ n, P1824753970705349705.a n = A244868 n

end A244868

/-! ## A244868.P16176825939852501492

`Δ[A004068(A000217(n))]^A057428(n)²`
-/

namespace A244868.P16176825939852501492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004068 (A000217 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A057428 n ^ 2 : ℤ)

end

end A244868.P16176825939852501492

namespace A244868

/-- `Δ[A004068(A000217(n))]^A057428(n)²` -/
def P16176825939852501492.Spec : Prop :=
  ∀ n, P16176825939852501492.a n = (A244868 n : ℚ)

end A244868

/-! ## A244868.P10855911883618665816

`A000007(n+1)+Δ[A004068(A000217(n))]`
-/

namespace A244868.P10855911883618665816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004068 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (f1 (n + 1) - f1 n)

end

end A244868.P10855911883618665816

namespace A244868

/-- `A000007(n+1)+Δ[A004068(A000217(n))]` -/
def P10855911883618665816.Spec : Prop :=
  ∀ n, P10855911883618665816.a n = A244868 n

end A244868

/-! ## A244868.P13112723685470026919

`A000038(n+1)+Δ[A004068(A000217(n))]`
-/

namespace A244868.P13112723685470026919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004068 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + (f1 (n + 1) - f1 n)

end

end A244868.P13112723685470026919

namespace A244868

/-- `A000038(n+1)+Δ[A004068(A000217(n))]` -/
def P13112723685470026919.Spec : Prop :=
  ∀ n, P13112723685470026919.a n = A244868 n

end A244868

/-! ## A244868.P15176988841472765829

`A057077(n+2)²*Δ[A004068(A000217(n))]`
-/

namespace A244868.P15176988841472765829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004068 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 2) ^ 2 * (f1 (n + 1) - f1 n)

end

end A244868.P15176988841472765829

namespace A244868

/-- `A057077(n+2)²*Δ[A004068(A000217(n))]` -/
def P15176988841472765829.Spec : Prop :=
  ∀ n, P15176988841472765829.a n = A244868 n

end A244868

/-! ## A244868.P15896271394273584388

`Δ[A004068(A000217(n))]^A014963(4*n+2)`
-/

namespace A244868.P15896271394273584388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004068 (A000217 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A244868.P15896271394273584388

namespace A244868

/-- `Δ[A004068(A000217(n))]^A014963(4*n+2)` -/
def P15896271394273584388.Spec : Prop :=
  ∀ n, P15896271394273584388.a n = (A244868 n : ℚ)

end A244868

/-! ## A244868.P12873471275007994997

`∑[A000217(∑[5*n]+1)]`
-/

namespace A244868.P12873471275007994997
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244868.P12873471275007994997

namespace A244868

/-- `∑[A000217(∑[5*n]+1)]` -/
def P12873471275007994997.Spec : Prop :=
  ∀ n, P12873471275007994997.a n = A244868 n

end A244868

/-!
# A244869: Number of magic labelings with magic sum n of first graph shown in link.

The programs for A244869, the canonical program `A244869.P6429433672219191574` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244869 has offset 0).

The definition of A244869 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244869.P5392864659082877248

`A244870(n)+A011888(n)`
-/

namespace A244869.P5392864659082877248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244870 n + A011888 n

end

end A244869.P5392864659082877248

namespace A244869

/-- `A244870(n)+A011888(n)` -/
def P5392864659082877248.Spec : Prop :=
  ∀ n, P5392864659082877248.a n = A244869 n

end A244869

/-! ## A244869.P6429433672219191574

`A244864(n)-A011888(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A244869

/-- `A244864(n)-A011888(n)` -/
def P6429433672219191574.Spec : Prop :=
  ∀ n, P6429433672219191574.a n = A244869 n

theorem P6429433672219191574.correct : P6429433672219191574.Spec := by
  intro n
  simp only [A244869]

end A244869

/-! ## A244869.P8307139151691156544

`∑[∑[A173196(n)+A001845(n)]]`
-/

namespace A244869.P8307139151691156544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 n + A001845 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244869.P8307139151691156544

namespace A244869

/-- `∑[∑[A173196(n)+A001845(n)]]` -/
def P8307139151691156544.Spec : Prop :=
  ∀ n, P8307139151691156544.a n = A244869 n

end A244869

/-! ## A244869.P5319760974319344361

`∑[A014820(n)+∑[A173196(n)]]`
-/

namespace A244869.P5319760974319344361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014820 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244869.P5319760974319344361

namespace A244869

/-- `∑[A014820(n)+∑[A173196(n)]]` -/
def P5319760974319344361.Spec : Prop :=
  ∀ n, P5319760974319344361.a n = A244869 n

end A244869

/-! ## A244869.P3694946384392159421

`A244870(n)+∑[∑[A019298(n)]]`
-/

namespace A244869.P3694946384392159421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019298 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244870 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244869.P3694946384392159421

namespace A244869

/-- `A244870(n)+∑[∑[A019298(n)]]` -/
def P3694946384392159421.Spec : Prop :=
  ∀ n, P3694946384392159421.a n = A244869 n

end A244869

/-! ## A244869.P5524026847095340486

`A244864(n)-∑[∑[A019298(n)]]`
-/

namespace A244869.P5524026847095340486
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019298 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244864 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244869.P5524026847095340486

namespace A244869

/-- `A244864(n)-∑[∑[A019298(n)]]` -/
def P5524026847095340486.Spec : Prop :=
  ∀ n, P5524026847095340486.a n = A244869 n

end A244869

/-! ## A244869.P7510183277534399038

`∑[∑[A173196(n)+A004006(2*n+1)]]`
-/

namespace A244869.P7510183277534399038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 n + A004006 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244869.P7510183277534399038

namespace A244869

/-- `∑[∑[A173196(n)+A004006(2*n+1)]]` -/
def P7510183277534399038.Spec : Prop :=
  ∀ n, P7510183277534399038.a n = A244869 n

end A244869

/-!
# A244870: Number of magic labelings with magic sum n of 2nd graph shown in link.

The programs for A244870, the canonical program `A244870.P12300476770002142081` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244870 has offset 0).

The definition of A244870 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244870.P12300476770002142081

`∑[∑[∑[A008253(n)+n²]]]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A244870

/-- `∑[∑[∑[A008253(n)+n²]]]` -/
def P12300476770002142081.Spec : Prop :=
  ∀ n, P12300476770002142081.a n = A244870 n

theorem P12300476770002142081.correct : P12300476770002142081.Spec := by
  intro n
  simp only [A244870]

end A244870

/-! ## A244870.P10482560346779482285

`A244869(n)-A011888(n)`
-/

namespace A244870.P10482560346779482285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244869 n - A011888 n

end

end A244870.P10482560346779482285

namespace A244870

/-- `A244869(n)-A011888(n)` -/
def P10482560346779482285.Spec : Prop :=
  ∀ n, P10482560346779482285.a n = A244870 n

end A244870

/-! ## A244870.P14258211103562361741

`∑[A132366(n)+A105636(n)]`
-/

namespace A244870.P14258211103562361741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132366 n + A105636 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244870.P14258211103562361741

namespace A244870

/-- `∑[A132366(n)+A105636(n)]` -/
def P14258211103562361741.Spec : Prop :=
  ∀ n, P14258211103562361741.a n = A244870 n

end A244870

/-! ## A244870.P11234641846948439954

`A244864(n)-2*A011888(n)`
-/

namespace A244870.P11234641846948439954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244864 n - 2 * A011888 n

end

end A244870.P11234641846948439954

namespace A244870

/-- `A244864(n)-2*A011888(n)` -/
def P11234641846948439954.Spec : Prop :=
  ∀ n, P11234641846948439954.a n = A244870 n

end A244870

/-! ## A244870.P7221109914688898996

`2*A244869(n)-A244864(n)`
-/

namespace A244870.P7221109914688898996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A244869 n - A244864 n

end

end A244870.P7221109914688898996

namespace A244870

/-- `2*A244869(n)-A244864(n)` -/
def P7221109914688898996.Spec : Prop :=
  ∀ n, P7221109914688898996.a n = A244870 n

end A244870

/-! ## A244870.P9733556310342762475

`∑[∑[A007904(n)+A000330(n)]]`
-/

namespace A244870.P9733556310342762475
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007904 n + A000330 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244870.P9733556310342762475

namespace A244870

/-- `∑[∑[A007904(n)+A000330(n)]]` -/
def P9733556310342762475.Spec : Prop :=
  ∀ n, P9733556310342762475.a n = A244870 n

end A244870

/-! ## A244870.P5607318270123051019

`∑[∑[A055232(n)+A005900(n)]]`
-/

namespace A244870.P5607318270123051019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055232 n + A005900 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244870.P5607318270123051019

namespace A244870

/-- `∑[∑[A055232(n)+A005900(n)]]` -/
def P5607318270123051019.Spec : Prop :=
  ∀ n, P5607318270123051019.a n = A244870 n

end A244870

/-! ## A244870.P12366660724880079272

`∑[A105636(n)+∑[A005894(n)]]`
-/

namespace A244870.P12366660724880079272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005894 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105636 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244870.P12366660724880079272

namespace A244870

/-- `∑[A105636(n)+∑[A005894(n)]]` -/
def P12366660724880079272.Spec : Prop :=
  ∀ n, P12366660724880079272.a n = A244870 n

end A244870

/-! ## A244870.P15772307554106786062

`∑[∑[A001845(n)-A131941(n)]]`
-/

namespace A244870.P15772307554106786062
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001845 n - A131941 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244870.P15772307554106786062

namespace A244870

/-- `∑[∑[A001845(n)-A131941(n)]]` -/
def P15772307554106786062.Spec : Prop :=
  ∀ n, P15772307554106786062.a n = A244870 n

end A244870

/-! ## A244870.P14980498249773163197

`A244869(n)-∑[∑[A019298(n)]]`
-/

namespace A244870.P14980498249773163197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019298 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244869 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244870.P14980498249773163197

namespace A244870

/-- `A244869(n)-∑[∑[A019298(n)]]` -/
def P14980498249773163197.Spec : Prop :=
  ∀ n, P14980498249773163197.a n = A244870 n

end A244870

/-!
# A244871: Number of magic labelings with magic sum n of 3rd graph shown in link.

The programs for A244871, the canonical program `A244871.P32635472439923416` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244871 has offset 0).

The definition of A244871 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244871.P32635472439923416

`∑[A080827(n+1)*A246695(n)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A244871

/-- `∑[A080827(n+1)*A246695(n)]` -/
def P32635472439923416.Spec : Prop :=
  ∀ n, P32635472439923416.a n = A244871 n

theorem P32635472439923416.correct : P32635472439923416.Spec := by
  intro n
  simp only [A244871]

end A244871

/-! ## A244871.P6466018825211239791

`∑[A099392(n+2)*A246695(n)]`
-/

namespace A244871.P6466018825211239791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099392 (n + 2) * A246695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244871.P6466018825211239791

namespace A244871

/-- `∑[A099392(n+2)*A246695(n)]` -/
def P6466018825211239791.Spec : Prop :=
  ∀ n, P6466018825211239791.a n = A244871 n

end A244871

/-! ## A244871.P5369827986432335250

`a(n-1)+A099392(A028310(n)+2)*A246695(n)` with `a(0)=1`
-/

namespace A244871.P5369827986432335250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A099392 (A028310 n + 2).toNat * A246695 n

end

end A244871.P5369827986432335250

namespace A244871

/-- `a(n-1)+A099392(A028310(n)+2)*A246695(n)` -/
def P5369827986432335250.Spec : Prop :=
  ∀ n, P5369827986432335250.a n = A244871 n

end A244871

/-! ## A244871.P6683779312224720462

`A002817(n+1)+∑[(n+1)*A212714(n+1)]`
-/

namespace A244871.P6683779312224720462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A212714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244871.P6683779312224720462

namespace A244871

/-- `A002817(n+1)+∑[(n+1)*A212714(n+1)]` -/
def P6683779312224720462.Spec : Prop :=
  ∀ n, P6683779312224720462.a n = A244871 n

end A244871

/-! ## A244871.P14858665215409423503

`a(n-1)+A099392(A181440(n+2))*A246695(n)` with `a(0)=1`
-/

namespace A244871.P14858665215409423503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A099392 (A181440 (n + 2)).toNat * A246695 n

end

end A244871.P14858665215409423503

namespace A244871

/-- `a(n-1)+A099392(A181440(n+2))*A246695(n)` -/
def P14858665215409423503.Spec : Prop :=
  ∀ n, P14858665215409423503.a n = A244871 n

end A244871

/-! ## A244871.P14933194633677162644

`∑[A111384((n+1)²+2)/(n+1)]`
-/

namespace A244871.P14933194633677162644
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111384 ((n + 1) ^ 2 + 2) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244871.P14933194633677162644

namespace A244871

/-- `∑[A111384((n+1)²+2)/(n+1)]` -/
def P14933194633677162644.Spec : Prop :=
  ∀ n, P14933194633677162644.a n = (A244871 n : ℚ)

end A244871

/-!
# A244873: Number of magic labelings of the prism graph I X C_7 with magic sum n.

The programs for A244873, there is no canonical definition to state claims against.
-/

/-! ## A244873.P17440162990965313934

`A293311(A168106(n)-n)`
-/

namespace A244873.P17440162990965313934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293311 (A168106 n - (n : ℤ)).toNat

end

end A244873.P17440162990965313934

/-!
# A244878: Number of 6 X 6 traceless symmetric magic squares with magic sum n.

The programs for A244878, there is no canonical definition to state claims against.
-/

/-! ## A244878.P1148268821550193018

`A333351(eq[6, A002262(n)])`
-/

namespace A244878.P1148268821550193018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333351 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244878.P1148268821550193018

/-! ## A244878.P14652796033132981762

`A333351(eq[8, A141169(n)])`
-/

namespace A244878.P14652796033132981762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333351 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244878.P14652796033132981762

/-! ## A244878.P4362677174684969222

`record[A333351(A000217(n)+6)]`
-/

namespace A244878.P4362677174684969222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333351 (A000217 n + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244878.P4362677174684969222

/-! ## A244878.P15989760642350445626

`A333351(eq[7, A002260(n+1)])`
-/

namespace A244878.P15989760642350445626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333351 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244878.P15989760642350445626

/-! ## A244878.P14988286232348968669

`A333351(eq[8, A245093(n+1)])`
-/

namespace A244878.P14988286232348968669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333351 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244878.P14988286232348968669

/-!
# A244879: Number of magic labelings of the cycle-of-loops graph LOOP X C_6 having magic sum n, where LOOP is the 1-vertex, 1-loop-edge graph.

The programs for A244879, the canonical program `A244879.P3443032164947851934` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244879 has offset 0).

The definition of A244879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244879.P3443032164947851934

`∑[∑[(n+1)^4+n^4-∑[n]]]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A244879

/-- `∑[∑[(n+1)^4+n^4-∑[n]]]` -/
def P3443032164947851934.Spec : Prop :=
  ∀ n, P3443032164947851934.a n = A244879 n

theorem P3443032164947851934.correct : P3443032164947851934.Spec := by
  intro n
  simp only [A244879]

end A244879

/-! ## A244879.P11017196708650335877

`∑[∑[A339483(n)]]+∑[n+1]²`
-/

namespace A244879.P11017196708650335877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339483 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (((∑ j ∈ Finset.range (n + 1), f3 j) ^ 2 : ℕ) : ℤ)

end

end A244879.P11017196708650335877

namespace A244879

/-- `∑[∑[A339483(n)]]+∑[n+1]²` -/
def P11017196708650335877.Spec : Prop :=
  ∀ n, P11017196708650335877.a n = A244879 n

end A244879

/-! ## A244879.P15061515014747297078

`A085464(n+1)-∑[A000292(n)]`
-/

namespace A244879.P15061515014747297078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085464 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244879.P15061515014747297078

namespace A244879

/-- `A085464(n+1)-∑[A000292(n)]` -/
def P15061515014747297078.Spec : Prop :=
  ∀ n, P15061515014747297078.a n = A244879 n

end A244879

/-! ## A244879.P17331418842059024088

`A085465(n+1)+∑[A164938(n+1)]`
-/

namespace A244879.P17331418842059024088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085465 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244879.P17331418842059024088

namespace A244879

/-- `A085465(n+1)+∑[A164938(n+1)]` -/
def P17331418842059024088.Spec : Prop :=
  ∀ n, P17331418842059024088.a n = A244879 n

end A244879

/-! ## A244879.P11124018609439257454

`A000537(n+1)+∑[∑[A339483(n)]]`
-/

namespace A244879.P11124018609439257454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339483 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244879.P11124018609439257454

namespace A244879

/-- `A000537(n+1)+∑[∑[A339483(n)]]` -/
def P11124018609439257454.Spec : Prop :=
  ∀ n, P11124018609439257454.a n = A244879 n

end A244879

/-! ## A244879.P1521052682711069976

`A085464(n+1)-A000332(n+3)`
-/

namespace A244879.P1521052682711069976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085464 (n + 1) - A000332 (n + 3)

end

end A244879.P1521052682711069976

namespace A244879

/-- `A085464(n+1)-A000332(n+3)` -/
def P1521052682711069976.Spec : Prop :=
  ∀ n, P1521052682711069976.a n = A244879 n

end A244879

/-! ## A244879.P3517806850918340126

`A125198(2*n+1)/8`
-/

namespace A244879.P3517806850918340126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125198 (2 * n + 1) : ℚ) / 8

end

end A244879.P3517806850918340126

namespace A244879

/-- `A125198(2*n+1)/8` -/
def P3517806850918340126.Spec : Prop :=
  ∀ n, P3517806850918340126.a n = (A244879 n : ℚ)

end A244879

/-! ## A244879.P17259004863153797454

`record[ratio[A179838(n)]]`
-/

namespace A244879.P17259004863153797454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179838 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244879.P17259004863153797454

namespace A244879

/-- `record[ratio[A179838(n)]]` -/
def P17259004863153797454.Spec : Prop :=
  ∀ n, P17259004863153797454.a n = (A244879 n : ℚ)

end A244879

/-! ## A244879.P10827280439635801716

`A179838(∑[n+1]+1)`
-/

namespace A244879.P10827280439635801716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179838 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A244879.P10827280439635801716

namespace A244879

/-- `A179838(∑[n+1]+1)` -/
def P10827280439635801716.Spec : Prop :=
  ∀ n, P10827280439635801716.a n = A244879 n

end A244879

/-! ## A244879.P328217236279523939

`record[A179838(n+1)/A179838(n)]`
-/

namespace A244879.P328217236279523939
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179838 (n + 1) : ℚ) / (A179838 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244879.P328217236279523939

namespace A244879

/-- `record[A179838(n+1)/A179838(n)]` -/
def P328217236279523939.Spec : Prop :=
  ∀ n, P328217236279523939.a n = (A244879 n : ℚ)

end A244879

/-!
# A244880: Number of magic labelings of the cycle-of-loops graph LOOP X C_8 having magic sum n, where LOOP is the 1-vertex, 1-loop-edge graph.

The programs for A244880, the canonical program `A244880.P11603938914214109691` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244880 has offset 0).

The definition of A244880 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244880.P11603938914214109691

`∑[∑[A160838(n)]]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A244880

/-- `∑[∑[A160838(n)]]` -/
def P11603938914214109691.Spec : Prop :=
  ∀ n, P11603938914214109691.a n = A244880 n

theorem P11603938914214109691.correct : P11603938914214109691.Spec := by
  intro n
  simp only [A244880]

end A244880

/-! ## A244880.P165082140995739873

`∑[∑[A160815(n)+A160837(n)-A160788(n)]]`
-/

namespace A244880.P165082140995739873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160815 n + (A160837 n - A160788 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244880.P165082140995739873

namespace A244880

/-- `∑[∑[A160815(n)+A160837(n)-A160788(n)]]` -/
def P165082140995739873.Spec : Prop :=
  ∀ n, P165082140995739873.a n = A244880 n

end A244880

/-!
# A244881: Expansion of (1 + 26*x + 109*x^2 + 109*x^3 + 26*x^4 + x^5) / (1 - x)^8.

The programs for A244881, there is no canonical definition to state claims against.
-/

/-! ## A244881.P14803487919652643981

`A050447(A167487(n+6))`
-/

namespace A244881.P14803487919652643981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A167487 (n + 6)).toNat

end

end A244881.P14803487919652643981

/-! ## A244881.P15303311577703263779

`A050447(A167499(n+6)+2)`
-/

namespace A244881.P15303311577703263779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A167499 (n + 6) + 2).toNat

end

end A244881.P15303311577703263779

/-! ## A244881.P4261386452645698222

`A050447(A167614(n+6)+4)`
-/

namespace A244881.P4261386452645698222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A167614 (n + 6) + 4).toNat

end

end A244881.P4261386452645698222

/-! ## A244881.P17225863799510578197

`A050447(A000096(n+6)+8)`
-/

namespace A244881.P17225863799510578197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A000096 (n + 6) + 8).toNat

end

end A244881.P17225863799510578197

/-! ## A244881.P17279693135614358616

`A050447(A000217(n+7)+7)`
-/

namespace A244881.P17279693135614358616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A000217 (n + 7) + 7).toNat

end

end A244881.P17279693135614358616

/-!
# A244882: Expansion of (1 + 2*x + 2*x^2) / (1 - x)^6.

The programs for A244882, the canonical program `A244882.P8807361781366515019` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244882 has offset 0).

The definition of A244882 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244882.P8807361781366515019

`(24+62*n+63*n²+33*n^3+9*n^4+n^5)/24`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A244882

/-- `(24+62*n+63*n²+33*n^3+9*n^4+n^5)/24` -/
def P8807361781366515019.Spec : Prop :=
  ∀ n, P8807361781366515019.a n = (A244882 n : ℚ)

end A244882

/-! ## A244882.P6418577145073408071

`∑[∑[∑[∑[a(n-1)+5]]]]` with `a(0)=1, a(1)=4`
-/

namespace A244882.P6418577145073408071
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f4 =>
  f4 (n - 1) + 5

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244882.P6418577145073408071

namespace A244882

/-- `∑[∑[∑[∑[a(n-1)+5]]]]` -/
def P6418577145073408071.Spec : Prop :=
  ∀ n, (P6418577145073408071.a n : ℤ) = A244882 n

end A244882

/-! ## A244882.P13412369851409061175

`∑[A007715(n+1)]`
-/

namespace A244882.P13412369851409061175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244882.P13412369851409061175

namespace A244882

/-- `∑[A007715(n+1)]` -/
def P13412369851409061175.Spec : Prop :=
  ∀ n, P13412369851409061175.a n = A244882 n

end A244882

/-! ## A244882.P12227447935914114882

`∑[∑[A203552(n+1)]]`
-/

namespace A244882.P12227447935914114882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203552 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244882.P12227447935914114882

namespace A244882

/-- `∑[∑[A203552(n+1)]]` -/
def P12227447935914114882.Spec : Prop :=
  ∀ n, P12227447935914114882.a n = A244882 n

end A244882

/-! ## A244882.P2030501274010370835

`A006414(n)-∑[∑[∑[n]]]`
-/

namespace A244882.P2030501274010370835
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006414 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A244882.P2030501274010370835

namespace A244882

/-- `A006414(n)-∑[∑[∑[n]]]` -/
def P2030501274010370835.Spec : Prop :=
  ∀ n, P2030501274010370835.a n = A244882 n

end A244882

/-! ## A244882.P15099952361853762752

`(n+3)/3*A002817(n+1)`
-/

namespace A244882.P15099952361853762752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / 3 * (A002817 (n + 1) : ℚ)

end

end A244882.P15099952361853762752

namespace A244882

/-- `(n+3)/3*A002817(n+1)` -/
def P15099952361853762752.Spec : Prop :=
  ∀ n, P15099952361853762752.a n = (A244882 n : ℚ)

end A244882

/-! ## A244882.P17800426742737191317

`A086755(n)-A051877(n)`
-/

namespace A244882.P17800426742737191317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086755 n - A051877 n

end

end A244882.P17800426742737191317

namespace A244882

/-- `A086755(n)-A051877(n)` -/
def P17800426742737191317.Spec : Prop :=
  ∀ n, P17800426742737191317.a n = A244882 n

end A244882

/-! ## A244882.P13390839737873148567

`A272103(n)-A356251(n)`
-/

namespace A244882.P13390839737873148567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272103 n - A356251 n

end

end A244882.P13390839737873148567

namespace A244882

/-- `A272103(n)-A356251(n)` -/
def P13390839737873148567.Spec : Prop :=
  ∀ n, P13390839737873148567.a n = A244882 n

end A244882

/-! ## A244882.P10747784742549799084

`A051836(n)+A005585(n+1)`
-/

namespace A244882.P10747784742549799084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051836 n + A005585 (n + 1)

end

end A244882.P10747784742549799084

namespace A244882

/-- `A051836(n)+A005585(n+1)` -/
def P10747784742549799084.Spec : Prop :=
  ∀ n, P10747784742549799084.a n = A244882 n

end A244882

/-! ## A244882.P12410803794145874643

`A027800(n)-A033488(n)/2`
-/

namespace A244882.P12410803794145874643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027800 n : ℚ) - (A033488 n : ℚ) / 2

end

end A244882.P12410803794145874643

namespace A244882

/-- `A027800(n)-A033488(n)/2` -/
def P12410803794145874643.Spec : Prop :=
  ∀ n, P12410803794145874643.a n = (A244882 n : ℚ)

end A244882

/-! ## A244882.P375721306805845210

`A256859(n+1)+A033488(n)/2`
-/

namespace A244882.P375721306805845210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256859 (n + 1) : ℚ) + (A033488 n : ℚ) / 2

end

end A244882.P375721306805845210

namespace A244882

/-- `A256859(n+1)+A033488(n)/2` -/
def P375721306805845210.Spec : Prop :=
  ∀ n, P375721306805845210.a n = (A244882 n : ℚ)

end A244882

/-! ## A244882.P6986275680769449589

`A256859(n+1)+∑[2*A000292(n)]`
-/

namespace A244882.P6986275680769449589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256859 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244882.P6986275680769449589

namespace A244882

/-- `A256859(n+1)+∑[2*A000292(n)]` -/
def P6986275680769449589.Spec : Prop :=
  ∀ n, P6986275680769449589.a n = A244882 n

end A244882

/-! ## A244882.P2677452207112813826

`A002419(n+1)+A256859(n+1)-A002417(n+1)`
-/

namespace A244882.P2677452207112813826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002419 (n + 1) + (A256859 (n + 1) - A002417 (n + 1))

end

end A244882.P2677452207112813826

namespace A244882

/-- `A002419(n+1)+A256859(n+1)-A002417(n+1)` -/
def P2677452207112813826.Spec : Prop :=
  ∀ n, P2677452207112813826.a n = A244882 n

end A244882

/-! ## A244882.P18156968405779702997

`A256859(n+2)-A133252(n+1)`
-/

namespace A244882.P18156968405779702997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256859 (n + 2) - A133252 (n + 1)

end

end A244882.P18156968405779702997

namespace A244882

/-- `A256859(n+2)-A133252(n+1)` -/
def P18156968405779702997.Spec : Prop :=
  ∀ n, P18156968405779702997.a n = A244882 n

end A244882

/-! ## A244882.P2903085478719051259

`A000124(n+1)/2*A000292(n+1)`
-/

namespace A244882.P2903085478719051259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000124 (n + 1) : ℚ) / 2 * (A000292 (n + 1) : ℚ)

end

end A244882.P2903085478719051259

namespace A244882

/-- `A000124(n+1)/2*A000292(n+1)` -/
def P2903085478719051259.Spec : Prop :=
  ∀ n, P2903085478719051259.a n = (A244882 n : ℚ)

end A244882

/-! ## A244882.P14726419622326962446

`A301973(n+1)+n*A000292(n+1)`
-/

namespace A244882.P14726419622326962446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301973 (n + 1) + (n : ℤ) * A000292 (n + 1)

end

end A244882.P14726419622326962446

namespace A244882

/-- `A301973(n+1)+n*A000292(n+1)` -/
def P14726419622326962446.Spec : Prop :=
  ∀ n, P14726419622326962446.a n = A244882 n

end A244882

/-! ## A244882.P8485073178060288857

`A002415(n+1)+A256859(n+1)+A000292(n)`
-/

namespace A244882.P8485073178060288857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 (n + 1) + (A256859 (n + 1) + A000292 n)

end

end A244882.P8485073178060288857

namespace A244882

/-- `A002415(n+1)+A256859(n+1)+A000292(n)` -/
def P8485073178060288857.Spec : Prop :=
  ∀ n, P8485073178060288857.a n = A244882 n

end A244882

/-! ## A244882.P15827816428395692173

`A006322(n+1)+A006414(n)-A000537(n+1)`
-/

namespace A244882.P15827816428395692173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006322 (n + 1) + (A006414 n - A000537 (n + 1))

end

end A244882.P15827816428395692173

namespace A244882

/-- `A006322(n+1)+A006414(n)-A000537(n+1)` -/
def P15827816428395692173.Spec : Prop :=
  ∀ n, P15827816428395692173.a n = A244882 n

end A244882

/-! ## A244882.P16057004300089192509

`A271663(n+1)+A051836(n)-A033455(n+2)`
-/

namespace A244882.P16057004300089192509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271663 (n + 1) + (A051836 n - A033455 (n + 2))

end

end A244882.P16057004300089192509

namespace A244882

/-- `A271663(n+1)+A051836(n)-A033455(n+2)` -/
def P16057004300089192509.Spec : Prop :=
  ∀ n, P16057004300089192509.a n = A244882 n

end A244882

/-! ## A244882.P12221740174274474341

`A033455(n+1)+A033455(n+1)-A051836(n+1)`
-/

namespace A244882.P12221740174274474341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033455 (n + 1) + (A033455 (n + 1) - A051836 (n + 1))

end

end A244882.P12221740174274474341

namespace A244882

/-- `A033455(n+1)+A033455(n+1)-A051836(n+1)` -/
def P12221740174274474341.Spec : Prop :=
  ∀ n, P12221740174274474341.a n = A244882 n

end A244882

/-!
# A244884: Expansion of (-2 +x^2 +x -x*sqrt(1-2*x-3*x^2))/(-1 +x -sqrt(1-2*x-3*x^2)).

The programs for A244884, the canonical program `A244884.P1376533462208018478` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244884 has offset 0).

The definition of A244884 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244884.P12674271865432873901

`A002026(n-(ceil(atan(n))-1))`
-/

namespace A244884.P12674271865432873901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002026 ((n : ℤ) - (⌈Real.arctan (n : ℝ)⌉ - 1)).toNat

end

end A244884.P12674271865432873901

namespace A244884

/-- `A002026(n-(ceil(atan(n))-1))` -/
def P12674271865432873901.Spec : Prop :=
  ∀ n, P12674271865432873901.a n = A244884 n

end A244884

/-! ## A244884.P7419232400030869988

`A105695(C(2, n+1)+n+1)`
-/

namespace A244884.P7419232400030869988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105695 (Nat.choose 2 (n + 1) + n + 1)

end

end A244884.P7419232400030869988

namespace A244884

/-- `A105695(C(2, n+1)+n+1)` -/
def P7419232400030869988.Spec : Prop :=
  ∀ n, P7419232400030869988.a n = A244884 n

end A244884

/-! ## A244884.P17091608954673707445

`A105695(n+1)+char[1-n²]`
-/

namespace A244884.P17091608954673707445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n ^ 2 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105695 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A244884.P17091608954673707445

namespace A244884

/-- `A105695(n+1)+char[1-n²]` -/
def P17091608954673707445.Spec : Prop :=
  ∀ n, P17091608954673707445.a n = A244884 n

end A244884

/-! ## A244884.P14642151282041228051

`A002026(comp[2*n+3]+1-n)`
-/

namespace A244884.P14642151282041228051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002026 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1 - n)

end

end A244884.P14642151282041228051

namespace A244884

/-- `A002026(comp[2*n+3]+1-n)` -/
def P14642151282041228051.Spec : Prop :=
  ∀ n, P14642151282041228051.a n = A244884 n

end A244884

/-! ## A244884.P14873999133850591047

`A105695(floor(1/(γ-n))+n+2)`
-/

namespace A244884.P14873999133850591047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105695 (⌊1 / (Real.eulerMascheroniConstant - (n : ℝ))⌋ + (n + 2 : ℤ)).toNat

end

end A244884.P14873999133850591047

namespace A244884

/-- `A105695(floor(1/(γ-n))+n+2)` -/
def P14873999133850591047.Spec : Prop :=
  ∀ n, P14873999133850591047.a n = A244884 n

end A244884

/-! ## A244884.P15739782406700206205

`A130716(n+1)+A105695(n+1)`
-/

namespace A244884.P15739782406700206205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130716 (n + 1) + A105695 (n + 1)

end

end A244884.P15739782406700206205

namespace A244884

/-- `A130716(n+1)+A105695(n+1)` -/
def P15739782406700206205.Spec : Prop :=
  ∀ n, P15739782406700206205.a n = A244884 n

end A244884

/-! ## A244884.P8049265333092869345

`A004526(C(2, n))+Δ[A168049(n+1)]`
-/

namespace A244884.P8049265333092869345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Nat.choose 2 n) + (f1 (n + 1) - f1 n)

end

end A244884.P8049265333092869345

namespace A244884

/-- `A004526(C(2, n))+Δ[A168049(n+1)]` -/
def P8049265333092869345.Spec : Prop :=
  ∀ n, P8049265333092869345.a n = A244884 n

end A244884

/-! ## A244884.P12852673104154318101

`A187321(C(2, n))+Δ[A168049(n+1)]`
-/

namespace A244884.P12852673104154318101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187321 (Nat.choose 2 n) + (f1 (n + 1) - f1 n)

end

end A244884.P12852673104154318101

namespace A244884

/-- `A187321(C(2, n))+Δ[A168049(n+1)]` -/
def P12852673104154318101.Spec : Prop :=
  ∀ n, P12852673104154318101.a n = A244884 n

end A244884

/-! ## A244884.P2580816269829458439

`A168051(n+1)+A001006(A254667(n))`
-/

namespace A244884.P2580816269829458439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168051 (n + 1) + A001006 (A254667 n).toNat

end

end A244884.P2580816269829458439

namespace A244884

/-- `A168051(n+1)+A001006(A254667(n))` -/
def P2580816269829458439.Spec : Prop :=
  ∀ n, P2580816269829458439.a n = A244884 n

end A244884

/-! ## A244884.P12892698147156174219

`A001006(n)+A168051(n)-A105695(n)`
-/

namespace A244884.P12892698147156174219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n + (A168051 n - A105695 n)

end

end A244884.P12892698147156174219

namespace A244884

/-- `A001006(n)+A168051(n)-A105695(n)` -/
def P12892698147156174219.Spec : Prop :=
  ∀ n, P12892698147156174219.a n = A244884 n

end A244884

/-! ## A244884.P1376533462208018478

`A001006(n)-A005554(n+1)%A001006(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A244884

/-- `A001006(n)-A005554(n+1)%A001006(n)` -/
def P1376533462208018478.Spec : Prop :=
  ∀ n, P1376533462208018478.a n = A244884 n

theorem P1376533462208018478.correct : P1376533462208018478.Spec := by
  intro n
  simp only [A244884]

end A244884

/-! ## A244884.P15807160917146239560

`A019590(n+1)+A001006(n)-A086246(n+1)`
-/

namespace A244884.P15807160917146239560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1) + (A001006 n - A086246 (n + 1))

end

end A244884.P15807160917146239560

namespace A244884

/-- `A019590(n+1)+A001006(n)-A086246(n+1)` -/
def P15807160917146239560.Spec : Prop :=
  ∀ n, P15807160917146239560.a n = A244884 n

end A244884

/-! ## A244884.P11669423523135884768

`A064189(C(n, 2)+1)`
-/

namespace A244884.P11669423523135884768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (Nat.choose n 2 + 1)

end

end A244884.P11669423523135884768

namespace A244884

/-- `A064189(C(n, 2)+1)` -/
def P11669423523135884768.Spec : Prop :=
  ∀ n, P11669423523135884768.a n = A244884 n

end A244884

/-! ## A244884.P11777018484195123737

`A064189(∑[abs(1-n)])`
-/

namespace A244884.P11777018484195123737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A244884.P11777018484195123737

namespace A244884

/-- `A064189(∑[abs(1-n)])` -/
def P11777018484195123737.Spec : Prop :=
  ∀ n, P11777018484195123737.a n = A244884 n

end A244884

/-! ## A244884.P1781808674761271799

`A026300(A054254(n))`
-/

namespace A244884.P1781808674761271799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 (A054254 n).toNat

end

end A244884.P1781808674761271799

namespace A244884

/-- `A026300(A054254(n))` -/
def P1781808674761271799.Spec : Prop :=
  ∀ n, P1781808674761271799.a n = A244884 n

end A244884

/-! ## A244884.P14124825948658511266

`A026300(A186752(n+1))`
-/

namespace A244884.P14124825948658511266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 (A186752 (n + 1)).toNat

end

end A244884.P14124825948658511266

namespace A244884

/-- `A026300(A186752(n+1))` -/
def P14124825948658511266.Spec : Prop :=
  ∀ n, P14124825948658511266.a n = A244884 n

end A244884

/-! ## A244884.P17689047527394262391

`A026300(A056943(∑[n]+2))`
-/

namespace A244884.P17689047527394262391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 (A056943 (∑ j ∈ Finset.range (n + 1), f1 j + 2)).toNat

end

end A244884.P17689047527394262391

namespace A244884

/-- `A026300(A056943(∑[n]+2))` -/
def P17689047527394262391.Spec : Prop :=
  ∀ n, P17689047527394262391.a n = A244884 n

end A244884

/-! ## A244884.P15115981737961770692

`A026300(A001844(n)%A000124(n))`
-/

namespace A244884.P15115981737961770692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 (Int.tmod (A001844 n) (A000124 n)).toNat

end

end A244884.P15115981737961770692

namespace A244884

/-- `A026300(A001844(n)%A000124(n))` -/
def P15115981737961770692.Spec : Prop :=
  ∀ n, P15115981737961770692.a n = A244884 n

end A244884

/-! ## A244884.P10999197521854768172

`A026105(∑[n]+n)`
-/

namespace A244884.P10999197521854768172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026105 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A244884.P10999197521854768172

namespace A244884

/-- `A026105(∑[n]+n)` -/
def P10999197521854768172.Spec : Prop :=
  ∀ n, P10999197521854768172.a n = A244884 n

end A244884

/-! ## A244884.P17611750070132296748

`A026105(A000096(n))%A235019(n+1)`
-/

namespace A244884.P17611750070132296748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026105 (A000096 n).toNat) (A235019 (n + 1))

end

end A244884.P17611750070132296748

namespace A244884

/-- `A026105(A000096(n))%A235019(n+1)` -/
def P17611750070132296748.Spec : Prop :=
  ∀ n, P17611750070132296748.a n = A244884 n

end A244884

/-!
# A244885: Expansion of (1-6*x+12*x^2-8*x^3+x^4)/((1-2*x)^2*(1-3*x+x^2)).

The programs for A244885, the canonical program `A244885.P7747251361161609340` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244885 has offset 0).

The definition of A244885 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244885.P7747251361161609340

`7*a(n-1)-17*a(n-2)+16*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5, a(4)=14`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A244885

/-- `7*a(n-1)-17*a(n-2)+16*a(n-3)-4*a(n-4)` -/
def P7747251361161609340.Spec : Prop :=
  ∀ n, P7747251361161609340.a n = A244885 n

theorem P7747251361161609340.correct : P7747251361161609340.Spec := by
  intro n
  simp only [A244885]

end A244885

/-! ## A244885.P15768119106640577761

`Δ[A001906(n)-A139756(n)]`
-/

namespace A244885.P15768119106640577761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n - A139756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A244885.P15768119106640577761

namespace A244885

/-- `Δ[A001906(n)-A139756(n)]` -/
def P15768119106640577761.Spec : Prop :=
  ∀ n, P15768119106640577761.a n = A244885 n

end A244885

/-! ## A244885.P3144572038626474921

`A122367(n)-Δ[A139756(n)]`
-/

namespace A244885.P3144572038626474921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n - (f1 (n + 1) - f1 n)

end

end A244885.P3144572038626474921

namespace A244885

/-- `A122367(n)-Δ[A139756(n)]` -/
def P3144572038626474921.Spec : Prop :=
  ∀ n, P3144572038626474921.a n = A244885 n

end A244885

/-! ## A244885.P7060051240532772012

`Δ[A001906(n)]-A049610(n+1)`
-/

namespace A244885.P7060051240532772012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A049610 (n + 1)

end

end A244885.P7060051240532772012

namespace A244885

/-- `Δ[A001906(n)]-A049610(n+1)` -/
def P7060051240532772012.Spec : Prop :=
  ∀ n, P7060051240532772012.a n = A244885 n

end A244885

/-! ## A244885.P9597246491395820188

`Δ[A000045(2*n)-A139756(n)]`
-/

namespace A244885.P9597246491395820188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) - A139756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A244885.P9597246491395820188

namespace A244885

/-- `Δ[A000045(2*n)-A139756(n)]` -/
def P9597246491395820188.Spec : Prop :=
  ∀ n, P9597246491395820188.a n = A244885 n

end A244885

/-! ## A244885.P8682793831654164985

`A000045(Δ[n²])-A336102(2*n)`
-/

namespace A244885.P8682793831654164985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A336102 (2 * n)

end

end A244885.P8682793831654164985

namespace A244885

/-- `A000045(Δ[n²])-A336102(2*n)` -/
def P8682793831654164985.Spec : Prop :=
  ∀ n, P8682793831654164985.a n = A244885 n

end A244885

/-! ## A244885.P3216056957266718811

`Δ[A000045(2*n)]-A336102(2*n)`
-/

namespace A244885.P3216056957266718811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A336102 (2 * n)

end

end A244885.P3216056957266718811

namespace A244885

/-- `Δ[A000045(2*n)]-A336102(2*n)` -/
def P3216056957266718811.Spec : Prop :=
  ∀ n, P3216056957266718811.a n = A244885 n

end A244885

/-! ## A244885.P12377051936363158727

`A000045(2*n+1)-A049610(n+1)`
-/

namespace A244885.P12377051936363158727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1) - A049610 (n + 1)

end

end A244885.P12377051936363158727

namespace A244885

/-- `A000045(2*n+1)-A049610(n+1)` -/
def P12377051936363158727.Spec : Prop :=
  ∀ n, P12377051936363158727.a n = A244885 n

end A244885

/-! ## A244885.P6475639149179601944

`Δ[A001906(n)-A049610(n)]-A049610(n)`
-/

namespace A244885.P6475639149179601944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n - A049610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A049610 n

end

end A244885.P6475639149179601944

namespace A244885

/-- `Δ[A001906(n)-A049610(n)]-A049610(n)` -/
def P6475639149179601944.Spec : Prop :=
  ∀ n, P6475639149179601944.a n = A244885 n

end A244885

/-! ## A244885.P759557673074523131

`A001519(n+1)+A011782(n)-A045623(n)`
-/

namespace A244885.P759557673074523131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 1) + (A011782 n - A045623 n)

end

end A244885.P759557673074523131

namespace A244885

/-- `A001519(n+1)+A011782(n)-A045623(n)` -/
def P759557673074523131.Spec : Prop :=
  ∀ n, P759557673074523131.a n = A244885 n

end A244885

/-! ## A244885.P14221557041816276579

`A000045(2*n+1)-(A001792(n)-A045623(n))`
-/

namespace A244885.P14221557041816276579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1) - (A001792 n - A045623 n)

end

end A244885.P14221557041816276579

namespace A244885

/-- `A000045(2*n+1)-(A001792(n)-A045623(n))` -/
def P14221557041816276579.Spec : Prop :=
  ∀ n, P14221557041816276579.a n = A244885 n

end A244885

/-!
# A244886: G.f.: (1-x+sqrt(1-2*x-3*x^2))/(1-3*x+x^2+x^3+(1-x^2)*sqrt(1-2*x-3*x^2)).

The programs for A244886, there is no canonical definition to state claims against.
-/

/-! ## A244886.P15136107566198021833

`A162344(A036422(n))+A088456(n)`
-/

namespace A244886.P15136107566198021833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162344 (A036422 n).toNat + A088456 n

end

end A244886.P15136107566198021833

/-! ## A244886.P532260984457398328

`A152225(n)+A123580(A036422(n))`
-/

namespace A244886.P532260984457398328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152225 n + A123580 (A036422 n).toNat

end

end A244886.P532260984457398328

/-! ## A244886.P12374918363675648017

`A077767(∑[n]%5+3^n+1)`
-/

namespace A244886.P12374918363675648017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077767 ((∑ j ∈ Finset.range (n + 1), f1 j) % 5 + 3 ^ n + 1)

end

end A244886.P12374918363675648017

/-! ## A244886.P348805465939767264

`A054846(A307413(n))`
-/

namespace A244886.P348805465939767264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A307413 n).toNat

end

end A244886.P348805465939767264

/-! ## A244886.P4424629506522545827

`A054846(abs(A326564(n)))`
-/

namespace A244886.P4424629506522545827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 |A326564 n|.toNat

end

end A244886.P4424629506522545827

/-!
# A244887: Third column of triangle in A234950.

The programs for A244887, the canonical program `A244887.P16582301542853436473` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244887 has offset 2).

The definition of A244887 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244887.P14372087391793817099

`((n-2)/2+3)*A002696(n+3)`
-/

namespace A244887.P14372087391793817099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 2 : ℚ) / 2 + 3) * (A002696 (n + 3) : ℚ)

end

end A244887.P14372087391793817099

namespace A244887

/-- `((n-2)/2+3)*A002696(n+3)` -/
def P14372087391793817099.Spec : Prop :=
  ∀ n, P14372087391793817099.a n = (A244887 (n + 2) : ℚ)

end A244887

/-! ## A244887.P12664554155899934444

`(∑[n+3]+3)/3*A003517(n+2)`
-/

namespace A244887.P12664554155899934444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 3 : ℕ) : ℚ) / 3 * (A003517 (n + 2) : ℚ)

end

end A244887.P12664554155899934444

namespace A244887

/-- `(∑[n+3]+3)/3*A003517(n+2)` -/
def P12664554155899934444.Spec : Prop :=
  ∀ n, P12664554155899934444.a n = (A244887 (n + 2) : ℚ)

end A244887

/-! ## A244887.P16582301542853436473

`A002457(n+2)-A002694(n+4)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A244887

/-- `A002457(n+2)-A002694(n+4)` -/
def P16582301542853436473.Spec : Prop :=
  ∀ n, P16582301542853436473.a n = A244887 (n + 2)

theorem P16582301542853436473.correct : P16582301542853436473.Spec := by
  intro n
  simp only [A244887, Nat.add_sub_cancel]

end A244887

/-! ## A244887.P11317635538038396711

`A034269(n+2)-A002055(n+6)`
-/

namespace A244887.P11317635538038396711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034269 (n + 2) - A002055 (n + 6)

end

end A244887.P11317635538038396711

namespace A244887

/-- `A034269(n+2)-A002055(n+6)` -/
def P11317635538038396711.Spec : Prop :=
  ∀ n, P11317635538038396711.a n = A244887 (n + 2)

end A244887

/-! ## A244887.P16260976363438798969

`A234950(∑[n+2]+3)`
-/

namespace A244887.P16260976363438798969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234950 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A244887.P16260976363438798969

namespace A244887

/-- `A234950(∑[n+2]+3)` -/
def P16260976363438798969.Spec : Prop :=
  ∀ n, P16260976363438798969.a n = A244887 (n + 2)

end A244887

/-!
# A244889: Second column of triangle in A244888.

The programs for A244889, there is no canonical definition to state claims against.
-/

/-! ## A244889.P14577058470429464996

`A244888(∑[n+1]+2)`
-/

namespace A244889.P14577058470429464996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244888 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A244889.P14577058470429464996

/-!
# A244890: "Stringed numbers": see Comments for definition.

The programs for A244890, there is no canonical definition to state claims against.
-/

/-! ## A244890.P8004699065280548583

`lt[A171765(n), A164677(A002144(3*n+4))]`
-/

namespace A244890.P8004699065280548583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171765 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164677 (A002144 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244890.P8004699065280548583

/-! ## A244890.P4038776084041862816

`lt[A171765(n), A118914(A195159(3*n+4))]`
-/

namespace A244890.P4038776084041862816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171765 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118914 (A195159 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244890.P4038776084041862816

/-! ## A244890.P14941582715851253231

`A059995(A343452(n+1)+A063050(3*n+1))`
-/

namespace A244890.P14941582715851253231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A343452 (n + 1) + A063050 (3 * n + 1)).toNat

end

end A244890.P14941582715851253231

/-! ## A244890.P14346395331125818353

`eq[A171765(n), A185264(A322345(n))]`
-/

namespace A244890.P14346395331125818353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171765 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185264 (A322345 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244890.P14346395331125818353

/-! ## A244890.P10778041789328037571

`eq[A171765(n)*A212216(n), A171765(n)]`
-/

namespace A244890.P10778041789328037571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171765 n * A212216 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171765 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244890.P10778041789328037571

/-!
# A244892: a(n) = a(n-a(n-1)) with initial values 5,2,5,2.

The programs for A244892, the canonical program `A244892.P9673838035700945392` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244892 has offset 0).

The definition of A244892 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))` (program `A244892.P9673838035700945392`, by `A244892.P9673838035700945392.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244892.P9673838035700945392

`a(n-a(n-1))` with `a(0)=5, a(1)=2, a(2)=5, a(3)=2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A244892

/-- `a(n-a(n-1))` -/
def P9673838035700945392.Spec : Prop :=
  ∀ n, (P9673838035700945392.a n : ℤ) = A244892 n

theorem P9673838035700945392.correct : P9673838035700945392.Spec := by
  intro n
  simp only [A244892]

end A244892

/-!
# A244893: a(n) = a(n-a(n-1)) with initial values 2,3,2.

The programs for A244893, the canonical program `A244893.P3866079690777160842` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244893 has offset 1).

The definition of A244893 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))` (program `A244893.P3866079690777160842`, by `A244893.P3866079690777160842.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244893.P3866079690777160842

`a(n-a(n-1))` with `a(0)=2, a(1)=3, a(2)=2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A244893

/-- `a(n-a(n-1))` -/
def P3866079690777160842.Spec : Prop :=
  ∀ n, (P3866079690777160842.a n : ℤ) = A244893 (n + 1)

theorem P3866079690777160842.correct : P3866079690777160842.Spec := by
  intro n
  simp only [A244893, Nat.add_sub_cancel]

end A244893

/-!
# A244894: Composite numbers n with the property that the symmetric representation of sigma(n) has two parts.

The programs for A244894, there is no canonical definition to state claims against.
-/

/-! ## A244894.P16173600720976026053

`filter[A004277(n), A379969(#)]`
-/

namespace A244894.P16173600720976026053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A244894.P16173600720976026053

/-! ## A244894.P15741864284507229680

`filter[A020739(n), A379969(#)]`
-/

namespace A244894.P15741864284507229680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A244894.P15741864284507229680

/-! ## A244894.P15755986691531645421

`filter[A020744(n), A379969(#)]`
-/

namespace A244894.P15755986691531645421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A244894.P15755986691531645421

/-! ## A244894.P4246531291040994968

`filter[A103517(n), A379969(#)]`
-/

namespace A244894.P4246531291040994968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A244894.P4246531291040994968

/-! ## A244894.P14229879733030771709

`filter[A002808(n+1), A379969(#)]`
-/

namespace A244894.P14229879733030771709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A244894.P14229879733030771709

/-! ## A244894.P16338707338806488114

`filter[A004275(n+1), A379969(#)]`
-/

namespace A244894.P16338707338806488114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A244894.P16338707338806488114

/-! ## A244894.P11522137581508267594

`filter[A005843(n+1), A379969(#)]`
-/

namespace A244894.P11522137581508267594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A244894.P11522137581508267594

/-! ## A244894.P5821831786550386480

`filter[A018252(n+1), A379969(#)]`
-/

namespace A244894.P5821831786550386480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A244894.P5821831786550386480

/-! ## A244894.P16746479989849455161

`filter[A024619(n+1), A379969(#)]`
-/

namespace A244894.P16746479989849455161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A244894.P16746479989849455161

/-! ## A244894.P17450869511903154995

`filter[A032583(n+1), A379969(#)]`
-/

namespace A244894.P17450869511903154995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A244894.P17450869511903154995

/-! ## A244894.P15982430868515057976

`filter[A051035(n+1), A379969(#)]`
-/

namespace A244894.P15982430868515057976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A244894.P15982430868515057976

/-! ## A244894.P17460047531172320427

`filter[A053869(n+1), A379969(#)]`
-/

namespace A244894.P17460047531172320427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A244894.P17460047531172320427

/-! ## A244894.P3271278543368165523

`filter[A054023(n+1), A379969(#)]`
-/

namespace A244894.P3271278543368165523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A244894.P3271278543368165523

/-! ## A244894.P12530114884517030551

`filter[A054741(n+1), A379969(#)]`
-/

namespace A244894.P12530114884517030551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A244894.P12530114884517030551

/-! ## A244894.P9490068014620754121

`filter[A056653(n+1), A379969(#)]`
-/

namespace A244894.P9490068014620754121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A244894.P9490068014620754121

/-! ## A244894.P16796177847495389426

`filter[A056868(n+1), A379969(#)]`
-/

namespace A244894.P16796177847495389426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A244894.P16796177847495389426

/-! ## A244894.P12106023460547698052

`filter[A060652(n+1), A379969(#)]`
-/

namespace A244894.P12106023460547698052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A244894.P12106023460547698052

/-! ## A244894.P6284616057368332382

`filter[A060679(n+1), A379969(#)]`
-/

namespace A244894.P6284616057368332382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A244894.P6284616057368332382

/-! ## A244894.P12501826126042134764

`filter[A062973(n+1), A379969(#)]`
-/

namespace A244894.P12501826126042134764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A244894.P12501826126042134764

/-! ## A244894.P1763853249085605361

`filter[A063127(n+1), A379969(#)]`
-/

namespace A244894.P1763853249085605361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A244894.P1763853249085605361

/-!
# A244895: Period 5: repeat [0, 1, 1, -1, -1].

The programs for A244895, the canonical program `A244895.P7331689240937634665` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244895 has offset 0).

The definition of A244895 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244895.P7331689240937634665

`round(-cos((n+2)%5))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A244895

/-- `round(-cos((n+2)%5))` -/
def P7331689240937634665.Spec : Prop :=
  ∀ n, P7331689240937634665.a n = A244895 n

theorem P7331689240937634665.correct : P7331689240937634665.Spec := by
  intro n
  simp only [A244895]

end A244895

/-!
# A244896: Number of length n 0..1 arrays with each partial sum starting from the beginning no more than sqrt(2) standard deviations from its mean.

The programs for A244896, there is no canonical definition to state claims against.
-/

/-! ## A244896.P9809596800564115859

`A244903(∑[n+1])`
-/

namespace A244896.P9809596800564115859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244896.P9809596800564115859

/-! ## A244896.P15814370092194497000

`record[A244903(A000217(A134478(n)))]`
-/

namespace A244896.P15814370092194497000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A000217 (A134478 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244896.P15814370092194497000

/-! ## A244896.P9519438170197035748

`record[A244903(A000217(A141256(n)))]`
-/

namespace A244896.P9519438170197035748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A000217 (A141256 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244896.P9519438170197035748

/-! ## A244896.P7929457523830415635

`record[A244903(A000217(A344180(n)))]`
-/

namespace A244896.P7929457523830415635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A000217 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244896.P7929457523830415635

/-! ## A244896.P1016278275094761567

`record[A244903(A000217(A002260(n+1)))]`
-/

namespace A244896.P1016278275094761567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A000217 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244896.P1016278275094761567

/-! ## A244896.P6953645566646239844

`record[A244903(A000217(A003963(n+1)))]`
-/

namespace A244896.P6953645566646239844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A000217 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244896.P6953645566646239844

/-! ## A244896.P12819127174068654527

`record[A244903(A000217(A032742(n+1)))]`
-/

namespace A244896.P12819127174068654527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A000217 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244896.P12819127174068654527

/-! ## A244896.P10718629169931619779

`record[A244903(A000217(A331270(n+1)))]`
-/

namespace A244896.P10718629169931619779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A000217 (A331270 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244896.P10718629169931619779

/-!
# A244897: Number of length n 0..2 arrays with each partial sum starting from the beginning no more than sqrt(2) standard deviations from its mean.

The programs for A244897, there is no canonical definition to state claims against.
-/

/-! ## A244897.P15568112674529054821

`A244903(∑[n+2])`
-/

namespace A244897.P15568112674529054821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244897.P15568112674529054821

/-! ## A244897.P1978487005475707604

`record[A244903(A000096(A126759(n)))]`
-/

namespace A244897.P1978487005475707604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A000096 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244897.P1978487005475707604

/-! ## A244897.P1905620556427238772

`record[A244903(A000096(A286622(n)))]`
-/

namespace A244897.P1905620556427238772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A000096 (A286622 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244897.P1905620556427238772

/-! ## A244897.P13225118448323673752

`record[A244903(A000096(A002260(n+1)))]`
-/

namespace A244897.P13225118448323673752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244897.P13225118448323673752

/-! ## A244897.P7316062924385367083

`record[A244903(A000096(A003602(n+1)))]`
-/

namespace A244897.P7316062924385367083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A000096 (A003602 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244897.P7316062924385367083

/-! ## A244897.P3308193268393928697

`record[A244903(A000096(A003963(n+1)))]`
-/

namespace A244897.P3308193268393928697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A000096 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244897.P3308193268393928697

/-! ## A244897.P7441645501898675888

`record[A244903(A000096(A032742(n+1)))]`
-/

namespace A244897.P7441645501898675888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A000096 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244897.P7441645501898675888

/-! ## A244897.P16800706477485163967

`record[A244903(A000096(A209302(n+1)))]`
-/

namespace A244897.P16800706477485163967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A000096 (A209302 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244897.P16800706477485163967

/-!
# A244898: Number of length n 0..3 arrays with each partial sum starting from the beginning no more than sqrt(2) standard deviations from its mean.

The programs for A244898, there is no canonical definition to state claims against.
-/

/-! ## A244898.P17036798710266818571

`A244903(∑[n+3]+1)`
-/

namespace A244898.P17036798710266818571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A244898.P17036798710266818571

/-! ## A244898.P6050990575392297570

`A244903(floor(sqrt(A005565(n))))%(10^(n+1))`
-/

namespace A244898.P6050990575392297570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244903 (Int.sqrt (A005565 n)).toNat) (10 ^ (n + 1) : ℤ)

end

end A244898.P6050990575392297570

/-! ## A244898.P2280762773532501024

`A244903(A034856(n+2))%A244901(n+1)`
-/

namespace A244898.P2280762773532501024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244903 (A034856 (n + 2)).toNat) (A244901 (n + 1))

end

end A244898.P2280762773532501024

/-! ## A244898.P8648135224681204068

`A001221(A243588(n+1))*A244903(A034856(n+2))`
-/

namespace A244898.P8648135224681204068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A243588 (n + 1)).toNat * A244903 (A034856 (n + 2)).toNat

end

end A244898.P8648135224681204068

/-! ## A244898.P1452636287741897555

`record[A244903(A198464(n+1))]`
-/

namespace A244898.P1452636287741897555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244898.P1452636287741897555

/-!
# A244899: Number of length n 0..4 arrays with each partial sum starting from the beginning no more than sqrt(2) standard deviations from its mean.

The programs for A244899, there is no canonical definition to state claims against.
-/

/-! ## A244899.P6603538770052751768

`A244903(A055998(n+2))`
-/

namespace A244899.P6603538770052751768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A055998 (n + 2)).toNat

end

end A244899.P6603538770052751768

/-! ## A244899.P17458970703357060957

`A244903(A052905(n+1)+2)`
-/

namespace A244899.P17458970703357060957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A052905 (n + 1) + 2).toNat

end

end A244899.P17458970703357060957

/-! ## A244899.P15816537853144611343

`A244903(A167499(n)+A016777(n))`
-/

namespace A244899.P15816537853144611343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A167499 n + A016777 n).toNat

end

end A244899.P15816537853144611343

/-! ## A244899.P16090545297153068836

`A244903(A167614(n+1)+A005408(n))`
-/

namespace A244899.P16090545297153068836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A167614 (n + 1) + A005408 n).toNat

end

end A244899.P16090545297153068836

/-! ## A244899.P142335258251791254

`A244903(A167614(n+1)+record[A004442(n)])`
-/

namespace A244899.P142335258251791254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A167614 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A244899.P142335258251791254

/-! ## A244899.P3900097850711511983

`A244903(A167614(n+1)+A004442(2*n))`
-/

namespace A244899.P3900097850711511983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A167614 (n + 1) + A004442 (2 * n)).toNat

end

end A244899.P3900097850711511983

/-! ## A244899.P8339592783768124147

`A244903(A167614(n+1)-A001489(2*n+1))`
-/

namespace A244899.P8339592783768124147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A167614 (n + 1) - A001489 (2 * n + 1)).toNat

end

end A244899.P8339592783768124147

