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
import Seq.B000.C039
import Seq.B000.C040
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

/-! ## A387514.P1921793533603092502

`A098482(n+1)+Δ[A098482(n)]`
-/

namespace A387514.P1921793533603092502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098482 (n + 1) + (f1 (n + 1) - f1 n)

end

end A387514.P1921793533603092502

noncomputable section

/-- A387514: Number of ways to tile a fixed circular strip of length n with squares and dominos of two different colors where there must be the same number of each color of domino.

Offset 1, canonical program `A387514.P1921793533603092502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A387514 (n : ℕ) : ℤ :=
  A387514.P1921793533603092502.a (n - 1)

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

/-! ## A389809.P18305442377972474179

`A000040(A003057(n+2))`
-/

namespace A389809.P18305442377972474179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A003057 (n + 2)).toNat

end

end A389809.P18305442377972474179

noncomputable section

/-- A389809: Sequence containing k-1 occurrences of prime(k) ordered by k.

Offset 1, canonical program `A389809.P18305442377972474179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389809 (n : ℕ) : ℤ :=
  A389809.P18305442377972474179.a (n - 1)

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

/-! ## A390326.P10922664327684501157

`A002378(lt[A209229(n), A164089(n+1)])`
-/

namespace A390326.P10922664327684501157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A390326.P10922664327684501157

noncomputable section

/-- A390326: Oblong numbers not of the forms 2^k*(2^k - 1) or 2^k*(2^k + 1).

Offset 1, canonical program `A390326.P10922664327684501157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9973 terms. -/
def A390326 (n : ℕ) : ℤ :=
  A390326.P10922664327684501157.a (n - 1)

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

/-! ## A390724.P10032212923704831388

`A000108(A002262(n))*A048993(n)`
-/

namespace A390724.P10032212923704831388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A002262 n).toNat * A048993 n

end

end A390724.P10032212923704831388

noncomputable section

/-- A390724: Triangle read by rows: T(n, k) = Stirling2(n, k)*CatalanNumber(k).

Offset 0, canonical program `A390724.P10032212923704831388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3269 terms. -/
def A390724 (n : ℕ) : ℤ :=
  A390724.P10032212923704831388.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3269 terms. -/
def A390724.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A393450.P32858631304171107

`A004526(lt[A319929(n+1), 2])`
-/

namespace A393450.P32858631304171107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319929 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A393450.P32858631304171107

noncomputable section

/-- A393450: Consider the square spiral with its cells numbered starting at 0, as in A308884 and A274641. Two players, Black and Red, take turns. When it is Black's turn, he places a king at the smallest unoccupied cell not attacked by an existing Red king, and when it is Red's turn, she places a king at the smallest unoccupied cell not attacked by an existing Black king. Sequence lists squares occupied by a Black king.

Offset 0, canonical program `A393450.P32858631304171107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2481 terms. -/
def A393450 (n : ℕ) : ℤ :=
  A393450.P32858631304171107.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2481 terms. -/
def A393450.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A400755.P10011494647645333911

`A059026(n+1)+1`
-/

namespace A400755.P10011494647645333911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059026 (n + 1) + 1

end

end A400755.P10011494647645333911

noncomputable section

/-- A400755: Triangle read by rows: T(n,k) = denominator(n/(n + k)), with 1 <= k <= n.

Offset 1, canonical program `A400755.P10011494647645333911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400755 (n : ℕ) : ℤ :=
  A400755.P10011494647645333911.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400755.provenance : SequenceMachineLib.Provenance := .conjectured

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

