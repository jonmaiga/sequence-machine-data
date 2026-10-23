import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
import Seq.B012.C000
import Seq.B013.C000

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A315404.P2016412341062961456

`abs(10*n-A313281(n))`
-/

namespace A315404.P2016412341062961456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A313281 n|

end

end A315404.P2016412341062961456

noncomputable section

/-- A315404: Coordination sequence Gal.6.265.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315404.P2016412341062961456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2344 terms. -/
def A315404 (n : ℕ) : ℤ :=
  A315404.P2016412341062961456.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2344 terms. -/
def A315404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315633.P2404636861496896285

`abs(A008592(n)-A312681(n))`
-/

namespace A315633.P2404636861496896285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312681 n|

end

end A315633.P2404636861496896285

noncomputable section

/-- A315633: Coordination sequence Gal.6.261.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315633.P2404636861496896285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2356 terms. -/
def A315633 (n : ℕ) : ℤ :=
  A315633.P2404636861496896285.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2356 terms. -/
def A315633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315674.P14654524120462468787

`abs(A008592(n)-A312185(n))`
-/

namespace A315674.P14654524120462468787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312185 n|

end

end A315674.P14654524120462468787

noncomputable section

/-- A315674: Coordination sequence Gal.6.353.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315674.P14654524120462468787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2298 terms. -/
def A315674 (n : ℕ) : ℤ :=
  A315674.P14654524120462468787.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2298 terms. -/
def A315674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315770.P16809159360258042029

`A008458(A315470(n)-A314677(n))`
-/

namespace A315770.P16809159360258042029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A315470 n - A314677 n).toNat

end

end A315770.P16809159360258042029

noncomputable section

/-- A315770: Coordination sequence Gal.5.307.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315770.P16809159360258042029`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2200 terms. -/
def A315770 (n : ℕ) : ℤ :=
  A315770.P16809159360258042029.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2200 terms. -/
def A315770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206474.P8402992463042945898

`abs(A185331(n))`
-/

namespace A206474.P8402992463042945898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A185331 n|

end

end A206474.P8402992463042945898

noncomputable section

/-- A206474: Riordan array ((1+x-x^2)/(1-x^2), x/(1-x^2)).

Offset 0, canonical program `A206474.P8402992463042945898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206474 (n : ℕ) : ℤ :=
  A206474.P8402992463042945898.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311254.P10235283366287493450

`A008574(n)+A315691(n)-A315686(n)`
-/

namespace A311254.P10235283366287493450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A315691 n - A315686 n)

end

end A311254.P10235283366287493450

noncomputable section

/-- A311254: Coordination sequence Gal.6.218.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311254.P10235283366287493450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2010 terms. -/
def A311254 (n : ℕ) : ℤ :=
  A311254.P10235283366287493450.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2010 terms. -/
def A311254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315177.P46381774396344281

`2*A315470(n)-A008458(n)`
-/

namespace A315177.P46381774396344281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315470 n - A008458 n

end

end A315177.P46381774396344281

noncomputable section

/-- A315177: Coordination sequence Gal.6.255.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315177.P46381774396344281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2288 terms. -/
def A315177 (n : ℕ) : ℤ :=
  A315177.P46381774396344281.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2288 terms. -/
def A315177.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315638.P16650458169343485674

`abs(A008592(n)-A312656(n))`
-/

namespace A315638.P16650458169343485674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312656 n|

end

end A315638.P16650458169343485674

noncomputable section

/-- A315638: Coordination sequence Gal.6.355.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315638.P16650458169343485674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2298 terms. -/
def A315638 (n : ℕ) : ℤ :=
  A315638.P16650458169343485674.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2298 terms. -/
def A315638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315642.P10074898855002556229

`abs(A008592(n)-A312606(n))`
-/

namespace A315642.P10074898855002556229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312606 n|

end

end A315642.P10074898855002556229

noncomputable section

/-- A315642: Coordination sequence Gal.6.332.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315642.P10074898855002556229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2280 terms. -/
def A315642 (n : ℕ) : ℤ :=
  A315642.P10074898855002556229.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2280 terms. -/
def A315642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329918.P9556832341652762600

`A156663(n)*A206474(n)`
-/

namespace A329918.P9556832341652762600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156663 n * A206474 n

end

end A329918.P9556832341652762600

noncomputable section

/-- A329918: Coefficients of orthogonal polynomials related to the Jacobsthal numbers A152046, triangle read by rows, T(n, k) for 0 <= k <= n.

Offset 0, canonical program `A329918.P9556832341652762600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329918 (n : ℕ) : ℤ :=
  A329918.P9556832341652762600.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100749.P2993982527896392758

`(A329918(comp[∑[n]])+A329918(n))/2`
-/

namespace A100749.P2993982527896392758
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329918 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A329918 n : ℚ) / 2

end

end A100749.P2993982527896392758

noncomputable section

/-- A100749: Triangle read by rows: T(n,k)=number of 231- and 312-avoiding permutations of [n] having k fixed points.

Offset 0, canonical program `A100749.P2993982527896392758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A100749 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A100749.P2993982527896392758.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A100749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114525.P12302416166957877412

`lcm(A073044(n+1), A369736(n))`
-/

namespace A114525.P12302416166957877412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A073044 (n + 1)) (A369736 n)

end

end A114525.P12302416166957877412

noncomputable section

/-- A114525: Triangle of coefficients of the Lucas polynomials.

Offset 0, canonical program `A114525.P12302416166957877412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114525 (n : ℕ) : ℤ :=
  (A114525.P12302416166957877412.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114525.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127672.P859091229776486226

`A114525(n)*A117568(n)`
-/

namespace A127672.P859091229776486226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114525 n * A117568 n

end

end A127672.P859091229776486226

noncomputable section

/-- A127672: Monic integer version of Chebyshev T-polynomials (increasing powers).

Offset 0, canonical program `A127672.P859091229776486226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127672 (n : ℕ) : ℤ :=
  A127672.P859091229776486226.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256041.P8102863058900449500

`A129684(n)*A329918(n)`
-/

namespace A256041.P8102863058900449500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129684 n * A329918 n

end

end A256041.P8102863058900449500

noncomputable section

/-- A256041: Triangle read by rows: number of idempotent basis elements of rank k in Brauer monoid B_n.

Offset 0, canonical program `A256041.P8102863058900449500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2418 terms. -/
def A256041 (n : ℕ) : ℤ :=
  A256041.P8102863058900449500.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2418 terms. -/
def A256041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311898.P13132033356014424136

`A014682(A312451(n)+A311334(n))`
-/

namespace A311898.P13132033356014424136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A312451 n + A311334 n).toNat

end

end A311898.P13132033356014424136

noncomputable section

/-- A311898: Coordination sequence Gal.5.76.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311898.P13132033356014424136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2588 terms. -/
def A311898 (n : ℕ) : ℤ :=
  A311898.P13132033356014424136.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2588 terms. -/
def A311898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313591.P3620371697952405827

`A311635(n)+A004525(A315638(n)-A311635(n))`
-/

namespace A313591.P3620371697952405827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311635 n + A004525 (A315638 n - A311635 n).toNat

end

end A313591.P3620371697952405827

noncomputable section

/-- A313591: Coordination sequence Gal.6.346.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313591.P3620371697952405827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. -/
def A313591 (n : ℕ) : ℤ :=
  A313591.P3620371697952405827.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. -/
def A313591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313854.P3810550675620183463

`abs(10*n-A313591(n))`
-/

namespace A313854.P3810550675620183463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A313591 n|

end

end A313854.P3810550675620183463

noncomputable section

/-- A313854: Coordination sequence Gal.6.250.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313854.P3810550675620183463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. -/
def A313854 (n : ℕ) : ℤ :=
  A313854.P3810550675620183463.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. -/
def A313854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315464.P12581309012109130076

`A315177(n)+A004525(A315756(n)-A315177(n))`
-/

namespace A315464.P12581309012109130076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315177 n + A004525 (A315756 n - A315177 n).toNat

end

end A315464.P12581309012109130076

noncomputable section

/-- A315464: Coordination sequence Gal.6.346.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315464.P12581309012109130076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2240 terms. -/
def A315464 (n : ℕ) : ℤ :=
  A315464.P12581309012109130076.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2240 terms. -/
def A315464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053120.P13394183785728574066

`A059268(n)/2*A127672(n)`
-/

namespace A053120.P13394183785728574066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059268 n : ℚ) / 2 * (A127672 n : ℚ)

end

end A053120.P13394183785728574066

noncomputable section

/-- A053120: Triangle of coefficients of Chebyshev's T(n,x) polynomials (powers of x in increasing order).

Offset 0, canonical program `A053120.P13394183785728574066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053120 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A053120.P13394183785728574066.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081265.P2377281126130984844

`abs(A053120(A061579(n)))`
-/

namespace A081265.P2377281126130984844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053120 (A061579 n).toNat|

end

end A081265.P2377281126130984844

noncomputable section

/-- A081265: Triangle of coefficients of the polynomials a(n, x) = 2*a(n-1, x)+ x^2*a(n-2,x), n >= 1, a(0, x) = 1, a(1, x) = 1.

Offset 0, canonical program `A081265.P2377281126130984844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A081265 (n : ℕ) : ℤ :=
  A081265.P2377281126130984844.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A081265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108045.P11058483694618656926

`A127672(2-(2-n)%(n+1))`
-/

namespace A108045.P11058483694618656926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127672 (2 - Int.tmod (2 - (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A108045.P11058483694618656926

noncomputable section

/-- A108045: Triangle read by rows: lower triangular matrix obtained by inverting the lower triangular matrix in A108044.

Offset 0, canonical program `A108045.P11058483694618656926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108045 (n : ℕ) : ℤ :=
  A108045.P11058483694618656926.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137423.P11527174726418758611

`A053120(n)+A007318(n)`
-/

namespace A137423.P11527174726418758611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053120 n + A007318 n

end

end A137423.P11527174726418758611

noncomputable section

/-- A137423: Triangle T(n,k) = A053120(n,k)+binomial(n,k) read by rows, 0<=k<=n.

Offset 0, canonical program `A137423.P11527174726418758611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137423 (n : ℕ) : ℤ :=
  A137423.P11527174726418758611.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137448.P2563997744992654951

`(A002260(n+1)-A143844(n))*A053120(n)`
-/

namespace A137448.P2563997744992654951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) - A143844 n) * A053120 n

end

end A137448.P2563997744992654951

noncomputable section

/-- A137448: Triangle T(n,k) = (1-k*(k-1))*A053120(n,k), read by rows, 0<=k<=n.

Offset 0, canonical program `A137448.P2563997744992654951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137448 (n : ℕ) : ℤ :=
  A137448.P2563997744992654951.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140883.P11216059136269672096

`A053120(n)+A053120(A061579(n))`
-/

namespace A140883.P11216059136269672096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053120 n + A053120 (A061579 n).toNat

end

end A140883.P11216059136269672096

noncomputable section

/-- A140883: Triangle T(n,k) = A053120(n,k)+A053120(n,n-k) of symmetrized Chebyshev coefficients, read by rows, 0<=k<=n.

Offset 0, canonical program `A140883.P11216059136269672096`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A140883 (n : ℕ) : ℤ :=
  A140883.P11216059136269672096.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A140883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164659.P7939324601151433332

`A002260(n+1)/gcd(A002260(n+1), A053120(n))`
-/

namespace A164659.P7939324601151433332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / (Int.gcd (A002260 (n + 1)) (A053120 n) : ℚ)

end

end A164659.P7939324601151433332

noncomputable section

/-- A164659: Denominators of coefficients of integrated Chebyshev polynomials T(n,x) (in increasing order of powers of x).

Offset 0, canonical program `A164659.P7939324601151433332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A164659 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A164659.P7939324601151433332.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A164659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313124.P8905845740579056507

`abs(A008592(n)-A315464(n))`
-/

namespace A313124.P8905845740579056507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315464 n|

end

end A313124.P8905845740579056507

noncomputable section

/-- A313124: Coordination sequence Gal.6.250.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313124.P8905845740579056507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. -/
def A313124 (n : ℕ) : ℤ :=
  A313124.P8905845740579056507.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. -/
def A313124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315444.P9836677377056582144

`abs(A008592(n)-A313155(n))`
-/

namespace A315444.P9836677377056582144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313155 n|

end

end A315444.P9836677377056582144

noncomputable section

/-- A315444: Coordination sequence Gal.6.133.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315444.P9836677377056582144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2299 terms. -/
def A315444 (n : ℕ) : ℤ :=
  A315444.P9836677377056582144.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2299 terms. -/
def A315444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039991.P3632847028178845373

`A140883(n)-A053120(n)`
-/

namespace A039991.P3632847028178845373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140883 n - A053120 n

end

end A039991.P3632847028178845373

noncomputable section

/-- A039991: Triangle of coefficients of cos(x)^n in polynomial for cos(nx).

Offset 0, canonical program `A039991.P3632847028178845373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039991 (n : ℕ) : ℤ :=
  A039991.P3632847028178845373.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061896.P13759146978715815526

`A162514(A127739(n+1)-A130517(n+1))`
-/

namespace A061896.P13759146978715815526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162514 (A127739 (n + 1) - A130517 (n + 1)).toNat

end

end A061896.P13759146978715815526

noncomputable section

/-- A061896: Triangle of coefficients of Lucas polynomials.

Offset 0, canonical program `A061896.P13759146978715815526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9935 terms. -/
def A061896 (n : ℕ) : ℤ :=
  A061896.P13759146978715815526.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9935 terms. -/
def A061896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244422.P380232244939802474

`A061896(n)*A062157(A002260(n+1))`
-/

namespace A244422.P380232244939802474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061896 n * A062157 (A002260 (n + 1)).toNat

end

end A244422.P380232244939802474

noncomputable section

/-- A244422: Quasi-Riordan triangle ((2-z)/(1-z), -z^2/(1-z)). Row reversed monic Chebyshev T-polynomials without vanishing columns.

Offset 0, canonical program `A244422.P380232244939802474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244422 (n : ℕ) : ℤ :=
  A244422.P380232244939802474.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100218.P411736067323610886

`A244422(A061579(n))-char[∑[n]]`
-/

namespace A100218.P411736067323610886
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244422 (A061579 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A100218.P411736067323610886

noncomputable section

/-- A100218: Riordan array ((1-2*x)/(1-x), (1-x)).

Offset 0, canonical program `A100218.P411736067323610886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A100218 (n : ℕ) : ℤ :=
  A100218.P411736067323610886.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A100218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098599.P12823978919337779786

`A097807(n)*A100218(n)`
-/

namespace A098599.P12823978919337779786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A100218 n

end

end A098599.P12823978919337779786

noncomputable section

/-- A098599: Riordan array ((1+2*x)/(1+x), (1+x)).

Offset 0, canonical program `A098599.P12823978919337779786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098599 (n : ℕ) : ℤ :=
  A098599.P12823978919337779786.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098599.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247492.P9749959557379015816

`and(-1, A098599(A007401(n+1)))`
-/

namespace A247492.P9749959557379015816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A098599 (A007401 (n + 1)).toNat)

end

end A247492.P9749959557379015816

noncomputable section

/-- A247492: Triangle read by rows: T(n, k) = binomial(k-1, n-k)*(n+1)/(n+1-k), 0 <= k <= n.

Offset 0, canonical program `A247492.P9749959557379015816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A247492 (n : ℕ) : ℤ :=
  A247492.P9749959557379015816.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A247492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294337.P9175725966357798562

`A294336(2^(n+1))`
-/

namespace A294337.P9175725966357798562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294336 (2 ^ (n + 1))

end

end A294337.P9175725966357798562

noncomputable section

/-- A294337: Number of ways to write 2^n as a finite power-tower a^(b^(c^...)) of positive integers greater than one.

Offset 1, canonical program `A294337.P9175725966357798562`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294336, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294337 (n : ℕ) : ℤ :=
  A294337.P9175725966357798562.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294336, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294337.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A305973.P13517062276911664221

`A004526(A294337(4*n+2))%A000217(A090288(n))`
-/

namespace A305973.P13517062276911664221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004526 (A294337 (4 * n + 2)).toNat) (A000217 (A090288 n).toNat)

end

end A305973.P13517062276911664221

noncomputable section

/-- A305973: Filter sequence for the prime signature of 2n-1.

Offset 1, canonical program `A305973.P13517062276911664221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A305973 (n : ℕ) : ℤ :=
  A305973.P13517062276911664221.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A305973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315719.P16119919274741780679

`A315770(2*n)-A153733(A315770(n))`
-/

namespace A315719.P16119919274741780679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315770 (2 * n) - A153733 (A315770 n).toNat

end

end A315719.P16119919274741780679

noncomputable section

/-- A315719: Coordination sequence Gal.6.658.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315719.P16119919274741780679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1100 terms. -/
def A315719 (n : ℕ) : ℤ :=
  A315719.P16119919274741780679.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1100 terms. -/
def A315719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351923.P5900735276508586646

`A309891(n+1)+n+1`
-/

namespace A351923.P5900735276508586646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309891 (n + 1) + (n + 1 : ℤ)

end

end A351923.P5900735276508586646

noncomputable section

/-- A351923: Number of ordered pairs of positive integers (s,t), s,t <= n, such that (s^t) | n.

Offset 1, canonical program `A351923.P5900735276508586646`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A309891, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351923 (n : ℕ) : ℤ :=
  A351923.P5900735276508586646.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A309891, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351923.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078632.P6780388354337714643

`∑[A309891(n+1)]`
-/

namespace A078632.P6780388354337714643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078632.P6780388354337714643

noncomputable section

/-- A078632: Number of geometric subsequences of [1,...,n] with integral successive-term ratio and length > 1.

Offset 1, canonical program `A078632.P6780388354337714643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078632 (n : ℕ) : ℤ :=
  A078632.P6780388354337714643.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130038.P424967591654019132

`A083370(n+1)+7`
-/

namespace A130038.P424967591654019132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083370 (n + 1) + 7

end

end A130038.P424967591654019132

noncomputable section

/-- A130038: Even numbers n such that n-7 is prime, but neither n-3 nor n-5 is prime.

Offset 1, canonical program `A130038.P424967591654019132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130038 (n : ℕ) : ℤ :=
  A130038.P424967591654019132.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132253.P4766283954835838953

`∩[A083370(n+1), A257645(n)]`
-/

namespace A132253.P4766283954835838953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257645 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132253.P4766283954835838953

noncomputable section

/-- A132253: Isolated primes congruent to 29 (mod 30).

Offset 1, canonical program `A132253.P4766283954835838953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A132253 (n : ℕ) : ℤ :=
  (A132253.P4766283954835838953.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A132253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137869.P2950415357000949362

`p?[gcd(A083370(n+2), A134100(n+1))]`
-/

namespace A137869.P2950415357000949362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A083370 (n + 2)) (A134100 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A137869.P2950415357000949362

noncomputable section

/-- A137869: Primes p with property that (p - previous prime) >= 6 and (next prime - p) >= 6.

Offset 1, canonical program `A137869.P2950415357000949362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7382 terms. -/
def A137869 (n : ℕ) : ℤ :=
  (A137869.P2950415357000949362.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7382 terms. -/
def A137869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167771.P8141901052907375128

`A137869(n%a(n-1))` with `a(0)=2`
-/

namespace A167771.P8141901052907375128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A137869 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A167771.P8141901052907375128

noncomputable section

/-- A167771: Twice-isolated primes: primes p such that neither p+-2 nor p+-4 is prime.

Offset 1, canonical program `A167771.P8141901052907375128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167771 (n : ℕ) : ℤ :=
  A167771.P8141901052907375128.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175069.P11883358524687980575

`A175068(n+1)/(n+1)`
-/

namespace A175069.P11883358524687980575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175068 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A175069.P11883358524687980575

noncomputable section

/-- A175069: a(n) = product of perfect divisors of n / n.

Offset 1, canonical program `A175069.P11883358524687980575`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175069 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A175069.P11883358524687980575.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175069.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A178646.P15418868558420132707

`A007955(n+1)/A175068(n+1)`
-/

namespace A178646.P15418868558420132707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A175068 (n + 1) : ℚ)

end

end A178646.P15418868558420132707

noncomputable section

/-- A178646: a(n) = product of divisors d of n such that d^k is not equal to n for any k >= 1.

Offset 1, canonical program `A178646.P15418868558420132707`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, A175068, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A178646 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A178646.P15418868558420132707.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, A175068, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A178646.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245589.P11946184601349858175

`∩[A075540(n+1), A240475(n+1)]`
-/

namespace A245589.P11946184601349858175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245589.P11946184601349858175

noncomputable section

/-- A245589: Primes which are the average of the two adjacent primes and also of the two adjacent squarefree numbers.

Offset 1, canonical program `A245589.P11946184601349858175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A245589 (n : ℕ) : ℤ :=
  (A245589.P11946184601349858175.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A245589.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246261.P15970116847604462200

`eq[1, A246260(n+1)]+1`
-/

namespace A246261.P15970116847604462200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246260 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A246261.P15970116847604462200

noncomputable section

/-- A246261: Numbers n such that A003961(n) is of the form 4k+1.

Offset 1, canonical program `A246261.P15970116847604462200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246261 (n : ℕ) : ℤ :=
  (A246261.P15970116847604462200.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246262.P10590490882229900441

`A246260(n)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A246262.P10590490882229900441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A246260 n + a (n - 1)

end

end A246262.P10590490882229900441

noncomputable section

/-- A246262: Inverse function to injection A246261, partial sums of A246260.

Offset 0, canonical program `A246262.P10590490882229900441`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246260, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246262 (n : ℕ) : ℤ :=
  A246262.P10590490882229900441.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246260, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246262.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246263.P13781321414210192941

`eq[0, A246260(n+1)]+1`
-/

namespace A246263.P13781321414210192941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246260 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A246263.P13781321414210192941

noncomputable section

/-- A246263: Numbers n such that A003961(n) is of the form 4k+3.

Offset 1, canonical program `A246263.P13781321414210192941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246263 (n : ℕ) : ℤ :=
  (A246263.P13781321414210192941.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246264.P3731558565214309607

`n-A246262(n)`
-/

namespace A246264.P3731558565214309607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A246262 n

end

end A246264.P3731558565214309607

noncomputable section

/-- A246264: Inverse function for injection A246263.

Offset 0, canonical program `A246264.P3731558565214309607`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246262, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246264 (n : ℕ) : ℤ :=
  A246264.P3731558565214309607.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246262, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246264.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246265.P3263290630060116708

`(1+A048673(A246261(n+1)))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246265.P3263290630060116708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A048673 (A246261 (n + 1)).toNat : ℚ) / 2

end

end A246265.P3263290630060116708

noncomputable section

/-- A246265: Permutation of natural numbers: a(n) = (1+A048673(A246261(n)))/2.

Offset 1, canonical program `A246265.P3263290630060116708`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A246261, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246265 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A246265.P3263290630060116708.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A246261, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246265.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246266.P5502087740169364243

`A246262(A064216(2*n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246266.P5502087740169364243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246262 (A064216 (2 * n + 1)).toNat

end

end A246266.P5502087740169364243

noncomputable section

/-- A246266: Permutation of natural numbers: a(n) = A246262(A064216((2*n)-1)).

Offset 1, canonical program `A246266.P5502087740169364243`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064216, A246262, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246266 (n : ℕ) : ℤ :=
  A246266.P5502087740169364243.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064216, A246262, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246266.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246267.P11984409630168091738

`A048673(A246263(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246267.P11984409630168091738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048673 (A246263 (n + 1)).toNat : ℚ) / 2

end

end A246267.P11984409630168091738

noncomputable section

/-- A246267: Permutation of natural numbers: a(n) = A048673(A246263(n))/2.

Offset 1, canonical program `A246267.P11984409630168091738`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A246263, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246267 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A246267.P11984409630168091738.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A246263, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246267.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246268.P8349117576513526915

`A246264(A064216(2*(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246268.P8349117576513526915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246264 (A064216 (2 * (n + 1))).toNat

end

end A246268.P8349117576513526915

noncomputable section

/-- A246268: Permutation of natural numbers: a(n) = A246264(A064216(2*n)).

Offset 1, canonical program `A246268.P8349117576513526915`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064216, A246264, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246268 (n : ℕ) : ℤ :=
  A246268.P8349117576513526915.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064216, A246264, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246268.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A253792.P10279464663514090408

`A156552(A244154(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A253792.P10279464663514090408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A244154 n).toNat

end

end A253792.P10279464663514090408

noncomputable section

/-- A253792: Permutation of natural numbers: a(n) = A156552(A244154(n)).

Offset 0, canonical program `A253792.P10279464663514090408`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, A244154, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A253792 (n : ℕ) : ℤ :=
  A253792.P10279464663514090408.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, A244154, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A253792.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A253884.P16458333213855723995

`A122111(A243506(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A253884.P16458333213855723995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A243506 (n + 1)).toNat

end

end A253884.P16458333213855723995

noncomputable section

/-- A253884: Permutation of natural numbers: a(n) = A122111(A243506(n)).

Offset 1, canonical program `A253884.P16458333213855723995`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, A243506, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A253884 (n : ℕ) : ℤ :=
  A253884.P16458333213855723995.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, A243506, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A253884.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A253892.P16962043896708669236

`A243071(A245612(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A253892.P16962043896708669236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A245612 n).toNat

end

end A253892.P16962043896708669236

noncomputable section

/-- A253892: Permutation of natural numbers: a(n) = A243071(A245612(n)).

Offset 0, canonical program `A253892.P16962043896708669236`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A243071, A245612, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A253892 (n : ℕ) : ℤ :=
  A253892.P16962043896708669236.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A243071, A245612, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A253892.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A254101.P16318865568851900675

`A000265(A254051(n+1))`
-/

namespace A254101.P16318865568851900675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A254051 (n + 1)).toNat

end

end A254101.P16318865568851900675

noncomputable section

/-- A254101: Square array A(row,col) = A000265(A254051(row,col)).

Offset 1, canonical program `A254101.P16318865568851900675`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A254051, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A254101 (n : ℕ) : ℤ :=
  A254101.P16318865568851900675.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A254051, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A254101.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A269860.P2406062323914390099

`eq[A000089(A073575(n+1)), A246260(n+1)]+1`
-/

namespace A269860.P2406062323914390099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (A073575 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246260 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A269860.P2406062323914390099

noncomputable section

/-- A269860: Numbers n such that n and A048673(n) are of the same parity.

Offset 1, canonical program `A269860.P2406062323914390099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5062 terms. -/
def A269860 (n : ℕ) : ℤ :=
  (A269860.P2406062323914390099.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5062 terms. -/
def A269860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269861.P15058288038325778243

`eq[A000035(n), A246260(n+1)]+1`
-/

namespace A269861.P15058288038325778243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246260 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A269861.P15058288038325778243

noncomputable section

/-- A269861: Numbers n such that n and A048673(n) are of opposite parity.

Offset 1, canonical program `A269861.P15058288038325778243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4981 terms. -/
def A269861 (n : ℕ) : ℤ :=
  (A269861.P15058288038325778243.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4981 terms. -/
def A269861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270430.P7402745598073727974

`eq[A011655(n+2), A246260(n+1)]+1`
-/

namespace A270430.P7402745598073727974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246260 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A270430.P7402745598073727974

noncomputable section

/-- A270430: Numbers n such that A048673(n) and A064216(n) are of the same parity.

Offset 1, canonical program `A270430.P7402745598073727974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5071 terms. -/
def A270430 (n : ℕ) : ℤ :=
  (A270430.P7402745598073727974.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5071 terms. -/
def A270430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270431.P6980226587388956771

`eq[char[A270430(n+1)], A000007(n)]`
-/

namespace A270431.P6980226587388956771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270430 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A270431.P6980226587388956771

noncomputable section

/-- A270431: Numbers n such that A048673(n) and A064216(n) are of opposite parity.

Offset 1, canonical program `A270431.P6980226587388956771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4928 terms. -/
def A270431 (n : ℕ) : ℤ :=
  (A270431.P6980226587388956771.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4928 terms. -/
def A270431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270432.P16128433384081149087

`∑[char[A270430(n+1)-1]]`
-/

namespace A270432.P16128433384081149087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270430 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270432.P16128433384081149087

noncomputable section

/-- A270432: a(n) = number of terms A270430 <= n; least monotonic left inverse of A270430.

Offset 1, canonical program `A270432.P16128433384081149087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270432 (n : ℕ) : ℤ :=
  (A270432.P16128433384081149087.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270433.P15401219787460768616

`n+1-A270432(n+1)`
-/

namespace A270433.P15401219787460768616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A270432 (n + 1)

end

end A270433.P15401219787460768616

noncomputable section

/-- A270433: a(n) = number of terms A270431 <= n; least monotonic left inverse of A270431.

Offset 1, canonical program `A270433.P15401219787460768616`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A270432, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A270433 (n : ℕ) : ℤ :=
  A270433.P15401219787460768616.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A270432, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A270433.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A270434.P10423559976014811217

`A270432(n+1)-A270433(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A270434.P10423559976014811217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270432 (n + 1) - A270433 (n + 1)

end

end A270434.P10423559976014811217

noncomputable section

/-- A270434: a(n) = A270432(n) - A270433(n).

Offset 1, canonical program `A270434.P10423559976014811217`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A270432, A270433, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A270434 (n : ℕ) : ℤ :=
  A270434.P10423559976014811217.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A270432, A270433, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A270434.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A285712.P10989090546038180415

`A048673(A252463(A064216(n+1)))%A254049(n+1)`
-/

namespace A285712.P10989090546038180415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048673 (A252463 (A064216 (n + 1)).toNat).toNat) (A254049 (n + 1))

end

end A285712.P10989090546038180415

noncomputable section

/-- A285712: a(1) = 0, and for n > 1, if n = 3k-1, then a(n) = k, otherwise a(n) = (A064216(n)+1)/2.

Offset 1, canonical program `A285712.P10989090546038180415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A285712 (n : ℕ) : ℤ :=
  A285712.P10989090546038180415.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A285712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285713.P6418465002878272495

`A046523(A245612(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A285713.P6418465002878272495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A245612 n).toNat

end

end A285713.P6418465002878272495

noncomputable section

/-- A285713: a(n) = A046523(A245612(n)).

Offset 0, canonical program `A285713.P6418465002878272495`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A245612, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A285713 (n : ℕ) : ℤ :=
  A285713.P6418465002878272495.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A245612, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A285713.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A285714.P3662534397469993104

`1+a(A285712(n+1)-1)` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A285714.P3662534397469993104
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a (A285712 (n + 1) - 1).toNat

end

end A285714.P3662534397469993104

noncomputable section

/-- A285714: a(1) = 0; for n > 1, a(n) = 1 + a(A285712(n)).

Offset 1, canonical program `A285714.P3662534397469993104`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285712, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A285714 (n : ℕ) : ℤ :=
  (A285714.P3662534397469993104.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285712, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A285714.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286578.P11823003083739616083

`A285712(A286577(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286578.P11823003083739616083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285712 (A286577 (n + 1)).toNat

end

end A286578.P11823003083739616083

noncomputable section

/-- A286578: a(n) = A285712(A286577(n)).

Offset 1, canonical program `A286578.P11823003083739616083`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285712, A286577, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286578 (n : ℕ) : ℤ :=
  A286578.P11823003083739616083.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285712, A286577, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286578.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286587.P14335713023111587869

`A006047(A244154(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286587.P14335713023111587869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A244154 n).toNat

end

end A286587.P14335713023111587869

noncomputable section

/-- A286587: a(n) = A006047(A244154(n)).

Offset 0, canonical program `A286587.P14335713023111587869`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006047, A244154, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286587 (n : ℕ) : ℤ :=
  A286587.P14335713023111587869.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006047, A244154, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286587.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286613.P8940720398290594098

`A046523(A244154(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286613.P8940720398290594098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A244154 n).toNat

end

end A286613.P8940720398290594098

noncomputable section

/-- A286613: a(n) = A046523(A244154(n)).

Offset 0, canonical program `A286613.P8940720398290594098`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A244154, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286613 (n : ℕ) : ℤ :=
  A286613.P8940720398290594098.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A244154, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286613.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A291763.P8562917103276515339

`A289814(A245612(n))`
-/

namespace A291763.P8562917103276515339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A245612 n).toNat

end

end A291763.P8562917103276515339

noncomputable section

/-- A291763: Binary encoding of 2-digits in ternary representation of A245612(n).

Offset 0, canonical program `A291763.P8562917103276515339`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A245612, A289814, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A291763 (n : ℕ) : ℤ :=
  A291763.P8562917103276515339.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A245612, A289814, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A291763.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292251.P3001000153096971167

`A007814(1+A292250(n+1))`
-/

namespace A292251.P3001000153096971167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (1 + A292250 (n + 1)).toNat

end

end A292251.P3001000153096971167

noncomputable section

/-- A292251: The 3-adic valuation of A048673(n).

Offset 1, canonical program `A292251.P3001000153096971167`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292250, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292251 (n : ℕ) : ℤ :=
  A292251.P3001000153096971167.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292250, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292251.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292252.P1921198620842257846

`A007814(1+A291759(n+1))`
-/

namespace A292252.P1921198620842257846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (1 + A291759 (n + 1)).toNat

end

end A292252.P1921198620842257846

noncomputable section

/-- A292252: Number of trailing 2-digits in ternary representation of A048673(n).

Offset 1, canonical program `A292252.P1921198620842257846`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A291759, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292252 (n : ℕ) : ℤ :=
  A292252.P1921198620842257846.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A291759, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292252.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292260.P2004989350870370866

`A291770(A245612(n))`
-/

namespace A292260.P2004989350870370866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291770 (A245612 n).toNat

end

end A292260.P2004989350870370866

noncomputable section

/-- A292260: Binary encoding of 0-digits in ternary representation of A245612(n).

Offset 0, canonical program `A292260.P2004989350870370866`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A245612, A291770, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A292260 (n : ℕ) : ℤ :=
  A292260.P2004989350870370866.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A245612, A291770, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A292260.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292261.P9658740137864361157

`A007814(1+A292260(n))`
-/

namespace A292261.P9658740137864361157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (1 + A292260 n).toNat

end

end A292261.P9658740137864361157

noncomputable section

/-- A292261: The 3-adic valuation of A245612(n).

Offset 0, canonical program `A292261.P9658740137864361157`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292260, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292261 (n : ℕ) : ℤ :=
  A292261.P9658740137864361157.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292260, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292261.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292262.P8551215429045952693

`A007814(1+A291763(n))`
-/

namespace A292262.P8551215429045952693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (1 + A291763 n).toNat

end

end A292262.P8551215429045952693

noncomputable section

/-- A292262: Number of trailing 2-digits in ternary representation of A245612(n).

Offset 0, canonical program `A292262.P8551215429045952693`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A291763, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292262 (n : ℕ) : ℤ :=
  A292262.P8551215429045952693.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A291763, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292262.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292590.P8653431818680257867

`A079978(n+1)+2*a(A285712(n+1)-1)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A292590.P8653431818680257867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  A079978 (n + 1) + 2 * a (A285712 (n + 1) - 1).toNat

end

end A292590.P8653431818680257867

noncomputable section

/-- A292590: a(1) = 0; and for n > 1, a(n) = 2*a(A285712(n)) + [0 == (n mod 3)].

Offset 1, canonical program `A292590.P8653431818680257867`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285712, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292590 (n : ℕ) : ℤ :=
  A292590.P8653431818680257867.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285712, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292590.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292591.P7064288365944805705

`A245611(n+1)-A292590(n+1)`
-/

namespace A292591.P7064288365944805705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245611 (n + 1) - A292590 (n + 1)

end

end A292591.P7064288365944805705

noncomputable section

/-- A292591: a(1) = 0, a(2) = 1; and for n > 2, a(n) = 2*a(A285712(n)) + [1 == (n mod 3)].

Offset 1, canonical program `A292591.P7064288365944805705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1121 terms. -/
def A292591 (n : ℕ) : ℤ :=
  A292591.P7064288365944805705.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1121 terms. -/
def A292591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292594.P8537391345759066760

`A000120(A292590(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292594.P8537391345759066760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292590 (n + 1)).toNat

end

end A292594.P8537391345759066760

noncomputable section

/-- A292594: a(n) = A000120(A292590(n)).

Offset 1, canonical program `A292594.P8537391345759066760`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292590, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292594 (n : ℕ) : ℤ :=
  A292594.P8537391345759066760.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292590, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292594.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292595.P4451636547860676390

`A000120(A292591(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292595.P4451636547860676390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292591 (n + 1)).toNat

end

end A292595.P4451636547860676390

noncomputable section

/-- A292595: a(n) = A000120(A292591(n)).

Offset 1, canonical program `A292595.P4451636547860676390`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292591, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292595 (n : ℕ) : ℤ :=
  A292595.P4451636547860676390.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292591, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292595.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A305295.P5022715488973413442

`A289813(A245612(n))`
-/

namespace A305295.P5022715488973413442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A245612 n).toNat

end

end A305295.P5022715488973413442

noncomputable section

/-- A305295: Binary encoding of 1-digits in ternary representation of A245612(n).

Offset 0, canonical program `A305295.P5022715488973413442`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A245612, A289813, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A305295 (n : ℕ) : ℤ :=
  A305295.P5022715488973413442.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A245612, A289813, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A305295.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323513.P12048018068045558104

`char[A300216(n+1)-1]`
-/

namespace A323513.P12048018068045558104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300216 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A323513.P12048018068045558104

noncomputable section

/-- A323513: a(n) = 1 if n and phi(n) share the same prime signature, 0 otherwise.

Offset 1, canonical program `A323513.P12048018068045558104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323513 (n : ℕ) : ℤ :=
  (A323513.P12048018068045558104.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337337.P7440096239031397272

`A337335((n+1)²)`
-/

namespace A337337.P7440096239031397272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337335 ((n + 1) ^ 2)

end

end A337337.P7440096239031397272

noncomputable section

/-- A337337: a(n) = gcd(1+sigma(s), (s+1)/2), where s is the square of n once prime-shifted (s = A003961(n)^2 = A003961(n^2)).

Offset 1, canonical program `A337337.P7440096239031397272`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A337335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337337 (n : ℕ) : ℤ :=
  A337337.P7440096239031397272.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A337335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337337.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337338.P8319227600971306024

`A337194(A003961(n+1)²)/A337337(n+1)`
-/

namespace A337338.P8319227600971306024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337194 (A003961 (n + 1) ^ 2).toNat : ℚ) / (A337337 (n + 1) : ℚ)

end

end A337338.P8319227600971306024

noncomputable section

/-- A337338: Numerator of (1+sigma(s)) / ((s+1)/2), where s is the square of n prime-shifted once (s = A003961(n)^2 = A003961(n^2)).

Offset 1, canonical program `A337338.P8319227600971306024`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A337194, A337337, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337338 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A337338.P8319227600971306024.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A337194, A337337, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337338.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337339.P4042521456947446519

`A337336(n+1)/A337337(n+1)`
-/

namespace A337339.P4042521456947446519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337336 (n + 1) : ℚ) / (A337337 (n + 1) : ℚ)

end

end A337339.P4042521456947446519

noncomputable section

/-- A337339: Denominator of (1+sigma(s)) / ((s+1)/2), where s is the square of n prime-shifted once (s = A003961(n)^2 = A003961(n^2)).

Offset 1, canonical program `A337339.P4042521456947446519`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A337336, A337337, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337339 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A337339.P4042521456947446519.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A337336, A337337, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337339.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337340.P276399523375729777

`(A337339(n+1)-A003961(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A337340.P276399523375729777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337339 (n + 1) - A003961 (n + 1) : ℚ) / 2

end

end A337340.P276399523375729777

noncomputable section

/-- A337340: a(n) = (A337339(n)-A003961(n)) / 2.

Offset 1, canonical program `A337340.P276399523375729777`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A337339, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337340 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A337340.P276399523375729777.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A337339, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337340.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337341.P5889933687803878944

`A337339(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A337341.P5889933687803878944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337339 (n + 1) - (n + 1 : ℤ)

end

end A337341.P5889933687803878944

noncomputable section

/-- A337341: a(n) = A337339(n) - n.

Offset 1, canonical program `A337341.P5889933687803878944`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A337339, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337341 (n : ℕ) : ℤ :=
  A337341.P5889933687803878944.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A337339, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337341.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340376.P5209034061733646793

`eq[1, A278222(A304759(n+1))]+1`
-/

namespace A340376.P5209034061733646793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A304759 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A340376.P5209034061733646793

noncomputable section

/-- A340376: Numbers k such that there are no 1-digits in the ternary expansion of A048673(k).

Offset 1, canonical program `A340376.P5209034061733646793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A340376 (n : ℕ) : ℤ :=
  (A340376.P5209034061733646793.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A340376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340378.P1297187167670847368

`A000120(A304759(n+1))`
-/

namespace A340378.P1297187167670847368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A304759 (n + 1)).toNat

end

end A340378.P1297187167670847368

noncomputable section

/-- A340378: Number of 1-digits in the ternary representation of A048673(n).

Offset 1, canonical program `A340378.P1297187167670847368`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A304759, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340378 (n : ℕ) : ℤ :=
  A340378.P1297187167670847368.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A304759, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340378.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340379.P13991734637336372993

`A000120(A291759(n+1))`
-/

namespace A340379.P13991734637336372993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A291759 (n + 1)).toNat

end

end A340379.P13991734637336372993

noncomputable section

/-- A340379: Number of 2-digits in the ternary representation of A048673(n).

Offset 1, canonical program `A340379.P13991734637336372993`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A291759, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340379 (n : ℕ) : ℤ :=
  A340379.P13991734637336372993.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A291759, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340379.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344522.P9914785473880405217

`∑[A344599(n+1)]`
-/

namespace A344522.P9914785473880405217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344522.P9914785473880405217

noncomputable section

/-- A344522: a(n) = Sum_{1 <= i, j, k <= n} gcd(i,j,k).

Offset 1, canonical program `A344522.P9914785473880405217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344522 (n : ℕ) : ℤ :=
  A344522.P9914785473880405217.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344522.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348738.P16981301963998914675

`lt[0, A348736(n+1)]+1`
-/

namespace A348738.P16981301963998914675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348736 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A348738.P16981301963998914675

noncomputable section

/-- A348738: Numbers k for which A326042(k) < k, where A326042(n) = A064989(sigma(A003961(n))).

Offset 1, canonical program `A348738.P16981301963998914675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348738 (n : ℕ) : ℤ :=
  (A348738.P16981301963998914675.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348941.P16476962796183016569

`(n+1)/A348940(n+1)`
-/

namespace A348941.P16476962796183016569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A348940 (n + 1) : ℚ)

end

end A348941.P16476962796183016569

noncomputable section

/-- A348941: a(n) = n / gcd(n, A326042(n)).

Offset 1, canonical program `A348941.P16476962796183016569`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348941 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348941.P16476962796183016569.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348941.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348942.P4298548663594448972

`A326042(n+1)/A348940(n+1)`
-/

namespace A348942.P4298548663594448972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326042 (n + 1) : ℚ) / (A348940 (n + 1) : ℚ)

end

end A348942.P4298548663594448972

noncomputable section

/-- A348942: a(n) = A326042(n) / gcd(n, A326042(n)).

Offset 1, canonical program `A348942.P4298548663594448972`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326042, A348940, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348942 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348942.P4298548663594448972.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326042, A348940, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348942.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349754.P804298020081946582

`A347100(n+1)-A000010(n+1)`
-/

namespace A349754.P804298020081946582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347100 (n + 1) - A000010 (n + 1)

end

end A349754.P804298020081946582

noncomputable section

/-- A349754: a(n) = phi(A003961(n)) - 2*phi(n), where A003961 is fully multiplicative with a(p) = nextprime(p), and phi is Euler totient function.

Offset 1, canonical program `A349754.P804298020081946582`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A347100, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349754 (n : ℕ) : ℤ :=
  A349754.P804298020081946582.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A347100, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349754.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349756.P8922585120578040547

`eq[1, A348993(n+1)]+1`
-/

namespace A349756.P8922585120578040547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348993 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A349756.P8922585120578040547

noncomputable section

/-- A349756: Numbers k such that the odd part of sigma(k) is equal to gcd(sigma(k), A003961(k)), where A003961 is fully multiplicative with a(p) = nextprime(p), and sigma is the sum of divisors function.

Offset 1, canonical program `A349756.P8922585120578040547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A349756 (n : ℕ) : ℤ :=
  (A349756.P8922585120578040547.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A349756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349910.P15708250188466983779

`A336840(n+1)-A048673(n+1)`
-/

namespace A349910.P15708250188466983779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336840 (n + 1) - A048673 (n + 1)

end

end A349910.P15708250188466983779

noncomputable section

/-- A349910: a(n) = Sum_{d|n, d

Offset 1, canonical program `A349910.P15708250188466983779`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A336840, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349910 (n : ℕ) : ℤ :=
  A349910.P15708250188466983779.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A336840, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349910.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350372.P2646849622102892745

`∩[A033992(n+1), A338539(n+1)]`
-/

namespace A350372.P2646849622102892745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350372.P2646849622102892745

noncomputable section

/-- A350372: Numbers with exactly 5 semiprime divisors.

Offset 1, canonical program `A350372.P2646849622102892745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 877 terms. -/
def A350372 (n : ℕ) : ℤ :=
  (A350372.P2646849622102892745.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 877 terms. -/
def A350372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350375.P15315086322075171755

`∩[A200521(n+1), A338539(n+1)]`
-/

namespace A350375.P15315086322075171755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350375.P15315086322075171755

noncomputable section

/-- A350375: Numbers with exactly 8 semiprime divisors.

Offset 1, canonical program `A350375.P15315086322075171755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3773 terms. -/
def A350375 (n : ℕ) : ℤ :=
  (A350375.P15315086322075171755.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3773 terms. -/
def A350375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351546.P8277132408193178014

`A000203(n+1)/A351544(n+1)`
-/

namespace A351546.P8277132408193178014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A351544 (n + 1) : ℚ)

end

end A351546.P8277132408193178014

noncomputable section

/-- A351546: a(n) is the largest unitary divisor of sigma(n) coprime with A003961(n), where A003961 is fully multiplicative with a(p) = nextprime(p), and sigma is the sum of divisors function.

Offset 1, canonical program `A351546.P8277132408193178014`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351544, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351546 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A351546.P8277132408193178014.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351544, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351546.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353638.P14021207844737996786

`A000035(n+1)*A348737(A064989(n+1))`
-/

namespace A353638.P14021207844737996786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A348737 (A064989 (n + 1)).toNat

end

end A353638.P14021207844737996786

noncomputable section

/-- A353638: a(n) = 1 if n is odd and A064989(sigma(n)) < A064989(n), otherwise 0. Here A064989 shifts the prime factorization one step towards lower primes, and sigma is the sum of divisors function.

Offset 1, canonical program `A353638.P14021207844737996786`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064989, A348737, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353638 (n : ℕ) : ℤ :=
  A353638.P14021207844737996786.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064989, A348737, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353638.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353639.P13459626096142204888

`char[eq[A266437(n), A353638(n+1)]]`
-/

namespace A353639.P13459626096142204888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266437 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353638 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353639.P13459626096142204888

noncomputable section

/-- A353639: a(n) = 1 if n is odd and A064989(sigma(n)) > A064989(n), otherwise 0. Here A064989 shifts the prime factorization one step towards lower primes, and sigma is the sum of divisors function.

Offset 1, canonical program `A353639.P13459626096142204888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9925 terms. -/
def A353639 (n : ℕ) : ℤ :=
  (A353639.P13459626096142204888.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9925 terms. -/
def A353639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353666.P3692679567967800425

`gcd(n+1, A351546(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353666.P3692679567967800425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A351546 (n + 1))

end

end A353666.P3692679567967800425

noncomputable section

/-- A353666: a(n) = gcd(n, A351546(n)).

Offset 1, canonical program `A353666.P3692679567967800425`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351546, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353666 (n : ℕ) : ℤ :=
  (A353666.P3692679567967800425.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351546, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353666.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353667.P4254365963197736758

`(n+1)/A353666(n+1)`
-/

namespace A353667.P4254365963197736758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A353666 (n + 1) : ℚ)

end

end A353667.P4254365963197736758

noncomputable section

/-- A353667: a(n) = n / gcd(n, A351546(n)).

Offset 1, canonical program `A353667.P4254365963197736758`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353667 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A353667.P4254365963197736758.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353667.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353668.P18386353074867683989

`A351546(n+1)/gcd(n+1, A351546(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353668.P18386353074867683989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351546 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A351546 (n + 1)) : ℚ)

end

end A353668.P18386353074867683989

noncomputable section

/-- A353668: a(n) = A351546(n) / gcd(n, A351546(n)).

Offset 1, canonical program `A353668.P18386353074867683989`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351546, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353668 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A353668.P18386353074867683989.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351546, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353668.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355940.P3503418342827386624

`A063524(A355934(n+1))`
-/

namespace A355940.P3503418342827386624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A355934 (n + 1)).toNat

end

end A355940.P3503418342827386624

noncomputable section

/-- A355940: a(n) = 1 if A003973(n) is a multiple of A000203(n), otherwise 0.

Offset 1, canonical program `A355940.P3503418342827386624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355940 (n : ℕ) : ℤ :=
  A355940.P3503418342827386624.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355940.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355941.P5058088448507230669

`eq[1, A355940(n+1)]+1`
-/

namespace A355941.P5058088448507230669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355940 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A355941.P5058088448507230669

noncomputable section

/-- A355941: Numbers k such that A003973(k) is a multiple of A000203(k).

Offset 1, canonical program `A355941.P5058088448507230669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A355941 (n : ℕ) : ℤ :=
  (A355941.P5058088448507230669.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A355941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355946.P7479184387596826010

`floor(1/A348993(n+1))`
-/

namespace A355946.P7479184387596826010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A348993 (n + 1) : ℚ)⌋

end

end A355946.P7479184387596826010

noncomputable section

/-- A355946: a(n) = 1 if the odd part of sigma(k) divides A003961(k), otherwise 0, where A003961 is fully multiplicative with a(p) = nextprime(p), and sigma is the sum of divisors function.

Offset 1, canonical program `A355946.P7479184387596826010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355946 (n : ℕ) : ℤ :=
  A355946.P7479184387596826010.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364813.P15914586563839963174

`∏{d}[n+1, A175068(#)]`
-/

namespace A364813.P15914586563839963174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A175068 d

end

end A364813.P15914586563839963174

noncomputable section

/-- A364813: a(n) = Product_{k=2..n} k^ord(n, k) where ord(n, k) = 0 if k does not divide n, otherwise ord(n, k) = e where e is such that k^e divides n but k^(e + 1) does not.

Offset 1, canonical program `A364813.P15914586563839963174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A364813 (n : ℕ) : ℤ :=
  A364813.P15914586563839963174.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A364813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365865.P7129990262128482870

`∩[A365864(n+1)-1, A365864(n+1)]`
-/

namespace A365865.P7129990262128482870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365864 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365865.P7129990262128482870

noncomputable section

/-- A365865: Starts of runs of 3 consecutive integers that are divisible by the square of their least prime factor.

Offset 1, canonical program `A365865.P7129990262128482870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 544 terms. -/
def A365865 (n : ℕ) : ℤ :=
  (A365865.P7129990262128482870.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 544 terms. -/
def A365865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375144.P11032156288611190920

`filter[A338539(n+1), A212793(#)]`
-/

namespace A375144.P11032156288611190920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A375144.P11032156288611190920

noncomputable section

/-- A375144: Numbers whose prime factorization has exactly two exponents that equal 2 and has no higher exponents.

Offset 1, canonical program `A375144.P11032156288611190920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2211 terms. -/
def A375144 (n : ℕ) : ℤ :=
  A375144.P11032156288611190920.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2211 terms. -/
def A375144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378663.P6986709549582363223

`A378662(n+1)-A080225(n+1)`
-/

namespace A378663.P6986709549582363223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378662 (n + 1) - A080225 (n + 1)

end

end A378663.P6986709549582363223

noncomputable section

/-- A378663: Number of divisors d of n such that sigma(d) < 2*d < A003961(d), where A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A378663.P6986709549582363223`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080225, A378662, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378663 (n : ℕ) : ℤ :=
  A378663.P6986709549582363223.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080225, A378662, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378663.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378748.P8742583333347776614

`A378521(n+1)-A051953(n+1)`
-/

namespace A378748.P8742583333347776614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378521 (n + 1) - A051953 (n + 1)

end

end A378748.P8742583333347776614

noncomputable section

/-- A378748: Möbius transform of A378747.

Offset 1, canonical program `A378748.P8742583333347776614`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, A378521, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378748 (n : ℕ) : ℤ :=
  A378748.P8742583333347776614.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, A378521, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378748.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A381885.P9369399217660328766

`A364813(n+1)/(n+1)`
-/

namespace A381885.P9369399217660328766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364813 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A381885.P9369399217660328766

noncomputable section

/-- A381885: a(n) = Product_{k=2..n-1} k^ord(n, k) where ord(n, k) = 0 if k does not divide n, otherwise is the exponent of the highest power of k that divides n.

Offset 1, canonical program `A381885.P9369399217660328766`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A364813, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A381885 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A381885.P9369399217660328766.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A364813, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A381885.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A027457.P5210784852604014020

`A025529(n+1)-Δ[A173185(n)]`
-/

namespace A027457.P5210784852604014020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025529 (n + 1) - (f1 (n + 1) - f1 n)

end

end A027457.P5210784852604014020

noncomputable section

/-- A027457: a(n) = (H(n) - 1)*lcm{1,...,n}, where H(n) is the n-th harmonic number.

Offset 1, canonical program `A027457.P5210784852604014020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A027457 (n : ℕ) : ℤ :=
  A027457.P5210784852604014020.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A027457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047078.P11719807738729298579

`∩[A083370(n+1)-2, A134100(n+1)]`
-/

namespace A047078.P11719807738729298579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083370 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047078.P11719807738729298579

noncomputable section

/-- A047078: Primes at which difference pattern X2Y (X and Y >= 6) occurs in A001223.

Offset 1, canonical program `A047078.P11719807738729298579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1085 terms. -/
def A047078 (n : ℕ) : ℤ :=
  (A047078.P11719807738729298579.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1085 terms. -/
def A047078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053806.P5470582851069519396

`A072284(n+2)-A053797(n+1)`
-/

namespace A053806.P5470582851069519396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072284 (n + 2) - A053797 (n + 1)

end

end A053806.P5470582851069519396

noncomputable section

/-- A053806: Numbers where a gap begins in the sequence of squarefree numbers (A005117).

Offset 1, canonical program `A053806.P5470582851069519396`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A053806 (n : ℕ) : ℤ :=
  A053806.P5470582851069519396.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A053806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056343.P18158920682156565457

`(A056489(n+1)+A056283(n+1))/2`
-/

namespace A056343.P18158920682156565457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056489 (n + 1) + A056283 (n + 1) : ℚ) / 2

end

end A056343.P18158920682156565457

noncomputable section

/-- A056343: Number of bracelets of length n using exactly three different colored beads.

Offset 1, canonical program `A056343.P18158920682156565457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A056343 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056343.P18158920682156565457.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A056343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056349.P11554127501764149273

`∑{d}[n+1, A008683(#)*A056343((n+1)/#)]`
-/

namespace A056349.P11554127501764149273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056349.P11554127501764149273

noncomputable section

/-- A056349: Number of primitive (period n) bracelets using exactly three different colored beads.

Offset 1, canonical program `A056349.P11554127501764149273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A056349 (n : ℕ) : ℤ :=
  A056349.P11554127501764149273.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A056349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065372.P6024978409983988564

`A065371(A065371(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A065372.P6024978409983988564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065371 (A065371 (n + 1)).toNat

end

end A065372.P6024978409983988564

noncomputable section

/-- A065372: a(n) = A065371(A065371(n)).

Offset 1, canonical program `A065372.P6024978409983988564`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065371, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065372 (n : ℕ) : ℤ :=
  A065372.P6024978409983988564.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065371, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065372.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065373.P8556550290844581984

`a(A065371(n+1)-1)+1` with `a(0)=0`
-/

namespace A065373.P8556550290844581984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A065371 (n + 1) - 1).toNat + 1

end

end A065373.P8556550290844581984

noncomputable section

/-- A065373: Number of iterations of A065371 starting at n until 1 is reached.

Offset 1, canonical program `A065373.P8556550290844581984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065373 (n : ℕ) : ℤ :=
  (A065373.P8556550290844581984.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066261.P13449104958247159472

`A066260(A066260(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066261.P13449104958247159472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066260 (A066260 (n + 1)).toNat

end

end A066261.P13449104958247159472

noncomputable section

/-- A066261: a(n) = A066260(A066260(n)).

Offset 1, canonical program `A066261.P13449104958247159472`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066260, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066261 (n : ℕ) : ℤ :=
  A066261.P13449104958247159472.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066260, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066261.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066262.P18261934228188747550

`gcd(n+1, A066260(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066262.P18261934228188747550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A066260 (n + 1))

end

end A066262.P18261934228188747550

noncomputable section

/-- A066262: a(n) = gcd(n, A066260(n)).

Offset 1, canonical program `A066262.P18261934228188747550`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066260, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066262 (n : ℕ) : ℤ :=
  (A066262.P18261934228188747550.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066260, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066262.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071248.P8710611459542892382

`(n+1)!*(n+1)^(n+1)/A067911(n+1)`
-/

namespace A071248.P8710611459542892382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) * (n + 1) ^ (n + 1) : ℚ) / (A067911 (n + 1) : ℚ)

end

end A071248.P8710611459542892382

noncomputable section

/-- A071248: a(n) = Product_{k=1..n} lcm(n,k).

Offset 1, canonical program `A071248.P8710611459542892382`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067911, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071248 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A071248.P8710611459542892382.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067911, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071248.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072085.P201290304430267741

`A072084(A072084(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A072085.P201290304430267741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072084 (A072084 (n + 1)).toNat

end

end A072085.P201290304430267741

noncomputable section

/-- A072085: a(n) = A072084(A072084(n)).

Offset 1, canonical program `A072085.P201290304430267741`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072084, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072085 (n : ℕ) : ℤ :=
  A072085.P201290304430267741.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072084, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072085.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072086.P8115136836013124802

`A201219(A072085(n+1))+A201219(n+1)`
-/

namespace A072086.P8115136836013124802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201219 (A072085 (n + 1)).toNat + A201219 (n + 1)

end

end A072086.P8115136836013124802

noncomputable section

/-- A072086: Number of steps to reach 1, starting with n and applying the A072084-map repeatedly.

Offset 1, canonical program `A072086.P8115136836013124802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072086 (n : ℕ) : ℤ :=
  A072086.P8115136836013124802.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073248.P6563719464096944215

`∩[A053806(n+1)-2, A072284(n+1)]`
-/

namespace A073248.P6563719464096944215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053806 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073248.P6563719464096944215

noncomputable section

/-- A073248: Squarefree numbers k such that k+1 is also squarefree, but k-1 and k+2 are not.

Offset 1, canonical program `A073248.P6563719464096944215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2506 terms. -/
def A073248 (n : ℕ) : ℤ :=
  (A073248.P6563719464096944215.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2506 terms. -/
def A073248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075736.P78316521861569086

`A000045(A030059(n+1))`
-/

namespace A075736.P78316521861569086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A030059 (n + 1)).toNat

end

end A075736.P78316521861569086

noncomputable section

/-- A075736: Fibonacci numbers F(k) as k runs through the products of an odd number of distinct primes A030059 (mu(k)=-1).

Offset 1, canonical program `A075736.P78316521861569086`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030059, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075736 (n : ℕ) : ℤ :=
  A075736.P78316521861569086.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030059, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075736.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A077438.P1829940462926558059

`A030059(n+1)²`
-/

namespace A077438.P1829940462926558059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030059 (n + 1) ^ 2

end

end A077438.P1829940462926558059

noncomputable section

/-- A077438: Numbers k such that Sum_{d|k} mu(d) mu(n/d)^2 = -1.

Offset 1, canonical program `A077438.P1829940462926558059`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030059, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077438 (n : ℕ) : ℤ :=
  A077438.P1829940462926558059.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030059, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077438.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079782.P18031866409307502702

`A079781(n+1)+n`
-/

namespace A079782.P18031866409307502702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079781 (n + 1) + (n : ℤ)

end

end A079782.P18031866409307502702

noncomputable section

/-- A079782: Final term of n-th row of triangle in A079784.

Offset 1, canonical program `A079782.P18031866409307502702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A079782 (n : ℕ) : ℤ :=
  A079782.P18031866409307502702.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A079782.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079783.P3010673036400802129

`(n+1)*(A079782(n+1)-n/2)`
-/

namespace A079783.P3010673036400802129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A079782 (n + 1) : ℚ) - (n : ℚ) / 2)

end

end A079783.P3010673036400802129

noncomputable section

/-- A079783: Sum of n-th row of triangle in A079784.

Offset 1, canonical program `A079783.P3010673036400802129`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079782, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079783 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A079783.P3010673036400802129.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079782, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079783.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079784.P13207047154207898246

`A079781(A002024(n+1))+A002262(n)`
-/

namespace A079784.P13207047154207898246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079781 (A002024 (n + 1)).toNat + A002262 n

end

end A079784.P13207047154207898246

noncomputable section

/-- A079784: Triangle read by rows in which the n-th row contains the smallest set of n consecutive numbers such that the r-th number in the n-th row is divisible by n-r+1. The first term of the n-th row must exceed n.

Offset 1, canonical program `A079784.P13207047154207898246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079784 (n : ℕ) : ℤ :=
  A079784.P13207047154207898246.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083720.P8840668489950384102

`A117214(A322590(n+1))`
-/

namespace A083720.P8840668489950384102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117214 (A322590 (n + 1)).toNat

end

end A083720.P8840668489950384102

noncomputable section

/-- A083720: Product of the primes less than the greatest prime factor of n but not dividing n.

Offset 1, canonical program `A083720.P8840668489950384102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A083720 (n : ℕ) : ℤ :=
  A083720.P8840668489950384102.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A083720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083802.P12370496919285025626

`A083799(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083802.P12370496919285025626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083799 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A083802.P12370496919285025626

noncomputable section

/-- A083802: a(n) = A083799(n)/n.

Offset 1, canonical program `A083802.P12370496919285025626`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083799, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083802 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A083802.P12370496919285025626.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083799, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083802.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A086300.P13309129529402629296

`A003415(record[A071785(n+1)])`
-/

namespace A086300.P13309129529402629296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086300.P13309129529402629296

noncomputable section

/-- A086300: Arithmetic derivative of 7-smooth numbers.

Offset 1, canonical program `A086300.P13309129529402629296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A086300 (n : ℕ) : ℤ :=
  A086300.P13309129529402629296.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A086300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093818.P17790798542643971304

`gcd(∑[1/(n+1)]*A002805(n+1), A027457(n+1))`
-/

namespace A093818.P17790798542643971304
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j) * (A002805 (n + 1) : ℚ))) (A027457 (n + 1))

end

end A093818.P17790798542643971304

noncomputable section

/-- A093818: a(n) = gcd(A001008(n), n!).

Offset 1, canonical program `A093818.P17790798542643971304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A093818 (n : ℕ) : ℤ :=
  (A093818.P17790798542643971304.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A093818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096617.P17292615775465208619

`A025529(n+1)/A002944(n+1)*A027611(n+1)`
-/

namespace A096617.P17292615775465208619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025529 (n + 1) : ℚ) / (A002944 (n + 1) : ℚ) * (A027611 (n + 1) : ℚ)

end

end A096617.P17292615775465208619

noncomputable section

/-- A096617: Numerator of n*HarmonicNumber(n).

Offset 1, canonical program `A096617.P17292615775465208619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A096617 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A096617.P17292615775465208619.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A096617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102928.P4713113639802046422

`lcm(A025529(n+1), A081528(n+1))/A025529(n+1)`
-/

namespace A102928.P4713113639802046422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A025529 (n + 1)) (A081528 (n + 1)) : ℚ) / (A025529 (n + 1) : ℚ)

end

end A102928.P4713113639802046422

noncomputable section

/-- A102928: Numerator of the harmonic mean of the first n positive integers.

Offset 1, canonical program `A102928.P4713113639802046422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A102928 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A102928.P4713113639802046422.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A102928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109600.P13679550260820444963

`eq[A000120(n+1), A076649(n+1)]+1`
-/

namespace A109600.P13679550260820444963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A109600.P13679550260820444963

noncomputable section

/-- A109600: Numbers n such that number of 1's in binary representation of n equals the number of digits required to write the prime factors of n.

Offset 1, canonical program `A109600.P13679550260820444963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A109600 (n : ℕ) : ℤ :=
  (A109600.P13679550260820444963.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A109600.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110566.P11658579506260881929

`A025529(n+1)/A001008(n+1)`
-/

namespace A110566.P11658579506260881929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025529 (n + 1) : ℚ) / (A001008 (n + 1) : ℚ)

end

end A110566.P11658579506260881929

noncomputable section

/-- A110566: a(n) = lcm{1,2,...,n}/denominator of harmonic number H(n).

Offset 1, canonical program `A110566.P11658579506260881929`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025529, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A110566 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A110566.P11658579506260881929.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025529, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A110566.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A112813.P6439457678955944330

`eq[3, A110566(n+1)]+1`
-/

namespace A112813.P6439457678955944330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A112813.P6439457678955944330

noncomputable section

/-- A112813: Numbers k such that lcm(1,2,3,...,k)/3 equals the denominator of the k-th harmonic number H(k).

Offset 1, canonical program `A112813.P6439457678955944330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 588 terms. -/
def A112813 (n : ℕ) : ℤ :=
  (A112813.P6439457678955944330.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 588 terms. -/
def A112813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112816.P6858448339143821751

`eq[9, A110566(n+1)]+1`
-/

namespace A112816.P6858448339143821751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A112816.P6858448339143821751

noncomputable section

/-- A112816: Numbers k such that lcm(1,2,3,...,k)/9 equals the denominator of the k-th harmonic number H(k).

Offset 1, canonical program `A112816.P6858448339143821751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 446 terms. -/
def A112816 (n : ℕ) : ℤ :=
  (A112816.P6858448339143821751.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 446 terms. -/
def A112816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112817.P8263414269983312733

`eq[11, A110566(A028310(n))]`
-/

namespace A112817.P8263414269983312733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112817.P8263414269983312733

noncomputable section

/-- A112817: Numbers k such that lcm(1,2,3,...,k)/11 equals the denominator of the k-th harmonic number H(k).

Offset 1, canonical program `A112817.P8263414269983312733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 614 terms. -/
def A112817 (n : ℕ) : ℤ :=
  (A112817.P8263414269983312733.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 614 terms. -/
def A112817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113766.P13213420990229536179

`gcd(A083720(n+1), A092694(n+1))`
-/

namespace A113766.P13213420990229536179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A083720 (n + 1)) (A092694 (n + 1))

end

end A113766.P13213420990229536179

noncomputable section

/-- A113766: a(n) is the product of those primes which divide some iterate of the Euler totient function but do not divide n itself.

Offset 1, canonical program `A113766.P13213420990229536179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A113766 (n : ℕ) : ℤ :=
  (A113766.P13213420990229536179.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A113766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119619.P8213995835525385254

`A000142(n+1)/A067911(n+1)`
-/

namespace A119619.P8213995835525385254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A067911 (n + 1) : ℚ)

end

end A119619.P8213995835525385254

noncomputable section

/-- A119619: a(n) = Product_{i=1..n} i / gcd(i,n).

Offset 1, canonical program `A119619.P8213995835525385254`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067911, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A119619 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A119619.P8213995835525385254.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067911, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A119619.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A120263.P6050525716603868642

`A096617(n+1)/A001008(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A120263.P6050525716603868642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096617 (n + 1) : ℚ) / (A001008 (n + 1) : ℚ)

end

end A120263.P6050525716603868642

noncomputable section

/-- A120263: Ratio of the numerator of n*HarmonicNumber[n] to the numerator of HarmonicNumber[n]: A096617(n)/A001008(n).

Offset 1, canonical program `A120263.P6050525716603868642`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120263 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A120263.P6050525716603868642.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120263.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A120992.P11139390425260994503

`A053806(n+1)-A072284(n+1)`
-/

namespace A120992.P11139390425260994503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053806 (n + 1) - A072284 (n + 1)

end

end A120992.P11139390425260994503

noncomputable section

/-- A120992: Number of integers in n-th run of squarefree positive integers.

Offset 1, canonical program `A120992.P11139390425260994503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120992 (n : ℕ) : ℤ :=
  A120992.P11139390425260994503.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126083.P11057915756448127103

`(A025529(n+1)/gcd(A003418(n), A025529(n+1)))%(n+1)`
-/

namespace A126083.P11057915756448127103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A025529 (n + 1) : ℚ) / (Int.gcd (A003418 n) (A025529 (n + 1)) : ℚ))) (n + 1 : ℤ)

end

end A126083.P11057915756448127103

noncomputable section

/-- A126083: a(n) = numerator of H(n) taken mod n, where H(n) = Sum_{k=1..n} 1/k is the n-th harmonic number.

Offset 1, canonical program `A126083.P11057915756448127103`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A126083 (n : ℕ) : ℤ :=
  A126083.P11057915756448127103.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A126083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126272.P6684349572185641805

`A045972(n+1)²/A045966(n+1)`
-/

namespace A126272.P6684349572185641805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045972 (n + 1) ^ 2 : ℚ) / (A045966 (n + 1) : ℚ)

end

end A126272.P6684349572185641805

noncomputable section

/-- A126272: a(1)=27; if n = Product p_i^e_i, n>1, then a(n) = Product p_{i+2}^{e_i+2}.

Offset 1, canonical program `A126272.P6684349572185641805`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126272 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A126272.P6684349572185641805.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127553.P16603871116089107536

`A071248(n+1)/A067911(n+1)`
-/

namespace A127553.P16603871116089107536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071248 (n + 1) : ℚ) / (A067911 (n + 1) : ℚ)

end

end A127553.P16603871116089107536

noncomputable section

/-- A127553: a(n) = Product_{k=1..n} lcm(k,n)/gcd(k,n).

Offset 1, canonical program `A127553.P16603871116089107536`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067911, A071248, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A127553 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A127553.P16603871116089107536.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067911, A071248, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A127553.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A128438.P1091758002824177893

`floor(A002944(n+1)/A110566(n+1))`
-/

namespace A128438.P1091758002824177893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002944 (n + 1) : ℚ) / (A110566 (n + 1) : ℚ)⌋

end

end A128438.P1091758002824177893

noncomputable section

/-- A128438: a(n) = floor((denominator of H(n))/n), where H(n) = Sum_{k=1..n} 1/k, the n-th harmonic number.

Offset 1, canonical program `A128438.P1091758002824177893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A128438 (n : ℕ) : ℤ :=
  A128438.P1091758002824177893.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A128438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133937.P361040303253339586

`A100994(n+1)-A048671(n+1)`
-/

namespace A133937.P361040303253339586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100994 (n + 1) - A048671 (n + 1)

end

end A133937.P361040303253339586

noncomputable section

/-- A133937: A100994-n/A014963.

Offset 1, canonical program `A133937.P361040303253339586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133937 (n : ℕ) : ℤ :=
  A133937.P361040303253339586.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140668.P2961368003393691795

`n+1+A140664(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140668.P2961368003393691795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A140664 (n + 1)

end

end A140668.P2961368003393691795

noncomputable section

/-- A140668: a(n) = n + A140664(n).

Offset 1, canonical program `A140668.P2961368003393691795`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140664, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140668 (n : ℕ) : ℤ :=
  A140668.P2961368003393691795.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140664, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140668.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A141056.P945056089172605289

`∏{d}[n, A089026(#+1)]`
-/

namespace A141056.P945056089172605289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A089026 (d + 1)

end

end A141056.P945056089172605289

noncomputable section

/-- A141056: 1 followed by A027760, a variant of Bernoulli number denominators.

Offset 0, canonical program `A141056.P945056089172605289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141056 (n : ℕ) : ℤ :=
  A141056.P945056089172605289.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145609.P11425567724915738602

`A025529(2*(n+1))/gcd(A003418(n+1), A025529(2*(n+1)))`
-/

namespace A145609.P11425567724915738602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025529 (2 * (n + 1)) : ℚ) / (Int.gcd (A003418 (n + 1)) (A025529 (2 * (n + 1))) : ℚ)

end

end A145609.P11425567724915738602

noncomputable section

/-- A145609: Numerator of the polynomial A_l(x) = sum_{d=1..l-1} x^(l-d)/d for index l=2n+1 evaluated at x=1.

Offset 1, canonical program `A145609.P11425567724915738602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A145609 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A145609.P11425567724915738602.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A145609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145738.P10793220673153802030

`A145609(n+1)/A145737(n+1)²`
-/

namespace A145738.P10793220673153802030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145609 (n + 1) : ℚ) / (A145737 (n + 1) ^ 2 : ℚ)

end

end A145738.P10793220673153802030

noncomputable section

/-- A145738: a(n) = squarefree part of A145609(n).

Offset 1, canonical program `A145738.P10793220673153802030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A145738 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A145738.P10793220673153802030.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A145738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153215.P1043252920232416462

`∩[A318959(n+1), A319050(n+1)]`
-/

namespace A153215.P1043252920232416462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153215.P1043252920232416462

noncomputable section

/-- A153215: Primes p such that none of p-2, p-1, p+1, and p+2 is squarefree.

Offset 1, canonical program `A153215.P1043252920232416462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. -/
def A153215 (n : ℕ) : ℤ :=
  (A153215.P1043252920232416462.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. -/
def A153215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157261.P4017168066649199223

`A141285(A185170(A006519(n+1)))`
-/

namespace A157261.P4017168066649199223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141285 (A185170 (A006519 (n + 1)).toNat).toNat

end

end A157261.P4017168066649199223

noncomputable section

/-- A157261: A run-length encoding of blocks of 2 in A090822.

Offset 1, canonical program `A157261.P4017168066649199223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A157261 (n : ℕ) : ℤ :=
  A157261.P4017168066649199223.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A157261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158134.P3890413208393723118

`A157261(4*(n+1))`
-/

namespace A158134.P3890413208393723118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157261 (4 * (n + 1))

end

end A158134.P3890413208393723118

noncomputable section

/-- A158134: Fourth quadrisection of A157261.

Offset 1, canonical program `A158134.P3890413208393723118`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A157261, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158134 (n : ℕ) : ℤ :=
  A158134.P3890413208393723118.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A157261, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158134.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A162902.P8702082304774524880

`∪[A053806(n+1), A072284(n+1)]`
-/

namespace A162902.P8702082304774524880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162902.P8702082304774524880

noncomputable section

/-- A162902: An increasing sequence of alternatingly squarefree and nonsquarefree numbers.

Offset 1, canonical program `A162902.P8702082304774524880`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162902 (n : ℕ) : ℤ :=
  (A162902.P8702082304774524880.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163111.P14893710209663125730

`∩[A164513(n+1), A151800(A164513(n+1))]`
-/

namespace A163111.P14893710209663125730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A164513 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163111.P14893710209663125730

noncomputable section

/-- A163111: Prime numbers with gaps larger than 18 towards both neighboring primes.

Offset 1, canonical program `A163111.P14893710209663125730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A163111 (n : ℕ) : ℤ :=
  (A163111.P14893710209663125730.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A163111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164020.P17938913421504694089

`A141056(n)*A152271(n)`
-/

namespace A164020.P17938913421504694089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 n * A152271 n

end

end A164020.P17938913421504694089

noncomputable section

/-- A164020: Denominators of Bernoulli numbers interleaved with even numbers.

Offset 0, canonical program `A164020.P17938913421504694089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1316 terms. -/
def A164020 (n : ℕ) : ℤ :=
  A164020.P17938913421504694089.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1316 terms. -/
def A164020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166062.P18383124327508039970

`A141056(A000040(n+1)-1)`
-/

namespace A166062.P18383124327508039970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 (A000040 (n + 1) - 1).toNat

end

end A166062.P18383124327508039970

noncomputable section

/-- A166062: a(n) = denominator(Bernoulli(prime(n) - 1)).

Offset 1, canonical program `A166062.P18383124327508039970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A166062 (n : ℕ) : ℤ :=
  A166062.P18383124327508039970.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A166062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166260.P5468160099319009475

`A089026(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A166260.P5468160099319009475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1) - 1

end

end A166260.P5468160099319009475

noncomputable section

/-- A166260: a(n) = A089026(n) - 1.

Offset 1, canonical program `A166260.P5468160099319009475`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089026, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A166260 (n : ℕ) : ℤ :=
  A166260.P5468160099319009475.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089026, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A166260.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167294.P6479843741992610623

`A061142(n+1)*A166586(n+1)`
-/

namespace A167294.P6479843741992610623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A166586 (n + 1)

end

end A167294.P6479843741992610623

noncomputable section

/-- A167294: Totally multiplicative sequence with a(p) = 2*(p-2) for prime p.

Offset 1, canonical program `A167294.P6479843741992610623`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061142, A166586, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167294 (n : ℕ) : ℤ :=
  A167294.P6479843741992610623.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061142, A166586, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167294.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167295.P13206562216047799824

`A165824(n+1)*A166586(n+1)`
-/

namespace A167295.P13206562216047799824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) * A166586 (n + 1)

end

end A167295.P13206562216047799824

noncomputable section

/-- A167295: Totally multiplicative sequence with a(p) = 3*(p-2) for prime p.

Offset 1, canonical program `A167295.P13206562216047799824`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165824, A166586, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167295 (n : ℕ) : ℤ :=
  A167295.P13206562216047799824.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165824, A166586, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167295.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167296.P13875685190120444450

`A165825(n+1)*A166586(n+1)`
-/

namespace A167296.P13875685190120444450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (n + 1) * A166586 (n + 1)

end

end A167296.P13875685190120444450

noncomputable section

/-- A167296: Totally multiplicative sequence with a(p) = 4*(p-2) for prime p.

Offset 1, canonical program `A167296.P13875685190120444450`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165825, A166586, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167296 (n : ℕ) : ℤ :=
  A167296.P13875685190120444450.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165825, A166586, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167296.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167297.P13532023426897284505

`A165826(n+1)*A166586(n+1)`
-/

namespace A167297.P13532023426897284505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165826 (n + 1) * A166586 (n + 1)

end

end A167297.P13532023426897284505

noncomputable section

/-- A167297: Totally multiplicative sequence with a(p) = 5*(p-2) for prime p.

Offset 1, canonical program `A167297.P13532023426897284505`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165826, A166586, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167297 (n : ℕ) : ℤ :=
  A167297.P13532023426897284505.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165826, A166586, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167297.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167298.P7720321459380714383

`A165827(n+1)*A166586(n+1)`
-/

namespace A167298.P7720321459380714383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165827 (n + 1) * A166586 (n + 1)

end

end A167298.P7720321459380714383

noncomputable section

/-- A167298: Totally multiplicative sequence with a(p) = 6*(p-2) for prime p.

Offset 1, canonical program `A167298.P7720321459380714383`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165827, A166586, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167298 (n : ℕ) : ℤ :=
  A167298.P7720321459380714383.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165827, A166586, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167298.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167299.P13735396666551431878

`A165828(n+1)*A166586(n+1)`
-/

namespace A167299.P13735396666551431878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165828 (n + 1) * A166586 (n + 1)

end

end A167299.P13735396666551431878

noncomputable section

/-- A167299: Totally multiplicative sequence with a(p) = 7*(p-2) for prime p.

Offset 1, canonical program `A167299.P13735396666551431878`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165828, A166586, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167299 (n : ℕ) : ℤ :=
  A167299.P13735396666551431878.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165828, A166586, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167299.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167300.P9508345572658895137

`A165829(n+1)*A166586(n+1)`
-/

namespace A167300.P9508345572658895137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165829 (n + 1) * A166586 (n + 1)

end

end A167300.P9508345572658895137

noncomputable section

/-- A167300: Totally multiplicative sequence with a(p) = 8*(p-2) for prime p.

Offset 1, canonical program `A167300.P9508345572658895137`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165829, A166586, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167300 (n : ℕ) : ℤ :=
  A167300.P9508345572658895137.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165829, A166586, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167300.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167301.P17273096670180522839

`A165830(n+1)*A166586(n+1)`
-/

namespace A167301.P17273096670180522839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165830 (n + 1) * A166586 (n + 1)

end

end A167301.P17273096670180522839

noncomputable section

/-- A167301: Totally multiplicative sequence with a(p) = 9*(p-2) for prime p.

Offset 1, canonical program `A167301.P17273096670180522839`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165830, A166586, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167301 (n : ℕ) : ℤ :=
  A167301.P17273096670180522839.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165830, A166586, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167301.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167302.P478153043190130814

`A165831(n+1)*A166586(n+1)`
-/

namespace A167302.P478153043190130814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165831 (n + 1) * A166586 (n + 1)

end

end A167302.P478153043190130814

noncomputable section

/-- A167302: Totally multiplicative sequence with a(p) = 10*(p-2) for prime p.

Offset 1, canonical program `A167302.P478153043190130814`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165831, A166586, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167302 (n : ℕ) : ℤ :=
  A167302.P478153043190130814.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165831, A166586, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167302.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167312.P10911823798209180809

`A061142(n+1)*A166589(n+1)`
-/

namespace A167312.P10911823798209180809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A166589 (n + 1)

end

end A167312.P10911823798209180809

noncomputable section

/-- A167312: Totally multiplicative sequence with a(p) = 2*(p-3) for prime p.

Offset 1, canonical program `A167312.P10911823798209180809`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061142, A166589, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167312 (n : ℕ) : ℤ :=
  A167312.P10911823798209180809.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061142, A166589, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167312.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167313.P15207471418219056829

`A165824(n+1)*A166589(n+1)`
-/

namespace A167313.P15207471418219056829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) * A166589 (n + 1)

end

end A167313.P15207471418219056829

noncomputable section

/-- A167313: Totally multiplicative sequence with a(p) = 3*(p-3) for prime p.

Offset 1, canonical program `A167313.P15207471418219056829`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165824, A166589, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167313 (n : ℕ) : ℤ :=
  A167313.P15207471418219056829.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165824, A166589, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167313.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167314.P3635504864313680750

`A165825(n+1)*A166589(n+1)`
-/

namespace A167314.P3635504864313680750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (n + 1) * A166589 (n + 1)

end

end A167314.P3635504864313680750

noncomputable section

/-- A167314: Totally multiplicative sequence with a(p) = 4*(p-3) for prime p.

Offset 1, canonical program `A167314.P3635504864313680750`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165825, A166589, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167314 (n : ℕ) : ℤ :=
  A167314.P3635504864313680750.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165825, A166589, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167314.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167315.P14894891535969345852

`A165826(n+1)*A166589(n+1)`
-/

namespace A167315.P14894891535969345852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165826 (n + 1) * A166589 (n + 1)

end

end A167315.P14894891535969345852

noncomputable section

/-- A167315: Totally multiplicative sequence with a(p) = 5*(p-3) for prime p.

Offset 1, canonical program `A167315.P14894891535969345852`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165826, A166589, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167315 (n : ℕ) : ℤ :=
  A167315.P14894891535969345852.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165826, A166589, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167315.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167316.P4064799571655654239

`A165827(n+1)*A166589(n+1)`
-/

namespace A167316.P4064799571655654239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165827 (n + 1) * A166589 (n + 1)

end

end A167316.P4064799571655654239

noncomputable section

/-- A167316: Totally multiplicative sequence with a(p) = 6*(p-3) for prime p.

Offset 1, canonical program `A167316.P4064799571655654239`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165827, A166589, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167316 (n : ℕ) : ℤ :=
  A167316.P4064799571655654239.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165827, A166589, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167316.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167317.P1896838416020808552

`A165828(n+1)*A166589(n+1)`
-/

namespace A167317.P1896838416020808552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165828 (n + 1) * A166589 (n + 1)

end

end A167317.P1896838416020808552

noncomputable section

/-- A167317: Totally multiplicative sequence with a(p) = 7*(p-3) for prime p.

Offset 1, canonical program `A167317.P1896838416020808552`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165828, A166589, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167317 (n : ℕ) : ℤ :=
  A167317.P1896838416020808552.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165828, A166589, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167317.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167318.P7293545725422339137

`A165829(n+1)*A166589(n+1)`
-/

namespace A167318.P7293545725422339137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165829 (n + 1) * A166589 (n + 1)

end

end A167318.P7293545725422339137

noncomputable section

/-- A167318: Totally multiplicative sequence with a(p) = 8*(p-3) for prime p.

Offset 1, canonical program `A167318.P7293545725422339137`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165829, A166589, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167318 (n : ℕ) : ℤ :=
  A167318.P7293545725422339137.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165829, A166589, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167318.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167319.P6886657443246084551

`A165830(n+1)*A166589(n+1)`
-/

namespace A167319.P6886657443246084551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165830 (n + 1) * A166589 (n + 1)

end

end A167319.P6886657443246084551

noncomputable section

/-- A167319: Totally multiplicative sequence with a(p) = 9*(p-3) for prime p.

Offset 1, canonical program `A167319.P6886657443246084551`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165830, A166589, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167319 (n : ℕ) : ℤ :=
  A167319.P6886657443246084551.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165830, A166589, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167319.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167320.P15726980127679535390

`A165831(n+1)*A166589(n+1)`
-/

namespace A167320.P15726980127679535390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165831 (n + 1) * A166589 (n + 1)

end

end A167320.P15726980127679535390

noncomputable section

/-- A167320: Totally multiplicative sequence with a(p) = 10*(p-3) for prime p.

Offset 1, canonical program `A167320.P15726980127679535390`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165831, A166589, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167320 (n : ℕ) : ℤ :=
  A167320.P15726980127679535390.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165831, A166589, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167320.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167330.P13311422161193416646

`A061142(n+1)*A166651(n+1)`
-/

namespace A167330.P13311422161193416646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A166651 (n + 1)

end

end A167330.P13311422161193416646

noncomputable section

/-- A167330: Totally multiplicative sequence with a(p) = 2*(2p-1) = 4p-2 for prime p.

Offset 1, canonical program `A167330.P13311422161193416646`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061142, A166651, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167330 (n : ℕ) : ℤ :=
  A167330.P13311422161193416646.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061142, A166651, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167330.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167334.P15740776329947131718

`A061142(n+1)*A166660(n+1)`
-/

namespace A167334.P15740776329947131718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A166660 (n + 1)

end

end A167334.P15740776329947131718

noncomputable section

/-- A167334: Totally multiplicative sequence with a(p) = 2*(2p+1) = 4p+2 for prime p.

Offset 1, canonical program `A167334.P15740776329947131718`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061142, A166660, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167334 (n : ℕ) : ℤ :=
  A167334.P15740776329947131718.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061142, A166660, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167334.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167339.P17538192624040358396

`(n+1)*A166586(n+1)`
-/

namespace A167339.P17538192624040358396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A166586 (n + 1)

end

end A167339.P17538192624040358396

noncomputable section

/-- A167339: Totally multiplicative sequence with a(p) = p*(p-2) = p^2-2p for prime p.

Offset 1, canonical program `A167339.P17538192624040358396`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166586, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167339 (n : ℕ) : ℤ :=
  A167339.P17538192624040358396.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166586, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167339.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167341.P9615713007832461623

`(n+1)*A166589(n+1)`
-/

namespace A167341.P9615713007832461623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A166589 (n + 1)

end

end A167341.P9615713007832461623

noncomputable section

/-- A167341: Totally multiplicative sequence with a(p) = p*(p-3) = p^2-3p for prime p.

Offset 1, canonical program `A167341.P9615713007832461623`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166589, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167341 (n : ℕ) : ℤ :=
  A167341.P9615713007832461623.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166589, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167341.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167345.P13116550520045673211

`A003958(n+1)*A166586(n+1)`
-/

namespace A167345.P13116550520045673211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) * A166586 (n + 1)

end

end A167345.P13116550520045673211

noncomputable section

/-- A167345: Totally multiplicative sequence with a(p) = (p-1)*(p-2) = p^2-3p+2 for prime p.

Offset 1, canonical program `A167345.P13116550520045673211`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A166586, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167345 (n : ℕ) : ℤ :=
  A167345.P13116550520045673211.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A166586, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167345.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167347.P12506259903497300645

`A003958(n+1)*A166589(n+1)`
-/

namespace A167347.P12506259903497300645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) * A166589 (n + 1)

end

end A167347.P12506259903497300645

noncomputable section

/-- A167347: Totally multiplicative sequence with a(p) = (p-1)*(p-3) = p^2-4p+3 for prime p.

Offset 1, canonical program `A167347.P12506259903497300645`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A166589, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167347 (n : ℕ) : ℤ :=
  A167347.P12506259903497300645.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A166589, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167347.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167354.P13081332751895378008

`A166586(n+1)²`
-/

namespace A167354.P13081332751895378008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166586 (n + 1) ^ 2

end

end A167354.P13081332751895378008

noncomputable section

/-- A167354: Totally multiplicative sequence with a(p) = (p-2)^2 = p^2-4p+4 for prime p.

Offset 1, canonical program `A167354.P13081332751895378008`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166586, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167354 (n : ℕ) : ℤ :=
  A167354.P13081332751895378008.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166586, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167354.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167356.P16659837918283053024

`A166586(n+1)*A166589(n+1)`
-/

namespace A167356.P16659837918283053024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166586 (n + 1) * A166589 (n + 1)

end

end A167356.P16659837918283053024

noncomputable section

/-- A167356: Totally multiplicative sequence with a(p) = (p-2)*(p-3) = p^2-5p+6 for prime p.

Offset 1, canonical program `A167356.P16659837918283053024`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166586, A166589, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167356 (n : ℕ) : ℤ :=
  A167356.P16659837918283053024.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166586, A166589, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167356.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167361.P8077212222090649816

`A166589(n+1)²`
-/

namespace A167361.P8077212222090649816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166589 (n + 1) ^ 2

end

end A167361.P8077212222090649816

noncomputable section

/-- A167361: Totally multiplicative sequence with a(p) = (p-3)^2 = p^2-6p+9 for prime p.

Offset 1, canonical program `A167361.P8077212222090649816`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166589, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167361 (n : ℕ) : ℤ :=
  A167361.P8077212222090649816.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166589, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167361.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A175455.P17277564749251597446

`A025529(n+1)*A003418(n+1)`
-/

namespace A175455.P17277564749251597446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025529 (n + 1) * A003418 (n + 1)

end

end A175455.P17277564749251597446

noncomputable section

/-- A175455: a(n) = H(n) * (lcm(1,2,...,n))^2, where H(n) = harmonic numbers (1/1 + 1/2 + ... + 1/n).

Offset 1, canonical program `A175455.P17277564749251597446`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025529, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175455 (n : ℕ) : ℤ :=
  A175455.P17277564749251597446.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025529, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175455.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A176289.P5972869027486302748

`A141056(n)-n%2`
-/

namespace A176289.P5972869027486302748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 n - ((n % 2 : ℕ) : ℤ)

end

end A176289.P5972869027486302748

noncomputable section

/-- A176289: Denominators of the rational sequence with e.g.f. (x/2)*(1+exp(-x))/(1-exp(-x)).

Offset 0, canonical program `A176289.P5972869027486302748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A176289 (n : ℕ) : ℤ :=
  A176289.P5972869027486302748.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A176289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176587.P7526550337897203140

`eq[floor(1/(n+1)), char[A078174(n+1)]]`
-/

namespace A176587.P7526550337897203140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (n + 1 : ℚ)⌋

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078174 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A176587.P7526550337897203140

noncomputable section

/-- A176587: Numbers such that arithmetic mean of distinct prime factors is not an integer.

Offset 1, canonical program `A176587.P7526550337897203140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4776 terms. -/
def A176587 (n : ℕ) : ℤ :=
  (A176587.P7526550337897203140.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4776 terms. -/
def A176587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176591.P1285427356219146765

`A159075(n)+A141056(n)`
-/

namespace A176591.P1285427356219146765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A141056 n

end

end A176591.P1285427356219146765

noncomputable section

/-- A176591: Bernoulli denominators A141056(n), with the exception a(1)=1.

Offset 0, canonical program `A176591.P1285427356219146765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176591 (n : ℕ) : ℤ :=
  A176591.P1285427356219146765.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179669.P2073455603419507119

`∩[A350372(n+1), A360902(n+1)]`
-/

namespace A179669.P2073455603419507119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179669.P2073455603419507119

noncomputable section

/-- A179669: Products of form p^4*q^2*r where p, q and r are three distinct primes.

Offset 1, canonical program `A179669.P2073455603419507119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1169 terms. -/
def A179669 (n : ℕ) : ℤ :=
  (A179669.P2073455603419507119.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1169 terms. -/
def A179669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179688.P398064880116552051

`∩[A175742(n+1), A350372(n+1)]`
-/

namespace A179688.P398064880116552051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179688.P398064880116552051

noncomputable section

/-- A179688: Numbers of the form p^3*q^3*r where p, q, and r are prime.

Offset 1, canonical program `A179688.P398064880116552051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 360 terms. -/
def A179688 (n : ℕ) : ℤ :=
  (A179688.P398064880116552051.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 360 terms. -/
def A179688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179690.P2467920889633160340

`∩[A350375(n+1), A375144(n+1)]`
-/

namespace A179690.P2467920889633160340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179690.P2467920889633160340

noncomputable section

/-- A179690: Numbers of the form p^2*q^2*r*s where p, q, r, and s are distinct primes.

Offset 1, canonical program `A179690.P2467920889633160340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4475 terms. -/
def A179690 (n : ℕ) : ℤ :=
  (A179690.P2467920889633160340.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4475 terms. -/
def A179690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179878.P1509397048520783937

`A179877(n+1)+1`
-/

namespace A179878.P1509397048520783937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179877 (n + 1) + 1

end

end A179878.P1509397048520783937

noncomputable section

/-- A179878: Numbers h such that h and h-1 have same antiharmonic mean of the numbers k < h such that gcd(k, h) = 1 and simultaneously this mean is an integer (see A179882).

Offset 1, canonical program `A179878.P1509397048520783937`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A179877, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179878 (n : ℕ) : ℤ :=
  A179878.P1509397048520783937.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A179877, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179878.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A182727.P2225108811263832768

`∑[A141285(n+1)]`
-/

namespace A182727.P2225108811263832768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182727.P2225108811263832768

noncomputable section

/-- A182727: Sum of largest parts of the modular table of partitions with n regions.

Offset 1, canonical program `A182727.P2225108811263832768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4000 terms. -/
def A182727 (n : ℕ) : ℤ :=
  A182727.P2225108811263832768.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4000 terms. -/
def A182727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191450.P11542416564399414876

`A254051(A038722(n+1))`
-/

namespace A191450.P11542416564399414876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254051 (A038722 (n + 1)).toNat

end

end A191450.P11542416564399414876

noncomputable section

/-- A191450: Dispersion of (3*n-1), read by antidiagonals.

Offset 1, canonical program `A191450.P11542416564399414876`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A254051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A191450 (n : ℕ) : ℤ :=
  A191450.P11542416564399414876.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A254051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A191450.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A191451.P4030698452655550704

`abs(A191450(n+1)-A068911(A198954(n)))`
-/

namespace A191451.P4030698452655550704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A191450 (n + 1) - A068911 (A198954 n).toNat|

end

end A191451.P4030698452655550704

noncomputable section

/-- A191451: Dispersion of (3*n-2), for n>=2, by antidiagonals.

Offset 1, canonical program `A191451.P4030698452655550704`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A191451 (n : ℕ) : ℤ :=
  A191451.P4030698452655550704.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A191451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195086.P16313270829479448307

`∪[A048109(n+1), A375144(n+1)]`
-/

namespace A195086.P16313270829479448307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A195086.P16313270829479448307

noncomputable section

/-- A195086: Numbers k such that (number of prime factors of k counted with multiplicity) less (number of distinct prime factors of k) = 2.

Offset 1, canonical program `A195086.P16313270829479448307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A195086 (n : ℕ) : ℤ :=
  (A195086.P16313270829479448307.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A195086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209623.P6270556564097260261

`p?[A379239(n+1)]`
-/

namespace A209623.P6270556564097260261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A209623.P6270556564097260261

noncomputable section

/-- A209623: Primes separated from their adjacent next primes by a prime number of successive composites.

Offset 1, canonical program `A209623.P6270556564097260261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6756 terms. -/
def A209623 (n : ℕ) : ℤ :=
  A209623.P6270556564097260261.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6756 terms. -/
def A209623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214310.P15213884711492918839

`C(n+3, 3)*A056343(n+3)`
-/

namespace A214310.P15213884711492918839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℤ) * A056343 (n + 3)

end

end A214310.P15213884711492918839

noncomputable section

/-- A214310: a(n) is the number of all three-color bracelets (necklaces with turning over allowed) with n beads and the three colors are from a repertoire of n distinct colors, for n >= 3.

Offset 3, canonical program `A214310.P15213884711492918839`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056343, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214310 (n : ℕ) : ℤ :=
  A214310.P15213884711492918839.a (n - 3)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056343, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214310.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A216090.P18080035191705207382

`record[gcd(n+2, A141056(n))]`
-/

namespace A216090.P18080035191705207382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A141056 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216090.P18080035191705207382

noncomputable section

/-- A216090: Numbers m such that k^(m-1) == k (mod m) for every k = 1, 2, ..., m-1.

Offset 1, canonical program `A216090.P18080035191705207382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 688 terms. -/
def A216090 (n : ℕ) : ℤ :=
  (A216090.P18080035191705207382.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 688 terms. -/
def A216090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225481.P12092037040883699574

`lcm(∏{p}[n+1, -#], A141056(n))`
-/

namespace A225481.P12092037040883699574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ))) (A141056 n)

end

end A225481.P12092037040883699574

noncomputable section

/-- A225481: a(n) = product{ p primes <= n+1 such that p divides n+1 or p-1 divides n }.

Offset 0, canonical program `A225481.P12092037040883699574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A225481 (n : ℕ) : ℤ :=
  (A225481.P12092037040883699574.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A225481.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226040.P7975070697186839917

`A225481(n)/A141056(n)`
-/

namespace A226040.P7975070697186839917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225481 n : ℚ) / (A141056 n : ℚ)

end

end A226040.P7975070697186839917

noncomputable section

/-- A226040: a(n) = product{ p prime such that p divides n + 1 and p - 1 does not divide n }.

Offset 0, canonical program `A226040.P7975070697186839917`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141056, A225481, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A226040 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A226040.P7975070697186839917.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141056, A225481, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A226040.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A230115.P13912366860125270296

`∩[A074775(n+1), A162318(n+1)]`
-/

namespace A230115.P13912366860125270296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230115.P13912366860125270296

noncomputable section

/-- A230115: Numbers n such that tau(n+1) - tau(n) = 2; where tau(n) = the number of divisors of n (A000005).

Offset 1, canonical program `A230115.P13912366860125270296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1054 terms. -/
def A230115 (n : ℕ) : ℤ :=
  (A230115.P13912366860125270296.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1054 terms. -/
def A230115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234104.P3107958626754215840

`p?[A234102(n+1)]`
-/

namespace A234104.P3107958626754215840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234104.P3107958626754215840

noncomputable section

/-- A234104: Primes of the form (p*q*r + 1)/2, where p, q, r are distinct primes.

Offset 1, canonical program `A234104.P3107958626754215840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1191 terms. -/
def A234104 (n : ℕ) : ℤ :=
  A234104.P3107958626754215840.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1191 terms. -/
def A234104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244967.P9468410199705462311

`A141285(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A244967.P9468410199705462311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141285 (n + 1) - 1

end

end A244967.P9468410199705462311

noncomputable section

/-- A244967: A141285(n) - 1.

Offset 1, canonical program `A244967.P9468410199705462311`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141285, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244967 (n : ℕ) : ℤ :=
  A244967.P9468410199705462311.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141285, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244967.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246281.P3833940699432057348

`lt[A349573(n+1), 1]+1`
-/

namespace A246281.P3833940699432057348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349573 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A246281.P3833940699432057348

noncomputable section

/-- A246281: Numbers k for which A003961(k) < 2*k; Numbers n such that if n = product_{k >= 1} (p_k)^(c_k), then product_{k >= 1} (p_{k+1})^(c_k) < 2*n, where p_k indicates the k-th prime, A000040(k).

Offset 1, canonical program `A246281.P3833940699432057348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9281 terms. -/
def A246281 (n : ℕ) : ℤ :=
  (A246281.P3833940699432057348.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9281 terms. -/
def A246281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246282.P13261184401000594775

`lt[0, A349573(n+1)]+1`
-/

namespace A246282.P13261184401000594775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349573 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A246282.P13261184401000594775

noncomputable section

/-- A246282: Numbers k for which A003961(k) > 2*k; numbers n such that if n = Product_{k >= 1} (p_k)^(c_k), then Product_{k >= 1} (p_{k+1})^(c_k) > 2*n, where p_k indicates the k-th prime, A000040(k).

Offset 1, canonical program `A246282.P13261184401000594775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246282 (n : ℕ) : ℤ :=
  (A246282.P13261184401000594775.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254055.P3508509321847597637

`ceil(A254101(n+1)/2)`
-/

namespace A254055.P3508509321847597637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A254101 (n + 1) : ℚ) / 2⌉

end

end A254055.P3508509321847597637

noncomputable section

/-- A254055: Square array: A(row,col) = A003602(A254051(row,col)), read by antidiagonals A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), ...

Offset 1, canonical program `A254055.P3508509321847597637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254055 (n : ℕ) : ℤ :=
  A254055.P3508509321847597637.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257992.P14262373692572386717

`A001222(n+1)-A257991(n+1)`
-/

namespace A257992.P14262373692572386717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A257991 (n + 1)

end

end A257992.P14262373692572386717

noncomputable section

/-- A257992: Number of even parts in the partition having Heinz number n.

Offset 1, canonical program `A257992.P14262373692572386717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257992 (n : ℕ) : ℤ :=
  A257992.P14262373692572386717.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265390.P4023659624816682128

`∏{e}[n+1, A025529(#+1)]`
-/

namespace A265390.P4023659624816682128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A025529 (Nat.factorization (f1 n) p + 1)

end

end A265390.P4023659624816682128

noncomputable section

/-- A265390: a(n) = lcm_{d|n} tau(d) * Sum_{d|n} 1/tau(d), where tau(d) represents the number of divisors of d (A000005(d)).

Offset 1, canonical program `A265390.P4023659624816682128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265390 (n : ℕ) : ℤ :=
  A265390.P4023659624816682128.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266226.P13876817309741798291

`floor(A265390(n+1)/A253139(n+1))`
-/

namespace A266226.P13876817309741798291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A265390 (n + 1) : ℚ) / (A253139 (n + 1) : ℚ)⌋

end

end A266226.P13876817309741798291

noncomputable section

/-- A266226: a(n) = floor(Sum_{d|n} 1 / tau(d)).

Offset 1, canonical program `A266226.P13876817309741798291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266226 (n : ℕ) : ℤ :=
  A266226.P13876817309741798291.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266911.P15439966265522219643

`∏[A141056(2*n)/A000217(2*n+1)]`
-/

namespace A266911.P15439966265522219643
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141056 (2 * n) : ℚ) / (A000217 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A266911.P15439966265522219643

noncomputable section

/-- A266911: GCD of A002443(n) and A002444(n), numerator and denominator in Feinler's formula for the Bernoulli number B_{2n}.

Offset 0, canonical program `A266911.P15439966265522219643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 653 terms. -/
def A266911 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A266911.P15439966265522219643.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 653 terms. -/
def A266911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274242.P14150804800791898491

`eq[A064989(n+1), A166586(n+1)]+1`
-/

namespace A274242.P14150804800791898491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166586 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A274242.P14150804800791898491

noncomputable section

/-- A274242: Numbers whose factorization contains only the greater members of twin prime pairs.

Offset 1, canonical program `A274242.P14150804800791898491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 524 terms. -/
def A274242 (n : ℕ) : ℤ :=
  (A274242.P14150804800791898491.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 524 terms. -/
def A274242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277087.P5148910457035852056

`ceil(A141056(2*n)/3)`
-/

namespace A277087.P5148910457035852056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A141056 (2 * n) : ℚ) / 3⌉

end

end A277087.P5148910457035852056

noncomputable section

/-- A277087: a(0) = 1, a(n) = (denominator of the Bernoulli number B_{2n})/3, for n>=1.

Offset 0, canonical program `A277087.P5148910457035852056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A277087 (n : ℕ) : ℤ :=
  A277087.P5148910457035852056.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A277087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280827.P9212601761894822098

`A076649(n+1)-A055642(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A280827.P9212601761894822098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076649 (n + 1) - A055642 (n + 1)

end

end A280827.P9212601761894822098

noncomputable section

/-- A280827: a(n) = A076649(n) - A055642(n).

Offset 1, canonical program `A280827.P9212601761894822098`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, A076649, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A280827 (n : ℕ) : ℤ :=
  A280827.P9212601761894822098.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, A076649, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A280827.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A280892.P10778792925638718684

`filter[A376164(n+1), A379971(#)]`
-/

namespace A280892.P10778792925638718684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379971 (f1 j).toNat = 1) n)

end

end A280892.P10778792925638718684

noncomputable section

/-- A280892: Squareful numbers with both neighbors squarefree.

Offset 1, canonical program `A280892.P10778792925638718684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6909 terms. -/
def A280892 (n : ℕ) : ℤ :=
  A280892.P10778792925638718684.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6909 terms. -/
def A280892.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300063.P18376216019794990187

`eq[1, A257991(n+1)%2]+1`
-/

namespace A300063.P18376216019794990187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257991 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A300063.P18376216019794990187

noncomputable section

/-- A300063: Heinz numbers of integer partitions of odd numbers.

Offset 1, canonical program `A300063.P18376216019794990187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9993 terms. -/
def A300063 (n : ℕ) : ℤ :=
  (A300063.P18376216019794990187.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9993 terms. -/
def A300063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305542.P4052484984925121273

`A056343(n+1)-A056489(n+1)`
-/

namespace A305542.P4052484984925121273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056343 (n + 1) - A056489 (n + 1)

end

end A305542.P4052484984925121273

noncomputable section

/-- A305542: Number of chiral pairs of color loops of length n with exactly 3 different colors.

Offset 1, canonical program `A305542.P4052484984925121273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A305542 (n : ℕ) : ℤ :=
  A305542.P4052484984925121273.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A305542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307743.P12638932795451399698

`∑[A307742(n+1)]`
-/

namespace A307743.P12638932795451399698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307743.P12638932795451399698

noncomputable section

/-- A307743: a(n) = Sum_{k=1..n} A307742(k).

Offset 1, canonical program `A307743.P12638932795451399698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307743 (n : ℕ) : ℤ :=
  A307743.P12638932795451399698.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308819.P18189255110465373061

`a(n-1)*A100994(n)` with `a(0)=1`
-/

namespace A308819.P18189255110465373061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A100994 n

end

end A308819.P18189255110465373061

noncomputable section

/-- A308819: Product of prime powers <= n.

Offset 0, canonical program `A308819.P18189255110465373061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A308819 (n : ℕ) : ℤ :=
  A308819.P18189255110465373061.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A308819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308944.P15802844504427371943

`A127553(n+1)/(n+1)!`
-/

namespace A308944.P15802844504427371943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127553 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A308944.P15802844504427371943

noncomputable section

/-- A308944: a(n) = Product_{k=1..n} lcm(n,k) / (k * gcd(n,k)).

Offset 1, canonical program `A308944.P15802844504427371943`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127553, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308944 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A308944.P15802844504427371943.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127553, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308944.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A310374.P11349914132477843547

`(A310378(n)+A310367(n))/2`
-/

namespace A310374.P11349914132477843547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310378 n + A310367 n : ℚ) / 2

end

end A310374.P11349914132477843547

noncomputable section

/-- A310374: Coordination sequence Gal.6.245.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310374.P11349914132477843547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2445 terms. -/
def A310374 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A310374.P11349914132477843547.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2445 terms. -/
def A310374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312891.P482666226062443179

`(A310367(n)+A008574(n))/2`
-/

namespace A312891.P482666226062443179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310367 n + A008574 n : ℚ) / 2

end

end A312891.P482666226062443179

noncomputable section

/-- A312891: Coordination sequence Gal.6.216.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312891.P482666226062443179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2562 terms. -/
def A312891 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A312891.P482666226062443179.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2562 terms. -/
def A312891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314025.P13685615418460974247

`2*n+A004396(A310367(n))`
-/

namespace A314025.P13685615418460974247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004396 (A310367 n).toNat

end

end A314025.P13685615418460974247

noncomputable section

/-- A314025: Coordination sequence Gal.6.250.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314025.P13685615418460974247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2292 terms. -/
def A314025 (n : ℕ) : ℤ :=
  A314025.P13685615418460974247.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2292 terms. -/
def A314025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314078.P129206603809902003

`2*A314057(n)-A314025(n)`
-/

namespace A314078.P129206603809902003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314057 n - A314025 n

end

end A314078.P129206603809902003

noncomputable section

/-- A314078: Coordination sequence Gal.6.658.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314078.P129206603809902003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2203 terms. -/
def A314078 (n : ℕ) : ℤ :=
  A314078.P129206603809902003.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2203 terms. -/
def A314078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314086.P8308006086047164656

`A310367(n)+A004525(A315725(n)-A310367(n))`
-/

namespace A314086.P8308006086047164656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310367 n + A004525 (A315725 n - A310367 n).toNat

end

end A314086.P8308006086047164656

noncomputable section

/-- A314086: Coordination sequence Gal.6.232.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314086.P8308006086047164656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2340 terms. -/
def A314086 (n : ℕ) : ℤ :=
  A314086.P8308006086047164656.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2340 terms. -/
def A314086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314106.P7807750276630759076

`A047486(A312891(n)+1-n)`
-/

namespace A314106.P7807750276630759076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (A312891 n + (1 - (n : ℤ))).toNat

end

end A314106.P7807750276630759076

noncomputable section

/-- A314106: Coordination sequence Gal.6.199.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314106.P7807750276630759076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2330 terms. -/
def A314106 (n : ℕ) : ℤ :=
  A314106.P7807750276630759076.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2330 terms. -/
def A314106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314186.P10880923475952212698

`A314106(n)+Δ[A011864(n)]`
-/

namespace A314186.P10880923475952212698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314106 n + (f1 (n + 1) - f1 n)

end

end A314186.P10880923475952212698

noncomputable section

/-- A314186: Coordination sequence Gal.6.330.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314186.P10880923475952212698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2320 terms. -/
def A314186 (n : ℕ) : ℤ :=
  A314186.P10880923475952212698.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2320 terms. -/
def A314186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314765.P9746236482672661847

`abs(A008592(n)-A314186(n))`
-/

namespace A314765.P9746236482672661847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314186 n|

end

end A314765.P9746236482672661847

noncomputable section

/-- A314765: Coordination sequence Gal.6.194.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314765.P9746236482672661847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2320 terms. -/
def A314765 (n : ℕ) : ℤ :=
  A314765.P9746236482672661847.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2320 terms. -/
def A314765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314915.P8542026392828308054

`A314765(n)+Δ[A011864(n)]`
-/

namespace A314915.P8542026392828308054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314765 n + (f1 (n + 1) - f1 n)

end

end A314915.P8542026392828308054

noncomputable section

/-- A314915: Coordination sequence Gal.6.248.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314915.P8542026392828308054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2358 terms. -/
def A314915 (n : ℕ) : ℤ :=
  A314915.P8542026392828308054.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2358 terms. -/
def A314915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315062.P8994265039834496307

`abs(A008592(n)-A314025(n))`
-/

namespace A315062.P8994265039834496307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314025 n|

end

end A315062.P8994265039834496307

noncomputable section

/-- A315062: Coordination sequence Gal.6.324.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315062.P8994265039834496307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2325 terms. -/
def A315062 (n : ℕ) : ℤ :=
  A315062.P8994265039834496307.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2325 terms. -/
def A315062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315345.P6951023815696693816

`abs(A008592(n)-A310367(n))`
-/

namespace A315345.P6951023815696693816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310367 n|

end

end A315345.P6951023815696693816

noncomputable section

/-- A315345: Coordination sequence Gal.6.641.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315345.P6951023815696693816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2232 terms. -/
def A315345 (n : ℕ) : ℤ :=
  A315345.P6951023815696693816.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2232 terms. -/
def A315345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315516.P12141593539764391929

`A008458(n)+A312891(n)-A310404(n)`
-/

namespace A315516.P12141593539764391929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A312891 n - A310404 n)

end

end A315516.P12141593539764391929

noncomputable section

/-- A315516: Coordination sequence Gal.6.326.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315516.P12141593539764391929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. -/
def A315516 (n : ℕ) : ℤ :=
  A315516.P12141593539764391929.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. -/
def A315516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315548.P2689930168977784721

`abs(10*n-A312891(n))`
-/

namespace A315548.P2689930168977784721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A312891 n|

end

end A315548.P2689930168977784721

noncomputable section

/-- A315548: Coordination sequence Gal.6.627.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315548.P2689930168977784721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2196 terms. -/
def A315548 (n : ℕ) : ℤ :=
  A315548.P2689930168977784721.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2196 terms. -/
def A315548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318510.P6431562738860432705

`A318509(A003961(n+1))`
-/

namespace A318510.P6431562738860432705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318509 (A003961 (n + 1)).toNat

end

end A318510.P6431562738860432705

noncomputable section

/-- A318510: Completely multiplicative with a(prime(k)) = A002487(prime(k+1)).

Offset 1, canonical program `A318510.P6431562738860432705`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A318509, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318510 (n : ℕ) : ℤ :=
  A318510.P6431562738860432705.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A318509, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318510.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319687.P11150699516326577001

`A318509(n+1)-A002487(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319687.P11150699516326577001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318509 (n + 1) - A002487 (n + 1)

end

end A319687.P11150699516326577001

noncomputable section

/-- A319687: a(n) = A318509(n) - A002487(n).

Offset 1, canonical program `A319687.P11150699516326577001`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318509, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319687 (n : ℕ) : ℤ :=
  A319687.P11150699516326577001.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318509, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319687.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A320628.P4089143697387148501

`eq[0, A257994(n+1)]+1`
-/

namespace A320628.P4089143697387148501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A320628.P4089143697387148501

noncomputable section

/-- A320628: Products of primes of nonprime index.

Offset 1, canonical program `A320628.P4089143697387148501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6921 terms. -/
def A320628 (n : ℕ) : ℤ :=
  (A320628.P4089143697387148501.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6921 terms. -/
def A320628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320629.P3731624852528716769

`record[A000265(A320628(n+1))]`
-/

namespace A320629.P3731624852528716769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A320628 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320629.P3731624852528716769

noncomputable section

/-- A320629: Products of odd primes of nonprime index.

Offset 1, canonical program `A320629.P3731624852528716769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4976 terms. -/
def A320629 (n : ℕ) : ℤ :=
  A320629.P3731624852528716769.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4976 terms. -/
def A320629.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320633.P2840693626555454014

`filter[A320629(n+1), A066247(#)]`
-/

namespace A320633.P2840693626555454014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A320633.P2840693626555454014

noncomputable section

/-- A320633: Composite numbers whose prime indices are also composite.

Offset 1, canonical program `A320633.P2840693626555454014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A320633 (n : ℕ) : ℤ :=
  A320633.P2840693626555454014.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A320633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321753.P16554838924399655051

`(-1)^A257992(n+1)`
-/

namespace A321753.P16554838924399655051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A257992 (n + 1) : ℤ)

end

end A321753.P16554838924399655051

noncomputable section

/-- A321753: Sum of coefficients of elementary symmetric functions in the power sum symmetric function indexed by the integer partition with Heinz number n.

Offset 1, canonical program `A321753.P16554838924399655051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321753 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A321753.P16554838924399655051.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322014.P15539366274804991200

`eq[0, A257992(n+1)%2]+1`
-/

namespace A322014.P15539366274804991200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257992 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A322014.P15539366274804991200

noncomputable section

/-- A322014: Heinz numbers of integer partitions with an even number of even parts.

Offset 1, canonical program `A322014.P15539366274804991200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322014 (n : ℕ) : ℤ :=
  (A322014.P15539366274804991200.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322702.P18111369324308497529

`∏{d}[n+1, A089026(A028310(#-1))]`
-/

namespace A322702.P18111369324308497529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A089026 (A028310 (d - 1)).toNat

end

end A322702.P18111369324308497529

noncomputable section

/-- A322702: a(n) is the product of primes p such that p+1 divides n.

Offset 1, canonical program `A322702.P18111369324308497529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322702 (n : ℕ) : ℤ :=
  A322702.P18111369324308497529.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322702.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324290.P16051344129388341371

`A004530(A226040(n))`
-/

namespace A324290.P16051344129388341371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004530 (A226040 n).toNat

end

end A324290.P16051344129388341371

noncomputable section

/-- A324290: a(n) = 1 if for every prime divisor p of n, p-1 divides n-1, 0 otherwise; characteristic function of A087441.

Offset 1, canonical program `A324290.P16051344129388341371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324290 (n : ℕ) : ℤ :=
  A324290.P16051344129388341371.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326660.P15065931834303715620

`A056288(n+1)-A056349(n+1)`
-/

namespace A326660.P15065931834303715620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056288 (n + 1) - A056349 (n + 1)

end

end A326660.P15065931834303715620

noncomputable section

/-- A326660: Number of n-bead asymmetric bracelets with exactly 3 different colored beads.

Offset 1, canonical program `A326660.P15065931834303715620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A326660 (n : ℕ) : ℤ :=
  A326660.P15065931834303715620.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A326660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330417.P10781931345175970852

`abs(A330415(n+1))*A321753(n+1)`
-/

namespace A330417.P10781931345175970852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A330415 (n + 1)| * A321753 (n + 1)

end

end A330417.P10781931345175970852

noncomputable section

/-- A330417: Coefficient of e(y) in Sum_{k > 0, i > 0} x_i^k = p(1) + p(2) + p(3) + ..., where e is the basis of elementary symmetric functions, p is the basis of power-sum symmetric functions, and y is the integer partition with Heinz number n.

Offset 1, canonical program `A330417.P10781931345175970852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330417 (n : ℕ) : ℤ :=
  A330417.P10781931345175970852.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330417.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331386.P7793639357924088570

`comp[A320628(n+1)-1]+1`
-/

namespace A331386.P7793639357924088570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320628 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A331386.P7793639357924088570

noncomputable section

/-- A331386: Numbers with at least one prime prime index.

Offset 1, canonical program `A331386.P7793639357924088570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331386 (n : ℕ) : ℤ :=
  (A331386.P7793639357924088570.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336697.P17251233940152722115

`A337337(A064216(n+1))`
-/

namespace A336697.P17251233940152722115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337337 (A064216 (n + 1)).toNat

end

end A336697.P17251233940152722115

noncomputable section

/-- A336697: a(n) = gcd((s+1)/2, 1+sigma(s)), where s is the n-th odd square, (2n-1)^2.

Offset 1, canonical program `A336697.P17251233940152722115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336697 (n : ℕ) : ℤ :=
  A336697.P17251233940152722115.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337345.P1594935461271935527

`A378662(n+1)+A080224(n+1)`
-/

namespace A337345.P1594935461271935527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378662 (n + 1) + A080224 (n + 1)

end

end A337345.P1594935461271935527

noncomputable section

/-- A337345: Number of divisors d of n for which A003961(d) > 2*d, where A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A337345.P1594935461271935527`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080224, A378662, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337345 (n : ℕ) : ℤ :=
  A337345.P1594935461271935527.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080224, A378662, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337345.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337346.P2412165337189814597

`A337345(n+1)-A252742(n+1)`
-/

namespace A337346.P2412165337189814597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (n + 1) - A252742 (n + 1)

end

end A337346.P2412165337189814597

noncomputable section

/-- A337346: Number of proper divisors d of n for which A003961(d) > 2*d.

Offset 1, canonical program `A337346.P2412165337189814597`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252742, A337345, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337346 (n : ℕ) : ℤ :=
  A337346.P2412165337189814597.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252742, A337345, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337346.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337372.P8743427394411133788

`eq[1, A337345(n+1)]+1`
-/

namespace A337372.P8743427394411133788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A337372.P8743427394411133788

noncomputable section

/-- A337372: Primitively primeshift-abundant numbers: Numbers that are included in A246282 (k with A003961(k) > 2k), but none of whose proper divisors are.

Offset 1, canonical program `A337372.P8743427394411133788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 580 terms. -/
def A337372 (n : ℕ) : ℤ :=
  (A337372.P8743427394411133788.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 580 terms. -/
def A337372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337374.P5490490073902702338

`lt[n, A349573(abs(1-n)+1)]`
-/

namespace A337374.P5490490073902702338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349573 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A337374.P5490490073902702338

noncomputable section

/-- A337374: Numbers k for which A003961(k) > 4*k.

Offset 1, canonical program `A337374.P5490490073902702338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4538 terms. -/
def A337374 (n : ℕ) : ℤ :=
  (A337374.P5490490073902702338.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4538 terms. -/
def A337374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340377.P8993606752064362235

`record[(n+1)^(1-A340379(n+1))]`
-/

namespace A340377.P8993606752064362235
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (1 - A340379 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340377.P8993606752064362235

noncomputable section

/-- A340377: Numbers k such that there are no 2-digits in the ternary expansion of A048673(k).

Offset 1, canonical program `A340377.P8993606752064362235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1146 terms. -/
def A340377 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A340377.P8993606752064362235.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1146 terms. -/
def A340377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341609.P17617703652232455812

`A063524(A337345(n+1))`
-/

namespace A341609.P17617703652232455812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A337345 (n + 1)).toNat

end

end A341609.P17617703652232455812

noncomputable section

/-- A341609: Characteristic function of A337372: a(n) = 1 if A337345(n) = 1, otherwise 0.

Offset 1, canonical program `A341609.P17617703652232455812`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341609 (n : ℕ) : ℤ :=
  A341609.P17617703652232455812.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341610.P5143080572522452525

`lt[1, A337345(n+1)]+1`
-/

namespace A341610.P5143080572522452525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A341610.P5143080572522452525

noncomputable section

/-- A341610: Nonprimitive terms of A246282: numbers k that have more than one divisor d|k such that A003961(d) > 2*d.

Offset 1, canonical program `A341610.P5143080572522452525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341610 (n : ℕ) : ℤ :=
  (A341610.P5143080572522452525.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341611.P6987460228206011471

`lt[A341609(n+1), A341612(n+1)]+1`
-/

namespace A341611.P6987460228206011471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341612 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A341611.P6987460228206011471

noncomputable section

/-- A341611: Nonabundant numbers that are not primitive terms of A246282.

Offset 1, canonical program `A341611.P6987460228206011471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341611 (n : ℕ) : ℤ :=
  (A341611.P6987460228206011471.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342256.P11382523242793014882

`lt[0, A253236(n+1)]+1`
-/

namespace A342256.P11382523242793014882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253236 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A342256.P11382523242793014882

noncomputable section

/-- A342256: Numbers k such that gcd(k, Phi_k(a)) > 1 for some a, where Phi_k is the k-th cyclotomic polynomial.

Offset 1, canonical program `A342256.P11382523242793014882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3025 terms. -/
def A342256 (n : ℕ) : ℤ :=
  (A342256.P11382523242793014882.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3025 terms. -/
def A342256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342257.P6467292194329378218

`∏{d}[A253236(n+1), #]`
-/

namespace A342257.P6467292194329378218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253236 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A342257.P6467292194329378218

noncomputable section

/-- A342257: Period of the sequence {gcd(n, Phi_n(a)): a in Z}, where Phi_n is the n-th cyclotomic polynomial.

Offset 1, canonical program `A342257.P6467292194329378218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342257 (n : ℕ) : ℤ :=
  (A342257.P6467292194329378218.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344616.P9154132711565358048

`A257991(A122111(n+1))`
-/

namespace A344616.P9154132711565358048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (A122111 (n + 1)).toNat

end

end A344616.P9154132711565358048

noncomputable section

/-- A344616: Alternating sum of the integer partition with Heinz number n.

Offset 1, canonical program `A344616.P9154132711565358048`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, A257991, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344616 (n : ℕ) : ℤ :=
  A344616.P9154132711565358048.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, A257991, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344616.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345068.P8859983234347188221

`∑{d}[n+1, A100994(#)]-1`
-/

namespace A345068.P8859983234347188221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A100994 d - 1

end

end A345068.P8859983234347188221

noncomputable section

/-- A345068: a(n) = Sum_{d|n, d>1} d^floor(1/omega(d)).

Offset 1, canonical program `A345068.P8859983234347188221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345068 (n : ℕ) : ℤ :=
  A345068.P8859983234347188221.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345374.P2600913004741557822

`A257991(∏{p}[n+1, lcm(n+1, #²)/(n+1)])`
-/

namespace A345374.P2600913004741557822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (Nat.lcm (n + 1) (p ^ 2) : ℚ) / (n + 1 : ℚ))).toNat

end

end A345374.P2600913004741557822

noncomputable section

/-- A345374: Number of unitary prime divisors of n whose prime index is odd.

Offset 1, canonical program `A345374.P2600913004741557822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345374 (n : ℕ) : ℤ :=
  A345374.P2600913004741557822.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345375.P6058782107004537506

`A056169(n+1)-A345374(n+1)`
-/

namespace A345375.P6058782107004537506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1) - A345374 (n + 1)

end

end A345375.P6058782107004537506

noncomputable section

/-- A345375: Number of unitary prime divisors of n whose prime index is even.

Offset 1, canonical program `A345375.P6058782107004537506`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056169, A345374, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345375 (n : ℕ) : ℤ :=
  A345375.P6058782107004537506.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056169, A345374, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345375.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A346239.P15670279633828823301

`∑{d}[n+1, A008683(#)*A341512((n+1)/#)]`
-/

namespace A346239.P15670279633828823301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A341512 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346239.P15670279633828823301

noncomputable section

/-- A346239: Möbius transform of A341512, sigma(n)*A003961(n) - n*sigma(A003961(n)).

Offset 1, canonical program `A346239.P15670279633828823301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346239 (n : ℕ) : ℤ :=
  A346239.P15670279633828823301.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346240.P13978465434129994439

`A341512(n+1)-A346239(n+1)`
-/

namespace A346240.P13978465434129994439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341512 (n + 1) - A346239 (n + 1)

end

end A346240.P13978465434129994439

noncomputable section

/-- A346240: Difference between A341512 and its Möbius transform.

Offset 1, canonical program `A346240.P13978465434129994439`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341512, A346239, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A346240 (n : ℕ) : ℤ :=
  A346240.P13978465434129994439.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341512, A346239, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A346240.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A346698.P6991962575422240649

`A025480(A056239(n+1)+A008836(n+1)*A344616(n+1))`
-/

namespace A346698.P6991962575422240649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A056239 (n + 1) + A008836 (n + 1) * A344616 (n + 1)).toNat

end

end A346698.P6991962575422240649

noncomputable section

/-- A346698: Sum of the even-indexed parts (even bisection) of the multiset of prime indices of n.

Offset 1, canonical program `A346698.P6991962575422240649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346698 (n : ℕ) : ℤ :=
  A346698.P6991962575422240649.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346699.P1782263105001668285

`A344616(n+1)+A346700(n+1)`
-/

namespace A346699.P1782263105001668285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (n + 1) + A346700 (n + 1)

end

end A346699.P1782263105001668285

noncomputable section

/-- A346699: Sum of the odd bisection (odd-indexed parts) of the integer partition with Heinz number n.

Offset 1, canonical program `A346699.P1782263105001668285`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344616, A346700, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A346699 (n : ℕ) : ℤ :=
  A346699.P1782263105001668285.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344616, A346700, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A346699.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347124.P9735022635029064804

`A347125(n+1)-A346239(n+1)`
-/

namespace A347124.P9735022635029064804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347125 (n + 1) - A346239 (n + 1)

end

end A347124.P9735022635029064804

noncomputable section

/-- A347124: Möbius transform of A341528, n * sigma(A003961(n)).

Offset 1, canonical program `A347124.P9735022635029064804`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A346239, A347125, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347124 (n : ℕ) : ℤ :=
  A347124.P9735022635029064804.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A346239, A347125, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347124.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347137.P13826285688787841149

`∑{d}[n+1, A008683(#)*A347136((n+1)/#)]`
-/

namespace A347137.P13826285688787841149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A347136 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347137.P13826285688787841149

noncomputable section

/-- A347137: a(n) = Sum_{d|n} phi(d) * A003961(n/d), where A003961 shifts the prime factorization of its argument one step towards larger primes, and phi is Euler totient function.

Offset 1, canonical program `A347137.P13826285688787841149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347137 (n : ℕ) : ℤ :=
  A347137.P13826285688787841149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347236.P7854495597392681081

`∑{d}[n+1, A298473(#)*A347136((n+1)/#)]`
-/

namespace A347236.P7854495597392681081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A298473 d * A347136 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347236.P7854495597392681081

noncomputable section

/-- A347236: a(n) = Sum_{d|n} A061019(d) * A003961(n/d), where A061019 negates the primes in the prime factorization, while A003961 shifts the factorization one step towards larger primes.

Offset 1, canonical program `A347236.P7854495597392681081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347236 (n : ℕ) : ℤ :=
  A347236.P7854495597392681081.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347237.P399102674569037639

`∑{d}[n+1, A008683(#)*A347236((n+1)/#)]`
-/

namespace A347237.P399102674569037639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A347236 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347237.P399102674569037639

noncomputable section

/-- A347237: Möbius transform of A347236.

Offset 1, canonical program `A347237.P399102674569037639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347237 (n : ℕ) : ℤ :=
  A347237.P399102674569037639.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347239.P8303490879322250829

`A347236(n+1)+A347238(n+1)`
-/

namespace A347239.P8303490879322250829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347236 (n + 1) + A347238 (n + 1)

end

end A347239.P8303490879322250829

noncomputable section

/-- A347239: Sum of A347236 and its Dirichlet inverse.

Offset 1, canonical program `A347239.P8303490879322250829`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347236, A347238, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347239 (n : ℕ) : ℤ :=
  A347239.P8303490879322250829.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347236, A347238, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347239.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347965.P11028472510360414317

`∑{d}[n+1, A347136(#)*A349394((n+1)/#)]`
-/

namespace A347965.P11028472510360414317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347136 d * A349394 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347965.P11028472510360414317

noncomputable section

/-- A347965: Dirichlet convolution of A003415 (arithmetic derivative) with A003961 (prime shift towards larger primes).

Offset 1, canonical program `A347965.P11028472510360414317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347965 (n : ℕ) : ℤ :=
  A347965.P11028472510360414317.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348749.P164932222149815558

`filter[A053850(n+1), A353639(#)]`
-/

namespace A348749.P164932222149815558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353639 (f1 j).toNat = 1) n)

end

end A348749.P164932222149815558

noncomputable section

/-- A348749: Odd numbers k for which A064989(sigma(k)) > A064989(k), where A064989 shifts the prime factorization one step towards lower primes, and sigma is the sum of divisors function.

Offset 1, canonical program `A348749.P164932222149815558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 723 terms. -/
def A348749 (n : ℕ) : ℤ :=
  A348749.P164932222149815558.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 723 terms. -/
def A348749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349049.P16880800046104447687

`A025528(n+1)-A001222(A110566(n+1))`
-/

namespace A349049.P16880800046104447687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (n + 1) - A001222 (A110566 (n + 1)).toNat

end

end A349049.P16880800046104447687

noncomputable section

/-- A349049: Number of prime factors (with multiplicity) of the denominator of the harmonic number H(n) = Sum_{k=1..n} 1/k.

Offset 1, canonical program `A349049.P16880800046104447687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1092 terms. -/
def A349049 (n : ℕ) : ℤ :=
  A349049.P16880800046104447687.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1092 terms. -/
def A349049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349387.P3512592924213105837

`∑{d}[n+1, A101035(#)*A347137((n+1)/#)]`
-/

namespace A349387.P3512592924213105837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A101035 d * A347137 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349387.P3512592924213105837

noncomputable section

/-- A349387: Dirichlet convolution of A003961 with A055615 (Dirichlet inverse of n), where A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A349387.P3512592924213105837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349387 (n : ℕ) : ℤ :=
  A349387.P3512592924213105837.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349389.P17688454280443951021

`A349387(n+1)+A349388(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349389.P17688454280443951021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349387 (n + 1) + A349388 (n + 1)

end

end A349389.P17688454280443951021

noncomputable section

/-- A349389: a(n) = A349387(n) + A349388(n).

Offset 1, canonical program `A349389.P17688454280443951021`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349387, A349388, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349389 (n : ℕ) : ℤ :=
  A349389.P17688454280443951021.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349387, A349388, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349389.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349571.P582764414335137096

`∑{d}[n+1, A349385(#)*A349387((n+1)/#)]`
-/

namespace A349571.P582764414335137096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349385 d * A349387 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349571.P582764414335137096

noncomputable section

/-- A349571: Dirichlet convolution of A048673 with A055615 (Dirichlet inverse of n).

Offset 1, canonical program `A349571.P582764414335137096`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349571 (n : ℕ) : ℤ :=
  A349571.P582764414335137096.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349633.P10035930798907062347

`lcm(n+1, A349387(n+1))/(n+1)`
-/

namespace A349633.P10035930798907062347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A349387 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A349633.P10035930798907062347

noncomputable section

/-- A349633: Numerators of the Möbius transform of ratio A003961(n)/n.

Offset 1, canonical program `A349633.P10035930798907062347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349633 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A349633.P10035930798907062347.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349634.P1580182829586287684

`(n+1)/gcd(n+1, A349387(n+1))`
-/

namespace A349634.P1580182829586287684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A349387 (n + 1)) : ℚ)

end

end A349634.P1580182829586287684

noncomputable section

/-- A349634: Denominators of the Möbius transform of ratio A003961(n)/n.

Offset 1, canonical program `A349634.P1580182829586287684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349634 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A349634.P1580182829586287684.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350847.P6937331175885194980

`A257992(A122111(n+1))`
-/

namespace A350847.P6937331175885194980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (A122111 (n + 1)).toNat

end

end A350847.P6937331175885194980

noncomputable section

/-- A350847: Number of even parts in the conjugate of the integer partition with Heinz number n.

Offset 1, canonical program `A350847.P6937331175885194980`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, A257992, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A350847 (n : ℕ) : ℤ :=
  A350847.P6937331175885194980.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, A257992, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A350847.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350849.P10248614631853328535

`A344616(n+1)-A257992(n+1)`
-/

namespace A350849.P10248614631853328535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (n + 1) - A257992 (n + 1)

end

end A350849.P10248614631853328535

noncomputable section

/-- A350849: Number of odd conjugate parts minus number of even parts in the integer partition with Heinz number n.

Offset 1, canonical program `A350849.P10248614631853328535`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257992, A344616, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A350849 (n : ℕ) : ℤ :=
  A350849.P10248614631853328535.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257992, A344616, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A350849.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350941.P4525697528803141176

`A344616(n+1)-A350847(n+1)`
-/

namespace A350941.P4525697528803141176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (n + 1) - A350847 (n + 1)

end

end A350941.P4525697528803141176

noncomputable section

/-- A350941: Number of odd conjugate parts minus number of even conjugate parts in the integer partition with Heinz number n.

Offset 0, canonical program `A350941.P4525697528803141176`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344616, A350847, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A350941 (n : ℕ) : ℤ :=
  A350941.P4525697528803141176.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344616, A350847, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A350941.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350950.P795215447450625617

`A257992(n+1)-A350847(n+1)`
-/

namespace A350950.P795215447450625617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (n + 1) - A350847 (n + 1)

end

end A350950.P795215447450625617

noncomputable section

/-- A350950: Number of even parts minus number of even conjugate parts in the integer partition with Heinz number n.

Offset 1, canonical program `A350950.P795215447450625617`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257992, A350847, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A350950 (n : ℕ) : ℤ :=
  A350950.P795215447450625617.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257992, A350847, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A350950.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351411.P14891746329076269071

`A000005(n+1)-A001221(A342007(n+1))`
-/

namespace A351411.P14891746329076269071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A001221 (A342007 (n + 1)).toNat

end

end A351411.P14891746329076269071

noncomputable section

/-- A351411: Number of divisors of n not of the form p^p, p prime.

Offset 1, canonical program `A351411.P14891746329076269071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351411 (n : ℕ) : ℤ :=
  A351411.P14891746329076269071.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351847.P12065325014482619326

`A323171(A078174(n+1))`
-/

namespace A351847.P12065325014482619326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323171 (A078174 (n + 1)).toNat

end

end A351847.P12065325014482619326

noncomputable section

/-- A351847: Arithmetic mean of the distinct prime factors of A078174(n).

Offset 1, canonical program `A351847.P12065325014482619326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351847 (n : ℕ) : ℤ :=
  A351847.P12065325014482619326.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360332.P14499633331821807603

`∩[2*A320628(n+1), A087245(n+1)]`
-/

namespace A360332.P14499633331821807603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A320628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360332.P14499633331821807603

noncomputable section

/-- A360332: Numbers k such that A360331(k) > 2*k.

Offset 1, canonical program `A360332.P14499633331821807603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1043 terms. -/
def A360332 (n : ℕ) : ℤ :=
  (A360332.P14499633331821807603.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1043 terms. -/
def A360332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360357.P9556245212806872942

`∩[A320628(n+1)-1, A320628(n+1)]`
-/

namespace A360357.P9556245212806872942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320628 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360357.P9556245212806872942

noncomputable section

/-- A360357: Numbers k such that k and k+1 are both products of primes of nonprime index (A320628).

Offset 1, canonical program `A360357.P9556245212806872942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2382 terms. -/
def A360357 (n : ℕ) : ℤ :=
  (A360357.P9556245212806872942.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2382 terms. -/
def A360357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363596.P10980254678214324690

`ceil(a(n-1)*A176591(n)/(n+1))` with `a(0)=1`
-/

namespace A363596.P10980254678214324690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) * A176591 n : ℚ) / (n + 1 : ℚ)⌉

end

end A363596.P10980254678214324690

noncomputable section

/-- A363596: a(n) = (Product_{k=1..pi(n+1)} prime(k)^floor(n/(prime(k)-1) ) )/(n+1)!.

Offset 0, canonical program `A363596.P10980254678214324690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9120 terms. -/
def A363596 (n : ℕ) : ℤ :=
  A363596.P10980254678214324690.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9120 terms. -/
def A363596.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365633.P7140313679729895633

`∑{d}[A342007(n+1), #]`
-/

namespace A365633.P7140313679729895633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342007 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A365633.P7140313679729895633

noncomputable section

/-- A365633: The sum of divisors of n that are terms of A072873.

Offset 1, canonical program `A365633.P7140313679729895633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365633 (n : ℕ) : ℤ :=
  (A365633.P7140313679729895633.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365870.P6694161055261231779

`∩[A365869(n+1)-1, A365869(n+1)]`
-/

namespace A365870.P6694161055261231779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365869 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365870.P6694161055261231779

noncomputable section

/-- A365870: Numbers k such that k and k+1 both have an even exponent of least prime factor in their prime factorization.

Offset 1, canonical program `A365870.P6694161055261231779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1816 terms. -/
def A365870 (n : ℕ) : ℤ :=
  (A365870.P6694161055261231779.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1816 terms. -/
def A365870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365871.P3627370264345146378

`∩[A365870(n+1)-1, A365870(n+1)]`
-/

namespace A365871.P3627370264345146378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365870 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365871.P3627370264345146378

noncomputable section

/-- A365871: Starts of runs of 3 consecutive integers whose exponent of least prime factor in their prime factorization is even.

Offset 1, canonical program `A365871.P3627370264345146378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 462 terms. -/
def A365871 (n : ℕ) : ℤ :=
  (A365871.P3627370264345146378.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 462 terms. -/
def A365871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368333.P4860013269317907848

`gcd(A001014(A342007(n+1)), A184985(n+1))`
-/

namespace A368333.P4860013269317907848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001014 (A342007 (n + 1)).toNat) (A184985 (n + 1))

end

end A368333.P4860013269317907848

noncomputable section

/-- A368333: The largest term of A054744 that divides n.

Offset 1, canonical program `A368333.P4860013269317907848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368333 (n : ℕ) : ℤ :=
  (A368333.P4860013269317907848.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368334.P4126870692233895438

`A034444(A368333(n+1))`
-/

namespace A368334.P4126870692233895438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A368333 (n + 1)).toNat

end

end A368334.P4126870692233895438

noncomputable section

/-- A368334: The number of terms of A054744 that are unitary divisors of n.

Offset 1, canonical program `A368334.P4126870692233895438`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A368333, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368334 (n : ℕ) : ℤ :=
  A368334.P4126870692233895438.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A368333, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368334.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368335.P5775079228993480223

`A000005(A368333(n+1))`
-/

namespace A368335.P5775079228993480223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A368333 (n + 1)).toNat

end

end A368335.P5775079228993480223

noncomputable section

/-- A368335: The number of divisors of the largest term of A054744 that divides of n.

Offset 1, canonical program `A368335.P5775079228993480223`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A368333, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368335 (n : ℕ) : ℤ :=
  A368335.P5775079228993480223.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A368333, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368335.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368810.P15557103798044834844

`A096617(n+1)*A297382(n+1)`
-/

namespace A368810.P15557103798044834844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096617 (n + 1) * A297382 (n + 1)

end

end A368810.P15557103798044834844

noncomputable section

/-- A368810: a(n) = numerator of Sum_{i=1..n} Sum_{j=1..n} (1/i + 1/j).

Offset 1, canonical program `A368810.P15557103798044834844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A368810 (n : ℕ) : ℤ :=
  A368810.P15557103798044834844.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A368810.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368901.P12517472764070751102

`A368900(n)*a(n-1)` with `a(0)=1`
-/

namespace A368901.P12517472764070751102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A368900 n * a (n - 1)

end

end A368901.P12517472764070751102

noncomputable section

/-- A368901: The least common multiple of the first n terms of Doudna sequence, A005940.

Offset 0, canonical program `A368901.P12517472764070751102`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368900, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368901 (n : ℕ) : ℤ :=
  A368901.P12517472764070751102.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368900, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368901.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370078.P7098894279137476643

`∑{e}[n+1, A007814(A100994(#))]`
-/

namespace A370078.P7098894279137476643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A007814 (A100994 (Nat.factorization (f1 n) p)).toNat

end

end A370078.P7098894279137476643

noncomputable section

/-- A370078: a(n) = log_2(A370077(n)).

Offset 1, canonical program `A370078.P7098894279137476643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370078 (n : ℕ) : ℤ :=
  A370078.P7098894279137476643.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370354.P16956646947341725089

`lt[A089026(n+1), A082299(n+1)]+1`
-/

namespace A370354.P16956646947341725089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082299 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A370354.P16956646947341725089

noncomputable section

/-- A370354: Composite numbers k that share a factor with sopfr(k), the sum of the primes dividing k, with repetition.

Offset 1, canonical program `A370354.P16956646947341725089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3422 terms. -/
def A370354 (n : ℕ) : ℤ :=
  (A370354.P16956646947341725089.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3422 terms. -/
def A370354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370395.P6591152245152172924

`A061368(n+2)+1`
-/

namespace A370395.P6591152245152172924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061368 (n + 2) + 1

end

end A370395.P6591152245152172924

noncomputable section

/-- A370395: Numbers k that are neither squarefree nor prime powers sandwiched between twin primes.

Offset 1, canonical program `A370395.P6591152245152172924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A370395 (n : ℕ) : ℤ :=
  A370395.P6591152245152172924.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A370395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370494.P10899196163276954018

`A002378(A030059(n+1)-1)`
-/

namespace A370494.P10899196163276954018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A030059 (n + 1) - 1).toNat

end

end A370494.P10899196163276954018

noncomputable section

/-- A370494: Oblong numbers of the form (k-1)*k where k is the product of an odd number of distinct primes.

Offset 1, canonical program `A370494.P10899196163276954018`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030059, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370494 (n : ℕ) : ℤ :=
  A370494.P10899196163276954018.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030059, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370494.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375930.P7525023561221465794

`∑[A120992(n+1)]`
-/

namespace A375930.P7525023561221465794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375930.P7525023561221465794

noncomputable section

/-- A375930: Numbers k such that A005117(k+1) - A005117(k) > 1. In other words, the k-th squarefree number is more than 1 less than the next.

Offset 1, canonical program `A375930.P7525023561221465794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375930 (n : ℕ) : ℤ :=
  A375930.P7525023561221465794.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376734.P16205018272451621134

`∩[A234099(n+1), A234102(n+1)]`
-/

namespace A376734.P16205018272451621134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376734.P16205018272451621134

noncomputable section

/-- A376734: Numbers k such that 2*k-1 and 2*k+1 are products of exactly three distinct odd primes (A046389).

Offset 1, canonical program `A376734.P16205018272451621134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2003 terms. -/
def A376734 (n : ℕ) : ℤ :=
  (A376734.P16205018272451621134.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2003 terms. -/
def A376734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378458.P204532322274590323

`∪[A073248(n+1), A228649(n+1)]`
-/

namespace A378458.P204532322274590323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A378458.P204532322274590323

noncomputable section

/-- A378458: Squarefree numbers k such that k + 1 is squarefree but k + 2 is not.

Offset 1, canonical program `A378458.P204532322274590323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378458 (n : ℕ) : ℤ :=
  (A378458.P204532322274590323.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378606.P1824987261939307766

`∑{d}[n+1, A008683(#)*A349387((n+1)/#)]`
-/

namespace A378606.P1824987261939307766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A349387 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378606.P1824987261939307766

noncomputable section

/-- A378606: Dirichlet convolution of A046692 and A003961, where A046692 is the Dirichlet inverse of sigma, and A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A378606.P1824987261939307766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378606 (n : ℕ) : ℤ :=
  A378606.P1824987261939307766.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378658.P13927000025378427146

`A337345(filter[A103288(n+1), A294930(#)])`
-/

namespace A378658.P13927000025378427146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (f1 (SequenceMachineLib.nth (fun j => A294930 (f1 j).toNat = 1) n)).toNat

end

end A378658.P13927000025378427146

noncomputable section

/-- A378658: a(n) = A337345(A091191(n)), where A337345 is the number of divisors d of n for which A003961(d) > 2*d, and A091191 lists the primitive abundant numbers.

Offset 1, canonical program `A378658.P13927000025378427146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A378658 (n : ℕ) : ℤ :=
  A378658.P13927000025378427146.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A378658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379561.P6001539951614561260

`A025558(n+1)+A027457(n+2)`
-/

namespace A379561.P6001539951614561260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025558 (n + 1) + A027457 (n + 2)

end

end A379561.P6001539951614561260

noncomputable section

/-- A379561: a(n) = A003418(n+1)*H(n), where H(n) = 1 + 1/2 + ... + 1/n is the n-th harmonic number.

Offset 1, canonical program `A379561.P6001539951614561260`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027457, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379561 (n : ℕ) : ℤ :=
  A379561.P6001539951614561260.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027457, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379561.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A381204.P350150440246821859

`A348494(A100994(n+2))`
-/

namespace A381204.P350150440246821859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348494 (A100994 (n + 2)).toNat

end

end A381204.P350150440246821859

noncomputable section

/-- A381204: a(n) is the gcd of the elements of the set of bases and exponents in the prime factorization of n.

Offset 2, canonical program `A381204.P350150440246821859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A381204 (n : ℕ) : ℤ :=
  A381204.P350150440246821859.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A381204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382265.P17506625768474440017

`A066260(A064989(n+1))`
-/

namespace A382265.P17506625768474440017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066260 (A064989 (n + 1)).toNat

end

end A382265.P17506625768474440017

noncomputable section

/-- A382265: In the prime factorization of n replace the k-th prime with the k-th nonprime number.

Offset 1, canonical program `A382265.P17506625768474440017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382265 (n : ℕ) : ℤ :=
  A382265.P17506625768474440017.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382813.P3009257435350173440

`A002805(n+1)*A027611(n+2)/A120263(n+2)`
-/

namespace A382813.P3009257435350173440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002805 (n + 1) * A027611 (n + 2) : ℚ) / (A120263 (n + 2) : ℚ)

end

end A382813.P3009257435350173440

noncomputable section

/-- A382813: Denominator of the n-th partial sum of the squares of the harmonic numbers.

Offset 1, canonical program `A382813.P3009257435350173440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A382813 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382813.P3009257435350173440.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A382813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387707.P1369852853517030567

`A337345(A023196(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387707.P1369852853517030567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (A023196 (n + 1)).toNat

end

end A387707.P1369852853517030567

noncomputable section

/-- A387707: a(n) = A337345(A023196(n)), where A337345 is the number of divisors d of n for which A003961(d) > 2*d, and A023196 lists the nondeficient numbers, numbers k such that sigma(k) >= 2*k.

Offset 1, canonical program `A387707.P1369852853517030567`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023196, A337345, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A387707 (n : ℕ) : ℤ :=
  A387707.P1369852853517030567.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023196, A337345, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A387707.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389451.P11329845845923085629

`A000203((n+1)/A368333(n+1))`
-/

namespace A389451.P11329845845923085629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A368333 (n + 1) : ℚ))).toNat

end

end A389451.P11329845845923085629

noncomputable section

/-- A389451: Sum of divisors of the largest unitary divisor of n that is a term in A048103 (not divisible by p^p for any prime p).

Offset 1, canonical program `A389451.P11329845845923085629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389451 (n : ℕ) : ℤ :=
  A389451.P11329845845923085629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389452.P11404035242494285514

`A000203(n+1)/A389451(n+1)`
-/

namespace A389452.P11404035242494285514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A389451 (n + 1) : ℚ)

end

end A389452.P11404035242494285514

noncomputable section

/-- A389452: Sum of the divisors of the largest p-full divisor of n (a term of A054744 that divides n).

Offset 1, canonical program `A389452.P11404035242494285514`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A389451, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389452 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389452.P11404035242494285514.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A389451, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389452.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389453.P4363465983384085622

`A003415(A368333(n+1))`
-/

namespace A389453.P4363465983384085622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A368333 (n + 1)).toNat

end

end A389453.P4363465983384085622

noncomputable section

/-- A389453: Arithmetic derivative of the largest p-full divisor of n (a term of A054744 that divides n).

Offset 1, canonical program `A389453.P4363465983384085622`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A368333, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389453 (n : ℕ) : ℤ :=
  A389453.P4363465983384085622.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A368333, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389453.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389454.P13905471040686066385

`A003415((n+1)/A368333(n+1))`
-/

namespace A389454.P13905471040686066385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A368333 (n + 1) : ℚ))).toNat

end

end A389454.P13905471040686066385

noncomputable section

/-- A389454: Arithmetic derivative of the largest unitary divisor of n that is a term in A048103 (not divisible by p^p for any prime p).

Offset 1, canonical program `A389454.P13905471040686066385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389454 (n : ℕ) : ℤ :=
  A389454.P13905471040686066385.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392059.P3818747102028578455

`∏[A392055(n+1)]`
-/

namespace A392059.P3818747102028578455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A392059.P3818747102028578455

noncomputable section

/-- A392059: a(n) is the product of all p^k such that p is a ramified or inert prime in the Gaussian integers and k is the largest such k satisfying p^k <= n.

Offset 1, canonical program `A392059.P3818747102028578455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 442 terms. -/
def A392059 (n : ℕ) : ℤ :=
  A392059.P3818747102028578455.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 442 terms. -/
def A392059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392449.P4738503714353542258

`A000007(A344616(n+1))*A367516(n+1)`
-/

namespace A392449.P4738503714353542258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A344616 (n + 1)).toNat * A367516 (n + 1)

end

end A392449.P4738503714353542258

noncomputable section

/-- A392449: The number of exponential unitary (or e-unitary) divisors of n that are squares.

Offset 1, canonical program `A392449.P4738503714353542258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392449 (n : ℕ) : ℤ :=
  A392449.P4738503714353542258.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000046.P15269567726961333018

`A000048(n)-A308706(n)`
-/

namespace A000046.P15269567726961333018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 n - A308706 n

end

end A000046.P15269567726961333018

noncomputable section

/-- A000046: Number of primitive n-bead necklaces (turning over is allowed) where complements are equivalent.

Offset 0, canonical program `A000046.P15269567726961333018`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000048, A308706, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A000046 (n : ℕ) : ℤ :=
  A000046.P15269567726961333018.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000048, A308706, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A000046.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A002444.P12837809495973367521

`(2*n+1)*A363596(2*n)`
-/

namespace A002444.P12837809495973367521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A363596 (2 * n)

end

end A002444.P12837809495973367521

noncomputable section

/-- A002444: Denominator in Feinler's formula for unsigned Bernoulli number |B_{2n}|.

Offset 0, canonical program `A002444.P12837809495973367521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4560 terms. -/
def A002444 (n : ℕ) : ℤ :=
  A002444.P12837809495973367521.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4560 terms. -/
def A002444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003968.P10961526323602588276

`A167338(n+1)/A001615(n+1)`
-/

namespace A003968.P10961526323602588276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167338 (n + 1) : ℚ) / (A001615 (n + 1) : ℚ)

end

end A003968.P10961526323602588276

noncomputable section

/-- A003968: Möbius transform of A003959.

Offset 1, canonical program `A003968.P10961526323602588276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003968 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A003968.P10961526323602588276.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003971.P11619303163833066473

`∑{d}[n+1, A003960(#)]`
-/

namespace A003971.P11619303163833066473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003960 d

end

end A003971.P11619303163833066473

noncomputable section

/-- A003971: Inverse Möbius transform of A003960.

Offset 1, canonical program `A003971.P11619303163833066473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003971 (n : ℕ) : ℤ :=
  A003971.P11619303163833066473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003974.P18403113671087007945

`∑{d}[n+1, A003962(#)*A008683((n+1)/#)]`
-/

namespace A003974.P18403113671087007945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003962 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003974.P18403113671087007945

noncomputable section

/-- A003974: Möbius transform of A003962.

Offset 1, canonical program `A003974.P18403113671087007945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003974 (n : ℕ) : ℤ :=
  A003974.P18403113671087007945.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003975.P5207555401224753949

`∑{d}[n+1, A003962(#)]`
-/

namespace A003975.P5207555401224753949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003962 d

end

end A003975.P5207555401224753949

noncomputable section

/-- A003975: Inverse Möbius transform of A003962.

Offset 1, canonical program `A003975.P5207555401224753949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003975 (n : ℕ) : ℤ :=
  A003975.P5207555401224753949.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006954.P4373113173166877548

`A176591(2*n+1-3%(n+2))`
-/

namespace A006954.P4373113173166877548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176591 (2 * n + 1 - 3 % (n + 2))

end

end A006954.P4373113173166877548

noncomputable section

/-- A006954: Denominators of Bernoulli numbers B_0, B_1, B_2, B_4, B_6, ...

Offset 0, canonical program `A006954.P4373113173166877548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 653 terms. -/
def A006954 (n : ℕ) : ℤ :=
  A006954.P4373113173166877548.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 653 terms. -/
def A006954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027642.P11573445315954727429

`A141056(n*A266591(n))`
-/

namespace A027642.P11573445315954727429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 ((n : ℤ) * A266591 n).toNat

end

end A027642.P11573445315954727429

noncomputable section

/-- A027642: Denominator of Bernoulli number B_n.

Offset 0, canonical program `A027642.P11573445315954727429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027642 (n : ℕ) : ℤ :=
  A027642.P11573445315954727429.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033300.P5482203830554641710

`A033299(A000040(n+1))`
-/

namespace A033300.P5482203830554641710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033299 (A000040 (n + 1)).toNat

end

end A033300.P5482203830554641710

noncomputable section

/-- A033300: Smallest safe prime ((p-1)/2 is also prime) > n-th prime.

Offset 0, canonical program `A033300.P5482203830554641710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A033300 (n : ℕ) : ℤ :=
  A033300.P5482203830554641710.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A033300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035930.P13238734123454317446

`A088116(n)-A257297(n)`
-/

namespace A035930.P13238734123454317446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088116 n - A257297 n

end

end A035930.P13238734123454317446

noncomputable section

/-- A035930: Maximal product of any two numbers whose concatenation is n.

Offset 0, canonical program `A035930.P13238734123454317446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A035930 (n : ℕ) : ℤ :=
  A035930.P13238734123454317446.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A035930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035931.P9216625433156157235

`a(A035930(n))+1` with `a(0)=0`
-/

namespace A035931.P9216625433156157235
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A035930 n).toNat + 1

end

end A035931.P9216625433156157235

noncomputable section

/-- A035931: Number of steps to reach 0 under "k->max product of two numbers whose concatenation is k".

Offset 0, canonical program `A035931.P9216625433156157235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035931 (n : ℕ) : ℤ :=
  (A035931.P9216625433156157235.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036328.P17136964212029901258

`eq[4, A076649(A233583(n+1))]`
-/

namespace A036328.P17136964212029901258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076649 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036328.P17136964212029901258

noncomputable section

/-- A036328: Composite numbers n such that juxtaposition of prime factors of n has length 4.

Offset 1, canonical program `A036328.P17136964212029901258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 378 terms. -/
def A036328 (n : ℕ) : ℤ :=
  (A036328.P17136964212029901258.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 378 terms. -/
def A036328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036329.P810516650349333775

`eq[5, A076649(n+1)]+1`
-/

namespace A036329.P810516650349333775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036329.P810516650349333775

noncomputable section

/-- A036329: Composite numbers n such that juxtaposition of prime factors of n has length 5.

Offset 1, canonical program `A036329.P810516650349333775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3679 terms. -/
def A036329 (n : ℕ) : ℤ :=
  (A036329.P810516650349333775.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3679 terms. -/
def A036329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044942.P10877582406640185609

`A257991(A382255(n+1))`
-/

namespace A044942.P10877582406640185609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (A382255 (n + 1)).toNat

end

end A044942.P10877582406640185609

noncomputable section

/-- A044942: Number of runs of odd length in the base-2 representation of n.

Offset 1, canonical program `A044942.P10877582406640185609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A044942 (n : ℕ) : ℤ :=
  A044942.P10877582406640185609.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A044942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044943.P17156978428470333392

`A044942(A371256(n+1))`
-/

namespace A044943.P17156978428470333392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044942 (A371256 (n + 1)).toNat

end

end A044943.P17156978428470333392

noncomputable section

/-- A044943: Number of runs of odd length in the base 3 representation of n.

Offset 1, canonical program `A044943.P17156978428470333392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A044943 (n : ℕ) : ℤ :=
  A044943.P17156978428470333392.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A044943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048103.P2857780871573492135

`eq[1, A342007(n+1)]+1`
-/

namespace A048103.P2857780871573492135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342007 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A048103.P2857780871573492135

noncomputable section

/-- A048103: Numbers not divisible by p^p for any prime p.

Offset 1, canonical program `A048103.P2857780871573492135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048103 (n : ℕ) : ℤ :=
  (A048103.P2857780871573492135.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051190.P4423942636353166915

`A067911(n+1)/(n+1)`
-/

namespace A051190.P4423942636353166915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067911 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A051190.P4423942636353166915

noncomputable section

/-- A051190: a(n) = Product_{k=1..n-1} gcd(k,n).

Offset 1, canonical program `A051190.P4423942636353166915`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067911, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051190 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051190.P4423942636353166915.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067911, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051190.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A054977.P9650357608159032738

`A027642(2*n+1)`
-/

namespace A054977.P9650357608159032738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (2 * n + 1)

end

end A054977.P9650357608159032738

noncomputable section

/-- A054977: a(0)=2, a(n)=1 for n >= 1.

Offset 0, canonical program `A054977.P9650357608159032738`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054977 (n : ℕ) : ℤ :=
  A054977.P9650357608159032738.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054977.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055032.P14368911295060882671

`lcm(A226040(n), A326690(n+1))`
-/

namespace A055032.P14368911295060882671
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A226040 n) (A326690 (n + 1))

end

end A055032.P14368911295060882671

noncomputable section

/-- A055032: Denominator of (Sum(m^(n-1),m=1..n-1)+1)/n.

Offset 1, canonical program `A055032.P14368911295060882671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055032 (n : ℕ) : ℤ :=
  (A055032.P14368911295060882671.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055773.P829103840923017238

`A300951(2*n)/A300951(n)`
-/

namespace A055773.P829103840923017238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300951 (2 * n) : ℚ) / (A300951 n : ℚ)

end

end A055773.P829103840923017238

noncomputable section

/-- A055773: a(n) = Product_{p in P_n} where P_n = {p prime, n/2 < p <= n }.

Offset 0, canonical program `A055773.P829103840923017238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A055773 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055773.P829103840923017238.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A055773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068111.P15408630498123714661

`or(1, A055773(2*n)-A000035(2*n+1))`
-/

namespace A068111.P15408630498123714661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A055773 (2 * n) - A000035 (2 * n + 1))

end

end A068111.P15408630498123714661

noncomputable section

/-- A068111: Numerators of coefficients in J0(i*sqrt(x))^2, where J0 denotes the ordinary Bessel function of order 0.

Offset 0, canonical program `A068111.P15408630498123714661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A068111 (n : ℕ) : ℤ :=
  A068111.P15408630498123714661.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A068111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069267.P225979577722711314

`A002444(n+1)/2`
-/

namespace A069267.P225979577722711314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002444 (n + 1) : ℚ) / 2

end

end A069267.P225979577722711314

noncomputable section

/-- A069267: a(n) = (2^(n-1)/(2n)!)*Product_{k=1..n} q(k) where q(n) is the denominator of B(2n), the 2n-th Bernoulli number.

Offset 1, canonical program `A069267.P225979577722711314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. -/
def A069267 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A069267.P225979577722711314.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. -/
def A069267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070005.P18332197979937916789

`∩[A070537(n+1), A078174(n+1)]`
-/

namespace A070005.P18332197979937916789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070005.P18332197979937916789

noncomputable section

/-- A070005: Arithmetic mean of prime factors of n is an integer and n is neither a prime nor power of a prime.

Offset 1, canonical program `A070005.P18332197979937916789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5428 terms. -/
def A070005 (n : ℕ) : ℤ :=
  (A070005.P18332197979937916789.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5428 terms. -/
def A070005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070008.P12707018012675743666

`record[A078174(n+1)/A087207(A351847(n+1))]`
-/

namespace A070008.P12707018012675743666
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078174 (n + 1) : ℚ) / (A087207 (A351847 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070008.P12707018012675743666

noncomputable section

/-- A070008: Arithmetic mean of distinct primes dividing n is a power of 2 (powers of 2 are not left out).

Offset 1, canonical program `A070008.P12707018012675743666`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A070008 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A070008.P12707018012675743666.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A070008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071835.P15681907629153140028

`∩[A048098(n+1), A079142(n)]`
-/

namespace A071835.P15681907629153140028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079142 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071835.P15681907629153140028

noncomputable section

/-- A071835: Numbers k such that the largest prime factor of k is equal to floor(sqrt(k)).

Offset 1, canonical program `A071835.P15681907629153140028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A071835 (n : ℕ) : ℤ :=
  (A071835.P15681907629153140028.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A071835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072438.P8372132607125939071

`∏{d}[n+1, A392055(#)]`
-/

namespace A072438.P8372132607125939071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A392055 d

end

end A072438.P8372132607125939071

noncomputable section

/-- A072438: Remove prime factors of form 4*k+1.

Offset 1, canonical program `A072438.P8372132607125939071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072438 (n : ℕ) : ℤ :=
  A072438.P8372132607125939071.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073838.P2064142446550053236

`A055773(2*n+1)+A000007(n)`
-/

namespace A073838.P2064142446550053236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055773 (2 * n + 1) + A000007 n

end

end A073838.P2064142446550053236

noncomputable section

/-- A073838: Product of primes p satisfying n <= p <= 2n.

Offset 1, canonical program `A073838.P2064142446550053236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. -/
def A073838 (n : ℕ) : ℤ :=
  A073838.P2064142446550053236.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. -/
def A073838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074791.P16479575259879118996

`lt[1, A120263(n+1)]+1`
-/

namespace A074791.P16479575259879118996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120263 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A074791.P16479575259879118996

noncomputable section

/-- A074791: Numbers k such that k does not divide the denominator of the k-th harmonic number.

Offset 1, canonical program `A074791.P16479575259879118996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A074791 (n : ℕ) : ℤ :=
  (A074791.P16479575259879118996.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A074791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078948.P9940267771399150041

`∩[A078848(n+1), A079292(n+1)]`
-/

namespace A078948.P9940267771399150041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078948.P9940267771399150041

noncomputable section

/-- A078948: Primes p such that the differences between the 5 consecutive primes starting with p are (2,6,4,2).

Offset 1, canonical program `A078948.P9940267771399150041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 851 terms. -/
def A078948 (n : ℕ) : ℤ :=
  (A078948.P9940267771399150041.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 851 terms. -/
def A078948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081868.P17513291804743263769

`eq[A000035(A088564(n)), A054977(n)]`
-/

namespace A081868.P17513291804743263769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A088564 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081868.P17513291804743263769

noncomputable section

/-- A081868: Numbers k such that Sum_{j=1..k} (binomial(2*j,j) mod 3) is even.

Offset 1, canonical program `A081868.P17513291804743263769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 383 terms. -/
def A081868 (n : ℕ) : ℤ :=
  (A081868.P17513291804743263769.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 383 terms. -/
def A081868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081887.P3401142838611076180

`eq[A010051(n+1), A110566(n+1)]`
-/

namespace A081887.P3401142838611076180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081887.P3401142838611076180

noncomputable section

/-- A081887: Numbers k such that lcm(1..k) equals the denominator of the sum of the first k harmonic numbers.

Offset 1, canonical program `A081887.P3401142838611076180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A081887 (n : ℕ) : ℤ :=
  (A081887.P3401142838611076180.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A081887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086568.P9412940233159706757

`A300951(2*A105560(n+1))`
-/

namespace A086568.P9412940233159706757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300951 (2 * A105560 (n + 1)).toNat

end

end A086568.P9412940233159706757

noncomputable section

/-- A086568: Smallest number having as many distinct prime factors as n has prime factors, when counted with multiplicity.

Offset 1, canonical program `A086568.P9412940233159706757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086568 (n : ℕ) : ℤ :=
  A086568.P9412940233159706757.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086568.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087346.P12336224984943542324

`A088116(100+n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A087346.P12336224984943542324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088116 (100 + (n + 1))

end

end A087346.P12336224984943542324

noncomputable section

/-- A087346: a(n) = A088116(100+n).

Offset 1, canonical program `A087346.P12336224984943542324`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088116, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087346 (n : ℕ) : ℤ :=
  A087346.P12336224984943542324.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088116, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087346.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A090629.P15624064582687193134

`(dr(A141056(2*n))+1+n)%2+1`
-/

namespace A090629.P15624064582687193134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A141056 (2 * n)) + 1 + n) % 2 + 1

end

end A090629.P15624064582687193134

noncomputable section

/-- A090629: a(n) = abs(numerator of 2n-th Bernoulli number) modulo 3.

Offset 0, canonical program `A090629.P15624064582687193134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 634 terms. -/
def A090629 (n : ℕ) : ℤ :=
  (A090629.P15624064582687193134.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 634 terms. -/
def A090629.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091137.P5644376634537276402

`(n+1)!*A363596(n)`
-/

namespace A091137.P5644376634537276402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A363596 n

end

end A091137.P5644376634537276402

noncomputable section

/-- A091137: The Hirzebruch numbers. a(n) = Product_{2 <= p <= n+1, p prime} p^floor(n / (p - 1)).

Offset 0, canonical program `A091137.P5644376634537276402`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363596, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A091137 (n : ℕ) : ℤ :=
  A091137.P5644376634537276402.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363596, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A091137.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A092287.P13955186851701876767

`n*A051190(n)²*a(n-1)` with `a(0)=1`
-/

namespace A092287.P13955186851701876767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A051190 n ^ 2 * a (n - 1)

end

end A092287.P13955186851701876767

noncomputable section

/-- A092287: a(n) = Product_{j=1..n} Product_{k=1..n} gcd(j,k).

Offset 0, canonical program `A092287.P13955186851701876767`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051190, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A092287 (n : ℕ) : ℤ :=
  A092287.P13955186851701876767.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051190, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A092287.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A092904.P9578178506371164155

`∑{digits}[A027642(2*n), A057427(A006501(#))]`
-/

namespace A092904.P9578178506371164155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A057427 (A006501 x).toNat).sum

end

end A092904.P9578178506371164155

noncomputable section

/-- A092904: Number of decimal digits in the denominator of the Bernoulli number B(2n).

Offset 0, canonical program `A092904.P9578178506371164155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A092904 (n : ℕ) : ℤ :=
  A092904.P9578178506371164155.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A092904.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093555.P5658840311924976903

`Δ[record[A100994(n+1)]]-1`
-/

namespace A093555.P5658840311924976903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100994 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A093555.P5658840311924976903

noncomputable section

/-- A093555: Number of non-prime-powers between consecutive prime-powers.

Offset 1, canonical program `A093555.P5658840311924976903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A093555 (n : ℕ) : ℤ :=
  A093555.P5658840311924976903.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A093555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098464.P17154748706034331019

`eq[1, A110566(n+1)]+1`
-/

namespace A098464.P17154748706034331019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A098464.P17154748706034331019

noncomputable section

/-- A098464: Numbers k such that lcm(1,2,3,...,k) equals the denominator of the k-th harmonic number H(k).

Offset 1, canonical program `A098464.P17154748706034331019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2641 terms. -/
def A098464 (n : ℕ) : ℤ :=
  (A098464.P17154748706034331019.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2641 terms. -/
def A098464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100576.P14722533203068367608

`A100573(A024619(n+1))`
-/

namespace A100576.P14722533203068367608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100573 (A024619 (n + 1)).toNat

end

end A100576.P14722533203068367608

noncomputable section

/-- A100576: Smallest difference between distinct prime divisors of the n-th non-prime-power.

Offset 1, canonical program `A100576.P14722533203068367608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A100576 (n : ℕ) : ℤ :=
  A100576.P14722533203068367608.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A100576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106458.P14236867750960473555

`A027642(n)*A266591(n)`
-/

namespace A106458.P14236867750960473555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n * A266591 n

end

end A106458.P14236867750960473555

noncomputable section

/-- A106458: Bernoulli number denominators, with zeros at the odd places.

Offset 0, canonical program `A106458.P14236867750960473555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106458 (n : ℕ) : ℤ :=
  A106458.P14236867750960473555.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109608.P6735383558339274602

`eq[1, A280827(n+1)+1]+1`
-/

namespace A109608.P6735383558339274602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280827 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A109608.P6735383558339274602

noncomputable section

/-- A109608: Numbers n such that the number of digits required to write the prime factors of n equals the number of digits of n.

Offset 1, canonical program `A109608.P6735383558339274602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1972 terms. -/
def A109608 (n : ℕ) : ℤ :=
  (A109608.P6735383558339274602.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1972 terms. -/
def A109608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110188.P16314448030047574102

`∩[A014612(n+1), A370354(n+1)]`
-/

namespace A110188.P16314448030047574102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110188.P16314448030047574102

noncomputable section

/-- A110188: 3-almost primes p * q * r not relatively prime to p+q+r.

Offset 1, canonical program `A110188.P16314448030047574102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3849 terms. -/
def A110188 (n : ℕ) : ℤ :=
  (A110188.P16314448030047574102.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3849 terms. -/
def A110188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110230.P5744842396136358029

`∩[A014614(n+1), A370354(n+1)]`
-/

namespace A110230.P5744842396136358029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110230.P5744842396136358029

noncomputable section

/-- A110230: 5-almost primes p * q * r * s * t not relatively prime to p + q + r + s + t.

Offset 1, canonical program `A110230.P5744842396136358029`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1812 terms. -/
def A110230 (n : ℕ) : ℤ :=
  (A110230.P5744842396136358029.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1812 terms. -/
def A110230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115403.P13733478826157625303

`eq[8, A278251(n)+A086568(n+1)]`
-/

namespace A115403.P13733478826157625303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278251 n + A086568 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115403.P13733478826157625303

noncomputable section

/-- A115403: Numbers k such that k^3+1 is 3-almost prime (product of three primes).

Offset 1, canonical program `A115403.P13733478826157625303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 945 terms. -/
def A115403 (n : ℕ) : ℤ :=
  (A115403.P13733478826157625303.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 945 terms. -/
def A115403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119850.P7905821077674988705

`∩[A119848(n+1), A376271(n+1)]`
-/

namespace A119850.P7905821077674988705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119850.P7905821077674988705

noncomputable section

/-- A119850: Positions where A119842 is greater than one.

Offset 1, canonical program `A119850.P7905821077674988705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1281 terms. -/
def A119850 (n : ℕ) : ℤ :=
  (A119850.P7905821077674988705.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1281 terms. -/
def A119850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119956.P9211573796287934914

`∩[A115403(n+1), A183569(n+1)]`
-/

namespace A119956.P9211573796287934914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119956.P9211573796287934914

noncomputable section

/-- A119956: Numbers n such that n^3+1=p*q*r where p,q,r are distinct primes.

Offset 1, canonical program `A119956.P9211573796287934914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 949 terms. -/
def A119956 (n : ℕ) : ℤ :=
  (A119956.P9211573796287934914.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 949 terms. -/
def A119956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120111.P13519720952501436584

`char[∑[n-1]]-A140579(n+2)`
-/

namespace A120111.P13519720952501436584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A140579 (n + 2)

end

end A120111.P13519720952501436584

noncomputable section

/-- A120111: Bi-diagonal inverse matrix of A120108.

Offset 0, canonical program `A120111.P13519720952501436584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A120111 (n : ℕ) : ℤ :=
  A120111.P13519720952501436584.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A120111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132095.P11457684862104196906

`A176591(2*n)/gcd(A014681(2*n), A176591(2*n))`
-/

namespace A132095.P11457684862104196906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176591 (2 * n) : ℚ) / (Int.gcd (A014681 (2 * n)) (A176591 (2 * n)) : ℚ)

end

end A132095.P11457684862104196906

noncomputable section

/-- A132095: Denominators of expansion of e.g.f. x^2/(2*(cos(x)-1)), even powers only.

Offset 0, canonical program `A132095.P11457684862104196906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A132095 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A132095.P11457684862104196906.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A132095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133205.P13752087897253202487

`A167338(n+1)/A061142(n+1)`
-/

namespace A133205.P13752087897253202487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167338 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A133205.P13752087897253202487

noncomputable section

/-- A133205: Fully multiplicative with a(p) = p*(p+1)/2 for prime p.

Offset 1, canonical program `A133205.P13752087897253202487`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061142, A167338, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A133205 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A133205.P13752087897253202487.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061142, A167338, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A133205.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138242.P9271491672774814996

`p?[A124519(n+1)]`
-/

namespace A138242.P9271491672774814996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138242.P9271491672774814996

noncomputable section

/-- A138242: Prime numbers k such that 12*k - 1, 12*k + 1 are twin primes.

Offset 1, canonical program `A138242.P9271491672774814996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 649 terms. -/
def A138242 (n : ℕ) : ℤ :=
  A138242.P9271491672774814996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 649 terms. -/
def A138242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138660.P7096998422197970140

`∩[A138242(n+1), A138248(n+1)]`
-/

namespace A138660.P7096998422197970140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138660.P7096998422197970140

noncomputable section

/-- A138660: Primes p such that (12*p - 1, 12*p + 1) and (18*p - 1, 18*p + 1) are twin primes.

Offset 1, canonical program `A138660.P7096998422197970140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. -/
def A138660 (n : ℕ) : ℤ :=
  (A138660.P7096998422197970140.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. -/
def A138660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140814.P18246206347557195138

`A106458(2*n)+A106458(2*n+1)`
-/

namespace A140814.P18246206347557195138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106458 (2 * n) + A106458 (2 * n + 1)

end

end A140814.P18246206347557195138

noncomputable section

/-- A140814: a(0)=3, a(n)=A002445(n) for n >= 1.

Offset 0, canonical program `A140814.P18246206347557195138`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A106458, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140814 (n : ℕ) : ℤ :=
  A140814.P18246206347557195138.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A106458, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140814.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A140816.P7336394330774029488

`A277087(n)%3`
-/

namespace A140816.P7336394330774029488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277087 n) 3

end

end A140816.P7336394330774029488

noncomputable section

/-- A140816: A third of digital roots of Bernoulli number denominators.

Offset 0, canonical program `A140816.P7336394330774029488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 660 terms. -/
def A140816 (n : ℕ) : ℤ :=
  A140816.P7336394330774029488.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 660 terms. -/
def A140816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141421.P5964235470016357993

`A091137(2*n)`
-/

namespace A141421.P5964235470016357993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091137 (2 * n)

end

end A141421.P5964235470016357993

noncomputable section

/-- A141421: First bisection of A091137.

Offset 0, canonical program `A141421.P5964235470016357993`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091137, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141421 (n : ℕ) : ℤ :=
  A141421.P5964235470016357993.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091137, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141421.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A144186.P103456975638940015

`A055773(2*n)/gcd(A055773(2*n), A055773(n+1))`
-/

namespace A144186.P103456975638940015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055773 (2 * n) : ℚ) / (Int.gcd (A055773 (2 * n)) (A055773 (n + 1)) : ℚ)

end

end A144186.P103456975638940015

noncomputable section

/-- A144186: Numerators of series expansion of the e.g.f. for the Catalan numbers.

Offset 0, canonical program `A144186.P103456975638940015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A144186 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A144186.P103456975638940015.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A144186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155070.P18385671949588106025

`p?[(n+1)*A049076(A262401(n+1))]`
-/

namespace A155070.P18385671949588106025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A049076 (A262401 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155070.P18385671949588106025

noncomputable section

/-- A155070: Primes with nonprime largest digit.

Offset 1, canonical program `A155070.P18385671949588106025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 860 terms. -/
def A155070 (n : ℕ) : ℤ :=
  A155070.P18385671949588106025.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 860 terms. -/
def A155070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155777.P2703332547044059422

`p?[(n+1)*A001222(A262401(n+1))]`
-/

namespace A155777.P2703332547044059422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (A262401 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155777.P2703332547044059422

noncomputable section

/-- A155777: Primes with largest digit prime.

Offset 1, canonical program `A155777.P2703332547044059422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 369 terms. -/
def A155777 (n : ℕ) : ℤ :=
  A155777.P2703332547044059422.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 369 terms. -/
def A155777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157800.P5128203663359479520

`lcm(3^n, A027642(n))`
-/

namespace A157800.P5128203663359479520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (3 ^ n : ℤ) (A027642 n)

end

end A157800.P5128203663359479520

noncomputable section

/-- A157800: Denominator of Bernoulli(n, 1/3).

Offset 0, canonical program `A157800.P5128203663359479520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 192 terms. -/
def A157800 (n : ℕ) : ℤ :=
  (A157800.P5128203663359479520.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 192 terms. -/
def A157800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157867.P12689719628150824249

`lcm(5^n, A027642(n))`
-/

namespace A157867.P12689719628150824249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (5 ^ n : ℤ) (A027642 n)

end

end A157867.P12689719628150824249

noncomputable section

/-- A157867: Denominator of Bernoulli(n, 1/5).

Offset 0, canonical program `A157867.P12689719628150824249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A157867 (n : ℕ) : ℤ :=
  (A157867.P12689719628150824249.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A157867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158475.P13120440846538858082

`lcm(7^n, A027642(n))`
-/

namespace A158475.P13120440846538858082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (7 ^ n : ℤ) (A027642 n)

end

end A158475.P13120440846538858082

noncomputable section

/-- A158475: Denominator of Bernoulli(n, 1/7).

Offset 0, canonical program `A158475.P13120440846538858082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A158475 (n : ℕ) : ℤ :=
  (A158475.P13120440846538858082.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A158475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158808.P6863390486231908912

`3^n*A157800(n)`
-/

namespace A158808.P6863390486231908912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A157800 n

end

end A158808.P6863390486231908912

noncomputable section

/-- A158808: Denominator of Bernoulli(n, 1/9).

Offset 0, canonical program `A158808.P6863390486231908912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A158808 (n : ℕ) : ℤ :=
  A158808.P6863390486231908912.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A158808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164869.P11362495776085289296

`n*A027642(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A164869.P11362495776085289296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A027642 n

end

end A164869.P11362495776085289296

noncomputable section

/-- A164869: n*A027642(n).

Offset 0, canonical program `A164869.P11362495776085289296`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164869 (n : ℕ) : ℤ :=
  A164869.P11362495776085289296.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164869.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A164877.P9055220264307131730

`A164869(2*n)`
-/

namespace A164877.P9055220264307131730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164869 (2 * n)

end

end A164877.P9055220264307131730

noncomputable section

/-- A164877: First bisection of A164869.

Offset 0, canonical program `A164877.P9055220264307131730`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A164869, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164877 (n : ℕ) : ℤ :=
  A164877.P9055220264307131730.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A164869, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164877.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A164977.P13398499223667780761

`∪[A005383(n+1), A077065(n+1)]`
-/

namespace A164977.P13398499223667780761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A164977.P13398499223667780761

noncomputable section

/-- A164977: Numbers m such that the set {1..m} has only one nontrivial decomposition into subsets with equal element sum.

Offset 1, canonical program `A164977.P13398499223667780761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164977 (n : ℕ) : ℤ :=
  (A164977.P13398499223667780761.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165313.P6786130095422068567

`A091137(A002262(n))`
-/

namespace A165313.P6786130095422068567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091137 (A002262 n).toNat

end

end A165313.P6786130095422068567

noncomputable section

/-- A165313: Triangle T(n,k) = A091137(k-1) read by rows.

Offset 1, canonical program `A165313.P6786130095422068567`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A165313 (n : ℕ) : ℤ :=
  A165313.P6786130095422068567.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A165313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165636.P9527528292599602845

`A091137(n)/2^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165636.P9527528292599602845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091137 n : ℚ) / (2 ^ n : ℚ)

end

end A165636.P9527528292599602845

noncomputable section

/-- A165636: a(n) = A091137(n)/2^n.

Offset 0, canonical program `A165636.P9527528292599602845`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091137, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A165636 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A165636.P9527528292599602845.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091137, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A165636.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A165641.P11964317276887171460

`A091137(n)/A001316(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165641.P11964317276887171460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091137 n : ℚ) / (A001316 n : ℚ)

end

end A165641.P11964317276887171460

noncomputable section

/-- A165641: A091137(n) / A001316(n) .

Offset 0, canonical program `A165641.P11964317276887171460`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091137, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A165641 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A165641.P11964317276887171460.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091137, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A165641.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A165886.P760249657169127056

`A165641(n+1)/A165641(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165886.P760249657169127056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165641 (n + 1) : ℚ) / (A165641 n : ℚ)

end

end A165886.P760249657169127056

noncomputable section

/-- A165886: a(n) = A165641(n+1)/A165641(n).

Offset 0, canonical program `A165886.P760249657169127056`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165641, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A165886 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A165886.P760249657169127056.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165641, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A165886.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166120.P5315806912369987388

`A027642(n)/A089026(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A166120.P5315806912369987388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 n : ℚ) / (A089026 (n + 1) : ℚ)

end

end A166120.P5315806912369987388

noncomputable section

/-- A166120: a(n) = A027642(n-1) / A089026(n).

Offset 1, canonical program `A166120.P5315806912369987388`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027642, A089026, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166120 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A166120.P5315806912369987388.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027642, A089026, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166120.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166333.P2435102107560967594

`A006530(A027642(n))`
-/

namespace A166333.P2435102107560967594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A027642 n).toNat

end

end A166333.P2435102107560967594

noncomputable section

/-- A166333: The largest prime that divides A027642(n) (the denominator of the Bernoulli number B_n), or 1 if A027642(n) is 1.

Offset 0, canonical program `A166333.P2435102107560967594`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A027642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166333 (n : ℕ) : ℤ :=
  A166333.P2435102107560967594.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A027642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166333.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166590.P9721562619516484489

`A167346(n+1)/A003958(n+1)`
-/

namespace A166590.P9721562619516484489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167346 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ)

end

end A166590.P9721562619516484489

noncomputable section

/-- A166590: Totally multiplicative sequence with a(p) = p+2 for prime p.

Offset 1, canonical program `A166590.P9721562619516484489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166590 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A166590.P9721562619516484489.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167303.P11363284462893750900

`A061142(n+1)*A166590(n+1)`
-/

namespace A167303.P11363284462893750900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A166590 (n + 1)

end

end A167303.P11363284462893750900

noncomputable section

/-- A167303: Totally multiplicative sequence with a(p) = 2*(p+2) for prime p.

Offset 1, canonical program `A167303.P11363284462893750900`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061142, A166590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167303 (n : ℕ) : ℤ :=
  A167303.P11363284462893750900.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061142, A166590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167303.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167304.P2031203534849749010

`A165824(n+1)*A166590(n+1)`
-/

namespace A167304.P2031203534849749010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) * A166590 (n + 1)

end

end A167304.P2031203534849749010

noncomputable section

/-- A167304: Totally multiplicative sequence with a(p) = 3*(p+2) for prime p.

Offset 1, canonical program `A167304.P2031203534849749010`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165824, A166590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167304 (n : ℕ) : ℤ :=
  A167304.P2031203534849749010.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165824, A166590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167304.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167305.P2194561417994562381

`A165825(n+1)*A166590(n+1)`
-/

namespace A167305.P2194561417994562381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (n + 1) * A166590 (n + 1)

end

end A167305.P2194561417994562381

noncomputable section

/-- A167305: Totally multiplicative sequence with a(p) = 4*(p+2) for prime p.

Offset 1, canonical program `A167305.P2194561417994562381`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165825, A166590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167305 (n : ℕ) : ℤ :=
  A167305.P2194561417994562381.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165825, A166590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167305.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167306.P910132846413458269

`A165826(n+1)*A166590(n+1)`
-/

namespace A167306.P910132846413458269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165826 (n + 1) * A166590 (n + 1)

end

end A167306.P910132846413458269

noncomputable section

/-- A167306: Totally multiplicative sequence with a(p) = 5*(p+2) for prime p.

Offset 1, canonical program `A167306.P910132846413458269`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165826, A166590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167306 (n : ℕ) : ℤ :=
  A167306.P910132846413458269.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165826, A166590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167306.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167307.P16545490870235879032

`A165827(n+1)*A166590(n+1)`
-/

namespace A167307.P16545490870235879032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165827 (n + 1) * A166590 (n + 1)

end

end A167307.P16545490870235879032

noncomputable section

/-- A167307: Totally multiplicative sequence with a(p) = 6*(p+2) for prime p.

Offset 1, canonical program `A167307.P16545490870235879032`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165827, A166590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167307 (n : ℕ) : ℤ :=
  A167307.P16545490870235879032.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165827, A166590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167307.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167308.P11709965440896012958

`A165828(n+1)*A166590(n+1)`
-/

namespace A167308.P11709965440896012958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165828 (n + 1) * A166590 (n + 1)

end

end A167308.P11709965440896012958

noncomputable section

/-- A167308: Totally multiplicative sequence with a(p) = 7*(p+2) for prime p.

Offset 1, canonical program `A167308.P11709965440896012958`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165828, A166590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167308 (n : ℕ) : ℤ :=
  A167308.P11709965440896012958.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165828, A166590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167308.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167309.P13045580764982160414

`A165829(n+1)*A166590(n+1)`
-/

namespace A167309.P13045580764982160414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165829 (n + 1) * A166590 (n + 1)

end

end A167309.P13045580764982160414

noncomputable section

/-- A167309: Totally multiplicative sequence with a(p) = 8*(p+2) for prime p.

Offset 1, canonical program `A167309.P13045580764982160414`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165829, A166590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167309 (n : ℕ) : ℤ :=
  A167309.P13045580764982160414.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165829, A166590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167309.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167310.P14212856181125560351

`A165830(n+1)*A166590(n+1)`
-/

namespace A167310.P14212856181125560351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165830 (n + 1) * A166590 (n + 1)

end

end A167310.P14212856181125560351

noncomputable section

/-- A167310: Totally multiplicative sequence with a(p) = 9*(p+2) for prime p.

Offset 1, canonical program `A167310.P14212856181125560351`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165830, A166590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167310 (n : ℕ) : ℤ :=
  A167310.P14212856181125560351.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165830, A166590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167310.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167311.P16369773176810613857

`A165831(n+1)*A166590(n+1)`
-/

namespace A167311.P16369773176810613857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165831 (n + 1) * A166590 (n + 1)

end

end A167311.P16369773176810613857

noncomputable section

/-- A167311: Totally multiplicative sequence with a(p) = 10*(p+2) for prime p.

Offset 1, canonical program `A167311.P16369773176810613857`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165831, A166590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167311 (n : ℕ) : ℤ :=
  A167311.P16369773176810613857.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165831, A166590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167311.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167340.P3802847850510465819

`(n+1)*A166590(n+1)`
-/

namespace A167340.P3802847850510465819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A166590 (n + 1)

end

end A167340.P3802847850510465819

noncomputable section

/-- A167340: Totally multiplicative sequence with a(p) = p*(p+2) = p^2+2p for prime p.

Offset 1, canonical program `A167340.P3802847850510465819`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166590, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167340 (n : ℕ) : ℤ :=
  A167340.P3802847850510465819.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166590, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167340.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167355.P16103125878729455081

`A166586(n+1)*A166590(n+1)`
-/

namespace A167355.P16103125878729455081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166586 (n + 1) * A166590 (n + 1)

end

end A167355.P16103125878729455081

noncomputable section

/-- A167355: Totally multiplicative sequence with a(p) = (p-2)*(p+2) = p^2-4 for prime p.

Offset 1, canonical program `A167355.P16103125878729455081`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166586, A166590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167355 (n : ℕ) : ℤ :=
  A167355.P16103125878729455081.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166586, A166590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167355.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167358.P1480310879331971813

`A166590(n+1)²`
-/

namespace A167358.P1480310879331971813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166590 (n + 1) ^ 2

end

end A167358.P1480310879331971813

noncomputable section

/-- A167358: Totally multiplicative sequence with a(p) = (p+2)^2 = p^2+4p+4 for prime p.

Offset 1, canonical program `A167358.P1480310879331971813`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166590, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167358 (n : ℕ) : ℤ :=
  A167358.P1480310879331971813.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166590, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167358.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167359.P16411272990790649797

`A166590(n+1)*A166589(n+1)`
-/

namespace A167359.P16411272990790649797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166590 (n + 1) * A166589 (n + 1)

end

end A167359.P16411272990790649797

noncomputable section

/-- A167359: Totally multiplicative sequence with a(p) = (p+2)*(p-3) = p^2-p-6 for prime p.

Offset 1, canonical program `A167359.P16411272990790649797`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166589, A166590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167359 (n : ℕ) : ℤ :=
  A167359.P16411272990790649797.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166589, A166590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167359.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A170818.P6198424121185234946

`(n+1)/A072438(n+1)`
-/

namespace A170818.P6198424121185234946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A072438 (n + 1) : ℚ)

end

end A170818.P6198424121185234946

noncomputable section

/-- A170818: a(n) is the product of primes (with multiplicity) of form 4*k+1 that divide n.

Offset 1, canonical program `A170818.P6198424121185234946`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072438, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A170818 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A170818.P6198424121185234946.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072438, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A170818.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171080.P11465979562954710741

`A091137(2*n)/2^(2*n)`
-/

namespace A171080.P11465979562954710741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091137 (2 * n) : ℚ) / (2 ^ (2 * n) : ℚ)

end

end A171080.P11465979562954710741

noncomputable section

/-- A171080: a(n) = Product_{3 <= p <= 2*n+1, p prime} p^floor(2*n / (p - 1)).

Offset 0, canonical program `A171080.P11465979562954710741`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091137, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171080 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A171080.P11465979562954710741.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091137, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171080.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A172282.P2389526718549998927

`A027642(n)²`
-/

namespace A172282.P2389526718549998927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n ^ 2

end

end A172282.P2389526718549998927

noncomputable section

/-- A172282: Squares of Bernoulli number denominators A027642.

Offset 0, canonical program `A172282.P2389526718549998927`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A172282 (n : ℕ) : ℤ :=
  A172282.P2389526718549998927.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A172282.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A173242.P7344851918474023694

`∑[gcd(A141056(n), A164869(n))]`
-/

namespace A173242.P7344851918474023694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141056 n) (A164869 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173242.P7344851918474023694

noncomputable section

/-- A173242: Partial sums of A027642.

Offset 0, canonical program `A173242.P7344851918474023694`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1224 terms. -/
def A173242 (n : ℕ) : ℤ :=
  (A173242.P7344851918474023694.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1224 terms. -/
def A173242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174727.P14657394569459786489

`A091137(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A174727.P14657394569459786489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091137 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A174727.P14657394569459786489

noncomputable section

/-- A174727: a(n) = A091137(n+1)/(n+1).

Offset 0, canonical program `A174727.P14657394569459786489`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091137, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A174727 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A174727.P14657394569459786489.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091137, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A174727.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A176493.P3138652312455790460

`A091137(n)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A176493.P3138652312455790460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091137 n : ℚ) / (n + 1 : ℚ)

end

end A176493.P3138652312455790460

noncomputable section

/-- A176493: A091137(n)/(n+1).

Offset 0, canonical program `A176493.P3138652312455790460`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091137, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176493 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A176493.P3138652312455790460.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091137, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176493.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A177426.P13907797116987976749

`∩[A342028(n+1), A370395(n+1)]`
-/

namespace A177426.P13907797116987976749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177426.P13907797116987976749

noncomputable section

/-- A177426: Average of twin prime pairs with multiple and strictly distinct powers.

Offset 1, canonical program `A177426.P13907797116987976749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A177426 (n : ℕ) : ℤ :=
  (A177426.P13907797116987976749.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A177426.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179781.P966849526946660983

`A000046(n+1)-A308706(n+1)`
-/

namespace A179781.P966849526946660983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000046 (n + 1) - A308706 (n + 1)

end

end A179781.P966849526946660983

noncomputable section

/-- A179781: a(n) = AP(n) is the total number of aperiodic k-palindromes of n, 1 <= k <= n.

Offset 1, canonical program `A179781.P966849526946660983`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000046, A308706, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A179781 (n : ℕ) : ℤ :=
  A179781.P966849526946660983.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000046, A308706, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A179781.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A180750.P8982842106611708069

`A180249(n+1)-A179781(n+1)`
-/

namespace A180750.P8982842106611708069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180249 (n + 1) - A179781 (n + 1)

end

end A180750.P8982842106611708069

noncomputable section

/-- A180750: a(n) = DP(n) is the total number of k-double-palindromes of n, where 2 <= k <= n.

Offset 1, canonical program `A180750.P8982842106611708069`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A179781, A180249, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A180750 (n : ℕ) : ℤ :=
  A180750.P8982842106611708069.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A179781, A180249, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A180750.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181135.P15852532938470310667

`A180322(n+1)-A179781(n+1)`
-/

namespace A181135.P15852532938470310667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180322 (n + 1) - A179781 (n + 1)

end

end A181135.P15852532938470310667

noncomputable section

/-- A181135: a(n) = ADP(n) is the total number of aperiodic k-double-palindromes of n, where 2 <= k <= n.

Offset 1, canonical program `A181135.P15852532938470310667`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A179781, A180322, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A181135 (n : ℕ) : ℤ :=
  A181135.P15852532938470310667.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A179781, A180322, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A181135.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A182922.P12836266675832290144

`n!/A055773(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A182922.P12836266675832290144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A055773 n : ℚ)

end

end A182922.P12836266675832290144

noncomputable section

/-- A182922: a(n) = n! / A055773(n).

Offset 0, canonical program `A182922.P12836266675832290144`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055773, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182922 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A182922.P12836266675832290144.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055773, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182922.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A182923.P17549914405111909947

`A056040(n)/A055773(n)`
-/

namespace A182923.P17549914405111909947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 n : ℚ) / (A055773 n : ℚ)

end

end A182923.P17549914405111909947

noncomputable section

/-- A182923: a(n) = n$ / A055773(n), where n$ denotes the swinging factorial (A056040).

Offset 0, canonical program `A182923.P17549914405111909947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A182923 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A182923.P17549914405111909947.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A182923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195017.P8196782963761862228

`A257991(n+1)-A257992(n+1)`
-/

namespace A195017.P8196782963761862228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (n + 1) - A257992 (n + 1)

end

end A195017.P8196782963761862228

noncomputable section

/-- A195017: If n = Product_{k >= 1} (p_k)^(c_k) where p_k is k-th prime and c_k >= 0 then a(n) = Sum_{k >= 1} c_k*((-1)^(k-1)).

Offset 1, canonical program `A195017.P8196782963761862228`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257991, A257992, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A195017 (n : ℕ) : ℤ :=
  A195017.P8196782963761862228.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257991, A257992, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A195017.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A195338.P8446042870619548961

`A091137(n)/A016116(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A195338.P8446042870619548961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091137 n : ℚ) / (A016116 n : ℚ)

end

end A195338.P8446042870619548961

noncomputable section

/-- A195338: a(n) = A091137(n) / A016116(n).

Offset 0, canonical program `A195338.P8446042870619548961`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091137, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A195338 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A195338.P8446042870619548961.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091137, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A195338.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A208539.P8659955523163642094

`A330632(n+1)+A010674(A028310(n))`
-/

namespace A208539.P8659955523163642094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330632 (n + 1) + A010674 (A028310 n).toNat

end

end A208539.P8659955523163642094

noncomputable section

/-- A208539: Number of n-bead necklaces of 3 colors allowing reversal, with no adjacent beads having the same color.

Offset 1, canonical program `A208539.P8659955523163642094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A208539 (n : ℕ) : ℤ :=
  A208539.P8659955523163642094.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A208539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212791.P5133466975691796848

`gcd(A126930(n+1), A182923(n+1))`
-/

namespace A212791.P5133466975691796848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A126930 (n + 1)) (A182923 (n + 1))

end

end A212791.P5133466975691796848

noncomputable section

/-- A212791: Central binomial coefficient CB(n) purged of all primes exceeding (n+1)/2.

Offset 1, canonical program `A212791.P5133466975691796848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A212791 (n : ℕ) : ℤ :=
  (A212791.P5133466975691796848.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A212791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212792.P12800199492162538154

`A055773((n-1)%2+n+1)`
-/

namespace A212792.P12800199492162538154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055773 (Int.tmod ((n : ℤ) - 1) 2 + (n + 1 : ℤ)).toNat

end

end A212792.P12800199492162538154

noncomputable section

/-- A212792: Product of all primes in the interval ((n+1)/2,n].

Offset 1, canonical program `A212792.P12800199492162538154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 462 terms. -/
def A212792 (n : ℕ) : ℤ :=
  A212792.P12800199492162538154.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 462 terms. -/
def A212792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216639.P8533423297860655305

`A027642(6*n+6)/(42*A010686(n))`
-/

namespace A216639.P8533423297860655305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 (6 * n + 6) : ℚ) / (42 * A010686 n : ℚ)

end

end A216639.P8533423297860655305

noncomputable section

/-- A216639: A027642(6*n+6)/(sequence of period 2:repeat 42,210).

Offset 0, canonical program `A216639.P8533423297860655305`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A216639 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A216639.P8533423297860655305.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A216639.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A219196.P3293474457564128278

`A027642(A131577(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A219196.P3293474457564128278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (A131577 n).toNat

end

end A219196.P3293474457564128278

noncomputable section

/-- A219196: A subsequence of the denominators of the Bernoulli numbers: a(n) = A027642(A131577(n)).

Offset 0, canonical program `A219196.P3293474457564128278`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219196 (n : ℕ) : ℤ :=
  A219196.P3293474457564128278.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219196.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A224479.P1414813410862480078

`sqrt(A092287(n)/n!)`
-/

namespace A224479.P1414813410862480078
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A092287 n : ℚ) / (Nat.factorial n : ℚ) : ℝ)

end

end A224479.P1414813410862480078

noncomputable section

/-- A224479: a(n) = Product_{k=1..n} Product_{i=1..k-1} gcd(k,i).

Offset 0, canonical program `A224479.P1414813410862480078`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092287, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A224479 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A224479.P1414813410862480078.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092287, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A224479.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A224497.P9599545819491647864

`sqrt(floor(n/2)!*A224479(n))`
-/

namespace A224497.P9599545819491647864
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((Nat.factorial ⌊(n : ℚ) / 2⌋.toNat : ℤ) * A224479 n : ℝ)

end

end A224497.P9599545819491647864

noncomputable section

/-- A224497: a(n) = sqrt(floor(n/2)! * Product_{k=1..n} Product_{i=1..k-1} gcd(k,i)).

Offset 0, canonical program `A224497.P9599545819491647864`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A224479, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A224497 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A224497.P9599545819491647864.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A224479, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A224497.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A225821.P8890908099529802054

`gcd(n+1, A027642(n+1))`
-/

namespace A225821.P8890908099529802054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A027642 (n + 1))

end

end A225821.P8890908099529802054

noncomputable section

/-- A225821: a(n) = Product_{p | p is prime and p, p-1 both divide n}.

Offset 1, canonical program `A225821.P8890908099529802054`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A225821 (n : ℕ) : ℤ :=
  (A225821.P8890908099529802054.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A225821.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A226038.P4986788089521301595

`record[n*A324290(n+1)]`
-/

namespace A226038.P4986788089521301595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A324290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226038.P4986788089521301595

noncomputable section

/-- A226038: Numbers k such that there are no primes p which divide k+1 and p-1 does not divide k.

Offset 1, canonical program `A226038.P4986788089521301595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9787 terms. -/
def A226038 (n : ℕ) : ℤ :=
  A226038.P4986788089521301595.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9787 terms. -/
def A226038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226872.P10953266117754757051

`eq[A141310(n), A225821(n+1)]+1`
-/

namespace A226872.P10953266117754757051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A226872.P10953266117754757051

noncomputable section

/-- A226872: 1 together with even numbers n >= 2 such that 1^n + 2^n + 3^n + ... + n^n == n/2 (mod n).

Offset 1, canonical program `A226872.P10953266117754757051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2925 terms. -/
def A226872 (n : ℕ) : ℤ :=
  (A226872.P10953266117754757051.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2925 terms. -/
def A226872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226957.P17099637292420702484

`A001221(2*A225821(n+1))`
-/

namespace A226957.P17099637292420702484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * A225821 (n + 1)).toNat

end

end A226957.P17099637292420702484

noncomputable section

/-- A226957: Number of prime divisors p of 2n such that p-1 divides n.

Offset 1, canonical program `A226957.P17099637292420702484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226957 (n : ℕ) : ℤ :=
  A226957.P17099637292420702484.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226957.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227270.P54051348116262805

`record[A003557(n+1)*A225821(A225821(n+1))]`
-/

namespace A227270.P54051348116262805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A225821 (A225821 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227270.P54051348116262805

noncomputable section

/-- A227270: Numbers m such that Sum_{i= 1..k} 1/d(i) + Product_{i= 1..k} 1/d(i) = 1, where d(i) are the k prime distinct divisors of m.

Offset 1, canonical program `A227270.P54051348116262805`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A227270 (n : ℕ) : ℤ :=
  A227270.P54051348116262805.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A227270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228838.P3420866466249862964

`A164877(n)/2`
-/

namespace A228838.P3420866466249862964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164877 n : ℚ) / 2

end

end A228838.P3420866466249862964

noncomputable section

/-- A228838: a(n) = n * A002445(n).

Offset 0, canonical program `A228838.P3420866466249862964`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A164877, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228838 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A228838.P3420866466249862964.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A164877, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228838.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A228869.P15727948815215387731

`∪[2*n+1, A226872(n+1)]`
-/

namespace A228869.P15727948815215387731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A228869.P15727948815215387731

noncomputable section

/-- A228869: Numbers k such that 2 * (1^k + 2^k + 3^k + ... + k^k) == 0 (mod k).

Offset 1, canonical program `A228869.P15727948815215387731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228869 (n : ℕ) : ℤ :=
  (A228869.P15727948815215387731.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229302.P15980075922969714648

`eq[2, A226957(6*(n+1))]+1`
-/

namespace A229302.P15980075922969714648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226957 (6 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A229302.P15980075922969714648

noncomputable section

/-- A229302: Numbers n such that A031971(6*n) == n (mod 6*n).

Offset 1, canonical program `A229302.P15980075922969714648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 533 terms. -/
def A229302 (n : ℕ) : ℤ :=
  (A229302.P15980075922969714648.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 533 terms. -/
def A229302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229303.P11807489810384231319

`A226872(n+2)/2`
-/

namespace A229303.P11807489810384231319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226872 (n + 2) : ℚ) / 2

end

end A229303.P11807489810384231319

noncomputable section

/-- A229303: Numbers m such that A031971(2*m) == m (mod 2*m).

Offset 1, canonical program `A229303.P11807489810384231319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A229303 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A229303.P11807489810384231319.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A229303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229306.P18317607824200291430

`lt[2, A226957(6*(n+1))]+1`
-/

namespace A229306.P18317607824200291430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226957 (6 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A229306.P18317607824200291430

noncomputable section

/-- A229306: Numbers n such that A031971(6*n) <> n (mod 6*n).

Offset 1, canonical program `A229306.P18317607824200291430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A229306 (n : ℕ) : ℤ :=
  (A229306.P18317607824200291430.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A229306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230486.P14651634677920879007

`lt[A152271(n+1), A170818(n+1)]+1`
-/

namespace A230486.P14651634677920879007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A230486.P14651634677920879007

noncomputable section

/-- A230486: Numbers n such that n^n is representable as the sum of two nonzero squares.

Offset 1, canonical program `A230486.P14651634677920879007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A230486 (n : ℕ) : ℤ :=
  (A230486.P14651634677920879007.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A230486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231810.P5537344332030854373

`eq[2, gcd(2*n, A165886(n))]`
-/

namespace A231810.P5537344332030854373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) (A165886 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231810.P5537344332030854373

noncomputable section

/-- A231810: Numbers k such that p-1 does not divide k+1 for every prime divisor p of k.

Offset 1, canonical program `A231810.P5537344332030854373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A231810 (n : ℕ) : ℤ :=
  (A231810.P5537344332030854373.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A231810.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232221.P6150882525445185730

`∑[A077068(n+1)-A077065(n+1)]`
-/

namespace A232221.P6150882525445185730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077068 (n + 1) - A077065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232221.P6150882525445185730

noncomputable section

/-- A232221: a(n) = Sum_{i=1..n} (A077068(i) - A077065(i)).

Offset 1, canonical program `A232221.P6150882525445185730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232221 (n : ℕ) : ℤ :=
  A232221.P6150882525445185730.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232342.P12753495415627519153

`A077068(n+1)-A077065(n+1)`
-/

namespace A232342.P12753495415627519153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077068 (n + 1) - A077065 (n + 1)

end

end A232342.P12753495415627519153

noncomputable section

/-- A232342: A077068(n) minus A077065(n).

Offset 1, canonical program `A232342.P12753495415627519153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232342 (n : ℕ) : ℤ :=
  A232342.P12753495415627519153.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233578.P4142982616285713528

`eq[3, dr(lcm(5, A027642(n)))]`
-/

namespace A233578.P4142982616285713528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.lcm 5 (A027642 n) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233578.P4142982616285713528

noncomputable section

/-- A233578: n >= 2 such that the denominator/6 of Bernoulli(n) is congruent to {1, 5, 7, 13 or 19} modulo 30.

Offset 1, canonical program `A233578.P4142982616285713528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3018 terms. -/
def A233578 (n : ℕ) : ℤ :=
  (A233578.P4142982616285713528.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3018 terms. -/
def A233578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233579.P2841553801707049944

`eq[6, dr(lcm(5, A027642(n)))]`
-/

namespace A233579.P2841553801707049944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.lcm 5 (A027642 n) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233579.P2841553801707049944

noncomputable section

/-- A233579: Numbers n such that the denominator/6 of Bernoulli(n) is congruent to {11, 17, 23, 25 or 29} modulo 30.

Offset 1, canonical program `A233579.P2841553801707049944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1982 terms. -/
def A233579 (n : ℕ) : ℤ :=
  (A233579.P2841553801707049944.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1982 terms. -/
def A233579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233973.P1785584589492776699

`A232221(n+1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A233973.P1785584589492776699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232221 (n + 1) : ℚ) / 4

end

end A233973.P1785584589492776699

noncomputable section

/-- A233973: a(n) = A232221(n)/4.

Offset 1, canonical program `A233973.P1785584589492776699`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A232221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A233973 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A233973.P1785584589492776699.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A232221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A233973.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A235224.P9540919302901513135

`∑[char[A300951(n)]]`
-/

namespace A235224.P9540919302901513135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300951 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235224.P9540919302901513135

noncomputable section

/-- A235224: a(0) = 0, and for n > 0, a(n) = largest k such that A002110(k-1) <= n, where A002110(k) gives the k-th primorial number.

Offset 0, canonical program `A235224.P9540919302901513135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235224 (n : ℕ) : ℤ :=
  (A235224.P9540919302901513135.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238087.P1452149260603672767

`A129779(n+2)/A006954(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A238087.P1452149260603672767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129779 (n + 2) : ℚ) / (A006954 n : ℚ)

end

end A238087.P1452149260603672767

noncomputable section

/-- A238087: A129779(n+2)/A006954(n).

Offset 0, canonical program `A238087.P1452149260603672767`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A238087 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A238087.P1452149260603672767.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A238087.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A253235.P7507897381358703633

`comp[A342256(n+1)-1]+1`
-/

namespace A253235.P7507897381358703633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342256 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A253235.P7507897381358703633

noncomputable section

/-- A253235: Numbers k such that the k-th cyclotomic polynomial has no root mod p for all primes p <= k.

Offset 1, canonical program `A253235.P7507897381358703633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253235 (n : ℕ) : ℤ :=
  (A253235.P7507897381358703633.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267113.P11830865160452597695

`A267116(A170818(n+1))`
-/

namespace A267113.P11830865160452597695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267116 (A170818 (n + 1)).toNat

end

end A267113.P11830865160452597695

noncomputable section

/-- A267113: Bitwise-OR of the exponents of all 4k+1 primes in the prime factorization of n.

Offset 1, canonical program `A267113.P11830865160452597695`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A170818, A267116, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A267113 (n : ℕ) : ℤ :=
  A267113.P11830865160452597695.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A170818, A267116, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A267113.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A280187.P1686758095884757779

`p?[A226872(n+2)+1]²-p?[A226872(n+2)+1]`
-/

namespace A280187.P1686758095884757779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226872 (n + 2) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226872 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 - f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A280187.P1686758095884757779

noncomputable section

/-- A280187: Numbers n such that 2 * (1^n + 2^n + 3^n + ... + n^n) is not 0 (mod n), but 2 * (1^d + 2^d + 3^d + ... + d^d) is 0 (mod d) for each other d | n.

Offset 1, canonical program `A280187.P1686758095884757779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1572 terms. -/
def A280187 (n : ℕ) : ℤ :=
  A280187.P1686758095884757779.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1572 terms. -/
def A280187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285068.P5736332031578240053

`A157800(n)/3^n`
-/

namespace A285068.P5736332031578240053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157800 n : ℚ) / (3 ^ n : ℚ)

end

end A285068.P5736332031578240053

noncomputable section

/-- A285068: Denominators of the generalized Bernoulli numbers B[3,1] = 3^n*B(n, 1/3).

Offset 0, canonical program `A285068.P5736332031578240053`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A157800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A285068 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A285068.P5736332031578240053.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A157800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A285068.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286361.P14424517213861255559

`A046523(A170818(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286361.P14424517213861255559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A170818 (n + 1)).toNat

end

end A286361.P14424517213861255559

noncomputable section

/-- A286361: Least number with the same prime signature as {the largest divisor of n with only prime factors of the form 4k+1} has: a(n) = A046523(A170818(n)).

Offset 1, canonical program `A286361.P14424517213861255559`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A170818, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286361 (n : ℕ) : ℤ :=
  A286361.P14424517213861255559.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A170818, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286361.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A288872.P1540144498736755834

`lcm(5, A027642(n))/5`
-/

namespace A288872.P1540144498736755834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 5 (A027642 n) : ℚ) / 5

end

end A288872.P1540144498736755834

noncomputable section

/-- A288872: Denominators for generalized Bernoulli numbers B[5,j](n), for j=1..4, n >= 0.

Offset 0, canonical program `A288872.P1540144498736755834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288872 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A288872.P1540144498736755834.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296210.P2007591430484132709

`char[A104210(n+1)-1]`
-/

namespace A296210.P2007591430484132709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104210 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A296210.P2007591430484132709

noncomputable section

/-- A296210: Characteristic function for A104210: a(n) = 1 if n is divisible by at least 2 consecutive primes, 0 otherwise.

Offset 1, canonical program `A296210.P2007591430484132709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296210 (n : ℕ) : ℤ :=
  (A296210.P2007591430484132709.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300164.P1924434180453968299

`A054977(n)+A071557(n+1)²`
-/

namespace A300164.P1924434180453968299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + A071557 (n + 1) ^ 2

end

end A300164.P1924434180453968299

noncomputable section

/-- A300164: Numbers of the form n^2+1 not expressible as j^2+k^2 with j>k>1.

Offset 1, canonical program `A300164.P1924434180453968299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1302 terms. -/
def A300164 (n : ℕ) : ℤ :=
  A300164.P1924434180453968299.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1302 terms. -/
def A300164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306930.P9649045531916305778

`p?[A170818(n+1)+A047495(n+1)]`
-/

namespace A306930.P9649045531916305778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (n + 1) + A047495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306930.P9649045531916305778

noncomputable section

/-- A306930: Primes p of the form 8*k +- 3 such that p-1 has no prime divisor 4*t + 1.

Offset 1, canonical program `A306930.P9649045531916305778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 365 terms. -/
def A306930 (n : ℕ) : ℤ :=
  A306930.P9649045531916305778.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 365 terms. -/
def A306930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312961.P11569695398906220671

`abs(A008592(n)-A315516(n))`
-/

namespace A312961.P11569695398906220671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315516 n|

end

end A312961.P11569695398906220671

noncomputable section

/-- A312961: Coordination sequence Gal.6.152.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312961.P11569695398906220671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. -/
def A312961 (n : ℕ) : ℤ :=
  A312961.P11569695398906220671.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. -/
def A312961.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313933.P2526088647999018062

`A315345(n)-A134667(n)`
-/

namespace A313933.P2526088647999018062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315345 n - A134667 n

end

end A313933.P2526088647999018062

noncomputable section

/-- A313933: Coordination sequence Gal.6.658.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313933.P2526088647999018062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2189 terms. -/
def A313933 (n : ℕ) : ℤ :=
  A313933.P2526088647999018062.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2189 terms. -/
def A313933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314179.P1720842195241523705

`A313118(n)+A313933(n)-A312562(n)`
-/

namespace A314179.P1720842195241523705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313118 n + (A313933 n - A312562 n)

end

end A314179.P1720842195241523705

noncomputable section

/-- A314179: Coordination sequence Gal.5.316.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314179.P1720842195241523705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2189 terms. -/
def A314179 (n : ℕ) : ℤ :=
  A314179.P1720842195241523705.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2189 terms. -/
def A314179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316524.P1955025122253698323

`A344616(n+1)*A344617(n+1)`
-/

namespace A316524.P1955025122253698323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (n + 1) * A344617 (n + 1)

end

end A316524.P1955025122253698323

noncomputable section

/-- A316524: Signed sum over the prime indices of n.

Offset 1, canonical program `A316524.P1955025122253698323`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344616, A344617, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A316524 (n : ℕ) : ℤ :=
  A316524.P1955025122253698323.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344616, A344617, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A316524.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A317510.P13699733993965501497

`floor(A194593(n+4)/3)`
-/

namespace A317510.P13699733993965501497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A194593 (n + 4) : ℚ) / 3⌋

end

end A317510.P13699733993965501497

noncomputable section

/-- A317510: Numbers (4p+1)/3 where p is a Sophie Germain prime p > 3.

Offset 1, canonical program `A317510.P13699733993965501497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A317510 (n : ℕ) : ℤ :=
  A317510.P13699733993965501497.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A317510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319630.P6743274893116773440

`eq[0, A296210(n+1)]+1`
-/

namespace A319630.P6743274893116773440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296210 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A319630.P6743274893116773440

noncomputable section

/-- A319630: Positive numbers that are not divisible by two consecutive prime numbers.

Offset 1, canonical program `A319630.P6743274893116773440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319630 (n : ℕ) : ℤ :=
  (A319630.P6743274893116773440.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322354.P2717141325166988137

`gcd(A007947(n+1), A166590(A007947(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322354.P2717141325166988137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007947 (n + 1)) (A166590 (A007947 (n + 1)).toNat)

end

end A322354.P2717141325166988137

noncomputable section

/-- A322354: Greatest common divisor of product p and product (p+2), where p ranges over distinct prime divisors of n; a(n) = gcd(A007947(n), A166590(A007947(n))).

Offset 1, canonical program `A322354.P2717141325166988137`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A166590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A322354 (n : ℕ) : ℤ :=
  (A322354.P2717141325166988137.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A166590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A322354.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A322362.P1867814400525235391

`gcd(n+1, A166590(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322362.P1867814400525235391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A166590 (n + 1))

end

end A322362.P1867814400525235391

noncomputable section

/-- A322362: a(n) = gcd(n, A166590(n)), where A166590 is completely multiplicative with a(p) = p+2 for prime p.

Offset 1, canonical program `A322362.P1867814400525235391`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166590, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322362 (n : ℕ) : ℤ :=
  (A322362.P1867814400525235391.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166590, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322362.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324369.P4863802651050115915

`gcd(A007947(n+1), A363596(n))`
-/

namespace A324369.P4863802651050115915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007947 (n + 1)) (A363596 n)

end

end A324369.P4863802651050115915

noncomputable section

/-- A324369: Product of all primes p dividing n such that the sum of the base p digits of n is at least p, or 1 if no such prime.

Offset 1, canonical program `A324369.P4863802651050115915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9240 terms. -/
def A324369 (n : ℕ) : ℤ :=
  (A324369.P4863802651050115915.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9240 terms. -/
def A324369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324371.P793059533806673534

`A007947(n+1)/A324369(n+1)`
-/

namespace A324371.P793059533806673534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A324369 (n + 1) : ℚ)

end

end A324371.P793059533806673534

noncomputable section

/-- A324371: Product of all primes p dividing n such that the sum of the base p digits of n is less than p, or 1 if no such prime.

Offset 1, canonical program `A324371.P793059533806673534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324371 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A324371.P793059533806673534.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324455.P2567094407675781891

`1+lt[1, A324369(n+1)]`
-/

namespace A324455.P2567094407675781891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324369 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A324455.P2567094407675781891

noncomputable section

/-- A324455: Numbers m > 1 such that there exists a divisor g > 1 of m which satisfies s_g(m) >= g.

Offset 1, canonical program `A324455.P2567094407675781891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 743 terms. -/
def A324455 (n : ℕ) : ℤ :=
  (A324455.P2567094407675781891.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 743 terms. -/
def A324455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324457.P5700254826729189197

`eq[1, A324371(n+2)]+2`
-/

namespace A324457.P5700254826729189197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324371 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A324457.P5700254826729189197

noncomputable section

/-- A324457: Numbers m > 1 such that every prime divisor p of m satisfies s_p(m) >= p.

Offset 1, canonical program `A324457.P5700254826729189197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A324457 (n : ℕ) : ℤ :=
  (A324457.P5700254826729189197.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A324457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324891.P2039204170114104965

`A000203(A170818(n+1))`
-/

namespace A324891.P2039204170114104965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A170818 (n + 1)).toNat

end

end A324891.P2039204170114104965

noncomputable section

/-- A324891: a(n) = sigma(A170818(n)), where A170818(n) is the part of n composed of prime factors of form 4k+1.

Offset 1, canonical program `A324891.P2039204170114104965`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A170818, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324891 (n : ℕ) : ℤ :=
  A324891.P2039204170114104965.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A170818, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324891.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324893.P12587360797117924807

`A000593(n+1)/A324891(n+1)`
-/

namespace A324893.P12587360797117924807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000593 (n + 1) : ℚ) / (A324891 (n + 1) : ℚ)

end

end A324893.P12587360797117924807

noncomputable section

/-- A324893: a(n) = sigma(A097706(n)), where A097706(n) is the part of n composed of prime factors of form 4k+3.

Offset 1, canonical program `A324893.P12587360797117924807`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324891, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324893 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A324893.P12587360797117924807.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324891, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324893.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325160.P4590925138915238216

`filter[A319630(n+1), A008966(#)]`
-/

namespace A325160.P4590925138915238216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A325160.P4590925138915238216

noncomputable section

/-- A325160: Products of distinct, non-consecutive primes. Squarefree numbers not divisible by any two consecutive primes.

Offset 1, canonical program `A325160.P4590925138915238216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6822 terms. -/
def A325160 (n : ℕ) : ℤ :=
  A325160.P4590925138915238216.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6822 terms. -/
def A325160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325161.P4005082633071071506

`filter[A325160(n+1), A005171(#)]`
-/

namespace A325161.P4005082633071071506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A325161.P4005082633071071506

noncomputable section

/-- A325161: Nonprime squarefree numbers not divisible by any two consecutive primes.

Offset 1, canonical program `A325161.P4005082633071071506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7797 terms. -/
def A325161 (n : ℕ) : ℤ :=
  A325161.P4005082633071071506.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7797 terms. -/
def A325161.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325698.P12350898067219436297

`eq[0, A195017(n+1)]+1`
-/

namespace A325698.P12350898067219436297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325698.P12350898067219436297

noncomputable section

/-- A325698: Numbers with as many even as odd prime indices, counted with multiplicity.

Offset 1, canonical program `A325698.P12350898067219436297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9460 terms. -/
def A325698 (n : ℕ) : ℤ :=
  (A325698.P12350898067219436297.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9460 terms. -/
def A325698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326579.P2532843569177396573

`lcm(n, A027642(A004442(n)))`
-/

namespace A326579.P2532843569177396573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A027642 (A004442 n).toNat)

end

end A326579.P2532843569177396573

noncomputable section

/-- A326579: a(n) = n*denominator(n*Bernoulli(n-1)) for n >= 1 and a(0) = 0.

Offset 0, canonical program `A326579.P2532843569177396573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326579 (n : ℕ) : ℤ :=
  (A326579.P2532843569177396573.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326580.P17319892627490507325

`A326579(2*n+1)`
-/

namespace A326580.P17319892627490507325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326579 (2 * n + 1)

end

end A326580.P17319892627490507325

noncomputable section

/-- A326580: a(n) = (2*n+1)*denominator((2*n+1)*Bernoulli(2*n)).

Offset 0, canonical program `A326580.P17319892627490507325`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326579, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326580 (n : ℕ) : ℤ :=
  A326580.P17319892627490507325.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326579, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326580.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327564.P3885498086889652874

`A003968(n+1)/A007947(n+1)`
-/

namespace A327564.P3885498086889652874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003968 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ)

end

end A327564.P3885498086889652874

noncomputable section

/-- A327564: If n = Product (p_j^k_j) then a(n) = Product ((p_j + 1)^(k_j - 1)).

Offset 1, canonical program `A327564.P3885498086889652874`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003968, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A327564 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A327564.P3885498086889652874.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003968, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A327564.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327936.P17472651915830020334

`∏{p}[A342007(n+1), #]`
-/

namespace A327936.P17472651915830020334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342007 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A327936.P17472651915830020334

noncomputable section

/-- A327936: Multiplicative with a(p^e) = p if e >= p, otherwise 1.

Offset 1, canonical program `A327936.P17472651915830020334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327936 (n : ℕ) : ℤ :=
  (A327936.P17472651915830020334.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328620.P17305493884034460707

`A235224(n)-A267263(n)`
-/

namespace A328620.P17305493884034460707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 n - A267263 n

end

end A328620.P17305493884034460707

noncomputable section

/-- A328620: Number of nonleading zeros in primorial base expansion of n, a(0) = 0 by convention.

Offset 0, canonical program `A328620.P17305493884034460707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328620 (n : ℕ) : ℤ :=
  A328620.P17305493884034460707.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340368.P4585367465747076282

`A173557(n+1)*A327564(n+1)`
-/

namespace A340368.P4585367465747076282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1) * A327564 (n + 1)

end

end A340368.P4585367465747076282

noncomputable section

/-- A340368: Multiplicative with a(p^e) = (p - 1) * (p + 1)^(e-1).

Offset 1, canonical program `A340368.P4585367465747076282`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, A327564, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340368 (n : ℕ) : ℤ :=
  A340368.P4585367465747076282.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, A327564, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340368.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341997.P13761577682504290083

`A327936(A003415(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A341997.P13761577682504290083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327936 (A003415 (n + 2)).toNat

end

end A341997.P13761577682504290083

noncomputable section

/-- A341997: a(n) = A327936(A003415(n)).

Offset 2, canonical program `A341997.P13761577682504290083`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A327936, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341997 (n : ℕ) : ℤ :=
  A341997.P13761577682504290083.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A327936, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341997.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A346697.P6768469797168310646

`A316524(n+1)+A346698(n+1)`
-/

namespace A346697.P6768469797168310646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (n + 1) + A346698 (n + 1)

end

end A346697.P6768469797168310646

noncomputable section

/-- A346697: Sum of the odd-indexed parts (odd bisection) of the multiset of prime indices of n.

Offset 1, canonical program `A346697.P6768469797168310646`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A316524, A346698, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A346697 (n : ℕ) : ℤ :=
  A346697.P6768469797168310646.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A316524, A346698, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A346697.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347121.P10777423432329443113

`A347136(n+1)-2*(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347121.P10777423432329443113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347136 (n + 1) - (2 * (n + 1) : ℤ)

end

end A347121.P10777423432329443113

noncomputable section

/-- A347121: a(n) = A347136(n) - 2*n.

Offset 1, canonical program `A347121.P10777423432329443113`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347136, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347121 (n : ℕ) : ℤ :=
  A347121.P10777423432329443113.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347136, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347121.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347122.P16124771186689615703

`A347137(n+1)-2*A000010(n+1)`
-/

namespace A347122.P16124771186689615703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347137 (n + 1) - 2 * A000010 (n + 1)

end

end A347122.P16124771186689615703

noncomputable section

/-- A347122: Möbius transform of A347121.

Offset 1, canonical program `A347122.P16124771186689615703`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A347137, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347122 (n : ℕ) : ℤ :=
  A347122.P16124771186689615703.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A347137, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347122.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348030.P17211473318799311416

`A003968(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348030.P17211473318799311416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003968 (n + 1) - (n + 1 : ℤ)

end

end A348030.P17211473318799311416

noncomputable section

/-- A348030: a(n) = A003968(n) - n, where A003968 is multiplicative with a(p^e) = p*(p+1)^(e-1).

Offset 1, canonical program `A348030.P17211473318799311416`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003968, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348030 (n : ℕ) : ℤ :=
  A348030.P17211473318799311416.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003968, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348030.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348036.P9346987634214526733

`gcd(n+1, A003968(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348036.P9346987634214526733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A003968 (n + 1))

end

end A348036.P9346987634214526733

noncomputable section

/-- A348036: a(n) = gcd(n, A003968(n)), where A003968 is multiplicative with a(p^e) = p*(p+1)^(e-1).

Offset 1, canonical program `A348036.P9346987634214526733`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003968, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348036 (n : ℕ) : ℤ :=
  (A348036.P9346987634214526733.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003968, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348036.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348038.P10301194583297864518

`A003968(n+1)/A348036(n+1)`
-/

namespace A348038.P10301194583297864518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003968 (n + 1) : ℚ) / (A348036 (n + 1) : ℚ)

end

end A348038.P10301194583297864518

noncomputable section

/-- A348038: a(n) = A003968(n) / gcd(n, A003968(n)), where A003968 is multiplicative with a(p^e) = p*(p+1)^(e-1).

Offset 1, canonical program `A348038.P10301194583297864518`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003968, A348036, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348038 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348038.P10301194583297864518.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003968, A348036, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348038.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348039.P14550709552660372376

`gcd(A003557(n+1), A327564(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348039.P14550709552660372376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003557 (n + 1)) (A327564 (n + 1))

end

end A348039.P14550709552660372376

noncomputable section

/-- A348039: a(n) = gcd(A003557(n), A327564(n)).

Offset 1, canonical program `A348039.P14550709552660372376`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A327564, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348039 (n : ℕ) : ℤ :=
  (A348039.P14550709552660372376.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A327564, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348039.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348499.P15953231188043729446

`record[gcd(n+1, A003968(n+1))]`
-/

namespace A348499.P15953231188043729446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A003968 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348499.P15953231188043729446

noncomputable section

/-- A348499: Numbers k such that A003968(k) is a multiple of k, where A003968 is multiplicative with a(p^e) = p*(p+1)^(e-1).

Offset 1, canonical program `A348499.P15953231188043729446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6242 terms. -/
def A348499 (n : ℕ) : ℤ :=
  (A348499.P15953231188043729446.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6242 terms. -/
def A348499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348971.P11156141318395468406

`A003968(n+1)-A000010(n+1)`
-/

namespace A348971.P11156141318395468406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003968 (n + 1) - A000010 (n + 1)

end

end A348971.P11156141318395468406

noncomputable section

/-- A348971: a(n) = Product(p*(p+1)^(e-1)) - Product((p-1)*p^(e-1)), when n = Product(p^e), with p primes, and e their exponents.

Offset 1, canonical program `A348971.P11156141318395468406`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A003968, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348971 (n : ℕ) : ℤ :=
  A348971.P11156141318395468406.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A003968, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348971.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349141.P2326115559744657206

`∑{d}[n+1, #*A348971((n+1)/#)]`
-/

namespace A349141.P2326115559744657206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A348971 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349141.P2326115559744657206

noncomputable section

/-- A349141: a(n) = Sum_{d|n} phi(n/d) * A348507(d), where A348507(n) = A003959(n) - n, and A003959 is fully multiplicative with a(p) = (p+1).

Offset 1, canonical program `A349141.P2326115559744657206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349141 (n : ℕ) : ℤ :=
  A349141.P2326115559744657206.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349141.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349171.P4420363583333488221

`A018804(n+1)+A349141(n+1)`
-/

namespace A349171.P4420363583333488221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (n + 1) + A349141 (n + 1)

end

end A349171.P4420363583333488221

noncomputable section

/-- A349171: a(n) = Sum_{d|n} phi(d) * A003959(n/d), where A003959 is fully multiplicative with a(p) = (p+1), and phi is Euler totient function.

Offset 1, canonical program `A349171.P4420363583333488221`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, A349141, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349171 (n : ℕ) : ℤ :=
  A349171.P4420363583333488221.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, A349141, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349171.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349173.P16569106588395743123

`∑{d}[n+1, A003968(#)*A319684((n+1)/#)]`
-/

namespace A349173.P16569106588395743123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003968 d * A319684 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349173.P16569106588395743123

noncomputable section

/-- A349173: Dirichlet convolution of A003415 with A003959, where A003415 is the arithmetic derivative and A003959 is fully multiplicative with a(p) = (p+1).

Offset 1, canonical program `A349173.P16569106588395743123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349173 (n : ℕ) : ℤ :=
  A349173.P16569106588395743123.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349356.P8236317292447045673

`∑{d}[n+1, A003968(#)*A276833((n+1)/#)]`
-/

namespace A349356.P8236317292447045673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003968 d * A276833 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349356.P8236317292447045673

noncomputable section

/-- A349356: Dirichlet convolution of A003959 with A097945 (Dirichlet inverse of A003958), where A003958 and A003959 are fully multiplicative with a(p) = p-1 and p+1 respectively.

Offset 1, canonical program `A349356.P8236317292447045673`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349356 (n : ℕ) : ℤ :=
  A349356.P8236317292447045673.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349357.P18109663131693334848

`A349355(n+1)+A349356(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349357.P18109663131693334848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349355 (n + 1) + A349356 (n + 1)

end

end A349357.P18109663131693334848

noncomputable section

/-- A349357: a(n) = A349355(n) + A349356(n).

Offset 1, canonical program `A349357.P18109663131693334848`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349355, A349356, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349357 (n : ℕ) : ℤ :=
  A349357.P18109663131693334848.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349355, A349356, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349357.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350593.P13666250291163921889

`A164977(n+2)+A109531(C(2, n))`
-/

namespace A350593.P13666250291163921889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164977 (n + 2) + A109531 (Nat.choose 2 n)

end

end A350593.P13666250291163921889

noncomputable section

/-- A350593: Numbers k such that tau(k) + tau(k+1) = 6, where tau is the number of divisors function A000005.

Offset 1, canonical program `A350593.P13666250291163921889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A350593 (n : ℕ) : ℤ :=
  A350593.P13666250291163921889.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A350593.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351533.P2463827929453727071

`9*A191218(n+1)`
-/

namespace A351533.P2463827929453727071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A191218 (n + 1)

end

end A351533.P2463827929453727071

noncomputable section

/-- A351533: Odd numbers k that are multiples of 3 and for which sigma(k) is congruent to 2 modulo 4.

Offset 1, canonical program `A351533.P2463827929453727071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351533 (n : ℕ) : ℤ :=
  A351533.P2463827929453727071.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351535.P6252918987055399966

`filter[A191218(n+1), A187074(#)]`
-/

namespace A351535.P6252918987055399966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A351535.P6252918987055399966

noncomputable section

/-- A351535: Odd numbers k that are not multiples of 3 and for which sigma(k) is congruent to 2 modulo 4.

Offset 1, canonical program `A351535.P6252918987055399966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5523 terms. -/
def A351535 (n : ℕ) : ℤ :=
  A351535.P6252918987055399966.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5523 terms. -/
def A351535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353370.P14269787339324025173

`char[A325698(n+1)-1]`
-/

namespace A353370.P14269787339324025173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325698 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353370.P14269787339324025173

noncomputable section

/-- A353370: a(n) = 1 if the prime factorization of n contains as many even as odd prime indices, when counted with multiplicity, otherwise 0.

Offset 1, canonical program `A353370.P14269787339324025173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353370 (n : ℕ) : ℤ :=
  (A353370.P14269787339324025173.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353372.P6208270260937475359

`∑{d}[n+1, A353370(#)]`
-/

namespace A353372.P6208270260937475359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353370 d

end

end A353372.P6208270260937475359

noncomputable section

/-- A353372: Inverse Möbius transform of A353370.

Offset 1, canonical program `A353372.P6208270260937475359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353372 (n : ℕ) : ℤ :=
  A353372.P6208270260937475359.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353559.P9248086909526130647

`char[A348499(n+1)-1]`
-/

namespace A353559.P9248086909526130647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348499 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353559.P9248086909526130647

noncomputable section

/-- A353559: a(n) = 1 if A003968(n) is a multiple of n, where A003968 is multiplicative with a(p^e) = p*(p+1)^(e-1), otherwise 0.

Offset 1, canonical program `A353559.P9248086909526130647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353559 (n : ℕ) : ℤ :=
  (A353559.P9248086909526130647.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356173.P8720124054726278930

`1-A296210(n+1)`
-/

namespace A356173.P8720124054726278930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A296210 (n + 1)

end

end A356173.P8720124054726278930

noncomputable section

/-- A356173: a(n) = 1 if n is not divisible by two consecutive prime numbers, otherwise 0.

Offset 1, canonical program `A356173.P8720124054726278930`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A296210, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356173 (n : ℕ) : ℤ :=
  A356173.P8720124054726278930.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A296210, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356173.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358215.P6211785216042119930

`eq[1, A341997(n+2)]+2`
-/

namespace A358215.P6211785216042119930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341997 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A358215.P6211785216042119930

noncomputable section

/-- A358215: Numbers k for which there is no prime p such that p^p divides the arithmetic derivative of k, A003415(k).

Offset 1, canonical program `A358215.P6211785216042119930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358215 (n : ℕ) : ℤ :=
  (A358215.P6211785216042119930.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358216.P4171956212798034297

`∑{d}[n+1, A327936(#)]`
-/

namespace A358216.P4171956212798034297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327936 d

end

end A358216.P4171956212798034297

noncomputable section

/-- A358216: Inverse Möbius transform of A327936, where A327936 is multiplicative with a(p^e) = p if e >= p, otherwise 1.

Offset 1, canonical program `A358216.P4171956212798034297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358216 (n : ℕ) : ℤ :=
  A358216.P4171956212798034297.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358557.P6214688678443015509

`comp[A098464(n+1)-1]+1`
-/

namespace A358557.P6214688678443015509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098464 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A358557.P6214688678443015509

noncomputable section

/-- A358557: Numbers k for which denominator(H(k)) < LCM(1..k), where harmonic numbers H(k) = Sum_{i=1..k} 1/i = r(k)/q(k).

Offset 1, canonical program `A358557.P6214688678443015509`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358557 (n : ℕ) : ℤ :=
  (A358557.P6214688678443015509.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358557.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359550.P13374813552768723012

`char[A048103(n+1)]`
-/

namespace A359550.P13374813552768723012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A359550.P13374813552768723012

noncomputable section

/-- A359550: Characteristic function of A048103; From n >= 1, a(n) is multiplicative with a(p^e) = 1 if p > e, otherwise 0. a(0) = 0 by convention.

Offset 0, canonical program `A359550.P13374813552768723012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359550 (n : ℕ) : ℤ :=
  (A359550.P13374813552768723012.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367566.P1160178644607421999

`gcd(A061037(2*(n+1)), A166120(2*n+3))`
-/

namespace A367566.P1160178644607421999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061037 (2 * (n + 1))) (A166120 (2 * n + 3))

end

end A367566.P1160178644607421999

noncomputable section

/-- A367566: a(n) is the product of the primes p <= n+1 such that n * k^n == +-1 (mod p) for every k that is not a multiple of p.

Offset 1, canonical program `A367566.P1160178644607421999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 647 terms. -/
def A367566 (n : ℕ) : ℤ :=
  (A367566.P1160178644607421999.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 647 terms. -/
def A367566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368332.P14701013068669053454

`A358216(A368333(n+1))/A327936(n+1)`
-/

namespace A368332.P14701013068669053454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358216 (A368333 (n + 1)).toNat : ℚ) / (A327936 (n + 1) : ℚ)

end

end A368332.P14701013068669053454

noncomputable section

/-- A368332: The number of terms of A054744 that divide n.

Offset 1, canonical program `A368332.P14701013068669053454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368332 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A368332.P14701013068669053454.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368336.P17701727504922251831

`∑{d}[n+1, A327936(#)*A359552((n+1)/#)]`
-/

namespace A368336.P17701727504922251831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327936 d * A359552 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A368336.P17701727504922251831

noncomputable section

/-- A368336: The number of divisors of the largest term of A072873 that divides of n.

Offset 1, canonical program `A368336.P17701727504922251831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368336 (n : ℕ) : ℤ :=
  A368336.P17701727504922251831.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368905.P389147492042949560

`A359550(A366801(n))`
-/

namespace A368905.P389147492042949560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 (A366801 n).toNat

end

end A368905.P389147492042949560

noncomputable section

/-- A368905: a(n) = 1 if A342001(A005940(1+n)) is not divisible by p^p for any prime p, otherwise 0.

Offset 0, canonical program `A368905.P389147492042949560`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359550, A366801, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368905 (n : ℕ) : ℤ :=
  A368905.P389147492042949560.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359550, A366801, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368905.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368906.P17215132473500246940

`a(n-1)+A368905(n)` with `a(0)=0`
-/

namespace A368906.P17215132473500246940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A368905 n

end

end A368906.P17215132473500246940

noncomputable section

/-- A368906: a(n) is the number of integers k in the range 0..n such that A342001(A005940(1+k)) is not divisible by p^p for any prime p.

Offset 0, canonical program `A368906.P17215132473500246940`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368905, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368906 (n : ℕ) : ℤ :=
  A368906.P17215132473500246940.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368905, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368906.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368914.P6285884815134273775

`A359550(A342001(n+1))`
-/

namespace A368914.P6285884815134273775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 (A342001 (n + 1)).toNat

end

end A368914.P6285884815134273775

noncomputable section

/-- A368914: a(n) = 1 if there is no prime p such that p^p divides A342001(n), otherwise 0.

Offset 1, canonical program `A368914.P6285884815134273775`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342001, A359550, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368914 (n : ℕ) : ℤ :=
  A368914.P6285884815134273775.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342001, A359550, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368914.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368915.P18223305720082748212

`A359550(A003415(n+1))`
-/

namespace A368915.P18223305720082748212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 (A003415 (n + 1)).toNat

end

end A368915.P18223305720082748212

noncomputable section

/-- A368915: a(n) = 1 if there is no prime p such that p^p divides the arithmetic derivative of n, and 0 otherwise.

Offset 1, canonical program `A368915.P18223305720082748212`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A359550, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368915 (n : ℕ) : ℤ :=
  A368915.P18223305720082748212.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A359550, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368915.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369006.P857859541478610933

`A359550(A083345(n+1))`
-/

namespace A369006.P857859541478610933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 (A083345 (n + 1)).toNat

end

end A369006.P857859541478610933

noncomputable section

/-- A369006: a(n) = 1 if there is no prime p such that p^p divides n' / gcd(n,n'), and 0 otherwise, where n' stands for the arithmetic derivative of n, A003415(n).

Offset 1, canonical program `A369006.P857859541478610933`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083345, A359550, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369006 (n : ℕ) : ℤ :=
  A369006.P857859541478610933.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083345, A359550, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369006.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370077.P3375388874869746190

`2^A370078(n+1)`
-/

namespace A370077.P3375388874869746190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A370078 (n + 1) : ℤ)

end

end A370077.P3375388874869746190

noncomputable section

/-- A370077: The product of exponents of the prime factorization of the largest unitary divisor of n that is a term of A138302.

Offset 1, canonical program `A370077.P3375388874869746190`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A370078, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370077 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A370077.P3375388874869746190.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A370078, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370077.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A371083.P15128586750102198142

`filter[A319927(n+1), A359550(#)]`
-/

namespace A371083.P15128586750102198142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A371083.P15128586750102198142

noncomputable section

/-- A371083: Nonsquarefree numbers that are not divisible by p^p for any prime p.

Offset 1, canonical program `A371083.P15128586750102198142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8024 terms. -/
def A371083 (n : ℕ) : ℤ :=
  A371083.P15128586750102198142.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8024 terms. -/
def A371083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371084.P12406112099946689418

`(1-A008966(n+1))*A359550(n+1)`
-/

namespace A371084.P12406112099946689418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A008966 (n + 1)) * A359550 (n + 1)

end

end A371084.P12406112099946689418

noncomputable section

/-- A371084: a(n) = 1 if n is a nonsquarefree number not divisible by p^p for any prime p, otherwise 0.

Offset 1, canonical program `A371084.P12406112099946689418`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A359550, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A371084 (n : ℕ) : ℤ :=
  A371084.P12406112099946689418.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A359550, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A371084.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A377982.P672932525676510042

`∑[A359550(n)]`
-/

namespace A377982.P672932525676510042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377982.P672932525676510042

noncomputable section

/-- A377982: a(n) is the number of terms of A048103 (numbers with no p^p divisors) less than or equal to n.

Offset 0, canonical program `A377982.P672932525676510042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377982 (n : ℕ) : ℤ :=
  A377982.P672932525676510042.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379229.P5775022352315501244

`A252748(A319630(n+1))`
-/

namespace A379229.P5775022352315501244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (A319630 (n + 1)).toNat

end

end A379229.P5775022352315501244

noncomputable section

/-- A379229: Difference A003961(k)-(2*k) computed for the natural numbers k for which k and A003961(k) are relatively prime, where A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A379229.P5775022352315501244`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252748, A319630, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379229 (n : ℕ) : ℤ :=
  A379229.P5775022352315501244.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252748, A319630, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379229.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379230.P706396864197562586

`A252748(A104210(n+1))`
-/

namespace A379230.P706396864197562586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (A104210 (n + 1)).toNat

end

end A379230.P706396864197562586

noncomputable section

/-- A379230: Difference A003961(k)-(2*k) computed for the natural numbers k for which gcd(k,A003961(k)) > 1, where A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A379230.P706396864197562586`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104210, A252748, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379230 (n : ℕ) : ℤ :=
  A379230.P706396864197562586.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104210, A252748, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379230.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379474.P1393438401902086563

`A331671(A170818(n+1)^A331671(n+1))`
-/

namespace A379474.P1393438401902086563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331671 (SequenceMachineLib.roundAway ((A170818 (n + 1) : ℚ) ^ (A331671 (n + 1) : ℤ))).toNat

end

end A379474.P1393438401902086563

noncomputable section

/-- A379474: Number of prime factors of the form p^e || n : [p == 1 (mod 8), e == 1 (mod 4)] or [p == 5 (mod 8), e == -1 (mod 4)].

Offset 1, canonical program `A379474.P1393438401902086563`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A379474 (n : ℕ) : ℤ :=
  A379474.P1393438401902086563.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A379474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379964.P18104266727039392013

`A359550((n+1)²-1)`
-/

namespace A379964.P18104266727039392013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 ((n + 1) ^ 2 - 1)

end

end A379964.P18104266727039392013

noncomputable section

/-- A379964: a(n) = 1 if (n^2)-1 is not divisible by p^p for any prime p, otherwise 0.

Offset 1, canonical program `A379964.P18104266727039392013`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359550, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379964 (n : ℕ) : ℤ :=
  A379964.P18104266727039392013.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359550, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379964.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379965.P10759332245029811595

`filter[A004277(n+1), A379964(#)]`
-/

namespace A379965.P10759332245029811595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379964 (f1 j).toNat = 1) n)

end

end A379965.P10759332245029811595

noncomputable section

/-- A379965: Numbers k such that (k^2)-1 is not divisible by p^p for any prime p.

Offset 1, canonical program `A379965.P10759332245029811595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9254 terms. -/
def A379965 (n : ℕ) : ℤ :=
  A379965.P10759332245029811595.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9254 terms. -/
def A379965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381613.P15275634750993540822

`∑{d}[(n+1)/∏{p}[n+1, #], A359550(#)]`
-/

namespace A381613.P15275634750993540822
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A359550 d

end

end A381613.P15275634750993540822

noncomputable section

/-- A381613: If n = Product (p_j^k_j) then a(n) = Product (min(p_j, k_j)), with a(1) = 1.

Offset 1, canonical program `A381613.P15275634750993540822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381613 (n : ℕ) : ℤ :=
  A381613.P15275634750993540822.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381614.P871581451956628641

`A000026(n+1)/A381613(n+1)`
-/

namespace A381614.P871581451956628641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000026 (n + 1) : ℚ) / (A381613 (n + 1) : ℚ)

end

end A381614.P871581451956628641

noncomputable section

/-- A381614: If n = Product (p_j^k_j) then a(n) = Product (max(p_j, k_j)), with a(1) = 1.

Offset 1, canonical program `A381614.P871581451956628641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381614 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A381614.P871581451956628641.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382628.P14994600880805004209

`∩[A154729(n+1), A003215(n)]`
-/

namespace A382628.P14994600880805004209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382628.P14994600880805004209

noncomputable section

/-- A382628: Centered hexagonal numbers that are sphenic numbers.

Offset 1, canonical program `A382628.P14994600880805004209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A382628 (n : ℕ) : ℤ :=
  (A382628.P14994600880805004209.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A382628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382896.P5821804241152732795

`∩[A019506(n+1), A110188(n+1)]`
-/

namespace A382896.P5821804241152732795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382896.P5821804241152732795

noncomputable section

/-- A382896: Smith sphenic numbers, i.e., Smith numbers (A006753) that are the product of three distinct prime numbers.

Offset 1, canonical program `A382896.P5821804241152732795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 371 terms. -/
def A382896 (n : ℕ) : ℤ :=
  (A382896.P5821804241152732795.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 371 terms. -/
def A382896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384556.P16064934496788693992

`A003968(A066990(n+1))`
-/

namespace A384556.P16064934496788693992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003968 (A066990 (n + 1)).toNat

end

end A384556.P16064934496788693992

noncomputable section

/-- A384556: The sum of the exponential divisors of n that are cubefree.

Offset 1, canonical program `A384556.P16064934496788693992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384556 (n : ℕ) : ℤ :=
  A384556.P16064934496788693992.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387096.P15198397566290512698

`lt[n+2, A086568(n+1)]+1`
-/

namespace A387096.P15198397566290512698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086568 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A387096.P15198397566290512698

noncomputable section

/-- A387096: Numbers k such that k < prime(bigomega(k))#, where prime(bigomega(k))# is the product of the first bigomega(k) primes and bigomega(k) is the number of prime divisors of k (counted multiplicity).

Offset 1, canonical program `A387096.P15198397566290512698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1123 terms. -/
def A387096 (n : ℕ) : ℤ :=
  (A387096.P15198397566290512698.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1123 terms. -/
def A387096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387404.P10009179576430722639

`∩[A091300(n+1), A191218(n+1)]`
-/

namespace A387404.P10009179576430722639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387404.P10009179576430722639

noncomputable section

/-- A387404: Numbers of the form 12*k + 1 that satisfy Euler's condition for odd perfect numbers (A228058).

Offset 1, canonical program `A387404.P10009179576430722639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 287 terms. -/
def A387404 (n : ℕ) : ℤ :=
  (A387404.P10009179576430722639.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 287 terms. -/
def A387404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389214.P17879366109515903515

`∪[A177426(n+1), A389212(n+1)]`
-/

namespace A389214.P17879366109515903515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389214.P17879366109515903515

noncomputable section

/-- A389214: Numbers k such that A048146(k)+A162296(k) >= 2*k, where A048146 is the sum of non-unitary divisors of n, and A162296 is the sum of divisors of n that have a square factor.

Offset 1, canonical program `A389214.P17879366109515903515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389214 (n : ℕ) : ℤ :=
  (A389214.P17879366109515903515.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389214.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391747.P12893955322545124689

`∏{p}[A195017(n+1), A056674(#)]`
-/

namespace A391747.P12893955322545124689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A056674 p

end

end A391747.P12893955322545124689

noncomputable section

/-- A391747: a(n) = 1 if -1 <= A195017(n) <= 1, otherwise 0, where A195017(n) = Sum_{k >= 1} c_k*((-1)^(k-1)), when n = Product_{k >= 1} (p_k)^(c_k), with p_k the k-th prime.

Offset 1, canonical program `A391747.P12893955322545124689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391747 (n : ℕ) : ℤ :=
  A391747.P12893955322545124689.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391909.P11414189018115501503

`record[(n+1)*A391747(n+1)]`
-/

namespace A391909.P11414189018115501503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A391747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391909.P11414189018115501503

noncomputable section

/-- A391909: Numbers k such that -1 <= A195017(k) <= 1.

Offset 1, canonical program `A391909.P11414189018115501503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391909 (n : ℕ) : ℤ :=
  A391909.P11414189018115501503.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000114.P10789346743923345405

`A001766(n+2)/(n+2)`
-/

namespace A000114.P10789346743923345405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001766 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A000114.P10789346743923345405

noncomputable section

/-- A000114: Number of cusps of principal congruence subgroup Gamma^{hat}(n).

Offset 2, canonical program `A000114.P10789346743923345405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A000114 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A000114.P10789346743923345405.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A000114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002445.P10846769026289059065

`A027642(2*n)`
-/

namespace A002445.P10846769026289059065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (2 * n)

end

end A002445.P10846769026289059065

noncomputable section

/-- A002445: Denominators of Bernoulli numbers B_{2n}.

Offset 0, canonical program `A002445.P10846769026289059065`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002445 (n : ℕ) : ℤ :=
  A002445.P10846769026289059065.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002445.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A003959.P10480308691352807012

`∑{d}[n+1, A003968(#)]`
-/

namespace A003959.P10480308691352807012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003968 d

end

end A003959.P10480308691352807012

noncomputable section

/-- A003959: If n = Product p(k)^e(k) then a(n) = Product (p(k)+1)^e(k), a(1) = 1.

Offset 1, canonical program `A003959.P10480308691352807012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003959 (n : ℕ) : ℤ :=
  A003959.P10480308691352807012.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003969.P3425583708313804198

`∑{d}[n+1, A003959(#)]`
-/

namespace A003969.P3425583708313804198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003959 d

end

end A003969.P3425583708313804198

noncomputable section

/-- A003969: Inverse Möbius transform of A003959.

Offset 1, canonical program `A003969.P3425583708313804198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003969 (n : ℕ) : ℤ :=
  A003969.P3425583708313804198.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003970.P10563278233507935513

`A340368(2*n+1)/A061142(2*n+1)`
-/

namespace A003970.P10563278233507935513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340368 (2 * n + 1) : ℚ) / (A061142 (2 * n + 1) : ℚ)

end

end A003970.P10563278233507935513

noncomputable section

/-- A003970: Möbius transform of A003960 (with alternating zeros omitted).

Offset 1, canonical program `A003970.P10563278233507935513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A003970 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A003970.P10563278233507935513.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A003970.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004627.P17803393918126401768

`record[gcd(A170818(n+1), A331671(n+1))]`
-/

namespace A004627.P17803393918126401768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A170818 (n + 1)) (A331671 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004627.P17803393918126401768

noncomputable section

/-- A004627: Divisible only by primes congruent to 5 mod 8.

Offset 1, canonical program `A004627.P17803393918126401768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 519 terms. -/
def A004627 (n : ℕ) : ℤ :=
  (A004627.P17803393918126401768.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 519 terms. -/
def A004627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006955.P9434307626100429128

`A326580(n)/Δ[n²]`
-/

namespace A006955.P9434307626100429128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326580 n : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A006955.P9434307626100429128

noncomputable section

/-- A006955: Denominator of (2n+1) B_{2n}, where B_n are the Bernoulli numbers.

Offset 0, canonical program `A006955.P9434307626100429128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A006955 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A006955.P9434307626100429128.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A006955.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008903.P196414134318317341

`A003124(A028310(n))*A054977(n)`
-/

namespace A008903.P196414134318317341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003124 (A028310 n).toNat * A054977 n

end

end A008903.P196414134318317341

noncomputable section

/-- A008903: x->x/2 if x even, x->3x-1 if x odd.

Offset 0, canonical program `A008903.P196414134318317341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008903 (n : ℕ) : ℤ :=
  A008903.P196414134318317341.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008903.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011947.P14935983523207937062

`A179781(Δ[n²])`
-/

namespace A011947.P14935983523207937062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179781 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A011947.P14935983523207937062

noncomputable section

/-- A011947: Number of Barlow packings with group P63/mmc(O) that repeat after 4n+2 layers.

Offset 0, canonical program `A011947.P14935983523207937062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A011947 (n : ℕ) : ℤ :=
  A011947.P14935983523207937062.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A011947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023023.P8312334667224594781

`ceil(A000114(n+3)/3)/2`
-/

namespace A023023.P8312334667224594781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A000114 (n + 3) : ℚ) / 3⌉ : ℚ) / 2

end

end A023023.P8312334667224594781

noncomputable section

/-- A023023: Number of partitions of n into 3 unordered relatively prime parts.

Offset 3, canonical program `A023023.P8312334667224594781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A023023 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A023023.P8312334667224594781.a (n - 3))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A023023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023805.P9284832326530478310

`comp[A059322(8*n+10)]%A161896(9*n+7)`
-/

namespace A023805.P9284832326530478310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059322 (8 * n + 10)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A161896 (9 * n + 7))

end

end A023805.P9284832326530478310

noncomputable section

/-- A023805: Xenodromes: all digits in base 11 are different.

Offset 1, canonical program `A023805.P9284832326530478310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A023805 (n : ℕ) : ℤ :=
  A023805.P9284832326530478310.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A023805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027760.P284501517253735648

`A091137(n+1)/A091137(n)`
-/

namespace A027760.P284501517253735648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091137 (n + 1) : ℚ) / (A091137 n : ℚ)

end

end A027760.P284501517253735648

noncomputable section

/-- A027760: Denominator of Sum_{p prime, p-1 divides n} 1/p.

Offset 1, canonical program `A027760.P284501517253735648`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091137, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027760 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A027760.P284501517253735648.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091137, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027760.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A027762.P18246507595659144078

`A027760(2*(n+1))`
-/

namespace A027762.P18246507595659144078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027760 (2 * (n + 1))

end

end A027762.P18246507595659144078

noncomputable section

/-- A027762: Denominator of Sum_{p prime, p-1 divides 2*n} 1/p.

Offset 1, canonical program `A027762.P18246507595659144078`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027760, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027762 (n : ℕ) : ℤ :=
  A027762.P18246507595659144078.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027760, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027762.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A028901.P2292119027617019794

`A054899(n)+floor(A081596(n)/A054977(A096582(n+1)))`
-/

namespace A028901.P2292119027617019794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 n + ⌊(A081596 n : ℚ) / (A054977 (A096582 (n + 1)).toNat : ℚ)⌋

end

end A028901.P2292119027617019794

noncomputable section

/-- A028901: Map n = Sum c_i*10^i to a(n) = Sum c_i*6^i.

Offset 0, canonical program `A028901.P2292119027617019794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A028901 (n : ℕ) : ℤ :=
  A028901.P2292119027617019794.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A028901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029763.P9262175537561063165

`A027762(n+1)/A020793(n)*A177735(n)`
-/

namespace A029763.P9262175537561063165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027762 (n + 1) : ℚ) / (A020793 n : ℚ) * (A177735 n : ℚ)

end

end A029763.P9262175537561063165

noncomputable section

/-- A029763: Denominator of Bernoulli(2n+2) - Bernoulli(2n).

Offset 0, canonical program `A029763.P9262175537561063165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 643 terms. -/
def A029763 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A029763.P9262175537561063165.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 643 terms. -/
def A029763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029765.P12397679119740762320

`lcm(3, A029763(n))`
-/

namespace A029765.P12397679119740762320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A029763 n)

end

end A029765.P12397679119740762320

noncomputable section

/-- A029765: Denominator of |Bernoulli(2n+2)| - |Bernoulli(2n)|.

Offset 0, canonical program `A029765.P12397679119740762320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 643 terms. -/
def A029765 (n : ℕ) : ℤ :=
  (A029765.P12397679119740762320.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 643 terms. -/
def A029765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033469.P2277892960336040949

`A081294(n)*A002445(n)`
-/

namespace A033469.P2277892960336040949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n * A002445 n

end

end A033469.P2277892960336040949

noncomputable section

/-- A033469: Denominator of Bernoulli(2n,1/2).

Offset 0, canonical program `A033469.P2277892960336040949`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002445, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033469 (n : ℕ) : ℤ :=
  A033469.P2277892960336040949.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002445, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033469.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A043296.P1256347733658503674

`A007953(A002445(n+1))`
-/

namespace A043296.P1256347733658503674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A002445 (n + 1)).toNat

end

end A043296.P1256347733658503674

noncomputable section

/-- A043296: Sum of digits of denominator of Bernoulli number B(2n).

Offset 1, canonical program `A043296.P1256347733658503674`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002445, A007953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A043296 (n : ℕ) : ℤ :=
  A043296.P1256347733658503674.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002445, A007953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A043296.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A043474.P3675095178451187142

`eq[4, A286361(A338882(n))]`
-/

namespace A043474.P3675095178451187142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286361 (A338882 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043474.P3675095178451187142

noncomputable section

/-- A043474: Numbers having two 5's in base 9.

Offset 1, canonical program `A043474.P3675095178451187142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 501 terms. -/
def A043474 (n : ℕ) : ℤ :=
  (A043474.P3675095178451187142.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 501 terms. -/
def A043474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044933.P16468150021255286257

`A005811(n+1)-A044942(n+1)`
-/

namespace A044933.P16468150021255286257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (n + 1) - A044942 (n + 1)

end

end A044933.P16468150021255286257

noncomputable section

/-- A044933: Number of runs of even length in the base-2 representation of n.

Offset 1, canonical program `A044933.P16468150021255286257`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A044942, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A044933 (n : ℕ) : ℤ :=
  A044933.P16468150021255286257.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A044942, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A044933.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A044934.P12203436465107615356

`A044933(A371256(n+1))`
-/

namespace A044934.P12203436465107615356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044933 (A371256 (n + 1)).toNat

end

end A044934.P12203436465107615356

noncomputable section

/-- A044934: Number of runs of even length in the base 3 representation of n.

Offset 1, canonical program `A044934.P12203436465107615356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A044934 (n : ℕ) : ℤ :=
  A044934.P12203436465107615356.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A044934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045669.P14509284177368627786

`A045664(n)-A045665(n)`
-/

namespace A045669.P14509284177368627786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045664 n - A045665 n

end

end A045669.P14509284177368627786

noncomputable section

/-- A045669: Number of 2n-bead balanced binary strings of fundamental period 2n, rotationally equivalent to reversed complement, inequivalent to reverse and complement.

Offset 0, canonical program `A045669.P14509284177368627786`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045664, A045665, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A045669 (n : ℕ) : ℤ :=
  A045669.P14509284177368627786.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045664, A045665, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A045669.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A045676.P8900542742695811205

`A128014(n)-A045674(n)`
-/

namespace A045676.P8900542742695811205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128014 n - A045674 n

end

end A045676.P8900542742695811205

noncomputable section

/-- A045676: Number of 2n-bead balanced binary necklaces which are equivalent to their reverse, but not equivalent to their complement and reversed complement.

Offset 0, canonical program `A045676.P8900542742695811205`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045674, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A045676 (n : ℕ) : ℤ :=
  A045676.P8900542742695811205.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045674, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A045676.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A045677.P7167331430785454104

`A000013(n)-A045674(n)`
-/

namespace A045677.P7167331430785454104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 n - A045674 n

end

end A045677.P7167331430785454104

noncomputable section

/-- A045677: Number of 2n-bead balanced binary necklaces which are equivalent to their complement, but not equivalent to their reverse and their reversed complement.

Offset 0, canonical program `A045677.P7167331430785454104`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000013, A045674, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A045677 (n : ℕ) : ℤ :=
  A045677.P7167331430785454104.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000013, A045674, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A045677.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A045678.P6661484353096964123

`A011782(n)-A045674(n)`
-/

namespace A045678.P6661484353096964123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A045674 n

end

end A045678.P6661484353096964123

noncomputable section

/-- A045678: Number of 2n-bead balanced binary necklaces which are equivalent to their reversed complement, but not equivalent to their reverse and complement.

Offset 0, canonical program `A045678.P6661484353096964123`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045674, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A045678 (n : ℕ) : ℤ :=
  A045678.P6661484353096964123.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045674, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A045678.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A045687.P11816481710795598244

`A045669(n)/A004277(n)`
-/

namespace A045687.P11816481710795598244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045669 n : ℚ) / (A004277 n : ℚ)

end

end A045687.P11816481710795598244

noncomputable section

/-- A045687: Number of 2n-bead balanced binary necklaces of fundamental period 2n which are equivalent to their reversed complement, but are not equivalent to their reverse and complement.

Offset 0, canonical program `A045687.P11816481710795598244`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A045687 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A045687.P11816481710795598244.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A045687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050932.P58494450188003610

`A326579(n+1)/(n+1)`
-/

namespace A050932.P58494450188003610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326579 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A050932.P58494450188003610

noncomputable section

/-- A050932: Denominator of (n+1)*Bernoulli(n).

Offset 0, canonical program `A050932.P58494450188003610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050932 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A050932.P58494450188003610.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053443.P9317151011404618867

`lt[1, A072438(A008833(n+1))]+1`
-/

namespace A053443.P9317151011404618867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (A008833 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A053443.P9317151011404618867

noncomputable section

/-- A053443: x^2 + y^2 does not take on all possible values mod n.

Offset 1, canonical program `A053443.P9317151011404618867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3646 terms. -/
def A053443 (n : ℕ) : ℤ :=
  (A053443.P9317151011404618867.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3646 terms. -/
def A053443.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055023.P1172270921470838562

`(n+1)/A055032(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A055023.P1172270921470838562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A055032 (n + 1) : ℚ)

end

end A055023.P1172270921470838562

noncomputable section

/-- A055023: a(n) = n/A055032(n).

Offset 1, canonical program `A055023.P1172270921470838562`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055032, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055023 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055023.P1172270921470838562.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055032, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055023.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055647.P1414518620111921284

`eq[A028901(n), A081597(A081597(n))]`
-/

namespace A055647.P1414518620111921284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081597 (A081597 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055647.P1414518620111921284

noncomputable section

/-- A055647: Integers in base 14 with each base 14 digit represented by 2 decimal digits.

Offset 0, canonical program `A055647.P1414518620111921284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A055647 (n : ℕ) : ℤ :=
  (A055647.P1414518620111921284.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A055647.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056503.P12078029325460103094

`A000011(n+1)-A045677(n+1)/2`
-/

namespace A056503.P12078029325460103094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000011 (n + 1) : ℚ) - (A045677 (n + 1) : ℚ) / 2

end

end A056503.P12078029325460103094

noncomputable section

/-- A056503: Number of periodic palindromic structures of length n using a maximum of two different symbols.

Offset 1, canonical program `A056503.P12078029325460103094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A056503 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056503.P12078029325460103094.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A056503.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056508.P8052561775042287548

`A056503(n+1)-1`
-/

namespace A056508.P8052561775042287548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056503 (n + 1) - 1

end

end A056508.P8052561775042287548

noncomputable section

/-- A056508: Number of periodic palindromic structures of length n using exactly two different symbols.

Offset 1, canonical program `A056508.P8052561775042287548`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056503, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056508 (n : ℕ) : ℤ :=
  A056508.P8052561775042287548.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056503, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056508.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056518.P10495334089397764284

`∑{d}[n+1, A008683(#)*A056508((n+1)/#)]`
-/

namespace A056518.P10495334089397764284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056508 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056518.P10495334089397764284

noncomputable section

/-- A056518: Number of primitive (period n) periodic palindromic structures using exactly two different symbols.

Offset 1, canonical program `A056518.P10495334089397764284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A056518 (n : ℕ) : ℤ :=
  A056518.P10495334089397764284.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A056518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060976.P3405785496244581185

`record[A171435(A171435(A226872(n+1)))]`
-/

namespace A060976.P3405785496244581185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A171435 (A226872 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060976.P3405785496244581185

noncomputable section

/-- A060976: Odd nonprimes c which divide Bernoulli(2*c).

Offset 1, canonical program `A060976.P3405785496244581185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3597 terms. -/
def A060976 (n : ℕ) : ℤ :=
  A060976.P3405785496244581185.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3597 terms. -/
def A060976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064478.P2659223635145609347

`A003959(n*a(val(n+1, n)))` with `a(0)=1, a(1)=2`
-/

namespace A064478.P2659223635145609347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A003959 ((n : ℤ) * a (SequenceMachineLib.valuation (n + 1) n)).toNat

end

end A064478.P2659223635145609347

noncomputable section

/-- A064478: If n = Product p(k)^e(k) then a(n) = Product (p(k)+1)^e(k), a(0) = 1, a(1)=2.

Offset 0, canonical program `A064478.P2659223635145609347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064478 (n : ℕ) : ℤ :=
  A064478.P2659223635145609347.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064479.P7313638048207926307

`comp[A003959(n+1)-3]+3`
-/

namespace A064479.P7313638048207926307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 3

end

end A064479.P7313638048207926307

noncomputable section

/-- A064479: Complement of A064478.

Offset 0, canonical program `A064479.P7313638048207926307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064479 (n : ℕ) : ℤ :=
  (A064479.P7313638048207926307.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066208.P16602124900019423257

`eq[1, A353372(2*(n+1))]+1`
-/

namespace A066208.P16602124900019423257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353372 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066208.P16602124900019423257

noncomputable section

/-- A066208: All primes that divide n are of the form prime(2k-1), where prime(k) is k-th prime.

Offset 1, canonical program `A066208.P16602124900019423257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7387 terms. -/
def A066208 (n : ℕ) : ℤ :=
  (A066208.P16602124900019423257.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7387 terms. -/
def A066208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067513.P3561303849225168493

`A001221(A027760(n+1))`
-/

namespace A067513.P3561303849225168493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A027760 (n + 1)).toNat

end

end A067513.P3561303849225168493

noncomputable section

/-- A067513: Number of divisors d of n such that d+1 is prime.

Offset 1, canonical program `A067513.P3561303849225168493`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A027760, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A067513 (n : ℕ) : ℤ :=
  A067513.P3561303849225168493.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A027760, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A067513.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A068113.P2867666152825364727

`gcd(A005809(n), A073838(2*n+1))`
-/

namespace A068113.P2867666152825364727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005809 n) (A073838 (2 * n + 1))

end

end A068113.P2867666152825364727

noncomputable section

/-- A068113: Numerator of coefficient of (-x^2)^n in F(x)*F(-x) where F(x) = Sum_{k>=0} x^k/(k!)^3.

Offset 0, canonical program `A068113.P2867666152825364727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A068113 (n : ℕ) : ℤ :=
  (A068113.P2867666152825364727.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A068113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068443.P12532033995933004656

`A000217(A164977(n+1))`
-/

namespace A068443.P12532033995933004656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A164977 (n + 1)).toNat

end

end A068443.P12532033995933004656

noncomputable section

/-- A068443: Triangular numbers which are the product of two primes.

Offset 1, canonical program `A068443.P12532033995933004656`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A164977, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068443 (n : ℕ) : ℤ :=
  A068443.P12532033995933004656.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A164977, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068443.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A069040.P6411977931848777307

`filter[A229303(n+1), A093719(#)]`
-/

namespace A069040.P6411977931848777307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A069040.P6411977931848777307

noncomputable section

/-- A069040: Numbers k that divide the numerator of B(2k) (the Bernoulli numbers).

Offset 1, canonical program `A069040.P6411977931848777307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5568 terms. -/
def A069040 (n : ℕ) : ℤ :=
  A069040.P6411977931848777307.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5568 terms. -/
def A069040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072436.P7287158936470340465

`A006519(n+1)*A170818(n+1)`
-/

namespace A072436.P7287158936470340465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A170818 (n + 1)

end

end A072436.P7287158936470340465

noncomputable section

/-- A072436: Remove prime factors of form 4*k+3.

Offset 1, canonical program `A072436.P7287158936470340465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072436 (n : ℕ) : ℤ :=
  A072436.P7287158936470340465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073409.P17579973830086733601

`A006530(A027762(n+1))`
-/

namespace A073409.P17579973830086733601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A027762 (n + 1)).toNat

end

end A073409.P17579973830086733601

noncomputable section

/-- A073409: Largest prime factor of the denominator of the Bernoulli number B(2*n) (A002445).

Offset 1, canonical program `A073409.P17579973830086733601`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A027762, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073409 (n : ℕ) : ℤ :=
  A073409.P17579973830086733601.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A027762, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073409.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074243.P6098293746356971239

`filter[A088232(n+1), A353559(#)]`
-/

namespace A074243.P6098293746356971239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A074243.P6098293746356971239

noncomputable section

/-- A074243: Numbers n such that every integer has a cube root mod n.

Offset 1, canonical program `A074243.P6098293746356971239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6707 terms. -/
def A074243 (n : ℕ) : ℤ :=
  A074243.P6098293746356971239.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6707 terms. -/
def A074243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074845.P14330215240908241597

`∪[A073582(n+1), A194593(n+1)]`
-/

namespace A074845.P14330215240908241597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073582 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A074845.P14330215240908241597

noncomputable section

/-- A074845: Numbers k such that S(k) = largest difference between consecutive divisors of k (ordered by size), where S(k) is the Kempner function (A002034).

Offset 1, canonical program `A074845.P14330215240908241597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074845 (n : ℕ) : ℤ :=
  (A074845.P14330215240908241597.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080167.P9309688143140738925

`∩[A080165(n+1), A191218(n+1)]`
-/

namespace A080167.P9309688143140738925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080167.P9309688143140738925

noncomputable section

/-- A080167: Primes beginning with '10' and ending with '01' in binary representation.

Offset 1, canonical program `A080167.P9309688143140738925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9324 terms. -/
def A080167 (n : ℕ) : ℤ :=
  (A080167.P9309688143140738925.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9324 terms. -/
def A080167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081863.P2129435876270539085

`4*A165886(2*n+1)`
-/

namespace A081863.P2129435876270539085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A165886 (2 * n + 1)

end

end A081863.P2129435876270539085

noncomputable section

/-- A081863: Largest integer m such that m divides (sigma_(2n+1)(2k-1)-sigma(2k-1)) for all k>=1.

Offset 1, canonical program `A081863.P2129435876270539085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1711 terms. -/
def A081863 (n : ℕ) : ℤ :=
  A081863.P2129435876270539085.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1711 terms. -/
def A081863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087441.P11260084284196037132

`A226038(n+1)+1`
-/

namespace A087441.P11260084284196037132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226038 (n + 1) + 1

end

end A087441.P11260084284196037132

noncomputable section

/-- A087441: Numbers k such that for every prime divisor p of k, p-1 divides k-1.

Offset 1, canonical program `A087441.P11260084284196037132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087441 (n : ℕ) : ℤ :=
  A087441.P11260084284196037132.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090815.P12031940070283116509

`A027762(record[A006530(n+2)])`
-/

namespace A090815.P12031940070283116509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027762 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090815.P12031940070283116509

noncomputable section

/-- A090815: a(n)=denominator(B(2*prime(n))) where prime(n)=n-th prime and B(k) denotes the k-th Bernoulli number.

Offset 1, canonical program `A090815.P12031940070283116509`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A090815 (n : ℕ) : ℤ :=
  A090815.P12031940070283116509.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A090815.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090958.P14420008161749182674

`lt[A061395(A028310(n)), A235224(n)]`
-/

namespace A090958.P14420008161749182674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A090958.P14420008161749182674

noncomputable section

/-- A090958: Numbers in increasing order such that the least multiple of prime(n) in the sequence is primorial(n).

Offset 0, canonical program `A090958.P14420008161749182674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 412 terms. -/
def A090958 (n : ℕ) : ℤ :=
  (A090958.P14420008161749182674.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 412 terms. -/
def A090958.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092308.P14534356518420386647

`A067513(A006093(n+1))`
-/

namespace A092308.P14534356518420386647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (A006093 (n + 1)).toNat

end

end A092308.P14534356518420386647

noncomputable section

/-- A092308: For p=prime(n), a(n) = the number of primes q such that q-1 divides p-1.

Offset 1, canonical program `A092308.P14534356518420386647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A092308 (n : ℕ) : ℤ :=
  A092308.P14534356518420386647.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A092308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097706.P6722181687817241685

`(n+1)/A072436(n+1)`
-/

namespace A097706.P6722181687817241685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A072436 (n + 1) : ℚ)

end

end A097706.P6722181687817241685

noncomputable section

/-- A097706: Part of n composed of prime factors of form 4k+3.

Offset 1, canonical program `A097706.P6722181687817241685`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072436, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097706 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A097706.P6722181687817241685.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072436, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097706.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A101271.P143729997817666203

`A023023(n+6)-A023022(n+6)`
-/

namespace A101271.P143729997817666203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023023 (n + 6) - A023022 (n + 6)

end

end A101271.P143729997817666203

noncomputable section

/-- A101271: Number of partitions of n into 3 distinct and relatively prime parts.

Offset 6, canonical program `A101271.P143729997817666203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. -/
def A101271 (n : ℕ) : ℤ :=
  A101271.P143729997817666203.a (n - 6)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. -/
def A101271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108077.P8095265619995363254

`A006530(A027760(n+1))`
-/

namespace A108077.P8095265619995363254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A027760 (n + 1)).toNat

end

end A108077.P8095265619995363254

noncomputable section

/-- A108077: Largest prime p such that p-1 divides n.

Offset 1, canonical program `A108077.P8095265619995363254`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A027760, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A108077 (n : ℕ) : ℤ :=
  A108077.P8095265619995363254.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A027760, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A108077.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A114434.P1157299861730347010

`A003959(A002808(n+1))`
-/

namespace A114434.P1157299861730347010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A002808 (n + 1)).toNat

end

end A114434.P1157299861730347010

noncomputable section

/-- A114434: To obtain a(n), write the n-th composite number as a product of primes, add 1 to each prime and multiply.

Offset 1, canonical program `A114434.P1157299861730347010`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A003959, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A114434 (n : ℕ) : ℤ :=
  A114434.P1157299861730347010.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A003959, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A114434.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A119664.P6728510728371407301

`(1-4/2)^A164977(n+1)`
-/

namespace A119664.P6728510728371407301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (4 : ℚ) / 2) ^ (A164977 (n + 1) : ℤ)

end

end A119664.P6728510728371407301

noncomputable section

/-- A119664: Sign in term (2p +/ - 1) for triangular numbers of the form p * (2p +/ - 1), where the two factors are both primes.

Offset 1, canonical program `A119664.P6728510728371407301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119664 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A119664.P6728510728371407301.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124240.P11201623863866168056

`record[A003557(n+1)*A225821(n+1)]`
-/

namespace A124240.P11201623863866168056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A225821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124240.P11201623863866168056

noncomputable section

/-- A124240: Numbers n such that lambda(n) divides n, where lambda is Carmichael's function (A002322).

Offset 1, canonical program `A124240.P11201623863866168056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A124240 (n : ℕ) : ℤ :=
  A124240.P11201623863866168056.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A124240.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126865.P4728750238819151182

`gcd(A003958(n+1), A003959(n+1))`
-/

namespace A126865.P4728750238819151182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003958 (n + 1)) (A003959 (n + 1))

end

end A126865.P4728750238819151182

noncomputable section

/-- A126865: a(n) = gcd(Product_{p|n} (p+1)^b(p,n), Product_{p|n} (p-1)^b(p,n)), where the products are over the distinct primes, p, that divide n and p^b(p,n) is the highest power of p dividing n.

Offset 1, canonical program `A126865.P4728750238819151182`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A003959, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A126865 (n : ℕ) : ℤ :=
  (A126865.P4728750238819151182.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A003959, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A126865.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138239.P3329285066775299196

`gcd(A002445(A003056(n)), A037126(n+1))`
-/

namespace A138239.P3329285066775299196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002445 (A003056 n).toNat) (A037126 (n + 1))

end

end A138239.P3329285066775299196

noncomputable section

/-- A138239: Triangle read by rows: T(n,k) = A000040(k) if A002445(n) mod A000040(k) = 0, otherwise 1.

Offset 0, canonical program `A138239.P3329285066775299196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A138239 (n : ℕ) : ℤ :=
  (A138239.P3329285066775299196.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A138239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138243.P5727277130700304771

`gcd(A027642(A003056(n)), A138239(n))`
-/

namespace A138243.P5727277130700304771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027642 (A003056 n).toNat) (A138239 n)

end

end A138243.P5727277130700304771

noncomputable section

/-- A138243: Triangle read by rows: Row products give A027642.

Offset 0, canonical program `A138243.P5727277130700304771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A138243 (n : ℕ) : ℤ :=
  (A138243.P5727277130700304771.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A138243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140219.P10587511373409915709

`A006955(floor(n/2))`
-/

namespace A140219.P10587511373409915709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006955 ⌊(n : ℚ) / 2⌋.toNat

end

end A140219.P10587511373409915709

noncomputable section

/-- A140219: Denominator of the coefficient [x^1] of the Bernoulli twin number polynomial C(n,x).

Offset 0, canonical program `A140219.P10587511373409915709`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006955, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140219 (n : ℕ) : ℤ :=
  A140219.P10587511373409915709.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006955, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140219.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A141517.P8902521936123961455

`A141498(n+1)/A027760(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141517.P8902521936123961455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141498 (n + 1) : ℚ) / (A027760 (n + 1) : ℚ)

end

end A141517.P8902521936123961455

noncomputable section

/-- A141517: A141498(n)/A027760(n).

Offset 1, canonical program `A141517.P8902521936123961455`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027760, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141517 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A141517.P8902521936123961455.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027760, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141517.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A141565.P5722058412581182413

`A048250(A003557(n+1))*A064478(n+1)`
-/

namespace A141565.P5722058412581182413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A003557 (n + 1)).toNat * A064478 (n + 1)

end

end A141565.P5722058412581182413

noncomputable section

/-- A141565: Add 1 to all bases and exponents which are greater than 1 in the prime number decomposition of n.

Offset 1, canonical program `A141565.P5722058412581182413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A141565 (n : ℕ) : ℤ :=
  A141565.P5722058412581182413.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A141565.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161882.P9047361608683957407

`A297382(A170818(n+2))+A297382(n+2)`
-/

namespace A161882.P9047361608683957407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297382 (A170818 (n + 2)).toNat + A297382 (n + 2)

end

end A161882.P9047361608683957407

noncomputable section

/-- A161882: Smallest k such that n^2 = a_1^2 + ... + a_k^2 and all a_i are positive integers less than n.

Offset 2, canonical program `A161882.P9047361608683957407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 699 terms. -/
def A161882 (n : ℕ) : ℤ :=
  A161882.P9047361608683957407.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 699 terms. -/
def A161882.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165949.P17479391633647191962

`A027762(n+1)/A165734(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165949.P17479391633647191962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027762 (n + 1) : ℚ) / (A165734 (n + 1) : ℚ)

end

end A165949.P17479391633647191962

noncomputable section

/-- A165949: a(n) = A027762(n)/A165734(n).

Offset 1, canonical program `A165949.P17479391633647191962`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A165949 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A165949.P17479391633647191962.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A165949.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166123.P17080126182771672901

`A166120(n+1)/A050932(n)`
-/

namespace A166123.P17080126182771672901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166120 (n + 1) : ℚ) / (A050932 n : ℚ)

end

end A166123.P17080126182771672901

noncomputable section

/-- A166123: If n is prime, a(n) = 1; otherwise, a(n) is gcd(n, d) where d is the denominator of the (n-1)-th Bernoulli number.

Offset 1, canonical program `A166123.P17080126182771672901`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050932, A166120, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166123 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A166123.P17080126182771672901.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050932, A166120, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166123.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166469.P6403527322044406154

`∑{d}[n+1, A356173(#)]`
-/

namespace A166469.P6403527322044406154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A356173 d

end

end A166469.P6403527322044406154

noncomputable section

/-- A166469: Number of divisors of n which are not multiples of consecutive primes.

Offset 1, canonical program `A166469.P6403527322044406154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166469 (n : ℕ) : ℤ :=
  A166469.P6403527322044406154.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166642.P13798496492744235224

`A061142(n+1)*A003959(n+1)`
-/

namespace A166642.P13798496492744235224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A003959 (n + 1)

end

end A166642.P13798496492744235224

noncomputable section

/-- A166642: Totally multiplicative sequence with a(p) = 2*(p+1) for prime p.

Offset 1, canonical program `A166642.P13798496492744235224`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A061142, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166642 (n : ℕ) : ℤ :=
  A166642.P13798496492744235224.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A061142, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166642.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166643.P11291291286064258783

`A165824(n+1)*A003959(n+1)`
-/

namespace A166643.P11291291286064258783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) * A003959 (n + 1)

end

end A166643.P11291291286064258783

noncomputable section

/-- A166643: Totally multiplicative sequence with a(p) = 3*(p+1) for prime p.

Offset 1, canonical program `A166643.P11291291286064258783`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A165824, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166643 (n : ℕ) : ℤ :=
  A166643.P11291291286064258783.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A165824, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166643.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166644.P13854759516563883286

`A165825(n+1)*A003959(n+1)`
-/

namespace A166644.P13854759516563883286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (n + 1) * A003959 (n + 1)

end

end A166644.P13854759516563883286

noncomputable section

/-- A166644: Totally multiplicative sequence with a(p) = 4*(p+1) for prime p.

Offset 1, canonical program `A166644.P13854759516563883286`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A165825, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166644 (n : ℕ) : ℤ :=
  A166644.P13854759516563883286.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A165825, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166644.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166645.P6436054707661887186

`A165826(n+1)*A003959(n+1)`
-/

namespace A166645.P6436054707661887186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165826 (n + 1) * A003959 (n + 1)

end

end A166645.P6436054707661887186

noncomputable section

/-- A166645: Totally multiplicative sequence with a(p) = 5*(p+1) for prime p.

Offset 1, canonical program `A166645.P6436054707661887186`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A165826, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166645 (n : ℕ) : ℤ :=
  A166645.P6436054707661887186.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A165826, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166645.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166646.P5418365843319295519

`A165827(n+1)*A003959(n+1)`
-/

namespace A166646.P5418365843319295519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165827 (n + 1) * A003959 (n + 1)

end

end A166646.P5418365843319295519

noncomputable section

/-- A166646: Totally multiplicative sequence with a(p) = 6*(p+1) for prime p.

Offset 1, canonical program `A166646.P5418365843319295519`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A165827, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166646 (n : ℕ) : ℤ :=
  A166646.P5418365843319295519.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A165827, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166646.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166647.P7403839093025974561

`A165828(n+1)*A003959(n+1)`
-/

namespace A166647.P7403839093025974561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165828 (n + 1) * A003959 (n + 1)

end

end A166647.P7403839093025974561

noncomputable section

/-- A166647: Totally multiplicative sequence with a(p) = 7*(p+1) for prime p.

Offset 1, canonical program `A166647.P7403839093025974561`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A165828, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166647 (n : ℕ) : ℤ :=
  A166647.P7403839093025974561.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A165828, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166647.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166648.P17124068724058937579

`A165829(n+1)*A003959(n+1)`
-/

namespace A166648.P17124068724058937579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165829 (n + 1) * A003959 (n + 1)

end

end A166648.P17124068724058937579

noncomputable section

/-- A166648: Totally multiplicative sequence with a(p) = 8*(p+1) for prime p.

Offset 1, canonical program `A166648.P17124068724058937579`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A165829, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166648 (n : ℕ) : ℤ :=
  A166648.P17124068724058937579.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A165829, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166648.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166649.P15651069989115912745

`A165830(n+1)*A003959(n+1)`
-/

namespace A166649.P15651069989115912745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165830 (n + 1) * A003959 (n + 1)

end

end A166649.P15651069989115912745

noncomputable section

/-- A166649: Totally multiplicative sequence with a(p) = 9*(p+1) for prime p.

Offset 1, canonical program `A166649.P15651069989115912745`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A165830, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166649 (n : ℕ) : ℤ :=
  A166649.P15651069989115912745.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A165830, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166649.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166650.P31481829163144906

`A165831(n+1)*A003959(n+1)`
-/

namespace A166650.P31481829163144906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165831 (n + 1) * A003959 (n + 1)

end

end A166650.P31481829163144906

noncomputable section

/-- A166650: Totally multiplicative sequence with a(p) = 10*(p+1) for prime p.

Offset 1, canonical program `A166650.P31481829163144906`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A165831, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166650 (n : ℕ) : ℤ :=
  A166650.P31481829163144906.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A165831, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166650.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167344.P17306748435152124065

`A003958(n+1)*A003959(n+1)`
-/

namespace A167344.P17306748435152124065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) * A003959 (n + 1)

end

end A167344.P17306748435152124065

noncomputable section

/-- A167344: Totally multiplicative sequence with a(p) = (p-1)*(p+1) = p^2-1 for prime p.

Offset 1, canonical program `A167344.P17306748435152124065`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A003959, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167344 (n : ℕ) : ℤ :=
  A167344.P17306748435152124065.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A003959, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167344.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167349.P4063625469855848635

`A003959(n+1)²`
-/

namespace A167349.P4063625469855848635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) ^ 2

end

end A167349.P4063625469855848635

noncomputable section

/-- A167349: Totally multiplicative sequence with a(p) = (p+1)^2 = p^2+2p+1 for prime p.

Offset 1, canonical program `A167349.P4063625469855848635`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167349 (n : ℕ) : ℤ :=
  A167349.P4063625469855848635.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167349.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167350.P7668436297064043008

`A003959(n+1)*A166586(n+1)`
-/

namespace A167350.P7668436297064043008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A166586 (n + 1)

end

end A167350.P7668436297064043008

noncomputable section

/-- A167350: Totally multiplicative sequence with a(p) = (p+1)*(p-2) = p^2-p-2 for prime p.

Offset 1, canonical program `A167350.P7668436297064043008`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A166586, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167350 (n : ℕ) : ℤ :=
  A167350.P7668436297064043008.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A166586, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167350.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167351.P2583603583113237971

`A003959(n+1)*A166590(n+1)`
-/

namespace A167351.P2583603583113237971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A166590 (n + 1)

end

end A167351.P2583603583113237971

noncomputable section

/-- A167351: Totally multiplicative sequence with a(p) = (p+1)*(p+2) = p^2+3p+2 for prime p.

Offset 1, canonical program `A167351.P2583603583113237971`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A166590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167351 (n : ℕ) : ℤ :=
  A167351.P2583603583113237971.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A166590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167351.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167352.P11746959549573865569

`A003959(n+1)*A166589(n+1)`
-/

namespace A167352.P11746959549573865569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A166589 (n + 1)

end

end A167352.P11746959549573865569

noncomputable section

/-- A167352: Totally multiplicative sequence with a(p) = (p+1)*(p-3) = p^2-2p-3 for prime p.

Offset 1, canonical program `A167352.P11746959549573865569`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A166589, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167352 (n : ℕ) : ℤ :=
  A167352.P11746959549573865569.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A166589, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167352.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167447.P13871075848203580678

`∑{d}[A003961(n+1), A356173(A322361(#))]`
-/

namespace A167447.P13871075848203580678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A356173 (A322361 d).toNat

end

end A167447.P13871075848203580678

noncomputable section

/-- A167447: Number of divisors of n which are not multiples of 3 consecutive primes.

Offset 1, canonical program `A167447.P13871075848203580678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 767 terms. -/
def A167447 (n : ℕ) : ℤ :=
  A167447.P13871075848203580678.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 767 terms. -/
def A167447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168065.P9643825533377042537

`(A003959(n+1)+A003958(n+1))/2`
-/

namespace A168065.P9643825533377042537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) + A003958 (n + 1) : ℚ) / 2

end

end A168065.P9643825533377042537

noncomputable section

/-- A168065: If n = Product p(k)^e(k) then a(n) = (Product (p(k)+1)^e(k) + Product (p(k)-1)^e(k))/2, a(1) = 1.

Offset 1, canonical program `A168065.P9643825533377042537`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A003959, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A168065 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A168065.P9643825533377042537.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A003959, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A168065.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A168066.P11839968661184011680

`(A003959(n+1)-A003958(n+1))/2`
-/

namespace A168066.P11839968661184011680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) - A003958 (n + 1) : ℚ) / 2

end

end A168066.P11839968661184011680

noncomputable section

/-- A168066: If n = Product p(k)^e(k) then a(n) = (Product (p(k)+1)^e(k) - Product (p(k)-1)^e(k))/2, a(1) = 0.

Offset 1, canonical program `A168066.P11839968661184011680`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A003959, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A168066 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A168066.P11839968661184011680.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A003959, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A168066.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A170819.P5191989612477156499

`A097706(A007947(n+1))`
-/

namespace A170819.P5191989612477156499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097706 (A007947 (n + 1)).toNat

end

end A170819.P5191989612477156499

noncomputable section

/-- A170819: a(n) = product of distinct primes of the form 4k-1 that divide n.

Offset 1, canonical program `A170819.P5191989612477156499`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A097706, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A170819 (n : ℕ) : ℤ :=
  A170819.P5191989612477156499.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A097706, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A170819.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181904.P11788640710285973566

`2*(4^(n+1)-1)/A027760(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A181904.P11788640710285973566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * ((4 ^ (n + 1) : ℤ) - 1) : ℚ) / (A027760 (n + 1) : ℚ)

end

end A181904.P11788640710285973566

noncomputable section

/-- A181904: a(n) = 2*(4^n - 1) / A027760(n).

Offset 1, canonical program `A181904.P11788640710285973566`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027760, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181904 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A181904.P11788640710285973566.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027760, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181904.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A192419.P5479684826348337317

`A074243(∑[char[A074243(n+1)]]+1)`
-/

namespace A192419.P5479684826348337317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074243 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074243 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A192419.P5479684826348337317

noncomputable section

/-- A192419: Smallest k such that 1^3, 2^3, 3^3,... n^3 are distinct modulo k.

Offset 1, canonical program `A192419.P5479684826348337317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A192419 (n : ℕ) : ℤ :=
  A192419.P5479684826348337317.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A192419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212655.P8958679214032791556

`A033469(n+1)/A040874(n+1)`
-/

namespace A212655.P8958679214032791556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033469 (n + 1) : ℚ) / (A040874 (n + 1) : ℚ)

end

end A212655.P8958679214032791556

noncomputable section

/-- A212655: Denominator of Bernoulli(2*n,1/2) / Period of length 2: repeat 12, 60.

Offset 1, canonical program `A212655.P8958679214032791556`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033469, A040874, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A212655 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A212655.P8958679214032791556.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033469, A040874, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A212655.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A258116.P9165757537041833098

`filter[A066208(n+1), A008966(#)]`
-/

namespace A258116.P9165757537041833098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A258116.P9165757537041833098

noncomputable section

/-- A258116: The Heinz numbers in increasing order of the partitions into distinct odd parts.

Offset 1, canonical program `A258116.P9165757537041833098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6754 terms. -/
def A258116 (n : ℕ) : ℤ :=
  A258116.P9165757537041833098.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6754 terms. -/
def A258116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260728.P10288930713321800382

`A267116(A097706(round(sqrt(n²+1))))`
-/

namespace A260728.P10288930713321800382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267116 (A097706 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat).toNat

end

end A260728.P10288930713321800382

noncomputable section

/-- A260728: Bitwise-OR of the exponents of all 4k+3 primes in the prime factorization of n.

Offset 0, canonical program `A260728.P10288930713321800382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260728 (n : ℕ) : ℤ :=
  A260728.P10288930713321800382.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267817.P14428491045252130792

`sqrt(∩[A124240(n+1), n²])`
-/

namespace A267817.P14428491045252130792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124240 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A267817.P14428491045252130792

noncomputable section

/-- A267817: Numbers m that are divisible by A268336(m).

Offset 1, canonical program `A267817.P14428491045252130792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A267817 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A267817.P14428491045252130792.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A267817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270652.P2129090608778527896

`A061395(A006881(n+1)*A126865(n+1))`
-/

namespace A270652.P2129090608778527896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A006881 (n + 1) * A126865 (n + 1)).toNat

end

end A270652.P2129090608778527896

noncomputable section

/-- A270652: Max(i,j), where p(i)*p(j) is the n-th term of A006881.

Offset 1, canonical program `A270652.P2129090608778527896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A270652 (n : ℕ) : ℤ :=
  A270652.P2129090608778527896.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A270652.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271634.P9830776161485334030

`2*(eq[17, A165949(n+1)]+1)`
-/

namespace A271634.P9830776161485334030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165949 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A271634.P9830776161485334030

noncomputable section

/-- A271634: Numbers n such that Bernoulli number B_{n} has denominator 510.

Offset 1, canonical program `A271634.P9830776161485334030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A271634 (n : ℕ) : ℤ :=
  (A271634.P9830776161485334030.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A271634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272600.P10387007176654584121

`∩[lt[2, A176095(n+1)]+1, A124240(n+1)+1]`
-/

namespace A272600.P10387007176654584121
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176095 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124240 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A272600.P10387007176654584121

noncomputable section

/-- A272600: Composites k such that p-1 divides k-1 for each prime divisor of k-1.

Offset 1, canonical program `A272600.P10387007176654584121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A272600 (n : ℕ) : ℤ :=
  (A272600.P10387007176654584121.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A272600.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286363.P2923699859799775022

`A046523(A097706(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286363.P2923699859799775022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A097706 (n + 1)).toNat

end

end A286363.P2923699859799775022

noncomputable section

/-- A286363: Least number with the same prime signature as {the largest divisor of n with only prime factors of the form 4k+3} has: a(n) = A046523(A097706(n)).

Offset 1, canonical program `A286363.P2923699859799775022`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A097706, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286363 (n : ℕ) : ℤ :=
  A286363.P2923699859799775022.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A097706, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286363.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286364.P396834155158205291

`1/2*(2+(A286361(n+1)+A286363(n+1))²-A286361(n+1)-3*A286363(n+1))`
-/

namespace A286364.P396834155158205291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A286361 (n + 1) + A286363 (n + 1)) ^ 2 - A286361 (n + 1) - 3 * A286363 (n + 1) : ℚ)

end

end A286364.P396834155158205291

noncomputable section

/-- A286364: Compound filter: a(n) = P(A286361(n), A286363(n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A286364.P396834155158205291`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286361, A286363, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286364 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286364.P396834155158205291.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286361, A286363, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286364.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286365.P13079732361308459791

`2*A286364(n+1)+A000035(A007814(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286365.P13079732361308459791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A286364 (n + 1) + A000035 (A007814 (n + 1)).toNat

end

end A286365.P13079732361308459791

noncomputable section

/-- A286365: Compound filter: a(n) = 2*A286364(n) + A000035(A007814(n)).

Offset 1, canonical program `A286365.P13079732361308459791`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286364, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286365 (n : ℕ) : ℤ :=
  A286365.P13079732361308459791.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286364, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286365.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286366.P17731940063054662949

`2*A286365(n+1)+floor(A072400(n+1)/4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286366.P17731940063054662949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A286365 (n + 1) + ⌊(A072400 (n + 1) : ℚ) / 4⌋

end

end A286366.P17731940063054662949

noncomputable section

/-- A286366: Compound filter: a(n) = 2*A286365(n) + floor(A072400(n)/4).

Offset 1, canonical program `A286366.P17731940063054662949`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072400, A286365, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286366 (n : ℕ) : ℤ :=
  A286366.P17731940063054662949.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072400, A286365, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286366.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286367.P15294916279753429942

`1/2*(2+(A001511(n+1)+A286364(n+1))²-A001511(n+1)-3*A286364(n+1))`
-/

namespace A286367.P15294916279753429942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A001511 (n + 1) + A286364 (n + 1)) ^ 2 - A001511 (n + 1) - 3 * A286364 (n + 1) : ℚ)

end

end A286367.P15294916279753429942

noncomputable section

/-- A286367: Compound filter: a(n) = P(A001511(n), A286364(n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A286367.P15294916279753429942`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286364, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286367 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286367.P15294916279753429942.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286364, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286367.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286369.P1450698806063969712

`2*A286364(n+1)+floor(A072400(n+1)/4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286369.P1450698806063969712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A286364 (n + 1) + ⌊(A072400 (n + 1) : ℚ) / 4⌋

end

end A286369.P1450698806063969712

noncomputable section

/-- A286369: Compound filter: a(n) = 2*A286364(n) + floor(A072400(n)/4).

Offset 1, canonical program `A286369.P1450698806063969712`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072400, A286364, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286369 (n : ℕ) : ℤ :=
  A286369.P1450698806063969712.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072400, A286364, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286369.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286370.P9388022672859368658

`A286369(A139391(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286370.P9388022672859368658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286369 (A139391 (n + 1)).toNat

end

end A286370.P9388022672859368658

noncomputable section

/-- A286370: a(n) = A286369(A139391(n)).

Offset 1, canonical program `A286370.P9388022672859368658`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139391, A286369, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286370 (n : ℕ) : ℤ :=
  A286370.P9388022672859368658.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139391, A286369, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286370.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286371.P6950233767271759210

`A286369(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286371.P6950233767271759210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286369 (A003961 (n + 1)).toNat

end

end A286371.P6950233767271759210

noncomputable section

/-- A286371: a(n) = A286369(A003961(n)).

Offset 1, canonical program `A286371.P6950233767271759210`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A286369, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286371 (n : ℕ) : ℤ :=
  A286371.P6950233767271759210.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A286369, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286371.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286372.P10421830987609414699

`A286366(A064216(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286372.P10421830987609414699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286366 (A064216 (n + 1)).toNat

end

end A286372.P10421830987609414699

noncomputable section

/-- A286372: a(n) = A286366(A064216(n)).

Offset 1, canonical program `A286372.P10421830987609414699`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064216, A286366, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286372 (n : ℕ) : ℤ :=
  A286372.P10421830987609414699.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064216, A286366, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286372.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286373.P10522384416090527033

`A286366(A048673(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286373.P10522384416090527033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286366 (A048673 (n + 1)).toNat

end

end A286373.P10522384416090527033

noncomputable section

/-- A286373: a(n) = A286366(A048673(n)).

Offset 1, canonical program `A286373.P10522384416090527033`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A286366, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286373 (n : ℕ) : ℤ :=
  A286373.P10522384416090527033.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A286366, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286373.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286461.P7084713959318418988

`1/2*(2+(A001511(n+1)+A286364(2*(n+1)-1))²-A001511(n+1)-3*A286364(2*(n+1)-1))`
-/

namespace A286461.P7084713959318418988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A001511 (n + 1) + A286364 (2 * (n + 1) - 1)) ^ 2 - A001511 (n + 1) - 3 * A286364 (2 * (n + 1) - 1) : ℚ)

end

end A286461.P7084713959318418988

noncomputable section

/-- A286461: Compound filter (2-adic valuation of n & 4k+1,4k+3 prime-signature combination of 2n-1): a(n) = P(A001511(n), A286364((2*n)-1)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A286461.P7084713959318418988`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286364, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286461 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286461.P7084713959318418988.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286364, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286461.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286516.P4254569439348095728

`gcd(n+1, A324371(2*(n+1)))`
-/

namespace A286516.P4254569439348095728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A324371 (2 * (n + 1)))

end

end A286516.P4254569439348095728

noncomputable section

/-- A286516: a(n) = b(2*n-1)/b(2*n) where b(n) = A195441(n-1) = denominator(Bernoulli_{n}(x) - Bernoulli_{n}).

Offset 1, canonical program `A286516.P4254569439348095728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A286516 (n : ℕ) : ℤ :=
  (A286516.P4254569439348095728.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A286516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286517.P16062856258681799671

`A324371(2*n+3)`
-/

namespace A286517.P16062856258681799671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324371 (2 * n + 3)

end

end A286517.P16062856258681799671

noncomputable section

/-- A286517: a(n) = b(2*n)/b(2*n+1) where b(n) = denominator(Bernoulli_{n}(x)).

Offset 1, canonical program `A286517.P16062856258681799671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A286517 (n : ℕ) : ℤ :=
  A286517.P16062856258681799671.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A286517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290534.P3969900531987227785

`A006955(n)/gcd(A005843(n), A006955(n))`
-/

namespace A290534.P3969900531987227785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006955 n : ℚ) / (Int.gcd (A005843 n) (A006955 n) : ℚ)

end

end A290534.P3969900531987227785

noncomputable section

/-- A290534: Denominator of 2*n*(2*n+1) B_{2*n}, where B_n are the Bernoulli numbers.

Offset 0, canonical program `A290534.P3969900531987227785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 501 terms. -/
def A290534 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A290534.P3969900531987227785.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 501 terms. -/
def A290534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291180.P12347732886849579905

`record[A097706(4*n+5)*A110560(4*(n+1))]`
-/

namespace A291180.P12347732886849579905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097706 (4 * n + 5) * A110560 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291180.P12347732886849579905

noncomputable section

/-- A291180: Numbers of the form 4*k + 1 with k >= 1 that are not divisible by any prime factor of the form 4*m + 1, except themselves.

Offset 1, canonical program `A291180.P12347732886849579905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1343 terms. -/
def A291180 (n : ℕ) : ℤ :=
  A291180.P12347732886849579905.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1343 terms. -/
def A291180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303789.P8809668206282545156

`A028901(A007093(n))`
-/

namespace A303789.P8809668206282545156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 (A007093 n).toNat

end

end A303789.P8809668206282545156

noncomputable section

/-- A303789: a(n) = Sum_{i=0..m} d(i)*6^i, where Sum_{i=0..m} d(i)*7^i is the base-7 representation of n.

Offset 0, canonical program `A303789.P8809668206282545156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2402 terms. -/
def A303789 (n : ℕ) : ℤ :=
  A303789.P8809668206282545156.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2402 terms. -/
def A303789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306709.P14333036255638275458

`gcd(A001414(n+1), A167344(n+1))%(n+1)`
-/

namespace A306709.P14333036255638275458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001414 (n + 1)) (A167344 (n + 1)) % (n + 1)

end

end A306709.P14333036255638275458

noncomputable section

/-- A306709: For n > 1, a(n) = gcd(A001414(n), A167344(n)) where A001414(n) is the sum of primes p dividing n (with repetition) and A167344(n) = b(n) is the totally multiplicative sequence with b(p) = (p-1)*(p+1) = p^2 - 1; a(1) = 0.

Offset 1, canonical program `A306709.P14333036255638275458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306709 (n : ℕ) : ℤ :=
  (A306709.P14333036255638275458.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324315.P9811049742416120777

`∩[A295102(n+1), A324457(n+1)]`
-/

namespace A324315.P9811049742416120777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324315.P9811049742416120777

noncomputable section

/-- A324315: Squarefree integers m > 1 such that if prime p divides m, then the sum of the base p digits of m is at least p.

Offset 1, canonical program `A324315.P9811049742416120777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 688 terms. -/
def A324315 (n : ℕ) : ℤ :=
  (A324315.P9811049742416120777.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 688 terms. -/
def A324315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326478.P1216846664701973033

`A005451(n+1)/A166123(n+1)`
-/

namespace A326478.P1216846664701973033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005451 (n + 1) : ℚ) / (A166123 (n + 1) : ℚ)

end

end A326478.P1216846664701973033

noncomputable section

/-- A326478: a(n) = n*denominator(n*Bernoulli(n-1))/denominator(Bernoulli(n-1)).

Offset 1, canonical program `A326478.P1216846664701973033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326478 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A326478.P1216846664701973033.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326577.P11339216783745800958

`(2*(n+1)-1)/A326478(2*(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326577.P11339216783745800958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - 1 : ℚ) / (A326478 (2 * (n + 1) - 1) : ℚ)

end

end A326577.P11339216783745800958

noncomputable section

/-- A326577: a(n) = (2*n - 1) / A326478(2*n - 1).

Offset 1, canonical program `A326577.P11339216783745800958`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326478, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326577 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A326577.P11339216783745800958.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326478, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326577.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326578.P13322029343180356668

`(n+1)*A326478(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326578.P13322029343180356668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A326478 (n + 1)

end

end A326578.P13322029343180356668

noncomputable section

/-- A326578: a(n) = n^2*denominator(n*Bernoulli(n-1))/denominator(Bernoulli(n-1)) = n*A326478(n).

Offset 1, canonical program `A326578.P13322029343180356668`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326478, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326578 (n : ℕ) : ℤ :=
  A326578.P13322029343180356668.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326478, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326578.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326584.P8203747700615488689

`(n+1)/A326478(n+1)`
-/

namespace A326584.P8203747700615488689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A326478 (n + 1) : ℚ)

end

end A326584.P8203747700615488689

noncomputable section

/-- A326584: a(n) = gcd(n*N(n-1), D(n-1)), with N(n)/D(n) = B(n) the n-th Bernoulli number.

Offset 1, canonical program `A326584.P8203747700615488689`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326478, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326584 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A326584.P8203747700615488689.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326478, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326584.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327929.P12201532374287229299

`lt[1, A341997(n+2)]+2`
-/

namespace A327929.P12201532374287229299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341997 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A327929.P12201532374287229299

noncomputable section

/-- A327929: Numbers for which there is at least one such prime p that p^p divides the arithmetic derivative of n, A003415(n).

Offset 1, canonical program `A327929.P12201532374287229299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327929 (n : ℕ) : ℤ :=
  (A327929.P12201532374287229299.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328574.P8235392012786303733

`eq[0, A328620(n)]`
-/

namespace A328574.P8235392012786303733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328620 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328574.P8235392012786303733

noncomputable section

/-- A328574: a(1) = 0, and, for n >= 2, numbers n whose primorial base expansion doesn't contain any nonleading zeros.

Offset 1, canonical program `A328574.P8235392012786303733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6348 terms. -/
def A328574 (n : ℕ) : ℤ :=
  (A328574.P8235392012786303733.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6348 terms. -/
def A328574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337119.P17283470140549926217

`p?[A124240(n+1)+1]`
-/

namespace A337119.P17283470140549926217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124240 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A337119.P17283470140549926217

noncomputable section

/-- A337119: Primes p such that b^(p-1) == 1 (mod p-1) for all b coprime to p-1.

Offset 1, canonical program `A337119.P17283470140549926217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1221 terms. -/
def A337119 (n : ℕ) : ℤ :=
  A337119.P17283470140549926217.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1221 terms. -/
def A337119.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338471.P15632408290352518697

`∩[A014612(n+1), A066208(n+1)]`
-/

namespace A338471.P15632408290352518697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338471.P15632408290352518697

noncomputable section

/-- A338471: Products of three prime numbers of odd index.

Offset 1, canonical program `A338471.P15632408290352518697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1851 terms. -/
def A338471 (n : ℕ) : ℤ :=
  (A338471.P15632408290352518697.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1851 terms. -/
def A338471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338901.P1772611056831776762

`A072613(A074845(n+2))`
-/

namespace A338901.P1772611056831776762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072613 (A074845 (n + 2)).toNat

end

end A338901.P1772611056831776762

noncomputable section

/-- A338901: Position of the first appearance of prime(n) as a factor in the list of squarefree semiprimes.

Offset 1, canonical program `A338901.P1772611056831776762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. -/
def A338901 (n : ℕ) : ℤ :=
  A338901.P1772611056831776762.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. -/
def A338901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341996.P1045683566354713313

`char[A327929(n+1)]`
-/

namespace A341996.P1045683566354713313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A341996.P1045683566354713313

noncomputable section

/-- A341996: a(n) = 1 if there is at least one such prime p that p^p divides the arithmetic derivative of n, A003415(n); a(0) = a(1) = 0 by convention.

Offset 0, canonical program `A341996.P1045683566354713313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341996 (n : ℕ) : ℤ :=
  (A341996.P1045683566354713313.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342023.P1722012190854483428

`1-A359550(n+1)`
-/

namespace A342023.P1722012190854483428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A359550 (n + 1)

end

end A342023.P1722012190854483428

noncomputable section

/-- A342023: a(n) = 1 if there is a prime p such that p^p divides n, otherwise 0.

Offset 1, canonical program `A342023.P1722012190854483428`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359550, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342023 (n : ℕ) : ℤ :=
  A342023.P1722012190854483428.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359550, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342023.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347892.P11518152403954504806

`filter[A008591(n+1), A353559(#)]`
-/

namespace A347892.P11518152403954504806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A347892.P11518152403954504806

noncomputable section

/-- A347892: Nonsquarefree numbers k such that A003968(k) is a multiple of k, where A003968 is multiplicative with a(p^e) = p*(p+1)^(e-1).

Offset 1, canonical program `A347892.P11518152403954504806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1028 terms. -/
def A347892 (n : ℕ) : ℤ :=
  A347892.P11518152403954504806.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1028 terms. -/
def A347892.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348029.P15301953817482989203

`A003959(n+1)-A000203(n+1)`
-/

namespace A348029.P15301953817482989203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) - A000203 (n + 1)

end

end A348029.P15301953817482989203

noncomputable section

/-- A348029: a(n) = A003959(n) - sigma(n), where A003959 is multiplicative with a(p^e) = (p+1)^e and sigma is the sum of divisors.

Offset 1, canonical program `A348029.P15301953817482989203`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348029 (n : ℕ) : ℤ :=
  A348029.P15301953817482989203.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348029.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348037.P6839173858251422796

`A003557(n+1)/A348039(n+1)`
-/

namespace A348037.P6839173858251422796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003557 (n + 1) : ℚ) / (A348039 (n + 1) : ℚ)

end

end A348037.P6839173858251422796

noncomputable section

/-- A348037: a(n) = n / gcd(n, A003968(n)), where A003968 is multiplicative with a(p^e) = p*(p+1)^(e-1).

Offset 1, canonical program `A348037.P6839173858251422796`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A348039, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348037 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348037.P6839173858251422796.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A348039, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348037.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348047.P7887878475414206480

`gcd(A000203(n+1), A003959(n+1))`
-/

namespace A348047.P7887878475414206480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A003959 (n + 1))

end

end A348047.P7887878475414206480

noncomputable section

/-- A348047: a(n) = gcd(sigma(n), A003959(n)), where A003959 is multiplicative with a(p^e) = (p+1)^e and sigma is the sum of divisors function.

Offset 1, canonical program `A348047.P7887878475414206480`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348047 (n : ℕ) : ℤ :=
  (A348047.P7887878475414206480.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348047.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348048.P5323458610393115278

`A000203(n+1)/A348047(n+1)`
-/

namespace A348048.P5323458610393115278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A348047 (n + 1) : ℚ)

end

end A348048.P5323458610393115278

noncomputable section

/-- A348048: a(n) = sigma(n) / gcd(sigma(n), A003959(n)), where A003959 is multiplicative with a(p^e) = (p+1)^e and sigma is the sum of divisors function.

Offset 1, canonical program `A348048.P5323458610393115278`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348047, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348048 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348048.P5323458610393115278.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348047, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348048.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348049.P10382415433581504005

`A003959(n+1)/A348047(n+1)`
-/

namespace A348049.P10382415433581504005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A348047 (n + 1) : ℚ)

end

end A348049.P10382415433581504005

noncomputable section

/-- A348049: a(n) = A003959(n) / gcd(sigma(n), A003959(n)), where A003959 is multiplicative with a(p^e) = (p+1)^e and sigma is the sum of divisors function.

Offset 1, canonical program `A348049.P10382415433581504005`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A348047, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348049 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348049.P10382415433581504005.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A348047, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348049.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348507.P8468116905144779811

`A003959(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348507.P8468116905144779811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) - (n + 1 : ℤ)

end

end A348507.P8468116905144779811

noncomputable section

/-- A348507: a(n) = A003959(n) - n, where A003959 is multiplicative with a(p^e) = (p+1)^e.

Offset 1, canonical program `A348507.P8468116905144779811`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348507 (n : ℕ) : ℤ :=
  A348507.P8468116905144779811.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348507.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348508.P7080885370460745572

`A003959(n+1)-2*(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348508.P7080885370460745572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) - (2 * (n + 1) : ℤ)

end

end A348508.P7080885370460745572

noncomputable section

/-- A348508: a(n) = A003959(n) - 2*n, where A003959 is multiplicative with a(p^e) = (p+1)^e.

Offset 1, canonical program `A348508.P7080885370460745572`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348508 (n : ℕ) : ℤ :=
  A348508.P7080885370460745572.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348508.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348512.P14338787327035426851

`A003959(A000203(n+1))`
-/

namespace A348512.P14338787327035426851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A000203 (n + 1)).toNat

end

end A348512.P14338787327035426851

noncomputable section

/-- A348512: a(n) = A003959(sigma(n)), where A003959 is multiplicative with a(p^e) = (p+1)^e and sigma is the sum of divisors function.

Offset 1, canonical program `A348512.P14338787327035426851`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348512 (n : ℕ) : ℤ :=
  A348512.P14338787327035426851.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348512.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348732.P348791247222302933

`A003959(n+1)-A034448(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348732.P348791247222302933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) - A034448 (n + 1)

end

end A348732.P348791247222302933

noncomputable section

/-- A348732: a(n) = A003959(n) - A034448(n), where A003959 is multiplicative with a(p^e) = (p+1)^e and A034448 (usigma) is multiplicative with a(p^e) = (p^e)+1.

Offset 1, canonical program `A348732.P348791247222302933`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348732 (n : ℕ) : ℤ :=
  A348732.P348791247222302933.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348732.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348733.P387886665287851790

`gcd(A003959(n+1), A034448(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348733.P387886665287851790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003959 (n + 1)) (A034448 (n + 1))

end

end A348733.P387886665287851790

noncomputable section

/-- A348733: a(n) = gcd(A003959(n), A034448(n)), where A003959 is multiplicative with a(p^e) = (p+1)^e and A034448 (usigma) is multiplicative with a(p^e) = (p^e)+1.

Offset 1, canonical program `A348733.P387886665287851790`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348733 (n : ℕ) : ℤ :=
  (A348733.P387886665287851790.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348733.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348734.P10246028385959226632

`A003959(n+1)/gcd(A003959(n+1), A034448(n+1))`
-/

namespace A348734.P10246028385959226632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (Int.gcd (A003959 (n + 1)) (A034448 (n + 1)) : ℚ)

end

end A348734.P10246028385959226632

noncomputable section

/-- A348734: Numerator of Product((p+1)^e / ((p^e)+1)), when n = Product(p^e), with p primes, and e their exponents.

Offset 1, canonical program `A348734.P10246028385959226632`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348734 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348734.P10246028385959226632.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348734.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348735.P6706420976582116243

`A034448(n+1)/A348733(n+1)`
-/

namespace A348735.P6706420976582116243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A348733 (n + 1) : ℚ)

end

end A348735.P6706420976582116243

noncomputable section

/-- A348735: Denominator of Product((p+1)^e / ((p^e)+1)), when n = Product(p^e), with p primes, and e their exponents.

Offset 1, canonical program `A348735.P6706420976582116243`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A348733, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348735 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348735.P6706420976582116243.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A348733, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348735.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348929.P10911149095243660924

`gcd(n+1, A003959(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348929.P10911149095243660924
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A003959 (n + 1))

end

end A348929.P10911149095243660924

noncomputable section

/-- A348929: a(n) = gcd(n, A003959(n)), where A003959 is multiplicative with a(p^e) = (p+1)^e.

Offset 1, canonical program `A348929.P10911149095243660924`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348929 (n : ℕ) : ℤ :=
  (A348929.P10911149095243660924.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348929.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348944.P9603351630688322908

`1/2*(A003959(n+1)+A034448(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348944.P9603351630688322908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A003959 (n + 1) + A034448 (n + 1) : ℚ)

end

end A348944.P9603351630688322908

noncomputable section

/-- A348944: a(n) = (1/2) * (A003959(n)+A034448(n)), where A003959 is multiplicative with a(p^e) = (p+1)^e and A034448 (usigma) is multiplicative with a(p^e) = (p^e)+1.

Offset 1, canonical program `A348944.P9603351630688322908`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348944 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348944.P9603351630688322908.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348944.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348945.P12569609886156020164

`A348944(n+1)-A000203(n+1)`
-/

namespace A348945.P12569609886156020164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348944 (n + 1) - A000203 (n + 1)

end

end A348945.P12569609886156020164

noncomputable section

/-- A348945: a(n) = A348944(n) - sigma(n), where A348944 is the arithmetic mean of A003959 and A034448, and sigma is the sum of divisors function.

Offset 1, canonical program `A348945.P12569609886156020164`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348945 (n : ℕ) : ℤ :=
  A348945.P12569609886156020164.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348945.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348946.P4778457590290959046

`gcd(A000203(n+1), A348944(n+1))`
-/

namespace A348946.P4778457590290959046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A348944 (n + 1))

end

end A348946.P4778457590290959046

noncomputable section

/-- A348946: a(n) = gcd(sigma(n), A348944(n)), where A348944 is the arithmetic mean of A003959 and A034448, and sigma is the sum of divisors function.

Offset 1, canonical program `A348946.P4778457590290959046`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348946 (n : ℕ) : ℤ :=
  (A348946.P4778457590290959046.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348946.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348947.P920008061016305859

`A348944(n+1)/A348946(n+1)`
-/

namespace A348947.P920008061016305859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348944 (n + 1) : ℚ) / (A348946 (n + 1) : ℚ)

end

end A348947.P920008061016305859

noncomputable section

/-- A348947: a(n) = A348944(n) / gcd(sigma(n), A348944(n)), where A348944 is the arithmetic mean of A003959 and A034448, and sigma is the sum of divisors function.

Offset 1, canonical program `A348947.P920008061016305859`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348944, A348946, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348947 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348947.P920008061016305859.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348944, A348946, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348947.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348948.P10997058227197864734

`A000203(n+1)/A348946(n+1)`
-/

namespace A348948.P10997058227197864734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A348946 (n + 1) : ℚ)

end

end A348948.P10997058227197864734

noncomputable section

/-- A348948: a(n) = sigma(n) / gcd(sigma(n), A348944(n)), where A348944 is the arithmetic mean of A003959 and A034448, and sigma is the sum of divisors function.

Offset 1, canonical program `A348948.P10997058227197864734`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348946, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348948 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348948.P10997058227197864734.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348946, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348948.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348970.P15142957412835109765

`A003959(n+1)-A129283(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348970.P15142957412835109765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) - A129283 (n + 1)

end

end A348970.P15142957412835109765

noncomputable section

/-- A348970: a(n) = A003959(n) - A129283(n), where A003959 is multiplicative with a(p^e) = (p+1)^e and A129283(n) is sum of n and its arithmetic derivative.

Offset 1, canonical program `A348970.P15142957412835109765`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A129283, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348970 (n : ℕ) : ℤ :=
  A348970.P15142957412835109765.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A129283, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348970.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348972.P942558158600498541

`gcd(A003959(n+1), A129283(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348972.P942558158600498541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003959 (n + 1)) (A129283 (n + 1))

end

end A348972.P942558158600498541

noncomputable section

/-- A348972: a(n) = gcd(A003959(n), A129283(n)), where A003959 is multiplicative with a(p^e) = (p+1)^e and A129283(n) is sum of n and its arithmetic derivative.

Offset 1, canonical program `A348972.P942558158600498541`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A129283, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348972 (n : ℕ) : ℤ :=
  (A348972.P942558158600498541.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A129283, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348972.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348973.P427689290796728672

`A129283(n+1)/A348972(n+1)`
-/

namespace A348973.P427689290796728672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129283 (n + 1) : ℚ) / (A348972 (n + 1) : ℚ)

end

end A348973.P427689290796728672

noncomputable section

/-- A348973: Numerator of ratio A129283(n) / A003959(n), where A003959 is multiplicative with a(p^e) = (p+1)^e and A129283(n) is sum of n and its arithmetic derivative.

Offset 1, canonical program `A348973.P427689290796728672`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129283, A348972, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348973 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348973.P427689290796728672.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129283, A348972, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348973.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348974.P12713574773461642602

`A003959(n+1)/A348972(n+1)`
-/

namespace A348974.P12713574773461642602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A348972 (n + 1) : ℚ)

end

end A348974.P12713574773461642602

noncomputable section

/-- A348974: Denominator of ratio A129283(n) / A003959(n), where A003959 is multiplicative with a(p^e) = (p+1)^e and A129283(n) is sum of n and its arithmetic derivative.

Offset 1, canonical program `A348974.P12713574773461642602`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A348972, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348974 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348974.P12713574773461642602.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A348972, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348974.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349129.P13556310181811753018

`∑{d}[n+1, A003958(#)*A003959((n+1)/#)]`
-/

namespace A349129.P13556310181811753018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003958 d * A003959 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349129.P13556310181811753018

noncomputable section

/-- A349129: a(n) = Sum_{d|n} A003958(d) * A003959(n/d), where A003958 is fully multiplicative with a(p) = (p-1), and A003959 is fully multiplicative with a(p) = (p+1).

Offset 1, canonical program `A349129.P13556310181811753018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349129 (n : ℕ) : ℤ :=
  A349129.P13556310181811753018.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349139.P9969738646670247629

`∑{d}[n+1, A322582(#)*A348507((n+1)/#)]`
-/

namespace A349139.P9969738646670247629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A322582 d * A348507 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349139.P9969738646670247629

noncomputable section

/-- A349139: a(n) = Sum_{d|n} A322582(d) * A348507(n/d), where A322582(n) = n - A003958(n) and A348507(n) = A003959(n) - n.

Offset 1, canonical program `A349139.P9969738646670247629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349139 (n : ℕ) : ℤ :=
  A349139.P9969738646670247629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349140.P14032987347697036060

`∑{d}[n+1, #*A348507((n+1)/#)]`
-/

namespace A349140.P14032987347697036060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A348507 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349140.P14032987347697036060

noncomputable section

/-- A349140: a(n) = Sum_{d|n} d * A348507(n/d), where A348507(n) = A003959(n) - n, where A003959 is fully multiplicative with a(p) = (p+1).

Offset 1, canonical program `A349140.P14032987347697036060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349140 (n : ℕ) : ℤ :=
  A349140.P14032987347697036060.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349142.P9302978881308882123

`∑{d}[n+1, A001615(#)*A348507((n+1)/#)]`
-/

namespace A349142.P9302978881308882123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 d * A348507 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349142.P9302978881308882123

noncomputable section

/-- A349142: a(n) = Sum_{d|n} psi(n/d) * A348507(d), where psi is Dedekind psi (A001615), A348507(n) = A003959(n) - n, and A003959 is fully multiplicative with a(p) = (p+1).

Offset 1, canonical program `A349142.P9302978881308882123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349142 (n : ℕ) : ℤ :=
  A349142.P9302978881308882123.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349143.P5990115332605292708

`∑{d}[n+1, #*A349140((n+1)/#)]`
-/

namespace A349143.P5990115332605292708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A349140 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349143.P5990115332605292708

noncomputable section

/-- A349143: a(n) = Sum_{d|n} A038040(d) * A348507(n/d), where A038040(n) = n*tau(n), A348507(n) = A003959(n) - n, and A003959 is fully multiplicative with a(p) = (p+1).

Offset 1, canonical program `A349143.P5990115332605292708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349143 (n : ℕ) : ℤ :=
  A349143.P5990115332605292708.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349170.P6347552032259399460

`A038040(n+1)+A349140(n+1)`
-/

namespace A349170.P6347552032259399460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1) + A349140 (n + 1)

end

end A349170.P6347552032259399460

noncomputable section

/-- A349170: a(n) = Sum_{d|n} d * A003959(n/d), where A003959 is fully multiplicative with a(p) = (p+1).

Offset 1, canonical program `A349170.P6347552032259399460`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038040, A349140, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349170 (n : ℕ) : ℤ :=
  A349170.P6347552032259399460.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038040, A349140, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349170.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349172.P9409775987477653705

`A327251(n+1)+A349142(n+1)`
-/

namespace A349172.P9409775987477653705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327251 (n + 1) + A349142 (n + 1)

end

end A349172.P9409775987477653705

noncomputable section

/-- A349172: a(n) = Sum_{d|n} psi(d) * A003959(n/d), where A003959 is fully multiplicative with a(p) = (p+1), and psi is Dedekind psi function, A001615.

Offset 1, canonical program `A349172.P9409775987477653705`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327251, A349142, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349172 (n : ℕ) : ℤ :=
  A349172.P9409775987477653705.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327251, A349142, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349172.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351435.P6108883380872985515

`A003959(n+1)*A048250(n+1)`
-/

namespace A351435.P6108883380872985515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A048250 (n + 1)

end

end A351435.P6108883380872985515

noncomputable section

/-- A351435: If n = Product (p_j^k_j) then a(n) = Product ((p_j + 1)^(k_j + 1)).

Offset 1, canonical program `A351435.P6108883380872985515`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A048250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351435 (n : ℕ) : ℤ :=
  A351435.P6108883380872985515.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A048250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351435.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351979.P14330846022404580825

`A066208(n+1)²`
-/

namespace A351979.P14330846022404580825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (n + 1) ^ 2

end

end A351979.P14330846022404580825

noncomputable section

/-- A351979: Numbers whose prime factorization has all odd prime indices and all even prime exponents.

Offset 1, canonical program `A351979.P14330846022404580825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351979 (n : ℕ) : ℤ :=
  A351979.P14330846022404580825.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352142.P6668695384311402358

`filter[A066208(n+1), A295316(#)]`
-/

namespace A352142.P6668695384311402358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A352142.P6668695384311402358

noncomputable section

/-- A352142: Numbers whose prime factorization has all odd indices and all odd exponents.

Offset 1, canonical program `A352142.P6668695384311402358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7692 terms. -/
def A352142 (n : ℕ) : ℤ :=
  A352142.P6668695384311402358.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7692 terms. -/
def A352142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353371.P5704616763070307128

`A000005(n+1)-A353372(n+1)`
-/

namespace A353371.P5704616763070307128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A353372 (n + 1)

end

end A353371.P5704616763070307128

noncomputable section

/-- A353371: Number of divisors of n that are not in A325698.

Offset 1, canonical program `A353371.P5704616763070307128`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A353372, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353371 (n : ℕ) : ℤ :=
  A353371.P5704616763070307128.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A353372, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353371.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A354360.P2549211365831135699

`∪[A013929(n+1), A090958(n)]`
-/

namespace A354360.P2549211365831135699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090958 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A354360.P2549211365831135699

noncomputable section

/-- A354360: Positions of 1's in A354366.

Offset 1, canonical program `A354360.P2549211365831135699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354360 (n : ℕ) : ℤ :=
  (A354360.P2549211365831135699.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354360.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355452.P4445026676875231731

`A010051(A014683(A067513(n+1)))`
-/

namespace A355452.P4445026676875231731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A014683 (A067513 (n + 1)).toNat).toNat

end

end A355452.P4445026676875231731

noncomputable section

/-- A355452: a(n) = 1 if Bernoulli number B_{n} has denominator 6, otherwise 0.

Offset 1, canonical program `A355452.P4445026676875231731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355452 (n : ℕ) : ℤ :=
  A355452.P4445026676875231731.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356172.P9558553611360781644

`A000035(n+1)*A356173(n+1)`
-/

namespace A356172.P9558553611360781644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A356173 (n + 1)

end

end A356172.P9558553611360781644

noncomputable section

/-- A356172: a(n) = 1 if n is odd and not divisible by two consecutive prime numbers, otherwise 0.

Offset 1, canonical program `A356172.P9558553611360781644`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356173, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356172 (n : ℕ) : ℤ :=
  A356172.P9558553611360781644.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356173, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356172.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363340.P2606073215060787245

`A097706(A007913(n+1))`
-/

namespace A363340.P2606073215060787245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097706 (A007913 (n + 1)).toNat

end

end A363340.P2606073215060787245

noncomputable section

/-- A363340: a(n) is the smallest positive integer such that a(n) * n is the sum of two squares.

Offset 1, canonical program `A363340.P2606073215060787245`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, A097706, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363340 (n : ℕ) : ℤ :=
  A363340.P2606073215060787245.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, A097706, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363340.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368328.P12242505159439986281

`A368332((n+1)/∏{p}[n+1, #])`
-/

namespace A368328.P12242505159439986281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368332 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A368328.P12242505159439986281

noncomputable section

/-- A368328: The number of terms of A054743 that divide n.

Offset 1, canonical program `A368328.P12242505159439986281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368328 (n : ℕ) : ℤ :=
  A368328.P12242505159439986281.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368913.P7874936486369943063

`A368914(n+1)-A368915(n+1)`
-/

namespace A368913.P7874936486369943063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368914 (n + 1) - A368915 (n + 1)

end

end A368913.P7874936486369943063

noncomputable section

/-- A368913: a(n) = 1 if there is no prime p such that p^p divides A342001(n), but for A003415(n) such a prime exists, otherwise 0. Here A003415(n) is the arithmetic derivative of n, and A342001(n) = A003415(n) / A003557(n).

Offset 1, canonical program `A368913.P7874936486369943063`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368914, A368915, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368913 (n : ℕ) : ℤ :=
  A368913.P7874936486369943063.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368914, A368915, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368913.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A371015.P13355970796855090247

`(n+1)/A363340(n+1)`
-/

namespace A371015.P13355970796855090247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A363340 (n + 1) : ℚ)

end

end A371015.P13355970796855090247

noncomputable section

/-- A371015: The largest divisor of n that is the sum of 2 squares.

Offset 1, canonical program `A371015.P13355970796855090247`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363340, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A371015 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A371015.P13355970796855090247.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363340, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A371015.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A387710.P1843881796241010643

`lt[A003959(n+1), 2*(n+1)]+1`
-/

namespace A387710.P1843881796241010643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A387710.P1843881796241010643

noncomputable section

/-- A387710: Numbers k for which A003959(k) < 2*k, where A003959 is multiplicative with a(p^e) = (p+1)^e.

Offset 1, canonical program `A387710.P1843881796241010643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387710 (n : ℕ) : ℤ :=
  (A387710.P1843881796241010643.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387711.P8670169942287001865

`lt[2*(n+1), A003959(n+1)]+1`
-/

namespace A387711.P8670169942287001865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A387711.P8670169942287001865

noncomputable section

/-- A387711: Numbers k for which A003959(k) > 2*k, where A003959 is multiplicative with a(p^e) = (p+1)^e.

Offset 1, canonical program `A387711.P8670169942287001865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387711 (n : ℕ) : ℤ :=
  (A387711.P8670169942287001865.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390693.P1105766320151799112

`(n+1)*A363340(n+1)`
-/

namespace A390693.P1105766320151799112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A363340 (n + 1)

end

end A390693.P1105766320151799112

noncomputable section

/-- A390693: The smallest multiple of n that is the sum of 2 squares (A001481).

Offset 1, canonical program `A390693.P1105766320151799112`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363340, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390693 (n : ℕ) : ℤ :=
  A390693.P1105766320151799112.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363340, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390693.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391746.P1830056031143127677

`a(n-1)+A391747(n+1)` with `a(0)=1`
-/

namespace A391746.P1830056031143127677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A391747 (n + 1)

end

end A391746.P1830056031143127677

noncomputable section

/-- A391746: Number of terms of A391909 <= n.

Offset 1, canonical program `A391746.P1830056031143127677`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A391747, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391746 (n : ℕ) : ℤ :=
  A391746.P1830056031143127677.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A391747, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391746.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A001897.P8927680472579916553

`A033469(n)/4^n`
-/

namespace A001897.P8927680472579916553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033469 n : ℚ) / (4 ^ n : ℚ)

end

end A001897.P8927680472579916553

noncomputable section

/-- A001897: Denominators of cosecant numbers: -2*(2^(2*n-1)-1)*Bernoulli(2*n).

Offset 0, canonical program `A001897.P8927680472579916553`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033469, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001897 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A001897.P8927680472579916553.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033469, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001897.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A011949.P6544439330995346585

`A056336(n+1)-A056518(n+1)`
-/

namespace A011949.P6544439330995346585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056336 (n + 1) - A056518 (n + 1)

end

end A011949.P6544439330995346585

noncomputable section

/-- A011949: Number of Barlow packings with group P6(bar)m2 that repeat after 2n layers.

Offset 1, canonical program `A011949.P6544439330995346585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A011949 (n : ℕ) : ℤ :=
  A011949.P6544439330995346585.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A011949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034024.P8684423954840180702

`filter[A053443(n+1), A229062(#)]`
-/

namespace A034024.P8684423954840180702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A034024.P8684423954840180702

noncomputable section

/-- A034024: Imprimitively but not primitively represented by x^2+y^2.

Offset 0, canonical program `A034024.P8684423954840180702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2876 terms. -/
def A034024 (n : ℕ) : ℤ :=
  A034024.P8684423954840180702.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2876 terms. -/
def A034024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034026.P6875606058485551729

`∪[A020893(n+1), A034024(n)]`
-/

namespace A034026.P6875606058485551729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034024 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A034026.P6875606058485551729

noncomputable section

/-- A034026: Numbers that are primitively or imprimitively represented by x^2+y^2, but not both.

Offset 1, canonical program `A034026.P6875606058485551729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034026 (n : ℕ) : ℤ :=
  (A034026.P6875606058485551729.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037465.P14728495649416951361

`A303789(A037466(n))`
-/

namespace A037465.P14728495649416951361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303789 (A037466 n).toNat

end

end A037465.P14728495649416951361

noncomputable section

/-- A037465: a(n) = Sum_{i=0..m} d(i)*6^i, where Sum_{i=0..m} d(i)*5^i is the base 5 representation of n.

Offset 0, canonical program `A037465.P14728495649416951361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2655 terms. -/
def A037465 (n : ℕ) : ℤ :=
  A037465.P14728495649416951361.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2655 terms. -/
def A037465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037864.P18080796445639344832

`A037865(A037465(n+1))`
-/

namespace A037864.P18080796445639344832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037865 (A037465 (n + 1)).toNat

end

end A037864.P18080796445639344832

noncomputable section

/-- A037864: a(n)=(number of digits <=2)-(number of digits >2) in base 5 representation of n.

Offset 1, canonical program `A037864.P18080796445639344832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4299 terms. -/
def A037864 (n : ℕ) : ℤ :=
  A037864.P18080796445639344832.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4299 terms. -/
def A037864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044858.P18319549135852801705

`eq[A044933(n+1), A044942(n+1)]+1`
-/

namespace A044858.P18319549135852801705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044942 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A044858.P18319549135852801705

noncomputable section

/-- A044858: Positive integers having the same number of base-2 runs of odd length as even.

Offset 1, canonical program `A044858.P18319549135852801705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1050 terms. -/
def A044858 (n : ℕ) : ℤ :=
  (A044858.P18319549135852801705.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1050 terms. -/
def A044858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044859.P6733352922850868918

`eq[A044934(n+1), A044943(n+1)]+1`
-/

namespace A044859.P6733352922850868918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044943 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A044859.P6733352922850868918

noncomputable section

/-- A044859: Positive integers having the same number of base-3 runs of odd length as even.

Offset 1, canonical program `A044859.P6733352922850868918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 861 terms. -/
def A044859 (n : ℕ) : ℤ :=
  (A044859.P6733352922850868918.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 861 terms. -/
def A044859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045656.P5470975865177139039

`A045655(n)-∑{d}[n, A045669(#)]`
-/

namespace A045656.P5470975865177139039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045655 n - ∑ d ∈ Nat.divisors (f1 n), A045669 d

end

end A045656.P5470975865177139039

noncomputable section

/-- A045656: Number of 2n-bead balanced binary strings, rotationally equivalent to reverse, complement and reversed complement.

Offset 0, canonical program `A045656.P5470975865177139039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A045656 (n : ℕ) : ℤ :=
  A045656.P5470975865177139039.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A045656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045659.P18078101322428764532

`A045654(n)-A045656(n)`
-/

namespace A045659.P18078101322428764532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045654 n - A045656 n

end

end A045659.P18078101322428764532

noncomputable section

/-- A045659: Number of 2n-bead balanced binary strings, rotationally equivalent to complement, inequivalent to reverse and reversed complement.

Offset 0, canonical program `A045659.P18078101322428764532`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045654, A045656, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A045659 (n : ℕ) : ℤ :=
  A045659.P18078101322428764532.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045654, A045656, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A045659.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A045660.P14796031568194010525

`A045655(n)-A045656(n)`
-/

namespace A045660.P14796031568194010525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045655 n - A045656 n

end

end A045660.P14796031568194010525

noncomputable section

/-- A045660: Number of 2n-bead balanced binary strings, rotationally equivalent to reversed complement, inequivalent to reverse and complement.

Offset 0, canonical program `A045660.P14796031568194010525`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045655, A045656, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A045660 (n : ℕ) : ℤ :=
  A045660.P14796031568194010525.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045655, A045656, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A045660.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A046886.P6072757339974154417

`A067513(2*(n+1))`
-/

namespace A046886.P6072757339974154417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (2 * (n + 1))

end

end A046886.P6072757339974154417

noncomputable section

/-- A046886: Number of divisors d of 2n satisfying (d+1) = prime or number of prime factors of the denominator of the even Bernoulli numbers.

Offset 1, canonical program `A046886.P6072757339974154417`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067513, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046886 (n : ℕ) : ℤ :=
  A046886.P6072757339974154417.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067513, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046886.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053834.P7687178758272888330

`A055647(n)%99`
-/

namespace A053834.P7687178758272888330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055647 n) 99

end

end A053834.P7687178758272888330

noncomputable section

/-- A053834: Sum of digits of n written in base 14.

Offset 0, canonical program `A053834.P7687178758272888330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053834 (n : ℕ) : ℤ :=
  A053834.P7687178758272888330.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056513.P10775552147206924827

`A056518(A233583(n+1))`
-/

namespace A056513.P10775552147206924827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056518 (A233583 (n + 1)).toNat

end

end A056513.P10775552147206924827

noncomputable section

/-- A056513: Number of primitive (period n) periodic palindromic structures using a maximum of two different symbols.

Offset 0, canonical program `A056513.P10775552147206924827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A056513 (n : ℕ) : ℤ :=
  A056513.P10775552147206924827.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A056513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064899.P16636012330483880893

`filter[A342256(n+1), A280710(#)]`
-/

namespace A064899.P16636012330483880893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A064899.P16636012330483880893

noncomputable section

/-- A064899: Numbers that are of the form pq where p and q are distinct primes that are the orders of non-Abelian groups.

Offset 1, canonical program `A064899.P16636012330483880893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3516 terms. -/
def A064899 (n : ℕ) : ℤ :=
  A064899.P16636012330483880893.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3516 terms. -/
def A064899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065339.P2810771096728781745

`A001222(A097706(n+1))`
-/

namespace A065339.P2810771096728781745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A097706 (n + 1)).toNat

end

end A065339.P2810771096728781745

noncomputable section

/-- A065339: Number of primes congruent to 3 modulo 4 dividing n (with multiplicity).

Offset 1, canonical program `A065339.P2810771096728781745`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A097706, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A065339 (n : ℕ) : ℤ :=
  A065339.P2810771096728781745.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A097706, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A065339.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A077135.P8276527008192767829

`∪[2*A077065(n+1), A001358(n+1)]`
-/

namespace A077135.P8276527008192767829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A077135.P8276527008192767829

noncomputable section

/-- A077135: Composite numbers n whose proper (other than 1 and n) odd divisors are prime and even divisors are 1 less than a prime.

Offset 1, canonical program `A077135.P8276527008192767829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077135 (n : ℕ) : ℤ :=
  (A077135.P8276527008192767829.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080092.P1141059548858687428

`p?[A138239(abs(1-n))]`
-/

namespace A080092.P1141059548858687428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138239 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080092.P1141059548858687428

noncomputable section

/-- A080092: Irregular triangle read by rows, giving prime sequences (p-1|2n) appearing in the n-th von Staudt-Clausen sum.

Offset 1, canonical program `A080092.P1141059548858687428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 429 terms. -/
def A080092 (n : ℕ) : ℤ :=
  A080092.P1141059548858687428.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 429 terms. -/
def A080092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083025.P6816948614237307391

`A001222(n+1)-A007814(n+1)-A065339(n+1)`
-/

namespace A083025.P6816948614237307391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A007814 (n + 1) - A065339 (n + 1)

end

end A083025.P6816948614237307391

noncomputable section

/-- A083025: Number of primes congruent to 1 modulo 4 dividing n (with multiplicity).

Offset 1, canonical program `A083025.P6816948614237307391`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A065339, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083025 (n : ℕ) : ℤ :=
  A083025.P6816948614237307391.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A065339, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083025.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100716.P8277390293704349622

`eq[1, A342023(n+1)]+1`
-/

namespace A100716.P8277390293704349622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342023 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A100716.P8277390293704349622

noncomputable section

/-- A100716: Numbers k such that p^p divides k for some prime p.

Offset 1, canonical program `A100716.P8277390293704349622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100716 (n : ℕ) : ℤ :=
  (A100716.P8277390293704349622.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100716.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129253.P16887273636312743906

`∑[A342023(n+1)]`
-/

namespace A129253.P16887273636312743906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129253.P16887273636312743906

noncomputable section

/-- A129253: Number of numbers not greater than n having at least one divisor p^e with p<=e, p prime.

Offset 1, canonical program `A129253.P16887273636312743906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129253 (n : ℕ) : ℤ :=
  A129253.P16887273636312743906.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129254.P18154501842966907616

`∩[A100716(n+1)-1, A100716(n+1)]`
-/

namespace A129254.P18154501842966907616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100716 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129254.P18154501842966907616

noncomputable section

/-- A129254: Numbers k such that both k and k+1 have at least one divisor of the form p^e with p<=e, p prime.

Offset 1, canonical program `A129254.P18154501842966907616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 672 terms. -/
def A129254 (n : ℕ) : ℤ :=
  (A129254.P18154501842966907616.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 672 terms. -/
def A129254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132084.P7606522136446694232

`2*A001897(n)/A141044(n)`
-/

namespace A132084.P7606522136446694232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A001897 n : ℚ) / (A141044 n : ℚ))

end

end A132084.P7606522136446694232

noncomputable section

/-- A132084: A051717(2n).

Offset 0, canonical program `A132084.P7606522136446694232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 646 terms. -/
def A132084 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A132084.P7606522136446694232.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 646 terms. -/
def A132084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175768.P8239218232139053030

`p?[(n+2)*A342023(n+1)]`
-/

namespace A175768.P8239218232139053030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A342023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175768.P8239218232139053030

noncomputable section

/-- A175768: Primes of the form k * b^b + 1, with b > 1.

Offset 1, canonical program `A175768.P8239218232139053030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3445 terms. -/
def A175768 (n : ℕ) : ℤ :=
  A175768.P8239218232139053030.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3445 terms. -/
def A175768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185347.P5405652770871536656

`∩[A064899(n+1), A127337(n+1)]`
-/

namespace A185347.P5405652770871536656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185347.P5405652770871536656

noncomputable section

/-- A185347: Semiprimes that are the sum of 10 consecutive primes.

Offset 1, canonical program `A185347.P5405652770871536656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A185347 (n : ℕ) : ℤ :=
  (A185347.P5405652770871536656.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A185347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209661.P3943168647382713519

`(-1)^A083025(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A209661.P3943168647382713519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A083025 (n + 1) : ℤ)

end

end A209661.P3943168647382713519

noncomputable section

/-- A209661: a(n) = (-1)^A083025(n).

Offset 1, canonical program `A209661.P3943168647382713519`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083025, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A209661 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A209661.P3943168647382713519.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083025, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A209661.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A209662.P10047044424583177096

`(n+1)*A209661(n+1)`
-/

namespace A209662.P10047044424583177096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A209661 (n + 1)

end

end A209662.P10047044424583177096

noncomputable section

/-- A209662: a(n) = (-1)^A083025(n)*n.

Offset 1, canonical program `A209662.P10047044424583177096`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209661, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A209662 (n : ℕ) : ℤ :=
  A209662.P10047044424583177096.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209661, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A209662.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A209921.P1460614472512575037

`record[A209662(n+1)]`
-/

namespace A209921.P1460614472512575037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209921.P1460614472512575037

noncomputable section

/-- A209921: Position of positive values in A209661 and A209662.

Offset 1, canonical program `A209921.P1460614472512575037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5101 terms. -/
def A209921 (n : ℕ) : ℤ :=
  A209921.P1460614472512575037.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5101 terms. -/
def A209921.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235626.P1590916053852408949

`p?[A037465(A000040(n+1))]`
-/

namespace A235626.P1590916053852408949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235626.P1590916053852408949

noncomputable section

/-- A235626: Primes whose base-6 representation also is the base-5 representation of a prime.

Offset 1, canonical program `A235626.P1590916053852408949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A235626 (n : ℕ) : ℤ :=
  A235626.P1590916053852408949.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A235626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246270.P10934646517681247770

`A065339(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246270.P10934646517681247770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (A003961 (n + 1)).toNat

end

end A246270.P10934646517681247770

noncomputable section

/-- A246270: Number of prime factors of the form 4k+3 (counted with multiplicity) in A003961(n): a(n) = A065339(A003961(n)).

Offset 1, canonical program `A246270.P10934646517681247770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A065339, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246270 (n : ℕ) : ℤ :=
  A246270.P10934646517681247770.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A065339, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246270.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A260730.P1041538561138783380

`lt[A260728(n+1), A065339(n+1)]+1`
-/

namespace A260730.P1041538561138783380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A260730.P1041538561138783380

noncomputable section

/-- A260730: Numbers n for which A065339(n) > A260728(n).

Offset 1, canonical program `A260730.P1041538561138783380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2608 terms. -/
def A260730 (n : ℕ) : ℤ :=
  (A260730.P1041538561138783380.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2608 terms. -/
def A260730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263022.P14938541142514975447

`gcd(∑[n+1]², A326478(n+2))`
-/

namespace A263022.P14938541142514975447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) (A326478 (n + 2))

end

end A263022.P14938541142514975447

noncomputable section

/-- A263022: a(n) = gcd(n, 1^(n-1) + 2^(n-1) + ... + (n-1)^(n-1)) for n > 1.

Offset 2, canonical program `A263022.P14938541142514975447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A263022 (n : ℕ) : ℤ :=
  (A263022.P14938541142514975447.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A263022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268377.P13087392663479504575

`eq[0, A083025(A038387(n+1))]+1`
-/

namespace A268377.P13087392663479504575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083025 (A038387 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A268377.P13087392663479504575

noncomputable section

/-- A268377: Numbers n such that any prime factor of the form 4k+1 has even multiplicity.

Offset 1, canonical program `A268377.P13087392663479504575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3842 terms. -/
def A268377 (n : ℕ) : ℤ :=
  (A268377.P13087392663479504575.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3842 terms. -/
def A268377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268378.P4635822612041174352

`∩[A187811(n+1), A268377(n+1)]`
-/

namespace A268378.P4635822612041174352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268378.P4635822612041174352

noncomputable section

/-- A268378: Numbers whose prime factorization includes at least one prime factor of form 4k+3 and any prime factor of the form 4k+1 has even multiplicity.

Offset 1, canonical program `A268378.P4635822612041174352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4803 terms. -/
def A268378 (n : ℕ) : ℤ :=
  (A268378.P4635822612041174352.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4803 terms. -/
def A268378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278509.P8841734432031037313

`3^A065339(n+1)`
-/

namespace A278509.P8841734432031037313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A065339 (n + 1) : ℤ)

end

end A278509.P8841734432031037313

noncomputable section

/-- A278509: a(n) = 3^{number of primes congruent to 3 modulo 4 dividing n (with multiplicity)}.

Offset 1, canonical program `A278509.P8841734432031037313`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065339, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A278509 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A278509.P8841734432031037313.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065339, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A278509.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A281662.P12271729128554163798

`A132084(n+1)%(n+1)`
-/

namespace A281662.P12271729128554163798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132084 (n + 1)) (n + 1 : ℤ)

end

end A281662.P12271729128554163798

noncomputable section

/-- A281662: (Denominator of Bernoulli(2*n)) read mod n.

Offset 1, canonical program `A281662.P12271729128554163798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 645 terms. -/
def A281662 (n : ℕ) : ℤ :=
  A281662.P12271729128554163798.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 645 terms. -/
def A281662.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285015.P16882226223254200009

`p?[n*A342023(n+1)]`
-/

namespace A285015.P16882226223254200009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A342023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A285015.P16882226223254200009

noncomputable section

/-- A285015: Primes of the form k * b^b - 1, with b > 1.

Offset 1, canonical program `A285015.P16882226223254200009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3463 terms. -/
def A285015 (n : ℕ) : ℤ :=
  A285015.P16882226223254200009.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3463 terms. -/
def A285015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292911.P11305991147892736781

`record[A326584(A072436(2*n+1))-n]`
-/

namespace A292911.P11305991147892736781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326584 (A072436 (2 * n + 1)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292911.P11305991147892736781

noncomputable section

/-- A292911: Numbers n such that A291897(n) is divisible by (2*n-1)^3.

Offset 1, canonical program `A292911.P11305991147892736781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A292911 (n : ℕ) : ℤ :=
  A292911.P11305991147892736781.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A292911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309132.P6253841371733913923

`lcm(A326478(n+1)², A326478(A055032(n+1)²))`
-/

namespace A309132.P6253841371733913923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A326478 (n + 1) ^ 2) (A326478 (A055032 (n + 1) ^ 2).toNat)

end

end A309132.P6253841371733913923

noncomputable section

/-- A309132: a(n) is the denominator of F(n) = A027641(n-1)/n + A027642(n-1)/n^2.

Offset 1, canonical program `A309132.P6253841371733913923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A309132 (n : ℕ) : ℤ :=
  (A309132.P6253841371733913923.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A309132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333656.P10234480907296482497

`comp[A037465(n)]`
-/

namespace A333656.P10234480907296482497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A333656.P10234480907296482497

noncomputable section

/-- A333656: Numbers having at least one 5 in their representation in base 6.

Offset 1, canonical program `A333656.P10234480907296482497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333656 (n : ℕ) : ℤ :=
  (A333656.P10234480907296482497.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338469.P2285265360204035828

`∩[A338471(n+1), A038513(n)]`
-/

namespace A338469.P2285265360204035828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038513 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338469.P2285265360204035828

noncomputable section

/-- A338469: Products of three odd prime numbers of odd index.

Offset 1, canonical program `A338469.P2285265360204035828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1696 terms. -/
def A338469 (n : ℕ) : ℤ :=
  (A338469.P2285265360204035828.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1696 terms. -/
def A338469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347960.P10953407055557038276

`lt[A348037(n+1), A003557(n+1)]+1`
-/

namespace A347960.P10953407055557038276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A347960.P10953407055557038276

noncomputable section

/-- A347960: Numbers k for which A348036(k) > A007947(k).

Offset 1, canonical program `A347960.P10953407055557038276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 515 terms. -/
def A347960 (n : ℕ) : ℤ :=
  (A347960.P10953407055557038276.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 515 terms. -/
def A347960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367576.P13170412679761465563

`filter[A064899(n+1), A347871(#)]`
-/

namespace A367576.P13170412679761465563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347871 (f1 j).toNat = 1) n)

end

end A367576.P13170412679761465563

noncomputable section

/-- A367576: Semiprimes p*q such that 2*p divides q-1.

Offset 1, canonical program `A367576.P13170412679761465563`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A367576 (n : ℕ) : ℤ :=
  A367576.P13170412679761465563.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A367576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378879.P5399312631734305256

`A007814(n+1)+A065339(n+1)`
-/

namespace A378879.P5399312631734305256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + A065339 (n + 1)

end

end A378879.P5399312631734305256

noncomputable section

/-- A378879: a(n) = number of non-Pythagorean primes in the prime factorization of n (including multiplicities).

Offset 1, canonical program `A378879.P5399312631734305256`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065339, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378879 (n : ℕ) : ℤ :=
  A378879.P5399312631734305256.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065339, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378879.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378880.P15528048256974238467

`A378879(n+1)-A083025(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378880.P15528048256974238467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378879 (n + 1) - A083025 (n + 1)

end

end A378880.P15528048256974238467

noncomputable section

/-- A378880: a(n) = A378879(n) - A083025(n).

Offset 1, canonical program `A378880.P15528048256974238467`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083025, A378879, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378880 (n : ℕ) : ℤ :=
  A378880.P15528048256974238467.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083025, A378879, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378880.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A011948.P16276404241743664324

`A000046(n+6)-A056513(n+6)`
-/

namespace A011948.P16276404241743664324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000046 (n + 6) - A056513 (n + 6)

end

end A011948.P16276404241743664324

noncomputable section

/-- A011948: Number of Barlow packings with group P63mc that repeat after 2n layers.

Offset 6, canonical program `A011948.P16276404241743664324`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000046, A056513, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A011948 (n : ℕ) : ℤ :=
  A011948.P16276404241743664324.a (n - 6)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000046, A056513, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A011948.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A034023.P16116273836108491271

`∪[A034024(n), A034025(n)]`
-/

namespace A034023.P16116273836108491271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034024 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034025 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A034023.P16116273836108491271

noncomputable section

/-- A034023: Imprimitively represented by x^2+y^2.

Offset 0, canonical program `A034023.P16116273836108491271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034023 (n : ℕ) : ℤ :=
  (A034023.P16116273836108491271.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051717.P719788567158624044

`lcm(A000034(n), A132084(floor(n/2)))`
-/

namespace A051717.P719788567158624044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A132084 ⌊(n : ℚ) / 2⌋.toNat)

end

end A051717.P719788567158624044

noncomputable section

/-- A051717: 1, followed by denominators of first differences of Bernoulli numbers (B(i)-B(i-1)).

Offset 0, canonical program `A051717.P719788567158624044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1292 terms. -/
def A051717 (n : ℕ) : ℤ :=
  (A051717.P719788567158624044.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1292 terms. -/
def A051717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065338.P7827542733654779257

`2^A007814(n+1)*3^A065339(n+1)`
-/

namespace A065338.P7827542733654779257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A007814 (n + 1) : ℤ) * (3 : ℚ) ^ (A065339 (n + 1) : ℤ)

end

end A065338.P7827542733654779257

noncomputable section

/-- A065338: a(1) = 1, a(p) = p mod 4 for p prime and a(u * v) = a(u) * a(v) for u, v > 0.

Offset 1, canonical program `A065338.P7827542733654779257`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065339, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065338 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A065338.P7827542733654779257.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065339, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065338.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078458.P449076157569164237

`2*A007814(n+1)+2*A083025(n+1)+A065339(n+1)`
-/

namespace A078458.P449076157569164237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007814 (n + 1) + 2 * A083025 (n + 1) + A065339 (n + 1)

end

end A078458.P449076157569164237

noncomputable section

/-- A078458: Total number of factors in a factorization of n into Gaussian primes.

Offset 1, canonical program `A078458.P449076157569164237`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065339, A083025, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A078458 (n : ℕ) : ℤ :=
  A078458.P449076157569164237.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065339, A083025, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A078458.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079635.P16766627809967727170

`A083025(n+1)-A065339(n+1)`
-/

namespace A079635.P16766627809967727170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083025 (n + 1) - A065339 (n + 1)

end

end A079635.P16766627809967727170

noncomputable section

/-- A079635: Sum of (2 - p mod 4) for all prime factors p of n (with repetition).

Offset 1, canonical program `A079635.P16766627809967727170`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065339, A083025, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079635 (n : ℕ) : ℤ :=
  A079635.P16766627809967727170.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065339, A083025, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079635.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A140812.P6882242940985377112

`A051717(2*n)+A051717(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140812.P6882242940985377112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 (2 * n) + A051717 (2 * n + 1)

end

end A140812.P6882242940985377112

noncomputable section

/-- A140812: a(n) = A051717(2n) + A051717(2n+1).

Offset 0, canonical program `A140812.P6882242940985377112`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051717, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140812 (n : ℕ) : ℤ :=
  A140812.P6882242940985377112.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051717, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140812.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A153087.P3812379538921097872

`A051717(3*n)+A051717(3*n+1)+A051717(3*n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A153087.P3812379538921097872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 (3 * n) + A051717 (3 * n + 1) + A051717 (3 * n + 2)

end

end A153087.P3812379538921097872

noncomputable section

/-- A153087: a(n) = A051717(3n) + A051717(3n+1) + A051717(3n+2).

Offset 0, canonical program `A153087.P3812379538921097872`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051717, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153087 (n : ℕ) : ℤ :=
  A153087.P3812379538921097872.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051717, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153087.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A240370.P5719875248519778256

`eq[1, A065338(A057521(n+1))]+1`
-/

namespace A240370.P5719875248519778256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065338 (A057521 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A240370.P5719875248519778256

noncomputable section

/-- A240370: Positive integers n such that every element in the ring of integers modulo n can be written as the sum of two squares modulo n.

Offset 1, canonical program `A240370.P5719875248519778256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6504 terms. -/
def A240370 (n : ℕ) : ℤ :=
  (A240370.P5719875248519778256.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6504 terms. -/
def A240370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246269.P7585923862198389886

`A065338(A003961(n+1))`
-/

namespace A246269.P7585923862198389886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065338 (A003961 (n + 1)).toNat

end

end A246269.P7585923862198389886

noncomputable section

/-- A246269: a(1) = 1, a(p(k)) = p(k+1) mod 4 for k-th prime p(k) and a(u * v) = a(u) * a(v) for u, v > 0.

Offset 1, canonical program `A246269.P7585923862198389886`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A065338, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246269 (n : ℕ) : ℤ :=
  A246269.P7585923862198389886.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A065338, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246269.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268379.P6643847251497471161

`lt[0, A079635(A028310(n))]`
-/

namespace A268379.P6643847251497471161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079635 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A268379.P6643847251497471161

noncomputable section

/-- A268379: Numbers having more prime factors of the form 4*k+1 than of the form 4*k+3, when counted with multiplicity.

Offset 1, canonical program `A268379.P6643847251497471161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2914 terms. -/
def A268379 (n : ℕ) : ℤ :=
  (A268379.P6643847251497471161.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2914 terms. -/
def A268379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268380.P16043284880696432250

`lt[A079635(A028310(n))+1, 1]`
-/

namespace A268380.P16043284880696432250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079635 (A028310 n).toNat + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A268380.P16043284880696432250

noncomputable section

/-- A268380: Numbers having fewer prime factors of the form 4*k+1 than of the form 4*k+3, when counted with multiplicity.

Offset 1, canonical program `A268380.P16043284880696432250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4936 terms. -/
def A268380 (n : ℕ) : ℤ :=
  (A268380.P16043284880696432250.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4936 terms. -/
def A268380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268381.P11095387665470384089

`comp[A268380(n+1)-1]+1`
-/

namespace A268381.P11095387665470384089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268380 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A268381.P11095387665470384089

noncomputable section

/-- A268381: Numbers having at least the same number of prime factors of the form 4*k+1 than of the form 4*k+3, when counted with multiplicity.

Offset 1, canonical program `A268381.P11095387665470384089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268381 (n : ℕ) : ℤ :=
  (A268381.P11095387665470384089.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342025.P9862321101140846268

`A214264(A079635(n+1)²)`
-/

namespace A342025.P9862321101140846268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214264 (A079635 (n + 1) ^ 2).toNat

end

end A342025.P9862321101140846268

noncomputable section

/-- A342025: a(n) = 1 if n has the same numbers of prime factors of forms 4*k+1 and 4*k+3 when counted with multiplicity, otherwise 0.

Offset 1, canonical program `A342025.P9862321101140846268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342025 (n : ℕ) : ℤ :=
  A342025.P9862321101140846268.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353479.P12835136818281320905

`A280710(n+1)*A342025(n+1)`
-/

namespace A353479.P12835136818281320905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280710 (n + 1) * A342025 (n + 1)

end

end A353479.P12835136818281320905

noncomputable section

/-- A353479: a(n) = 1 if n is a semiprime of the form 4k+3, otherwise 0.

Offset 1, canonical program `A353479.P12835136818281320905`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A280710, A342025, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353479 (n : ℕ) : ℤ :=
  A353479.P12835136818281320905.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A280710, A342025, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353479.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057129.P2974831021615174290

`eq[gcd(8, n+1), A065338(n+1)]+1`
-/

namespace A057129.P2974831021615174290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 8 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065338 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A057129.P2974831021615174290

noncomputable section

/-- A057129: -4 is a square mod n.

Offset 1, canonical program `A057129.P2974831021615174290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2074 terms. -/
def A057129 (n : ℕ) : ℤ :=
  (A057129.P2974831021615174290.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2074 terms. -/
def A057129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072202.P15384746897434729582

`eq[1, A342025(n+1)]+1`
-/

namespace A072202.P15384746897434729582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342025 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072202.P15384746897434729582

noncomputable section

/-- A072202: Same numbers of prime factors of forms 4*k+1 and 4*k+3, counted with multiplicity.

Offset 1, canonical program `A072202.P15384746897434729582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072202 (n : ℕ) : ℤ :=
  (A072202.P15384746897434729582.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115393.P13485975269135048129

`A086005(n+1)+1`
-/

namespace A115393.P13485975269135048129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086005 (n + 1) + 1

end

end A115393.P13485975269135048129

noncomputable section

/-- A115393: Numbers k such that k, k-1 and k-2 are semiprimes.

Offset 1, canonical program `A115393.P13485975269135048129`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115393 (n : ℕ) : ℤ :=
  A115393.P13485975269135048129.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115393.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A174649.P7185639192184824919

`A072000(A086005(n+1))`
-/

namespace A174649.P7185639192184824919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A086005 (n + 1)).toNat

end

end A174649.P7185639192184824919

noncomputable section

/-- A174649: Numbers k such that semiprime(k)+/ -1 are both semiprime.

Offset 1, canonical program `A174649.P7185639192184824919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. -/
def A174649 (n : ℕ) : ℤ :=
  A174649.P7185639192184824919.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. -/
def A174649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202237.P6137577916536499133

`record[(2*n+1)*A342025(2*n+1)]`
-/

namespace A202237.P6137577916536499133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A342025 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202237.P6137577916536499133

noncomputable section

/-- A202237: Odd numbers with the same number of prime factors of the form 4*k+1 and 4*k+3.

Offset 1, canonical program `A202237.P6137577916536499133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7144 terms. -/
def A202237 (n : ℕ) : ℤ :=
  A202237.P6137577916536499133.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7144 terms. -/
def A202237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353477.P2258751349755491853

`A353480(n+1)-A353479(n+1)`
-/

namespace A353477.P2258751349755491853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353480 (n + 1) - A353479 (n + 1)

end

end A353477.P2258751349755491853

noncomputable section

/-- A353477: a(n) = 1 if n is a semiprime of the form 4k+1, otherwise 0.

Offset 1, canonical program `A353477.P2258751349755491853`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353479, A353480, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353477 (n : ℕ) : ℤ :=
  A353477.P2258751349755491853.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353479, A353480, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353477.provenance : SequenceMachineLib.Provenance := .conditional

