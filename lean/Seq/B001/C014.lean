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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C049
import Seq.B000.C050
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A365414.P5972711009261170404

`A000203(6*n+4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A365414.P5972711009261170404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (6 * n + 4)

end

end A365414.P5972711009261170404

noncomputable section

/-- A365414: a(n) = sigma(6*n+4). Sum of the divisors of 6*n+4, n >= 0.

Offset 0, canonical program `A365414.P5972711009261170404`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(6*n+4)` (program `A365414.P5972711009261170404`, by `A365414.P5972711009261170404.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A365414 (n : ℕ) : ℤ :=
  A365414.P5972711009261170404.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(6*n+4)` (program `A365414.P5972711009261170404`, by `A365414.P5972711009261170404.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A365414.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A366138.P2654854252646273173

`A000326(row(n)-col(n)+1)*T(n,k-1)+T(n-1,k)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366138.P2654854252646273173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000326 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat * SequenceMachineLib.triLeft a n + SequenceMachineLib.triUp a n

end

end A366138.P2654854252646273173

noncomputable section

/-- A366138: Triangle read by rows. T(n, k) = A000326(n - k + 1) * T(n, k - 1) + T(n - 1, k) for 0 < k < n. T(n, 0) = 1 and T(n, n) = T(n, n - 1) if n > 0.

Offset 0, canonical program `A366138.P2654854252646273173`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000326(row(n)-col(n)+1)*T(n,k-1)+T(n-1,k)` (program `A366138.P2654854252646273173`, by `A366138.P2654854252646273173.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A366138 (n : ℕ) : ℤ :=
  A366138.P2654854252646273173.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000326(row(n)-col(n)+1)*T(n,k-1)+T(n-1,k)` (program `A366138.P2654854252646273173`, by `A366138.P2654854252646273173.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A366138.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A366149.P13195317199118685412

`A000566(row(n)-col(n)+1)*T(n,k-1)+T(n-1,k)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366149.P13195317199118685412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000566 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat * SequenceMachineLib.triLeft a n + SequenceMachineLib.triUp a n

end

end A366149.P13195317199118685412

noncomputable section

/-- A366149: Triangle read by rows. T(n, k) = A000566(n - k + 1) * T(n, k - 1) + T(n - 1, k) for 0 < k < n. T(n, 0) = 1 and T(n, n) = T(n, n - 1) if n > 0.

Offset 0, canonical program `A366149.P13195317199118685412`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000566(row(n)-col(n)+1)*T(n,k-1)+T(n-1,k)` (program `A366149.P13195317199118685412`, by `A366149.P13195317199118685412.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A366149 (n : ℕ) : ℤ :=
  A366149.P13195317199118685412.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000566(row(n)-col(n)+1)*T(n,k-1)+T(n-1,k)` (program `A366149.P13195317199118685412`, by `A366149.P13195317199118685412.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A366149.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A366506.P1712958148800648278

`A000032(n+1)+3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366506.P1712958148800648278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) + 3

end

end A366506.P1712958148800648278

noncomputable section

/-- A366506: a(n) = Lucas(n) + 3.

Offset 1, canonical program `A366506.P1712958148800648278`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000032(n+1)+3` (program `A366506.P1712958148800648278`, by `A366506.P1712958148800648278.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A366506 (n : ℕ) : ℤ :=
  A366506.P1712958148800648278.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000032(n+1)+3` (program `A366506.P1712958148800648278`, by `A366506.P1712958148800648278.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A366506.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A366508.P12431393090197274531

`A000032(2*(n+1))+2*(-1)^(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366508.P12431393090197274531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * (n + 1)) + 2 * (-1) ^ (n + 1) + 1

end

end A366508.P12431393090197274531

noncomputable section

/-- A366508: a(n) = Lucas(2*n) + 2*(-1)^n + 1.

Offset 1, canonical program `A366508.P12431393090197274531`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000032(2*(n+1))+2*(-1)^(n+1)+1` (program `A366508.P12431393090197274531`, by `A366508.P12431393090197274531.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A366508 (n : ℕ) : ℤ :=
  A366508.P12431393090197274531.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000032(2*(n+1))+2*(-1)^(n+1)+1` (program `A366508.P12431393090197274531`, by `A366508.P12431393090197274531.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A366508.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A366511.P13315270095728524845

`A000032(2*(n+1))+2^(n+2)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366511.P13315270095728524845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * (n + 1)) + (2 ^ (n + 2) : ℤ) + 1

end

end A366511.P13315270095728524845

noncomputable section

/-- A366511: a(n) = Lucas(2*n) + 2^(n + 1) + 1.

Offset 1, canonical program `A366511.P13315270095728524845`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000032(2*(n+1))+2^(n+2)+1` (program `A366511.P13315270095728524845`, by `A366511.P13315270095728524845.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A366511 (n : ℕ) : ℤ :=
  A366511.P13315270095728524845.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000032(2*(n+1))+2^(n+2)+1` (program `A366511.P13315270095728524845`, by `A366511.P13315270095728524845.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A366511.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A366836.P9857269580957326092

`A000040(a(n-1)+n+1)%(a(n-1)+n+1)` with `a(0)=1, a(1)=2, a(2)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366836.P9857269580957326092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  Int.tmod (A000040 (a (n - 1) + (n + 1 : ℤ)).toNat) (a (n - 1) + (n + 1 : ℤ))

end

end A366836.P9857269580957326092

noncomputable section

/-- A366836: a(1) = 1 and a(n) = prime(a(n-1)+n) mod (a(n-1)+n).

Offset 1, canonical program `A366836.P9857269580957326092`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(a(n-1)+n+1)%(a(n-1)+n+1)` (program `A366836.P9857269580957326092`, by `A366836.P9857269580957326092.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A366836 (n : ℕ) : ℤ :=
  A366836.P9857269580957326092.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(a(n-1)+n+1)%(a(n-1)+n+1)` (program `A366836.P9857269580957326092`, by `A366836.P9857269580957326092.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A366836.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A367178.P11936607762183092066

`C(row(n), col(n))²*A000108(col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A367178.P11936607762183092066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) ^ 2 : ℤ) * A000108 (SequenceMachineLib.triCol n)

end

end A367178.P11936607762183092066

noncomputable section

/-- A367178: Triangle read by rows. T(n, k) = binomial(n, k)^2 * CatalanNumber(k).

Offset 0, canonical program `A367178.P11936607762183092066`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n), col(n))²*A000108(col(n))` (program `A367178.P11936607762183092066`, by `A367178.P11936607762183092066.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A367178 (n : ℕ) : ℤ :=
  A367178.P11936607762183092066.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n), col(n))²*A000108(col(n))` (program `A367178.P11936607762183092066`, by `A367178.P11936607762183092066.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A367178.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A367211.P10757727230464512085

`C(row(n)+1, col(n))*A000129(row(n)+1-col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A367211.P10757727230464512085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triRow n + 1) (SequenceMachineLib.triCol n) : ℤ) * A000129 (SequenceMachineLib.triRow n + 1 - SequenceMachineLib.triCol n)

end

end A367211.P10757727230464512085

noncomputable section

/-- A367211: Triangular array read by rows: T(n, k) = binomial(n, k) * A000129(n - k) for 0 <= k < n.

Offset 1, canonical program `A367211.P10757727230464512085`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n)+1, col(n))*A000129(row(n)+1-col(n))` (program `A367211.P10757727230464512085`, by `A367211.P10757727230464512085.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A367211 (n : ℕ) : ℤ :=
  A367211.P10757727230464512085.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n)+1, col(n))*A000129(row(n)+1-col(n))` (program `A367211.P10757727230464512085`, by `A367211.P10757727230464512085.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A367211.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A367866.P475655793960167772

`∑{d}[n+1, #*A000203(#)*A008683(#)²]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A367866.P475655793960167772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000203 d * A008683 d ^ 2

end

end A367866.P475655793960167772

noncomputable section

/-- A367866: a(n) = Sum_{d|n} d * sigma(d) * mu(d)^2.

Offset 1, canonical program `A367866.P475655793960167772`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, #*A000203(#)*A008683(#)²]` (program `A367866.P475655793960167772`, by `A367866.P475655793960167772.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A367866 (n : ℕ) : ℤ :=
  A367866.P475655793960167772.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, #*A000203(#)*A008683(#)²]` (program `A367866.P475655793960167772`, by `A367866.P475655793960167772.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A367866.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A368582.P18390459089219903053

`floor((A000203(n+1)+1)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A368582.P18390459089219903053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000203 (n + 1) + 1 : ℚ) / 2⌋

end

end A368582.P18390459089219903053

noncomputable section

/-- A368582: a(n) = floor((sigma(n) + 1) / 2).

Offset 1, canonical program `A368582.P18390459089219903053`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((A000203(n+1)+1)/2)` (program `A368582.P18390459089219903053`, by `A368582.P18390459089219903053.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A368582 (n : ℕ) : ℤ :=
  A368582.P18390459089219903053.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((A000203(n+1)+1)/2)` (program `A368582.P18390459089219903053`, by `A368582.P18390459089219903053.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A368582.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A368610.P10805571174604425511

`∑{#}[n, A000720(#+1)*ceil((n+1)/(#+1))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A368610.P10805571174604425511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000720 (k + 1) * ⌈(n + 1 : ℚ) / (k + 1 : ℚ)⌉

end

end A368610.P10805571174604425511

noncomputable section

/-- A368610: a(n) = Sum_{k=1..n} pi(k) * ceiling(n/k).

Offset 1, canonical program `A368610.P10805571174604425511`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000720(#+1)*ceil((n+1)/(#+1))]` (program `A368610.P10805571174604425511`, by `A368610.P10805571174604425511.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A368610 (n : ℕ) : ℤ :=
  A368610.P10805571174604425511.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000720(#+1)*ceil((n+1)/(#+1))]` (program `A368610.P10805571174604425511`, by `A368610.P10805571174604425511.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A368610.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A368611.P16551445510251628333

`∑{#}[n, A000720(#+1)*floor((n+1)/(#+1))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A368611.P16551445510251628333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000720 (k + 1) * ⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋

end

end A368611.P16551445510251628333

noncomputable section

/-- A368611: a(n) = Sum_{k=1..n} pi(k) * floor(n/k).

Offset 1, canonical program `A368611.P16551445510251628333`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000720(#+1)*floor((n+1)/(#+1))]` (program `A368611.P16551445510251628333`, by `A368611.P16551445510251628333.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A368611 (n : ℕ) : ℤ :=
  A368611.P16551445510251628333.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000720(#+1)*floor((n+1)/(#+1))]` (program `A368611.P16551445510251628333`, by `A368611.P16551445510251628333.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A368611.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A368612.P17291396393129314388

`∑{#}[n-1, A000720(#+1)*ceil((n+1)/(#+2))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A368612.P17291396393129314388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A000720 (k + 1) * ⌈(n + 1 : ℚ) / (k + 2 : ℚ)⌉

end

end A368612.P17291396393129314388

noncomputable section

/-- A368612: a(n) = Sum_{k=2..n} pi(k-1) * ceiling(n/k).

Offset 1, canonical program `A368612.P17291396393129314388`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, A000720(#+1)*ceil((n+1)/(#+2))]` (program `A368612.P17291396393129314388`, by `A368612.P17291396393129314388.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A368612 (n : ℕ) : ℤ :=
  A368612.P17291396393129314388.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, A000720(#+1)*ceil((n+1)/(#+2))]` (program `A368612.P17291396393129314388`, by `A368612.P17291396393129314388.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A368612.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A368613.P10186010355465194779

`∑{#}[n-1, A000720(#+1)*floor((n+1)/(#+2))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A368613.P10186010355465194779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A000720 (k + 1) * ⌊(n + 1 : ℚ) / (k + 2 : ℚ)⌋

end

end A368613.P10186010355465194779

noncomputable section

/-- A368613: a(n) = Sum_{k=2..n} pi(k-1) * floor(n/k).

Offset 1, canonical program `A368613.P10186010355465194779`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, A000720(#+1)*floor((n+1)/(#+2))]` (program `A368613.P10186010355465194779`, by `A368613.P10186010355465194779.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A368613 (n : ℕ) : ℤ :=
  A368613.P10186010355465194779.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, A000720(#+1)*floor((n+1)/(#+2))]` (program `A368613.P10186010355465194779`, by `A368613.P10186010355465194779.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A368613.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A368616.P1532469686188965116

`∑{#}[n, A000720(#+1)*(ceil((n+1)/(#+1))-floor((n+1)/(#+1)))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A368616.P1532469686188965116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000720 (k + 1) * (⌈(n + 1 : ℚ) / (k + 1 : ℚ)⌉ - ⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋)

end

end A368616.P1532469686188965116

noncomputable section

/-- A368616: a(n) = Sum_{k=1..n} pi(k) * (ceiling(n/k) - floor(n/k)).

Offset 1, canonical program `A368616.P1532469686188965116`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000720(#+1)*(ceil((n+1)/(#+1))-floor((n+1)/(#+1)))]` (program `A368616.P1532469686188965116`, by `A368616.P1532469686188965116.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A368616 (n : ℕ) : ℤ :=
  A368616.P1532469686188965116.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000720(#+1)*(ceil((n+1)/(#+1))-floor((n+1)/(#+1)))]` (program `A368616.P1532469686188965116`, by `A368616.P1532469686188965116.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A368616.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A368641.P1573491388468461906

`∑{#}[n-1, A000720(#+1)*(ceil((n+1)/(#+2))-floor((n+1)/(#+2)))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A368641.P1573491388468461906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A000720 (k + 1) * (⌈(n + 1 : ℚ) / (k + 2 : ℚ)⌉ - ⌊(n + 1 : ℚ) / (k + 2 : ℚ)⌋)

end

end A368641.P1573491388468461906

noncomputable section

/-- A368641: a(n) = Sum_{k=2..n} pi(k-1) * (ceiling(n/k) - floor(n/k)).

Offset 1, canonical program `A368641.P1573491388468461906`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, A000720(#+1)*(ceil((n+1)/(#+2))-floor((n+1)/(#+2)))]` (program `A368641.P1573491388468461906`, by `A368641.P1573491388468461906.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A368641 (n : ℕ) : ℤ :=
  A368641.P1573491388468461906.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, A000720(#+1)*(ceil((n+1)/(#+2))-floor((n+1)/(#+2)))]` (program `A368641.P1573491388468461906`, by `A368641.P1573491388468461906.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A368641.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A368642.P11237544480615087837

`∑{#}[n, A008683(#+1)²*ceil((n+1)/(#+1))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A368642.P11237544480615087837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A008683 (k + 1) ^ 2 * ⌈(n + 1 : ℚ) / (k + 1 : ℚ)⌉

end

end A368642.P11237544480615087837

noncomputable section

/-- A368642: a(n) = Sum_{k=1..n} mu(k)^2 * ceiling(n/k), where mu is the Möbius function (A008683).

Offset 1, canonical program `A368642.P11237544480615087837`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A008683(#+1)²*ceil((n+1)/(#+1))]` (program `A368642.P11237544480615087837`, by `A368642.P11237544480615087837.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A368642 (n : ℕ) : ℤ :=
  A368642.P11237544480615087837.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A008683(#+1)²*ceil((n+1)/(#+1))]` (program `A368642.P11237544480615087837`, by `A368642.P11237544480615087837.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A368642.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A370307.P1617785029507731027

`A002623(n)+n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A370307.P1617785029507731027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 n + (n : ℤ)

end

end A370307.P1617785029507731027

noncomputable section

/-- A370307: a(n) = A002623(n) + n.

Offset 0, canonical program `A370307.P1617785029507731027`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002623(n)+n` (program `A370307.P1617785029507731027`, by `A370307.P1617785029507731027.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A370307 (n : ℕ) : ℤ :=
  A370307.P1617785029507731027.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002623(n)+n` (program `A370307.P1617785029507731027`, by `A370307.P1617785029507731027.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A370307.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A371092.P362407384602994436

`floor((A000265(3*n+1)+5)/6)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A371092.P362407384602994436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000265 (3 * n + 1) + 5 : ℚ) / 6⌋

end

end A371092.P362407384602994436

noncomputable section

/-- A371092: a(n) = floor((A000265(3*n+1)+5)/6), where A000265 gives the odd part of its argument.

Offset 0, canonical program `A371092.P362407384602994436`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((A000265(3*n+1)+5)/6)` (program `A371092.P362407384602994436`, by `A371092.P362407384602994436.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A371092 (n : ℕ) : ℤ :=
  A371092.P362407384602994436.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((A000265(3*n+1)+5)/6)` (program `A371092.P362407384602994436`, by `A371092.P362407384602994436.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A371092.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A371843.P2262643794716352472

`5*A000045(n)+(-1)^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A371843.P2262643794716352472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000045 n + (-1) ^ n

end

end A371843.P2262643794716352472

noncomputable section

/-- A371843: a(n) = 5*Fibonacci(n) + (-1)^n.

Offset 0, canonical program `A371843.P2262643794716352472`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*A000045(n)+(-1)^n` (program `A371843.P2262643794716352472`, by `A371843.P2262643794716352472.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A371843 (n : ℕ) : ℤ :=
  A371843.P2262643794716352472.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*A000045(n)+(-1)^n` (program `A371843.P2262643794716352472`, by `A371843.P2262643794716352472.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A371843.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A371986.P14453910396972068629

`A000032(n)*A000108(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A371986.P14453910396972068629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A000108 n

end

end A371986.P14453910396972068629

noncomputable section

/-- A371986: Product of Lucas and Catalan numbers: a(n) = A000032(n)*A000108(n).

Offset 0, canonical program `A371986.P14453910396972068629`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000032(n)*A000108(n)` (program `A371986.P14453910396972068629`, by `A371986.P14453910396972068629.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A371986 (n : ℕ) : ℤ :=
  A371986.P14453910396972068629.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000032(n)*A000108(n)` (program `A371986.P14453910396972068629`, by `A371986.P14453910396972068629.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A371986.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372216.P15635570917463932897

`A000129(n+1)*A000108(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372216.P15635570917463932897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) * A000108 (n + 1)

end

end A372216.P15635570917463932897

noncomputable section

/-- A372216: Product of n-th Pell number and n-th Catalan number: a(n) = A000129(n)*A000108(n).

Offset 1, canonical program `A372216.P15635570917463932897`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000129(n+1)*A000108(n+1)` (program `A372216.P15635570917463932897`, by `A372216.P15635570917463932897.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372216 (n : ℕ) : ℤ :=
  A372216.P15635570917463932897.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000129(n+1)*A000108(n+1)` (program `A372216.P15635570917463932897`, by `A372216.P15635570917463932897.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372216.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372225.P17692099479850758134

`A000045(n+2)*A000045(2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372225.P17692099479850758134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) * A000045 (2 * (n + 1))

end

end A372225.P17692099479850758134

noncomputable section

/-- A372225: a(n) = Fibonacci(n+1)*Fibonacci(2n).

Offset 1, canonical program `A372225.P17692099479850758134`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+2)*A000045(2*(n+1))` (program `A372225.P17692099479850758134`, by `A372225.P17692099479850758134.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372225 (n : ℕ) : ℤ :=
  A372225.P17692099479850758134.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+2)*A000045(2*(n+1))` (program `A372225.P17692099479850758134`, by `A372225.P17692099479850758134.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372225.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372226.P2782764991468170775

`∑{#}[n, A001157((n+1)/gcd(#+1, n+1))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372226.P2782764991468170775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A001157 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.gcd (k + 1) (n + 1) : ℚ))).toNat

end

end A372226.P2782764991468170775

noncomputable section

/-- A372226: a(n) = Sum_{k=1..n} sigma_2( n/gcd(k,n) ).

Offset 1, canonical program `A372226.P2782764991468170775`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A001157((n+1)/gcd(#+1, n+1))]` (program `A372226.P2782764991468170775`, by `A372226.P2782764991468170775.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372226 (n : ℕ) : ℤ :=
  A372226.P2782764991468170775.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A001157((n+1)/gcd(#+1, n+1))]` (program `A372226.P2782764991468170775`, by `A372226.P2782764991468170775.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372226.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372227.P1722358545128692507

`∑{#}[n, A000203(((n+1)/gcd(#+1, n+1))²)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372227.P1722358545128692507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000203 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (Nat.gcd (k + 1) (n + 1) : ℚ)) ^ 2)).toNat

end

end A372227.P1722358545128692507

noncomputable section

/-- A372227: a(n) = Sum_{k=1..n} sigma( (n/gcd(k,n))^2 ).

Offset 1, canonical program `A372227.P1722358545128692507`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000203(((n+1)/gcd(#+1, n+1))²)]` (program `A372227.P1722358545128692507`, by `A372227.P1722358545128692507.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372227 (n : ℕ) : ℤ :=
  A372227.P1722358545128692507.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000203(((n+1)/gcd(#+1, n+1))²)]` (program `A372227.P1722358545128692507`, by `A372227.P1722358545128692507.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372227.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372242.P8379858384881024964

`10*A000045(n)+(-1)^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372242.P8379858384881024964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A000045 n + (-1) ^ n

end

end A372242.P8379858384881024964

noncomputable section

/-- A372242: a(n) = 10*Fibonacci(n) + (-1)^n.

Offset 0, canonical program `A372242.P8379858384881024964`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*A000045(n)+(-1)^n` (program `A372242.P8379858384881024964`, by `A372242.P8379858384881024964.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372242 (n : ℕ) : ℤ :=
  A372242.P8379858384881024964.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*A000045(n)+(-1)^n` (program `A372242.P8379858384881024964`, by `A372242.P8379858384881024964.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372242.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372252.P9407473101100021253

`A000045(n+1)*A000292(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372252.P9407473101100021253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A000292 n

end

end A372252.P9407473101100021253

noncomputable section

/-- A372252: a(n) = A000045(n+1)*A000292(n) (product of a Fibonacci number and a tetrahedral number).

Offset 0, canonical program `A372252.P9407473101100021253`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+1)*A000292(n)` (program `A372252.P9407473101100021253`, by `A372252.P9407473101100021253.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372252 (n : ℕ) : ℤ :=
  A372252.P9407473101100021253.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+1)*A000292(n)` (program `A372252.P9407473101100021253`, by `A372252.P9407473101100021253.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372252.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372706.P5906799565459821197

`∑{#}[n, A008683((n+1)*(#+1))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372706.P5906799565459821197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A008683 ((n + 1) * (k + 1))

end

end A372706.P5906799565459821197

noncomputable section

/-- A372706: a(n) = Sum_{k=1..n} mu(n*k), where mu is the Moebius function A008683.

Offset 1, canonical program `A372706.P5906799565459821197`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A008683((n+1)*(#+1))]` (program `A372706.P5906799565459821197`, by `A372706.P5906799565459821197.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372706 (n : ℕ) : ℤ :=
  A372706.P5906799565459821197.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A008683((n+1)*(#+1))]` (program `A372706.P5906799565459821197`, by `A372706.P5906799565459821197.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372706.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372710.P17784849567038664032

`∑{#}[n, A000203((n+1)*(#+1))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372710.P17784849567038664032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000203 ((n + 1) * (k + 1))

end

end A372710.P17784849567038664032

noncomputable section

/-- A372710: a(n) = Sum_{k=1..n} sigma(n*k).

Offset 1, canonical program `A372710.P17784849567038664032`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000203((n+1)*(#+1))]` (program `A372710.P17784849567038664032`, by `A372710.P17784849567038664032.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372710 (n : ℕ) : ℤ :=
  A372710.P17784849567038664032.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000203((n+1)*(#+1))]` (program `A372710.P17784849567038664032`, by `A372710.P17784849567038664032.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372710.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372996.P16739555443183413387

`∑{#}[n, A001157(((n+1)/gcd(#+1, n+1))²)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372996.P16739555443183413387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A001157 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (Nat.gcd (k + 1) (n + 1) : ℚ)) ^ 2)).toNat

end

end A372996.P16739555443183413387

noncomputable section

/-- A372996: a(n) = Sum_{k=1..n} sigma_2( (n/gcd(k,n))^2 ).

Offset 1, canonical program `A372996.P16739555443183413387`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A001157(((n+1)/gcd(#+1, n+1))²)]` (program `A372996.P16739555443183413387`, by `A372996.P16739555443183413387.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372996 (n : ℕ) : ℤ :=
  A372996.P16739555443183413387.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A001157(((n+1)/gcd(#+1, n+1))²)]` (program `A372996.P16739555443183413387`, by `A372996.P16739555443183413387.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372996.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372998.P9056438924951555938

`∑{#}[n, A000203(((n+1)/gcd(#+1, n+1))^3)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372998.P9056438924951555938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000203 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (Nat.gcd (k + 1) (n + 1) : ℚ)) ^ 3)).toNat

end

end A372998.P9056438924951555938

noncomputable section

/-- A372998: a(n) = Sum_{k=1..n} sigma( (n/gcd(k,n))^3 ).

Offset 1, canonical program `A372998.P9056438924951555938`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000203(((n+1)/gcd(#+1, n+1))^3)]` (program `A372998.P9056438924951555938`, by `A372998.P9056438924951555938.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372998 (n : ℕ) : ℤ :=
  A372998.P9056438924951555938.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000203(((n+1)/gcd(#+1, n+1))^3)]` (program `A372998.P9056438924951555938`, by `A372998.P9056438924951555938.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372998.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A373000.P15577803759360303780

`∑{#}[n, A000203(((n+1)/gcd(#+1, n+1))^4)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373000.P15577803759360303780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000203 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (Nat.gcd (k + 1) (n + 1) : ℚ)) ^ 4)).toNat

end

end A373000.P15577803759360303780

noncomputable section

/-- A373000: a(n) = Sum_{k=1..n} sigma( (n/gcd(k,n))^4 ).

Offset 1, canonical program `A373000.P15577803759360303780`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000203(((n+1)/gcd(#+1, n+1))^4)]` (program `A373000.P15577803759360303780`, by `A373000.P15577803759360303780.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A373000 (n : ℕ) : ℤ :=
  A373000.P15577803759360303780.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000203(((n+1)/gcd(#+1, n+1))^4)]` (program `A373000.P15577803759360303780`, by `A373000.P15577803759360303780.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A373000.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A373004.P14218790537000674380

`∑{#}[n, A000203(((n+1)/gcd(#+1, n+1))^(n+1))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373004.P14218790537000674380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000203 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (Nat.gcd (k + 1) (n + 1) : ℚ)) ^ (n + 1))).toNat

end

end A373004.P14218790537000674380

noncomputable section

/-- A373004: a(n) = Sum_{k=1..n} sigma( (n/gcd(k,n))^n ).

Offset 1, canonical program `A373004.P14218790537000674380`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000203(((n+1)/gcd(#+1, n+1))^(n+1))]` (program `A373004.P14218790537000674380`, by `A373004.P14218790537000674380.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A373004 (n : ℕ) : ℤ :=
  A373004.P14218790537000674380.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000203(((n+1)/gcd(#+1, n+1))^(n+1))]` (program `A373004.P14218790537000674380`, by `A373004.P14218790537000674380.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A373004.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A373499.P6196490568011449657

`∑{#}[n-1, C(A000040(n+1), A000040(#+1))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373499.P6196490568011449657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose (A000040 (n + 1)).toNat (A000040 (k + 1)).toNat

end

end A373499.P6196490568011449657

noncomputable section

/-- A373499: a(n) = Sum_{i=1..n-1} binomial(prime(n),prime(i)).

Offset 1, canonical program `A373499.P6196490568011449657`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, C(A000040(n+1), A000040(#+1))]` (program `A373499.P6196490568011449657`, by `A373499.P6196490568011449657.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A373499 (n : ℕ) : ℤ :=
  (A373499.P6196490568011449657.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, C(A000040(n+1), A000040(#+1))]` (program `A373499.P6196490568011449657`, by `A373499.P6196490568011449657.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A373499.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A373614.P4665718954882026582

`A000045(n)²*A000108(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373614.P4665718954882026582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2 * A000108 n

end

end A373614.P4665718954882026582

noncomputable section

/-- A373614: a(n) = Fibonacci(n)^2 * Catalan(n).

Offset 0, canonical program `A373614.P4665718954882026582`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)²*A000108(n)` (program `A373614.P4665718954882026582`, by `A373614.P4665718954882026582.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A373614 (n : ℕ) : ℤ :=
  A373614.P4665718954882026582.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)²*A000108(n)` (program `A373614.P4665718954882026582`, by `A373614.P4665718954882026582.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A373614.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A373622.P5649308913863551623

`A000032(n)*A000045(n)*A000108(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373622.P5649308913863551623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A000045 n * A000108 n

end

end A373622.P5649308913863551623

noncomputable section

/-- A373622: a(n) = A000032(n)*A000045(n)*A000108(n).

Offset 0, canonical program `A373622.P5649308913863551623`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000032(n)*A000045(n)*A000108(n)` (program `A373622.P5649308913863551623`, by `A373622.P5649308913863551623.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A373622 (n : ℕ) : ℤ :=
  A373622.P5649308913863551623.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000032(n)*A000045(n)*A000108(n)` (program `A373622.P5649308913863551623`, by `A373622.P5649308913863551623.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A373622.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A374126.P16761147137029930962

`gcd(A000203(n+1), A001414(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374126.P16761147137029930962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A001414 (n + 1))

end

end A374126.P16761147137029930962

noncomputable section

/-- A374126: a(n) = gcd(sigma(n), sopfr(n)), where sigma is the sum of divisors, and sopfr is the sum of prime factors with repetition.

Offset 1, canonical program `A374126.P16761147137029930962`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A000203(n+1), A001414(n+1))` (program `A374126.P16761147137029930962`, by `A374126.P16761147137029930962.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A374126 (n : ℕ) : ℤ :=
  (A374126.P16761147137029930962.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A000203(n+1), A001414(n+1))` (program `A374126.P16761147137029930962`, by `A374126.P16761147137029930962.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A374126.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A374127.P3340781210084146049

`A000203(n+1)-A001414(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374127.P3340781210084146049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A001414 (n + 1) - (n + 1 : ℤ)

end

end A374127.P3340781210084146049

noncomputable section

/-- A374127: a(n) = (sigma(n) - sopfr(n)) - n, where sigma is the sum of divisors, and sopfr is the sum of prime factors (with repetition).

Offset 1, canonical program `A374127.P3340781210084146049`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)-A001414(n+1)-(n+1)` (program `A374127.P3340781210084146049`, by `A374127.P3340781210084146049.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A374127 (n : ℕ) : ℤ :=
  A374127.P3340781210084146049.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)-A001414(n+1)-(n+1)` (program `A374127.P3340781210084146049`, by `A374127.P3340781210084146049.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A374127.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A374915.P6591845892791148313

`n*(n-1)*A000203(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374915.P6591845892791148313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - 1) * A000203 (n + 1)

end

end A374915.P6591845892791148313

noncomputable section

/-- A374915: a(n) = (n - 1) * (n - 2) * sigma(n).

Offset 1, canonical program `A374915.P6591845892791148313`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n-1)*A000203(n+1)` (program `A374915.P6591845892791148313`, by `A374915.P6591845892791148313.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A374915 (n : ℕ) : ℤ :=
  A374915.P6591845892791148313.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n-1)*A000203(n+1)` (program `A374915.P6591845892791148313`, by `A374915.P6591845892791148313.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A374915.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A374927.P3559897404562707274

`A135318(n)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374927.P3559897404562707274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 n ^ 2

end

end A374927.P3559897404562707274

noncomputable section

/-- A374927: a(n) = A135318(n)^2.

Offset 0, canonical program `A374927.P3559897404562707274`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A135318(n)²` (program `A374927.P3559897404562707274`, by `A374927.P3559897404562707274.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A374927 (n : ℕ) : ℤ :=
  A374927.P3559897404562707274.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A135318(n)²` (program `A374927.P3559897404562707274`, by `A374927.P3559897404562707274.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A374927.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A374963.P10107830109494397540

`∑{#}[n-1, A000203(#+1)*A001158(n+1-(#+1))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374963.P10107830109494397540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A000203 (k + 1) * A001158 (n + 1 - (k + 1))

end

end A374963.P10107830109494397540

noncomputable section

/-- A374963: a(n) = Sum_{k=1..n-1} sigma(k)*sigma_3(n-k).

Offset 1, canonical program `A374963.P10107830109494397540`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, A000203(#+1)*A001158(n+1-(#+1))]` (program `A374963.P10107830109494397540`, by `A374963.P10107830109494397540.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A374963 (n : ℕ) : ℤ :=
  A374963.P10107830109494397540.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, A000203(#+1)*A001158(n+1-(#+1))]` (program `A374963.P10107830109494397540`, by `A374963.P10107830109494397540.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A374963.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A374974.P11153946899602628008

`∑{#}[n-1, A000203(#+1)*A001157(n+1-(#+1))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374974.P11153946899602628008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A000203 (k + 1) * A001157 (n + 1 - (k + 1))

end

end A374974.P11153946899602628008

noncomputable section

/-- A374974: a(n) = Sum_{k=1..n-1} sigma(k) * sigma_2(n-k).

Offset 1, canonical program `A374974.P11153946899602628008`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, A000203(#+1)*A001157(n+1-(#+1))]` (program `A374974.P11153946899602628008`, by `A374974.P11153946899602628008.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A374974 (n : ℕ) : ℤ :=
  A374974.P11153946899602628008.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, A000203(#+1)*A001157(n+1-(#+1))]` (program `A374974.P11153946899602628008`, by `A374974.P11153946899602628008.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A374974.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A375010.P10824292067734326955

`A000040(n+2)-floor((A000040(n+1)+A000040(n+2)+A000040(n+3))/3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A375010.P10824292067734326955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - ⌊(A000040 (n + 1) + A000040 (n + 2) + A000040 (n + 3) : ℚ) / 3⌋

end

end A375010.P10824292067734326955

noncomputable section

/-- A375010: a(n) = prime(n-1) - floor((prime(n-2) + prime(n-1) + prime(n)) / 3).

Offset 3, canonical program `A375010.P10824292067734326955`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+2)-floor((A000040(n+1)+A000040(n+2)+A000040(n+3))/3)` (program `A375010.P10824292067734326955`, by `A375010.P10824292067734326955.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A375010 (n : ℕ) : ℤ :=
  A375010.P10824292067734326955.a (n - 3)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+2)-floor((A000040(n+1)+A000040(n+2)+A000040(n+3))/3)` (program `A375010.P10824292067734326955`, by `A375010.P10824292067734326955.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A375010.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A375803.P15871120865266231803

`A000045(n)*A000045(n+2)*A000045(2*(n+1)-1)*A000045(2*(n+1)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A375803.P15871120865266231803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A000045 (n + 2) * A000045 (2 * (n + 1) - 1) * A000045 (2 * (n + 1) + 1)

end

end A375803.P15871120865266231803

noncomputable section

/-- A375803: a(n) = Fibonacci(n-1) * Fibonacci(n+1) * Fibonacci(2*n-1) * Fibonacci(2*n+1).

Offset 1, canonical program `A375803.P15871120865266231803`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)*A000045(n+2)*A000045(2*(n+1)-1)*A000045(2*(n+1)+1)` (program `A375803.P15871120865266231803`, by `A375803.P15871120865266231803.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A375803 (n : ℕ) : ℤ :=
  A375803.P15871120865266231803.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)*A000045(n+2)*A000045(2*(n+1)-1)*A000045(2*(n+1)+1)` (program `A375803.P15871120865266231803`, by `A375803.P15871120865266231803.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A375803.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A375804.P4009701669286425089

`A000032(n)*A000032(n+2)*A000045(2*(n+1)-1)*A000045(2*(n+1)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A375804.P4009701669286425089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A000032 (n + 2) * A000045 (2 * (n + 1) - 1) * A000045 (2 * (n + 1) + 1)

end

end A375804.P4009701669286425089

noncomputable section

/-- A375804: a(n) = Lucas(n-1) * Lucas(n+1) * Fibonacci(2*n-1) * Fibonacci(2*n+1).

Offset 1, canonical program `A375804.P4009701669286425089`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000032(n)*A000032(n+2)*A000045(2*(n+1)-1)*A000045(2*(n+1)+1)` (program `A375804.P4009701669286425089`, by `A375804.P4009701669286425089.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A375804 (n : ℕ) : ℤ :=
  A375804.P4009701669286425089.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000032(n)*A000032(n+2)*A000045(2*(n+1)-1)*A000045(2*(n+1)+1)` (program `A375804.P4009701669286425089`, by `A375804.P4009701669286425089.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A375804.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A376023.P5748921642060316215

`abs(a(n-1)+A376022(n+1))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A376023.P5748921642060316215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a (n - 1) + A376022 (n + 1)|

end

end A376023.P5748921642060316215

noncomputable section

/-- A376023: a(1) = 1, for n >= 2, a(n) = abs(a(n - 1) + A376022(n)).

Offset 1, canonical program `A376023.P5748921642060316215`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `abs(a(n-1)+A376022(n+1))` (program `A376023.P5748921642060316215`, by `A376023.P5748921642060316215.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A376023 (n : ℕ) : ℤ :=
  A376023.P5748921642060316215.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `abs(a(n-1)+A376022(n+1))` (program `A376023.P5748921642060316215`, by `A376023.P5748921642060316215.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A376023.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A376290.P5893042955628513875

`∑{#}[n-1, A001157(#+1)*A001158(n+1-(#+1))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A376290.P5893042955628513875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A001157 (k + 1) * A001158 (n + 1 - (k + 1))

end

end A376290.P5893042955628513875

noncomputable section

/-- A376290: a(n) = Sum_{k=1..n-1} sigma_2(k) * sigma_3(n-k).

Offset 1, canonical program `A376290.P5893042955628513875`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, A001157(#+1)*A001158(n+1-(#+1))]` (program `A376290.P5893042955628513875`, by `A376290.P5893042955628513875.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A376290 (n : ℕ) : ℤ :=
  A376290.P5893042955628513875.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, A001157(#+1)*A001158(n+1-(#+1))]` (program `A376290.P5893042955628513875`, by `A376290.P5893042955628513875.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A376290.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A376567.P9640430291992892874

`C(A001222(n+1)+A001221(n+1), A001221(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A376567.P9640430291992892874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (n + 1) + A001221 (n + 1)).toNat (A001221 (n + 1)).toNat

end

end A376567.P9640430291992892874

noncomputable section

/-- A376567: a(n) = binomial(bigomega(n) + omega(n), omega(n)), where bigomega = A001222 and omega = A001221.

Offset 1, canonical program `A376567.P9640430291992892874`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(A001222(n+1)+A001221(n+1), A001221(n+1))` (program `A376567.P9640430291992892874`, by `A376567.P9640430291992892874.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A376567 (n : ℕ) : ℤ :=
  (A376567.P9640430291992892874.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(A001222(n+1)+A001221(n+1), A001221(n+1))` (program `A376567.P9640430291992892874`, by `A376567.P9640430291992892874.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A376567.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A377704.P8865962525338974261

`C(A000045(n+1)+A000045(n+2)-2, A000045(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A377704.P8865962525338974261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000045 (n + 1) + A000045 (n + 2) - 2).toNat (A000045 (n + 1) - 1).toNat

end

end A377704.P8865962525338974261

noncomputable section

/-- A377704: a(n) = binomial(Fibonacci(n)+Fibonacci(n+1)-2,Fibonacci(n)-1).

Offset 1, canonical program `A377704.P8865962525338974261`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(A000045(n+1)+A000045(n+2)-2, A000045(n+1)-1)` (program `A377704.P8865962525338974261`, by `A377704.P8865962525338974261.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A377704 (n : ℕ) : ℤ :=
  (A377704.P8865962525338974261.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(A000045(n+1)+A000045(n+2)-2, A000045(n+1)-1)` (program `A377704.P8865962525338974261`, by `A377704.P8865962525338974261.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A377704.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A377879.P1126299264812417651

`2*(n+1)²-A000203((n+1)²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A377879.P1126299264812417651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) ^ 2 : ℤ) - A000203 ((n + 1) ^ 2)

end

end A377879.P1126299264812417651

noncomputable section

/-- A377879: Deficiency of squares: a(n) = 2n^2 - sigma(n^2).

Offset 1, canonical program `A377879.P1126299264812417651`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)²-A000203((n+1)²)` (program `A377879.P1126299264812417651`, by `A377879.P1126299264812417651.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A377879 (n : ℕ) : ℤ :=
  A377879.P1126299264812417651.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)²-A000203((n+1)²)` (program `A377879.P1126299264812417651`, by `A377879.P1126299264812417651.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A377879.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A378027.P2516659449213067990

`A000040(A000040(A000040(n+1)))-A000040(A000040(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378027.P2516659449213067990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 (A000040 (n + 1)).toNat).toNat - A000040 (A000040 (n + 1)).toNat

end

end A378027.P2516659449213067990

noncomputable section

/-- A378027: a(n) = prime(prime(prime(n))) - prime(prime(n)).

Offset 1, canonical program `A378027.P2516659449213067990`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A000040(A000040(n+1)))-A000040(A000040(n+1))` (program `A378027.P2516659449213067990`, by `A378027.P2516659449213067990.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A378027 (n : ℕ) : ℤ :=
  A378027.P2516659449213067990.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A000040(A000040(n+1)))-A000040(A000040(n+1))` (program `A378027.P2516659449213067990`, by `A378027.P2516659449213067990.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A378027.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A378309.P13305048339565942399

`A010051(n+1)+A001222(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378309.P13305048339565942399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + A001222 (n + 1)

end

end A378309.P13305048339565942399

noncomputable section

/-- A378309: a(n) = A010051(n) + A001222(n).

Offset 1, canonical program `A378309.P13305048339565942399`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A010051(n+1)+A001222(n+1)` (program `A378309.P13305048339565942399`, by `A378309.P13305048339565942399.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A378309 (n : ℕ) : ℤ :=
  A378309.P13305048339565942399.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A010051(n+1)+A001222(n+1)` (program `A378309.P13305048339565942399`, by `A378309.P13305048339565942399.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A378309.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A378978.P9528598505163762940

`4*(n+1)-A000203(2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378978.P9528598505163762940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A000203 (2 * (n + 1))

end

end A378978.P9528598505163762940

noncomputable section

/-- A378978: Deficiency of even numbers: a(n) = 4*n - sigma(2*n).

Offset 1, canonical program `A378978.P9528598505163762940`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(n+1)-A000203(2*(n+1))` (program `A378978.P9528598505163762940`, by `A378978.P9528598505163762940.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A378978 (n : ℕ) : ℤ :=
  A378978.P9528598505163762940.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(n+1)-A000203(2*(n+1))` (program `A378978.P9528598505163762940`, by `A378978.P9528598505163762940.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A378978.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A378993.P12473165963195423861

`n+1-A001221(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378993.P12473165963195423861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001221 (n + 1)

end

end A378993.P12473165963195423861

noncomputable section

/-- A378993: a(n) = n - omega(n), where omega = A001221.

Offset 1, canonical program `A378993.P12473165963195423861`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1-A001221(n+1)` (program `A378993.P12473165963195423861`, by `A378993.P12473165963195423861.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A378993 (n : ℕ) : ℤ :=
  A378993.P12473165963195423861.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1-A001221(n+1)` (program `A378993.P12473165963195423861`, by `A378993.P12473165963195423861.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A378993.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A378994.P13213573577854513567

`gcd(2*(n+1), A000203(2*(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378994.P13213573577854513567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * (n + 1) : ℤ) (A000203 (2 * (n + 1)))

end

end A378994.P13213573577854513567

noncomputable section

/-- A378994: a(n) = gcd(2*n, sigma(2*n)).

Offset 1, canonical program `A378994.P13213573577854513567`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(2*(n+1), A000203(2*(n+1)))` (program `A378994.P13213573577854513567`, by `A378994.P13213573577854513567.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A378994 (n : ℕ) : ℤ :=
  (A378994.P13213573577854513567.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(2*(n+1), A000203(2*(n+1)))` (program `A378994.P13213573577854513567`, by `A378994.P13213573577854513567.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A378994.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A379184.P17108702326998689864

`A379183(n+1)%2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379184.P17108702326998689864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A379183 (n + 1)) 2

end

end A379184.P17108702326998689864

noncomputable section

/-- A379184: a(n) = A379183(n) mod 2.

Offset 1, canonical program `A379184.P17108702326998689864`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A379183(n+1)%2` (program `A379184.P17108702326998689864`, by `A379184.P17108702326998689864.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379184 (n : ℕ) : ℤ :=
  A379184.P17108702326998689864.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A379183(n+1)%2` (program `A379184.P17108702326998689864`, by `A379184.P17108702326998689864.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379184.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A379207.P6020199753043466360

`2*A000040(n+2)-(A000040(n+2)-A000040(n+1))²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379207.P6020199753043466360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 2) - (A000040 (n + 2) - A000040 (n + 1)) ^ 2

end

end A379207.P6020199753043466360

noncomputable section

/-- A379207: a(n) = 2*prime(n+1) - (prime(n+1) - prime(n))^2.

Offset 1, canonical program `A379207.P6020199753043466360`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000040(n+2)-(A000040(n+2)-A000040(n+1))²` (program `A379207.P6020199753043466360`, by `A379207.P6020199753043466360.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379207 (n : ℕ) : ℤ :=
  A379207.P6020199753043466360.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000040(n+2)-(A000040(n+2)-A000040(n+1))²` (program `A379207.P6020199753043466360`, by `A379207.P6020199753043466360.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379207.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A379220.P13397059407567510787

`A000203((2*(col(n)+1)-1)²)*A000203((2*(row(n)-col(n)+1)-1)²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379220.P13397059407567510787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (((2 * (SequenceMachineLib.triCol n + 1) : ℤ) - 1) ^ 2).toNat * A000203 ((2 * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) - 1) ^ 2).toNat

end

end A379220.P13397059407567510787

noncomputable section

/-- A379220: Square array A(n, k) = sigma((2n-1)^2) * sigma((2k-1)^2), read by antidiagonals.

Offset 1, canonical program `A379220.P13397059407567510787`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203((2*(col(n)+1)-1)²)*A000203((2*(row(n)-col(n)+1)-1)²)` (program `A379220.P13397059407567510787`, by `A379220.P13397059407567510787.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379220 (n : ℕ) : ℤ :=
  A379220.P13397059407567510787.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203((2*(col(n)+1)-1)²)*A000203((2*(row(n)-col(n)+1)-1)²)` (program `A379220.P13397059407567510787`, by `A379220.P13397059407567510787.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379220.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A379223.P17221684455262730927

`A000203((2*(n+1)-1)²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379223.P17221684455262730927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (((2 * (n + 1) : ℤ) - 1) ^ 2).toNat

end

end A379223.P17221684455262730927

noncomputable section

/-- A379223: Sum of the divisors of the n-th odd square: a(n) = sigma((2*n-1)^2).

Offset 1, canonical program `A379223.P17221684455262730927`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203((2*(n+1)-1)²)` (program `A379223.P17221684455262730927`, by `A379223.P17221684455262730927.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379223 (n : ℕ) : ℤ :=
  A379223.P17221684455262730927.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203((2*(n+1)-1)²)` (program `A379223.P17221684455262730927`, by `A379223.P17221684455262730927.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379223.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A379274.P5229334467215772690

`A135414(n+1)%2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379274.P5229334467215772690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135414 (n + 1)) 2

end

end A379274.P5229334467215772690

noncomputable section

/-- A379274: a(n) = A135414(n) mod 2.

Offset 1, canonical program `A379274.P5229334467215772690`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A135414(n+1)%2` (program `A379274.P5229334467215772690`, by `A379274.P5229334467215772690.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379274 (n : ℕ) : ℤ :=
  A379274.P5229334467215772690.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A135414(n+1)%2` (program `A379274.P5229334467215772690`, by `A379274.P5229334467215772690.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379274.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A379275.P11522029413137536981

`A163801(n)%2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379275.P11522029413137536981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163801 n) 2

end

end A379275.P11522029413137536981

noncomputable section

/-- A379275: a(n) = A163801(n) mod 2.

Offset 0, canonical program `A379275.P11522029413137536981`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A163801(n)%2` (program `A379275.P11522029413137536981`, by `A379275.P11522029413137536981.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379275 (n : ℕ) : ℤ :=
  A379275.P11522029413137536981.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A163801(n)%2` (program `A379275.P11522029413137536981`, by `A379275.P11522029413137536981.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379275.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A379635.P7319658376581675878

`A000203(col(n)+1)*A000203(row(n)+1-col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379635.P7319658376581675878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.triCol n + 1) * A000203 (SequenceMachineLib.triRow n + 1 - SequenceMachineLib.triCol n)

end

end A379635.P7319658376581675878

noncomputable section

/-- A379635: Triangle read by rows: T(n,k) = A000203(k)*A000203(n-k+1), n >= 1, k >= 1.

Offset 1, canonical program `A379635.P7319658376581675878`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(col(n)+1)*A000203(row(n)+1-col(n))` (program `A379635.P7319658376581675878`, by `A379635.P7319658376581675878.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379635 (n : ℕ) : ℤ :=
  A379635.P7319658376581675878.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(col(n)+1)*A000203(row(n)+1-col(n))` (program `A379635.P7319658376581675878`, by `A379635.P7319658376581675878.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379635.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A379812.P10955070158037639960

`A000203(n+1)*A001157(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379812.P10955070158037639960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A001157 (n + 1)

end

end A379812.P10955070158037639960

noncomputable section

/-- A379812: a(n) = sigma_1(n) * sigma_2(n).

Offset 1, canonical program `A379812.P10955070158037639960`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)*A001157(n+1)` (program `A379812.P10955070158037639960`, by `A379812.P10955070158037639960.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379812 (n : ℕ) : ℤ :=
  A379812.P10955070158037639960.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)*A001157(n+1)` (program `A379812.P10955070158037639960`, by `A379812.P10955070158037639960.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379812.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A379813.P10472357877815493423

`A000203(n+1)*A001158(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379813.P10472357877815493423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A001158 (n + 1)

end

end A379813.P10472357877815493423

noncomputable section

/-- A379813: a(n) = sigma_1(n) * sigma_3(n).

Offset 1, canonical program `A379813.P10472357877815493423`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)*A001158(n+1)` (program `A379813.P10472357877815493423`, by `A379813.P10472357877815493423.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379813 (n : ℕ) : ℤ :=
  A379813.P10472357877815493423.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)*A001158(n+1)` (program `A379813.P10472357877815493423`, by `A379813.P10472357877815493423.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379813.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A379814.P16691352175471226694

`A001157(n+1)*A001158(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379814.P16691352175471226694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) * A001158 (n + 1)

end

end A379814.P16691352175471226694

noncomputable section

/-- A379814: a(n) = sigma_2(n) * sigma_3(n).

Offset 1, canonical program `A379814.P16691352175471226694`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001157(n+1)*A001158(n+1)` (program `A379814.P16691352175471226694`, by `A379814.P16691352175471226694.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379814 (n : ℕ) : ℤ :=
  A379814.P16691352175471226694.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001157(n+1)*A001158(n+1)` (program `A379814.P16691352175471226694`, by `A379814.P16691352175471226694.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379814.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A380230.P9860135547969315712

`n*A070939(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A380230.P9860135547969315712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A070939 n

end

end A380230.P9860135547969315712

noncomputable section

/-- A380230: a(n) = n*A070939(n).

Offset 0, canonical program `A380230.P9860135547969315712`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*A070939(n)` (program `A380230.P9860135547969315712`, by `A380230.P9860135547969315712.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A380230 (n : ℕ) : ℤ :=
  A380230.P9860135547969315712.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*A070939(n)` (program `A380230.P9860135547969315712`, by `A380230.P9860135547969315712.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A380230.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A380457.P14810033455213116904

`A000203(n+1)+A001221(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A380457.P14810033455213116904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A001221 (n + 1)

end

end A380457.P14810033455213116904

noncomputable section

/-- A380457: Sum of divisors of n plus the number of distinct prime divisors of n: a(n) = sigma(n) + omega(n).

Offset 1, canonical program `A380457.P14810033455213116904`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)+A001221(n+1)` (program `A380457.P14810033455213116904`, by `A380457.P14810033455213116904.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A380457 (n : ℕ) : ℤ :=
  A380457.P14810033455213116904.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)+A001221(n+1)` (program `A380457.P14810033455213116904`, by `A380457.P14810033455213116904.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A380457.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A383241.P1923992109248827182

`A000040(n+1)*A000040(n+2)*(A000040(n+2)-A000040(n+1))-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A383241.P1923992109248827182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A000040 (n + 2) * (A000040 (n + 2) - A000040 (n + 1)) - 1

end

end A383241.P1923992109248827182

noncomputable section

/-- A383241: a(n) = p(n)*p(n+1)*(p(n+1) - p(n)) - 1, where p(n) = prime(n).

Offset 1, canonical program `A383241.P1923992109248827182`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)*A000040(n+2)*(A000040(n+2)-A000040(n+1))-1` (program `A383241.P1923992109248827182`, by `A383241.P1923992109248827182.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A383241 (n : ℕ) : ℤ :=
  A383241.P1923992109248827182.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)*A000040(n+2)*(A000040(n+2)-A000040(n+1))-1` (program `A383241.P1923992109248827182`, by `A383241.P1923992109248827182.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A383241.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A383242.P10583517466409727714

`A000040(n+1)*A000040(n+2)*(A000040(n+2)-A000040(n+1))+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A383242.P10583517466409727714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A000040 (n + 2) * (A000040 (n + 2) - A000040 (n + 1)) + 1

end

end A383242.P10583517466409727714

noncomputable section

/-- A383242: a(n) = p(n)*p(n+1)*(p(n+1) - p(n)) + 1, where p(n) = prime(n).

Offset 1, canonical program `A383242.P10583517466409727714`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)*A000040(n+2)*(A000040(n+2)-A000040(n+1))+1` (program `A383242.P10583517466409727714`, by `A383242.P10583517466409727714.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A383242 (n : ℕ) : ℤ :=
  A383242.P10583517466409727714.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)*A000040(n+2)*(A000040(n+2)-A000040(n+1))+1` (program `A383242.P10583517466409727714`, by `A383242.P10583517466409727714.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A383242.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A386387.P16040842207466709507

`∑{#}[n, 4^#*C(n, #)*A000108(#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A386387.P16040842207466709507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (4 ^ k * Nat.choose n k : ℤ) * A000108 k

end

end A386387.P16040842207466709507

noncomputable section

/-- A386387: a(n) = Sum_{k=0..n} 4^k * binomial(n,k) * Catalan(k).

Offset 0, canonical program `A386387.P16040842207466709507`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, 4^#*C(n, #)*A000108(#)]` (program `A386387.P16040842207466709507`, by `A386387.P16040842207466709507.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A386387 (n : ℕ) : ℤ :=
  A386387.P16040842207466709507.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, 4^#*C(n, #)*A000108(#)]` (program `A386387.P16040842207466709507`, by `A386387.P16040842207466709507.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A386387.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A386432.P6927363584392969934

`∑{#}[n, n^#*C(n, #)*A000108(#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A386432.P6927363584392969934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (n ^ k * Nat.choose n k : ℤ) * A000108 (k + 1)

end

end A386432.P6927363584392969934

noncomputable section

/-- A386432: a(n) = Sum_{k=0..n} n^k * binomial(n,k) * Catalan(k+1).

Offset 0, canonical program `A386432.P6927363584392969934`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, n^#*C(n, #)*A000108(#+1)]` (program `A386432.P6927363584392969934`, by `A386432.P6927363584392969934.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A386432 (n : ℕ) : ℤ :=
  A386432.P6927363584392969934.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, n^#*C(n, #)*A000108(#+1)]` (program `A386432.P6927363584392969934`, by `A386432.P6927363584392969934.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A386432.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A386596.P8374123821581274991

`∑{d}[n+1, #*A000720((n+1)/#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A386596.P8374123821581274991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000720 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A386596.P8374123821581274991

noncomputable section

/-- A386596: a(n) = Sum_{d|n} d * pi(n/d).

Offset 1, canonical program `A386596.P8374123821581274991`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, #*A000720((n+1)/#)]` (program `A386596.P8374123821581274991`, by `A386596.P8374123821581274991.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A386596 (n : ℕ) : ℤ :=
  A386596.P8374123821581274991.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, #*A000720((n+1)/#)]` (program `A386596.P8374123821581274991`, by `A386596.P8374123821581274991.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A386596.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A386707.P16068764112324631990

`A000032(n+1)+6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A386707.P16068764112324631990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) + 6

end

end A386707.P16068764112324631990

noncomputable section

/-- A386707: a(n) = Lucas(n) + 6.

Offset 1, canonical program `A386707.P16068764112324631990`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000032(n+1)+6` (program `A386707.P16068764112324631990`, by `A386707.P16068764112324631990.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A386707 (n : ℕ) : ℤ :=
  A386707.P16068764112324631990.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000032(n+1)+6` (program `A386707.P16068764112324631990`, by `A386707.P16068764112324631990.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A386707.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A386964.P10655867375920441443

`10*a(n-1)+A000040(n+1)%10` with `a(0)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A386964.P10655867375920441443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  10 * a (n - 1) + Int.tmod (A000040 (n + 1)) 10

end

end A386964.P10655867375920441443

noncomputable section

/-- A386964: a(1) = prime(1) = 2, a(n) = 10*a(n-1) + (prime(n) mod 10).

Offset 1, canonical program `A386964.P10655867375920441443`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)+A000040(n+1)%10` (program `A386964.P10655867375920441443`, by `A386964.P10655867375920441443.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A386964 (n : ℕ) : ℤ :=
  A386964.P10655867375920441443.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)+A000040(n+1)%10` (program `A386964.P10655867375920441443`, by `A386964.P10655867375920441443.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A386964.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A387157.P17255716611215200488

`A173557(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387157.P17255716611215200488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (A000203 (n + 1)).toNat

end

end A387157.P17255716611215200488

noncomputable section

/-- A387157: a(n) = A173557(sigma(n)), where A173557(n) is multiplicative with a(p^e) = p-1 and sigma is the sum of divisors function.

Offset 1, canonical program `A387157.P17255716611215200488`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A173557(A000203(n+1))` (program `A387157.P17255716611215200488`, by `A387157.P17255716611215200488.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A387157 (n : ℕ) : ℤ :=
  A387157.P17255716611215200488.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A173557(A000203(n+1))` (program `A387157.P17255716611215200488`, by `A387157.P17255716611215200488.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A387157.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A387470.P15457309630766544785

`(n+1)*(A001222(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387470.P15457309630766544785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A001222 (n + 1) - 1)

end

end A387470.P15457309630766544785

noncomputable section

/-- A387470: a(n) = n*(Omega(n) - 1), where Omega = A001222.

Offset 1, canonical program `A387470.P15457309630766544785`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(A001222(n+1)-1)` (program `A387470.P15457309630766544785`, by `A387470.P15457309630766544785.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A387470 (n : ℕ) : ℤ :=
  A387470.P15457309630766544785.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(A001222(n+1)-1)` (program `A387470.P15457309630766544785`, by `A387470.P15457309630766544785.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A387470.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A389080.P12360607333665655040

`gcd(A000203(n+1), A048250(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389080.P12360607333665655040
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A048250 (n + 1))

end

end A389080.P12360607333665655040

noncomputable section

/-- A389080: a(n) = gcd(sigma(n), A048250(n)), where sigma is the sum of divisors and A048250 is the sum of squarefree divisors.

Offset 1, canonical program `A389080.P12360607333665655040`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A000203(n+1), A048250(n+1))` (program `A389080.P12360607333665655040`, by `A389080.P12360607333665655040.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A389080 (n : ℕ) : ℤ :=
  (A389080.P12360607333665655040.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A000203(n+1), A048250(n+1))` (program `A389080.P12360607333665655040`, by `A389080.P12360607333665655040.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A389080.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A389699.P887770251712619520

`∑{#}[n, C(n+#, n-#)*A000045(#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389699.P887770251712619520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (n + k) ((n : ℤ) - (k : ℤ)).toNat : ℤ) * A000045 (k + 1)

end

end A389699.P887770251712619520

noncomputable section

/-- A389699: a(n) = Sum_{k=0..n} binomial(n+k,n-k) * Fibonacci(k+1).

Offset 0, canonical program `A389699.P887770251712619520`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n+#, n-#)*A000045(#+1)]` (program `A389699.P887770251712619520`, by `A389699.P887770251712619520.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A389699 (n : ℕ) : ℤ :=
  A389699.P887770251712619520.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n+#, n-#)*A000045(#+1)]` (program `A389699.P887770251712619520`, by `A389699.P887770251712619520.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A389699.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A389800.P1719173530516811554

`A000045(row(n)-col(n))²+A000045(row(n)-col(n)+col(n))²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389800.P1719173530516811554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) ^ 2 + A000045 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triCol n : ℤ)).toNat ^ 2

end

end A389800.P1719173530516811554

noncomputable section

/-- A389800: Array read by ascending antidiagonals: A(n, k) = A000045(n)^2 + A000045(n+k)^2.

Offset 0, canonical program `A389800.P1719173530516811554`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(row(n)-col(n))²+A000045(row(n)-col(n)+col(n))²` (program `A389800.P1719173530516811554`, by `A389800.P1719173530516811554.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A389800 (n : ℕ) : ℤ :=
  A389800.P1719173530516811554.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(row(n)-col(n))²+A000045(row(n)-col(n)+col(n))²` (program `A389800.P1719173530516811554`, by `A389800.P1719173530516811554.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A389800.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A389933.P1654570028840973288

`∑{#}[n, C(n+#+1, n-#)*A000045(#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389933.P1654570028840973288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (n + k + 1) ((n : ℤ) - (k : ℤ)).toNat : ℤ) * A000045 (k + 1)

end

end A389933.P1654570028840973288

noncomputable section

/-- A389933: a(n) = Sum_{k=0..n} binomial(n+k+1,n-k) * Fibonacci(k+1).

Offset 0, canonical program `A389933.P1654570028840973288`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n+#+1, n-#)*A000045(#+1)]` (program `A389933.P1654570028840973288`, by `A389933.P1654570028840973288.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A389933 (n : ℕ) : ℤ :=
  A389933.P1654570028840973288.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n+#+1, n-#)*A000045(#+1)]` (program `A389933.P1654570028840973288`, by `A389933.P1654570028840973288.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A389933.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A390524.P3325490279493668610

`col(n)*A000045(row(n)-col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A390524.P3325490279493668610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n : ℤ) * A000045 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A390524.P3325490279493668610

noncomputable section

/-- A390524: Array read by ascending antidiagonals: A(n, k) = k * Fibonacci(n).

Offset 0, canonical program `A390524.P3325490279493668610`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `col(n)*A000045(row(n)-col(n))` (program `A390524.P3325490279493668610`, by `A390524.P3325490279493668610.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A390524 (n : ℕ) : ℤ :=
  A390524.P3325490279493668610.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `col(n)*A000045(row(n)-col(n))` (program `A390524.P3325490279493668610`, by `A390524.P3325490279493668610.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A390524.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A390525.P327141548468234781

`A000217(n)*A000045(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A390525.P327141548468234781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A000045 n

end

end A390525.P327141548468234781

noncomputable section

/-- A390525: a(n) = A000217(n)*A000045(n).

Offset 0, canonical program `A390525.P327141548468234781`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000217(n)*A000045(n)` (program `A390525.P327141548468234781`, by `A390525.P327141548468234781.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A390525 (n : ℕ) : ℤ :=
  A390525.P327141548468234781.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000217(n)*A000045(n)` (program `A390525.P327141548468234781`, by `A390525.P327141548468234781.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A390525.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A390824.P7964230445960175717

`∑{#}[n, C(n+#+2, n-#)*A000045(#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A390824.P7964230445960175717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (n + k + 2) ((n : ℤ) - (k : ℤ)).toNat : ℤ) * A000045 (k + 1)

end

end A390824.P7964230445960175717

noncomputable section

/-- A390824: a(n) = Sum_{k=0..n} binomial(n+k+2,n-k) * Fibonacci(k+1).

Offset 0, canonical program `A390824.P7964230445960175717`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n+#+2, n-#)*A000045(#+1)]` (program `A390824.P7964230445960175717`, by `A390824.P7964230445960175717.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A390824 (n : ℕ) : ℤ :=
  A390824.P7964230445960175717.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n+#+2, n-#)*A000045(#+1)]` (program `A390824.P7964230445960175717`, by `A390824.P7964230445960175717.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A390824.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A390825.P1550147434703536620

`∑{#}[n, C(n+2*#, n-#)*A000045(#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A390825.P1550147434703536620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (n + 2 * k) ((n : ℤ) - (k : ℤ)).toNat : ℤ) * A000045 (k + 1)

end

end A390825.P1550147434703536620

noncomputable section

/-- A390825: a(n) = Sum_{k=0..n} binomial(n+2*k,n-k) * Fibonacci(k+1).

Offset 0, canonical program `A390825.P1550147434703536620`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n+2*#, n-#)*A000045(#+1)]` (program `A390825.P1550147434703536620`, by `A390825.P1550147434703536620.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A390825 (n : ℕ) : ℤ :=
  A390825.P1550147434703536620.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n+2*#, n-#)*A000045(#+1)]` (program `A390825.P1550147434703536620`, by `A390825.P1550147434703536620.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A390825.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A390826.P2573223189263826108

`∑{#}[n, C(n+2*#+1, n-#)*A000045(#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A390826.P2573223189263826108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (n + 2 * k + 1) ((n : ℤ) - (k : ℤ)).toNat : ℤ) * A000045 (k + 1)

end

end A390826.P2573223189263826108

noncomputable section

/-- A390826: a(n) = Sum_{k=0..n} binomial(n+2*k+1,n-k) * Fibonacci(k+1).

Offset 0, canonical program `A390826.P2573223189263826108`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n+2*#+1, n-#)*A000045(#+1)]` (program `A390826.P2573223189263826108`, by `A390826.P2573223189263826108.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A390826 (n : ℕ) : ℤ :=
  A390826.P2573223189263826108.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n+2*#+1, n-#)*A000045(#+1)]` (program `A390826.P2573223189263826108`, by `A390826.P2573223189263826108.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A390826.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A390827.P10484664339331997533

`∑{#}[n, C(n+2*#+2, n-#)*A000045(#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A390827.P10484664339331997533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (n + 2 * k + 2) ((n : ℤ) - (k : ℤ)).toNat : ℤ) * A000045 (k + 1)

end

end A390827.P10484664339331997533

noncomputable section

/-- A390827: a(n) = Sum_{k=0..n} binomial(n+2*k+2,n-k) * Fibonacci(k+1).

Offset 0, canonical program `A390827.P10484664339331997533`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n+2*#+2, n-#)*A000045(#+1)]` (program `A390827.P10484664339331997533`, by `A390827.P10484664339331997533.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A390827 (n : ℕ) : ℤ :=
  A390827.P10484664339331997533.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n+2*#+2, n-#)*A000045(#+1)]` (program `A390827.P10484664339331997533`, by `A390827.P10484664339331997533.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A390827.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A390828.P3197216079405645133

`∑{#}[n, C(n+2*#+5, n-#)*A000045(#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A390828.P3197216079405645133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (n + 2 * k + 5) ((n : ℤ) - (k : ℤ)).toNat : ℤ) * A000045 (k + 1)

end

end A390828.P3197216079405645133

noncomputable section

/-- A390828: a(n) = Sum_{k=0..n} binomial(n+2*k+5,n-k) * Fibonacci(k+1).

Offset 0, canonical program `A390828.P3197216079405645133`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n+2*#+5, n-#)*A000045(#+1)]` (program `A390828.P3197216079405645133`, by `A390828.P3197216079405645133.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A390828 (n : ℕ) : ℤ :=
  A390828.P3197216079405645133.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n+2*#+5, n-#)*A000045(#+1)]` (program `A390828.P3197216079405645133`, by `A390828.P3197216079405645133.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A390828.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A390851.P14024675243365140069

`∑{#}[n, (-1)^#*C(n+#, n-#)*A000045(#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A390851.P14024675243365140069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1) ^ k * (Nat.choose (n + k) ((n : ℤ) - (k : ℤ)).toNat : ℤ) * A000045 (k + 1)

end

end A390851.P14024675243365140069

noncomputable section

/-- A390851: a(n) = Sum_{k=0..n} (-1)^k * binomial(n+k,n-k) * Fibonacci(k+1).

Offset 0, canonical program `A390851.P14024675243365140069`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*C(n+#, n-#)*A000045(#+1)]` (program `A390851.P14024675243365140069`, by `A390851.P14024675243365140069.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A390851 (n : ℕ) : ℤ :=
  A390851.P14024675243365140069.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*C(n+#, n-#)*A000045(#+1)]` (program `A390851.P14024675243365140069`, by `A390851.P14024675243365140069.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A390851.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A390852.P16766028605328524078

`∑{#}[n, (-1)^#*C(n+#+1, n-#)*A000045(#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A390852.P16766028605328524078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1) ^ k * (Nat.choose (n + k + 1) ((n : ℤ) - (k : ℤ)).toNat : ℤ) * A000045 (k + 1)

end

end A390852.P16766028605328524078

noncomputable section

/-- A390852: a(n) = Sum_{k=0..n} (-1)^k * binomial(n+k+1,n-k) * Fibonacci(k+1).

Offset 0, canonical program `A390852.P16766028605328524078`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*C(n+#+1, n-#)*A000045(#+1)]` (program `A390852.P16766028605328524078`, by `A390852.P16766028605328524078.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A390852 (n : ℕ) : ℤ :=
  A390852.P16766028605328524078.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*C(n+#+1, n-#)*A000045(#+1)]` (program `A390852.P16766028605328524078`, by `A390852.P16766028605328524078.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A390852.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A390853.P6696008130369478609

`∑{#}[n, (-1)^#*C(n+#+2, n-#)*A000045(#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A390853.P6696008130369478609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1) ^ k * (Nat.choose (n + k + 2) ((n : ℤ) - (k : ℤ)).toNat : ℤ) * A000045 (k + 1)

end

end A390853.P6696008130369478609

noncomputable section

/-- A390853: a(n) = Sum_{k=0..n} (-1)^k * binomial(n+k+2,n-k) * Fibonacci(k+1).

Offset 0, canonical program `A390853.P6696008130369478609`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*C(n+#+2, n-#)*A000045(#+1)]` (program `A390853.P6696008130369478609`, by `A390853.P6696008130369478609.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A390853 (n : ℕ) : ℤ :=
  A390853.P6696008130369478609.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*C(n+#+2, n-#)*A000045(#+1)]` (program `A390853.P6696008130369478609`, by `A390853.P6696008130369478609.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A390853.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A390855.P16326501226326567991

`∑{#}[n, (-1)^#*C(n+2*#, n-#)*A000045(#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A390855.P16326501226326567991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1) ^ k * (Nat.choose (n + 2 * k) ((n : ℤ) - (k : ℤ)).toNat : ℤ) * A000045 (k + 1)

end

end A390855.P16326501226326567991

noncomputable section

/-- A390855: a(n) = Sum_{k=0..n} (-1)^k * binomial(n+2*k,n-k) * Fibonacci(k+1).

Offset 0, canonical program `A390855.P16326501226326567991`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*C(n+2*#, n-#)*A000045(#+1)]` (program `A390855.P16326501226326567991`, by `A390855.P16326501226326567991.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A390855 (n : ℕ) : ℤ :=
  A390855.P16326501226326567991.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*C(n+2*#, n-#)*A000045(#+1)]` (program `A390855.P16326501226326567991`, by `A390855.P16326501226326567991.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A390855.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A390856.P9819855747936350637

`∑{#}[n, (-1)^#*C(n+2*#+1, n-#)*A000045(#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A390856.P9819855747936350637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1) ^ k * (Nat.choose (n + 2 * k + 1) ((n : ℤ) - (k : ℤ)).toNat : ℤ) * A000045 (k + 1)

end

end A390856.P9819855747936350637

noncomputable section

/-- A390856: a(n) = Sum_{k=0..n} (-1)^k * binomial(n+2*k+1,n-k) * Fibonacci(k+1).

Offset 0, canonical program `A390856.P9819855747936350637`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*C(n+2*#+1, n-#)*A000045(#+1)]` (program `A390856.P9819855747936350637`, by `A390856.P9819855747936350637.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A390856 (n : ℕ) : ℤ :=
  A390856.P9819855747936350637.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*C(n+2*#+1, n-#)*A000045(#+1)]` (program `A390856.P9819855747936350637`, by `A390856.P9819855747936350637.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A390856.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A390857.P13803681639856530329

`∑{#}[n, (-1)^#*C(n+2*#+2, n-#)*A000045(#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A390857.P13803681639856530329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1) ^ k * (Nat.choose (n + 2 * k + 2) ((n : ℤ) - (k : ℤ)).toNat : ℤ) * A000045 (k + 1)

end

end A390857.P13803681639856530329

noncomputable section

/-- A390857: a(n) = Sum_{k=0..n} (-1)^k * binomial(n+2*k+2,n-k) * Fibonacci(k+1).

Offset 0, canonical program `A390857.P13803681639856530329`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*C(n+2*#+2, n-#)*A000045(#+1)]` (program `A390857.P13803681639856530329`, by `A390857.P13803681639856530329.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A390857 (n : ℕ) : ℤ :=
  A390857.P13803681639856530329.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*C(n+2*#+2, n-#)*A000045(#+1)]` (program `A390857.P13803681639856530329`, by `A390857.P13803681639856530329.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A390857.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A390858.P2111169645003646975

`∑{#}[n, (-1)^#*C(n+2*#+5, n-#)*A000045(#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A390858.P2111169645003646975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1) ^ k * (Nat.choose (n + 2 * k + 5) ((n : ℤ) - (k : ℤ)).toNat : ℤ) * A000045 (k + 1)

end

end A390858.P2111169645003646975

noncomputable section

/-- A390858: a(n) = Sum_{k=0..n} (-1)^k * binomial(n+2*k+5,n-k) * Fibonacci(k+1).

Offset 0, canonical program `A390858.P2111169645003646975`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*C(n+2*#+5, n-#)*A000045(#+1)]` (program `A390858.P2111169645003646975`, by `A390858.P2111169645003646975.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A390858 (n : ℕ) : ℤ :=
  A390858.P2111169645003646975.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*C(n+2*#+5, n-#)*A000045(#+1)]` (program `A390858.P2111169645003646975`, by `A390858.P2111169645003646975.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A390858.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A390859.P12509367206188868359

`∑{#}[n, (-1)^#*C(n+#+3, n-#)*A000045(#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A390859.P12509367206188868359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1) ^ k * (Nat.choose (n + k + 3) ((n : ℤ) - (k : ℤ)).toNat : ℤ) * A000045 (k + 1)

end

end A390859.P12509367206188868359

noncomputable section

/-- A390859: a(n) = Sum_{k=0..n} (-1)^k * binomial(n+k+3,n-k) * Fibonacci(k+1).

Offset 0, canonical program `A390859.P12509367206188868359`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*C(n+#+3, n-#)*A000045(#+1)]` (program `A390859.P12509367206188868359`, by `A390859.P12509367206188868359.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A390859 (n : ℕ) : ℤ :=
  A390859.P12509367206188868359.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*C(n+#+3, n-#)*A000045(#+1)]` (program `A390859.P12509367206188868359`, by `A390859.P12509367206188868359.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A390859.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A390881.P7996395185274850031

`gcd(A018804(n+1), A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A390881.P7996395185274850031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A018804 (n + 1)) (A000203 (n + 1))

end

end A390881.P7996395185274850031

noncomputable section

/-- A390881: a(n) = gcd(A018804(n), A000203(n)).

Offset 1, canonical program `A390881.P7996395185274850031`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A018804(n+1), A000203(n+1))` (program `A390881.P7996395185274850031`, by `A390881.P7996395185274850031.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A390881 (n : ℕ) : ℤ :=
  (A390881.P7996395185274850031.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A018804(n+1), A000203(n+1))` (program `A390881.P7996395185274850031`, by `A390881.P7996395185274850031.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A390881.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A391357.P12193417330402299816

`A000040(col(n)+1)+A000040(col(n)+1+row(n)-col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391357.P12193417330402299816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.triCol n + 1) + A000040 ((SequenceMachineLib.triCol n + 1 : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1)).toNat

end

end A391357.P12193417330402299816

noncomputable section

/-- A391357: Rectangular array R read by falling antidiagonals: R(n,k) = prime(n) + prime(n+k).

Offset 1, canonical program `A391357.P12193417330402299816`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(col(n)+1)+A000040(col(n)+1+row(n)-col(n)+1)` (program `A391357.P12193417330402299816`, by `A391357.P12193417330402299816.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A391357 (n : ℕ) : ℤ :=
  A391357.P12193417330402299816.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(col(n)+1)+A000040(col(n)+1+row(n)-col(n)+1)` (program `A391357.P12193417330402299816`, by `A391357.P12193417330402299816.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A391357.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A391358.P13111860119989259958

`A000040(row(n)-col(n)+1)+A000040(col(n)+1+row(n)-col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391358.P13111860119989259958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat + A000040 ((SequenceMachineLib.triCol n + 1 : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1)).toNat

end

end A391358.P13111860119989259958

noncomputable section

/-- A391358: Rectangular array R read by falling antidiagonals: R(n,k) = prime(k) + prime(n+k).

Offset 1, canonical program `A391358.P13111860119989259958`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(row(n)-col(n)+1)+A000040(col(n)+1+row(n)-col(n)+1)` (program `A391358.P13111860119989259958`, by `A391358.P13111860119989259958.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A391358 (n : ℕ) : ℤ :=
  A391358.P13111860119989259958.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(row(n)-col(n)+1)+A000040(col(n)+1+row(n)-col(n)+1)` (program `A391358.P13111860119989259958`, by `A391358.P13111860119989259958.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A391358.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A391616.P3679485652184830836

`a(n-1)+A000040(a(n-1))+1` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391616.P3679485652184830836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000040 (a (n - 1)).toNat + 1

end

end A391616.P3679485652184830836

noncomputable section

/-- A391616: a(n) = a(n-1) + prime(a(n-1)) + 1 for n > 1, with a(1) = 1.

Offset 1, canonical program `A391616.P3679485652184830836`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+A000040(a(n-1))+1` (program `A391616.P3679485652184830836`, by `A391616.P3679485652184830836.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A391616 (n : ℕ) : ℤ :=
  A391616.P3679485652184830836.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+A000040(a(n-1))+1` (program `A391616.P3679485652184830836`, by `A391616.P3679485652184830836.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A391616.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A391803.P13723493948651600256

`floor(∑{#}[n, (n+1)/A000040(#+1)])`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391803.P13723493948651600256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ k ∈ Finset.range (f1 n + 1), (n + 1 : ℚ) / (A000040 (k + 1) : ℚ)⌋

end

end A391803.P13723493948651600256

noncomputable section

/-- A391803: a(n) = floor(Sum_{k=1..n} n/prime(k)).

Offset 1, canonical program `A391803.P13723493948651600256`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(∑{#}[n, (n+1)/A000040(#+1)])` (program `A391803.P13723493948651600256`, by `A391803.P13723493948651600256.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A391803 (n : ℕ) : ℤ :=
  A391803.P13723493948651600256.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(∑{#}[n, (n+1)/A000040(#+1)])` (program `A391803.P13723493948651600256`, by `A391803.P13723493948651600256.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A391803.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A392328.P15567604144437909365

`A000045(n²+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392328.P15567604144437909365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n ^ 2 + 1)

end

end A392328.P15567604144437909365

noncomputable section

/-- A392328: a(n) = Fibonacci(n^2+1).

Offset 0, canonical program `A392328.P15567604144437909365`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n²+1)` (program `A392328.P15567604144437909365`, by `A392328.P15567604144437909365.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A392328 (n : ℕ) : ℤ :=
  A392328.P15567604144437909365.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n²+1)` (program `A392328.P15567604144437909365`, by `A392328.P15567604144437909365.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A392328.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A393202.P8725241224376797018

`A000040(n+3)²-A000040(n+2)*A000040(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A393202.P8725241224376797018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3) ^ 2 - A000040 (n + 2) * A000040 (n + 1)

end

end A393202.P8725241224376797018

noncomputable section

/-- A393202: a(n) = prime(n + 2)^2 - prime(n + 1)*prime(n).

Offset 1, canonical program `A393202.P8725241224376797018`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+3)²-A000040(n+2)*A000040(n+1)` (program `A393202.P8725241224376797018`, by `A393202.P8725241224376797018.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A393202 (n : ℕ) : ℤ :=
  A393202.P8725241224376797018.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+3)²-A000040(n+2)*A000040(n+1)` (program `A393202.P8725241224376797018`, by `A393202.P8725241224376797018.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A393202.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A393272.P5469321113303359746

`∑{#}[n-1, C(n+1, #+1+1)*A000169(#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A393272.P5469321113303359746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose (n + 1) (k + 1 + 1) : ℤ) * A000169 (k + 1)

end

end A393272.P5469321113303359746

noncomputable section

/-- A393272: a(0) = 0, a(n) = Sum_{k=1..n} binomial(n+1, k+1)*A000169(k) for n > 0.

Offset 0, canonical program `A393272.P5469321113303359746`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, C(n+1, #+1+1)*A000169(#+1)]` (program `A393272.P5469321113303359746`, by `A393272.P5469321113303359746.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A393272 (n : ℕ) : ℤ :=
  A393272.P5469321113303359746.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, C(n+1, #+1+1)*A000169(#+1)]` (program `A393272.P5469321113303359746`, by `A393272.P5469321113303359746.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A393272.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A393297.P12328997900511415540

`A000129(A000129(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A393297.P12328997900511415540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (A000129 n).toNat

end

end A393297.P12328997900511415540

noncomputable section

/-- A393297: a(n) = Pell(Pell(n)) where Pell(n) = A000129(n).

Offset 0, canonical program `A393297.P12328997900511415540`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000129(A000129(n))` (program `A393297.P12328997900511415540`, by `A393297.P12328997900511415540.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A393297 (n : ℕ) : ℤ :=
  A393297.P12328997900511415540.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000129(A000129(n))` (program `A393297.P12328997900511415540`, by `A393297.P12328997900511415540.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A393297.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A393309.P12315744972852364962

`floor((n+1)!/A000040(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A393309.P12315744972852364962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)⌋

end

end A393309.P12315744972852364962

noncomputable section

/-- A393309: a(n) = floor(n! / prime(n)).

Offset 1, canonical program `A393309.P12315744972852364962`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)!/A000040(n+1))` (program `A393309.P12315744972852364962`, by `A393309.P12315744972852364962.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A393309 (n : ℕ) : ℤ :=
  A393309.P12315744972852364962.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)!/A000040(n+1))` (program `A393309.P12315744972852364962`, by `A393309.P12315744972852364962.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A393309.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A395282.P88056068259505697

`∑{d}[n+1, A008683(#)*A000045(2*(n+1)/#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A395282.P88056068259505697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A000045 (SequenceMachineLib.roundAway (2 * ((n + 1 : ℚ) / (d : ℚ)) + 1)).toNat

end

end A395282.P88056068259505697

noncomputable section

/-- A395282: a(n) = Sum_{d|n} mu(d)*Fibonacci(2*(n/d)+1).

Offset 1, canonical program `A395282.P88056068259505697`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, A008683(#)*A000045(2*(n+1)/#+1)]` (program `A395282.P88056068259505697`, by `A395282.P88056068259505697.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A395282 (n : ℕ) : ℤ :=
  A395282.P88056068259505697.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, A008683(#)*A000045(2*(n+1)/#+1)]` (program `A395282.P88056068259505697`, by `A395282.P88056068259505697.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A395282.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A395496.P12958945364925833898

`∑{d}[n+1, gcd(#, (n+1)/#)*A008683(#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A395496.P12958945364925833898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Int.gcd (d : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))) : ℤ) * A008683 d

end

end A395496.P12958945364925833898

noncomputable section

/-- A395496: a(n) = Sum_{d|n} gcd(d,n/d)*mu(d).

Offset 1, canonical program `A395496.P12958945364925833898`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, gcd(#, (n+1)/#)*A008683(#)]` (program `A395496.P12958945364925833898`, by `A395496.P12958945364925833898.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A395496 (n : ℕ) : ℤ :=
  A395496.P12958945364925833898.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, gcd(#, (n+1)/#)*A008683(#)]` (program `A395496.P12958945364925833898`, by `A395496.P12958945364925833898.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A395496.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A395605.P10565796866009906003

`((A000032(A000040(n+1))-1)/A000040(n+1))%A000040(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A395605.P10565796866009906003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A000032 (A000040 (n + 1)).toNat - 1 : ℚ) / (A000040 (n + 1) : ℚ))) (A000040 (n + 1))

end

end A395605.P10565796866009906003

noncomputable section

/-- A395605: a(n) = ((Lucas(prime(n)) - 1) / prime(n)) mod prime(n).

Offset 1, canonical program `A395605.P10565796866009906003`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((A000032(A000040(n+1))-1)/A000040(n+1))%A000040(n+1)` (program `A395605.P10565796866009906003`, by `A395605.P10565796866009906003.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A395605 (n : ℕ) : ℤ :=
  A395605.P10565796866009906003.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((A000032(A000040(n+1))-1)/A000040(n+1))%A000040(n+1)` (program `A395605.P10565796866009906003`, by `A395605.P10565796866009906003.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A395605.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A397579.P16677952923156298384

`(4*A000045(n)+A000045(n+1))*A000045(n+1)^3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397579.P16677952923156298384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * A000045 n + A000045 (n + 1)) * A000045 (n + 1) ^ 3

end

end A397579.P16677952923156298384

noncomputable section

/-- A397579: a(n) = (4*Fibonacci(n) + Fibonacci(n+1))*Fibonacci(n+1)^3.

Offset 0, canonical program `A397579.P16677952923156298384`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*A000045(n)+A000045(n+1))*A000045(n+1)^3` (program `A397579.P16677952923156298384`, by `A397579.P16677952923156298384.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A397579 (n : ℕ) : ℤ :=
  A397579.P16677952923156298384.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*A000045(n)+A000045(n+1))*A000045(n+1)^3` (program `A397579.P16677952923156298384`, by `A397579.P16677952923156298384.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A397579.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A397897.P10416135777402412473

`∑{#}[n-1, (-1)^(#+1+1)*(#+1)*A000040(n-#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397897.P10416135777402412473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (-1) ^ (k + 1 + 1) * (k + 1 : ℤ) * A000040 (n - k)

end

end A397897.P10416135777402412473

noncomputable section

/-- A397897: a(n) = Sum_{j=1..n} (-1)^(j+1) * j * prime(n-j+1).

Offset 0, canonical program `A397897.P10416135777402412473`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, (-1)^(#+1+1)*(#+1)*A000040(n-#)]` (program `A397897.P10416135777402412473`, by `A397897.P10416135777402412473.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A397897 (n : ℕ) : ℤ :=
  A397897.P10416135777402412473.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, (-1)^(#+1+1)*(#+1)*A000040(n-#)]` (program `A397897.P10416135777402412473`, by `A397897.P10416135777402412473.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A397897.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A398524.P15977062120974542991

`∑{#}[n, A008683(floor((n+1)/(#+1)))²]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398524.P15977062120974542991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A008683 ⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋.toNat ^ 2

end

end A398524.P15977062120974542991

noncomputable section

/-- A398524: a(n) = Sum_{k=1..n} mu(floor(n/k))^2, where mu = A008683 is the Möbius function.

Offset 1, canonical program `A398524.P15977062120974542991`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A008683(floor((n+1)/(#+1)))²]` (program `A398524.P15977062120974542991`, by `A398524.P15977062120974542991.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A398524 (n : ℕ) : ℤ :=
  A398524.P15977062120974542991.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A008683(floor((n+1)/(#+1)))²]` (program `A398524.P15977062120974542991`, by `A398524.P15977062120974542991.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A398524.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A398528.P8306073796892616151

`∑{#}[n, A001221(floor((n+1)/(#+1)))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398528.P8306073796892616151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A001221 ⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋.toNat

end

end A398528.P8306073796892616151

noncomputable section

/-- A398528: a(n) = Sum_{k=1..n} omega(floor(n/k)), where omega(n) = A001221(n) is the number of distinct primes dividing n.

Offset 1, canonical program `A398528.P8306073796892616151`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A001221(floor((n+1)/(#+1)))]` (program `A398528.P8306073796892616151`, by `A398528.P8306073796892616151.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A398528 (n : ℕ) : ℤ :=
  A398528.P8306073796892616151.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A001221(floor((n+1)/(#+1)))]` (program `A398528.P8306073796892616151`, by `A398528.P8306073796892616151.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A398528.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A399840.P17099530196109704425

`A050443(n+1)%(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A399840.P17099530196109704425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050443 (n + 1)) (n + 1 : ℤ)

end

end A399840.P17099530196109704425

noncomputable section

/-- A399840: a(n) = A050443(n) mod n.

Offset 1, canonical program `A399840.P17099530196109704425`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A050443(n+1)%(n+1)` (program `A399840.P17099530196109704425`, by `A399840.P17099530196109704425.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A399840 (n : ℕ) : ℤ :=
  A399840.P17099530196109704425.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A050443(n+1)%(n+1)` (program `A399840.P17099530196109704425`, by `A399840.P17099530196109704425.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A399840.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A399978.P3565571226522649033

`A001221(n+1)+A008472(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A399978.P3565571226522649033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + A008472 (n + 1)

end

end A399978.P3565571226522649033

noncomputable section

/-- A399978: a(n) = omega(n) + sopf(n), where omega(n) is the number of distinct prime factors of n (A001221) and sopf(n) is the sum of the distinct primes dividing n (A008472).

Offset 1, canonical program `A399978.P3565571226522649033`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001221(n+1)+A008472(n+1)` (program `A399978.P3565571226522649033`, by `A399978.P3565571226522649033.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A399978 (n : ℕ) : ℤ :=
  A399978.P3565571226522649033.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001221(n+1)+A008472(n+1)` (program `A399978.P3565571226522649033`, by `A399978.P3565571226522649033.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A399978.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A400361.P1889396071312864242

`A018804(n+1)-A384628(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400361.P1889396071312864242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (n + 1) - A384628 (n + 1)

end

end A400361.P1889396071312864242

noncomputable section

/-- A400361: a(n) = A018804(n) - A384628(n).

Offset 1, canonical program `A400361.P1889396071312864242`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A018804(n+1)-A384628(n+1)` (program `A400361.P1889396071312864242`, by `A400361.P1889396071312864242.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A400361 (n : ℕ) : ℤ :=
  A400361.P1889396071312864242.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A018804(n+1)-A384628(n+1)` (program `A400361.P1889396071312864242`, by `A400361.P1889396071312864242.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A400361.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A400418.P16782049149117832626

`∑{#}[n, A007947(floor((n+1)/(#+1)))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400418.P16782049149117832626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A007947 ⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋.toNat

end

end A400418.P16782049149117832626

noncomputable section

/-- A400418: a(n) = Sum_{k=1..n} A007947(floor(n/k)).

Offset 1, canonical program `A400418.P16782049149117832626`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A007947(floor((n+1)/(#+1)))]` (program `A400418.P16782049149117832626`, by `A400418.P16782049149117832626.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A400418 (n : ℕ) : ℤ :=
  A400418.P16782049149117832626.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A007947(floor((n+1)/(#+1)))]` (program `A400418.P16782049149117832626`, by `A400418.P16782049149117832626.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A400418.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A400694.P3850939055037617322

`A008683(n²+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400694.P3850939055037617322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n ^ 2 + 2)

end

end A400694.P3850939055037617322

noncomputable section

/-- A400694: a(n) = mu(n^2 + 2).

Offset 0, canonical program `A400694.P3850939055037617322`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A008683(n²+2)` (program `A400694.P3850939055037617322`, by `A400694.P3850939055037617322.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A400694 (n : ℕ) : ℤ :=
  A400694.P3850939055037617322.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A008683(n²+2)` (program `A400694.P3850939055037617322`, by `A400694.P3850939055037617322.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A400694.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A400695.P9639119796023989076

`A008683(n²+3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400695.P9639119796023989076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n ^ 2 + 3)

end

end A400695.P9639119796023989076

noncomputable section

/-- A400695: a(n) = mu(n^2 + 3).

Offset 0, canonical program `A400695.P9639119796023989076`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A008683(n²+3)` (program `A400695.P9639119796023989076`, by `A400695.P9639119796023989076.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A400695 (n : ℕ) : ℤ :=
  A400695.P9639119796023989076.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A008683(n²+3)` (program `A400695.P9639119796023989076`, by `A400695.P9639119796023989076.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A400695.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A400696.P2770596567942535513

`A008966(n²+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400696.P2770596567942535513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n ^ 2 + 2)

end

end A400696.P2770596567942535513

noncomputable section

/-- A400696: a(n) = A008966(n^2 + 2).

Offset 0, canonical program `A400696.P2770596567942535513`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A008966(n²+2)` (program `A400696.P2770596567942535513`, by `A400696.P2770596567942535513.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A400696 (n : ℕ) : ℤ :=
  A400696.P2770596567942535513.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A008966(n²+2)` (program `A400696.P2770596567942535513`, by `A400696.P2770596567942535513.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A400696.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A400697.P17424689115559816129

`A008966(n²+3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400697.P17424689115559816129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n ^ 2 + 3)

end

end A400697.P17424689115559816129

noncomputable section

/-- A400697: a(n) = A008966(n^2 + 3).

Offset 0, canonical program `A400697.P17424689115559816129`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A008966(n²+3)` (program `A400697.P17424689115559816129`, by `A400697.P17424689115559816129.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A400697 (n : ℕ) : ℤ :=
  A400697.P17424689115559816129.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A008966(n²+3)` (program `A400697.P17424689115559816129`, by `A400697.P17424689115559816129.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A400697.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A400769.P1291810996516571968

`A008683(n²+n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400769.P1291810996516571968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n ^ 2 + n + 1)

end

end A400769.P1291810996516571968

noncomputable section

/-- A400769: a(n) = mu(n^2 + n + 1).

Offset 0, canonical program `A400769.P1291810996516571968`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A008683(n²+n+1)` (program `A400769.P1291810996516571968`, by `A400769.P1291810996516571968.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A400769 (n : ℕ) : ℤ :=
  A400769.P1291810996516571968.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A008683(n²+n+1)` (program `A400769.P1291810996516571968`, by `A400769.P1291810996516571968.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A400769.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A401038.P13661554946352965378

`(a(n-1)+A000040(n+1))*A000040(n+1)` with `a(0)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A401038.P13661554946352965378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (a (n - 1) + A000040 (n + 1)) * A000040 (n + 1)

end

end A401038.P13661554946352965378

noncomputable section

/-- A401038: a(1)=2, a(n)=(a(n-1)+prime(n))*prime(n) for n > 1.

Offset 1, canonical program `A401038.P13661554946352965378`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(a(n-1)+A000040(n+1))*A000040(n+1)` (program `A401038.P13661554946352965378`, by `A401038.P13661554946352965378.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A401038 (n : ℕ) : ℤ :=
  A401038.P13661554946352965378.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(a(n-1)+A000040(n+1))*A000040(n+1)` (program `A401038.P13661554946352965378`, by `A401038.P13661554946352965378.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A401038.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A365511.P831672977553323829

`A088218(n)^3*A110706(n)`
-/

namespace A365511.P831672977553323829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n ^ 3 * A110706 n

end

end A365511.P831672977553323829

noncomputable section

/-- A365511: Number of ways to travel from (0,0,0) to (2*n,2*n,2*n) with n positive integer steps in each direction, changing directions at each step.

Offset 0, canonical program `A365511.P831672977553323829`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365511 (n : ℕ) : ℤ :=
  A365511.P831672977553323829.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365511.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365544.P10985151635534295399

`2^n-A068911(n)`
-/

namespace A365544.P10985151635534295399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A068911 n

end

end A365544.P10985151635534295399

noncomputable section

/-- A365544: Number of subsets of {1..n} containing two distinct elements summing to n.

Offset 0, canonical program `A365544.P10985151635534295399`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365544 (n : ℕ) : ℤ :=
  A365544.P10985151635534295399.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365544.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365581.P17661066998784569291

`4^(n+1)+A001644(n+1)²`
-/

namespace A365581.P17661066998784569291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ (n + 1) : ℤ) + A001644 (n + 1) ^ 2

end

end A365581.P17661066998784569291

noncomputable section

/-- A365581: Number of dominating sets in the n-double cone graph.

Offset 1, canonical program `A365581.P17661066998784569291`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365581 (n : ℕ) : ℤ :=
  A365581.P17661066998784569291.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365581.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365645.P3735307995772780477

`A000217(n)*A002275(n)`
-/

namespace A365645.P3735307995772780477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A002275 n

end

end A365645.P3735307995772780477

noncomputable section

/-- A365645: a(n) = n*(1 + n)*(10^n - 1)/18.

Offset 0, canonical program `A365645.P3735307995772780477`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365645 (n : ℕ) : ℤ :=
  A365645.P3735307995772780477.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365645.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365771.P5740291251164711934

`A000108(n)*A165817(n)`
-/

namespace A365771.P5740291251164711934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A165817 n

end

end A365771.P5740291251164711934

noncomputable section

/-- A365771: a(n) = binomial(2*n+1, n)/(2*n+1) * binomial(3*n-1, n) for n >= 0.

Offset 0, canonical program `A365771.P5740291251164711934`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365771 (n : ℕ) : ℤ :=
  A365771.P5740291251164711934.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365771.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366135.P4017335287159148948

`(n+1)*((n+1)*A000203(n+1)+A001157(n+1))/2`
-/

namespace A366135.P4017335287159148948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((n + 1 : ℤ) * A000203 (n + 1) + A001157 (n + 1)) : ℚ) / 2

end

end A366135.P4017335287159148948

noncomputable section

/-- A366135: Expansion of Sum_{k>=1} k^3 * x^k/(1 - x^k)^3.

Offset 1, canonical program `A366135.P4017335287159148948`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366135 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A366135.P4017335287159148948.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366135.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366421.P2566327463954372035

`floor(A138099(n+1)/(A216607(n+1)+1))`
-/

namespace A366421.P2566327463954372035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A138099 (n + 1) : ℚ) / (A216607 (n + 1) + 1 : ℚ)⌋

end

end A366421.P2566327463954372035

noncomputable section

/-- A366421: a(n) is the floor of the n-th improper fraction (including the ones of the type n/n) sorted by increasing numerator+denominator, then by numerator.

Offset 1, canonical program `A366421.P2566327463954372035`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366421 (n : ℕ) : ℤ :=
  A366421.P2566327463954372035.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366421.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366429.P11556893607212212418

`2*C(A002024(n+2)-1, 2)+A000267(A002262(n+1))-1`
-/

namespace A366429.P11556893607212212418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (A002024 (n + 2) - 1).toNat 2 : ℤ) + A000267 (A002262 (n + 1)).toNat - 1

end

end A366429.P11556893607212212418

noncomputable section

/-- A366429: a(n) = maximum degree of vertices in the distance graph of the partitions of n.

Offset 1, canonical program `A366429.P11556893607212212418`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366429 (n : ℕ) : ℤ :=
  A366429.P11556893607212212418.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366429.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366442.P10215153311747772693

`A000203(A007310(n+1))`
-/

namespace A366442.P10215153311747772693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A007310 (n + 1)).toNat

end

end A366442.P10215153311747772693

noncomputable section

/-- A366442: The sum of divisors of the 5-rough numbers (A007310).

Offset 1, canonical program `A366442.P10215153311747772693`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366442 (n : ℕ) : ℤ :=
  A366442.P10215153311747772693.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366442.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366451.P6303124233249025672

`A060644(n+2)-(n+2)`
-/

namespace A366451.P6303124233249025672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060644 (n + 2) - (n + 2 : ℤ)

end

end A366451.P6303124233249025672

noncomputable section

/-- A366451: The sum s > n which has the greatest probability of occurring when summing rolls of an n-sided die.

Offset 2, canonical program `A366451.P6303124233249025672`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366451 (n : ℕ) : ℤ :=
  A366451.P6303124233249025672.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366451.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366576.P13672941928397133206

`A000203(3^(n+1)-1)`
-/

namespace A366576.P13672941928397133206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (3 ^ (n + 1) - 1)

end

end A366576.P13672941928397133206

noncomputable section

/-- A366576: Sum of the divisors of 3^n-1.

Offset 1, canonical program `A366576.P13672941928397133206`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366576 (n : ℕ) : ℤ :=
  A366576.P13672941928397133206.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366576.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366578.P16985884551155518971

`A000203(3^n+1)`
-/

namespace A366578.P16985884551155518971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (3 ^ n + 1)

end

end A366578.P16985884551155518971

noncomputable section

/-- A366578: Sum of the divisors of 3^n+1.

Offset 0, canonical program `A366578.P16985884551155518971`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366578 (n : ℕ) : ℤ :=
  A366578.P16985884551155518971.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366578.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366607.P8039607299791983886

`A000203(4^n+1)`
-/

namespace A366607.P8039607299791983886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (4 ^ n + 1)

end

end A366607.P8039607299791983886

noncomputable section

/-- A366607: Sum of the divisors of 4^n+1.

Offset 0, canonical program `A366607.P8039607299791983886`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366607 (n : ℕ) : ℤ :=
  A366607.P8039607299791983886.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366607.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366613.P1524079771343598178

`A000203(5^(n+1)-1)`
-/

namespace A366613.P1524079771343598178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (5 ^ (n + 1) - 1)

end

end A366613.P1524079771343598178

noncomputable section

/-- A366613: Sum of the divisors of 5^n-1.

Offset 1, canonical program `A366613.P1524079771343598178`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366613 (n : ℕ) : ℤ :=
  A366613.P1524079771343598178.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366613.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366617.P8465372973054877366

`A000203(5^n+1)`
-/

namespace A366617.P8465372973054877366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (5 ^ n + 1)

end

end A366617.P8465372973054877366

noncomputable section

/-- A366617: Sum of the divisors of 5^n+1.

Offset 0, canonical program `A366617.P8465372973054877366`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366617 (n : ℕ) : ℤ :=
  A366617.P8465372973054877366.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366617.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366622.P13100210814763586360

`A000203(6^(n+1)-1)`
-/

namespace A366622.P13100210814763586360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (6 ^ (n + 1) - 1)

end

end A366622.P13100210814763586360

noncomputable section

/-- A366622: Sum of the divisors of 6^n-1.

Offset 1, canonical program `A366622.P13100210814763586360`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366622 (n : ℕ) : ℤ :=
  A366622.P13100210814763586360.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366622.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366626.P3641504166637669905

`A366619(A113778(n+1))`
-/

namespace A366626.P3641504166637669905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366619 (A113778 (n + 1)).toNat

end

end A366626.P3641504166637669905

noncomputable section

/-- A366626: Group the natural numbers into blocks of size 2: [1,2], [3,4], ... and then reverse the order of the numbers within each block. Then group and reverse for each block size up to 4.

Offset 1, canonical program `A366626.P3641504166637669905`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366626 (n : ℕ) : ℤ :=
  A366626.P3641504166637669905.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366626.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366629.P5747124109508838067

`A000203(6^n+1)`
-/

namespace A366629.P5747124109508838067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (6 ^ n + 1)

end

end A366629.P5747124109508838067

noncomputable section

/-- A366629: Sum of the divisors of 6^n+1.

Offset 0, canonical program `A366629.P5747124109508838067`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366629 (n : ℕ) : ℤ :=
  A366629.P5747124109508838067.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366629.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366634.P17183935044073380383

`A000203(7^(n+1)-1)`
-/

namespace A366634.P17183935044073380383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (7 ^ (n + 1) - 1)

end

end A366634.P17183935044073380383

noncomputable section

/-- A366634: Sum of the divisors of 7^n-1.

Offset 1, canonical program `A366634.P17183935044073380383`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366634 (n : ℕ) : ℤ :=
  A366634.P17183935044073380383.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366634.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366638.P17400523273831283738

`A000203(7^n+1)`
-/

namespace A366638.P17400523273831283738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (7 ^ n + 1)

end

end A366638.P17400523273831283738

noncomputable section

/-- A366638: Sum of the divisors of 7^n+1.

Offset 0, canonical program `A366638.P17400523273831283738`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366638 (n : ℕ) : ℤ :=
  A366638.P17400523273831283738.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366638.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366657.P6363442434255801566

`A000203(8^n+1)`
-/

namespace A366657.P6363442434255801566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (8 ^ n + 1)

end

end A366657.P6363442434255801566

noncomputable section

/-- A366657: Sum of the divisors of 8^n+1.

Offset 0, canonical program `A366657.P6363442434255801566`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366657 (n : ℕ) : ℤ :=
  A366657.P6363442434255801566.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366657.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366668.P14104649623985614454

`A000203(10^n+1)`
-/

namespace A366668.P14104649623985614454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (10 ^ n + 1)

end

end A366668.P14104649623985614454

noncomputable section

/-- A366668: Sum of the divisors of 10^n+1.

Offset 0, canonical program `A366668.P14104649623985614454`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366668 (n : ℕ) : ℤ :=
  A366668.P14104649623985614454.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366668.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366689.P13230568648629321439

`A000203(11^n+1)`
-/

namespace A366689.P13230568648629321439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (11 ^ n + 1)

end

end A366689.P13230568648629321439

noncomputable section

/-- A366689: Sum of the divisors of 11^n+1.

Offset 0, canonical program `A366689.P13230568648629321439`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366689 (n : ℕ) : ℤ :=
  A366689.P13230568648629321439.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366689.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366715.P18375933765300404983

`A000203(12^n+1)`
-/

namespace A366715.P18375933765300404983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (12 ^ n + 1)

end

end A366715.P18375933765300404983

noncomputable section

/-- A366715: Sum of the divisors of 12^n+1.

Offset 0, canonical program `A366715.P18375933765300404983`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366715 (n : ℕ) : ℤ :=
  A366715.P18375933765300404983.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366715.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366757.P4055999185054038309

`A000203(A033312(n+2))`
-/

namespace A366757.P4055999185054038309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A033312 (n + 2)).toNat

end

end A366757.P4055999185054038309

noncomputable section

/-- A366757: a(n) is the sum of the divisors of n!-1.

Offset 2, canonical program `A366757.P4055999185054038309`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366757 (n : ℕ) : ℤ :=
  A366757.P4055999185054038309.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366757.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366758.P16412360023761090223

`A000203(A038507(n))`
-/

namespace A366758.P16412360023761090223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A038507 n).toNat

end

end A366758.P16412360023761090223

noncomputable section

/-- A366758: a(n) is the sum of the divisors of n!+1.

Offset 0, canonical program `A366758.P16412360023761090223`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366758 (n : ℕ) : ℤ :=
  A366758.P16412360023761090223.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366758.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366770.P1227995836965108018

`A001222(A001045(n+1))`
-/

namespace A366770.P1227995836965108018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001045 (n + 1)).toNat

end

end A366770.P1227995836965108018

noncomputable section

/-- A366770: Number of prime factors of A001045(n) (Jacobsthal numbers) (counted with multiplicity).

Offset 1, canonical program `A366770.P1227995836965108018`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366770 (n : ℕ) : ℤ :=
  A366770.P1227995836965108018.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366770.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366772.P11550199062969379352

`A000203(A001045(n+1))`
-/

namespace A366772.P11550199062969379352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A001045 (n + 1)).toNat

end

end A366772.P11550199062969379352

noncomputable section

/-- A366772: Sum of the divisors of A001045(n) (Jacobsthal numbers).

Offset 1, canonical program `A366772.P11550199062969379352`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366772 (n : ℕ) : ℤ :=
  A366772.P11550199062969379352.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366772.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366780.P7203480516897226861

`A001221(A000073(n+2))`
-/

namespace A366780.P7203480516897226861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000073 (n + 2)).toNat

end

end A366780.P7203480516897226861

noncomputable section

/-- A366780: Number of distinct prime divisors of A000073(n) (tribonacci numbers).

Offset 2, canonical program `A366780.P7203480516897226861`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366780 (n : ℕ) : ℤ :=
  A366780.P7203480516897226861.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366780.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366781.P9316855949199447890

`A001222(A000073(n+2))`
-/

namespace A366781.P9316855949199447890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000073 (n + 2)).toNat

end

end A366781.P9316855949199447890

noncomputable section

/-- A366781: Number of prime divisors of A000073(n) (tribonacci numbers) (counted with multiplicity).

Offset 2, canonical program `A366781.P9316855949199447890`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366781 (n : ℕ) : ℤ :=
  A366781.P9316855949199447890.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366781.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366783.P11676103696829373468

`A000203(A000073(n+2))`
-/

namespace A366783.P11676103696829373468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000073 (n + 2)).toNat

end

end A366783.P11676103696829373468

noncomputable section

/-- A366783: Sum of the divisors of A000073(n) (tribonacci numbers).

Offset 2, canonical program `A366783.P11676103696829373468`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366783 (n : ℕ) : ℤ :=
  A366783.P11676103696829373468.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366783.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366819.P12841717763308027196

`A000203((n+2)^(n+2)-1)`
-/

namespace A366819.P12841717763308027196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((n + 2) ^ (n + 2) - 1)

end

end A366819.P12841717763308027196

noncomputable section

/-- A366819: a(n) is the sum of the divisors of n^n-1.

Offset 2, canonical program `A366819.P12841717763308027196`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366819 (n : ℕ) : ℤ :=
  A366819.P12841717763308027196.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366819.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366820.P6791427226374180712

`A000203(n^n+1)`
-/

namespace A366820.P6791427226374180712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n ^ n + 1)

end

end A366820.P6791427226374180712

noncomputable section

/-- A366820: a(n) is the sum of the divisors of n^n + 1.

Offset 0, canonical program `A366820.P6791427226374180712`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366820 (n : ℕ) : ℤ :=
  A366820.P6791427226374180712.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366820.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366954.P17097097769443543691

`A000203(A007908(n+1))`
-/

namespace A366954.P17097097769443543691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A007908 (n + 1)).toNat

end

end A366954.P17097097769443543691

noncomputable section

/-- A366954: The sum of the divisors of the concatenation of 1,2,3,...,n.

Offset 1, canonical program `A366954.P17097097769443543691`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366954 (n : ℕ) : ℤ :=
  A366954.P17097097769443543691.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366954.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367010.P5022623583468863854

`A000203(n*2^n+1)`
-/

namespace A367010.P5022623583468863854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n * 2 ^ n + 1)

end

end A367010.P5022623583468863854

noncomputable section

/-- A367010: a(n) is the sum of the divisors of n*2^n + 1.

Offset 0, canonical program `A367010.P5022623583468863854`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367010 (n : ℕ) : ℤ :=
  A367010.P5022623583468863854.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367010.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367071.P77903649332136508

`∑{#}[floor(n/2), 2^(n-#)*C(#+1, n-2*#)*A000108(#)]`
-/

namespace A367071.P77903649332136508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (k + 1) ((n : ℤ) - (2 * k : ℤ)).toNat : ℚ) * (A000108 k : ℚ)

end

end A367071.P77903649332136508

noncomputable section

/-- A367071: G.f. satisfies A(x) = 1 + 2*x + 2*x^2*A(x)^2.

Offset 0, canonical program `A367071.P77903649332136508`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367071 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367071.P77903649332136508.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367071.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367072.P1756756985601742213

`∑{#}[floor(n/3), 2^#*C(2*#+1, n-3*#)*A001764(#)]`
-/

namespace A367072.P1756756985601742213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (2 ^ k * Nat.choose (2 * k + 1) ((n : ℤ) - (3 * k : ℤ)).toNat : ℤ) * A001764 k

end

end A367072.P1756756985601742213

noncomputable section

/-- A367072: G.f. satisfies A(x) = 1 + x + 2*x^3*A(x)^3.

Offset 0, canonical program `A367072.P1756756985601742213`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367072 (n : ℕ) : ℤ :=
  A367072.P1756756985601742213.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367072.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367073.P5727734609837356639

`∑{#}[floor(n/3), 2^(n-3*#)*C(2*#+1, n-3*#)*A001764(#)]`
-/

namespace A367073.P5727734609837356639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (2 : ℚ) ^ ((n : ℤ) - (3 * k : ℤ) : ℤ) * (Nat.choose (2 * k + 1) ((n : ℤ) - (3 * k : ℤ)).toNat : ℚ) * (A001764 k : ℚ)

end

end A367073.P5727734609837356639

noncomputable section

/-- A367073: G.f. satisfies A(x) = 1 + 2*x + x^3*A(x)^3.

Offset 0, canonical program `A367073.P5727734609837356639`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367073 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367073.P5727734609837356639.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367073.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367074.P37370606878959510

`∑{#}[floor(n/3), 2^(n-2*#)*C(2*#+1, n-3*#)*A001764(#)]`
-/

namespace A367074.P37370606878959510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (2 : ℚ) ^ ((n : ℤ) - (2 * k : ℤ) : ℤ) * (Nat.choose (2 * k + 1) ((n : ℤ) - (3 * k : ℤ)).toNat : ℚ) * (A001764 k : ℚ)

end

end A367074.P37370606878959510

noncomputable section

/-- A367074: G.f. satisfies A(x) = 1 + 2*x + 2*x^3*A(x)^3.

Offset 0, canonical program `A367074.P37370606878959510`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367074 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367074.P37370606878959510.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367074.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367111.P1543140048882677912

`∑{#}[floor(n/3), 2^#*C(n, 3*#)*A001764(#)]`
-/

namespace A367111.P1543140048882677912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (2 ^ k * Nat.choose n (3 * k) : ℤ) * A001764 k

end

end A367111.P1543140048882677912

noncomputable section

/-- A367111: G.f. satisfies A(x) = 1 + x*A(x) + 2*x^3*A(x)^3.

Offset 0, canonical program `A367111.P1543140048882677912`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367111 (n : ℕ) : ℤ :=
  A367111.P1543140048882677912.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367111.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367112.P1177535428976408541

`∑{#}[floor(n/3), 2^(n-3*#)*C(n, 3*#)*A001764(#)]`
-/

namespace A367112.P1177535428976408541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (2 : ℚ) ^ ((n : ℤ) - (3 * k : ℤ) : ℤ) * (Nat.choose n (3 * k) : ℚ) * (A001764 k : ℚ)

end

end A367112.P1177535428976408541

noncomputable section

/-- A367112: G.f. satisfies A(x) = 1 + 2*x*A(x) + x^3*A(x)^3.

Offset 0, canonical program `A367112.P1177535428976408541`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367112 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367112.P1177535428976408541.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367112.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367113.P18288955922143650528

`∑{#}[floor(n/3), 2^(n-2*#)*C(n, 3*#)*A001764(#)]`
-/

namespace A367113.P18288955922143650528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (2 : ℚ) ^ ((n : ℤ) - (2 * k : ℤ) : ℤ) * (Nat.choose n (3 * k) : ℚ) * (A001764 k : ℚ)

end

end A367113.P18288955922143650528

noncomputable section

/-- A367113: G.f. satisfies A(x) = 1 + 2*x*A(x) + 2*x^3*A(x)^3.

Offset 0, canonical program `A367113.P18288955922143650528`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367113 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367113.P18288955922143650528.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367113.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367131.P12722315536028894090

`A000203(A000058(n))`
-/

namespace A367131.P12722315536028894090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000058 n).toNat

end

end A367131.P12722315536028894090

noncomputable section

/-- A367131: a(n) is the sum of the divisors of A000058(n) (Sylvester's sequence).

Offset 0, canonical program `A367131.P12722315536028894090`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367131 (n : ℕ) : ℤ :=
  A367131.P12722315536028894090.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367131.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367175.P9934287224977358039

`A000203(n+1)-2*A008472(n+1)`
-/

namespace A367175.P9934287224977358039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - 2 * A008472 (n + 1)

end

end A367175.P9934287224977358039

noncomputable section

/-- A367175: a(n) = Sum_{d|n} (-1)^[d is prime] * d, where [] denotes the Iverson bracket.

Offset 1, canonical program `A367175.P9934287224977358039`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367175 (n : ℕ) : ℤ :=
  A367175.P9934287224977358039.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367175.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367228.P9618108767106141899

`A000215(n)*A000215(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A367228.P9618108767106141899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000215 n * A000215 (n + 1)

end

end A367228.P9618108767106141899

noncomputable section

/-- A367228: Products of two consecutive Fermat numbers: a(n) = A000215(n) * A000215(n+1).

Offset 0, canonical program `A367228.P9618108767106141899`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000215(n)*A000215(n+1)` (program `A367228.P9618108767106141899`, by `A367228.P9618108767106141899.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A367228 (n : ℕ) : ℤ :=
  A367228.P9618108767106141899.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000215(n)*A000215(n+1)` (program `A367228.P9618108767106141899`, by `A367228.P9618108767106141899.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A367228.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A367400.P12110256212531602540

`a(n-1)+A112575(n)` with `a(0)=1`
-/

namespace A367400.P12110256212531602540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A112575 n

end

end A367400.P12110256212531602540

noncomputable section

/-- A367400: Number of subsets of {1..n} whose cardinality is not the sum of two distinct elements.

Offset 0, canonical program `A367400.P12110256212531602540`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367400 (n : ℕ) : ℤ :=
  A367400.P12110256212531602540.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367400.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367469.P12476975515889084237

`(2*(n+1)-1)*A000110(n+1)/2-A000110(n+2)/2+A000110(n)/2`
-/

namespace A367469.P12476975515889084237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * (n + 1) : ℤ) - 1) * A000110 (n + 1) : ℚ) / 2 - (A000110 (n + 2) : ℚ) / 2 + (A000110 n : ℚ) / 2

end

end A367469.P12476975515889084237

noncomputable section

/-- A367469: a(n) is the total number of movable letters in all members of the partitions of [n].

Offset 1, canonical program `A367469.P12476975515889084237`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367469 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367469.P12476975515889084237.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367469.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367481.P5329523594832584566

`2*3^(floor(log(2*A000040(n+3))/log(3))-1)*A000040(n+3)`
-/

namespace A367481.P5329523594832584566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (3 : ℚ) ^ (⌊Real.log (2 * A000040 (n + 3) : ℝ) / Real.log (3 : ℝ)⌋ - 1 : ℤ) * (A000040 (n + 3) : ℚ)

end

end A367481.P5329523594832584566

noncomputable section

/-- A367481: Primitive practical numbers of the form 2 * 3^i * prime(k).

Offset 1, canonical program `A367481.P5329523594832584566`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367481 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367481.P5329523594832584566.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367481.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367503.P786170616663257089

`∑{d}[n+1, A008683(#)²*#%10]`
-/

namespace A367503.P786170616663257089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d ^ 2 * ((d % 10 : ℕ) : ℤ)

end

end A367503.P786170616663257089

noncomputable section

/-- A367503: Sum of the final digits of the squarefree divisors of n.

Offset 1, canonical program `A367503.P786170616663257089`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367503 (n : ℕ) : ℤ :=
  A367503.P786170616663257089.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367503.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367520.P3051559262551883952

`C(A007310(n+1), n)/A007310(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A367520.P3051559262551883952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A007310 (n + 1)).toNat n : ℚ) / (A007310 (n + 1) : ℚ)

end

end A367520.P3051559262551883952

noncomputable section

/-- A367520: a(n) = binomial(A007310(n+1),n)/A007310(n+1).

Offset 0, canonical program `A367520.P3051559262551883952`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367520 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367520.P3051559262551883952.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367520.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367521.P15029318979479651844

`C(A007310(n+1), n+1)/A007310(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A367521.P15029318979479651844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A007310 (n + 1)).toNat (n + 1) : ℚ) / (A007310 (n + 1) : ℚ)

end

end A367521.P15029318979479651844

noncomputable section

/-- A367521: a(n) = binomial(A007310(n+1),n+1)/A007310(n+1).

Offset 0, canonical program `A367521.P15029318979479651844`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367521 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367521.P15029318979479651844.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367521.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367559.P9738199333979596161

`2^A002262(n)-A025581(n)`
-/

namespace A367559.P9738199333979596161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) - (A025581 n : ℚ)

end

end A367559.P9738199333979596161

noncomputable section

/-- A367559: Square array T(n, k) = 2^k - n, read by ascending antidiagonals.

Offset 0, canonical program `A367559.P9738199333979596161`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367559 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367559.P9738199333979596161.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367559.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367564.P7863967824948945323

`C(row(n), col(n))*A001333(row(n)-col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A367564.P7863967824948945323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) * A001333 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A367564.P7863967824948945323

noncomputable section

/-- A367564: Triangular array read by rows: T(n, k) = binomial(n, k) * A001333(n - k).

Offset 0, canonical program `A367564.P7863967824948945323`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367564 (n : ℕ) : ℤ :=
  A367564.P7863967824948945323.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367564.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367776.P3027205742086758766

`n*A000108(n)*(2*n+1)!/n!`
-/

namespace A367776.P3027205742086758766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A000108 n * (Nat.factorial (2 * n + 1) : ℤ) : ℚ) / (Nat.factorial n : ℚ)

end

end A367776.P3027205742086758766

noncomputable section

/-- A367776: a(n) = binomial(2*n, n - 1)*(2*n + 1)! / n!.

Offset 0, canonical program `A367776.P3027205742086758766`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367776 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367776.P3027205742086758766.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367776.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367785.P3310329631706712465

`∑{#}[n, (-1)^(n-#)*C(n, #)*3^#*A000110(#)]`
-/

namespace A367785.P3310329631706712465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (3 ^ k : ℚ) * (A000110 k : ℚ)

end

end A367785.P3310329631706712465

noncomputable section

/-- A367785: Expansion of e.g.f. exp(exp(3*x) - x - 1).

Offset 0, canonical program `A367785.P3310329631706712465`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367785 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367785.P3310329631706712465.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367785.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367786.P15120878923658941362

`∑{#}[n, (-1)^(n-#)*C(n, #)*4^#*A000110(#)]`
-/

namespace A367786.P15120878923658941362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (4 ^ k : ℚ) * (A000110 k : ℚ)

end

end A367786.P15120878923658941362

noncomputable section

/-- A367786: Expansion of e.g.f. exp(exp(4*x) - x - 1).

Offset 0, canonical program `A367786.P15120878923658941362`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367786 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367786.P15120878923658941362.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367786.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367938.P11992590897975933379

`∑{#}[n, C(n, #)*(-2)^(n-#)*3^#*A000110(#)]`
-/

namespace A367938.P11992590897975933379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℚ) * (-2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (3 ^ k : ℚ) * (A000110 k : ℚ)

end

end A367938.P11992590897975933379

noncomputable section

/-- A367938: Expansion of e.g.f. exp(exp(3*x) - 1 - 2*x).

Offset 0, canonical program `A367938.P11992590897975933379`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367938 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367938.P11992590897975933379.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367938.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367939.P9327491972490966334

`∑{#}[n, C(n, #)*(-2)^(n+#)*A000110(#)]`
-/

namespace A367939.P9327491972490966334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * (-2) ^ (n + k) * A000110 k

end

end A367939.P9327491972490966334

noncomputable section

/-- A367939: Expansion of e.g.f. exp(exp(4*x) - 1 - 2*x).

Offset 0, canonical program `A367939.P9327491972490966334`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367939 (n : ℕ) : ℤ :=
  A367939.P9327491972490966334.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367939.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367940.P8176665905675258399

`∑{#}[n, C(n, #)*(-3)^(n-#)*4^#*A000110(#)]`
-/

namespace A367940.P8176665905675258399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℚ) * (-3 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (4 ^ k : ℚ) * (A000110 k : ℚ)

end

end A367940.P8176665905675258399

noncomputable section

/-- A367940: Expansion of e.g.f. exp(exp(4*x) - 1 - 3*x).

Offset 0, canonical program `A367940.P8176665905675258399`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367940 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367940.P8176665905675258399.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367940.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367962.P637130255043861374

`A094587(C(row(n)+1, 2)+col(n))*A000522(col(n))`
-/

namespace A367962.P637130255043861374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) * A000522 (SequenceMachineLib.triCol n)

end

end A367962.P637130255043861374

noncomputable section

/-- A367962: Triangle read by rows. T(n, k) = Sum_{j=0..k} (n!/j!).

Offset 0, canonical program `A367962.P637130255043861374`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367962 (n : ℕ) : ℤ :=
  A367962.P637130255043861374.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367962.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367973.P10207395521885868505

`n!*∑{#}[n, 2^(n-#)*A000110(#)/#!]`
-/

namespace A367973.P10207395521885868505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A000110 k : ℚ) / (Nat.factorial k : ℚ))

end

end A367973.P10207395521885868505

noncomputable section

/-- A367973: Expansion of e.g.f. exp(exp(x) - 1)/(1 - 2*x).

Offset 0, canonical program `A367973.P10207395521885868505`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367973 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367973.P10207395521885868505.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367973.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A368045.P4834671541651412491

`A000330(col(n))+A000330(row(n))`
-/

namespace A368045.P4834671541651412491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (SequenceMachineLib.triCol n) + A000330 (SequenceMachineLib.triRow n)

end

end A368045.P4834671541651412491

noncomputable section

/-- A368045: Triangle read by rows. T(n, k) = (k*(k + 1)*(2*k + 1) + n*(n + 1)*(2*n + 1)) / 6.

Offset 0, canonical program `A368045.P4834671541651412491`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368045 (n : ℕ) : ℤ :=
  A368045.P4834671541651412491.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368045.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A368164.P6703348240690476893

`A000244(2*n)-∑{#}[2*n-(n+1), C(2*n, #+n+1)*2^(2*n-(#+n))]`
-/

namespace A368164.P6703348240690476893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (n + 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 (2 * n) : ℚ) - ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose (2 * n) (k + (n + 1)) : ℚ) * (2 : ℚ) ^ ((2 * n : ℤ) - (k + n : ℤ) : ℤ)

end

end A368164.P6703348240690476893

noncomputable section

/-- A368164: Number of nondeterministic Dyck bridges of length 2*n.

Offset 0, canonical program `A368164.P6703348240690476893`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368164 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A368164.P6703348240690476893.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368164.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A368190.P2890947525502859852

`3*a(n-1)+A007018(n-1)^3` with `a(0)=0`
-/

namespace A368190.P2890947525502859852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 * a (n - 1) + A007018 (n - 1) ^ 3

end

end A368190.P2890947525502859852

noncomputable section

/-- A368190: Number of (undirected) cycles in the n-Dorogovtsev-Goltsev-Mendes graph.

Offset 0, canonical program `A368190.P2890947525502859852`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368190 (n : ℕ) : ℤ :=
  A368190.P2890947525502859852.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368190.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A368491.P2621368034991529602

`or(a(n-1), a(n-1)*2^A000040(n))` with `a(0)=1`
-/

namespace A368491.P2621368034991529602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (a (n - 1)) (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) * (2 : ℚ) ^ (A000040 n : ℤ)))

end

end A368491.P2621368034991529602

noncomputable section

/-- A368491: a(n) is the integer whose bits designate the possible subset sums of the first n prime numbers.

Offset 0, canonical program `A368491.P2621368034991529602`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368491 (n : ℕ) : ℤ :=
  A368491.P2621368034991529602.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368491.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A368595.P11318754427664413293

`A136013(n+1)-(n+1)%2`
-/

namespace A368595.P11318754427664413293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136013 (n + 1) - (((n + 1) % 2 : ℕ) : ℤ)

end

end A368595.P11318754427664413293

noncomputable section

/-- A368595: Alternating sum of A006519.

Offset 1, canonical program `A368595.P11318754427664413293`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368595 (n : ℕ) : ℤ :=
  A368595.P11318754427664413293.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368595.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A368655.P7964603861778386212

`∑{#}[n, C(n, #)*A001316(#)]`
-/

namespace A368655.P7964603861778386212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A001316 k

end

end A368655.P7964603861778386212

noncomputable section

/-- A368655: Binomial transform of Gould's sequence (A001316).

Offset 0, canonical program `A368655.P7964603861778386212`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368655 (n : ℕ) : ℤ :=
  A368655.P7964603861778386212.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368655.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A368674.P18254584690086326789

`∑{#}[n, (#+1)*A008683(#+1)²*(ceil((n+1)/(#+1))-floor((n+1)/(#+1)))]`
-/

namespace A368674.P18254584690086326789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k + 1 : ℤ) * A008683 (k + 1) ^ 2 * (⌈(n + 1 : ℚ) / (k + 1 : ℚ)⌉ - ⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋)

end

end A368674.P18254584690086326789

noncomputable section

/-- A368674: Sum of the squarefree numbers less than n that do not divide n.

Offset 1, canonical program `A368674.P18254584690086326789`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368674 (n : ℕ) : ℤ :=
  A368674.P18254584690086326789.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368674.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A368705.P8969236193223678817

`∑{#}[n, A008683(#+1)²*floor(1/gcd(n+1, #+1))*(ceil((n+1)/(#+1))-floor((n+1)/(#+1)))]`
-/

namespace A368705.P8969236193223678817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A008683 (k + 1) ^ 2 * ⌊1 / (Nat.gcd (n + 1) (k + 1) : ℚ)⌋ * (⌈(n + 1 : ℚ) / (k + 1 : ℚ)⌉ - ⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋)

end

end A368705.P8969236193223678817

noncomputable section

/-- A368705: Number of squarefree numbers that are less than n, not dividing n, and relatively prime to n.

Offset 1, canonical program `A368705.P8969236193223678817`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368705 (n : ℕ) : ℤ :=
  A368705.P8969236193223678817.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368705.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A368941.P450632481750621154

`A000194(n)+1`
-/

namespace A368941.P450632481750621154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 n + 1

end

end A368941.P450632481750621154

noncomputable section

/-- A368941: a(n) = floor(3/2 + sqrt(n)).

Offset 0, canonical program `A368941.P450632481750621154`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368941 (n : ℕ) : ℤ :=
  A368941.P450632481750621154.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368941.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369100.P6338939632124751077

`∑{d}[n+1, A228441(#)]`
-/

namespace A369100.P6338939632124751077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A228441 d

end

end A369100.P6338939632124751077

noncomputable section

/-- A369100: Dirichlet g.f.: zeta(s)^3 * (1 - 2^(1-s))^2.

Offset 1, canonical program `A369100.P6338939632124751077`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369100 (n : ℕ) : ℤ :=
  A369100.P6338939632124751077.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369100.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369119.P11770962019808965455

`(n+1)^A010051(n+1)*n!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369119.P11770962019808965455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A010051 (n + 1) : ℤ) * (Nat.factorial n : ℚ)

end

end A369119.P11770962019808965455

noncomputable section

/-- A369119: a(n) = (n + 1)^[is_prime(n + 1)] * n!.

Offset 0, canonical program `A369119.P11770962019808965455`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369119 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A369119.P11770962019808965455.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369119.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369325.P17967908740033551209

`A000035(n)+2^n*∑{#}[floor((n-2)/2), C(2*(n-#)-3, n-1)]`
-/

namespace A369325.P17967908740033551209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 2 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + ((2 ^ n * (∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose (2 * ((n : ℤ) - (k : ℤ)) - 3).toNat ((n : ℤ) - 1).toNat) : ℕ) : ℤ)

end

end A369325.P17967908740033551209

noncomputable section

/-- A369325: a(n) is the number of words of length n over the alphabet [n], avoiding 120 and 210, and sortable by a stack of depth 2.

Offset 0, canonical program `A369325.P17967908740033551209`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369325 (n : ℕ) : ℤ :=
  A369325.P17967908740033551209.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369325.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369360.P16251254958251972162

`(3^(n+3)-3*A002426(n+3))/2-2*A002426(n+2)+2*A001006(n+2)`
-/

namespace A369360.P16251254958251972162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ (n + 3) : ℤ) - 3 * A002426 (n + 3) : ℚ) / 2 - (2 * A002426 (n + 2) : ℚ) + (2 * A001006 (n + 2) : ℚ)

end

end A369360.P16251254958251972162

noncomputable section

/-- A369360: a(n) is the number of interior points over all Motzkin polyominoes of length n.

Offset 3, canonical program `A369360.P16251254958251972162`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369360 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A369360.P16251254958251972162.a (n - 3))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369360.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369444.P7517864227643680029

`∑{#}[n, C(n, #)*A365730(#)]`
-/

namespace A369444.P7517864227643680029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A365730 k

end

end A369444.P7517864227643680029

noncomputable section

/-- A369444: Expansion of (1/x) * Series_Reversion( x / ((1+x) * (1+x^4)) ).

Offset 0, canonical program `A369444.P7517864227643680029`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369444 (n : ℕ) : ℤ :=
  A369444.P7517864227643680029.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369444.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369836.P541515226587760680

`A003520(5*n)`
-/

namespace A369836.P541515226587760680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 (5 * n)

end

end A369836.P541515226587760680

noncomputable section

/-- A369836: Number of compositions of 5*n into parts 1 and 5.

Offset 0, canonical program `A369836.P541515226587760680`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369836 (n : ℕ) : ℤ :=
  A369836.P541515226587760680.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369836.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369845.P17165904175182421461

`A052920(5*n)`
-/

namespace A369845.P17165904175182421461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052920 (5 * n)

end

end A369845.P17165904175182421461

noncomputable section

/-- A369845: Number of compositions of 5*n into parts 3 and 5.

Offset 0, canonical program `A369845.P17165904175182421461`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369845 (n : ℕ) : ℤ :=
  A369845.P17165904175182421461.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369845.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370008.P5008556663384047119

`A000040(A000720(3*A000040(n+1)))`
-/

namespace A370008.P5008556663384047119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (3 * A000040 (n + 1)).toNat).toNat

end

end A370008.P5008556663384047119

noncomputable section

/-- A370008: a(n) is the greatest prime less than 3*prime(n).

Offset 1, canonical program `A370008.P5008556663384047119`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370008 (n : ℕ) : ℤ :=
  A370008.P5008556663384047119.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370008.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370010.P16054036097129189126

`A000040(A000720(4*A000040(n+1)))`
-/

namespace A370010.P16054036097129189126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (4 * A000040 (n + 1)).toNat).toNat

end

end A370010.P16054036097129189126

noncomputable section

/-- A370010: a(n) is the greatest prime less than 4*prime(n).

Offset 1, canonical program `A370010.P16054036097129189126`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370010 (n : ℕ) : ℤ :=
  A370010.P16054036097129189126.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370010.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370055.P10063796133977021406

`A000142(n)*A001764(n+1)`
-/

namespace A370055.P10063796133977021406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A001764 (n + 1)

end

end A370055.P10063796133977021406

noncomputable section

/-- A370055: a(n) = 3*(3*n+2)!/(2*n+3)!.

Offset 0, canonical program `A370055.P10063796133977021406`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370055 (n : ℕ) : ℤ :=
  A370055.P10063796133977021406.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370055.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370057.P17758719647371551335

`A000142(n)*A006632(n+1)`
-/

namespace A370057.P17758719647371551335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A006632 (n + 1)

end

end A370057.P17758719647371551335

noncomputable section

/-- A370057: a(n) = 3*(4*n+2)!/(3*n+3)!.

Offset 0, canonical program `A370057.P17758719647371551335`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370057 (n : ℕ) : ℤ :=
  A370057.P17758719647371551335.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370057.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370188.P15568161150400754513

`sqrt((A114052(n)²-1)/27)/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A370188.P15568161150400754513
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A114052 n ^ 2 - 1 : ℚ) / 27 : ℝ) / 5

end

end A370188.P15568161150400754513

noncomputable section

/-- A370188: a(n) = sqrt((A114052(n)^2 - 1)/27)/5.

Offset 0, canonical program `A370188.P15568161150400754513`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370188 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A370188.P15568161150400754513.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370188.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370238.P9180117166049315748

`A151542(n)+n`
-/

namespace A370238.P9180117166049315748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151542 n + (n : ℤ)

end

end A370238.P9180117166049315748

noncomputable section

/-- A370238: a(n) = n*(3*n + 23)/2.

Offset 0, canonical program `A370238.P9180117166049315748`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370238 (n : ℕ) : ℤ :=
  A370238.P9180117166049315748.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370238.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370253.P12966461108388290693

`A001147(n)-A053871(n)`
-/

namespace A370253.P12966461108388290693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 n - A053871 n

end

end A370253.P12966461108388290693

noncomputable section

/-- A370253: Number of deranged matchings of 2n people with partners (of either sex) such that at least one person is matched with their spouse.

Offset 0, canonical program `A370253.P12966461108388290693`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370253 (n : ℕ) : ℤ :=
  A370253.P12966461108388290693.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370253.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370319.P13479079670302678973

`C(row(n), col(n))*A006129(col(n))`
-/

namespace A370319.P13479079670302678973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) * A006129 (SequenceMachineLib.triCol n)

end

end A370319.P13479079670302678973

noncomputable section

/-- A370319: Triangle read by rows where T(n,k) is the number of labeled graphs with n vertices and k non-isolated vertices.

Offset 0, canonical program `A370319.P13479079670302678973`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370319 (n : ℕ) : ℤ :=
  A370319.P13479079670302678973.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370319.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370357.P17837870967034224486

`∑{#}[n, (-1)^(n-#)*C(n, #)*A025035(#)]`
-/

namespace A370357.P17837870967034224486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A025035 k : ℚ)

end

end A370357.P17837870967034224486

noncomputable section

/-- A370357: Number of partitions of [3n] into n sets of size 3 avoiding any set {3j-2,3j-1,3j} (1<=j<=n).

Offset 0, canonical program `A370357.P17837870967034224486`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370357 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A370357.P17837870967034224486.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370357.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370359.P3050715892632633690

`n^n*A009545(n)`
-/

namespace A370359.P3050715892632633690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * A009545 n

end

end A370359.P3050715892632633690

noncomputable section

/-- A370359: Imaginary part of (n + n*i)^n where i = sqrt(-1).

Offset 0, canonical program `A370359.P3050715892632633690`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370359 (n : ℕ) : ℤ :=
  A370359.P3050715892632633690.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370359.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370369.P10592005557351599252

`(n+1)!+A014145(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A370369.P10592005557351599252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) + A014145 n

end

end A370369.P10592005557351599252

noncomputable section

/-- A370369: a(n) = n! + Sum_{k=1..n-1} (n-k)*k! = n! + A014145(n-1); for n >= 2, number of m such that any two consecutive digits of the base-n expansion of m differ by 1 after arranging the digits in decreasing order.

Offset 1, canonical program `A370369.P10592005557351599252`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370369 (n : ℕ) : ℤ :=
  A370369.P10592005557351599252.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370369.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370579.P13829268499602601867

`(n+1)*A087906(n+1)`
-/

namespace A370579.P13829268499602601867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A087906 (n + 1)

end

end A370579.P13829268499602601867

noncomputable section

/-- A370579: a(n) = n! * Sum_{d|n} 1/(d-1)!.

Offset 1, canonical program `A370579.P13829268499602601867`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370579 (n : ℕ) : ℤ :=
  A370579.P13829268499602601867.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370579.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370796.P801255412299993999

`abs(A000720((A000040(n+2)-1)²)-A000720((A000040(n+1)+1)²))`
-/

namespace A370796.P801255412299993999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000720 ((A000040 (n + 2) - 1) ^ 2).toNat - A000720 ((A000040 (n + 1) + 1) ^ 2).toNat|

end

end A370796.P801255412299993999

noncomputable section

/-- A370796: Number of primes between (prime(n)+1)^2 and (prime(n+1)-1)^2.

Offset 1, canonical program `A370796.P801255412299993999`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370796 (n : ℕ) : ℤ :=
  A370796.P801255412299993999.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370796.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370844.P11415633917409544336

`∑{#}[n, C(n, #)*A118971(#)]`
-/

namespace A370844.P11415633917409544336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A118971 k

end

end A370844.P11415633917409544336

noncomputable section

/-- A370844: Expansion of (1/x) * Series_Reversion( x / (1/(1-x)^4 + x) ).

Offset 0, canonical program `A370844.P11415633917409544336`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370844 (n : ℕ) : ℤ :=
  A370844.P11415633917409544336.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370844.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370869.P13692030525450674995

`a(n-1)²-3*A058891(n)` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A370869.P13692030525450674995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) ^ 2 - 3 * A058891 n

end

end A370869.P13692030525450674995

noncomputable section

/-- A370869: a(0) = 0; thereafter, a(n) = a(n-1)^2 - 3*A058891(n).

Offset 0, canonical program `A370869.P13692030525450674995`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370869 (n : ℕ) : ℤ :=
  A370869.P13692030525450674995.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370869.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A371114.P18237844401001729349

`n!*∑{#}[n-1, A009940(#)/(#!*(n-#))]`
-/

namespace A371114.P18237844401001729349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1).toNat, (A009940 k : ℚ) / ((Nat.factorial k : ℤ) * ((n : ℤ) - (k : ℤ)) : ℚ))

end

end A371114.P18237844401001729349

noncomputable section

/-- A371114: a(n) is n! times the coefficient of x in the associated Laguerre polynomial Laguerre(n,x,1).

Offset 0, canonical program `A371114.P18237844401001729349`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371114 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A371114.P18237844401001729349.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371114.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A371125.P14219781672238829575

`A005708(6*n)`
-/

namespace A371125.P14219781672238829575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (6 * n)

end

end A371125.P14219781672238829575

noncomputable section

/-- A371125: Number of compositions of 6*n into parts 1 and 6.

Offset 0, canonical program `A371125.P14219781672238829575`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371125 (n : ℕ) : ℤ :=
  A371125.P14219781672238829575.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371125.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A371640.P6272718172563112277

`3^A371638(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A371640.P6272718172563112277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A371638 (n + 1) : ℤ)

end

end A371640.P6272718172563112277

noncomputable section

/-- A371640: a(n) = 3^(2*n + valuation(n, 3)) = 3^A371638(n).

Offset 1, canonical program `A371640.P6272718172563112277`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371640 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A371640.P6272718172563112277.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371640.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A371698.P14444851263575026749

`2*A002003(n+1)-(1+(n+1)*(2^(n+1)-1))`
-/

namespace A371698.P14444851263575026749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002003 (n + 1) - (1 + (n + 1 : ℤ) * ((2 ^ (n + 1) : ℤ) - 1))

end

end A371698.P14444851263575026749

noncomputable section

/-- A371698: Number of partial order-preserving or -reversing transformations of a chain of length n.

Offset 1, canonical program `A371698.P14444851263575026749`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371698 (n : ℕ) : ℤ :=
  A371698.P14444851263575026749.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371698.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372015.P9509441470734535511

`A000045(n+1)*A001629(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372015.P9509441470734535511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A001629 (n + 1)

end

end A372015.P9509441470734535511

noncomputable section

/-- A372015: Product of Fibonacci and self-convolution of Fibonacci numbers: a(n) = A000045(n+1)*A001629(n+1).

Offset 0, canonical program `A372015.P9509441470734535511`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372015 (n : ℕ) : ℤ :=
  A372015.P9509441470734535511.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372015.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372103.P10485082969638955251

`∑{#}[n, A000040(n+1-#)*A000040(n+2)^#]`
-/

namespace A372103.P10485082969638955251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000040 (n + 1 - k) * A000040 (n + 2) ^ k

end

end A372103.P10485082969638955251

noncomputable section

/-- A372103: The first n primes interpreted as digits in base prime(n+1).

Offset 1, canonical program `A372103.P10485082969638955251`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372103 (n : ℕ) : ℤ :=
  A372103.P10485082969638955251.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372103.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372231.P16292004406067968796

`A000217(n+1)-A005206(n)`
-/

namespace A372231.P16292004406067968796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - A005206 n

end

end A372231.P16292004406067968796

noncomputable section

/-- A372231: Fixed points of A372341.

Offset 1, canonical program `A372231.P16292004406067968796`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372231 (n : ℕ) : ℤ :=
  A372231.P16292004406067968796.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372231.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372302.P1592687612405792873

`A035338(n)+1`
-/

namespace A372302.P1592687612405792873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035338 n + 1

end

end A372302.P1592687612405792873

noncomputable section

/-- A372302: Numbers k for which the Zeckendorf representation A014417(k) ends with "1001".

Offset 1, canonical program `A372302.P1592687612405792873`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372302 (n : ℕ) : ℤ :=
  A372302.P1592687612405792873.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372302.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372304.P16025748734119529628

`∑{#}[n, C(n, #)*A003188(#)]`
-/

namespace A372304.P16025748734119529628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A003188 k

end

end A372304.P16025748734119529628

noncomputable section

/-- A372304: Binomial transform of the Gray code sequence.

Offset 0, canonical program `A372304.P16025748734119529628`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372304 (n : ℕ) : ℤ :=
  A372304.P16025748734119529628.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372304.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372358.P2222053546592064582

`xor(n+1, A086893(1+A000523(n+1)))`
-/

namespace A372358.P2222053546592064582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A086893 (1 + A000523 (n + 1)).toNat)

end

end A372358.P2222053546592064582

noncomputable section

/-- A372358: a(n) = n XOR A086893(1+A000523(n)), where XOR is a bitwise-XOR, A003987.

Offset 1, canonical program `A372358.P2222053546592064582`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372358 (n : ℕ) : ℤ :=
  A372358.P2222053546592064582.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372358.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372421.P10170577374281833840

`A000217(a(n-1))+n` with `a(0)=0`
-/

namespace A372421.P10170577374281833840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000217 (a (n - 1)).toNat + (n : ℤ)

end

end A372421.P10170577374281833840

noncomputable section

/-- A372421: Number of steps required to kill the hydra in a version of the hydra game (see comments) where, at each step, the rightmost head is chopped off and new heads grow to the left.

Offset 0, canonical program `A372421.P10170577374281833840`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372421 (n : ℕ) : ℤ :=
  A372421.P10170577374281833840.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372421.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372544.P15471300761998067043

`A000035(A022843(n+1))`
-/

namespace A372544.P15471300761998067043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A022843 (n + 1)).toNat

end

end A372544.P15471300761998067043

noncomputable section

/-- A372544: a(n) = floor(n*e) mod 2.

Offset 1, canonical program `A372544.P15471300761998067043`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372544 (n : ℕ) : ℤ :=
  A372544.P15471300761998067043.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372544.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372712.P8568564287462488964

`(A001608(n+1)+n+1)²`
-/

namespace A372712.P8568564287462488964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001608 (n + 1) + (n + 1 : ℤ)) ^ 2

end

end A372712.P8568564287462488964

noncomputable section

/-- A372712: Numbers of minimal total dominating sets in the n-trapezohedral graph.

Offset 1, canonical program `A372712.P8568564287462488964`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372712 (n : ℕ) : ℤ :=
  A372712.P8568564287462488964.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372712.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372758.P14293302057458379432

`A005374(A005374(n))+1`
-/

namespace A372758.P14293302057458379432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 (A005374 n).toNat + 1

end

end A372758.P14293302057458379432

noncomputable section

/-- A372758: 5th prepended column of the 3-Zeckendorf array (A136189).

Offset 1, canonical program `A372758.P14293302057458379432`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372758 (n : ℕ) : ℤ :=
  A372758.P14293302057458379432.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372758.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372926.P3926301616273700677

`∑{d}[n+1, A008683((n+1)/#)*#²*A001157(#)]`
-/

namespace A372926.P3926301616273700677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (d ^ 2 : ℤ) * A001157 d

end

end A372926.P3926301616273700677

noncomputable section

/-- A372926: a(n) = Sum_{1 <= x_1, x_2 <= n} gcd(x_1, x_2, n)^4.

Offset 1, canonical program `A372926.P3926301616273700677`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372926 (n : ℕ) : ℤ :=
  A372926.P3926301616273700677.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372926.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372927.P14603891296994161099

`∑{d}[n+1, A008683((n+1)/#)*#²*A001158(#)]`
-/

namespace A372927.P14603891296994161099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (d ^ 2 : ℤ) * A001158 d

end

end A372927.P14603891296994161099

noncomputable section

/-- A372927: a(n) = Sum_{1 <= x_1, x_2 <= n} gcd(x_1, x_2, n)^5.

Offset 1, canonical program `A372927.P14603891296994161099`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372927 (n : ℕ) : ℤ :=
  A372927.P14603891296994161099.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372927.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372929.P16721753132255508350

`∑{d}[n+1, A008683((n+1)/#)*#^3*A000203(#)]`
-/

namespace A372929.P16721753132255508350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (d ^ 3 : ℤ) * A000203 d

end

end A372929.P16721753132255508350

noncomputable section

/-- A372929: a(n) = Sum_{1 <= x_1, x_2, x_3 <= n} gcd(x_1, x_2, x_3, n)^4.

Offset 1, canonical program `A372929.P16721753132255508350`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372929 (n : ℕ) : ℤ :=
  A372929.P16721753132255508350.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372929.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372930.P17128090175193846877

`∑{d}[n+1, A008683((n+1)/#)*#^3*A001157(#)]`
-/

namespace A372930.P17128090175193846877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (d ^ 3 : ℤ) * A001157 d

end

end A372930.P17128090175193846877

noncomputable section

/-- A372930: a(n) = Sum_{1 <= x_1, x_2, x_3 <= n} gcd(x_1, x_2, x_3, n)^5.

Offset 1, canonical program `A372930.P17128090175193846877`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372930 (n : ℕ) : ℤ :=
  A372930.P17128090175193846877.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372930.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372937.P3771048915166469349

`∑{d}[n+1, A008683((n+1)/#)*#^4*A000203(#)]`
-/

namespace A372937.P3771048915166469349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (d ^ 4 : ℤ) * A000203 d

end

end A372937.P3771048915166469349

noncomputable section

/-- A372937: a(n) = Sum_{1 <= x_1, x_2, x_3, x_4 <= n} gcd(x_1, x_2, x_3, x_4, n)^5.

Offset 1, canonical program `A372937.P3771048915166469349`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372937 (n : ℕ) : ℤ :=
  A372937.P3771048915166469349.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372937.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373048.P12956872335884234756

`A055226(n+1)-A055226(n)`
-/

namespace A373048.P12956872335884234756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055226 (n + 1) - A055226 n

end

end A373048.P12956872335884234756

noncomputable section

/-- A373048: Number of squares between n! and (n+1)!, exclusive.

Offset 0, canonical program `A373048.P12956872335884234756`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373048 (n : ℕ) : ℤ :=
  A373048.P12956872335884234756.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373048.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373216.P7487443510787612831

`A122841(n+1)+1`
-/

namespace A373216.P7487443510787612831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122841 (n + 1) + 1

end

end A373216.P7487443510787612831

noncomputable section

/-- A373216: Expansion of Sum_{k>=0} x^(6^k) / (1 - x^(6^k)).

Offset 1, canonical program `A373216.P7487443510787612831`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373216 (n : ℕ) : ℤ :=
  A373216.P7487443510787612831.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373216.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373245.P9496879938608800847

`A114203(n+1)/2`
-/

namespace A373245.P9496879938608800847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114203 (n + 1) : ℚ) / 2

end

end A373245.P9496879938608800847

noncomputable section

/-- A373245: Binomial transform of A135318.

Offset 0, canonical program `A373245.P9496879938608800847`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373245 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A373245.P9496879938608800847.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373245.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373302.P16178244919817638420

`A005708(6*(n+1)-2)`
-/

namespace A373302.P16178244919817638420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (6 * (n + 1) - 2)

end

end A373302.P16178244919817638420

noncomputable section

/-- A373302: Number of compositions of 6*n-2 into parts 1 and 6.

Offset 1, canonical program `A373302.P16178244919817638420`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373302 (n : ℕ) : ℤ :=
  A373302.P16178244919817638420.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373302.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373329.P3228160346676462800

`A000196((n^4+n²)/2)`
-/

namespace A373329.P3228160346676462800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway ((n ^ 4 + n ^ 2 : ℚ) / 2)).toNat

end

end A373329.P3228160346676462800

noncomputable section

/-- A373329: a(n)^2 is the greatest square not exceeding A000217(n^2).

Offset 0, canonical program `A373329.P3228160346676462800`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373329 (n : ℕ) : ℤ :=
  A373329.P3228160346676462800.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373329.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373340.P8185917160170023749

`A000142(n)-A373339(n)`
-/

namespace A373340.P8185917160170023749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A373339 n

end

end A373340.P8185917160170023749

noncomputable section

/-- A373340: Number of permutations of symmetric group S_n with an odd number of cycles of length 2 or more.

Offset 0, canonical program `A373340.P8185917160170023749`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373340 (n : ℕ) : ℤ :=
  A373340.P8185917160170023749.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373340.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373445.P16392507257831332484

`(A000073(n+2)+A103143(n+2))/2-A077947(n)`
-/

namespace A373445.P16392507257831332484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000073 (n + 2) + A103143 (n + 2) : ℚ) / 2 - (A077947 n : ℚ)

end

end A373445.P16392507257831332484

noncomputable section

/-- A373445: Triple convolution of the three tribonacci-like sequences A000073(n), A077947(n-2), and A103143(n).

Offset 0, canonical program `A373445.P16392507257831332484`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373445 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A373445.P16392507257831332484.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373445.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373561.P15499834751725507168

`n²*A000330(n)`
-/

namespace A373561.P15499834751725507168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A000330 n

end

end A373561.P15499834751725507168

noncomputable section

/-- A373561: a(n) = (1/3)*n^5 + (1/2)*n^4 + (1/6)*n^3.

Offset 0, canonical program `A373561.P15499834751725507168`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373561 (n : ℕ) : ℤ :=
  A373561.P15499834751725507168.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373561.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373585.P17268978619105738609

`A059841(A001222(n+1)-A007949(n+1))`
-/

namespace A373585.P17268978619105738609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A001222 (n + 1) - A007949 (n + 1)).toNat

end

end A373585.P17268978619105738609

noncomputable section

/-- A373585: a(n) = 1 if A373149(n) is even, otherwise 0, where A373149 is fully additive with a(2) = 1 and a(p) = prevprime(p) for odd primes p.

Offset 1, canonical program `A373585.P17268978619105738609`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373585 (n : ℕ) : ℤ :=
  A373585.P17268978619105738609.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373585.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373651.P4625024407428226436

`C(n+2, 2)*A002426(n)`
-/

namespace A373651.P4625024407428226436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℤ) * A002426 n

end

end A373651.P4625024407428226436

noncomputable section

/-- A373651: Expansion of (1 - 2*x + 3*x^2)/(1 - 2*x - 3*x^2)^(5/2).

Offset 0, canonical program `A373651.P4625024407428226436`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373651 (n : ℕ) : ℤ :=
  A373651.P4625024407428226436.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373651.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373730.P14378342733449950770

`A000265(A017185(n))`
-/

namespace A373730.P14378342733449950770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A017185 n).toNat

end

end A373730.P14378342733449950770

noncomputable section

/-- A373730: Reduced Collatz function R applied to the numbers 6n+1: a(n) = R(6n+1), where R(k) = (3k+1)/2^r, with r as large as possible.

Offset 0, canonical program `A373730.P14378342733449950770`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373730 (n : ℕ) : ℤ :=
  A373730.P14378342733449950770.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373730.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373733.P1392411414185310364

`A000217(A000292(n))`
-/

namespace A373733.P1392411414185310364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000292 n).toNat

end

end A373733.P1392411414185310364

noncomputable section

/-- A373733: Triangular numbers with tetrahedral indices: a(n) = (1/72) * (n*(n+1)*(n+2)*(n+3)*(n^2+2)).

Offset 0, canonical program `A373733.P1392411414185310364`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373733 (n : ℕ) : ℤ :=
  A373733.P1392411414185310364.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373733.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373864.P16710253182946225644

`A000265(A017257(n))`
-/

namespace A373864.P16710253182946225644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A017257 n).toNat

end

end A373864.P16710253182946225644

noncomputable section

/-- A373864: Reduced Collatz function R applied to the numbers 6n+5: a(n) = R(6n+5), where R(k) = (3k+1)/2^r, with r as large as possible.

Offset 0, canonical program `A373864.P16710253182946225644`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373864 (n : ℕ) : ℤ :=
  A373864.P16710253182946225644.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373864.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373890.P3933045878343609463

`A005710(8*n)`
-/

namespace A373890.P3933045878343609463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005710 (8 * n)

end

end A373890.P3933045878343609463

noncomputable section

/-- A373890: Number of compositions of 8*n into parts 1 and 8.

Offset 0, canonical program `A373890.P3933045878343609463`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373890 (n : ℕ) : ℤ :=
  A373890.P3933045878343609463.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373890.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373907.P15282238610584887245

`A005709(7*n)`
-/

namespace A373907.P15282238610584887245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 (7 * n)

end

end A373907.P15282238610584887245

noncomputable section

/-- A373907: Number of compositions of 7*n into parts 1 and 7.

Offset 0, canonical program `A373907.P15282238610584887245`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373907 (n : ℕ) : ℤ :=
  A373907.P15282238610584887245.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373907.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373908.P9546572299438946991

`A369813(7*n)`
-/

namespace A373908.P9546572299438946991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369813 (7 * n)

end

end A373908.P9546572299438946991

noncomputable section

/-- A373908: Number of compositions of 7*n into parts 2 and 7.

Offset 0, canonical program `A373908.P9546572299438946991`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373908 (n : ℕ) : ℤ :=
  A373908.P9546572299438946991.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373908.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373909.P2908949416516809937

`A369814(7*n)`
-/

namespace A373909.P2908949416516809937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369814 (7 * n)

end

end A373909.P2908949416516809937

noncomputable section

/-- A373909: Number of compositions of 7*n into parts 3 and 7.

Offset 0, canonical program `A373909.P2908949416516809937`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373909 (n : ℕ) : ℤ :=
  A373909.P2908949416516809937.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373909.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373910.P2187591033375915871

`A369815(7*n)`
-/

namespace A373910.P2187591033375915871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369815 (7 * n)

end

end A373910.P2187591033375915871

noncomputable section

/-- A373910: Number of compositions of 7*n into parts 4 and 7.

Offset 0, canonical program `A373910.P2187591033375915871`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373910 (n : ℕ) : ℤ :=
  A373910.P2187591033375915871.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373910.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373911.P3384175063987620122

`A369816(7*n)`
-/

namespace A373911.P3384175063987620122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369816 (7 * n)

end

end A373911.P3384175063987620122

noncomputable section

/-- A373911: Number of compositions of 7*n into parts 5 and 7.

Offset 0, canonical program `A373911.P3384175063987620122`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373911 (n : ℕ) : ℤ :=
  A373911.P3384175063987620122.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373911.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373912.P4395864615512526356

`A017847(7*n)`
-/

namespace A373912.P4395864615512526356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017847 (7 * n)

end

end A373912.P4395864615512526356

noncomputable section

/-- A373912: Number of compositions of 7*n into parts 6 and 7.

Offset 0, canonical program `A373912.P4395864615512526356`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373912 (n : ℕ) : ℤ :=
  A373912.P4395864615512526356.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373912.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373913.P4676741196729923475

`A017857(8*n)`
-/

namespace A373913.P4676741196729923475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017857 (8 * n)

end

end A373913.P4676741196729923475

noncomputable section

/-- A373913: Number of compositions of 8*n into parts 7 and 8.

Offset 0, canonical program `A373913.P4676741196729923475`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373913 (n : ℕ) : ℤ :=
  A373913.P4676741196729923475.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373913.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373923.P18238041466305353005

`∑{d}[n+1, (-1)^A000720(#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373923.P18238041466305353005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (-1 : ℚ) ^ (A000720 d : ℤ)

end

end A373923.P18238041466305353005

noncomputable section

/-- A373923: a(n) = Sum_{d|n} (-1)^pi(d).

Offset 1, canonical program `A373923.P18238041466305353005`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373923 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A373923.P18238041466305353005.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373923.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373924.P1994942263636620404

`∑{d}[n+1, (-1)^A000720(#)*A008683((n+1)/#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373924.P1994942263636620404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (-1 : ℚ) ^ (A000720 d : ℤ) * (A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℚ)

end

end A373924.P1994942263636620404

noncomputable section

/-- A373924: a(n) = Sum_{d|n} (-1)^pi(d) * mu(n/d).

Offset 1, canonical program `A373924.P1994942263636620404`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373924 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A373924.P1994942263636620404.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373924.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373928.P8650021580750186198

`A005709(7*(n+1)-2)`
-/

namespace A373928.P8650021580750186198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 (7 * (n + 1) - 2)

end

end A373928.P8650021580750186198

noncomputable section

/-- A373928: Number of compositions of 7*n-2 into parts 1 and 7.

Offset 1, canonical program `A373928.P8650021580750186198`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373928 (n : ℕ) : ℤ :=
  A373928.P8650021580750186198.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373928.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373929.P4771295431437523167

`A005709(7*(n+1)-3)`
-/

namespace A373929.P4771295431437523167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 (7 * (n + 1) - 3)

end

end A373929.P4771295431437523167

noncomputable section

/-- A373929: Number of compositions of 7*n-3 into parts 1 and 7.

Offset 1, canonical program `A373929.P4771295431437523167`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373929 (n : ℕ) : ℤ :=
  A373929.P4771295431437523167.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373929.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373930.P987995553319910995

`A005709(7*(n+1)-4)`
-/

namespace A373930.P987995553319910995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 (7 * (n + 1) - 4)

end

end A373930.P987995553319910995

noncomputable section

/-- A373930: Number of compositions of 7*n-4 into parts 1 and 7.

Offset 1, canonical program `A373930.P987995553319910995`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373930 (n : ℕ) : ℤ :=
  A373930.P987995553319910995.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373930.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373931.P3318070194164780924

`A005709(7*(n+1)-5)`
-/

namespace A373931.P3318070194164780924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 (7 * (n + 1) - 5)

end

end A373931.P3318070194164780924

noncomputable section

/-- A373931: Number of compositions of 7*n-5 into parts 1 and 7.

Offset 1, canonical program `A373931.P3318070194164780924`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373931 (n : ℕ) : ℤ :=
  A373931.P3318070194164780924.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373931.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373932.P1065963213325569315

`A005709(7*(n+1)-6)`
-/

namespace A373932.P1065963213325569315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 (7 * (n + 1) - 6)

end

end A373932.P1065963213325569315

noncomputable section

/-- A373932: Number of compositions of 7*n-6 into parts 1 and 7.

Offset 1, canonical program `A373932.P1065963213325569315`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373932 (n : ℕ) : ℤ :=
  A373932.P1065963213325569315.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373932.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373937.P8686742850087483701

`A017847(7*(n+1)-5)`
-/

namespace A373937.P8686742850087483701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017847 (7 * (n + 1) - 5)

end

end A373937.P8686742850087483701

noncomputable section

/-- A373937: Number of compositions of 7*n-5 into parts 6 and 7.

Offset 1, canonical program `A373937.P8686742850087483701`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373937 (n : ℕ) : ℤ :=
  A373937.P8686742850087483701.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373937.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373958.P360899032508483722

`A005708(6*(n+1)-3)`
-/

namespace A373958.P360899032508483722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (6 * (n + 1) - 3)

end

end A373958.P360899032508483722

noncomputable section

/-- A373958: Number of compositions of 6*n-3 into parts 1 and 6.

Offset 1, canonical program `A373958.P360899032508483722`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373958 (n : ℕ) : ℤ :=
  A373958.P360899032508483722.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373958.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373959.P5461141806012168502

`A005708(6*(n+1)-4)`
-/

namespace A373959.P5461141806012168502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (6 * (n + 1) - 4)

end

end A373959.P5461141806012168502

noncomputable section

/-- A373959: Number of compositions of 6*n-4 into parts 1 and 6.

Offset 1, canonical program `A373959.P5461141806012168502`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373959 (n : ℕ) : ℤ :=
  A373959.P5461141806012168502.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373959.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373960.P12350189268790730355

`A005708(6*(n+1)-5)`
-/

namespace A373960.P12350189268790730355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (6 * (n + 1) - 5)

end

end A373960.P12350189268790730355

noncomputable section

/-- A373960: Number of compositions of 6*n-5 into parts 1 and 6.

Offset 1, canonical program `A373960.P12350189268790730355`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373960 (n : ℕ) : ℤ :=
  A373960.P12350189268790730355.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373960.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373964.P12592844199490846618

`A017837(6*(n+1)-4)`
-/

namespace A373964.P12592844199490846618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017837 (6 * (n + 1) - 4)

end

end A373964.P12592844199490846618

noncomputable section

/-- A373964: Number of compositions of 6*n-4 into parts 5 and 6.

Offset 1, canonical program `A373964.P12592844199490846618`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373964 (n : ℕ) : ℤ :=
  A373964.P12592844199490846618.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373964.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374039.P15740190792079076848

`A011655(n+1)+A267142(n+1)`
-/

namespace A374039.P15740190792079076848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (n + 1) + A267142 (n + 1)

end

end A374039.P15740190792079076848

noncomputable section

/-- A374039: a(n) = 1 if the 3-adic valuation of n is not 1, otherwise 0.

Offset 1, canonical program `A374039.P15740190792079076848`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374039 (n : ℕ) : ℤ :=
  A374039.P15740190792079076848.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374039.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374097.P1036587398955420288

`A196563(n)*A196564(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374097.P1036587398955420288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 n * A196564 n

end

end A374097.P1036587398955420288

noncomputable section

/-- A374097: a(n) = A196563(n)*A196564(n).

Offset 0, canonical program `A374097.P1036587398955420288`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374097 (n : ℕ) : ℤ :=
  A374097.P1036587398955420288.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374097.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374217.P12233700844342352105

`A007949(A001414(n+2))`
-/

namespace A374217.P12233700844342352105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A001414 (n + 2)).toNat

end

end A374217.P12233700844342352105

noncomputable section

/-- A374217: The 3-adic valuation of sopfr(n), where sopfr is the sum of prime factors with repetition, A001414.

Offset 2, canonical program `A374217.P12233700844342352105`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374217 (n : ℕ) : ℤ :=
  A374217.P12233700844342352105.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374217.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374367.P11517469690837664522

`A008683(n+1)*A101455(n+1)`
-/

namespace A374367.P11517469690837664522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A101455 (n + 1)

end

end A374367.P11517469690837664522

noncomputable section

/-- A374367: a(n) = Im(A008683(n)*(i^n)).

Offset 1, canonical program `A374367.P11517469690837664522`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374367 (n : ℕ) : ℤ :=
  A374367.P11517469690837664522.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374367.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374426.P13793053293426560037

`a(n-1)+n+1+A010051(n+1)` with `a(0)=1`
-/

namespace A374426.P13793053293426560037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1 : ℤ) + A010051 (n + 1)

end

end A374426.P13793053293426560037

noncomputable section

/-- A374426: a(n) = n*(n + 1)/2 + pi(n), where pi(n) = A000720(n) is the prime counting function.

Offset 1, canonical program `A374426.P13793053293426560037`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374426 (n : ℕ) : ℤ :=
  A374426.P13793053293426560037.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374426.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374532.P9847573754567788260

`4*A237526(n²+1)`
-/

namespace A374532.P9847573754567788260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A237526 (n ^ 2 + 1)

end

end A374532.P9847573754567788260

noncomputable section

/-- A374532: Number of complete unit squares that fit inside a circle of radius sqrt(n^2+1) centered at the origin of a square lattice.

Offset 0, canonical program `A374532.P9847573754567788260`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374532 (n : ℕ) : ℤ :=
  A374532.P9847573754567788260.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374532.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374560.P15287772659668593832

`A005836(col(n)+1)+A005836(row(n)-col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374560.P15287772659668593832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (SequenceMachineLib.triCol n + 1) + A005836 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat

end

end A374560.P15287772659668593832

noncomputable section

/-- A374560: Square array A(n, k), n, k >= 0, read by antidiagonals; A(n, k) = A005836(n+1) + A005836(k+1).

Offset 0, canonical program `A374560.P15287772659668593832`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374560 (n : ℕ) : ℤ :=
  A374560.P15287772659668593832.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374560.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374585.P3097103102848234859

`∑{#}[floor(n/4), C(n-#, 3*#)*2^#*A000108(#)]`
-/

namespace A374585.P3097103102848234859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose ((n : ℤ) - (k : ℤ)).toNat (3 * k) * 2 ^ k : ℤ) * A000108 k

end

end A374585.P3097103102848234859

noncomputable section

/-- A374585: A family of marked Motzkin-like paths.

Offset 0, canonical program `A374585.P3097103102848234859`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374585 (n : ℕ) : ℤ :=
  A374585.P3097103102848234859.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374585.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374648.P14007990213428452594

`A355988(n)-A081125(n)`
-/

namespace A374648.P14007990213428452594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355988 n - A081125 n

end

end A374648.P14007990213428452594

noncomputable section

/-- A374648: a(n) = n! / (floor(n/3))! - n! / (floor(n/2))!.

Offset 0, canonical program `A374648.P14007990213428452594`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374648 (n : ℕ) : ℤ :=
  A374648.P14007990213428452594.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374648.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374655.P15978509805491680972

`1/3*A374654(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374655.P15978509805491680972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (A374654 n : ℚ)

end

end A374655.P15978509805491680972

noncomputable section

/-- A374655: a(n) = (1/3)*A374654(n).

Offset 0, canonical program `A374655.P15978509805491680972`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374655 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A374655.P15978509805491680972.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374655.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374749.P9126795584612520576

`A015445(n+1)-1`
-/

namespace A374749.P9126795584612520576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015445 (n + 1) - 1

end

end A374749.P9126795584612520576

noncomputable section

/-- A374749: Number of zygodrome numbers in base-10 (A033023) with n or fewer digits.

Offset 1, canonical program `A374749.P9126795584612520576`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374749 (n : ℕ) : ℤ :=
  A374749.P9126795584612520576.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374749.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374908.P18111797103984117614

`a(n-1)+A006942(a(n-1))` with `a(0)=0`
-/

namespace A374908.P18111797103984117614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A006942 (a (n - 1)).toNat

end

end A374908.P18111797103984117614

noncomputable section

/-- A374908: Each term is the sum of the preceding term and its seven-segment total A006942.

Offset 0, canonical program `A374908.P18111797103984117614`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374908 (n : ℕ) : ℤ :=
  A374908.P18111797103984117614.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374908.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374929.P3218884029634741329

`(7*A001158(n+2)-(6*(n+2)+1)*A000203(n+2))/24`
-/

namespace A374929.P3218884029634741329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * A001158 (n + 2) - (6 * (n + 2) + 1 : ℤ) * A000203 (n + 2) : ℚ) / 24

end

end A374929.P3218884029634741329

noncomputable section

/-- A374929: Expansion of Sum_{1<=i<=j} q^(i+j)/( (1-q^i)*(1-q^j) )^2.

Offset 2, canonical program `A374929.P3218884029634741329`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374929 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A374929.P3218884029634741329.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374929.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374980.P1223462315733779092

`∑{#}[n, (-1)^#*C(n, #)*A000680(n-#)]`
-/

namespace A374980.P1223462315733779092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1) ^ k * (Nat.choose n k : ℤ) * A000680 (n - k)

end

end A374980.P1223462315733779092

noncomputable section

/-- A374980: Number of multiset permutations of {1, 1, 2, 2, ..., n, n} with no fixed pair (j,j).

Offset 0, canonical program `A374980.P1223462315733779092`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374980 (n : ℕ) : ℤ :=
  A374980.P1223462315733779092.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374980.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375097.P15315627764109913285

`A000040(n+4)-(A000040(n+2)+A000040(n+3))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A375097.P15315627764109913285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 4) : ℚ) - (A000040 (n + 2) + A000040 (n + 3) : ℚ) / 2

end

end A375097.P15315627764109913285

noncomputable section

/-- A375097: a(n) = prime(n+2) - (prime(n) + prime(n+1))/2.

Offset 2, canonical program `A375097.P15315627764109913285`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375097 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A375097.P15315627764109913285.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375097.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375260.P13671092592411399074

`C(n+3, 3)*A002426(n)`
-/

namespace A375260.P13671092592411399074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℤ) * A002426 n

end

end A375260.P13671092592411399074

noncomputable section

/-- A375260: Expansion of (1 - 3*x + 9*x^2 - 7*x^3)/(1 - 2*x - 3*x^2)^(7/2).

Offset 0, canonical program `A375260.P13671092592411399074`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375260 (n : ℕ) : ℤ :=
  A375260.P13671092592411399074.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375260.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375489.P9278473890610164610

`A000165(n)/10^A027868(n)`
-/

namespace A375489.P9278473890610164610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000165 n : ℚ) / (10 : ℚ) ^ (A027868 n : ℤ)

end

end A375489.P9278473890610164610

noncomputable section

/-- A375489: Omit the trailing zeros from double factorial of even numbers (A000165).

Offset 0, canonical program `A375489.P9278473890610164610`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375489 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A375489.P9278473890610164610.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375489.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375500.P15942470194738677138

`4*(A000045(n+1)-1)*(A000045(n+2)-1)+n+1`
-/

namespace A375500.P15942470194738677138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A000045 (n + 1) - 1) * (A000045 (n + 2) - 1) + (n : ℤ) + 1

end

end A375500.P15942470194738677138

noncomputable section

/-- A375500: a(n) = Sum_{k=0..n} A001595(k)^2.

Offset 0, canonical program `A375500.P15942470194738677138`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375500 (n : ℕ) : ℤ :=
  A375500.P15942470194738677138.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375500.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375501.P17455082885023199198

`4*(-1)^n*(2*A000045(2*n)/5+A000045(n)²-A000045(n))+8*n/5+A059841(n)`
-/

namespace A375501.P17455082885023199198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * (-1) ^ n : ℚ) * ((2 * A000045 (2 * n) : ℚ) / 5 + (A000045 n ^ 2 : ℚ) - (A000045 n : ℚ)) + (8 * n : ℚ) / 5 + (A059841 n : ℚ)

end

end A375501.P17455082885023199198

noncomputable section

/-- A375501: a(n) = Sum_{k=0..n} (-1)^k*A001595(k)^2.

Offset 0, canonical program `A375501.P17455082885023199198`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375501 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A375501.P17455082885023199198.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375501.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375530.P15174020114782716423

`A000040(n)*a(n-1)²+a(n-1)` with `a(0)=1`
-/

namespace A375530.P15174020114782716423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 n * a (n - 1) ^ 2 + a (n - 1)

end

end A375530.P15174020114782716423

noncomputable section

/-- A375530: a(n) is the denominator of Sum_{k = 1..n} prime(k) / A375529(k).

Offset 0, canonical program `A375530.P15174020114782716423`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375530 (n : ℕ) : ℤ :=
  A375530.P15174020114782716423.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375530.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375921.P491962245321920222

`A003418(2*(n+1)+1)/6`
-/

namespace A375921.P491962245321920222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (2 * (n + 1) + 1) : ℚ) / 6

end

end A375921.P491962245321920222

noncomputable section

/-- A375921: a(n) = LCM(1,2, ..., 2n+1)/6.

Offset 1, canonical program `A375921.P491962245321920222`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375921 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A375921.P491962245321920222.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375921.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375970.P9061839122044189861

`A000188(A000330(n+1))`
-/

namespace A375970.P9061839122044189861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A000330 (n + 1)).toNat

end

end A375970.P9061839122044189861

noncomputable section

/-- A375970: a(n) is the largest number k such that k^2 divides the square pyramidal number A000330(n).

Offset 1, canonical program `A375970.P9061839122044189861`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375970 (n : ℕ) : ℤ :=
  A375970.P9061839122044189861.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375970.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A376228.P5158863274070751785

`(6*n+1)*A002897(n)`
-/

namespace A376228.P5158863274070751785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 1 : ℤ) * A002897 n

end

end A376228.P5158863274070751785

noncomputable section

/-- A376228: a(n) = (6*n+1) * (2*n)!^3 / n!^6.

Offset 0, canonical program `A376228.P5158863274070751785`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376228 (n : ℕ) : ℤ :=
  A376228.P5158863274070751785.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376228.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A376322.P15000761500640788639

`a(n-1)*A062709(n)` with `a(0)=1`
-/

namespace A376322.P15000761500640788639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A062709 n

end

end A376322.P15000761500640788639

noncomputable section

/-- A376322: (1/4) times obverse convolution (2)**(2^n + 1); see Comments.

Offset 0, canonical program `A376322.P15000761500640788639`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376322 (n : ℕ) : ℤ :=
  A376322.P15000761500640788639.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376322.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A376323.P14265089320724040884

`2*a(n-1)*A052548(n-1)` with `a(0)=1`
-/

namespace A376323.P14265089320724040884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) * A052548 (n - 1)

end

end A376323.P14265089320724040884

noncomputable section

/-- A376323: (1/5) times obverse convolution (3)**(2^n + 1); see Comments.

Offset 0, canonical program `A376323.P14265089320724040884`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376323 (n : ℕ) : ℤ :=
  A376323.P14265089320724040884.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376323.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A376324.P6294847534775206759

`a(n-1)*A168614(n)` with `a(0)=1`
-/

namespace A376324.P6294847534775206759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A168614 n

end

end A376324.P6294847534775206759

noncomputable section

/-- A376324: (1/6) times obverse convolution (4)**(2^n + 1); see Comments.

Offset 0, canonical program `A376324.P6294847534775206759`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376324 (n : ℕ) : ℤ :=
  A376324.P6294847534775206759.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376324.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A376583.P3078053738808332107

`A000035(A002260(n+1))`
-/

namespace A376583.P3078053738808332107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A002260 (n + 1)).toNat

end

end A376583.P3078053738808332107

noncomputable section

/-- A376583: Parity of A002260.

Offset 1, canonical program `A376583.P3078053738808332107`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376583 (n : ℕ) : ℤ :=
  A376583.P3078053738808332107.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376583.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A376759.P6507737170924248319

`A000720(n+1)-A000720(2*(n+1))+n+1`
-/

namespace A376759.P6507737170924248319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A000720 (2 * (n + 1)) + (n + 1 : ℤ)

end

end A376759.P6507737170924248319

noncomputable section

/-- A376759: Number of composite numbers c with n < c <= 2*n.

Offset 1, canonical program `A376759.P6507737170924248319`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376759 (n : ℕ) : ℤ :=
  A376759.P6507737170924248319.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376759.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A376827.P12684542555165258029

`C(row(n), col(n))*A002426(row(n))`
-/

namespace A376827.P12684542555165258029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) * A002426 (SequenceMachineLib.triRow n)

end

end A376827.P12684542555165258029

noncomputable section

/-- A376827: T(n, k) = binomial(n, k)*hypergeom([(1 - n)/2, -n/2], [1], 4).

Offset 0, canonical program `A376827.P12684542555165258029`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376827 (n : ℕ) : ℤ :=
  A376827.P12684542555165258029.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376827.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A376868.P7740210885381345666

`A000142(n)*A053763(n)`
-/

namespace A376868.P7740210885381345666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A053763 n

end

end A376868.P7740210885381345666

noncomputable section

/-- A376868: a(n) = n! * 4^binomial(n, 2).

Offset 0, canonical program `A376868.P7740210885381345666`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376868 (n : ℕ) : ℤ :=
  A376868.P7740210885381345666.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376868.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377016.P1722148904578130006

`(A002315(n)+2*A008844(n)-1)/2`
-/

namespace A377016.P1722148904578130006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002315 n + 2 * A008844 n - 1 : ℚ) / 2

end

end A377016.P1722148904578130006

noncomputable section

/-- A377016: Semiperimeter of the unique primitive Pythagorean triple whose short leg is A002315(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A377016.P1722148904578130006`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377016 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A377016.P1722148904578130006.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377016.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377017.P5371651612865963793

`A002315(n)*(A008844(n)-1)/2`
-/

namespace A377017.P5371651612865963793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002315 n * (A008844 n - 1) : ℚ) / 2

end

end A377017.P5371651612865963793

noncomputable section

/-- A377017: Area of the unique primitive Pythagorean triple whose short leg is A002315(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A377017.P5371651612865963793`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377017 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A377017.P5371651612865963793.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377017.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377264.P2807592734896247087

`A006720(n+1)*A006720(n+3)`
-/

namespace A377264.P2807592734896247087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006720 (n + 1) * A006720 (n + 3)

end

end A377264.P2807592734896247087

noncomputable section

/-- A377264: Consider the recurrence d(k) = (d(k-3)*d(k-2) + 1)/(d(k-5)*d(k-4)*d(k-3)^2*d(k-2)^2*d(k-1)), with d(0..4) = {1,1,1,2,1}. a(n) = numerator(d(2*n+1)).

Offset 0, canonical program `A377264.P2807592734896247087`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377264 (n : ℕ) : ℤ :=
  A377264.P2807592734896247087.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377264.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377310.P8912507436105376598

`A210098(2*n)`
-/

namespace A377310.P8912507436105376598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210098 (2 * n)

end

end A377310.P8912507436105376598

noncomputable section

/-- A377310: Divisibility sequence associated with elliptic curve y^2 + y = x^3 - x^2 - 2x + 2 and point (1, 0).

Offset 0, canonical program `A377310.P8912507436105376598`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377310 (n : ℕ) : ℤ :=
  A377310.P8912507436105376598.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377310.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377368.P9845472719769353126

`A255978(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A377368.P9845472719769353126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255978 n + 1

end

end A377368.P9845472719769353126

noncomputable section

/-- A377368: a(n) = A255978(n) + 1.

Offset 0, canonical program `A377368.P9845472719769353126`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377368 (n : ℕ) : ℤ :=
  A377368.P9845472719769353126.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377368.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377379.P16536510253315204524

`A007947(n+1)^C(A001222(n+1)+A001221(n+1), A001221(n+1)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A377379.P16536510253315204524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) ^ Nat.choose (A001222 (n + 1) + A001221 (n + 1)).toNat (A001221 (n + 1) + 1).toNat

end

end A377379.P16536510253315204524

noncomputable section

/-- A377379: a(n) = rad(n)^binomial(bigomega(n) + omega(n), omega(n) + 1), where rad = A007947, bigomega = A001222, and omega = A001221.

Offset 1, canonical program `A377379.P16536510253315204524`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A007947(n+1)^C(A001222(n+1)+A001221(n+1), A001221(n+1)+1)` (program `A377379.P16536510253315204524`, by `A377379.P16536510253315204524.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A377379 (n : ℕ) : ℤ :=
  A377379.P16536510253315204524.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A007947(n+1)^C(A001222(n+1)+A001221(n+1), A001221(n+1)+1)` (program `A377379.P16536510253315204524`, by `A377379.P16536510253315204524.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A377379.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A377537.P11278541041156194446

`C(A000720(n+1)+n+1-1, n+1)`
-/

namespace A377537.P11278541041156194446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000720 (n + 1) + (n + 1 : ℤ) - 1).toNat (n + 1)

end

end A377537.P11278541041156194446

noncomputable section

/-- A377537: a(n) is the number of positive integers that have n prime factors and these are all <= n.

Offset 1, canonical program `A377537.P11278541041156194446`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377537 (n : ℕ) : ℤ :=
  (A377537.P11278541041156194446.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377537.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377596.P6032089116386094869

`A112980(n)^5`
-/

namespace A377596.P6032089116386094869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112980 n ^ 5

end

end A377596.P6032089116386094869

noncomputable section

/-- A377596: a(n) = (a(n-1) + a(n-2))^5 for n>=2 where a(0) = 0, a(1) = 1.

Offset 0, canonical program `A377596.P6032089116386094869`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377596 (n : ℕ) : ℤ :=
  A377596.P6032089116386094869.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377596.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377601.P14384301913357752278

`A034841(n)-A000142(n)`
-/

namespace A377601.P14384301913357752278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034841 n - A000142 n

end

end A377601.P14384301913357752278

noncomputable section

/-- A377601: Number of permutations of the multiset {1^n, 2^n,..., n^n} excluding permutations where all objects of all types are contiguous.

Offset 0, canonical program `A377601.P14384301913357752278`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377601 (n : ℕ) : ℤ :=
  A377601.P14384301913357752278.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377601.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377659.P12368812019478080147

`A001006(n)-A011782(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A377659.P12368812019478080147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - A011782 n

end

end A377659.P12368812019478080147

noncomputable section

/-- A377659: a(n) = Motzkin(n) - 2^(n - 1 + 0^n) = A001006(n) - A011782(n).

Offset 0, canonical program `A377659.P12368812019478080147`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377659 (n : ℕ) : ℤ :=
  A377659.P12368812019478080147.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377659.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377661.P9751868805492064890

`C(row(n), col(n))*A073107(C(row(n)+1, 2)+col(n))`
-/

namespace A377661.P9751868805492064890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) * A073107 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n)

end

end A377661.P9751868805492064890

noncomputable section

/-- A377661: Triangle read by rows: T(n, k) = e*Gamma(n - k + 1, 1)*binomial(n, k)^2.

Offset 0, canonical program `A377661.P9751868805492064890`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377661 (n : ℕ) : ℤ :=
  A377661.P9751868805492064890.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377661.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377662.P16356455094163385959

`∑{#}[n, C(n, #)*A073107(C(n+1, 2)+#)]`
-/

namespace A377662.P16356455094163385959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A073107 (Nat.choose (n + 1) 2 + k)

end

end A377662.P16356455094163385959

noncomputable section

/-- A377662: a(n) = Sum_{k=0..n} binomial(n, k) * Sum_{j=k..n} n!/(k!*(j - k)!). Row sums of A377661.

Offset 0, canonical program `A377662.P16356455094163385959`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377662 (n : ℕ) : ℤ :=
  A377662.P16356455094163385959.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377662.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377673.P11159805995646321326

`A000203((n+1)^(n+1)+n+1)`
-/

namespace A377673.P11159805995646321326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((n + 1) ^ (n + 1) + (n + 1))

end

end A377673.P11159805995646321326

noncomputable section

/-- A377673: a(n) is the sum of the divisors of n^n + n.

Offset 1, canonical program `A377673.P11159805995646321326`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377673 (n : ℕ) : ℤ :=
  A377673.P11159805995646321326.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377673.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377677.P5386326867309966351

`A000203((n+2)^(n+2)-(n+2))`
-/

namespace A377677.P5386326867309966351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((n + 2) ^ (n + 2) - (n + 2))

end

end A377677.P5386326867309966351

noncomputable section

/-- A377677: a(n) is the sum of the divisors of n^n - n.

Offset 2, canonical program `A377677.P5386326867309966351`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377677 (n : ℕ) : ℤ :=
  A377677.P5386326867309966351.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377677.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377725.P10966813579059079895

`2*A002315(n)+1`
-/

namespace A377725.P10966813579059079895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002315 n + 1

end

end A377725.P10966813579059079895

noncomputable section

/-- A377725: Length of the short leg of the unique primitive Pythagorean triple whose inradius is A002315(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A377725.P10966813579059079895`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377725 (n : ℕ) : ℤ :=
  A377725.P10966813579059079895.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377725.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377726.P10665330491965238398

`2*A002315(n)*(A002315(n)-1)`
-/

namespace A377726.P10665330491965238398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002315 n * (A002315 n - 1)

end

end A377726.P10665330491965238398

noncomputable section

/-- A377726: Length of the long leg of the unique primitive Pythagorean triple (x,y,z) such that (x-y+z)/2 is A002315(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A377726.P10665330491965238398`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377726 (n : ℕ) : ℤ :=
  A377726.P10665330491965238398.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377726.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377809.P6328072400551004124

`A002024(n+1)*(A002024(n+1)+3)/2`
-/

namespace A377809.P6328072400551004124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) * (A002024 (n + 1) + 3) : ℚ) / 2

end

end A377809.P6328072400551004124

noncomputable section

/-- A377809: k*(k+3)/2 appears k times.

Offset 1, canonical program `A377809.P6328072400551004124`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377809 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A377809.P6328072400551004124.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377809.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377899.P15230961924577883064

`floor((n+1-A000720(n+1))/2)`
-/

namespace A377899.P15230961924577883064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1 : ℤ) - A000720 (n + 1) : ℚ) / 2⌋

end

end A377899.P15230961924577883064

noncomputable section

/-- A377899: a(n) = number of composite numbers c_{2*k+1} <= n, where c_m = A002808(m) is the m-th composite number.

Offset 1, canonical program `A377899.P15230961924577883064`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377899 (n : ℕ) : ℤ :=
  A377899.P15230961924577883064.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377899.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378100.P5253957062667002361

`A000085(n)-A123023(n)`
-/

namespace A378100.P5253957062667002361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n - A123023 n

end

end A378100.P5253957062667002361

noncomputable section

/-- A378100: Number of involutions in the symmetric group S_n with at least one fixed point.

Offset 0, canonical program `A378100.P5253957062667002361`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378100 (n : ℕ) : ℤ :=
  A378100.P5253957062667002361.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378100.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378225.P18374964907932760232

`∑{d}[n+1, A008683((n+1)/#)*A153881(#)]`
-/

namespace A378225.P18374964907932760232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A153881 d

end

end A378225.P18374964907932760232

noncomputable section

/-- A378225: Dirichlet inverse of A067824.

Offset 1, canonical program `A378225.P18374964907932760232`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378225 (n : ℕ) : ℤ :=
  A378225.P18374964907932760232.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378225.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378232.P5119210670142585850

`∑{#}[n, #!*C(n, #)²*A000110(2*n-#)]`
-/

namespace A378232.P5119210670142585850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.factorial k * Nat.choose n k ^ 2 : ℤ) * A000110 (2 * n - k)

end

end A378232.P5119210670142585850

noncomputable section

/-- A378232: Cardinality of the ramified symmetric inverse monoid R(IS_n).

Offset 0, canonical program `A378232.P5119210670142585850`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378232 (n : ℕ) : ℤ :=
  A378232.P5119210670142585850.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378232.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378380.P9757006306424432664

`(A002315(n)+1)*(2*A002315(n)+1)`
-/

namespace A378380.P9757006306424432664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002315 n + 1) * (2 * A002315 n + 1)

end

end A378380.P9757006306424432664

noncomputable section

/-- A378380: Semiperimeter of the unique primitive Pythagorean triple whose inradius is A002315(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A378380.P9757006306424432664`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378380 (n : ℕ) : ℤ :=
  A378380.P9757006306424432664.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378380.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378386.P10678097254079986643

`A002315(n)*(A002315(n)+1)*(2*A002315(n)+1)`
-/

namespace A378386.P10678097254079986643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n * (A002315 n + 1) * (2 * A002315 n + 1)

end

end A378386.P10678097254079986643

noncomputable section

/-- A378386: Area of the unique primitive Pythagorean triple whose inradius is A002315(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A378386.P10678097254079986643`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378386 (n : ℕ) : ℤ :=
  A378386.P10678097254079986643.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378386.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378493.P3452728986541570164

`a(n-1)+A000040(n+1)*(n+1)*(n+2)/2` with `a(0)=2`
-/

namespace A378493.P3452728986541570164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A000040 (n + 1) * (n + 1 : ℤ) * (n + 2 : ℤ) : ℚ) / 2

end

end A378493.P3452728986541570164

noncomputable section

/-- A378493: Dot product of the first n primes and the first n triangular numbers.

Offset 1, canonical program `A378493.P3452728986541570164`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378493 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A378493.P3452728986541570164.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378493.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378744.P4748667220349122921

`ceil(log(2)/log(A000040(n+2)/A000040(n+1)))`
-/

namespace A378744.P4748667220349122921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (2 : ℝ) / Real.log ((A000040 (n + 2) : ℚ) / (A000040 (n + 1) : ℚ) : ℝ)⌉

end

end A378744.P4748667220349122921

noncomputable section

/-- A378744: The least k such that prime(1+n)^k > 2 * prime(n)^k.

Offset 1, canonical program `A378744.P4748667220349122921`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378744 (n : ℕ) : ℤ :=
  A378744.P4748667220349122921.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378744.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378781.P6898465891069053923

`n*A378778(n)/3`
-/

namespace A378781.P6898465891069053923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A378778 n : ℚ) / 3

end

end A378781.P6898465891069053923

noncomputable section

/-- A378781: a(n) = n^3 * 2^n * binomial(3*n, n) / 3.

Offset 0, canonical program `A378781.P6898465891069053923`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378781 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A378781.P6898465891069053923.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378781.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378796.P2302645518933694793

`A046717(n+1)+n+1-1`
-/

namespace A378796.P2302645518933694793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046717 (n + 1) + (n + 1 : ℤ) - 1

end

end A378796.P2302645518933694793

noncomputable section

/-- A378796: Number of minimal edge cuts in the n-sun graph.

Offset 1, canonical program `A378796.P2302645518933694793`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378796 (n : ℕ) : ℤ :=
  A378796.P2302645518933694793.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378796.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378933.P7499219059448651818

`A166761(n+1)/2`
-/

namespace A378933.P7499219059448651818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166761 (n + 1) : ℚ) / 2

end

end A378933.P7499219059448651818

noncomputable section

/-- A378933: Number of minimal edge cuts in the 3 X n grid graph.

Offset 1, canonical program `A378933.P7499219059448651818`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378933 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A378933.P7499219059448651818.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378933.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378965.P16390378883255238781

`A002315(n)*(2*A002315(n)-1)`
-/

namespace A378965.P16390378883255238781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n * (2 * A002315 n - 1)

end

end A378965.P16390378883255238781

noncomputable section

/-- A378965: Semiperimeter of the unique primitive Pythagorean triple (x,y,z) such that (x-y+z)/2 is A002315(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A378965.P16390378883255238781`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378965 (n : ℕ) : ℤ :=
  A378965.P16390378883255238781.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378965.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378966.P5970924612894975663

`A002315(n)*(A002315(n)-1)*(2*A002315(n)-1)`
-/

namespace A378966.P5970924612894975663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n * (A002315 n - 1) * (2 * A002315 n - 1)

end

end A378966.P5970924612894975663

noncomputable section

/-- A378966: Area of the unique primitive Pythagorean triple (x,y,z) such that (x-y+z)/2 is A002315(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A378966.P5970924612894975663`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378966 (n : ℕ) : ℤ :=
  A378966.P5970924612894975663.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378966.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378988.P157898391695695422

`xor(n+1+n+1, 1+A000203(n+1))`
-/

namespace A378988.P157898391695695422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 + (n + 1) : ℤ) (1 + A000203 (n + 1))

end

end A378988.P157898391695695422

noncomputable section

/-- A378988: a(n) = 2*n XOR 1+sigma(n), where XOR is bitwise-xor, A003987.

Offset 1, canonical program `A378988.P157898391695695422`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378988 (n : ℕ) : ℤ :=
  A378988.P157898391695695422.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378988.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379473.P11357118703739175544

`A038500(A000203(n+1))`
-/

namespace A379473.P11357118703739175544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A000203 (n + 1)).toNat

end

end A379473.P11357118703739175544

noncomputable section

/-- A379473: a(n) is the highest power of 3 dividing the sum of divisors of n.

Offset 1, canonical program `A379473.P11357118703739175544`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379473 (n : ℕ) : ℤ :=
  A379473.P11357118703739175544.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379473.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379542.P11264804755258365504

`∑{#}[n, (-1)^(n-#)*C(n, #)*A000040(#+2)]`
-/

namespace A379542.P11264804755258365504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A000040 (k + 2) : ℚ)

end

end A379542.P11264804755258365504

noncomputable section

/-- A379542: Second term of the n-th differences of the prime numbers.

Offset 0, canonical program `A379542.P11264804755258365504`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379542 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A379542.P11264804755258365504.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379542.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379663.P16552720730699355066

`A060143(A000188(n+1))+1`
-/

namespace A379663.P16552720730699355066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A000188 (n + 1)).toNat + 1

end

end A379663.P16552720730699355066

noncomputable section

/-- A379663: a(n) is the number of integer-sided triangles whose sides are in geometric progression with smallest side n.

Offset 1, canonical program `A379663.P16552720730699355066`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379663 (n : ℕ) : ℤ :=
  A379663.P16552720730699355066.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379663.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380110.P5586239892308066860

`n-A063695(n)/2`
-/

namespace A380110.P5586239892308066860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (A063695 n : ℚ) / 2

end

end A380110.P5586239892308066860

noncomputable section

/-- A380110: In the base 4 expansion of n: map 0->0, 1->1, 2->1, 3->2.

Offset 0, canonical program `A380110.P5586239892308066860`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380110 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A380110.P5586239892308066860.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380110.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380353.P13682949951401919771

`A051624(A000124(n))`
-/

namespace A380353.P13682949951401919771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051624 (A000124 n).toNat

end

end A380353.P13682949951401919771

noncomputable section

/-- A380353: a(n) = (n^2 - n + 2) * (5*n^2 - 5*n + 2) / 4.

Offset 1, canonical program `A380353.P13682949951401919771`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380353 (n : ℕ) : ℤ :=
  A380353.P13682949951401919771.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380353.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380484.P430126235261906034

`A079998(floor(n/6))`
-/

namespace A380484.P430126235261906034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079998 ⌊(n : ℚ) / 6⌋.toNat

end

end A380484.P430126235261906034

noncomputable section

/-- A380484: a(n) = 1 if n is congruent to {0, 1, 2, 3, 4, 5} mod 30, otherwise 0.

Offset 0, canonical program `A380484.P430126235261906034`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380484 (n : ℕ) : ℤ :=
  A380484.P430126235261906034.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380484.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380551.P2476517037860401760

`∑{d}[n+1, A008683((n+1)/#)*C(3*#-1, #-1)*2/(3*#-1)]`
-/

namespace A380551.P2476517037860401760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (Nat.choose ((3 * d : ℤ) - 1).toNat ((d : ℤ) - 1).toNat : ℤ) * 2 : ℚ) / ((3 * d : ℤ) - 1 : ℚ)

end

end A380551.P2476517037860401760

noncomputable section

/-- A380551: G.f. A(x) satisfies x = Sum_{n>=1} A( x^n*(1-x)^(2*n) ).

Offset 1, canonical program `A380551.P2476517037860401760`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380551 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A380551.P2476517037860401760.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380551.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380552.P14386878814842490116

`∑{d}[n+1, A008683((n+1)/#)*C(4*#-1, #-1)*3/(4*#-1)]`
-/

namespace A380552.P14386878814842490116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (Nat.choose ((4 * d : ℤ) - 1).toNat ((d : ℤ) - 1).toNat : ℤ) * 3 : ℚ) / ((4 * d : ℤ) - 1 : ℚ)

end

end A380552.P14386878814842490116

noncomputable section

/-- A380552: G.f. A(x) satisfies x = Sum_{n>=1} A( x^n*(1-x)^(3*n) ).

Offset 1, canonical program `A380552.P14386878814842490116`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380552 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A380552.P14386878814842490116.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380552.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380553.P12542287577920186072

`∑{d}[n+1, A008683((n+1)/#)*C(5*#-1, #-1)*4/(5*#-1)]`
-/

namespace A380553.P12542287577920186072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (Nat.choose ((5 * d : ℤ) - 1).toNat ((d : ℤ) - 1).toNat : ℤ) * 4 : ℚ) / ((5 * d : ℤ) - 1 : ℚ)

end

end A380553.P12542287577920186072

noncomputable section

/-- A380553: G.f. A(x) satisfies x = Sum_{n>=1} A( x^n*(1-x)^(4*n) ).

Offset 1, canonical program `A380553.P12542287577920186072`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380553 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A380553.P12542287577920186072.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380553.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380579.P8739931289538626971

`A001651(row(n)+1)-col(n)`
-/

namespace A380579.P8739931289538626971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (SequenceMachineLib.triRow n + 1) - (SequenceMachineLib.triCol n : ℤ)

end

end A380579.P8739931289538626971

noncomputable section

/-- A380579: Triangle read by rows in which row n lists n successive integers in descending order starting with the n-th positive integer not divisible by 3, with n >= 1 and 1 <= k <= n.

Offset 1, canonical program `A380579.P8739931289538626971`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380579 (n : ℕ) : ℤ :=
  A380579.P8739931289538626971.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380579.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380763.P586275446285360426

`A000217(A053615(n))`
-/

namespace A380763.P586275446285360426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A053615 n).toNat

end

end A380763.P586275446285360426

noncomputable section

/-- A380763: List triangular numbers up to increasingly large values and back down to 0.

Offset 0, canonical program `A380763.P586275446285360426`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380763 (n : ℕ) : ℤ :=
  A380763.P586275446285360426.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380763.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380790.P2652784624826150341

`A100104(A000040(n+2))+A048153(A000040(n+2))-1`
-/

namespace A380790.P2652784624826150341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100104 (A000040 (n + 2)).toNat + A048153 (A000040 (n + 2)).toNat - 1

end

end A380790.P2652784624826150341

noncomputable section

/-- A380790: Length of the n-th Golomb ruler constructed by the Paul Erdős and Pál Turán formula.

Offset 2, canonical program `A380790.P2652784624826150341`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380790 (n : ℕ) : ℤ :=
  A380790.P2652784624826150341.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380790.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380821.P10996316985306517664

`2*A000032(n)+1`
-/

namespace A380821.P10996316985306517664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000032 n + 1

end

end A380821.P10996316985306517664

noncomputable section

/-- A380821: Length of the short leg in the unique primitive Pythagorean triple whose inradius is A000032(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A380821.P10996316985306517664`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380821 (n : ℕ) : ℤ :=
  A380821.P10996316985306517664.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380821.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380823.P15923719920850826478

`(A000032(n)+1)*(2*A000032(n)+1)`
-/

namespace A380823.P15923719920850826478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000032 n + 1) * (2 * A000032 n + 1)

end

end A380823.P15923719920850826478

noncomputable section

/-- A380823: Semiperimeter of the unique primitive Pythagorean triple whose inradius is A000032(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A380823.P15923719920850826478`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380823 (n : ℕ) : ℤ :=
  A380823.P15923719920850826478.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380823.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380824.P12530804268031175926

`A000032(n)*(A000032(n)+1)*(2*A000032(n)+1)`
-/

namespace A380824.P12530804268031175926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * (A000032 n + 1) * (2 * A000032 n + 1)

end

end A380824.P12530804268031175926

noncomputable section

/-- A380824: Area of the unique primitive Pythagorean triple whose inradius is A000032(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A380824.P12530804268031175926`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380824 (n : ℕ) : ℤ :=
  A380824.P12530804268031175926.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380824.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380855.P12946928765439253338

`a(A053645(n))-a(A053645(n-1))` with `a(0)=1, a(1)=0`
-/

namespace A380855.P12946928765439253338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (A053645 n).toNat - a (A053645 (n - 1)).toNat

end

end A380855.P12946928765439253338

noncomputable section

/-- A380855: The unique sequence starting with a(0) = 1, a(1) = 0 and partial sums are 1 followed by the sequence terms themselves repeated in successive blocks a(0..2^k-1) for k >= 0.

Offset 0, canonical program `A380855.P12946928765439253338`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380855 (n : ℕ) : ℤ :=
  A380855.P12946928765439253338.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380855.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380960.P14528990618773538882

`A003849(n)+n`
-/

namespace A380960.P14528990618773538882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n + (n : ℤ)

end

end A380960.P14528990618773538882

noncomputable section

/-- A380960: Sum of n and the n-th bit of the infinite Fibonacci word.

Offset 0, canonical program `A380960.P14528990618773538882`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380960 (n : ℕ) : ℤ :=
  A380960.P14528990618773538882.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380960.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381009.P15990344275163368300

`A381005(n+1)*A381006(n+1)/2`
-/

namespace A381009.P15990344275163368300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A381005 (n + 1) * A381006 (n + 1) : ℚ) / 2

end

end A381009.P15990344275163368300

noncomputable section

/-- A381009: Ordered areas of the Pythagorean triangles defined by a = 2^(4n) + 2^(2n+1), b = 2^(4n) - 2^(4n-2) - 2^(2n) - 1, c = 2^(4n) + 2^(4n-2) + 2^(2n) + 1.

Offset 1, canonical program `A381009.P15990344275163368300`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381009 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A381009.P15990344275163368300.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381009.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381288.P16481357389649938989

`a(n-1)+(-1)^(n-1)*(A104521(n-1)+1)` with `a(0)=0`
-/

namespace A381288.P16481357389649938989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (-1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A104521 (n - 1) + 1 : ℚ)

end

end A381288.P16481357389649938989

noncomputable section

/-- A381288: Partial alternating sums of the trajectory of 2 under the morphism 2->{2,1,2}, 1->{2}.

Offset 0, canonical program `A381288.P16481357389649938989`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381288 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A381288.P16481357389649938989.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381288.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381483.P13239247248519645367

`A000108(n)*(A000108(n)+1)*(2*A000108(n)+1)`
-/

namespace A381483.P13239247248519645367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (A000108 n + 1) * (2 * A000108 n + 1)

end

end A381483.P13239247248519645367

noncomputable section

/-- A381483: Area of the unique primitive Pythagorean triple whose inradius is A000108(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A381483.P13239247248519645367`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381483 (n : ℕ) : ℤ :=
  A381483.P13239247248519645367.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381483.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381605.P16693958635226337192

`A001221((n+1)^3+1)`
-/

namespace A381605.P16693958635226337192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((n + 1) ^ 3 + 1)

end

end A381605.P16693958635226337192

noncomputable section

/-- A381605: Number of distinct prime divisors of n^3+1.

Offset 1, canonical program `A381605.P16693958635226337192`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381605 (n : ℕ) : ℤ :=
  A381605.P16693958635226337192.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381605.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381721.P9195889644798697899

`2*A000032(n)²+4*A000032(n)+1`
-/

namespace A381721.P9195889644798697899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000032 n ^ 2 + 4 * A000032 n + 1

end

end A381721.P9195889644798697899

noncomputable section

/-- A381721: Sum of the legs of the unique primitive Pythagorean triple whose inradius is A000032(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A381721.P9195889644798697899`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381721 (n : ℕ) : ℤ :=
  A381721.P9195889644798697899.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381721.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381745.P17773315950440730755

`∑{#}[2*n, (-1)^#*A006632(#+1)*A006632(2*n-#+1)]`
-/

namespace A381745.P17773315950440730755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1) ^ k * A006632 (k + 1) * A006632 ((2 * n : ℤ) - (k : ℤ) + 1).toNat

end

end A381745.P17773315950440730755

noncomputable section

/-- A381745: Expansion of exp( Sum_{k>=1} binomial(8*k-1,2*k) * x^k/k ).

Offset 0, canonical program `A381745.P17773315950440730755`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381745 (n : ℕ) : ℤ :=
  A381745.P17773315950440730755.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381745.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381746.P10912361923449679269

`∑{#}[2*n, (-1)^#*A118971(#)*A118971(2*n-#)]`
-/

namespace A381746.P10912361923449679269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1) ^ k * A118971 k * A118971 (2 * n - k)

end

end A381746.P10912361923449679269

noncomputable section

/-- A381746: Expansion of exp( Sum_{k>=1} binomial(10*k-1,2*k) * x^k/k ).

Offset 0, canonical program `A381746.P10912361923449679269`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381746 (n : ℕ) : ℤ :=
  A381746.P10912361923449679269.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381746.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381794.P7718667864799923666

`4^(n+1)-A000032(2*(n+1))+2*(2^(n+1)-1)*A000032(n+1)+1+4*(n+1)`
-/

namespace A381794.P7718667864799923666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ (n + 1) : ℤ) - A000032 (2 * (n + 1)) + 2 * ((2 ^ (n + 1) : ℤ) - 1) * A000032 (n + 1) + 1 + (4 * (n + 1) : ℤ)

end

end A381794.P7718667864799923666

noncomputable section

/-- A381794: Number of connected dominating sets in the n-trapezohedral graph.

Offset 1, canonical program `A381794.P7718667864799923666`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381794 (n : ℕ) : ℤ :=
  A381794.P7718667864799923666.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381794.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381889.P3484252584869434515

`∑{#}[n, C(n, #)*A001405(n-#)*A001700(#)]`
-/

namespace A381889.P3484252584869434515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A001405 (n - k) * A001700 k

end

end A381889.P3484252584869434515

noncomputable section

/-- A381889: Expansion of e.g.f.: (BesselI(0, 2*x) + BesselI(1, 2*x))^2*exp(2*x).

Offset 0, canonical program `A381889.P3484252584869434515`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381889 (n : ℕ) : ℤ :=
  A381889.P3484252584869434515.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381889.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381936.P12087702485280823730

`∑{d}[n+1, A008683(#)*A000045((n+1)/#-1)]`
-/

namespace A381936.P12087702485280823730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A000045 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A381936.P12087702485280823730

noncomputable section

/-- A381936: Number of primitive binary words of length n that avoid 11, start with 1 and end with 0.

Offset 1, canonical program `A381936.P12087702485280823730`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381936 (n : ℕ) : ℤ :=
  A381936.P12087702485280823730.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381936.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381982.P13927782900516542415

`n!*∑{#}[n, (#+1)^(n-#)*A001764(#)/(n-#)!]`
-/

namespace A381982.P13927782900516542415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), (k + 1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A001764 k : ℚ) / (Nat.factorial ((n : ℤ) - (k : ℤ)).toNat : ℚ))

end

end A381982.P13927782900516542415

noncomputable section

/-- A381982: E.g.f. A(x) satisfies A(x) = exp(x) * C(x*A(x)), where C(x) = 1 + x*C(x)^2 is the g.f. of A000108.

Offset 0, canonical program `A381982.P13927782900516542415`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381982 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A381982.P13927782900516542415.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381982.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381984.P3035649831683204040

`n!*∑{#}[n, A001764(#)/(n-#)!]`
-/

namespace A381984.P3035649831683204040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), (A001764 k : ℚ) / (Nat.factorial ((n : ℤ) - (k : ℤ)).toNat : ℚ))

end

end A381984.P3035649831683204040

noncomputable section

/-- A381984: E.g.f. A(x) satisfies A(x) = exp(x) * B(x), where B(x) = 1 + x*B(x)^3 is the g.f. of A001764.

Offset 0, canonical program `A381984.P3035649831683204040`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381984 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A381984.P3035649831683204040.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381984.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381998.P5580938708962783349

`n!*∑{#}[n, (2*#)^(n-#)*A000108(#)/(n-#)!]`
-/

namespace A381998.P5580938708962783349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), (2 * k : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A000108 k : ℚ) / (Nat.factorial ((n : ℤ) - (k : ℤ)).toNat : ℚ))

end

end A381998.P5580938708962783349

noncomputable section

/-- A381998: E.g.f. A(x) satisfies A(x) = 1 + x*exp(2*x)*A(x)^2.

Offset 0, canonical program `A381998.P5580938708962783349`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381998 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A381998.P5580938708962783349.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381998.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381999.P8002382333225017109

`n!*∑{#}[n, (2*#)^(n-#)*A001764(#)/(n-#)!]`
-/

namespace A381999.P8002382333225017109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), (2 * k : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A001764 k : ℚ) / (Nat.factorial ((n : ℤ) - (k : ℤ)).toNat : ℚ))

end

end A381999.P8002382333225017109

noncomputable section

/-- A381999: E.g.f. A(x) satisfies A(x) = 1 + x*exp(2*x)*A(x)^3.

Offset 0, canonical program `A381999.P8002382333225017109`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381999 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A381999.P8002382333225017109.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381999.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382069.P7816256565130258159

`A000217(n+1)+A000290(n+1)-A018804(n+1)`
-/

namespace A382069.P7816256565130258159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + A000290 (n + 1) - A018804 (n + 1)

end

end A382069.P7816256565130258159

noncomputable section

/-- A382069: Row sums of the triangular array in A199408.

Offset 1, canonical program `A382069.P7816256565130258159`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382069 (n : ℕ) : ℤ :=
  A382069.P7816256565130258159.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382069.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382070.P7201143770269954328

`(A000040(n+1)+1)*(2*A000040(n+1)+1)`
-/

namespace A382070.P7201143770269954328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) + 1) * (2 * A000040 (n + 1) + 1)

end

end A382070.P7201143770269954328

noncomputable section

/-- A382070: Semiperimeter of the unique primitive Pythagorean triple whose inradius is the n-th prime and whose short leg is an odd number.

Offset 1, canonical program `A382070.P7201143770269954328`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382070 (n : ℕ) : ℤ :=
  A382070.P7201143770269954328.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382070.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382097.P6504080317338827745

`2*A000040(n+1)²+4*A000040(n+1)+1`
-/

namespace A382097.P6504080317338827745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) ^ 2 + 4 * A000040 (n + 1) + 1

end

end A382097.P6504080317338827745

noncomputable section

/-- A382097: Sum of the legs of the unique primitive Pythagorean triple whose inradius is the n-th prime and whose short leg is an odd number.

Offset 1, canonical program `A382097.P6504080317338827745`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382097 (n : ℕ) : ℤ :=
  A382097.P6504080317338827745.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382097.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382114.P18285456847627497086

`(A000108(n)+1)*(2*A000108(n)+1)`
-/

namespace A382114.P18285456847627497086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000108 n + 1) * (2 * A000108 n + 1)

end

end A382114.P18285456847627497086

noncomputable section

/-- A382114: Semiperimeter of the unique primitive Pythagorean triple whose inradius is A000108(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A382114.P18285456847627497086`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382114 (n : ℕ) : ℤ :=
  A382114.P18285456847627497086.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382114.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382185.P2903184745648601010

`A000073(n+1)%A000040(n+1)`
-/

namespace A382185.P2903184745648601010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000073 (n + 1)) (A000040 (n + 1))

end

end A382185.P2903184745648601010

noncomputable section

/-- A382185: a(n) is the n-th tribonacci number modulo the n-th prime.

Offset 1, canonical program `A382185.P2903184745648601010`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382185 (n : ℕ) : ℤ :=
  A382185.P2903184745648601010.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382185.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382308.P2156442247495806737

`2*A000045(n)²+4*A000045(n)+1`
-/

namespace A382308.P2156442247495806737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 n ^ 2 + 4 * A000045 n + 1

end

end A382308.P2156442247495806737

noncomputable section

/-- A382308: Sum of the legs of the unique primitive Pythagorean triple whose inradius is A000045(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A382308.P2156442247495806737`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382308 (n : ℕ) : ℤ :=
  A382308.P2156442247495806737.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382308.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382379.P10739304604407682157

`2*A000032(n)*(A000032(n)-1)`
-/

namespace A382379.P10739304604407682157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000032 n * (A000032 n - 1)

end

end A382379.P10739304604407682157

noncomputable section

/-- A382379: Length of the long leg in the unique primitive Pythagorean triple (x,y,z) such that (x-y+z)/2 is A000032(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A382379.P10739304604407682157`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382379 (n : ℕ) : ℤ :=
  A382379.P10739304604407682157.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382379.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382403.P3989565978597500961

`∑{#}[n, A039599(C(n+1, 2)+#)^3]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A382403.P3989565978597500961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A039599 (Nat.choose (n + 1) 2 + k) ^ 3

end

end A382403.P3989565978597500961

noncomputable section

/-- A382403: a(n) = Sum_{k=0..n} A039599(n,k)^3.

Offset 0, canonical program `A382403.P3989565978597500961`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382403 (n : ℕ) : ℤ :=
  A382403.P3989565978597500961.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382403.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382404.P13652461142879564968

`-∑{#}[n, (-1)^#*A039599(C(n+1, 2)+#)^3]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A382404.P13652461142879564968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ k ∈ Finset.range (f1 n + 1), (-1) ^ k * A039599 (Nat.choose (n + 1) 2 + k) ^ 3)

end

end A382404.P13652461142879564968

noncomputable section

/-- A382404: a(n) = -Sum_{k=0..n} (-1)^k * A039599(n,k)^3.

Offset 0, canonical program `A382404.P13652461142879564968`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382404 (n : ℕ) : ℤ :=
  A382404.P13652461142879564968.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382404.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382410.P3198826714146822108

`A000032(n)*(A000032(n)-1)*(2*A000032(n)-1)`
-/

namespace A382410.P3198826714146822108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * (A000032 n - 1) * (2 * A000032 n - 1)

end

end A382410.P3198826714146822108

noncomputable section

/-- A382410: Area of the unique primitive Pythagorean triple (a,b,c) such that (a-b+c)/2 is A000032(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A382410.P3198826714146822108`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382410 (n : ℕ) : ℤ :=
  A382410.P3198826714146822108.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382410.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382411.P13968524649925157096

`A000142(n+1)*A152947(n+1)`
-/

namespace A382411.P13968524649925157096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A152947 (n + 1)

end

end A382411.P13968524649925157096

noncomputable section

/-- A382411: a(n) is the greatest possible length of a circular sequence on n symbols such that: no two adjacent symbols are the same, any group of n adjacent symbols contains at least n-1 different symbols, and all groups of n adjacent symbols within the sequence are unique.

Offset 1, canonical program `A382411.P13968524649925157096`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382411 (n : ℕ) : ℤ :=
  A382411.P13968524649925157096.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382411.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382434.P4264713124255432971

`2*A129123(n)-1`
-/

namespace A382434.P4264713124255432971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129123 n - 1

end

end A382434.P4264713124255432971

noncomputable section

/-- A382434: a(n) = Sum_{k=0..n} ( binomial(n,k) - binomial(n,k-1) )^4.

Offset 0, canonical program `A382434.P4264713124255432971`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382434 (n : ℕ) : ℤ :=
  A382434.P4264713124255432971.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382434.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382435.P2359408272189237721

`∑{#}[n, A156644(C(n+1, 2)+#)^6]`
-/

namespace A382435.P2359408272189237721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A156644 (Nat.choose (n + 1) 2 + k) ^ 6

end

end A382435.P2359408272189237721

noncomputable section

/-- A382435: a(n) = Sum_{k=0..n} ( binomial(n,k) - binomial(n,k-1) )^6.

Offset 0, canonical program `A382435.P2359408272189237721`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382435 (n : ℕ) : ℤ :=
  A382435.P2359408272189237721.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382435.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382609.P6423727230008733317

`(A000045(n)+1)*(2*A000045(n)+1)`
-/

namespace A382609.P6423727230008733317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 n + 1) * (2 * A000045 n + 1)

end

end A382609.P6423727230008733317

noncomputable section

/-- A382609: Semiperimeter of the unique primitive Pythagorean triple whose inradius is A000045(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A382609.P6423727230008733317`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382609 (n : ℕ) : ℤ :=
  A382609.P6423727230008733317.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382609.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382610.P14625043378136783450

`A000045(n)*(A000045(n)+1)*(2*A000045(n)+1)`
-/

namespace A382610.P14625043378136783450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * (A000045 n + 1) * (2 * A000045 n + 1)

end

end A382610.P14625043378136783450

noncomputable section

/-- A382610: Area of the unique primitive Pythagorean triple whose inradius is A000045(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A382610.P14625043378136783450`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382610 (n : ℕ) : ℤ :=
  A382610.P14625043378136783450.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382610.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382629.P4671971857185896227

`(row(n)-col(n))*T(n-1,k-1)+2*(col(n)+1)*T(n-1,k)+A102365(C(row(n)+1, 2)+col(n))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A382629.P4671971857185896227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * SequenceMachineLib.triUpLeft a n + (2 * (SequenceMachineLib.triCol n + 1) : ℤ) * SequenceMachineLib.triUp a n + A102365 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n)

end

end A382629.P4671971857185896227

noncomputable section

/-- A382629: Triangle T(n,k), n >= 0, 0 <= k <= n, read by rows, where T(n,k) = (n-k)*T(n-1,k-1) + 2*(k+1)*T(n-1,k) + A102365(n,k) with T(n,k) = 0 if k < 0 or k > n.

Offset 0, canonical program `A382629.P4671971857185896227`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382629 (n : ℕ) : ℤ :=
  A382629.P4671971857185896227.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382629.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382668.P12531874329124797350

`A000108(n+3)-A000108(n+1)-2*A000108(n)`
-/

namespace A382668.P12531874329124797350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 3) - A000108 (n + 1) - 2 * A000108 n

end

end A382668.P12531874329124797350

noncomputable section

/-- A382668: a(n) = C(n+1) - C(n-1) - 2*C(n-2) where C(n) = A000108(n) are the Catalan numbers.

Offset 2, canonical program `A382668.P12531874329124797350`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382668 (n : ℕ) : ℤ :=
  A382668.P12531874329124797350.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382668.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382733.P7983275454340441927

`A382732(n)+1`
-/

namespace A382733.P7983275454340441927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382732 n + 1

end

end A382733.P7983275454340441927

noncomputable section

/-- A382733: Number of hypercubic bipartitions of n.

Offset 0, canonical program `A382733.P7983275454340441927`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382733 (n : ℕ) : ℤ :=
  A382733.P7983275454340441927.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382733.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382843.P16467974130948964599

`2*A000045(n)*(A000045(n)-1)`
-/

namespace A382843.P16467974130948964599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 n * (A000045 n - 1)

end

end A382843.P16467974130948964599

noncomputable section

/-- A382843: Length of the long leg in the unique primitive Pythagorean triple (x,y,z) such that (x-y+z)/2 = A000045(n) and its long leg and hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A382843.P16467974130948964599`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382843 (n : ℕ) : ℤ :=
  A382843.P16467974130948964599.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382843.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382844.P4842604271225019851

`A000045(n)*(A000045(n)-1)*(2*A000045(n)-1)`
-/

namespace A382844.P4842604271225019851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * (A000045 n - 1) * (2 * A000045 n - 1)

end

end A382844.P4842604271225019851

noncomputable section

/-- A382844: Area of the unique primitive Pythagorean triple (a,b,c) such that (a-b+c)/2 = A000045(n) and its long leg and hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A382844.P4842604271225019851`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382844 (n : ℕ) : ℤ :=
  A382844.P4842604271225019851.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382844.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382845.P16632734929146409984

`2*A000045(n)²-1`
-/

namespace A382845.P16632734929146409984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 n ^ 2 - 1

end

end A382845.P16632734929146409984

noncomputable section

/-- A382845: Sum of the legs of the unique primitive Pythagorean triple (a,b,c) such that (a-b+c)/2 = A000045(n) and its long leg and hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A382845.P16632734929146409984`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382845 (n : ℕ) : ℤ :=
  A382845.P16632734929146409984.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382845.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382989.P8482641082575908324

`(3^(n+1)+2*A002426(n+1)-A002426(n+2)-3*A002426(n+3)+A002426(n+4))/2`
-/

namespace A382989.P8482641082575908324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ (n + 1) : ℤ) + 2 * A002426 (n + 1) - A002426 (n + 2) - 3 * A002426 (n + 3) + A002426 (n + 4) : ℚ) / 2

end

end A382989.P8482641082575908324

noncomputable section

/-- A382989: a(n) is the total sum of area over all (>=,>=)-polyominoes of length n.

Offset 0, canonical program `A382989.P8482641082575908324`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382989 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382989.P8482641082575908324.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382989.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A383012.P15133058864581982057

`∑{d}[n+1, A008683((n+1)/#)*(-(n+1))^(#-1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A383012.P15133058864581982057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℚ) * (-(n + 1 : ℤ) : ℚ) ^ ((d : ℤ) - 1 : ℤ)

end

end A383012.P15133058864581982057

noncomputable section

/-- A383012: a(n) = Sum_{d|n} mu(n/d) * (-n)^(d-1).

Offset 1, canonical program `A383012.P15133058864581982057`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383012 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A383012.P15133058864581982057.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383012.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A383039.P9143552430524653141

`2*A001254(n)-1`
-/

namespace A383039.P9143552430524653141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001254 n - 1

end

end A383039.P9143552430524653141

noncomputable section

/-- A383039: Sum of the legs of the unique primitive Pythagorean triple (a,b,c) such that (a-b+c)/2 = A000032(n) and its long leg and hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A383039.P9143552430524653141`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383039 (n : ℕ) : ℤ :=
  A383039.P9143552430524653141.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383039.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A383225.P9453964147066224758

`A000129(n+1)*A000129(n+2)-(-1)^n`
-/

namespace A383225.P9453964147066224758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) * A000129 (n + 2) - (-1) ^ n

end

end A383225.P9453964147066224758

noncomputable section

/-- A383225: a(n) = sqrt(1 + P(n)*P(n+1)*P(n+2)*P(n+3)) where P(n) = A000129(n) are the Pell numbers.

Offset 0, canonical program `A383225.P9453964147066224758`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383225 (n : ℕ) : ℤ :=
  A383225.P9453964147066224758.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383225.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A383251.P10776672623636940607

`2*A000108(n)+1`
-/

namespace A383251.P10776672623636940607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000108 n + 1

end

end A383251.P10776672623636940607

noncomputable section

/-- A383251: Short leg of the unique primitive Pythagorean triple whose inradius is A000108(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A383251.P10776672623636940607`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383251 (n : ℕ) : ℤ :=
  A383251.P10776672623636940607.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383251.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A383414.P16717646191007434327

`A000302(row(n)-col(n))*A004771(col(n))`
-/

namespace A383414.P16717646191007434327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) * A004771 (SequenceMachineLib.triCol n)

end

end A383414.P16717646191007434327

noncomputable section

/-- A383414: Array read by ascending antidiagonals: A(n,k) = 4^n*(8*k + 7).

Offset 0, canonical program `A383414.P16717646191007434327`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383414 (n : ℕ) : ℤ :=
  A383414.P16717646191007434327.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383414.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A383776.P7136280431778039087

`(11*n+3+6/(n+2))*A000108(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A383776.P7136280431778039087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 * n + 3 : ℚ) + 6 / (n + 2 : ℚ)) * (A000108 n : ℚ)

end

end A383776.P7136280431778039087

noncomputable section

/-- A383776: a(n) = (11*n + 3 + 6/(n+2)) * Catalan(n).

Offset 0, canonical program `A383776.P7136280431778039087`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383776 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A383776.P7136280431778039087.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383776.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A383795.P16741410828582272731

`∑{d}[n+1, A001157(gcd(#, (n+1)/#))]`
-/

namespace A383795.P16741410828582272731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001157 (Int.gcd (d : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))))

end

end A383795.P16741410828582272731

noncomputable section

/-- A383795: Dirichlet g.f.: zeta(2*s-2) * zeta(s)^2.

Offset 1, canonical program `A383795.P16741410828582272731`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383795 (n : ℕ) : ℤ :=
  A383795.P16741410828582272731.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383795.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A383833.P17811188111289876932

`A000217(n)*(A000217(n)+1)*(2*A000217(n)+1)`
-/

namespace A383833.P17811188111289876932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * (A000217 n + 1) * (2 * A000217 n + 1)

end

end A383833.P17811188111289876932

noncomputable section

/-- A383833: Area of the unique primitive Pythagorean triple whose inradius is A000217(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A383833.P17811188111289876932`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383833 (n : ℕ) : ℤ :=
  A383833.P17811188111289876932.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383833.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A383834.P10743144755230545223

`6*A006007(n)+1`
-/

namespace A383834.P10743144755230545223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A006007 n + 1

end

end A383834.P10743144755230545223

noncomputable section

/-- A383834: Sum of the legs of the unique primitive Pythagorean triple whose inradius is A000217(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A383834.P10743144755230545223`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383834 (n : ℕ) : ℤ :=
  A383834.P10743144755230545223.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383834.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A383922.P6416788775665426922

`A002104(n)+A002104(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A383922.P6416788775665426922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002104 n + A002104 (n + 1) - 1

end

end A383922.P6416788775665426922

noncomputable section

/-- A383922: a(n) = A002104(n) + A002104(n+1) - 1.

Offset 0, canonical program `A383922.P6416788775665426922`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383922 (n : ℕ) : ℤ :=
  A383922.P6416788775665426922.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383922.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A383957.P8900195989436403223

`2*A000108(n)²+4*A000108(n)+1`
-/

namespace A383957.P8900195989436403223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000108 n ^ 2 + 4 * A000108 n + 1

end

end A383957.P8900195989436403223

noncomputable section

/-- A383957: Sum of the legs of the unique primitive Pythagorean triple whose inradius is A000108(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A383957.P8900195989436403223`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383957 (n : ℕ) : ℤ :=
  A383957.P8900195989436403223.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383957.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384129.P5290801417616881709

`A132393(C(3*n+1, 2)+2*n)`
-/

namespace A384129.P5290801417616881709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (Nat.choose (3 * n + 1) 2 + 2 * n)

end

end A384129.P5290801417616881709

noncomputable section

/-- A384129: Number of permutations of 3*n objects with exactly 2*n cycles.

Offset 0, canonical program `A384129.P5290801417616881709`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384129 (n : ℕ) : ℤ :=
  A384129.P5290801417616881709.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384129.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384130.P10789355595204866454

`A132393(C(4*n+1, 2)+3*n)`
-/

namespace A384130.P10789355595204866454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (Nat.choose (4 * n + 1) 2 + 3 * n)

end

end A384130.P10789355595204866454

noncomputable section

/-- A384130: Number of permutations of 4*n objects with exactly 3*n cycles.

Offset 0, canonical program `A384130.P10789355595204866454`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384130 (n : ℕ) : ℤ :=
  A384130.P10789355595204866454.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384130.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384210.P3902417993717518449

`∑{#}[floor(sqrt(n+1))-1, A000720(floor((n+1)/(#+1)²))]`
-/

namespace A384210.P3902417993717518449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt (n + 1) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A000720 ⌊(n + 1 : ℚ) / ((k + 1) ^ 2 : ℚ)⌋.toNat

end

end A384210.P3902417993717518449

noncomputable section

/-- A384210: Number of numbers <= n of the form p * m^2, where p is a prime and m is an integer >= 1.

Offset 1, canonical program `A384210.P3902417993717518449`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384210 (n : ℕ) : ℤ :=
  A384210.P3902417993717518449.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384210.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384561.P5420392690080599210

`A382644(n+4)/2`
-/

namespace A384561.P5420392690080599210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382644 (n + 4) : ℚ) / 2

end

end A384561.P5420392690080599210

noncomputable section

/-- A384561: One fourth of the number of permutations of [n] with |p(i+1) - p(i)| >= 2, for i = 1..(n-1) and n appears at position i = 1 or i = n.

Offset 5, canonical program `A384561.P5420392690080599210`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384561 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A384561.P5420392690080599210.a (n - 5))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384561.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384688.P10707158175314299968

`ceil(A053186(4*n+1)/2)`
-/

namespace A384688.P10707158175314299968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A053186 (4 * n + 1) : ℚ) / 2⌉

end

end A384688.P10707158175314299968

noncomputable section

/-- A384688: Runs of t in the range 0 <= t <= k and the same parity as k, for successive k >= 0.

Offset 0, canonical program `A384688.P10707158175314299968`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384688 (n : ℕ) : ℤ :=
  A384688.P10707158175314299968.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384688.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384922.P6445870207053674092

`A002379(n)%10`
-/

namespace A384922.P6445870207053674092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002379 n) 10

end

end A384922.P6445870207053674092

noncomputable section

/-- A384922: a(n) is the first digit to the left of the decimal point in (3/2)^n.

Offset 0, canonical program `A384922.P6445870207053674092`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384922 (n : ℕ) : ℤ :=
  A384922.P6445870207053674092.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384922.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385065.P1047343703517060890

`∑{#}[floor(n/2), C(2*(n-2*#), #)*A001764(n-2*#)]`
-/

namespace A385065.P1047343703517060890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose (2 * ((n : ℤ) - (2 * k : ℤ))).toNat k : ℤ) * A001764 (n - 2 * k)

end

end A385065.P1047343703517060890

noncomputable section

/-- A385065: G.f. A(x) satisfies A(x) = 1 + x*(1+x^2)^2*A(x)^3.

Offset 0, canonical program `A385065.P1047343703517060890`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385065 (n : ℕ) : ℤ :=
  A385065.P1047343703517060890.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385065.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385317.P4080566454469139856

`∑{#}[floor(n/2), C(3*(n-2*#), #)*A001764(n-2*#)]`
-/

namespace A385317.P4080566454469139856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose (3 * ((n : ℤ) - (2 * k : ℤ))).toNat k : ℤ) * A001764 (n - 2 * k)

end

end A385317.P4080566454469139856

noncomputable section

/-- A385317: G.f. A(x) satisfies A(x) = 1 + x*(1+x^2)^3*A(x)^3.

Offset 0, canonical program `A385317.P4080566454469139856`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385317 (n : ℕ) : ℤ :=
  A385317.P4080566454469139856.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385317.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385393.P12160656990847827648

`A384715(n)/A001316(n)`
-/

namespace A385393.P12160656990847827648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384715 n : ℚ) / (A001316 n : ℚ)

end

end A385393.P12160656990847827648

noncomputable section

/-- A385393: a(n) = (Sum_{k=0..n} (binomial(n, k) mod 4)) / 2^bitcount(n).

Offset 0, canonical program `A385393.P12160656990847827648`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385393 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A385393.P12160656990847827648.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385393.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385394.P16313321602323093945

`A385285(n)/A001316(n)`
-/

namespace A385394.P16313321602323093945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385285 n : ℚ) / (A001316 n : ℚ)

end

end A385394.P16313321602323093945

noncomputable section

/-- A385394: a(n) = (Sum_{k=0..n} (binomial(n, k) mod 8)) / 2^bitcount(n).

Offset 0, canonical program `A385394.P16313321602323093945`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385394 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A385394.P16313321602323093945.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385394.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385468.P12772888741653451822

`∑{#}[n, A001147(#)*A111594(C(n+1, 2)+#)]`
-/

namespace A385468.P12772888741653451822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A001147 k * A111594 (Nat.choose (n + 1) 2 + k)

end

end A385468.P12772888741653451822

noncomputable section

/-- A385468: Expansion of e.g.f. 1/(1 - 2 * arctanh(x))^(1/2).

Offset 0, canonical program `A385468.P12772888741653451822`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385468 (n : ℕ) : ℤ :=
  A385468.P12772888741653451822.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385468.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385470.P5152266911723554094

`∑{#}[n, 2^#*#!*A111594(C(n+1, 2)+#)]`
-/

namespace A385470.P5152266911723554094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (2 ^ k * Nat.factorial k : ℤ) * A111594 (Nat.choose (n + 1) 2 + k)

end

end A385470.P5152266911723554094

noncomputable section

/-- A385470: Expansion of e.g.f. 1/(1 - 2 * arctanh(x)).

Offset 0, canonical program `A385470.P5152266911723554094`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385470 (n : ℕ) : ℤ :=
  A385470.P5152266911723554094.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385470.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385471.P13187066339902425731

`∑{#}[n, 3^#*#!*A111594(C(n+1, 2)+#)]`
-/

namespace A385471.P13187066339902425731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (3 ^ k * Nat.factorial k : ℤ) * A111594 (Nat.choose (n + 1) 2 + k)

end

end A385471.P13187066339902425731

noncomputable section

/-- A385471: Expansion of e.g.f. 1/(1 - 3 * arctanh(x)).

Offset 0, canonical program `A385471.P13187066339902425731`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385471 (n : ℕ) : ℤ :=
  A385471.P13187066339902425731.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385471.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385472.P7563898429269226586

`∑{#}[n, A001147(#)*2^(n-#)*A111594(C(n+1, 2)+#)]`
-/

namespace A385472.P7563898429269226586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A001147 k : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A111594 (Nat.choose (n + 1) 2 + k) : ℚ)

end

end A385472.P7563898429269226586

noncomputable section

/-- A385472: Expansion of e.g.f. 1/(1 - arctanh(2*x))^(1/2).

Offset 0, canonical program `A385472.P7563898429269226586`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385472 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A385472.P7563898429269226586.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385472.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385500.P4029368386387896681

`∑{#}[n, (#+1)^(#-1)*A111594(C(n+1, 2)+#)]`
-/

namespace A385500.P4029368386387896681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k + 1 : ℚ) ^ ((k : ℤ) - 1 : ℤ) * (A111594 (Nat.choose (n + 1) 2 + k) : ℚ)

end

end A385500.P4029368386387896681

noncomputable section

/-- A385500: Expansion of e.g.f. exp( -LambertW(-arctanh(x)) ).

Offset 0, canonical program `A385500.P4029368386387896681`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385500 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A385500.P4029368386387896681.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385500.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385501.P9567448862482462140

`∑{#}[n, (n+1)^(#-1)*A111594(C(n+1, 2)+#)]`
-/

namespace A385501.P9567448862482462140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (n + 1 : ℚ) ^ ((k : ℤ) - 1 : ℤ) * (A111594 (Nat.choose (n + 1) 2 + k) : ℚ)

end

end A385501.P9567448862482462140

noncomputable section

/-- A385501: Expansion of e.g.f. (1/x) * Series_Reversion( x * exp(-arctanh(x)) ).

Offset 0, canonical program `A385501.P9567448862482462140`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385501 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A385501.P9567448862482462140.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385501.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385502.P11236043155917727051

`∑{#}[n, (n-#+1)^(#-1)*A111594(C(n+1, 2)+#)]`
-/

namespace A385502.P11236043155917727051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((n : ℤ) - (k : ℤ) + 1 : ℚ) ^ ((k : ℤ) - 1 : ℤ) * (A111594 (Nat.choose (n + 1) 2 + k) : ℚ)

end

end A385502.P11236043155917727051

noncomputable section

/-- A385502: E.g.f. A(x) satisfies A(x) = exp( arctanh(x * A(x)) / A(x) ).

Offset 0, canonical program `A385502.P11236043155917727051`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385502 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A385502.P11236043155917727051.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385502.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385563.P12664143766579300426

`C(n+2, 2)*A002212(n+1)`
-/

namespace A385563.P12664143766579300426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℤ) * A002212 (n + 1)

end

end A385563.P12664143766579300426

noncomputable section

/-- A385563: Expansion of 1/((1-x) * (1-5*x))^(3/2).

Offset 0, canonical program `A385563.P12664143766579300426`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385563 (n : ℕ) : ℤ :=
  A385563.P12664143766579300426.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385563.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385625.P903000306843955043

`∑{d}[n+1, #*A000720(#)%2]`
-/

namespace A385625.P903000306843955043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * Int.tmod (A000720 d) 2

end

end A385625.P903000306843955043

noncomputable section

/-- A385625: Sum of the divisors d of n with an odd number of primes not exceeding d.

Offset 1, canonical program `A385625.P903000306843955043`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385625 (n : ℕ) : ℤ :=
  A385625.P903000306843955043.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385625.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385628.P264344674687448719

`∑{d}[n+1, #*(A000720(#)+1)%2]`
-/

namespace A385628.P264344674687448719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * Int.tmod (A000720 d + 1) 2

end

end A385628.P264344674687448719

noncomputable section

/-- A385628: Sum of the divisors d of n with an even number of primes not exceeding d.

Offset 1, canonical program `A385628.P264344674687448719`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385628 (n : ℕ) : ℤ :=
  A385628.P264344674687448719.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385628.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385728.P6895606513719186912

`C(n+2, 2)*A005572(n)`
-/

namespace A385728.P6895606513719186912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℤ) * A005572 n

end

end A385728.P6895606513719186912

noncomputable section

/-- A385728: Expansion of 1/((1-2*x) * (1-6*x))^(3/2).

Offset 0, canonical program `A385728.P6895606513719186912`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385728 (n : ℕ) : ℤ :=
  A385728.P6895606513719186912.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385728.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385813.P17013996345610110773

`C(n+2, 2)*A182401(n)`
-/

namespace A385813.P17013996345610110773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℤ) * A182401 n

end

end A385813.P17013996345610110773

noncomputable section

/-- A385813: Expansion of 1/((1-3*x) * (1-7*x))^(3/2).

Offset 0, canonical program `A385813.P17013996345610110773`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385813 (n : ℕ) : ℤ :=
  A385813.P17013996345610110773.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385813.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385977.P16877403268120504790

`2*A002315(n)*(A002315(n)+1)`
-/

namespace A385977.P16877403268120504790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002315 n * (A002315 n + 1)

end

end A385977.P16877403268120504790

noncomputable section

/-- A385977: Length of the long leg of the triangles defined in A377725.

Offset 0, canonical program `A385977.P16877403268120504790`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385977 (n : ℕ) : ℤ :=
  A385977.P16877403268120504790.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385977.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A386201.P11856909807172330877

`2*A000032(n)*(A000032(n)+1)`
-/

namespace A386201.P11856909807172330877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000032 n * (A000032 n + 1)

end

end A386201.P11856909807172330877

noncomputable section

/-- A386201: Lengths of the long leg in the unique primitive Pythagorean triple whose inradius is A000032(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A386201.P11856909807172330877`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386201 (n : ℕ) : ℤ :=
  A386201.P11856909807172330877.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386201.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A386291.P6378607592052834356

`2*A000108(n)*(A000108(n)+1)`
-/

namespace A386291.P6378607592052834356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000108 n * (A000108 n + 1)

end

end A386291.P6378607592052834356

noncomputable section

/-- A386291: Long leg of the unique primitive Pythagorean triple whose inradius is A000108(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A386291.P6378607592052834356`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386291 (n : ℕ) : ℤ :=
  A386291.P6378607592052834356.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386291.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A386362.P2959515689343458494

`∑{#}[n, 3^#*C(n, #)*A000108(#+1)]`
-/

namespace A386362.P2959515689343458494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (3 ^ k * Nat.choose n k : ℤ) * A000108 (k + 1)

end

end A386362.P2959515689343458494

noncomputable section

/-- A386362: Expansion of (1/x) * Series_Reversion( x/(1+7*x+9*x^2) ).

Offset 0, canonical program `A386362.P2959515689343458494`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386362 (n : ℕ) : ℤ :=
  A386362.P2959515689343458494.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386362.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A386389.P16183838799682373208

`∑{#}[n, 4^#*C(n, #)*A000108(#+1)]`
-/

namespace A386389.P16183838799682373208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (4 ^ k * Nat.choose n k : ℤ) * A000108 (k + 1)

end

end A386389.P16183838799682373208

noncomputable section

/-- A386389: Expansion of (1/x) * Series_Reversion( x/(1+9*x+16*x^2) ).

Offset 0, canonical program `A386389.P16183838799682373208`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386389 (n : ℕ) : ℤ :=
  A386389.P16183838799682373208.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386389.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A386496.P15916453764091789560

`∑{#}[floor(n/4), C(n-3*#, #)*A001764(n-3*#)]`
-/

namespace A386496.P15916453764091789560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose ((n : ℤ) - (3 * k : ℤ)).toNat k : ℤ) * A001764 (n - 3 * k)

end

end A386496.P15916453764091789560

noncomputable section

/-- A386496: G.f. A(x) satisfies A(x) = 1 + x*(1+x^3)*A(x)^3.

Offset 0, canonical program `A386496.P15916453764091789560`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386496 (n : ℕ) : ℤ :=
  A386496.P15916453764091789560.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386496.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A386517.P2721402725429736476

`60*A005809(n)/(n+2)`
-/

namespace A386517.P2721402725429736476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (60 * A005809 n : ℚ) / (n + 2 : ℚ)

end

end A386517.P2721402725429736476

noncomputable section

/-- A386517: a(n) = 60*binomial(3*n,n)/(n+2).

Offset 0, canonical program `A386517.P2721402725429736476`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386517 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A386517.P2721402725429736476.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386517.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A386642.P18258894599634655696

`(n+1)^(n+1)-A204042(n+1)+1`
-/

namespace A386642.P18258894599634655696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (n + 1) : ℤ) - A204042 (n + 1) + 1

end

end A386642.P18258894599634655696

noncomputable section

/-- A386642: Roll n fair, distinguishable, n-sided dice and sort the dice in increasing order with the lowest on the left, highest on the right. Let m be the maximum value rolled and select the m-th die from the right. Then a(n) is the number of such rolls (over all n^n possible outcomes) where the selected die shows 1.

Offset 1, canonical program `A386642.P18258894599634655696`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386642 (n : ℕ) : ℤ :=
  A386642.P18258894599634655696.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386642.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A386685.P10921872709597016548

`4*A010051(4*n+1)+2*A010051(4*n+2)+A010051(4*n+3)`
-/

namespace A386685.P10921872709597016548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A010051 (4 * n + 1) + 2 * A010051 (4 * n + 2) + A010051 (4 * n + 3)

end

end A386685.P10921872709597016548

noncomputable section

/-- A386685: Classification of the interval [4*n+1, 4*n+2, 4*n+3] according to positions of primes.

Offset 0, canonical program `A386685.P10921872709597016548`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386685 (n : ℕ) : ℤ :=
  A386685.P10921872709597016548.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386685.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387012.P11190206633294393115

`A001019(n)-A128418(n)`
-/

namespace A387012.P11190206633294393115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 n - A128418 n

end

end A387012.P11190206633294393115

noncomputable section

/-- A387012: Number of ternary strings of length 2*n that have fewer 0's than the combined number of 1's and 2's.

Offset 0, canonical program `A387012.P11190206633294393115`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387012 (n : ℕ) : ℤ :=
  A387012.P11190206633294393115.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387012.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387238.P7917916309582918680

`C(n+6, 3)/20*A387239(n)`
-/

namespace A387238.P7917916309582918680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 6) 3 : ℚ) / 20 * (A387239 n : ℚ)

end

end A387238.P7917916309582918680

noncomputable section

/-- A387238: Expansion of 1/((1-x) * (1-5*x))^(7/2).

Offset 0, canonical program `A387238.P7917916309582918680`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387238 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387238.P7917916309582918680.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387238.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387249.P9723774275975948807

`(3*n+2)/2*A007272(3*n)`
-/

namespace A387249.P9723774275975948807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℚ) / 2 * (A007272 (3 * n) : ℚ)

end

end A387249.P9723774275975948807

noncomputable section

/-- A387249: a(n) = 10/(n + 1) * Catalan(3*n).

Offset 0, canonical program `A387249.P9723774275975948807`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387249 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387249.P9723774275975948807.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387249.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387263.P7341233109122044462

`a(n-2)-(n+1)+A383527(n)` with `a(0)=0, a(1)=0`
-/

namespace A387263.P7341233109122044462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) - (n + 1 : ℤ) + A383527 n

end

end A387263.P7341233109122044462

noncomputable section

/-- A387263: Partial sums of A247287.

Offset 0, canonical program `A387263.P7341233109122044462`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387263 (n : ℕ) : ℤ :=
  A387263.P7341233109122044462.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387263.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387280.P6599556173688428075

`C(n+4, 2)/6*A387272(n)`
-/

namespace A387280.P6599556173688428075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 2 : ℚ) / 6 * (A387272 n : ℚ)

end

end A387280.P6599556173688428075

noncomputable section

/-- A387280: Expansion of 1/((1-2*x) * (1-6*x))^(5/2).

Offset 0, canonical program `A387280.P6599556173688428075`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387280 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387280.P6599556173688428075.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387280.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387281.P17144847056270702863

`C(n+6, 3)/20*A387273(n)`
-/

namespace A387281.P17144847056270702863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 6) 3 : ℚ) / 20 * (A387273 n : ℚ)

end

end A387281.P17144847056270702863

noncomputable section

/-- A387281: Expansion of 1/((1-2*x) * (1-6*x))^(7/2).

Offset 0, canonical program `A387281.P17144847056270702863`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387281 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387281.P17144847056270702863.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387281.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387282.P15958896053585105479

`C(n+8, 4)/70*A387274(n)`
-/

namespace A387282.P15958896053585105479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 8) 4 : ℚ) / 70 * (A387274 n : ℚ)

end

end A387282.P15958896053585105479

noncomputable section

/-- A387282: Expansion of 1/((1-2*x) * (1-6*x))^(9/2).

Offset 0, canonical program `A387282.P15958896053585105479`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387282 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387282.P15958896053585105479.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387282.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387283.P3729374584424355958

`C(n+4, 2)/6*A387275(n)`
-/

namespace A387283.P3729374584424355958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 2 : ℚ) / 6 * (A387275 n : ℚ)

end

end A387283.P3729374584424355958

noncomputable section

/-- A387283: Expansion of 1/((1-3*x) * (1-7*x))^(5/2).

Offset 0, canonical program `A387283.P3729374584424355958`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387283 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387283.P3729374584424355958.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387283.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387284.P8024694283845203984

`C(n+6, 3)/20*A387276(n)`
-/

namespace A387284.P8024694283845203984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 6) 3 : ℚ) / 20 * (A387276 n : ℚ)

end

end A387284.P8024694283845203984

noncomputable section

/-- A387284: Expansion of 1/((1-3*x) * (1-7*x))^(7/2).

Offset 0, canonical program `A387284.P8024694283845203984`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387284 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387284.P8024694283845203984.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387284.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387285.P3765056577454848147

`C(n+8, 4)/70*A387277(n)`
-/

namespace A387285.P3765056577454848147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 8) 4 : ℚ) / 70 * (A387277 n : ℚ)

end

end A387285.P3765056577454848147

noncomputable section

/-- A387285: Expansion of 1/((1-3*x) * (1-7*x))^(9/2).

Offset 0, canonical program `A387285.P3765056577454848147`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387285 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387285.P3765056577454848147.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387285.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387313.P10532288655140270211

`C(n+4, 2)/6*A387307(n)`
-/

namespace A387313.P10532288655140270211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 2 : ℚ) / 6 * (A387307 n : ℚ)

end

end A387313.P10532288655140270211

noncomputable section

/-- A387313: Expansion of 1/((1-x) * (1-9*x))^(5/2).

Offset 0, canonical program `A387313.P10532288655140270211`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387313 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387313.P10532288655140270211.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387313.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387314.P10684369299051240623

`C(n+6, 3)/20*A387308(n)`
-/

namespace A387314.P10684369299051240623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 6) 3 : ℚ) / 20 * (A387308 n : ℚ)

end

end A387314.P10684369299051240623

noncomputable section

/-- A387314: Expansion of 1/((1-x) * (1-9*x))^(7/2).

Offset 0, canonical program `A387314.P10684369299051240623`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387314 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387314.P10684369299051240623.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387314.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387315.P6647550855949848126

`C(n+4, 2)/6*A387310(n)`
-/

namespace A387315.P6647550855949848126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 2 : ℚ) / 6 * (A387310 n : ℚ)

end

end A387315.P6647550855949848126

noncomputable section

/-- A387315: Expansion of 1/((1-x) * (1-13*x))^(5/2).

Offset 0, canonical program `A387315.P6647550855949848126`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387315 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387315.P6647550855949848126.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387315.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387316.P3447663394427698712

`C(n+6, 3)/20*A387311(n)`
-/

namespace A387316.P3447663394427698712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 6) 3 : ℚ) / 20 * (A387311 n : ℚ)

end

end A387316.P3447663394427698712

noncomputable section

/-- A387316: Expansion of 1/((1-x) * (1-13*x))^(7/2).

Offset 0, canonical program `A387316.P3447663394427698712`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387316 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387316.P3447663394427698712.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387316.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387341.P2794587713551805196

`A277660(n+2)/2`
-/

namespace A387341.P2794587713551805196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277660 (n + 2) : ℚ) / 2

end

end A387341.P2794587713551805196

noncomputable section

/-- A387341: Expansion of 1/(1 - 6*x + x^2)^(5/2).

Offset 0, canonical program `A387341.P2794587713551805196`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387341 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387341.P2794587713551805196.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387341.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387342.P9046792530797822280

`C(n+6, 3)/20*A387338(n)`
-/

namespace A387342.P9046792530797822280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 6) 3 : ℚ) / 20 * (A387338 n : ℚ)

end

end A387342.P9046792530797822280

noncomputable section

/-- A387342: Expansion of 1/(1 - 6*x + x^2)^(7/2).

Offset 0, canonical program `A387342.P9046792530797822280`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387342 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387342.P9046792530797822280.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387342.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387343.P5535926995955090240

`C(n+4, 2)/6*A387339(n)`
-/

namespace A387343.P5535926995955090240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 2 : ℚ) / 6 * (A387339 n : ℚ)

end

end A387343.P5535926995955090240

noncomputable section

/-- A387343: Expansion of 1/(1 - 8*x + 4*x^2)^(5/2).

Offset 0, canonical program `A387343.P5535926995955090240`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387343 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387343.P5535926995955090240.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387343.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387344.P11145627268589739815

`C(n+6, 3)/20*A387340(n)`
-/

namespace A387344.P11145627268589739815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 6) 3 : ℚ) / 20 * (A387340 n : ℚ)

end

end A387344.P11145627268589739815

noncomputable section

/-- A387344: Expansion of 1/(1 - 8*x + 4*x^2)^(7/2).

Offset 0, canonical program `A387344.P11145627268589739815`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387344 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387344.P11145627268589739815.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387344.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387401.P4911919190791046722

`(n+1)*A071356(n)`
-/

namespace A387401.P4911919190791046722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A071356 n

end

end A387401.P4911919190791046722

noncomputable section

/-- A387401: a(n) = Sum_{k=0..n} (1-i)^k * (1+i)^(n-k) * binomial(n+1,k) * binomial(n+1,n-k), where i is the imaginary unit.

Offset 0, canonical program `A387401.P4911919190791046722`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387401 (n : ℕ) : ℤ :=
  A387401.P4911919190791046722.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387401.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387597.P18281802524161236142

`(2*col(n))!*A269945(C(row(n)+1, 2)+col(n))`
-/

namespace A387597.P18281802524161236142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * SequenceMachineLib.triCol n) : ℤ) * A269945 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n)

end

end A387597.P18281802524161236142

noncomputable section

/-- A387597: Triangle read by rows: T(n,k) = Sum_{j=0..2k} (-1)^j * binomial(2k,j) * (k-j)^(2n).

Offset 0, canonical program `A387597.P18281802524161236142`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387597 (n : ℕ) : ℤ :=
  A387597.P18281802524161236142.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387597.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387714.P7551135850345193575

`n!*∑{#}[floor(n/2), (n-2*#)^#*A000108(n-2*#)/#!]`
-/

namespace A387714.P7551135850345193575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1).toNat, (((n : ℤ) - (2 * k : ℤ)) ^ k * A000108 (n - 2 * k) : ℚ) / (Nat.factorial k : ℚ))

end

end A387714.P7551135850345193575

noncomputable section

/-- A387714: E.g.f. A(x) satisfies A(x) = 1 + x*exp(x^2)*A(x)^2.

Offset 0, canonical program `A387714.P7551135850345193575`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387714 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387714.P7551135850345193575.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387714.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387939.P1991994683815980825

`2^n*(n²/4+n/4+4)-A000045(n+4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387939.P1991994683815980825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) * ((n ^ 2 : ℚ) / 4 + (n : ℚ) / 4 + 4) - (A000045 (n + 4) : ℚ)

end

end A387939.P1991994683815980825

noncomputable section

/-- A387939: a(n) = 2^n*(n^2/4+n/4+4) - Fibonacci(n+4).

Offset 0, canonical program `A387939.P1991994683815980825`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387939 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387939.P1991994683815980825.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387939.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A388072.P14779318985125589135

`A080891(n)*A188510(n)`
-/

namespace A388072.P14779318985125589135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 n * A188510 n

end

end A388072.P14779318985125589135

noncomputable section

/-- A388072: a(n) = Kronecker symbol (-10/n).

Offset 0, canonical program `A388072.P14779318985125589135`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A388072 (n : ℕ) : ℤ :=
  A388072.P14779318985125589135.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A388072.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A388073.P2282890064848621379

`A102283(n)*A011583(n)`
-/

namespace A388073.P2282890064848621379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 n * A011583 n

end

end A388073.P2282890064848621379

noncomputable section

/-- A388073: a(n) = Kronecker symbol (-39/n) = (n/39).

Offset 0, canonical program `A388073.P2282890064848621379`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A388073 (n : ℕ) : ℤ :=
  A388073.P2282890064848621379.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A388073.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A388847.P2305125992169687665

`∑{#}[floor(n/3), (-1)^#*C(n-2*#, #)*A001764(n-2*#)]`
-/

namespace A388847.P2305125992169687665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (-1) ^ k * (Nat.choose ((n : ℤ) - (2 * k : ℤ)).toNat k : ℤ) * A001764 (n - 2 * k)

end

end A388847.P2305125992169687665

noncomputable section

/-- A388847: G.f. A(x) satisfies A(x) = 1 + x*(1-x^2)*A(x)^3.

Offset 0, canonical program `A388847.P2305125992169687665`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A388847 (n : ℕ) : ℤ :=
  A388847.P2305125992169687665.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A388847.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A388857.P13766880446048329441

`∑{#}[floor(n/4), (-1)^#*C(n-3*#, #)*A001764(n-3*#)]`
-/

namespace A388857.P13766880446048329441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (-1) ^ k * (Nat.choose ((n : ℤ) - (3 * k : ℤ)).toNat k : ℤ) * A001764 (n - 3 * k)

end

end A388857.P13766880446048329441

noncomputable section

/-- A388857: G.f. A(x) satisfies A(x) = 1 + x*(1-x^3)*A(x)^3.

Offset 0, canonical program `A388857.P13766880446048329441`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A388857 (n : ℕ) : ℤ :=
  A388857.P13766880446048329441.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A388857.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389131.P16031612491105301296

`∑{#}[n, C(n, #)*A389129(#)]`
-/

namespace A389131.P16031612491105301296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A389129 k

end

end A389131.P16031612491105301296

noncomputable section

/-- A389131: Expansion of (1/x) * Series_Reversion( x / (1 + x + x^3 * (1 + x)^2) ).

Offset 0, canonical program `A389131.P16031612491105301296`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389131 (n : ℕ) : ℤ :=
  A389131.P16031612491105301296.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389131.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389132.P6375481795478948580

`∑{#}[n, C(n, #)*A389130(#)]`
-/

namespace A389132.P6375481795478948580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A389130 k

end

end A389132.P6375481795478948580

noncomputable section

/-- A389132: Expansion of (1/x) * Series_Reversion( x / (1 + x + x^4 * (1 + x)^2) ).

Offset 0, canonical program `A389132.P6375481795478948580`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389132 (n : ℕ) : ℤ :=
  A389132.P6375481795478948580.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389132.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389157.P16165274126817931735

`∑{#}[n, C(n, #)*A389155(#)]`
-/

namespace A389157.P16165274126817931735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A389155 k

end

end A389157.P16165274126817931735

noncomputable section

/-- A389157: Expansion of (1/x) * Series_Reversion( x / (1 + x + x^2 * (1 + x)^4) ).

Offset 0, canonical program `A389157.P16165274126817931735`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389157 (n : ℕ) : ℤ :=
  A389157.P16165274126817931735.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389157.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389158.P13337282443435549306

`∑{#}[n, C(n, #)*A389156(#)]`
-/

namespace A389158.P13337282443435549306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A389156 k

end

end A389158.P13337282443435549306

noncomputable section

/-- A389158: Expansion of (1/x) * Series_Reversion( x / (1 + x + x^3 * (1 + x)^4) ).

Offset 0, canonical program `A389158.P13337282443435549306`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389158 (n : ℕ) : ℤ :=
  A389158.P13337282443435549306.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389158.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389696.P13365847420925036934

`n!*∑{#}[floor(n/2), (n-2*#)^#*A001764(n-2*#)/#!]`
-/

namespace A389696.P13365847420925036934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1).toNat, (((n : ℤ) - (2 * k : ℤ)) ^ k * A001764 (n - 2 * k) : ℚ) / (Nat.factorial k : ℚ))

end

end A389696.P13365847420925036934

noncomputable section

/-- A389696: E.g.f. A(x) satisfies A(x) = 1 + x*exp(x^2)*A(x)^3.

Offset 0, canonical program `A389696.P13365847420925036934`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389696 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389696.P13365847420925036934.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389696.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389771.P1766495356091892136

`n!*∑{#}[floor(n/3), (n-3*#)^#*A000108(n-3*#)/#!]`
-/

namespace A389771.P1766495356091892136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1).toNat, (((n : ℤ) - (3 * k : ℤ)) ^ k * A000108 (n - 3 * k) : ℚ) / (Nat.factorial k : ℚ))

end

end A389771.P1766495356091892136

noncomputable section

/-- A389771: E.g.f. A(x) satisfies A(x) = 1 + x*exp(x^3)*A(x)^2.

Offset 0, canonical program `A389771.P1766495356091892136`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389771 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389771.P1766495356091892136.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389771.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389871.P10760638216148240085

`∑{#}[floor(n/2), C(2*(n-2*#), #)*A000108(n-2*#)]`
-/

namespace A389871.P10760638216148240085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose (2 * ((n : ℤ) - (2 * k : ℤ))).toNat k : ℤ) * A000108 (n - 2 * k)

end

end A389871.P10760638216148240085

noncomputable section

/-- A389871: G.f. A(x) satisfies A(x) = 1 + x*(1+x^2)^2*A(x)^2.

Offset 0, canonical program `A389871.P10760638216148240085`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389871 (n : ℕ) : ℤ :=
  A389871.P10760638216148240085.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389871.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389872.P15202379265221181671

`∑{#}[floor(n/2), C(3*(n-2*#), #)*A000108(n-2*#)]`
-/

namespace A389872.P15202379265221181671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose (3 * ((n : ℤ) - (2 * k : ℤ))).toNat k : ℤ) * A000108 (n - 2 * k)

end

end A389872.P15202379265221181671

noncomputable section

/-- A389872: G.f. A(x) satisfies A(x) = 1 + x*(1+x^2)^3*A(x)^2.

Offset 0, canonical program `A389872.P15202379265221181671`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389872 (n : ℕ) : ℤ :=
  A389872.P15202379265221181671.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389872.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389873.P52875858375717628

`∑{#}[floor(n/3), C(2*(n-3*#), #)*A000108(n-3*#)]`
-/

namespace A389873.P52875858375717628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose (2 * ((n : ℤ) - (3 * k : ℤ))).toNat k : ℤ) * A000108 (n - 3 * k)

end

end A389873.P52875858375717628

noncomputable section

/-- A389873: G.f. A(x) satisfies A(x) = 1 + x*(1+x^3)^2*A(x)^2.

Offset 0, canonical program `A389873.P52875858375717628`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389873 (n : ℕ) : ℤ :=
  A389873.P52875858375717628.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389873.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389874.P6397058237621996881

`∑{#}[floor(n/3), C(3*(n-3*#), #)*A000108(n-3*#)]`
-/

namespace A389874.P6397058237621996881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose (3 * ((n : ℤ) - (3 * k : ℤ))).toNat k : ℤ) * A000108 (n - 3 * k)

end

end A389874.P6397058237621996881

noncomputable section

/-- A389874: G.f. A(x) satisfies A(x) = 1 + x*(1+x^3)^3*A(x)^2.

Offset 0, canonical program `A389874.P6397058237621996881`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389874 (n : ℕ) : ℤ :=
  A389874.P6397058237621996881.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389874.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389886.P15009672084438795900

`3*2^n-A000045(n+4)`
-/

namespace A389886.P15009672084438795900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * 2 ^ n : ℤ) - A000045 (n + 4)

end

end A389886.P15009672084438795900

noncomputable section

/-- A389886: Number of proper 3-partitions of the vertices of the fan graph on n vertices such that every triangle uses exactly 2 colors.

Offset 3, canonical program `A389886.P15009672084438795900`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389886 (n : ℕ) : ℤ :=
  A389886.P15009672084438795900.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389886.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389890.P17065220727937254426

`∑{#}[floor(n/3), C(2*(n-3*#), #)*A001764(n-3*#)]`
-/

namespace A389890.P17065220727937254426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose (2 * ((n : ℤ) - (3 * k : ℤ))).toNat k : ℤ) * A001764 (n - 3 * k)

end

end A389890.P17065220727937254426

noncomputable section

/-- A389890: G.f. A(x) satisfies A(x) = 1 + x*(1+x^3)^2*A(x)^3.

Offset 0, canonical program `A389890.P17065220727937254426`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389890 (n : ℕ) : ℤ :=
  A389890.P17065220727937254426.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389890.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389891.P13189118920370563540

`∑{#}[floor(n/3), C(3*(n-3*#), #)*A001764(n-3*#)]`
-/

namespace A389891.P13189118920370563540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose (3 * ((n : ℤ) - (3 * k : ℤ))).toNat k : ℤ) * A001764 (n - 3 * k)

end

end A389891.P13189118920370563540

noncomputable section

/-- A389891: G.f. A(x) satisfies A(x) = 1 + x*(1+x^3)^3*A(x)^3.

Offset 0, canonical program `A389891.P13189118920370563540`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389891 (n : ℕ) : ℤ :=
  A389891.P13189118920370563540.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389891.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389893.P7461314287109162817

`∑{#}[floor(n/2), (-1)^#*C(2*(n-2*#), #)*A000108(n-2*#)]`
-/

namespace A389893.P7461314287109162817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (-1) ^ k * (Nat.choose (2 * ((n : ℤ) - (2 * k : ℤ))).toNat k : ℤ) * A000108 (n - 2 * k)

end

end A389893.P7461314287109162817

noncomputable section

/-- A389893: G.f. A(x) satisfies A(x) = 1 + x*(1-x^2)^2*A(x)^2.

Offset 0, canonical program `A389893.P7461314287109162817`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389893 (n : ℕ) : ℤ :=
  A389893.P7461314287109162817.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389893.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389894.P10886403557927046657

`∑{#}[floor(n/3), (-1)^#*C(2*(n-3*#), #)*A000108(n-3*#)]`
-/

namespace A389894.P10886403557927046657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (-1) ^ k * (Nat.choose (2 * ((n : ℤ) - (3 * k : ℤ))).toNat k : ℤ) * A000108 (n - 3 * k)

end

end A389894.P10886403557927046657

noncomputable section

/-- A389894: G.f. A(x) satisfies A(x) = 1 + x*(1-x^3)^2*A(x)^2.

Offset 0, canonical program `A389894.P10886403557927046657`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389894 (n : ℕ) : ℤ :=
  A389894.P10886403557927046657.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389894.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389895.P11121031391033633363

`∑{#}[floor(n/3), (-1)^#*C(3*(n-3*#), #)*A000108(n-3*#)]`
-/

namespace A389895.P11121031391033633363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (-1) ^ k * (Nat.choose (3 * ((n : ℤ) - (3 * k : ℤ))).toNat k : ℤ) * A000108 (n - 3 * k)

end

end A389895.P11121031391033633363

noncomputable section

/-- A389895: G.f. A(x) satisfies A(x) = 1 + x*(1-x^3)^3*A(x)^2.

Offset 0, canonical program `A389895.P11121031391033633363`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389895 (n : ℕ) : ℤ :=
  A389895.P11121031391033633363.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389895.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389942.P690339750252955156

`∑{#}[floor(n/2), (-1)^#*C(2*(n-2*#), #)*A001764(n-2*#)]`
-/

namespace A389942.P690339750252955156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (-1) ^ k * (Nat.choose (2 * ((n : ℤ) - (2 * k : ℤ))).toNat k : ℤ) * A001764 (n - 2 * k)

end

end A389942.P690339750252955156

noncomputable section

/-- A389942: G.f. A(x) satisfies A(x) = 1 + x*(1-x^2)^2*A(x)^3.

Offset 0, canonical program `A389942.P690339750252955156`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389942 (n : ℕ) : ℤ :=
  A389942.P690339750252955156.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389942.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389943.P5099283611018149966

`∑{#}[floor(n/2), (-1)^#*C(3*(n-2*#), #)*A001764(n-2*#)]`
-/

namespace A389943.P5099283611018149966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (-1) ^ k * (Nat.choose (3 * ((n : ℤ) - (2 * k : ℤ))).toNat k : ℤ) * A001764 (n - 2 * k)

end

end A389943.P5099283611018149966

noncomputable section

/-- A389943: G.f. A(x) satisfies A(x) = 1 + x*(1-x^2)^3*A(x)^3.

Offset 0, canonical program `A389943.P5099283611018149966`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389943 (n : ℕ) : ℤ :=
  A389943.P5099283611018149966.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389943.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389944.P12675931814178469672

`∑{#}[floor(n/3), (-1)^#*C(2*(n-3*#), #)*A001764(n-3*#)]`
-/

namespace A389944.P12675931814178469672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (-1) ^ k * (Nat.choose (2 * ((n : ℤ) - (3 * k : ℤ))).toNat k : ℤ) * A001764 (n - 3 * k)

end

end A389944.P12675931814178469672

noncomputable section

/-- A389944: G.f. A(x) satisfies A(x) = 1 + x*(1-x^3)^2*A(x)^3.

Offset 0, canonical program `A389944.P12675931814178469672`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389944 (n : ℕ) : ℤ :=
  A389944.P12675931814178469672.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389944.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389945.P17092698030653716998

`∑{#}[floor(n/3), (-1)^#*C(3*(n-3*#), #)*A001764(n-3*#)]`
-/

namespace A389945.P17092698030653716998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (-1) ^ k * (Nat.choose (3 * ((n : ℤ) - (3 * k : ℤ))).toNat k : ℤ) * A001764 (n - 3 * k)

end

end A389945.P17092698030653716998

noncomputable section

/-- A389945: G.f. A(x) satisfies A(x) = 1 + x*(1-x^3)^3*A(x)^3.

Offset 0, canonical program `A389945.P17092698030653716998`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389945 (n : ℕ) : ℤ :=
  A389945.P17092698030653716998.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389945.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389977.P1914905365809333279

`(-1)^A001221(n+1)*∑{d}[n+1, #*A008683(#)*A000203(#)]`
-/

namespace A389977.P1914905365809333279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A001221 (n + 1) : ℤ) * ((∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A008683 d * A000203 d : ℤ) : ℚ)

end

end A389977.P1914905365809333279

noncomputable section

/-- A389977: Absolute value of the inverse Möbius transform of n*mu(n)*sigma(n).

Offset 1, canonical program `A389977.P1914905365809333279`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389977 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389977.P1914905365809333279.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389977.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390137.P6598231683345126993

`5*a(n-1)+(-1)^n*A000984(n)` with `a(0)=1`
-/

namespace A390137.P6598231683345126993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + (-1) ^ n * A000984 n

end

end A390137.P6598231683345126993

noncomputable section

/-- A390137: Expansion of 1/((1-5*x) * sqrt(1+4*x)).

Offset 0, canonical program `A390137.P6598231683345126993`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390137 (n : ℕ) : ℤ :=
  A390137.P6598231683345126993.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390137.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390254.P15560212173112391131

`A087192(n+1)+1`
-/

namespace A390254.P15560212173112391131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087192 (n + 1) + 1

end

end A390254.P15560212173112391131

noncomputable section

/-- A390254: a(0) = 2, thereafter a(n+1) is the nearest integer to 4*a(n)/3.

Offset 0, canonical program `A390254.P15560212173112391131`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390254 (n : ℕ) : ℤ :=
  A390254.P15560212173112391131.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390254.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390264.P6600812668109119941

`(-1)^A001221(n+1)*∑{d}[n+1, A007947(#)*(-1)^A001221(#)]`
-/

namespace A390264.P6600812668109119941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A001221 (n + 1) : ℤ) * (∑ d ∈ Nat.divisors (f1 n), (A007947 d : ℚ) * (-1 : ℚ) ^ (A001221 d : ℤ))

end

end A390264.P6600812668109119941

noncomputable section

/-- A390264: Multiplicative with a(p^e) = e*p - 1.

Offset 1, canonical program `A390264.P6600812668109119941`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390264 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390264.P6600812668109119941.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390264.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390277.P8298929856633889392

`A007820(n)*A000108(n)`
-/

namespace A390277.P8298929856633889392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007820 n * A000108 n

end

end A390277.P8298929856633889392

noncomputable section

/-- A390277: a(n) = Stirling2(2*n, n)*CatalanNumber(n).

Offset 0, canonical program `A390277.P8298929856633889392`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390277 (n : ℕ) : ℤ :=
  A390277.P8298929856633889392.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390277.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390577.P15375437403461670826

`(A000040(n+1)*A000040(n+2))%(n+1)`
-/

namespace A390577.P15375437403461670826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1) * A000040 (n + 2)) (n + 1 : ℤ)

end

end A390577.P15375437403461670826

noncomputable section

/-- A390577: Remainder when (prime(n) * prime(n+1)) is divided by n.

Offset 1, canonical program `A390577.P15375437403461670826`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390577 (n : ℕ) : ℤ :=
  A390577.P15375437403461670826.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390577.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390587.P10651787233076413835

`A000040(A000720(a(n-1))+a(n-1)-a(n-2)+1)` with `a(0)=2, a(1)=3`
-/

namespace A390587.P10651787233076413835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A000040 (A000720 (a (n - 1)).toNat + a (n - 1) - a (n - 2) + 1).toNat

end

end A390587.P10651787233076413835

noncomputable section

/-- A390587: Primes generated by skipping a(n-1) - a(n-2) primes after a(n-1), starting with primes a(1)=2, a(2)=3.

Offset 1, canonical program `A390587.P10651787233076413835`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390587 (n : ℕ) : ℤ :=
  A390587.P10651787233076413835.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390587.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390611.P9257425523034425290

`n!*∑{#}[floor(n/3), (n-3*#)^#*A001764(n-3*#)/#!]`
-/

namespace A390611.P9257425523034425290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1).toNat, (((n : ℤ) - (3 * k : ℤ)) ^ k * A001764 (n - 3 * k) : ℚ) / (Nat.factorial k : ℚ))

end

end A390611.P9257425523034425290

noncomputable section

/-- A390611: E.g.f. A(x) satisfies A(x) = 1 + x*exp(x^3)*A(x)^3.

Offset 0, canonical program `A390611.P9257425523034425290`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390611 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390611.P9257425523034425290.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390611.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390614.P12437563007930374621

`A080891(n)*A175629(n)`
-/

namespace A390614.P12437563007930374621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 n * A175629 n

end

end A390614.P12437563007930374621

noncomputable section

/-- A390614: a(n) = Kronecker symbol (-35/n) = (n/35).

Offset 0, canonical program `A390614.P12437563007930374621`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390614 (n : ℕ) : ℤ :=
  A390614.P12437563007930374621.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390614.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390615.P5793949625256908757

`A101455(n)*A175629(n)`
-/

namespace A390615.P5793949625256908757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 n * A175629 n

end

end A390615.P5793949625256908757

noncomputable section

/-- A390615: a(n) = Kronecker symbol (28/n).

Offset 0, canonical program `A390615.P5793949625256908757`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390615 (n : ℕ) : ℤ :=
  A390615.P5793949625256908757.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390615.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390646.P15876674278353256113

`n!*∑{#}[floor(n/2), #^(n-2*#)*A000108(#)/(n-2*#)!]`
-/

namespace A390646.P15876674278353256113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1).toNat, (k : ℚ) ^ ((n : ℤ) - (2 * k : ℤ) : ℤ) * (A000108 k : ℚ) / (Nat.factorial ((n : ℤ) - (2 * k : ℤ)).toNat : ℚ))

end

end A390646.P15876674278353256113

noncomputable section

/-- A390646: E.g.f. A(x) satisfies A(x) = 1 + x^2*exp(x)*A(x)^2.

Offset 0, canonical program `A390646.P15876674278353256113`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390646 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390646.P15876674278353256113.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390646.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390647.P3474752566098829216

`n!*∑{#}[floor(n/2), #^(n-2*#)*A001764(#)/(n-2*#)!]`
-/

namespace A390647.P3474752566098829216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1).toNat, (k : ℚ) ^ ((n : ℤ) - (2 * k : ℤ) : ℤ) * (A001764 k : ℚ) / (Nat.factorial ((n : ℤ) - (2 * k : ℤ)).toNat : ℚ))

end

end A390647.P3474752566098829216

noncomputable section

/-- A390647: E.g.f. A(x) satisfies A(x) = 1 + x^2*exp(x)*A(x)^3.

Offset 0, canonical program `A390647.P3474752566098829216`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390647 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390647.P3474752566098829216.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390647.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390648.P6603705467858767249

`n!*∑{#}[floor(n/3), #^(n-3*#)*A000108(#)/(n-3*#)!]`
-/

namespace A390648.P6603705467858767249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1).toNat, (k : ℚ) ^ ((n : ℤ) - (3 * k : ℤ) : ℤ) * (A000108 k : ℚ) / (Nat.factorial ((n : ℤ) - (3 * k : ℤ)).toNat : ℚ))

end

end A390648.P6603705467858767249

noncomputable section

/-- A390648: E.g.f. A(x) satisfies A(x) = 1 + x^3*exp(x)*A(x)^2.

Offset 0, canonical program `A390648.P6603705467858767249`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390648 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390648.P6603705467858767249.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390648.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390649.P4633420024592813293

`n!*∑{#}[floor(n/3), #^(n-3*#)*A001764(#)/(n-3*#)!]`
-/

namespace A390649.P4633420024592813293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1).toNat, (k : ℚ) ^ ((n : ℤ) - (3 * k : ℤ) : ℤ) * (A001764 k : ℚ) / (Nat.factorial ((n : ℤ) - (3 * k : ℤ)).toNat : ℚ))

end

end A390649.P4633420024592813293

noncomputable section

/-- A390649: E.g.f. A(x) satisfies A(x) = 1 + x^3*exp(x)*A(x)^3.

Offset 0, canonical program `A390649.P4633420024592813293`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390649 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390649.P4633420024592813293.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390649.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390724.P14749098958855767615

`A048993(C(row(n)+1, 2)+col(n))*A000108(col(n))`
-/

namespace A390724.P14749098958855767615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) * A000108 (SequenceMachineLib.triCol n)

end

end A390724.P14749098958855767615

noncomputable section

/-- A390724: Triangle read by rows: T(n, k) = Stirling2(n, k)*CatalanNumber(k).

Offset 0, canonical program `A390724.P14749098958855767615`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390724 (n : ℕ) : ℤ :=
  A390724.P14749098958855767615.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390724.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390839.P4208086319752327611

`a(n-1)*(1+A000040(n))/(A000040(n+1)-A000040(n))` with `a(0)=1`
-/

namespace A390839.P4208086319752327611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (1 + A000040 n : ℚ) / (A000040 (n + 1) - A000040 n : ℚ)

end

end A390839.P4208086319752327611

noncomputable section

/-- A390839: a(n) = Product_{k=1..n} (prime(k) + 1)/A001223(k), where A001223 lists the prime gaps, rounded to the nearest integer if necessary.

Offset 0, canonical program `A390839.P4208086319752327611`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390839 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390839.P4208086319752327611.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390839.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390945.P3952073079316062166

`A003059(3*(n+1))`
-/

namespace A390945.P3952073079316062166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (3 * (n + 1))

end

end A390945.P3952073079316062166

noncomputable section

/-- A390945: Burning number of the n-necklace graph.

Offset 1, canonical program `A390945.P3952073079316062166`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390945 (n : ℕ) : ℤ :=
  A390945.P3952073079316062166.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390945.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391163.P12705108012069157976

`10*A002264(n)+A010872(n)`
-/

namespace A391163.P12705108012069157976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A002264 n + A010872 n

end

end A391163.P12705108012069157976

noncomputable section

/-- A391163: Numbers whose final digit is at most 2.

Offset 0, canonical program `A391163.P12705108012069157976`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391163 (n : ℕ) : ℤ :=
  A391163.P12705108012069157976.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391163.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391164.P14227226670676293853

`10*A152467(n)+A010875(n)`
-/

namespace A391164.P14227226670676293853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A152467 n + A010875 n

end

end A391164.P14227226670676293853

noncomputable section

/-- A391164: Numbers whose final digit is at most 5.

Offset 0, canonical program `A391164.P14227226670676293853`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391164 (n : ℕ) : ℤ :=
  A391164.P14227226670676293853.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391164.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391188.P16383289770167184422

`floor(A000040(n+2)/floor(log(A000040(n+2))))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391188.P16383289770167184422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 2) : ℚ) / (⌊Real.log (A000040 (n + 2) : ℝ)⌋ : ℚ)⌋

end

end A391188.P16383289770167184422

noncomputable section

/-- A391188: a(n) = floor( prime(n) / floor(log(prime(n))) ), where prime(n) is the n-th prime.

Offset 2, canonical program `A391188.P16383289770167184422`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A000040(n+2)/floor(log(A000040(n+2))))` (program `A391188.P16383289770167184422`, by `A391188.P16383289770167184422.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A391188 (n : ℕ) : ℤ :=
  A391188.P16383289770167184422.a (n - 2)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A000040(n+2)/floor(log(A000040(n+2))))` (program `A391188.P16383289770167184422`, by `A391188.P16383289770167184422.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A391188.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A391503.P8645843460188811594

`A080891(n)*A091337(n)`
-/

namespace A391503.P8645843460188811594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 n * A091337 n

end

end A391503.P8645843460188811594

noncomputable section

/-- A391503: a(n) = Kronecker symbol (10/n).

Offset 0, canonical program `A391503.P8645843460188811594`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391503 (n : ℕ) : ℤ :=
  A391503.P8645843460188811594.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391503.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391588.P7030029554672891423

`xor(A003817(n+1), A003817(n+1)*(n+1))`
-/

namespace A391588.P7030029554672891423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003817 (n + 1)) (A003817 (n + 1) * (n + 1 : ℤ))

end

end A391588.P7030029554672891423

noncomputable section

/-- A391588: a(n) = A003817(n) XOR (A003817(n)*n).

Offset 1, canonical program `A391588.P7030029554672891423`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391588 (n : ℕ) : ℤ :=
  A391588.P7030029554672891423.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391588.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391868.P15801713376637900617

`a(n-1)+A006893(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A391868.P15801713376637900617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + A006893 (n - 1)

end

end A391868.P15801713376637900617

noncomputable section

/-- A391868: Start with the list of positive integers 1,2,3,... . After each integer k, insert k empty positions. Fill these positions, from left to right, with the positive integers in order. Repeat this spacing-and-filling process indefinitely. The sequence consists of the positions of the last occurrence of 1 after each step.

Offset 1, canonical program `A391868.P15801713376637900617`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391868 (n : ℕ) : ℤ :=
  A391868.P15801713376637900617.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391868.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391878.P3023168596662486156

`2^n*A001831(n)`
-/

namespace A391878.P3023168596662486156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001831 n

end

end A391878.P3023168596662486156

noncomputable section

/-- A391878: The number of vacuously transitive relations on an n-set.

Offset 0, canonical program `A391878.P3023168596662486156`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391878 (n : ℕ) : ℤ :=
  A391878.P3023168596662486156.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391878.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391917.P17410970912518672552

`A290493(n+1)²+1`
-/

namespace A391917.P17410970912518672552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290493 (n + 1) ^ 2 + 1

end

end A391917.P17410970912518672552

noncomputable section

/-- A391917: Number of irredundant sets in the n-double cone graph.

Offset 1, canonical program `A391917.P17410970912518672552`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391917 (n : ℕ) : ℤ :=
  A391917.P17410970912518672552.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391917.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392237.P2178225879805223355

`A286954(n+1)²+1`
-/

namespace A392237.P2178225879805223355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286954 (n + 1) ^ 2 + 1

end

end A392237.P2178225879805223355

noncomputable section

/-- A392237: Number of maximal irredundant sets in the n-double cone graph.

Offset 1, canonical program `A392237.P2178225879805223355`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392237 (n : ℕ) : ℤ :=
  A392237.P2178225879805223355.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392237.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392286.P8184568580585956198

`2*a(n-1)-a(n-2)+A088957(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A392286.P8184568580585956198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * a (n - 1) - a (n - 2) + A088957 (n - 1)

end

end A392286.P8184568580585956198

noncomputable section

/-- A392286: a(n) = Sum_{k=1..n} binomial(n+1, k+1)*A000272(k).

Offset 0, canonical program `A392286.P8184568580585956198`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392286 (n : ℕ) : ℤ :=
  A392286.P8184568580585956198.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392286.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392334.P16455220936438434802

`A109613(n)^A000034(n)`
-/

namespace A392334.P16455220936438434802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109613 n : ℚ) ^ (A000034 n : ℤ)

end

end A392334.P16455220936438434802

noncomputable section

/-- A392334: a(2*n) = 2*n+1, a(2*n+1) = (2*n+1)^2.

Offset 0, canonical program `A392334.P16455220936438434802`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392334 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392334.P16455220936438434802.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392334.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393238.P17553377918589216133

`A349919(n)+n²+1`
-/

namespace A393238.P17553377918589216133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349919 n + (n ^ 2 : ℤ) + 1

end

end A393238.P17553377918589216133

noncomputable section

/-- A393238: Number of transitive relations on an n-set with at most two ordered pairs.

Offset 0, canonical program `A393238.P17553377918589216133`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393238 (n : ℕ) : ℤ :=
  A393238.P17553377918589216133.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393238.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393496.P1782685945993566905

`gcd(A174344(n+1), A274923(n+1))`
-/

namespace A393496.P1782685945993566905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A174344 (n + 1)) (A274923 (n + 1))

end

end A393496.P1782685945993566905

noncomputable section

/-- A393496: a(n) is the GCD of the X and Y-coordinates of the n-th point of the square spiral.

Offset 1, canonical program `A393496.P1782685945993566905`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393496 (n : ℕ) : ℤ :=
  (A393496.P1782685945993566905.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393496.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393995.P5611640221726888957

`2*A393945(n)-2^n`
-/

namespace A393995.P5611640221726888957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A393945 n - (2 ^ n : ℤ)

end

end A393995.P5611640221726888957

noncomputable section

/-- A393995: Difference between the numbers of binary words of length n with an even and with an odd number of occurrences of subword 101.

Offset 0, canonical program `A393995.P5611640221726888957`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393995 (n : ℕ) : ℤ :=
  A393995.P5611640221726888957.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393995.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394045.P572451701111646751

`∑{#}[n-1, C(n+1, #+1+1)*A053507(#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A394045.P572451701111646751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose (n + 1) (k + 1 + 1) : ℤ) * A053507 (k + 1)

end

end A394045.P572451701111646751

noncomputable section

/-- A394045: a(0) = 0, a(n) = Sum_{k=1..n} binomial(n+1, k+1)*A053507(k) for n > 0.

Offset 0, canonical program `A394045.P572451701111646751`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394045 (n : ℕ) : ℤ :=
  A394045.P572451701111646751.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394045.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394056.P9651377908040561774

`A000720(floor((n+1)^(1/3)))+∑{#}[A000720(floor(sqrt(n+1)))-1, A000720(floor((n+1)/A000040(#+1)))-(#+1)]`
-/

namespace A394056.P9651377908040561774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Nat.sqrt (n + 1)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ⌊(n + 1 : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋.toNat + ∑ k ∈ Finset.range (f1 n + 1).toNat, (A000720 ⌊(n + 1 : ℚ) / (A000040 (k + 1) : ℚ)⌋.toNat - (k + 1 : ℤ))

end

end A394056.P9651377908040561774

noncomputable section

/-- A394056: Number of positive integers <= n with 4 divisors.

Offset 1, canonical program `A394056.P9651377908040561774`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394056 (n : ℕ) : ℤ :=
  A394056.P9651377908040561774.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394056.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394186.P3706441358124203491

`A071945(C(2*n+1, 2)+n)`
-/

namespace A394186.P3706441358124203491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071945 (Nat.choose (2 * n + 1) 2 + n)

end

end A394186.P3706441358124203491

noncomputable section

/-- A394186: a(n) = Sum_{k=0..n} binomial(n+k,2*k) * (binomial(n+2*k,k) - binomial(n+2*k,k-1)).

Offset 0, canonical program `A394186.P3706441358124203491`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394186 (n : ℕ) : ℤ :=
  A394186.P3706441358124203491.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394186.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394449.P17526634545928988176

`A006125(n+1)-A006125(n)-A000110(n+1)+A000110(n)`
-/

namespace A394449.P17526634545928988176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 (n + 1) - A006125 n - A000110 (n + 1) + A000110 n

end

end A394449.P17526634545928988176

noncomputable section

/-- A394449: Number of symmetric relations on an n-set that are neither reflexive nor transitive.

Offset 0, canonical program `A394449.P17526634545928988176`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394449 (n : ℕ) : ℤ :=
  A394449.P17526634545928988176.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394449.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394454.P627526309176184517

`A008472(A000984(n+1))`
-/

namespace A394454.P627526309176184517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A000984 (n + 1)).toNat

end

end A394454.P627526309176184517

noncomputable section

/-- A394454: Sum of distinct prime divisors of C(2*n, n).

Offset 1, canonical program `A394454.P627526309176184517`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394454 (n : ℕ) : ℤ :=
  A394454.P627526309176184517.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394454.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394510.P16388077156761870700

`A132356(n)*A090771(n+1)`
-/

namespace A394510.P16388077156761870700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132356 n * A090771 (n + 1)

end

end A394510.P16388077156761870700

noncomputable section

/-- A394510: a(2*k) = 2*k*(5*k+1)*(10*k+1), a(2*k+1) = 2*(k+1)*(5*k+4)*(10*k+9), with k >= 0.

Offset 0, canonical program `A394510.P16388077156761870700`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394510 (n : ℕ) : ℤ :=
  A394510.P16388077156761870700.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394510.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394529.P4813404703482126856

`(n²*A000108(n)+A008549(n))/2`
-/

namespace A394529.P4813404703482126856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A000108 n + A008549 n : ℚ) / 2

end

end A394529.P4813404703482126856

noncomputable section

/-- A394529: Total number of cells under all Dyck paths of semilength n in the first quadrant of the square grid.

Offset 0, canonical program `A394529.P4813404703482126856`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394529 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A394529.P4813404703482126856.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394529.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394763.P8265231268044761690

`A394582(C(n+1+n+1-1, 2)+n+1)`
-/

namespace A394763.P8265231268044761690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394582 (Nat.choose ((n + 1 + (n + 1) : ℤ) - 1).toNat 2 + (n + 1))

end

end A394763.P8265231268044761690

noncomputable section

/-- A394763: Main diagonal of A394582.

Offset 1, canonical program `A394763.P8265231268044761690`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394763 (n : ℕ) : ℤ :=
  A394763.P8265231268044761690.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394763.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394865.P1928483704663461371

`A050292(n+1)-A050292(floor((n+1)/3))`
-/

namespace A394865.P1928483704663461371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050292 (n + 1) - A050292 ⌊(n + 1 : ℚ) / 3⌋.toNat

end

end A394865.P1928483704663461371

noncomputable section

/-- A394865: a(n) is the size of the largest subset A of {1, ..., n} such that x does not divide 2*y for each pair of distinct elements x, y in A.

Offset 1, canonical program `A394865.P1928483704663461371`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394865 (n : ℕ) : ℤ :=
  A394865.P1928483704663461371.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394865.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394883.P1645665538627354432

`(n+1)*A060493(n+1)`
-/

namespace A394883.P1645665538627354432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A060493 (n + 1)

end

end A394883.P1645665538627354432

noncomputable section

/-- A394883: a(n) = n^2*(n + 1)*(n + 2)*(2*n + 1)*(2*n + 3)*(5*n - 1)/360.

Offset 1, canonical program `A394883.P1645665538627354432`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394883 (n : ℕ) : ℤ :=
  A394883.P1645665538627354432.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394883.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394896.P2662756544387131280

`(n+1)*A351105(n+1)`
-/

namespace A394896.P2662756544387131280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A351105 (n + 1)

end

end A394896.P2662756544387131280

noncomputable section

/-- A394896: a(n) = n*n*(n+1)*(n+2)*(n+3)*(2n+1)*(2n+3)*(2n+5)*(35*n^2-21*n+4)/45360.

Offset 1, canonical program `A394896.P2662756544387131280`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394896 (n : ℕ) : ℤ :=
  A394896.P2662756544387131280.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394896.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394992.P15021251122541274444

`A000045(2*n)+n*a(n-1)` with `a(0)=0`
-/

namespace A394992.P15021251122541274444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000045 (2 * n) + (n : ℤ) * a (n - 1)

end

end A394992.P15021251122541274444

noncomputable section

/-- A394992: a(n) = n! * Sum_{k=0..n} F(2*k)/k!, where F(n) is the n-th Fibonacci number, A000045(n).

Offset 0, canonical program `A394992.P15021251122541274444`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394992 (n : ℕ) : ℤ :=
  A394992.P15021251122541274444.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394992.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394993.P16828162771782242662

`(-1)^(n+1)*A000045(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A394993.P16828162771782242662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (-1) ^ (n + 1) * A000045 n + (n : ℤ) * a (n - 1)

end

end A394993.P16828162771782242662

noncomputable section

/-- A394993: a(n) = n! * Sum_{k=0..n} (-1)^(k+1)*F(k)/k!, where F(n) is the n-th Fibonacci number, A000045(n).

Offset 0, canonical program `A394993.P16828162771782242662`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394993 (n : ℕ) : ℤ :=
  A394993.P16828162771782242662.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394993.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395196.P17729750059770065000

`4*A110611(n+1)-2*(n+1)*(n+2)+n+1`
-/

namespace A395196.P17729750059770065000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A110611 (n + 1) - (2 * (n + 1) * (n + 2) : ℤ) + (n + 1 : ℤ)

end

end A395196.P17729750059770065000

noncomputable section

/-- A395196: Minimal value of Sum_{i=1..n} p(i)*p(i+1), where p(n+1)=p(1), as p ranges over all permutations of odd numbers {1,3,...,2*n-1}.

Offset 1, canonical program `A395196.P17729750059770065000`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395196 (n : ℕ) : ℤ :=
  A395196.P17729750059770065000.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395196.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395204.P11909722987938007791

`(2*n)!*A002315(n)`
-/

namespace A395204.P11909722987938007791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) : ℤ) * A002315 n

end

end A395204.P11909722987938007791

noncomputable section

/-- A395204: a(n) = (2*n)! * [x^(2*n)] (f(x)^2 + f(-x)^2)/2 and f(x) = 1/sqrt(1 + 2*sqrt(2)*x + x^2).

Offset 0, canonical program `A395204.P11909722987938007791`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395204 (n : ℕ) : ℤ :=
  A395204.P11909722987938007791.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395204.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395300.P12127772645771921970

`A244974(n+1)-A000203(n+1)`
-/

namespace A395300.P12127772645771921970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244974 (n + 1) - A000203 (n + 1)

end

end A395300.P12127772645771921970

noncomputable section

/-- A395300: Sum of numbers k < n such that rad(k) | n but k does not divide n, where rad = A007947.

Offset 1, canonical program `A395300.P12127772645771921970`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395300 (n : ℕ) : ℤ :=
  A395300.P12127772645771921970.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395300.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395581.P5928758976938920943

`A003151(a(n-1))+A003151(a(n-2))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A395581.P5928758976938920943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A003151 (a (n - 1)).toNat + A003151 (a (n - 2)).toNat

end

end A395581.P5928758976938920943

noncomputable section

/-- A395581: a(n) = floor(r*a(n-1)) + floor(r*a(n-2)), a(0) = 0, a(1) = 1 and r = 1 + sqrt(2).

Offset 0, canonical program `A395581.P5928758976938920943`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395581 (n : ℕ) : ℤ :=
  A395581.P5928758976938920943.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395581.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395582.P2622982355169417460

`A080081(a(n-1))+A080081(a(n-2))` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A395582.P2622982355169417460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  A080081 (a (n - 1)).toNat + A080081 (a (n - 2)).toNat

end

end A395582.P2622982355169417460

noncomputable section

/-- A395582: a(n) = floor(r*a(n-1)) + floor(r*a(n-2)), a(0) = 0, a(1) = 1 and r = (3 + sqrt(13))/2.

Offset 0, canonical program `A395582.P2622982355169417460`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395582 (n : ℕ) : ℤ :=
  A395582.P2622982355169417460.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395582.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395583.P8867304325575678550

`A004976(a(n-1))+A004976(a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A395583.P8867304325575678550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A004976 (a (n - 1)).toNat + A004976 (a (n - 2)).toNat

end

end A395583.P8867304325575678550

noncomputable section

/-- A395583: a(n) = floor(r*a(n-1)) + floor(r*a(n-2)), a(0) = 0, a(1) = 1 and r = 2 + sqrt(5).

Offset 0, canonical program `A395583.P8867304325575678550`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395583 (n : ℕ) : ℤ :=
  A395583.P8867304325575678550.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395583.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395585.P1910700753436105600

`A080081(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A395585.P1910700753436105600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A080081 (a (n - 1) + a (n - 2)).toNat

end

end A395585.P1910700753436105600

noncomputable section

/-- A395585: a(n) = floor(r*(a(n-1) + a(n-2))), a(0) = 0, a(1) = 1 and r = (3 + sqrt(13))/2.

Offset 0, canonical program `A395585.P1910700753436105600`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395585 (n : ℕ) : ℤ :=
  A395585.P1910700753436105600.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395585.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395586.P13069080438315574656

`A004976(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A395586.P13069080438315574656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A004976 (a (n - 1) + a (n - 2)).toNat

end

end A395586.P13069080438315574656

noncomputable section

/-- A395586: a(n) = floor(r*(a(n-1)+a(n-2))), a(0) = 0, a(1) = 1 and r = 2 + sqrt(5).

Offset 0, canonical program `A395586.P13069080438315574656`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395586 (n : ℕ) : ℤ :=
  A395586.P13069080438315574656.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395586.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395627.P1347031268804462371

`(A000040(col(n)+1)-1)*A000040(col(n)+1)^(row(n)-col(n)+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A395627.P1347031268804462371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (SequenceMachineLib.triCol n + 1) - 1 : ℚ) * (A000040 (SequenceMachineLib.triCol n + 1) : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 : ℤ) / 2

end

end A395627.P1347031268804462371

noncomputable section

/-- A395627: Infinite square array T(n,k) = (prime(n)-1)*prime(n)^k/2; n, k >= 1; read by falling antidiagonals.

Offset 1, canonical program `A395627.P1347031268804462371`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395627 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A395627.P1347031268804462371.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395627.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395655.P2124019926916051659

`A378504(n)/(n+1)`
-/

namespace A395655.P2124019926916051659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378504 n : ℚ) / (n + 1 : ℚ)

end

end A395655.P2124019926916051659

noncomputable section

/-- A395655: Expansion of 1/(4*x) * (1/(3-2*g)^2 - 1), where g = 1+x*g^3 is the g.f. of A001764.

Offset 0, canonical program `A395655.P2124019926916051659`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395655 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A395655.P2124019926916051659.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395655.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395668.P16075930559915105460

`A395665(n)/(n+1)`
-/

namespace A395668.P16075930559915105460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A395665 n : ℚ) / (n + 1 : ℚ)

end

end A395668.P16075930559915105460

noncomputable section

/-- A395668: Expansion of g^5*(3-2*g)/(5-4*g)^2, where g = 1+x*g^5 is the g.f. of A002294.

Offset 0, canonical program `A395668.P16075930559915105460`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395668 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A395668.P16075930559915105460.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395668.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395669.P7800674907976552696

`A395667(n)/(n+1)`
-/

namespace A395669.P7800674907976552696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A395667 n : ℚ) / (n + 1 : ℚ)

end

end A395669.P7800674907976552696

noncomputable section

/-- A395669: Expansion of g^7*(4-3*g)/(7-6*g)^2, where g = 1+x*g^7 is the g.f. of A002296.

Offset 0, canonical program `A395669.P7800674907976552696`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395669 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A395669.P7800674907976552696.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395669.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395675.P10573458847951959363

`A339240(n+1)/2`
-/

namespace A395675.P10573458847951959363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339240 (n + 1) : ℚ) / 2

end

end A395675.P10573458847951959363

noncomputable section

/-- A395675: Expansion of g^3/(2-g)^4, where g = 1+x*g^2 is the g.f. of A000108.

Offset 0, canonical program `A395675.P10573458847951959363`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395675 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A395675.P10573458847951959363.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395675.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395704.P16133964373773942356

`(n+1)*A036829(n+1)`
-/

namespace A395704.P16133964373773942356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A036829 (n + 1)

end

end A395704.P16133964373773942356

noncomputable section

/-- A395704: Expansion of g^4*(2*g-1)/(3-2*g)^4, where g = 1+x*g^3 is the g.f. of A001764.

Offset 0, canonical program `A395704.P16133964373773942356`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395704 (n : ℕ) : ℤ :=
  A395704.P16133964373773942356.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395704.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395705.P15236237571732691539

`(n+1)*A308523(n+1)`
-/

namespace A395705.P15236237571732691539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A308523 (n + 1)

end

end A395705.P15236237571732691539

noncomputable section

/-- A395705: Expansion of g^5*(3*g-2)/(4-3*g)^4, where g = 1+x*g^4 is the g.f. of A002293.

Offset 0, canonical program `A395705.P15236237571732691539`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395705 (n : ℕ) : ℤ :=
  A395705.P15236237571732691539.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395705.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395706.P726234389815810436

`(n+1)*A386367(n+1)`
-/

namespace A395706.P726234389815810436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A386367 (n + 1)

end

end A395706.P726234389815810436

noncomputable section

/-- A395706: Expansion of g^6*(4*g-3)/(5-4*g)^4, where g = 1+x*g^5 is the g.f. of A002294.

Offset 0, canonical program `A395706.P726234389815810436`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395706 (n : ℕ) : ℤ :=
  A395706.P726234389815810436.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395706.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395707.P1084172933383618630

`(n+1)*A386368(n+1)`
-/

namespace A395707.P1084172933383618630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A386368 (n + 1)

end

end A395707.P1084172933383618630

noncomputable section

/-- A395707: Expansion of g^7*(5*g-4)/(6-5*g)^4, where g = 1+x*g^6 is the g.f. of A002295.

Offset 0, canonical program `A395707.P1084172933383618630`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395707 (n : ℕ) : ℤ :=
  A395707.P1084172933383618630.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395707.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395708.P4395769601045900910

`(n+1)*A062236(n+1)`
-/

namespace A395708.P4395769601045900910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A062236 (n + 1)

end

end A395708.P4395769601045900910

noncomputable section

/-- A395708: Expansion of g^4*(4*g-3)/(3-2*g)^4, where g = 1+x*g^3 is the g.f. of A001764.

Offset 0, canonical program `A395708.P4395769601045900910`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395708 (n : ℕ) : ℤ :=
  A395708.P4395769601045900910.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395708.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395709.P9088190485973165721

`(n+1)*A386565(n+1)`
-/

namespace A395709.P9088190485973165721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A386565 (n + 1)

end

end A395709.P9088190485973165721

noncomputable section

/-- A395709: Expansion of g^5*(5*g-4)/(4-3*g)^4, where g = 1+x*g^4 is the g.f. of A002293.

Offset 0, canonical program `A395709.P9088190485973165721`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395709 (n : ℕ) : ℤ :=
  A395709.P9088190485973165721.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395709.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395710.P3437402016473658810

`(n+1)*A386566(n+1)`
-/

namespace A395710.P3437402016473658810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A386566 (n + 1)

end

end A395710.P3437402016473658810

noncomputable section

/-- A395710: Expansion of g^6*(6*g-5)/(5-4*g)^4, where g = 1+x*g^5 is the g.f. of A002294.

Offset 0, canonical program `A395710.P3437402016473658810`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395710 (n : ℕ) : ℤ :=
  A395710.P3437402016473658810.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395710.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395711.P18341920642502358831

`(n+1)*A386567(n+1)`
-/

namespace A395711.P18341920642502358831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A386567 (n + 1)

end

end A395711.P18341920642502358831

noncomputable section

/-- A395711: Expansion of g^7*(7*g-6)/(6-5*g)^4, where g = 1+x*g^6 is the g.f. of A002295.

Offset 0, canonical program `A395711.P18341920642502358831`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395711 (n : ℕ) : ℤ :=
  A395711.P18341920642502358831.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395711.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395827.P16679499213790510204

`6^n-A180033(n)`
-/

namespace A395827.P16679499213790510204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) - A180033 n

end

end A395827.P16679499213790510204

noncomputable section

/-- A395827: a(n) is the number of possible outcomes having a run of 2 or more sixes when a die is rolled n times.

Offset 0, canonical program `A395827.P16679499213790510204`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395827 (n : ℕ) : ℤ :=
  A395827.P16679499213790510204.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395827.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395828.P2810719931447247323

`7^n-A180167(n)`
-/

namespace A395828.P2810719931447247323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) - A180167 n

end

end A395828.P2810719931447247323

noncomputable section

/-- A395828: Number of septenary strings of length n that contain a specific string xx (where x is a single digit).

Offset 0, canonical program `A395828.P2810719931447247323`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395828 (n : ℕ) : ℤ :=
  A395828.P2810719931447247323.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395828.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396045.P14652935241505845905

`∑{#}[n, (-1)^(n-#)*C(n, #)*A000108(2*n+#)]`
-/

namespace A396045.P14652935241505845905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A000108 (2 * n + k) : ℚ)

end

end A396045.P14652935241505845905

noncomputable section

/-- A396045: a(n) = T(n, 2*n), where T(n, m) is the forward-difference table of the Catalan numbers.

Offset 0, canonical program `A396045.P14652935241505845905`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396045 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A396045.P14652935241505845905.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396045.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396151.P82576254118047464

`2*A000749(n+2)+1`
-/

namespace A396151.P82576254118047464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000749 (n + 2) + 1

end

end A396151.P82576254118047464

noncomputable section

/-- A396151: a(n) = 2^(n+1) + 1 - 2*Re((1+i)^n), where i is the imaginary unit.

Offset 0, canonical program `A396151.P82576254118047464`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396151 (n : ℕ) : ℤ :=
  A396151.P82576254118047464.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396151.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396197.P11192290453794693208

`(-1)^col(n)*C(row(n), col(n))*A000285(row(n)-col(n))`
-/

namespace A396197.P11192290453794693208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.triCol n * (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) * A000285 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A396197.P11192290453794693208

noncomputable section

/-- A396197: Triangle read by rows: T(n, k) = (-1)^k*binomial(n, k) * (2*F(n - k) + F(n - k + 2)) where F(n) are the Fibonacci numbers.

Offset 0, canonical program `A396197.P11192290453794693208`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396197 (n : ℕ) : ℤ :=
  A396197.P11192290453794693208.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396197.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396222.P16013225792826000185

`∑{#}[n, (-1)^(n-#)*C(n, #)*A000108(n+2+#)]`
-/

namespace A396222.P16013225792826000185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A000108 (n + 2 + k) : ℚ)

end

end A396222.P16013225792826000185

noncomputable section

/-- A396222: a(n) = T(n, n + 2), where T(n, m) is the forward-difference table of the Catalan numbers.

Offset 0, canonical program `A396222.P16013225792826000185`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396222 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A396222.P16013225792826000185.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396222.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396283.P13868189083896900489

`(n+1)*(A000290(n+1)-2*A024916(n+1))+A350123(n+1)`
-/

namespace A396283.P13868189083896900489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000290 (n + 1) - 2 * A024916 (n + 1)) + A350123 (n + 1)

end

end A396283.P13868189083896900489

noncomputable section

/-- A396283: a(n) = Sum_{k=1..n} (n mod k)^2.

Offset 1, canonical program `A396283.P13868189083896900489`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396283 (n : ℕ) : ℤ :=
  A396283.P13868189083896900489.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396283.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396284.P3005908805938491279

`(n+1)*(A000578(n+1)-3*((n+1)*A024916(n+1)-A350123(n+1)))-A356249(n+1)`
-/

namespace A396284.P3005908805938491279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000578 (n + 1) - 3 * ((n + 1 : ℤ) * A024916 (n + 1) - A350123 (n + 1))) - A356249 (n + 1)

end

end A396284.P3005908805938491279

noncomputable section

/-- A396284: a(n) = Sum_{k=1..n} (n mod k)^3.

Offset 1, canonical program `A396284.P3005908805938491279`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396284 (n : ℕ) : ℤ :=
  A396284.P3005908805938491279.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396284.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396467.P1293345253100451359

`A396285(n+1)-C(n+1, 3)`
-/

namespace A396467.P1293345253100451359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396285 (n + 1) - (Nat.choose (n + 1) 3 : ℤ)

end

end A396467.P1293345253100451359

noncomputable section

/-- A396467: a(n) is the number of distinct triples of triangles chosen from n^2 unit triangles of a triangular grid up to rotation and excluding the centers of three triangles in a same symmetrical axis.

Offset 1, canonical program `A396467.P1293345253100451359`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396467 (n : ℕ) : ℤ :=
  A396467.P1293345253100451359.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396467.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396514.P190034944072554770

`A018804(n+1)-A000203(n+1)`
-/

namespace A396514.P190034944072554770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (n + 1) - A000203 (n + 1)

end

end A396514.P190034944072554770

noncomputable section

/-- A396514: a(n) = Sum_{k=1..n, k does not divide n} gcd(k,n).

Offset 1, canonical program `A396514.P190034944072554770`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396514 (n : ℕ) : ℤ :=
  A396514.P190034944072554770.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396514.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396531.P11472029456509007010

`∑{#}[2*n, (-1)^#*C(2*n, #)*A000108(3*n-#)]`
-/

namespace A396531.P11472029456509007010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1) ^ k * (Nat.choose (2 * n) k : ℤ) * A000108 (3 * n - k)

end

end A396531.P11472029456509007010

noncomputable section

/-- A396531: First column of the triangular array with T(0, m) = binomial(2*m, m)/(m + 1) = A000108(m) and T(n, m) = T(n - 1, m + 3) - 2*T(n - 1, m + 2) + T(n - 1, m + 1).

Offset 0, canonical program `A396531.P11472029456509007010`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396531 (n : ℕ) : ℤ :=
  A396531.P11472029456509007010.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396531.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396641.P2215949741411272717

`(6*A253880(n+1)+1)/7`
-/

namespace A396641.P2215949741411272717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 * A253880 (n + 1) + 1 : ℚ) / 7

end

end A396641.P2215949741411272717

noncomputable section

/-- A396641: Centered hexagonal numbers h such that 7*h is also a centered hexagonal number.

Offset 1, canonical program `A396641.P2215949741411272717`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396641 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A396641.P2215949741411272717.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396641.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396686.P3676614447419960955

`A070939(2*(n+1)²)`
-/

namespace A396686.P3676614447419960955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (2 * (n + 1) ^ 2)

end

end A396686.P3676614447419960955

noncomputable section

/-- A396686: a(n) = floor(2*log_2(n)) + 2.

Offset 1, canonical program `A396686.P3676614447419960955`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396686 (n : ℕ) : ℤ :=
  A396686.P3676614447419960955.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396686.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396689.P6792333059227703695

`A216073(n+2)*A080806(n+2)`
-/

namespace A396689.P6792333059227703695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216073 (n + 2) * A080806 (n + 2)

end

end A396689.P6792333059227703695

noncomputable section

/-- A396689: Numbers k such that binomial(x + 4, 5) - binomial(x, 5) = k^2 for some integer x >= 5.

Offset 1, canonical program `A396689.P6792333059227703695`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396689 (n : ℕ) : ℤ :=
  A396689.P6792333059227703695.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396689.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397187.P6130818575841428385

`((n+2)^A000040(n+1)-(n+1)^A000040(n+1)-1)/A000040(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397187.P6130818575841428385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℚ) ^ (A000040 (n + 1) : ℤ) - (n + 1 : ℚ) ^ (A000040 (n + 1) : ℤ) - 1) / (A000040 (n + 1) : ℚ)

end

end A397187.P6130818575841428385

noncomputable section

/-- A397187: a(n) = ((n + 1)^prime(n) - n^prime(n) - 1)/prime(n).

Offset 1, canonical program `A397187.P6130818575841428385`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397187 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A397187.P6130818575841428385.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397187.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397326.P3276265740757930615

`∑{#}[n, (-1)^#*C(n, #)*A001006(2*n-#)²]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397326.P3276265740757930615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1) ^ k * (Nat.choose n k : ℤ) * A001006 (2 * n - k) ^ 2

end

end A397326.P3276265740757930615

noncomputable section

/-- A397326: a(n) = Sum_{j=0..n} (-1)^j*binomial(n, j) * A001006(2*n - j)^2.

Offset 0, canonical program `A397326.P3276265740757930615`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397326 (n : ℕ) : ℤ :=
  A397326.P3276265740757930615.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397326.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397424.P11634624968641727163

`A074854(n+1)%(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397424.P11634624968641727163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074854 (n + 1)) (n + 1 : ℤ)

end

end A397424.P11634624968641727163

noncomputable section

/-- A397424: a(n) = A074854(n) mod n.

Offset 1, canonical program `A397424.P11634624968641727163`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397424 (n : ℕ) : ℤ :=
  A397424.P11634624968641727163.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397424.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397466.P10007294299205545502

`A000040(floor((n+1)*sqrt(2)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397466.P10007294299205545502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋.toNat

end

end A397466.P10007294299205545502

noncomputable section

/-- A397466: a(n) = prime(floor(n*sqrt(2))).

Offset 1, canonical program `A397466.P10007294299205545502`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(floor((n+1)*sqrt(2)))` (program `A397466.P10007294299205545502`, by `A397466.P10007294299205545502.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A397466 (n : ℕ) : ℤ :=
  A397466.P10007294299205545502.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(floor((n+1)*sqrt(2)))` (program `A397466.P10007294299205545502`, by `A397466.P10007294299205545502.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A397466.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A397467.P15957268274473207768

`A000040(2*(n+1)+floor((n+1)*sqrt(2)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397467.P15957268274473207768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((2 * (n + 1) : ℤ) + ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋).toNat

end

end A397467.P15957268274473207768

noncomputable section

/-- A397467: a(n) = prime(2n + floor(n*sqrt(2))).

Offset 1, canonical program `A397467.P15957268274473207768`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(2*(n+1)+floor((n+1)*sqrt(2)))` (program `A397467.P15957268274473207768`, by `A397467.P15957268274473207768.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A397467 (n : ℕ) : ℤ :=
  A397467.P15957268274473207768.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(2*(n+1)+floor((n+1)*sqrt(2)))` (program `A397467.P15957268274473207768`, by `A397467.P15957268274473207768.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A397467.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A397468.P17706950763602875033

`A000040(floor((n+1)*sqrt(3)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397468.P17706950763602875033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ⌊(n + 1 : ℝ) * Real.sqrt (3 : ℝ)⌋.toNat

end

end A397468.P17706950763602875033

noncomputable section

/-- A397468: a(n) = prime(floor(n*sqrt(3))).

Offset 1, canonical program `A397468.P17706950763602875033`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(floor((n+1)*sqrt(3)))` (program `A397468.P17706950763602875033`, by `A397468.P17706950763602875033.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A397468 (n : ℕ) : ℤ :=
  A397468.P17706950763602875033.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(floor((n+1)*sqrt(3)))` (program `A397468.P17706950763602875033`, by `A397468.P17706950763602875033.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A397468.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A397491.P13383591952212142653

`A366489(n)/210`
-/

namespace A397491.P13383591952212142653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366489 n : ℚ) / 210

end

end A397491.P13383591952212142653

noncomputable section

/-- A397491: a(n) = (n^13 - n)/2730.

Offset 0, canonical program `A397491.P13383591952212142653`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397491 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A397491.P13383591952212142653.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397491.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397580.P8035210197760338808

`(n+1)*A122649(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397580.P8035210197760338808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A122649 (n + 1)

end

end A397580.P8035210197760338808

noncomputable section

/-- A397580: a(n) = n*A122649(n) = n*((2*n - 1)!! - (2*n - 2)!!).

Offset 1, canonical program `A397580.P8035210197760338808`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397580 (n : ℕ) : ℤ :=
  A397580.P8035210197760338808.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397580.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397615.P2609637902578900733

`A000040(floor((n+1)*sqrt(5)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397615.P2609637902578900733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ⌊(n + 1 : ℝ) * Real.sqrt (5 : ℝ)⌋.toNat

end

end A397615.P2609637902578900733

noncomputable section

/-- A397615: a(n) = prime(floor(n*sqrt(5))).

Offset 1, canonical program `A397615.P2609637902578900733`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(floor((n+1)*sqrt(5)))` (program `A397615.P2609637902578900733`, by `A397615.P2609637902578900733.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A397615 (n : ℕ) : ℤ :=
  A397615.P2609637902578900733.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(floor((n+1)*sqrt(5)))` (program `A397615.P2609637902578900733`, by `A397615.P2609637902578900733.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A397615.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A397617.P4642029768052025097

`A000040(floor((n+1)*e))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397617.P4642029768052025097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ⌊(n + 1 : ℝ) * Real.exp 1⌋.toNat

end

end A397617.P4642029768052025097

noncomputable section

/-- A397617: a(n) = prime(floor(n*e)).

Offset 1, canonical program `A397617.P4642029768052025097`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(floor((n+1)*e))` (program `A397617.P4642029768052025097`, by `A397617.P4642029768052025097.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A397617 (n : ℕ) : ℤ :=
  A397617.P4642029768052025097.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(floor((n+1)*e))` (program `A397617.P4642029768052025097`, by `A397617.P4642029768052025097.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A397617.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A397618.P2373068123337456110

`A000040(floor((n+1)*e/(e-1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397618.P2373068123337456110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ⌊(n + 1 : ℝ) * Real.exp 1 / (Real.exp 1 - 1)⌋.toNat

end

end A397618.P2373068123337456110

noncomputable section

/-- A397618: a(n) = prime(floor(n*e/(e-1))).

Offset 1, canonical program `A397618.P2373068123337456110`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(floor((n+1)*e/(e-1)))` (program `A397618.P2373068123337456110`, by `A397618.P2373068123337456110.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A397618 (n : ℕ) : ℤ :=
  A397618.P2373068123337456110.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(floor((n+1)*e/(e-1)))` (program `A397618.P2373068123337456110`, by `A397618.P2373068123337456110.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A397618.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A397627.P57665162522871449

`A000040(A026351(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397627.P57665162522871449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A026351 n).toNat

end

end A397627.P57665162522871449

noncomputable section

/-- A397627: a(n) = prime(A026351(n)).

Offset 1, canonical program `A397627.P57665162522871449`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A026351(n))` (program `A397627.P57665162522871449`, by `A397627.P57665162522871449.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A397627 (n : ℕ) : ℤ :=
  A397627.P57665162522871449.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A026351(n))` (program `A397627.P57665162522871449`, by `A397627.P57665162522871449.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A397627.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A397628.P1118635807216625809

`A000040(A026352(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397628.P1118635807216625809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A026352 (n + 1)).toNat

end

end A397628.P1118635807216625809

noncomputable section

/-- A397628: a(n) = prime(A026352(n)).

Offset 1, canonical program `A397628.P1118635807216625809`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A026352(n+1))` (program `A397628.P1118635807216625809`, by `A397628.P1118635807216625809.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A397628 (n : ℕ) : ℤ :=
  A397628.P1118635807216625809.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A026352(n+1))` (program `A397628.P1118635807216625809`, by `A397628.P1118635807216625809.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A397628.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A397691.P3464348281596680652

`A060553(n+2)-1`
-/

namespace A397691.P3464348281596680652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060553 (n + 2) - 1

end

end A397691.P3464348281596680652

noncomputable section

/-- A397691: Number of orbits of nonzero binary algebraic forms of degree n with coefficients in the field with two elements, under the action of SL(2,2).

Offset 1, canonical program `A397691.P3464348281596680652`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397691 (n : ℕ) : ℤ :=
  A397691.P3464348281596680652.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397691.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397713.P732737537006810765

`A070939(A007318(n))`
-/

namespace A397713.P732737537006810765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A007318 n).toNat

end

end A397713.P732737537006810765

noncomputable section

/-- A397713: Triangle read by rows: T(n,k) is the number of binary digits in binomial(n,k).

Offset 0, canonical program `A397713.P732737537006810765`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397713 (n : ℕ) : ℤ :=
  A397713.P732737537006810765.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397713.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397715.P8063238104841521262

`∑{#}[n, A002109(#)*A002109(n-#)]`
-/

namespace A397715.P8063238104841521262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A002109 k * A002109 (n - k)

end

end A397715.P8063238104841521262

noncomputable section

/-- A397715: Self-convolution of hyperfactorials (A002109).

Offset 0, canonical program `A397715.P8063238104841521262`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397715 (n : ℕ) : ℤ :=
  A397715.P8063238104841521262.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397715.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397717.P3044417372378662278

`∑{#}[n, A002109(#)*A000178(n-#)]`
-/

namespace A397717.P3044417372378662278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A002109 k * A000178 (n - k)

end

end A397717.P3044417372378662278

noncomputable section

/-- A397717: Convolution of hyperfactorials and superfactorials.

Offset 0, canonical program `A397717.P3044417372378662278`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397717 (n : ℕ) : ℤ :=
  A397717.P3044417372378662278.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397717.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397718.P14206182388537485238

`∑{#}[n, A000178(#)*A000178(n-#)]`
-/

namespace A397718.P14206182388537485238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000178 k * A000178 (n - k)

end

end A397718.P14206182388537485238

noncomputable section

/-- A397718: Self-convolution of superfactorials (A000178).

Offset 0, canonical program `A397718.P14206182388537485238`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397718 (n : ℕ) : ℤ :=
  A397718.P14206182388537485238.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397718.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397801.P10674669512506407556

`a(n-4)+A007949(n)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A397801.P10674669512506407556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  a (n - 4) + A007949 n

end

end A397801.P10674669512506407556

noncomputable section

/-- A397801: 3-adic valuation of the quadruple factorial of n.

Offset 0, canonical program `A397801.P10674669512506407556`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397801 (n : ℕ) : ℤ :=
  A397801.P10674669512506407556.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397801.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397833.P6945550512634513775

`2^n-A118870(n)`
-/

namespace A397833.P6945550512634513775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A118870 n

end

end A397833.P6945550512634513775

noncomputable section

/-- A397833: Number of binary words of length n containing the consecutive word abab.

Offset 0, canonical program `A397833.P6945550512634513775`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397833 (n : ℕ) : ℤ :=
  A397833.P6945550512634513775.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397833.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398065.P7452325410805279517

`a(n-1)+A069268(n+1)` with `a(0)=1`
-/

namespace A398065.P7452325410805279517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A069268 (n + 1)

end

end A398065.P7452325410805279517

noncomputable section

/-- A398065: Partial sums of A069268: a(n) = Sum_{k=1..n} gcd(k!, k*(k+1)/2).

Offset 1, canonical program `A398065.P7452325410805279517`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398065 (n : ℕ) : ℤ :=
  A398065.P7452325410805279517.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398065.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398268.P17280064720214812827

`a(n-1)+A069268(n+1)^5` with `a(0)=1`
-/

namespace A398268.P17280064720214812827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A069268 (n + 1) ^ 5

end

end A398268.P17280064720214812827

noncomputable section

/-- A398268: Sum of fifth powers of A069268: a(n) = Sum_{k=1..n} gcd(k!, k*(k+1)/2)^5.

Offset 1, canonical program `A398268.P17280064720214812827`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398268 (n : ℕ) : ℤ :=
  A398268.P17280064720214812827.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398268.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398564.P7925307628146078000

`(row(n)+1)*(col(n)+1)/A007947(gcd(row(n)+1, col(n)+1))`
-/

namespace A398564.P7925307628146078000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n + 1) * (SequenceMachineLib.triCol n + 1) : ℚ) / (A007947 (Nat.gcd (SequenceMachineLib.triRow n + 1) (SequenceMachineLib.triCol n + 1)) : ℚ)

end

end A398564.P7925307628146078000

noncomputable section

/-- A398564: Triangle read by rows: T(n,k) is the greatest common divisor of the numbers of ways to form j simultaneous cross-team handshakes between teams of n and k distinct people, with each person participating in at most one handshake, for 1 <= j <= k <= n.

Offset 1, canonical program `A398564.P7925307628146078000`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398564 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398564.P7925307628146078000.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398564.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398709.P7989658470484696830

`A159289(n)-1`
-/

namespace A398709.P7989658470484696830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159289 n - 1

end

end A398709.P7989658470484696830

noncomputable section

/-- A398709: a(n) = floor(((5 + sqrt(17))/2)^n).

Offset 1, canonical program `A398709.P7989658470484696830`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398709 (n : ℕ) : ℤ :=
  A398709.P7989658470484696830.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398709.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398808.P3237987185005976780

`∑{#}[n, A276018(#)*A276018(n-#)]`
-/

namespace A398808.P3237987185005976780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A276018 k * A276018 (n - k)

end

end A398808.P3237987185005976780

noncomputable section

/-- A398808: a(n) = 27^n * [z^n] 2F1(1/3, 1/3; 1; z)^2.

Offset 0, canonical program `A398808.P3237987185005976780`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398808 (n : ℕ) : ℤ :=
  A398808.P3237987185005976780.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398808.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399035.P1234000300610669650

`A000110(n-2)-2*a(n-1)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A399035.P1234000300610669650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A000110 (n - 2) - 2 * a (n - 1) - a (n - 2)

end

end A399035.P1234000300610669650

noncomputable section

/-- A399035: The unique sequence a(n) such that A000296(n) = a(n) + a(n+1).

Offset 0, canonical program `A399035.P1234000300610669650`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399035 (n : ℕ) : ℤ :=
  A399035.P1234000300610669650.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399035.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399053.P357460627173344980

`∑{#}[floor((n+1)^(1/3))-1, A008683(#+1)*(#+1)^3*C(floor((n+1)/(#+1)^3)+1, 2)]`
-/

namespace A399053.P357460627173344980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A008683 (k + 1) * ((k + 1) ^ 3 : ℤ) * (Nat.choose (⌊(n + 1 : ℚ) / ((k + 1) ^ 3 : ℚ)⌋ + 1).toNat 2 : ℤ)

end

end A399053.P357460627173344980

noncomputable section

/-- A399053: Sum of cubefree numbers <= n.

Offset 1, canonical program `A399053.P357460627173344980`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399053 (n : ℕ) : ℤ :=
  A399053.P357460627173344980.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399053.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399056.P5606043138281039820

`(n+1)²-2*A000720((n+1)²)`
-/

namespace A399056.P5606043138281039820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - 2 * A000720 ((n + 1) ^ 2)

end

end A399056.P5606043138281039820

noncomputable section

/-- A399056: a(n) = (number of nonprimes <= n^2) - (number of primes <= n^2).

Offset 1, canonical program `A399056.P5606043138281039820`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399056 (n : ℕ) : ℤ :=
  A399056.P5606043138281039820.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399056.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399081.P16471427921113068956

`A000265(A003418(row(n)+1)/(col(n)+1))`
-/

namespace A399081.P16471427921113068956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A003418 (SequenceMachineLib.triRow n + 1) : ℚ) / (SequenceMachineLib.triCol n + 1 : ℚ))).toNat

end

end A399081.P16471427921113068956

noncomputable section

/-- A399081: Triangle read by rows: T(n,k) = Product_{p odd prime, 3 <= p <= n} p^(floor(log(n) /log(p)) - v_p(k)), where v_p(k) - p-adic valuation and T(1,1) = T(2,1) = T(2,2) = 1.

Offset 1, canonical program `A399081.P16471427921113068956`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399081 (n : ℕ) : ℤ :=
  A399081.P16471427921113068956.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399081.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399250.P11468596376330613414

`A174344(n+1)*A274923(n+1)`
-/

namespace A399250.P11468596376330613414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (n + 1) * A274923 (n + 1)

end

end A399250.P11468596376330613414

noncomputable section

/-- A399250: Product of the x- and y-coordinates of a point moving in a square spiral.

Offset 1, canonical program `A399250.P11468596376330613414`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399250 (n : ℕ) : ℤ :=
  A399250.P11468596376330613414.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399250.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399251.P6576249541322394034

`A174344(n+1)²-A274923(n+1)²`
-/

namespace A399251.P6576249541322394034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (n + 1) ^ 2 - A274923 (n + 1) ^ 2

end

end A399251.P6576249541322394034

noncomputable section

/-- A399251: a(n) = x^2 - y^2, where (x, y) are the coordinates of the n-th point of the square counterclockwise spiral with n=1 at the origin.

Offset 1, canonical program `A399251.P6576249541322394034`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399251 (n : ℕ) : ℤ :=
  A399251.P6576249541322394034.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399251.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399431.P9696602572664343429

`(2^A000040(n+1)-2)/A000040(n+1)+2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A399431.P9696602572664343429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A000040 (n + 1) : ℤ) - 2) / (A000040 (n + 1) : ℚ) + 2

end

end A399431.P9696602572664343429

noncomputable section

/-- A399431: a(n) = (2^prime(n) - 2)/prime(n) + 2.

Offset 1, canonical program `A399431.P9696602572664343429`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399431 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A399431.P9696602572664343429.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399431.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399520.P9692045178190648794

`n+1-A000149(A000195(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A399520.P9692045178190648794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000149 (A000195 (n + 1)).toNat

end

end A399520.P9692045178190648794

noncomputable section

/-- A399520: a(n) = n - A000149(A000195(n)), where A000149 = floor o exp, A000195 = floor o log.

Offset 1, canonical program `A399520.P9692045178190648794`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399520 (n : ℕ) : ℤ :=
  A399520.P9692045178190648794.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399520.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399841.P8409433032057062939

`A087935(n+1)%(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A399841.P8409433032057062939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087935 (n + 1)) (n + 1 : ℤ)

end

end A399841.P8409433032057062939

noncomputable section

/-- A399841: a(n) = A087935(n) mod n.

Offset 1, canonical program `A399841.P8409433032057062939`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399841 (n : ℕ) : ℤ :=
  A399841.P8409433032057062939.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399841.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399989.P6324952000577847683

`4*a(n-1)+4*a(n-2)+A000108(n-1)-6*A000108(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A399989.P6324952000577847683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  4 * a (n - 1) + 4 * a (n - 2) + A000108 (n - 1) - 6 * A000108 (n - 2)

end

end A399989.P6324952000577847683

noncomputable section

/-- A399989: Number of fixed point free involutions in S_{2n} (or perfect matchings on [2n]) which avoid the permutations {123, 213, 231}.

Offset 0, canonical program `A399989.P6324952000577847683`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399989 (n : ℕ) : ℤ :=
  A399989.P6324952000577847683.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399989.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400179.P4702326977669117953

`1+a(A053188(n))` with `a(0)=0`
-/

namespace A400179.P4702326977669117953
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (A053188 n).toNat

end

end A400179.P4702326977669117953

noncomputable section

/-- A400179: a(n) = number of iterations of the map n -> A053188(n) needed to reach 0, starting from n.

Offset 0, canonical program `A400179.P4702326977669117953`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400179 (n : ℕ) : ℤ :=
  (A400179.P4702326977669117953.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400179.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400575.P15212467629946375614

`∑{#}[n, C(n+1+#-1, 2*#)*A000108(#)*(n+1)^#]`
-/

namespace A400575.P15212467629946375614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose ((n + 1 + k : ℤ) - 1).toNat (2 * k) : ℤ) * A000108 k * ((n + 1) ^ k : ℤ)

end

end A400575.P15212467629946375614

noncomputable section

/-- A400575: a(n) = (1/n) * Sum_{k=0..n-1} binomial(n+k-1,k) * binomial(n,n-k-1) * n^k.

Offset 1, canonical program `A400575.P15212467629946375614`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400575 (n : ℕ) : ℤ :=
  A400575.P15212467629946375614.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400575.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400687.P16773137454345729550

`a(n-1)+A069268(n+1)²` with `a(0)=1`
-/

namespace A400687.P16773137454345729550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A069268 (n + 1) ^ 2

end

end A400687.P16773137454345729550

noncomputable section

/-- A400687: a(n) = Sum_{k=1..n} gcd(k!, k*(k+1)/2)^2.

Offset 1, canonical program `A400687.P16773137454345729550`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400687 (n : ℕ) : ℤ :=
  A400687.P16773137454345729550.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400687.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400797.P15196637446887860738

`A400796(n)%5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400797.P15196637446887860738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A400796 n) 5

end

end A400797.P15196637446887860738

noncomputable section

/-- A400797: a(n) = A400796(n) mod 5.

Offset 0, canonical program `A400797.P15196637446887860738`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400797 (n : ℕ) : ℤ :=
  A400797.P15196637446887860738.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400797.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401008.P3884751415526295586

`A065033(n+1)-A001227(n+1)`
-/

namespace A401008.P3884751415526295586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (n + 1) - A001227 (n + 1)

end

end A401008.P3884751415526295586

noncomputable section

/-- A401008: a(n) = the number of odd non-divisors of n in 1..n.

Offset 1, canonical program `A401008.P3884751415526295586`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401008 (n : ℕ) : ℤ :=
  A401008.P3884751415526295586.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401008.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401031.P18122269830751302283

`A001405(floor((1+2*n)/3))`
-/

namespace A401031.P18122269830751302283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 ⌊(1 + 2 * n : ℚ) / 3⌋.toNat

end

end A401031.P18122269830751302283

noncomputable section

/-- A401031: Number of compositions of n using 1's and 2's such that the number of 1's and 2's differ by 0 or 1.

Offset 0, canonical program `A401031.P18122269830751302283`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401031 (n : ℕ) : ℤ :=
  A401031.P18122269830751302283.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401031.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401034.P16809251032672177720

`n+1+A174344(n+1)+A274923(n+1)`
-/

namespace A401034.P16809251032672177720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A174344 (n + 1) + A274923 (n + 1)

end

end A401034.P16809251032672177720

noncomputable section

/-- A401034: a(n) = n + x + y where x and y are the coordinates of n in the square spiral.

Offset 1, canonical program `A401034.P16809251032672177720`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401034 (n : ℕ) : ℤ :=
  A401034.P16809251032672177720.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401034.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401078.P8694535385630549604

`A000040(A000720(a(n-1)))+A000040(A000720(a(n-1))-1)` with `a(0)=2, a(1)=3`
-/

namespace A401078.P8694535385630549604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A000040 (A000720 (a (n - 1)).toNat).toNat + A000040 (A000720 (a (n - 1)).toNat - 1).toNat

end

end A401078.P8694535385630549604

noncomputable section

/-- A401078: a(1)=2, a(2)=3, thereafter a(n) is the sum of the two largest primes <= a(n-1).

Offset 1, canonical program `A401078.P8694535385630549604`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401078 (n : ℕ) : ℤ :=
  A401078.P8694535385630549604.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401078.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401122.P1083847370963079364

`(n+1)*C(n, floor(n/2))²+(1+(-1)^(n+1))*A000108(floor((n+1)/2))²/2`
-/

namespace A401122.P1083847370963079364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Nat.choose n ⌊(n : ℚ) / 2⌋.toNat ^ 2 : ℚ) + ((1 + (-1) ^ (n + 1)) * A000108 ⌊(n + 1 : ℚ) / 2⌋.toNat ^ 2 : ℚ) / 2

end

end A401122.P1083847370963079364

noncomputable section

/-- A401122: a(n) is the size of the annular Jones monoid of degree n.

Offset 1, canonical program `A401122.P1083847370963079364`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401122 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A401122.P1083847370963079364.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401122.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365606.P601564546117692872

`A381517(n)+4`
-/

namespace A365606.P601564546117692872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381517 n + 4

end

end A365606.P601564546117692872

noncomputable section

/-- A365606: Number of degree 2 vertices in the n-Sierpinski carpet graph.

Offset 1, canonical program `A365606.P601564546117692872`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365606 (n : ℕ) : ℤ :=
  A365606.P601564546117692872.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365606.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370603.P3637785509152498919

`(n+1)*A370608(n+1)`
-/

namespace A370603.P3637785509152498919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A370608 (n + 1)

end

end A370603.P3637785509152498919

noncomputable section

/-- A370603: a(n) = n! * Sum_{d|n} 1/((d-1)! * (n/d)!^(d-1)).

Offset 1, canonical program `A370603.P3637785509152498919`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370603 (n : ℕ) : ℤ :=
  A370603.P3637785509152498919.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370603.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373098.P15756619585325101319

`A373099(n)-1`
-/

namespace A373098.P15756619585325101319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373099 n - 1

end

end A373098.P15756619585325101319

noncomputable section

/-- A373098: Last digit of n*2^n.

Offset 0, canonical program `A373098.P15756619585325101319`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373098 (n : ℕ) : ℤ :=
  A373098.P15756619585325101319.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373098.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A376056.P875746772787377381

`(2*n+1)*A376057(n)+1`
-/

namespace A376056.P875746772787377381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A376057 n + 1

end

end A376056.P875746772787377381

noncomputable section

/-- A376056: Lexicographically earliest sequence of positive integers a(1), a(2), a(3), ... such that for any n > 0, S(n) = Sum_{k = 1..n} (2*k-1)/a(k) < 1.

Offset 1, canonical program `A376056.P875746772787377381`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376056 (n : ℕ) : ℤ :=
  A376056.P875746772787377381.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376056.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385893.P14429800463252187484

`A385938(a(n-1))` with `a(0)=26`
-/

namespace A385893.P14429800463252187484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [26] fun n a =>
  A385938 (a (n - 1)).toNat

end

end A385893.P14429800463252187484

noncomputable section

/-- A385893: Cycle of length 130 in the dynamical system A385938 starting from 26.

Offset 0, canonical program `A385893.P14429800463252187484`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385893 (n : ℕ) : ℤ :=
  A385893.P14429800463252187484.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385893.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387366.P4636976032307659673

`(n+2)/2*A387368(n)`
-/

namespace A387366.P4636976032307659673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A387368 n : ℚ)

end

end A387366.P4636976032307659673

noncomputable section

/-- A387366: Expansion of 1/(1 - 10*x + x^2)^(3/2).

Offset 0, canonical program `A387366.P4636976032307659673`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387366 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387366.P4636976032307659673.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387366.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387367.P15417469161432908599

`C(n+4, 2)/6*A387369(n)`
-/

namespace A387367.P15417469161432908599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 2 : ℚ) / 6 * (A387369 n : ℚ)

end

end A387367.P15417469161432908599

noncomputable section

/-- A387367: Expansion of 1/(1 - 10*x + x^2)^(5/2).

Offset 0, canonical program `A387367.P15417469161432908599`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387367 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387367.P15417469161432908599.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387367.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391680.P13601625954848121569

`A011782(n+1)-A391683(n+1)`
-/

namespace A391680.P13601625954848121569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) - A391683 (n + 1)

end

end A391680.P13601625954848121569

noncomputable section

/-- A391680: Number of integer compositions of n that are not the first sums of any composition.

Offset 1, canonical program `A391680.P13601625954848121569`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391680 (n : ℕ) : ℤ :=
  A391680.P13601625954848121569.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391680.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391681.P12481092097052240636

`A212804(n+1)-A391683(n+1)`
-/

namespace A391681.P12481092097052240636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) - A391683 (n + 1)

end

end A391681.P12481092097052240636

noncomputable section

/-- A391681: Number of integer compositions of n with all parts > 1 that are not the first sums of any composition.

Offset 1, canonical program `A391681.P12481092097052240636`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391681 (n : ℕ) : ℤ :=
  A391681.P12481092097052240636.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391681.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395656.P16112458014712086888

`A395659(n)/(n+1)`
-/

namespace A395656.P16112458014712086888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A395659 n : ℚ) / (n + 1 : ℚ)

end

end A395656.P16112458014712086888

noncomputable section

/-- A395656: Expansion of 1/(9*x) * (1/(4-3*g)^3 - 1), where g = 1+x*g^4 is the g.f. of A002293.

Offset 0, canonical program `A395656.P16112458014712086888`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395656 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A395656.P16112458014712086888.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395656.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395657.P15750388144610887179

`A395660(n)/(n+1)`
-/

namespace A395657.P15750388144610887179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A395660 n : ℚ) / (n + 1 : ℚ)

end

end A395657.P15750388144610887179

noncomputable section

/-- A395657: Expansion of 1/(16*x) * (1/(5-4*g)^4 - 1), where g = 1+x*g^5 is the g.f. of A002294.

Offset 0, canonical program `A395657.P15750388144610887179`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395657 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A395657.P15750388144610887179.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395657.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395829.P11120994273887423255

`8^n-A395831(n)`
-/

namespace A395829.P11120994273887423255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) - A395831 n

end

end A395829.P11120994273887423255

noncomputable section

/-- A395829: Number of octal strings of length n that contain a specific string xx (where x is a single digit).

Offset 0, canonical program `A395829.P11120994273887423255`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395829 (n : ℕ) : ℤ :=
  A395829.P11120994273887423255.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395829.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397835.P15543943406779029277

`3^n-A397837(n)`
-/

namespace A397835.P15543943406779029277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A397837 n

end

end A397835.P15543943406779029277

noncomputable section

/-- A397835: Number of ternary words of length n over {a,b,c} containing the consecutive word abcabc.

Offset 0, canonical program `A397835.P15543943406779029277`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397835 (n : ℕ) : ℤ :=
  A397835.P15543943406779029277.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397835.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365459.P9893649784102911518

`n+1-A365458(n+1)`
-/

namespace A365459.P9893649784102911518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A365458 (n + 1)

end

end A365459.P9893649784102911518

noncomputable section

/-- A365459: a(n) = n - the largest power of 3 that is less than or equal to n.

Offset 1, canonical program `A365459.P9893649784102911518`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A365458, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365459 (n : ℕ) : ℤ :=
  A365459.P9893649784102911518.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A365458, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365459.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365582.P10913562028929217488

`2-A049777(n+1)+n`
-/

namespace A365582.P10913562028929217488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A049777 (n + 1) + (n : ℤ)

end

end A365582.P10913562028929217488

noncomputable section

/-- A365582: a(n) is the number at the third vertex of an equilateral triangle whose first and second vertices are at the numbers 1 and n, respectively, on a triangular array of integers.

Offset 1, canonical program `A365582.P10913562028929217488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365582 (n : ℕ) : ℤ :=
  A365582.P10913562028929217488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365582.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365624.P4263340535415398689

`A004762(n+2)+A053644(n)+A004762(n+2)`
-/

namespace A365624.P4263340535415398689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004762 (n + 2) + (A053644 n + A004762 (n + 2))

end

end A365624.P4263340535415398689

noncomputable section

/-- A365624: a(n) is the length of the longest word w in the Thue-Morse sequence (A010060) in which every length-n factor of w is unique.

Offset 1, canonical program `A365624.P4263340535415398689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A365624 (n : ℕ) : ℤ :=
  A365624.P4263340535415398689.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A365624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366074.P15334897605484074236

`∑{e}[n+1, A209229(#)]`
-/

namespace A366074.P15334897605484074236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A209229 (Nat.factorization (f1 n) p)

end

end A366074.P15334897605484074236

noncomputable section

/-- A366074: The number of "Fermi-Dirac primes" (A050376) that are unitary divisors of n.

Offset 1, canonical program `A366074.P15334897605484074236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366074 (n : ℕ) : ℤ :=
  A366074.P15334897605484074236.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366125.P4631598459402495062

`∑{e}[n+1, A175676(#)]`
-/

namespace A366125.P4631598459402495062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A175676 (Nat.factorization (f1 n) p)

end

end A366125.P4631598459402495062

noncomputable section

/-- A366125: The number of prime factors of the cube root of the largest unitary divisor of n that is a cube (A366126), counted with multiplicity.

Offset 1, canonical program `A366125.P4631598459402495062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366125 (n : ℕ) : ℤ :=
  A366125.P4631598459402495062.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366202.P3672782071348663471

`lt[A000122(and(n, n²)), 1]`
-/

namespace A366202.P3672782071348663471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (Nat.land n (n ^ 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A366202.P3672782071348663471

noncomputable section

/-- A366202: Numbers x such that (x^2 AND x) is not a square, where AND is the bitwise logical-and operation.

Offset 1, canonical program `A366202.P3672782071348663471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A366202 (n : ℕ) : ℤ :=
  (A366202.P3672782071348663471.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A366202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366288.P11447118264876121034

`lt[1, A051903(3*(n+1))]+1`
-/

namespace A366288.P11447118264876121034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A366288.P11447118264876121034

noncomputable section

/-- A366288: Numbers k such that 3*k is not squarefree.

Offset 1, canonical program `A366288.P11447118264876121034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366288 (n : ℕ) : ℤ :=
  (A366288.P11447118264876121034.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366462.P1666175288754453737

`A004762(n+3)+n`
-/

namespace A366462.P1666175288754453737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004762 (n + 3) + (n : ℤ)

end

end A366462.P1666175288754453737

noncomputable section

/-- A366462: a(n) is the length of the longest word w in the Period-doubling sequence (A096268) in which every length-n factor of w is unique.

Offset 1, canonical program `A366462.P1666175288754453737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A366462 (n : ℕ) : ℤ :=
  A366462.P1666175288754453737.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A366462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366509.P1275813043773061125

`A002024(n+1)-A123578(A025581(n))`
-/

namespace A366509.P1275813043773061125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) - A123578 (A025581 n).toNat

end

end A366509.P1275813043773061125

noncomputable section

/-- A366509: a(n) is the maximum number of dots on the slope of a Ferrers diagram of a partition of n into distinct parts.

Offset 1, canonical program `A366509.P1275813043773061125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366509 (n : ℕ) : ℤ :=
  A366509.P1275813043773061125.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366509.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366563.P7702288216470137659

`∑{d}[n+1, A059841(#*C(n, 3)%2)]`
-/

namespace A366563.P7702288216470137659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059841 (d * (Nat.choose n 3 % 2))

end

end A366563.P7702288216470137659

noncomputable section

/-- A366563: Number of nonzero terms in row n of A366561(n,k).

Offset 1, canonical program `A366563.P7702288216470137659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 192 terms. -/
def A366563 (n : ℕ) : ℤ :=
  A366563.P7702288216470137659.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 192 terms. -/
def A366563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366918.P12560606387716374749

`A065475(A281188(n+1)+1)-2`
-/

namespace A366918.P12560606387716374749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A281188 (n + 1) + 1).toNat - 2

end

end A366918.P12560606387716374749

noncomputable section

/-- A366918: a(n) is the number of multiples of n that have exactly n divisors, or -1 if there are infinitely many such numbers.

Offset 1, canonical program `A366918.P12560606387716374749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366918 (n : ℕ) : ℤ :=
  A366918.P12560606387716374749.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366988.P1976086418433088332

`∑{e}[n+1, A000720(#)]`
-/

namespace A366988.P1976086418433088332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000720 (Nat.factorization (f1 n) p)

end

end A366988.P1976086418433088332

noncomputable section

/-- A366988: The number of prime powers of prime numbers (A053810) that divide n.

Offset 1, canonical program `A366988.P1976086418433088332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366988 (n : ℕ) : ℤ :=
  A366988.P1976086418433088332.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367065.P13774689431896902390

`A340510(n+2)-1`
-/

namespace A367065.P13774689431896902390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340510 (n + 2) - 1

end

end A367065.P13774689431896902390

noncomputable section

/-- A367065: a(1)=2, thereafter a(n) is the least positive integer not yet in the sequence such that Sum_{i=1..n} a(i) == 2 (mod n+2).

Offset 1, canonical program `A367065.P13774689431896902390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3840 terms. -/
def A367065 (n : ℕ) : ℤ :=
  A367065.P13774689431896902390.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3840 terms. -/
def A367065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367098.P9964343177810395654

`(A001222(n+1)²-A090885(n+1))/2`
-/

namespace A367098.P9964343177810395654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 1) ^ 2 - A090885 (n + 1) : ℚ) / 2

end

end A367098.P9964343177810395654

noncomputable section

/-- A367098: Number of divisors of n with exactly two distinct prime factors.

Offset 1, canonical program `A367098.P9964343177810395654`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090885, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367098 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367098.P9964343177810395654.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090885, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367098.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367140.P12237919558071202463

`∑{p}[n+1, #^A001222(n+1)]`
-/

namespace A367140.P12237919558071202463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A367140.P12237919558071202463

noncomputable section

/-- A367140: a(n) = Sum_{prime p|n} p^A001222(n).

Offset 1, canonical program `A367140.P12237919558071202463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367140 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367140.P12237919558071202463.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367184.P1691830542074880587

`∑[A099892(n)+1]+2-A233583(A004765(2*n+5))`
-/

namespace A367184.P1691830542074880587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099892 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 - A233583 (A004765 (2 * n + 5)).toNat

end

end A367184.P1691830542074880587

noncomputable section

/-- A367184: Starting index in the Period doubling sequence (A096268) of the first maximum length word in which every subword of length n is distinct.

Offset 1, canonical program `A367184.P1691830542074880587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 383 terms. -/
def A367184 (n : ℕ) : ℤ :=
  A367184.P1691830542074880587.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 383 terms. -/
def A367184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367341.P79265667542176034

`9*A367342(n+1)`
-/

namespace A367341.P79265667542176034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A367342 (n + 1)

end

end A367341.P79265667542176034

noncomputable section

/-- A367341: Numbers without comma-successors: these are the numbers k such that if the commas sequence A121805 is started at k instead of 1, there is no second term.

Offset 1, canonical program `A367341.P79265667542176034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 408 terms. -/
def A367341 (n : ℕ) : ℤ :=
  A367341.P79265667542176034.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 408 terms. -/
def A367341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367362.P4347257855293322710

`10*A010879(n)+A000030(n+1)`
-/

namespace A367362.P4347257855293322710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A010879 n + A000030 (n + 1)

end

end A367362.P4347257855293322710

noncomputable section

/-- A367362: Comma transform of the nonnegative integers.

Offset 0, canonical program `A367362.P4347257855293322710`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367362 (n : ℕ) : ℤ :=
  A367362.P4347257855293322710.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367362.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367369.P6970226305073515709

`A340556(C(2*n+1, 2)+n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A367369.P6970226305073515709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340556 (Nat.choose (2 * n + 1) 2 + n)

end

end A367369.P6970226305073515709

noncomputable section

/-- A367369: a(n) = A340556(2*n, n), the central terms of the second order Eulerian numbers.

Offset 0, canonical program `A367369.P6970226305073515709`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A340556, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367369 (n : ℕ) : ℤ :=
  A367369.P6970226305073515709.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A340556, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367369.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367379.P13796554037346860458

`A072481(n+1)+A000292(n)`
-/

namespace A367379.P13796554037346860458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072481 (n + 1) + A000292 n

end

end A367379.P13796554037346860458

noncomputable section

/-- A367379: a(n) = Sum_{j=1..n} Sum_{i=1..n} (j mod i).

Offset 1, canonical program `A367379.P13796554037346860458`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072481, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367379 (n : ℕ) : ℤ :=
  A367379.P13796554037346860458.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072481, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367379.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367623.P16011491054001822898

`Δ[A122586(n+5)]+1`
-/

namespace A367623.P16011491054001822898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122586 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A367623.P16011491054001822898

noncomputable section

/-- A367623: Number of comma-children of n in base 3.

Offset 1, canonical program `A367623.P16011491054001822898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. -/
def A367623 (n : ℕ) : ℤ :=
  A367623.P16011491054001822898.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. -/
def A367623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367775.P199175975861584648

`∑{#}[n, (-1)^(n-#)*A011971(C(n+1, 2)+#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A367775.P199175975861584648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A011971 (Nat.choose (n + 1) 2 + k) : ℚ)

end

end A367775.P199175975861584648

noncomputable section

/-- A367775: a(n) = Sum_{k=0..n} (-1)^(n - k) * A011971(n, k).

Offset 0, canonical program `A367775.P199175975861584648`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A011971, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367775 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367775.P199175975861584648.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A011971, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367775.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367808.P18130531812148155409

`∑{#}[n, A011971(C(n+1, 2)+#)*2^(n-#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A367808.P18130531812148155409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A011971 (Nat.choose (n + 1) 2 + k) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)

end

end A367808.P18130531812148155409

noncomputable section

/-- A367808: a(n) = Sum_{k=0..n} A011971(n, k) * 2^(n - k).

Offset 0, canonical program `A367808.P18130531812148155409`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A011971, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367808 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367808.P18130531812148155409.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A011971, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367808.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367809.P7004171487013553022

`∑{#}[n, A011971(C(n+1, 2)+#)*(-2)^(n-#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A367809.P7004171487013553022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A011971 (Nat.choose (n + 1) 2 + k) : ℚ) * (-2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)

end

end A367809.P7004171487013553022

noncomputable section

/-- A367809: a(n) = Sum_{k=0..n} A011971(n, k) * (-2)^(n - k).

Offset 0, canonical program `A367809.P7004171487013553022`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A011971, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367809 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367809.P7004171487013553022.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A011971, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367809.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368567.P4927573686977938579

`A065942(n+1)/A081181(n)*A065942(n)`
-/

namespace A368567.P4927573686977938579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065942 (n + 1) : ℚ) / (A081181 n : ℚ) * (A065942 n : ℚ)

end

end A368567.P4927573686977938579

noncomputable section

/-- A368567: Number of Young tableaux of shape [n, floor(n/2)].

Offset 0, canonical program `A368567.P4927573686977938579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. -/
def A368567 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A368567.P4927573686977938579.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. -/
def A368567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368715.P870133316182812064

`lt[1, gcd(A051903(n+1), n+1)]+1`
-/

namespace A368715.P870133316182812064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051903 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A368715.P870133316182812064

noncomputable section

/-- A368715: Numbers that are not coprime to the maximal exponent in their prime factorization.

Offset 1, canonical program `A368715.P870133316182812064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368715 (n : ℕ) : ℤ :=
  (A368715.P870133316182812064.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368781.P2809207346067971306

`A053644(A051903(n+1))`
-/

namespace A368781.P2809207346067971306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A051903 (n + 1)).toNat

end

end A368781.P2809207346067971306

noncomputable section

/-- A368781: The maximal exponent in the unique factorization of n in terms of distinct "Fermi-Dirac primes".

Offset 1, canonical program `A368781.P2809207346067971306`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368781 (n : ℕ) : ℤ :=
  A368781.P2809207346067971306.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368781.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368979.P14242473821901785392

`∏{e}[n+1, A001227(#)]`
-/

namespace A368979.P14242473821901785392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001227 (Nat.factorization (f1 n) p)

end

end A368979.P14242473821901785392

noncomputable section

/-- A368979: The number of exponential divisors of n that are exponentially odd numbers (A268335).

Offset 1, canonical program `A368979.P14242473821901785392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368979 (n : ℕ) : ℤ :=
  A368979.P14242473821901785392.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369020.P13526593118632980904

`eq[A051903(n+1), A051903(n+2)]+1`
-/

namespace A369020.P13526593118632980904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A369020.P13526593118632980904

noncomputable section

/-- A369020: Numbers k such that k and k+1 have the same maximal exponent in their prime factorization.

Offset 1, canonical program `A369020.P13526593118632980904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369020 (n : ℕ) : ℤ :=
  (A369020.P13526593118632980904.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369058.P4047350797808162558

`A000035(n+1)*A101605(n+1)`
-/

namespace A369058.P4047350797808162558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A101605 (n + 1)

end

end A369058.P4047350797808162558

noncomputable section

/-- A369058: a(n) = 1 if n is a product of three (not necessarily distinct) odd primes, otherwise 0.

Offset 1, canonical program `A369058.P4047350797808162558`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101605, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369058 (n : ℕ) : ℤ :=
  A369058.P4047350797808162558.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101605, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369058.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369139.P12055519405445957885

`eq[A001222(2*(n+2)), A001222(n+1)]+1`
-/

namespace A369139.P12055519405445957885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A369139.P12055519405445957885

noncomputable section

/-- A369139: Numbers k such that Omega(k) = 1 + Omega(k + 1).

Offset 1, canonical program `A369139.P12055519405445957885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6620 terms. -/
def A369139 (n : ℕ) : ℤ :=
  (A369139.P12055519405445957885.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6620 terms. -/
def A369139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369309.P724435184133037791

`A190867(n+1)*A197881(n+1)`
-/

namespace A369309.P724435184133037791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190867 (n + 1) * A197881 (n + 1)

end

end A369309.P724435184133037791

noncomputable section

/-- A369309: The number of powerful divisors d of n such that n/d is also powerful.

Offset 1, canonical program `A369309.P724435184133037791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369309 (n : ℕ) : ℤ :=
  A369309.P724435184133037791.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369416.P17300861287348191888

`A369418(n)-A369421(n)`
-/

namespace A369416.P17300861287348191888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369418 n - A369421 n

end

end A369416.P17300861287348191888

noncomputable section

/-- A369416: Expansion of o.g.f. x^4/((1-2*x)^3*(1-3*x)^3).

Offset 0, canonical program `A369416.P17300861287348191888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 202 terms. -/
def A369416 (n : ℕ) : ℤ :=
  A369416.P17300861287348191888.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 202 terms. -/
def A369416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369428.P15870185605642581641

`∑{e}[n+1, A010052(#)]`
-/

namespace A369428.P15870185605642581641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A010052 (Nat.factorization (f1 n) p)

end

end A369428.P15870185605642581641

noncomputable section

/-- A369428: The number of exponents in the prime factorization of n that are squares.

Offset 1, canonical program `A369428.P15870185605642581641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369428 (n : ℕ) : ℤ :=
  A369428.P15870185605642581641.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369472.P6414223032634442109

`A069270(A101881(n))`
-/

namespace A369472.P6414223032634442109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069270 (A101881 n).toNat

end

end A369472.P6414223032634442109

noncomputable section

/-- A369472: Number of achiral polyominoes composed of n pentagonal cells of the hyperbolic regular tiling with Schläfli symbol {5,oo}.

Offset 1, canonical program `A369472.P6414223032634442109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A369472 (n : ℕ) : ℤ :=
  A369472.P6414223032634442109.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A369472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369748.P2504085863916396421

`∑{p}[n+1, A000040((n+1)/#)]`
-/

namespace A369748.P2504085863916396421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat

end

end A369748.P2504085863916396421

noncomputable section

/-- A369748: a(n) = Sum_{p|n, p prime} prime(n/p).

Offset 1, canonical program `A369748.P2504085863916396421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369748 (n : ℕ) : ℤ :=
  A369748.P2504085863916396421.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369854.P4226813083870044623

`A037031(n)-1`
-/

namespace A369854.P4226813083870044623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037031 n - 1

end

end A369854.P4226813083870044623

noncomputable section

/-- A369854: a(n) = number of nonempty subsets S of {1,2,...,n} such that (number of nonprimes in S) = (number of primes in S).

Offset 0, canonical program `A369854.P4226813083870044623`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037031, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369854 (n : ℕ) : ℤ :=
  A369854.P4226813083870044623.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037031, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369854.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369930.P9255884940020075983

`A369592(A004273(n))`
-/

namespace A369930.P9255884940020075983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369592 (A004273 n).toNat

end

end A369930.P9255884940020075983

noncomputable section

/-- A369930: Number of achiral noncrossing partitions composed of n blocks of size 4.

Offset 0, canonical program `A369930.P9255884940020075983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A369930 (n : ℕ) : ℤ :=
  A369930.P9255884940020075983.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A369930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369937.P6430263138363579003

`eq[1, A010052(A051903(n+1))]+1`
-/

namespace A369937.P6430263138363579003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A051903 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A369937.P6430263138363579003

noncomputable section

/-- A369937: Numbers whose maximal exponent in their prime factorization is square.

Offset 1, canonical program `A369937.P6430263138363579003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369937 (n : ℕ) : ℤ :=
  (A369937.P6430263138363579003.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370174.P1788241038717116247

`A155112(n)+T(n-1,k)` with `a(0)=1`
-/

namespace A370174.P1788241038717116247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A155112 n + SequenceMachineLib.triUp a n

end

end A370174.P1788241038717116247

noncomputable section

/-- A370174: Triangle read by rows: Riordan array (1/(1 - x), x*(1 + x)/(1 - x - x^2)).

Offset 0, canonical program `A370174.P1788241038717116247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370174 (n : ℕ) : ℤ :=
  A370174.P1788241038717116247.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370180.P11085315799731063641

`gcd(n+1, A259364(n))`
-/

namespace A370180.P11085315799731063641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A259364 n)

end

end A370180.P11085315799731063641

noncomputable section

/-- A370180: Size of the group Z_3*/(Z_3*)^n, where Z_3 is the ring of 3-adic integers.

Offset 1, canonical program `A370180.P11085315799731063641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370180 (n : ℕ) : ℤ :=
  (A370180.P11085315799731063641.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370182.P17915311671938409757

`gcd(n+1, A055272(A001227(n+1)))`
-/

namespace A370182.P17915311671938409757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A055272 (A001227 (n + 1)).toNat)

end

end A370182.P17915311671938409757

noncomputable section

/-- A370182: Size of the group Z_7*/(Z_7*)^n, where Z_7 is the ring of 7-adic integers.

Offset 1, canonical program `A370182.P17915311671938409757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370182 (n : ℕ) : ℤ :=
  (A370182.P17915311671938409757.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370234.P8117482160563114919

`A110236(Δ[n²])`
-/

namespace A370234.P8117482160563114919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110236 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A370234.P8117482160563114919

noncomputable section

/-- A370234: a(n) = hypergeom([-n, 1 + n, 2 + n, -1 - n], [1/2, 1/2, 1], 1/16). Row sums of A370233.

Offset 0, canonical program `A370234.P8117482160563114919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A370234 (n : ℕ) : ℤ :=
  A370234.P8117482160563114919.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A370234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370299.P15785426155661098065

`C(∑[(2*3^n)%A001653(n+1)], 2)`
-/

namespace A370299.P15785426155661098065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * 3 ^ n : ℤ) (A001653 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A370299.P15785426155661098065

noncomputable section

/-- A370299: Number of chordless cycles in the complement of the n-Sierpinski gasket graph.

Offset 1, canonical program `A370299.P15785426155661098065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A370299 (n : ℕ) : ℤ :=
  (A370299.P15785426155661098065.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A370299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370482.P9499058320465952393

`A059841(n)+∑{p}[n, val(#, n)]`
-/

namespace A370482.P9499058320465952393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + ((∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p n : ℕ) : ℤ)

end

end A370482.P9499058320465952393

noncomputable section

/-- A370482: Characteristic function of primes plus characteristic function of even numbers.

Offset 0, canonical program `A370482.P9499058320465952393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370482 (n : ℕ) : ℤ :=
  A370482.P9499058320465952393.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370634.P2494409983904551626

`ratio[A135507(A004273(n)-(n-1))]`
-/

namespace A370634.P2494409983904551626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135507 (A004273 n - ((n : ℤ) - 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A370634.P2494409983904551626

noncomputable section

/-- A370634: A135507(n) is the product of the first n terms of this sequence.

Offset 1, canonical program `A370634.P2494409983904551626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A370634 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A370634.P2494409983904551626.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A370634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370895.P1285603479824087748

`∑[(-1)^n*A018804(n+1)]`
-/

namespace A370895.P1285603479824087748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A018804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370895.P1285603479824087748

noncomputable section

/-- A370895: Partial alternating sums of Pillai's arithmetical function (A018804).

Offset 1, canonical program `A370895.P1285603479824087748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370895 (n : ℕ) : ℤ :=
  A370895.P1285603479824087748.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371222.P12633540139532149241

`A309953(n)%3`
-/

namespace A371222.P12633540139532149241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309953 n) 3

end

end A371222.P12633540139532149241

noncomputable section

/-- A371222: Product of digits of (n written in base 3) mod 3.

Offset 0, canonical program `A371222.P12633540139532149241`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A309953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A371222 (n : ℕ) : ℤ :=
  A371222.P12633540139532149241.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A309953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A371222.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A371629.P2551946084159509774

`∑[A179298(val(1+n, 2)+1)]`
-/

namespace A371629.P2551946084159509774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179298 (SequenceMachineLib.valuation (1 + n) 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371629.P2551946084159509774

noncomputable section

/-- A371629: If 2n = Sum 2^e(k) then a(n) = Sum e(k)^3.

Offset 1, canonical program `A371629.P2551946084159509774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371629 (n : ℕ) : ℤ :=
  A371629.P2551946084159509774.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371629.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371656.P17774110375711877708

`eq[A001222(n+1), A001222(n+5)]+3`
-/

namespace A371656.P17774110375711877708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 3

end

end A371656.P17774110375711877708

noncomputable section

/-- A371656: Numbers k such that k - 2 and k + 2 have the same number of prime factors, counted with multiplicity.

Offset 1, canonical program `A371656.P17774110375711877708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371656 (n : ℕ) : ℤ :=
  (A371656.P17774110375711877708.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371888.P8395399809220968351

`∑[A100223(n)]`
-/

namespace A371888.P8395399809220968351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371888.P8395399809220968351

noncomputable section

/-- A371888: G.f. A(x) satisfies A(x) = 1 - x/A(x) * (1 - A(x) - A(x)^2).

Offset 0, canonical program `A371888.P8395399809220968351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A371888 (n : ℕ) : ℤ :=
  A371888.P8395399809220968351.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A371888.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372311.P1590214679197910568

`A028246(n+1)*A079901(n)`
-/

namespace A372311.P1590214679197910568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028246 (n + 1) * A079901 n

end

end A372311.P1590214679197910568

noncomputable section

/-- A372311: Triangle read by rows: T(n, k) = n^k * Sum_{j=0..n} binomial(n - j, n - k) * Eulerian1(n, j).

Offset 0, canonical program `A372311.P1590214679197910568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 738 terms. -/
def A372311 (n : ℕ) : ℤ :=
  A372311.P1590214679197910568.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 738 terms. -/
def A372311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372330.P18180619389445412267

`∏{e}[n+1, A062383(#)]`
-/

namespace A372330.P18180619389445412267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A062383 (Nat.factorization (f1 n) p)

end

end A372330.P18180619389445412267

noncomputable section

/-- A372330: The number of divisors of the smallest multiple of n whose number of divisors is a power of 2 (A036537).

Offset 1, canonical program `A372330.P18180619389445412267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372330 (n : ℕ) : ℤ :=
  A372330.P18180619389445412267.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372381.P12777939245543083101

`∏{e}[n+1, A053644(#+1)]`
-/

namespace A372381.P12777939245543083101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A053644 (Nat.factorization (f1 n) p + 1)

end

end A372381.P12777939245543083101

noncomputable section

/-- A372381: The number of divisors of the largest divisor of n whose number of divisors is a power of 2.

Offset 1, canonical program `A372381.P12777939245543083101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372381 (n : ℕ) : ℤ :=
  A372381.P12777939245543083101.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372397.P7539782668515379309

`∩[A005375(2*n+1), A005375(2*n)]`
-/

namespace A372397.P7539782668515379309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005375 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005375 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372397.P7539782668515379309

noncomputable section

/-- A372397: Numbers occurring exactly twice in Hofstadter G/H-like sequence H_4 (A005375).

Offset 1, canonical program `A372397.P7539782668515379309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2755 terms. -/
def A372397 (n : ℕ) : ℤ :=
  (A372397.P7539782668515379309.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2755 terms. -/
def A372397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372398.P16037860485214849621

`lt[1, runs[A005376(n)]]`
-/

namespace A372398.P16037860485214849621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005376 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A372398.P16037860485214849621

noncomputable section

/-- A372398: Numbers occurring exactly twice in Hofstadter G/H-like sequence H_5 (A005376).

Offset 1, canonical program `A372398.P16037860485214849621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2452 terms. -/
def A372398 (n : ℕ) : ℤ :=
  (A372398.P16037860485214849621.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2452 terms. -/
def A372398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372602.P14612393718629536272

`A052928(A051903(n+1))`
-/

namespace A372602.P14612393718629536272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A051903 (n + 1)).toNat

end

end A372602.P14612393718629536272

noncomputable section

/-- A372602: The maximal exponent in the prime factorization of the largest square dividing n.

Offset 1, canonical program `A372602.P14612393718629536272`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372602 (n : ℕ) : ℤ :=
  A372602.P14612393718629536272.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372602.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372604.P12316326984431536577

`A092323(A051903(n+1)+1)`
-/

namespace A372604.P12316326984431536577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092323 (A051903 (n + 1) + 1).toNat

end

end A372604.P12316326984431536577

noncomputable section

/-- A372604: The maximal exponent in the prime factorization of the largest divisor of n whose number of divisors is a power of 2.

Offset 1, canonical program `A372604.P12316326984431536577`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372604 (n : ℕ) : ℤ :=
  A372604.P12316326984431536577.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372604.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372759.P7891414057766909784

`n-A005374(n)`
-/

namespace A372759.P7891414057766909784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A005374 n

end

end A372759.P7891414057766909784

noncomputable section

/-- A372759: 6th prepended column of the 3-Zeckendorf array (A136189).

Offset 1, canonical program `A372759.P7891414057766909784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372759 (n : ℕ) : ℤ :=
  A372759.P7891414057766909784.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372759.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373087.P7180067676949029928

`(eq[3, A001221(2*(n+1))]+1)²`
-/

namespace A373087.P7180067676949029928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A373087.P7180067676949029928

noncomputable section

/-- A373087: k is a term if k is a square and its odd part is divisible by exactly two distinct primes.

Offset 1, canonical program `A373087.P7180067676949029928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373087 (n : ℕ) : ℤ :=
  (A373087.P7180067676949029928.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373101.P8641558268484953081

`C(A014430(n)+2, 3)`
-/

namespace A373101.P8641558268484953081
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014430 n + 2).toNat 3

end

end A373101.P8641558268484953081

noncomputable section

/-- A373101: Triangle read by rows, T(n,k) = (binomial(n,k)^3 - binomial(n,k))/6 for k=1..n-1 and n >= 2.

Offset 2, canonical program `A373101.P8641558268484953081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6494 terms. -/
def A373101 (n : ℕ) : ℤ :=
  (A373101.P8641558268484953081.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6494 terms. -/
def A373101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373110.P8868248740056110779

`∑[A255413(n+1)-n]-n`
-/

namespace A373110.P8868248740056110779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255413 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A373110.P8868248740056110779

noncomputable section

/-- A373110: Number of distinct circles that can be constructed from the 4 vertices and the equally spaced 4*n points placed on the sides of a square when every pair of the 4 + 4*n points are connected by a circle and where the points lie at the ends of the circle's diameter.

Offset 0, canonical program `A373110.P8868248740056110779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373110 (n : ℕ) : ℤ :=
  A373110.P8868248740056110779.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373347.P5073638856647458269

`comp[A335063(n)]`
-/

namespace A373347.P5073638856647458269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335063 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A373347.P5073638856647458269

noncomputable section

/-- A373347: Positive integers k such that A000120(k) > A001511(k).

Offset 1, canonical program `A373347.P5073638856647458269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7582 terms. -/
def A373347 (n : ℕ) : ℤ :=
  (A373347.P5073638856647458269.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7582 terms. -/
def A373347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373440.P6703772280667380685

`A017668(∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A373440.P6703772280667380685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017668 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

end

end A373440.P6703772280667380685

noncomputable section

/-- A373440: Denominator of sum of reciprocals of square divisors of n.

Offset 1, canonical program `A373440.P6703772280667380685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373440 (n : ℕ) : ℤ :=
  A373440.P6703772280667380685.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373546.P4206591312085507531

`xor(1, A236348(n))+1`
-/

namespace A373546.P4206591312085507531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A236348 n) + 1

end

end A373546.P4206591312085507531

noncomputable section

/-- A373546: a(1) = 1, a(2) = 2; for n > 2, a(n) is the smallest unused positive number that shares a factor with a(n-1) if a(n-1) is even otherwise is coprime to a(n-1) if a(n-1) is odd.

Offset 1, canonical program `A373546.P4206591312085507531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373546 (n : ℕ) : ℤ :=
  A373546.P4206591312085507531.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373710.P6586249079354997292

`A048147(lt[n, A038722(n+1)])`
-/

namespace A373710.P6586249079354997292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048147 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A373710.P6586249079354997292

noncomputable section

/-- A373710: Triangle read by rows: T(n,k) is the area of the square whose vertices divide the sides n of a circumscribed square into integer sections k and n - k, 0 <= k <= floor(n/2).

Offset 0, canonical program `A373710.P6586249079354997292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A373710 (n : ℕ) : ℤ :=
  A373710.P6586249079354997292.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A373710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373974.P3875631411793657801

`∑{d}[n+1, A373971(#)]`
-/

namespace A373974.P3875631411793657801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A373971 d

end

end A373974.P3875631411793657801

noncomputable section

/-- A373974: a(n) is the number of divisors of n that can be expressed as a sum of 2 distinct positive cubes.

Offset 1, canonical program `A373974.P3875631411793657801`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373971, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373974 (n : ℕ) : ℤ :=
  A373974.P3875631411793657801.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373971, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373974.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373976.P9485791187912278564

`A001222(n+1)-A342956(n+1)`
-/

namespace A373976.P9485791187912278564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A342956 (n + 1)

end

end A373976.P9485791187912278564

noncomputable section

/-- A373976: a(n) = A001222(n) - A001222(A001414(n)), where A001222 is bigomega, the number of prime factors with multiplicity, and A001414 is sopfr, sum of prime factors with multiplicity. a(1) = 0 by convention.

Offset 1, canonical program `A373976.P9485791187912278564`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342956, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373976 (n : ℕ) : ℤ :=
  A373976.P9485791187912278564.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342956, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373976.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373977.P2023498345375672924

`A073898(n+1)%A087204(n)`
-/

namespace A373977.P2023498345375672924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073898 (n + 1)) (A087204 n)

end

end A373977.P2023498345375672924

noncomputable section

/-- A373977: a(n) = 1 if n is a nonprime of the form 3*k + 1, otherwise 0.

Offset 1, canonical program `A373977.P2023498345375672924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373977 (n : ℕ) : ℤ :=
  A373977.P2023498345375672924.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373978.P17916728233483269752

`A121262(A113637(n+1))`
-/

namespace A373978.P17916728233483269752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A113637 (n + 1)).toNat

end

end A373978.P17916728233483269752

noncomputable section

/-- A373978: a(n) = 1 if n is a nonprime of the form 4*k + 1, otherwise 0.

Offset 1, canonical program `A373978.P17916728233483269752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373978 (n : ℕ) : ℤ :=
  A373978.P17916728233483269752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373979.P3246657904887622498

`A006002(n)%A118136(n)`
-/

namespace A373979.P3246657904887622498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006002 n) (A118136 n)

end

end A373979.P3246657904887622498

noncomputable section

/-- A373979: a(n) = 1 if n is a nonprime of the form 4*k + 3, otherwise 0.

Offset 1, canonical program `A373979.P3246657904887622498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373979 (n : ℕ) : ℤ :=
  A373979.P3246657904887622498.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373990.P1245803868984221180

`char[A335063(n)-1]`
-/

namespace A373990.P1245803868984221180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335063 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A373990.P1245803868984221180

noncomputable section

/-- A373990: a(n) = 1 if the binary weight of n is not greater than the 2-adic valuation of 2*n, otherwise 0.

Offset 1, canonical program `A373990.P1245803868984221180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A373990 (n : ℕ) : ℤ :=
  (A373990.P1245803868984221180.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A373990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374043.P13803670517917627766

`A011655(n+1)*A373157(n+1)`
-/

namespace A374043.P13803670517917627766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (n + 1) * A373157 (n + 1)

end

end A374043.P13803670517917627766

noncomputable section

/-- A374043: a(n) = 1 if n is a non-multiple of 3 whose 2-adic valuation is a multiple of 3, otherwise 0.

Offset 1, canonical program `A374043.P13803670517917627766`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374043 (n : ℕ) : ℤ :=
  A374043.P13803670517917627766.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374043.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374054.P11266633794218928703

`A062153(n+1)+A061282(A260316(n+1))`
-/

namespace A374054.P11266633794218928703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (n + 1) + A061282 (A260316 (n + 1)).toNat

end

end A374054.P11266633794218928703

noncomputable section

/-- A374054: a(n) = max_{i=0..n} S_3(i) + S_3(n-i) where S_3(x) = A053735(x) is the base-3 digit sum of x.

Offset 0, canonical program `A374054.P11266633794218928703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A374054 (n : ℕ) : ℤ :=
  A374054.P11266633794218928703.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A374054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374102.P10809450866151071324

`p?[A010061(n+1)]`
-/

namespace A374102.P10809450866151071324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A374102.P10809450866151071324

noncomputable section

/-- A374102: Prime binary self (or Colombian) numbers: primes not expressible as the sum of an integer and its binary weight.

Offset 1, canonical program `A374102.P10809450866151071324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 976 terms. -/
def A374102 (n : ℕ) : ℤ :=
  A374102.P10809450866151071324.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 976 terms. -/
def A374102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374328.P3444564986248095601

`A003056(filter[A051903(n+1), A209229(#)]-1)`
-/

namespace A374328.P3444564986248095601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (f1 (SequenceMachineLib.nth (fun j => A209229 (f1 j).toNat = 1) n) - 1).toNat

end

end A374328.P3444564986248095601

noncomputable section

/-- A374328: The base-2 logarithm of the maximal exponent in the prime factorization of the numbers whose maximal exponent in their prime factorization is a power of 2.

Offset 1, canonical program `A374328.P3444564986248095601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374328 (n : ℕ) : ℤ :=
  A374328.P3444564986248095601.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374446.P17465126024641626848

`Δ[A224923(n)]+n`
-/

namespace A374446.P17465126024641626848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A374446.P17465126024641626848

noncomputable section

/-- A374446: Positions of zeros in the expansion of Product_{k>=0} (1 - x^(2^k))^3; A373308(a(n)) = 0 for n >= 1.

Offset 1, canonical program `A374446.P17465126024641626848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. -/
def A374446 (n : ℕ) : ℤ :=
  A374446.P17465126024641626848.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. -/
def A374446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374492.P9547584820120626624

`comp[∪[A047221(n+1), n²]]`
-/

namespace A374492.P9547584820120626624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047221 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A374492.P9547584820120626624

noncomputable section

/-- A374492: Nonsquares with last digit in {0, 1, 4, 5, 6, 9}.

Offset 1, canonical program `A374492.P9547584820120626624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374492 (n : ℕ) : ℤ :=
  (A374492.P9547584820120626624.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375039.P1824785250283838263

`A051903(2*n+1)`
-/

namespace A375039.P1824785250283838263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (2 * n + 1)

end

end A375039.P1824785250283838263

noncomputable section

/-- A375039: The maximum exponent in the prime factorization of 2*n-1.

Offset 1, canonical program `A375039.P1824785250283838263`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375039 (n : ℕ) : ℤ :=
  A375039.P1824785250283838263.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375039.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375040.P3424596127254957025

`A051903(2*(n+1))`
-/

namespace A375040.P3424596127254957025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (2 * (n + 1))

end

end A375040.P3424596127254957025

noncomputable section

/-- A375040: The maximum exponent in the prime factorization of 2*n.

Offset 1, canonical program `A375040.P3424596127254957025`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375040 (n : ℕ) : ℤ :=
  A375040.P3424596127254957025.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375040.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375166.P13937927399487433158

`filter[A056991(n+1), A049240(#)]`
-/

namespace A375166.P13937927399487433158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A375166.P13937927399487433158

noncomputable section

/-- A375166: Nonsquares congruent to {0, 1, 4, 7} modulo 9.

Offset 1, canonical program `A375166.P13937927399487433158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375166 (n : ℕ) : ℤ :=
  A375166.P13937927399487433158.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375241.P10688031051260759881

`filter[A055264(n+1), A123110(#)]`
-/

namespace A375241.P10688031051260759881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123110 (f1 j).toNat = 1) n)

end

end A375241.P10688031051260759881

noncomputable section

/-- A375241: Nontriangular numbers with digital root in {1, 3, 6, 9}.

Offset 1, canonical program `A375241.P10688031051260759881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9637 terms. -/
def A375241 (n : ℕ) : ℤ :=
  A375241.P10688031051260759881.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9637 terms. -/
def A375241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375246.P12700141058600722749

`A375245(10^n)`
-/

namespace A375246.P12700141058600722749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375245 (10 ^ n)

end

end A375246.P12700141058600722749

noncomputable section

/-- A375246: Number of biquadratefree numbers <= 10^n.

Offset 0, canonical program `A375246.P12700141058600722749`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A375245, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375246 (n : ℕ) : ℤ :=
  A375246.P12700141058600722749.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A375245, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375246.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375359.P18365082364199674777

`ceil(A051903(n+1)/2)`
-/

namespace A375359.P18365082364199674777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A051903 (n + 1) : ℚ) / 2⌉

end

end A375359.P18365082364199674777

noncomputable section

/-- A375359: The maximum exponent in the prime factorization of the smallest number whose square is divisible by n.

Offset 1, canonical program `A375359.P18365082364199674777`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375359 (n : ℕ) : ℤ :=
  A375359.P18365082364199674777.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375359.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375378.P14882579800046314677

`A065120(n)^a(A053645(n))` with `a(0)=1`
-/

namespace A375378.P14882579800046314677
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (A065120 n : ℝ) ^ (a (A053645 n).toNat)

end

end A375378.P14882579800046314677

noncomputable section

/-- A375378: Value of the power tower formed by the numbers in the n-th composition (in standard order).

Offset 0, canonical program `A375378.P14882579800046314677`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065120, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375378 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A375378.P14882579800046314677.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065120, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375378.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375379.P12503235433013472216

`(A065120(n)+1)^a(A053645(n))` with `a(0)=1`
-/

namespace A375379.P12503235433013472216
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (A065120 n + 1 : ℝ) ^ (a (A053645 n).toNat)

end

end A375379.P12503235433013472216

noncomputable section

/-- A375379: Value of the power tower formed by the numbers obtained by adding 1 to the terms in the n-th composition (in standard order).

Offset 0, canonical program `A375379.P12503235433013472216`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065120, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375379 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A375379.P12503235433013472216.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065120, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375379.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375430.P15072398528399193857

`A000045(ceil(log((A051903(n+1)+1)²)))`
-/

namespace A375430.P15072398528399193857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈Real.log ((A051903 (n + 1) + 1) ^ 2 : ℝ)⌉.toNat

end

end A375430.P15072398528399193857

noncomputable section

/-- A375430: The maximum exponent in the unique factorization of n in terms of distinct terms of A115975 using the dual Zeckendorf representation of the exponents in the prime factorization of n; a(1) = 0.

Offset 1, canonical program `A375430.P15072398528399193857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375430 (n : ℕ) : ℤ :=
  A375430.P15072398528399193857.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375431.P1013115202346062773

`A048766(18*A051903(n+1))`
-/

namespace A375431.P1013115202346062773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (18 * A051903 (n + 1)).toNat

end

end A375431.P1013115202346062773

noncomputable section

/-- A375431: The indices of the terms of A375430 in the Fibonacci sequence.

Offset 1, canonical program `A375431.P1013115202346062773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375431 (n : ℕ) : ℤ :=
  A375431.P1013115202346062773.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375551.P17811213240839334410

`2*A099027(n)`
-/

namespace A375551.P17811213240839334410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099027 n

end

end A375551.P17811213240839334410

noncomputable section

/-- A375551: a(n) = Sum_{k=0..n} k XOR n-k, where XOR is the bitwise exclusive disjunction. Row sums of A003987.

Offset 0, canonical program `A375551.P17811213240839334410`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099027, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375551 (n : ℕ) : ℤ :=
  A375551.P17811213240839334410.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099027, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375551.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375667.P6684781765441991120

`A051903(A007310(n+1))`
-/

namespace A375667.P6684781765441991120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A007310 (n + 1)).toNat

end

end A375667.P6684781765441991120

noncomputable section

/-- A375667: The maximum exponent in the prime factorization of the 5-rough numbers (A007310).

Offset 1, canonical program `A375667.P6684781765441991120`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375667 (n : ℕ) : ℤ :=
  A375667.P6684781765441991120.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375667.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375668.P7310849845523855614

`A051903(A007775(n+1))`
-/

namespace A375668.P7310849845523855614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A007775 (n + 1)).toNat

end

end A375668.P7310849845523855614

noncomputable section

/-- A375668: The maximum exponent in the prime factorization of the 7-rough numbers (A007775).

Offset 1, canonical program `A375668.P7310849845523855614`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375668 (n : ℕ) : ℤ :=
  A375668.P7310849845523855614.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375668.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375669.P4375013482018991559

`A051903(A000265(n+1))`
-/

namespace A375669.P4375013482018991559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A000265 (n + 1)).toNat

end

end A375669.P4375013482018991559

noncomputable section

/-- A375669: The maximum exponent in the prime factorization of the largest odd divisor of n.

Offset 1, canonical program `A375669.P4375013482018991559`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375669 (n : ℕ) : ℤ :=
  A375669.P4375013482018991559.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375669.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375670.P18259153866628924363

`A051903(A065330(n+1))`
-/

namespace A375670.P18259153866628924363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A065330 (n + 1)).toNat

end

end A375670.P18259153866628924363

noncomputable section

/-- A375670: The maximum exponent in the prime factorization of the largest 5-rough divisor of n.

Offset 1, canonical program `A375670.P18259153866628924363`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375670 (n : ℕ) : ℤ :=
  A375670.P18259153866628924363.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375670.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375702.P8739948725421908413

`runs[A007916(n+1)-n]`
-/

namespace A375702.P8739948725421908413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A375702.P8739948725421908413

noncomputable section

/-- A375702: Length of the n-th maximal run of adjacent (increasing by one at a time) non-perfect-powers.

Offset 1, canonical program `A375702.P8739948725421908413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A375702 (n : ℕ) : ℤ :=
  (A375702.P8739948725421908413.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A375702.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375706.P12414521071869908907

`A007916(n+2)-A007916(n+1)`
-/

namespace A375706.P12414521071869908907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 2) - A007916 (n + 1)

end

end A375706.P12414521071869908907

noncomputable section

/-- A375706: First differences of non-perfect-powers.

Offset 1, canonical program `A375706.P12414521071869908907`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007916, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375706 (n : ℕ) : ℤ :=
  A375706.P12414521071869908907.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007916, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375706.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375735.P10748845840763269792

`Δ[lt[1, A001221(n+1)]]`
-/

namespace A375735.P10748845840763269792
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A375735.P10748845840763269792

noncomputable section

/-- A375735: First differences of non-prime-powers (inclusive).

Offset 1, canonical program `A375735.P10748845840763269792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375735 (n : ℕ) : ℤ :=
  A375735.P10748845840763269792.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375768.P10640290788176258715

`filter[A051903(n+1), A010056(#)]`
-/

namespace A375768.P10640290788176258715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010056 (f1 j).toNat = 1) n)

end

end A375768.P10640290788176258715

noncomputable section

/-- A375768: The maximum exponent in the prime factorization of the numbers whose maximum exponent in their prime factorization is a Fibonacci number.

Offset 1, canonical program `A375768.P10640290788176258715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375768 (n : ℕ) : ℤ :=
  A375768.P10640290788176258715.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375976.P12460029172972807041

`A003132(A000079(n))`
-/

namespace A375976.P12460029172972807041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A000079 n).toNat

end

end A375976.P12460029172972807041

noncomputable section

/-- A375976: Sum of squares of the decimal digits of 2^n.

Offset 0, canonical program `A375976.P12460029172972807041`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003132, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375976 (n : ℕ) : ℤ :=
  A375976.P12460029172972807041.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003132, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375976.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375999.P7786675138920784206

`lt[0, char[A001263(n+1)]]`
-/

namespace A375999.P7786675138920784206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375999.P7786675138920784206

noncomputable section

/-- A375999: Narayana numbers (A001263), sorted, duplicates removed.

Offset 1, canonical program `A375999.P7786675138920784206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A375999 (n : ℕ) : ℤ :=
  (A375999.P7786675138920784206.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A375999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376139.P13428466626577619161

`(-1)^A051903(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A376139.P13428466626577619161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A051903 (n + 1) : ℤ)

end

end A376139.P13428466626577619161

noncomputable section

/-- A376139: a(n) = (-1)^A051903(n).

Offset 1, canonical program `A376139.P13428466626577619161`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376139 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A376139.P13428466626577619161.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376139.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376154.P4336669941809621595

`comp[A000203(n+1)-A008472(n+1)]`
-/

namespace A376154.P4336669941809621595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A008472 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A376154.P4336669941809621595

noncomputable section

/-- A376154: Numbers that are not the sum of the nonprime divisors of k for any k.

Offset 1, canonical program `A376154.P4336669941809621595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376154 (n : ℕ) : ℤ :=
  (A376154.P4336669941809621595.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376270.P2407315113390054031

`A000030(n)*A003132(n)`
-/

namespace A376270.P2407315113390054031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n * A003132 n

end

end A376270.P2407315113390054031

noncomputable section

/-- A376270: a(n) is the product of the leading digit of n and the sum of the squares of its digits.

Offset 0, canonical program `A376270.P2407315113390054031`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, A003132, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A376270 (n : ℕ) : ℤ :=
  A376270.P2407315113390054031.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, A003132, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A376270.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376279.P14030068633923779886

`lt[0, A010057(n*n²%3)]`
-/

namespace A376279.P14030068633923779886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (n * (n ^ 2 % 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A376279.P14030068633923779886

noncomputable section

/-- A376279: Numbers k such that k^k is a cube.

Offset 1, canonical program `A376279.P14030068633923779886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1693 terms. -/
def A376279 (n : ℕ) : ℤ :=
  (A376279.P14030068633923779886.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1693 terms. -/
def A376279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376315.P13218378912747687137

`∪[2*A033431(3*n+1), A033431(3*n+1)]`
-/

namespace A376315.P13218378912747687137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033431 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 (3 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A376315.P13218378912747687137

noncomputable section

/-- A376315: Positive numbers k such that 2*k^k is a cube.

Offset 1, canonical program `A376315.P13218378912747687137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 897 terms. -/
def A376315 (n : ℕ) : ℤ :=
  (A376315.P13218378912747687137.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 897 terms. -/
def A376315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376357.P16342717570296244240

`lt[4, (n-1)*a(n-A000196(n)²)]` with `a(0)=3`
-/

namespace A376357.P16342717570296244240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  ((n : ℤ) - 1) * f2 ((n : ℤ) - A000196 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A376357.P16342717570296244240

noncomputable section

/-- A376357: Positions of numbers in A007961 that end in 0.

Offset 1, canonical program `A376357.P16342717570296244240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3285 terms. -/
def A376357 (n : ℕ) : ℤ :=
  (A376357.P16342717570296244240.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3285 terms. -/
def A376357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376360.P17607441378898775448

`lt[1, floor(a(A053186(n)))]` with `a(0)=-1, a(1)=1, a(2)=1, a(3)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A376360.P17607441378898775448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1, 1, 1, 7] fun n f2 =>
  f2 (A053186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A376360.P17607441378898775448

noncomputable section

/-- A376360: Positions of numbers in A007961 that end in 3.

Offset 1, canonical program `A376360.P17607441378898775448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1911 terms. -/
def A376360 (n : ℕ) : ℤ :=
  (A376360.P17607441378898775448.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1911 terms. -/
def A376360.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376538.P147642025610415414

`A056082(A047527(n+2))`
-/

namespace A376538.P147642025610415414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056082 (A047527 (n + 2)).toNat

end

end A376538.P147642025610415414

noncomputable section

/-- A376538: Natural numbers whose iterated squaring modulo 1000 eventually settles at the attractor 1.

Offset 1, canonical program `A376538.P147642025610415414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A376538 (n : ℕ) : ℤ :=
  A376538.P147642025610415414.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A376538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376539.P10670533322709829725

`A056082(A047425(n+1))`
-/

namespace A376539.P10670533322709829725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056082 (A047425 (n + 1)).toNat

end

end A376539.P10670533322709829725

noncomputable section

/-- A376539: Natural numbers whose iterated squaring modulo 1000 eventually settles at the attractor 376.

Offset 1, canonical program `A376539.P10670533322709829725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A376539 (n : ℕ) : ℤ :=
  A376539.P10670533322709829725.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A376539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376604.P10742585192256069386

`Δ[A054354(n+1)]`
-/

namespace A376604.P10742585192256069386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376604.P10742585192256069386

noncomputable section

/-- A376604: Second differences of the Kolakoski sequence (A000002). First differences of A054354.

Offset 1, canonical program `A376604.P10742585192256069386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A376604 (n : ℕ) : ℤ :=
  A376604.P10742585192256069386.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A376604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376714.P15979935111988966873

`A003132(A000040(n+1))`
-/

namespace A376714.P15979935111988966873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A000040 (n + 1)).toNat

end

end A376714.P15979935111988966873

noncomputable section

/-- A376714: Sum of squares of the decimal digits of the n-th prime.

Offset 1, canonical program `A376714.P15979935111988966873`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003132, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376714 (n : ℕ) : ℤ :=
  A376714.P15979935111988966873.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003132, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376714.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A377414.P9376123289896213115

`and(n, xor(n, A002264(2^ceil(log2(n+1)))))`
-/

namespace A377414.P9376123289896213115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (Int.xor (n : ℤ) (A002264 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))).toNat))

end

end A377414.P9376123289896213115

noncomputable section

/-- A377414: a(n) is the largest term of A126684, say b, such that n AND b = b (where AND denotes the bitwise AND operator).

Offset 0, canonical program `A377414.P9376123289896213115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A377414 (n : ℕ) : ℤ :=
  A377414.P9376123289896213115.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A377414.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377721.P13608278594952562135

`A074279(n+1)+n`
-/

namespace A377721.P13608278594952562135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074279 (n + 1) + (n : ℤ)

end

end A377721.P13608278594952562135

noncomputable section

/-- A377721: Numbers that are not of the form k(k+1)(2k+1)/6 + k.

Offset 1, canonical program `A377721.P13608278594952562135`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074279, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377721 (n : ℕ) : ℤ :=
  A377721.P13608278594952562135.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074279, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377721.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A377897.P11413892919157994176

`eq[1, (n+A000720(n+1))%2]+1`
-/

namespace A377897.P11413892919157994176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) + A000720 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377897.P11413892919157994176

noncomputable section

/-- A377897: Numbers k such that k + PrimePi(k) is even.

Offset 1, canonical program `A377897.P11413892919157994176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377897 (n : ℕ) : ℤ :=
  (A377897.P11413892919157994176.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377897.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377930.P17544471663374099892

`val(A003990(n+1), 2)`
-/

namespace A377930.P17544471663374099892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003990 (n + 1)).toNat 2

end

end A377930.P17544471663374099892

noncomputable section

/-- A377930: Square array A(n, k), n, k > 0, read by antidiagonals; A(n, k) = max(A007814(n), A007814(k)).

Offset 1, canonical program `A377930.P17544471663374099892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377930 (n : ℕ) : ℤ :=
  (A377930.P17544471663374099892.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378053.P13354335164074839749

`gcd(A020696(n+1), A377484(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378053.P13354335164074839749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020696 (n + 1)) (A377484 (n + 1))

end

end A378053.P13354335164074839749

noncomputable section

/-- A378053: a(n) = gcd(Product_{d|n} (d + 1), Product_{d|n, d>1} (d - 1)) = gcd(A020696(n), A377484(n)).

Offset 1, canonical program `A378053.P13354335164074839749`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020696, A377484, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378053 (n : ℕ) : ℤ :=
  (A378053.P13354335164074839749.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020696, A377484, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378053.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378224.P8200784661334805759

`∑{d}[n+1, A008683((n+1)/#)*A378218(#)]`
-/

namespace A378224.P8200784661334805759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A378218 d

end

end A378224.P8200784661334805759

noncomputable section

/-- A378224: Dirichlet inverse of A378223.

Offset 1, canonical program `A378224.P8200784661334805759`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378224 (n : ℕ) : ℤ :=
  A378224.P8200784661334805759.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378224.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378301.P16396740927603512981

`A214857(1+n)-A022846(n)`
-/

namespace A378301.P16396740927603512981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214857 (1 + n) - A022846 n

end

end A378301.P16396740927603512981

noncomputable section

/-- A378301: a(n) is the number of triangular numbers (A000217) in the interval [n^2, (n + 1)^2].

Offset 0, canonical program `A378301.P16396740927603512981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378301 (n : ℕ) : ℤ :=
  A378301.P16396740927603512981.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378377.P1377304433949360129

`A176992(A056943(n+1))`
-/

namespace A378377.P1377304433949360129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176992 (A056943 (n + 1)).toNat

end

end A378377.P1377304433949360129

noncomputable section

/-- A378377: Triangle read by rows: T(n,k) is the number of non-descending sequences with length k such that the maximum of the length and the last number is n.

Offset 1, canonical program `A378377.P1377304433949360129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A378377 (n : ℕ) : ℤ :=
  A378377.P1377304433949360129.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A378377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378624.P4838368887206382302

`lt[(2*(A003278(n+1)-1)+1)%10, 2]`
-/

namespace A378624.P4838368887206382302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * (A003278 (n + 1) - 1) + 1) 10

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A378624.P4838368887206382302

noncomputable section

/-- A378624: Numbers whose binary representation interpreted as being base-3 is divisible by 5.

Offset 1, canonical program `A378624.P4838368887206382302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A378624 (n : ℕ) : ℤ :=
  (A378624.P4838368887206382302.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A378624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378666.P8706782011902530861

`A022167(C(row(n)+1, 2)+col(n))*A118180(C(row(n)+1, 2)+col(n))`
-/

namespace A378666.P8706782011902530861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) * A118180 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n)

end

end A378666.P8706782011902530861

noncomputable section

/-- A378666: Triangular array read by rows: T(n,k) is the number of n X n idempotent matrices over GF(3) having rank k, n>=0, 0<=k<=n.

Offset 0, canonical program `A378666.P8706782011902530861`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022167, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378666 (n : ℕ) : ℤ :=
  A378666.P8706782011902530861.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022167, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378666.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378725.P17767535879698643150

`A378724(n+2)-A378724(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378725.P17767535879698643150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378724 (n + 2) - A378724 (n + 1)

end

end A378725.P17767535879698643150

noncomputable section

/-- A378725: a(n) = A378724(n+1) - A378724(n).

Offset 1, canonical program `A378725.P17767535879698643150`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378724, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378725 (n : ℕ) : ℤ :=
  A378725.P17767535879698643150.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378724, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378725.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378816.P12073139735814832910

`Δ[Δ[A005773(n)]*A033999(n)]`
-/

namespace A378816.P12073139735814832910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378816.P12073139735814832910

noncomputable section

/-- A378816: Expansion of 2*(x - 1)^3/(3*x^3 - 5*x^2 + x + 1 + sqrt(-(x - 1)^3*(x + 1)^2*(3*x + 1))).

Offset 0, canonical program `A378816.P12073139735814832910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A378816 (n : ℕ) : ℤ :=
  A378816.P12073139735814832910.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A378816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378947.P5938611714254906013

`∑[A034929(∑[n+3])]`
-/

namespace A378947.P5938611714254906013
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034929 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378947.P5938611714254906013

noncomputable section

/-- A378947: Number of row states in an automaton for the enumeration of the number of fixed polyominoes with bounding box of width n.

Offset 0, canonical program `A378947.P5938611714254906013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A378947 (n : ℕ) : ℤ :=
  A378947.P5938611714254906013.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A378947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378962.P5441024568918404344

`A000340(A378724(n+2)-A378724(n+1)-1)`
-/

namespace A378962.P5441024568918404344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000340 (A378724 (n + 2) - A378724 (n + 1) - 1).toNat

end

end A378962.P5441024568918404344

noncomputable section

/-- A378962: First differences of A378726.

Offset 1, canonical program `A378962.P5441024568918404344`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378724, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378962 (n : ℕ) : ℤ :=
  A378962.P5441024568918404344.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378724, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378962.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378996.P6732452737629520424

`A017666(2*(n+1))`
-/

namespace A378996.P6732452737629520424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (2 * (n + 1))

end

end A378996.P6732452737629520424

noncomputable section

/-- A378996: Denominator of sigma(2*n)/(2*n).

Offset 1, canonical program `A378996.P6732452737629520424`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378996 (n : ℕ) : ℤ :=
  A378996.P6732452737629520424.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378996.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379281.P9562804699858291033

`∑{#}[n, C(n, #)*A379173(#)]`
-/

namespace A379281.P9562804699858291033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A379173 k

end

end A379281.P9562804699858291033

noncomputable section

/-- A379281: G.f. A(x) satisfies A(x) = 1/( (1 - x) * (1 - x*A(x)) )^2.

Offset 0, canonical program `A379281.P9562804699858291033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A379281 (n : ℕ) : ℤ :=
  A379281.P9562804699858291033.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A379281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379421.P17566647080812889774

`A133872(A005563(n))+A063247(n+1)`
-/

namespace A379421.P17566647080812889774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (A005563 n).toNat + A063247 (n + 1)

end

end A379421.P17566647080812889774

noncomputable section

/-- A379421: a(n) = n + floor(n*r/s) + floor(n*t/s), where r = 5^(1/4), s = 5^(1/2), t = 5^(3/4).

Offset 1, canonical program `A379421.P17566647080812889774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A379421 (n : ℕ) : ℤ :=
  A379421.P17566647080812889774.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A379421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379728.P7822751634517358611

`abs(A343173(n))`
-/

namespace A379728.P7822751634517358611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A343173 n|

end

end A379728.P7822751634517358611

noncomputable section

/-- A379728: Absolute value of first differences of paperfolding sequence A014577.

Offset 1, canonical program `A379728.P7822751634517358611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379728 (n : ℕ) : ℤ :=
  A379728.P7822751634517358611.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379732.P15172099030873058908

`9-A021212(n)`
-/

namespace A379732.P15172099030873058908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A021212 n

end

end A379732.P15172099030873058908

noncomputable section

/-- A379732: Decimal expansion of 207/208.

Offset 0, canonical program `A379732.P15172099030873058908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379732 (n : ℕ) : ℤ :=
  A379732.P15172099030873058908.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379952.P2246859147419391597

`A379480(A142150(n))`
-/

namespace A379952.P2246859147419391597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379480 (A142150 n).toNat

end

end A379952.P2246859147419391597

noncomputable section

/-- A379952: a(n) = 1 if n is an odd number or a perfect square, otherwise 0.

Offset 0, canonical program `A379952.P2246859147419391597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379952 (n : ℕ) : ℤ :=
  A379952.P2246859147419391597.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380116.P12767773800597976494

`∑{#}[n, A011971(C(n+1, 2)+#)*#]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A380116.P12767773800597976494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A011971 (Nat.choose (n + 1) 2 + k) * (k : ℤ)

end

end A380116.P12767773800597976494

noncomputable section

/-- A380116: a(n) = Sum_{k=0..n} A011971(n, k)*k. The Aitken-Bell triangle considered as a linear transform applied to the nonnegative numbers.

Offset 0, canonical program `A380116.P12767773800597976494`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A011971, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380116 (n : ℕ) : ℤ :=
  A380116.P12767773800597976494.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A011971, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380116.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380788.P17890132981315215586

`eq[2, A105700(A070939(n)²)]`
-/

namespace A380788.P17890132981315215586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A070939 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A380788.P17890132981315215586

noncomputable section

/-- A380788: Numbers with a prime number of binary digits.

Offset 1, canonical program `A380788.P17890132981315215586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5206 terms. -/
def A380788 (n : ℕ) : ℤ :=
  (A380788.P17890132981315215586.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5206 terms. -/
def A380788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380909.P658941744693780821

`A006882(n)/A095987(n)`
-/

namespace A380909.P658941744693780821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006882 n : ℚ) / (A095987 n : ℚ)

end

end A380909.P658941744693780821

noncomputable section

/-- A380909: a(n) = numerator(n!! / (n - 1)!!).

Offset 0, canonical program `A380909.P658941744693780821`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A095987, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380909 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A380909.P658941744693780821.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A095987, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380909.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A381122.P9181683385261929794

`eq[n, A110146(n)]`
-/

namespace A381122.P9181683385261929794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110146 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A381122.P9181683385261929794

noncomputable section

/-- A381122: Numbers k such that k^(k+1) == k (mod k+2).

Offset 1, canonical program `A381122.P9181683385261929794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 703 terms. -/
def A381122 (n : ℕ) : ℤ :=
  (A381122.P9181683385261929794.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 703 terms. -/
def A381122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381233.P13633514905474936498

`A001057(n-floor(sqrt(n))²)`
-/

namespace A381233.P13633514905474936498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n - Nat.sqrt n ^ 2)

end

end A381233.P13633514905474936498

noncomputable section

/-- A381233: Concatenate the sequences S(k) = [0, 1, -1, ..., k, -k] for k = 0, 1, ...

Offset 0, canonical program `A381233.P13633514905474936498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381233 (n : ℕ) : ℤ :=
  A381233.P13633514905474936498.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381255.P14805503171048512925

`comp[floor(A056469(n)/5)]`
-/

namespace A381255.P14805503171048512925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A056469 n : ℚ) / 5⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A381255.P14805503171048512925

noncomputable section

/-- A381255: Positive integers not of the form round(2^(k+2)/5). Complement of A007910.

Offset 1, canonical program `A381255.P14805503171048512925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381255 (n : ℕ) : ℤ :=
  (A381255.P14805503171048512925.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381319.P14834546129870653751

`1+A063994(n+2)`
-/

namespace A381319.P14834546129870653751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A063994 (n + 2)

end

end A381319.P14834546129870653751

noncomputable section

/-- A381319: Order of linear recurrence with constant coefficients of solutions of k satisfying k^(n-1) == 1 (mod n^2) for a given n.

Offset 2, canonical program `A381319.P14834546129870653751`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063994, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A381319 (n : ℕ) : ℤ :=
  A381319.P14834546129870653751.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063994, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A381319.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A381401.P17306812054606808102

`∑{e}[n+1, A010051(#)+1]`
-/

namespace A381401.P17306812054606808102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (A010051 (Nat.factorization (f1 n) p) + 1)

end

end A381401.P17306812054606808102

noncomputable section

/-- A381401: a(n) is the number of (possibly non-distinct) prime elements in the multiset of bases and exponents in the prime factorization of n.

Offset 1, canonical program `A381401.P17306812054606808102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381401 (n : ℕ) : ℤ :=
  A381401.P17306812054606808102.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381499.P13132613445248222318

`A000217(n+1)-A023896(n+1)-A244974(n+1)+1`
-/

namespace A381499.P13132613445248222318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - A023896 (n + 1) - A244974 (n + 1) + 1

end

end A381499.P13132613445248222318

noncomputable section

/-- A381499: a(n) = sum of numbers k < n such that 1 < gcd(k,n) < k and rad(k) does not divide n, where rad = A007947.

Offset 1, canonical program `A381499.P13132613445248222318`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023896, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A381499 (n : ℕ) : ℤ :=
  A381499.P13132613445248222318.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023896, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A381499.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A381551.P3989034111407535555

`A078678(n)²`
-/

namespace A381551.P3989034111407535555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078678 n ^ 2

end

end A381551.P3989034111407535555

noncomputable section

/-- A381551: Number of 2*n X 4 binary arrays with row sums 2 and column sums n, avoiding the patterns 010 and 101 in any row and column.

Offset 0, canonical program `A381551.P3989034111407535555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A381551 (n : ℕ) : ℤ :=
  A381551.P3989034111407535555.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A381551.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381676.P2960917554506901503

`(8*A000172(n)-A000172(n+1))/6`
-/

namespace A381676.P2960917554506901503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * A000172 n - A000172 (n + 1) : ℚ) / 6

end

end A381676.P2960917554506901503

noncomputable section

/-- A381676: a(n) = Sum_{k=0..n} binomial(n,k) * ( binomial(n,k) - binomial(n,k-1) )^2.

Offset 0, canonical program `A381676.P2960917554506901503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A381676 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A381676.P2960917554506901503.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A381676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381952.P13602993248681907933

`gcd(n+1, A051903(n+1))`
-/

namespace A381952.P13602993248681907933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A051903 (n + 1))

end

end A381952.P13602993248681907933

noncomputable section

/-- A381952: a(n) is the greatest common divisor of n and the maximum exponent in the prime factorization of n.

Offset 1, canonical program `A381952.P13602993248681907933`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A381952 (n : ℕ) : ℤ :=
  (A381952.P13602993248681907933.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A381952.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A381955.P6171942052485703408

`A051903(n+1)%2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A381955.P6171942052485703408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051903 (n + 1)) 2

end

end A381955.P6171942052485703408

noncomputable section

/-- A381955: a(n) = A051903(n) mod 2.

Offset 1, canonical program `A381955.P6171942052485703408`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A381955 (n : ℕ) : ℤ :=
  A381955.P6171942052485703408.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A381955.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A381972.P8049536125631911176

`lt[Δ[A001414(n+1)], 1]+2`
-/

namespace A381972.P8049536125631911176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 2

end

end A381972.P8049536125631911176

noncomputable section

/-- A381972: Numbers k>=3 such that k/A001414(k) > (k-1)/A001414(k-1).

Offset 1, canonical program `A381972.P8049536125631911176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5009 terms. -/
def A381972 (n : ℕ) : ℤ :=
  (A381972.P8049536125631911176.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5009 terms. -/
def A381972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382432.P7455965043181633316

`A074829(C(2*(n+1)-1, 2)+n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A382432.P7455965043181633316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074829 (Nat.choose ((2 * (n + 1) : ℤ) - 1).toNat 2 + (n + 1))

end

end A382432.P7455965043181633316

noncomputable section

/-- A382432: a(n) = A074829(2*n-1, n).

Offset 1, canonical program `A382432.P7455965043181633316`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074829, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382432 (n : ℕ) : ℤ :=
  A382432.P7455965043181633316.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074829, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382432.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382744.P11948343297158825481

`comp[(n+1)*A062157(val(n+1, 5))]`
-/

namespace A382744.P11948343297158825481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A062157 (SequenceMachineLib.valuation (n + 1) 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A382744.P11948343297158825481

noncomputable section

/-- A382744: If k appears, 5*k does not.

Offset 1, canonical program `A382744.P11948343297158825481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382744 (n : ℕ) : ℤ :=
  (A382744.P11948343297158825481.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382745.P15305106904039031028

`record[A033999(val(n+1, 7))+n]`
-/

namespace A382745.P15305106904039031028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (SequenceMachineLib.valuation (n + 1) 7) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A382745.P15305106904039031028

noncomputable section

/-- A382745: If k appears, 7*k does not.

Offset 1, canonical program `A382745.P15305106904039031028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382745 (n : ℕ) : ℤ :=
  A382745.P15305106904039031028.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382751.P10569455431175474163

`lt[A007949(n+1)%A010882(n), 1]+1`
-/

namespace A382751.P10569455431175474163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007949 (n + 1)) (A010882 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A382751.P10569455431175474163

noncomputable section

/-- A382751: Numbers k for which the 3-adic valuation A007949(k) == 0 (mod 3).

Offset 1, canonical program `A382751.P10569455431175474163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6923 terms. -/
def A382751 (n : ℕ) : ℤ :=
  (A382751.P10569455431175474163.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6923 terms. -/
def A382751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382789.P16110672853359686492

`∑[∑{e}[1-A000040(A028310(n)), #]]`
-/

namespace A382789.P16110672853359686492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000040 (A028310 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382789.P16110672853359686492

noncomputable section

/-- A382789: The number of prime factors of Euler phi of the n-th primorial number, counted with multiplicity.

Offset 0, canonical program `A382789.P16110672853359686492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382789 (n : ℕ) : ℤ :=
  (A382789.P16110672853359686492.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382885.P2607518862416086030

`A379171(n)-a(n-1)` with `a(0)=1`
-/

namespace A382885.P2607518862416086030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A379171 n - a (n - 1)

end

end A382885.P2607518862416086030

noncomputable section

/-- A382885: G.f. A(x) satisfies A(x) = 1/( 1 - x * (1+x) * A(x) )^3.

Offset 0, canonical program `A382885.P2607518862416086030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A382885 (n : ℕ) : ℤ :=
  A382885.P2607518862416086030.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A382885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382893.P10683058411463464808

`∑{#}[n, A366221(#)*A366221(n-#)]`
-/

namespace A382893.P10683058411463464808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A366221 k * A366221 (n - k)

end

end A382893.P10683058411463464808

noncomputable section

/-- A382893: G.f. A(x) satisfies A(x) = 1/( 1 - x * (1+x)^2 * A(x) )^2.

Offset 0, canonical program `A382893.P10683058411463464808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A382893 (n : ℕ) : ℤ :=
  A382893.P10683058411463464808.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A382893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382894.P3798485966212722077

`∑{#}[n, A366200(#)*A366200(n-#)]`
-/

namespace A382894.P3798485966212722077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A366200 k * A366200 (n - k)

end

end A382894.P3798485966212722077

noncomputable section

/-- A382894: G.f. A(x) satisfies A(x) = 1/( 1 - x * (1+x)^3 * A(x) )^2.

Offset 0, canonical program `A382894.P3798485966212722077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A382894 (n : ℕ) : ℤ :=
  A382894.P3798485966212722077.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A382894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383156.P4501511777961019996

`∑{d}[n+1, A051903(#)]`
-/

namespace A383156.P4501511777961019996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051903 d

end

end A383156.P4501511777961019996

noncomputable section

/-- A383156: The sum of the maximum exponents in the prime factorizations of the divisors of n.

Offset 1, canonical program `A383156.P4501511777961019996`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383156 (n : ℕ) : ℤ :=
  A383156.P4501511777961019996.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383156.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383259.P13748571776509736098

`A065033(n)-A033271(n+1)`
-/

namespace A383259.P13748571776509736098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n - A033271 (n + 1)

end

end A383259.P13748571776509736098

noncomputable section

/-- A383259: a(n) is the excess of even composites over odd composites in the first n positive integers.

Offset 1, canonical program `A383259.P13748571776509736098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383259 (n : ℕ) : ℤ :=
  A383259.P13748571776509736098.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383325.P8303941941289924886

`comp[A383324(n)]`
-/

namespace A383325.P8303941941289924886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383324 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A383325.P8303941941289924886

noncomputable section

/-- A383325: Numbers not of the form round(3^k/5). Complement of A383324.

Offset 1, canonical program `A383325.P8303941941289924886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383325 (n : ℕ) : ℤ :=
  (A383325.P8303941941289924886.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383431.P12354164242503902528

`A051920(2*n+1)/A000034(∏{p}[n+1, #-1])`
-/

namespace A383431.P12354164242503902528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051920 (2 * n + 1) : ℚ) / (A000034 (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)).toNat : ℚ)

end

end A383431.P12354164242503902528

noncomputable section

/-- A383431: a(n) is the denominator of tanh(Sum_{k=1..n-1} artanh(k/n)), where artanh is the inverse hyperbolic tangent function.

Offset 1, canonical program `A383431.P12354164242503902528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A383431 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A383431.P12354164242503902528.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A383431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383451.P5284204674195403316

`A000217(n+1)*A025174(n+2)`
-/

namespace A383451.P5284204674195403316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A025174 (n + 2)

end

end A383451.P5284204674195403316

noncomputable section

/-- A383451: 3rd diagonal (from right) in A104978.

Offset 0, canonical program `A383451.P5284204674195403316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A383451 (n : ℕ) : ℤ :=
  A383451.P5284204674195403316.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A383451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383578.P17294025589639841997

`A000040(n+1)^(char[(n*a(n-1))²+n]+1)` with `a(0)=2`
-/

namespace A383578.P17294025589639841997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  (n * f1 (n - 1)) ^ 2 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ ((if ∃ j, f1 j = n then 1 else 0) + 1)

end

end A383578.P17294025589639841997

noncomputable section

/-- A383578: Let p = prime(n), then a(n) is the p-smooth part of (p-1)! + 1.

Offset 1, canonical program `A383578.P17294025589639841997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383578 (n : ℕ) : ℤ :=
  A383578.P17294025589639841997.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383600.P2431531632567701077

`∑{#}[n, C(n, #)*A004981(#)]`
-/

namespace A383600.P2431531632567701077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A004981 k

end

end A383600.P2431531632567701077

noncomputable section

/-- A383600: Expansion of 1/( (1-x)^3 * (1-9*x) )^(1/4).

Offset 0, canonical program `A383600.P2431531632567701077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A383600 (n : ℕ) : ℤ :=
  A383600.P2431531632567701077.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A383600.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383601.P257771129488146488

`∑[A377233(n)]`
-/

namespace A383601.P257771129488146488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383601.P257771129488146488

noncomputable section

/-- A383601: Expansion of 1/( (1-x) * (1-10*x)^2 )^(1/3).

Offset 0, canonical program `A383601.P257771129488146488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A383601 (n : ℕ) : ℤ :=
  A383601.P257771129488146488.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A383601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383641.P12370481159656482094

`∑[(A010051(n+1)-1)*A131738(n)]`
-/

namespace A383641.P12370481159656482094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010051 (n + 1) - 1) * A131738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383641.P12370481159656482094

noncomputable section

/-- A383641: a(n) is the difference between the sum of even composites and the sum of the odd composites in the first n positive integers.

Offset 1, canonical program `A383641.P12370481159656482094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383641 (n : ℕ) : ℤ :=
  A383641.P12370481159656482094.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383670.P12936080934003293389

`A188432(n+1)+A188432(n+1)+A003849(n)`
-/

namespace A383670.P12936080934003293389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (n + 1) + (A188432 (n + 1) + A003849 n)

end

end A383670.P12936080934003293389

noncomputable section

/-- A383670: Limiting word, as a sequence, obtained by prefixing with 0 the limiting sequence of s(n) defined by s(0) = 0, s(1) = 12, s(n) = the concatenation of s(n - 1) and s(n - 2).

Offset 1, canonical program `A383670.P12936080934003293389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383670 (n : ℕ) : ℤ :=
  A383670.P12936080934003293389.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383705.P15354307696166593991

`∏{e}[n+1, A127974(#)]`
-/

namespace A383705.P15354307696166593991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A127974 (Nat.factorization (f1 n) p)

end

end A383705.P15354307696166593991

noncomputable section

/-- A383705: Numerator of Dirichlet g.f.: Sum_{n>=1} a(n)/n^s = zeta(s)^(2/3).

Offset 1, canonical program `A383705.P15354307696166593991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383705 (n : ℕ) : ℤ :=
  A383705.P15354307696166593991.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383762.P17957299951470629655

`∏{e}[n+1, A008966(#)+1]`
-/

namespace A383762.P17957299951470629655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A008966 (Nat.factorization (f1 n) p) + 1)

end

end A383762.P17957299951470629655

noncomputable section

/-- A383762: The number of unitary divisors of n that are exponentially squarefree numbers.

Offset 1, canonical program `A383762.P17957299951470629655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383762 (n : ℕ) : ℤ :=
  A383762.P17957299951470629655.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383842.P189208686614128249

`∑{#}[n, A000453(#+4)*A000453(n-#+4)]`
-/

namespace A383842.P189208686614128249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000453 (k + 4) * A000453 ((n : ℤ) - (k : ℤ) + 4).toNat

end

end A383842.P189208686614128249

noncomputable section

/-- A383842: Expansion of 1/((1-x) * (1-2*x) * (1-3*x) * (1-4*x))^2.

Offset 0, canonical program `A383842.P189208686614128249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A383842 (n : ℕ) : ℤ :=
  A383842.P189208686614128249.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A383842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383911.P13606611818806099941

`A383913(n)+A383913(n)-A383910(n)`
-/

namespace A383911.P13606611818806099941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383913 n + (A383913 n - A383910 n)

end

end A383911.P13606611818806099941

noncomputable section

/-- A383911: Expansion of Product_{k=0..4} (1 + k*x)/(1 - k*x).

Offset 0, canonical program `A383911.P13606611818806099941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A383911 (n : ℕ) : ℤ :=
  A383911.P13606611818806099941.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A383911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383999.P17329043194853492655

`xor(A003849(n)+1, A003849(n+2))`
-/

namespace A383999.P17329043194853492655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003849 n + 1) (A003849 (n + 2))

end

end A383999.P17329043194853492655

noncomputable section

/-- A383999: Sequence obtained by replacing 3-term subwords of A003849 by 0,1,2,3 as described in Comments.

Offset 1, canonical program `A383999.P17329043194853492655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383999 (n : ℕ) : ℤ :=
  A383999.P17329043194853492655.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384096.P3432400259258719839

`2*n-A053646(n+1)`
-/

namespace A384096.P3432400259258719839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A053646 (n + 1)

end

end A384096.P3432400259258719839

noncomputable section

/-- A384096: a(n) = 2*n - A080776(n).

Offset 0, canonical program `A384096.P3432400259258719839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384096 (n : ℕ) : ℤ :=
  A384096.P3432400259258719839.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384153.P11731211239372390351

`2^n-A005251(n+2)`
-/

namespace A384153.P11731211239372390351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A005251 (n + 2)

end

end A384153.P11731211239372390351

noncomputable section

/-- A384153: a(n) is the number of binary strings of length n whose shortest run of 1s is of length 1.

Offset 0, canonical program `A384153.P11731211239372390351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A384153 (n : ℕ) : ℤ :=
  A384153.P11731211239372390351.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A384153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384197.P16927393950934576976

`floor(A000302(A070939(n+1))/(n+1))`
-/

namespace A384197.P16927393950934576976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000302 (A070939 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)⌋

end

end A384197.P16927393950934576976

noncomputable section

/-- A384197: The Barrett reducer reciprocal mod n.

Offset 1, canonical program `A384197.P16927393950934576976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A384197 (n : ℕ) : ℤ :=
  A384197.P16927393950934576976.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A384197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384421.P2913709958311126158

`∑{e}[n+1, A008966(#)]`
-/

namespace A384421.P2913709958311126158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A008966 (Nat.factorization (f1 n) p)

end

end A384421.P2913709958311126158

noncomputable section

/-- A384421: The number of exponentially squarefree prime powers (not including 1) that unitarily divide n.

Offset 1, canonical program `A384421.P2913709958311126158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384421 (n : ℕ) : ℤ :=
  A384421.P2913709958311126158.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384531.P15070268753136582785

`∑{d}[n+1, A018804(#)*A173557((n+1)/#)]`
-/

namespace A384531.P15070268753136582785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018804 d * A173557 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A384531.P15070268753136582785

noncomputable section

/-- A384531: Multiplicative sequence a(n) with a(p^e) = ((2*e+1) * p - 2*e) * p^(e-1) for prime p and e >= 0.

Offset 1, canonical program `A384531.P15070268753136582785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384531 (n : ℕ) : ℤ :=
  A384531.P15070268753136582785.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384543.P10493386867404407549

`A352228(A352228(3*n+1)+A004755(n+1))`
-/

namespace A384543.P10493386867404407549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352228 (A352228 (3 * n + 1) + A004755 (n + 1)).toNat

end

end A384543.P10493386867404407549

noncomputable section

/-- A384543: Number of distinct values from the bitwise operation i XOR j for all integers i and j in the range [1, n].

Offset 1, canonical program `A384543.P10493386867404407549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A384543 (n : ℕ) : ℤ :=
  A384543.P10493386867404407549.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A384543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384601.P16727066867523399097

`∩[A283769(n+1), A016789(n)]`
-/

namespace A384601.P16727066867523399097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384601.P16727066867523399097

noncomputable section

/-- A384601: Numbers k such that T(k, 1) mod 3 = 1 and T(k, 2) mod 3 = 1, where T is the Wythoff array (A035513).

Offset 1, canonical program `A384601.P16727066867523399097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A384601 (n : ℕ) : ℤ :=
  (A384601.P16727066867523399097.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A384601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384602.P13490862903164101311

`∩[A283770(n+1), A016777(n)]`
-/

namespace A384602.P13490862903164101311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384602.P13490862903164101311

noncomputable section

/-- A384602: Numbers k such that T(k, 1) mod 3 = 1 and T(k, 2) mod 3 = 2, where T is the Wythoff array (A035513).

Offset 1, canonical program `A384602.P13490862903164101311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A384602 (n : ℕ) : ℤ :=
  (A384602.P13490862903164101311.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A384602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384655.P3126536140411291701

`∑{#}[n, A051903(gcd(n+1, #))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384655.P3126536140411291701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A051903 (Nat.gcd (n + 1) k)

end

end A384655.P3126536140411291701

noncomputable section

/-- A384655: a(n) = Sum_{k=1..n} A051903(gcd(n,k)).

Offset 1, canonical program `A384655.P3126536140411291701`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384655 (n : ℕ) : ℤ :=
  A384655.P3126536140411291701.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384655.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384812.P3201192687683523015

`∑{e}[n+1, A000040(#)]`
-/

namespace A384812.P3201192687683523015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)

end

end A384812.P3201192687683523015

noncomputable section

/-- A384812: If n = Product prime(i)^e(i) then a(n) = Sum prime(e(i)).

Offset 1, canonical program `A384812.P3201192687683523015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384812 (n : ℕ) : ℤ :=
  A384812.P3201192687683523015.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385108.P4617157348366069827

`A033436(A376102(n))+1`
-/

namespace A385108.P4617157348366069827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033436 (A376102 n).toNat + 1

end

end A385108.P4617157348366069827

noncomputable section

/-- A385108: Triangle a(n,k) read by antidiagonals: a(n,k) is the number of dots in the k-augmented centered triangle of order n, k>=0, n>=1.

Offset 1, canonical program `A385108.P4617157348366069827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A385108 (n : ℕ) : ℤ :=
  A385108.P4617157348366069827.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A385108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385129.P11656046538311212658

`∑{d}[n+1, A051903(#)%2]`
-/

namespace A385129.P11656046538311212658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A051903 d) 2

end

end A385129.P11656046538311212658

noncomputable section

/-- A385129: The number of divisors of n whose maximum exponent in their prime factorization is odd.

Offset 1, canonical program `A385129.P11656046538311212658`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385129 (n : ℕ) : ℤ :=
  A385129.P11656046538311212658.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385129.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385131.P8764482673539843631

`∑{d}[n+1, #*A051903(#)%2]`
-/

namespace A385131.P8764482673539843631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * Int.tmod (A051903 d) 2

end

end A385131.P8764482673539843631

noncomputable section

/-- A385131: The sum of divisors of n whose maximum exponent in their prime factorization is odd.

Offset 1, canonical program `A385131.P8764482673539843631`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385131 (n : ℕ) : ℤ :=
  A385131.P8764482673539843631.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385131.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385133.P14831130415972611969

`∑{#}[n, A051903(gcd(n+1, #+1))%2]`
-/

namespace A385133.P14831130415972611969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Int.tmod (A051903 (Nat.gcd (n + 1) (k + 1))) 2

end

end A385133.P14831130415972611969

noncomputable section

/-- A385133: The number of integers k from 1 to n such that gcd(n, k) has an odd maximum exponent in its prime factorization.

Offset 1, canonical program `A385133.P14831130415972611969`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385133 (n : ℕ) : ℤ :=
  A385133.P14831130415972611969.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385133.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385167.P4826086116355619044

`∪[A142187(n+1), A142198(n+1)]`
-/

namespace A385167.P4826086116355619044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385167.P4826086116355619044

noncomputable section

/-- A385167: Primes p == 3 (mod 4) such that (p+1) * ord(5,p) / ord(2+-i,p) is even. Here ord(a,m) is the multiplicative order of a modulo m.

Offset 1, canonical program `A385167.P4826086116355619044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385167 (n : ℕ) : ℤ :=
  (A385167.P4826086116355619044.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385177.P2434834977820488632

`A183136(n+1)+n+1`
-/

namespace A385177.P2434834977820488632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183136 (n + 1) + (n + 1 : ℤ)

end

end A385177.P2434834977820488632

noncomputable section

/-- A385177: a(n) = Sum_{k=1..n} ceiling(k/phi), where phi is the golden ratio (A001622).

Offset 1, canonical program `A385177.P2434834977820488632`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183136, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385177 (n : ℕ) : ℤ :=
  A385177.P2434834977820488632.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183136, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385177.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385182.P1223750767979018473

`comp[A181972(n+1)]-n`
-/

namespace A385182.P1223750767979018473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181972 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A385182.P1223750767979018473

noncomputable section

/-- A385182: Values of u in the quartets (1,u,v,w); i.e., values of u for solutions to (1+u) = v*(v+w), in positive integers, with v>1, sorted by nondecreasing values of u; see Comments.

Offset 1, canonical program `A385182.P1223750767979018473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385182 (n : ℕ) : ℤ :=
  A385182.P1223750767979018473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385378.P16507919324572335447

`∑{e}[n+1, A003056(#)]`
-/

namespace A385378.P16507919324572335447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A003056 (Nat.factorization (f1 n) p)

end

end A385378.P16507919324572335447

noncomputable section

/-- A385378: The maximum possible number of distinct factors in the factorization of n into prime powers (A246655).

Offset 1, canonical program `A385378.P16507919324572335447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385378 (n : ℕ) : ℤ :=
  A385378.P16507919324572335447.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385412.P1663864152010749443

`∩[A007916(n+1), A038687(n+1)]`
-/

namespace A385412.P1663864152010749443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385412.P1663864152010749443

noncomputable section

/-- A385412: Numbers k that are not perfect powers and whose trailing digits form a power of b, where 1 < b < k.

Offset 1, canonical program `A385412.P1663864152010749443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9885 terms. -/
def A385412 (n : ℕ) : ℤ :=
  (A385412.P1663864152010749443.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9885 terms. -/
def A385412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385457.P1892993541243509914

`A071044(A131452(n))`
-/

namespace A385457.P1892993541243509914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 (A131452 n).toNat

end

end A385457.P1892993541243509914

noncomputable section

/-- A385457: Number of odd entries in row n of the Fibonomial triangle (A010048).

Offset 0, canonical program `A385457.P1892993541243509914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7500 terms. -/
def A385457 (n : ℕ) : ℤ :=
  A385457.P1892993541243509914.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7500 terms. -/
def A385457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385494.P9916212289199863013

`∑{d}[n+1, A268643(#)]`
-/

namespace A385494.P9916212289199863013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A268643 d

end

end A385494.P9916212289199863013

noncomputable section

/-- A385494: Total number of 1's in the decimal digits of the divisors of n.

Offset 1, canonical program `A385494.P9916212289199863013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385494 (n : ℕ) : ℤ :=
  A385494.P9916212289199863013.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385554.P5664007560876723036

`A062383(n)*A385552(n)`
-/

namespace A385554.P5664007560876723036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n * A385552 n

end

end A385554.P5664007560876723036

noncomputable section

/-- A385554: Period of {binomial(N,n) mod 10: N in Z}.

Offset 0, canonical program `A385554.P5664007560876723036`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A385552, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385554 (n : ℕ) : ℤ :=
  A385554.P5664007560876723036.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A385552, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385554.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385572.P16973711511248026853

`∑[A217615(abs(1-n))]`
-/

namespace A385572.P16973711511248026853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217615 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385572.P16973711511248026853

noncomputable section

/-- A385572: Number of subsets of {1..n} with the same number of maximal runs (increasing by 1) as maximal anti-runs (increasing by more than 1).

Offset 0, canonical program `A385572.P16973711511248026853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A385572 (n : ℕ) : ℤ :=
  A385572.P16973711511248026853.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A385572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385610.P4272775089795650141

`A006368(2*a(floor(n/2))-(-1)^n)` with `a(0)=1`
-/

namespace A385610.P4272775089795650141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006368 (2 * a ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n).toNat

end

end A385610.P4272775089795650141

noncomputable section

/-- A385610: Galileo sequence with ratio k = 2: a(1) = 1, a(2) = k, a(2*n-1) = floor(((k + 1)*a(n) -1)/2), and a(2*n) = floor((k + 1)*a(n)/2) + 1 for n > 2.

Offset 1, canonical program `A385610.P4272775089795650141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385610 (n : ℕ) : ℤ :=
  A385610.P4272775089795650141.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385704.P10217281555862748785

`comp[A184535(1+n)-1]+1`
-/

namespace A385704.P10217281555862748785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184535 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A385704.P10217281555862748785

noncomputable section

/-- A385704: Complement of A184535.

Offset 1, canonical program `A385704.P10217281555862748785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385704 (n : ℕ) : ℤ :=
  (A385704.P10217281555862748785.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385827.P17938306064123805802

`ceil(log2(A082685(n)))`
-/

namespace A385827.P17938306064123805802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A082685 n : ℝ)⌉

end

end A385827.P17938306064123805802

noncomputable section

/-- A385827: a(n) is the unique k such that 2^k is closest to 5^n.

Offset 0, canonical program `A385827.P17938306064123805802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A385827 (n : ℕ) : ℤ :=
  A385827.P17938306064123805802.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A385827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385879.P5429911478239775443

`∑[char[∑[A069905(n)]]]+2`
-/

namespace A385879.P5429911478239775443
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A385879.P5429911478239775443

noncomputable section

/-- A385879: Values of u in triples (u, v, w) such that the polynomial x^3 + u*x^2 + v*x + w has 3 (possibly repeated) negative integer zeros; the triples are ordered by the inequality u < v.

Offset 1, canonical program `A385879.P5429911478239775443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385879 (n : ℕ) : ℤ :=
  (A385879.P5429911478239775443.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386262.P4974348746514539254

`A051903(A066301(n+1)+1)`
-/

namespace A386262.P4974348746514539254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A066301 (n + 1) + 1).toNat

end

end A386262.P4974348746514539254

noncomputable section

/-- A386262: a(n) = A051903(A051903(n)) for n >= 2, a(1) = 0.

Offset 1, canonical program `A386262.P4974348746514539254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386262 (n : ℕ) : ℤ :=
  A386262.P4974348746514539254.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386571.P6980462762357179349

`comp[n-A001221(n+1)]+1`
-/

namespace A386571.P6980462762357179349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A386571.P6980462762357179349

noncomputable section

/-- A386571: Numbers that are not of the form k - omega(k), where omega(k) is the number of distinct primes dividing k.

Offset 1, canonical program `A386571.P6980462762357179349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386571 (n : ℕ) : ℤ :=
  (A386571.P6980462762357179349.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386572.P15637048353248042012

`comp[n-A001222(n+1)]+1`
-/

namespace A386572.P15637048353248042012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A386572.P15637048353248042012

noncomputable section

/-- A386572: Numbers that are not of the form k - Omega(k), where Omega(k) is the number of prime factors of k counted with multiplicity.

Offset 1, canonical program `A386572.P15637048353248042012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386572 (n : ℕ) : ℤ :=
  (A386572.P15637048353248042012.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386756.P11565520324240613349

`A384311(n+1)-A052928(n)`
-/

namespace A386756.P11565520324240613349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384311 (n + 1) - A052928 n

end

end A386756.P11565520324240613349

noncomputable section

/-- A386756: a(n) is the number of sets of distinct four-cuboid combinations that fill an n X n X n cube excluding combinations that contain cube-shaped cuboids.

Offset 1, canonical program `A386756.P11565520324240613349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A386756 (n : ℕ) : ℤ :=
  A386756.P11565520324240613349.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A386756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386796.P17260301346217221759

`eq[2, A368885(n+1)]+1`
-/

namespace A386796.P17260301346217221759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368885 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A386796.P17260301346217221759

noncomputable section

/-- A386796: Numbers that have exactly one exponent in their prime factorization that is equal to 2.

Offset 1, canonical program `A386796.P17260301346217221759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2263 terms. -/
def A386796 (n : ℕ) : ℤ :=
  (A386796.P17260301346217221759.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2263 terms. -/
def A386796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386832.P17191505806885496330

`ceil(A077028(n)/A002260(n+1))`
-/

namespace A386832.P17191505806885496330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A077028 n : ℚ) / (A002260 (n + 1) : ℚ)⌉

end

end A386832.P17191505806885496330

noncomputable section

/-- A386832: Triangle read by rows: T(n,k) is the number of the sets of partitions of n with length k grouped by largest part.

Offset 1, canonical program `A386832.P17191505806885496330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A386832 (n : ℕ) : ℤ :=
  A386832.P17191505806885496330.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A386832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386884.P4556650635656247242

`(n-3)*C(A004526(n), 2)`
-/

namespace A386884.P4556650635656247242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) * (Nat.choose (A004526 n).toNat 2 : ℤ)

end

end A386884.P4556650635656247242

noncomputable section

/-- A386884: a(n) is the number of distinct four-cuboid combinations that fill an n X n X n cube using only strict cuboids.

Offset 1, canonical program `A386884.P4556650635656247242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A386884 (n : ℕ) : ℤ :=
  A386884.P4556650635656247242.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A386884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387209.P14191999222405322353

`A025828(n)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A387209.P14191999222405322353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A025828 n + a (n - 2)

end

end A387209.P14191999222405322353

noncomputable section

/-- A387209: Number of convex polygons with perimeter n on the regular triangular lattice, not counting rotations and reflections as distinct.

Offset 0, canonical program `A387209.P14191999222405322353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387209 (n : ℕ) : ℤ :=
  A387209.P14191999222405322353.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387298.P17635414638454677823

`∏{e}[n+1, A128834(#)]`
-/

namespace A387298.P17635414638454677823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A128834 (Nat.factorization (f1 n) p)

end

end A387298.P17635414638454677823

noncomputable section

/-- A387298: Dirichlet g.f.: zeta(s) * zeta(6*s) / (zeta(3*s) * zeta(4*s)).

Offset 1, canonical program `A387298.P17635414638454677823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387298 (n : ℕ) : ℤ :=
  A387298.P17635414638454677823.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387312.P4428100148096621254

`xor(A004526(n), A163617(n))`
-/

namespace A387312.P4428100148096621254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004526 n) (A163617 n)

end

end A387312.P4428100148096621254

noncomputable section

/-- A387312: a(n) is the action of "Rule 30" elementary cellular automaton on the binary representation of n if the cells may only expand into the significant bit.

Offset 0, canonical program `A387312.P4428100148096621254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387312 (n : ℕ) : ℤ :=
  A387312.P4428100148096621254.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387332.P6355845914133237599

`2^n-A028495(n+1)`
-/

namespace A387332.P6355845914133237599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A028495 (n + 1)

end

end A387332.P6355845914133237599

noncomputable section

/-- A387332: Number of binary strings of length n that contain at least one maximal run of ones of even length.

Offset 0, canonical program `A387332.P6355845914133237599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A387332 (n : ℕ) : ℤ :=
  A387332.P6355845914133237599.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A387332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387394.P3160881083450002832

`∑{d}[n+1, A316863(#)]`
-/

namespace A387394.P3160881083450002832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A316863 d

end

end A387394.P3160881083450002832

noncomputable section

/-- A387394: Total number of 2's in the decimal digits of the divisors of n.

Offset 1, canonical program `A387394.P3160881083450002832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387394 (n : ℕ) : ℤ :=
  A387394.P3160881083450002832.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387394.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387463.P7935693683231435009

`∑{d}[n+1, A316864(#)]`
-/

namespace A387463.P7935693683231435009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A316864 d

end

end A387463.P7935693683231435009

noncomputable section

/-- A387463: Total number of 3's in the decimal digits of the divisors of n.

Offset 1, canonical program `A387463.P7935693683231435009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387463 (n : ℕ) : ℤ :=
  A387463.P7935693683231435009.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387463.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387514.P4744547096394587490

`A098482(1+n)+Δ[A098482(n)]`
-/

namespace A387514.P4744547096394587490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098482 (1 + n) + (f1 (n + 1) - f1 n)

end

end A387514.P4744547096394587490

noncomputable section

/-- A387514: Number of ways to tile a fixed circular strip of length n with squares and dominos of two different colors where there must be the same number of each color of domino.

Offset 1, canonical program `A387514.P4744547096394587490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A387514 (n : ℕ) : ℤ :=
  A387514.P4744547096394587490.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A387514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387644.P12775165900026762

`A002264(A092200(A216256(n+1)))+n`
-/

namespace A387644.P12775165900026762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A092200 (A216256 (n + 1)).toNat).toNat + (n : ℤ)

end

end A387644.P12775165900026762

noncomputable section

/-- A387644: Complement of A045944.

Offset 1, canonical program `A387644.P12775165900026762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387644 (n : ℕ) : ℤ :=
  A387644.P12775165900026762.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387858.P204577345225276622

`A008670(A042948(3*n+4)+1)`
-/

namespace A387858.P204577345225276622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008670 (A042948 (3 * n + 4) + 1).toNat

end

end A387858.P204577345225276622

noncomputable section

/-- A387858: Sum of squares of the multiplicities of pairwise distances among the vertices of a regular n-gon.

Offset 3, canonical program `A387858.P204577345225276622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1666 terms. -/
def A387858 (n : ℕ) : ℤ :=
  A387858.P204577345225276622.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1666 terms. -/
def A387858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388077.P17750427128830897830

`eq[0, A256436(n)]`
-/

namespace A388077.P17750427128830897830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256436 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A388077.P17750427128830897830

noncomputable section

/-- A388077: Complement of A000332.

Offset 1, canonical program `A388077.P17750427128830897830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A388077 (n : ℕ) : ℤ :=
  (A388077.P17750427128830897830.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A388077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388994.P3930905186296382464

`A048250(n+1)-A162296(n+1)`
-/

namespace A388994.P3930905186296382464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) - A162296 (n + 1)

end

end A388994.P3930905186296382464

noncomputable section

/-- A388994: a(n) = {sum of squarefree divisors of n} minus {sum of divisors of n that have a square factor}.

Offset 1, canonical program `A388994.P3930905186296382464`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162296, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388994 (n : ℕ) : ℤ :=
  A388994.P3930905186296382464.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162296, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388994.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389091.P14868467851524757618

`A000030(n)+A217657(A051022(n))²`
-/

namespace A389091.P14868467851524757618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n + A217657 (A051022 n).toNat ^ 2

end

end A389091.P14868467851524757618

noncomputable section

/-- A389091: Sum over i of the i-th digit of n raised to the i-th power.

Offset 0, canonical program `A389091.P14868467851524757618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A389091 (n : ℕ) : ℤ :=
  A389091.P14868467851524757618.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A389091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389227.P12429541221648021924

`filter[A341646(n+1), A087049(#)]`
-/

namespace A389227.P12429541221648021924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A389227.P12429541221648021924

noncomputable section

/-- A389227: Numbers in A126706 that are less than the square of their squarefree kernel.

Offset 1, canonical program `A389227.P12429541221648021924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3711 terms. -/
def A389227 (n : ℕ) : ℤ :=
  A389227.P12429541221648021924.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3711 terms. -/
def A389227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389471.P8174744093872280267

`∑[A257633(n)]`
-/

namespace A389471.P8174744093872280267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389471.P8174744093872280267

noncomputable section

/-- A389471: a(n) = Sum_{k=0..n} binomial(4*k+2,k).

Offset 0, canonical program `A389471.P8174744093872280267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A389471 (n : ℕ) : ℤ :=
  A389471.P8174744093872280267.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A389471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389594.P16283464142215270582

`A057716(a(n-1))` with `a(0)=1`
-/

namespace A389594.P16283464142215270582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A057716 (a (n - 1)).toNat

end

end A389594.P16283464142215270582

noncomputable section

/-- A389594: a(1) = 1; a(n+1) = a(n)-th positive integer that is not a power of 2.

Offset 1, canonical program `A389594.P16283464142215270582`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389594 (n : ℕ) : ℤ :=
  A389594.P16283464142215270582.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389594.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389607.P8527242215205205422

`2*(A110293(n+1)-1)`
-/

namespace A389607.P8527242215205205422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A110293 (n + 1) - 1)

end

end A389607.P8527242215205205422

noncomputable section

/-- A389607: A bisection of A221075.

Offset 1, canonical program `A389607.P8527242215205205422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A389607 (n : ℕ) : ℤ :=
  A389607.P8527242215205205422.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A389607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389698.P11786458541430065540

`∏{e}[n+1, A005899(#)]`
-/

namespace A389698.P11786458541430065540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A005899 (Nat.factorization (f1 n) p)

end

end A389698.P11786458541430065540

noncomputable section

/-- A389698: Multiplicative sequence a(n) with a(p^e) = 4 * e^2 + 2 for prime p and e > 0.

Offset 1, canonical program `A389698.P11786458541430065540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389698 (n : ℕ) : ℤ :=
  A389698.P11786458541430065540.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389809.P6967149705816443020

`A000040(2+row(n))`
-/

namespace A389809.P6967149705816443020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 + SequenceMachineLib.triRow n)

end

end A389809.P6967149705816443020

noncomputable section

/-- A389809: Sequence containing k-1 occurrences of prime(k) ordered by k.

Offset 1, canonical program `A389809.P6967149705816443020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389809 (n : ℕ) : ℤ :=
  A389809.P6967149705816443020.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389832.P16160485029740737369

`∏{e}[n+1, A098178(#)]`
-/

namespace A389832.P16160485029740737369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A098178 (Nat.factorization (f1 n) p)

end

end A389832.P16160485029740737369

noncomputable section

/-- A389832: Multiplicative sequence a(n) with a(p^e) = abs(2 - (e mod 4)) for prime p and e > 0.

Offset 1, canonical program `A389832.P16160485029740737369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389832 (n : ℕ) : ℤ :=
  A389832.P16160485029740737369.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389887.P17353469086998159465

`∑{d}[n+1, A303915(#)]`
-/

namespace A389887.P17353469086998159465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A303915 d

end

end A389887.P17353469086998159465

noncomputable section

/-- A389887: Multiplicative sequence a(n) with a(p^e) = (3 + (-1)^e * (2*e+1)) / 4 for prime p and e >= 0.

Offset 1, canonical program `A389887.P17353469086998159465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389887 (n : ℕ) : ℤ :=
  A389887.P17353469086998159465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390326.P6519026074594775614

`A002378(lt[1, n+1-2^floor(log2(n+1))])`
-/

namespace A390326.P6519026074594775614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (2 ^ Nat.log 2 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A390326.P6519026074594775614

noncomputable section

/-- A390326: Oblong numbers not of the forms 2^k*(2^k - 1) or 2^k*(2^k + 1).

Offset 1, canonical program `A390326.P6519026074594775614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9973 terms. -/
def A390326 (n : ℕ) : ℤ :=
  A390326.P6519026074594775614.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9973 terms. -/
def A390326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390411.P2957758563450737005

`∑[A052203(n)]`
-/

namespace A390411.P2957758563450737005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390411.P2957758563450737005

noncomputable section

/-- A390411: a(n) = Sum_{k=0..n} binomial(4*k+1,k).

Offset 0, canonical program `A390411.P2957758563450737005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A390411 (n : ℕ) : ℤ :=
  A390411.P2957758563450737005.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A390411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390437.P11752335666826313270

`eq[0, A366124(n+1)]+1`
-/

namespace A390437.P11752335666826313270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366124 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A390437.P11752335666826313270

noncomputable section

/-- A390437: Numbers whose prime factorization exponents are not divisible by 3.

Offset 1, canonical program `A390437.P11752335666826313270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8955 terms. -/
def A390437 (n : ℕ) : ℤ :=
  (A390437.P11752335666826313270.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8955 terms. -/
def A390437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390478.P5375612594405995179

`A144904(n+1)+A144904(n+1)-A371842(n)`
-/

namespace A390478.P5375612594405995179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144904 (n + 1) + (A144904 (n + 1) - A371842 n)

end

end A390478.P5375612594405995179

noncomputable section

/-- A390478: a(n) = Sum_{k=0..floor(n/3)} (4*k+1) * binomial(2*n-2*k+1,n-3*k)/(2*n-2*k+1).

Offset 0, canonical program `A390478.P5375612594405995179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A390478 (n : ℕ) : ℤ :=
  A390478.P5375612594405995179.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A390478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390767.P7294743232023992105

`A081604(floor(sqrt(n)))`
-/

namespace A390767.P7294743232023992105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (Nat.sqrt n)

end

end A390767.P7294743232023992105

noncomputable section

/-- A390767: Number of digits in base-9 representation of n.

Offset 0, canonical program `A390767.P7294743232023992105`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390767 (n : ℕ) : ℤ :=
  A390767.P7294743232023992105.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390808.P12805373297401576617

`∑{#}[n, A010052(gcd(#+1, n+1))*(#+1)]`
-/

namespace A390808.P12805373297401576617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A010052 (Nat.gcd (k + 1) (n + 1)) * (k + 1 : ℤ)

end

end A390808.P12805373297401576617

noncomputable section

/-- A390808: The sum of the integers k from 1 to n such that gcd(n, k) is a square.

Offset 1, canonical program `A390808.P12805373297401576617`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390808 (n : ℕ) : ℤ :=
  A390808.P12805373297401576617.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390808.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390809.P10476724763884040388

`∑{#}[n, A019590(gcd(#+1, n+1))*(#+1)]`
-/

namespace A390809.P10476724763884040388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A019590 (Nat.gcd (k + 1) (n + 1)) * (k + 1 : ℤ)

end

end A390809.P10476724763884040388

noncomputable section

/-- A390809: The sum of the integers k from 1 to n such that gcd(n, k) is either 1 or 2.

Offset 1, canonical program `A390809.P10476724763884040388`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019590, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390809 (n : ℕ) : ℤ :=
  A390809.P10476724763884040388.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019590, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390809.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391173.P5451114859997772929

`∑{#}[n, A391168(#)*A391168(n-#)]`
-/

namespace A391173.P5451114859997772929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A391168 k * A391168 (n - k)

end

end A391173.P5451114859997772929

noncomputable section

/-- A391173: Expansion of g^2/(1 - x*g)^4, where g = 1+x*g^3 is the g.f. of A001764.

Offset 0, canonical program `A391173.P5451114859997772929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. -/
def A391173 (n : ℕ) : ℤ :=
  A391173.P5451114859997772929.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. -/
def A391173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391306.P13537613047320881444

`(A001764(n)+a(n-1))/2` with `a(0)=1`
-/

namespace A391306.P13537613047320881444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((A001764 n : ℚ) + a (n - 1)) / 2

end

end A391306.P13537613047320881444

noncomputable section

/-- A391306: Expansion of g/(1 + x^2*g^4), where g = 1+x*g^3 is the g.f. of A001764.

Offset 0, canonical program `A391306.P13537613047320881444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A391306 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A391306.P13537613047320881444.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A391306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391453.P10895712906929925412

`∑[A389392(n+1)]-A389392(n+1)`
-/

namespace A391453.P10895712906929925412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A389392 (n + 1)

end

end A391453.P10895712906929925412

noncomputable section

/-- A391453: a(n) is the number of 5 element sets of distinct integer-sided trapezoids whose base angles are 60 degrees that fill an equilateral triangular grid of side n units, where one trapezoid has a larger base of n units.

Offset 1, canonical program `A391453.P10895712906929925412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A391453 (n : ℕ) : ℤ :=
  A391453.P10895712906929925412.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A391453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391502.P16587956580403437799

`A102283(n)*A011582(n)`
-/

namespace A391502.P16587956580403437799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 n * A011582 n

end

end A391502.P16587956580403437799

noncomputable section

/-- A391502: a(n) = Kronecker symbol (33/n).

Offset 0, canonical program `A391502.P16587956580403437799`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A011582, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391502 (n : ℕ) : ℤ :=
  A391502.P16587956580403437799.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A011582, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391502.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391552.P11241042363183505534

`A143495(n+3)*A233543(n)`
-/

namespace A391552.P11241042363183505534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143495 (n + 3) * A233543 n

end

end A391552.P11241042363183505534

noncomputable section

/-- A391552: Triangle read by rows: T(n,k) = Sum_{j=0..k} (-1)^(k-j) * binomial(k,j) * (3+j)^n.

Offset 0, canonical program `A391552.P11241042363183505534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2184 terms. -/
def A391552 (n : ℕ) : ℤ :=
  A391552.P11241042363183505534.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2184 terms. -/
def A391552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391614.P9333302647466192623

`A356874(n)%2`
-/

namespace A391614.P9333302647466192623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356874 n) 2

end

end A391614.P9333302647466192623

noncomputable section

/-- A391614: a(4n) = a(2n+a(n)), a(4n+2) = a(2n+1-a(n)) and a(2n+1) = 1-a(2n), with a(0) = 0.

Offset 0, canonical program `A391614.P9333302647466192623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391614 (n : ℕ) : ℤ :=
  A391614.P9333302647466192623.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391637.P2302561987821921609

`a(n-1)+A094345(n)` with `a(0)=0`
-/

namespace A391637.P2302561987821921609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A094345 n

end

end A391637.P2302561987821921609

noncomputable section

/-- A391637: Partial sums of A094345.

Offset 0, canonical program `A391637.P2302561987821921609`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094345, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391637 (n : ℕ) : ℤ :=
  A391637.P2302561987821921609.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094345, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391637.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391826.P2783923816481553111

`1+A180762(n+1)+A230813(n+1)/2`
-/

namespace A391826.P2783923816481553111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A180762 (n + 1) : ℚ) + (A230813 (n + 1) : ℚ) / 2

end

end A391826.P2783923816481553111

noncomputable section

/-- A391826: Number of partitions of the vertices of the n-ladder graph into dominating sets.

Offset 1, canonical program `A391826.P2783923816481553111`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A180762, A230813, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391826 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A391826.P2783923816481553111.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A180762, A230813, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391826.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392116.P7884063924206955522

`Δ[floor(A000040(n+1)/5)]`
-/

namespace A392116.P7884063924206955522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A392116.P7884063924206955522

noncomputable section

/-- A392116: a(n) = f(n+1) - f(n), where f(n) = floor(prime(n)/5).

Offset 1, canonical program `A392116.P7884063924206955522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A392116 (n : ℕ) : ℤ :=
  A392116.P7884063924206955522.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A392116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392221.P1263781422373612323

`A070939(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A392221.P1263781422373612323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A070939 n + a (n - 2)

end

end A392221.P1263781422373612323

noncomputable section

/-- A392221: Sum of depths of leaves in a complete binary tree with n nodes.

Offset 1, canonical program `A392221.P1263781422373612323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392221 (n : ℕ) : ℤ :=
  A392221.P1263781422373612323.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392275.P6230307979190573459

`ceil(A051903(n+1)/3)`
-/

namespace A392275.P6230307979190573459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A051903 (n + 1) : ℚ) / 3⌉

end

end A392275.P6230307979190573459

noncomputable section

/-- A392275: The maximum exponent in the prime factorization of the smallest number whose cube is divisible by n.

Offset 1, canonical program `A392275.P6230307979190573459`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392275 (n : ℕ) : ℤ :=
  A392275.P6230307979190573459.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392275.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392276.P5223539805736873685

`floor(A051903(n+1)/2)`
-/

namespace A392276.P5223539805736873685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051903 (n + 1) : ℚ) / 2⌋

end

end A392276.P5223539805736873685

noncomputable section

/-- A392276: The maximum exponent in the prime factorization of the square root of the largest square dividing n.

Offset 1, canonical program `A392276.P5223539805736873685`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392276 (n : ℕ) : ℤ :=
  A392276.P5223539805736873685.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392276.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392277.P7607711306588657949

`floor(A051903(n+1)/3)`
-/

namespace A392277.P7607711306588657949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051903 (n + 1) : ℚ) / 3⌋

end

end A392277.P7607711306588657949

noncomputable section

/-- A392277: The maximum exponent in the prime factorization of the cube root of the largest cube dividing n.

Offset 1, canonical program `A392277.P7607711306588657949`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392277 (n : ℕ) : ℤ :=
  A392277.P7607711306588657949.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392277.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392281.P15155535942076632488

`A029837(A051903(n+2))`
-/

namespace A392281.P15155535942076632488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A051903 (n + 2)).toNat

end

end A392281.P15155535942076632488

noncomputable section

/-- A392281: a(n) = log_2(A392280(n)).

Offset 2, canonical program `A392281.P15155535942076632488`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392281 (n : ℕ) : ℤ :=
  A392281.P15155535942076632488.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392281.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392386.P13637188722429898050

`eq[A001221(n+2), A001221(A004277(n))]`
-/

namespace A392386.P13637188722429898050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392386.P13637188722429898050

noncomputable section

/-- A392386: Numbers k such that omega(2*k) = omega(k + 2), where omega = A001221.

Offset 1, canonical program `A392386.P13637188722429898050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2977 terms. -/
def A392386 (n : ℕ) : ℤ :=
  (A392386.P13637188722429898050.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2977 terms. -/
def A392386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392416.P12317177431263186139

`A203280(n+1)/2+1`
-/

namespace A392416.P12317177431263186139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203280 (n + 1) : ℚ) / 2 + 1

end

end A392416.P12317177431263186139

noncomputable section

/-- A392416: Number of partitions of the vertices of the n X 3 grid graph into total dominating sets.

Offset 1, canonical program `A392416.P12317177431263186139`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A203280, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392416 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392416.P12317177431263186139.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A203280, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392416.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392670.P14366886065038149397

`A002487(A046699(n+2))`
-/

namespace A392670.P14366886065038149397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A046699 (n + 2)).toNat

end

end A392670.P14366886065038149397

noncomputable section

/-- A392670: Triangle read by rows where row n is the numerators of the node values in a preorder traversal of the Calkin-Wilf tree with n levels, columns 0 <= k < 2^n-1.

Offset 1, canonical program `A392670.P14366886065038149397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392670 (n : ℕ) : ℤ :=
  A392670.P14366886065038149397.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392781.P4887849297626016326

`A004526(∑{p}[n+1, #*val(n+1, #)]+1-∑{e}[n+1, #])`
-/

namespace A392781.P4887849297626016326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p + 1 - ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A392781.P4887849297626016326

noncomputable section

/-- A392781: Length of the longest reduced word in the cyclic group C_n.

Offset 1, canonical program `A392781.P4887849297626016326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392781 (n : ℕ) : ℤ :=
  A392781.P4887849297626016326.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393139.P6748471815250712617

`A005773(n+2)-A001405(n+1)`
-/

namespace A393139.P6748471815250712617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 2) - A001405 (n + 1)

end

end A393139.P6748471815250712617

noncomputable section

/-- A393139: Row sums of A393138.

Offset 0, canonical program `A393139.P6748471815250712617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A393139 (n : ℕ) : ℤ :=
  A393139.P6748471815250712617.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A393139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393443.P16093483747421340757

`A162609(n+1)+A049780(n)`
-/

namespace A393443.P16093483747421340757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162609 (n + 1) + A049780 n

end

end A393443.P16093483747421340757

noncomputable section

/-- A393443: Array read by downward antidiagonals: T(n,k) (n>=0, k>=0) = 1+k+2*n*k+k*(k-1)/2+n*(n-1).

Offset 0, canonical program `A393443.P16093483747421340757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393443 (n : ℕ) : ℤ :=
  A393443.P16093483747421340757.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393443.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393549.P16518763056009907851

`Δ[A011557(n)]-A073531(n+1)`
-/

namespace A393549.P16518763056009907851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A073531 (n + 1)

end

end A393549.P16518763056009907851

noncomputable section

/-- A393549: a(n) is the number of n-digit numbers in which at least one digit occurs more than once.

Offset 1, canonical program `A393549.P16518763056009907851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A393549 (n : ℕ) : ℤ :=
  A393549.P16518763056009907851.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A393549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394240.P15634924062511509081

`A241199(n+1)+A194073(n+1)`
-/

namespace A394240.P15634924062511509081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241199 (n + 1) + A194073 (n + 1)

end

end A394240.P15634924062511509081

noncomputable section

/-- A394240: Number of regions formed by extending the faces of a regular n-gonal pyramid.

Offset 3, canonical program `A394240.P15634924062511509081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394240 (n : ℕ) : ℤ :=
  A394240.P15634924062511509081.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394240.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395101.P16581405830071828920

`A016777(n)%A182770(n+1)`
-/

namespace A395101.P16581405830071828920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016777 n) (A182770 (n + 1))

end

end A395101.P16581405830071828920

noncomputable section

/-- A395101: Indices k such that A080764(k) = 1.

Offset 1, canonical program `A395101.P16581405830071828920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395101 (n : ℕ) : ℤ :=
  A395101.P16581405830071828920.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395535.P38086071388283955

`A003188(A059029(n))`
-/

namespace A395535.P38086071388283955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A059029 n).toNat

end

end A395535.P38086071388283955

noncomputable section

/-- A395535: a(n) = (n XOR n*2+1) for odd n, (n XOR n/2) for even n.

Offset 0, canonical program `A395535.P38086071388283955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395535 (n : ℕ) : ℤ :=
  A395535.P38086071388283955.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395700.P10863328374740441814

`eq[n, A181859(n)]`
-/

namespace A395700.P10863328374740441814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181859 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A395700.P10863328374740441814

noncomputable section

/-- A395700: k is term if and only if k = gcd(k^2, k!) / gcd(k^2, k!/floor(k/2)!^2).

Offset 1, canonical program `A395700.P10863328374740441814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 552 terms. -/
def A395700 (n : ℕ) : ℤ :=
  (A395700.P10863328374740441814.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 552 terms. -/
def A395700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395788.P12615804194688799175

`eq[A001414(2*(n+2)), A001414(A008574(n))]`
-/

namespace A395788.P12615804194688799175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A395788.P12615804194688799175

noncomputable section

/-- A395788: Numbers k for which sopfr(2*k) = sopfr(k + 2) where sopfr = A001414.

Offset 1, canonical program `A395788.P12615804194688799175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A395788 (n : ℕ) : ℤ :=
  (A395788.P12615804194688799175.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A395788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396046.P971276664437156168

`comp[A013937(n)]`
-/

namespace A396046.P971276664437156168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013937 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A396046.P971276664437156168

noncomputable section

/-- A396046: Numbers not of the form Sum_{k=1..m} floor(m/k^3).

Offset 1, canonical program `A396046.P971276664437156168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2002 terms. -/
def A396046 (n : ℕ) : ℤ :=
  (A396046.P971276664437156168.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2002 terms. -/
def A396046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396583.P10507654169071020260

`C(row(n), col(n))*A396201(col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A396583.P10507654169071020260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) * A396201 (SequenceMachineLib.triCol n)

end

end A396583.P10507654169071020260

noncomputable section

/-- A396583: Triangle read by rows: T(n, k) = binomial(n, k) * A396201(k).

Offset 0, canonical program `A396583.P10507654169071020260`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A396201, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396583 (n : ℕ) : ℤ :=
  A396583.P10507654169071020260.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A396201, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396583.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A396776.P18268578886540690482

`2*n+3-A073254(n)`
-/

namespace A396776.P18268578886540690482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A073254 n

end

end A396776.P18268578886540690482

noncomputable section

/-- A396776: Square array read by upwards antidiagonals: T(p,q) is the number cells required to completely surround a single cell of the regular tiling with Schläfli symbol {p,q}.

Offset 3, canonical program `A396776.P18268578886540690482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396776 (n : ℕ) : ℤ :=
  A396776.P18268578886540690482.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397085.P2550365972256081373

`A062157(A053186(n))`
-/

namespace A397085.P2550365972256081373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A053186 n).toNat

end

end A397085.P2550365972256081373

noncomputable section

/-- A397085: a(n) = (-1)^(n-floor(sqrt(n))^2-1) if n is not a perfect square and 0 otherwise.

Offset 0, canonical program `A397085.P2550365972256081373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397085 (n : ℕ) : ℤ :=
  A397085.P2550365972256081373.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397111.P2464221293818646851

`∩[A184792(n+1), A184794(n+1)]`
-/

namespace A397111.P2464221293818646851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397111.P2464221293818646851

noncomputable section

/-- A397111: Numbers k such that A000201(k) and A001950(k) are both prime.

Offset 1, canonical program `A397111.P2464221293818646851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 895 terms. -/
def A397111 (n : ℕ) : ℤ :=
  (A397111.P2464221293818646851.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 895 terms. -/
def A397111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397286.P9058214678386781954

`A007318(n)*A052750(row(n)-col(n))`
-/

namespace A397286.P9058214678386781954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A052750 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A397286.P9058214678386781954

noncomputable section

/-- A397286: Triangle read by rows: T(n, k) = 2^(n - k) * P_{n, k}(1/2) where P_{n, k}(x) = x * (n - k + x)^(n - k - 1) * binomial(n, k).

Offset 0, canonical program `A397286.P9058214678386781954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A397286 (n : ℕ) : ℤ :=
  A397286.P9058214678386781954.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A397286.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397616.P364916226218916289

`A000040(comp[floor(n*sqrt(5))])`
-/

namespace A397616.P364916226218916289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A397616.P364916226218916289

noncomputable section

/-- A397616: a(n) = prime(floor(n*r)), where r = (5 + sqrt(5))/4.

Offset 1, canonical program `A397616.P364916226218916289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5528 terms. -/
def A397616 (n : ℕ) : ℤ :=
  A397616.P364916226218916289.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5528 terms. -/
def A397616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397622.P12107232560436362639

`A000040(A005653(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397622.P12107232560436362639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A005653 (n + 1)).toNat

end

end A397622.P12107232560436362639

noncomputable section

/-- A397622: a(n) = prime(A005653(n)).

Offset 1, canonical program `A397622.P12107232560436362639`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005653, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397622 (n : ℕ) : ℤ :=
  A397622.P12107232560436362639.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005653, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397622.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A397736.P9033363532700325613

`∑{#}[n, C(n, #)*A090344(#)]`
-/

namespace A397736.P9033363532700325613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A090344 k

end

end A397736.P9033363532700325613

noncomputable section

/-- A397736: a(n) is the number of Motzkin paths of length n in which level steps on even levels come in 2 colors.

Offset 0, canonical program `A397736.P9033363532700325613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A397736 (n : ℕ) : ℤ :=
  A397736.P9033363532700325613.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A397736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397991.P18435399576192806891

`A010766(n+1)+row(n)-col(n)`
-/

namespace A397991.P18435399576192806891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))

end

end A397991.P18435399576192806891

noncomputable section

/-- A397991: Array read by ascending antidiagonals: A(n,k) = floor(1+k*n/(k-1)) with k >= 2.

Offset 0, canonical program `A397991.P18435399576192806891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397991 (n : ℕ) : ℤ :=
  A397991.P18435399576192806891.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398105.P14381521786893344065

`A286850(n)²`
-/

namespace A398105.P14381521786893344065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286850 n ^ 2

end

end A398105.P14381521786893344065

noncomputable section

/-- A398105: Number of minimal dominating sets in the 4 X n king graph.

Offset 0, canonical program `A398105.P14381521786893344065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. -/
def A398105 (n : ℕ) : ℤ :=
  A398105.P14381521786893344065.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. -/
def A398105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398182.P11134999281923761976

`2*A395822(n)`
-/

namespace A398182.P11134999281923761976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A395822 n

end

end A398182.P11134999281923761976

noncomputable section

/-- A398182: Degree of the minimal polynomial whose root is the sidelength of the largest n-cube that fits inside a unit (n+1)-cube.

Offset 0, canonical program `A398182.P11134999281923761976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A398182 (n : ℕ) : ℤ :=
  A398182.P11134999281923761976.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A398182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398470.P15258585584443073451

`A036486(A000982(n+1))-A036486(n+1)`
-/

namespace A398470.P15258585584443073451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036486 (A000982 (n + 1)).toNat - A036486 (n + 1)

end

end A398470.P15258585584443073451

noncomputable section

/-- A398470: Number of increasing 3-term arithmetic progressions in an n^3 cube.

Offset 1, canonical program `A398470.P15258585584443073451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A398470 (n : ℕ) : ℤ :=
  A398470.P15258585584443073451.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A398470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398655.P6576427525561031617

`A051925(n+1)-A398654(n)`
-/

namespace A398655.P6576427525561031617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051925 (n + 1) - A398654 n

end

end A398655.P6576427525561031617

noncomputable section

/-- A398655: Lower (1, 2/3) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

Offset 0, canonical program `A398655.P6576427525561031617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A398655 (n : ℕ) : ℤ :=
  A398655.P6576427525561031617.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A398655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398851.P6452967671185813626

`A398845(n)-∑[n]`
-/

namespace A398851.P6452967671185813626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398845 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398851.P6452967671185813626

noncomputable section

/-- A398851: Upper (-1/2, 1/3)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398851.P6452967671185813626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398851 (n : ℕ) : ℤ :=
  A398851.P6452967671185813626.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398894.P12466504130326028723

`n*A003418(A254667(n))+1`
-/

namespace A398894.P12466504130326028723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A003418 (A254667 n).toNat + 1

end

end A398894.P12466504130326028723

noncomputable section

/-- A398894: Minimum value of k such that there exists a subset S of {1, ..., k} of size n for which the average of every nonempty subset of S is an integer.

Offset 1, canonical program `A398894.P12466504130326028723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. -/
def A398894 (n : ℕ) : ℤ :=
  A398894.P12466504130326028723.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. -/
def A398894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399232.P4777266106439279644

`2*A340806(2*n+3)`
-/

namespace A399232.P4777266106439279644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A340806 (2 * n + 3)

end

end A399232.P4777266106439279644

noncomputable section

/-- A399232: a(n) = Sum_{k=1..4*n+2} (k^(4*n+1) mod (2*n+1)).

Offset 1, canonical program `A399232.P4777266106439279644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A399232 (n : ℕ) : ℤ :=
  A399232.P4777266106439279644.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A399232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399305.P4536784307607382255

`A063732(A187945(n+2))`
-/

namespace A399305.P4536784307607382255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063732 (A187945 (n + 2)).toNat

end

end A399305.P4536784307607382255

noncomputable section

/-- A399305: Integers whose minimal Lucas representation (A130310) ends in a 0 which if removed results in a valid minimal Lucas representation of another integer.

Offset 1, canonical program `A399305.P4536784307607382255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8540 terms. -/
def A399305 (n : ℕ) : ℤ :=
  A399305.P4536784307607382255.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8540 terms. -/
def A399305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399500.P9205957688936578004

`A339183(n)+A002260(n+1)`
-/

namespace A399500.P9205957688936578004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339183 n + A002260 (n + 1)

end

end A399500.P9205957688936578004

noncomputable section

/-- A399500: Triangle read by rows: row n gives the n consecutive integers centered at n, excluding n if n is even.

Offset 1, canonical program `A399500.P9205957688936578004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399500 (n : ℕ) : ℤ :=
  A399500.P9205957688936578004.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399553.P3075501320082949688

`2*A059009(n)+1`
-/

namespace A399553.P3075501320082949688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059009 n + 1

end

end A399553.P3075501320082949688

noncomputable section

/-- A399553: a(n) is the least odd k such that neither k nor the odd part of k + 1 is yet in the sequence.

Offset 0, canonical program `A399553.P3075501320082949688`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059009, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399553 (n : ℕ) : ℤ :=
  A399553.P3075501320082949688.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059009, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399553.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A399742.P12674386564686535397

`A193845(n)-A038207(n)`
-/

namespace A399742.P12674386564686535397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193845 n - A038207 n

end

end A399742.P12674386564686535397

noncomputable section

/-- A399742: Table of B(n, m) read by antidiagonals: B(n, m) = Sum_{k=0..m-1} binomial(k+n, n) * 2^k and B(n, 0) = 0, for n >= 0, m >= 0.

Offset 0, canonical program `A399742.P12674386564686535397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399742 (n : ℕ) : ℤ :=
  A399742.P12674386564686535397.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400138.P7100333575480106552

`∑{d}[n+1, A008966(#)*A358260((n+1)/#)]`
-/

namespace A400138.P7100333575480106552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A358260 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A400138.P7100333575480106552

noncomputable section

/-- A400138: The number of divisors d of n such that gcid(d, n/d) is squarefree, where gcid is the greatest common infinitary divisor.

Offset 1, canonical program `A400138.P7100333575480106552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400138 (n : ℕ) : ℤ :=
  A400138.P7100333575480106552.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400485.P3529086219494941568

`n+A135287(n)`
-/

namespace A400485.P3529086219494941568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A135287 n

end

end A400485.P3529086219494941568

noncomputable section

/-- A400485: a(1) = 1; for n > 1: if a(n-1) + n is odd, a(n) = a(n-1) + n else a(n) = (a(n-1) + n)/2.

Offset 1, canonical program `A400485.P3529086219494941568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400485 (n : ℕ) : ℤ :=
  A400485.P3529086219494941568.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400693.P5789945913233644557

`∑[A069268(n+1)^3]`
-/

namespace A400693.P5789945913233644557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069268 (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400693.P5789945913233644557

noncomputable section

/-- A400693: Sum of cubes of A069268: a(n) = Sum_{k=1..n} gcd(k!, k*(k+1)/2)^3.

Offset 1, canonical program `A400693.P5789945913233644557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9431 terms. -/
def A400693 (n : ℕ) : ℤ :=
  A400693.P5789945913233644557.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9431 terms. -/
def A400693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400755.P875578250323055038

`A059026(1+n)+1`
-/

namespace A400755.P875578250323055038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059026 (1 + n) + 1

end

end A400755.P875578250323055038

noncomputable section

/-- A400755: Triangle read by rows: T(n,k) = denominator(n/(n + k)), with 1 <= k <= n.

Offset 1, canonical program `A400755.P875578250323055038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400755 (n : ℕ) : ℤ :=
  A400755.P875578250323055038.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400894.P15283623408944251719

`2*A400891(n+1)+1`
-/

namespace A400894.P15283623408944251719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A400891 (n + 1) + 1

end

end A400894.P15283623408944251719

noncomputable section

/-- A400894: Bipartition of the positive odd numbers depending on the parity of the 2-adic valuation A007814(3*k + 2). Here the part with even valuation based on A400891.

Offset 1, canonical program `A400894.P15283623408944251719`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A400891, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400894 (n : ℕ) : ℤ :=
  A400894.P15283623408944251719.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A400891, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400894.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A400954.P15630144389841210989

`A048993(A073423(n)+n)`
-/

namespace A400954.P15630144389841210989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A073423 n + (n : ℤ)).toNat

end

end A400954.P15630144389841210989

noncomputable section

/-- A400954: Triangle read by rows: T(n,k) is the number of distinct ways to get the minimum runtime for k threads to complete n tasks, where time(n_i) = 2^(i-1), with 1 <= i <= n.

Offset 1, canonical program `A400954.P15630144389841210989`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A400954 (n : ℕ) : ℤ :=
  A400954.P15630144389841210989.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A400954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401088.P7983821779382291902

`∏{e}[1+n, A007879(#)]`
-/

namespace A401088.P7983821779382291902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A007879 (Nat.factorization (f1 n) p)

end

end A401088.P7983821779382291902

noncomputable section

/-- A401088: The number of exponentially odd divisors d of n such that n/d is a square.

Offset 1, canonical program `A401088.P7983821779382291902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401088 (n : ℕ) : ℤ :=
  A401088.P7983821779382291902.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401191.P5971859324744171854

`a(n-1)+1+A031346(a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A401191.P5971859324744171854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + 1 + A031346 (a (n - 2)).toNat

end

end A401191.P5971859324744171854

noncomputable section

/-- A401191: a(0)=a(1)=1, a(n) = a(n-1) + 1 + per(a(n-2)), where per(n) is the multiplicative persistence of n.

Offset 0, canonical program `A401191.P5971859324744171854`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A031346, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401191 (n : ℕ) : ℤ :=
  A401191.P5971859324744171854.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A031346, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401191.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372716.P7678161917217464801

`A372723(C(2*n+1, 2)+n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372716.P7678161917217464801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372723 (Nat.choose (2 * n + 1) 2 + n)

end

end A372716.P7678161917217464801

noncomputable section

/-- A372716: a(n) = A372723(2*n, n).

Offset 0, canonical program `A372716.P7678161917217464801`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372723, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372716 (n : ℕ) : ℤ :=
  A372716.P7678161917217464801.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372723, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372716.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A398653.P14098701562736314378

`A398654(n)-A060584(n)`
-/

namespace A398653.P14098701562736314378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398654 n - A060584 n

end

end A398653.P14098701562736314378

noncomputable section

/-- A398653: Lower (1, 1/3) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

Offset 0, canonical program `A398653.P14098701562736314378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398653 (n : ℕ) : ℤ :=
  A398653.P14098701562736314378.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398844.P8131316336226091348

`A398850(n)+∑[n]`
-/

namespace A398844.P8131316336226091348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398850 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398844.P8131316336226091348

noncomputable section

/-- A398844: Lower (1/2, 1/3)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398844.P8131316336226091348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398844 (n : ℕ) : ℤ :=
  A398844.P8131316336226091348.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400890.P16191853028762974710

`comp[A400891(n+1)]`
-/

namespace A400890.P16191853028762974710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A400890.P16191853028762974710

noncomputable section

/-- A400890: Numbers k such that the 2-adic valuation of 3*k+2 is odd.

Offset 1, canonical program `A400890.P16191853028762974710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A400890 (n : ℕ) : ℤ :=
  (A400890.P16191853028762974710.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A400890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366308.P7657093434936862615

`2^A366246(n+1)`
-/

namespace A366308.P7657093434936862615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A366246 (n + 1) : ℤ)

end

end A366308.P7657093434936862615

noncomputable section

/-- A366308: The number of infinitary divisors of n that are terms of A366242.

Offset 1, canonical program `A366308.P7657093434936862615`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366246, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366308 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A366308.P7657093434936862615.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366246, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366308.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369720.P12052647085879140276

`A000203(A356193(n+1))`
-/

namespace A369720.P12052647085879140276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A356193 (n + 1)).toNat

end

end A369720.P12052647085879140276

noncomputable section

/-- A369720: The sum of divisors of the smallest cubefull number that is a multiple of n.

Offset 1, canonical program `A369720.P12052647085879140276`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356193, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369720 (n : ℕ) : ℤ :=
  A369720.P12052647085879140276.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356193, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369720.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374356.P5036985431895007089

`n-A374355(n)`
-/

namespace A374356.P5036985431895007089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A374355 n

end

end A374356.P5036985431895007089

noncomputable section

/-- A374356: a(n) is the greatest fibbinary number f <= n such that n - f is also a fibbinary number whose binary expansion has no common 1's with that of f (where fibbinary numbers correspond to A003714).

Offset 0, canonical program `A374356.P5036985431895007089`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374355, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374356 (n : ℕ) : ℤ :=
  A374356.P5036985431895007089.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374355, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374356.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374362.P13095679311797135054

`A005836(1+A289814(n))`
-/

namespace A374362.P13095679311797135054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (1 + A289814 n).toNat

end

end A374362.P13095679311797135054

noncomputable section

/-- A374362: a(n) is the least term t of A005836 such that n - t also belongs to A005836.

Offset 0, canonical program `A374362.P13095679311797135054`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289814, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374362 (n : ℕ) : ℤ :=
  A374362.P13095679311797135054.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289814, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374362.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379971.P13806193812172545761

`A323239(n)*A323239(n+2)`
-/

namespace A379971.P13806193812172545761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 n * A323239 (n + 2)

end

end A379971.P13806193812172545761

noncomputable section

/-- A379971: a(n) = 1 if n^2-1 is squarefree, otherwise 0.

Offset 1, canonical program `A379971.P13806193812172545761`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323239, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379971 (n : ℕ) : ℤ :=
  A379971.P13806193812172545761.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323239, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379971.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380454.P17620072490413482272

`1-(A359471(n+1)+A359472(n+1))`
-/

namespace A380454.P17620072490413482272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A359471 (n + 1) + A359472 (n + 1))

end

end A380454.P17620072490413482272

noncomputable section

/-- A380454: a(n) = 1 if the product of exponents in its prime factorization is greater than 3, otherwise 0.

Offset 1, canonical program `A380454.P17620072490413482272`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359471, A359472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380454 (n : ℕ) : ℤ :=
  A380454.P17620072490413482272.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359471, A359472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380454.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A381488.P698145488236481017

`filter[A000326(n+1), A294934(#)]`
-/

namespace A381488.P698145488236481017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A381488.P698145488236481017

noncomputable section

/-- A381488: Pentagonal numbers that are deficient.

Offset 1, canonical program `A381488.P698145488236481017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A381488 (n : ℕ) : ℤ :=
  A381488.P698145488236481017.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A381488.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381647.P11576463338051621201

`filter[A005448(n+1), A294934(#)]`
-/

namespace A381647.P11576463338051621201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A381647.P11576463338051621201

noncomputable section

/-- A381647: Centered triangular numbers that are deficient.

Offset 1, canonical program `A381647.P11576463338051621201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. -/
def A381647 (n : ℕ) : ℤ :=
  A381647.P11576463338051621201.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. -/
def A381647.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383025.P585027559849338286

`filter[A005891(n), A294934(#)]`
-/

namespace A383025.P585027559849338286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A383025.P585027559849338286

noncomputable section

/-- A383025: Centered pentagonal numbers that are deficient.

Offset 1, canonical program `A383025.P585027559849338286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A383025 (n : ℕ) : ℤ :=
  A383025.P585027559849338286.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A383025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385298.P1717443801627157010

`∪[A010785(n), A097256(n)]`
-/

namespace A385298.P1717443801627157010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097256 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385298.P1717443801627157010

noncomputable section

/-- A385298: Numbers whose digits all belong to the same residue class mod 9.

Offset 1, canonical program `A385298.P1717443801627157010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385298 (n : ℕ) : ℤ :=
  (A385298.P1717443801627157010.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396237.P5450698312826948600

`A169810(n)-A396236(n)`
-/

namespace A396237.P5450698312826948600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169810 n - A396236 n

end

end A396237.P5450698312826948600

noncomputable section

/-- A396237: a(n) = n AND NOT n^2.

Offset 0, canonical program `A396237.P5450698312826948600`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A396236, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396237 (n : ℕ) : ℤ :=
  A396237.P5450698312826948600.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A396236, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396237.provenance : SequenceMachineLib.Provenance := .conditional

