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
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C046
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
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A140514.P16181118793688981694

`A000931(n+4)-A010060(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140514.P16181118793688981694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 4) - A010060 n

end

end A140514.P16181118793688981694

noncomputable section

/-- A140514: a(n) = A000931(n+4) - A010060(n).

Offset 0, canonical program `A140514.P16181118793688981694`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000931(n+4)-A010060(n)` (program `A140514.P16181118793688981694`, by `A140514.P16181118793688981694.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A140514 (n : ℕ) : ℤ :=
  A140514.P16181118793688981694.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000931(n+4)-A010060(n)` (program `A140514.P16181118793688981694`, by `A140514.P16181118793688981694.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A140514.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A143466.P10513293575079486357

`A010060(row(n)+1)*A010060(col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143466.P10513293575079486357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (SequenceMachineLib.triRow n + 1) * A010060 (SequenceMachineLib.triCol n + 1)

end

end A143466.P10513293575079486357

noncomputable section

/-- A143466: Odious count triangle, T(n,k) = A010060(n) * A010060(k); 1 <= k <= n.

Offset 1, canonical program `A143466.P10513293575079486357`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A010060(row(n)+1)*A010060(col(n)+1)` (program `A143466.P10513293575079486357`, by `A143466.P10513293575079486357.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A143466 (n : ℕ) : ℤ :=
  A143466.P10513293575079486357.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A010060(row(n)+1)*A010060(col(n)+1)` (program `A143466.P10513293575079486357`, by `A143466.P10513293575079486357.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A143466.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A113166.P15203137074166211675

`∑{d}[n+1, A000010((n+1)/#)*A000045(#-1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A113166.P15203137074166211675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A000045 (d - 1)

end

end A113166.P15203137074166211675

noncomputable section

/-- A113166: a(n) = Sum_{d|n} A000010(n/d) * A000045(d-1).

Offset 1, canonical program `A113166.P15203137074166211675`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, A000010((n+1)/#)*A000045(#-1)]` (program `A113166.P15203137074166211675`, by `A113166.P15203137074166211675.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A113166 (n : ℕ) : ℤ :=
  A113166.P15203137074166211675.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, A000010((n+1)/#)*A000045(#-1)]` (program `A113166.P15203137074166211675`, by `A113166.P15203137074166211675.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A113166.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A113793.P17835450932075285636

`A000010(row(n)+1-(col(n)+1)+1)*A000010(col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A113793.P17835450932075285636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) + 1).toNat * A000010 (SequenceMachineLib.triCol n + 1)

end

end A113793.P17835450932075285636

noncomputable section

/-- A113793: Triangle read by rows: T(n,m) = phi(n - m + 1) * phi(m), n >= 1, m >= 1.

Offset 1, canonical program `A113793.P17835450932075285636`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(row(n)+1-(col(n)+1)+1)*A000010(col(n)+1)` (program `A113793.P17835450932075285636`, by `A113793.P17835450932075285636.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A113793 (n : ℕ) : ℤ :=
  A113793.P17835450932075285636.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(row(n)+1-(col(n)+1)+1)*A000010(col(n)+1)` (program `A113793.P17835450932075285636`, by `A113793.P17835450932075285636.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A113793.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A117295.P10773175204365160888

`A000010(n+1)*(n+1-A000010(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A117295.P10773175204365160888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * ((n + 1 : ℤ) - A000010 (n + 1))

end

end A117295.P10773175204365160888

noncomputable section

/-- A117295: a(n) = phi(n)*(n - phi(n)).

Offset 1, canonical program `A117295.P10773175204365160888`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)*(n+1-A000010(n+1))` (program `A117295.P10773175204365160888`, by `A117295.P10773175204365160888.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A117295 (n : ℕ) : ℤ :=
  A117295.P10773175204365160888.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)*(n+1-A000010(n+1))` (program `A117295.P10773175204365160888`, by `A117295.P10773175204365160888.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A117295.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A121048.P10222907602682812102

`n+1+A000010(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A121048.P10222907602682812102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A000010 (n + 1)

end

end A121048.P10222907602682812102

noncomputable section

/-- A121048: a(n) = n + phi(n), where phi is the Euler totient function.

Offset 1, canonical program `A121048.P10222907602682812102`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+A000010(n+1)` (program `A121048.P10222907602682812102`, by `A121048.P10222907602682812102.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A121048 (n : ℕ) : ℤ :=
  A121048.P10222907602682812102.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+A000010(n+1)` (program `A121048.P10222907602682812102`, by `A121048.P10222907602682812102.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A121048.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A127473.P9698007400369304439

`A000010(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A127473.P9698007400369304439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) ^ 2

end

end A127473.P9698007400369304439

noncomputable section

/-- A127473: a(n) = phi(n)^2.

Offset 1, canonical program `A127473.P9698007400369304439`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)²` (program `A127473.P9698007400369304439`, by `A127473.P9698007400369304439.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A127473 (n : ℕ) : ℤ :=
  A127473.P9698007400369304439.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)²` (program `A127473.P9698007400369304439`, by `A127473.P9698007400369304439.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A127473.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A128309.P14442768980274460626

`2*A000069(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A128309.P14442768980274460626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000069 (n + 1)

end

end A128309.P14442768980274460626

noncomputable section

/-- A128309: a(n) = 2*A000069(n).

Offset 1, canonical program `A128309.P14442768980274460626`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000069(n+1)` (program `A128309.P14442768980274460626`, by `A128309.P14442768980274460626.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A128309 (n : ℕ) : ℤ :=
  A128309.P14442768980274460626.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000069(n+1)` (program `A128309.P14442768980274460626`, by `A128309.P14442768980274460626.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A128309.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A129335.P13851088518621729713

`A000010(A006882(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A129335.P13851088518621729713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A006882 (n + 1)).toNat

end

end A129335.P13851088518621729713

noncomputable section

/-- A129335: a(n) = phi(n!!) where phi is the Euler totient function. In other words, a(n) = A000010(A006882(n)).

Offset 1, canonical program `A129335.P13851088518621729713`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(A006882(n+1))` (program `A129335.P13851088518621729713`, by `A129335.P13851088518621729713.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A129335 (n : ℕ) : ℤ :=
  A129335.P13851088518621729713.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(A006882(n+1))` (program `A129335.P13851088518621729713`, by `A129335.P13851088518621729713.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A129335.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A130029.P2113349890182051241

`∑{d}[n+1, A000010((n+1)/#)*A000040(#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A130029.P2113349890182051241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A000040 d

end

end A130029.P2113349890182051241

noncomputable section

/-- A130029: a(n) = Sum_{d|n} phi(n/d) * prime(d).

Offset 1, canonical program `A130029.P2113349890182051241`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, A000010((n+1)/#)*A000040(#)]` (program `A130029.P2113349890182051241`, by `A130029.P2113349890182051241.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A130029 (n : ℕ) : ℤ :=
  A130029.P2113349890182051241.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, A000010((n+1)/#)*A000040(#)]` (program `A130029.P2113349890182051241`, by `A130029.P2113349890182051241.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A130029.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A132857.P221054597374004760

`A000010(n+a(n-1))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A132857.P221054597374004760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000010 ((n : ℤ) + a (n - 1)).toNat

end

end A132857.P221054597374004760

noncomputable section

/-- A132857: a(0)=1. a(n) = phi(n+a(n-1)), for n>=1, where phi(m) is the number of positive integers which are <= m and are coprime to m.

Offset 0, canonical program `A132857.P221054597374004760`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+a(n-1))` (program `A132857.P221054597374004760`, by `A132857.P221054597374004760.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A132857 (n : ℕ) : ℤ :=
  A132857.P221054597374004760.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+a(n-1))` (program `A132857.P221054597374004760`, by `A132857.P221054597374004760.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A132857.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A142399.P8157399368544041410

`∩[A107003(n+1), A127589(n+1)]`
-/

namespace A142399.P8157399368544041410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142399.P8157399368544041410

noncomputable section

/-- A142399: Primes congruent to 5 mod 48.

Offset 1, canonical program `A142399.P8157399368544041410`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142399.anchor (n : ℕ) (hn : 1 ≤ n) : A142399 n = (Nat.nth (fun p => p.Prime ∧ p % 48 ∈ ({5} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A142.A142399`. -/
def A142399 (n : ℕ) : ℤ :=
  (A142399.P8157399368544041410.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142399.anchor (n : ℕ) (hn : 1 ≤ n) : A142399 n = (Nat.nth (fun p => p.Prime ∧ p % 48 ∈ ({5} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A142.A142399`. -/
def A142399.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A160619.P14552967700962766486

`∑{d}[n, A000010(n/#)*2^(#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160619.P14552967700962766486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n : ℚ) / (d : ℚ))).toNat * (2 ^ (d + 1) : ℤ)

end

end A160619.P14552967700962766486

noncomputable section

/-- A160619: a(n) = Sum_{d|n} phi(n/d)*2^(d+1), with a(0) = 0.

Offset 0, canonical program `A160619.P14552967700962766486`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n, A000010(n/#)*2^(#+1)]` (program `A160619.P14552967700962766486`, by `A160619.P14552967700962766486.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A160619 (n : ℕ) : ℤ :=
  A160619.P14552967700962766486.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n, A000010(n/#)*2^(#+1)]` (program `A160619.P14552967700962766486`, by `A160619.P14552967700962766486.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A160619.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A160620.P17395813729880321225

`∑{d}[n, A000010(n/#)²*2^#]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160620.P17395813729880321225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n : ℚ) / (d : ℚ))).toNat ^ 2 * (2 ^ d : ℤ)

end

end A160620.P17395813729880321225

noncomputable section

/-- A160620: a(n) = Sum_{d|n} phi(n/d)^2*2^d.

Offset 0, canonical program `A160620.P17395813729880321225`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n, A000010(n/#)²*2^#]` (program `A160620.P17395813729880321225`, by `A160620.P17395813729880321225.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A160620 (n : ℕ) : ℤ :=
  A160620.P17395813729880321225.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n, A000010(n/#)²*2^#]` (program `A160620.P17395813729880321225`, by `A160620.P17395813729880321225.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A160620.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A161217.P10538436632505663264

`∑{d}[n, A000010(n/#)²*2^(#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161217.P10538436632505663264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n : ℚ) / (d : ℚ))).toNat ^ 2 * (2 ^ (d + 1) : ℤ)

end

end A161217.P10538436632505663264

noncomputable section

/-- A161217: a(n) = Sum_{d|n} phi(n/d)^2*2^(d+1).

Offset 0, canonical program `A161217.P10538436632505663264`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n, A000010(n/#)²*2^(#+1)]` (program `A161217.P10538436632505663264`, by `A161217.P10538436632505663264.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A161217 (n : ℕ) : ℤ :=
  A161217.P10538436632505663264.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n, A000010(n/#)²*2^(#+1)]` (program `A161217.P10538436632505663264`, by `A161217.P10538436632505663264.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A161217.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A106400.P11201390576172776043

`1-2*A010060(n)`
-/

namespace A106400.P11201390576172776043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A010060 n

end

end A106400.P11201390576172776043

noncomputable section

/-- A106400: Thue-Morse sequence: let A_k denote the first 2^k terms; then A_0 = 1 and for k >= 0, A_{k+1} = A_k B_k, where B_k is obtained from A_k by interchanging 1's and -1's.

Offset 0, canonical program `A106400.P11201390576172776043`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106400 (n : ℕ) : ℤ :=
  A106400.P11201390576172776043.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106400.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A106830.P3377270276742315136

`A024451(A000720(n+1))`
-/

namespace A106830.P3377270276742315136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024451 (A000720 (n + 1)).toNat

end

end A106830.P3377270276742315136

noncomputable section

/-- A106830: Numerator of Sum_{ primes p <= n} 1/p.

Offset 1, canonical program `A106830.P3377270276742315136`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106830 (n : ℕ) : ℤ :=
  A106830.P3377270276742315136.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106830.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A107252.P9629950069383118717

`A107251(n)/A000108(n)`
-/

namespace A107252.P9629950069383118717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107251 n : ℚ) / (A000108 n : ℚ)

end

end A107252.P9629950069383118717

noncomputable section

/-- A107252: a(n) = Product_{k=0..n-1} (n+k)!/(k+1)!.

Offset 0, canonical program `A107252.P9629950069383118717`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107252 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A107252.P9629950069383118717.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107252.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A107647.P4071914148309250893

`A000010(A000073(n+2))`
-/

namespace A107647.P4071914148309250893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000073 (n + 2)).toNat

end

end A107647.P4071914148309250893

noncomputable section

/-- A107647: Euler's totient function applied to tribonacci numbers.

Offset 2, canonical program `A107647.P4071914148309250893`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107647 (n : ℕ) : ℤ :=
  A107647.P4071914148309250893.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107647.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A108804.P5937008154897415153

`∑{#}[n, A010060(#)*A010060(n-#)]`
-/

namespace A108804.P5937008154897415153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A010060 k * A010060 (n - k)

end

end A108804.P5937008154897415153

noncomputable section

/-- A108804: Self-convolution of A010060 (Thue-Morse sequence).

Offset 0, canonical program `A108804.P5937008154897415153`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A108804 (n : ℕ) : ℤ :=
  A108804.P5937008154897415153.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A108804.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A109606.P2415810041766612210

`A000010(n+1)-1`
-/

namespace A109606.P2415810041766612210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - 1

end

end A109606.P2415810041766612210

noncomputable section

/-- A109606: Number of numbers k with 1 < k < n which are relatively prime to n.

Offset 1, canonical program `A109606.P2415810041766612210`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A109606 (n : ℕ) : ℤ :=
  A109606.P2415810041766612210.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A109606.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A111700.P7237590889447094118

`A000010(A000040(n+2)-A000040(n+1))-1`
-/

namespace A111700.P7237590889447094118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000040 (n + 2) - A000040 (n + 1)).toNat - 1

end

end A111700.P7237590889447094118

noncomputable section

/-- A111700: Number of integers between p(n) and p(n+1) which are coprime to (p(n+1)-p(n)), where p(n) is the n-th prime.

Offset 1, canonical program `A111700.P7237590889447094118`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111700 (n : ℕ) : ℤ :=
  A111700.P7237590889447094118.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111700.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A112485.P3061397793116521121

`(n+9)*a(n-1)+(n+1)*A112008(n)` with `a(0)=1`
-/

namespace A112485.P3061397793116521121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 9 : ℤ) * a (n - 1) + (n + 1 : ℤ) * A112008 n

end

end A112485.P3061397793116521121

noncomputable section

/-- A112485: Fifth diagonal of second-order Eulerian triangle A008517. Fifth column (m=4) of triangle A112007.

Offset 0, canonical program `A112485.P3061397793116521121`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112485 (n : ℕ) : ℤ :=
  A112485.P3061397793116521121.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112485.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A112490.P9190031474120083192

`(n+8)*a(n-1)+(n+7)*A112489(n+3)` with `a(0)=105`
-/

namespace A112490.P9190031474120083192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [105] fun n a =>
  (n + 8 : ℤ) * a (n - 1) + (n + 7 : ℤ) * A112489 (n + 3)

end

end A112490.P9190031474120083192

noncomputable section

/-- A112490: Fifth column of triangle A112486 used for e.g.f.s of |Stirling1|=|A008275| diagonals.

Offset 4, canonical program `A112490.P9190031474120083192`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112490 (n : ℕ) : ℤ :=
  A112490.P9190031474120083192.a (n - 4)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112490.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A113636.P387307132510664875

`A014684(n+1)+1`
-/

namespace A113636.P387307132510664875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (n + 1) + 1

end

end A113636.P387307132510664875

noncomputable section

/-- A113636: In the sequence of positive integers add 1 to each nonprime number.

Offset 1, canonical program `A113636.P387307132510664875`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113636 (n : ℕ) : ℤ :=
  A113636.P387307132510664875.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113636.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A114810.P14941330468482581055

`A000010(A007947(n+1))*A000010((n+1)/A007947(n+1))`
-/

namespace A114810.P14941330468482581055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A007947 (n + 1)).toNat * A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A114810.P14941330468482581055

noncomputable section

/-- A114810: Number of complex, weakly primitive Dirichlet characters modulo n.

Offset 1, canonical program `A114810.P14941330468482581055`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A114810 (n : ℕ) : ℤ :=
  A114810.P14941330468482581055.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A114810.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A115716.P15483547809295924347

`A007583(A091090(n+1)-1)`
-/

namespace A115716.P15483547809295924347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007583 (A091090 (n + 1) - 1).toNat

end

end A115716.P15483547809295924347

noncomputable section

/-- A115716: A divide-and-conquer sequence.

Offset 0, canonical program `A115716.P15483547809295924347`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115716 (n : ℕ) : ℤ :=
  A115716.P15483547809295924347.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115716.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117291.P15351430795598648670

`A000010(n+1)^(n+1-A000010(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A117291.P15351430795598648670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) ^ ((n + 1 : ℤ) - A000010 (n + 1) : ℤ)

end

end A117291.P15351430795598648670

noncomputable section

/-- A117291: a(n) = phi(n)^(n-phi(n)).

Offset 1, canonical program `A117291.P15351430795598648670`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117291 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A117291.P15351430795598648670.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117291.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117292.P16692571854729254263

`(n+1-A000010(n+1))^A000010(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A117292.P16692571854729254263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A000010 (n + 1) : ℚ) ^ (A000010 (n + 1) : ℤ)

end

end A117292.P16692571854729254263

noncomputable section

/-- A117292: a(n) = (n-phi(n))^phi(n).

Offset 1, canonical program `A117292.P16692571854729254263`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117292 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A117292.P16692571854729254263.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117292.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117494.P1126005537575162480

`∑{d}[n+1, A000010((n+1)/#)*A010051(#)]`
-/

namespace A117494.P1126005537575162480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A010051 d

end

end A117494.P1126005537575162480

noncomputable section

/-- A117494: a(n) is the number of m's, 1 <= m <= n, where gcd(m,n) is prime.

Offset 1, canonical program `A117494.P1126005537575162480`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117494 (n : ℕ) : ℤ :=
  A117494.P1126005537575162480.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117494.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117683.P522862369474609631

`A049614(row(n)+1)/(A049614(col(n)+1)*A049614(row(n)+1-(col(n)+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A117683.P522862369474609631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049614 (SequenceMachineLib.triRow n + 1) : ℚ) / (A049614 (SequenceMachineLib.triCol n + 1) * A049614 (SequenceMachineLib.triRow n + 1 - (SequenceMachineLib.triCol n + 1)) : ℚ)

end

end A117683.P522862369474609631

noncomputable section

/-- A117683: Triangle T(n,k) = A049614(n)/(A049614(k)*A049614(n-k)), read by rows.

Offset 1, canonical program `A117683.P522862369474609631`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117683 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A117683.P522862369474609631.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117683.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117733.P16271341125714253271

`A034386(n)+A049614(n)`
-/

namespace A117733.P16271341125714253271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 n + A049614 n

end

end A117733.P16271341125714253271

noncomputable section

/-- A117733: Sum of the n-th primorial and the n-th compositorial number.

Offset 0, canonical program `A117733.P16271341125714253271`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117733 (n : ℕ) : ℤ :=
  A117733.P16271341125714253271.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117733.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117736.P2900786321532737672

`n!-A049614(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A117736.P2900786321532737672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A049614 n

end

end A117736.P2900786321532737672

noncomputable section

/-- A117736: factorial(n) - A049614(n).

Offset 0, canonical program `A117736.P2900786321532737672`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117736 (n : ℕ) : ℤ :=
  A117736.P2900786321532737672.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117736.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117878.P3731936021544780756

`A034386(row(n)+1)*A049614(col(n)+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A117878.P3731936021544780756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (SequenceMachineLib.triRow n + 1) * A049614 (SequenceMachineLib.triCol n + 1) - 1

end

end A117878.P3731936021544780756

noncomputable section

/-- A117878: Triangle T(n,k) = A034386(n)*A049614(k) - 1 read by rows.

Offset 1, canonical program `A117878.P3731936021544780756`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117878 (n : ℕ) : ℤ :=
  A117878.P3731936021544780756.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117878.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A119779.P6482519072126859417

`A119773(2*n)`
-/

namespace A119779.P6482519072126859417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119773 (2 * n)

end

end A119779.P6482519072126859417

noncomputable section

/-- A119779: 64^n-th prime.

Offset 0, canonical program `A119779.P6482519072126859417`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119779 (n : ℕ) : ℤ :=
  A119779.P6482519072126859417.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119779.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A120389.P8073201827714242340

`A065855(A000040(n+1)²)`
-/

namespace A120389.P8073201827714242340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (A000040 (n + 1) ^ 2).toNat

end

end A120389.P8073201827714242340

noncomputable section

/-- A120389: a(n) is such that the a(n)-th composite number is (n-th prime)^2.

Offset 1, canonical program `A120389.P8073201827714242340`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120389 (n : ℕ) : ℤ :=
  A120389.P8073201827714242340.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120389.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A120486.P8098669589209827347

`∑{#}[floor(sqrt(n+1))-1, A000010(#+1)*floor((n+1)/(#+1)²)]`
-/

namespace A120486.P8098669589209827347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt (n + 1) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A000010 (k + 1) * ⌊(n + 1 : ℚ) / ((k + 1) ^ 2 : ℚ)⌋

end

end A120486.P8098669589209827347

noncomputable section

/-- A120486: Partial sums of A000188.

Offset 1, canonical program `A120486.P8098669589209827347`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120486 (n : ℕ) : ℤ :=
  A120486.P8098669589209827347.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120486.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A122255.P582623873584825635

`A065333(A000010(n+1))`
-/

namespace A122255.P582623873584825635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065333 (A000010 (n + 1)).toNat

end

end A122255.P582623873584825635

noncomputable section

/-- A122255: Characteristic function of numbers with 3-smooth Euler's totient (A000010).

Offset 1, canonical program `A122255.P582623873584825635`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122255 (n : ℕ) : ℤ :=
  A122255.P582623873584825635.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122255.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A124511.P14187117655083472375

`A124508(A124508(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A124511.P14187117655083472375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124508 (A124508 (n + 1)).toNat

end

end A124511.P14187117655083472375

noncomputable section

/-- A124511: a(n) = A124508(A124508(n)).

Offset 1, canonical program `A124511.P14187117655083472375`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124511 (n : ℕ) : ℤ :=
  A124511.P14187117655083472375.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124511.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A124512.P16182913871716679802

`A124508(A124508(A124508(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A124512.P16182913871716679802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124508 (A124508 (A124508 (n + 1)).toNat).toNat

end

end A124512.P16182913871716679802

noncomputable section

/-- A124512: a(n) = A124508(A124508(A124508(n))).

Offset 1, canonical program `A124512.P16182913871716679802`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124512 (n : ℕ) : ℤ :=
  A124512.P16182913871716679802.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124512.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A127236.P8768236047814750613

`A010060(C(row(n), col(n)))`
-/

namespace A127236.P8768236047814750613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n))

end

end A127236.P8768236047814750613

noncomputable section

/-- A127236: A Thue-Morse binomial triangle.

Offset 0, canonical program `A127236.P8768236047814750613`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127236 (n : ℕ) : ℤ :=
  A127236.P8768236047814750613.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127236.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A127238.P11195448615758885900

`∑{#}[floor(n/2), A010060(C(n-#, #))]`
-/

namespace A127238.P11195448615758885900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A010060 (Nat.choose ((n : ℤ) - (k : ℤ)).toNat k)

end

end A127238.P11195448615758885900

noncomputable section

/-- A127238: Diagonal sums of Thue-Morse binomial triangle A127236.

Offset 0, canonical program `A127238.P11195448615758885900`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127238 (n : ℕ) : ℤ :=
  A127238.P11195448615758885900.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127238.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A127241.P15014854706548169078

`A010060(C(col(n), row(n)-col(n)))`
-/

namespace A127241.P15014854706548169078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Nat.choose (SequenceMachineLib.triCol n) ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat)

end

end A127241.P15014854706548169078

noncomputable section

/-- A127241: A Thue-Morse triangle.

Offset 0, canonical program `A127241.P15014854706548169078`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127241 (n : ℕ) : ℤ :=
  A127241.P15014854706548169078.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127241.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A127242.P3388820926343585961

`∑{#}[floor(n/2), A010060(C(#, n-2*#))]`
-/

namespace A127242.P3388820926343585961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A010060 (Nat.choose k ((n : ℤ) - (2 * k : ℤ)).toNat)

end

end A127242.P3388820926343585961

noncomputable section

/-- A127242: Diagonal sums of Thue-Morse triangle A127241.

Offset 0, canonical program `A127242.P3388820926343585961`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127242 (n : ℕ) : ℤ :=
  A127242.P3388820926343585961.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127242.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A129195.P4035285138527206210

`2^A092391(n)`
-/

namespace A129195.P4035285138527206210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A092391 n : ℤ)

end

end A129195.P4035285138527206210

noncomputable section

/-- A129195: a(n) = denominator(n!/4^n).

Offset 0, canonical program `A129195.P4035285138527206210`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129195 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A129195.P4035285138527206210.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129195.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A130293.P13317240730753702892

`1/(n+1)²*∑{d}[n+1, #*A000010(#)*(n+1)^((n+1)/#)]`
-/

namespace A130293.P13317240730753702892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 / ((n + 1) ^ 2 : ℚ) : ℝ) * (∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) * A000010 d : ℝ) * (n + 1 : ℝ) ^ ((n + 1 : ℚ) / (d : ℚ) : ℝ))

end

end A130293.P13317240730753702892

noncomputable section

/-- A130293: Number of necklaces of n beads with up to n colors, with cyclic permutation {1,..,n} of the colors taken to be equivalent.

Offset 1, canonical program `A130293.P13317240730753702892`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130293 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A130293.P13317240730753702892.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130293.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A131045.P15840588022099346628

`∑{#}[n, C(n, #)*A000010(#+1)]`
-/

namespace A131045.P15840588022099346628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A000010 (k + 1)

end

end A131045.P15840588022099346628

noncomputable section

/-- A131045: Binomial transform of Euler's totient function phi(n+1).

Offset 0, canonical program `A131045.P15840588022099346628`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131045 (n : ℕ) : ℤ :=
  A131045.P15840588022099346628.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131045.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A131637.P6385018303868815467

`A000010(A000110(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A131637.P6385018303868815467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000110 n).toNat

end

end A131637.P6385018303868815467

noncomputable section

/-- A131637: a(n) = Phi(Bell(n)).

Offset 0, canonical program `A131637.P6385018303868815467`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131637 (n : ℕ) : ℤ :=
  A131637.P6385018303868815467.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131637.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A131766.P8582196171941111563

`A131668(n)-(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A131766.P8582196171941111563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131668 n - (2 * n + 1 : ℤ)

end

end A131766.P8582196171941111563

noncomputable section

/-- A131766: a(n) = A131668(n) - (2*n+1).

Offset 0, canonical program `A131766.P8582196171941111563`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131766 (n : ℕ) : ℤ :=
  A131766.P8582196171941111563.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131766.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A132680.P17101137498062770525

`A000120(A000069(n+1))`
-/

namespace A132680.P17101137498062770525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000069 (n + 1)).toNat

end

end A132680.P17101137498062770525

noncomputable section

/-- A132680: Number of ones in binary representation of odious numbers.

Offset 1, canonical program `A132680.P17101137498062770525`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132680 (n : ℕ) : ℤ :=
  A132680.P17101137498062770525.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132680.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A134079.P11608522256276491607

`(-1)^n*A033686(n)`
-/

namespace A134079.P11608522256276491607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A033686 n

end

end A134079.P11608522256276491607

noncomputable section

/-- A134079: Expansion of q^(-2/3) * c(-q)^2 / 9 in powers of q where c(q) is a cubic AGM theta function.

Offset 0, canonical program `A134079.P11608522256276491607`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134079 (n : ℕ) : ℤ :=
  A134079.P11608522256276491607.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134079.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A134635.P8371608749489723551

`2*A000108(n)-A126966(n)`
-/

namespace A134635.P8371608749489723551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000108 n - A126966 n

end

end A134635.P8371608749489723551

noncomputable section

/-- A134635: Row sums of triangle A134634.

Offset 0, canonical program `A134635.P8371608749489723551`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134635 (n : ℕ) : ℤ :=
  A134635.P8371608749489723551.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134635.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A134660.P16903168388043380188

`2^A036555(n)`
-/

namespace A134660.P16903168388043380188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A036555 n : ℤ)

end

end A134660.P16903168388043380188

noncomputable section

/-- A134660: Number of odd coefficients in (1 + x + x^2 + x^3)^n.

Offset 0, canonical program `A134660.P16903168388043380188`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134660 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A134660.P16903168388043380188.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134660.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135342.P3343036869715606017

`2*a(n-1)-a(n-2)+A000010(n)` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A135342.P3343036869715606017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  2 * a (n - 1) - a (n - 2) + A000010 n

end

end A135342.P3343036869715606017

noncomputable section

/-- A135342: Number of distinct means of nonempty subsets of {1,...,n}.

Offset 1, canonical program `A135342.P3343036869715606017`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135342 (n : ℕ) : ℤ :=
  A135342.P3343036869715606017.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135342.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135517.P346222672956229891

`2^(A091090(n)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135517.P346222672956229891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A091090 n - 1 : ℤ)

end

end A135517.P346222672956229891

noncomputable section

/-- A135517: a(n) = 2^(A091090(n)-1).

Offset 0, canonical program `A135517.P346222672956229891`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135517 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A135517.P346222672956229891.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135517.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135521.P8154613990211312420

`2^A091090(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135521.P8154613990211312420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A091090 (n + 1) : ℤ) - 1

end

end A135521.P8154613990211312420

noncomputable section

/-- A135521: a(n) = 2^(A091090(n)) - 1.

Offset 1, canonical program `A135521.P8154613990211312420`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135521 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A135521.P8154613990211312420.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135521.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135620.P7501931609771001337

`A061286(n+1)/2`
-/

namespace A135620.P7501931609771001337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061286 (n + 1) : ℚ) / 2

end

end A135620.P7501931609771001337

noncomputable section

/-- A135620: a(n) = 2^(prime(n) - 2).

Offset 1, canonical program `A135620.P7501931609771001337`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135620 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A135620.P7501931609771001337.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135620.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135630.P7109827776379492340

`A061286(n+1)/2-1`
-/

namespace A135630.P7109827776379492340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061286 (n + 1) : ℚ) / 2 - 1

end

end A135630.P7109827776379492340

noncomputable section

/-- A135630: 2^(prime(n) - 2) - 1.

Offset 1, canonical program `A135630.P7109827776379492340`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135630 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A135630.P7109827776379492340.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135630.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A136004.P9778736345928845388

`A005811(n)+4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A136004.P9778736345928845388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n + 4

end

end A136004.P9778736345928845388

noncomputable section

/-- A136004: a(n) = A005811(n) + 4.

Offset 0, canonical program `A136004.P9778736345928845388`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136004 (n : ℕ) : ℤ :=
  A136004.P9778736345928845388.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136004.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A137781.P3937855502889474483

`A137389(n+1)/4`
-/

namespace A137781.P3937855502889474483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137389 (n + 1) : ℚ) / 4

end

end A137781.P3937855502889474483

noncomputable section

/-- A137781: a(n) = (2^prime(n) + 2^prime(n+1)) / 4.

Offset 1, canonical program `A137781.P3937855502889474483`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137781 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A137781.P3937855502889474483.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137781.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A137831.P7284090837143405087

`(A001248(n+1)-A137807(n+1))/20`
-/

namespace A137831.P7284090837143405087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001248 (n + 1) - A137807 (n + 1) : ℚ) / 20

end

end A137831.P7284090837143405087

noncomputable section

/-- A137831: a(n) = (prime(n)^2 minus its last digit)/20.

Offset 1, canonical program `A137831.P7284090837143405087`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137831 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A137831.P7284090837143405087.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137831.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138402.P2862729920963490813

`A036689(n+1)*A036690(n+1)`
-/

namespace A138402.P2862729920963490813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 1) * A036690 (n + 1)

end

end A138402.P2862729920963490813

noncomputable section

/-- A138402: a(n) = (n-th prime)^4-(n-th prime)^2.

Offset 1, canonical program `A138402.P2862729920963490813`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138402 (n : ℕ) : ℤ :=
  A138402.P2862729920963490813.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138402.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138423.P15059397808005163054

`A138403(n+1)/2`
-/

namespace A138423.P15059397808005163054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138403 (n + 1) : ℚ) / 2

end

end A138423.P15059397808005163054

noncomputable section

/-- A138423: a(n) = (prime(n)^4 - prime(n)^3)/2.

Offset 1, canonical program `A138423.P15059397808005163054`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138423 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138423.P15059397808005163054.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138423.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138430.P16083689388291153445

`A138426(n+1)/6`
-/

namespace A138430.P16083689388291153445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138426 (n + 1) : ℚ) / 6

end

end A138430.P16083689388291153445

noncomputable section

/-- A138430: a(n) = (prime(n)^5 - prime(n))/30.

Offset 1, canonical program `A138430.P16083689388291153445`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138430 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138430.P16083689388291153445.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138430.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138438.P2811468712399639268

`A138437(n+1)/2`
-/

namespace A138438.P2811468712399639268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138437 (n + 1) : ℚ) / 2

end

end A138438.P2811468712399639268

noncomputable section

/-- A138438: a(n) = ((n-th prime)^5-(n-th prime)^3)/24.

Offset 1, canonical program `A138438.P2811468712399639268`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138438 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138438.P2811468712399639268.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138438.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138439.P6352298735939435582

`A138407(n+1)/2`
-/

namespace A138439.P6352298735939435582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138407 (n + 1) : ℚ) / 2

end

end A138439.P6352298735939435582

noncomputable section

/-- A138439: a(n) = (prime(n)^5 - prime(n)^4)/2.

Offset 1, canonical program `A138439.P6352298735939435582`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138439 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138439.P6352298735939435582.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138439.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138448.P10621642085581528040

`2*A138441(n+1)/15`
-/

namespace A138448.P10621642085581528040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A138441 (n + 1) : ℚ) / 15

end

end A138448.P10621642085581528040

noncomputable section

/-- A138448: a(n) = (prime(n)^6 - prime(n)^2)/15.

Offset 1, canonical program `A138448.P10621642085581528040`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138448 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138448.P10621642085581528040.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138448.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139104.P15577029041380592062

`A118255(A000040(n+1))`
-/

namespace A139104.P15577029041380592062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118255 (A000040 (n + 1)).toNat

end

end A139104.P15577029041380592062

noncomputable section

/-- A139104: Numbers whose binary representation shows the distribution of prime numbers up to the n-th prime, using "0" for primes and "1" for nonprime numbers.

Offset 1, canonical program `A139104.P15577029041380592062`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139104 (n : ℕ) : ℤ :=
  A139104.P15577029041380592062.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139104.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139239.P5695854646472699783

`A139238(n+1)/2`
-/

namespace A139239.P5695854646472699783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139238 (n + 1) : ℚ) / 2

end

end A139239.P5695854646472699783

noncomputable section

/-- A139239: First differences of Mersenne numbers A001348, divided by 2.

Offset 1, canonical program `A139239.P5695854646472699783`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139239 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A139239.P5695854646472699783.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139239.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139243.P1022064537807245001

`A139242(n+1)/2`
-/

namespace A139243.P1022064537807245001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139242 (n + 1) : ℚ) / 2

end

end A139243.P1022064537807245001

noncomputable section

/-- A139243: Second differences of Mersenne numbers A001348, divided by 4.

Offset 1, canonical program `A139243.P1022064537807245001`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139243 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A139243.P1022064537807245001.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139243.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139329.P7958588769808554264

`A000142(A023416(n))`
-/

namespace A139329.P7958588769808554264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A023416 n).toNat

end

end A139329.P7958588769808554264

noncomputable section

/-- A139329: a(n) = (factorial of the number of 0's in the binary expansion of n).

Offset 0, canonical program `A139329.P7958588769808554264`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139329 (n : ℕ) : ℤ :=
  A139329.P7958588769808554264.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139329.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A141146.P15287494868709121214

`A110711(n+1)/3`
-/

namespace A141146.P15287494868709121214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110711 (n + 1) : ℚ) / 3

end

end A141146.P15287494868709121214

noncomputable section

/-- A141146: Number of linear arrangements of n blue, n red and n green items such that first and last elements are blue but there are no adjacent items of the same color.

Offset 1, canonical program `A141146.P15287494868709121214`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141146 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A141146.P15287494868709121214.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141146.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A141148.P17109515243954563287

`∑{d}[n+1, A008683((n+1)/#)*A141147(#)/(n+1)]`
-/

namespace A141148.P17109515243954563287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A141147 d : ℚ) / (n + 1 : ℚ)

end

end A141148.P17109515243954563287

noncomputable section

/-- A141148: Number of aperiodic ternary necklaces with n beads of each color and no adjacent beads of the same color.

Offset 1, canonical program `A141148.P17109515243954563287`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141148 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A141148.P17109515243954563287.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141148.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143230.P10693598655759052356

`A000010(row(n)+1)*A000010(col(n)+1)`
-/

namespace A143230.P10693598655759052356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.triRow n + 1) * A000010 (SequenceMachineLib.triCol n + 1)

end

end A143230.P10693598655759052356

noncomputable section

/-- A143230: Triangle read by rows, A130207 * A000012 * A130207.

Offset 1, canonical program `A143230.P10693598655759052356`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143230 (n : ℕ) : ℤ :=
  A143230.P10693598655759052356.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143230.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143267.P11528676841371645237

`A000010(row(n)+1)*(col(n)+1)`
-/

namespace A143267.P11528676841371645237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.triRow n + 1) * (SequenceMachineLib.triCol n + 1 : ℤ)

end

end A143267.P11528676841371645237

noncomputable section

/-- A143267: Triangle read by rows, A130207 * A000012 * A127648.

Offset 1, canonical program `A143267.P11528676841371645237`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143267 (n : ℕ) : ℤ :=
  A143267.P11528676841371645237.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143267.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143268.P8461652784638430820

`(n+1)*(n+2)*A000010(n+1)/2`
-/

namespace A143268.P8461652784638430820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (n + 2) : ℤ) * A000010 (n + 1) : ℚ) / 2

end

end A143268.P8461652784638430820

noncomputable section

/-- A143268: a(n) = phi(n)*T(n), where phi(n) is Euler's totient function (A000010) and T(n) = n*(n+1)/2 is the n-th triangular number (A000217).

Offset 1, canonical program `A143268.P8461652784638430820`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143268 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A143268.P8461652784638430820.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143268.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143269.P16985420955505415739

`(row(n)+1)*A000010(col(n)+1)`
-/

namespace A143269.P16985420955505415739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n + 1 : ℤ) * A000010 (SequenceMachineLib.triCol n + 1)

end

end A143269.P16985420955505415739

noncomputable section

/-- A143269: Triangle read by rows, A127648 * A000012 * A130207, 1<=k<=n.

Offset 1, canonical program `A143269.P16985420955505415739`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143269 (n : ℕ) : ℤ :=
  A143269.P16985420955505415739.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143269.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144589.P2941130942787243636

`A000040(A144570(n+1))`
-/

namespace A144589.P2941130942787243636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A144570 (n + 1)).toNat

end

end A144589.P2941130942787243636

noncomputable section

/-- A144589: Prime(n-th "prime nonprime").

Offset 1, canonical program `A144589.P2941130942787243636`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144589 (n : ℕ) : ℤ :=
  A144589.P2941130942787243636.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144589.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A145388.P4550273155118403063

`∑{d}[n+1, A000010(#)*A034444(#)]`
-/

namespace A145388.P4550273155118403063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A034444 d

end

end A145388.P4550273155118403063

noncomputable section

/-- A145388: Sum of (k,n)_* for k=1,2,...,n, where (k,n)_* is the greatest divisor of k which is a unitary divisor of n.

Offset 1, canonical program `A145388.P4550273155118403063`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145388 (n : ℕ) : ℤ :=
  A145388.P4550273155118403063.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145388.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A145600.P14114066443938343505

`A135389(n)/(n+2)`
-/

namespace A145600.P14114066443938343505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135389 n : ℚ) / (n + 2 : ℚ)

end

end A145600.P14114066443938343505

noncomputable section

/-- A145600: a(n) is the number of walks from (0,0) to (0,1) that remain in the upper half-plane y >= 0 using (2*n - 1) unit steps either up (U), down (D), left (L) or right (R).

Offset 1, canonical program `A145600.P14114066443938343505`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145600 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A145600.P14114066443938343505.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145600.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A147610.P10893262607184918980

`3^A048881(n)`
-/

namespace A147610.P10893262607184918980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A048881 n : ℤ)

end

end A147610.P10893262607184918980

noncomputable section

/-- A147610: a(n) = 3^(wt(n-1)-1), where wt() = A000120().

Offset 2, canonical program `A147610.P10893262607184918980`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A147610 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A147610.P10893262607184918980.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A147610.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A147761.P3441028777115545332

`(n+1)*2^(n+1-A023416(n+1))`
-/

namespace A147761.P3441028777115545332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (2 : ℚ) ^ ((n + 1 : ℤ) - A023416 (n + 1) : ℤ)

end

end A147761.P3441028777115545332

noncomputable section

/-- A147761: a(n) is the smallest positive integer m with exactly n zeros in its binary representation and with n represented in binary as a substring of the binary representation of m.

Offset 1, canonical program `A147761.P3441028777115545332`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A147761 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A147761.P3441028777115545332.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A147761.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A151786.P9554746056082427030

`8^A048881(n)`
-/

namespace A151786.P9554746056082427030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ (A048881 n : ℤ)

end

end A151786.P9554746056082427030

noncomputable section

/-- A151786: a(n) = 8^(wt(n)-1) where wt(n) is the binary weight of n (A000120).

Offset 1, canonical program `A151786.P9554746056082427030`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A151786 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A151786.P9554746056082427030.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A151786.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A152527.P9049603254915990332

`A111071(n+2)/2`
-/

namespace A152527.P9049603254915990332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111071 (n + 2) : ℚ) / 2

end

end A152527.P9049603254915990332

noncomputable section

/-- A152527: a(n) = (p(n)*p(n+1)-p(n+2))/2, where p(n) is the n-th odd prime.

Offset 1, canonical program `A152527.P9049603254915990332`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152527 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A152527.P9049603254915990332.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152527.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A152958.P9172345050505295265

`A000010(A019554(n+1))*A000203(A000188(n+1))`
-/

namespace A152958.P9172345050505295265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A019554 (n + 1)).toNat * A000203 (A000188 (n + 1)).toNat

end

end A152958.P9172345050505295265

noncomputable section

/-- A152958: Alladi's third-order function phi_3(n).

Offset 1, canonical program `A152958.P9172345050505295265`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152958 (n : ℕ) : ℤ :=
  A152958.P9172345050505295265.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152958.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A154786.P5108193492397488421

`A005843(n+1)*A061357(n+1)`
-/

namespace A154786.P5108193492397488421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) * A061357 (n + 1)

end

end A154786.P5108193492397488421

noncomputable section

/-- A154786: Row sums of triangle in A154725.

Offset 1, canonical program `A154786.P5108193492397488421`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A154786 (n : ℕ) : ℤ :=
  A154786.P5108193492397488421.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A154786.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A154787.P11790990288187501969

`A061357(n+1)*(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A154787.P11790990288187501969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (n + 1) * (n + 1 : ℤ)

end

end A154787.P11790990288187501969

noncomputable section

/-- A154787: a(n) = A061357(n)*n = A154786(n)/2.

Offset 1, canonical program `A154787.P11790990288187501969`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A154787 (n : ℕ) : ℤ :=
  A154787.P11790990288187501969.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A154787.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A154804.P1698714868867127105

`A101264(n)+A061357(n+1)`
-/

namespace A154804.P1698714868867127105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n + A061357 (n + 1)

end

end A154804.P1698714868867127105

noncomputable section

/-- A154804: Number of ways to represent 2*n as the sum of two distinct primes (counting 1 as a prime).

Offset 1, canonical program `A154804.P1698714868867127105`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A154804 (n : ℕ) : ℤ :=
  A154804.P1698714868867127105.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A154804.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A156834.P7844969662654311144

`∑{d}[n+1, A000010(#)*C(#+(n+1)/#-2, #-1)]`
-/

namespace A156834.P7844969662654311144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * (Nat.choose (SequenceMachineLib.roundAway ((d : ℚ) + (n + 1 : ℚ) / (d : ℚ) - 2)).toNat ((d : ℤ) - 1).toNat : ℤ)

end

end A156834.P7844969662654311144

noncomputable section

/-- A156834: A156348 * A000010.

Offset 1, canonical program `A156834.P7844969662654311144`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156834 (n : ℕ) : ℤ :=
  A156834.P7844969662654311144.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156834.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A157793.P17006216374145682191

`∑{#}[n, A023416(#)*A000120(n-#)]`
-/

namespace A157793.P17006216374145682191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A023416 k * A000120 (n - k)

end

end A157793.P17006216374145682191

noncomputable section

/-- A157793: Convolution of numbers of binary zeros and ones.

Offset 0, canonical program `A157793.P17006216374145682191`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A157793 (n : ℕ) : ℤ :=
  A157793.P17006216374145682191.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A157793.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A159481.P7251533249853496071

`n+1-A115384(n)`
-/

namespace A159481.P7251533249853496071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A115384 n

end

end A159481.P7251533249853496071

noncomputable section

/-- A159481: Number of evil numbers <= n, see A001969.

Offset 0, canonical program `A159481.P7251533249853496071`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A159481 (n : ℕ) : ℤ :=
  A159481.P7251533249853496071.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A159481.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A160889.P4866696132334601097

`A059376(n+1)/A000010(n+1)`
-/

namespace A160889.P4866696132334601097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059376 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A160889.P4866696132334601097

noncomputable section

/-- A160889: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 4.

Offset 1, canonical program `A160889.P4866696132334601097`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160889 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160889.P4866696132334601097.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160889.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A160891.P12024979058820824222

`A059377(n+1)/A000010(n+1)`
-/

namespace A160891.P12024979058820824222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059377 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A160891.P12024979058820824222

noncomputable section

/-- A160891: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 5.

Offset 1, canonical program `A160891.P12024979058820824222`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160891 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160891.P12024979058820824222.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160891.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A160893.P16935836706349167096

`A059378(n+1)/A000010(n+1)`
-/

namespace A160893.P16935836706349167096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059378 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A160893.P16935836706349167096

noncomputable section

/-- A160893: a(n) = Sum_{d|n} Möbius(n/d)*d^5/phi(n).

Offset 1, canonical program `A160893.P16935836706349167096`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160893 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160893.P16935836706349167096.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160893.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A160895.P2150078273942846583

`A069091(n+1)/A000010(n+1)`
-/

namespace A160895.P2150078273942846583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069091 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A160895.P2150078273942846583

noncomputable section

/-- A160895: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 7.

Offset 1, canonical program `A160895.P2150078273942846583`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160895 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160895.P2150078273942846583.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160895.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A160897.P16752404958731061009

`A069092(n+1)/A000010(n+1)`
-/

namespace A160897.P16752404958731061009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069092 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A160897.P16752404958731061009

noncomputable section

/-- A160897: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 8.

Offset 1, canonical program `A160897.P16752404958731061009`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160897 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160897.P16752404958731061009.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160897.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A160908.P5544833388897247786

`A069093(n+1)/A000010(n+1)`
-/

namespace A160908.P5544833388897247786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069093 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A160908.P5544833388897247786

noncomputable section

/-- A160908: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 9.

Offset 1, canonical program `A160908.P5544833388897247786`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160908 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160908.P5544833388897247786.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160908.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A160953.P8938375607108306963

`A069094(n+1)/A000010(n+1)`
-/

namespace A160953.P8938375607108306963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069094 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A160953.P8938375607108306963

noncomputable section

/-- A160953: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 10.

Offset 1, canonical program `A160953.P8938375607108306963`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160953 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160953.P8938375607108306963.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160953.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A160957.P14327442583971557876

`A069095(n+1)/A000010(n+1)`
-/

namespace A160957.P14327442583971557876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069095 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A160957.P14327442583971557876

noncomputable section

/-- A160957: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 11.

Offset 1, canonical program `A160957.P14327442583971557876`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160957 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160957.P14327442583971557876.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160957.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A107797.P5611527584116679134

`A000010(A134816(n+1))`
-/

namespace A107797.P5611527584116679134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A134816 (n + 1)).toNat

end

end A107797.P5611527584116679134

noncomputable section

/-- A107797: a(n) = phi(Padovan(n+4)).

Offset 1, canonical program `A107797.P5611527584116679134`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107797 (n : ℕ) : ℤ :=
  A107797.P5611527584116679134.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107797.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A108754.P16448062333260017930

`A007504(n+1)-A000290(n+1)`
-/

namespace A108754.P16448062333260017930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) - A000290 (n + 1)

end

end A108754.P16448062333260017930

noncomputable section

/-- A108754: Difference between partial sum of the first n primes and n^2.

Offset 1, canonical program `A108754.P16448062333260017930`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A108754 (n : ℕ) : ℤ :=
  A108754.P16448062333260017930.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A108754.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A109722.P10188503146465590831

`A007504(2*n)`
-/

namespace A109722.P10188503146465590831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (2 * n)

end

end A109722.P10188503146465590831

noncomputable section

/-- A109722: Sum of first 2n primes.

Offset 0, canonical program `A109722.P10188503146465590831`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A109722 (n : ℕ) : ℤ :=
  A109722.P10188503146465590831.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A109722.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A109723.P9563710613651025040

`A007504(2*n+1)`
-/

namespace A109723.P9563710613651025040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (2 * n + 1)

end

end A109723.P9563710613651025040

noncomputable section

/-- A109723: Sum of the first 2n+1 primes.

Offset 0, canonical program `A109723.P9563710613651025040`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A109723 (n : ℕ) : ℤ :=
  A109723.P9563710613651025040.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A109723.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A109725.P13056055185361958747

`A007504((n+1)²)-A007504(n²)`
-/

namespace A109725.P13056055185361958747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 ((n + 1) ^ 2) - A007504 (n ^ 2)

end

end A109725.P13056055185361958747

noncomputable section

/-- A109725: Divide primes in groups with 2n+1 elements and add together.

Offset 0, canonical program `A109725.P13056055185361958747`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A109725 (n : ℕ) : ℤ :=
  A109725.P13056055185361958747.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A109725.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A109726.P14787538916744219353

`A007504(n*(n+1))-A007504(n*(n-1))`
-/

namespace A109726.P14787538916744219353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n * (n + 1)) - A007504 ((n : ℤ) * ((n : ℤ) - 1)).toNat

end

end A109726.P14787538916744219353

noncomputable section

/-- A109726: Divide primes in groups with 2n elements and add together.

Offset 0, canonical program `A109726.P14787538916744219353`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A109726 (n : ℕ) : ℤ :=
  A109726.P14787538916744219353.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A109726.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A109940.P11561411005126974692

`(n+1)*A097326(n+1)`
-/

namespace A109940.P11561411005126974692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A097326 (n + 1)

end

end A109940.P11561411005126974692

noncomputable section

/-- A109940: Largest k-digit multiple of n where k is the number of digits in n.

Offset 1, canonical program `A109940.P11561411005126974692`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A109940 (n : ℕ) : ℤ :=
  A109940.P11561411005126974692.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A109940.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A110854.P2471624004047318377

`A155750(n+1)-A155067(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A110854.P2471624004047318377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155750 (n + 1) - A155067 (n + 1)

end

end A110854.P2471624004047318377

noncomputable section

/-- A110854: A155750(n)-A155067(n) = prime(2n+2)-prime(2n+1)-prime(2n)+prime(2n-1).

Offset 1, canonical program `A110854.P2471624004047318377`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110854 (n : ℕ) : ℤ :=
  A110854.P2471624004047318377.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110854.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A112039.P8022561423127945551

`(1+A007504(2*(n+1)))/2`
-/

namespace A112039.P8022561423127945551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A007504 (2 * (n + 1)) : ℚ) / 2

end

end A112039.P8022561423127945551

noncomputable section

/-- A112039: Let b(0)=1/2, b(n) = b(n-1) + Prime[n]/2; a(n)=b(2*n).

Offset 1, canonical program `A112039.P8022561423127945551`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112039 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A112039.P8022561423127945551.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112039.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A112997.P3713856926934514710

`A007504(n+1)-(n+1)*(n+2)/2`
-/

namespace A112997.P3713856926934514710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 1) : ℚ) - ((n + 1) * (n + 2) : ℚ) / 2

end

end A112997.P3713856926934514710

noncomputable section

/-- A112997: Sum of first n primes minus sum of their indices.

Offset 1, canonical program `A112997.P3713856926934514710`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112997 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A112997.P3713856926934514710.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112997.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A113633.P1089532878435800945

`A007504(A000351(n))`
-/

namespace A113633.P1089532878435800945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000351 n).toNat

end

end A113633.P1089532878435800945

noncomputable section

/-- A113633: Sum of the first 5^n primes.

Offset 0, canonical program `A113633.P1089532878435800945`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113633 (n : ℕ) : ℤ :=
  A113633.P1089532878435800945.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113633.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A113634.P14854653620757727462

`A007504(6^n)`
-/

namespace A113634.P14854653620757727462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (6 ^ n)

end

end A113634.P14854653620757727462

noncomputable section

/-- A113634: Sum of the first 6^n primes.

Offset 0, canonical program `A113634.P14854653620757727462`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113634 (n : ℕ) : ℤ :=
  A113634.P14854653620757727462.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113634.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A113635.P8258085166908120649

`A007504(A000420(n))`
-/

namespace A113635.P8258085166908120649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000420 n).toNat

end

end A113635.P8258085166908120649

noncomputable section

/-- A113635: Sum of the first 7^n primes.

Offset 0, canonical program `A113635.P8258085166908120649`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113635 (n : ℕ) : ℤ :=
  A113635.P8258085166908120649.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113635.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A115836.P4635970898570071194

`A007378(n+2)-2`
-/

namespace A115836.P4635970898570071194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007378 (n + 2) - 2

end

end A115836.P4635970898570071194

noncomputable section

/-- A115836: Self-describing sequence. The n-th integer of the sequence indicates how many integers of the sequence are strictly < 2n.

Offset 1, canonical program `A115836.P4635970898570071194`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115836 (n : ℕ) : ℤ :=
  A115836.P4635970898570071194.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115836.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A116367.P6155131737747558776

`(n+2)*A000040(n+2)+A007504(n+1)-2`
-/

namespace A116367.P6155131737747558776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A000040 (n + 2) + A007504 (n + 1) - 2

end

end A116367.P6155131737747558776

noncomputable section

/-- A116367: Sums of rows of the triangle in A116366.

Offset 1, canonical program `A116367.P6155131737747558776`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A116367 (n : ℕ) : ℤ :=
  A116367.P6155131737747558776.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A116367.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117400.P676579641845705266

`A007504(A000045(n))`
-/

namespace A117400.P676579641845705266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000045 n).toNat

end

end A117400.P676579641845705266

noncomputable section

/-- A117400: Sum of the first F(n) primes, where F(n) is the n-th Fibonacci number.

Offset 0, canonical program `A117400.P676579641845705266`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117400 (n : ℕ) : ℤ :=
  A117400.P676579641845705266.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117400.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117592.P1440909278058429630

`2^A081603(n)`
-/

namespace A117592.P1440909278058429630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A081603 n : ℤ)

end

end A117592.P1440909278058429630

noncomputable section

/-- A117592: a(n) = a(3n) = a(3n+1) = a(3n+2)/2 with a(0)=1.

Offset 0, canonical program `A117592.P1440909278058429630`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117592 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A117592.P1440909278058429630.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117592.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117942.P14324521327660345243

`2^A081603(n)*(-1)^(A062756(n)+A081603(n))`
-/

namespace A117942.P14324521327660345243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A081603 n : ℤ) * (-1 : ℚ) ^ (A062756 n + A081603 n : ℤ)

end

end A117942.P14324521327660345243

noncomputable section

/-- A117942: a(n) = a(3n) = -a(3n+1) = -a(3n+2)/2.

Offset 0, canonical program `A117942.P14324521327660345243`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117942 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A117942.P14324521327660345243.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117942.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A118319.P11823910758880960408

`n+1+A006519(n+1)-A000120(n+1)`
-/

namespace A118319.P11823910758880960408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A006519 (n + 1) - A000120 (n + 1)

end

end A118319.P11823910758880960408

noncomputable section

/-- A118319: a(n) = (highest power of 2 dividing n)th integer among those positive integers not occurring in {a(1),a(2),a(3),...,a(n-1)}.

Offset 1, canonical program `A118319.P11823910758880960408`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A118319 (n : ℕ) : ℤ :=
  A118319.P11823910758880960408.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A118319.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A118827.P5307784149571753104

`A165326(n+1)*A006519(n+1)`
-/

namespace A118827.P5307784149571753104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (n + 1) * A006519 (n + 1)

end

end A118827.P5307784149571753104

noncomputable section

/-- A118827: 2-adic continued fraction of zero, where a(n) = 1 if n is odd, otherwise -2*A006519(n/2).

Offset 1, canonical program `A118827.P5307784149571753104`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A118827 (n : ℕ) : ℤ :=
  A118827.P5307784149571753104.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A118827.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A119795.P14428827034511331712

`a(n-2)+A006519(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A119795.P14428827034511331712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + A006519 (a (n - 1)).toNat

end

end A119795.P14428827034511331712

noncomputable section

/-- A119795: a(1) = a(2) = 1. a(n) = a(n-2) + (largest power of 2 dividing a(n-1)).

Offset 1, canonical program `A119795.P14428827034511331712`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119795 (n : ℕ) : ℤ :=
  A119795.P14428827034511331712.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119795.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A119972.P9804530373177183797

`(n+1)*A034947(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A119972.P9804530373177183797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A034947 (n + 1)

end

end A119972.P9804530373177183797

noncomputable section

/-- A119972: a(n) = n * A034947(n).

Offset 1, canonical program `A119972.P9804530373177183797`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119972 (n : ℕ) : ℤ :=
  A119972.P9804530373177183797.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119972.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A123119.P18220163899370039324

`A055642(A007504(n+1))`
-/

namespace A123119.P18220163899370039324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A007504 (n + 1)).toNat

end

end A123119.P18220163899370039324

noncomputable section

/-- A123119: Number of digits in sum of first n primes (A007504).

Offset 1, canonical program `A123119.P18220163899370039324`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123119 (n : ℕ) : ℤ :=
  A123119.P18220163899370039324.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123119.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A123901.P3746745576386999541

`(n+3)/A124781(n)`
-/

namespace A123901.P3746745576386999541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (A124781 n : ℚ)

end

end A123901.P3746745576386999541

noncomputable section

/-- A123901: a(n) = (n+3)/gcd(d(n), d(n+2)) where d(n) = cancellation factor in reducing Sum_{k=0..n} 1/k! to lowest terms.

Offset 0, canonical program `A123901.P3746745576386999541`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123901 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A123901.P3746745576386999541.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123901.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A124779.P8020119968883470129

`A124780(n)/A124781(n)`
-/

namespace A124779.P8020119968883470129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124780 n : ℚ) / (A124781 n : ℚ)

end

end A124779.P8020119968883470129

noncomputable section

/-- A124779: a(n) = gcd(A(n), A(n+2))/gcd(d(n), d(n+2)) where A(n) = Sum_{k=0..n} n!/k! and d(n) = gcd(A(n), n!).

Offset 0, canonical program `A124779.P8020119968883470129`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124779 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A124779.P8020119968883470129.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124779.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A125130.P6259504309083317485

`A007504(A000217(n+1))`
-/

namespace A125130.P6259504309083317485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000217 (n + 1)).toNat

end

end A125130.P6259504309083317485

noncomputable section

/-- A125130: Successive sums of consecutive primes that form a triangular grid.

Offset 1, canonical program `A125130.P6259504309083317485`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A125130 (n : ℕ) : ℤ :=
  A125130.P6259504309083317485.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A125130.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A132995.P8538436233265635730

`gcd(A007504(n+1), A002110(n+1))`
-/

namespace A132995.P8538436233265635730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007504 (n + 1)) (A002110 (n + 1))

end

end A132995.P8538436233265635730

noncomputable section

/-- A132995: a(n) = gcd(Sum_{k=1..n} prime(k), Product{j=1..n} prime(j)).

Offset 1, canonical program `A132995.P8538436233265635730`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132995 (n : ℕ) : ℤ :=
  (A132995.P8538436233265635730.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132995.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133524.P7363267579138448459

`A133529(n+1)+A001248(n+4)`
-/

namespace A133524.P7363267579138448459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133529 (n + 1) + A001248 (n + 4)

end

end A133524.P7363267579138448459

noncomputable section

/-- A133524: Sum of squares of four consecutive primes.

Offset 1, canonical program `A133524.P7363267579138448459`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133524 (n : ℕ) : ℤ :=
  A133524.P7363267579138448459.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133524.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133530.P664862353928632633

`A133534(n+1)+A030078(n+3)`
-/

namespace A133530.P664862353928632633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133534 (n + 1) + A030078 (n + 3)

end

end A133530.P664862353928632633

noncomputable section

/-- A133530: Sum of third powers of three consecutive primes.

Offset 1, canonical program `A133530.P664862353928632633`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133530 (n : ℕ) : ℤ :=
  A133530.P664862353928632633.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133530.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133531.P4606246075334968653

`A133535(n+1)+A030514(n+3)`
-/

namespace A133531.P4606246075334968653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133535 (n + 1) + A030514 (n + 3)

end

end A133531.P4606246075334968653

noncomputable section

/-- A133531: Sum of fourth powers of three consecutive primes.

Offset 1, canonical program `A133531.P4606246075334968653`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133531 (n : ℕ) : ℤ :=
  A133531.P4606246075334968653.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133531.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133532.P11489854846316048726

`A133536(n+1)+A050997(n+3)`
-/

namespace A133532.P11489854846316048726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133536 (n + 1) + A050997 (n + 3)

end

end A133532.P11489854846316048726

noncomputable section

/-- A133532: Sum of fifth powers of three consecutive primes.

Offset 1, canonical program `A133532.P11489854846316048726`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133532 (n : ℕ) : ℤ :=
  A133532.P11489854846316048726.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133532.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133533.P6140301617002194535

`A133537(n+1)+A030516(n+3)`
-/

namespace A133533.P6140301617002194535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133537 (n + 1) + A030516 (n + 3)

end

end A133533.P6140301617002194535

noncomputable section

/-- A133533: Sum of sixth powers of three consecutive primes.

Offset 1, canonical program `A133533.P6140301617002194535`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133533 (n : ℕ) : ℤ :=
  A133533.P6140301617002194535.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133533.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135267.P10837298668863611185

`A007504(n+1)-A002378(n+1)`
-/

namespace A135267.P10837298668863611185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) - A002378 (n + 1)

end

end A135267.P10837298668863611185

noncomputable section

/-- A135267: Difference between partial sum of the first n primes and the first n even numbers greater than 0.

Offset 1, canonical program `A135267.P10837298668863611185`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135267 (n : ℕ) : ℤ :=
  A135267.P10837298668863611185.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135267.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135481.P9711204985532032738

`A006519(n+1)-1`
-/

namespace A135481.P9711204985532032738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) - 1

end

end A135481.P9711204985532032738

noncomputable section

/-- A135481: a(n) = 2^A007814(n+1) - 1.

Offset 0, canonical program `A135481.P9711204985532032738`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135481 (n : ℕ) : ℤ :=
  A135481.P9711204985532032738.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135481.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139708.P10437664950000640260

`A006257(n+1)*A187816(n+1)`
-/

namespace A139708.P10437664950000640260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (n + 1) * A187816 (n + 1)

end

end A139708.P10437664950000640260

noncomputable section

/-- A139708: Take n in binary. Rotate the binary digits to the left until a 1 once again appears as the leftmost digit. Convert back into decimal for a(n).

Offset 1, canonical program `A139708.P10437664950000640260`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139708 (n : ℕ) : ℤ :=
  A139708.P10437664950000640260.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139708.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140580.P10077258810956911756

`(n+1)²/A048671(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140580.P10077258810956911756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A048671 (n + 1) : ℚ)

end

end A140580.P10077258810956911756

noncomputable section

/-- A140580: a(n) = (n^2)/A048671(n), = n*A014963(n) = A140579 * [1, 2, 3, ...].

Offset 1, canonical program `A140580.P10077258810956911756`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140580 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A140580.P10077258810956911756.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140580.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140670.P15032429316490350293

`A006519(n+1)-A059841(n+1)`
-/

namespace A140670.P15032429316490350293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) - A059841 (n + 1)

end

end A140670.P15032429316490350293

noncomputable section

/-- A140670: a(n) = 1 if n is odd; otherwise, a(n) = 2^k - 1 where 2^k is the largest power of 2 that divides n.

Offset 1, canonical program `A140670.P15032429316490350293`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140670 (n : ℕ) : ℤ :=
  A140670.P15032429316490350293.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140670.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143215.P1994719759372848110

`A000040(n+1)*A007504(n+1)`
-/

namespace A143215.P1994719759372848110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A007504 (n + 1)

end

end A143215.P1994719759372848110

noncomputable section

/-- A143215: a(n) = prime(n) * Sum_{i=1..n} prime(i).

Offset 1, canonical program `A143215.P1994719759372848110`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143215 (n : ℕ) : ℤ :=
  A143215.P1994719759372848110.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143215.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A152761.P10007199758081199607

`A152762(n)+A000108(n)`
-/

namespace A152761.P10007199758081199607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152762 n + A000108 n

end

end A152761.P10007199758081199607

noncomputable section

/-- A152761: Sum of divisors of Catalan number A000108(n).

Offset 0, canonical program `A152761.P10007199758081199607`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152761 (n : ℕ) : ℤ :=
  A152761.P10007199758081199607.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152761.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A153450.P11237216334743077294

`A007053(2^n)`
-/

namespace A153450.P11237216334743077294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (2 ^ n)

end

end A153450.P11237216334743077294

noncomputable section

/-- A153450: Number of primes <= 2^(2^n) = pi(A001146(n)).

Offset 0, canonical program `A153450.P11237216334743077294`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153450 (n : ℕ) : ℤ :=
  A153450.P11237216334743077294.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153450.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A154271.P17241100305170560711

`∑{d}[n+1, A359377(#)*A008836((n+1)/#)]`
-/

namespace A154271.P17241100305170560711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359377 d * A008836 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A154271.P17241100305170560711

noncomputable section

/-- A154271: Dirichlet inverse of A154272; Fully multiplicative with a(3^e) = (-1)^e, a(p^e) = 0 for primes p <> 3.

Offset 1, canonical program `A154271.P17241100305170560711`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A154271 (n : ℕ) : ℤ :=
  A154271.P17241100305170560711.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A154271.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A156778.P4656544164751589866

`n*A007504(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A156778.P4656544164751589866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A007504 n : ℚ) / 2

end

end A156778.P4656544164751589866

noncomputable section

/-- A156778: a(n) = n*A007504(n)/2 = n*(sum of first n primes)/2.

Offset 0, canonical program `A156778.P4656544164751589866`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156778 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A156778.P4656544164751589866.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156778.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A159634.P11967709027105384687

`A000082(n+1)/A080512(n+1)`
-/

namespace A159634.P11967709027105384687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000082 (n + 1) : ℚ) / (A080512 (n + 1) : ℚ)

end

end A159634.P11967709027105384687

noncomputable section

/-- A159634: Coefficient for dimensions of spaces of modular & cusp forms of weight k/2, level 4*n and trivial character, where k>=5 is odd.

Offset 1, canonical program `A159634.P11967709027105384687`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A159634 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A159634.P11967709027105384687.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A159634.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A160668.P17836700384560215862

`A061601(A000040(n+1))+1`
-/

namespace A160668.P17836700384560215862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A000040 (n + 1)).toNat + 1

end

end A160668.P17836700384560215862

noncomputable section

/-- A160668: Distance between prime(n) and the next higher power of 10.

Offset 1, canonical program `A160668.P17836700384560215862`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160668 (n : ℕ) : ℤ :=
  A160668.P17836700384560215862.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160668.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A161150.P4576201331525909670

`A000265(n+1)*A006519(n+2)`
-/

namespace A161150.P4576201331525909670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A006519 (n + 2)

end

end A161150.P4576201331525909670

noncomputable section

/-- A161150: a(n) = (largest odd divisor of n)*(largest power of 2 dividing (n+1)).

Offset 1, canonical program `A161150.P4576201331525909670`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161150 (n : ℕ) : ℤ :=
  A161150.P4576201331525909670.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161150.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A161151.P6562315491543427

`A000265(n+2)*A006519(n+1)`
-/

namespace A161151.P6562315491543427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 2) * A006519 (n + 1)

end

end A161151.P6562315491543427

noncomputable section

/-- A161151: a(n) = (largest odd divisor of (n+1))*(largest power of 2 dividing n).

Offset 1, canonical program `A161151.P6562315491543427`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161151 (n : ℕ) : ℤ :=
  A161151.P6562315491543427.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161151.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A113414.P14663272806087347822

`A001826(n+1)+(-1)^(n+1)*A001842(n+1)`
-/

namespace A113414.P14663272806087347822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001826 (n + 1) + (-1) ^ (n + 1) * A001842 (n + 1)

end

end A113414.P14663272806087347822

noncomputable section

/-- A113414: Expansion of Sum_{k>0} x^k/(1-(-x^2)^k).

Offset 1, canonical program `A113414.P14663272806087347822`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113414 (n : ℕ) : ℤ :=
  A113414.P14663272806087347822.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113414.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A105134.P12641584828989390445

`floor(A105126(n+1)/16)`
-/

namespace A105134.P12641584828989390445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A105126 (n + 1) : ℚ) / 16⌋

end

end A105134.P12641584828989390445

noncomputable section

/-- A105134: Numbers n such that 16n+9 is prime.

Offset 1, canonical program `A105134.P12641584828989390445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105134 (n : ℕ) : ℤ :=
  A105134.P12641584828989390445.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105413.P9477685925488357748

`p?[A024675(n+1)-A162153(n+6)]`
-/

namespace A105413.P9477685925488357748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1) - A162153 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105413.P9477685925488357748

noncomputable section

/-- A105413: Primes p = prime(k) such that both p+2 and prime(k+6)-2 are prime numbers.

Offset 1, canonical program `A105413.P9477685925488357748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A105413 (n : ℕ) : ℤ :=
  A105413.P9477685925488357748.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A105413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105414.P3057525973384244371

`p?[A006093(n+1)-A162153(n+5)]`
-/

namespace A105414.P3057525973384244371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A162153 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105414.P3057525973384244371

noncomputable section

/-- A105414: Primes p = prime(k) such that p+2 and prime(k+7)-2 are both prime numbers.

Offset 1, canonical program `A105414.P3057525973384244371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A105414 (n : ℕ) : ℤ :=
  A105414.P3057525973384244371.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A105414.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105511.P8594542549922877954

`∑[char[A105501(n+1)]]`
-/

namespace A105511.P8594542549922877954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105501 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105511.P8594542549922877954

noncomputable section

/-- A105511: Number of times 1 is the leading digit of the first n+1 Fibonacci numbers in decimal representation.

Offset 0, canonical program `A105511.P8594542549922877954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105511 (n : ℕ) : ℤ :=
  (A105511.P8594542549922877954.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105512.P13085090330306124009

`∑[char[A105502(n+1)]]`
-/

namespace A105512.P13085090330306124009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105502 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105512.P13085090330306124009

noncomputable section

/-- A105512: Number of times 2 is the leading digit of the first n+1 Fibonacci numbers in decimal representation.

Offset 0, canonical program `A105512.P13085090330306124009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105512 (n : ℕ) : ℤ :=
  (A105512.P13085090330306124009.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105513.P16656894288480579329

`∑[char[A105503(n+1)]]`
-/

namespace A105513.P16656894288480579329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105503 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105513.P16656894288480579329

noncomputable section

/-- A105513: Number of times 3 is the leading digit of the first n+1 Fibonacci numbers in decimal representation.

Offset 0, canonical program `A105513.P16656894288480579329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105513 (n : ℕ) : ℤ :=
  (A105513.P16656894288480579329.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105514.P10974530690365182663

`∑[char[A105504(n+1)]]`
-/

namespace A105514.P10974530690365182663
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105504 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105514.P10974530690365182663

noncomputable section

/-- A105514: Number of times 4 is the leading digit of the first n+1 Fibonacci numbers in decimal representation.

Offset 0, canonical program `A105514.P10974530690365182663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105514 (n : ℕ) : ℤ :=
  (A105514.P10974530690365182663.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106060.P15162970793732190485

`∩[A015915(n+1), A023228(n+1)]`
-/

namespace A106060.P15162970793732190485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106060.P15162970793732190485

noncomputable section

/-- A106060: Primes p such that 1*p + 8 and 8*p + 1 are primes.

Offset 1, canonical program `A106060.P15162970793732190485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1868 terms. -/
def A106060 (n : ℕ) : ℤ :=
  (A106060.P15162970793732190485.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1868 terms. -/
def A106060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106255.P14504416590498202049

`A000217(val(A036561(n), 6)+1)`
-/

namespace A106255.P14504416590498202049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.valuation (A036561 n).toNat 6 + 1)

end

end A106255.P14504416590498202049

noncomputable section

/-- A106255: Triangle composed of triangular numbers, row sums = A006918.

Offset 1, canonical program `A106255.P14504416590498202049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106255 (n : ℕ) : ℤ :=
  A106255.P14504416590498202049.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106272.P8541491872304346101

`A106271(n)-a(n-1)` with `a(0)=1`
-/

namespace A106272.P8541491872304346101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A106271 n - a (n - 1)

end

end A106272.P8541491872304346101

noncomputable section

/-- A106272: Antidiagonal sums of number triangle A106270.

Offset 0, canonical program `A106272.P8541491872304346101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A106272 (n : ℕ) : ℤ :=
  A106272.P8541491872304346101.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A106272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106314.P15491378883024418281

`(val(A036561(n), 6)+1)²`
-/

namespace A106314.P15491378883024418281
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A036561 n).toNat 6 + 1) ^ 2

end

end A106314.P15491378883024418281

noncomputable section

/-- A106314: Triangle T(n,k) composed of the squares min(n,k)^2.

Offset 1, canonical program `A106314.P15491378883024418281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106314 (n : ℕ) : ℤ :=
  (A106314.P15491378883024418281.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106391.P13549094547017150546

`A102319(n)-A102318(n)`
-/

namespace A106391.P13549094547017150546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102319 n - A102318 n

end

end A106391.P13549094547017150546

noncomputable section

/-- A106391: A "cosh transform" of binomial(2n,n-1).

Offset 0, canonical program `A106391.P13549094547017150546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A106391 (n : ℕ) : ℤ :=
  A106391.P13549094547017150546.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A106391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106841.P8849377993894975428

`8*A091072(n+1)`
-/

namespace A106841.P8849377993894975428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A091072 (n + 1)

end

end A106841.P8849377993894975428

noncomputable section

/-- A106841: Numbers m such that m, m+1 and m+2 have odd part of the form 4*k+1.

Offset 1, canonical program `A106841.P8849377993894975428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106841 (n : ℕ) : ℤ :=
  A106841.P8849377993894975428.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106935.P8140297274515338449

`∩[A002145(n+1), A038890(n+1)]`
-/

namespace A106935.P8140297274515338449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106935.P8140297274515338449

noncomputable section

/-- A106935: Primes of the form 3x^2+2xy+6y^2, with x and y any integer.

Offset 1, canonical program `A106935.P8140297274515338449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A106935 (n : ℕ) : ℤ :=
  (A106935.P8140297274515338449.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A106935.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107038.P1274454564014350472

`Δ[A037918(n+1)]`
-/

namespace A107038.P1274454564014350472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107038.P1274454564014350472

noncomputable section

/-- A107038: First differences of indices of squarefree Fibonacci numbers.

Offset 0, canonical program `A107038.P1274454564014350472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1090 terms. -/
def A107038 (n : ℕ) : ℤ :=
  A107038.P1274454564014350472.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1090 terms. -/
def A107038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107060.P14100999910005735281

`(n*A079780(n+1))%(2*(n+1))`
-/

namespace A107060.P14100999910005735281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A079780 (n + 1)) (2 * (n + 1) : ℤ)

end

end A107060.P14100999910005735281

noncomputable section

/-- A107060: a(n) = smallest number m >=0 such that n*prime(n)-m is a prime.

Offset 1, canonical program `A107060.P14100999910005735281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6599 terms. -/
def A107060 (n : ℕ) : ℤ :=
  A107060.P14100999910005735281.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6599 terms. -/
def A107060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107472.P3955423761168080437

`filter[A107323(n+3), A005171(#)]`
-/

namespace A107472.P3955423761168080437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107323 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A107472.P3955423761168080437

noncomputable section

/-- A107472: Composite numbers in sequence A107323.

Offset 1, canonical program `A107472.P3955423761168080437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4822 terms. -/
def A107472 (n : ℕ) : ℤ :=
  A107472.P3955423761168080437.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4822 terms. -/
def A107472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107755.P8010610364266313592

`A074938(n+1)-1`
-/

namespace A107755.P8010610364266313592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074938 (n + 1) - 1

end

end A107755.P8010610364266313592

noncomputable section

/-- A107755: Numbers k such that Sum_{j=1..k} Catalan(j) == 0 (mod 3).

Offset 1, canonical program `A107755.P8010610364266313592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A107755 (n : ℕ) : ℤ :=
  A107755.P8010610364266313592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A107755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107771.P11192892536720195870

`∩[A089038(n+1), A111223(n+1)]`
-/

namespace A107771.P11192892536720195870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107771.P11192892536720195870

noncomputable section

/-- A107771: Numbers n such that 2*n + 5 and 5*n + 2 are primes.

Offset 1, canonical program `A107771.P11192892536720195870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1918 terms. -/
def A107771 (n : ℕ) : ℤ :=
  (A107771.P11192892536720195870.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1918 terms. -/
def A107771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107987.P5415694799470960516

`A049591(n+1)+2`
-/

namespace A107987.P5415694799470960516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (n + 1) + 2

end

end A107987.P5415694799470960516

noncomputable section

/-- A107987: Odd composite numbers of the form p+2 where p is prime.

Offset 1, canonical program `A107987.P5415694799470960516`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049591, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107987 (n : ℕ) : ℤ :=
  A107987.P5415694799470960516.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049591, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107987.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A108178.P13174187955981682460

`2*A107968(n)-A107956(n)`
-/

namespace A108178.P13174187955981682460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107968 n - A107956 n

end

end A108178.P13174187955981682460

noncomputable section

/-- A108178: a(n) = (n+1)(n+2)^2*(n+3)^2*(n+4)(7n^2 + 23n + 20)/2880.

Offset 0, canonical program `A108178.P13174187955981682460`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108178 (n : ℕ) : ℤ :=
  A108178.P13174187955981682460.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108358.P14957281117479450170

`1-A021913(A004198(n))`
-/

namespace A108358.P14957281117479450170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A021913 (A004198 n).toNat

end

end A108358.P14957281117479450170

noncomputable section

/-- A108358: A mod 2 triangle based on floor((n+2)/2).

Offset 0, canonical program `A108358.P14957281117479450170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108358 (n : ℕ) : ℤ :=
  A108358.P14957281117479450170.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108581.P11690575044026609258

`C(A056556(n)+2, 2)`
-/

namespace A108581.P11690575044026609258
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A056556 n + 2).toNat 2

end

end A108581.P11690575044026609258

noncomputable section

/-- A108581: Positive triangular numbers repeated their own number of times.

Offset 1, canonical program `A108581.P11690575044026609258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108581 (n : ℕ) : ℤ :=
  (A108581.P11690575044026609258.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108595.P5830331830864878917

`A102338(n+8)-10`
-/

namespace A108595.P5830331830864878917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102338 (n + 8) - 10

end

end A108595.P5830331830864878917

noncomputable section

/-- A108595: Numbers k such that 10*k + 103 is prime.

Offset 1, canonical program `A108595.P5830331830864878917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9993 terms. -/
def A108595 (n : ℕ) : ℤ :=
  A108595.P5830331830864878917.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9993 terms. -/
def A108595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108624.P11110063196872125649

`A007440(n)-a(n-1)` with `a(0)=1`
-/

namespace A108624.P11110063196872125649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007440 n - a (n - 1)

end

end A108624.P11110063196872125649

noncomputable section

/-- A108624: G.f. satisfies x = A(x)*(1+A(x))/(1-A(x)-(A(x))^2).

Offset 1, canonical program `A108624.P11110063196872125649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A108624 (n : ℕ) : ℤ :=
  A108624.P11110063196872125649.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A108624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108725.P8444148683181042035

`A107992(n+1)-2`
-/

namespace A108725.P8444148683181042035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107992 (n + 1) - 2

end

end A108725.P8444148683181042035

noncomputable section

/-- A108725: Numbers n such that 11*n + 19 is prime.

Offset 1, canonical program `A108725.P8444148683181042035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108725 (n : ℕ) : ℤ :=
  A108725.P8444148683181042035.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108727.P5195277566401287610

`A107994(n+1)-3`
-/

namespace A108727.P5195277566401287610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107994 (n + 1) - 3

end

end A108727.P5195277566401287610

noncomputable section

/-- A108727: Numbers n such that 11*n + 31 is prime.

Offset 1, canonical program `A108727.P5195277566401287610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108727 (n : ℕ) : ℤ :=
  A108727.P5195277566401287610.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108763.P3829992224626505531

`A092486(2*A092486(A067076(n+1)))`
-/

namespace A108763.P3829992224626505531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (2 * A092486 (A067076 (n + 1)).toNat).toNat

end

end A108763.P3829992224626505531

noncomputable section

/-- A108763: If n-th prime is 8m+1, then a(n) = 8m+3. If n-th prime is 8m+3, then a(n) = 8m+5. If n-th prime is 8m+5, then a(n) = 8m+7. If n-th prime is 8m+7, then a(n) = 8m+1.

Offset 2, canonical program `A108763.P3829992224626505531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A108763 (n : ℕ) : ℤ :=
  A108763.P3829992224626505531.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A108763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108794.P9146368090825541493

`p?[n*A001222(A061601(n)+1)-n]`
-/

namespace A108794.P9146368090825541493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001222 (A061601 n + 1).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108794.P9146368090825541493

noncomputable section

/-- A108794: Primes whose 10's complement is a semiprime, i.e., p is prime and 10^L - p is a semiprime, where L is the number of digits in p.

Offset 1, canonical program `A108794.P9146368090825541493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A108794 (n : ℕ) : ℤ :=
  A108794.P9146368090825541493.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A108794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108815.P2471550598880521513

`floor(sqrt(2*A075875(n+1)))`
-/

namespace A108815.P2471550598880521513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A075875 (n + 1))

end

end A108815.P2471550598880521513

noncomputable section

/-- A108815: Indices of triangular numbers which are products of 3 primes.

Offset 1, canonical program `A108815.P2471550598880521513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108815 (n : ℕ) : ℤ :=
  A108815.P2471550598880521513.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108815.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108854.P15242187199517262810

`A108584(n+1)+3`
-/

namespace A108854.P15242187199517262810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108584 (n + 1) + 3

end

end A108854.P15242187199517262810

noncomputable section

/-- A108854: Numbers k such that 10*k - 127 is prime.

Offset 1, canonical program `A108854.P15242187199517262810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108854 (n : ℕ) : ℤ :=
  A108854.P15242187199517262810.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108916.P16797834562786203312

`A007318(n)*A052709(A004736(n+1))`
-/

namespace A108916.P16797834562786203312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A052709 (A004736 (n + 1)).toNat

end

end A108916.P16797834562786203312

noncomputable section

/-- A108916: Triangle of Schroeder paths counted by number of diagonal steps not preceded by an east step.

Offset 0, canonical program `A108916.P16797834562786203312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9470 terms. -/
def A108916 (n : ℕ) : ℤ :=
  A108916.P16797834562786203312.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9470 terms. -/
def A108916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109083.P1945678919087495791

`round(A010816(3*(n+1))/6)`
-/

namespace A109083.P1945678919087495791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A010816 (3 * (n + 1)) : ℚ) / 6)

end

end A109083.P1945678919087495791

noncomputable section

/-- A109083: Convolution of A002324 and A010815.

Offset 1, canonical program `A109083.P1945678919087495791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2050 terms. -/
def A109083 (n : ℕ) : ℤ :=
  A109083.P1945678919087495791.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2050 terms. -/
def A109083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109127.P1890116283645381104

`round(-(A010816(n+1)/3))`
-/

namespace A109127.P1890116283645381104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (-((A010816 (n + 1) : ℚ) / 3))

end

end A109127.P1890116283645381104

noncomputable section

/-- A109127: Expansion of q^(-1/8) * (eta(q^3) - eta(q)^3) / 3 in powers of q.

Offset 1, canonical program `A109127.P1890116283645381104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A109127 (n : ℕ) : ℤ :=
  A109127.P1890116283645381104.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A109127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109580.P250940823031439561

`p?[A109579(n+1)]`
-/

namespace A109580.P250940823031439561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109580.P250940823031439561

noncomputable section

/-- A109580: Primes in A109579.

Offset 1, canonical program `A109580.P250940823031439561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2483 terms. -/
def A109580 (n : ℕ) : ℤ :=
  A109580.P250940823031439561.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2483 terms. -/
def A109580.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109645.P4149127041279372500

`p?[A084854(n+2)]`
-/

namespace A109645.P4149127041279372500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084854 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109645.P4149127041279372500

noncomputable section

/-- A109645: Primes whose decimal expansion has the form ij, where i and j are integers with j < i.

Offset 1, canonical program `A109645.P4149127041279372500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1137 terms. -/
def A109645 (n : ℕ) : ℤ :=
  A109645.P4149127041279372500.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1137 terms. -/
def A109645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109846.P1788492969012972076

`abs(n-A061601(n))`
-/

namespace A109846.P1788492969012972076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A061601 n|

end

end A109846.P1788492969012972076

noncomputable section

/-- A109846: Absolute difference between n and its 9's complement.

Offset 0, canonical program `A109846.P1788492969012972076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109846 (n : ℕ) : ℤ :=
  A109846.P1788492969012972076.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109847.P355230552138122519

`lcm(n+1, A061601(n+1))`
-/

namespace A109847.P355230552138122519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A061601 (n + 1))

end

end A109847.P355230552138122519

noncomputable section

/-- A109847: Least common multiple of n and its 9's complement.

Offset 1, canonical program `A109847.P355230552138122519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109847 (n : ℕ) : ℤ :=
  (A109847.P355230552138122519.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109848.P3242327494572458418

`gcd(n+1, A061601(n+1))`
-/

namespace A109848.P3242327494572458418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A061601 (n + 1))

end

end A109848.P3242327494572458418

noncomputable section

/-- A109848: Highest common factor of n and its 9's complement.

Offset 1, canonical program `A109848.P3242327494572458418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109848 (n : ℕ) : ℤ :=
  (A109848.P3242327494572458418.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110005.P16508309867021572198

`A110004(A263449(n))`
-/

namespace A110005.P16508309867021572198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110004 (A263449 n).toNat

end

end A110005.P16508309867021572198

noncomputable section

/-- A110005: n followed by n^2 followed by n^4 followed by n^3.

Offset 1, canonical program `A110005.P16508309867021572198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110005 (n : ℕ) : ℤ :=
  A110005.P16508309867021572198.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110008.P14974880625639452016

`A110004(A116966(n))`
-/

namespace A110008.P14974880625639452016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110004 (A116966 n).toNat

end

end A110008.P14974880625639452016

noncomputable section

/-- A110008: n followed by n^4 followed by n^3 followed by n^2.

Offset 1, canonical program `A110008.P14974880625639452016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110008 (n : ℕ) : ℤ :=
  A110008.P14974880625639452016.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110229.P17987204273400737593

`record[A082344(A014614(n+2))]`
-/

namespace A110229.P17987204273400737593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082344 (A014614 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110229.P17987204273400737593

noncomputable section

/-- A110229: 5-almost primes p * q * r * s * t relatively prime to p + q + r + s + t.

Offset 1, canonical program `A110229.P17987204273400737593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2729 terms. -/
def A110229 (n : ℕ) : ℤ :=
  A110229.P17987204273400737593.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2729 terms. -/
def A110229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110335.P10522515197327318122

`Δ[A089737(n+2)-A004148(n+5)]`
-/

namespace A110335.P10522515197327318122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089737 (n + 2) - A004148 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110335.P10522515197327318122

noncomputable section

/-- A110335: Number of valleys (i.e., (1,-1) followed by (1,1)) at level zero in all peakless Motzkin paths of length n+6 (can be easily translated into RNA secondary structure terminology).

Offset 0, canonical program `A110335.P10522515197327318122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A110335 (n : ℕ) : ℤ :=
  A110335.P10522515197327318122.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A110335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110397.P12959332454578711254

`(A061601(n+1)+n+2)²-(n+1)²`
-/

namespace A110397.P12959332454578711254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061601 (n + 1) + (n + 2 : ℤ)) ^ 2 - ((n + 1) ^ 2 : ℤ)

end

end A110397.P12959332454578711254

noncomputable section

/-- A110397: a(n) = (10^k - n)(10^k + n), where k is the number of digits in n.

Offset 1, canonical program `A110397.P12959332454578711254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110397 (n : ℕ) : ℤ :=
  A110397.P12959332454578711254.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110510.P4459465771356179059

`A106566(n)*A130321(n)`
-/

namespace A110510.P4459465771356179059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 n * A130321 n

end

end A110510.P4459465771356179059

noncomputable section

/-- A110510: Riordan array (1, x*c(2x)), c(x) the g.f. of A000108.

Offset 0, canonical program `A110510.P4459465771356179059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6787 terms. -/
def A110510 (n : ℕ) : ℤ :=
  A110510.P4459465771356179059.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6787 terms. -/
def A110510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110518.P11180625807063837773

`A106566(n)*A140303(n)`
-/

namespace A110518.P11180625807063837773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 n * A140303 n

end

end A110518.P11180625807063837773

noncomputable section

/-- A110518: Riordan array (1, x*c(3x)), c(x) the g.f. of A000108.

Offset 0, canonical program `A110518.P11180625807063837773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4754 terms. -/
def A110518 (n : ℕ) : ℤ :=
  A110518.P11180625807063837773.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4754 terms. -/
def A110518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110651.P10291907235345254237

`A110004(xor(3, n)+1)`
-/

namespace A110651.P10291907235345254237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110004 (Nat.xor 3 n + 1)

end

end A110651.P10291907235345254237

noncomputable section

/-- A110651: n^2 followed by n^4 followed by n^3 followed by n.

Offset 1, canonical program `A110651.P10291907235345254237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110651 (n : ℕ) : ℤ :=
  A110651.P10291907235345254237.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110672.P13064412979197654835

`∑[A110671(n)]`
-/

namespace A110672.P13064412979197654835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110672.P13064412979197654835

noncomputable section

/-- A110672: Sequence is {a(7,n)}, where a(m,n) is defined in sequence A110665.

Offset 0, canonical program `A110672.P13064412979197654835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110672 (n : ℕ) : ℤ :=
  A110672.P13064412979197654835.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110730.P8616049705140846369

`A090996(eq[2, A023416(n)])`
-/

namespace A110730.P8616049705140846369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A110730.P8616049705140846369

noncomputable section

/-- A110730: Irregular triangle read by rows in which row n lists n 1's followed by (n-1) 2's followed by (n-3) 3's ... followed by 1 n.

Offset 1, canonical program `A110730.P8616049705140846369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A110730 (n : ℕ) : ℤ :=
  A110730.P8616049705140846369.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A110730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111019.P749535475044442863

`A019467(n+2)/3-1`
-/

namespace A111019.P749535475044442863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019467 (n + 2) : ℚ) / 3 - 1

end

end A111019.P749535475044442863

noncomputable section

/-- A111019: Indices of Catalan numbers that are == 1 mod 3 (cf. A000108).

Offset 1, canonical program `A111019.P749535475044442863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 767 terms. -/
def A111019 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A111019.P749535475044442863.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 767 terms. -/
def A111019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111049.P6292796028926116323

`(A110552(n+1)+A071919(n))/2`
-/

namespace A111049.P6292796028926116323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110552 (n + 1) + A071919 n : ℚ) / 2

end

end A111049.P6292796028926116323

noncomputable section

/-- A111049: Triangle T(n,k), 0 <= k <= n, read by rows, given by [1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, ...] DELTA [1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, ...] where DELTA is the operator defined in A084938.

Offset 0, canonical program `A111049.P6292796028926116323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A111049 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A111049.P6292796028926116323.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A111049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111279.P17822418939047922619

`A026737((n-1)%(n+1))`
-/

namespace A111279.P17822418939047922619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026737 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A111279.P17822418939047922619

noncomputable section

/-- A111279: Number of permutations avoiding the patterns {3241,3421,4321}; number of weak sorting class based on 3241.

Offset 0, canonical program `A111279.P17822418939047922619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A111279 (n : ℕ) : ℤ :=
  A111279.P17822418939047922619.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A111279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111319.P8319744077221751074

`comp[n^gcd(5, A007504(n))]`
-/

namespace A111319.P8319744077221751074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Int.gcd 5 (A007504 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A111319.P8319744077221751074

noncomputable section

/-- A111319: Numbers k such that 5 divides prime(1) + ... + prime(k).

Offset 1, canonical program `A111319.P8319744077221751074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111319 (n : ℕ) : ℤ :=
  (A111319.P8319744077221751074.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111320.P13176253524952530355

`eq[3, (A007504(n)-3)%6]`
-/

namespace A111320.P13176253524952530355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 n - 3) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111320.P13176253524952530355

noncomputable section

/-- A111320: Numbers k such that 6 divides prime(1) + ... + prime(k).

Offset 1, canonical program `A111320.P13176253524952530355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8328 terms. -/
def A111320 (n : ℕ) : ℤ :=
  (A111320.P13176253524952530355.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8328 terms. -/
def A111320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111321.P11993108395501146979

`eq[7, gcd(7, A007504(n+1))]+1`
-/

namespace A111321.P11993108395501146979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 7 (A007504 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A111321.P11993108395501146979

noncomputable section

/-- A111321: Numbers k such that 7 divides prime(1) + ... + prime(k).

Offset 1, canonical program `A111321.P11993108395501146979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7136 terms. -/
def A111321 (n : ℕ) : ℤ :=
  (A111321.P11993108395501146979.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7136 terms. -/
def A111321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111322.P16638155972908692796

`eq[8, gcd(8, A007504(n+1))]+1`
-/

namespace A111322.P16638155972908692796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 8 (A007504 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A111322.P16638155972908692796

noncomputable section

/-- A111322: Numbers k such that 8 divides prime(1) + ... + prime(k).

Offset 1, canonical program `A111322.P16638155972908692796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6282 terms. -/
def A111322 (n : ℕ) : ℤ :=
  (A111322.P16638155972908692796.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6282 terms. -/
def A111322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111323.P1048443084486664615

`lt[8, dr(A007504(n))]`
-/

namespace A111323.P1048443084486664615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007504 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111323.P1048443084486664615

noncomputable section

/-- A111323: Numbers k such that 9 divides prime(1) + ... + prime(k).

Offset 1, canonical program `A111323.P1048443084486664615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5667 terms. -/
def A111323 (n : ℕ) : ℤ :=
  (A111323.P1048443084486664615.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5667 terms. -/
def A111323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111324.P1944498692377045728

`eq[5, (A007504(n)-5)%10]`
-/

namespace A111324.P1944498692377045728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 n - 5) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111324.P1944498692377045728

noncomputable section

/-- A111324: Numbers k such that 10 divides prime(1) + ... + prime(k).

Offset 1, canonical program `A111324.P1944498692377045728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5028 terms. -/
def A111324 (n : ℕ) : ℤ :=
  (A111324.P1944498692377045728.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5028 terms. -/
def A111324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111325.P7187186331389231185

`lt[8, gcd(11, A007504(n+1))]+1`
-/

namespace A111325.P7187186331389231185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 11 (A007504 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A111325.P7187186331389231185

noncomputable section

/-- A111325: Numbers k such that 11 divides prime(1) + ... + prime(k).

Offset 1, canonical program `A111325.P7187186331389231185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4585 terms. -/
def A111325 (n : ℕ) : ℤ :=
  (A111325.P7187186331389231185.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4585 terms. -/
def A111325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111326.P17342450105142321715

`eq[12, gcd(12, A007504(n+1))]+1`
-/

namespace A111326.P17342450105142321715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 12 (A007504 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A111326.P17342450105142321715

noncomputable section

/-- A111326: Numbers k such that 12 divides prime(1) + ... + prime(k).

Offset 1, canonical program `A111326.P17342450105142321715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4226 terms. -/
def A111326 (n : ℕ) : ℤ :=
  (A111326.P17342450105142321715.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4226 terms. -/
def A111326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111327.P16693516718763661567

`eq[13, gcd(13, A007504(n+1))]+1`
-/

namespace A111327.P16693516718763661567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 13 (A007504 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A111327.P16693516718763661567

noncomputable section

/-- A111327: Numbers k such that 13 divides prime(1) + ... + prime(k).

Offset 1, canonical program `A111327.P16693516718763661567`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3771 terms. -/
def A111327 (n : ℕ) : ℤ :=
  (A111327.P16693516718763661567.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3771 terms. -/
def A111327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111367.P12882933865931024001

`A089079(n+1)-4`
-/

namespace A111367.P12882933865931024001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089079 (n + 1) - 4

end

end A111367.P12882933865931024001

noncomputable section

/-- A111367: Numbers k such that 7*k + 5 is prime.

Offset 1, canonical program `A111367.P12882933865931024001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111367 (n : ℕ) : ℤ :=
  A111367.P12882933865931024001.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111497.P5074465720884968157

`A111499(2*(n+1))-A111499(2*n+1)`
-/

namespace A111497.P5074465720884968157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111499 (2 * (n + 1)) - A111499 (2 * n + 1)

end

end A111497.P5074465720884968157

noncomputable section

/-- A111497: Difference between successive terms of floor(10^n/Li(10^n) - 1).

Offset 1, canonical program `A111497.P5074465720884968157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A111497 (n : ℕ) : ℤ :=
  A111497.P5074465720884968157.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A111497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111661.P12974684241340383549

`∑{d}[n+1, A103440(#)*A154955((n+1)/#)]`
-/

namespace A111661.P12974684241340383549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A103440 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111661.P12974684241340383549

noncomputable section

/-- A111661: Expansion of eta(q)^4 * eta(q^2) * eta(q^6)^5 / eta(q^3)^4 in powers of q.

Offset 1, canonical program `A111661.P12974684241340383549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111661 (n : ℕ) : ℤ :=
  A111661.P12974684241340383549.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111708.P14227470248071541611

`(n+1)*(A061601(n)+n)`
-/

namespace A111708.P14227470248071541611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A061601 n + (n : ℤ))

end

end A111708.P14227470248071541611

noncomputable section

/-- A111708: a(n) = n concatenated with 9's complement of n.

Offset 0, canonical program `A111708.P14227470248071541611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111708 (n : ℕ) : ℤ :=
  A111708.P14227470248071541611.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111854.P12628893320528606972

`∑[char[A034100(n+1)-1]]`
-/

namespace A111854.P12628893320528606972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034100 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111854.P12628893320528606972

noncomputable section

/-- A111854: Number of numbers m <= n such that 4 equals the first digit after decimal point of square root of n in decimal representation.

Offset 1, canonical program `A111854.P12628893320528606972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111854 (n : ℕ) : ℤ :=
  (A111854.P12628893320528606972.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111855.P445997609701663267

`∑[char[A034101(n+1)-1]]`
-/

namespace A111855.P445997609701663267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034101 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111855.P445997609701663267

noncomputable section

/-- A111855: Number of numbers m <= n such that 5 equals the first digit after decimal point of square root of n in decimal representation.

Offset 1, canonical program `A111855.P445997609701663267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111855 (n : ℕ) : ℤ :=
  (A111855.P445997609701663267.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112280.P11519997637088277000

`A111983(n)%9`
-/

namespace A112280.P11519997637088277000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111983 n) 9

end

end A112280.P11519997637088277000

noncomputable section

/-- A112280: Coefficients, read modulo 9, of the cube of q-series (q;q)_oo.

Offset 0, canonical program `A112280.P11519997637088277000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A112280 (n : ℕ) : ℤ :=
  A112280.P11519997637088277000.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A112280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112308.P12064346406734073467

`∑[A070857(n)]`
-/

namespace A112308.P12064346406734073467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070857 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112308.P12064346406734073467

noncomputable section

/-- A112308: Sum of the heights of the second peaks in all Dyck paths of semilength n+2.

Offset 0, canonical program `A112308.P12064346406734073467`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A112308 (n : ℕ) : ℤ :=
  A112308.P12064346406734073467.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A112308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112347.P13846808065894593792

`Δ[A005811(floor(n²/(n+1)))]`
-/

namespace A112347.P13846808065894593792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112347.P13846808065894593792

noncomputable section

/-- A112347: Kronecker symbol (-1, n) except a(0) = 0.

Offset 0, canonical program `A112347.P13846808065894593792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112347 (n : ℕ) : ℤ :=
  A112347.P13846808065894593792.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112478.P3456292499635885197

`(-1)^n*A085403(n)`
-/

namespace A112478.P3456292499635885197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A085403 n

end

end A112478.P3456292499635885197

noncomputable section

/-- A112478: Expansion of (1 + x + sqrt(1 + 6*x + x^2))/2.

Offset 0, canonical program `A112478.P3456292499635885197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A112478 (n : ℕ) : ℤ :=
  A112478.P3456292499635885197.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A112478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112660.P11454736749846847626

`A330526(n+1)%A001248(n+1)`
-/

namespace A112660.P11454736749846847626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330526 (n + 1)) (A001248 (n + 1))

end

end A112660.P11454736749846847626

noncomputable section

/-- A112660: a(n) = (p-1)! mod p^2 where p = n-th prime.

Offset 1, canonical program `A112660.P11454736749846847626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5367 terms. -/
def A112660 (n : ℕ) : ℤ :=
  A112660.P11454736749846847626.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5367 terms. -/
def A112660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112681.P2005893278622678890

`A000040(eq[1, A106671(n+2)]+3)`
-/

namespace A112681.P2005893278622678890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106671 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3)

end

end A112681.P2005893278622678890

noncomputable section

/-- A112681: Primes such that the sum of the predecessor and successor primes is divisible by 3.

Offset 1, canonical program `A112681.P2005893278622678890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5114 terms. -/
def A112681 (n : ℕ) : ℤ :=
  A112681.P2005893278622678890.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5114 terms. -/
def A112681.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A112930.P7126053726691172401

`A112929(n+1)+2`
-/

namespace A112930.P7126053726691172401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112929 (n + 1) + 2

end

end A112930.P7126053726691172401

noncomputable section

/-- A112930: a(n) = order of n-th term of A112926 among squarefree integers.

Offset 1, canonical program `A112930.P7126053726691172401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112930 (n : ℕ) : ℤ :=
  A112930.P7126053726691172401.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113184.P201915956103544403

`abs(A002129(n+1))`
-/

namespace A113184.P201915956103544403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002129 (n + 1)|

end

end A113184.P201915956103544403

noncomputable section

/-- A113184: Absolute difference between sum of odd divisors of n and sum of even divisors of n.

Offset 1, canonical program `A113184.P201915956103544403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113184 (n : ℕ) : ℤ :=
  A113184.P201915956103544403.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113427.P16554332714523727255

`A001223(A113339(n+1))`
-/

namespace A113427.P16554332714523727255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A113339 (n + 1)).toNat

end

end A113427.P16554332714523727255

noncomputable section

/-- A113427: If d(n) is the sequence of prime differences, d(n) = prime(n+1) - prime(n), then a(n) is the subsequence of d(n) such that d(n) is nonprime and squarefree. Except for the initial term of 1, the terms are k-semiprime for some k >= 2.

Offset 1, canonical program `A113427.P16554332714523727255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A113427 (n : ℕ) : ℤ :=
  A113427.P16554332714523727255.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A113427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113631.P6142504185761318198

`A061357(record[2*A000463(n+1)])`
-/

namespace A113631.P6142504185761318198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A113631.P6142504185761318198

noncomputable section

/-- A113631: Number of distinct representations of (2n)^2 as the sum of two primes.

Offset 0, canonical program `A113631.P6142504185761318198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A113631 (n : ℕ) : ℤ :=
  A113631.P6142504185761318198.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A113631.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113680.P4202360044323169764

`2-gcd(4, A036561(n))`
-/

namespace A113680.P4202360044323169764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Int.gcd 4 (A036561 n) : ℤ)

end

end A113680.P4202360044323169764

noncomputable section

/-- A113680: Riordan array ((1-x-2x^2)/(1-x),x).

Offset 0, canonical program `A113680.P4202360044323169764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113680 (n : ℕ) : ℤ :=
  A113680.P4202360044323169764.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114002.P11087141496141675113

`2*A051731(n+1)-A023531(n)`
-/

namespace A114002.P11087141496141675113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051731 (n + 1) - A023531 n

end

end A114002.P11087141496141675113

noncomputable section

/-- A114002: Expansion of g.f. x^k(1+x^(k+1))/(1-x^(k+1)).

Offset 0, canonical program `A114002.P11087141496141675113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114002 (n : ℕ) : ℤ :=
  A114002.P11087141496141675113.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114073.P9867924632758766548

`eq[1, A007913(A000010(n+1)+n+1)]+1`
-/

namespace A114073.P9867924632758766548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000010 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114073.P9867924632758766548

noncomputable section

/-- A114073: Numbers k such that phi(k) + k is a square.

Offset 1, canonical program `A114073.P9867924632758766548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 247 terms. -/
def A114073 (n : ℕ) : ℤ :=
  (A114073.P9867924632758766548.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 247 terms. -/
def A114073.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114117.P17816901265294199500

`A000007(n)-Δ[A114114(n)]`
-/

namespace A114117.P17816901265294199500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - (f1 (n + 1) - f1 n)

end

end A114117.P17816901265294199500

noncomputable section

/-- A114117: Inverse of 1's counting matrix A114116.

Offset 0, canonical program `A114117.P17816901265294199500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A114117 (n : ℕ) : ℤ :=
  A114117.P17816901265294199500.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A114117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114118.P8543304473231040765

`A114114(n)+A101688(n+1)`
-/

namespace A114118.P8543304473231040765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114114 n + A101688 (n + 1)

end

end A114118.P8543304473231040765

noncomputable section

/-- A114118: Number triangle T(n,k)=sum{j=0..n, C(floor((n+k+j)/3),k)C(k,floor((n+k+j)/3))}.

Offset 0, canonical program `A114118.P8543304473231040765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114118 (n : ℕ) : ℤ :=
  A114118.P8543304473231040765.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114180.P93888911312312144

`A064148(eq[1, A064148(n+2)-A064148(n+1)]+1)`
-/

namespace A114180.P93888911312312144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064148 (n + 2) - A064148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064148 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A114180.P93888911312312144

noncomputable section

/-- A114180: Numbers n with mu(n) = mu(n+1) = mu(n+2).

Offset 1, canonical program `A114180.P93888911312312144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1868 terms. -/
def A114180 (n : ℕ) : ℤ :=
  A114180.P93888911312312144.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1868 terms. -/
def A114180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114213.P4149335441730124754

`A004198(n)!%2`
-/

namespace A114213.P4149335441730124754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A004198 n).toNat % 2

end

end A114213.P4149335441730124754

noncomputable section

/-- A114213: A generalized Pascal triangle modulo 2.

Offset 0, canonical program `A114213.P4149335441730124754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A114213 (n : ℕ) : ℤ :=
  (A114213.P4149335441730124754.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A114213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114456.P18436279260454582770

`record[A001057(A114436(n+1))]`
-/

namespace A114456.P18436279260454582770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A114436 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114456.P18436279260454582770

noncomputable section

/-- A114456: Numbers k such that the k-th hexagonal number is a 5-almost prime.

Offset 1, canonical program `A114456.P18436279260454582770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1238 terms. -/
def A114456 (n : ℕ) : ℤ :=
  A114456.P18436279260454582770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1238 terms. -/
def A114456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114693.P40457601980009517

`∑[A065096(n+1)+A010683(n)]`
-/

namespace A114693.P40457601980009517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065096 (n + 1) + A010683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114693.P40457601980009517

noncomputable section

/-- A114693: Number of returns to the x-axis in all hill-free Schroeder paths of length 2n+4. A Schroeder path of length 2n is a lattice path from (0,0) to (2n,0) consisting of U=(1,1), D=(1,-1) and H=(2,0) steps and never going below the x-axis. A hill is a peak at height 1.

Offset 0, canonical program `A114693.P40457601980009517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A114693 (n : ℕ) : ℤ :=
  A114693.P40457601980009517.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A114693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114713.P17482890307892299739

`A051286(n+2)-A292460(n+1)`
-/

namespace A114713.P17482890307892299739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051286 (n + 2) - A292460 (n + 1)

end

end A114713.P17482890307892299739

noncomputable section

/-- A114713: Number of ascents in all peakless Motzkin paths of length n+3.

Offset 0, canonical program `A114713.P17482890307892299739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A114713 (n : ℕ) : ℤ :=
  A114713.P17482890307892299739.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A114713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114890.P12766305809805665187

`Δ[A003278(A081611(n))]+1`
-/

namespace A114890.P12766305809805665187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (A081611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A114890.P12766305809805665187

noncomputable section

/-- A114890: First differences of A114889.

Offset 1, canonical program `A114890.P12766305809805665187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A114890 (n : ℕ) : ℤ :=
  A114890.P12766305809805665187.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A114890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115134.P11426993813072874618

`A000245(n+3)+∑[A071724(n)]`
-/

namespace A115134.P11426993813072874618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115134.P11426993813072874618

noncomputable section

/-- A115134: Third diagonal sequence of triangle A115127.

Offset 4, canonical program `A115134.P11426993813072874618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A115134 (n : ℕ) : ℤ :=
  A115134.P11426993813072874618.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A115134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115138.P4364659728970173853

`A115137(n)+A115137(n)-A062992(n)`
-/

namespace A115138.P4364659728970173853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115137 n + (A115137 n - A062992 n)

end

end A115138.P4364659728970173853

noncomputable section

/-- A115138: A sequence related to Catalan numbers A000108.

Offset 0, canonical program `A115138.P4364659728970173853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A115138 (n : ℕ) : ℤ :=
  A115138.P4364659728970173853.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A115138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115165.P1467438550897619179

`A088070(eq[1, A088070(n+1)%2]+1)`
-/

namespace A115165.P1467438550897619179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088070 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088070 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A115165.P1467438550897619179

noncomputable section

/-- A115165: Odd numbers k such that k-1 and k+1 have the same number of distinct prime divisors.

Offset 1, canonical program `A115165.P1467438550897619179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5130 terms. -/
def A115165 (n : ℕ) : ℤ :=
  A115165.P1467438550897619179.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5130 terms. -/
def A115165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115166.P634160909117266982

`2*A088070(n+1)`
-/

namespace A115166.P634160909117266982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088070 (n + 1)

end

end A115166.P634160909117266982

noncomputable section

/-- A115166: Even numbers k such that k-2 and k+2 have the same number of distinct prime factors.

Offset 1, canonical program `A115166.P634160909117266982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115166 (n : ℕ) : ℤ :=
  A115166.P634160909117266982.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115235.P5512606317749080234

`A113448(n+1)*A131713(n)`
-/

namespace A115235.P5512606317749080234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113448 (n + 1) * A131713 n

end

end A115235.P5512606317749080234

noncomputable section

/-- A115235: Expansion of eta(q)^2*eta(q^9)*eta(q^18)/(eta(q^2)*eta(q^3)) in powers of q.

Offset 1, canonical program `A115235.P5512606317749080234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115235 (n : ℕ) : ℤ :=
  A115235.P5512606317749080234.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115356.P7662483456483370118

`A114114(n)%2`
-/

namespace A115356.P7662483456483370118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114114 n) 2

end

end A115356.P7662483456483370118

noncomputable section

/-- A115356: Matrix (1,x)+(x,x^2) in Riordan array notation.

Offset 0, canonical program `A115356.P7662483456483370118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115356 (n : ℕ) : ℤ :=
  A115356.P7662483456483370118.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115566.P8073929608010892039

`∩[A066344(n+1)-1, A066344(n+1)]`
-/

namespace A115566.P8073929608010892039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066344 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115566.P8073929608010892039

noncomputable section

/-- A115566: Numbers k such that 2^k, 2^(k+1) and 2^(k+2) have the same number of digits.

Offset 1, canonical program `A115566.P8073929608010892039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5693 terms. -/
def A115566 (n : ℕ) : ℤ :=
  (A115566.P8073929608010892039.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5693 terms. -/
def A115566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115905.P435895685124942086

`eq[1, A002260(A000010(n+1)+n+2)]+1`
-/

namespace A115905.P435895685124942086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A000010 (n + 1) + (n + 2 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A115905.P435895685124942086

noncomputable section

/-- A115905: Numbers k such that k + phi(k) is a triangular number.

Offset 1, canonical program `A115905.P435895685124942086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A115905 (n : ℕ) : ℤ :=
  (A115905.P435895685124942086.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A115905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116034.P9264514749823738249

`eq[1, A001222(A000010(n+1)+A000040(n+1))]+1`
-/

namespace A116034.P9264514749823738249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000010 (n + 1) + A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A116034.P9264514749823738249

noncomputable section

/-- A116034: Numbers k such that phi(k) + prime(k) is a prime.

Offset 1, canonical program `A116034.P9264514749823738249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2248 terms. -/
def A116034 (n : ℕ) : ℤ :=
  (A116034.P9264514749823738249.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2248 terms. -/
def A116034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116391.P13583395637639638585

`A098615(n)-a(n-1)` with `a(0)=1`
-/

namespace A116391.P13583395637639638585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098615 n - a (n - 1)

end

end A116391.P13583395637639638585

noncomputable section

/-- A116391: Expansion of 1/((1+x)*(sqrt(1-4*x^2)-x)).

Offset 0, canonical program `A116391.P13583395637639638585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. -/
def A116391 (n : ℕ) : ℤ :=
  A116391.P13583395637639638585.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. -/
def A116391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116400.P9056853497896338160

`A037951(or(1, n))`
-/

namespace A116400.P9056853497896338160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037951 (Nat.lor 1 n)

end

end A116400.P9056853497896338160

noncomputable section

/-- A116400: Expansion of e.g.f. Bessel_I(2,2x) + Bessel_I(3,2x) + Bessel_I(4,2x).

Offset 0, canonical program `A116400.P9056853497896338160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A116400 (n : ℕ) : ℤ :=
  A116400.P9056853497896338160.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A116400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116409.P2006096629571327761

`3*a(n-1)-A082395(n)` with `a(0)=1`
-/

namespace A116409.P2006096629571327761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - A082395 n

end

end A116409.P2006096629571327761

noncomputable section

/-- A116409: Expansion of (1-x-2x^2+sqrt(1-2x-3x^2))/(2(1-x)(1-2x-3x^2)).

Offset 0, canonical program `A116409.P2006096629571327761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A116409 (n : ℕ) : ℤ :=
  A116409.P2006096629571327761.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A116409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116522.P4567962179520720721

`A256136(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A116522.P4567962179520720721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A256136 (n - 1) + a (n - 1)

end

end A116522.P4567962179520720721

noncomputable section

/-- A116522: a(0)=1, a(1)=1, a(n)=7*a(n/2) for n=2,4,6,..., a(n)=6*a((n-1)/2)+a((n+1)/2) for n=3,5,7,....

Offset 0, canonical program `A116522.P4567962179520720721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116522 (n : ℕ) : ℤ :=
  A116522.P4567962179520720721.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116522.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116523.P12130739933144489115

`∑[A102376(n)²]-A102376(n)²`
-/

namespace A116523.P12130739933144489115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A102376 n ^ 2

end

end A116523.P12130739933144489115

noncomputable section

/-- A116523: a(0)=1, a(1)=1, a(n) = 17*a(n/2) for n=2,4,6,..., a(n) = 16*a((n-1)/2) + a((n+1)/2) for n=3,5,7,....

Offset 0, canonical program `A116523.P12130739933144489115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116523 (n : ℕ) : ℤ :=
  A116523.P12130739933144489115.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116523.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116525.P9195124493013691138

`∑[A102377(n)]-A102377(n)`
-/

namespace A116525.P9195124493013691138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A102377 n

end

end A116525.P9195124493013691138

noncomputable section

/-- A116525: a(0)=1, a(1)=1, a(n) = 11*a(n/2) for even n, and a(n) = 10*a((n-1)/2) + a((n+1)/2) for odd n >= 3.

Offset 0, canonical program `A116525.P9195124493013691138`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116525 (n : ℕ) : ℤ :=
  A116525.P9195124493013691138.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116525.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116618.P392978224677000414

`A000045(A116614(n+1))`
-/

namespace A116618.P392978224677000414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A116614 (n + 1)).toNat

end

end A116618.P392978224677000414

noncomputable section

/-- A116618: Values of Fibonacci(n) for n such that prime(2n) mod 12 = 1.

Offset 1, canonical program `A116618.P392978224677000414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A116618 (n : ℕ) : ℤ :=
  A116618.P392978224677000414.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A116618.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116916.P8000741087611387261

`A010816(3*n)`
-/

namespace A116916.P8000741087611387261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 (3 * n)

end

end A116916.P8000741087611387261

noncomputable section

/-- A116916: Expansion of q^(-1/8) * (eta(q)^3 + 3 * eta(q^9)^3) in powers of q^3.

Offset 0, canonical program `A116916.P8000741087611387261`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010816, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A116916 (n : ℕ) : ℤ :=
  A116916.P8000741087611387261.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010816, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A116916.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A116948.P16350020595193954819

`dr(A099375(n)%3)`
-/

namespace A116948.P16350020595193954819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A099375 n) 3)

end

end A116948.P16350020595193954819

noncomputable section

/-- A116948: Riordan array ((1+2x^2)/(1-x^3),x).

Offset 0, canonical program `A116948.P16350020595193954819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116948 (n : ℕ) : ℤ :=
  (A116948.P16350020595193954819.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117163.P5779254846083457903

`∑{d}[n+1, A007427(#)*A098018((n+1)/#)]`
-/

namespace A117163.P5779254846083457903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A098018 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117163.P5779254846083457903

noncomputable section

/-- A117163: Column 2 of triangle A117162; equals the Moebius transform of A008683 (column 1 of A117162) preceded by a zero.

Offset 1, canonical program `A117163.P5779254846083457903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A117163 (n : ℕ) : ℤ :=
  A117163.P5779254846083457903.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A117163.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117187.P12842748690522836276

`A037955(or(1, n)+1)`
-/

namespace A117187.P12842748690522836276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (Nat.lor 1 n + 1)

end

end A117187.P12842748690522836276

noncomputable section

/-- A117187: Expansion of (1+x)c(x^2)/((1-x^2*c(x^2))sqrt(1-4x^2)), c(x) the g.f. of A000108.

Offset 0, canonical program `A117187.P12842748690522836276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A117187 (n : ℕ) : ℤ :=
  A117187.P12842748690522836276.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A117187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117283.P3554693747055773777

`eq[1, A010057(n+1-A000010(n+1))]+1`
-/

namespace A117283.P3554693747055773777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 ((n + 1 : ℤ) - A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A117283.P3554693747055773777

noncomputable section

/-- A117283: Numbers k for which the cototient k-phi(k) is a cube.

Offset 1, canonical program `A117283.P3554693747055773777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1625 terms. -/
def A117283 (n : ℕ) : ℤ :=
  (A117283.P3554693747055773777.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1625 terms. -/
def A117283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117290.P4275547685329266440

`record[(n+1)*A010056(n+1-A000010(n+1))]`
-/

namespace A117290.P4275547685329266440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010056 ((n + 1 : ℤ) - A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117290.P4275547685329266440

noncomputable section

/-- A117290: Numbers k for which the cototient k - phi(k) is a Fibonacci number.

Offset 1, canonical program `A117290.P4275547685329266440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1699 terms. -/
def A117290 (n : ℕ) : ℤ :=
  A117290.P4275547685329266440.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1699 terms. -/
def A117290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117377.P1485208591140608451

`2*A117362(n)-A109466(n)`
-/

namespace A117377.P1485208591140608451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117362 n - A109466 n

end

end A117377.P1485208591140608451

noncomputable section

/-- A117377: Riordan array (1-4x,x(1-x)).

Offset 0, canonical program `A117377.P1485208591140608451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117377 (n : ℕ) : ℤ :=
  A117377.P1485208591140608451.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117842.P12081368974413782069

`∑[A007918(n)]`
-/

namespace A117842.P12081368974413782069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117842.P12081368974413782069

noncomputable section

/-- A117842: Partial sum of smallest prime >= n (A007918).

Offset 0, canonical program `A117842.P12081368974413782069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117842 (n : ℕ) : ℤ :=
  A117842.P12081368974413782069.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117890.P14438909283196248010

`eq[n+1, lcm(n+1, A023416(n+1))]+1`
-/

namespace A117890.P14438909283196248010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A023416 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A117890.P14438909283196248010

noncomputable section

/-- A117890: Numbers k such that number of non-leading 0's in binary representation of k divides k.

Offset 1, canonical program `A117890.P14438909283196248010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1823 terms. -/
def A117890 (n : ℕ) : ℤ :=
  (A117890.P14438909283196248010.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1823 terms. -/
def A117890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117997.P3744563621680806174

`∑{d}[n+1, A046692(#)*A364222((n+1)/#)]`
-/

namespace A117997.P3744563621680806174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A364222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117997.P3744563621680806174

noncomputable section

/-- A117997: Sum_{d|n} a(d) = n for n = 3^m (m >= 0) and for other n the sum is zero; i.e., the Möbius transform of [1, 0, 3, 0, 0, 0, 0, 0, 9, 0,...].

Offset 1, canonical program `A117997.P3744563621680806174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117997 (n : ℕ) : ℤ :=
  A117997.P3744563621680806174.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118102.P5343364025708878754

`(n%2)^log2(A008967(n+4))`
-/

namespace A118102.P5343364025708878754
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℝ) ^ (Real.logb 2 (A008967 (n + 4) : ℝ))

end

end A118102.P5343364025708878754

noncomputable section

/-- A118102: Triangle read by rows giving successive states of cellular automaton generated by "Rule 94" initiated with a single ON (black) cell.

Offset 0, canonical program `A118102.P5343364025708878754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118102 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A118102.P5343364025708878754.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118111.P3672481769883501696

`A071037(n*a(n-1))` with `a(0)=1`
-/

namespace A118111.P3672481769883501696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A071037 ((n : ℤ) * a (n - 1)).toNat

end

end A118111.P3672481769883501696

noncomputable section

/-- A118111: Binary representation of n-th iteration of the Rule 190 elementary cellular automaton starting with a single black cell.

Offset 0, canonical program `A118111.P3672481769883501696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118111 (n : ℕ) : ℤ :=
  A118111.P3672481769883501696.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118209.P15260628061071340164

`∑{d}[n+1, A033999(#-1)*A061019((n+1)/#)]`
-/

namespace A118209.P15260628061071340164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033999 (d - 1) * A061019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A118209.P15260628061071340164

noncomputable section

/-- A118209: Expansion of Sum_{k>=1} lambda(k) * k * x^k/(1 + x^k) where lambda(k) is the Liouville function, A008836.

Offset 1, canonical program `A118209.P15260628061071340164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118209 (n : ℕ) : ℤ :=
  A118209.P15260628061071340164.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118447.P6254053121219792045

`(n+2)*A172060(n+1)`
-/

namespace A118447.P6254053121219792045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A172060 (n + 1)

end

end A118447.P6254053121219792045

noncomputable section

/-- A118447: Number of rooted n-edge one-vertex maps on the Klein bottle (dually: one-face maps).

Offset 2, canonical program `A118447.P6254053121219792045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A118447 (n : ℕ) : ℤ :=
  A118447.P6254053121219792045.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A118447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118499.P15079059931476377411

`eq[0, A106667(n+1)]+1`
-/

namespace A118499.P15079059931476377411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106667 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A118499.P15079059931476377411

noncomputable section

/-- A118499: Numbers k such that the k-th prime number is not a Chen prime.

Offset 1, canonical program `A118499.P15079059931476377411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5615 terms. -/
def A118499 (n : ℕ) : ℤ :=
  (A118499.P15079059931476377411.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5615 terms. -/
def A118499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118534.P17892582238153728483

`A062234(n+1)%A005722(A147965(n+1))`
-/

namespace A118534.P17892582238153728483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062234 (n + 1)) (A005722 (A147965 (n + 1)).toNat)

end

end A118534.P17892582238153728483

noncomputable section

/-- A118534: a(n) is the largest k such that prime(n+1) = prime(n) + (prime(n) mod k), or 0 if no such k exists.

Offset 1, canonical program `A118534.P17892582238153728483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118534 (n : ℕ) : ℤ :=
  A118534.P17892582238153728483.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118586.P6236173559146990027

`A190620(n+1)+1`
-/

namespace A118586.P6236173559146990027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190620 (n + 1) + 1

end

end A118586.P6236173559146990027

noncomputable section

/-- A118586: Numbers whose binary expansion contains group of at least two 1's followed by a nonempty group of 0's.

Offset 1, canonical program `A118586.P6236173559146990027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118586 (n : ℕ) : ℤ :=
  A118586.P6236173559146990027.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118754.P3684221222791973926

`A007918(A008587(n))`
-/

namespace A118754.P3684221222791973926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A008587 n).toNat

end

end A118754.P3684221222791973926

noncomputable section

/-- A118754: Smallest prime >= 5*n.

Offset 0, canonical program `A118754.P3684221222791973926`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118754 (n : ℕ) : ℤ :=
  A118754.P3684221222791973926.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118754.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A118755.P17339163490274864131

`A007918(A008588(n))`
-/

namespace A118755.P17339163490274864131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A008588 n).toNat

end

end A118755.P17339163490274864131

noncomputable section

/-- A118755: Smallest prime >= 6*n.

Offset 0, canonical program `A118755.P17339163490274864131`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118755 (n : ℕ) : ℤ :=
  A118755.P17339163490274864131.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118755.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A118953.P11235668260339629374

`A107279(A091931(n+1))`
-/

namespace A118953.P11235668260339629374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A091931 (n + 1)).toNat

end

end A118953.P11235668260339629374

noncomputable section

/-- A118953: Number of ways to write the n-th prime as 2^k + p, where p is prime and p < 2^k.

Offset 1, canonical program `A118953.P11235668260339629374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A118953 (n : ℕ) : ℤ :=
  A118953.P11235668260339629374.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A118953.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118958.P10422470674657479766

`p?[A107279(A091931(n+1))+A000040(n+1)]`
-/

namespace A118958.P10422470674657479766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A091931 (n + 1)).toNat + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118958.P10422470674657479766

noncomputable section

/-- A118958: Primes that cannot be written as 2^k + p with p prime < 2^k.

Offset 1, canonical program `A118958.P10422470674657479766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1253 terms. -/
def A118958 (n : ℕ) : ℤ :=
  A118958.P10422470674657479766.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1253 terms. -/
def A118958.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119526.P17309535747538120691

`A027611(2^n)`
-/

namespace A119526.P17309535747538120691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027611 (2 ^ n)

end

end A119526.P17309535747538120691

noncomputable section

/-- A119526: Odd denominators of n * n-th harmonic number = A027611[2^n].

Offset 0, canonical program `A119526.P17309535747538120691`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027611, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A119526 (n : ℕ) : ℤ :=
  A119526.P17309535747538120691.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027611, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A119526.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A119733.P1003967431730408942

`(A116640(n)-A048883(n))/2`
-/

namespace A119733.P1003967431730408942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116640 n - A048883 n : ℚ) / 2

end

end A119733.P1003967431730408942

noncomputable section

/-- A119733: Offsets of the terms of the nodes of the reverse Collatz function.

Offset 0, canonical program `A119733.P1003967431730408942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119733 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A119733.P1003967431730408942.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119900.P12631817968393924084

`C(∑[A010054(n)], A099375(n))`
-/

namespace A119900.P12631817968393924084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat (A099375 n).toNat

end

end A119900.P12631817968393924084

noncomputable section

/-- A119900: Triangle read by rows: T(n,k) is the number of binary words of length n with k strictly increasing runs, for 0<=k<=n.

Offset 0, canonical program `A119900.P12631817968393924084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119900 (n : ℕ) : ℤ :=
  (A119900.P12631817968393924084.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119921.P12501731158706764017

`2^(n+1)*A119917(n+1)`
-/

namespace A119921.P12501731158706764017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A119917 (n + 1)

end

end A119921.P12501731158706764017

noncomputable section

/-- A119921: Number of rationals in [0, 1) having at most n preperiodic bits, then at most n periodic bits.

Offset 1, canonical program `A119921.P12501731158706764017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A119921 (n : ℕ) : ℤ :=
  A119921.P12501731158706764017.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A119921.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120108.P13431050358684570806

`A003418(A002024(n+1))/a(A112367(n))` with `a(0)=1`
-/

namespace A120108.P13431050358684570806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A003418 (A002024 (n + 1)).toNat : ℚ) / a (A112367 n).toNat

end

end A120108.P13431050358684570806

noncomputable section

/-- A120108: Number triangle T(n,k) = lcm(1,..,n+1)/lcm(1,..,k+1).

Offset 0, canonical program `A120108.P13431050358684570806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5051 terms. -/
def A120108 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A120108.P13431050358684570806.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5051 terms. -/
def A120108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120351.P11340224125315453001

`record[2*(n+1)/A000010(A090387(n+1))]`
-/

namespace A120351.P11340224125315453001
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) / (A000010 (A090387 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120351.P11340224125315453001

noncomputable section

/-- A120351: Even numbers k such that the number of odd divisors r and the number of even divisors s are both divisors of k.

Offset 1, canonical program `A120351.P11340224125315453001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120351 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A120351.P11340224125315453001.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120387.P9382839840075496527

`ceil((n+1)/2)*A289207(A110560(n))`
-/

namespace A120387.P9382839840075496527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 2⌉ * A289207 (A110560 n).toNat

end

end A120387.P9382839840075496527

noncomputable section

/-- A120387: c(n) mod b(n) where c(n) = (n-1)! and b(n) = Sum_{i=1..n} i.

Offset 1, canonical program `A120387.P9382839840075496527`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120387 (n : ℕ) : ℤ :=
  A120387.P9382839840075496527.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120438.P18071063481821398629

`A141035(A094743(n+2))`
-/

namespace A120438.P18071063481821398629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141035 (A094743 (n + 2)).toNat

end

end A120438.P18071063481821398629

noncomputable section

/-- A120438: Average of twin-prime pairs modulo 10 (least absolute residue).

Offset 1, canonical program `A120438.P18071063481821398629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A120438 (n : ℕ) : ℤ :=
  A120438.P18071063481821398629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A120438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120753.P16636594811176197176

`∪[A001954(n), A083051(n)]`
-/

namespace A120753.P16636594811176197176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083051 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120753.P16636594811176197176

noncomputable section

/-- A120753: Numbers k such that {rk} > c, where r = (1/2)^(1/2), c = 1/2 and { } denotes fractional part.

Offset 1, canonical program `A120753.P16636594811176197176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120753 (n : ℕ) : ℤ :=
  (A120753.P16636594811176197176.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120890.P8934076253784631552

`∑[2*char[∑[A024361(2*n+1)]]]+1`
-/

namespace A120890.P8934076253784631552
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A120890.P8934076253784631552

noncomputable section

/-- A120890: Ordered odd leg of primitive Pythagorean triangles.

Offset 1, canonical program `A120890.P8934076253784631552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120890 (n : ℕ) : ℤ :=
  (A120890.P8934076253784631552.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120891.P14989150919995251867

`A024361(Δ[n²])`
-/

namespace A120891.P14989150919995251867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A120891.P14989150919995251867

noncomputable section

/-- A120891: Number of primitive Pythagorean triangles with odd leg 2n-1.

Offset 1, canonical program `A120891.P14989150919995251867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120891 (n : ℕ) : ℤ :=
  A120891.P14989150919995251867.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121281.P9987452267455542035

`A077011(((n+1)²+2)%A014132(n+1))`
-/

namespace A121281.P9987452267455542035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077011 (Int.tmod ((n + 1) ^ 2 + 2 : ℤ) (A014132 (n + 1))).toNat

end

end A121281.P9987452267455542035

noncomputable section

/-- A121281: Triangle T(n,k) read by rows: T(n,0) = A002110(n) and T(n,k) = A002110(n)/prime(k) for 1<=k<=n.

Offset 0, canonical program `A121281.P9987452267455542035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1485 terms. -/
def A121281 (n : ℕ) : ℤ :=
  A121281.P9987452267455542035.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1485 terms. -/
def A121281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121446.P4493713673701244054

`A006013(A028310(n))+A001764(n)`
-/

namespace A121446.P4493713673701244054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 (A028310 n).toNat + A001764 n

end

end A121446.P4493713673701244054

noncomputable section

/-- A121446: Number of ternary trees with n edges and such that the first leaf in the preorder traversal is at level 1.

Offset 1, canonical program `A121446.P4493713673701244054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A121446 (n : ℕ) : ℤ :=
  A121446.P4493713673701244054.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A121446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121495.P8991942477691651037

`A120944(eq[1, A120944(n+2)-A120944(n+1)]+1)`
-/

namespace A121495.P8991942477691651037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 2) - A120944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A121495.P8991942477691651037

noncomputable section

/-- A121495: Numbers k such that k and k+1 are composite and squarefree.

Offset 1, canonical program `A121495.P8991942477691651037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4813 terms. -/
def A121495 (n : ℕ) : ℤ :=
  A121495.P8991942477691651037.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4813 terms. -/
def A121495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121998.P10241062648816022235

`A002260(eq[0, A054521(n+1)]+1)`
-/

namespace A121998.P10241062648816022235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A121998.P10241062648816022235

noncomputable section

/-- A121998: Table, n-th row gives numbers between 1 and n that have a common factor with n.

Offset 2, canonical program `A121998.P10241062648816022235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3915 terms. -/
def A121998 (n : ℕ) : ℤ :=
  A121998.P10241062648816022235.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3915 terms. -/
def A121998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122071.P3435191698193599100

`A113411(n)/A254046(n+1)`
-/

namespace A122071.P3435191698193599100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113411 n : ℚ) / (A254046 (n + 1) : ℚ)

end

end A122071.P3435191698193599100

noncomputable section

/-- A122071: Sum over divisors d of 2n+1 of Kronecker(-18/d).

Offset 0, canonical program `A122071.P3435191698193599100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122071 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A122071.P3435191698193599100.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122198.P6463846619944974187

`A122155(A053644(n)+a(A053645(n)))` with `a(0)=0`
-/

namespace A122198.P6463846619944974187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A122155 (A053644 n + a (A053645 n).toNat).toNat

end

end A122198.P6463846619944974187

noncomputable section

/-- A122198: Permutation of natural numbers: a recursed variant of A122155.

Offset 0, canonical program `A122198.P6463846619944974187`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122155, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122198 (n : ℕ) : ℤ :=
  A122198.P6463846619944974187.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122155, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122198.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A122199.P17065714589425841115

`A053644(A122155(n))+a(A053645(A122155(n)))` with `a(0)=0`
-/

namespace A122199.P17065714589425841115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A053644 (A122155 n).toNat + a (A053645 (A122155 n).toNat).toNat

end

end A122199.P17065714589425841115

noncomputable section

/-- A122199: Permutation of natural numbers: a recursed variant of A122155.

Offset 0, canonical program `A122199.P17065714589425841115`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122155, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122199 (n : ℕ) : ℤ :=
  A122199.P17065714589425841115.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122155, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122199.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A122410.P12302092588494273292

`∑{d}[n+1, A000010(#)*A100995((n+1)/#)]`
-/

namespace A122410.P12302092588494273292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A100995 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A122410.P12302092588494273292

noncomputable section

/-- A122410: a(n) is the sum of j's for those k's, 1 <= k <= n, where gcd(k,n) = p^j, p = prime.

Offset 1, canonical program `A122410.P12302092588494273292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122410 (n : ℕ) : ℤ :=
  A122410.P12302092588494273292.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122737.P5352890692816768516

`record[Δ[2*A055879(n+1)]]`
-/

namespace A122737.P5352890692816768516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055879 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122737.P5352890692816768516

noncomputable section

/-- A122737: Expansion of 1 - 3*x - sqrt(1 - 6*x + 5*x^2).

Offset 1, canonical program `A122737.P5352890692816768516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A122737 (n : ℕ) : ℤ :=
  A122737.P5352890692816768516.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A122737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122754.P1087166714470174862

`10*(n+1)-A101306(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A122754.P1087166714470174862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * (n + 1) : ℤ) - A101306 (n + 1)

end

end A122754.P1087166714470174862

noncomputable section

/-- A122754: a(n) = 10*n - A101306(n).

Offset 1, canonical program `A122754.P1087166714470174862`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101306, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122754 (n : ℕ) : ℤ :=
  A122754.P1087166714470174862.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101306, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122754.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A122759.P12807643020116895536

`A254006(A211197(n+1)-1)`
-/

namespace A122759.P12807643020116895536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254006 (A211197 (n + 1) - 1).toNat

end

end A122759.P12807643020116895536

noncomputable section

/-- A122759: Triangle T(n,m) read by rows: 3^n if m is odd, 0 if m is even.

Offset 1, canonical program `A122759.P12807643020116895536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122759 (n : ℕ) : ℤ :=
  A122759.P12807643020116895536.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122759.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122896.P5573786396997735909

`(A035214(n)+A000122(n))%2*A026300(A056943(n))`
-/

namespace A122896.P5573786396997735909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035214 n + A000122 n) 2 * A026300 (A056943 n).toNat

end

end A122896.P5573786396997735909

noncomputable section

/-- A122896: Riordan array (1, (1 - x - sqrt(1 - 2*x - 3*x^2)) / (2*x)), a Riordan array for directed animals. Triangle read by rows.

Offset 0, canonical program `A122896.P5573786396997735909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122896 (n : ℕ) : ℤ :=
  A122896.P5573786396997735909.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123272.P13833021826799175583

`char[A029709(n+1)-(n+4)]`
-/

namespace A123272.P13833021826799175583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029709 (n + 1) - (n + 4 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A123272.P13833021826799175583

noncomputable section

/-- A123272: Number of primes between consecutive terms of A105575.

Offset 1, canonical program `A123272.P13833021826799175583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A123272 (n : ℕ) : ℤ :=
  (A123272.P13833021826799175583.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A123272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123528.P10938157915258155333

`A001414(n+2)/A373369(n+2)`
-/

namespace A123528.P10938157915258155333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001414 (n + 2) : ℚ) / (A373369 (n + 2) : ℚ)

end

end A123528.P10938157915258155333

noncomputable section

/-- A123528: Numerator of average of prime factors of n.

Offset 2, canonical program `A123528.P10938157915258155333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123528 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A123528.P10938157915258155333.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123529.P8735211021576388131

`(A001414(n+2)-A059975(n+2))/A373369(n+2)`
-/

namespace A123529.P8735211021576388131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001414 (n + 2) - A059975 (n + 2) : ℚ) / (A373369 (n + 2) : ℚ)

end

end A123529.P8735211021576388131

noncomputable section

/-- A123529: Denominator of average of prime factors of n.

Offset 2, canonical program `A123529.P8735211021576388131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A123529 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A123529.P8735211021576388131.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A123529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123594.P17678384235713202492

`a(A049705(n-1))` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A123594.P17678384235713202492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  a (A049705 (n - 1)).toNat

end

end A123594.P17678384235713202492

noncomputable section

/-- A123594: Unique sequence of 0's and 1's which are either repeated or not repeated with the following property: when the sequence is 'coded' in writing down a 1 when an element is repeated and a 0 when it is not repeated and by putting the initial element in front of the sequence thus obtained, the above sequence appears.

Offset 1, canonical program `A123594.P17678384235713202492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 620 terms. -/
def A123594 (n : ℕ) : ℤ :=
  (A123594.P17678384235713202492.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 620 terms. -/
def A123594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123982.P2523592801930380568

`eq[A167020(2*n+1)*A167020(2*(n+1)), A072815(2*n)]`
-/

namespace A123982.P2523592801930380568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (2 * n + 1) * A167020 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072815 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A123982.P2523592801930380568

noncomputable section

/-- A123982: Numbers k such that 12*k+1, 12*k+5 and 12*k+11 are primes.

Offset 1, canonical program `A123982.P2523592801930380568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A123982 (n : ℕ) : ℤ :=
  (A123982.P2523592801930380568.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A123982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124203.P14562224082085473422

`3*n+2-A055945(n)`
-/

namespace A124203.P14562224082085473422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (2 - A055945 n)

end

end A124203.P14562224082085473422

noncomputable section

/-- A124203: a(n) = 2n + "reverse of n-written-in-binary" + 2.

Offset 0, canonical program `A124203.P14562224082085473422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A124203 (n : ℕ) : ℤ :=
  A124203.P14562224082085473422.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A124203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124329.P6428482438132731248

`∑[A090345(n+1)]`
-/

namespace A124329.P6428482438132731248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124329.P6428482438132731248

noncomputable section

/-- A124329: Number of ordered trees with n edges, with thinning limbs and with root of degree 2. An ordered tree with thinning limbs is such that if a node has k children, all its children have at most k children.

Offset 1, canonical program `A124329.P6428482438132731248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 253 terms. -/
def A124329 (n : ℕ) : ℤ :=
  A124329.P6428482438132731248.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 253 terms. -/
def A124329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124669.P372249676640486101

`record[A116570(n)-2]`
-/

namespace A124669.P372249676640486101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124669.P372249676640486101

noncomputable section

/-- A124669: Product of successive primes minus 2.

Offset 1, canonical program `A124669.P372249676640486101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A124669 (n : ℕ) : ℤ :=
  A124669.P372249676640486101.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A124669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124757.P9485539278718531348

`a(∑[char[2*n]]-1)+n-A011371(n)-1` with `a(0)=0`
-/

namespace A124757.P9485539278718531348
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j - 1) + (n : ℤ) - A011371 n - 1

end

end A124757.P9485539278718531348

noncomputable section

/-- A124757: Zero-based weighted sum of compositions in standard order.

Offset 0, canonical program `A124757.P9485539278718531348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124757 (n : ℕ) : ℤ :=
  A124757.P9485539278718531348.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124825.P846435702103164471

`∩[A102342(n+1), A111250(n+1)]`
-/

namespace A124825.P846435702103164471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124825.P846435702103164471

noncomputable section

/-- A124825: Numbers k such that 10k + 7 and 7k + 10 are primes.

Offset 1, canonical program `A124825.P846435702103164471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1561 terms. -/
def A124825 (n : ℕ) : ℤ :=
  (A124825.P846435702103164471.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1561 terms. -/
def A124825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124926.P9374051233560020075

`A091867(A061579(n))`
-/

namespace A124926.P9374051233560020075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091867 (A061579 n).toNat

end

end A124926.P9374051233560020075

noncomputable section

/-- A124926: Triangle read by rows: T(n,k) = binomial(n,k)*r(k), where r(k) are the Riordan numbers (r(k) = A005043(k); 0 <= k <= n).

Offset 0, canonical program `A124926.P9374051233560020075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A124926 (n : ℕ) : ℤ :=
  A124926.P9374051233560020075.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A124926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125030.P7178529687584953587

`A123391(n+1)+A125029(n+1)-A101436(n+1)`
-/

namespace A125030.P7178529687584953587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123391 (n + 1) + (A125029 (n + 1) - A101436 (n + 1))

end

end A125030.P7178529687584953587

noncomputable section

/-- A125030: a(n) = sum of exponents in the prime factorization of n that are noncomposite.

Offset 1, canonical program `A125030.P7178529687584953587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125030 (n : ℕ) : ℤ :=
  A125030.P7178529687584953587.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125071.P2644380535759538615

`∑{e}[n+1, A191558(#)]`
-/

namespace A125071.P2644380535759538615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A191558 (Nat.factorization (f1 n) p)

end

end A125071.P2644380535759538615

noncomputable section

/-- A125071: a(n) = sum of the exponents in the prime factorization of n which are not primes.

Offset 1, canonical program `A125071.P2644380535759538615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125071 (n : ℕ) : ℤ :=
  A125071.P2644380535759538615.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125495.P14051159433659481115

`filter[A000069(n+2), A005171(#)]`
-/

namespace A125495.P14051159433659481115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A125495.P14051159433659481115

noncomputable section

/-- A125495: Composite odious numbers.

Offset 1, canonical program `A125495.P14051159433659481115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8717 terms. -/
def A125495 (n : ℕ) : ℤ :=
  A125495.P14051159433659481115.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8717 terms. -/
def A125495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125498.P12583085300510792170

`record[(n*n²)^and(1, A192085(n))]`
-/

namespace A125498.P12583085300510792170
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * n ^ 2 : ℚ) ^ (Int.land 1 (A192085 n) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125498.P12583085300510792170

noncomputable section

/-- A125498: Odious cubes.

Offset 1, canonical program `A125498.P12583085300510792170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4949 terms. -/
def A125498 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A125498.P12583085300510792170.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4949 terms. -/
def A125498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125902.P12495455694751999864

`A007504(A229109(n+1))-A008472(n+1)`
-/

namespace A125902.P12495455694751999864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A229109 (n + 1)).toNat - A008472 (n + 1)

end

end A125902.P12495455694751999864

noncomputable section

/-- A125902: a(n) = sum of the first n primes which are coprime to n.

Offset 1, canonical program `A125902.P12495455694751999864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125902 (n : ℕ) : ℤ :=
  A125902.P12495455694751999864.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126106.P3127223409629631580

`record[A000010(n)+a(A000010(n))]` with `a(0)=0, a(1)=0`
-/

namespace A126106.P3127223409629631580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  A000010 n + f1 (A000010 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126106.P3127223409629631580

noncomputable section

/-- A126106: Record values in A092693 = sum of iterated phi(n).

Offset 1, canonical program `A126106.P3127223409629631580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. -/
def A126106 (n : ℕ) : ℤ :=
  A126106.P3127223409629631580.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. -/
def A126106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126120.P11676298334808492124

`A097331(n+1)`
-/

namespace A126120.P11676298334808492124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (n + 1)

end

end A126120.P11676298334808492124

noncomputable section

/-- A126120: Catalan numbers (A000108) interpolated with 0's.

Offset 0, canonical program `A126120.P11676298334808492124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A126120 (n : ℕ) : ℤ :=
  A126120.P11676298334808492124.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A126120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126205.P8861598925400809168

`∑{digits}[3^n, A075897(#+21)]`
-/

namespace A126205.P8861598925400809168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A075897 (x + 21)).sum

end

end A126205.P8861598925400809168

noncomputable section

/-- A126205: Number of 3's in decimal expansion of 3^n, with n>=0.

Offset 0, canonical program `A126205.P8861598925400809168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A126205 (n : ℕ) : ℤ :=
  A126205.P8861598925400809168.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A126205.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126324.P3611906249858251984

`gcd(3*A097331(n), A097331(n+1))`
-/

namespace A126324.P3611906249858251984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (3 * A097331 n) (A097331 (n + 1))

end

end A126324.P3611906249858251984

noncomputable section

/-- A126324: a(2n) = Cat(n), a(2n+1) = 3*Cat(n), where Cat(n) = binomial(2n,n)/(n+1) are the Catalan numbers (A000108).

Offset 0, canonical program `A126324.P3611906249858251984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 345 terms. -/
def A126324 (n : ℕ) : ℤ :=
  (A126324.P3611906249858251984.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 345 terms. -/
def A126324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126332.P1973723424677393430

`floor(A111225(n+1)/2)`
-/

namespace A126332.P1973723424677393430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A111225 (n + 1) : ℚ) / 2⌋

end

end A126332.P1973723424677393430

noncomputable section

/-- A126332: Numbers k such that 10k + 13 is prime.

Offset 1, canonical program `A126332.P1973723424677393430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126332 (n : ℕ) : ℤ :=
  A126332.P1973723424677393430.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127139.P9104165502177887580

`∑{d}[A126988(n+1), A046692(#)]`
-/

namespace A127139.P9104165502177887580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A046692 d

end

end A127139.P9104165502177887580

noncomputable section

/-- A127139: Inverse triangle of A126988.

Offset 1, canonical program `A127139.P9104165502177887580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127139 (n : ℕ) : ℤ :=
  A127139.P9104165502177887580.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127170.P7991433110268517964

`∑{d}[A126988(n+1), A057427(#)]`
-/

namespace A127170.P7991433110268517964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 d

end

end A127170.P7991433110268517964

noncomputable section

/-- A127170: Triangle read by rows: T(n,k) is the number of divisors of n that are divisible by k, with 1 <= k <= n.

Offset 1, canonical program `A127170.P7991433110268517964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127170 (n : ℕ) : ℤ :=
  A127170.P7991433110268517964.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127322.P8390602753419418213

`A023416(A006257(eq[4, A000120(n)]))`
-/

namespace A127322.P8390602753419418213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A006257 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A127322.P8390602753419418213

noncomputable section

/-- A127322: Second 4-dimensional hyper-tetrahedral coordinate; 4-D analog of A056557.

Offset 0, canonical program `A127322.P8390602753419418213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A127322 (n : ℕ) : ℤ :=
  A127322.P8390602753419418213.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A127322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127324.P10851335711510860639

`val(A038466(n+1), 3)`
-/

namespace A127324.P10851335711510860639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A038466 (n + 1)).toNat 3

end

end A127324.P10851335711510860639

noncomputable section

/-- A127324: Fourth 4-dimensional hyper-tetrahedral coordinate; 4-D analog of A056558.

Offset 0, canonical program `A127324.P10851335711510860639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127324 (n : ℕ) : ℤ :=
  (A127324.P10851335711510860639.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127333.P6306977747944234696

`A034964(n+2)+A000040(n+1)`
-/

namespace A127333.P6306977747944234696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 2) + A000040 (n + 1)

end

end A127333.P6306977747944234696

noncomputable section

/-- A127333: Numbers that are the sum of 6 consecutive primes.

Offset 1, canonical program `A127333.P6306977747944234696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A127333 (n : ℕ) : ℤ :=
  A127333.P6306977747944234696.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A127333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127348.P2677906627502020316

`A127345(n+2)+A000040(n+1)*A034961(n+2)`
-/

namespace A127348.P2677906627502020316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127345 (n + 2) + A000040 (n + 1) * A034961 (n + 2)

end

end A127348.P2677906627502020316

noncomputable section

/-- A127348: Coefficient of x^2 in the polynomial (x-p(n))*(x-p(n+1))*(x-p(n+2))*(x-p(n+3)), where p(k) is the k-th prime.

Offset 1, canonical program `A127348.P2677906627502020316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A127348 (n : ℕ) : ℤ :=
  A127348.P2677906627502020316.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A127348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127415.P2427589428552924877

`(A053818(n+1)+A023896(n+1))/2`
-/

namespace A127415.P2427589428552924877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053818 (n + 1) + A023896 (n + 1) : ℚ) / 2

end

end A127415.P2427589428552924877

noncomputable section

/-- A127415: a(n) = Sum_{1<=k<=n, gcd(k,n)=1}, A000217(k).

Offset 1, canonical program `A127415.P2427589428552924877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127415 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A127415.P2427589428552924877.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127449.P14956762782820329988

`A054521(n+1)*A054531(n+1)`
-/

namespace A127449.P14956762782820329988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1) * A054531 (n + 1)

end

end A127449.P14956762782820329988

noncomputable section

/-- A127449: Triangle T(n,k) = n if gcd(n,k)=1, =0 otherwise.

Offset 1, canonical program `A127449.P14956762782820329988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127449 (n : ℕ) : ℤ :=
  A127449.P14956762782820329988.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127536.P3976489637807869491

`A262394(n+1)+A262394(n+1)-A006013(n+1)`
-/

namespace A127536.P3976489637807869491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262394 (n + 1) + (A262394 (n + 1) - A006013 (n + 1))

end

end A127536.P3976489637807869491

noncomputable section

/-- A127536: Sum of jump-lengths of all even trees with 2n edges.

Offset 1, canonical program `A127536.P3976489637807869491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A127536 (n : ℕ) : ℤ :=
  A127536.P3976489637807869491.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A127536.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127577.P11497758234224317345

`record[A057979(A127575(n+4))]`
-/

namespace A127577.P11497758234224317345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A127575 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127577.P11497758234224317345

noncomputable section

/-- A127577: Numbers n for which 32n+31 is prime.

Offset 1, canonical program `A127577.P11497758234224317345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 909 terms. -/
def A127577 (n : ℕ) : ℤ :=
  A127577.P11497758234224317345.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 909 terms. -/
def A127577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127640.P1363589885829058691

`A005145(n+1)*A023531(n)`
-/

namespace A127640.P1363589885829058691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (n + 1) * A023531 n

end

end A127640.P1363589885829058691

noncomputable section

/-- A127640: Triangle read by rows in which row n contains n-1 0's followed by prime(n).

Offset 1, canonical program `A127640.P1363589885829058691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127640 (n : ℕ) : ℤ :=
  A127640.P1363589885829058691.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127648.P14273563626416826954

`Δ[A061885(n)]-1`
-/

namespace A127648.P14273563626416826954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A127648.P14273563626416826954

noncomputable section

/-- A127648: Triangle read by rows: row n consists of n zeros followed by n+1.

Offset 0, canonical program `A127648.P14273563626416826954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127648 (n : ℕ) : ℤ :=
  A127648.P14273563626416826954.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127773.P3035698408442550692

`C(Δ[A061885(n)], 2)`
-/

namespace A127773.P3035698408442550692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat 2

end

end A127773.P3035698408442550692

noncomputable section

/-- A127773: Triangle read by rows: row n consists of n-1 zeros followed by n(n+1)/2.

Offset 1, canonical program `A127773.P3035698408442550692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127773 (n : ℕ) : ℤ :=
  (A127773.P3035698408442550692.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128059.P6275643782124807022

`A110560(A325168(n+1))`
-/

namespace A128059.P6275643782124807022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 (A325168 (n + 1)).toNat

end

end A128059.P6275643782124807022

noncomputable section

/-- A128059: a(n) = numerator((2*n-1)^2/(2*(2*n)!)).

Offset 0, canonical program `A128059.P6275643782124807022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A128059 (n : ℕ) : ℤ :=
  A128059.P6275643782124807022.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A128059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128137.P5492606734270784235

`Δ[A025581(n)]+2*A112367(n)`
-/

namespace A128137.P5492606734270784235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A112367 n

end

end A128137.P5492606734270784235

noncomputable section

/-- A128137: A002260 * A128132.

Offset 1, canonical program `A128137.P5492606734270784235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A128137 (n : ℕ) : ℤ :=
  A128137.P5492606734270784235.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A128137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128181.P677379216419681310

`A002260(n+1)*A128175(n+1)`
-/

namespace A128181.P677379216419681310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A128175 (n + 1)

end

end A128181.P677379216419681310

noncomputable section

/-- A128181: A007318 * A128179 as infinite lower triangular matrices.

Offset 1, canonical program `A128181.P677379216419681310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128181 (n : ℕ) : ℤ :=
  A128181.P677379216419681310.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128221.P5768733803824572043

`A028310(A128179(n+1))`
-/

namespace A128221.P5768733803824572043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A128179 (n + 1)).toNat

end

end A128221.P5768733803824572043

noncomputable section

/-- A128221: A128174 * A127701.

Offset 1, canonical program `A128221.P5768733803824572043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128221 (n : ℕ) : ℤ :=
  A128221.P5768733803824572043.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128288.P7303772657565545819

`A023163(n+2)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A128288.P7303772657565545819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023163 (n + 2) : ℚ) / 3

end

end A128288.P7303772657565545819

noncomputable section

/-- A128288: a(n) = A023163(n)/3 for n > 1.

Offset 2, canonical program `A128288.P7303772657565545819`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023163, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128288 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A128288.P7303772657565545819.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023163, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128288.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A128430.P7978969669841181230

`a(n-1)-A054524(n)` with `a(0)=1`
-/

namespace A128430.P7978969669841181230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A054524 n

end

end A128430.P7978969669841181230

noncomputable section

/-- A128430: Triangle read by rows: A054524 * A000012.

Offset 1, canonical program `A128430.P7978969669841181230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128430 (n : ℕ) : ℤ :=
  A128430.P7978969669841181230.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128430.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A128488.P2749553590906552551

`(n+1)*A126080(n+1)/2`
-/

namespace A128488.P2749553590906552551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A126080 (n + 1) : ℚ) / 2

end

end A128488.P2749553590906552551

noncomputable section

/-- A128488: a(n) = sum of terms in n-th row of irregular table A128487.

Offset 1, canonical program `A128488.P2749553590906552551`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126080, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128488 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A128488.P2749553590906552551.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126080, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128488.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A128618.P684338942941651446

`A000045(A128179(n+1))`
-/

namespace A128618.P684338942941651446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A128179 (n + 1)).toNat

end

end A128618.P684338942941651446

noncomputable section

/-- A128618: Triangle read by rows: A128174 * A127647 as infinite lower triangular matrices.

Offset 1, canonical program `A128618.P684338942941651446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128618 (n : ℕ) : ℤ :=
  A128618.P684338942941651446.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128618.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128746.P14051206347353493942

`A045445(n+1)+∑[A045890(n)]`
-/

namespace A128746.P14051206347353493942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045445 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128746.P14051206347353493942

noncomputable section

/-- A128746: Height of the last peak summed over all skew Dyck paths of semilength n.

Offset 1, canonical program `A128746.P14051206347353493942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A128746 (n : ℕ) : ℤ :=
  A128746.P14051206347353493942.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A128746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128937.P8237969011932924957

`A117178(n)%2`
-/

namespace A128937.P8237969011932924957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117178 n) 2

end

end A128937.P8237969011932924957

noncomputable section

/-- A128937: Triangle formed by reading A039598 mod 2.

Offset 0, canonical program `A128937.P8237969011932924957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128937 (n : ℕ) : ℤ :=
  A128937.P8237969011932924957.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129237.P13854613413185122732

`∑{d}[A126988(n+1), A002262(n)+#]`
-/

namespace A129237.P13854613413185122732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A002262 n + (d : ℤ))

end

end A129237.P13854613413185122732

noncomputable section

/-- A129237: A051731 * A129234.

Offset 1, canonical program `A129237.P13854613413185122732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129237 (n : ℕ) : ℤ :=
  A129237.P13854613413185122732.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129353.P12434210787401024625

`val(A004277(A126988(n+1)), 2)`
-/

namespace A129353.P12434210787401024625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A004277 (A126988 (n + 1)).toNat).toNat 2

end

end A129353.P12434210787401024625

noncomputable section

/-- A129353: Triangle read by rows: A051731 * A115361 as infinite lower triangular matrices.

Offset 1, canonical program `A129353.P12434210787401024625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129353 (n : ℕ) : ℤ :=
  (A129353.P12434210787401024625.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129555.P480594090586041492

`A026741(A126988(n+1))`
-/

namespace A129555.P480594090586041492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A126988 (n + 1)).toNat

end

end A129555.P480594090586041492

noncomputable section

/-- A129555: A054523 * A129372.

Offset 0, canonical program `A129555.P480594090586041492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129555 (n : ℕ) : ℤ :=
  A129555.P480594090586041492.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129689.P16579253702323434123

`2*A128175(n+1)-A007318(n)`
-/

namespace A129689.P16579253702323434123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128175 (n + 1) - A007318 n

end

end A129689.P16579253702323434123

noncomputable section

/-- A129689: A007318 * A129688.

Offset 1, canonical program `A129689.P16579253702323434123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129689 (n : ℕ) : ℤ :=
  A129689.P16579253702323434123.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129691.P5534431629163071465

`∑{d}[A126988(n+1), A055615(#)]`
-/

namespace A129691.P5534431629163071465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A055615 d

end

end A129691.P5534431629163071465

noncomputable section

/-- A129691: Inverse of A054523.

Offset 1, canonical program `A129691.P5534431629163071465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129691 (n : ℕ) : ℤ :=
  A129691.P5534431629163071465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129827.P12783245347972754053

`eq[2, A007913(A000010(n+1))]+1`
-/

namespace A129827.P12783245347972754053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A129827.P12783245347972754053

noncomputable section

/-- A129827: Numbers k such that Euler's totient phi(k) divided by 2 is a perfect square.

Offset 1, canonical program `A129827.P12783245347972754053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1163 terms. -/
def A129827 (n : ℕ) : ℤ :=
  (A129827.P12783245347972754053.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1163 terms. -/
def A129827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129996.P8436117696571961404

`A129110(n+1)-A129110(n)`
-/

namespace A129996.P8436117696571961404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129110 (n + 1) - A129110 n

end

end A129996.P8436117696571961404

noncomputable section

/-- A129996: a(n) = (-1)^[(n+1)/2] A000108([n/2]+1).

Offset 0, canonical program `A129996.P8436117696571961404`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129110, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129996 (n : ℕ) : ℤ :=
  A129996.P8436117696571961404.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129110, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129996.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A130055.P931187158883398319

`A127093(n+1)*A130054(A010766(n+1))`
-/

namespace A130055.P931187158883398319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) * A130054 (A010766 (n + 1)).toNat

end

end A130055.P931187158883398319

noncomputable section

/-- A130055: A129691 * A127093.

Offset 1, canonical program `A130055.P931187158883398319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130055 (n : ℕ) : ℤ :=
  A130055.P931187158883398319.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130159.P6657811149609093730

`∑{d}[n+1, A000069(#)*A008683((n+1)/#)]`
-/

namespace A130159.P6657811149609093730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000069 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130159.P6657811149609093730

noncomputable section

/-- A130159: A054525 * A000069.

Offset 1, canonical program `A130159.P6657811149609093730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130159 (n : ℕ) : ℤ :=
  A130159.P6657811149609093730.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130159.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130248.P17937413160944975329

`∑[A130247(n+1)]`
-/

namespace A130248.P17937413160944975329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130248.P17937413160944975329

noncomputable section

/-- A130248: Partial sums of the Lucas Inverse A130247.

Offset 1, canonical program `A130248.P17937413160944975329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130248 (n : ℕ) : ℤ :=
  A130248.P17937413160944975329.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130269.P4089145140288437489

`A127739(n+1)+A112367(n)`
-/

namespace A130269.P4089145140288437489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (n + 1) + A112367 n

end

end A130269.P4089145140288437489

noncomputable section

/-- A130269: A002260 * A051340.

Offset 1, canonical program `A130269.P4089145140288437489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130269 (n : ℕ) : ℤ :=
  A130269.P4089145140288437489.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130319.P11129835434070302658

`record[A191558(A080513(n))+A004524(n)]`
-/

namespace A130319.P11129835434070302658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A080513 n).toNat + A004524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130319.P11129835434070302658

noncomputable section

/-- A130319: Numbers k for which k!!/S(k) is an integer, where S(k) is the sum of all odd numbers less than or equal to k, if k is odd, or the sum of all even numbers less than or equal to k, if k is even.

Offset 0, canonical program `A130319.P11129835434070302658`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6164 terms. -/
def A130319 (n : ℕ) : ℤ :=
  A130319.P11129835434070302658.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6164 terms. -/
def A130319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130322.P15441670076918703928

`A171647(A099375(n))`
-/

namespace A130322.P15441670076918703928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171647 (A099375 n).toNat

end

end A130322.P15441670076918703928

noncomputable section

/-- A130322: A130321^2.

Offset 0, canonical program `A130322.P15441670076918703928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130322 (n : ℕ) : ℤ :=
  A130322.P15441670076918703928.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130473.P15345965032547921568

`∑[A087172(n+1)]`
-/

namespace A130473.P15345965032547921568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130473.P15345965032547921568

noncomputable section

/-- A130473: Partial sums of A087172.

Offset 1, canonical program `A130473.P15345965032547921568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130473 (n : ℕ) : ℤ :=
  A130473.P15345965032547921568.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130540.P17651116764661145688

`∑{d}[A126988(n+1), #]`
-/

namespace A130540.P17651116764661145688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A130540.P17651116764661145688

noncomputable section

/-- A130540: Triangle read by rows T(n,k) in which column k lists the terms of A000203 interspersed with (k-1) zeros, 1 <= k <= n.

Offset 1, canonical program `A130540.P17651116764661145688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A130540 (n : ℕ) : ℤ :=
  (A130540.P17651116764661145688.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A130540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130586.P17925529439959671154

`∑{d}[n+1, A000010(#)*A011782(#)]`
-/

namespace A130586.P17925529439959671154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A011782 d

end

end A130586.P17925529439959671154

noncomputable section

/-- A130586: Row sums of triangle A130585.

Offset 0, canonical program `A130586.P17925529439959671154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A130586 (n : ℕ) : ℤ :=
  A130586.P17925529439959671154.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A130586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130855.P3617134350545637610

`A123578(A057212(n+1)+n)`
-/

namespace A130855.P3617134350545637610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A057212 (n + 1) + (n : ℤ)).toNat

end

end A130855.P3617134350545637610

noncomputable section

/-- A130855: 2n appears 2n+1 times, 2n+1 appears 2n times.

Offset 0, canonical program `A130855.P3617134350545637610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130855 (n : ℕ) : ℤ :=
  A130855.P3617134350545637610.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131021.P14456359531846804988

`p?[A024675(n+1)+A024675(n+3)]`
-/

namespace A131021.P14456359531846804988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1) + A024675 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A131021.P14456359531846804988

noncomputable section

/-- A131021: Prime semiperimeters of quadrilaterals with sides which are four consecutive primes.

Offset 1, canonical program `A131021.P14456359531846804988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 630 terms. -/
def A131021 (n : ℕ) : ℤ :=
  A131021.P14456359531846804988.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 630 terms. -/
def A131021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131052.P3356453068962717231

`A128175(A131225(n+1)+A038722(n+1))`
-/

namespace A131052.P3356453068962717231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128175 (A131225 (n + 1) + A038722 (n + 1)).toNat

end

end A131052.P3356453068962717231

noncomputable section

/-- A131052: A131047 * A000012.

Offset 1, canonical program `A131052.P3356453068962717231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A131052 (n : ℕ) : ℤ :=
  A131052.P3356453068962717231.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A131052.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131129.P5347046498365630187

`floor(3*A131108(n)/2)`
-/

namespace A131129.P5347046498365630187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * A131108 n : ℚ) / 2⌋

end

end A131129.P5347046498365630187

noncomputable section

/-- A131129: 3*A007318 - 2*A097806, where A007318 = Pascal's triangle and A097806 = the pairwise operator.

Offset 0, canonical program `A131129.P5347046498365630187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131129 (n : ℕ) : ℤ :=
  A131129.P5347046498365630187.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131131.P12474892076116979280

`2*A131108(n)-A097806(n)`
-/

namespace A131131.P12474892076116979280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131108 n - A097806 n

end

end A131131.P12474892076116979280

noncomputable section

/-- A131131: 4*A007318 - 3*A097806.

Offset 0, canonical program `A131131.P12474892076116979280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131131 (n : ℕ) : ℤ :=
  A131131.P12474892076116979280.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131137.P15076297547464346448

`gcd(n, A125824(n))*A125824(n)`
-/

namespace A131137.P15076297547464346448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A125824 n) : ℤ) * A125824 n

end

end A131137.P15076297547464346448

noncomputable section

/-- A131137: Denominator of (exponential) expansion of log((2*x/3-1)/(x-1)).

Offset 0, canonical program `A131137.P15076297547464346448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A131137 (n : ℕ) : ℤ :=
  A131137.P15076297547464346448.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A131137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131210.P7610683956886271610

`eq[n+1, A280098(n+1)]+1`
-/

namespace A131210.P7610683956886271610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280098 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A131210.P7610683956886271610

noncomputable section

/-- A131210: Numbers k such that 24k - 1 is prime.

Offset 1, canonical program `A131210.P7610683956886271610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2659 terms. -/
def A131210 (n : ℕ) : ℤ :=
  (A131210.P7610683956886271610.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2659 terms. -/
def A131210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131376.P4997632316983606857

`A007318(n)+A131374(n)-A046854(n)`
-/

namespace A131376.P4997632316983606857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A131374 n - A046854 n)

end

end A131376.P4997632316983606857

noncomputable section

/-- A131376: Triangle read by rows: T(n,k) = A007318(n,k) + A065941(n,k) - A168561(n,k).

Offset 0, canonical program `A131376.P4997632316983606857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131376 (n : ℕ) : ℤ :=
  A131376.P4997632316983606857.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131398.P13475172351634249680

`A131108(n)+A014473(n)`
-/

namespace A131398.P13475172351634249680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131108 n + A014473 n

end

end A131398.P13475172351634249680

noncomputable section

/-- A131398: 3*A007318 - A097806 - A000012.

Offset 0, canonical program `A131398.P13475172351634249680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131398 (n : ℕ) : ℤ :=
  A131398.P13475172351634249680.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131404.P9939978111616985627

`2*A131402(n)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A131404.P9939978111616985627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131402 n - 1

end

end A131404.P9939978111616985627

noncomputable section

/-- A131404: a(n) = 2*A131402(n) - 1.

Offset 0, canonical program `A131404.P9939978111616985627`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A131402, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131404 (n : ℕ) : ℤ :=
  A131404.P9939978111616985627.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A131402, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131404.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A131413.P831149329462037329

`A099375(n)+A051162(n)`
-/

namespace A131413.P831149329462037329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n + A051162 n

end

end A131413.P831149329462037329

noncomputable section

/-- A131413: Triangle read by rows: A002024 + A128076 - A000012 as infinite lower triangular matrices.

Offset 0, canonical program `A131413.P831149329462037329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131413 (n : ℕ) : ℤ :=
  A131413.P831149329462037329.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131422.P7219812161266444625

`A112367(n)+A007401(n+1)`
-/

namespace A131422.P7219812161266444625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112367 n + A007401 (n + 1)

end

end A131422.P7219812161266444625

noncomputable section

/-- A131422: (A000012 * A127773) + (A127773 * A000012) - A000012.

Offset 1, canonical program `A131422.P7219812161266444625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131422 (n : ℕ) : ℤ :=
  A131422.P7219812161266444625.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131427.P4576439200903195274

`A023531(n)*A098474(n)`
-/

namespace A131427.P4576439200903195274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A098474 n

end

end A131427.P4576439200903195274

noncomputable section

/-- A131427: A000108(n) preceded by n zeros.

Offset 0, canonical program `A131427.P4576439200903195274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131427 (n : ℕ) : ℤ :=
  A131427.P4576439200903195274.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131522.P12999787802712979154

`Δ[Δ[A004739(n+2)]]`
-/

namespace A131522.P12999787802712979154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131522.P12999787802712979154

noncomputable section

/-- A131522: Expansions of p(x,n)=(x^n - 1)*(x^(n + 1) - 1) for n >= 1, triangle read by rows.

Offset 1, canonical program `A131522.P12999787802712979154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A131522 (n : ℕ) : ℤ :=
  A131522.P12999787802712979154.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A131522.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131777.P18261252755188450248

`2*A131775(n+1)-A065941(n)`
-/

namespace A131777.P18261252755188450248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131775 (n + 1) - A065941 n

end

end A131777.P18261252755188450248

noncomputable section

/-- A131777: 5*A065941 - 4*A049310.

Offset 1, canonical program `A131777.P18261252755188450248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131777 (n : ℕ) : ℤ :=
  A131777.P18261252755188450248.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131778.P8822641819976216554

`2*A131776(n+1)-A131774(n+1)`
-/

namespace A131778.P8822641819976216554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131776 (n + 1) - A131774 (n + 1)

end

end A131778.P8822641819976216554

noncomputable section

/-- A131778: 6*A065941 - 5*A049310.

Offset 1, canonical program `A131778.P8822641819976216554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131778 (n : ℕ) : ℤ :=
  A131778.P8822641819976216554.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131996.P6835226825695645018

`A081611(round(n/3))`
-/

namespace A131996.P6835226825695645018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081611 (SequenceMachineLib.roundAway ((n : ℚ) / 3)).toNat

end

end A131996.P6835226825695645018

noncomputable section

/-- A131996: Number of partitions of n into distinct powers of 2 or of 3.

Offset 1, canonical program `A131996.P6835226825695645018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A131996 (n : ℕ) : ℤ :=
  A131996.P6835226825695645018.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A131996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132630.P11928070417678431762

`record[A070010(n+1)+A033879(n+1)]`
-/

namespace A132630.P11928070417678431762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070010 (n + 1) + A033879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132630.P11928070417678431762

noncomputable section

/-- A132630: Numbers n such that sigma(n)-n divides sigma(n+1)-n-1, where sigma(n) is sum of positive divisors of n.

Offset 1, canonical program `A132630.P11928070417678431762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1241 terms. -/
def A132630 (n : ℕ) : ℤ :=
  A132630.P11928070417678431762.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1241 terms. -/
def A132630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132752.P12795586409169669326

`2*A132749(n)-1`
-/

namespace A132752.P12795586409169669326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132749 n - 1

end

end A132752.P12795586409169669326

noncomputable section

/-- A132752: Triangle T(n, k) = 2*A132749(n, k) - 1, read by rows.

Offset 0, canonical program `A132752.P12795586409169669326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132752 (n : ℕ) : ℤ :=
  A132752.P12795586409169669326.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133089.P8798939129705993137

`(-1)^n*A010816(n)`
-/

namespace A133089.P8798939129705993137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A010816 n

end

end A133089.P8798939129705993137

noncomputable section

/-- A133089: Expansion of f(x)^3 in powers of x where f() is a Ramanujan theta function.

Offset 0, canonical program `A133089.P8798939129705993137`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010816, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133089 (n : ℕ) : ℤ :=
  A133089.P8798939129705993137.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010816, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133089.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133109.P15034252738295428665

`A042965(Δ[A061885(n)])`
-/

namespace A133109.P15034252738295428665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (f1 (n + 1) - f1 n).toNat

end

end A133109.P15034252738295428665

noncomputable section

/-- A133109: Triangle read by rows, A042965 on the diagonal, 0 elsewhere.

Offset 1, canonical program `A133109.P15034252738295428665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133109 (n : ℕ) : ℤ :=
  A133109.P15034252738295428665.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133155.P9703523718405720926

`∑[A061285(n+2)]`
-/

namespace A133155.P9703523718405720926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061285 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133155.P9703523718405720926

noncomputable section

/-- A133155: Numbers formed by setting bits representing odd primes, where bit_no = (prime - 1)/2. Setting bit number b is the same as OR-ing with 2^b (i.e., bit numbers start at zero).

Offset 1, canonical program `A133155.P9703523718405720926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A133155 (n : ℕ) : ℤ :=
  A133155.P9703523718405720926.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A133155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133548.P7794647710270492703

`A098999(n+2)-8`
-/

namespace A133548.P7794647710270492703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098999 (n + 2) - 8

end

end A133548.P7794647710270492703

noncomputable section

/-- A133548: a(n) = sum of cubes of first n odd primes.

Offset 1, canonical program `A133548.P7794647710270492703`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A098999, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133548 (n : ℕ) : ℤ :=
  A133548.P7794647710270492703.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A098999, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133548.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133549.P4699963464634886654

`A122102(n+2)-16`
-/

namespace A133549.P4699963464634886654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122102 (n + 2) - 16

end

end A133549.P4699963464634886654

noncomputable section

/-- A133549: Sum of the fourth powers of the first n odd primes.

Offset 1, canonical program `A133549.P4699963464634886654`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122102, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133549 (n : ℕ) : ℤ :=
  A133549.P4699963464634886654.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122102, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133549.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133550.P10196551962089254403

`A122103(n+2)-32`
-/

namespace A133550.P10196551962089254403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122103 (n + 2) - 32

end

end A133550.P10196551962089254403

noncomputable section

/-- A133550: Sum of fifth powers of n odd primes.

Offset 1, canonical program `A133550.P10196551962089254403`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133550 (n : ℕ) : ℤ :=
  A133550.P10196551962089254403.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133550.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133567.P2335698315275832870

`A103371(n)/A133084(n+1)`
-/

namespace A133567.P2335698315275832870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103371 n : ℚ) / (A133084 (n + 1) : ℚ)

end

end A133567.P2335698315275832870

noncomputable section

/-- A133567: A007318 * A133566.

Offset 1, canonical program `A133567.P2335698315275832870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133567 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A133567.P2335698315275832870.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133657.P17563057075250981671

`(-1)^n*A121455(n+1)`
-/

namespace A133657.P17563057075250981671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A121455 (n + 1)

end

end A133657.P17563057075250981671

noncomputable section

/-- A133657: Expansion of q * (phi(q) * psi(q^4))^2 in powers of q where phi(), psi() are Ramanujan theta functions.

Offset 1, canonical program `A133657.P17563057075250981671`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121455, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133657 (n : ℕ) : ℤ :=
  A133657.P17563057075250981671.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121455, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133657.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133691.P968811018023020680

`∑{d}[n+1, A069517(#)*A121455((n+1)/#)]`
-/

namespace A133691.P968811018023020680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069517 d * A121455 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A133691.P968811018023020680

noncomputable section

/-- A133691: Expansion of (1 - (phi(-q) * phi(q^2))^2) / 4 in powers of q where phi() is a Ramanujan theta function.

Offset 1, canonical program `A133691.P968811018023020680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133691 (n : ℕ) : ℤ :=
  A133691.P968811018023020680.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133729.P396639260184250691

`A128175(n+1)*A158405(n+1)`
-/

namespace A133729.P396639260184250691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128175 (n + 1) * A158405 (n + 1)

end

end A133729.P396639260184250691

noncomputable section

/-- A133729: A007318 * A133728.

Offset 1, canonical program `A133729.P396639260184250691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133729 (n : ℕ) : ℤ :=
  A133729.P396639260184250691.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133770.P4488727926712049331

`A005811(eq[(n%2)^n, and(n, floor(n/2))])`
-/

namespace A133770.P4488727926712049331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 2) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A133770.P4488727926712049331

noncomputable section

/-- A133770: Number of runs (of equal bits) in the minimal Lucas binary (A130310) representation of n.

Offset 1, canonical program `A133770.P4488727926712049331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A133770 (n : ℕ) : ℤ :=
  A133770.P4488727926712049331.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A133770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133824.P3351664802800838771

`A124258(n+1)²`
-/

namespace A133824.P3351664802800838771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124258 (n + 1) ^ 2

end

end A133824.P3351664802800838771

noncomputable section

/-- A133824: Triangle whose rows are sequences of increasing and decreasing fourth powers: 1; 1,16,1; 1,16,81,16,1; ... .

Offset 0, canonical program `A133824.P3351664802800838771`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124258, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133824 (n : ℕ) : ℤ :=
  A133824.P3351664802800838771.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124258, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133824.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133881.P5486026362602944694

`filter[A133630(n+1), A121262(#)]`
-/

namespace A133881.P5486026362602944694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A133881.P5486026362602944694

noncomputable section

/-- A133881: Even numbers k such that binomial(k+p,k) mod k = 1, where p=10.

Offset 1, canonical program `A133881.P5486026362602944694`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 916 terms. -/
def A133881 (n : ℕ) : ℤ :=
  A133881.P5486026362602944694.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 916 terms. -/
def A133881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133911.P14989131152538937631

`A001222(A133900(n+1))`
-/

namespace A133911.P14989131152538937631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A133900 (n + 1)).toNat

end

end A133911.P14989131152538937631

noncomputable section

/-- A133911: Number of prime factors (counted with multiplicity) of the period numbers defined by A133900.

Offset 1, canonical program `A133911.P14989131152538937631`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A133900, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133911 (n : ℕ) : ℤ :=
  A133911.P14989131152538937631.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A133900, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133911.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A134060.P5985046479831318220

`lcm(A124928(n), A132749(n))`
-/

namespace A134060.P5985046479831318220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A124928 n) (A132749 n)

end

end A134060.P5985046479831318220

noncomputable section

/-- A134060: Triangle T(n,k) = A124927(n,k) + A134058(n,k) - A007318(n,k), read by rows.

Offset 0, canonical program `A134060.P5985046479831318220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A134060 (n : ℕ) : ℤ :=
  (A134060.P5985046479831318220.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A134060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134083.P13323167957523144321

`A074909(A083920(n))*A099375(n)`
-/

namespace A134083.P13323167957523144321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A083920 n).toNat * A099375 n

end

end A134083.P13323167957523144321

noncomputable section

/-- A134083: A007318 * A134082.

Offset 0, canonical program `A134083.P13323167957523144321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134083 (n : ℕ) : ℤ :=
  A134083.P13323167957523144321.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134099.P11301646531831205665

`A045319(lt[1, A100820(n+1)])+2`
-/

namespace A134099.P11301646531831205665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) + 2

end

end A134099.P11301646531831205665

noncomputable section

/-- A134099: Odd nonprimes np such that np-2 is a prime number but np+2 is not.

Offset 1, canonical program `A134099.P11301646531831205665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A134099 (n : ℕ) : ℤ :=
  A134099.P11301646531831205665.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A134099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134224.P9579061537419719941

`A134199(n)+A114327(n)`
-/

namespace A134224.P9579061537419719941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134199 n + A114327 n

end

end A134224.P9579061537419719941

noncomputable section

/-- A134224: A004736 + A134082 - I as infinite lower triangular matrices; I = Identity matrix.

Offset 0, canonical program `A134224.P9579061537419719941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134224 (n : ℕ) : ℤ :=
  A134224.P9579061537419719941.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134226.P18145775604649246008

`A134199(n)-A129184(n+1)`
-/

namespace A134226.P18145775604649246008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134199 n - A129184 (n + 1)

end

end A134226.P18145775604649246008

noncomputable section

/-- A134226: Triangle T(n, k) = 3*n - 4 if k = n-1 otherwise k, read by rows.

Offset 1, canonical program `A134226.P18145775604649246008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134226 (n : ℕ) : ℤ :=
  A134226.P18145775604649246008.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134269.P13392884201192576431

`∑{d}[n+1, floor(A000010(n+1+#)/(n+1))]`
-/

namespace A134269.P13392884201192576431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌊(A000010 (n + 1 + d) : ℚ) / (n + 1 : ℚ)⌋

end

end A134269.P13392884201192576431

noncomputable section

/-- A134269: Number of solutions to the equation p^k - p^(k-1) = n, where k is a positive integer and p is prime.

Offset 1, canonical program `A134269.P13392884201192576431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134269 (n : ℕ) : ℤ :=
  A134269.P13392884201192576431.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134315.P18118181357833699062

`A158780(A132774(n+1))`
-/

namespace A134315.P18118181357833699062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (A132774 (n + 1)).toNat

end

end A134315.P18118181357833699062

noncomputable section

/-- A134315: A134309 * A097806.

Offset 1, canonical program `A134315.P18118181357833699062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134315 (n : ℕ) : ℤ :=
  A134315.P18118181357833699062.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134318.P15553528286371622200

`A128175(n+1)*A232089(n)`
-/

namespace A134318.P15553528286371622200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128175 (n + 1) * A232089 n

end

end A134318.P15553528286371622200

noncomputable section

/-- A134318: A007318 * A134317.

Offset 0, canonical program `A134318.P15553528286371622200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134318 (n : ℕ) : ℤ :=
  A134318.P15553528286371622200.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134352.P10374233049189694274

`A131577(A128621(n+1))`
-/

namespace A134352.P10374233049189694274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A128621 (n + 1)).toNat

end

end A134352.P10374233049189694274

noncomputable section

/-- A134352: A130123 * A128174.

Offset 0, canonical program `A134352.P10374233049189694274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134352 (n : ℕ) : ℤ :=
  A134352.P10374233049189694274.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134377.P2898163112214543715

`A108863(n)+A055217(n)`
-/

namespace A134377.P2898163112214543715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108863 n + A055217 n

end

end A134377.P2898163112214543715

noncomputable section

/-- A134377: Binomial transform of A045621.

Offset 1, canonical program `A134377.P2898163112214543715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A134377 (n : ℕ) : ℤ :=
  A134377.P2898163112214543715.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A134377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134464.P6205349550978109766

`A112367(n)+A094727(n+1)`
-/

namespace A134464.P6205349550978109766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112367 n + A094727 (n + 1)

end

end A134464.P6205349550978109766

noncomputable section

/-- A134464: (A127648 * A000012 + A000012 * A127773) - A000012.

Offset 1, canonical program `A134464.P6205349550978109766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134464 (n : ℕ) : ℤ :=
  A134464.P6205349550978109766.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134482.P15143362080738563576

`A134403(n)+1`
-/

namespace A134482.P15143362080738563576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134403 n + 1

end

end A134482.P15143362080738563576

noncomputable section

/-- A134482: Triangle read by rows: row n consists of n followed by the numbers n through 2n-2.

Offset 1, canonical program `A134482.P15143362080738563576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134482 (n : ℕ) : ℤ :=
  A134482.P15143362080738563576.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134576.P2013391426293502039

`A127446(n+1)²`
-/

namespace A134576.P2013391426293502039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127446 (n + 1) ^ 2

end

end A134576.P2013391426293502039

noncomputable section

/-- A134576: Triangle read by rows: T(n,k) = n^2*A051731(n,k).

Offset 1, canonical program `A134576.P2013391426293502039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134576 (n : ℕ) : ℤ :=
  A134576.P2013391426293502039.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134700.P8117380377990256962

`A113215(A085383(n+1))`
-/

namespace A134700.P8117380377990256962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113215 (A085383 (n + 1)).toNat

end

end A134700.P8117380377990256962

noncomputable section

/-- A134700: Triangle read by rows: A000012 * A051731^2.

Offset 1, canonical program `A134700.P8117380377990256962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A134700 (n : ℕ) : ℤ :=
  A134700.P8117380377990256962.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A134700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135022.P16509518047199090749

`1-A118006(n+1)`
-/

namespace A135022.P16509518047199090749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A118006 (n + 1)

end

end A135022.P16509518047199090749

noncomputable section

/-- A135022: Define a sequence of binary words by w(1)=10 and w(n+1)=w(n)w(n)Reverse[w(n)]. Sequence gives the limiting word w(infinity).

Offset 1, canonical program `A135022.P16509518047199090749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A135022 (n : ℕ) : ℤ :=
  A135022.P16509518047199090749.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A135022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135023.P1620752606866019315

`A028334(A100637(2*n+1))`
-/

namespace A135023.P1620752606866019315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (A100637 (2 * n + 1)).toNat

end

end A135023.P1620752606866019315

noncomputable section

/-- A135023: (NextPrime[6*n] - PreviousPrime[6*n])/2.

Offset 1, canonical program `A135023.P1620752606866019315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A135023 (n : ℕ) : ℤ :=
  A135023.P1620752606866019315.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A135023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135123.P16247896730909029180

`∩[A037304(n+1), A037311(n+1)]`
-/

namespace A135123.P16247896730909029180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135123.P16247896730909029180

noncomputable section

/-- A135123: Numbers such that the digital sum base 2 and the digital sum base 3 and the digital sum base 6 all are equal.

Offset 1, canonical program `A135123.P16247896730909029180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 646 terms. -/
def A135123 (n : ℕ) : ℤ :=
  (A135123.P16247896730909029180.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 646 terms. -/
def A135123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135152.P7420640362526774959

`A092038(A099375(n))`
-/

namespace A135152.P7420640362526774959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092038 (A099375 n).toNat

end

end A135152.P7420640362526774959

noncomputable section

/-- A135152: A004736 + A128174 - I, I = Identity matrix.

Offset 1, canonical program `A135152.P7420640362526774959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135152 (n : ℕ) : ℤ :=
  A135152.P7420640362526774959.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135180.P11010931225065724081

`A135179(n+1)+A079704(n+1)`
-/

namespace A135180.P11010931225065724081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135179 (n + 1) + A079704 (n + 1)

end

end A135180.P11010931225065724081

noncomputable section

/-- A135180: a(n) = p^5 - p^3 + p^2, where p = prime(n).

Offset 1, canonical program `A135180.P11010931225065724081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135180 (n : ℕ) : ℤ :=
  A135180.P11010931225065724081.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135181.P6699023682953178213

`A135177(n+1)+A050997(n+1)`
-/

namespace A135181.P6699023682953178213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135177 (n + 1) + A050997 (n + 1)

end

end A135181.P6699023682953178213

noncomputable section

/-- A135181: p^5 + p^3 - p^2. Exponents are the prime numbers in decreasing order and p is the n-th prime.

Offset 1, canonical program `A135181.P6699023682953178213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135181 (n : ℕ) : ℤ :=
  A135181.P6699023682953178213.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135570.P7925513415246481314

`∑[A135569(n)]+1`
-/

namespace A135570.P7925513415246481314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A135570.P7925513415246481314

noncomputable section

/-- A135570: a(n) = 1 + Sum_{i=1..n} S2(i)*2^i, where S2(n) is digit sum of n, n in binary notation.

Offset 0, canonical program `A135570.P7925513415246481314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A135570 (n : ℕ) : ℤ :=
  A135570.P7925513415246481314.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A135570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135573.P6360191770483409668

`A068555(A007401(n+1))/2`
-/

namespace A135573.P6360191770483409668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068555 (A007401 (n + 1)).toNat : ℚ) / 2

end

end A135573.P6360191770483409668

noncomputable section

/-- A135573: Array T(n,m) of super ballot numbers read along ascending antidiagonals.

Offset 0, canonical program `A135573.P6360191770483409668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A135573 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A135573.P6360191770483409668.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A135573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135635.P9097632781227393920

`A134636(A007401(n+1))+A097805(n)-A028326(n)`
-/

namespace A135635.P9097632781227393920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134636 (A007401 (n + 1)).toNat + (A097805 n - A028326 n)

end

end A135635.P9097632781227393920

noncomputable section

/-- A135635: Triangle read by rows, constructed by the Pascal rule, with top entry 2, left edge = odd numbers, right edge = squares plus 1.

Offset 1, canonical program `A135635.P9097632781227393920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A135635 (n : ℕ) : ℤ :=
  A135635.P9097632781227393920.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A135635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135841.P9530508394126414704

`ceil(A130303(n+1)/2)`
-/

namespace A135841.P9530508394126414704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A130303 (n + 1) : ℚ) / 2⌉

end

end A135841.P9530508394126414704

noncomputable section

/-- A135841: A000012 * A135839 as infinite lower triangular matrices.

Offset 1, canonical program `A135841.P9530508394126414704`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135841 (n : ℕ) : ℤ :=
  A135841.P9530508394126414704.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135853.P16818106393424875175

`A134868(n+1)*A135278(n)`
-/

namespace A135853.P16818106393424875175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1) * A135278 n

end

end A135853.P16818106393424875175

noncomputable section

/-- A135853: A103516 * A007318 as an infinite lower triangular matrix.

Offset 0, canonical program `A135853.P16818106393424875175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135853 (n : ℕ) : ℤ :=
  A135853.P16818106393424875175.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135975.P5624904314558492887

`A088863(lt[1, A088863(n+1)]+1)`
-/

namespace A135975.P5624904314558492887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088863 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A135975.P5624904314558492887

noncomputable section

/-- A135975: Number of prime factors (without multiplicity) in Mersenne composites A065341.

Offset 1, canonical program `A135975.P5624904314558492887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 183 terms. -/
def A135975 (n : ℕ) : ℤ :=
  A135975.P5624904314558492887.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 183 terms. -/
def A135975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135993.P10611808160087165424

`a(A135941(n)%2)` with `a(0)=0, a(1)=1`
-/

namespace A135993.P10611808160087165424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (Int.tmod (A135941 n) 2).toNat

end

end A135993.P10611808160087165424

noncomputable section

/-- A135993: a(0) = 0; a(n) = (floor(n/S2(n))) mod 2 for n >= 1, where S2(n) is the binary weight of n.

Offset 0, canonical program `A135993.P10611808160087165424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135993 (n : ℕ) : ℤ :=
  (A135993.P10611808160087165424.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136087.P18288110956482578539

`floor(A136079(n+1)/21)`
-/

namespace A136087.P18288110956482578539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A136079 (n + 1) : ℚ) / 21⌋

end

end A136087.P18288110956482578539

noncomputable section

/-- A136087: Son primes of order 10.

Offset 1, canonical program `A136087.P18288110956482578539`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136087 (n : ℕ) : ℤ :=
  A136087.P18288110956482578539.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136153.P235196325310988984

`A008864(eq[4, A008335(n+1)]+1)`
-/

namespace A136153.P235196325310988984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A136153.P235196325310988984

noncomputable section

/-- A136153: Composites one larger than a prime, with exactly four distinct prime factors.

Offset 1, canonical program `A136153.P235196325310988984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3396 terms. -/
def A136153 (n : ℕ) : ℤ :=
  A136153.P235196325310988984.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3396 terms. -/
def A136153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136157.P7779191601585148338

`C(3, A099375(n))`
-/

namespace A136157.P7779191601585148338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (A099375 n).toNat

end

end A136157.P7779191601585148338

noncomputable section

/-- A136157: Triangle by columns, (3, 1, 0, 0, 0, ...) in every column.

Offset 0, canonical program `A136157.P7779191601585148338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136157 (n : ℕ) : ℤ :=
  (A136157.P7779191601585148338.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136208.P8175068401792268664

`p?[∪[A015915(n+1), A092402(n+1)]]`
-/

namespace A136208.P8175068401792268664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092402 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A136208.P8175068401792268664

noncomputable section

/-- A136208: Primes p such that p-8 or p+8 is prime.

Offset 1, canonical program `A136208.P8175068401792268664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A136208 (n : ℕ) : ℤ :=
  (A136208.P8175068401792268664.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A136208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136482.P12612554816507935657

`A034852(n)+A007318(n)`
-/

namespace A136482.P12612554816507935657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034852 n + A007318 n

end

end A136482.P12612554816507935657

noncomputable section

/-- A136482: Triangle read by rows: T(n,k) = 2*A007318(n,k) - A034851(n,k) (i.e., twice Pascal's triangle - the Losanitch triangle).

Offset 0, canonical program `A136482.P12612554816507935657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136482 (n : ℕ) : ℤ :=
  A136482.P12612554816507935657.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136581.P5726716619279127359

`A094587(n)*A136579(n)`
-/

namespace A136581.P5726716619279127359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n * A136579 n

end

end A136581.P5726716619279127359

noncomputable section

/-- A136581: Triangle read by rows: A136572 * A128174.

Offset 0, canonical program `A136581.P5726716619279127359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A136581 (n : ℕ) : ℤ :=
  A136581.P5726716619279127359.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A136581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136693.P5864311361818308045

`A092205(a(floor(n/3))*a(n%3))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1`
-/

namespace A136693.P5864311361818308045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 1] fun n a =>
  A092205 (a ⌊(n : ℚ) / 3⌋.toNat * a (n % 3)).toNat

end

end A136693.P5864311361818308045

noncomputable section

/-- A136693: Final nonzero digit of n! in base 6.

Offset 0, canonical program `A136693.P5864311361818308045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4172 terms. -/
def A136693 (n : ℕ) : ℤ :=
  A136693.P5864311361818308045.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4172 terms. -/
def A136693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136798.P11682257404800107167

`A049591(n+1)+1`
-/

namespace A136798.P11682257404800107167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (n + 1) + 1

end

end A136798.P11682257404800107167

noncomputable section

/-- A136798: First term in a sequence of at least 3 consecutive composite integers.

Offset 1, canonical program `A136798.P11682257404800107167`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049591, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A136798 (n : ℕ) : ℤ :=
  A136798.P11682257404800107167.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049591, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A136798.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A137263.P10830162275430257195

`∩[3*n+2, A024675(n+1)]`
-/

namespace A137263.P10830162275430257195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137263.P10830162275430257195

noncomputable section

/-- A137263: Interprimes (A024675) == 2 (mod 3).

Offset 1, canonical program `A137263.P10830162275430257195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A137263 (n : ℕ) : ℤ :=
  (A137263.P10830162275430257195.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A137263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137331.P2086045150003382942

`A101436(A001316(n))`
-/

namespace A137331.P2086045150003382942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101436 (A001316 n).toNat

end

end A137331.P2086045150003382942

noncomputable section

/-- A137331: a(n) = 1 if the binary weight of n is prime, otherwise 0.

Offset 0, canonical program `A137331.P2086045150003382942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137331 (n : ℕ) : ℤ :=
  A137331.P2086045150003382942.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137427.P7977322006733834359

`A007913(A069891(n+1))`
-/

namespace A137427.P7977322006733834359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A069891 (n + 1)).toNat

end

end A137427.P7977322006733834359

noncomputable section

/-- A137427: Squarefree part of partial sum of squarefree part of n.

Offset 1, canonical program `A137427.P7977322006733834359`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069891, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A137427 (n : ℕ) : ℤ :=
  A137427.P7977322006733834359.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069891, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A137427.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A137876.P7056768706059429066

`A028334(A000720(18*(n+1)))`
-/

namespace A137876.P7056768706059429066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (A000720 (18 * (n + 1))).toNat

end

end A137876.P7056768706059429066

noncomputable section

/-- A137876: a(n) = (nextprime(18n)-previousprime(18n))/2.

Offset 1, canonical program `A137876.P7056768706059429066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5555 terms. -/
def A137876 (n : ℕ) : ℤ :=
  A137876.P7056768706059429066.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5555 terms. -/
def A137876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138073.P14236269972961341865

`A095713(A133825(n)+2)`
-/

namespace A138073.P14236269972961341865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095713 (A133825 n + 2).toNat

end

end A138073.P14236269972961341865

noncomputable section

/-- A138073: Triangle read by rows: row n lists the digits of A135699(n), the palindromic number with odd number of digits formed from the reflected decimal expansion of golden ratio phi.

Offset 1, canonical program `A138073.P14236269972961341865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A138073 (n : ℕ) : ℤ :=
  A138073.P14236269972961341865.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A138073.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138116.P15735510777466576646

`A098369(A112367(n))`
-/

namespace A138116.P15735510777466576646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098369 (A112367 n).toNat

end

end A138116.P15735510777466576646

noncomputable section

/-- A138116: Triangle read by rows: row n lists the first n digits of the decimal expansion of golden ratio phi.

Offset 1, canonical program `A138116.P15735510777466576646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138116 (n : ℕ) : ℤ :=
  A138116.P15735510777466576646.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138143.P5194370615714979143

`A005145(A133825(n))`
-/

namespace A138143.P5194370615714979143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (A133825 n).toNat

end

end A138143.P5194370615714979143

noncomputable section

/-- A138143: Triangle read by rows in which row n lists p(1), p(2), ..., p(n), p(n-1), ..., p(1), where p(i) = i-th prime.

Offset 1, canonical program `A138143.P5194370615714979143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A138143 (n : ℕ) : ℤ :=
  A138143.P5194370615714979143.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A138143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138190.P14612047088116699715

`gcd(A000292(n), A054563(n))`
-/

namespace A138190.P14612047088116699715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000292 n) (A054563 n)

end

end A138190.P14612047088116699715

noncomputable section

/-- A138190: Numerator of (n-1)*n*(n+1)/12.

Offset 1, canonical program `A138190.P14612047088116699715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138190 (n : ℕ) : ℤ :=
  (A138190.P14612047088116699715.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138364.P9887947875911683220

`n*A097331(n)`
-/

namespace A138364.P9887947875911683220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A097331 n

end

end A138364.P9887947875911683220

noncomputable section

/-- A138364: The number of Motzkin n-paths with exactly one flat step.

Offset 0, canonical program `A138364.P9887947875911683220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A138364 (n : ℕ) : ℤ :=
  A138364.P9887947875911683220.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A138364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138446.P14776877047564728891

`2*A122220(n+1)`
-/

namespace A138446.P14776877047564728891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122220 (n + 1)

end

end A138446.P14776877047564728891

noncomputable section

/-- A138446: a(n) = ((n-th prime)^6-(n-th prime)^2)/10.

Offset 1, canonical program `A138446.P14776877047564728891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138446 (n : ℕ) : ℤ :=
  A138446.P14776877047564728891.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138447.P3322787018046642282

`A138442(n+1)-A138443(n+1)`
-/

namespace A138447.P3322787018046642282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138442 (n + 1) - A138443 (n + 1)

end

end A138447.P3322787018046642282

noncomputable section

/-- A138447: a(n) = ((n-th prime)^6-(n-th prime)^2)/12.

Offset 1, canonical program `A138447.P3322787018046642282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138447 (n : ℕ) : ℤ :=
  A138447.P3322787018046642282.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138453.P1680090917158117575

`A138440(n+1)-A138417(n+1)`
-/

namespace A138453.P1680090917158117575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138440 (n + 1) - A138417 (n + 1)

end

end A138453.P1680090917158117575

noncomputable section

/-- A138453: a(n) = ((n-th prime)^6-(n-th prime)^4)/2.

Offset 1, canonical program `A138453.P1680090917158117575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138453 (n : ℕ) : ℤ :=
  A138453.P1680090917158117575.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138457.P7138522454749224645

`A000040(n+1)*A138436(n+1)`
-/

namespace A138457.P7138522454749224645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A138436 (n + 1)

end

end A138457.P7138522454749224645

noncomputable section

/-- A138457: a(n) = ((n-th prime)^6-(n-th prime)^4)/8.

Offset 1, canonical program `A138457.P7138522454749224645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138457 (n : ℕ) : ℤ :=
  A138457.P7138522454749224645.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138460.P7852437336812005660

`A138440(n+1)-A138424(n+1)`
-/

namespace A138460.P7852437336812005660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138440 (n + 1) - A138424 (n + 1)

end

end A138460.P7852437336812005660

noncomputable section

/-- A138460: a(n) = ((n-th prime)^6-(n-th prime)^5)/2.

Offset 1, canonical program `A138460.P7852437336812005660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138460 (n : ℕ) : ℤ :=
  A138460.P7852437336812005660.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138685.P1363574256665463268

`3*A059324(n+1)-2`
-/

namespace A138685.P1363574256665463268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A059324 (n + 1) - 2

end

end A138685.P1363574256665463268

noncomputable section

/-- A138685: Numbers k such that there is no prime of the form 2k + p^2 for any prime p.

Offset 1, canonical program `A138685.P1363574256665463268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138685 (n : ℕ) : ℤ :=
  A138685.P1363574256665463268.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138694.P473450987914299284

`3*A059325(n+2)-2`
-/

namespace A138694.P473450987914299284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A059325 (n + 2) - 2

end

end A138694.P473450987914299284

noncomputable section

/-- A138694: Numbers n such that the set {2*n+p^2, p any prime} contains exactly one prime.

Offset 1, canonical program `A138694.P473450987914299284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A138694 (n : ℕ) : ℤ :=
  A138694.P473450987914299284.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A138694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138751.P13177087611856876241

`A007918(A138750(A000040(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A138751.P13177087611856876241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A138750 (A000040 (n + 1)).toNat).toNat

end

end A138751.P13177087611856876241

noncomputable section

/-- A138751: a(n) = nextprime( p(n)/2 if p(n)=2 (mod 3), 2p(n) else ) = A007918( A138750( A000040( n ))).

Offset 1, canonical program `A138751.P13177087611856876241`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138751 (n : ℕ) : ℤ :=
  A138751.P13177087611856876241.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138751.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138757.P3445907887423256104

`A007918(A138750(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A138757.P3445907887423256104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A138750 n).toNat

end

end A138757.P3445907887423256104

noncomputable section

/-- A138757: a(n) = A007918(A138750(n)), that is, least prime > n/2 if n=2 (mod 3), > 2n otherwise.

Offset 0, canonical program `A138757.P3445907887423256104`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138757 (n : ℕ) : ℤ :=
  A138757.P3445907887423256104.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138757.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138830.P7169071661950621730

`A132999(2*(n+1))`
-/

namespace A138830.P7169071661950621730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132999 (2 * (n + 1))

end

end A138830.P7169071661950621730

noncomputable section

/-- A138830: Bisection of imperfect numbers A132999.

Offset 1, canonical program `A138830.P7169071661950621730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A138830 (n : ℕ) : ℤ :=
  A138830.P7169071661950621730.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A138830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138966.P5913427070522576114

`n+1+A113646(n+2)`
-/

namespace A138966.P5913427070522576114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A113646 (n + 2)

end

end A138966.P5913427070522576114

noncomputable section

/-- A138966: a(n) = n + (smallest composite > n).

Offset 1, canonical program `A138966.P5913427070522576114`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113646, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138966 (n : ℕ) : ℤ :=
  A138966.P5913427070522576114.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113646, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138966.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138968.P7786393262471553770

`A091178(n+1)-1`
-/

namespace A138968.P7786393262471553770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091178 (n + 1) - 1

end

end A138968.P7786393262471553770

noncomputable section

/-- A138968: Positions of the primes congruent to 1 mod 3 when all primes except 3 are listed in order.

Offset 1, canonical program `A138968.P7786393262471553770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138968 (n : ℕ) : ℤ :=
  A138968.P7786393262471553770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138969.P667284554888184623

`A091177(n+1)+A057428(n)`
-/

namespace A138969.P667284554888184623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091177 (n + 1) + A057428 n

end

end A138969.P667284554888184623

noncomputable section

/-- A138969: Positions of the primes congruent to 2 mod 3 when all primes except 3 are listed in order.

Offset 1, canonical program `A138969.P667284554888184623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138969 (n : ℕ) : ℤ :=
  A138969.P667284554888184623.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138970.P17118227698826319537

`A080147(n+1)-1`
-/

namespace A138970.P17118227698826319537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080147 (n + 1) - 1

end

end A138970.P17118227698826319537

noncomputable section

/-- A138970: Positions of the primes congruent to 1 mod 4 when all primes except 2 are listed in order.

Offset 1, canonical program `A138970.P17118227698826319537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138970 (n : ℕ) : ℤ :=
  A138970.P17118227698826319537.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138970.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138971.P14613520405082129352

`A080148(n+1)-1`
-/

namespace A138971.P14613520405082129352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080148 (n + 1) - 1

end

end A138971.P14613520405082129352

noncomputable section

/-- A138971: Positions of the primes congruent to 3 mod 4 when all primes except 2 are listed in order.

Offset 1, canonical program `A138971.P14613520405082129352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138971 (n : ℕ) : ℤ :=
  A138971.P14613520405082129352.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139353.P5602205039564721936

`A139351(n)*A139352(n)`
-/

namespace A139353.P5602205039564721936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n * A139352 n

end

end A139353.P5602205039564721936

noncomputable section

/-- A139353: Let the binary expansion of n be n = Sum_{k} 2^{r_k}, let e(n) be the number of r_k's that are even, o(n) the number that are odd; sequence gives e(n)*o(n).

Offset 0, canonical program `A139353.P5602205039564721936`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139351, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139353 (n : ℕ) : ℤ :=
  A139353.P5602205039564721936.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139351, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139353.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139385.P2848592424051489160

`p?[A095672(n+1)-4]`
-/

namespace A139385.P2848592424051489160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095672 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139385.P2848592424051489160

noncomputable section

/-- A139385: Primes p such that p, p+4 and p+12 are consecutive primes.

Offset 1, canonical program `A139385.P2848592424051489160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 947 terms. -/
def A139385 (n : ℕ) : ℤ :=
  A139385.P2848592424051489160.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 947 terms. -/
def A139385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139403.P6848797502717185903

`p?[A124192(n+1)]`
-/

namespace A139403.P6848797502717185903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139403.P6848797502717185903

noncomputable section

/-- A139403: Prime numbers k such that 8*k+3 and 8*k+5 are also primes.

Offset 1, canonical program `A139403.P6848797502717185903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1301 terms. -/
def A139403 (n : ℕ) : ℤ :=
  A139403.P6848797502717185903.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1301 terms. -/
def A139403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139407.P14555283574554252430

`∩[A005124(n+1), A139487(n+2)]`
-/

namespace A139407.P14555283574554252430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139487 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139407.P14555283574554252430

noncomputable section

/-- A139407: Numbers k such that 8*k+3 and 8*k+7 are primes.

Offset 1, canonical program `A139407.P14555283574554252430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1130 terms. -/
def A139407 (n : ℕ) : ℤ :=
  (A139407.P14555283574554252430.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1130 terms. -/
def A139407.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139526.P8121772475475467117

`A007318(n)*A076112(n+1)`
-/

namespace A139526.P8121772475475467117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A076112 (n + 1)

end

end A139526.P8121772475475467117

noncomputable section

/-- A139526: Triangle A061356 read right to left.

Offset 2, canonical program `A139526.P8121772475475467117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1708 terms. -/
def A139526 (n : ℕ) : ℤ :=
  A139526.P8121772475475467117.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1708 terms. -/
def A139526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139533.P2894381526935310202

`∑[A285870(Δ[A124192(n+1)])]`
-/

namespace A139533.P2894381526935310202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124192 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285870 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139533.P2894381526935310202

noncomputable section

/-- A139533: Numbers k such that numbers 24*k + 11 and 24*k + 13 are twin primes.

Offset 1, canonical program `A139533.P2894381526935310202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A139533 (n : ℕ) : ℤ :=
  A139533.P2894381526935310202.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A139533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139636.P15944924081291007344

`A073846(A073898(n+2)+2)`
-/

namespace A139636.P15944924081291007344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A073898 (n + 2) + 2).toNat

end

end A139636.P15944924081291007344

noncomputable section

/-- A139636: If n = the k-th prime, then a(n) = the (k+1)th prime. If n = the k-th composite, then a(n) = the (k+1)th composite.

Offset 2, canonical program `A139636.P15944924081291007344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A139636 (n : ℕ) : ℤ :=
  A139636.P15944924081291007344.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A139636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139693.P17569586885177204197

`lcm(A007918(n+1)-a(n-1), A007918(n+1))` with `a(0)=1`
-/

namespace A139693.P17569586885177204197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (A007918 (n + 1) - (a (n - 1) : ℤ)) (A007918 (n + 1))

end

end A139693.P17569586885177204197

noncomputable section

/-- A139693: a(n) is the smallest positive integer m where, for k divides m, minimum(|k - m/k|) = n.

Offset 0, canonical program `A139693.P17569586885177204197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139693 (n : ℕ) : ℤ :=
  (A139693.P17569586885177204197.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139844.P13747838189349687796

`∩[A106927(n+1), A122487(n+1)]`
-/

namespace A139844.P13747838189349687796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139844.P13747838189349687796

noncomputable section

/-- A139844: Primes of the form 2x^2 + 2xy + 53y^2.

Offset 1, canonical program `A139844.P13747838189349687796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2491 terms. -/
def A139844 (n : ℕ) : ℤ :=
  (A139844.P13747838189349687796.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2491 terms. -/
def A139844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139937.P9987768699886992996

`∩[A038898(n+1), A107151(n+1)]`
-/

namespace A139937.P9987768699886992996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139937.P9987768699886992996

noncomputable section

/-- A139937: Primes of the form 5x^2+69y^2.

Offset 1, canonical program `A139937.P9987768699886992996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1241 terms. -/
def A139937 (n : ℕ) : ℤ :=
  (A139937.P9987768699886992996.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1241 terms. -/
def A139937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139990.P3953884192149250198

`∩[A139849(n+1), A139919(n+1)]`
-/

namespace A139990.P3953884192149250198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139990.P3953884192149250198

noncomputable section

/-- A139990: Primes of the form 12*x^2+12*x*y+73*y^2.

Offset 1, canonical program `A139990.P3953884192149250198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4964 terms. -/
def A139990 (n : ℕ) : ℤ :=
  (A139990.P3953884192149250198.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4964 terms. -/
def A139990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139994.P12283442162161992640

`∩[A139859(n+1), A139874(n+1)]`
-/

namespace A139994.P12283442162161992640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139994.P12283442162161992640

noncomputable section

/-- A139994: Primes of the form 24x^2+35y^2.

Offset 1, canonical program `A139994.P12283442162161992640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4990 terms. -/
def A139994 (n : ℕ) : ℤ :=
  (A139994.P12283442162161992640.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4990 terms. -/
def A139994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139997.P868393966600918844

`∩[A139856(n+1), A139877(n+1)]`
-/

namespace A139997.P868393966600918844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139997.P868393966600918844

noncomputable section

/-- A139997: Primes of the form 29x^2+2xy+29y^2.

Offset 1, canonical program `A139997.P868393966600918844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4992 terms. -/
def A139997 (n : ℕ) : ℤ :=
  (A139997.P868393966600918844.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4992 terms. -/
def A139997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140038.P13603714832296326735

`∩[A107201(n+1), A139874(n+1)]`
-/

namespace A140038.P13603714832296326735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140038.P13603714832296326735

noncomputable section

/-- A140038: Primes of the form 24x^2+24xy+83y^2.

Offset 1, canonical program `A140038.P13603714832296326735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2523 terms. -/
def A140038 (n : ℕ) : ℤ :=
  (A140038.P13603714832296326735.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2523 terms. -/
def A140038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140111.P4700793734949317072

`p?[A065091(n+1)+A024675(n+1)]`
-/

namespace A140111.P4700793734949317072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + A024675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140111.P4700793734949317072

noncomputable section

/-- A140111: Primes of the form prime(x) + prime(x+1) - (prime(x+1) - prime(x))/2.

Offset 1, canonical program `A140111.P4700793734949317072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A140111 (n : ℕ) : ℤ :=
  A140111.P4700793734949317072.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A140111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140112.P13939740293674947011

`p?[A045344(n+2)+A024675(n+1)]`
-/

namespace A140112.P13939740293674947011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 2) + A024675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140112.P13939740293674947011

noncomputable section

/-- A140112: Primes of the form prime(x) + prime(x+1) + (prime(x+1)-prime(x))/2.

Offset 1, canonical program `A140112.P13939740293674947011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A140112 (n : ℕ) : ℤ :=
  A140112.P13939740293674947011.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A140112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140255.P14497844489668583855

`∑{d}[n+1, A028310(A120007(#))]`
-/

namespace A140255.P14497844489668583855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A028310 (A120007 d).toNat

end

end A140255.P14497844489668583855

noncomputable section

/-- A140255: Inverse Mobius transform of A014963.

Offset 1, canonical program `A140255.P14497844489668583855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140255 (n : ℕ) : ℤ :=
  A140255.P14497844489668583855.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140707.P14820232210912676940

`eq[A000523(n+1), A035531(n+1)]+1`
-/

namespace A140707.P14820232210912676940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035531 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A140707.P14820232210912676940

noncomputable section

/-- A140707: A positive integer n is included if n written in binary contains the same number of 0's as the number of distinct primes that divide n.

Offset 1, canonical program `A140707.P14820232210912676940`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 493 terms. -/
def A140707 (n : ℕ) : ℤ :=
  (A140707.P14820232210912676940.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 493 terms. -/
def A140707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140757.P932709549133875573

`∑[A140756(n+1)]`
-/

namespace A140757.P932709549133875573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140757.P932709549133875573

noncomputable section

/-- A140757: Cumulative sums of A140756.

Offset 1, canonical program `A140757.P932709549133875573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140757 (n : ℕ) : ℤ :=
  A140757.P932709549133875573.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141408.P6799354960942837233

`∩[A015914(n+1), A049097(n+1)]`
-/

namespace A141408.P6799354960942837233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141408.P6799354960942837233

noncomputable section

/-- A141408: Primes p = A007947(m) such that p+6 is also prime and p + 1 = A007947(m + 1).

Offset 1, canonical program `A141408.P6799354960942837233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2428 terms. -/
def A141408 (n : ℕ) : ℤ :=
  (A141408.P6799354960942837233.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2428 terms. -/
def A141408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141437.P18245047897130633086

`comp[A141436(n+1)-1]+1`
-/

namespace A141437.P18245047897130633086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141436 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A141437.P18245047897130633086

noncomputable section

/-- A141437: Complement of A141436.

Offset 1, canonical program `A141437.P18245047897130633086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141437 (n : ℕ) : ℤ :=
  (A141437.P18245047897130633086.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141544.P1087422406127598241

`A087915(n+2)-1`
-/

namespace A141544.P1087422406127598241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087915 (n + 2) - 1

end

end A141544.P1087422406127598241

noncomputable section

/-- A141544: Odd numbers k such that 2k+5 is a prime.

Offset 1, canonical program `A141544.P1087422406127598241`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087915, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141544 (n : ℕ) : ℤ :=
  A141544.P1087422406127598241.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087915, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141544.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A141678.P15377472097087936516

`A094565(A014132(n+1))-A094565(n+1)`
-/

namespace A141678.P15377472097087936516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094565 (A014132 (n + 1)).toNat - A094565 (n + 1)

end

end A141678.P15377472097087936516

noncomputable section

/-- A141678: Symmetrical triangle of coefficients based on invert transform of A001906.

Offset 1, canonical program `A141678.P15377472097087936516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A141678 (n : ℕ) : ℤ :=
  A141678.P15377472097087936516.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A141678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141679.P12256375055810763874

`A004442(round(3/A099375(n)))-1`
-/

namespace A141679.P12256375055810763874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.roundAway (3 / (A099375 n : ℚ))).toNat - 1

end

end A141679.P12256375055810763874

noncomputable section

/-- A141679: Triangle of coefficients of the inverse of A058071.

Offset 1, canonical program `A141679.P12256375055810763874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141679 (n : ℕ) : ℤ :=
  A141679.P12256375055810763874.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141680.P15300332058196604664

`A126988(n+1)*A135278(n)`
-/

namespace A141680.P15300332058196604664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1) * A135278 n

end

end A141680.P15300332058196604664

noncomputable section

/-- A141680: Triangle read by rows: T(n,m) = (n/m)*binomial(n,m) if m divides n, otherwise 0.

Offset 1, canonical program `A141680.P15300332058196604664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141680 (n : ℕ) : ℤ :=
  A141680.P15300332058196604664.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141701.P8211479873156200797

`∑{d}[A126988(n+1), A120007(#)]`
-/

namespace A141701.P8211479873156200797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A120007 d

end

end A141701.P8211479873156200797

noncomputable section

/-- A141701: Triangle read by rows: A001414 interleaved with (k-1) zeros.

Offset 1, canonical program `A141701.P8211479873156200797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A141701 (n : ℕ) : ℤ :=
  A141701.P8211479873156200797.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A141701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142089.P9481183596839956720

`∪[A140843(n+1), A141866(n+1)]`
-/

namespace A142089.P9481183596839956720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A142089.P9481183596839956720

noncomputable section

/-- A142089: Primes congruent to 19 mod 35.

Offset 1, canonical program `A142089.P9481183596839956720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142089 (n : ℕ) : ℤ :=
  (A142089.P9481183596839956720.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142406.P5142854088370419497

`∩[A105126(n+1), A107008(n+1)]`
-/

namespace A142406.P5142854088370419497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142406.P5142854088370419497

noncomputable section

/-- A142406: Primes congruent to 25 mod 48.

Offset 1, canonical program `A142406.P5142854088370419497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4991 terms. -/
def A142406 (n : ℕ) : ℤ :=
  (A142406.P5142854088370419497.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4991 terms. -/
def A142406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143104.P8981237344369215233

`A077051(A132119(n+1))`
-/

namespace A143104.P8981237344369215233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077051 (A132119 (n + 1)).toNat

end

end A143104.P8981237344369215233

noncomputable section

/-- A143104: Infinite Redheffer matrix read by upwards antidiagonals.

Offset 1, canonical program `A143104.P8981237344369215233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A143104 (n : ℕ) : ℤ :=
  A143104.P8981237344369215233.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A143104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143239.P4788495363014780299

`A010766(n+1)*A054524(n+1)`
-/

namespace A143239.P4788495363014780299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) * A054524 (n + 1)

end

end A143239.P4788495363014780299

noncomputable section

/-- A143239: Triangle read by rows, A126988 * A128407 as infinite lower triangular matrices.

Offset 1, canonical program `A143239.P4788495363014780299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143239 (n : ℕ) : ℤ :=
  A143239.P4788495363014780299.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143255.P4690898372087737114

`A010766(n+1)*A128408(n+1)`
-/

namespace A143255.P4690898372087737114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) * A128408 (n + 1)

end

end A143255.P4690898372087737114

noncomputable section

/-- A143255: Triangle read by rows, A128407 * A126988; 1<=k<=n.

Offset 1, canonical program `A143255.P4690898372087737114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143255 (n : ℕ) : ℤ :=
  A143255.P4690898372087737114.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143256.P573487630212465793

`∑{d}[A127093(n+1), A046692(#)]`
-/

namespace A143256.P573487630212465793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A046692 d

end

end A143256.P573487630212465793

noncomputable section

/-- A143256: Triangle read by rows, matrix multiplication A051731 * A128407 * A127648, 1<=k<=n.

Offset 1, canonical program `A143256.P573487630212465793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143256 (n : ℕ) : ℤ :=
  A143256.P573487630212465793.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143315.P7020980111509435971

`A014681(2*A126988(n+1))`
-/

namespace A143315.P7020980111509435971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A126988 (n + 1)).toNat

end

end A143315.P7020980111509435971

noncomputable section

/-- A143315: Triangle read by rows: T(n, k) = 2*A126988(n, k) - signum(A126988(n, k)).

Offset 1, canonical program `A143315.P7020980111509435971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143315 (n : ℕ) : ℤ :=
  A143315.P7020980111509435971.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143317.P4651974082893048059

`A000203(A054531(n+1))*A054524(n+1)`
-/

namespace A143317.P4651974082893048059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A054531 (n + 1)).toNat * A054524 (n + 1)

end

end A143317.P4651974082893048059

noncomputable section

/-- A143317: Triangle read by rows: A051731 * A143239.

Offset 1, canonical program `A143317.P4651974082893048059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143317 (n : ℕ) : ℤ :=
  A143317.P4651974082893048059.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143360.P13854882612011219664

`A037955(n+1)+A026023(n)`
-/

namespace A143360.P13854882612011219664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (n + 1) + A026023 n

end

end A143360.P13854882612011219664

noncomputable section

/-- A143360: Sum of root degrees of all symmetric ordered trees with n edges.

Offset 1, canonical program `A143360.P13854882612011219664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A143360 (n : ℕ) : ℤ :=
  A143360.P13854882612011219664.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A143360.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143469.P17550600215004347923

`A010766(n+1)*A143349(n+1)`
-/

namespace A143469.P17550600215004347923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) * A143349 (n + 1)

end

end A143469.P17550600215004347923

noncomputable section

/-- A143469: Triangle read by rows, A000012 * A143315 * A128407, 1<=k<=1.

Offset 1, canonical program `A143469.P17550600215004347923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143469 (n : ℕ) : ℤ :=
  A143469.P17550600215004347923.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143667.P402733352228964657

`3-A123564(n+1)`
-/

namespace A143667.P402733352228964657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A123564 (n + 1)

end

end A143667.P402733352228964657

noncomputable section

/-- A143667: Digits of the infinite Fibonacci word A003849 grouped 2 by 2 and interpreted as a binary value.

Offset 1, canonical program `A143667.P402733352228964657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A143667 (n : ℕ) : ℤ :=
  A143667.P402733352228964657.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A143667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143858.P1918811544124645960

`abs(A129818(∑[A035214(n)]))`
-/

namespace A143858.P1918811544124645960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A129818 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A143858.P1918811544124645960

noncomputable section

/-- A143858: Number of pairwise disjoint unions of m integer-to-integer subintervals of [0,n]; a rectangular array by antidiagonals, n>=2m-1, m>=1.

Offset 1, canonical program `A143858.P1918811544124645960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7875 terms. -/
def A143858 (n : ℕ) : ℤ :=
  A143858.P1918811544124645960.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7875 terms. -/
def A143858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143869.P7252286459323011956

`(n+1)*(A055653(n+1)+1)/2`
-/

namespace A143869.P7252286459323011956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * (A055653 (n + 1) + 1) : ℚ) / 2

end

end A143869.P7252286459323011956

noncomputable section

/-- A143869: An integer k is called regular (mod n) if there is an integer x such that k^2 x == k (mod n). Then these numbers are the sum of regular integers k (mod n) such that 1 <= k <= n for n=1,2,... .

Offset 1, canonical program `A143869.P7252286459323011956`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055653, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143869 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A143869.P7252286459323011956.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055653, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143869.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A144302.P15425808234958730441

`A049445(eq[1, A049445(n+1)%2]+1)`
-/

namespace A144302.P15425808234958730441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049445 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049445 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A144302.P15425808234958730441

noncomputable section

/-- A144302: Odd members of A049445.

Offset 1, canonical program `A144302.P15425808234958730441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4201 terms. -/
def A144302 (n : ℕ) : ℤ :=
  A144302.P15425808234958730441.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4201 terms. -/
def A144302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144329.P4597072197910217241

`A066182(n+1)-A144216(n+1)`
-/

namespace A144329.P4597072197910217241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (n + 1) - A144216 (n + 1)

end

end A144329.P4597072197910217241

noncomputable section

/-- A144329: Triangle read by rows, A000012 * A144328.

Offset 1, canonical program `A144329.P4597072197910217241`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144329 (n : ℕ) : ℤ :=
  A144329.P4597072197910217241.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144330.P3619810151422796478

`A144328(n+1)+A049780(n)`
-/

namespace A144330.P3619810151422796478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) + A049780 n

end

end A144330.P3619810151422796478

noncomputable section

/-- A144330: Triangle read by rows, A144328 * A000012 as infinite lower triangular matrices.

Offset 0, canonical program `A144330.P3619810151422796478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144330 (n : ℕ) : ℤ :=
  A144330.P3619810151422796478.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144336.P3305188520501149043

`2*A144328(n+1)-A130595(n)`
-/

namespace A144336.P3305188520501149043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A144328 (n + 1) - A130595 n

end

end A144336.P3305188520501149043

noncomputable section

/-- A144336: Triangle read by rows, 2*A144328 - A007318^(-1).

Offset 1, canonical program `A144336.P3305188520501149043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144336 (n : ℕ) : ℤ :=
  A144336.P3305188520501149043.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144337.P16245323222226020514

`A004273(A144328(n+1))*A004736(n+1)`
-/

namespace A144337.P16245323222226020514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A144328 (n + 1)).toNat * A004736 (n + 1)

end

end A144337.P16245323222226020514

noncomputable section

/-- A144337: Triangle read by rows, A000012 * (2*A144328 - A000012).

Offset 1, canonical program `A144337.P16245323222226020514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144337 (n : ℕ) : ℤ :=
  A144337.P16245323222226020514.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144573.P389422865237897508

`A007918(A141468(A000040(n+1)))`
-/

namespace A144573.P389422865237897508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A141468 (A000040 (n + 1)).toNat).toNat

end

end A144573.P389422865237897508

noncomputable section

/-- A144573: Smallest prime greater than nonprime(prime(n)).

Offset 1, canonical program `A144573.P389422865237897508`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A144573 (n : ℕ) : ℤ :=
  A144573.P389422865237897508.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A144573.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A144693.P3964769176750840430

`A101468(A066182(n+1)-A002024(n+1))`
-/

namespace A144693.P3964769176750840430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101468 (A066182 (n + 1) - A002024 (n + 1)).toNat

end

end A144693.P3964769176750840430

noncomputable section

/-- A144693: Triangle read by rows, A000012 * (3*A144328 - 2*A000012), where A000012 means a lower triangular matrix of all 1's.

Offset 1, canonical program `A144693.P3964769176750840430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144693 (n : ℕ) : ℤ :=
  A144693.P3964769176750840430.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144907.P1234744446401686961

`A177704(n)*A334085(n+1)`
-/

namespace A144907.P1234744446401686961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177704 n * A334085 (n + 1)

end

end A144907.P1234744446401686961

noncomputable section

/-- A144907: a(n) = 1 if n is prime, 2 * rad(n) if four divides n and rad(n) otherwise.

Offset 1, canonical program `A144907.P1234744446401686961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144907 (n : ℕ) : ℤ :=
  A144907.P1234744446401686961.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145024.P9653194186752503351

`Δ[record[gcd(n+3, A036263(n+1))]]`
-/

namespace A145024.P9653194186752503351
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 3 : ℤ) (A036263 (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A145024.P9653194186752503351

noncomputable section

/-- A145024: Number of primes between successive balanced primes (A006562).

Offset 1, canonical program `A145024.P9653194186752503351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A145024 (n : ℕ) : ℤ :=
  A145024.P9653194186752503351.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A145024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145154.P3148683332276423765

`and(5, -(Δ[A007504(n)]²+1))*∏{e}[n, #+1]`
-/

namespace A145154.P3148683332276423765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 5 (-((f1 (n + 1) - f1 n) ^ 2 + 1)) * ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ)

end

end A145154.P3148683332276423765

noncomputable section

/-- A145154: Coefficients in expansion of Eisenstein series E_1.

Offset 0, canonical program `A145154.P3148683332276423765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145154 (n : ℕ) : ℤ :=
  A145154.P3148683332276423765.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145379.P6530098402621285829

`A077049(A005843(A004736(n+1))+n)`
-/

namespace A145379.P6530098402621285829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077049 (A005843 (A004736 (n + 1)).toNat + (n : ℤ)).toNat

end

end A145379.P6530098402621285829

noncomputable section

/-- A145379: Square array read by antidiagonals upwards: T(n,k) = 1 if n divides k, T(n,k) = 0 otherwise, n >= 1, k >= 2.

Offset 1, canonical program `A145379.P6530098402621285829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145379 (n : ℕ) : ℤ :=
  A145379.P6530098402621285829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145487.P16425779050793417673

`(A145471(n+1)-5)/12`
-/

namespace A145487.P16425779050793417673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145471 (n + 1) - 5 : ℚ) / 12

end

end A145487.P16425779050793417673

noncomputable section

/-- A145487: Numbers k such that 6k+5 is prime and 12k+5 is also prime.

Offset 1, canonical program `A145487.P16425779050793417673`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145471, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145487 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A145487.P16425779050793417673.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145471, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145487.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A145489.P2407978232716720199

`(A145475(n+1)-5)/12`
-/

namespace A145489.P2407978232716720199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145475 (n + 1) - 5 : ℚ) / 12

end

end A145489.P2407978232716720199

noncomputable section

/-- A145489: Numbers k such that 6k + 11 is prime and 12k + 5 is also prime.

Offset 1, canonical program `A145489.P2407978232716720199`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145475, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145489 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A145489.P2407978232716720199.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145475, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145489.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A145838.P8091719907699711083

`A005891(A145837(n+1))`
-/

namespace A145838.P8091719907699711083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 (A145837 (n + 1)).toNat

end

end A145838.P8091719907699711083

noncomputable section

/-- A145838: Primes in A005891 = Centered pentagonal numbers: (5n^2 + 5n + 2)/2.

Offset 1, canonical program `A145838.P8091719907699711083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 907 terms. -/
def A145838 (n : ℕ) : ℤ :=
  A145838.P8091719907699711083.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 907 terms. -/
def A145838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A146969.P259206880826924078

`A000463(A039634(n+1))+A000038(n)`
-/

namespace A146969.P259206880826924078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A039634 (n + 1)).toNat + A000038 n

end

end A146969.P259206880826924078

noncomputable section

/-- A146969: a(1)=3, a(2)=1, a(n) = (n+1)/2 if n is an odd prime, and a(n) = a(floor(n/2)) otherwise.

Offset 1, canonical program `A146969.P259206880826924078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A146969 (n : ℕ) : ℤ :=
  A146969.P259206880826924078.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A146969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151739.P9308025043198049379

`p?[A051349(n+10)-A051349(n)]`
-/

namespace A151739.P9308025043198049379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 (n + 10) - A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A151739.P9308025043198049379

noncomputable section

/-- A151739: Primes which are the sum of ten consecutive composite numbers.

Offset 1, canonical program `A151739.P9308025043198049379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 568 terms. -/
def A151739 (n : ℕ) : ℤ :=
  A151739.P9308025043198049379.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 568 terms. -/
def A151739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151774.P15402501950599071548

`C(C(2, A088512(n)), 2)`
-/

namespace A151774.P15402501950599071548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (A088512 n).toNat) 2

end

end A151774.P15402501950599071548

noncomputable section

/-- A151774: Characteristic function of numbers with binary weight 2 (A018900).

Offset 0, canonical program `A151774.P15402501950599071548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151774 (n : ℕ) : ℤ :=
  (A151774.P15402501950599071548.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151775.P8909933314801045332

`A008294(A061885(n))`
-/

namespace A151775.P8909933314801045332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008294 (A061885 n).toNat

end

end A151775.P8909933314801045332

noncomputable section

/-- A151775: Triangle read by rows: T(n,k) = value of (d^2n/dx^2n) (tan^(2k)(x)/cos(x)) at the point x = 0.

Offset 0, canonical program `A151775.P8909933314801045332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 595 terms. -/
def A151775 (n : ℕ) : ℤ :=
  A151775.P8909933314801045332.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 595 terms. -/
def A151775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151781.P6933814142392635971

`∑[A151779(n+1)]`
-/

namespace A151781.P6933814142392635971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151779 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151781.P6933814142392635971

noncomputable section

/-- A151781: Partial sums of A151779.

Offset 1, canonical program `A151781.P6933814142392635971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151781 (n : ℕ) : ℤ :=
  A151781.P6933814142392635971.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151800.P4570031678714564115

`A007918(n+1)`
-/

namespace A151800.P4570031678714564115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (n + 1)

end

end A151800.P4570031678714564115

noncomputable section

/-- A151800: Least prime > n (version 2 of the "next prime" function).

Offset 0, canonical program `A151800.P4570031678714564115`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A151800 (n : ℕ) : ℤ :=
  A151800.P4570031678714564115.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A151800.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A151904.P13386682430961133461

`(3^A151902(n)-1)/2`
-/

namespace A151904.P13386682430961133461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 : ℚ) ^ (A151902 n : ℤ) - 1) / 2

end

end A151904.P13386682430961133461

noncomputable section

/-- A151904: a(n) = (3^(wt(k)+f(j))-1)/2 if n = 6k+j, 0 <= j < 6, where wt = A000120, f = A151899.

Offset 0, canonical program `A151904.P13386682430961133461`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151902, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A151904 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A151904.P13386682430961133461.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151902, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A151904.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A151921.P9708646044920363871

`A147582(n)-a(n-1)` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A151921.P9708646044920363871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  A147582 n - a (n - 1)

end

end A151921.P9708646044920363871

noncomputable section

/-- A151921: Net gain in number of ON cells at stage n of the cellular automaton described in A079317.

Offset 0, canonical program `A151921.P9708646044920363871`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1468 terms. -/
def A151921 (n : ℕ) : ℤ :=
  A151921.P9708646044920363871.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1468 terms. -/
def A151921.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152085.P13875307143407310086

`A152084(n+1)+2^floor(log2(A152084(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152085.P13875307143407310086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152084 (n + 1) + (2 ^ Nat.log 2 (A152084 (n + 1)).toNat : ℤ)

end

end A152085.P13875307143407310086

noncomputable section

/-- A152085: a(n) = A152084(n) + 2^floor(log_2(A152084(n))).

Offset 1, canonical program `A152085.P13875307143407310086`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152084, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152085 (n : ℕ) : ℤ :=
  A152085.P13875307143407310086.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152084, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152085.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A152567.P4256859840278819106

`eq[1, A049445(n+1)%2]+1`
-/

namespace A152567.P4256859840278819106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049445 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A152567.P4256859840278819106

noncomputable section

/-- A152567: Numbers k such that A049445(k) is odd.

Offset 1, canonical program `A152567.P4256859840278819106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4201 terms. -/
def A152567 (n : ℕ) : ℤ :=
  (A152567.P4256859840278819106.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4201 terms. -/
def A152567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152571.P12656702999726682672

`abs(A152568(n))*A152568(n)`
-/

namespace A152571.P12656702999726682672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A152568 n| * A152568 n

end

end A152571.P12656702999726682672

noncomputable section

/-- A152571: Triangle T(n,k) read by rows: T(n,n) = -1, T(n,0) = 4^(n - 1), T(n,k) = -4^(n - k - 1), 1 <= k <= n - 1.

Offset 0, canonical program `A152571.P12656702999726682672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152571 (n : ℕ) : ℤ :=
  A152571.P12656702999726682672.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152671.P5270819374685445221

`A152670(n+1)/2`
-/

namespace A152671.P5270819374685445221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152670 (n + 1) : ℚ) / 2

end

end A152671.P5270819374685445221

noncomputable section

/-- A152671: Even Catalan numbers divided by 2.

Offset 1, canonical program `A152671.P5270819374685445221`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152670, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152671 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A152671.P5270819374685445221.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152670, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152671.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A152679.P11876912117743683288

`A152678(n+1)/2`
-/

namespace A152679.P11876912117743683288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152678 (n + 1) : ℚ) / 2

end

end A152679.P11876912117743683288

noncomputable section

/-- A152679: Even members of A000203, divided by 2.

Offset 1, canonical program `A152679.P11876912117743683288`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152678, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152679 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A152679.P11876912117743683288.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152678, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152679.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A152723.P1073179501699945785

`A023416(gcd(2^A023416(n+1), A001316(n+1)))`
-/

namespace A152723.P1073179501699945785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (Int.gcd (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A023416 (n + 1) : ℤ))) (A001316 (n + 1)))

end

end A152723.P1073179501699945785

noncomputable section

/-- A152723: In binary, count of least frequent bit of n.

Offset 1, canonical program `A152723.P1073179501699945785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152723 (n : ℕ) : ℤ :=
  A152723.P1073179501699945785.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152984.P1224505352498316332

`abs(A152864(n+1))`
-/

namespace A152984.P1224505352498316332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A152864 (n + 1)|

end

end A152984.P1224505352498316332

noncomputable section

/-- A152984: Absolute values of A152864.

Offset 1, canonical program `A152984.P1224505352498316332`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152864, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152984 (n : ℕ) : ℤ :=
  A152984.P1224505352498316332.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152864, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152984.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A153036.P15641331792470478746

`A090996(n)-A043545(n)`
-/

namespace A153036.P15641331792470478746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 n - A043545 n

end

end A153036.P15641331792470478746

noncomputable section

/-- A153036: Integer parts of the full Stern-Brocot tree.

Offset 0, canonical program `A153036.P15641331792470478746`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090996, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153036 (n : ℕ) : ℤ :=
  A153036.P15641331792470478746.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090996, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153036.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A153044.P8228127336685737390

`A153043(n+1)+3`
-/

namespace A153044.P8228127336685737390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153043 (n + 1) + 3

end

end A153044.P8228127336685737390

noncomputable section

/-- A153044: Numbers n such that 2*n-9 is not a prime.

Offset 1, canonical program `A153044.P8228127336685737390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153044 (n : ℕ) : ℤ :=
  A153044.P8228127336685737390.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153053.P11375225491096847210

`A153052(n+1)-1`
-/

namespace A153053.P11375225491096847210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153052 (n + 1) - 1

end

end A153053.P11375225491096847210

noncomputable section

/-- A153053: Numbers j such that 2*j + 7 is not a prime.

Offset 1, canonical program `A153053.P11375225491096847210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153053 (n : ℕ) : ℤ :=
  A153053.P11375225491096847210.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153135.P6228416679283072176

`p?[A153134(n+1)]`
-/

namespace A153135.P6228416679283072176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153135.P6228416679283072176

noncomputable section

/-- A153135: Primes p such that 6*p - 7 is also prime.

Offset 1, canonical program `A153135.P6228416679283072176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1132 terms. -/
def A153135 (n : ℕ) : ℤ :=
  A153135.P6228416679283072176.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1132 terms. -/
def A153135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153143.P16912639068039424333

`A153081(n+3)-3`
-/

namespace A153143.P16912639068039424333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153081 (n + 3) - 3

end

end A153143.P16912639068039424333

noncomputable section

/-- A153143: Nonnegative numbers k such that 2k + 19 is prime.

Offset 1, canonical program `A153143.P16912639068039424333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A153143 (n : ℕ) : ℤ :=
  A153143.P16912639068039424333.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A153143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153238.P13831251492164971693

`A153052(n+1)+1`
-/

namespace A153238.P13831251492164971693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153052 (n + 1) + 1

end

end A153238.P13831251492164971693

noncomputable section

/-- A153238: Numbers k such that 2*k + 3 is composite.

Offset 1, canonical program `A153238.P13831251492164971693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153238 (n : ℕ) : ℤ :=
  A153238.P13831251492164971693.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153245.P2590353044541573662

`A059324(n+1)+2`
-/

namespace A153245.P2590353044541573662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059324 (n + 1) + 2

end

end A153245.P2590353044541573662

noncomputable section

/-- A153245: Numbers n>1 such that 6*n-7 is not prime.

Offset 1, canonical program `A153245.P2590353044541573662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153245 (n : ℕ) : ℤ :=
  A153245.P2590353044541573662.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153264.P6535688015430088092

`comp[A127575(n+1)]`
-/

namespace A153264.P6535688015430088092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153264.P6535688015430088092

noncomputable section

/-- A153264: Numbers n such that 16*n+15 is not prime.

Offset 1, canonical program `A153264.P6535688015430088092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153264 (n : ℕ) : ℤ :=
  (A153264.P6535688015430088092.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153279.P12459744595363898917

`lcm(3, A036561(n))/3`
-/

namespace A153279.P12459744595363898917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A036561 n) : ℚ) / 3

end

end A153279.P12459744595363898917

noncomputable section

/-- A153279: Eigentriangle by rows, T(n,k) = A000079(n-k) * (diagonalized matrix of (1,1,3,9,27,81,...)).

Offset 0, canonical program `A153279.P12459744595363898917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153279 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A153279.P12459744595363898917.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153307.P790128835309383341

`comp[A090614(n+1)]`
-/

namespace A153307.P790128835309383341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153307.P790128835309383341

noncomputable section

/-- A153307: Numbers k such that 14*k+3 is not prime.

Offset 1, canonical program `A153307.P790128835309383341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153307 (n : ℕ) : ℤ :=
  (A153307.P790128835309383341.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153403.P824357136833044113

`comp[A102338(n+1)]`
-/

namespace A153403.P824357136833044113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153403.P824357136833044113

noncomputable section

/-- A153403: Numbers k such that 10*k+3 is not prime.

Offset 1, canonical program `A153403.P824357136833044113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153403 (n : ℕ) : ℤ :=
  (A153403.P824357136833044113.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153638.P5475355786844467178

`A050493(n)%2`
-/

namespace A153638.P5475355786844467178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050493 n) 2

end

end A153638.P5475355786844467178

noncomputable section

/-- A153638: Odiousness of triangular numbers.

Offset 0, canonical program `A153638.P5475355786844467178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153638 (n : ℕ) : ℤ :=
  A153638.P5475355786844467178.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154338.P12998775636047877976

`2*A060187(n+1)-A154336(n)`
-/

namespace A154338.P12998775636047877976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060187 (n + 1) - A154336 n

end

end A154338.P12998775636047877976

noncomputable section

/-- A154338: A triangular sequence of coefficients of polynomials: p(x,n)=(-(x - 1)^(n)*Sum[(((-1)^(n)*(2*k + 1)^(n - 1)))*x^k, {k,0, Infinity}]+2*(x - 1)^(n + 1)*Sum[((-1)^(n + 1)*k^n)*x^k, {k, 0, Infinity}]/x).

Offset 0, canonical program `A154338.P12998775636047877976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A154338 (n : ℕ) : ℤ :=
  A154338.P12998775636047877976.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A154338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154388.P13234151177117315551

`A023531(A211394(n+1)-1)`
-/

namespace A154388.P13234151177117315551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (A211394 (n + 1) - 1).toNat

end

end A154388.P13234151177117315551

noncomputable section

/-- A154388: Triangle T(n,k), 0<=k<=n, read by rows given by [0,1,-1,0,0,0,0,0,0,0,...] DELTA [1,-1,-1,1,0,0,0,0,0,0,0,...] where DELTA is the operator defined in A084938.

Offset 0, canonical program `A154388.P13234151177117315551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154388 (n : ℕ) : ℤ :=
  A154388.P13234151177117315551.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154438.P677058482357628311

`A092569(A153153(n))`
-/

namespace A154438.P677058482357628311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (A153153 n).toNat

end

end A154438.P677058482357628311

noncomputable section

/-- A154438: Permutation of nonnegative integers: A059893-conjugate of A154436.

Offset 0, canonical program `A154438.P677058482357628311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A154438 (n : ℕ) : ℤ :=
  A154438.P677058482357628311.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A154438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154448.P8908131328963230006

`xor(A004526(n), A153142(A003188(n)))`
-/

namespace A154448.P8908131328963230006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004526 n) (A153142 (A003188 n).toNat)

end

end A154448.P8908131328963230006

noncomputable section

/-- A154448: Permutation of nonnegative integers induced by wreath recursion a=s(b,c), b=s(c,a), c=(c,c), starting from state a, rewriting bits from the second most significant bit toward the least significant end.

Offset 0, canonical program `A154448.P8908131328963230006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A154448 (n : ℕ) : ℤ :=
  A154448.P8908131328963230006.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A154448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154607.P7973489224117933479

`A108232(n+1)-1`
-/

namespace A154607.P7973489224117933479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108232 (n + 1) - 1

end

end A154607.P7973489224117933479

noncomputable section

/-- A154607: Numbers n such that 11*n + 4 is prime.

Offset 1, canonical program `A154607.P7973489224117933479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154607 (n : ℕ) : ℤ :=
  A154607.P7973489224117933479.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154608.P12856438361669168051

`p?[A108232(n+1)-1]`
-/

namespace A154608.P12856438361669168051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108232 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154608.P12856438361669168051

noncomputable section

/-- A154608: Primes p such that 11*p + 4 is also prime.

Offset 1, canonical program `A154608.P12856438361669168051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2387 terms. -/
def A154608 (n : ℕ) : ℤ :=
  A154608.P12856438361669168051.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2387 terms. -/
def A154608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154611.P2357276127298579042

`A153347(n+1)-1`
-/

namespace A154611.P2357276127298579042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153347 (n + 1) - 1

end

end A154611.P2357276127298579042

noncomputable section

/-- A154611: Numbers n such that 7*n+3 is not prime.

Offset 1, canonical program `A154611.P2357276127298579042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154611 (n : ℕ) : ℤ :=
  A154611.P2357276127298579042.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154696.P2906835643943415634

`(A175840(n)+A036561(n))*A060187(n+1)`
-/

namespace A154696.P2906835643943415634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A175840 n + A036561 n) * A060187 (n + 1)

end

end A154696.P2906835643943415634

noncomputable section

/-- A154696: Triangular sequence defined by T(n, m) = (r^(n-m)*q^m + r^m*q^(n-m))*b(n), where b(n) = coefficients of p(x, n) = 2^n*(1-x)^(n+1) * LerchPhi(x, -n, 1/2), and r=2, q=3.

Offset 0, canonical program `A154696.P2906835643943415634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 861 terms. -/
def A154696 (n : ℕ) : ℤ :=
  A154696.P2906835643943415634.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 861 terms. -/
def A154696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154765.P4283391011367662765

`p?[eq[A196564(n), A276729(n)]]`
-/

namespace A154765.P4283391011367662765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A154765.P4283391011367662765

noncomputable section

/-- A154765: Primes with the same number of even decimal digits and prime digits.

Offset 1, canonical program `A154765.P4283391011367662765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A154765 (n : ℕ) : ℤ :=
  (A154765.P4283391011367662765.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A154765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154809.P10885830400059510628

`lt[1, A055945(n)²+1]`
-/

namespace A154809.P10885830400059510628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 n ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A154809.P10885830400059510628

noncomputable section

/-- A154809: Numbers whose binary expansion is not palindromic.

Offset 1, canonical program `A154809.P10885830400059510628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154809 (n : ℕ) : ℤ :=
  (A154809.P10885830400059510628.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154913.P13899564087834538575

`A154843(n)*A271709(n)`
-/

namespace A154913.P13899564087834538575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154843 n * A271709 n

end

end A154913.P13899564087834538575

noncomputable section

/-- A154913: Triangle T(n,m,p,q) = (p^(n-k)*q^k + p^k*q^(n-k))*(StirlingS1(n, k) + StirlingS1(n, n-k)) with p=2 and q=1, read by rows.

Offset 0, canonical program `A154913.P13899564087834538575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1893 terms. -/
def A154913 (n : ℕ) : ℤ :=
  A154913.P13899564087834538575.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1893 terms. -/
def A154913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154914.P10683815225561825413

`(A054654(n)+A048994(n))*(A175840(n)+A036561(n))`
-/

namespace A154914.P10683815225561825413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054654 n + A048994 n) * (A175840 n + A036561 n)

end

end A154914.P10683815225561825413

noncomputable section

/-- A154914: Triangle T(n,m,p,q) = (p^(n-k)*q^k + p^k*q^(n-k))*(StirlingS1(n, k) + StirlingS1(n, n-k)) with p=2 and q=3, read by rows.

Offset 0, canonical program `A154914.P10683815225561825413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1598 terms. -/
def A154914 (n : ℕ) : ℤ :=
  A154914.P10683815225561825413.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1598 terms. -/
def A154914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155031.P17817635720882455542

`A294619(2*A126988(n+1))-1`
-/

namespace A155031.P17817635720882455542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 (2 * A126988 (n + 1)).toNat - 1

end

end A155031.P17817635720882455542

noncomputable section

/-- A155031: Triangle T(n, k) = 0 if n==0 (mod k) otherwise -1 with T(n, n) = 1 and T(n, 0) = 0, read by rows.

Offset 1, canonical program `A155031.P17817635720882455542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155031 (n : ℕ) : ℤ :=
  A155031.P17817635720882455542.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155051.P17278447736844472372

`∑[A097331(or(1, n))]`
-/

namespace A155051.P17278447736844472372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155051.P17278447736844472372

noncomputable section

/-- A155051: Expansion of c(x^2)*(1+x)/(1-x), c(x) the g.f. of A000108.

Offset 0, canonical program `A155051.P17278447736844472372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 344 terms. -/
def A155051 (n : ℕ) : ℤ :=
  A155051.P17278447736844472372.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 344 terms. -/
def A155051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155118.P18324433763876345140

`round(A036561(n)/3)`
-/

namespace A155118.P18324433763876345140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A036561 n : ℚ) / 3)

end

end A155118.P18324433763876345140

noncomputable section

/-- A155118: Array T(n,k) read by antidiagonals: the k-th term of the n-th iterated differences of A140429.

Offset 0, canonical program `A155118.P18324433763876345140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155118 (n : ℕ) : ℤ :=
  A155118.P18324433763876345140.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155537.P495067462620103375

`(A140513(n)+1)*A001263(n+1)`
-/

namespace A155537.P495067462620103375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A140513 n + 1) * A001263 (n + 1)

end

end A155537.P495067462620103375

noncomputable section

/-- A155537: Triangle T(n,k,p,q) = (p^n + q^n)*A001263(n, k) with p=2 and q=1, read by rows.

Offset 1, canonical program `A155537.P495067462620103375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6723 terms. -/
def A155537 (n : ℕ) : ℤ :=
  A155537.P495067462620103375.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6723 terms. -/
def A155537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155587.P7484894017318581983

`∑[A120588(n)]`
-/

namespace A155587.P7484894017318581983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155587.P7484894017318581983

noncomputable section

/-- A155587: Expansion of (1 + x*c(x))/(1 - x), where c(x) is the g.f. of A000108.

Offset 0, canonical program `A155587.P7484894017318581983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A155587 (n : ℕ) : ℤ :=
  A155587.P7484894017318581983.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A155587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155786.P8875892173280878446

`A045344(eq[1, A040164(n+1)])`
-/

namespace A155786.P8875892173280878446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A155786.P8875892173280878446

noncomputable section

/-- A155786: Primes whose first and last digits differ by 1.

Offset 1, canonical program `A155786.P8875892173280878446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1579 terms. -/
def A155786 (n : ℕ) : ℤ :=
  A155786.P8875892173280878446.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1579 terms. -/
def A155786.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155862.P683860161206178299

`∑{#}[n, C(n+#, 2*#)*A007854(#)]`
-/

namespace A155862.P683860161206178299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (n + k) (2 * k) : ℤ) * A007854 k

end

end A155862.P683860161206178299

noncomputable section

/-- A155862: A 'Morgan Voyce' transform of A007854.

Offset 0, canonical program `A155862.P683860161206178299`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007854, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A155862 (n : ℕ) : ℤ :=
  A155862.P683860161206178299.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007854, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A155862.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A155864.P5469586023862322716

`ceil(A155863(n)/∑[A010054(n)])`
-/

namespace A155864.P5469586023862322716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155863 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌉

end

end A155864.P5469586023862322716

noncomputable section

/-- A155864: Triangle T(n,k) = n*(n-1)*binomial(n-2, k-1) for 1 <= k <= n-1, n >= 2, and T(n,0) = T(n,n) = 1 for n >= 0, read by rows.

Offset 0, canonical program `A155864.P5469586023862322716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155864 (n : ℕ) : ℤ :=
  A155864.P5469586023862322716.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155919.P287135877866266634

`A000265(n+1)*A090168(A006519(n+1))`
-/

namespace A155919.P287135877866266634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A090168 (A006519 (n + 1)).toNat

end

end A155919.P287135877866266634

noncomputable section

/-- A155919: Number of squared hypotenuses mod n in three dimensions.

Offset 1, canonical program `A155919.P287135877866266634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155919 (n : ℕ) : ℤ :=
  A155919.P287135877866266634.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155935.P15244456165224310115

`comp[A154610(n+1)]`
-/

namespace A155935.P15244456165224310115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A155935.P15244456165224310115

noncomputable section

/-- A155935: Numbers n such that 13*n + 5 is not prime.

Offset 1, canonical program `A155935.P15244456165224310115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155935 (n : ℕ) : ℤ :=
  (A155935.P15244456165224310115.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155935.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155938.P6461613877834825485

`p?[A155937(n+1)]`
-/

namespace A155938.P6461613877834825485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155938.P6461613877834825485

noncomputable section

/-- A155938: Primes p such that 13*p + 8 is also prime.

Offset 1, canonical program `A155938.P6461613877834825485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A155938 (n : ℕ) : ℤ :=
  A155938.P6461613877834825485.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A155938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155943.P14210588904046408266

`p?[2*A105135(n+1)+1]`
-/

namespace A155943.P14210588904046408266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105135 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155943.P14210588904046408266

noncomputable section

/-- A155943: Primes p such that 16*p + 1 is also prime.

Offset 1, canonical program `A155943.P14210588904046408266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1264 terms. -/
def A155943 (n : ℕ) : ℤ :=
  A155943.P14210588904046408266.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1264 terms. -/
def A155943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155990.P205879086183689194

`A000040(eq[0, A276729(n)])`
-/

namespace A155990.P205879086183689194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A155990.P205879086183689194

noncomputable section

/-- A155990: Numbers prime(k) as k runs through the numbers whose digits are all prime.

Offset 1, canonical program `A155990.P205879086183689194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A155990 (n : ℕ) : ℤ :=
  A155990.P205879086183689194.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A155990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156006.P8984880958140237192

`A106566(A038722(n+2))+A106566(n)`
-/

namespace A156006.P8984880958140237192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 (A038722 (n + 2)).toNat + A106566 n

end

end A156006.P8984880958140237192

noncomputable section

/-- A156006: Triangle, read by rows, T(n, k) = ((n-k)/(n+k))*binomial(n+k, n) + (k/(2*n-k))*binomial(2*n -k, n), with T(0,0) = 1.

Offset 0, canonical program `A156006.P8984880958140237192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A156006 (n : ℕ) : ℤ :=
  A156006.P8984880958140237192.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A156006.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156014.P3371744540738237812

`∩[A023216(n+1), A156004(n+1)]`
-/

namespace A156014.P3371744540738237812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156004 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156014.P3371744540738237812

noncomputable section

/-- A156014: Primes p such that 4*p+9, 8*p+21 are both prime.

Offset 1, canonical program `A156014.P3371744540738237812`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A156014 (n : ℕ) : ℤ :=
  (A156014.P3371744540738237812.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A156014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156112.P4814909740814716344

`p?[A156104(n+1)-36]`
-/

namespace A156112.P4814909740814716344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156104 (n + 1) - 36

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156112.P4814909740814716344

noncomputable section

/-- A156112: Primes p such that p+36 and p+72 are both prime.

Offset 1, canonical program `A156112.P4814909740814716344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1823 terms. -/
def A156112 (n : ℕ) : ℤ :=
  A156112.P4814909740814716344.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1823 terms. -/
def A156112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156254.P15889775803240254451

`gcd(Δ[A003056(n)], A128408(n+1))`
-/

namespace A156254.P15889775803240254451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A128408 (n + 1))

end

end A156254.P15889775803240254451

noncomputable section

/-- A156254: Triangle read by rows. Matrix inverse of A156241.

Offset 1, canonical program `A156254.P15889775803240254451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8128 terms. -/
def A156254 (n : ℕ) : ℤ :=
  (A156254.P15889775803240254451.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8128 terms. -/
def A156254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156300.P3226959070886368059

`p?[A156287(n+1)]`
-/

namespace A156300.P3226959070886368059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156287 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156300.P3226959070886368059

noncomputable section

/-- A156300: Primes p such that 4*p - 5 is also prime.

Offset 1, canonical program `A156300.P3226959070886368059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 889 terms. -/
def A156300 (n : ℕ) : ℤ :=
  A156300.P3226959070886368059.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 889 terms. -/
def A156300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156543.P5898804048182279516

`eq[0, A156542(n+1)]+1`
-/

namespace A156543.P5898804048182279516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156542 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A156543.P5898804048182279516

noncomputable section

/-- A156543: Multiplicative closure of primes that are not Sophie Germain primes (A053176).

Offset 1, canonical program `A156543.P5898804048182279516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1777 terms. -/
def A156543 (n : ℕ) : ℤ :=
  (A156543.P5898804048182279516.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1777 terms. -/
def A156543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156563.P15747032255580645587

`eq[1, A049705(n+1)]+1+n-a(n-1)` with `a(0)=2`
-/

namespace A156563.P15747032255580645587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 + n : ℤ) - a (n - 1)

end

end A156563.P15747032255580645587

noncomputable section

/-- A156563: a(n) = (-1)^n*Sum_{k=1..n} A078649(k)*(-1)^k.

Offset 1, canonical program `A156563.P15747032255580645587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A156563 (n : ℕ) : ℤ :=
  A156563.P15747032255580645587.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A156563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156595.P4549591963331449160

`and(1, Δ[A081603(n)])`
-/

namespace A156595.P4549591963331449160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n)

end

end A156595.P4549591963331449160

noncomputable section

/-- A156595: Fixed point of the morphism 0->011, 1->010.

Offset 0, canonical program `A156595.P4549591963331449160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156595 (n : ℕ) : ℤ :=
  A156595.P4549591963331449160.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156683.P11389173112947492787

`lt[1, A024361(n+1)]+1`
-/

namespace A156683.P11389173112947492787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A156683.P11389173112947492787

noncomputable section

/-- A156683: Integers that can occur as either leg in more than one primitive Pythagorean triple.

Offset 1, canonical program `A156683.P11389173112947492787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156683 (n : ℕ) : ℤ :=
  (A156683.P11389173112947492787.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156708.P214328452382928940

`round(A104709(n)/A035214(n))`
-/

namespace A156708.P214328452382928940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A104709 n : ℚ) / (A035214 n : ℚ))

end

end A156708.P214328452382928940

noncomputable section

/-- A156708: Triangle read by rows, binomial transform of A154325.

Offset 0, canonical program `A156708.P214328452382928940`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156708 (n : ℕ) : ℤ :=
  A156708.P214328452382928940.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156709.P4924943972656695821

`∑[A156706(n+1)]`
-/

namespace A156709.P4924943972656695821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156709.P4924943972656695821

noncomputable section

/-- A156709: For all numbers k(n) congruent to -1 or +1 (mod 6) starting with k(n) = {5,7,11,13,...}, a(k(n)) is incremented by the congruence (mod 6) if k(n) is prime and by 0 if k(n) is composite.

Offset 1, canonical program `A156709.P4924943972656695821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156709 (n : ℕ) : ℤ :=
  A156709.P4924943972656695821.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156735.P3441470020431776995

`floor(A156721(n+1)/A156639(n+1)*A156640(n))`
-/

namespace A156735.P3441470020431776995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A156721 (n + 1) : ℚ) / (A156639 (n + 1) : ℚ) * (A156640 n : ℚ)⌋

end

end A156735.P3441470020431776995

noncomputable section

/-- A156735: a(n) = 57122*n^2 + 47320*n + 9801.

Offset 0, canonical program `A156735.P3441470020431776995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156735 (n : ℕ) : ℤ :=
  A156735.P3441470020431776995.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156874.P3410723949972869260

`∑[A156660(n+1)]`
-/

namespace A156874.P3410723949972869260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156874.P3410723949972869260

noncomputable section

/-- A156874: Number of Sophie Germain primes <= n.

Offset 1, canonical program `A156874.P3410723949972869260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156874 (n : ℕ) : ℤ :=
  A156874.P3410723949972869260.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156915.P11372308438492800137

`val(eq[3, A023416(n)], 2)+1`
-/

namespace A156915.P11372308438492800137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) 2 + 1

end

end A156915.P11372308438492800137

noncomputable section

/-- A156915: Fixed point of: 4-->1234, 3->123, 2-->12, 1->1.

Offset 1, canonical program `A156915.P11372308438492800137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A156915 (n : ℕ) : ℤ :=
  (A156915.P11372308438492800137.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A156915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157493.P10261944289604514386

`∑[A157492(n+1)]`
-/

namespace A157493.P10261944289604514386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157493.P10261944289604514386

noncomputable section

/-- A157493: Apply partial sum operator thrice to sequence of squares of the first n primes.

Offset 1, canonical program `A157493.P10261944289604514386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157493 (n : ℕ) : ℤ :=
  A157493.P10261944289604514386.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157502.P11939738735497661628

`A211197(n+1)+A093995(n+1)`
-/

namespace A157502.P11939738735497661628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211197 (n + 1) + A093995 (n + 1)

end

end A157502.P11939738735497661628

noncomputable section

/-- A157502: Even numbers without the squares.

Offset 1, canonical program `A157502.P11939738735497661628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157502 (n : ℕ) : ℤ :=
  A157502.P11939738735497661628.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157635.P5484707962841766784

`ceil(A157632(n)/3)`
-/

namespace A157635.P5484707962841766784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A157632 n : ℚ) / 3⌉

end

end A157635.P5484707962841766784

noncomputable section

/-- A157635: Triangle read by rows: T(n,m) = 1 if n*m*(n-m) = 0, and n*m*(n-m) otherwise.

Offset 0, canonical program `A157635.P5484707962841766784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157635 (n : ℕ) : ℤ :=
  A157635.P5484707962841766784.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157975.P11206613630434011016

`p?[A127575(n+1)]`
-/

namespace A157975.P11206613630434011016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157975.P11206613630434011016

noncomputable section

/-- A157975: Primes p such that 16*p + 15 is also prime.

Offset 1, canonical program `A157975.P11206613630434011016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1777 terms. -/
def A157975 (n : ℕ) : ℤ :=
  A157975.P11206613630434011016.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1777 terms. -/
def A157975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158196.P7128410409804886233

`A076035(n)+A076035(n)-A076025(n+1)`
-/

namespace A158196.P7128410409804886233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076035 n + (A076035 n - A076025 (n + 1))

end

end A158196.P7128410409804886233

noncomputable section

/-- A158196: Expansion of (1-x^2*c(x)^4)/(1-3*x*c(x)^2), c(x) the g.f. of A000108.

Offset 0, canonical program `A158196.P7128410409804886233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A158196 (n : ℕ) : ℤ :=
  A158196.P7128410409804886233.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A158196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158251.P11747801187545961799

`∑[A088570(n+1)]`
-/

namespace A158251.P11747801187545961799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158251.P11747801187545961799

noncomputable section

/-- A158251: a(n)=S(S(n)) where S=A054353 gives the partial sums of Kolakoski sequence.

Offset 1, canonical program `A158251.P11747801187545961799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158251 (n : ℕ) : ℤ :=
  A158251.P11747801187545961799.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158276.P14399586062103638570

`lt[1, A158275(n+1)]+1`
-/

namespace A158276.P14399586062103638570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158275 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A158276.P14399586062103638570

noncomputable section

/-- A158276: Numbers k such that sigma_1(k) does not divide sigma_2(k).

Offset 1, canonical program `A158276.P14399586062103638570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9825 terms. -/
def A158276 (n : ℕ) : ℤ :=
  (A158276.P14399586062103638570.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9825 terms. -/
def A158276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158315.P7807818137616395365

`A158280(n)/7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A158315.P7807818137616395365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158280 n : ℚ) / 7

end

end A158315.P7807818137616395365

noncomputable section

/-- A158315: A158280(n)/7.

Offset 0, canonical program `A158315.P7807818137616395365`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158280, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158315 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A158315.P7807818137616395365.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158280, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158315.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A158528.P17573556764949661852

`Δ[A007504(∑[A060199(n)])]`
-/

namespace A158528.P17573556764949661852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060199 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158528.P17573556764949661852

noncomputable section

/-- A158528: Sum of primes between consecutive positive cubes.

Offset 1, canonical program `A158528.P17573556764949661852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A158528 (n : ℕ) : ℤ :=
  A158528.P17573556764949661852.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A158528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158822.P11905004217678079225

`A066182(n+1)-A112367(n)`
-/

namespace A158822.P11905004217678079225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (n + 1) - A112367 n

end

end A158822.P11905004217678079225

noncomputable section

/-- A158822: Triangle read by rows, matrix triple product A000012 * A145677 * A000012.

Offset 0, canonical program `A158822.P11905004217678079225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158822 (n : ℕ) : ℤ :=
  A158822.P11905004217678079225.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158823.P222206125904905872

`A130270(n+1)+A004247(n)`
-/

namespace A158823.P222206125904905872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1) + A004247 n

end

end A158823.P222206125904905872

noncomputable section

/-- A158823: Triangle read by rows: matrix product A004736 * A158821.

Offset 1, canonical program `A158823.P222206125904905872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158823 (n : ℕ) : ℤ :=
  A158823.P222206125904905872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158841.P12435815031069025361

`A144328(n+1)+A095834(n+1)`
-/

namespace A158841.P12435815031069025361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) + A095834 (n + 1)

end

end A158841.P12435815031069025361

noncomputable section

/-- A158841: Triangle read by rows, matrix product of A145677 * A004736.

Offset 1, canonical program `A158841.P12435815031069025361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158841 (n : ℕ) : ℤ :=
  A158841.P12435815031069025361.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158897.P8888983181281037156

`A141620(n)+A158405(n+2)`
-/

namespace A158897.P8888983181281037156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141620 n + A158405 (n + 2)

end

end A158897.P8888983181281037156

noncomputable section

/-- A158897: The elements of A059100 at indices of triangular numbers, padded with zeros.

Offset 1, canonical program `A158897.P8888983181281037156`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141620, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158897 (n : ℕ) : ℤ :=
  A158897.P8888983181281037156.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141620, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158897.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A158906.P5702865832035020583

`ceil(A126988(n+1)/A007318(n))`
-/

namespace A158906.P5702865832035020583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A126988 (n + 1) : ℚ) / (A007318 n : ℚ)⌉

end

end A158906.P5702865832035020583

noncomputable section

/-- A158906: Triangle read by rows: the matrix product A158821 * A051731.

Offset 1, canonical program `A158906.P5702865832035020583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158906 (n : ℕ) : ℤ :=
  A158906.P5702865832035020583.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158946.P11062065186975747176

`A209279(A066182(n+1)-A003056(n))`
-/

namespace A158946.P11062065186975747176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209279 (A066182 (n + 1) - A003056 n).toNat

end

end A158946.P11062065186975747176

noncomputable section

/-- A158946: Triangle read by rows, A000012(signed) * A145677 * A000012.

Offset 1, canonical program `A158946.P11062065186975747176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158946 (n : ℕ) : ℤ :=
  A158946.P11062065186975747176.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159637.P12559117183087142693

`A101080(n)%2`
-/

namespace A159637.P12559117183087142693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101080 n) 2

end

end A159637.P12559117183087142693

noncomputable section

/-- A159637: Start with [0], repeatedly apply the map 0 -> [01/10], 1 -> [10/01].

Offset 0, canonical program `A159637.P12559117183087142693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159637 (n : ℕ) : ℤ :=
  A159637.P12559117183087142693.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159919.P16525752381521222348

`A173395(n+1)+A059036(n)`
-/

namespace A159919.P16525752381521222348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173395 (n + 1) + A059036 n

end

end A159919.P16525752381521222348

noncomputable section

/-- A159919: A square array of numbers, read by antidiagonals, called Sundaram's sieve.

Offset 1, canonical program `A159919.P16525752381521222348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159919 (n : ℕ) : ℤ :=
  A159919.P16525752381521222348.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159953.P9451337242040887591

`A054973(lt[1, A054973(n+1)]+1)`
-/

namespace A159953.P9451337242040887591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A159953.P9451337242040887591

noncomputable section

/-- A159953: Values in A054973 larger than 1.

Offset 1, canonical program `A159953.P9451337242040887591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1095 terms. -/
def A159953 (n : ℕ) : ℤ :=
  A159953.P9451337242040887591.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1095 terms. -/
def A159953.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159958.P5388450425677827811

`A053838(n)-n%3+n`
-/

namespace A159958.P5388450425677827811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 n - ((n % 3 : ℕ) : ℤ) + (n : ℤ)

end

end A159958.P5388450425677827811

noncomputable section

/-- A159958: Lodumo_3 of A053838 .

Offset 0, canonical program `A159958.P5388450425677827811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159958 (n : ℕ) : ℤ :=
  A159958.P5388450425677827811.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159958.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159972.P10557294459438984683

`A099324(n)-A062157(n)`
-/

namespace A159972.P10557294459438984683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099324 n - A062157 n

end

end A159972.P10557294459438984683

noncomputable section

/-- A159972: Row sums of number triangle A159971.

Offset 0, canonical program `A159972.P10557294459438984683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A159972 (n : ℕ) : ℤ :=
  A159972.P10557294459438984683.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A159972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160096.P17903727192882003524

`∑[-Δ[A078616(n)]]`
-/

namespace A160096.P17903727192882003524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078616 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160096.P17903727192882003524

noncomputable section

/-- A160096: Partial sums of A010815 starting with offset 1, and signed (+ + - - + + ...).

Offset 1, canonical program `A160096.P17903727192882003524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2049 terms. -/
def A160096 (n : ℕ) : ℤ :=
  A160096.P17903727192882003524.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2049 terms. -/
def A160096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160383.P16037544533340552410

`A139352(and(n, 2*n))`
-/

namespace A160383.P16037544533340552410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (Nat.land n (2 * n))

end

end A160383.P16037544533340552410

noncomputable section

/-- A160383: Number of 3's in base-4 representation of n.

Offset 0, canonical program `A160383.P16037544533340552410`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160383 (n : ℕ) : ℤ :=
  A160383.P16037544533340552410.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160385.P9288660522988789958

`A160381(n)+A139352(n)`
-/

namespace A160385.P9288660522988789958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n + A139352 n

end

end A160385.P9288660522988789958

noncomputable section

/-- A160385: Number of nonzero digits in base-4 representation of n.

Offset 0, canonical program `A160385.P9288660522988789958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160385 (n : ℕ) : ℤ :=
  A160385.P9288660522988789958.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160412.P9751085321963183941

`A160410(n)*3/4`
-/

namespace A160412.P9751085321963183941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160410 n * 3 : ℚ) / 4

end

end A160412.P9751085321963183941

noncomputable section

/-- A160412: Number of "ON" cells at n-th stage in simple 2-dimensional cellular automaton (see Comments for precise definition).

Offset 0, canonical program `A160412.P9751085321963183941`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160410, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160412 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160412.P9751085321963183941.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160410, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160412.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160428.P12855854113436876490

`∑[A160429(n+1)]-A160429(n+1)`
-/

namespace A160428.P12855854113436876490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A160429 (n + 1)

end

end A160428.P12855854113436876490

noncomputable section

/-- A160428: Number of ON cells at n-th stage of three-dimensional version of the cellular automaton A160410, using cubes.

Offset 0, canonical program `A160428.P12855854113436876490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160428 (n : ℕ) : ℤ :=
  A160428.P12855854113436876490.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160588.P1469078919604768349

`A004524(A053641(n+2))`
-/

namespace A160588.P1469078919604768349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A053641 (n + 2)).toNat

end

end A160588.P1469078919604768349

noncomputable section

/-- A160588: Interleaving of A053645 and A000027.

Offset 0, canonical program `A160588.P1469078919604768349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A160588 (n : ℕ) : ℤ :=
  A160588.P1469078919604768349.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A160588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160709.P17821594411475444705

`eq[1, ∑{e}[A038822(abs(1-n)), #]]`
-/

namespace A160709.P17821594411475444705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038822 |1 - (n : ℤ)|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A160709.P17821594411475444705

noncomputable section

/-- A160709: Centuries containing a prime number of primes.

Offset 1, canonical program `A160709.P17821594411475444705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3452 terms. -/
def A160709 (n : ℕ) : ℤ :=
  (A160709.P17821594411475444705.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3452 terms. -/
def A160709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160742.P554087851942868596

`A151566(n)*2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160742.P554087851942868596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151566 n * 2

end

end A160742.P554087851942868596

noncomputable section

/-- A160742: a(n) = A151566(n)*2.

Offset 0, canonical program `A160742.P554087851942868596`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151566, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160742 (n : ℕ) : ℤ :=
  A160742.P554087851942868596.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151566, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160742.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160744.P10798283293530994526

`A151566(n)*3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160744.P10798283293530994526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151566 n * 3

end

end A160744.P10798283293530994526

noncomputable section

/-- A160744: a(n) = A151566(n)*3.

Offset 0, canonical program `A160744.P10798283293530994526`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151566, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160744 (n : ℕ) : ℤ :=
  A160744.P10798283293530994526.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151566, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160744.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160746.P2805536965338767188

`A151566(n)*4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160746.P2805536965338767188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151566 n * 4

end

end A160746.P2805536965338767188

noncomputable section

/-- A160746: a(n) = A151566(n)*4.

Offset 0, canonical program `A160746.P2805536965338767188`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151566, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160746 (n : ℕ) : ℤ :=
  A160746.P2805536965338767188.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151566, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160746.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160792.P10104784036141985292

`∑[A142150(n+1)+A007504(A142150(n))]`
-/

namespace A160792.P10104784036141985292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (n + 1) + A007504 (A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160792.P10104784036141985292

noncomputable section

/-- A160792: Vertex number of a rectangular spiral related to prime numbers. The distances between nearest edges of the spiral that are parallel to the initial edge are the prime numbers, while the distances between nearest edges perpendicular to the initial edge are all one.

Offset 0, canonical program `A160792.P10104784036141985292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A160792 (n : ℕ) : ℤ :=
  A160792.P10104784036141985292.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A160792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160793.P11956426580748944804

`A027656(n)+A007504(∑[A001057(n)])`
-/

namespace A160793.P11956426580748944804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n + A007504 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A160793.P11956426580748944804

noncomputable section

/-- A160793: Natural numbers and the sum of first n primes interleaved.

Offset 1, canonical program `A160793.P11956426580748944804`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160793 (n : ℕ) : ℤ :=
  A160793.P11956426580748944804.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160799.P12754781986334410166

`∑[A160410(n)]`
-/

namespace A160799.P12754781986334410166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160410 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160799.P12754781986334410166

noncomputable section

/-- A160799: Partial sums of A160410.

Offset 1, canonical program `A160799.P12754781986334410166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160799 (n : ℕ) : ℤ :=
  A160799.P12754781986334410166.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160799.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160813.P14776211626939802739

`A005117(n+1)+A004709(n+1)`
-/

namespace A160813.P14776211626939802739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1) + A004709 (n + 1)

end

end A160813.P14776211626939802739

noncomputable section

/-- A160813: a(n) = n-th squarefree number plus n-th cubefree number.

Offset 1, canonical program `A160813.P14776211626939802739`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160813 (n : ℕ) : ℤ :=
  A160813.P14776211626939802739.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160813.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160833.P15780145902120907609

`A160831(n)-∑[A161680(n)]²`
-/

namespace A160833.P15780145902120907609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160831 n - (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A160833.P15780145902120907609

noncomputable section

/-- A160833: G.f.: (1+62*x+569*x^2+1086*x^3+521*x^4+56*x^5+x^6)/(1-x)^7.

Offset 0, canonical program `A160833.P15780145902120907609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160833 (n : ℕ) : ℤ :=
  A160833.P15780145902120907609.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161219.P4715218201372608573

`2*A000031(n+1)`
-/

namespace A161219.P4715218201372608573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000031 (n + 1)

end

end A161219.P4715218201372608573

noncomputable section

/-- A161219: a(n) = (1/n) * Sum_{d|n} phi(n/d)*2^(d+1).

Offset 1, canonical program `A161219.P4715218201372608573`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161219 (n : ℕ) : ℤ :=
  A161219.P4715218201372608573.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161219.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A105307.P5045705934214273131

`A104117(A063375(n+1))-1`
-/

namespace A105307.P5045705934214273131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104117 (A063375 (n + 1)).toNat - 1

end

end A105307.P5045705934214273131

noncomputable section

/-- A105307: Base-2 logarithm of the number of divisors of Fibonacci(n) if that number is a power of 2, otherwise -1.

Offset 1, canonical program `A105307.P5045705934214273131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A105307 (n : ℕ) : ℤ :=
  A105307.P5045705934214273131.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A105307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105314.P11378633476736743267

`A117804((n+1)²)`
-/

namespace A105314.P11378633476736743267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117804 ((n + 1) ^ 2)

end

end A105314.P11378633476736743267

noncomputable section

/-- A105314: Write the natural numbers as an infinite sequence of digits, starting at the left; a(n) is the subset (i.e., the position in this sequence of the "counting digits") of the first digit of the n-th square.

Offset 1, canonical program `A105314.P11378633476736743267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A105314 (n : ℕ) : ℤ :=
  A105314.P11378633476736743267.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A105314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105560.P10934841406439867276

`A008578(1+A001222(n+1))`
-/

namespace A105560.P10934841406439867276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (1 + A001222 (n + 1)).toNat

end

end A105560.P10934841406439867276

noncomputable section

/-- A105560: a(1) = 1, and for n >= 2, a(n) = prime(bigomega(n)), where prime(n) = A000040(n) and bigomega(n) = A001222(n).

Offset 1, canonical program `A105560.P10934841406439867276`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A105560 (n : ℕ) : ℤ :=
  A105560.P10934841406439867276.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A105560.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A105695.P7871953186196150134

`Δ[A086246(n)]`
-/

namespace A105695.P7871953186196150134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105695.P7871953186196150134

noncomputable section

/-- A105695: Expansion of (1-x)*c(x/(1+x)), where c(x) is the g.f. of the Catalan numbers (A000108).

Offset 0, canonical program `A105695.P7871953186196150134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A105695 (n : ℕ) : ℤ :=
  A105695.P7871953186196150134.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A105695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106080.P13440203208369835731

`∩[A023220(n+1), A023230(n+1)]`
-/

namespace A106080.P13440203208369835731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106080.P13440203208369835731

noncomputable section

/-- A106080: Primes p such that 5*p+8 and 8*p+5 are primes.

Offset 1, canonical program `A106080.P13440203208369835731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2493 terms. -/
def A106080 (n : ℕ) : ℤ :=
  (A106080.P13440203208369835731.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2493 terms. -/
def A106080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106633.P11456217349808284816

`A005408(n)+A006218(n)`
-/

namespace A106633.P11456217349808284816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + A006218 n

end

end A106633.P11456217349808284816

noncomputable section

/-- A106633: Number of ways to express n as k+l*m, with k, l, m all in the range [0..n].

Offset 0, canonical program `A106633.P11456217349808284816`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106633 (n : ℕ) : ℤ :=
  A106633.P11456217349808284816.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106633.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A106843.P9879990537790880483

`lt[A035191(n+2), 3]+2`
-/

namespace A106843.P9879990537790880483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035191 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A106843.P9879990537790880483

noncomputable section

/-- A106843: Numbers of form 3^i * prime(j), i>=0, j>0.

Offset 1, canonical program `A106843.P9879990537790880483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2009 terms. -/
def A106843 (n : ℕ) : ℤ :=
  (A106843.P9879990537790880483.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2009 terms. -/
def A106843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107148.P16161660040525170745

`∩[A106927(n+1), A141171(n+1)]`
-/

namespace A107148.P16161660040525170745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107148.P16161660040525170745

noncomputable section

/-- A107148: Primes of the form 2x^2 + 21y^2.

Offset 1, canonical program `A107148.P16161660040525170745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4994 terms. -/
def A107148 (n : ℕ) : ℤ :=
  (A107148.P16161660040525170745.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4994 terms. -/
def A107148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107169.P7299049902031610127

`∪[A139857(n+1), A139897(n+1)]`
-/

namespace A107169.P7299049902031610127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107169.P7299049902031610127

noncomputable section

/-- A107169: Primes of the form 3x^2 + 20y^2.

Offset 1, canonical program `A107169.P7299049902031610127`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107169 (n : ℕ) : ℤ :=
  (A107169.P7299049902031610127.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107390.P7923518412452108324

`A002808(a(n-1)+a(n-2))` with `a(0)=4, a(1)=6`
-/

namespace A107390.P7923518412452108324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 6] fun n a =>
  A002808 (a (n - 1) + a (n - 2)).toNat

end

end A107390.P7923518412452108324

noncomputable section

/-- A107390: Composite Fibonacci sequence: each term is the composite with index equal to the sum of the previous two terms.

Offset 1, canonical program `A107390.P7923518412452108324`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107390 (n : ℕ) : ℤ :=
  A107390.P7923518412452108324.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107390.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A107941.P1134882377618123010

`∑[(n+2)*A108680(n)-A107968(n)]`
-/

namespace A107941.P1134882377618123010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A108680 n - A107968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107941.P1134882377618123010

noncomputable section

/-- A107941: a(n) = (n+1)(n+2)^2*(n+3)^2*(n+4)^2*(n+5)(3n^2 + 13n + 15)/43200.

Offset 0, canonical program `A107941.P1134882377618123010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107941 (n : ℕ) : ℤ :=
  A107941.P1134882377618123010.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107948.P506921335463334465

`A107946(2^n)`
-/

namespace A107948.P506921335463334465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107946 (2 ^ n)

end

end A107948.P506921335463334465

noncomputable section

/-- A107948: Terms at positions 2^n of A107946 for n>=0.

Offset 0, canonical program `A107948.P506921335463334465`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A107946, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107948 (n : ℕ) : ℤ :=
  A107948.P506921335463334465.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A107946, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107948.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A107966.P11630518422278864542

`(n+2)*A108680(n)-A107968(n)+A107891(n)-A047819(n)`
-/

namespace A107966.P11630518422278864542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A108680 n - A107968 n + (A107891 n - A047819 n)

end

end A107966.P11630518422278864542

noncomputable section

/-- A107966: a(n) = (n+1)(n+2)^3*(n+3)^2*(n+4)(5n^2 + 23n + 30)/8640.

Offset 0, canonical program `A107966.P11630518422278864542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107966 (n : ℕ) : ℤ :=
  A107966.P11630518422278864542.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107967.P4280652455653893188

`(n+2)*A108680(n)-A107968(n)`
-/

namespace A107967.P4280652455653893188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A108680 n - A107968 n

end

end A107967.P4280652455653893188

noncomputable section

/-- A107967: a(n) = (n+1)(n+2)^3*(n+3)^2*(n+4)(n^2 + 4n + 5)/1440.

Offset 0, canonical program `A107967.P4280652455653893188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107967 (n : ℕ) : ℤ :=
  A107967.P4280652455653893188.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108144.P14357558413651915361

`2*A093641(n+2)+1`
-/

namespace A108144.P14357558413651915361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093641 (n + 2) + 1

end

end A108144.P14357558413651915361

noncomputable section

/-- A108144: Numbers n such that (n-1)/P(n-1) is a power of two > 1, where P(n) is the largest prime factor of n.

Offset 1, canonical program `A108144.P14357558413651915361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A108144 (n : ℕ) : ℤ :=
  A108144.P14357558413651915361.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A108144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108221.P9472332214346116562

`ceil(sqrt(A108222(n+1)))`
-/

namespace A108221.P9472332214346116562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A108222 (n + 1) : ℝ)⌉

end

end A108221.P9472332214346116562

noncomputable section

/-- A108221: Primes of the form ceiling(sqrt(prime(n))).

Offset 1, canonical program `A108221.P9472332214346116562`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108222, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A108221 (n : ℕ) : ℤ :=
  A108221.P9472332214346116562.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108222, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A108221.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A108608.P93425812416294679

`∩[A014614(n+1), A046363(n+1)]`
-/

namespace A108608.P93425812416294679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108608.P93425812416294679

noncomputable section

/-- A108608: 5-almost primes whose sum of factors is a prime.

Offset 1, canonical program `A108608.P93425812416294679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1646 terms. -/
def A108608 (n : ℕ) : ℤ :=
  (A108608.P93425812416294679.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1646 terms. -/
def A108608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108609.P322221827080144577

`∩[2*A014614(n+1), A046363(n+1)]`
-/

namespace A108609.P322221827080144577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108609.P322221827080144577

noncomputable section

/-- A108609: 6-almost primes whose sum of factors is a prime.

Offset 1, canonical program `A108609.P322221827080144577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 845 terms. -/
def A108609 (n : ℕ) : ℤ :=
  (A108609.P322221827080144577.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 845 terms. -/
def A108609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108784.P11288806968300134608

`A156706(A000120(n+1)+1)`
-/

namespace A108784.P11288806968300134608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (A000120 (n + 1) + 1).toNat

end

end A108784.P11288806968300134608

noncomputable section

/-- A108784: Difference between A107757 and A107755.

Offset 1, canonical program `A108784.P11288806968300134608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A108784 (n : ℕ) : ℤ :=
  A108784.P11288806968300134608.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A108784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108977.P10759412925620859983

`A138641(n+1)-1`
-/

namespace A108977.P10759412925620859983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138641 (n + 1) - 1

end

end A108977.P10759412925620859983

noncomputable section

/-- A108977: Numbers n such that 19*n + 17 is prime.

Offset 1, canonical program `A108977.P10759412925620859983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108977 (n : ℕ) : ℤ :=
  A108977.P10759412925620859983.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109264.P8993228771912653

`A117362(n)+A109466(n+1)`
-/

namespace A109264.P8993228771912653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117362 n + A109466 (n + 1)

end

end A109264.P8993228771912653

noncomputable section

/-- A109264: Riordan array (1-x-x^2,x(1-x)).

Offset 0, canonical program `A109264.P8993228771912653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A109264 (n : ℕ) : ℤ :=
  A109264.P8993228771912653.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A109264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109303.P4540766537819326846

`comp[A010784(n+1)]`
-/

namespace A109303.P4540766537819326846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A109303.P4540766537819326846

noncomputable section

/-- A109303: Numbers k with at least one duplicate base-10 digit (A107846(k) > 0).

Offset 1, canonical program `A109303.P4540766537819326846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109303 (n : ℕ) : ℤ :=
  (A109303.P4540766537819326846.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109352.P15990870574483409187

`A001414(A120944(n+1))`
-/

namespace A109352.P15990870574483409187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A120944 (n + 1)).toNat

end

end A109352.P15990870574483409187

noncomputable section

/-- A109352: a(n) = sum of the prime divisors of the n-th squarefree composite number.

Offset 1, canonical program `A109352.P15990870574483409187`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109352 (n : ℕ) : ℤ :=
  A109352.P15990870574483409187.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109352.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A110012.P15595406748227932341

`A158799(n)-A188297(n+1)`
-/

namespace A110012.P15595406748227932341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158799 n - A188297 (n + 1)

end

end A110012.P15595406748227932341

noncomputable section

/-- A110012: a(n) = n - F(F(n)) where F(x)=floor(sqrt(2)*floor(x/sqrt(2))).

Offset 1, canonical program `A110012.P15595406748227932341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110012 (n : ℕ) : ℤ :=
  A110012.P15595406748227932341.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110475.P12090647268886317470

`A252736(A007948(n+1))`
-/

namespace A110475.P12090647268886317470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A007948 (n + 1)).toNat

end

end A110475.P12090647268886317470

noncomputable section

/-- A110475: Number of symbols '*' and '^' to write the canonical prime factorization of n.

Offset 1, canonical program `A110475.P12090647268886317470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110475 (n : ℕ) : ℤ :=
  A110475.P12090647268886317470.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110601.P12192677734342859224

`A000010(n+1)*A000005(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A110601.P12192677734342859224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A000005 (n + 1) ^ 2

end

end A110601.P12192677734342859224

noncomputable section

/-- A110601: a(n) = phi(n)*tau(n)^2, where phi is Euler's totient function and tau(n) is the number of divisors of n.

Offset 1, canonical program `A110601.P12192677734342859224`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)*A000005(n+1)²` (program `A110601.P12192677734342859224`, by `A110601.P12192677734342859224.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A110601 (n : ℕ) : ℤ :=
  A110601.P12192677734342859224.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)*A000005(n+1)²` (program `A110601.P12192677734342859224`, by `A110601.P12192677734342859224.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A110601.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A110661.P15569028021835169260

`A006218(A002024(n+1))-A006218(A002262(n))`
-/

namespace A110661.P15569028021835169260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A002024 (n + 1)).toNat - A006218 (A002262 n).toNat

end

end A110661.P15569028021835169260

noncomputable section

/-- A110661: Triangle read by rows: T(n,k) = total number of divisors of k, k+1, ..., n (1 <= k <= n).

Offset 1, canonical program `A110661.P15569028021835169260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A110661 (n : ℕ) : ℤ :=
  A110661.P15569028021835169260.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A110661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110673.P14259157740145629283

`∩[A007921(n+1), A014076(n+1)+2]`
-/

namespace A110673.P14259157740145629283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110673.P14259157740145629283

noncomputable section

/-- A110673: Numbers that are neither the sum nor the difference of two primes.

Offset 1, canonical program `A110673.P14259157740145629283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7597 terms. -/
def A110673 (n : ℕ) : ℤ :=
  (A110673.P14259157740145629283.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7597 terms. -/
def A110673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111397.P3791276779509558651

`A002808(n+1)%3`
-/

namespace A111397.P3791276779509558651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002808 (n + 1)) 3

end

end A111397.P3791276779509558651

noncomputable section

/-- A111397: Composite numbers (modulo 3).

Offset 1, canonical program `A111397.P3791276779509558651`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111397 (n : ℕ) : ℤ :=
  A111397.P3791276779509558651.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111397.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A111398.P16875926661935331434

`∪[A030626(n+1), A016759(n)]`
-/

namespace A111398.P16875926661935331434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016759 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111398.P16875926661935331434

noncomputable section

/-- A111398: Numbers which are the cube roots of the product of their proper divisors.

Offset 1, canonical program `A111398.P16875926661935331434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111398 (n : ℕ) : ℤ :=
  (A111398.P16875926661935331434.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111527.P12584013183539316242

`A117178(n)*A117568(n)`
-/

namespace A111527.P12584013183539316242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117178 n * A117568 n

end

end A111527.P12584013183539316242

noncomputable section

/-- A111527: Inverse of A111526. Row sums have general term C(n,floor(n/2))*(cos(Pi*n/2) + sin(Pi*n/2)).

Offset 0, canonical program `A111527.P12584013183539316242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111527 (n : ℕ) : ℤ :=
  A111527.P12584013183539316242.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111527.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111596.P6007535604357986319

`A097807(n)*A271703(n)`
-/

namespace A111596.P6007535604357986319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A271703 n

end

end A111596.P6007535604357986319

noncomputable section

/-- A111596: The matrix inverse of the unsigned Lah numbers A271703.

Offset 0, canonical program `A111596.P6007535604357986319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. -/
def A111596 (n : ℕ) : ℤ :=
  A111596.P6007535604357986319.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. -/
def A111596.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111653.P11815218496113125647

`A002808(∑[char[∑[n]]])`
-/

namespace A111653.P11815218496113125647
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111653.P11815218496113125647

noncomputable section

/-- A111653: n-th composite number appears n times.

Offset 1, canonical program `A111653.P11815218496113125647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111653 (n : ℕ) : ℤ :=
  A111653.P11815218496113125647.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111655.P15410137681632435708

`A002808(A111654(n+1))`
-/

namespace A111655.P15410137681632435708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A111654 (n + 1)).toNat

end

end A111655.P15410137681632435708

noncomputable section

/-- A111655: n-th composite number appears n-th composite number times.

Offset 1, canonical program `A111655.P15410137681632435708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111655 (n : ℕ) : ℤ :=
  A111655.P15410137681632435708.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111657.P14274310389912407619

`A002808(A083375(n+1))`
-/

namespace A111657.P14274310389912407619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A083375 (n + 1)).toNat

end

end A111657.P14274310389912407619

noncomputable section

/-- A111657: n-th composite number appears n-th prime times.

Offset 1, canonical program `A111657.P14274310389912407619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111657 (n : ℕ) : ℤ :=
  A111657.P14274310389912407619.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111688.P14076338886946641188

`A093515(A065475(n+1))`
-/

namespace A111688.P14076338886946641188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (A065475 (n + 1)).toNat

end

end A111688.P14076338886946641188

noncomputable section

/-- A111688: Primes and composite numbers alternately in increasing order.

Offset 1, canonical program `A111688.P14076338886946641188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111688 (n : ℕ) : ℤ :=
  A111688.P14076338886946641188.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111972.P10773037967819847724

`∑{e}[A260188(n+1), #]`
-/

namespace A111972.P10773037967819847724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260188 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A111972.P10773037967819847724

noncomputable section

/-- A111972: a(n) = Max(omega(k): 1<=k<=n), where omega(n) = A001221(n), the number of distinct prime factors of n.

Offset 1, canonical program `A111972.P10773037967819847724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111972 (n : ℕ) : ℤ :=
  (A111972.P10773037967819847724.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112342.P7013210857343809106

`A000720(A002808(n+1)²)-A000720((A002808(n+1)-1)²)`
-/

namespace A112342.P7013210857343809106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A002808 (n + 1) ^ 2).toNat - A000720 ((A002808 (n + 1) - 1) ^ 2).toNat

end

end A112342.P7013210857343809106

noncomputable section

/-- A112342: Number of primes between (n-th composite - 1)^2 and (n-th composite)^2.

Offset 1, canonical program `A112342.P7013210857343809106`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112342 (n : ℕ) : ℤ :=
  A112342.P7013210857343809106.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112342.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A112526.P14971334434262120700

`∑{d}[n+1, A005361(#)*A008683((n+1)/#)]`
-/

namespace A112526.P14971334434262120700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A005361 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A112526.P14971334434262120700

noncomputable section

/-- A112526: Characteristic function for powerful numbers.

Offset 1, canonical program `A112526.P14971334434262120700`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112526 (n : ℕ) : ℤ :=
  A112526.P14971334434262120700.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112526.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A112604.P7169979849370553245

`A033762(2*n)`
-/

namespace A112604.P7169979849370553245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033762 (2 * n)

end

end A112604.P7169979849370553245

noncomputable section

/-- A112604: Number of representations of n as a sum of three times a square and two times a triangular number.

Offset 0, canonical program `A112604.P7169979849370553245`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112604 (n : ℕ) : ℤ :=
  A112604.P7169979849370553245.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112604.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A112773.P44553575666953962

`3*A008578(n+1)`
-/

namespace A112773.P44553575666953962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A008578 (n + 1)

end

end A112773.P44553575666953962

noncomputable section

/-- A112773: 3 together with primes multiplied by 3.

Offset 1, canonical program `A112773.P44553575666953962`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112773 (n : ℕ) : ℤ :=
  A112773.P44553575666953962.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112773.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A112794.P1002080450273918995

`A000040(eq[0, A048448(n)%5])`
-/

namespace A112794.P1002080450273918995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048448 n) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A112794.P1002080450273918995

noncomputable section

/-- A112794: Primes such that the sum of the predecessor and successor primes is divisible by 5.

Offset 1, canonical program `A112794.P1002080450273918995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2792 terms. -/
def A112794 (n : ℕ) : ℤ :=
  A112794.P1002080450273918995.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2792 terms. -/
def A112794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113063.P2944476771486333311

`lcm(xor(n, n+1)%3, A255648(n+1))`
-/

namespace A113063.P2944476771486333311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((Nat.xor n (n + 1) % 3 : ℕ) : ℤ) (A255648 (n + 1))

end

end A113063.P2944476771486333311

noncomputable section

/-- A113063: Associated with theta series of hexagonal net with respect to a node.

Offset 1, canonical program `A113063.P2944476771486333311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113063 (n : ℕ) : ℤ :=
  (A113063.P2944476771486333311.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113408.P246085839438288403

`A168561(n)*A210736(A135840(n+1))`
-/

namespace A113408.P246085839438288403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168561 n * A210736 (A135840 (n + 1)).toNat

end

end A113408.P246085839438288403

noncomputable section

/-- A113408: Riordan array (1/(1-x^2-x^4*c(x^4)),x*c(x^2)), c(x) the g.f. of A000108.

Offset 0, canonical program `A113408.P246085839438288403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A113408 (n : ℕ) : ℤ :=
  A113408.P246085839438288403.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A113408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113580.P2441658852264608091

`∑{digits}[n, A008578(#+1)]`
-/

namespace A113580.P2441658852264608091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A008578 (x + 1)).sum

end

end A113580.P2441658852264608091

noncomputable section

/-- A113580: Define prime(0) = 1; then a(n) = sum prime(d), where d ranges over the decimal digits of n.

Offset 0, canonical program `A113580.P2441658852264608091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A113580 (n : ℕ) : ℤ :=
  A113580.P2441658852264608091.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A113580.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113866.P4859233891628937342

`p?[A064491(n+1)]`
-/

namespace A113866.P4859233891628937342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113866.P4859233891628937342

noncomputable section

/-- A113866: Primes in the sequence A064491.

Offset 1, canonical program `A113866.P4859233891628937342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A113866 (n : ℕ) : ℤ :=
  A113866.P4859233891628937342.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A113866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113974.P1614566940091252666

`A033999(n)*A123331(n+1)`
-/

namespace A113974.P1614566940091252666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A123331 (n + 1)

end

end A113974.P1614566940091252666

noncomputable section

/-- A113974: Expansion of (1-phi(x^3)^3/phi(x))/2 where phi() is a Ramanujan theta function.

Offset 1, canonical program `A113974.P1614566940091252666`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1591 terms. -/
def A113974 (n : ℕ) : ℤ :=
  A113974.P1614566940091252666.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1591 terms. -/
def A113974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114306.P2446590887034808239

`lt[A000005(n+1), A063375(n+1)]+1`
-/

namespace A114306.P2446590887034808239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063375 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A114306.P2446590887034808239

noncomputable section

/-- A114306: Numbers k such that Fibonacci(k) has more divisors than k does.

Offset 1, canonical program `A114306.P2446590887034808239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1377 terms. -/
def A114306 (n : ℕ) : ℤ :=
  (A114306.P2446590887034808239.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1377 terms. -/
def A114306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114519.P13629279457260616244

`A008475(A114518(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A114519.P13629279457260616244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A114518 (n + 1)).toNat

end

end A114519.P13629279457260616244

noncomputable section

/-- A114519: a(n) = A008475(A114518(n)).

Offset 1, canonical program `A114519.P13629279457260616244`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A114518, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A114519 (n : ℕ) : ℤ :=
  A114519.P13629279457260616244.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A114518, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A114519.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A114520.P13451622057905116028

`filter[A114518(n+1), A005171(#)]`
-/

namespace A114520.P13451622057905116028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A114520.P13451622057905116028

noncomputable section

/-- A114520: Composites in sequence A114518.

Offset 1, canonical program `A114520.P13451622057905116028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5252 terms. -/
def A114520 (n : ℕ) : ℤ :=
  A114520.P13451622057905116028.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5252 terms. -/
def A114520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114587.P2300665656653397848

`A114515(n+3)-A114590(n+1)`
-/

namespace A114587.P2300665656653397848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114515 (n + 3) - A114590 (n + 1)

end

end A114587.P2300665656653397848

noncomputable section

/-- A114587: Number of peaks at odd levels in all hill-free Dyck paths of semilength n+3 (a hill in a Dyck path is a peak at level 1).

Offset 0, canonical program `A114587.P2300665656653397848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A114587 (n : ℕ) : ℤ :=
  A114587.P2300665656653397848.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A114587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115022.P12251329364689534778

`A051348(A005117(n+1))`
-/

namespace A115022.P12251329364689534778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051348 (A005117 (n + 1)).toNat

end

end A115022.P12251329364689534778

noncomputable section

/-- A115022: a(n) = F(n-th squarefree)/product{p=primes,p|(n-th squarefree)} F(p), where F(m) is m-th Fibonacci number.

Offset 1, canonical program `A115022.P12251329364689534778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 298 terms. -/
def A115022 (n : ℕ) : ℤ :=
  A115022.P12251329364689534778.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 298 terms. -/
def A115022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115197.P2414366515164714952

`4*A178792(n)-3*(n+1)*A064062(n+1)`
-/

namespace A115197.P2414366515164714952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A178792 n - (3 * (n + 1) : ℤ) * A064062 (n + 1)

end

end A115197.P2414366515164714952

noncomputable section

/-- A115197: Convolution of generalized Catalan numbers A064062 (called C(n;2)).

Offset 0, canonical program `A115197.P2414366515164714952`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064062, A178792, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115197 (n : ℕ) : ℤ :=
  A115197.P2414366515164714952.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064062, A178792, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115197.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115281.P9615937288782899719

`A042963(A157458(n)+1)`
-/

namespace A115281.P9615937288782899719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (A157458 n + 1).toNat

end

end A115281.P9615937288782899719

noncomputable section

/-- A115281: Correlation triangle for the sequence 2-0^n.

Offset 0, canonical program `A115281.P9615937288782899719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115281 (n : ℕ) : ℤ :=
  A115281.P9615937288782899719.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115805.P5978121614112368766

`∩[A048719(n), A115823(n)]`
-/

namespace A115805.P5978121614112368766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048719 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115823 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115805.P5978121614112368766

noncomputable section

/-- A115805: Numbers k such that 13*k = A048720(29,k), where A048720 is carryless base-2 multiplication.

Offset 1, canonical program `A115805.P5978121614112368766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 313 terms. -/
def A115805 (n : ℕ) : ℤ :=
  (A115805.P5978121614112368766.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 313 terms. -/
def A115805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116361.P14000542580519849199

`A089309(A348363(n))`
-/

namespace A116361.P14000542580519849199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A348363 n).toNat

end

end A116361.P14000542580519849199

noncomputable section

/-- A116361: Smallest k such that n XOR n*2^k = n*(2^k + 1).

Offset 0, canonical program `A116361.P14000542580519849199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A116361 (n : ℕ) : ℤ :=
  A116361.P14000542580519849199.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A116361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116466.P2154189998451542687

`A000034(n)*A112556(A004526(n))`
-/

namespace A116466.P2154189998451542687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A112556 (A004526 n).toNat

end

end A116466.P2154189998451542687

noncomputable section

/-- A116466: Unsigned row sums of triangle A114700.

Offset 0, canonical program `A116466.P2154189998451542687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A116466 (n : ℕ) : ℤ :=
  A116466.P2154189998451542687.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A116466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116816.P12699467769989003574

`A159036(n+2)-∑[A020695(2*n+1)]`
-/

namespace A116816.P12699467769989003574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159036 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116816.P12699467769989003574

noncomputable section

/-- A116816: Number of permutations of length n which avoid the patterns 2314, 3124, 4312.

Offset 1, canonical program `A116816.P12699467769989003574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. -/
def A116816 (n : ℕ) : ℤ :=
  A116816.P12699467769989003574.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. -/
def A116816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116854.P7495526389933567981

`A068106(A066182(n+1)+A010054(n))`
-/

namespace A116854.P7495526389933567981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (A066182 (n + 1) + A010054 n).toNat

end

end A116854.P7495526389933567981

noncomputable section

/-- A116854: First differences of the rows in the triangle of A116853, starting with 0.

Offset 1, canonical program `A116854.P7495526389933567981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A116854 (n : ℕ) : ℤ :=
  A116854.P7495526389933567981.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A116854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117284.P233037619182171599

`record[n+1-A271439(n+1-A000010(n+1))]`
-/

namespace A117284.P233037619182171599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A271439 ((n + 1 : ℤ) - A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117284.P233037619182171599

noncomputable section

/-- A117284: Numbers k for which the cototient k-phi(k) is a triangular number.

Offset 1, canonical program `A117284.P233037619182171599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1816 terms. -/
def A117284 (n : ℕ) : ℤ :=
  A117284.P233037619182171599.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1816 terms. -/
def A117284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117396.P5688878678667839011

`gcd(Δ[A348482(n)], A103452(n))`
-/

namespace A117396.P5688878678667839011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348482 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A103452 n)

end

end A117396.P5688878678667839011

noncomputable section

/-- A117396: Triangle, read by rows, defined by: T(n,k) = (k+1)*T(n,k+1) - Sum_{j=1..n-k-1} T(j,0)*T(n,j+k+1) for n>k with T(n,n)=1 for n>=0.

Offset 0, canonical program `A117396.P5688878678667839011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A117396 (n : ℕ) : ℤ :=
  (A117396.P5688878678667839011.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A117396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117499.P1282103353634337278

`A168141(2*(n+1))+A168141(A233583(n+2))`
-/

namespace A117499.P1282103353634337278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168141 (2 * (n + 1)) + A168141 (A233583 (n + 2)).toNat

end

end A117499.P1282103353634337278

noncomputable section

/-- A117499: Number of subsets of {n-1, n, n+1} that sum up to a prime.

Offset 1, canonical program `A117499.P1282103353634337278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A117499 (n : ℕ) : ℤ :=
  A117499.P1282103353634337278.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A117499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118508.P5933305000914291636

`A002808(row(n)+1)%A002808(col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A118508.P5933305000914291636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002808 (SequenceMachineLib.triRow n + 1)) (A002808 (SequenceMachineLib.triCol n + 1))

end

end A118508.P5933305000914291636

noncomputable section

/-- A118508: Triangle read by rows: R(n,k) = A002808(n) mod A002808(k), 0<k<=n.

Offset 1, canonical program `A118508.P5933305000914291636`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002808(row(n)+1)%A002808(col(n)+1)` (program `A118508.P5933305000914291636`, by `A118508.P5933305000914291636.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A118508 (n : ℕ) : ℤ :=
  A118508.P5933305000914291636.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002808(row(n)+1)%A002808(col(n)+1)` (program `A118508.P5933305000914291636`, by `A118508.P5933305000914291636.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A118508.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A118759.P5411898151704407720

`A056279(A138902(n))+n`
-/

namespace A118759.P5411898151704407720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056279 (A138902 n).toNat + (n : ℤ)

end

end A118759.P5411898151704407720

noncomputable section

/-- A118759: A118757(A118757(n)).

Offset 0, canonical program `A118759.P5411898151704407720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A118759 (n : ℕ) : ℤ :=
  A118759.P5411898151704407720.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A118759.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118801.P6489775398404717729

`A033999(A002262(n))*A112857(n)`
-/

namespace A118801.P6489775398404717729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A002262 n).toNat * A112857 n

end

end A118801.P6489775398404717729

noncomputable section

/-- A118801: Triangle T that satisfies the matrix products: C*[T^-1]*C = T and T*[C^-1]*T = C, where C is Pascal's triangle.

Offset 0, canonical program `A118801.P6489775398404717729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118801 (n : ℕ) : ℤ :=
  A118801.P6489775398404717729.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118877.P16238314102169242723

`A002808(n+1)*A002808(n+4)-A002808(n+2)*A002808(n+3)`
-/

namespace A118877.P16238314102169242723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) * A002808 (n + 4) - A002808 (n + 2) * A002808 (n + 3)

end

end A118877.P16238314102169242723

noncomputable section

/-- A118877: Determinant of n-th continuous block of 4 consecutive composites.

Offset 1, canonical program `A118877.P16238314102169242723`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A118877 (n : ℕ) : ℤ :=
  A118877.P16238314102169242723.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A118877.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A118951.P16210819713689529076

`comp[A202267(n+1)]`
-/

namespace A118951.P16210819713689529076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A118951.P16210819713689529076

noncomputable section

/-- A118951: Numbers containing at least one composite digit.

Offset 1, canonical program `A118951.P16210819713689529076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118951 (n : ℕ) : ℤ :=
  (A118951.P16210819713689529076.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118951.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119012.P17349838365231914682

`A114515(n+1)-A114495(n+1)`
-/

namespace A119012.P17349838365231914682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114515 (n + 1) - A114495 (n + 1)

end

end A119012.P17349838365231914682

noncomputable section

/-- A119012: Number of valleys strictly above the x-axis in all hill-free Dyck paths of semilength n (a hill in a Dyck path is a peak at level 1).

Offset 1, canonical program `A119012.P17349838365231914682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A119012 (n : ℕ) : ℤ :=
  A119012.P17349838365231914682.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A119012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119259.P15056154096299746551

`2^(n+1)*C(2*n, n)-A178792(n)`
-/

namespace A119259.P15056154096299746551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) * Nat.choose (2 * n) n : ℤ) - A178792 n

end

end A119259.P15056154096299746551

noncomputable section

/-- A119259: Central terms of the triangle in A119258.

Offset 0, canonical program `A119259.P15056154096299746551`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A178792, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A119259 (n : ℕ) : ℤ :=
  A119259.P15056154096299746551.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A178792, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A119259.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A119505.P7465890050861402913

`A097902(A000124(A097902(A000124(n+1))))`
-/

namespace A119505.P7465890050861402913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097902 (A000124 (A097902 (A000124 (n + 1)).toNat).toNat).toNat

end

end A119505.P7465890050861402913

noncomputable section

/-- A119505: The Pi-th digit of Pi where the digit value of 0 is interpreted as decimal 10.

Offset 1, canonical program `A119505.P7465890050861402913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A119505 (n : ℕ) : ℤ :=
  A119505.P7465890050861402913.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A119505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119644.P9048720214858133115

`A000040(n+1+A001221(A002808(n+1)))`
-/

namespace A119644.P9048720214858133115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((n + 1 : ℤ) + A001221 (A002808 (n + 1)).toNat).toNat

end

end A119644.P9048720214858133115

noncomputable section

/-- A119644: a(n) = n-th prime from among those primes which are coprime to the n-th composite.

Offset 1, canonical program `A119644.P9048720214858133115`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119644 (n : ℕ) : ℤ :=
  A119644.P9048720214858133115.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119644.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A119832.P6835891889042031517

`A112334(n)*A143051(A112334(n)²)`
-/

namespace A119832.P6835891889042031517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112334 n * A143051 (A112334 n ^ 2).toNat

end

end A119832.P6835891889042031517

noncomputable section

/-- A119832: Bi-diagonal inverse of (3n)!/(3k)!.

Offset 0, canonical program `A119832.P6835891889042031517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 628 terms. -/
def A119832 (n : ℕ) : ℤ :=
  A119832.P6835891889042031517.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 628 terms. -/
def A119832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119992.P16604952427629540782

`A008578(A095117(n+1))`
-/

namespace A119992.P16604952427629540782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A095117 (n + 1)).toNat

end

end A119992.P16604952427629540782

noncomputable section

/-- A119992: a(n) = n-th positive integer which is coprime to n!.

Offset 1, canonical program `A119992.P16604952427629540782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A119992 (n : ℕ) : ℤ :=
  A119992.P16604952427629540782.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A119992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120256.P10376864766072904395

`∑{d}[n+1, A008683(#)*A063375((n+1)/#)]`
-/

namespace A120256.P10376864766072904395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A063375 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A120256.P10376864766072904395

noncomputable section

/-- A120256: a(n) = number of terms in the n-th row of A120255(n) = number of terms in A001177 equal to n.

Offset 1, canonical program `A120256.P10376864766072904395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. -/
def A120256 (n : ℕ) : ℤ :=
  A120256.P10376864766072904395.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. -/
def A120256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120434.P2003402699123068110

`A199335(A099375(n)+1+n)`
-/

namespace A120434.P2003402699123068110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199335 (A099375 n + 1 + (n : ℤ)).toNat

end

end A120434.P2003402699123068110

noncomputable section

/-- A120434: Triangle read by rows: counts permutations by number of big descents.

Offset 2, canonical program `A120434.P2003402699123068110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A120434 (n : ℕ) : ℤ :=
  A120434.P2003402699123068110.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A120434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120458.P12527743672854816924

`A008578(1-C(∑[char[∑[n]]], 2)+n)^∑[char[∑[n+1]]]`
-/

namespace A120458.P12527743672854816924
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat ^ (∑ j ∈ Finset.range (n + 1), f4 j)

end

end A120458.P12527743672854816924

noncomputable section

/-- A120458: Triangle read by rows: row 0 is 1; for n>0, row n gives 1^n, prime(1)^n, prime(2)^n, ..., prime(n)^n.

Offset 0, canonical program `A120458.P12527743672854816924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1033 terms. -/
def A120458 (n : ℕ) : ℤ :=
  A120458.P12527743672854816924.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1033 terms. -/
def A120458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120562.P12269009302191884395

`A082498(A004762(n+2))`
-/

namespace A120562.P12269009302191884395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082498 (A004762 (n + 2)).toNat

end

end A120562.P12269009302191884395

noncomputable section

/-- A120562: Sum of binomial coefficients binomial(i+j, i) modulo 2 over all pairs (i,j) of positive integers satisfying 3i+j=n.

Offset 0, canonical program `A120562.P12269009302191884395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6144 terms. -/
def A120562 (n : ℕ) : ℤ :=
  A120562.P12269009302191884395.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6144 terms. -/
def A120562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120624.P15001731129403360422

`eq[A099894(n), A099905(A028310(n))]`
-/

namespace A120624.P15001731129403360422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099905 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120624.P15001731129403360422

noncomputable section

/-- A120624: Numbers n such that the n-th Catalan number C(2n,n)/(n+1) is divisible by 2n.

Offset 1, canonical program `A120624.P15001731129403360422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1019 terms. -/
def A120624 (n : ℕ) : ℤ :=
  (A120624.P15001731129403360422.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1019 terms. -/
def A120624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121161.P16451174290891128814

`A215259(10^n)`
-/

namespace A121161.P16451174290891128814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215259 (10 ^ n)

end

end A121161.P16451174290891128814

noncomputable section

/-- A121161: a(n) is the nearest integer to log(lcm(1,2,3,...,10^n)).

Offset 0, canonical program `A121161.P16451174290891128814`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A215259, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121161 (n : ℕ) : ℤ :=
  A121161.P16451174290891128814.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A215259, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121161.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A121450.P5061707180200879465

`A033999(n)*A113446(n+1)`
-/

namespace A121450.P5061707180200879465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A113446 (n + 1)

end

end A121450.P5061707180200879465

noncomputable section

/-- A121450: Expansion of (theta_4(q^3)^2 - theta_4(q)^2)/4 in powers of q.

Offset 1, canonical program `A121450.P5061707180200879465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121450 (n : ℕ) : ℤ :=
  A121450.P5061707180200879465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121494.P12983564912663731781

`filter[A074821(n+1), A005171(#)]`
-/

namespace A121494.P12983564912663731781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A121494.P12983564912663731781

noncomputable section

/-- A121494: Composite numbers k such that tau(k) = tau(2k+1).

Offset 1, canonical program `A121494.P12983564912663731781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9206 terms. -/
def A121494 (n : ℕ) : ℤ :=
  A121494.P12983564912663731781.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9206 terms. -/
def A121494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121893.P2090054264174111428

`comp[∪[(n+2)²-1, A222030(n)]]`
-/

namespace A121893.P2090054264174111428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222030 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A121893.P2090054264174111428

noncomputable section

/-- A121893: Composite integers not equal to k*[k or k+1 or k+2] where k is a natural number.

Offset 1, canonical program `A121893.P2090054264174111428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121893 (n : ℕ) : ℤ :=
  (A121893.P2090054264174111428.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122415.P16839992297758686135

`val(A077478(comp[∑[n]]+1)+1, 3)`
-/

namespace A122415.P16839992297758686135
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A077478 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) + 1).toNat 3

end

end A122415.P16839992297758686135

noncomputable section

/-- A122415: Triangle T(n,k) for 1 < k < n read by rows, where T(n,k) = 1 if gcd(n,k) is prime, 0 otherwise.

Offset 3, canonical program `A122415.P16839992297758686135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A122415 (n : ℕ) : ℤ :=
  (A122415.P16839992297758686135.a (n - 3) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A122415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122515.P14647723614096955269

`A007504(n+1)-A046992(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A122515.P14647723614096955269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) - A046992 (n + 1)

end

end A122515.P14647723614096955269

noncomputable section

/-- A122515: a(n) = A007504(n) - A046992(n).

Offset 1, canonical program `A122515.P14647723614096955269`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046992, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122515 (n : ℕ) : ℤ :=
  A122515.P14647723614096955269.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046992, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122515.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A122516.P15119530128524371559

`p?[A046992(n+1)]`
-/

namespace A122516.P15119530128524371559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122516.P15119530128524371559

noncomputable section

/-- A122516: Primes in A046992.

Offset 1, canonical program `A122516.P15119530128524371559`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 459 terms. -/
def A122516 (n : ℕ) : ℤ :=
  A122516.P15119530128524371559.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 459 terms. -/
def A122516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122538.P1373840780686066300

`A132372(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A122538.P1373840780686066300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A132372 (n - 1) - a (n - 1)

end

end A122538.P1373840780686066300

noncomputable section

/-- A122538: Riordan array (1, x*f(x)) where f(x)is the g.f. of A006318.

Offset 0, canonical program `A122538.P1373840780686066300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9317 terms. -/
def A122538 (n : ℕ) : ℤ :=
  A122538.P1373840780686066300.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9317 terms. -/
def A122538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122864.P189972794959072762

`A061347(n+1)*A113446(n+1)`
-/

namespace A122864.P189972794959072762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1) * A113446 (n + 1)

end

end A122864.P189972794959072762

noncomputable section

/-- A122864: Expansion of eta(q^3)^2 * eta(q^4) * eta(q^6)^2 * eta(q^36) / (eta(q) * eta(q^9) * eta(q^12)^2) in powers of q.

Offset 1, canonical program `A122864.P189972794959072762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122864 (n : ℕ) : ℤ :=
  A122864.P189972794959072762.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122950.P2513792860908533748

`A236076(A066182(n+1)-A002024(n+1))`
-/

namespace A122950.P2513792860908533748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236076 (A066182 (n + 1) - A002024 (n + 1)).toNat

end

end A122950.P2513792860908533748

noncomputable section

/-- A122950: Triangle T(n,k), 0 <= k <= n, read by rows, given by [0, 0, 1, -1, 0, 0, 0, 0, 0, 0, ...] DELTA [1, 1, -1, 0, 0, 0, 0, 0, 0, ...] where DELTA is the operator defined in A084938.

Offset 0, canonical program `A122950.P2513792860908533748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122950 (n : ℕ) : ℤ :=
  A122950.P2513792860908533748.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122960.P1556329167515398814

`A202023(A209293(n+1))`
-/

namespace A122960.P1556329167515398814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202023 (A209293 (n + 1)).toNat

end

end A122960.P1556329167515398814

noncomputable section

/-- A122960: Triangle T(n,k), 0 <= k <= n, read by rows given by [0, 1, -1, -1, 1, 0, 0, 0, 0, 0, 0, ...] DELTA [1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, ...] where DELTA is the operator defined in A084938.

Offset 0, canonical program `A122960.P1556329167515398814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A122960 (n : ℕ) : ℤ :=
  A122960.P1556329167515398814.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A122960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123240.P10296889505221293768

`eq[0, A122895(n+1)]+1`
-/

namespace A123240.P10296889505221293768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122895 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A123240.P10296889505221293768

noncomputable section

/-- A123240: Natural numbers with number of divisors not equal to a Fibonacci number.

Offset 1, canonical program `A123240.P10296889505221293768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6621 terms. -/
def A123240 (n : ℕ) : ℤ :=
  (A123240.P10296889505221293768.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6621 terms. -/
def A123240.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123476.P7575150719699719929

`A373319((n+1)!)`
-/

namespace A123476.P7575150719699719929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373319 (Nat.factorial (n + 1))

end

end A123476.P7575150719699719929

noncomputable section

/-- A123476: a(n) = (n!)^2/phi(n!), where phi is Euler's totient function.

Offset 1, canonical program `A123476.P7575150719699719929`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373319, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123476 (n : ℕ) : ℤ :=
  A123476.P7575150719699719929.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373319, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123476.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A123608.P17223732889640698517

`∩[A002808(n+1), A166602(n+1)]`
-/

namespace A123608.P17223732889640698517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123608.P17223732889640698517

noncomputable section

/-- A123608: Numbers k such that k, k+1 and 2*k+1 are composite.

Offset 1, canonical program `A123608.P17223732889640698517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123608 (n : ℕ) : ℤ :=
  (A123608.P17223732889640698517.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123980.P14118247629457079037

`∩[A139405(n+1), A139406(n+1)]`
-/

namespace A123980.P14118247629457079037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123980.P14118247629457079037

noncomputable section

/-- A123980: Numbers k for which 8*k+1, 8*k+5 and 8*k+7 are primes.

Offset 1, canonical program `A123980.P14118247629457079037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 790 terms. -/
def A123980 (n : ℕ) : ℤ :=
  (A123980.P14118247629457079037.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 790 terms. -/
def A123980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124449.P1414096876915059449

`A010684(n)*A226132(n+1)`
-/

namespace A124449.P1414096876915059449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A226132 (n + 1)

end

end A124449.P1414096876915059449

noncomputable section

/-- A124449: Expansion of (phi(-q^3)^4 - phi(-q)^4)/8 in powers of q where phi() is a Ramanujan theta function.

Offset 1, canonical program `A124449.P1414096876915059449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124449 (n : ℕ) : ℤ :=
  A124449.P1414096876915059449.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124656.P12602646554450851436

`filter[A005101(n+1), A010060(#)]`
-/

namespace A124656.P12602646554450851436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A124656.P12602646554450851436

noncomputable section

/-- A124656: Abundant odious numbers. (Abundant numbers that have an odd number of ones in their binary representation.)

Offset 1, canonical program `A124656.P12602646554450851436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1736 terms. -/
def A124656 (n : ℕ) : ℤ :=
  A124656.P12602646554450851436.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1736 terms. -/
def A124656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125061.P10139082883885245732

`abs(A138952(A028310(2*n)))`
-/

namespace A125061.P10139082883885245732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138952 (A028310 (2 * n)).toNat|

end

end A125061.P10139082883885245732

noncomputable section

/-- A125061: Expansion of psi(q) * psi(q^2) * chi(q^3) * chi(-q^6) in powers of q where psi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A125061.P10139082883885245732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A125061 (n : ℕ) : ℤ :=
  A125061.P10139082883885245732.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A125061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125110.P17127943066742272730

`A001481(n+1)^3`
-/

namespace A125110.P17127943066742272730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1) ^ 3

end

end A125110.P17127943066742272730

noncomputable section

/-- A125110: Cubes which have a partition as the sum of 2 squares.

Offset 1, canonical program `A125110.P17127943066742272730`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001481, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125110 (n : ℕ) : ℤ :=
  A125110.P17127943066742272730.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001481, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125110.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A125111.P6188776523873180640

`A022544(n+1)^3`
-/

namespace A125111.P6188776523873180640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1) ^ 3

end

end A125111.P6188776523873180640

noncomputable section

/-- A125111: Cubes which do not have a partition as the sum of 2 squares.

Offset 1, canonical program `A125111.P6188776523873180640`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022544, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125111 (n : ℕ) : ℤ :=
  A125111.P6188776523873180640.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022544, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125111.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A125167.P1604038269256208614

`eq[1, A001222(A141468(n+1)+A008578(n+1))]`
-/

namespace A125167.P1604038269256208614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A141468 (n + 1) + A008578 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125167.P1604038269256208614

noncomputable section

/-- A125167: Numbers n such that the n-th prime + n-th nonprime is itself prime.

Offset 1, canonical program `A125167.P1604038269256208614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 983 terms. -/
def A125167 (n : ℕ) : ℤ :=
  (A125167.P1604038269256208614.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 983 terms. -/
def A125167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125493.P739186552021714544

`record[A191558(A005100(n+4))]`
-/

namespace A125493.P739186552021714544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A005100 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125493.P739186552021714544

noncomputable section

/-- A125493: Composite deficient numbers.

Offset 1, canonical program `A125493.P739186552021714544`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6278 terms. -/
def A125493 (n : ℕ) : ℤ :=
  A125493.P739186552021714544.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6278 terms. -/
def A125493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125721.P13273067158620434452

`2*A000142(n)/A027423(n)`
-/

namespace A125721.P13273067158620434452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A000142 n : ℚ) / (A027423 n : ℚ)

end

end A125721.P13273067158620434452

noncomputable section

/-- A125721: a(n)=2*n!/d(n!); d(m)=A000005(m) is the number of divisors of m.

Offset 0, canonical program `A125721.P13273067158620434452`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A125721 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A125721.P13273067158620434452.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A125721.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A126192.P9288968837919539928

`2^A000005(n+1)*A007955(n+1)`
-/

namespace A126192.P9288968837919539928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000005 (n + 1) : ℤ) * (A007955 (n + 1) : ℚ)

end

end A126192.P9288968837919539928

noncomputable section

/-- A126192: Product of the even divisors of 2n.

Offset 1, canonical program `A126192.P9288968837919539928`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A126192 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A126192.P9288968837919539928.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A126192.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A126775.P10311173591226257013

`A000010(n+1)²*A000005(n+1)`
-/

namespace A126775.P10311173591226257013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) ^ 2 * A000005 (n + 1)

end

end A126775.P10311173591226257013

noncomputable section

/-- A126775: a(n) = phi(n)^2 * d(n), where phi = A000010, d = A000005.

Offset 1, canonical program `A126775.P10311173591226257013`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A126775 (n : ℕ) : ℤ :=
  A126775.P10311173591226257013.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A126775.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A126974.P14707254055167224580

`a(A000005(n+1)-1)+a(A000010(n+1)-1)` with `a(0)=0, a(1)=1`
-/

namespace A126974.P14707254055167224580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A000005 (n + 1) - 1).toNat + a (A000010 (n + 1) - 1).toNat

end

end A126974.P14707254055167224580

noncomputable section

/-- A126974: a(1)=0. a(2)=1. a(n) = a(d(n)) + a(phi(n)), where d(n) = A000005(n), phi(n) = A000010(n).

Offset 1, canonical program `A126974.P14707254055167224580`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A126974 (n : ℕ) : ℤ :=
  (A126974.P14707254055167224580.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A126974.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A126990.P6431032460889897530

`A000040(2-A139312(n+2)+n)`
-/

namespace A126990.P6431032460889897530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 - A139312 (n + 2) + (n : ℤ)).toNat

end

end A126990.P6431032460889897530

noncomputable section

/-- A126990: Largest prime preceding geometric mean of prime(n) and prime(n+2).

Offset 1, canonical program `A126990.P6431032460889897530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A126990 (n : ℕ) : ℤ :=
  A126990.P6431032460889897530.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A126990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127013.P6102010931506344879

`A010783(n+1)*A113998(n+1)`
-/

namespace A127013.P6102010931506344879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (n + 1) * A113998 (n + 1)

end

end A127013.P6102010931506344879

noncomputable section

/-- A127013: Triangle read by rows: row reversal of A126988.

Offset 1, canonical program `A127013.P6102010931506344879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127013 (n : ℕ) : ℤ :=
  A127013.P6102010931506344879.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127094.P8507406497036937056

`A004736(n+1)*A113998(n+1)`
-/

namespace A127094.P8507406497036937056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A113998 (n + 1)

end

end A127094.P8507406497036937056

noncomputable section

/-- A127094: Triangle, reversal of A127093.

Offset 1, canonical program `A127094.P8507406497036937056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127094 (n : ℕ) : ℤ :=
  A127094.P8507406497036937056.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127368.P5347369318367987090

`A054521(n+1)*A128227(n)`
-/

namespace A127368.P5347369318367987090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1) * A128227 n

end

end A127368.P5347369318367987090

noncomputable section

/-- A127368: Relative prime triangle, read by rows.

Offset 1, canonical program `A127368.P5347369318367987090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127368 (n : ℕ) : ℤ :=
  A127368.P5347369318367987090.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127459.P12905099945906847377

`p?[A127458(n+1)]`
-/

namespace A127459.P12905099945906847377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127459.P12905099945906847377

noncomputable section

/-- A127459: Prime numbers n such that there are no primes between n and n+n^(1/3).

Offset 1, canonical program `A127459.P12905099945906847377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 385 terms. -/
def A127459 (n : ℕ) : ℤ :=
  A127459.P12905099945906847377.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 385 terms. -/
def A127459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127590.P12891489478159892403

`eq[1, A156707(8*n+2)]`
-/

namespace A127590.P12891489478159892403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156707 (8 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127590.P12891489478159892403

noncomputable section

/-- A127590: Numbers n such that 16n+5 is prime.

Offset 1, canonical program `A127590.P12891489478159892403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1200 terms. -/
def A127590 (n : ℕ) : ℤ :=
  (A127590.P12891489478159892403.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1200 terms. -/
def A127590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127601.P16071854653763161976

`floor(∏[root(A008578(n+1), 4)])`
-/

namespace A127601.P16071854653763161976
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A008578 (n + 1) : ℝ) ^ (1 / (4 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A127601.P16071854653763161976

noncomputable section

/-- A127601: Integer part of 4th root of product of first n primes.

Offset 0, canonical program `A127601.P16071854653763161976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A127601 (n : ℕ) : ℤ :=
  A127601.P16071854653763161976.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A127601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127737.P11986191195381923134

`A128151(n+1)+2*A112367(n)`
-/

namespace A127737.P11986191195381923134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128151 (n + 1) + 2 * A112367 n

end

end A127737.P11986191195381923134

noncomputable section

/-- A127737: A002260 * A127701.

Offset 1, canonical program `A127737.P11986191195381923134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127737 (n : ℕ) : ℤ :=
  A127737.P11986191195381923134.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128106.P7556689747914329909

`A000007(n)+2*A001481(n+1)`
-/

namespace A128106.P7556689747914329909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A001481 (n + 1)

end

end A128106.P7556689747914329909

noncomputable section

/-- A128106: Sizes of possible gaps around a Gaussian prime: 1 and the even numbers in A001481.

Offset 1, canonical program `A128106.P7556689747914329909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128106 (n : ℕ) : ℤ :=
  A128106.P7556689747914329909.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128201.P11268292657469231375

`record[(n+1)*A009191(n+1)%2]`
-/

namespace A128201.P11268292657469231375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A009191 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128201.P11268292657469231375

noncomputable section

/-- A128201: Union of positive squares and the odd numbers.

Offset 1, canonical program `A128201.P11268292657469231375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128201 (n : ℕ) : ℤ :=
  A128201.P11268292657469231375.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128206.P14119497991343743682

`A053602(A134082(n))`
-/

namespace A128206.P14119497991343743682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A134082 n).toNat

end

end A128206.P14119497991343743682

noncomputable section

/-- A128206: Inverse of number triangle A128207.

Offset 0, canonical program `A128206.P14119497991343743682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128206 (n : ℕ) : ℤ :=
  A128206.P14119497991343743682.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128582.P684908251658449014

`A263548(Δ[n²])/2`
-/

namespace A128582.P684908251658449014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263548 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A128582.P684908251658449014

noncomputable section

/-- A128582: Expansion of f(x^4, x^12) * f(x, x^5) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A128582.P684908251658449014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A128582 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A128582.P684908251658449014.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A128582.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128619.P9969041913449071840

`A000045(A128621(n+1))`
-/

namespace A128619.P9969041913449071840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A128621 (n + 1)).toNat

end

end A128619.P9969041913449071840

noncomputable section

/-- A128619: Triangle T(n, k) = A127647(n,k) * A128174(n,k), read by rows.

Offset 1, canonical program `A128619.P9969041913449071840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128619 (n : ℕ) : ℤ :=
  A128619.P9969041913449071840.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129138.P16114292618221871354

`A243987(∑[n]+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A129138.P16114292618221871354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243987 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

end

end A129138.P16114292618221871354

noncomputable section

/-- A129138: a(n) = number of positive divisors of n that are <= phi(n), where phi(n) = A000010(n).

Offset 1, canonical program `A129138.P16114292618221871354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A129138 (n : ℕ) : ℤ :=
  A129138.P16114292618221871354.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A129138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129144.P14517758672769090595

`Δ[A171746(a(n-2))+a(n-1)]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A129144.P14517758672769090595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3] fun n f1 =>
  A171746 (f1 (n - 2)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129144.P14517758672769090595

noncomputable section

/-- A129144: a(1)=a(2)=1; for n>2: a(n) = (s = sum of all previous terms) minus (maximal square less than s).

Offset 1, canonical program `A129144.P14517758672769090595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 202 terms. -/
def A129144 (n : ℕ) : ℤ :=
  A129144.P14517758672769090595.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 202 terms. -/
def A129144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129309.P14897869849901808427

`A048865(A002808(n+1))`
-/

namespace A129309.P14897869849901808427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (A002808 (n + 1)).toNat

end

end A129309.P14897869849901808427

noncomputable section

/-- A129309: a(n) = number of primes which are < c(n) and are coprime to c(n), where c(n) is the n-th composite.

Offset 1, canonical program `A129309.P14897869849901808427`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129309 (n : ℕ) : ℤ :=
  A129309.P14897869849901808427.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129309.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A129449.P16811369951284374443

`(-1)^n*A033762(n)`
-/

namespace A129449.P16811369951284374443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A033762 n

end

end A129449.P16811369951284374443

noncomputable section

/-- A129449: Expansion of psi(-x) * psi(-x^3) in powers of x where psi() is a Ramanujan theta function.

Offset 0, canonical program `A129449.P16811369951284374443`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129449 (n : ℕ) : ℤ :=
  A129449.P16811369951284374443.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129449.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129492.P1594792937777551858

`∩[A002808(n+1), comp[A226221(n+1)]]`
-/

namespace A129492.P1594792937777551858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226221 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A129492.P1594792937777551858

noncomputable section

/-- A129492: Composite numbers k such that 2^k mod k is a power of 2.

Offset 1, canonical program `A129492.P1594792937777551858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A129492 (n : ℕ) : ℤ :=
  (A129492.P1594792937777551858.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A129492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129690.P14713627052820705592

`A007318(n+1)+A135230(n)-A103451(n)`
-/

namespace A129690.P14713627052820705592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) + (A135230 n - A103451 n)

end

end A129690.P14713627052820705592

noncomputable section

/-- A129690: A129688 * A007318.

Offset 1, canonical program `A129690.P14713627052820705592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129690 (n : ℕ) : ℤ :=
  A129690.P14713627052820705592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129910.P2665300731369713795

`floor(A107309(n)/3)`
-/

namespace A129910.P2665300731369713795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A107309 n : ℚ) / 3⌋

end

end A129910.P2665300731369713795

noncomputable section

/-- A129910: Quotient of the decimal representation of concatenated twin primes in reverse divided by 3.

Offset 1, canonical program `A129910.P2665300731369713795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A129910 (n : ℕ) : ℤ :=
  A129910.P2665300731369713795.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A129910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130008.P4788618563532273942

`A008578(gcd(xor(1, -n), ∑[n]))`
-/

namespace A130008.P4788618563532273942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (Int.gcd (Int.xor 1 (-(n : ℤ))) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A130008.P4788618563532273942

noncomputable section

/-- A130008: Noncomposite numbers sandwiched between 1's.

Offset 0, canonical program `A130008.P4788618563532273942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130008 (n : ℕ) : ℤ :=
  A130008.P4788618563532273942.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130209.P2278813470092535691

`A023531(n)*A051194(n+1)`
-/

namespace A130209.P2278813470092535691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A051194 (n + 1)

end

end A130209.P2278813470092535691

noncomputable section

/-- A130209: Diagonalized matrix of d(n), A000005, number of divisors of n.

Offset 1, canonical program `A130209.P2278813470092535691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130209 (n : ℕ) : ℤ :=
  A130209.P2278813470092535691.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130258.P9767725094634549464

`∑[A130256(n)]`
-/

namespace A130258.P9767725094634549464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130258.P9767725094634549464

noncomputable section

/-- A130258: Partial sums of the 'upper' odd Fibonacci Inverse A130256.

Offset 0, canonical program `A130258.P9767725094634549464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130258 (n : ℕ) : ℤ :=
  A130258.P9767725094634549464.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130297.P826751733099478638

`A135223(n+1)+A114327(n)`
-/

namespace A130297.P826751733099478638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1) + A114327 n

end

end A130297.P826751733099478638

noncomputable section

/-- A130297: A130296^2.

Offset 1, canonical program `A130297.P826751733099478638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130297 (n : ℕ) : ℤ :=
  A130297.P826751733099478638.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130638.P11945976620762067139

`A000007(A051950(n+2)²)`
-/

namespace A130638.P11945976620762067139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A051950 (n + 2) ^ 2).toNat

end

end A130638.P11945976620762067139

noncomputable section

/-- A130638: a(n) = 1 iff d(n) = d(n+1), otherwise a(n)=0, where d(n) is the number of divisors of n, A000005.

Offset 1, canonical program `A130638.P11945976620762067139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130638 (n : ℕ) : ℤ :=
  A130638.P11945976620762067139.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130665.P10276629478371461790

`A160410(n+1)/4`
-/

namespace A130665.P10276629478371461790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160410 (n + 1) : ℚ) / 4

end

end A130665.P10276629478371461790

noncomputable section

/-- A130665: a(n) = Sum_{k=0..n} 3^wt(k), where wt() = A000120().

Offset 0, canonical program `A130665.P10276629478371461790`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160410, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130665 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A130665.P10276629478371461790.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160410, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130665.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A131034.P11408051281960244654

`A004271(A131035(n))`
-/

namespace A131034.P11408051281960244654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (A131035 n).toNat

end

end A131034.P11408051281960244654

noncomputable section

/-- A131034: Triangle read by rows: A129686 * A051340 as infinite lower triangular matrices.

Offset 0, canonical program `A131034.P11408051281960244654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131034 (n : ℕ) : ℤ :=
  A131034.P11408051281960244654.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131084.P7589424651343713133

`A029653(n-1)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A131084.P7589424651343713133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A029653 (n - 1) - a (n - 1)

end

end A131084.P7589424651343713133

noncomputable section

/-- A131084: A129686 * A007318. Riordan triangle (1+x, x/(1-x)).

Offset 1, canonical program `A131084.P7589424651343713133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131084 (n : ℕ) : ℤ :=
  A131084.P7589424651343713133.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131198.P17134115705625064705

`A367270(n)/A128227(n)`
-/

namespace A131198.P17134115705625064705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367270 n : ℚ) / (A128227 n : ℚ)

end

end A131198.P17134115705625064705

noncomputable section

/-- A131198: Triangle T(n,k), 0 <= k <= n, read by rows, given by [1,0,1,0,1,0,1,0,...] DELTA [0,1,0,1,0,1,0,1,...] where DELTA is the operator defined in A084938.

Offset 0, canonical program `A131198.P17134115705625064705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131198 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A131198.P17134115705625064705.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131399.P11219258702927112905

`A131402(n)+A014473(n)`
-/

namespace A131399.P11219258702927112905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131402 n + A014473 n

end

end A131399.P11219258702927112905

noncomputable section

/-- A131399: 3*A007318 - A046854 - A065941.

Offset 0, canonical program `A131399.P11219258702927112905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131399 (n : ℕ) : ℤ :=
  A131399.P11219258702927112905.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131635.P15231796072732893040

`A132818(A245300(n)+1)`
-/

namespace A131635.P15231796072732893040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132818 (A245300 n + 1).toNat

end

end A131635.P15231796072732893040

noncomputable section

/-- A131635: Triangle T(n,m)=m*n*binomial(m+n,m)^2/(2*(m+n)) read by rows.

Offset 1, canonical program `A131635.P15231796072732893040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2626 terms. -/
def A131635 (n : ℕ) : ℤ :=
  A131635.P15231796072732893040.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2626 terms. -/
def A131635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132046.P838827158964499590

`A028326(n)-A103451(n)`
-/

namespace A132046.P838827158964499590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A103451 n

end

end A132046.P838827158964499590

noncomputable section

/-- A132046: Triangle read by rows: T(n,0) = T(n,n) = 1, and T(n,k) = 2*binomial(n,k) for 1 <= k <= n - 1.

Offset 0, canonical program `A132046.P838827158964499590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132046 (n : ℕ) : ℤ :=
  A132046.P838827158964499590.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132047.P15438420452738550569

`3*A007318(n)-2*A103451(n)`
-/

namespace A132047.P15438420452738550569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A007318 n - 2 * A103451 n

end

end A132047.P15438420452738550569

noncomputable section

/-- A132047: 3*A007318 - 2*A103451 as infinite lower triangular matrices.

Offset 0, canonical program `A132047.P15438420452738550569`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A103451, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132047 (n : ℕ) : ℤ :=
  A132047.P15438420452738550569.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A103451, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132047.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A132068.P1201751376170146837

`Δ[eq[1, A300294(A028310(n))]]`
-/

namespace A132068.P1201751376170146837
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300294 (A028310 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A132068.P1201751376170146837

noncomputable section

/-- A132068: Irregular array: row n has A000010(n) terms: the sum of the first m terms of row n is the m-th positive integer which is coprime to n.

Offset 1, canonical program `A132068.P1201751376170146837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A132068 (n : ℕ) : ℤ :=
  A132068.P1201751376170146837.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A132068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132169.P12794010027182556537

`A141616(n+1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A132169.P12794010027182556537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141616 (n + 1) : ℚ) / 4

end

end A132169.P12794010027182556537

noncomputable section

/-- A132169: Irregular triangle read by rows. A141616(n)/4.

Offset 0, canonical program `A132169.P12794010027182556537`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141616, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132169 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A132169.P12794010027182556537.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141616, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132169.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A132234.P13659336727395095621

`∪[A142797(n+1), A142789(n+1)]`
-/

namespace A132234.P13659336727395095621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A132234.P13659336727395095621

noncomputable section

/-- A132234: Primes congruent to 19 (mod 30).

Offset 1, canonical program `A132234.P13659336727395095621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132234 (n : ℕ) : ℤ :=
  (A132234.P13659336727395095621.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132589.P7281527089305530724

`gcd(A038566(n+1), n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A132589.P7281527089305530724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038566 (n + 1)) (n + 1 : ℤ)

end

end A132589.P7281527089305530724

noncomputable section

/-- A132589: a(n) = gcd(A038566(n), n).

Offset 1, canonical program `A132589.P7281527089305530724`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038566, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132589 (n : ℕ) : ℤ :=
  (A132589.P7281527089305530724.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038566, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132589.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A132637.P17118528607186897140

`A002808(n+1)^A002808(n+1)`
-/

namespace A132637.P17118528607186897140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002808 (n + 1) : ℚ) ^ (A002808 (n + 1) : ℤ)

end

end A132637.P17118528607186897140

noncomputable section

/-- A132637: Composite number C(n) raised to power C(n).

Offset 1, canonical program `A132637.P17118528607186897140`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132637 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A132637.P17118528607186897140.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132637.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133128.P6744000441068247650

`A141620(A057428(n)+n)%∑[n+3]`
-/

namespace A133128.P6744000441068247650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141620 (A057428 n + (n : ℤ)).toNat) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A133128.P6744000441068247650

noncomputable section

/-- A133128: Triangle of first differences of A120070 with a leftmost column of A002522.

Offset 0, canonical program `A133128.P6744000441068247650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133128 (n : ℕ) : ℤ :=
  A133128.P6744000441068247650.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133518.P1197385440104389255

`A121842(A000040(n+1))`
-/

namespace A133518.P1197385440104389255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121842 (A000040 (n + 1)).toNat

end

end A133518.P1197385440104389255

noncomputable section

/-- A133518: Smallest k such that p(n)^3 + k is prime where p(n) is the n-th prime.

Offset 1, canonical program `A133518.P1197385440104389255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A133518 (n : ℕ) : ℤ :=
  A133518.P1197385440104389255.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A133518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133578.P2891795595979798693

`2*A210934(n+1)-A133685(n+1)`
-/

namespace A133578.P2891795595979798693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210934 (n + 1) - A133685 (n + 1)

end

end A133578.P2891795595979798693

noncomputable section

/-- A133578: Let p = prime(n); then a(n) = (sum of prime factors of p+1) + (sum of prime factors of p-1). a(1) = 4 by convention.

Offset 1, canonical program `A133578.P2891795595979798693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A133578 (n : ℕ) : ℤ :=
  A133578.P2891795595979798693.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A133578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133698.P17080952443487719908

`A023531(n)*A133699(n+1)`
-/

namespace A133698.P17080952443487719908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A133699 (n + 1)

end

end A133698.P17080952443487719908

noncomputable section

/-- A133698: Triangle, diagonal = A001227 with the rest zeros.

Offset 1, canonical program `A133698.P17080952443487719908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133698 (n : ℕ) : ℤ :=
  A133698.P17080952443487719908.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133985.P8073439026630697214

`(-1)^n*A080995(n)`
-/

namespace A133985.P8073439026630697214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A080995 n

end

end A133985.P8073439026630697214

noncomputable section

/-- A133985: Expansion of f(-x, x^2) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A133985.P8073439026630697214`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080995, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133985 (n : ℕ) : ℤ :=
  A133985.P8073439026630697214.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080995, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133985.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A134536.P11411839955593535513

`gcd(A002808(n+1), A002808(2*(n+1)))`
-/

namespace A134536.P11411839955593535513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002808 (n + 1)) (A002808 (2 * (n + 1)))

end

end A134536.P11411839955593535513

noncomputable section

/-- A134536: a(n) = gcd(c(n), c(2n)), where c(n) is the n-th composite positive integer.

Offset 1, canonical program `A134536.P11411839955593535513`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134536 (n : ℕ) : ℤ :=
  (A134536.P11411839955593535513.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134536.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A134676.P11721118199451395300

`A007425(A010766(n+1))*A127093(n+1)`
-/

namespace A134676.P11721118199451395300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A010766 (n + 1)).toNat * A127093 (n + 1)

end

end A134676.P11721118199451395300

noncomputable section

/-- A134676: Triangle read by rows: A127172 * A127648 as infinite lower triangular matrices.

Offset 1, canonical program `A134676.P11721118199451395300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A134676 (n : ℕ) : ℤ :=
  A134676.P11721118199451395300.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A134676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134843.P6168902286908360690

`lt[A053667(n)², n%10]`
-/

namespace A134843.P6168902286908360690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053667 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A134843.P6168902286908360690

noncomputable section

/-- A134843: Numbers n not divisible by 10 such that n^2 contains a 0.

Offset 1, canonical program `A134843.P6168902286908360690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A134843 (n : ℕ) : ℤ :=
  (A134843.P6168902286908360690.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A134843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134844.P16925415040102992472

`eq[A053667(n), A055641(n)]`
-/

namespace A134844.P16925415040102992472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053667 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134844.P16925415040102992472

noncomputable section

/-- A134844: Numbers k such that k contains no zero but k^2 contains at least one zero.

Offset 1, canonical program `A134844.P16925415040102992472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3417 terms. -/
def A134844 (n : ℕ) : ℤ :=
  (A134844.P16925415040102992472.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3417 terms. -/
def A134844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134870.P924456470311345683

`A051731(n+1)+1-A103451(n)`
-/

namespace A134870.P924456470311345683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) + (1 - A103451 n)

end

end A134870.P924456470311345683

noncomputable section

/-- A134870: A051731 + A000012 - A103451.

Offset 1, canonical program `A134870.P924456470311345683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134870 (n : ℕ) : ℤ :=
  A134870.P924456470311345683.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135210.P13755844676552817984

`record[A052413(n+1)%A007095(n+1)]`
-/

namespace A135210.P13755844676552817984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052413 (n + 1)) (A007095 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135210.P13755844676552817984

noncomputable section

/-- A135210: Numbers n such that Sum_digits(n) + Sum_digits(n+1) = Sum_digits(2*n+1).

Offset 1, canonical program `A135210.P13755844676552817984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1560 terms. -/
def A135210 (n : ℕ) : ℤ :=
  A135210.P13755844676552817984.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1560 terms. -/
def A135210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135228.P7397640457277303691

`or(A000975(A158821(n)), A059260(n))`
-/

namespace A135228.P7397640457277303691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000975 (A158821 n).toNat) (A059260 n)

end

end A135228.P7397640457277303691

noncomputable section

/-- A135228: Triangle A000012(signed) * A007318 * A103451, read by rows.

Offset 0, canonical program `A135228.P7397640457277303691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135228 (n : ℕ) : ℤ :=
  A135228.P7397640457277303691.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135291.P15334371247132927282

`A000005(A049614(n))`
-/

namespace A135291.P15334371247132927282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A049614 n).toNat

end

end A135291.P15334371247132927282

noncomputable section

/-- A135291: Product of the nonzero exponents in the prime factorization of n!.

Offset 0, canonical program `A135291.P15334371247132927282`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135291 (n : ℕ) : ℤ :=
  A135291.P15334371247132927282.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135291.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135871.P7097473593831335136

`A000244(A002262(n))*A049310(n)`
-/

namespace A135871.P7097473593831335136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A002262 n).toNat * A049310 n

end

end A135871.P7097473593831335136

noncomputable section

/-- A135871: Triangle by columns: A013610 signed and interleaved with zeros.

Offset 1, canonical program `A135871.P7097473593831335136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135871 (n : ℕ) : ℤ :=
  A135871.P7097473593831335136.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136053.P1834187513963801814

`ceil(A136063(n+1)/9)`
-/

namespace A136053.P1834187513963801814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A136063 (n + 1) : ℚ) / 9⌉

end

end A136053.P1834187513963801814

noncomputable section

/-- A136053: Daughter primes of order 4.

Offset 1, canonical program `A136053.P1834187513963801814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136053 (n : ℕ) : ℤ :=
  A136053.P1834187513963801814.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136054.P7433074822671790775

`ceil(A136064(n+1)/11)`
-/

namespace A136054.P7433074822671790775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A136064 (n + 1) : ℚ) / 11⌉

end

end A136054.P7433074822671790775

noncomputable section

/-- A136054: Daughter primes of order 5.

Offset 1, canonical program `A136054.P7433074822671790775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136054 (n : ℕ) : ℤ :=
  A136054.P7433074822671790775.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136058.P2979785856532067478

`ceil(A136068(n+1)/19)`
-/

namespace A136058.P2979785856532067478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A136068 (n + 1) : ℚ) / 19⌉

end

end A136058.P2979785856532067478

noncomputable section

/-- A136058: Daughter primes of order 9.

Offset 1, canonical program `A136058.P2979785856532067478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136058 (n : ℕ) : ℤ :=
  A136058.P2979785856532067478.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136060.P13008685728988054829

`ceil(A136070(n+1)/23)`
-/

namespace A136060.P13008685728988054829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A136070 (n + 1) : ℚ) / 23⌉

end

end A136060.P13008685728988054829

noncomputable section

/-- A136060: Daughter primes of order 11.

Offset 1, canonical program `A136060.P13008685728988054829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136060 (n : ℕ) : ℤ :=
  A136060.P13008685728988054829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136255.P17077608537681163223

`A049310(n)*A127948(n)`
-/

namespace A136255.P17077608537681163223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 n * A127948 n

end

end A136255.P17077608537681163223

noncomputable section

/-- A136255: Triangle T(n,k) read by rows: T(n,k) = (k+1) * A137276(n,k+1).

Offset 1, canonical program `A136255.P17077608537681163223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136255 (n : ℕ) : ℤ :=
  A136255.P17077608537681163223.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136548.P17831031601123252591

`A008578(A230980(n)+1)`
-/

namespace A136548.P17831031601123252591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A230980 n + 1).toNat

end

end A136548.P17831031601123252591

noncomputable section

/-- A136548: a(n) = max {k >= 1 | sigma(k) <= n}.

Offset 1, canonical program `A136548.P17831031601123252591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A136548 (n : ℕ) : ℤ :=
  A136548.P17831031601123252591.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A136548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137174.P13634936289925099927

`Δ[A138383(n)]`
-/

namespace A137174.P13634936289925099927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137174.P13634936289925099927

noncomputable section

/-- A137174: First differences of A138383.

Offset 1, canonical program `A137174.P13634936289925099927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A137174 (n : ℕ) : ℤ :=
  A137174.P13634936289925099927.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A137174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137180.P9009157084453984634

`A136687(n)-1`
-/

namespace A137180.P9009157084453984634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136687 n - 1

end

end A137180.P9009157084453984634

noncomputable section

/-- A137180: Number of palindromes in the range [1,n] inclusive.

Offset 0, canonical program `A137180.P9009157084453984634`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A136687, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A137180 (n : ℕ) : ℤ :=
  A137180.P9009157084453984634.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A136687, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A137180.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A137257.P10786127464413507786

`lt[1, gcd(n+1, A005361(n+1))]+1`
-/

namespace A137257.P10786127464413507786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A005361 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A137257.P10786127464413507786

noncomputable section

/-- A137257: A number k is included if there is at least one (nonzero) exponent in the prime factorization of k that is not coprime to k.

Offset 1, canonical program `A137257.P10786127464413507786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137257 (n : ℕ) : ℤ :=
  (A137257.P10786127464413507786.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137319.P10681023325901659618

`n+1+A065608(n+1)`
-/

namespace A137319.P10681023325901659618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A065608 (n + 1)

end

end A137319.P10681023325901659618

noncomputable section

/-- A137319: Start with the set of natural numbers. Add 1 to every 2nd term, 2 to every 3rd term, 3 to every 4th term, etc.

Offset 1, canonical program `A137319.P10681023325901659618`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137319 (n : ℕ) : ℤ :=
  A137319.P10681023325901659618.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137319.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A137328.P11203523918348425048

`record[A162753(n)]-A260188(A008578(n+2))`
-/

namespace A137328.P11203523918348425048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A260188 (A008578 (n + 2)).toNat

end

end A137328.P11203523918348425048

noncomputable section

/-- A137328: a(n) = prime(n) - primorial(k), where k is the greatest number for which primorial(k) <= prime(n).

Offset 1, canonical program `A137328.P11203523918348425048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A137328 (n : ℕ) : ℤ :=
  A137328.P11203523918348425048.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A137328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137409.P1497138613230208861

`comp[A222946(n+2)]`
-/

namespace A137409.P1497138613230208861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222946 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A137409.P1497138613230208861

noncomputable section

/-- A137409: Numbers that cannot be the value of 'C' in a primitive Pythagorean triple (A < B; A^2 + B^2 = C^2).

Offset 1, canonical program `A137409.P1497138613230208861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6748 terms. -/
def A137409 (n : ℕ) : ℤ :=
  (A137409.P1497138613230208861.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6748 terms. -/
def A137409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137452.P16083468745332901091

`A243203(abs(1-n)+1)/A008279(n)*A130595(n)`
-/

namespace A137452.P16083468745332901091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243203 (|1 - (n : ℤ)| + 1).toNat : ℚ) / (A008279 n : ℚ) * (A130595 n : ℚ)

end

end A137452.P16083468745332901091

noncomputable section

/-- A137452: Triangular array of the coefficients of the sequence of Abel polynomials A(n,x) := x*(x-n)^(n-1).

Offset 0, canonical program `A137452.P16083468745332901091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1712 terms. -/
def A137452 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A137452.P16083468745332901091.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1712 terms. -/
def A137452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137588.P17954541241361274980

`∑[char[A007821(n+1)-1]]`
-/

namespace A137588.P17954541241361274980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137588.P17954541241361274980

noncomputable section

/-- A137588: Number of primes not greater than n that are greater than the number of primes not greater than n.

Offset 1, canonical program `A137588.P17954541241361274980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137588 (n : ℕ) : ℤ :=
  (A137588.P17954541241361274980.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137589.P7831409490653393190

`A138840(n+1)%A017329(n)`
-/

namespace A137589.P7831409490653393190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138840 (n + 1)) (A017329 n)

end

end A137589.P7831409490653393190

noncomputable section

/-- A137589: a(n) is the integer that results after deletion of all digits of n-th prime, except the initial digit and the final digit.

Offset 1, canonical program `A137589.P7831409490653393190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A137589 (n : ℕ) : ℤ :=
  A137589.P7831409490653393190.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A137589.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137708.P13865260195128569444

`floor(A187952(n+1)-n/2)`
-/

namespace A137708.P13865260195128569444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A187952 (n + 1) : ℚ) - (n : ℚ) / 2⌋

end

end A137708.P13865260195128569444

noncomputable section

/-- A137708: Secondary Lower Wythoff Sequence.

Offset 1, canonical program `A137708.P13865260195128569444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137708 (n : ℕ) : ℤ :=
  A137708.P13865260195128569444.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137925.P3338572406075972274

`(n+1)/gcd(n+1, A002808(n+1)^8)`
-/

namespace A137925.P3338572406075972274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A002808 (n + 1) ^ 8) : ℚ)

end

end A137925.P3338572406075972274

noncomputable section

/-- A137925: a(n) = the largest divisor of n that is coprime to A002808(n). (A002808(n) = the n-th composite.)

Offset 1, canonical program `A137925.P3338572406075972274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A137925 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A137925.P3338572406075972274.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A137925.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138010.P7109806690642076622

`A000005(A009191(n+1))`
-/

namespace A138010.P7109806690642076622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A009191 (n + 1)).toNat

end

end A138010.P7109806690642076622

noncomputable section

/-- A138010: a(n) is the number of positive divisors of n that divide d(n), where d(n) is the number of positive divisors of n, A000005(n); a(n) also equals d(gcd(n, d(n))).

Offset 1, canonical program `A138010.P7109806690642076622`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138010 (n : ℕ) : ℤ :=
  A138010.P7109806690642076622.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138010.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138071.P11538494135828144248

`A138114(A133825(n))`
-/

namespace A138071.P11538494135828144248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138114 (A133825 n).toNat

end

end A138071.P11538494135828144248

noncomputable section

/-- A138071: Triangle read by rows: row n lists the digits of A135698(n), the palindromic number with odd number of digits formed from the reflected decimal expansion of Pi.

Offset 1, canonical program `A138071.P11538494135828144248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138071 (n : ℕ) : ℤ :=
  A138071.P11538494135828144248.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138108.P12946444760765418532

`A081123(A080883(n))*A260492(n)`
-/

namespace A138108.P12946444760765418532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (A080883 n).toNat * A260492 n

end

end A138108.P12946444760765418532

noncomputable section

/-- A138108: Triangle read by rows: T(n,k) = n! * [t^n*x^k] x^(n+1) * exp(x*t) / (x-t), 0 <= k <= 2*n.

Offset 0, canonical program `A138108.P12946444760765418532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A138108 (n : ℕ) : ℤ :=
  A138108.P12946444760765418532.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A138108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138222.P16088204697107012078

`A070939(and(A034729(n+1), A100587(n+1)))`
-/

namespace A138222.P16088204697107012078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Int.land (A034729 (n + 1)) (A100587 (n + 1))).toNat

end

end A138222.P16088204697107012078

noncomputable section

/-- A138222: a(n) = the largest divisor of n that is <= the number of positive divisors of n.

Offset 1, canonical program `A138222.P16088204697107012078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A138222 (n : ℕ) : ℤ :=
  A138222.P16088204697107012078.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A138222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138248.P2969581266609767893

`p?[A137877(n+1)]`
-/

namespace A138248.P2969581266609767893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138248.P2969581266609767893

noncomputable section

/-- A138248: Prime numbers k such that 18*k - 1 and 18*k + 1 are twin primes.

Offset 1, canonical program `A138248.P2969581266609767893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 672 terms. -/
def A138248 (n : ℕ) : ℤ :=
  A138248.P2969581266609767893.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 672 terms. -/
def A138248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138622.P13494788232116545639

`ceil(A024900(n+1)/2)`
-/

namespace A138622.P13494788232116545639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A024900 (n + 1) : ℚ) / 2⌉

end

end A138622.P13494788232116545639

noncomputable section

/-- A138622: Nonnegative integers k such that 14*k-1 is prime.

Offset 1, canonical program `A138622.P13494788232116545639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138622 (n : ℕ) : ℤ :=
  A138622.P13494788232116545639.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138707.P243569157619133773

`A046951(A214587(n+1)²)`
-/

namespace A138707.P243569157619133773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A214587 (n + 1) ^ 2).toNat

end

end A138707.P243569157619133773

noncomputable section

/-- A138707: Number of divisors of n that are also divisors of some d(k)*10^k, where n=Sum(d(k)*10^k).

Offset 1, canonical program `A138707.P243569157619133773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A138707 (n : ℕ) : ℤ :=
  A138707.P243569157619133773.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A138707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138948.P4888699677792137686

`val(A002808(A002024(n+1)), A037126(n+1))`
-/

namespace A138948.P4888699677792137686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A002808 (A002024 (n + 1)).toNat).toNat (A037126 (n + 1)).toNat

end

end A138948.P4888699677792137686

noncomputable section

/-- A138948: Triangle T[i,j] = exponent of prime A000040(j) in factorization of composite A002808(i).

Offset 1, canonical program `A138948.P4888699677792137686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A138948 (n : ℕ) : ℤ :=
  (A138948.P4888699677792137686.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A138948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139328.P7634971209800712135

`∑[A285269(n)]`
-/

namespace A139328.P7634971209800712135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139328.P7634971209800712135

noncomputable section

/-- A139328: Sums of rows of the triangle in A139325.

Offset 1, canonical program `A139328.P7634971209800712135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139328 (n : ℕ) : ℤ :=
  A139328.P7634971209800712135.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139588.P5307626544462001957

`filter[A018252(n+1), A122895(#)]`
-/

namespace A139588.P5307626544462001957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122895 (f1 j).toNat = 1) n)

end

end A139588.P5307626544462001957

noncomputable section

/-- A139588: Nonprime numbers with Fibonacci number of divisors.

Offset 1, canonical program `A139588.P5307626544462001957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A139588 (n : ℕ) : ℤ :=
  A139588.P5307626544462001957.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A139588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139655.P8337853474759955749

`∩[A107145(n+1), A139645(n+1)]`
-/

namespace A139655.P8337853474759955749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139655.P8337853474759955749

noncomputable section

/-- A139655: Primes of the form x^2 + 280*y^2.

Offset 1, canonical program `A139655.P8337853474759955749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4959 terms. -/
def A139655 (n : ℕ) : ℤ :=
  (A139655.P8337853474759955749.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4959 terms. -/
def A139655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139791.P5658122934383190521

`ceil((A015919(n+3)-sqrt(2))/2)`
-/

namespace A139791.P5658122934383190521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A015919 (n + 3) : ℝ) - Real.sqrt (2 : ℝ)) / 2⌉

end

end A139791.P5658122934383190521

noncomputable section

/-- A139791: Numbers n for which 2n is a multiple of A002326(n), the multiplicative order of 2 mod 2n+1.

Offset 1, canonical program `A139791.P5658122934383190521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139791 (n : ℕ) : ℤ :=
  A139791.P5658122934383190521.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139821.P1827317290986140753

`or(C(n, n²), A210553(A038722(n+1)))`
-/

namespace A139821.P1827317290986140753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose n (n ^ 2) : ℤ) (A210553 (A038722 (n + 1)).toNat)

end

end A139821.P1827317290986140753

noncomputable section

/-- A139821: Triangle T(i,j) read by rows: T(i,1) = Fibonacci(i) for all i; T(i,i) = i for all i; T(i,j) = T(i-1,j) + T(i-2,j) + T(i-1,j-1) - T(i-2,j-1).

Offset 1, canonical program `A139821.P1827317290986140753`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A139821 (n : ℕ) : ℤ :=
  A139821.P1827317290986140753.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A139821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139846.P13211547864844633641

`∩[A106972(n+1), A107151(n+1)]`
-/

namespace A139846.P13211547864844633641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139846.P13211547864844633641

noncomputable section

/-- A139846: Primes of the form 5x^2 + 21y^2.

Offset 1, canonical program `A139846.P13211547864844633641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4981 terms. -/
def A139846 (n : ℕ) : ℤ :=
  (A139846.P13211547864844633641.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4981 terms. -/
def A139846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139860.P2130023366757760233

`∩[A107144(n+1), A139530(n+1)]`
-/

namespace A139860.P2130023366757760233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139860.P2130023366757760233

noncomputable section

/-- A139860: Primes of the form 12x^2+12xy+13y^2.

Offset 1, canonical program `A139860.P2130023366757760233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4993 terms. -/
def A139860 (n : ℕ) : ℤ :=
  (A139860.P2130023366757760233.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4993 terms. -/
def A139860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139870.P15117981739868460492

`∩[A107151(n+1), A139827(n+1)]`
-/

namespace A139870.P15117981739868460492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139870.P15117981739868460492

noncomputable section

/-- A139870: Primes of the form 6x^2 + 6xy + 29y^2.

Offset 1, canonical program `A139870.P15117981739868460492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4994 terms. -/
def A139870 (n : ℕ) : ℤ :=
  (A139870.P15117981739868460492.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4994 terms. -/
def A139870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139879.P5833802946474482157

`∩[A106972(n+1), A107181(n+1)]`
-/

namespace A139879.P5833802946474482157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139879.P5833802946474482157

noncomputable section

/-- A139879: Primes of the form 12x^2+12xy+17y^2.

Offset 1, canonical program `A139879.P5833802946474482157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5011 terms. -/
def A139879 (n : ℕ) : ℤ :=
  (A139879.P5833802946474482157.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5011 terms. -/
def A139879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139899.P13891579585727544648

`∩[A107003(n+1), A107144(n+1)]`
-/

namespace A139899.P13891579585727544648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139899.P13891579585727544648

noncomputable section

/-- A139899: Primes of the form 5x^2+48y^2.

Offset 1, canonical program `A139899.P13891579585727544648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5007 terms. -/
def A139899 (n : ℕ) : ℤ :=
  (A139899.P13891579585727544648.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5007 terms. -/
def A139899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139914.P18233845274727958943

`∩[A139852(n+1), A141180(n+1)]`
-/

namespace A139914.P18233845274727958943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139914.P18233845274727958943

noncomputable section

/-- A139914: Primes of the form 4x^2+4xy+71y^2.

Offset 1, canonical program `A139914.P18233845274727958943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2509 terms. -/
def A139914 (n : ℕ) : ℤ :=
  (A139914.P18233845274727958943.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2509 terms. -/
def A139914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139917.P6603706917058125727

`A107180(lt[1, A107180(n+2)%4]+2)`
-/

namespace A139917.P6603706917058125727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107180 (n + 2)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A139917.P6603706917058125727

noncomputable section

/-- A139917: Primes of the form 8x^2+35y^2.

Offset 1, canonical program `A139917.P6603706917058125727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5014 terms. -/
def A139917 (n : ℕ) : ℤ :=
  A139917.P6603706917058125727.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5014 terms. -/
def A139917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139918.P10035203543490723934

`∩[A107180(n+1), A139851(n+1)]`
-/

namespace A139918.P10035203543490723934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139918.P10035203543490723934

noncomputable section

/-- A139918: Primes of the form 8x^2+8xy+37y^2.

Offset 1, canonical program `A139918.P10035203543490723934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4985 terms. -/
def A139918 (n : ℕ) : ℤ :=
  (A139918.P10035203543490723934.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4985 terms. -/
def A139918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139936.P10466405018105206828

`∩[A038898(n+1), A141304(n+1)]`
-/

namespace A139936.P10466405018105206828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139936.P10466405018105206828

noncomputable section

/-- A139936: Primes of the form 3x^2+115y^2.

Offset 1, canonical program `A139936.P10466405018105206828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1280 terms. -/
def A139936 (n : ℕ) : ℤ :=
  (A139936.P10466405018105206828.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1280 terms. -/
def A139936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139938.P7912373781816006256

`∩[A038898(n+1), A141302(n+1)]`
-/

namespace A139938.P7912373781816006256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139938.P7912373781816006256

noncomputable section

/-- A139938: Primes of the form 6*x^2+6*x*y+59*y^2.

Offset 1, canonical program `A139938.P7912373781816006256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1271 terms. -/
def A139938 (n : ℕ) : ℤ :=
  (A139938.P7912373781816006256.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1271 terms. -/
def A139938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139941.P2989608135916339221

`∩[A107168(n+1), A297177(n+1)]`
-/

namespace A139941.P2989608135916339221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139941.P2989608135916339221

noncomputable section

/-- A139941: Primes of the form 19x^2+8xy+19y^2.

Offset 1, canonical program `A139941.P2989608135916339221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1262 terms. -/
def A139941 (n : ℕ) : ℤ :=
  (A139941.P2989608135916339221.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1262 terms. -/
def A139941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139987.P2036163733639897663

`∩[A139848(n+1), A140633(n+1)]`
-/

namespace A139987.P2036163733639897663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139987.P2036163733639897663

noncomputable section

/-- A139987: Primes of the form 7x^2+120y^2.

Offset 1, canonical program `A139987.P2036163733639897663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4997 terms. -/
def A139987 (n : ℕ) : ℤ :=
  (A139987.P2036163733639897663.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4997 terms. -/
def A139987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139989.P14604697816370670193

`∩[A139887(n+1), A139897(n+1)]`
-/

namespace A139989.P14604697816370670193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139989.P14604697816370670193

noncomputable section

/-- A139989: Primes of the form 8x^2+8xy+107y^2.

Offset 1, canonical program `A139989.P14604697816370670193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5005 terms. -/
def A139989 (n : ℕ) : ℤ :=
  (A139989.P14604697816370670193.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5005 terms. -/
def A139989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139992.P15611343354093908935

`∩[A139845(n+1), A139857(n+1)]`
-/

namespace A139992.P15611343354093908935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139992.P15611343354093908935

noncomputable section

/-- A139992: Primes of the form 20x^2+20xy+47y^2.

Offset 1, canonical program `A139992.P15611343354093908935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A139992 (n : ℕ) : ℤ :=
  (A139992.P15611343354093908935.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A139992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139993.P12176979692534737172

`∩[A139898(n+1), A139915(n+1)]`
-/

namespace A139993.P12176979692534737172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139993.P12176979692534737172

noncomputable section

/-- A139993: Primes of the form 21x^2+40y^2.

Offset 1, canonical program `A139993.P12176979692534737172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4995 terms. -/
def A139993 (n : ℕ) : ℤ :=
  (A139993.P12176979692534737172.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4995 terms. -/
def A139993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140004.P4564587105245799958

`∩[A107135(n+1), A107201(n+1)]`
-/

namespace A140004.P4564587105245799958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140004.P4564587105245799958

noncomputable section

/-- A140004: Primes of the form 11x^2+120y^2.

Offset 1, canonical program `A140004.P4564587105245799958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2509 terms. -/
def A140004 (n : ℕ) : ℤ :=
  (A140004.P4564587105245799958.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2509 terms. -/
def A140004.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140033.P14179916437465378445

`∩[A139645(n+1), A139827(n+1)]`
-/

namespace A140033.P14179916437465378445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140033.P14179916437465378445

noncomputable section

/-- A140033: Primes of the form 8x^2+8xy+233y^2.

Offset 1, canonical program `A140033.P14179916437465378445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A140033 (n : ℕ) : ℤ :=
  (A140033.P14179916437465378445.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A140033.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140128.P9211484001941945419

`eq[0, Δ[A010553(A000038(n)+n)]]`
-/

namespace A140128.P9211484001941945419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A140128.P9211484001941945419

noncomputable section

/-- A140128: A positive integer k is included if d(d(k)) = d(d(k+1)), where d(k) is the number of divisors of k.

Offset 1, canonical program `A140128.P9211484001941945419`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1679 terms. -/
def A140128 (n : ℕ) : ℤ :=
  (A140128.P9211484001941945419.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1679 terms. -/
def A140128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140222.P11268396333169725338

`eq[1, A001222(A006218(n+1))]+1`
-/

namespace A140222.P11268396333169725338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A006218 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A140222.P11268396333169725338

noncomputable section

/-- A140222: A number j is included if (Sum_{k=1..j} d(k)) is prime, where d(k) is the number of divisors of k.

Offset 1, canonical program `A140222.P11268396333169725338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1052 terms. -/
def A140222 (n : ℕ) : ℤ :=
  (A140222.P11268396333169725338.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1052 terms. -/
def A140222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140237.P5947294070104650303

`eq[0, A006218(n)%A000005(n+1)]+1`
-/

namespace A140237.P5947294070104650303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006218 n) (A000005 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A140237.P5947294070104650303

noncomputable section

/-- A140237: A number n is included if (Sum_{k=1..n} d(k)) is divisible by d(n), where d(n) is the number of positive divisors of n.

Offset 1, canonical program `A140237.P5947294070104650303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3628 terms. -/
def A140237 (n : ℕ) : ℤ :=
  (A140237.P5947294070104650303.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3628 terms. -/
def A140237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140238.P17325431186135903879

`eq[1, gcd(A000005(n+1), A006218(n))]+1`
-/

namespace A140238.P17325431186135903879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (n + 1)) (A006218 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A140238.P17325431186135903879

noncomputable section

/-- A140238: Numbers k such that Sum_{i=1..k} d(i) is coprime to d(k), where d(k) is the number of positive divisors of k.

Offset 1, canonical program `A140238.P17325431186135903879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8998 terms. -/
def A140238 (n : ℕ) : ℤ :=
  (A140238.P17325431186135903879.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8998 terms. -/
def A140238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140377.P8679194704057854348

`∩[A014076(n+1), A127547(n)-1]`
-/

namespace A140377.P8679194704057854348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140377.P8679194704057854348

noncomputable section

/-- A140377: Composites of the form 26k + 3.

Offset 1, canonical program `A140377.P8679194704057854348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 752 terms. -/
def A140377 (n : ℕ) : ℤ :=
  (A140377.P8679194704057854348.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 752 terms. -/
def A140377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140556.P7313996650521697734

`p?[A002808(n+1)-10]`
-/

namespace A140556.P7313996650521697734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140556.P7313996650521697734

noncomputable section

/-- A140556: Primes p such that p + 10 is not a prime.

Offset 1, canonical program `A140556.P7313996650521697734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1811 terms. -/
def A140556 (n : ℕ) : ℤ :=
  A140556.P7313996650521697734.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1811 terms. -/
def A140556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140560.P8549477506657107626

`p?[A002808(n+1)-30]`
-/

namespace A140560.P8549477506657107626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140560.P8549477506657107626

noncomputable section

/-- A140560: Primes p such that p + 30 is not a prime.

Offset 1, canonical program `A140560.P8549477506657107626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1340 terms. -/
def A140560 (n : ℕ) : ℤ :=
  A140560.P8549477506657107626.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1340 terms. -/
def A140560.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140563.P12824830105511435814

`p?[A002808(n+1)-38]`
-/

namespace A140563.P12824830105511435814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - 38

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140563.P12824830105511435814

noncomputable section

/-- A140563: Primes p such that p + 38 is not a prime.

Offset 1, canonical program `A140563.P12824830105511435814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1894 terms. -/
def A140563 (n : ℕ) : ℤ :=
  A140563.P12824830105511435814.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1894 terms. -/
def A140563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140773.P9739347816414512295

`(A007425(n+1)+A046951(n+1))/2`
-/

namespace A140773.P9739347816414512295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007425 (n + 1) + A046951 (n + 1) : ℚ) / 2

end

end A140773.P9739347816414512295

noncomputable section

/-- A140773: Consider the products of all pairs of (not necessarily distinct) positive divisors of n. a(n) is the number of these products that divide n. a(n) also is the number of the products that are divisible by n.

Offset 1, canonical program `A140773.P9739347816414512295`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140773 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A140773.P9739347816414512295.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140773.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A141114.P17286940861939981141

`eq[1, gcd(n+1, A010553(n+1))]+1`
-/

namespace A141114.P17286940861939981141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A010553 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A141114.P17286940861939981141

noncomputable section

/-- A141114: Positive integers k where d(d(k)) is coprime to k, where d(k) is the number of divisors of k.

Offset 1, canonical program `A141114.P17286940861939981141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5335 terms. -/
def A141114 (n : ℕ) : ℤ :=
  (A141114.P17286940861939981141.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5335 terms. -/
def A141114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141427.P14332811284951125235

`A000010(A067775(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141427.P14332811284951125235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A067775 (n + 1)).toNat

end

end A141427.P14332811284951125235

noncomputable section

/-- A141427: a(n) = phi(A067775(n)).

Offset 1, canonical program `A141427.P14332811284951125235`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067775, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141427 (n : ℕ) : ℤ :=
  A141427.P14332811284951125235.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067775, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141427.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A141545.P10467952662609606234

`∩[A036456(n+1), A274557(n+1)]`
-/

namespace A141545.P10467952662609606234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141545.P10467952662609606234

noncomputable section

/-- A141545: Numbers k whose abundance is 12: sigma(k) - 2*k = 12.

Offset 1, canonical program `A141545.P10467952662609606234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 709 terms. -/
def A141545 (n : ℕ) : ℤ :=
  (A141545.P10467952662609606234.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 709 terms. -/
def A141545.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141674.P6920368319490395348

`A000005(∑[A010054(n)])*A126988(n+1)`
-/

namespace A141674.P6920368319490395348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A126988 (n + 1)

end

end A141674.P6920368319490395348

noncomputable section

/-- A141674: Triangle T(n,m) read by rows: T(n,m) = sigma_0(n) * A126988(n,m).

Offset 1, canonical program `A141674.P6920368319490395348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A141674 (n : ℕ) : ℤ :=
  A141674.P6920368319490395348.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A141674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141771.P13541917755099282936

`A210736(A004275(n))+Δ[A120588(n)]`
-/

namespace A141771.P13541917755099282936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (A004275 n).toNat + (f1 (n + 1) - f1 n)

end

end A141771.P13541917755099282936

noncomputable section

/-- A141771: Expansion of (1-sqrt(1-4*x))/(2*x) + 8*x^3/((sqrt(1-4*x))*(1+sqrt(1-4*x))^3).

Offset 0, canonical program `A141771.P13541917755099282936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A141771 (n : ℕ) : ℤ :=
  A141771.P13541917755099282936.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A141771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142035.P15887348333000805245

`∪[A142926(n+1), A142940(n+1)]`
-/

namespace A142035.P15887348333000805245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A142035.P15887348333000805245

noncomputable section

/-- A142035: Primes congruent to 3 mod 32.

Offset 1, canonical program `A142035.P15887348333000805245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142035 (n : ℕ) : ℤ :=
  (A142035.P15887348333000805245.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142042.P17750205476111570286

`∪[A142934(n+1), A142948(n+1)]`
-/

namespace A142042.P17750205476111570286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A142042.P17750205476111570286

noncomputable section

/-- A142042: Primes congruent to 19 mod 32.

Offset 1, canonical program `A142042.P17750205476111570286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142042 (n : ℕ) : ℤ :=
  (A142042.P17750205476111570286.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142074.P11769292884091216833

`10*A008578(2*(n+1)-1)+A008578(2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A142074.P11769292884091216833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A008578 (2 * (n + 1) - 1) + A008578 (2 * (n + 1))

end

end A142074.P11769292884091216833

noncomputable section

/-- A142074: Prime number superposition a(n) = 10*A008578(2n-1) + A008578(2n).

Offset 1, canonical program `A142074.P11769292884091216833`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*A008578(2*(n+1)-1)+A008578(2*(n+1))` (program `A142074.P11769292884091216833`, by `A142074.P11769292884091216833.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A142074 (n : ℕ) : ℤ :=
  A142074.P11769292884091216833.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*A008578(2*(n+1)-1)+A008578(2*(n+1))` (program `A142074.P11769292884091216833`, by `A142074.P11769292884091216833.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A142074.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A142076.P3602534623972657781

`∪[A073102(n+1), A140856(n+1)]`
-/

namespace A142076.P3602534623972657781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A142076.P3602534623972657781

noncomputable section

/-- A142076: Primes congruent to 1 mod 35.

Offset 1, canonical program `A142076.P3602534623972657781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142076 (n : ℕ) : ℤ :=
  (A142076.P3602534623972657781.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143121.P10222713866998147310

`A194939(A038722(n+1))`
-/

namespace A143121.P10222713866998147310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194939 (A038722 (n + 1)).toNat

end

end A143121.P10222713866998147310

noncomputable section

/-- A143121: Triangle read by rows, T(n,k) = Sum_{j=k..n} prime(j), 1 <= k <= n.

Offset 1, canonical program `A143121.P10222713866998147310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A143121 (n : ℕ) : ℤ :=
  A143121.P10222713866998147310.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A143121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143125.P6368460751521179305

`∑[A104236(n+1)]`
-/

namespace A143125.P6368460751521179305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143125.P6368460751521179305

noncomputable section

/-- A143125: a(n) = Sum {j=1..n} j*A001462(j).

Offset 1, canonical program `A143125.P6368460751521179305`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143125 (n : ℕ) : ℤ :=
  A143125.P6368460751521179305.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143185.P1168285322455693736

`A007318(n)*A008619(A157654(n))`
-/

namespace A143185.P1168285322455693736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A008619 (A157654 n).toNat

end

end A143185.P1168285322455693736

noncomputable section

/-- A143185: Triangle read by rows: T(n, k) = (1 + abs(n-2*k))*binomial(n,k), with T(n, 0) = T(n, n) = 1.

Offset 0, canonical program `A143185.P1168285322455693736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A143185 (n : ℕ) : ℤ :=
  A143185.P1168285322455693736.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A143185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143236.P13310137451305250568

`A000005(n+1)*A006218(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143236.P13310137451305250568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A006218 (n + 1)

end

end A143236.P13310137451305250568

noncomputable section

/-- A143236: a(n) = A000005(n) * A006218(n).

Offset 1, canonical program `A143236.P13310137451305250568`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)*A006218(n+1)` (program `A143236.P13310137451305250568`, by `A143236.P13310137451305250568.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A143236 (n : ℕ) : ℤ :=
  A143236.P13310137451305250568.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)*A006218(n+1)` (program `A143236.P13310137451305250568`, by `A143236.P13310137451305250568.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A143236.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A143274.P852831069115198320

`(n+1)*A006218(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143274.P852831069115198320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A006218 (n + 1)

end

end A143274.P852831069115198320

noncomputable section

/-- A143274: a(n) = n * A006218(n).

Offset 1, canonical program `A143274.P852831069115198320`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A006218(n+1)` (program `A143274.P852831069115198320`, by `A143274.P852831069115198320.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A143274 (n : ℕ) : ℤ :=
  A143274.P852831069115198320.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A006218(n+1)` (program `A143274.P852831069115198320`, by `A143274.P852831069115198320.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A143274.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A143353.P15910154969480121083

`A007425(A010766(n+1))*A054524(n+1)`
-/

namespace A143353.P15910154969480121083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A010766 (n + 1)).toNat * A054524 (n + 1)

end

end A143353.P15910154969480121083

noncomputable section

/-- A143353: Triangle read by rows, A127172 * A128407 = (A051731)^3 * A128407, 1<=k<=n.

Offset 1, canonical program `A143353.P15910154969480121083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A143353 (n : ℕ) : ℤ :=
  A143353.P15910154969480121083.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A143353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143356.P8102885452969892794

`∑{d}[n+1, A006218(#)]`
-/

namespace A143356.P8102885452969892794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A006218 d

end

end A143356.P8102885452969892794

noncomputable section

/-- A143356: A051731 * A006218.

Offset 1, canonical program `A143356.P8102885452969892794`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143356 (n : ℕ) : ℤ :=
  A143356.P8102885452969892794.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143356.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143581.P12384463592517670465

`A055786(n)+A000007(n)`
-/

namespace A143581.P12384463592517670465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055786 n + A000007 n

end

end A143581.P12384463592517670465

noncomputable section

/-- A143581: Numerators of coefficient of x^(n+1/2) in the series expansion of the haversine.

Offset 1, canonical program `A143581.P12384463592517670465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A143581 (n : ℕ) : ℤ :=
  A143581.P12384463592517670465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A143581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143730.P16899165122371351592

`A141616(n+1)-A100181(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143730.P16899165122371351592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141616 (n + 1) - A100181 (n + 1)

end

end A143730.P16899165122371351592

noncomputable section

/-- A143730: a(n) = A141616(n) - A100181(n).

Offset 1, canonical program `A143730.P16899165122371351592`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100181, A141616, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A143730 (n : ℕ) : ℤ :=
  A143730.P16899165122371351592.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100181, A141616, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A143730.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A143756.P18241202892685653242

`A143758(A188376(n+2))+A143757(n+1)`
-/

namespace A143756.P18241202892685653242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143758 (A188376 (n + 2)).toNat + A143757 (n + 1)

end

end A143756.P18241202892685653242

noncomputable section

/-- A143756: Aliquot sequence starting at 81.

Offset 0, canonical program `A143756.P18241202892685653242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4141 terms. -/
def A143756 (n : ℕ) : ℤ :=
  A143756.P18241202892685653242.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4141 terms. -/
def A143756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144066.P13750958635095974206

`A007318(n)*A112857(n)`
-/

namespace A144066.P13750958635095974206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A112857 n

end

end A144066.P13750958635095974206

noncomputable section

/-- A144066: T(n, k) is the number of order-preserving partial transformations (of an n-element chain) of height k (height(alpha) = |Im(alpha)|); triangle T read by rows.

Offset 0, canonical program `A144066.P13750958635095974206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9099 terms. -/
def A144066 (n : ℕ) : ℤ :=
  A144066.P13750958635095974206.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9099 terms. -/
def A144066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144146.P5158168376452986911

`eq[1, gcd(n+1, A005361(n+1))]+1`
-/

namespace A144146.P5158168376452986911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A005361 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A144146.P5158168376452986911

noncomputable section

/-- A144146: A positive integer k is included if every nonzero exponent in the prime factorization of k is coprime to k.

Offset 1, canonical program `A144146.P5158168376452986911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144146 (n : ℕ) : ℤ :=
  (A144146.P5158168376452986911.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144454.P6512232522785513048

`floor(A300295(n)/12)`
-/

namespace A144454.P6512232522785513048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A300295 n : ℚ) / 12⌋

end

end A144454.P6512232522785513048

noncomputable section

/-- A144454: First trisection of A061039.

Offset 1, canonical program `A144454.P6512232522785513048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144454 (n : ℕ) : ℤ :=
  A144454.P6512232522785513048.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144680.P12713142862218865544

`A002024(n+1)+A177877(n)-A141419(n+1)`
-/

namespace A144680.P12713142862218865544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A177877 n - A141419 (n + 1))

end

end A144680.P12713142862218865544

noncomputable section

/-- A144680: Triangle read by rows, lower half of an array formed by A004736 * A144328 (transform).

Offset 1, canonical program `A144680.P12713142862218865544`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144680 (n : ℕ) : ℤ :=
  A144680.P12713142862218865544.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144922.P10627848105805684585

`eq[0, (n+1)%A158275(n+1)]+1`
-/

namespace A144922.P10627848105805684585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A158275 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A144922.P10627848105805684585

noncomputable section

/-- A144922: Numbers k such that k*sigma_2(k)/sigma_1(k) is an integer.

Offset 1, canonical program `A144922.P10627848105805684585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 570 terms. -/
def A144922 (n : ℕ) : ℤ :=
  (A144922.P10627848105805684585.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 570 terms. -/
def A144922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144925.P4715798082617986794

`A070824(A002808(n+1))`
-/

namespace A144925.P4715798082617986794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (A002808 (n + 1)).toNat

end

end A144925.P4715798082617986794

noncomputable section

/-- A144925: Number of nontrivial divisors of the n-th composite number.

Offset 1, canonical program `A144925.P4715798082617986794`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070824, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A144925 (n : ℕ) : ℤ :=
  A144925.P4715798082617986794.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070824, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A144925.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A145337.P14852323097851792559

`A008329(n+1)-A008328(n+1)`
-/

namespace A145337.P14852323097851792559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008329 (n + 1) - A008328 (n + 1)

end

end A145337.P14852323097851792559

noncomputable section

/-- A145337: a(n) = d(p(n)+1) - d(p(n)-1), where d(m) = the number of divisors of m, p(n) = the n-th prime.

Offset 0, canonical program `A145337.P14852323097851792559`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145337 (n : ℕ) : ℤ :=
  A145337.P14852323097851792559.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145337.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A145450.P1966516073320817296

`∩[A033950(n+1), A069067(n+1)]`
-/

namespace A145450.P1966516073320817296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145450.P1966516073320817296

noncomputable section

/-- A145450: Numbers k such that k/A000005(k) is a square.

Offset 1, canonical program `A145450.P1966516073320817296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A145450 (n : ℕ) : ℤ :=
  (A145450.P1966516073320817296.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A145450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145469.P15784535459110344665

`eq[A000005(n+2), A051950(n+4)]+4`
-/

namespace A145469.P15784535459110344665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 4

end

end A145469.P15784535459110344665

noncomputable section

/-- A145469: Positive integers k such that d(k) = d(k-1) + d(k-2), where d(k) is the number of divisors of k.

Offset 1, canonical program `A145469.P15784535459110344665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 876 terms. -/
def A145469 (n : ℕ) : ℤ :=
  (A145469.P15784535459110344665.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 876 terms. -/
def A145469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145769.P7080382248331292416

`∩[A006532(n+1), A036436(n+1)]`
-/

namespace A145769.P7080382248331292416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145769.P7080382248331292416

noncomputable section

/-- A145769: Numbers k such that the number of positive divisors of k and the sum of the positive divisors of k are both square numbers.

Offset 1, canonical program `A145769.P7080382248331292416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 247 terms. -/
def A145769 (n : ℕ) : ℤ :=
  (A145769.P7080382248331292416.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 247 terms. -/
def A145769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145834.P17774255891438695893

`A075255(A002808(n+1))`
-/

namespace A145834.P17774255891438695893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075255 (A002808 (n + 1)).toNat

end

end A145834.P17774255891438695893

noncomputable section

/-- A145834: a(n) = difference between the n-th composite number and the sum of its prime factors with repetition.

Offset 1, canonical program `A145834.P17774255891438695893`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145834 (n : ℕ) : ℤ :=
  A145834.P17774255891438695893.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145834.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A145888.P2166201089829665938

`A136125(∑[char[∑[n]]]²-n)`
-/

namespace A145888.P2166201089829665938
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136125 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A145888.P2166201089829665938

noncomputable section

/-- A145888: Triangle read by rows: T(n,k) is the number of permutations of {1,2,...,n} in which k is the largest entry in the cycle containing 1 (1 <= k <= n).

Offset 1, canonical program `A145888.P2166201089829665938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A145888 (n : ℕ) : ℤ :=
  A145888.P2166201089829665938.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A145888.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A146538.P8666981964067901687

`A007921(n+1)-1`
-/

namespace A146538.P8666981964067901687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1) - 1

end

end A146538.P8666981964067901687

noncomputable section

/-- A146538: Even numbers n such that n+3 is not a prime.

Offset 1, canonical program `A146538.P8666981964067901687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A146538 (n : ℕ) : ℤ :=
  A146538.P8666981964067901687.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A146538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147810.P3662463774335131867

`A147809(n+1)+1`
-/

namespace A147810.P3662463774335131867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147809 (n + 1) + 1

end

end A147810.P3662463774335131867

noncomputable section

/-- A147810: Half the number of divisors of n^2+1.

Offset 1, canonical program `A147810.P3662463774335131867`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A147810 (n : ℕ) : ℤ :=
  A147810.P3662463774335131867.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A147810.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A147846.P1764007228067789796

`C(A093515(n+1), 2)`
-/

namespace A147846.P1764007228067789796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A093515 (n + 1)).toNat 2

end

end A147846.P1764007228067789796

noncomputable section

/-- A147846: Triangular numbers n*(n+1)/2 with n or n+1 prime.

Offset 1, canonical program `A147846.P1764007228067789796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147846 (n : ℕ) : ℤ :=
  (A147846.P1764007228067789796.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151671.P17873054757354392525

`A048883(A215088(n))*A151667(n)`
-/

namespace A151671.P17873054757354392525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 (A215088 n).toNat * A151667 n

end

end A151671.P17873054757354392525

noncomputable section

/-- A151671: G.f.: Product_{k >= 0} (1 + 3*x^(5^k)).

Offset 0, canonical program `A151671.P17873054757354392525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151671 (n : ℕ) : ℤ :=
  A151671.P17873054757354392525.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151948.P4452451718552002337

`A000005(A000203(A000010(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A151948.P4452451718552002337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000203 (A000010 (n + 1)).toNat).toNat

end

end A151948.P4452451718552002337

noncomputable section

/-- A151948: a(n) = tau(sigma(phi(n))).

Offset 1, canonical program `A151948.P4452451718552002337`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(A000203(A000010(n+1)))` (program `A151948.P4452451718552002337`, by `A151948.P4452451718552002337.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A151948 (n : ℕ) : ℤ :=
  A151948.P4452451718552002337.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(A000203(A000010(n+1)))` (program `A151948.P4452451718552002337`, by `A151948.P4452451718552002337.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A151948.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A152086.P7459043147608244788

`A102699(n+2)/2`
-/

namespace A152086.P7459043147608244788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102699 (n + 2) : ℚ) / 2

end

end A152086.P7459043147608244788

noncomputable section

/-- A152086: a(n) = Sum_{k=1..n-1} k*A110971(n,k).

Offset 2, canonical program `A152086.P7459043147608244788`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102699, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152086 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A152086.P7459043147608244788.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102699, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152086.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A152421.P9969378652125199696

`C(A000290(n+1), A006218(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152421.P9969378652125199696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000290 (n + 1)).toNat (A006218 (n + 1)).toNat

end

end A152421.P9969378652125199696

noncomputable section

/-- A152421: a(n) = binomial(A000290(n), A006218(n)).

Offset 1, canonical program `A152421.P9969378652125199696`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(A000290(n+1), A006218(n+1))` (program `A152421.P9969378652125199696`, by `A152421.P9969378652125199696.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A152421 (n : ℕ) : ℤ :=
  (A152421.P9969378652125199696.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(A000290(n+1), A006218(n+1))` (program `A152421.P9969378652125199696`, by `A152421.P9969378652125199696.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A152421.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A152442.P14276229364845082290

`lt[2, A000005(A137926(n+1))]+1`
-/

namespace A152442.P14276229364845082290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A137926 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A152442.P14276229364845082290

noncomputable section

/-- A152442: n is included if the largest divisor of n that is coprime to d(n) is a composite, where d(n) is the number of divisors of n.

Offset 1, canonical program `A152442.P14276229364845082290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A152442 (n : ℕ) : ℤ :=
  (A152442.P14276229364845082290.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A152442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152535.P13397589103669949259

`A046992(A006093(n+1))`
-/

namespace A152535.P13397589103669949259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (A006093 (n + 1)).toNat

end

end A152535.P13397589103669949259

noncomputable section

/-- A152535: a(n) = n*prime(n) - Sum_{i=1..n} prime(i).

Offset 1, canonical program `A152535.P13397589103669949259`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046992, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152535 (n : ℕ) : ℤ :=
  A152535.P13397589103669949259.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046992, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152535.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A152674.P4037238558150557697

`2*A095686(n+1)`
-/

namespace A152674.P4037238558150557697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095686 (n + 1)

end

end A152674.P4037238558150557697

noncomputable section

/-- A152674: Number of divisors of the numbers that are not squares.

Offset 1, canonical program `A152674.P4037238558150557697`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152674 (n : ℕ) : ℤ :=
  A152674.P4037238558150557697.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152674.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A152770.P4996422170920482869

`A000203(n+1)-A062249(n+1)+1`
-/

namespace A152770.P4996422170920482869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A062249 (n + 1) + 1

end

end A152770.P4996422170920482869

noncomputable section

/-- A152770: Sum of proper divisors minus the number of proper divisors of n: a(n) = sigma(n) - n - d(n) + 1.

Offset 1, canonical program `A152770.P4996422170920482869`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152770 (n : ℕ) : ℤ :=
  A152770.P4996422170920482869.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152770.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A152771.P13412887130094788285

`A000203(n+1)-A114003(n+1)`
-/

namespace A152771.P13412887130094788285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A114003 (n + 1)

end

end A152771.P13412887130094788285

noncomputable section

/-- A152771: a(n) = sigma(n) - 2*d(n) + 1.

Offset 1, canonical program `A152771.P13412887130094788285`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152771 (n : ℕ) : ℤ :=
  A152771.P13412887130094788285.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152771.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A152992.P10206136984884417694

`A065608(n+1)-A000720(n+1)`
-/

namespace A152992.P10206136984884417694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (n + 1) - A000720 (n + 1)

end

end A152992.P10206136984884417694

noncomputable section

/-- A152992: a(n) = sigma(n) - d(n) - pi(n).

Offset 1, canonical program `A152992.P10206136984884417694`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152992 (n : ℕ) : ℤ :=
  A152992.P10206136984884417694.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152992.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A153085.P13243709957649807552

`eq[0, A156707(2*(n+1))]`
-/

namespace A153085.P13243709957649807552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156707 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153085.P13243709957649807552

noncomputable section

/-- A153085: Numbers k such that 4*k + 5 is not prime.

Offset 1, canonical program `A153085.P13243709957649807552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153085 (n : ℕ) : ℤ :=
  (A153085.P13243709957649807552.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153088.P14487494430752831304

`A153343(n+1)+1`
-/

namespace A153088.P14487494430752831304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153343 (n + 1) + 1

end

end A153088.P14487494430752831304

noncomputable section

/-- A153088: Numbers k such that 5*k - 1 is not prime.

Offset 1, canonical program `A153088.P14487494430752831304`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153343, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153088 (n : ℕ) : ℤ :=
  A153088.P14487494430752831304.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153343, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153088.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A153141.P2352624869990070463

`A006068(n)+n-A153142(A006068(n))`
-/

namespace A153141.P2352624869990070463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 n + ((n : ℤ) - A153142 (A006068 n).toNat)

end

end A153141.P2352624869990070463

noncomputable section

/-- A153141: Permutation of nonnegative integers: A059893-conjugate of A153151.

Offset 0, canonical program `A153141.P2352624869990070463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A153141 (n : ℕ) : ℤ :=
  A153141.P2352624869990070463.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A153141.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153236.P9988325728927142668

`eq[1, A156707(4*n+1)+1]`
-/

namespace A153236.P9988325728927142668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156707 (4 * n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153236.P9988325728927142668

noncomputable section

/-- A153236: Numbers n such that 8*n + 3 is not prime.

Offset 1, canonical program `A153236.P9988325728927142668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153236 (n : ℕ) : ℤ :=
  (A153236.P9988325728927142668.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153355.P8034231718134944401

`1+A024897(n+1)`
-/

namespace A153355.P8034231718134944401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A024897 (n + 1)

end

end A153355.P8034231718134944401

noncomputable section

/-- A153355: Numbers k such that 5k-1 is a prime.

Offset 1, canonical program `A153355.P8034231718134944401`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024897, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153355 (n : ℕ) : ℤ :=
  A153355.P8034231718134944401.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024897, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153355.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A153369.P10571265008529743106

`∪[A153371(n+1), A153372(n+1)]`
-/

namespace A153369.P10571265008529743106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A153369.P10571265008529743106

noncomputable section

/-- A153369: Number of zig-zag paths from top to bottom of a rectangle of width 11 with n rows whose color is that of the top right corner.

Offset 1, canonical program `A153369.P10571265008529743106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A153369 (n : ℕ) : ℤ :=
  (A153369.P10571265008529743106.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A153369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153661.P2102351254161465420

`(2^(A002808(row(n)+1)-A002808(col(n)+1)))%A002808(row(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A153661.P2102351254161465420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A002808 (SequenceMachineLib.triRow n + 1) - A002808 (SequenceMachineLib.triCol n + 1) : ℤ))) (A002808 (SequenceMachineLib.triRow n + 1))

end

end A153661.P2102351254161465420

noncomputable section

/-- A153661: Triangle read by rows: R(n,k) = 2^(composite(n)-composite(k)) mod composite(n), 1<=k<=n.

Offset 1, canonical program `A153661.P2102351254161465420`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^(A002808(row(n)+1)-A002808(col(n)+1)))%A002808(row(n)+1)` (program `A153661.P2102351254161465420`, by `A153661.P2102351254161465420.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A153661 (n : ℕ) : ℤ :=
  A153661.P2102351254161465420.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^(A002808(row(n)+1)-A002808(col(n)+1)))%A002808(row(n)+1)` (program `A153661.P2102351254161465420`, by `A153661.P2102351254161465420.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A153661.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A153768.P6556551769552871721

`∩[A023232(n+1), A153767(n+1)]`
-/

namespace A153768.P6556551769552871721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153768.P6556551769552871721

noncomputable section

/-- A153768: Numbers n such that n, 8n-9 and 8n+9 are primes.

Offset 1, canonical program `A153768.P6556551769552871721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1567 terms. -/
def A153768 (n : ℕ) : ℤ :=
  (A153768.P6556551769552871721.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1567 terms. -/
def A153768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153788.P4198305978530068517

`A152763(n)-1`
-/

namespace A153788.P4198305978530068517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152763 n - 1

end

end A153788.P4198305978530068517

noncomputable section

/-- A153788: Number of proper divisors of the Catalan number A000108(n).

Offset 0, canonical program `A153788.P4198305978530068517`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153788 (n : ℕ) : ℤ :=
  A153788.P4198305978530068517.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153788.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A153816.P9630201049829707410

`A006218(A002275(n+1))`
-/

namespace A153816.P9630201049829707410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A002275 (n + 1)).toNat

end

end A153816.P9630201049829707410

noncomputable section

/-- A153816: a(n) = Sum_{i=1..(10^n-1)/9} floor(((10^n-1)/9)/i).

Offset 1, canonical program `A153816.P9630201049829707410`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153816 (n : ℕ) : ℤ :=
  A153816.P9630201049829707410.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153816.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A153823.P12958428199370976494

`A027423(n)-1`
-/

namespace A153823.P12958428199370976494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027423 n - 1

end

end A153823.P12958428199370976494

noncomputable section

/-- A153823: Number of proper divisors of n!.

Offset 0, canonical program `A153823.P12958428199370976494`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153823 (n : ℕ) : ℤ :=
  A153823.P12958428199370976494.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153823.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A153860.P3106289355422847430

`Δ[A103451(n)]^A025581(n)`
-/

namespace A153860.P3106289355422847430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A025581 n : ℤ)

end

end A153860.P3106289355422847430

noncomputable section

/-- A153860: Triangle by columns: leftmost column = (1, 0, 1, -1, 1, -1, 1, ...); columns >1 = (1, 1, 0, 0, 0, ...).

Offset 1, canonical program `A153860.P3106289355422847430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A153860 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A153860.P3106289355422847430.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A153860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153880.P3482003210963129646

`∑[A073575(n+1)]-A073575(n+1)+n`
-/

namespace A153880.P3482003210963129646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A073575 (n + 1) + (n : ℤ)

end

end A153880.P3482003210963129646

noncomputable section

/-- A153880: Shift factorial base representation left by one digit.

Offset 0, canonical program `A153880.P3482003210963129646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153880 (n : ℕ) : ℤ :=
  A153880.P3482003210963129646.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154325.P12734525068056189664

`2-A103451(n)`
-/

namespace A154325.P12734525068056189664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A103451 n

end

end A154325.P12734525068056189664

noncomputable section

/-- A154325: Triangle with interior all 2's and borders 1.

Offset 0, canonical program `A154325.P12734525068056189664`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A103451, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A154325 (n : ℕ) : ℤ :=
  A154325.P12734525068056189664.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A103451, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A154325.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A154337.P2678158000755905541

`2*A060187(n+1)-A154334(n)`
-/

namespace A154337.P2678158000755905541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060187 (n + 1) - A154334 n

end

end A154337.P2678158000755905541

noncomputable section

/-- A154337: A triangular sequence of coefficients of polynomials: p(x,n)=(3*(x - 1)^(n)*Sum[(((-1)^(n)*(2*k + 1)^(n - 1)))*x^k, {k,0, Infinity}] -(x - 1)^(n + 1)*Sum[((-1)^(n + 1)*k^n)*x^k, {k, 0, Infinity}]/x)/2.

Offset 0, canonical program `A154337.P2678158000755905541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A154337 (n : ℕ) : ℤ :=
  A154337.P2678158000755905541.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A154337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154384.P17645461441156692423

`filter[A014076(n+1), A179081(#)]`
-/

namespace A154384.P17645461441156692423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179081 (f1 j).toNat = 1) n)

end

end A154384.P17645461441156692423

noncomputable section

/-- A154384: Odd nonprimes with odd sum of digits.

Offset 1, canonical program `A154384.P17645461441156692423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A154384 (n : ℕ) : ℤ :=
  A154384.P17645461441156692423.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A154384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154435.P12739002809181514319

`A006068(A154436(A006068(n)))`
-/

namespace A154435.P12739002809181514319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A154436 (A006068 n).toNat).toNat

end

end A154435.P12739002809181514319

noncomputable section

/-- A154435: Permutation of nonnegative integers induced by Lamplighter group generating wreath recursion, variant 3: a = s(b,a), b = (a,b), starting from the state a.

Offset 0, canonical program `A154435.P12739002809181514319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A154435 (n : ℕ) : ℤ :=
  A154435.P12739002809181514319.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A154435.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155043.P15229404394103528317

`1+a(A049820(n))` with `a(0)=0, a(1)=1`
-/

namespace A155043.P15229404394103528317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a (A049820 n).toNat

end

end A155043.P15229404394103528317

noncomputable section

/-- A155043: a(0)=0; for n >= 1, a(n) = 1 + a(n-d(n)), where d(n) is the number of divisors of n (A000005).

Offset 0, canonical program `A155043.P15229404394103528317`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A155043 (n : ℕ) : ℤ :=
  (A155043.P15229404394103528317.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A155043.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A155133.P16298633087751083546

`eq[1, A147809(5*n+2)]`
-/

namespace A155133.P16298633087751083546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147809 (5 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155133.P16298633087751083546

noncomputable section

/-- A155133: Numbers k >= 0 such that 5k^2+4k+1 is prime.

Offset 1, canonical program `A155133.P16298633087751083546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 264 terms. -/
def A155133 (n : ℕ) : ℤ :=
  (A155133.P16298633087751083546.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 264 terms. -/
def A155133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155504.P17301175292286522036

`3*A026225(n+1)`
-/

namespace A155504.P17301175292286522036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A026225 (n + 1)

end

end A155504.P17301175292286522036

noncomputable section

/-- A155504: Numbers of the form (3h+1)*3^(k+1) listed in increasing order.

Offset 1, canonical program `A155504.P17301175292286522036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155504 (n : ℕ) : ℤ :=
  A155504.P17301175292286522036.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155504.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155516.P17990118231390158911

`A001263(A185868(n+1))`
-/

namespace A155516.P17990118231390158911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A185868 (n + 1)).toNat

end

end A155516.P17990118231390158911

noncomputable section

/-- A155516: Triangle T(n, k) = binomial(2*n, 2*k)*binomial(2*n+1, 2*k+1)/(2*n-2*k+1), read by rows.

Offset 0, canonical program `A155516.P17990118231390158911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. -/
def A155516 (n : ℕ) : ℤ :=
  A155516.P17990118231390158911.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. -/
def A155516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156659.P9694102179594452160

`A156660(A057979(n))`
-/

namespace A156659.P9694102179594452160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156660 (A057979 n).toNat

end

end A156659.P9694102179594452160

noncomputable section

/-- A156659: Characteristic function of safe primes.

Offset 0, canonical program `A156659.P9694102179594452160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156659 (n : ℕ) : ℤ :=
  A156659.P9694102179594452160.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156745.P4004578976620637230

`n+1+A006218(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A156745.P4004578976620637230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A006218 (n + 1)

end

end A156745.P4004578976620637230

noncomputable section

/-- A156745: a(n) = Sum_{k=1..n} floor((n+k)/k) = n + Sum_{k=1..n} sigma_0(k), where sigma_0(k) is A000005(k). Also a(n) = n + A006218(n).

Offset 1, canonical program `A156745.P4004578976620637230`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+A006218(n+1)` (program `A156745.P4004578976620637230`, by `A156745.P4004578976620637230.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A156745 (n : ℕ) : ℤ :=
  A156745.P4004578976620637230.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+A006218(n+1)` (program `A156745.P4004578976620637230`, by `A156745.P4004578976620637230.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A156745.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A156756.P14913388442259504804

`p?[lcm(n, A088705(A003132(n)))]`
-/

namespace A156756.P14913388442259504804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A088705 (A003132 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A156756.P14913388442259504804

noncomputable section

/-- A156756: Primes not containing exactly two odd digits.

Offset 1, canonical program `A156756.P14913388442259504804`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 778 terms. -/
def A156756 (n : ℕ) : ℤ :=
  (A156756.P14913388442259504804.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 778 terms. -/
def A156756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157224.P6199870463600327874

`(A001615(n+1)-A000089(n+1))/2`
-/

namespace A157224.P6199870463600327874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) - A000089 (n + 1) : ℚ) / 2

end

end A157224.P6199870463600327874

noncomputable section

/-- A157224: Number of primitive inequivalent (up to Pi/2 rotation) nonsquare sublattices of square lattice of index n.

Offset 1, canonical program `A157224.P6199870463600327874`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000089, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A157224 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A157224.P6199870463600327874.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000089, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A157224.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A157228.P6044199204996125931

`(A000089(n+1)-A019590(n+1))/2`
-/

namespace A157228.P6044199204996125931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000089 (n + 1) - A019590 (n + 1) : ℚ) / 2

end

end A157228.P6044199204996125931

noncomputable section

/-- A157228: Number of primitive inequivalent inclined square sublattices of square lattice of index n.

Offset 1, canonical program `A157228.P6044199204996125931`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000089, A019590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A157228 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A157228.P6044199204996125931.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000089, A019590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A157228.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A157672.P13298075479636358401

`A027423(n+2)/2-1`
-/

namespace A157672.P13298075479636358401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027423 (n + 2) : ℚ) / 2 - 1

end

end A157672.P13298075479636358401

noncomputable section

/-- A157672: Number of unordered factorizations of n! into two distinct proper factors.

Offset 2, canonical program `A157672.P13298075479636358401`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A157672 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A157672.P13298075479636358401.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A157672.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A157898.P17830117301384184696

`A046854(n)*A166692(n)`
-/

namespace A157898.P17830117301384184696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 n * A166692 n

end

end A157898.P17830117301384184696

noncomputable section

/-- A157898: Triangle read by rows: inverse binomial transform of A059576.

Offset 0, canonical program `A157898.P17830117301384184696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A157898 (n : ℕ) : ℤ :=
  A157898.P17830117301384184696.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A157898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158018.P3768148225298653912

`12*A075704(n)+1`
-/

namespace A158018.P3768148225298653912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A075704 n + 1

end

end A158018.P3768148225298653912

noncomputable section

/-- A158018: Primes p such that (p - 1)/12 is also prime.

Offset 1, canonical program `A158018.P3768148225298653912`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A075704, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158018 (n : ℕ) : ℤ :=
  A158018.P3768148225298653912.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A075704, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158018.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A158299.P14078010460539491531

`A001157(n+1)/gcd(A001157(n+1), A062011(n+1))`
-/

namespace A158299.P14078010460539491531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (n + 1) : ℚ) / (Int.gcd (A001157 (n + 1)) (A062011 (n + 1)) : ℚ)

end

end A158299.P14078010460539491531

noncomputable section

/-- A158299: Numerators of averages of squares of the divisors of n.

Offset 1, canonical program `A158299.P14078010460539491531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158299 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A158299.P14078010460539491531.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158474.P4356683303186768697

`A135950(∑[2*n]%comp[∑[n]])`
-/

namespace A158474.P4356683303186768697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135950 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A158474.P4356683303186768697

noncomputable section

/-- A158474: Triangle read by rows generated from (x-1)*(x-2)*(x-4)*...

Offset 0, canonical program `A158474.P4356683303186768697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 378 terms. -/
def A158474 (n : ℕ) : ℤ :=
  A158474.P4356683303186768697.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 378 terms. -/
def A158474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158635.P13253286712983529006

`6*(n+1)-A008578(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A158635.P13253286712983529006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (n + 1) : ℤ) - A008578 (n + 1)

end

end A158635.P13253286712983529006

noncomputable section

/-- A158635: 6n - A008578(n).

Offset 1, canonical program `A158635.P13253286712983529006`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*(n+1)-A008578(n+1)` (program `A158635.P13253286712983529006`, by `A158635.P13253286712983529006.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A158635 (n : ℕ) : ℤ :=
  A158635.P13253286712983529006.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*(n+1)-A008578(n+1)` (program `A158635.P13253286712983529006`, by `A158635.P13253286712983529006.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A158635.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A158901.P2411227311583190290

`1+A065608(n+1)`
-/

namespace A158901.P2411227311583190290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A065608 (n + 1)

end

end A158901.P2411227311583190290

noncomputable section

/-- A158901: A051731 * (1, 1, 2, 3, 4, 5, ...).

Offset 1, canonical program `A158901.P2411227311583190290`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158901 (n : ℕ) : ℤ :=
  A158901.P2411227311583190290.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158901.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A158924.P17124388727537864408

`Δ[A158925(A000007(n)+n)]`
-/

namespace A158924.P17124388727537864408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158925 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158924.P17124388727537864408

noncomputable section

/-- A158924: Number of prime powers - 1 in interval (A158923(n-1), A158923(n)] expressing the excess or deficit relative to the asymptotic average of 1.

Offset 1, canonical program `A158924.P17124388727537864408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9696 terms. -/
def A158924 (n : ℕ) : ℤ :=
  A158924.P17124388727537864408.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9696 terms. -/
def A158924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160262.P16896969970684579007

`A138114(A324600(n+2))`
-/

namespace A160262.P16896969970684579007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138114 (A324600 (n + 2)).toNat

end

end A160262.P16896969970684579007

noncomputable section

/-- A160262: a(n)=c-th digit of A000796(n) where c=n-th composite.

Offset 1, canonical program `A160262.P16896969970684579007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A160262 (n : ℕ) : ℤ :=
  A160262.P16896969970684579007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A160262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160337.P9545662688461462744

`∩[A008578(n+1), A202267(n+1)]`
-/

namespace A160337.P9545662688461462744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160337.P9545662688461462744

noncomputable section

/-- A160337: 1 plus primes using only digits {0, 1, 2, 3, 5, 7}.

Offset 1, canonical program `A160337.P9545662688461462744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1088 terms. -/
def A160337 (n : ℕ) : ℤ :=
  (A160337.P9545662688461462744.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1088 terms. -/
def A160337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160380.P9836000862584830959

`A139352(A334076(n))`
-/

namespace A160380.P9836000862584830959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A334076 n).toNat

end

end A160380.P9836000862584830959

noncomputable section

/-- A160380: a(0) = 0; for n >= 1, a(n) = number of 0's in base-4 representation of n.

Offset 0, canonical program `A160380.P9836000862584830959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160380 (n : ℕ) : ℤ :=
  A160380.P9836000862584830959.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160811.P17665539378844618350

`round(∑[9/∑[A207605(n+1)]]/2+n)`
-/

namespace A160811.P17665539378844618350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207605 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  9 / ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j) / 2 + (n : ℚ))

end

end A160811.P17665539378844618350

noncomputable section

/-- A160811: Numbers not dividing 24.

Offset 1, canonical program `A160811.P17665539378844618350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160811 (n : ℕ) : ℤ :=
  A160811.P17665539378844618350.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160811.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105425.P7820754552257510039

`eq[A101663(n), A286052(n+1)]`
-/

namespace A105425.P7820754552257510039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101663 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286052 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A105425.P7820754552257510039

noncomputable section

/-- A105425: Interpret A105424 as a binary sequence and convert to decimal.

Offset 0, canonical program `A105425.P7820754552257510039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 721 terms. -/
def A105425 (n : ℕ) : ℤ :=
  (A105425.P7820754552257510039.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 721 terms. -/
def A105425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106118.P5269121123413051575

`p?[A136399(n+1)]`
-/

namespace A106118.P5269121123413051575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106118.P5269121123413051575

noncomputable section

/-- A106118: Primes with maximal digit > 1.

Offset 1, canonical program `A106118.P5269121123413051575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A106118 (n : ℕ) : ℤ :=
  A106118.P5269121123413051575.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A106118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110240.P11302623122308525512

`A269160(a(n-1))` with `a(0)=1`
-/

namespace A110240.P11302623122308525512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269160 (a (n - 1)).toNat

end

end A110240.P11302623122308525512

noncomputable section

/-- A110240: Decimal form of binary integer produced by the ON cells at n-th generation following Wolfram's Rule 30 cellular automaton starting from a single ON-cell represented as 1.

Offset 0, canonical program `A110240.P11302623122308525512`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269160, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A110240 (n : ℕ) : ℤ :=
  A110240.P11302623122308525512.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269160, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A110240.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A113428.P12735616040462337458

`A113429(9*n)`
-/

namespace A113428.P12735616040462337458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113429 (9 * n)

end

end A113428.P12735616040462337458

noncomputable section

/-- A113428: Expansion of f(-x^2, -x^3) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A113428.P12735616040462337458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1112 terms. -/
def A113428 (n : ℕ) : ℤ :=
  A113428.P12735616040462337458.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1112 terms. -/
def A113428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114439.P10768737933069284621

`eq[4, A276678(n+1)]+1`
-/

namespace A114439.P10768737933069284621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276678 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114439.P10768737933069284621

noncomputable section

/-- A114439: Indices of semiprime pentagonal numbers.

Offset 1, canonical program `A114439.P10768737933069284621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. -/
def A114439 (n : ℕ) : ℤ :=
  (A114439.P10768737933069284621.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. -/
def A114439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114517.P2047956437619684237

`eq[4, A276680(n+1)]+1`
-/

namespace A114517.P2047956437619684237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276680 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114517.P2047956437619684237

noncomputable section

/-- A114517: Numbers k such that the k-th heptagonal number is semiprime.

Offset 1, canonical program `A114517.P2047956437619684237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A114517 (n : ℕ) : ℤ :=
  (A114517.P2047956437619684237.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A114517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115000.P14466011705002378707

`Δ[A115001(n+4)]`
-/

namespace A115000.P14466011705002378707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115001 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115000.P14466011705002378707

noncomputable section

/-- A115000: a(n) = J_2(n) / 24.

Offset 5, canonical program `A115000.P14466011705002378707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A115000 (n : ℕ) : ℤ :=
  A115000.P14466011705002378707.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A115000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115079.P7940789343860326763

`A100995(A137734(A126988(n+1)²))`
-/

namespace A115079.P7940789343860326763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (A137734 (A126988 (n + 1) ^ 2).toNat).toNat

end

end A115079.P7940789343860326763

noncomputable section

/-- A115079: Matrix log of triangle A051731, where nonzero elements in the matrix log are all unit fractions and represented here by the denominators, with zero elements remaining zero.

Offset 1, canonical program `A115079.P7940789343860326763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A115079 (n : ℕ) : ℤ :=
  A115079.P7940789343860326763.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A115079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117307.P10752850070173381648

`eq[1, A289356(A000010(n+1))]+1`
-/

namespace A117307.P10752850070173381648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289356 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A117307.P10752850070173381648

noncomputable section

/-- A117307: Numbers for which (phi(n))^2+phi(n)+1 is a prime number.

Offset 1, canonical program `A117307.P10752850070173381648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1742 terms. -/
def A117307 (n : ℕ) : ℤ :=
  (A117307.P10752850070173381648.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1742 terms. -/
def A117307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121022.P12101257241342669327

`∩[2*n, A011532(n+1)]`
-/

namespace A121022.P12101257241342669327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121022.P12101257241342669327

noncomputable section

/-- A121022: Even numbers containing a 2 in their decimal representation.

Offset 1, canonical program `A121022.P12101257241342669327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5729 terms. -/
def A121022 (n : ℕ) : ℤ :=
  (A121022.P12101257241342669327.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5729 terms. -/
def A121022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123966.P2934336962651361883

`A124029(A028310(n))`
-/

namespace A123966.P2934336962651361883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124029 (A028310 n).toNat

end

end A123966.P2934336962651361883

noncomputable section

/-- A123966: Triangle A124029 with the (0,0) entry replaced by 4.

Offset 0, canonical program `A123966.P2934336962651361883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123966 (n : ℕ) : ℤ :=
  A123966.P2934336962651361883.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125911.P3841651622429786425

`A007955(n+1)/A136655(n+1)`
-/

namespace A125911.P3841651622429786425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A136655 (n + 1) : ℚ)

end

end A125911.P3841651622429786425

noncomputable section

/-- A125911: Product of the even divisors of n.

Offset 1, canonical program `A125911.P3841651622429786425`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A136655, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125911 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A125911.P3841651622429786425.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A136655, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125911.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A127674.P15909156756878056270

`A008310(A061885(n))`
-/

namespace A127674.P15909156756878056270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008310 (A061885 n).toNat

end

end A127674.P15909156756878056270

noncomputable section

/-- A127674: Coefficient table for Chebyshev polynomials T(2*n,x) (increasing even powers x, without zeros).

Offset 0, canonical program `A127674.P15909156756878056270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A127674 (n : ℕ) : ℤ :=
  A127674.P15909156756878056270.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A127674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127795.P18243367526818959236

`A013597(3*n)`
-/

namespace A127795.P18243367526818959236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013597 (3 * n)

end

end A127795.P18243367526818959236

noncomputable section

/-- A127795: Nextprime(8^n)-8^n.

Offset 0, canonical program `A127795.P18243367526818959236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 293 terms. -/
def A127795 (n : ℕ) : ℤ :=
  A127795.P18243367526818959236.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 293 terms. -/
def A127795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128830.P9449490363820853623

`A000005(A137926(n+1))`
-/

namespace A128830.P9449490363820853623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A137926 (n + 1)).toNat

end

end A128830.P9449490363820853623

noncomputable section

/-- A128830: a(n) = the number of positive divisors of n which are coprime to d(n), where d(n) = the number of positive divisors of n.

Offset 1, canonical program `A128830.P9449490363820853623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A128830 (n : ℕ) : ℤ :=
  A128830.P9449490363820853623.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A128830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130298.P4056533622046080156

`A130302(n+1)+A003056(n)*A130296(n+1)`
-/

namespace A130298.P4056533622046080156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130302 (n + 1) + A003056 n * A130296 (n + 1)

end

end A130298.P4056533622046080156

noncomputable section

/-- A130298: A051340 * A130296.

Offset 1, canonical program `A130298.P4056533622046080156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130298 (n : ℕ) : ℤ :=
  A130298.P4056533622046080156.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136011.P92647182053313749

`A008277(A056536(n+1))`
-/

namespace A136011.P92647182053313749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (A056536 (n + 1)).toNat

end

end A136011.P92647182053313749

noncomputable section

/-- A136011: Irregular triangle read by rows, Stirling numbers of the second kind: columns shifted to allow (1, 1, 2, 2, 3, 3, ...) terms per row.

Offset 1, canonical program `A136011.P92647182053313749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2070 terms. -/
def A136011 (n : ℕ) : ℤ :=
  A136011.P92647182053313749.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2070 terms. -/
def A136011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138060.P12656689642850593216

`A138297(n+5)`
-/

namespace A138060.P12656689642850593216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138297 (n + 5)

end

end A138060.P12656689642850593216

noncomputable section

/-- A138060: Triangle read by rows: row 1 = {1}; for n>1, row n is obtained from row n-1 by applying the morphism 1->1,2; 2->3; 3->4; 4->1.

Offset 1, canonical program `A138060.P12656689642850593216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A138060 (n : ℕ) : ℤ :=
  A138060.P12656689642850593216.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A138060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139506.P10279142655047582873

`∩[A033199(n+1), A139645(n+1)]`
-/

namespace A139506.P10279142655047582873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139506.P10279142655047582873

noncomputable section

/-- A139506: Primes of the form x^2 + 26x*y + y^2 for x and y nonnegative.

Offset 1, canonical program `A139506.P10279142655047582873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2484 terms. -/
def A139506 (n : ℕ) : ℤ :=
  (A139506.P10279142655047582873.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2484 terms. -/
def A139506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139838.P3434102411428568911

`∩[A007521(n+1), A141777(n+1)]`
-/

namespace A139838.P3434102411428568911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139838.P3434102411428568911

noncomputable section

/-- A139838: Primes of the form 8x^2+8xy+13y^2.

Offset 1, canonical program `A139838.P3434102411428568911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5012 terms. -/
def A139838 (n : ℕ) : ℤ :=
  (A139838.P3434102411428568911.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5012 terms. -/
def A139838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139928.P7798437498282057437

`∩[A106859(n+1), A141777(n+1)]`
-/

namespace A139928.P7798437498282057437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139928.P7798437498282057437

noncomputable section

/-- A139928: Primes of the form 2x^2+165y^2.

Offset 1, canonical program `A139928.P7798437498282057437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2502 terms. -/
def A139928 (n : ℕ) : ℤ :=
  (A139928.P7798437498282057437.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2502 terms. -/
def A139928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140037.P5522360126373441203

`∩[A139827(n+1), A140616(n+1)]`
-/

namespace A140037.P5522360126373441203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140037.P5522360126373441203

noncomputable section

/-- A140037: Primes of the form 24x^2+77y^2.

Offset 1, canonical program `A140037.P5522360126373441203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2492 terms. -/
def A140037 (n : ℕ) : ℤ :=
  (A140037.P5522360126373441203.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2492 terms. -/
def A140037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142082.P11234807902744466555

`A030433(eq[2, A030433(n+1)%7]+1)`
-/

namespace A142082.P11234807902744466555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030433 (n + 1)) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A142082.P11234807902744466555

noncomputable section

/-- A142082: Primes congruent to 9 mod 35.

Offset 1, canonical program `A142082.P11234807902744466555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8339 terms. -/
def A142082 (n : ℕ) : ℤ :=
  A142082.P11234807902744466555.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8339 terms. -/
def A142082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142095.P14741884496573611207

`A030433(eq[1, A030433(n+1)%7]+1)`
-/

namespace A142095.P14741884496573611207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030433 (n + 1)) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A142095.P14741884496573611207

noncomputable section

/-- A142095: Primes congruent to 29 mod 35.

Offset 1, canonical program `A142095.P14741884496573611207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8316 terms. -/
def A142095 (n : ℕ) : ℤ :=
  A142095.P14741884496573611207.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8316 terms. -/
def A142095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142992.P6139702825425951330

`A101603(A245300(n)+A114327(n))`
-/

namespace A142992.P6139702825425951330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101603 (A245300 n + A114327 n).toNat

end

end A142992.P6139702825425951330

noncomputable section

/-- A142992: Square array, read by ascending antidiagonals, of the crystal ball sequences for the root lattices of type C_n.

Offset 0, canonical program `A142992.P6139702825425951330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2626 terms. -/
def A142992 (n : ℕ) : ℤ :=
  A142992.P6139702825425951330.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2626 terms. -/
def A142992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143834.P16629953198605059220

`comp[A066049(n+1)-1]+1`
-/

namespace A143834.P16629953198605059220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066049 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A143834.P16629953198605059220

noncomputable section

/-- A143834: Numbers k such that 2k^2 - 1 is not prime.

Offset 1, canonical program `A143834.P16629953198605059220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143834 (n : ℕ) : ℤ :=
  (A143834.P16629953198605059220.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153477.P5045853048162138776

`floor(p?[2*A164042(n+1)+1]/2)`
-/

namespace A153477.P5045853048162138776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164042 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌋

end

end A153477.P5045853048162138776

noncomputable section

/-- A153477: Primes p such that 2p+1 and 2p^2+4p+1 are also prime.

Offset 1, canonical program `A153477.P5045853048162138776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A153477 (n : ℕ) : ℤ :=
  A153477.P5045853048162138776.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A153477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154689.P8500291516967621561

`eq[1, char[A062249(A175304(n+1))]]`
-/

namespace A154689.P8500291516967621561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062249 (A175304 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154689.P8500291516967621561

noncomputable section

/-- A154689: Numbers n such that sigma_0(n-sigma_0(n))= sigma_0(n).

Offset 1, canonical program `A154689.P8500291516967621561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 957 terms. -/
def A154689 (n : ℕ) : ℤ :=
  (A154689.P8500291516967621561.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 957 terms. -/
def A154689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154948.P16040335656581871554

`(A101603(A014132(n+1))+A101603(n))/2`
-/

namespace A154948.P16040335656581871554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101603 (A014132 (n + 1)).toNat + A101603 n : ℚ) / 2

end

end A154948.P16040335656581871554

noncomputable section

/-- A154948: Riordan array ((1+x)/(1-x^2)^2, x(1+x)/(1-x)).

Offset 0, canonical program `A154948.P16040335656581871554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A154948 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A154948.P16040335656581871554.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A154948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159961.P2276132974852648584

`A003215(lt[1, A350090(n)])`
-/

namespace A159961.P2276132974852648584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A159961.P2276132974852648584

noncomputable section

/-- A159961: Cuban composites: composite numbers equal to the difference of two consecutive cubes.

Offset 1, canonical program `A159961.P2276132974852648584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8035 terms. -/
def A159961 (n : ℕ) : ℤ :=
  A159961.P2276132974852648584.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8035 terms. -/
def A159961.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160051.P932503710892421624

`a(n-A171899(n+1))+2` with `a(0)=1, a(1)=0`
-/

namespace A160051.P932503710892421624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a ((n : ℤ) - A171899 (n + 1)).toNat + 2

end

end A160051.P932503710892421624

noncomputable section

/-- A160051: Lodumo_2 of Kolakoski sequence (A000002).

Offset 0, canonical program `A160051.P932503710892421624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A160051 (n : ℕ) : ℤ :=
  (A160051.P932503710892421624.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A160051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106102.P3375998700621158916

`p?[A084373(n+1)]`
-/

namespace A106102.P3375998700621158916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106102.P3375998700621158916

noncomputable section

/-- A106102: Primes with smallest digit 2.

Offset 1, canonical program `A106102.P3375998700621158916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6541 terms. -/
def A106102 (n : ℕ) : ℤ :=
  A106102.P3375998700621158916.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6541 terms. -/
def A106102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108622.P357414125879417223

`A102669(A054899(n+1))+A055640(n+1)`
-/

namespace A108622.P357414125879417223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A054899 (n + 1)).toNat + A055640 (n + 1)

end

end A108622.P357414125879417223

noncomputable section

/-- A108622: Number of numerals to represent n in a base b multiplicative grouping numeral system where b=10.

Offset 1, canonical program `A108622.P357414125879417223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A108622 (n : ℕ) : ℤ :=
  A108622.P357414125879417223.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A108622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109196.P10916885654328462370

`1/2*A109194(n+2)`
-/

namespace A109196.P10916885654328462370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A109194 (n + 2) : ℚ)

end

end A109196.P10916885654328462370

noncomputable section

/-- A109196: Number of returns to the x-axis from above (i.e., d steps hitting the x-axis) in all Grand Motzkin paths of length n.

Offset 2, canonical program `A109196.P10916885654328462370`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A109194, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109196 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A109196.P10916885654328462370.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A109194, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109196.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A112298.P13991926760380096719

`A010684(n)*A093829(n+1)`
-/

namespace A112298.P13991926760380096719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A093829 (n + 1)

end

end A112298.P13991926760380096719

noncomputable section

/-- A112298: Expansion of (a(q) - 3*a(q^2) + 2*a(q^4)) / 6 in powers of q where a() is a cubic AGM theta function.

Offset 1, canonical program `A112298.P13991926760380096719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112298 (n : ℕ) : ℤ :=
  A112298.P13991926760380096719.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113447.P16347397577668592874

`(-1)^n*A093829(n+1)`
-/

namespace A113447.P16347397577668592874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A093829 (n + 1)

end

end A113447.P16347397577668592874

noncomputable section

/-- A113447: Expansion of i * theta_2(i * q^3)^3 / (4 * theta_2(i * q)) in powers of q^2.

Offset 1, canonical program `A113447.P16347397577668592874`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093829, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113447 (n : ℕ) : ℤ :=
  A113447.P16347397577668592874.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093829, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113447.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115979.P10695303619460681874

`(-1)^n*A096936(n+1)`
-/

namespace A115979.P10695303619460681874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A096936 (n + 1)

end

end A115979.P10695303619460681874

noncomputable section

/-- A115979: Expansion of (1 - theta_4(q)*theta_4(q^3))/2 in powers of q.

Offset 1, canonical program `A115979.P10695303619460681874`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096936, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115979 (n : ℕ) : ℤ :=
  A115979.P10695303619460681874.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096936, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115979.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A117204.P11529383568635817474

`(A117203(n+1)-1)/2`
-/

namespace A117204.P11529383568635817474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117203 (n + 1) - 1 : ℚ) / 2

end

end A117204.P11529383568635817474

noncomputable section

/-- A117204: Squarefree positive integers k such that 2*k+1 is also squarefree.

Offset 1, canonical program `A117204.P11529383568635817474`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117203, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117204 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A117204.P11529383568635817474.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117203, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117204.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A117206.P17758905267963498377

`(A117205(n+1)+1)/2`
-/

namespace A117206.P17758905267963498377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117205 (n + 1) + 1 : ℚ) / 2

end

end A117206.P17758905267963498377

noncomputable section

/-- A117206: Squarefree positive integers k such that 2*k-1 is also squarefree.

Offset 1, canonical program `A117206.P17758905267963498377`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117205, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117206 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A117206.P17758905267963498377.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117205, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117206.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A118728.P17722591334986593474

`A067535(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A118728.P17722591334986593474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A067535 (a (n - 1) + a (n - 2)).toNat

end

end A118728.P17722591334986593474

noncomputable section

/-- A118728: a(n) = smallest squarefree number not less than a(n-1)+a(n-2), a(1)=1, a(0)=0.

Offset 0, canonical program `A118728.P17722591334986593474`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067535, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118728 (n : ℕ) : ℤ :=
  A118728.P17722591334986593474.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067535, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118728.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A122180.P2062228255680378258

`A088434(n+1)-A001281(A200213(n+1))`
-/

namespace A122180.P2062228255680378258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088434 (n + 1) - A001281 (A200213 (n + 1)).toNat

end

end A122180.P2062228255680378258

noncomputable section

/-- A122180: Number of ways to write n as n = x*y*z with 1 < x < y < z < n.

Offset 1, canonical program `A122180.P2062228255680378258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122180 (n : ℕ) : ℤ :=
  A122180.P2062228255680378258.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123884.P10243261106257034172

`A093829(12*n+1)`
-/

namespace A123884.P10243261106257034172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093829 (12 * n + 1)

end

end A123884.P10243261106257034172

noncomputable section

/-- A123884: Expansion of phi(x) * phi(-x^6) / chi(-x^2) in powers of x where phi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A123884.P10243261106257034172`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093829, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123884 (n : ℕ) : ℤ :=
  A123884.P10243261106257034172.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093829, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123884.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A125131.P2814879206416894113

`∏{d}[n+1, 1-A120007(#)]`
-/

namespace A125131.P2814879206416894113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (1 - A120007 d)

end

end A125131.P2814879206416894113

noncomputable section

/-- A125131: Product 1-p, where p ranges over the prime factors of n with multiplicity.

Offset 1, canonical program `A125131.P2814879206416894113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125131 (n : ℕ) : ℤ :=
  A125131.P2814879206416894113.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127246.P14720288942938943665

`A127245(n)+2*A010060(n)`
-/

namespace A127246.P14720288942938943665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127245 n + 2 * A010060 n

end

end A127246.P14720288942938943665

noncomputable section

/-- A127246: Row sums of a Thue-Morse related triangle.

Offset 0, canonical program `A127246.P14720288942938943665`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127245, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127246 (n : ℕ) : ℤ :=
  A127246.P14720288942938943665.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127245, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127246.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129402.P17023160629255680060

`A000377(2*n+1)`
-/

namespace A129402.P17023160629255680060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 (2 * n + 1)

end

end A129402.P17023160629255680060

noncomputable section

/-- A129402: Expansion of phi(x^3) * psi(x^4) + x * phi(x) * psi(x^12) in powers of x where phi(), psi() are Ramanujan theta functions.

Offset 0, canonical program `A129402.P17023160629255680060`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000377, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129402 (n : ℕ) : ℤ :=
  A129402.P17023160629255680060.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000377, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129402.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129576.P4189880678848016889

`A096936(3*n+1)`
-/

namespace A129576.P4189880678848016889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096936 (3 * n + 1)

end

end A129576.P4189880678848016889

noncomputable section

/-- A129576: Expansion of phi(x) * chi(x) * psi(-x^3) in powers of x where phi(), chi(), psi() are Ramanujan theta functions.

Offset 0, canonical program `A129576.P4189880678848016889`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096936, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129576 (n : ℕ) : ℤ :=
  A129576.P4189880678848016889.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096936, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129576.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A134177.P1657438557999953617

`(-1)^n*A128580(n)`
-/

namespace A134177.P1657438557999953617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A128580 n

end

end A134177.P1657438557999953617

noncomputable section

/-- A134177: Expansion of phi(-x^3) * psi(x^4) + x * phi(-x) * psi(x^12) in powers of x where phi(), psi() are Ramanujan theta functions.

Offset 0, canonical program `A134177.P1657438557999953617`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A128580, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134177 (n : ℕ) : ℤ :=
  A134177.P1657438557999953617.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A128580, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134177.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A143434.P6883462976824196880

`(-1)^n*A143433(n)`
-/

namespace A143434.P6883462976824196880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A143433 n

end

end A143434.P6883462976824196880

noncomputable section

/-- A143434: Expansion of f(x, -x^3) in powers of x where f(,) is Ramanujan's two-variable theta function.

Offset 0, canonical program `A143434.P6883462976824196880`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143433, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143434 (n : ℕ) : ℤ :=
  A143434.P6883462976824196880.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143433, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143434.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A144486.P13073146412438038976

`A000217(A045920(n+2))`
-/

namespace A144486.P13073146412438038976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A045920 (n + 2)).toNat

end

end A144486.P13073146412438038976

noncomputable section

/-- A144486: Triangular numbers n*(n+1)/2 with n and n+1 composite, where number of prime factors in n = number of prime factors in n+1. (Prime factors are counted with multiplicity.)

Offset 1, canonical program `A144486.P13073146412438038976`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045920, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A144486 (n : ℕ) : ℤ :=
  A144486.P13073146412438038976.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045920, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A144486.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A147806.P12689677907134375891

`∑[A193432(n+1)/2-1]`
-/

namespace A147806.P12689677907134375891
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193432 (n + 1) : ℚ) / 2 - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147806.P12689677907134375891

noncomputable section

/-- A147806: Partial sums of A147809(n) = tau(n^2 + 1)/2 - 1.

Offset 1, canonical program `A147806.P12689677907134375891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147806 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A147806.P12689677907134375891.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156242.P3233582996753599041

`A054353(2*(n+1))`
-/

namespace A156242.P3233582996753599041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (2 * (n + 1))

end

end A156242.P3233582996753599041

noncomputable section

/-- A156242: Bisection of A054353.

Offset 1, canonical program `A156242.P3233582996753599041`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156242 (n : ℕ) : ℤ :=
  A156242.P3233582996753599041.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156242.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A156243.P395087012412145335

`A054353(2*n+1)`
-/

namespace A156243.P395087012412145335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (2 * n + 1)

end

end A156243.P395087012412145335

noncomputable section

/-- A156243: Bisection of A054353.

Offset 1, canonical program `A156243.P395087012412145335`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156243 (n : ℕ) : ℤ :=
  A156243.P395087012412145335.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156243.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A156250.P8857404366207384535

`A054353(n+1)-n`
-/

namespace A156250.P8857404366207384535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (n + 1) - (n : ℤ)

end

end A156250.P8857404366207384535

noncomputable section

/-- A156250: Least k such that A078649(k) >= A054353(n).

Offset 1, canonical program `A156250.P8857404366207384535`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156250 (n : ℕ) : ℤ :=
  A156250.P8857404366207384535.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156250.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A106103.P12542325979256717480

`p?[A284064(n+1)]`
-/

namespace A106103.P12542325979256717480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106103.P12542325979256717480

noncomputable section

/-- A106103: Primes with minimal digit = 3.

Offset 1, canonical program `A106103.P12542325979256717480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1206 terms. -/
def A106103 (n : ℕ) : ℤ :=
  A106103.P12542325979256717480.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1206 terms. -/
def A106103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107288.P2457429078809289937

`p?[A028839(n+1)]`
-/

namespace A107288.P2457429078809289937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107288.P2457429078809289937

noncomputable section

/-- A107288: Primes whose digit sum is a square.

Offset 1, canonical program `A107288.P2457429078809289937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1248 terms. -/
def A107288 (n : ℕ) : ℤ :=
  A107288.P2457429078809289937.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1248 terms. -/
def A107288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107347.P12472760092274587029

`A294602(A000040(n+1))`
-/

namespace A107347.P12472760092274587029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294602 (A000040 (n + 1)).toNat

end

end A107347.P12472760092274587029

noncomputable section

/-- A107347: Number of even semiprimes strictly between prime(n) and 2*prime(n).

Offset 1, canonical program `A107347.P12472760092274587029`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107347 (n : ℕ) : ℤ :=
  A107347.P12472760092274587029.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107347.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A108594.P11342460370923421472

`A024912(n+6)-10`
-/

namespace A108594.P11342460370923421472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024912 (n + 6) - 10

end

end A108594.P11342460370923421472

noncomputable section

/-- A108594: Numbers k such that 10*k + 101 is prime.

Offset 1, canonical program `A108594.P11342460370923421472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. -/
def A108594 (n : ℕ) : ℤ :=
  A108594.P11342460370923421472.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. -/
def A108594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108857.P2974898687329617496

`A024912(n+7)-13`
-/

namespace A108857.P2974898687329617496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024912 (n + 7) - 13

end

end A108857.P2974898687329617496

noncomputable section

/-- A108857: Numbers n such that 10*n + 131 is prime.

Offset 1, canonical program `A108857.P2974898687329617496`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024912, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A108857 (n : ℕ) : ℤ :=
  A108857.P2974898687329617496.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024912, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A108857.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A113780.P9062629399954966061

`A128580(12*n)`
-/

namespace A113780.P9062629399954966061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128580 (12 * n)

end

end A113780.P9062629399954966061

noncomputable section

/-- A113780: Number of solutions to 24*n+1 = x^2+24*y^2, x a positive integer, y an integer.

Offset 0, canonical program `A113780.P9062629399954966061`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A128580, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113780 (n : ℕ) : ℤ :=
  A113780.P9062629399954966061.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A128580, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113780.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115454.P7778183975533024959

`A007088(A002808(n+1))`
-/

namespace A115454.P7778183975533024959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A002808 (n + 1)).toNat

end

end A115454.P7778183975533024959

noncomputable section

/-- A115454: Composite positive integers written in base 2.

Offset 1, canonical program `A115454.P7778183975533024959`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115454 (n : ℕ) : ℤ :=
  A115454.P7778183975533024959.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115454.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A117656.P11004913678404553061

`A055653(A019554(n+1))*A337101(2*(n+1))`
-/

namespace A117656.P11004913678404553061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055653 (A019554 (n + 1)).toNat * A337101 (2 * (n + 1))

end

end A117656.P11004913678404553061

noncomputable section

/-- A117656: Number of solutions to x^(k+2)=x^2 mod n for some k>=1.

Offset 1, canonical program `A117656.P11004913678404553061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117656 (n : ℕ) : ℤ :=
  A117656.P11004913678404553061.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118731.P11117200247568763651

`lt[0, A071906(n)]`
-/

namespace A118731.P11117200247568763651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071906 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A118731.P11117200247568763651

noncomputable section

/-- A118731: Numbers k such that 2^k has odd digit sum.

Offset 1, canonical program `A118731.P11117200247568763651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5024 terms. -/
def A118731 (n : ℕ) : ℤ :=
  (A118731.P11117200247568763651.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5024 terms. -/
def A118731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120676.P5759093107457240539

`A120675(n+1)+1`
-/

namespace A120676.P5759093107457240539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120675 (n + 1) + 1

end

end A120676.P5759093107457240539

noncomputable section

/-- A120676: Number of prime factors of even squarefree numbers A039956.

Offset 1, canonical program `A120676.P5759093107457240539`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120676 (n : ℕ) : ℤ :=
  A120676.P5759093107457240539.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120676.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A123135.P8286442411414064837

`A062028(A000578(n+1))`
-/

namespace A123135.P8286442411414064837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 (A000578 (n + 1)).toNat

end

end A123135.P8286442411414064837

noncomputable section

/-- A123135: a(n) = n^3 plus sum of digits of n^3.

Offset 1, canonical program `A123135.P8286442411414064837`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062028, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123135 (n : ℕ) : ℤ :=
  A123135.P8286442411414064837.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062028, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123135.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A123313.P2865230886219014765

`A056911(A103775(2*(n+1))+A072747(n+1))`
-/

namespace A123313.P2865230886219014765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (A103775 (2 * (n + 1)) + A072747 (n + 1)).toNat

end

end A123313.P2865230886219014765

noncomputable section

/-- A123313: Maximum of greatest common divisors of pairs of distinct squarefree numbers not greater than the n-th squarefree number; a(1)=1.

Offset 1, canonical program `A123313.P2865230886219014765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A123313 (n : ℕ) : ℤ :=
  A123313.P2865230886219014765.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A123313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124569.P8820123207631878592

`∩[A069977(n+1)-4, A069977(n+1)]`
-/

namespace A124569.P8820123207631878592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069977 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124569.P8820123207631878592

noncomputable section

/-- A124569: Numbers k such that k, k+2, k+4 and k+6 are squarefree.

Offset 1, canonical program `A124569.P8820123207631878592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5877 terms. -/
def A124569 (n : ℕ) : ℤ :=
  (A124569.P8820123207631878592.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5877 terms. -/
def A124569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126684.P12104132709575714280

`∪[A000695(n), A062880(n)]`
-/

namespace A126684.P12104132709575714280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062880 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A126684.P12104132709575714280

noncomputable section

/-- A126684: Union of A000695 and 2*A000695.

Offset 1, canonical program `A126684.P12104132709575714280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126684 (n : ℕ) : ℤ :=
  (A126684.P12104132709575714280.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128290.P17234554926705773976

`eq[A128212(n+1), A128244(n+1)]+1`
-/

namespace A128290.P17234554926705773976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128244 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A128290.P17234554926705773976

noncomputable section

/-- A128290: If p(x) is the product of the digits of the number x and s(x) the sum of the digits then the sequence lists all the numbers k for which p(s(k)) = s(p(k)), with k >= 1.

Offset 1, canonical program `A128290.P17234554926705773976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A128290 (n : ℕ) : ℤ :=
  (A128290.P17234554926705773976.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A128290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135125.P7973860443630960552

`∩[A037303(n+1), A037326(n+1)]`
-/

namespace A135125.P7973860443630960552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135125.P7973860443630960552

noncomputable section

/-- A135125: Numbers such that the digital sum base 2 and the digital sum base 5 and the digital sum base 10 all are equal.

Offset 1, canonical program `A135125.P7973860443630960552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A135125 (n : ℕ) : ℤ :=
  (A135125.P7973860443630960552.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A135125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136251.P2724709432083116831

`A070635(A000040(n+1))`
-/

namespace A136251.P2724709432083116831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A000040 (n + 1)).toNat

end

end A136251.P2724709432083116831

noncomputable section

/-- A136251: a(n) = n-th prime reduced modulo the sum of its digits.

Offset 1, canonical program `A136251.P2724709432083116831`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070635, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A136251 (n : ℕ) : ℤ :=
  A136251.P2724709432083116831.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070635, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A136251.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139368.P4863807749277017642

`A024912(n+1)-A102342(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A139368.P4863807749277017642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024912 (n + 1) - A102342 (n + 1)

end

end A139368.P4863807749277017642

noncomputable section

/-- A139368: a(n) = A024912(n) - A102342(n).

Offset 1, canonical program `A139368.P4863807749277017642`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024912, A102342, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A139368 (n : ℕ) : ℤ :=
  A139368.P4863807749277017642.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024912, A102342, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A139368.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A141640.P11678069343335363324

`eq[A000007(n), A107279(A007953(n))]`
-/

namespace A141640.P11678069343335363324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A141640.P11678069343335363324

noncomputable section

/-- A141640: Additive nonprimes: odd sum of digits is a nonprime.

Offset 1, canonical program `A141640.P11678069343335363324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A141640 (n : ℕ) : ℤ :=
  (A141640.P11678069343335363324.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A141640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143164.P3614239325576593876

`∩[9*n+4, A028840(n+2)]`
-/

namespace A143164.P3614239325576593876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028840 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143164.P3614239325576593876

noncomputable section

/-- A143164: Numbers with digitsum 13, in increasing order.

Offset 1, canonical program `A143164.P3614239325576593876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. -/
def A143164 (n : ℕ) : ℤ :=
  (A143164.P3614239325576593876.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. -/
def A143164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143980.P980321377614128510

`∑{#}[n-4, C(n+1, #+5)*A079260(#+5)]`
-/

namespace A143980.P980321377614128510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose (n + 1) (k + 5) : ℤ) * A079260 (k + 5)

end

end A143980.P980321377614128510

noncomputable section

/-- A143980: Binomial transform of A079260.

Offset 1, canonical program `A143980.P980321377614128510`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079260, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143980 (n : ℕ) : ℤ :=
  A143980.P980321377614128510.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079260, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143980.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A156672.P6211038961780949761

`A007918(A062028(a(n-1)))` with `a(0)=2`
-/

namespace A156672.P6211038961780949761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A007918 (A062028 (a (n - 1)).toNat).toNat

end

end A156672.P6211038961780949761

noncomputable section

/-- A156672: a(1)=2, a(n+1) is the smallest prime >= a(n) + sum of digits of a(n).

Offset 1, canonical program `A156672.P6211038961780949761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 435 terms. -/
def A156672 (n : ℕ) : ℤ :=
  A156672.P6211038961780949761.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 435 terms. -/
def A156672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157845.P13110102773483925305

`A007088(A092391(A028897(a(n-1))))` with `a(0)=1, a(1)=1`
-/

namespace A157845.P13110102773483925305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A007088 (A092391 (A028897 (a (n - 1)).toNat).toNat).toNat

end

end A157845.P13110102773483925305

noncomputable section

/-- A157845: a(0) = 1, a(n) = sum of binary digits of all prior terms, expressed in binary.

Offset 0, canonical program `A157845.P13110102773483925305`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A157845 (n : ℕ) : ℤ :=
  A157845.P13110102773483925305.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A157845.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A158195.P13663355669615472388

`p?[(n+1)*(A091090(A007953(n))-1)]`
-/

namespace A158195.P13663355669615472388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A091090 (A007953 n).toNat - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158195.P13663355669615472388

noncomputable section

/-- A158195: Prime numbers such that sum of digits is even semiprime.

Offset 1, canonical program `A158195.P13663355669615472388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A158195 (n : ℕ) : ℤ :=
  A158195.P13663355669615472388.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A158195.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160939.P10335950988782502839

`A062028(n)+1`
-/

namespace A160939.P10335950988782502839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n + 1

end

end A160939.P10335950988782502839

noncomputable section

/-- A160939: a(n) = n + digital sum (n-1).

Offset 1, canonical program `A160939.P10335950988782502839`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062028, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160939 (n : ℕ) : ℤ :=
  A160939.P10335950988782502839.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062028, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160939.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A106754.P11658128273037177493

`p?[A166311(n+1)]`
-/

namespace A106754.P11658128273037177493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106754.P11658128273037177493

noncomputable section

/-- A106754: Primes p with digital sum equal to 11.

Offset 1, canonical program `A106754.P11658128273037177493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 600 terms. -/
def A106754 (n : ℕ) : ℤ :=
  A106754.P11658128273037177493.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 600 terms. -/
def A106754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106762.P16451836161243382953

`A045319(eq[23, A007605(n+1)])`
-/

namespace A106762.P16451836161243382953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A106762.P16451836161243382953

noncomputable section

/-- A106762: Primes with digit sum = 23.

Offset 1, canonical program `A106762.P16451836161243382953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 875 terms. -/
def A106762 (n : ℕ) : ℤ :=
  A106762.P16451836161243382953.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 875 terms. -/
def A106762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108580.P112236071896363944

`lt[A180018(n), 0]`
-/

namespace A108580.P112236071896363944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180018 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A108580.P112236071896363944

noncomputable section

/-- A108580: Numbers whose sum of bits when written in binary > sum of decimal digits.

Offset 1, canonical program `A108580.P112236071896363944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A108580 (n : ℕ) : ℤ :=
  (A108580.P112236071896363944.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A108580.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109133.P7922993941714005852

`eq[1, A001222(A307629(n)+A007953(n)+1)]`
-/

namespace A109133.P7922993941714005852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A307629 n + A007953 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A109133.P7922993941714005852

noncomputable section

/-- A109133: Numbers k such that (sum of digits)*(number of digits) + 1 is prime.

Offset 1, canonical program `A109133.P7922993941714005852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4048 terms. -/
def A109133 (n : ℕ) : ℤ :=
  (A109133.P7922993941714005852.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4048 terms. -/
def A109133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110390.P9353818697883513779

`A000045(n+7)%A004090(n+7)`
-/

namespace A110390.P9353818697883513779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (n + 7)) (A004090 (n + 7))

end

end A110390.P9353818697883513779

noncomputable section

/-- A110390: a(n) = F(n) mod s(n) where s(n) is the sum of the digits of the n-th Fibonacci number F(n).

Offset 7, canonical program `A110390.P9353818697883513779`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004090, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A110390 (n : ℕ) : ℤ :=
  A110390.P9353818697883513779.a (n - 7)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004090, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A110390.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115358.P2052472132167437003

`A051731(n+1)*A154269(A010766(n+1))`
-/

namespace A115358.P2052472132167437003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A154269 (A010766 (n + 1)).toNat

end

end A115358.P2052472132167437003

noncomputable section

/-- A115358: Inverse of matrix (1,x)+(x,x^2) (expressed in Riordan array notation).

Offset 0, canonical program `A115358.P2052472132167437003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115358 (n : ℕ) : ℤ :=
  A115358.P2052472132167437003.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117061.P6783340963500244464

`A118881(a(n-1))+1+n` with `a(0)=1`
-/

namespace A117061.P6783340963500244464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A118881 (a (n - 1)).toNat + 1 + (n : ℤ)

end

end A117061.P6783340963500244464

noncomputable section

/-- A117061: a(n) = (s(n-1))^2+n, with a(1) = 1 and s(k) = A007953(a(k)).

Offset 1, canonical program `A117061.P6783340963500244464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A117061 (n : ℕ) : ℤ :=
  A117061.P6783340963500244464.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A117061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117224.P6444175390300152224

`eq[A004159(n), A004164(n)]`
-/

namespace A117224.P6444175390300152224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117224.P6444175390300152224

noncomputable section

/-- A117224: Numbers for which the square and the cube have the same digital sum.

Offset 1, canonical program `A117224.P6444175390300152224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 522 terms. -/
def A117224 (n : ℕ) : ℤ :=
  (A117224.P6444175390300152224.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 522 terms. -/
def A117224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117511.P13071202074021553455

`A000217(eq[A004157(n+1), A004157(n)])`
-/

namespace A117511.P13071202074021553455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A117511.P13071202074021553455

noncomputable section

/-- A117511: Triangular numbers for which the sum of the digits equals the sum of the digits of the next triangular number.

Offset 1, canonical program `A117511.P13071202074021553455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 491 terms. -/
def A117511 (n : ℕ) : ℤ :=
  A117511.P13071202074021553455.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 491 terms. -/
def A117511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117674.P10937197086857291007

`p?[A187744(n+1)]`
-/

namespace A117674.P10937197086857291007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117674.P10937197086857291007

noncomputable section

/-- A117674: Prime numbers whose sum of digits is a triangular number.

Offset 1, canonical program `A117674.P10937197086857291007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 435 terms. -/
def A117674 (n : ℕ) : ℤ :=
  A117674.P10937197086857291007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 435 terms. -/
def A117674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119449.P14032157784951920134

`p?[A000040(n+1)+A007605(n+1)%2]`
-/

namespace A119449.P14032157784951920134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + Int.tmod (A007605 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119449.P14032157784951920134

noncomputable section

/-- A119449: Primes with even digit sum.

Offset 1, canonical program `A119449.P14032157784951920134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4925 terms. -/
def A119449 (n : ℕ) : ℤ :=
  A119449.P14032157784951920134.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4925 terms. -/
def A119449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121807.P13313933923101862632

`∑[A004676(n+1)]`
-/

namespace A121807.P13313933923101862632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121807.P13313933923101862632

noncomputable section

/-- A121807: Partial sums of A004676.

Offset 1, canonical program `A121807.P13313933923101862632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121807 (n : ℕ) : ℤ :=
  A121807.P13313933923101862632.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129631.P433838894207889531

`eq[A032741(A004157(n))+n-1, A028310(n)]`
-/

namespace A129631.P433838894207889531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A004157 n).toNat + ((n : ℤ) - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A129631.P433838894207889531

noncomputable section

/-- A129631: Numbers k such that sum of digits of binomial(k+1, k-1) is a prime.

Offset 1, canonical program `A129631.P433838894207889531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A129631 (n : ℕ) : ℤ :=
  (A129631.P433838894207889531.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A129631.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133855.P8562869399152242532

`A276049((n+1)%(2*n+1)+1)`
-/

namespace A133855.P8562869399152242532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276049 ((n + 1) % (2 * n + 1) + 1)

end

end A133855.P8562869399152242532

noncomputable section

/-- A133855: Primes p such that p-1 and p+1 are abundant numbers.

Offset 1, canonical program `A133855.P8562869399152242532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A133855 (n : ℕ) : ℤ :=
  A133855.P8562869399152242532.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A133855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134516.P11675418983147709240

`lt[A007953(n), gcd(n, A169805(n))]`
-/

namespace A134516.P11675418983147709240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A169805 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A134516.P11675418983147709240

noncomputable section

/-- A134516: Numbers that are divisible by 2*(sum of their digits).

Offset 1, canonical program `A134516.P11675418983147709240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 799 terms. -/
def A134516 (n : ℕ) : ℤ :=
  (A134516.P11675418983147709240.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 799 terms. -/
def A134516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135076.P11264756244026486480

`p?[A001370(n)]`
-/

namespace A135076.P11264756244026486480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A135076.P11264756244026486480

noncomputable section

/-- A135076: Primes appearing in A001370.

Offset 1, canonical program `A135076.P11264756244026486480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1788 terms. -/
def A135076 (n : ℕ) : ℤ :=
  A135076.P11264756244026486480.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1788 terms. -/
def A135076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135110.P13140174536284070670

`eq[A008574(A000120(n)), A180018(n)]`
-/

namespace A135110.P13140174536284070670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A000120 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135110.P13140174536284070670

noncomputable section

/-- A135110: Positive numbers such that the digital sum base 2 and the digital sum base 10 are in a ratio of 2:10.

Offset 1, canonical program `A135110.P13140174536284070670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A135110 (n : ℕ) : ℤ :=
  (A135110.P13140174536284070670.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A135110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144777.P1651150914799659025

`9*eq[5, A004427(9*n)]`
-/

namespace A144777.P1651150914799659025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (9 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A144777.P1651150914799659025

noncomputable section

/-- A144777: Integers having decimal digital mean equal to zero.

Offset 1, canonical program `A144777.P1651150914799659025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 624 terms. -/
def A144777 (n : ℕ) : ℤ :=
  (A144777.P1651150914799659025.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 624 terms. -/
def A144777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154311.P8823212996274224899

`lt[A007605(n+1), A007953(n+1)]+1`
-/

namespace A154311.P8823212996274224899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A154311.P8823212996274224899

noncomputable section

/-- A154311: Numbers n such that sum of digits of n > sum of digits of prime(n).

Offset 1, canonical program `A154311.P8823212996274224899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A154311 (n : ℕ) : ℤ :=
  (A154311.P8823212996274224899.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A154311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154679.P10868027328669372929

`p?[A004277(n)-A005171(A004155(n))]`
-/

namespace A154679.P10868027328669372929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - A005171 (A004155 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154679.P10868027328669372929

noncomputable section

/-- A154679: Primes p such that the sum of digits of p+2 is a composite number.

Offset 1, canonical program `A154679.P10868027328669372929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1791 terms. -/
def A154679 (n : ℕ) : ℤ :=
  A154679.P10868027328669372929.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1791 terms. -/
def A154679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157529.P6599670001113276478

`filter[A193772(n+2), A066247(#)]`
-/

namespace A157529.P6599670001113276478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193772 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A157529.P6599670001113276478

noncomputable section

/-- A157529: Composite numbers whose first digit is equal to the sum of all the other digits.

Offset 1, canonical program `A157529.P6599670001113276478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 451 terms. -/
def A157529 (n : ℕ) : ℤ :=
  A157529.P6599670001113276478.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 451 terms. -/
def A157529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159879.P5677806131023891219

`eq[A004159(n), A169805(n)]`
-/

namespace A159879.P5677806131023891219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A159879.P5677806131023891219

noncomputable section

/-- A159879: Numbers n such that digit sum of n^2 is 2*(digit sum of n).

Offset 1, canonical program `A159879.P5677806131023891219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 642 terms. -/
def A159879 (n : ℕ) : ℤ :=
  (A159879.P5677806131023891219.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 642 terms. -/
def A159879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160785.P2444679081168475481

`A039956(n+1)+1`
-/

namespace A160785.P2444679081168475481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039956 (n + 1) + 1

end

end A160785.P2444679081168475481

noncomputable section

/-- A160785: Even squarefree numbers plus 1.

Offset 1, canonical program `A160785.P2444679081168475481`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039956, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160785 (n : ℕ) : ℤ :=
  A160785.P2444679081168475481.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039956, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160785.provenance : SequenceMachineLib.Provenance := .conditional

