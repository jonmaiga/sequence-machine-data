import SequenceMachineLib

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A047520.P11197245051998526120

`2*a(n-1)+n²` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A047520.P11197245051998526120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) + n ^ 2

end

end A047520.P11197245051998526120

noncomputable section

/-- A047520: a(n) = 2*a(n-1) + n^2, a(0) = 0.

Offset 0, canonical program `A047520.P11197245051998526120`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+n²` (program `A047520.P11197245051998526120`, by `A047520.P11197245051998526120.correct`). Lean does not check the parsing of the name. -/
def A047520 (n : ℕ) : ℤ :=
  (A047520.P11197245051998526120.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+n²` (program `A047520.P11197245051998526120`, by `A047520.P11197245051998526120.correct`). Lean does not check the parsing of the name. -/
def A047520.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A047677.P17148376039658519453

`2*n!*(n+1)!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A047677.P17148376039658519453
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.factorial n * Nat.factorial (n + 1)

end

end A047677.P17148376039658519453

noncomputable section

/-- A047677: Row 2 of square array defined in A047675: 2*n!*(n+1)!.

Offset 0, canonical program `A047677.P17148376039658519453`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n!*(n+1)!` (program `A047677.P17148376039658519453`, by `A047677.P17148376039658519453.correct`). Lean does not check the parsing of the name. -/
def A047677 (n : ℕ) : ℤ :=
  (A047677.P17148376039658519453.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n!*(n+1)!` (program `A047677.P17148376039658519453`, by `A047677.P17148376039658519453.correct`). Lean does not check the parsing of the name. -/
def A047677.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A047866.P2111716479516153062

`ceil(n*(n+1)*(n+2)/8)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A047866.P2111716479516153062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) * ((n + 1 : ℚ) * ((n + 2 : ℚ) / 8))⌉

end

end A047866.P2111716479516153062

noncomputable section

/-- A047866: a(n) = ceiling(n*(n+1)*(n+2)/8).

Offset 0, canonical program `A047866.P2111716479516153062`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n*(n+1)*(n+2)/8)` (program `A047866.P2111716479516153062`, by `A047866.P2111716479516153062.correct`). Lean does not check the parsing of the name. -/
def A047866 (n : ℕ) : ℤ :=
  A047866.P2111716479516153062.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n*(n+1)*(n+2)/8)` (program `A047866.P2111716479516153062`, by `A047866.P2111716479516153062.correct`). Lean does not check the parsing of the name. -/
def A047866.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A047915.P18147264027610424030

`3*n²-2*n+6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A047915.P18147264027610424030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n ^ 2 : ℤ) - (2 * n : ℤ) + 6

end

end A047915.P18147264027610424030

noncomputable section

/-- A047915: a(n) = 3*n^2-2*n+6.

Offset 0, canonical program `A047915.P18147264027610424030`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n²-2*n+6` (program `A047915.P18147264027610424030`, by `A047915.P18147264027610424030.correct`). Lean does not check the parsing of the name. -/
def A047915 (n : ℕ) : ℤ :=
  A047915.P18147264027610424030.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n²-2*n+6` (program `A047915.P18147264027610424030`, by `A047915.P18147264027610424030.correct`). Lean does not check the parsing of the name. -/
def A047915.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A047974.P1141122604681407147

`a(n-1)+2*(n-1)*a(n-2)` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A047974.P1141122604681407147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + 2 * (((n : ℤ) - 1) * a (n - 2))

end

end A047974.P1141122604681407147

noncomputable section

/-- A047974: a(n) = a(n-1) + 2*(n-1)*a(n-2).

Offset 0, canonical program `A047974.P1141122604681407147`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*(n-1)*a(n-2)` (program `A047974.P1141122604681407147`, by `A047974.P1141122604681407147.correct`). Lean does not check the parsing of the name. -/
def A047974 (n : ℕ) : ℤ :=
  A047974.P1141122604681407147.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*(n-1)*a(n-2)` (program `A047974.P1141122604681407147`, by `A047974.P1141122604681407147.correct`). Lean does not check the parsing of the name. -/
def A047974.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A048058.P2128080884527329818

`n²+n+11`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048058.P2128080884527329818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + (n + 11)

end

end A048058.P2128080884527329818

noncomputable section

/-- A048058: a(n) = n^2 + n + 11.

Offset 0, canonical program `A048058.P2128080884527329818`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+n+11` (program `A048058.P2128080884527329818`, by `A048058.P2128080884527329818.correct`). Lean does not check the parsing of the name. -/
def A048058 (n : ℕ) : ℤ :=
  (A048058.P2128080884527329818.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+n+11` (program `A048058.P2128080884527329818`, by `A048058.P2128080884527329818.correct`). Lean does not check the parsing of the name. -/
def A048058.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A048112.P13878167413498853716

`a(n-3)*(a(n-2)+a(n-1))` with `a(0)=1, a(1)=1, a(2)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048112.P13878167413498853716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 3) * (a (n - 2) + a (n - 1))

end

end A048112.P13878167413498853716

noncomputable section

/-- A048112: a(1) = 1, a(2) = 1, a(3) = 1, a(n) = a(n-3) * (a(n-2) + a(n-1)).

Offset 1, canonical program `A048112.P13878167413498853716`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-3)*(a(n-2)+a(n-1))` (program `A048112.P13878167413498853716`, by `A048112.P13878167413498853716.correct`). Lean does not check the parsing of the name. -/
def A048112 (n : ℕ) : ℤ :=
  (A048112.P13878167413498853716.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-3)*(a(n-2)+a(n-1))` (program `A048112.P13878167413498853716`, by `A048112.P13878167413498853716.correct`). Lean does not check the parsing of the name. -/
def A048112.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A048473.P18137977496735268190

`2*3^n-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048473.P18137977496735268190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 3 ^ n : ℤ) - 1

end

end A048473.P18137977496735268190

noncomputable section

/-- A048473: a(0)=1, a(n) = 3*a(n-1) + 2; a(n) = 2*3^n - 1.

Offset 0, canonical program `A048473.P18137977496735268190`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*3^n-1` (program `A048473.P18137977496735268190`, by `A048473.P18137977496735268190.correct`). Lean does not check the parsing of the name. -/
def A048473 (n : ℕ) : ℤ :=
  A048473.P18137977496735268190.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*3^n-1` (program `A048473.P18137977496735268190`, by `A048473.P18137977496735268190.correct`). Lean does not check the parsing of the name. -/
def A048473.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A048488.P11176368568571230835

`6*2^n-5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048488.P11176368568571230835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * 2 ^ n : ℤ) - 5

end

end A048488.P11176368568571230835

noncomputable section

/-- A048488: a(n) = 6*2^n - 5.

Offset 0, canonical program `A048488.P11176368568571230835`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*2^n-5` (program `A048488.P11176368568571230835`, by `A048488.P11176368568571230835.correct`). Lean does not check the parsing of the name. -/
def A048488 (n : ℕ) : ℤ :=
  A048488.P11176368568571230835.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*2^n-5` (program `A048488.P11176368568571230835`, by `A048488.P11176368568571230835.correct`). Lean does not check the parsing of the name. -/
def A048488.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A048489.P11253217557276495286

`7*2^n-6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048489.P11253217557276495286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * 2 ^ n : ℤ) - 6

end

end A048489.P11253217557276495286

noncomputable section

/-- A048489: a(n) = 7*2^n - 6.

Offset 0, canonical program `A048489.P11253217557276495286`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*2^n-6` (program `A048489.P11253217557276495286`, by `A048489.P11253217557276495286.correct`). Lean does not check the parsing of the name. -/
def A048489 (n : ℕ) : ℤ :=
  A048489.P11253217557276495286.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*2^n-6` (program `A048489.P11253217557276495286`, by `A048489.P11253217557276495286.correct`). Lean does not check the parsing of the name. -/
def A048489.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A048493.P18254336596332643479

`(n+1)*2^n-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048493.P18254336596332643479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * 2 ^ n : ℤ) - (n : ℤ)

end

end A048493.P18254336596332643479

noncomputable section

/-- A048493: a(n) = (n+1)*2^n - n.

Offset 0, canonical program `A048493.P18254336596332643479`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*2^n-n` (program `A048493.P18254336596332643479`, by `A048493.P18254336596332643479.correct`). Lean does not check the parsing of the name. -/
def A048493 (n : ℕ) : ℤ :=
  A048493.P18254336596332643479.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*2^n-n` (program `A048493.P18254336596332643479`, by `A048493.P18254336596332643479.correct`). Lean does not check the parsing of the name. -/
def A048493.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A048495.P13601989703998276379

`(n-1)*2^n+2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048495.P13601989703998276379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (2 ^ n : ℤ) + 2

end

end A048495.P13601989703998276379

noncomputable section

/-- A048495: a(n) = (n-1)*2^n + 2.

Offset 0, canonical program `A048495.P13601989703998276379`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-1)*2^n+2` (program `A048495.P13601989703998276379`, by `A048495.P13601989703998276379.correct`). Lean does not check the parsing of the name. -/
def A048495 (n : ℕ) : ℤ :=
  A048495.P13601989703998276379.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-1)*2^n+2` (program `A048495.P13601989703998276379`, by `A048495.P13601989703998276379.correct`). Lean does not check the parsing of the name. -/
def A048495.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A048573.P2715505086605759479

`a(n-1)+2*a(n-2)` with `a(0)=2, a(1)=3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048573.P2715505086605759479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) + 2 * a (n - 2)

end

end A048573.P2715505086605759479

noncomputable section

/-- A048573: a(n) = a(n-1) + 2*a(n-2), a(0)=2, a(1)=3.

Offset 0, canonical program `A048573.P2715505086605759479`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*a(n-2)` (program `A048573.P2715505086605759479`, by `A048573.P2715505086605759479.correct`). Lean does not check the parsing of the name. -/
def A048573 (n : ℕ) : ℤ :=
  (A048573.P2715505086605759479.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*a(n-2)` (program `A048573.P2715505086605759479`, by `A048573.P2715505086605759479.correct`). Lean does not check the parsing of the name. -/
def A048573.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A048617.P15117929929345730704

`2*n!²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048617.P15117929929345730704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.factorial n ^ 2

end

end A048617.P15117929929345730704

noncomputable section

/-- A048617: a(n) = 2*(n!)^2.

Offset 0, canonical program `A048617.P15117929929345730704`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n!²` (program `A048617.P15117929929345730704`, by `A048617.P15117929929345730704.correct`). Lean does not check the parsing of the name. -/
def A048617 (n : ℕ) : ℤ :=
  (A048617.P15117929929345730704.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n!²` (program `A048617.P15117929929345730704`, by `A048617.P15117929929345730704.correct`). Lean does not check the parsing of the name. -/
def A048617.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A048634.P7963237532041953931

`a(n-1)*a(n-3)+a(n-2)` with `a(0)=0, a(1)=0, a(2)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048634.P7963237532041953931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 1) * a (n - 3) + a (n - 2)

end

end A048634.P7963237532041953931

noncomputable section

/-- A048634: a(n) = a(n-1)*a(n-3) + a(n-2), with a(0)=a(1)=0 and a(2)=1.

Offset 0, canonical program `A048634.P7963237532041953931`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-3)+a(n-2)` (program `A048634.P7963237532041953931`, by `A048634.P7963237532041953931.correct`). Lean does not check the parsing of the name. -/
def A048634 (n : ℕ) : ℤ :=
  (A048634.P7963237532041953931.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-3)+a(n-2)` (program `A048634.P7963237532041953931`, by `A048634.P7963237532041953931.correct`). Lean does not check the parsing of the name. -/
def A048634.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A048654.P7288807868170625605

`2*a(n-1)+a(n-2)` with `a(0)=1, a(1)=4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048654.P7288807868170625605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * a (n - 1) + a (n - 2)

end

end A048654.P7288807868170625605

noncomputable section

/-- A048654: a(n) = 2*a(n-1) + a(n-2); a(0)=1, a(1)=4.

Offset 0, canonical program `A048654.P7288807868170625605`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)` (program `A048654.P7288807868170625605`, by `A048654.P7288807868170625605.correct`). Lean does not check the parsing of the name. -/
def A048654 (n : ℕ) : ℤ :=
  (A048654.P7288807868170625605.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)` (program `A048654.P7288807868170625605`, by `A048654.P7288807868170625605.correct`). Lean does not check the parsing of the name. -/
def A048654.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A048876.P2108842001374827678

`4*a(n-1)+a(n-2)` with `a(0)=1, a(1)=7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048876.P2108842001374827678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  4 * a (n - 1) + a (n - 2)

end

end A048876.P2108842001374827678

noncomputable section

/-- A048876: a(n) = 4*a(n-1) + a(n-2); a(0)=1, a(1)=7.

Offset 0, canonical program `A048876.P2108842001374827678`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+a(n-2)` (program `A048876.P2108842001374827678`, by `A048876.P2108842001374827678.correct`). Lean does not check the parsing of the name. -/
def A048876 (n : ℕ) : ℤ :=
  (A048876.P2108842001374827678.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+a(n-2)` (program `A048876.P2108842001374827678`, by `A048876.P2108842001374827678.correct`). Lean does not check the parsing of the name. -/
def A048876.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A048877.P6173267220112087409

`4*a(n-1)+a(n-2)` with `a(0)=1, a(1)=8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048877.P6173267220112087409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  4 * a (n - 1) + a (n - 2)

end

end A048877.P6173267220112087409

noncomputable section

/-- A048877: a(n) = 4*a(n-1) + a(n-2); a(0)=1, a(1)=8.

Offset 0, canonical program `A048877.P6173267220112087409`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+a(n-2)` (program `A048877.P6173267220112087409`, by `A048877.P6173267220112087409.correct`). Lean does not check the parsing of the name. -/
def A048877 (n : ℕ) : ℤ :=
  (A048877.P6173267220112087409.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+a(n-2)` (program `A048877.P6173267220112087409`, by `A048877.P6173267220112087409.correct`). Lean does not check the parsing of the name. -/
def A048877.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A049453.P17699736680454431626

`n*(6*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A049453.P17699736680454431626
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (6 * n + 1)

end

end A049453.P17699736680454431626

noncomputable section

/-- A049453: Second pentagonal numbers with even index: a(n) = n*(6*n+1).

Offset 0, canonical program `A049453.P17699736680454431626`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(6*n+1)` (program `A049453.P17699736680454431626`, by `A049453.P17699736680454431626.correct`). Lean does not check the parsing of the name. -/
def A049453 (n : ℕ) : ℤ :=
  (A049453.P17699736680454431626.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(6*n+1)` (program `A049453.P17699736680454431626`, by `A049453.P17699736680454431626.correct`). Lean does not check the parsing of the name. -/
def A049453.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A049610.P16178522909987797156

`floor(n*2^(n-3))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A049610.P16178522909987797156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)⌋

end

end A049610.P16178522909987797156

noncomputable section

/-- A049610: a(n) = Sum_{k=0..floor(n/2)} k*binomial(n,2*k) = floor(n*2^(n-3)).

Offset 0, canonical program `A049610.P16178522909987797156`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*2^(n-3))` (program `A049610.P16178522909987797156`, by `A049610.P16178522909987797156.correct`). Lean does not check the parsing of the name. -/
def A049610 (n : ℕ) : ℤ :=
  A049610.P16178522909987797156.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*2^(n-3))` (program `A049610.P16178522909987797156`, by `A049610.P16178522909987797156.correct`). Lean does not check the parsing of the name. -/
def A049610.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A050187.P14012477484479988174

`n*floor((n-1)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A050187.P14012477484479988174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊((n : ℤ) - 1 : ℚ) / 2⌋

end

end A050187.P14012477484479988174

noncomputable section

/-- A050187: a(n) = n * floor((n-1)/2).

Offset 0, canonical program `A050187.P14012477484479988174`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*floor((n-1)/2)` (program `A050187.P14012477484479988174`, by `A050187.P14012477484479988174.correct`). Lean does not check the parsing of the name. -/
def A050187 (n : ℕ) : ℤ :=
  A050187.P14012477484479988174.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*floor((n-1)/2)` (program `A050187.P14012477484479988174`, by `A050187.P14012477484479988174.correct`). Lean does not check the parsing of the name. -/
def A050187.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A050443.P12072244968284701102

`a(n-3)+a(n-4)` with `a(0)=4, a(1)=0, a(2)=0, a(3)=3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A050443.P12072244968284701102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 0, 0, 3] fun n a =>
  a (n - 3) + a (n - 4)

end

end A050443.P12072244968284701102

noncomputable section

/-- A050443: a(0)=4, a(1)=0, a(2)=0, a(3)=3; thereafter a(n) = a(n-3) + a(n-4).

Offset 0, canonical program `A050443.P12072244968284701102`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-3)+a(n-4)` (program `A050443.P12072244968284701102`, by `A050443.P12072244968284701102.correct`). Lean does not check the parsing of the name. -/
def A050443 (n : ℕ) : ℤ :=
  (A050443.P12072244968284701102.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-3)+a(n-4)` (program `A050443.P12072244968284701102`, by `A050443.P12072244968284701102.correct`). Lean does not check the parsing of the name. -/
def A050443.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A050488.P4828719649079771572

`3*(2^n-1)-2*n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A050488.P4828719649079771572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((2 ^ n : ℤ) - 1) - (2 * n : ℤ)

end

end A050488.P4828719649079771572

noncomputable section

/-- A050488: a(n) = 3*(2^n-1) - 2*n.

Offset 0, canonical program `A050488.P4828719649079771572`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(2^n-1)-2*n` (program `A050488.P4828719649079771572`, by `A050488.P4828719649079771572.correct`). Lean does not check the parsing of the name. -/
def A050488 (n : ℕ) : ℤ :=
  A050488.P4828719649079771572.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(2^n-1)-2*n` (program `A050488.P4828719649079771572`, by `A050488.P4828719649079771572.correct`). Lean does not check the parsing of the name. -/
def A050488.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A050914.P3795340419774393656

`n*3^n+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A050914.P3795340419774393656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 3 ^ n + 1

end

end A050914.P3795340419774393656

noncomputable section

/-- A050914: a(n) = n*3^n + 1.

Offset 0, canonical program `A050914.P3795340419774393656`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*3^n+1` (program `A050914.P3795340419774393656`, by `A050914.P3795340419774393656.correct`). Lean does not check the parsing of the name. -/
def A050914 (n : ℕ) : ℤ :=
  (A050914.P3795340419774393656.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*3^n+1` (program `A050914.P3795340419774393656`, by `A050914.P3795340419774393656.correct`). Lean does not check the parsing of the name. -/
def A050914.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A050915.P14282271171773606295

`n*4^n+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A050915.P14282271171773606295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 4 ^ n + 1

end

end A050915.P14282271171773606295

noncomputable section

/-- A050915: a(n) = n*4^n + 1.

Offset 0, canonical program `A050915.P14282271171773606295`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*4^n+1` (program `A050915.P14282271171773606295`, by `A050915.P14282271171773606295.correct`). Lean does not check the parsing of the name. -/
def A050915 (n : ℕ) : ℤ :=
  (A050915.P14282271171773606295.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*4^n+1` (program `A050915.P14282271171773606295`, by `A050915.P14282271171773606295.correct`). Lean does not check the parsing of the name. -/
def A050915.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A050916.P966275114646513705

`n*5^n+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A050916.P966275114646513705
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 5 ^ n + 1

end

end A050916.P966275114646513705

noncomputable section

/-- A050916: a(n) = n*5^n + 1.

Offset 0, canonical program `A050916.P966275114646513705`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*5^n+1` (program `A050916.P966275114646513705`, by `A050916.P966275114646513705.correct`). Lean does not check the parsing of the name. -/
def A050916 (n : ℕ) : ℤ :=
  (A050916.P966275114646513705.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*5^n+1` (program `A050916.P966275114646513705`, by `A050916.P966275114646513705.correct`). Lean does not check the parsing of the name. -/
def A050916.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A050917.P3700556668548926092

`n*6^n+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A050917.P3700556668548926092
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 6 ^ n + 1

end

end A050917.P3700556668548926092

noncomputable section

/-- A050917: a(n) = n*6^n + 1.

Offset 0, canonical program `A050917.P3700556668548926092`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*6^n+1` (program `A050917.P3700556668548926092`, by `A050917.P3700556668548926092.correct`). Lean does not check the parsing of the name. -/
def A050917 (n : ℕ) : ℤ :=
  (A050917.P3700556668548926092.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*6^n+1` (program `A050917.P3700556668548926092`, by `A050917.P3700556668548926092.correct`). Lean does not check the parsing of the name. -/
def A050917.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A050919.P18278914643895436143

`n*7^n+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A050919.P18278914643895436143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 7 ^ n + 1

end

end A050919.P18278914643895436143

noncomputable section

/-- A050919: a(n) = n*7^n + 1.

Offset 0, canonical program `A050919.P18278914643895436143`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*7^n+1` (program `A050919.P18278914643895436143`, by `A050919.P18278914643895436143.correct`). Lean does not check the parsing of the name. -/
def A050919 (n : ℕ) : ℤ :=
  (A050919.P18278914643895436143.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*7^n+1` (program `A050919.P18278914643895436143`, by `A050919.P18278914643895436143.correct`). Lean does not check the parsing of the name. -/
def A050919.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A050935.P3233222883992199911

`a(n-1)-a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A050935.P3233222883992199911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 1) - a (n - 3)

end

end A050935.P3233222883992199911

noncomputable section

/-- A050935: a(n) = a(n-1) - a(n-3) with a(1)=0, a(2)=0, a(3)=1.

Offset 1, canonical program `A050935.P3233222883992199911`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-a(n-3)` (program `A050935.P3233222883992199911`, by `A050935.P3233222883992199911.correct`). Lean does not check the parsing of the name. -/
def A050935 (n : ℕ) : ℤ :=
  A050935.P3233222883992199911.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-a(n-3)` (program `A050935.P3233222883992199911`, by `A050935.P3233222883992199911.correct`). Lean does not check the parsing of the name. -/
def A050935.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A051033.P5799552983514192915

`C(n, floor(n/3))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051033.P5799552983514192915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ⌊(n : ℚ) / 3⌋.toNat

end

end A051033.P5799552983514192915

noncomputable section

/-- A051033: a(n) = binomial(n, floor(n/3)).

Offset 0, canonical program `A051033.P5799552983514192915`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n, floor(n/3))` (program `A051033.P5799552983514192915`, by `A051033.P5799552983514192915.correct`). Lean does not check the parsing of the name. -/
def A051033 (n : ℕ) : ℤ :=
  (A051033.P5799552983514192915.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n, floor(n/3))` (program `A051033.P5799552983514192915`, by `A051033.P5799552983514192915.correct`). Lean does not check the parsing of the name. -/
def A051033.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A051036.P18202131986206384769

`C(n, floor(n/4))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051036.P18202131986206384769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ⌊(n : ℚ) / 4⌋.toNat

end

end A051036.P18202131986206384769

noncomputable section

/-- A051036: a(n) = binomial(n, floor(n/4)).

Offset 0, canonical program `A051036.P18202131986206384769`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n, floor(n/4))` (program `A051036.P18202131986206384769`, by `A051036.P18202131986206384769.correct`). Lean does not check the parsing of the name. -/
def A051036 (n : ℕ) : ℤ :=
  (A051036.P18202131986206384769.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n, floor(n/4))` (program `A051036.P18202131986206384769`, by `A051036.P18202131986206384769.correct`). Lean does not check the parsing of the name. -/
def A051036.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A051052.P961557295282439439

`C(n, floor(n/5))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051052.P961557295282439439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ⌊(n : ℚ) / 5⌋.toNat

end

end A051052.P961557295282439439

noncomputable section

/-- A051052: a(n) = binomial(n, floor(n/5)).

Offset 0, canonical program `A051052.P961557295282439439`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n, floor(n/5))` (program `A051052.P961557295282439439`, by `A051052.P961557295282439439.correct`). Lean does not check the parsing of the name. -/
def A051052 (n : ℕ) : ℤ :=
  (A051052.P961557295282439439.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n, floor(n/5))` (program `A051052.P961557295282439439`, by `A051052.P961557295282439439.correct`). Lean does not check the parsing of the name. -/
def A051052.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A051053.P15845409228881226266

`C(n, floor(n/6))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051053.P15845409228881226266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ⌊(n : ℚ) / 6⌋.toNat

end

end A051053.P15845409228881226266

noncomputable section

/-- A051053: a(n) = binomial(n, floor(n/6)).

Offset 0, canonical program `A051053.P15845409228881226266`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n, floor(n/6))` (program `A051053.P15845409228881226266`, by `A051053.P15845409228881226266.correct`). Lean does not check the parsing of the name. -/
def A051053 (n : ℕ) : ℤ :=
  (A051053.P15845409228881226266.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n, floor(n/6))` (program `A051053.P15845409228881226266`, by `A051053.P15845409228881226266.correct`). Lean does not check the parsing of the name. -/
def A051053.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A051062.P11177069363644223625

`16*n+8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051062.P11177069363644223625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * n + 8

end

end A051062.P11177069363644223625

noncomputable section

/-- A051062: a(n) = 16*n + 8.

Offset 0, canonical program `A051062.P11177069363644223625`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*n+8` (program `A051062.P11177069363644223625`, by `A051062.P11177069363644223625.correct`). Lean does not check the parsing of the name. -/
def A051062 (n : ℕ) : ℤ :=
  (A051062.P11177069363644223625.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*n+8` (program `A051062.P11177069363644223625`, by `A051062.P11177069363644223625.correct`). Lean does not check the parsing of the name. -/
def A051062.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A051396.P5622502489072606936

`(2*n-2)*(2*n-3)*a(n-1)+1` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051396.P5622502489072606936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((2 * n : ℤ) - 2) * (((2 * n : ℤ) - 3) * a (n - 1)) + 1

end

end A051396.P5622502489072606936

noncomputable section

/-- A051396: a(n) = (2*n-2)*(2*n-3)*a(n-1)+1.

Offset 0, canonical program `A051396.P5622502489072606936`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-2)*(2*n-3)*a(n-1)+1` (program `A051396.P5622502489072606936`, by `A051396.P5622502489072606936.correct`). Lean does not check the parsing of the name. -/
def A051396 (n : ℕ) : ℤ :=
  A051396.P5622502489072606936.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-2)*(2*n-3)*a(n-1)+1` (program `A051396.P5622502489072606936`, by `A051396.P5622502489072606936.correct`). Lean does not check the parsing of the name. -/
def A051396.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A051397.P12157416531594821585

`(2*n-2)*(2*n-1)*a(n-1)+1` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051397.P12157416531594821585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((2 * n : ℤ) - 2) * (((2 * n : ℤ) - 1) * a (n - 1)) + 1

end

end A051397.P12157416531594821585

noncomputable section

/-- A051397: a(n) = (2*n-2)*(2*n-1)*a(n-1)+1.

Offset 0, canonical program `A051397.P12157416531594821585`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-2)*(2*n-1)*a(n-1)+1` (program `A051397.P12157416531594821585`, by `A051397.P12157416531594821585.correct`). Lean does not check the parsing of the name. -/
def A051397 (n : ℕ) : ℤ :=
  A051397.P12157416531594821585.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-2)*(2*n-1)*a(n-1)+1` (program `A051397.P12157416531594821585`, by `A051397.P12157416531594821585.correct`). Lean does not check the parsing of the name. -/
def A051397.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A051399.P9371084736377109109

`(n-1)!*a(n-1)+1` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051399.P9371084736377109109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.factorial ((n : ℤ) - 1).toNat * a (n - 1) + 1

end

end A051399.P9371084736377109109

noncomputable section

/-- A051399: a(n) = (n-1)!*a(n-1)+1.

Offset 0, canonical program `A051399.P9371084736377109109`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-1)!*a(n-1)+1` (program `A051399.P9371084736377109109`, by `A051399.P9371084736377109109.correct`). Lean does not check the parsing of the name. -/
def A051399 (n : ℕ) : ℤ :=
  (A051399.P9371084736377109109.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-1)!*a(n-1)+1` (program `A051399.P9371084736377109109`, by `A051399.P9371084736377109109.correct`). Lean does not check the parsing of the name. -/
def A051399.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A051443.P3487125599560760452

`n^(n+1)*(n+1)^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051443.P3487125599560760452
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n + 1) * (n + 1) ^ n

end

end A051443.P3487125599560760452

noncomputable section

/-- A051443: a(n) = n^(n+1)*(n+1)^n.

Offset 0, canonical program `A051443.P3487125599560760452`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^(n+1)*(n+1)^n` (program `A051443.P3487125599560760452`, by `A051443.P3487125599560760452.correct`). Lean does not check the parsing of the name. -/
def A051443 (n : ℕ) : ℤ :=
  (A051443.P3487125599560760452.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^(n+1)*(n+1)^n` (program `A051443.P3487125599560760452`, by `A051443.P3487125599560760452.correct`). Lean does not check the parsing of the name. -/
def A051443.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A051489.P9505901223482558095

`n^(n+2)+(n+2)^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051489.P9505901223482558095
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n + 2) + (n + 2) ^ n

end

end A051489.P9505901223482558095

noncomputable section

/-- A051489: a(n) = n^(n+2) + (n+2)^n.

Offset 0, canonical program `A051489.P9505901223482558095`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^(n+2)+(n+2)^n` (program `A051489.P9505901223482558095`, by `A051489.P9505901223482558095.correct`). Lean does not check the parsing of the name. -/
def A051489 (n : ℕ) : ℤ :=
  (A051489.P9505901223482558095.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^(n+2)+(n+2)^n` (program `A051489.P9505901223482558095`, by `A051489.P9505901223482558095.correct`). Lean does not check the parsing of the name. -/
def A051489.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A051490.P15365702818963906531

`n^(n+2)*(n+2)^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051490.P15365702818963906531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n + 2) * (n + 2) ^ n

end

end A051490.P15365702818963906531

noncomputable section

/-- A051490: a(n) = n^(n+2)*(n+2)^n.

Offset 0, canonical program `A051490.P15365702818963906531`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^(n+2)*(n+2)^n` (program `A051490.P15365702818963906531`, by `A051490.P15365702818963906531.correct`). Lean does not check the parsing of the name. -/
def A051490 (n : ℕ) : ℤ :=
  (A051490.P15365702818963906531.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^(n+2)*(n+2)^n` (program `A051490.P15365702818963906531`, by `A051490.P15365702818963906531.correct`). Lean does not check the parsing of the name. -/
def A051490.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A051633.P11921586248056556725

`5*2^n-2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051633.P11921586248056556725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * 2 ^ n : ℤ) - 2

end

end A051633.P11921586248056556725

noncomputable section

/-- A051633: a(n) = 5*2^n - 2.

Offset 0, canonical program `A051633.P11921586248056556725`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*2^n-2` (program `A051633.P11921586248056556725`, by `A051633.P11921586248056556725.correct`). Lean does not check the parsing of the name. -/
def A051633 (n : ℕ) : ℤ :=
  A051633.P11921586248056556725.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*2^n-2` (program `A051633.P11921586248056556725`, by `A051633.P11921586248056556725.correct`). Lean does not check the parsing of the name. -/
def A051633.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A051667.P4584506369535307113

`6*2^n-4*n-6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051667.P4584506369535307113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * 2 ^ n : ℤ) - (4 * n : ℤ) - 6

end

end A051667.P4584506369535307113

noncomputable section

/-- A051667: a(n) = 6*2^n - 4*n - 6.

Offset 0, canonical program `A051667.P4584506369535307113`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*2^n-4*n-6` (program `A051667.P4584506369535307113`, by `A051667.P4584506369535307113.correct`). Lean does not check the parsing of the name. -/
def A051667 (n : ℕ) : ℤ :=
  A051667.P4584506369535307113.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*2^n-4*n-6` (program `A051667.P4584506369535307113`, by `A051667.P4584506369535307113.correct`). Lean does not check the parsing of the name. -/
def A051667.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A051669.P500712326000610760

`11*2^n-4*n-10`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051669.P500712326000610760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * 2 ^ n : ℤ) - (4 * n : ℤ) - 10

end

end A051669.P500712326000610760

noncomputable section

/-- A051669: a(n) = 11*2^n - 4*n - 10.

Offset 0, canonical program `A051669.P500712326000610760`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*2^n-4*n-10` (program `A051669.P500712326000610760`, by `A051669.P500712326000610760.correct`). Lean does not check the parsing of the name. -/
def A051669 (n : ℕ) : ℤ :=
  A051669.P500712326000610760.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*2^n-4*n-10` (program `A051669.P500712326000610760`, by `A051669.P500712326000610760.correct`). Lean does not check the parsing of the name. -/
def A051669.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A051866.P7037994286834974710

`n*(6*n-5)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051866.P7037994286834974710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((6 * n : ℤ) - 5)

end

end A051866.P7037994286834974710

noncomputable section

/-- A051866: 14-gonal (or tetradecagonal) numbers: a(n) = n*(6*n-5).

Offset 0, canonical program `A051866.P7037994286834974710`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(6*n-5)` (program `A051866.P7037994286834974710`, by `A051866.P7037994286834974710.correct`). Lean does not check the parsing of the name. -/
def A051866 (n : ℕ) : ℤ :=
  A051866.P7037994286834974710.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(6*n-5)` (program `A051866.P7037994286834974710`, by `A051866.P7037994286834974710.correct`). Lean does not check the parsing of the name. -/
def A051866.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A051868.P8510755596375269483

`n*(7*n-6)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051868.P8510755596375269483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((7 * n : ℤ) - 6)

end

end A051868.P8510755596375269483

noncomputable section

/-- A051868: 16-gonal (or hexadecagonal) numbers: a(n) = n*(7*n-6).

Offset 0, canonical program `A051868.P8510755596375269483`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(7*n-6)` (program `A051868.P8510755596375269483`, by `A051868.P8510755596375269483.correct`). Lean does not check the parsing of the name. -/
def A051868 (n : ℕ) : ℤ :=
  A051868.P8510755596375269483.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(7*n-6)` (program `A051868.P8510755596375269483`, by `A051868.P8510755596375269483.correct`). Lean does not check the parsing of the name. -/
def A051868.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A051870.P3674433124874018284

`n*(8*n-7)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051870.P3674433124874018284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((8 * n : ℤ) - 7)

end

end A051870.P3674433124874018284

noncomputable section

/-- A051870: 18-gonal (or octadecagonal) numbers: a(n) = n*(8*n-7).

Offset 0, canonical program `A051870.P3674433124874018284`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(8*n-7)` (program `A051870.P3674433124874018284`, by `A051870.P3674433124874018284.correct`). Lean does not check the parsing of the name. -/
def A051870 (n : ℕ) : ℤ :=
  A051870.P3674433124874018284.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(8*n-7)` (program `A051870.P3674433124874018284`, by `A051870.P3674433124874018284.correct`). Lean does not check the parsing of the name. -/
def A051870.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A051872.P14981514250328426150

`n*(9*n-8)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051872.P14981514250328426150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((9 * n : ℤ) - 8)

end

end A051872.P14981514250328426150

noncomputable section

/-- A051872: 20-gonal (or icosagonal) numbers: a(n) = n*(9*n-8).

Offset 0, canonical program `A051872.P14981514250328426150`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(9*n-8)` (program `A051872.P14981514250328426150`, by `A051872.P14981514250328426150.correct`). Lean does not check the parsing of the name. -/
def A051872 (n : ℕ) : ℤ :=
  A051872.P14981514250328426150.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(9*n-8)` (program `A051872.P14981514250328426150`, by `A051872.P14981514250328426150.correct`). Lean does not check the parsing of the name. -/
def A051872.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A051874.P13000992848419538759

`n*(10*n-9)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051874.P13000992848419538759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((10 * n : ℤ) - 9)

end

end A051874.P13000992848419538759

noncomputable section

/-- A051874: 22-gonal numbers: a(n) = n*(10*n-9).

Offset 0, canonical program `A051874.P13000992848419538759`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(10*n-9)` (program `A051874.P13000992848419538759`, by `A051874.P13000992848419538759.correct`). Lean does not check the parsing of the name. -/
def A051874 (n : ℕ) : ℤ :=
  A051874.P13000992848419538759.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(10*n-9)` (program `A051874.P13000992848419538759`, by `A051874.P13000992848419538759.correct`). Lean does not check the parsing of the name. -/
def A051874.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A051876.P7910470835603757038

`n*(11*n-10)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051876.P7910470835603757038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((11 * n : ℤ) - 10)

end

end A051876.P7910470835603757038

noncomputable section

/-- A051876: 24-gonal numbers: a(n) = n*(11*n-10).

Offset 0, canonical program `A051876.P7910470835603757038`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(11*n-10)` (program `A051876.P7910470835603757038`, by `A051876.P7910470835603757038.correct`). Lean does not check the parsing of the name. -/
def A051876 (n : ℕ) : ℤ :=
  A051876.P7910470835603757038.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(11*n-10)` (program `A051876.P7910470835603757038`, by `A051876.P7910470835603757038.correct`). Lean does not check the parsing of the name. -/
def A051876.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A051920.P2707849764288868979

`C(n, floor(n/2))+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051920.P2707849764288868979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ⌊(n : ℚ) / 2⌋.toNat + 1

end

end A051920.P2707849764288868979

noncomputable section

/-- A051920: a(n) = binomial(n, floor(n/2)) + 1.

Offset 0, canonical program `A051920.P2707849764288868979`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n, floor(n/2))+1` (program `A051920.P2707849764288868979`, by `A051920.P2707849764288868979.correct`). Lean does not check the parsing of the name. -/
def A051920 (n : ℕ) : ℤ :=
  (A051920.P2707849764288868979.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n, floor(n/2))+1` (program `A051920.P2707849764288868979`, by `A051920.P2707849764288868979.correct`). Lean does not check the parsing of the name. -/
def A051920.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A051958.P16733244517638860029

`2*a(n-1)+24*a(n-2)` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051958.P16733244517638860029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * a (n - 1) + 24 * a (n - 2)

end

end A051958.P16733244517638860029

noncomputable section

/-- A051958: a(n) = 2*a(n-1) + 24*a(n-2), a(0)=0, a(1)=1.

Offset 0, canonical program `A051958.P16733244517638860029`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+24*a(n-2)` (program `A051958.P16733244517638860029`, by `A051958.P16733244517638860029.correct`). Lean does not check the parsing of the name. -/
def A051958 (n : ℕ) : ℤ :=
  (A051958.P16733244517638860029.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+24*a(n-2)` (program `A051958.P16733244517638860029`, by `A051958.P16733244517638860029.correct`). Lean does not check the parsing of the name. -/
def A051958.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A052295.P12699345501404584036

`(n*(n+1)/2)!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A052295.P12699345501404584036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat

end

end A052295.P12699345501404584036

noncomputable section

/-- A052295: a(n) = (n*(n+1)/2)!.

Offset 0, canonical program `A052295.P12699345501404584036`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n*(n+1)/2)!` (program `A052295.P12699345501404584036`, by `A052295.P12699345501404584036.correct`). Lean does not check the parsing of the name. -/
def A052295 (n : ℕ) : ℤ :=
  (A052295.P12699345501404584036.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n*(n+1)/2)!` (program `A052295.P12699345501404584036`, by `A052295.P12699345501404584036.correct`). Lean does not check the parsing of the name. -/
def A052295.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A052481.P12009171480250880183

`2^n*(C(n, 2)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A052481.P12009171480250880183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (Nat.choose n 2 + 1)

end

end A052481.P12009171480250880183

noncomputable section

/-- A052481: a(n) = 2^n*(binomial(n,2) + 1).

Offset 0, canonical program `A052481.P12009171480250880183`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*(C(n, 2)+1)` (program `A052481.P12009171480250880183`, by `A052481.P12009171480250880183.correct`). Lean does not check the parsing of the name. -/
def A052481 (n : ℕ) : ℤ :=
  (A052481.P12009171480250880183.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*(C(n, 2)+1)` (program `A052481.P12009171480250880183`, by `A052481.P12009171480250880183.correct`). Lean does not check the parsing of the name. -/
def A052481.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A052530.P4486985900610601816

`4*a(n-1)-a(n-2)` with `a(0)=0, a(1)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A052530.P4486985900610601816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  4 * a (n - 1) - a (n - 2)

end

end A052530.P4486985900610601816

noncomputable section

/-- A052530: a(n) = 4*a(n-1) - a(n-2), with a(0) = 0, a(1) = 2.

Offset 0, canonical program `A052530.P4486985900610601816`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-a(n-2)` (program `A052530.P4486985900610601816`, by `A052530.P4486985900610601816.correct`). Lean does not check the parsing of the name. -/
def A052530 (n : ℕ) : ℤ :=
  A052530.P4486985900610601816.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-a(n-2)` (program `A052530.P4486985900610601816`, by `A052530.P4486985900610601816.correct`). Lean does not check the parsing of the name. -/
def A052530.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A052539.P3422248518252475595

`4^n+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A052539.P3422248518252475595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n + 1

end

end A052539.P3422248518252475595

noncomputable section

/-- A052539: a(n) = 4^n + 1.

Offset 0, canonical program `A052539.P3422248518252475595`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+1` (program `A052539.P3422248518252475595`, by `A052539.P3422248518252475595.correct`). Lean does not check the parsing of the name. -/
def A052539 (n : ℕ) : ℤ :=
  (A052539.P3422248518252475595.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+1` (program `A052539.P3422248518252475595`, by `A052539.P3422248518252475595.correct`). Lean does not check the parsing of the name. -/
def A052539.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A052542.P15719751164566101536

`2*a(n-1)+a(n-2)` with `a(0)=1, a(1)=2, a(2)=4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A052542.P15719751164566101536
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  2 * a (n - 1) + a (n - 2)

end

end A052542.P15719751164566101536

noncomputable section

/-- A052542: a(n) = 2*a(n-1) + a(n-2), with a(0) = 1, a(1) = 2, a(2) = 4.

Offset 0, canonical program `A052542.P15719751164566101536`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)` (program `A052542.P15719751164566101536`, by `A052542.P15719751164566101536.correct`). Lean does not check the parsing of the name. -/
def A052542 (n : ℕ) : ℤ :=
  (A052542.P15719751164566101536.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)` (program `A052542.P15719751164566101536`, by `A052542.P15719751164566101536.correct`). Lean does not check the parsing of the name. -/
def A052542.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A052548.P18180923888402085992

`2^n+2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A052548.P18180923888402085992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 2

end

end A052548.P18180923888402085992

noncomputable section

/-- A052548: a(n) = 2^n + 2.

Offset 0, canonical program `A052548.P18180923888402085992`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+2` (program `A052548.P18180923888402085992`, by `A052548.P18180923888402085992.correct`). Lean does not check the parsing of the name. -/
def A052548 (n : ℕ) : ℤ :=
  (A052548.P18180923888402085992.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+2` (program `A052548.P18180923888402085992`, by `A052548.P18180923888402085992.correct`). Lean does not check the parsing of the name. -/
def A052548.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A052560.P16127495256931462694

`3*n!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A052560.P16127495256931462694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.factorial n

end

end A052560.P16127495256931462694

noncomputable section

/-- A052560: a(n) = 3*n!.

Offset 0, canonical program `A052560.P16127495256931462694`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n!` (program `A052560.P16127495256931462694`, by `A052560.P16127495256931462694.correct`). Lean does not check the parsing of the name. -/
def A052560 (n : ℕ) : ℤ :=
  (A052560.P16127495256931462694.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n!` (program `A052560.P16127495256931462694`, by `A052560.P16127495256931462694.correct`). Lean does not check the parsing of the name. -/
def A052560.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A052561.P15030560017801226101

`(1+2^n)*n!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A052561.P15030560017801226101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (1 + 2 ^ n) * Nat.factorial n

end

end A052561.P15030560017801226101

noncomputable section

/-- A052561: a(n) = (1 + 2^n) * n!.

Offset 0, canonical program `A052561.P15030560017801226101`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(1+2^n)*n!` (program `A052561.P15030560017801226101`, by `A052561.P15030560017801226101.correct`). Lean does not check the parsing of the name. -/
def A052561 (n : ℕ) : ℤ :=
  (A052561.P15030560017801226101.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(1+2^n)*n!` (program `A052561.P15030560017801226101`, by `A052561.P15030560017801226101.correct`). Lean does not check the parsing of the name. -/
def A052561.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A052562.P1600029599119446722

`5^n*n!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A052562.P1600029599119446722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n * Nat.factorial n

end

end A052562.P1600029599119446722

noncomputable section

/-- A052562: a(n) = 5^n * n!.

Offset 0, canonical program `A052562.P1600029599119446722`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n*n!` (program `A052562.P1600029599119446722`, by `A052562.P1600029599119446722.correct`). Lean does not check the parsing of the name. -/
def A052562 (n : ℕ) : ℤ :=
  (A052562.P1600029599119446722.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n*n!` (program `A052562.P1600029599119446722`, by `A052562.P1600029599119446722.correct`). Lean does not check the parsing of the name. -/
def A052562.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A052573.P17531478761167125292

`(1+3^n)*n!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A052573.P17531478761167125292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (1 + 3 ^ n) * Nat.factorial n

end

end A052573.P17531478761167125292

noncomputable section

/-- A052573: (1+3^n)*n!.

Offset 0, canonical program `A052573.P17531478761167125292`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(1+3^n)*n!` (program `A052573.P17531478761167125292`, by `A052573.P17531478761167125292.correct`). Lean does not check the parsing of the name. -/
def A052573 (n : ℕ) : ℤ :=
  (A052573.P17531478761167125292.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(1+3^n)*n!` (program `A052573.P17531478761167125292`, by `A052573.P17531478761167125292.correct`). Lean does not check the parsing of the name. -/
def A052573.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A052582.P2362601802302292355

`2*n*n!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A052582.P2362601802302292355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n * Nat.factorial n)

end

end A052582.P2362601802302292355

noncomputable section

/-- A052582: a(n) = 2*n*n!.

Offset 0, canonical program `A052582.P2362601802302292355`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*n!` (program `A052582.P2362601802302292355`, by `A052582.P2362601802302292355.correct`). Lean does not check the parsing of the name. -/
def A052582 (n : ℕ) : ℤ :=
  (A052582.P2362601802302292355.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*n!` (program `A052582.P2362601802302292355`, by `A052582.P2362601802302292355.correct`). Lean does not check the parsing of the name. -/
def A052582.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A052589.P15167345839042951927

`(2^n-1)*n!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A052589.P15167345839042951927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - 1) * (Nat.factorial n : ℤ)

end

end A052589.P15167345839042951927

noncomputable section

/-- A052589: a(n) = (2^n - 1)*n!.

Offset 0, canonical program `A052589.P15167345839042951927`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n-1)*n!` (program `A052589.P15167345839042951927`, by `A052589.P15167345839042951927.correct`). Lean does not check the parsing of the name. -/
def A052589 (n : ℕ) : ℤ :=
  A052589.P15167345839042951927.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n-1)*n!` (program `A052589.P15167345839042951927`, by `A052589.P15167345839042951927.correct`). Lean does not check the parsing of the name. -/
def A052589.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A052626.P13392828055149183403

`(2^n+2)*n!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A052626.P13392828055149183403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 ^ n + 2) * Nat.factorial n

end

end A052626.P13392828055149183403

noncomputable section

/-- A052626: (2^n+2)*n!.

Offset 0, canonical program `A052626.P13392828055149183403`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n+2)*n!` (program `A052626.P13392828055149183403`, by `A052626.P13392828055149183403.correct`). Lean does not check the parsing of the name. -/
def A052626 (n : ℕ) : ℤ :=
  (A052626.P13392828055149183403.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n+2)*n!` (program `A052626.P13392828055149183403`, by `A052626.P13392828055149183403.correct`). Lean does not check the parsing of the name. -/
def A052626.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A052673.P15565453557510334595

`3*n*n!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A052673.P15565453557510334595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n * Nat.factorial n)

end

end A052673.P15565453557510334595

noncomputable section

/-- A052673: a(n) = 3*n*n!.

Offset 0, canonical program `A052673.P15565453557510334595`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n*n!` (program `A052673.P15565453557510334595`, by `A052673.P15565453557510334595.correct`). Lean does not check the parsing of the name. -/
def A052673 (n : ℕ) : ℤ :=
  (A052673.P15565453557510334595.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n*n!` (program `A052673.P15565453557510334595`, by `A052673.P15565453557510334595.correct`). Lean does not check the parsing of the name. -/
def A052673.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A052762.P17910098005209637758

`n*(n-1)*(n-2)*(n-3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A052762.P17910098005209637758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (((n : ℤ) - 1) * (((n : ℤ) - 2) * ((n : ℤ) - 3)))

end

end A052762.P17910098005209637758

noncomputable section

/-- A052762: Products of 4 consecutive integers: a(n) = n*(n-1)*(n-2)*(n-3).

Offset 0, canonical program `A052762.P17910098005209637758`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n-1)*(n-2)*(n-3)` (program `A052762.P17910098005209637758`, by `A052762.P17910098005209637758.correct`). Lean does not check the parsing of the name. -/
def A052762 (n : ℕ) : ℤ :=
  A052762.P17910098005209637758.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n-1)*(n-2)*(n-3)` (program `A052762.P17910098005209637758`, by `A052762.P17910098005209637758.correct`). Lean does not check the parsing of the name. -/
def A052762.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A052898.P2027629699889820397

`2*n!+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A052898.P2027629699889820397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.factorial n + 1

end

end A052898.P2027629699889820397

noncomputable section

/-- A052898: a(n) = 2*n! + 1.

Offset 0, canonical program `A052898.P2027629699889820397`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n!+1` (program `A052898.P2027629699889820397`, by `A052898.P2027629699889820397.correct`). Lean does not check the parsing of the name. -/
def A052898 (n : ℕ) : ℤ :=
  (A052898.P2027629699889820397.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n!+1` (program `A052898.P2027629699889820397`, by `A052898.P2027629699889820397.correct`). Lean does not check the parsing of the name. -/
def A052898.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A052920.P10176569915456252614

`a(n-3)+a(n-5)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A052920.P10176569915456252614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 1, 0] fun n a =>
  a (n - 3) + a (n - 5)

end

end A052920.P10176569915456252614

noncomputable section

/-- A052920: a(n) = a(n-3) + a(n-5) with initial values 1,0,0,1,0.

Offset 0, canonical program `A052920.P10176569915456252614`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-3)+a(n-5)` (program `A052920.P10176569915456252614`, by `A052920.P10176569915456252614.correct`). Lean does not check the parsing of the name. -/
def A052920 (n : ℕ) : ℤ :=
  (A052920.P10176569915456252614.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-3)+a(n-5)` (program `A052920.P10176569915456252614`, by `A052920.P10176569915456252614.correct`). Lean does not check the parsing of the name. -/
def A052920.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A052944.P932172307700337683

`2^n+n-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A052944.P932172307700337683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + ((n : ℤ) - 1)

end

end A052944.P932172307700337683

noncomputable section

/-- A052944: a(n) = 2^n + n - 1.

Offset 0, canonical program `A052944.P932172307700337683`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+n-1` (program `A052944.P932172307700337683`, by `A052944.P932172307700337683.correct`). Lean does not check the parsing of the name. -/
def A052944 (n : ℕ) : ℤ :=
  A052944.P932172307700337683.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+n-1` (program `A052944.P932172307700337683`, by `A052944.P932172307700337683.correct`). Lean does not check the parsing of the name. -/
def A052944.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A052984.P4855201715455089674

`5*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A052984.P4855201715455089674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  5 * a (n - 1) - 2 * a (n - 2)

end

end A052984.P4855201715455089674

noncomputable section

/-- A052984: a(n) = 5*a(n-1) - 2*a(n-2) for n>1, with a(0) = 1, a(1) = 3.

Offset 0, canonical program `A052984.P4855201715455089674`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)-2*a(n-2)` (program `A052984.P4855201715455089674`, by `A052984.P4855201715455089674.correct`). Lean does not check the parsing of the name. -/
def A052984 (n : ℕ) : ℤ :=
  A052984.P4855201715455089674.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)-2*a(n-2)` (program `A052984.P4855201715455089674`, by `A052984.P4855201715455089674.correct`). Lean does not check the parsing of the name. -/
def A052984.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A052993.P1360707438407566205

`a(n-1)+3*a(n-2)-3*a(n-3)` with `a(0)=1, a(1)=1, a(2)=4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A052993.P1360707438407566205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  a (n - 1) + 3 * a (n - 2) - 3 * a (n - 3)

end

end A052993.P1360707438407566205

noncomputable section

/-- A052993: a(n) = a(n-1) + 3*a(n-2) - 3*a(n-3), with a(0)=a(1)=1, a(2)=4.

Offset 0, canonical program `A052993.P1360707438407566205`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)-3*a(n-3)` (program `A052993.P1360707438407566205`, by `A052993.P1360707438407566205.correct`). Lean does not check the parsing of the name. -/
def A052993 (n : ℕ) : ℤ :=
  A052993.P1360707438407566205.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)-3*a(n-3)` (program `A052993.P1360707438407566205`, by `A052993.P1360707438407566205.correct`). Lean does not check the parsing of the name. -/
def A052993.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A053088.P18334695315146648361

`3*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=0, a(2)=3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A053088.P18334695315146648361
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 3] fun n a =>
  3 * a (n - 2) + 2 * a (n - 3)

end

end A053088.P18334695315146648361

noncomputable section

/-- A053088: a(n) = 3*a(n-2) + 2*a(n-3) for n > 2, a(0)=1, a(1)=0, a(2)=3.

Offset 0, canonical program `A053088.P18334695315146648361`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-2)+2*a(n-3)` (program `A053088.P18334695315146648361`, by `A053088.P18334695315146648361.correct`). Lean does not check the parsing of the name. -/
def A053088 (n : ℕ) : ℤ :=
  (A053088.P18334695315146648361.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-2)+2*a(n-3)` (program `A053088.P18334695315146648361`, by `A053088.P18334695315146648361.correct`). Lean does not check the parsing of the name. -/
def A053088.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A053428.P4701261003981224262

`a(n-1)+20*a(n-2)` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A053428.P4701261003981224262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + 20 * a (n - 2)

end

end A053428.P4701261003981224262

noncomputable section

/-- A053428: a(n) = a(n-1) + 20*a(n-2), n >= 2; a(0)=1, a(1)=1.

Offset 0, canonical program `A053428.P4701261003981224262`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+20*a(n-2)` (program `A053428.P4701261003981224262`, by `A053428.P4701261003981224262.correct`). Lean does not check the parsing of the name. -/
def A053428 (n : ℕ) : ℤ :=
  (A053428.P4701261003981224262.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+20*a(n-2)` (program `A053428.P4701261003981224262`, by `A053428.P4701261003981224262.correct`). Lean does not check the parsing of the name. -/
def A053428.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A053573.P7599293254440413737

`5*a(n-1)+14*a(n-2)` with `a(0)=1, a(1)=5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A053573.P7599293254440413737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  5 * a (n - 1) + 14 * a (n - 2)

end

end A053573.P7599293254440413737

noncomputable section

/-- A053573: a(n) = 5*a(n-1) + 14*a(n-2), a(0)=1, a(1)=5.

Offset 0, canonical program `A053573.P7599293254440413737`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)+14*a(n-2)` (program `A053573.P7599293254440413737`, by `A053573.P7599293254440413737.correct`). Lean does not check the parsing of the name. -/
def A053573 (n : ℕ) : ℤ :=
  (A053573.P7599293254440413737.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)+14*a(n-2)` (program `A053573.P7599293254440413737`, by `A053573.P7599293254440413737.correct`). Lean does not check the parsing of the name. -/
def A053573.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A053698.P4352874650226156753

`n^3+n²+n+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A053698.P4352874650226156753
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 + n ^ 2 + (n + 1)

end

end A053698.P4352874650226156753

noncomputable section

/-- A053698: a(n) = n^3 + n^2 + n + 1.

Offset 0, canonical program `A053698.P4352874650226156753`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3+n²+n+1` (program `A053698.P4352874650226156753`, by `A053698.P4352874650226156753.correct`). Lean does not check the parsing of the name. -/
def A053698 (n : ℕ) : ℤ :=
  (A053698.P4352874650226156753.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3+n²+n+1` (program `A053698.P4352874650226156753`, by `A053698.P4352874650226156753.correct`). Lean does not check the parsing of the name. -/
def A053698.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A053717.P12353416386164975251

`n^7+n^6+n^5+n^4+n^3+n²+n+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A053717.P12353416386164975251
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 7 + n ^ 6 + n ^ 5 + n ^ 4 + n ^ 3 + n ^ 2 + (n + 1)

end

end A053717.P12353416386164975251

noncomputable section

/-- A053717: a(n) = n^7 + n^6 + n^5 + n^4 + n^3 + n^2 + n + 1.

Offset 0, canonical program `A053717.P12353416386164975251`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^7+n^6+n^5+n^4+n^3+n²+n+1` (program `A053717.P12353416386164975251`, by `A053717.P12353416386164975251.correct`). Lean does not check the parsing of the name. -/
def A053717 (n : ℕ) : ℤ :=
  (A053717.P12353416386164975251.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^7+n^6+n^5+n^4+n^3+n²+n+1` (program `A053717.P12353416386164975251`, by `A053717.P12353416386164975251.correct`). Lean does not check the parsing of the name. -/
def A053717.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A053755.P11748163540145338459

`4*n²+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A053755.P11748163540145338459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n ^ 2 + 1

end

end A053755.P11748163540145338459

noncomputable section

/-- A053755: a(n) = 4*n^2 + 1.

Offset 0, canonical program `A053755.P11748163540145338459`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n²+1` (program `A053755.P11748163540145338459`, by `A053755.P11748163540145338459.correct`). Lean does not check the parsing of the name. -/
def A053755 (n : ℕ) : ℤ :=
  (A053755.P11748163540145338459.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n²+1` (program `A053755.P11748163540145338459`, by `A053755.P11748163540145338459.correct`). Lean does not check the parsing of the name. -/
def A053755.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A053756.P11836168339049306794

`a(a(n-3))+a(n-a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A053756.P11836168339049306794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (a (n - 3)) + a (n - a (n - 3))

end

end A053756.P11836168339049306794

noncomputable section

/-- A053756: a(n)=a(a(n-3))+a(n-a(n-3)) if n>2 otherwise a(n)=1.

Offset 0, canonical program `A053756.P11836168339049306794`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-3))+a(n-a(n-3))` (program `A053756.P11836168339049306794`, by `A053756.P11836168339049306794.correct`). Lean does not check the parsing of the name. -/
def A053756 (n : ℕ) : ℤ :=
  (A053756.P11836168339049306794.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-3))+a(n-a(n-3))` (program `A053756.P11836168339049306794`, by `A053756.P11836168339049306794.correct`). Lean does not check the parsing of the name. -/
def A053756.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A053817.P4091873377956979000

`n*(a(n-1)+n)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A053817.P4091873377956979000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * (a (n - 1) + n)

end

end A053817.P4091873377956979000

noncomputable section

/-- A053817: a(0)=1, a(n) = n*(a(n-1) + n).

Offset 0, canonical program `A053817.P4091873377956979000`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(a(n-1)+n)` (program `A053817.P4091873377956979000`, by `A053817.P4091873377956979000.correct`). Lean does not check the parsing of the name. -/
def A053817 (n : ℕ) : ℤ :=
  (A053817.P4091873377956979000.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(a(n-1)+n)` (program `A053817.P4091873377956979000`, by `A053817.P4091873377956979000.correct`). Lean does not check the parsing of the name. -/
def A053817.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A053871.P13566102203196455648

`2*(n-1)*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A053871.P13566102203196455648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  2 * (((n : ℤ) - 1) * (a (n - 1) + a (n - 2)))

end

end A053871.P13566102203196455648

noncomputable section

/-- A053871: a(n) = 2*(n-1)*(a(n-1) + a(n-2)), starting a(0) = 1; a(1) = 0.

Offset 0, canonical program `A053871.P13566102203196455648`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n-1)*(a(n-1)+a(n-2))` (program `A053871.P13566102203196455648`, by `A053871.P13566102203196455648.correct`). Lean does not check the parsing of the name. -/
def A053871 (n : ℕ) : ℤ :=
  A053871.P13566102203196455648.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n-1)*(a(n-1)+a(n-2))` (program `A053871.P13566102203196455648`, by `A053871.P13566102203196455648.correct`). Lean does not check the parsing of the name. -/
def A053871.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A053983.P1270004538028369567

`(2*n-1)*a(n-1)-a(n-2)` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A053983.P1270004538028369567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((2 * n : ℤ) - 1) * a (n - 1) - a (n - 2)

end

end A053983.P1270004538028369567

noncomputable section

/-- A053983: a(n) = (2*n-1)*a(n-1) - a(n-2), a(0)=a(1)=1.

Offset 0, canonical program `A053983.P1270004538028369567`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-1)*a(n-1)-a(n-2)` (program `A053983.P1270004538028369567`, by `A053983.P1270004538028369567.correct`). Lean does not check the parsing of the name. -/
def A053983 (n : ℕ) : ℤ :=
  A053983.P1270004538028369567.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-1)*a(n-1)-a(n-2)` (program `A053983.P1270004538028369567`, by `A053983.P1270004538028369567.correct`). Lean does not check the parsing of the name. -/
def A053983.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A053984.P7858531212643035131

`(2*n-1)*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A053984.P7858531212643035131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((2 * n : ℤ) - 1) * a (n - 1) - a (n - 2)

end

end A053984.P7858531212643035131

noncomputable section

/-- A053984: a(n) = (2*n-1)*a(n-1) - a(n-2), a(0) = 0, a(1) = 1.

Offset 0, canonical program `A053984.P7858531212643035131`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-1)*a(n-1)-a(n-2)` (program `A053984.P7858531212643035131`, by `A053984.P7858531212643035131.correct`). Lean does not check the parsing of the name. -/
def A053984 (n : ℕ) : ℤ :=
  A053984.P7858531212643035131.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-1)*a(n-1)-a(n-2)` (program `A053984.P7858531212643035131`, by `A053984.P7858531212643035131.correct`). Lean does not check the parsing of the name. -/
def A053984.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A047455.P15082432495186565521

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=10`
-/

namespace A047455.P15082432495186565521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 4, 10] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047455.P15082432495186565521

noncomputable section

/-- A047455: Numbers that are congruent to {2, 3, 4} mod 8.

Offset 1, canonical program `A047455.P15082432495186565521`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047455 (n : ℕ) : ℤ :=
  A047455.P15082432495186565521.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047455.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047456.P2524675809519869810

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=4, a(4)=8`
-/

namespace A047456.P2524675809519869810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3, 4, 8] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047456.P2524675809519869810

noncomputable section

/-- A047456: Numbers that are congruent to {0, 2, 3, 4} mod 8.

Offset 1, canonical program `A047456.P2524675809519869810`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047456 (n : ℕ) : ℤ :=
  A047456.P2524675809519869810.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047456.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047458.P4067971133589386935

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=4, a(3)=8`
-/

namespace A047458.P4067971133589386935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 4, 8] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047458.P4067971133589386935

noncomputable section

/-- A047458: Numbers that are congruent to {0, 3, 4} mod 8.

Offset 1, canonical program `A047458.P4067971133589386935`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047458 (n : ℕ) : ℤ :=
  A047458.P4067971133589386935.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047458.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047459.P10654649881041469820

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=9`
-/

namespace A047459.P10654649881041469820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4, 9] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047459.P10654649881041469820

noncomputable section

/-- A047459: Numbers that are congruent to {1, 3, 4} mod 8.

Offset 1, canonical program `A047459.P10654649881041469820`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047459 (n : ℕ) : ℤ :=
  A047459.P10654649881041469820.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047459.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047460.P8647667078672295826

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=4, a(4)=8`
-/

namespace A047460.P8647667078672295826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 4, 8] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047460.P8647667078672295826

noncomputable section

/-- A047460: Numbers that are congruent to {0, 1, 3, 4} mod 8.

Offset 1, canonical program `A047460.P8647667078672295826`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047460 (n : ℕ) : ℤ :=
  A047460.P8647667078672295826.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047460.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047461.P3610978287004372595

`a(n-2)+8` with `a(0)=1, a(1)=4`
-/

namespace A047461.P3610978287004372595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + 8

end

end A047461.P3610978287004372595

noncomputable section

/-- A047461: Numbers that are congruent to {1, 4} mod 8.

Offset 1, canonical program `A047461.P3610978287004372595`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047461 (n : ℕ) : ℤ :=
  (A047461.P3610978287004372595.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047461.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047462.P6215231876995743908

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=8`
-/

namespace A047462.P6215231876995743908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 8] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047462.P6215231876995743908

noncomputable section

/-- A047462: Numbers that are congruent to {0, 1, 4} mod 8.

Offset 1, canonical program `A047462.P6215231876995743908`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047462 (n : ℕ) : ℤ :=
  A047462.P6215231876995743908.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047462.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047464.P6717978172904549702

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=4, a(3)=8`
-/

namespace A047464.P6717978172904549702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 4, 8] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047464.P6717978172904549702

noncomputable section

/-- A047464: Numbers that are congruent to {0, 2, 4} mod 8.

Offset 1, canonical program `A047464.P6717978172904549702`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047464 (n : ℕ) : ℤ :=
  A047464.P6717978172904549702.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047464.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047465.P14830646620749762541

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=9`
-/

namespace A047465.P14830646620749762541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 9] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047465.P14830646620749762541

noncomputable section

/-- A047465: Numbers that are congruent to {1, 2, 4} mod 8.

Offset 1, canonical program `A047465.P14830646620749762541`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047465 (n : ℕ) : ℤ :=
  A047465.P14830646620749762541.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047465.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047466.P14048993821726217485

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4, a(4)=8`
-/

namespace A047466.P14048993821726217485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 4, 8] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047466.P14048993821726217485

noncomputable section

/-- A047466: Numbers that are congruent to {0, 1, 2, 4} mod 8.

Offset 1, canonical program `A047466.P14048993821726217485`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047466 (n : ℕ) : ℤ :=
  A047466.P14048993821726217485.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047466.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047467.P7017921437142095904

`floor(8/3*floor(3*n/2))`
-/

namespace A047467.P7017921437142095904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(8 : ℚ) / 3 * (⌊3 * ((n : ℚ) / 2)⌋ : ℚ)⌋

end

end A047467.P7017921437142095904

noncomputable section

/-- A047467: Numbers that are congruent to {0, 2} mod 8.

Offset 1, canonical program `A047467.P7017921437142095904`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047467 (n : ℕ) : ℤ :=
  A047467.P7017921437142095904.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047467.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047468.P1514813553711625871

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=9`
-/

namespace A047468.P1514813553711625871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 9] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3)

end

end A047468.P1514813553711625871

noncomputable section

/-- A047468: Numbers that are congruent to {1, 2} mod 8.

Offset 1, canonical program `A047468.P1514813553711625871`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047468 (n : ℕ) : ℤ :=
  A047468.P1514813553711625871.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047468.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047469.P13827644475869459154

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=8`
-/

namespace A047469.P13827644475869459154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 8] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047469.P13827644475869459154

noncomputable section

/-- A047469: Numbers that are congruent to {0, 1, 2} mod 8.

Offset 1, canonical program `A047469.P13827644475869459154`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047469 (n : ℕ) : ℤ :=
  A047469.P13827644475869459154.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047469.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047470.P1019282856611289580

`a(n-1)+4+(-1)^n` with `a(0)=0`
-/

namespace A047470.P1019282856611289580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (4 + (-1) ^ n)

end

end A047470.P1019282856611289580

noncomputable section

/-- A047470: Numbers that are congruent to {0, 3} mod 8.

Offset 1, canonical program `A047470.P1019282856611289580`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047470 (n : ℕ) : ℤ :=
  A047470.P1019282856611289580.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047470.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047472.P3931337028714526916

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=8`
-/

namespace A047472.P3931337028714526916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 8] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047472.P3931337028714526916

noncomputable section

/-- A047472: Numbers that are congruent to {0, 1, 3} (mod 8).

Offset 1, canonical program `A047472.P3931337028714526916`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047472 (n : ℕ) : ℤ :=
  A047472.P3931337028714526916.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047472.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047473.P5304512886969769970

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=2, a(1)=3, a(2)=10`
-/

namespace A047473.P5304512886969769970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 10] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3)

end

end A047473.P5304512886969769970

noncomputable section

/-- A047473: Numbers that are congruent to {2, 3} mod 8.

Offset 1, canonical program `A047473.P5304512886969769970`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047473 (n : ℕ) : ℤ :=
  A047473.P5304512886969769970.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047473.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047474.P14550689355712176274

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=8`
-/

namespace A047474.P14550689355712176274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3, 8] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047474.P14550689355712176274

noncomputable section

/-- A047474: Numbers that are congruent to {0, 2, 3} mod 8.

Offset 1, canonical program `A047474.P14550689355712176274`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047474 (n : ℕ) : ℤ :=
  A047474.P14550689355712176274.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047474.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047475.P832820904589428235

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=9`
-/

namespace A047475.P832820904589428235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 9] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047475.P832820904589428235

noncomputable section

/-- A047475: Numbers that are congruent to {1, 2, 3} mod 8.

Offset 1, canonical program `A047475.P832820904589428235`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047475 (n : ℕ) : ℤ :=
  A047475.P832820904589428235.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047475.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047476.P10062506433554170592

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=8`
-/

namespace A047476.P10062506433554170592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 8] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047476.P10062506433554170592

noncomputable section

/-- A047476: Numbers that are congruent to {0, 1, 2, 3} mod 8.

Offset 1, canonical program `A047476.P10062506433554170592`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047476 (n : ℕ) : ℤ :=
  A047476.P10062506433554170592.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047476.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047477.P10461537204889475643

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=5, a(2)=7, a(3)=8`
-/

namespace A047477.P10461537204889475643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5, 7, 8] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047477.P10461537204889475643

noncomputable section

/-- A047477: Numbers that are congruent to {0, 5, 7} mod 8.

Offset 1, canonical program `A047477.P10461537204889475643`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047477 (n : ℕ) : ℤ :=
  A047477.P10461537204889475643.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047477.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047478.P17631051554306053359

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=7, a(3)=9`
-/

namespace A047478.P17631051554306053359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 7, 9] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047478.P17631051554306053359

noncomputable section

/-- A047478: Numbers that are congruent to {1, 5, 7} mod 8.

Offset 1, canonical program `A047478.P17631051554306053359`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047478 (n : ℕ) : ℤ :=
  A047478.P17631051554306053359.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047478.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047479.P2028629464031457421

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=7, a(4)=8`
-/

namespace A047479.P2028629464031457421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5, 7, 8] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047479.P2028629464031457421

noncomputable section

/-- A047479: Numbers that are congruent to {0, 1, 5, 7} mod 8.

Offset 1, canonical program `A047479.P2028629464031457421`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047479 (n : ℕ) : ℤ :=
  A047479.P2028629464031457421.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047479.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047480.P4090290522917713436

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=2, a(1)=5, a(2)=7, a(3)=10`
-/

namespace A047480.P4090290522917713436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 7, 10] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047480.P4090290522917713436

noncomputable section

/-- A047480: Numbers that are congruent to {2, 5, 7} mod 8.

Offset 1, canonical program `A047480.P4090290522917713436`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047480 (n : ℕ) : ℤ :=
  A047480.P4090290522917713436.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047480.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047481.P686013781340458100

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=5, a(3)=7`
-/

namespace A047481.P686013781340458100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 5, 7] fun n a =>
  2 * a (n - 1) - 2 * a (n - 2) + 2 * a (n - 3) - a (n - 4)

end

end A047481.P686013781340458100

noncomputable section

/-- A047481: Numbers that are congruent to {0, 2, 5, 7} mod 8.

Offset 1, canonical program `A047481.P686013781340458100`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047481 (n : ℕ) : ℤ :=
  A047481.P686013781340458100.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047481.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047482.P6832726429430952481

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=7, a(4)=9`
-/

namespace A047482.P6832726429430952481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5, 7, 9] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047482.P6832726429430952481

noncomputable section

/-- A047482: Numbers that are congruent to {1, 2, 5, 7} mod 8.

Offset 1, canonical program `A047482.P6832726429430952481`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047482 (n : ℕ) : ℤ :=
  A047482.P6832726429430952481.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047482.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047483.P2292397869427216639

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=5, a(4)=7, a(5)=8`
-/

namespace A047483.P2292397869427216639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 5, 7, 8] fun n a =>
  a (n - 1) + a (n - 5) - a (n - 6)

end

end A047483.P2292397869427216639

noncomputable section

/-- A047483: Numbers that are congruent to {0, 1, 2, 5, 7} mod 8.

Offset 1, canonical program `A047483.P2292397869427216639`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047483 (n : ℕ) : ℤ :=
  A047483.P2292397869427216639.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047483.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047484.P4477518445296749167

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=3, a(1)=5, a(2)=7, a(3)=11`
-/

namespace A047484.P4477518445296749167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 5, 7, 11] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047484.P4477518445296749167

noncomputable section

/-- A047484: Numbers that are congruent to {3, 5, 7} mod 8.

Offset 1, canonical program `A047484.P4477518445296749167`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047484 (n : ℕ) : ℤ :=
  A047484.P4477518445296749167.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047484.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047485.P2956744236727452494

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=3, a(2)=5, a(3)=7, a(4)=8`
-/

namespace A047485.P2956744236727452494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 5, 7, 8] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047485.P2956744236727452494

noncomputable section

/-- A047485: Numbers that are congruent to {0, 3, 5, 7} mod 8.

Offset 1, canonical program `A047485.P2956744236727452494`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047485 (n : ℕ) : ℤ :=
  A047485.P2956744236727452494.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047485.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047486.P6506762595393263252

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=5, a(4)=7, a(5)=8`
-/

namespace A047486.P6506762595393263252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 5, 7, 8] fun n a =>
  a (n - 1) + a (n - 5) - a (n - 6)

end

end A047486.P6506762595393263252

noncomputable section

/-- A047486: Numbers that are congruent to {0, 1, 3, 5, 7} mod 8.

Offset 1, canonical program `A047486.P6506762595393263252`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047486 (n : ℕ) : ℤ :=
  A047486.P6506762595393263252.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047486.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047487.P3380888497270621365

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=2, a(1)=3, a(2)=5, a(3)=7, a(4)=10`
-/

namespace A047487.P3380888497270621365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 5, 7, 10] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047487.P3380888497270621365

noncomputable section

/-- A047487: Numbers that are congruent to {2, 3, 5, 7} mod 8.

Offset 1, canonical program `A047487.P3380888497270621365`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047487 (n : ℕ) : ℤ :=
  A047487.P3380888497270621365.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047487.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047488.P1717525073074903671

`a(n-5)+8` with `a(0)=0, a(1)=2, a(2)=3, a(3)=5, a(4)=7`
-/

namespace A047488.P1717525073074903671
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 5, 7] fun n a =>
  a (n - 5) + 8

end

end A047488.P1717525073074903671

noncomputable section

/-- A047488: Numbers that are congruent to {0, 2, 3, 5, 7} mod 8.

Offset 1, canonical program `A047488.P1717525073074903671`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047488 (n : ℕ) : ℤ :=
  (A047488.P1717525073074903671.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047488.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047491.P6888451549588623266

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=4, a(1)=5, a(2)=7, a(3)=12`
-/

namespace A047491.P6888451549588623266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 5, 7, 12] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047491.P6888451549588623266

noncomputable section

/-- A047491: Numbers that are congruent to {4, 5, 7} mod 8.

Offset 1, canonical program `A047491.P6888451549588623266`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047491 (n : ℕ) : ℤ :=
  A047491.P6888451549588623266.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047491.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047492.P2532546162420105978

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=4, a(2)=5, a(3)=7, a(4)=8`
-/

namespace A047492.P2532546162420105978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 5, 7, 8] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047492.P2532546162420105978

noncomputable section

/-- A047492: Numbers that are congruent to {0, 4, 5, 7} mod 8.

Offset 1, canonical program `A047492.P2532546162420105978`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047492 (n : ℕ) : ℤ :=
  A047492.P2532546162420105978.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047492.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047493.P13149876657161254949

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=4, a(2)=5, a(3)=7, a(4)=9`
-/

namespace A047493.P13149876657161254949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 5, 7, 9] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047493.P13149876657161254949

noncomputable section

/-- A047493: Numbers that are congruent to {1, 4, 5, 7} mod 8.

Offset 1, canonical program `A047493.P13149876657161254949`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047493 (n : ℕ) : ℤ :=
  A047493.P13149876657161254949.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047493.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047494.P12379078228013320658

`a(n-5)+8` with `a(0)=0, a(1)=1, a(2)=4, a(3)=5, a(4)=7`
-/

namespace A047494.P12379078228013320658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4, 5, 7] fun n a =>
  a (n - 5) + 8

end

end A047494.P12379078228013320658

noncomputable section

/-- A047494: Numbers that are congruent to {0, 1, 4, 5, 7} mod 8.

Offset 1, canonical program `A047494.P12379078228013320658`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047494 (n : ℕ) : ℤ :=
  (A047494.P12379078228013320658.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047494.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047495.P12587989395948692603

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=2, a(1)=4, a(2)=5, a(3)=7`
-/

namespace A047495.P12587989395948692603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 5, 7] fun n a =>
  2 * a (n - 1) - 2 * a (n - 2) + 2 * a (n - 3) - a (n - 4)

end

end A047495.P12587989395948692603

noncomputable section

/-- A047495: Numbers that are congruent to {2, 4, 5, 7} mod 8.

Offset 1, canonical program `A047495.P12587989395948692603`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047495 (n : ℕ) : ℤ :=
  A047495.P12587989395948692603.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047495.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047496.P9702353025773356187

`a(n-5)+8` with `a(0)=0, a(1)=2, a(2)=4, a(3)=5, a(4)=7`
-/

namespace A047496.P9702353025773356187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4, 5, 7] fun n a =>
  a (n - 5) + 8

end

end A047496.P9702353025773356187

noncomputable section

/-- A047496: Numbers that are congruent to {0, 2, 4, 5, 7} mod 8.

Offset 1, canonical program `A047496.P9702353025773356187`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047496 (n : ℕ) : ℤ :=
  (A047496.P9702353025773356187.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047496.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047497.P1829998058557343243

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=5, a(4)=7, a(5)=9`
-/

namespace A047497.P1829998058557343243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 5, 7, 9] fun n a =>
  a (n - 1) + a (n - 5) - a (n - 6)

end

end A047497.P1829998058557343243

noncomputable section

/-- A047497: Numbers that are congruent to {1, 2, 4, 5, 7} mod 8.

Offset 1, canonical program `A047497.P1829998058557343243`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047497 (n : ℕ) : ℤ :=
  A047497.P1829998058557343243.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047497.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047498.P7911744704374876001

`a(n-1)+a(n-6)-a(n-7)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4, a(4)=5, a(5)=7, a(6)=8`
-/

namespace A047498.P7911744704374876001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 4, 5, 7, 8] fun n a =>
  a (n - 1) + a (n - 6) - a (n - 7)

end

end A047498.P7911744704374876001

noncomputable section

/-- A047498: Numbers that are congruent to {0, 1, 2, 4, 5, 7} mod 8.

Offset 1, canonical program `A047498.P7911744704374876001`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047498 (n : ℕ) : ℤ :=
  A047498.P7911744704374876001.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047498.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047499.P371559451223485969

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=3, a(1)=4, a(2)=5, a(3)=7, a(4)=11`
-/

namespace A047499.P371559451223485969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4, 5, 7, 11] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047499.P371559451223485969

noncomputable section

/-- A047499: Numbers that are congruent to {3, 4, 5, 7} mod 8.

Offset 1, canonical program `A047499.P371559451223485969`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047499 (n : ℕ) : ℤ :=
  A047499.P371559451223485969.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047499.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047500.P18380498252247073229

`a(n-5)+8` with `a(0)=0, a(1)=3, a(2)=4, a(3)=5, a(4)=7`
-/

namespace A047500.P18380498252247073229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 4, 5, 7] fun n a =>
  a (n - 5) + 8

end

end A047500.P18380498252247073229

noncomputable section

/-- A047500: Numbers that are congruent to {0, 3, 4, 5, 7} mod 8.

Offset 1, canonical program `A047500.P18380498252247073229`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047500 (n : ℕ) : ℤ :=
  (A047500.P18380498252247073229.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047500.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047502.P7391868659068143215

`a(n-5)+8` with `a(0)=2, a(1)=3, a(2)=4, a(3)=5, a(4)=7`
-/

namespace A047502.P7391868659068143215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 4, 5, 7] fun n a =>
  a (n - 5) + 8

end

end A047502.P7391868659068143215

noncomputable section

/-- A047502: Numbers that are congruent to {2, 3, 4, 5, 7} mod 8.

Offset 1, canonical program `A047502.P7391868659068143215`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047502 (n : ℕ) : ℤ :=
  (A047502.P7391868659068143215.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047502.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047503.P11038004123419803918

`a(n-1)+a(n-6)-a(n-7)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=7, a(6)=8`
-/

namespace A047503.P11038004123419803918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3, 4, 5, 7, 8] fun n a =>
  a (n - 1) + a (n - 6) - a (n - 7)

end

end A047503.P11038004123419803918

noncomputable section

/-- A047503: Numbers that are congruent to {0, 2, 3, 4, 5, 7} mod 8.

Offset 1, canonical program `A047503.P11038004123419803918`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047503 (n : ℕ) : ℤ :=
  A047503.P11038004123419803918.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047503.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047505.P9395025403188570058

`a(n-1)+a(n-6)-a(n-7)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=6, a(5)=7, a(6)=8`
-/

namespace A047505.P9395025403188570058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 6, 7, 8] fun n a =>
  a (n - 1) + a (n - 6) - a (n - 7)

end

end A047505.P9395025403188570058

noncomputable section

/-- A047505: Numbers that are congruent to {0, 1, 2, 3, 6, 7} mod 8.

Offset 1, canonical program `A047505.P9395025403188570058`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047505 (n : ℕ) : ℤ :=
  A047505.P9395025403188570058.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047505.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047506.P4218975473329994099

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=4, a(1)=6, a(2)=7, a(3)=12`
-/

namespace A047506.P4218975473329994099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 6, 7, 12] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047506.P4218975473329994099

noncomputable section

/-- A047506: Numbers that are congruent to {4, 6, 7} mod 8.

Offset 1, canonical program `A047506.P4218975473329994099`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047506 (n : ℕ) : ℤ :=
  A047506.P4218975473329994099.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047506.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047507.P12897133955374803916

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=4, a(2)=6, a(3)=7, a(4)=8`
-/

namespace A047507.P12897133955374803916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 6, 7, 8] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047507.P12897133955374803916

noncomputable section

/-- A047507: Numbers that are congruent to {0, 4, 6, 7} mod 8.

Offset 1, canonical program `A047507.P12897133955374803916`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047507 (n : ℕ) : ℤ :=
  A047507.P12897133955374803916.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047507.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047508.P11386601373324494707

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=6, a(3)=7`
-/

namespace A047508.P11386601373324494707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 6, 7] fun n a =>
  2 * a (n - 1) - 2 * a (n - 2) + 2 * a (n - 3) - a (n - 4)

end

end A047508.P11386601373324494707

noncomputable section

/-- A047508: Numbers that are congruent to {1, 4, 6, 7} mod 8.

Offset 1, canonical program `A047508.P11386601373324494707`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047508 (n : ℕ) : ℤ :=
  A047508.P11386601373324494707.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047508.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047509.P2183461387045886018

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=6, a(4)=7, a(5)=8`
-/

namespace A047509.P2183461387045886018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 6, 7, 8] fun n a =>
  a (n - 1) + a (n - 5) - a (n - 6)

end

end A047509.P2183461387045886018

noncomputable section

/-- A047509: Numbers that are congruent to {0, 1, 4, 6, 7} mod 8.

Offset 1, canonical program `A047509.P2183461387045886018`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047509 (n : ℕ) : ℤ :=
  A047509.P2183461387045886018.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047509.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047510.P7612657859828749775

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=2, a(1)=4, a(2)=6, a(3)=7, a(4)=10`
-/

namespace A047510.P7612657859828749775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 6, 7, 10] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047510.P7612657859828749775

noncomputable section

/-- A047510: Numbers that are congruent to {2, 4, 6, 7} mod 8.

Offset 1, canonical program `A047510.P7612657859828749775`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047510 (n : ℕ) : ℤ :=
  A047510.P7612657859828749775.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047510.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047511.P11101609445136764814

`a(n-5)+8` with `a(0)=0, a(1)=2, a(2)=4, a(3)=6, a(4)=7`
-/

namespace A047511.P11101609445136764814
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4, 6, 7] fun n a =>
  a (n - 5) + 8

end

end A047511.P11101609445136764814

noncomputable section

/-- A047511: Numbers that are congruent to {0, 2, 4, 6, 7} mod 8.

Offset 1, canonical program `A047511.P11101609445136764814`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047511 (n : ℕ) : ℤ :=
  (A047511.P11101609445136764814.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047511.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047512.P8428612988448099202

`a(n-5)+8` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6, a(4)=7`
-/

namespace A047512.P8428612988448099202
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 6, 7] fun n a =>
  a (n - 5) + 8

end

end A047512.P8428612988448099202

noncomputable section

/-- A047512: Numbers that are congruent to {1, 2, 4, 6, 7} mod 8.

Offset 1, canonical program `A047512.P8428612988448099202`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047512 (n : ℕ) : ℤ :=
  (A047512.P8428612988448099202.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047512.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047514.P15115186754570554952

`a(n-4)+8` with `a(0)=3, a(1)=4, a(2)=6, a(3)=7`
-/

namespace A047514.P15115186754570554952
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 4, 6, 7] fun n a =>
  a (n - 4) + 8

end

end A047514.P15115186754570554952

noncomputable section

/-- A047514: Numbers that are congruent to {3, 4, 6, 7} mod 8.

Offset 1, canonical program `A047514.P15115186754570554952`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047514 (n : ℕ) : ℤ :=
  (A047514.P15115186754570554952.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047514.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047516.P16124894660910731862

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=6, a(4)=7, a(5)=9`
-/

namespace A047516.P16124894660910731862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4, 6, 7, 9] fun n a =>
  a (n - 1) + a (n - 5) - a (n - 6)

end

end A047516.P16124894660910731862

noncomputable section

/-- A047516: Numbers that are congruent to {1, 3, 4, 6, 7} mod 8.

Offset 1, canonical program `A047516.P16124894660910731862`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047516 (n : ℕ) : ℤ :=
  A047516.P16124894660910731862.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047516.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047517.P6437659765252513887

`a(n-1)+a(n-6)-a(n-7)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=4, a(4)=6, a(5)=7, a(6)=8`
-/

namespace A047517.P6437659765252513887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 4, 6, 7, 8] fun n a =>
  a (n - 1) + a (n - 6) - a (n - 7)

end

end A047517.P6437659765252513887

noncomputable section

/-- A047517: Numbers that are congruent to {0, 1, 3, 4, 6, 7} mod 8.

Offset 1, canonical program `A047517.P6437659765252513887`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047517 (n : ℕ) : ℤ :=
  A047517.P6437659765252513887.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047517.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047518.P6499211308999308267

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=6, a(4)=7, a(5)=10`
-/

namespace A047518.P6499211308999308267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 4, 6, 7, 10] fun n a =>
  a (n - 1) + a (n - 5) - a (n - 6)

end

end A047518.P6499211308999308267

noncomputable section

/-- A047518: Numbers that are congruent to {2, 3, 4, 6, 7} mod 8.

Offset 1, canonical program `A047518.P6499211308999308267`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047518 (n : ℕ) : ℤ :=
  A047518.P6499211308999308267.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047518.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047519.P7750529629312911959

`a(n-1)+a(n-6)-a(n-7)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=6, a(5)=7, a(6)=9`
-/

namespace A047519.P7750529629312911959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 6, 7, 9] fun n a =>
  a (n - 1) + a (n - 6) - a (n - 7)

end

end A047519.P7750529629312911959

noncomputable section

/-- A047519: Numbers that are congruent to {1, 2, 3, 4, 6, 7} mod 8.

Offset 1, canonical program `A047519.P7750529629312911959`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047519 (n : ℕ) : ℤ :=
  A047519.P7750529629312911959.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047519.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047522.P11200324688418318861

`a(n-2)+8` with `a(0)=1, a(1)=7`
-/

namespace A047522.P11200324688418318861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  a (n - 2) + 8

end

end A047522.P11200324688418318861

noncomputable section

/-- A047522: Numbers that are congruent to {1, 7} mod 8.

Offset 1, canonical program `A047522.P11200324688418318861`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047522 (n : ℕ) : ℤ :=
  (A047522.P11200324688418318861.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047522.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047523.P12318402663651112196

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=7, a(3)=8`
-/

namespace A047523.P12318402663651112196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 7, 8] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047523.P12318402663651112196

noncomputable section

/-- A047523: Numbers that are congruent to {0, 1, 7} mod 8.

Offset 1, canonical program `A047523.P12318402663651112196`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047523 (n : ℕ) : ℤ :=
  A047523.P12318402663651112196.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047523.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047524.P17675232096422314193

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=2, a(1)=7, a(2)=10`
-/

namespace A047524.P17675232096422314193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7, 10] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3)

end

end A047524.P17675232096422314193

noncomputable section

/-- A047524: Numbers that are congruent to {2, 7} mod 8.

Offset 1, canonical program `A047524.P17675232096422314193`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047524 (n : ℕ) : ℤ :=
  A047524.P17675232096422314193.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047524.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047525.P17573797998393082123

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=7, a(3)=8`
-/

namespace A047525.P17573797998393082123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 7, 8] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047525.P17573797998393082123

noncomputable section

/-- A047525: Numbers that are congruent to {0, 2, 7} mod 8.

Offset 1, canonical program `A047525.P17573797998393082123`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047525 (n : ℕ) : ℤ :=
  A047525.P17573797998393082123.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047525.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047526.P2230499245276963845

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=9`
-/

namespace A047526.P2230499245276963845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 7, 9] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047526.P2230499245276963845

noncomputable section

/-- A047526: Numbers that are congruent to {1, 2, 7} mod 8.

Offset 1, canonical program `A047526.P2230499245276963845`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047526 (n : ℕ) : ℤ :=
  A047526.P2230499245276963845.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047526.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047527.P14874633000890813623

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=7, a(4)=8`
-/

namespace A047527.P14874633000890813623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 7, 8] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047527.P14874633000890813623

noncomputable section

/-- A047527: Numbers that are congruent to {0, 1, 2, 7} mod 8.

Offset 1, canonical program `A047527.P14874633000890813623`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047527 (n : ℕ) : ℤ :=
  A047527.P14874633000890813623.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047527.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047528.P4992725182453227388

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=7, a(3)=8`
-/

namespace A047528.P4992725182453227388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 7, 8] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047528.P4992725182453227388

noncomputable section

/-- A047528: Numbers that are congruent to {0, 3, 7} mod 8.

Offset 1, canonical program `A047528.P4992725182453227388`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047528 (n : ℕ) : ℤ :=
  A047528.P4992725182453227388.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047528.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047529.P16336853744616062901

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=9`
-/

namespace A047529.P16336853744616062901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 7, 9] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047529.P16336853744616062901

noncomputable section

/-- A047529: Numbers that are congruent to {1, 3, 7} mod 8.

Offset 1, canonical program `A047529.P16336853744616062901`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047529 (n : ℕ) : ℤ :=
  A047529.P16336853744616062901.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047529.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047530.P16263792692328828051

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=7, a(4)=8`
-/

namespace A047530.P16263792692328828051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 7, 8] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047530.P16263792692328828051

noncomputable section

/-- A047530: Numbers that are congruent to {0, 1, 3, 7} mod 8.

Offset 1, canonical program `A047530.P16263792692328828051`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047530 (n : ℕ) : ℤ :=
  A047530.P16263792692328828051.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047530.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047531.P9227716811950160486

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=2, a(1)=3, a(2)=7, a(3)=10`
-/

namespace A047531.P9227716811950160486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 7, 10] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047531.P9227716811950160486

noncomputable section

/-- A047531: Numbers that are congruent to {2, 3, 7} mod 8.

Offset 1, canonical program `A047531.P9227716811950160486`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047531 (n : ℕ) : ℤ :=
  A047531.P9227716811950160486.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047531.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047532.P245420009200530781

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=7, a(4)=8`
-/

namespace A047532.P245420009200530781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3, 7, 8] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047532.P245420009200530781

noncomputable section

/-- A047532: Numbers that are congruent to {0, 2, 3, 7} mod 8.

Offset 1, canonical program `A047532.P245420009200530781`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047532 (n : ℕ) : ℤ :=
  A047532.P245420009200530781.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047532.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047533.P4640713348671856685

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=7, a(4)=9`
-/

namespace A047533.P4640713348671856685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 7, 9] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047533.P4640713348671856685

noncomputable section

/-- A047533: Numbers that are congruent to {1, 2, 3, 7} mod 8.

Offset 1, canonical program `A047533.P4640713348671856685`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047533 (n : ℕ) : ℤ :=
  A047533.P4640713348671856685.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047533.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047534.P12596454778346887916

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=7, a(5)=8`
-/

namespace A047534.P12596454778346887916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 7, 8] fun n a =>
  a (n - 1) + a (n - 5) - a (n - 6)

end

end A047534.P12596454778346887916

noncomputable section

/-- A047534: Numbers that are congruent to {0, 1, 2, 3, 7} mod 8.

Offset 1, canonical program `A047534.P12596454778346887916`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047534 (n : ℕ) : ℤ :=
  A047534.P12596454778346887916.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047534.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047536.P8989041096543819917

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=4, a(2)=7, a(3)=8`
-/

namespace A047536.P8989041096543819917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 7, 8] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047536.P8989041096543819917

noncomputable section

/-- A047536: Numbers that are congruent to {0, 4, 7} mod 8.

Offset 1, canonical program `A047536.P8989041096543819917`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047536 (n : ℕ) : ℤ :=
  A047536.P8989041096543819917.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047536.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047537.P14017878137237612153

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=7, a(3)=9`
-/

namespace A047537.P14017878137237612153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 7, 9] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047537.P14017878137237612153

noncomputable section

/-- A047537: Numbers that are congruent to {1, 4, 7} mod 8.

Offset 1, canonical program `A047537.P14017878137237612153`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047537 (n : ℕ) : ℤ :=
  A047537.P14017878137237612153.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047537.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047538.P3663524677642670494

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=7`
-/

namespace A047538.P3663524677642670494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 7] fun n a =>
  2 * a (n - 1) - 2 * a (n - 2) + 2 * a (n - 3) - a (n - 4)

end

end A047538.P3663524677642670494

noncomputable section

/-- A047538: Numbers that are congruent to {0, 1, 4, 7} mod 8.

Offset 1, canonical program `A047538.P3663524677642670494`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047538 (n : ℕ) : ℤ :=
  A047538.P3663524677642670494.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047538.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047539.P10973814511675660227

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=2, a(1)=4, a(2)=7, a(3)=10`
-/

namespace A047539.P10973814511675660227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 7, 10] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047539.P10973814511675660227

noncomputable section

/-- A047539: Numbers that are congruent to {2, 4, 7} mod 8.

Offset 1, canonical program `A047539.P10973814511675660227`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047539 (n : ℕ) : ℤ :=
  A047539.P10973814511675660227.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047539.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047540.P9861750736372216938

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=2, a(2)=4, a(3)=7, a(4)=8`
-/

namespace A047540.P9861750736372216938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 4, 7, 8] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047540.P9861750736372216938

noncomputable section

/-- A047540: Numbers that are congruent to {0, 2, 4, 7} mod 8.

Offset 1, canonical program `A047540.P9861750736372216938`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047540 (n : ℕ) : ℤ :=
  A047540.P9861750736372216938.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047540.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047541.P7376477592260293166

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7`
-/

namespace A047541.P7376477592260293166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 7] fun n a =>
  2 * a (n - 1) - 2 * a (n - 2) + 2 * a (n - 3) - a (n - 4)

end

end A047541.P7376477592260293166

noncomputable section

/-- A047541: Numbers that are congruent to {1, 2, 4, 7} mod 8.

Offset 1, canonical program `A047541.P7376477592260293166`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047541 (n : ℕ) : ℤ :=
  A047541.P7376477592260293166.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047541.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047542.P10839817275526619879

`a(n-5)+8` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4, a(4)=7`
-/

namespace A047542.P10839817275526619879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 4, 7] fun n a =>
  a (n - 5) + 8

end

end A047542.P10839817275526619879

noncomputable section

/-- A047542: Numbers that are congruent to {0, 1, 2, 4, 7} mod 8.

Offset 1, canonical program `A047542.P10839817275526619879`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047542 (n : ℕ) : ℤ :=
  (A047542.P10839817275526619879.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047542.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047543.P3014387897190062139

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=3, a(1)=4, a(2)=7, a(3)=11`
-/

namespace A047543.P3014387897190062139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4, 7, 11] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047543.P3014387897190062139

noncomputable section

/-- A047543: Numbers that are congruent to {3, 4, 7} mod 8.

Offset 1, canonical program `A047543.P3014387897190062139`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047543 (n : ℕ) : ℤ :=
  A047543.P3014387897190062139.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047543.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047544.P7929300612826705284

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=7, a(4)=9`
-/

namespace A047544.P7929300612826705284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4, 7, 9] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047544.P7929300612826705284

noncomputable section

/-- A047544: Numbers that are congruent to {1, 3, 4, 7} mod 8.

Offset 1, canonical program `A047544.P7929300612826705284`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047544 (n : ℕ) : ℤ :=
  A047544.P7929300612826705284.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047544.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047545.P7508821267561252187

`a(n-5)+8` with `a(0)=0, a(1)=1, a(2)=3, a(3)=4, a(4)=7`
-/

namespace A047545.P7508821267561252187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 4, 7] fun n a =>
  a (n - 5) + 8

end

end A047545.P7508821267561252187

noncomputable section

/-- A047545: Numbers that are congruent to {0, 1, 3, 4, 7} mod 8.

Offset 1, canonical program `A047545.P7508821267561252187`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047545 (n : ℕ) : ℤ :=
  (A047545.P7508821267561252187.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047545.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047546.P14609007338604342687

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=7`
-/

namespace A047546.P14609007338604342687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 4, 7] fun n a =>
  2 * a (n - 1) - 2 * a (n - 2) + 2 * a (n - 3) - a (n - 4)

end

end A047546.P14609007338604342687

noncomputable section

/-- A047546: Numbers that are congruent to {2, 3, 4, 7} mod 8.

Offset 1, canonical program `A047546.P14609007338604342687`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047546 (n : ℕ) : ℤ :=
  A047546.P14609007338604342687.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047546.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047547.P6385564123392256689

`a(n-5)+8` with `a(0)=0, a(1)=2, a(2)=3, a(3)=4, a(4)=7`
-/

namespace A047547.P6385564123392256689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 4, 7] fun n a =>
  a (n - 5) + 8

end

end A047547.P6385564123392256689

noncomputable section

/-- A047547: Numbers that are congruent to {0, 2, 3, 4, 7} mod 8.

Offset 1, canonical program `A047547.P6385564123392256689`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047547 (n : ℕ) : ℤ :=
  (A047547.P6385564123392256689.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047547.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047548.P1384576552006254624

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=7, a(5)=9`
-/

namespace A047548.P1384576552006254624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 7, 9] fun n a =>
  a (n - 1) + a (n - 5) - a (n - 6)

end

end A047548.P1384576552006254624

noncomputable section

/-- A047548: Numbers that are congruent to {1, 2, 3, 4, 7} mod 8.

Offset 1, canonical program `A047548.P1384576552006254624`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047548 (n : ℕ) : ℤ :=
  A047548.P1384576552006254624.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047548.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047549.P8451162939470717005

`a(n-1)+a(n-6)-a(n-7)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=7, a(6)=8`
-/

namespace A047549.P8451162939470717005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 4, 7, 8] fun n a =>
  a (n - 1) + a (n - 6) - a (n - 7)

end

end A047549.P8451162939470717005

noncomputable section

/-- A047549: Numbers that are congruent to {0, 1, 2, 3, 4, 7} mod 8.

Offset 1, canonical program `A047549.P8451162939470717005`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047549 (n : ℕ) : ℤ :=
  A047549.P8451162939470717005.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047549.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047550.P7843639146875068655

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=5, a(1)=7, a(2)=13`
-/

namespace A047550.P7843639146875068655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 7, 13] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3)

end

end A047550.P7843639146875068655

noncomputable section

/-- A047550: Numbers that are congruent to {5, 7} mod 8.

Offset 1, canonical program `A047550.P7843639146875068655`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047550 (n : ℕ) : ℤ :=
  A047550.P7843639146875068655.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047550.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047551.P4122825902355044416

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=7, a(4)=8`
-/

namespace A047551.P4122825902355044416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 6, 7, 8] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047551.P4122825902355044416

noncomputable section

/-- A047551: Numbers that are congruent to {0, 1, 6, 7} mod 8.

Offset 1, canonical program `A047551.P4122825902355044416`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047551 (n : ℕ) : ℤ :=
  A047551.P4122825902355044416.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047551.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047552.P10115877603424212066

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=2, a(1)=6, a(2)=7, a(3)=10`
-/

namespace A047552.P10115877603424212066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6, 7, 10] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047552.P10115877603424212066

noncomputable section

/-- A047552: Numbers that are congruent to {2, 6, 7} mod 8.

Offset 1, canonical program `A047552.P10115877603424212066`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047552 (n : ℕ) : ℤ :=
  A047552.P10115877603424212066.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047552.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047553.P8129938719003213601

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=2, a(2)=6, a(3)=7, a(4)=8`
-/

namespace A047553.P8129938719003213601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 6, 7, 8] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047553.P8129938719003213601

noncomputable section

/-- A047553: Numbers that are congruent to {0, 2, 6, 7} mod 8.

Offset 1, canonical program `A047553.P8129938719003213601`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047553 (n : ℕ) : ℤ :=
  A047553.P8129938719003213601.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047553.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047554.P7789160644040938737

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=7, a(4)=9`
-/

namespace A047554.P7789160644040938737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6, 7, 9] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047554.P7789160644040938737

noncomputable section

/-- A047554: Numbers that are congruent to {1, 2, 6, 7} mod 8.

Offset 1, canonical program `A047554.P7789160644040938737`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047554 (n : ℕ) : ℤ :=
  A047554.P7789160644040938737.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047554.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047555.P8134148412888464200

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=6, a(4)=7, a(5)=8`
-/

namespace A047555.P8134148412888464200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 6, 7, 8] fun n a =>
  a (n - 1) + a (n - 5) - a (n - 6)

end

end A047555.P8134148412888464200

noncomputable section

/-- A047555: Numbers that are congruent to {0, 1, 2, 6, 7} mod 8.

Offset 1, canonical program `A047555.P8134148412888464200`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047555 (n : ℕ) : ℤ :=
  A047555.P8134148412888464200.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047555.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047556.P2666759102679645826

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=3, a(1)=6, a(2)=7, a(3)=11`
-/

namespace A047556.P2666759102679645826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 6, 7, 11] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047556.P2666759102679645826

noncomputable section

/-- A047556: Numbers that are congruent to {3, 6, 7} mod 8.

Offset 1, canonical program `A047556.P2666759102679645826`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047556 (n : ℕ) : ℤ :=
  A047556.P2666759102679645826.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047556.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047557.P11274811394697845791

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=6, a(3)=7`
-/

namespace A047557.P11274811394697845791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 6, 7] fun n a =>
  2 * a (n - 1) - 2 * a (n - 2) + 2 * a (n - 3) - a (n - 4)

end

end A047557.P11274811394697845791

noncomputable section

/-- A047557: Numbers that are congruent to {0, 3, 6, 7} mod 8.

Offset 1, canonical program `A047557.P11274811394697845791`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047557 (n : ℕ) : ℤ :=
  A047557.P11274811394697845791.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047557.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047558.P5826413914812424771

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=7, a(4)=9`
-/

namespace A047558.P5826413914812424771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6, 7, 9] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047558.P5826413914812424771

noncomputable section

/-- A047558: Numbers that are congruent to {1, 3, 6, 7} mod 8.

Offset 1, canonical program `A047558.P5826413914812424771`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047558 (n : ℕ) : ℤ :=
  A047558.P5826413914812424771.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047558.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047559.P14086398931961213196

`a(n-5)+8` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6, a(4)=7`
-/

namespace A047559.P14086398931961213196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 6, 7] fun n a =>
  a (n - 5) + 8

end

end A047559.P14086398931961213196

noncomputable section

/-- A047559: Numbers that are congruent to {0, 1, 3, 6, 7} mod 8.

Offset 1, canonical program `A047559.P14086398931961213196`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047559 (n : ℕ) : ℤ :=
  (A047559.P14086398931961213196.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047559.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047560.P14708619817496430766

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=6, a(4)=7, a(5)=8`
-/

namespace A047560.P14708619817496430766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3, 6, 7, 8] fun n a =>
  a (n - 1) + a (n - 5) - a (n - 6)

end

end A047560.P14708619817496430766

noncomputable section

/-- A047560: Numbers that are congruent to {0, 2, 3, 6, 7} mod 8.

Offset 1, canonical program `A047560.P14708619817496430766`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047560 (n : ℕ) : ℤ :=
  A047560.P14708619817496430766.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047560.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047561.P17997386042562156212

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6, a(4)=7, a(5)=9`
-/

namespace A047561.P17997386042562156212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 6, 7, 9] fun n a =>
  a (n - 1) + a (n - 5) - a (n - 6)

end

end A047561.P17997386042562156212

noncomputable section

/-- A047561: Numbers that are congruent to {1, 2, 3, 6, 7} mod 8.

Offset 1, canonical program `A047561.P17997386042562156212`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047561 (n : ℕ) : ℤ :=
  A047561.P17997386042562156212.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047561.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047562.P6887045440392814532

`a(n-5)+8` with `a(0)=3, a(1)=4, a(2)=5, a(3)=6, a(4)=7`
-/

namespace A047562.P6887045440392814532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 4, 5, 6, 7] fun n a =>
  a (n - 5) + 8

end

end A047562.P6887045440392814532

noncomputable section

/-- A047562: Numbers that are congruent to {3, 4, 5, 6, 7} mod 8.

Offset 1, canonical program `A047562.P6887045440392814532`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047562 (n : ℕ) : ℤ :=
  (A047562.P6887045440392814532.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047562.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047563.P3147106997072278332

`a(n-1)+a(n-6)-a(n-7)` with `a(0)=0, a(1)=3, a(2)=4, a(3)=5, a(4)=6, a(5)=7, a(6)=8`
-/

namespace A047563.P3147106997072278332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 4, 5, 6, 7, 8] fun n a =>
  a (n - 1) + a (n - 6) - a (n - 7)

end

end A047563.P3147106997072278332

noncomputable section

/-- A047563: Numbers that are congruent to {0, 3, 4, 5, 6, 7} mod 8.

Offset 1, canonical program `A047563.P3147106997072278332`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047563 (n : ℕ) : ℤ :=
  A047563.P3147106997072278332.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047563.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047565.P4176050571967794083

`a(n-7)+8` with `a(0)=0, a(1)=1, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=7`
-/

namespace A047565.P4176050571967794083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 4, 5, 6, 7] fun n a =>
  a (n - 7) + 8

end

end A047565.P4176050571967794083

noncomputable section

/-- A047565: Numbers that are congruent to {0, 1, 3, 4, 5, 6, 7} mod 8.

Offset 1, canonical program `A047565.P4176050571967794083`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047565 (n : ℕ) : ℤ :=
  (A047565.P4176050571967794083.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047565.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047566.P11225321737208576058

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=4, a(1)=5, a(2)=6, a(3)=7, a(4)=12`
-/

namespace A047566.P11225321737208576058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 5, 6, 7, 12] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047566.P11225321737208576058

noncomputable section

/-- A047566: Numbers that are congruent to {4, 5, 6, 7} mod 8.

Offset 1, canonical program `A047566.P11225321737208576058`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047566 (n : ℕ) : ℤ :=
  A047566.P11225321737208576058.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047566.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047567.P1717946959914092310

`a(n-5)+8` with `a(0)=0, a(1)=4, a(2)=5, a(3)=6, a(4)=7`
-/

namespace A047567.P1717946959914092310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 5, 6, 7] fun n a =>
  a (n - 5) + 8

end

end A047567.P1717946959914092310

noncomputable section

/-- A047567: Numbers that are congruent to {0, 4, 5, 6, 7} mod 8.

Offset 1, canonical program `A047567.P1717946959914092310`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047567 (n : ℕ) : ℤ :=
  (A047567.P1717946959914092310.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047567.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047568.P16419887576315383059

`a(n-5)+8` with `a(0)=1, a(1)=4, a(2)=5, a(3)=6, a(4)=7`
-/

namespace A047568.P16419887576315383059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 5, 6, 7] fun n a =>
  a (n - 5) + 8

end

end A047568.P16419887576315383059

noncomputable section

/-- A047568: Numbers that are congruent to {1, 4, 5, 6, 7} mod 8.

Offset 1, canonical program `A047568.P16419887576315383059`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047568 (n : ℕ) : ℤ :=
  (A047568.P16419887576315383059.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047568.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047569.P935203125491182790

`a(n-1)+a(n-6)-a(n-7)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=5, a(4)=6, a(5)=7, a(6)=8`
-/

namespace A047569.P935203125491182790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 5, 6, 7, 8] fun n a =>
  a (n - 1) + a (n - 6) - a (n - 7)

end

end A047569.P935203125491182790

noncomputable section

/-- A047569: Numbers that are congruent to {0, 1, 4, 5, 6, 7} mod 8.

Offset 1, canonical program `A047569.P935203125491182790`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047569 (n : ℕ) : ℤ :=
  A047569.P935203125491182790.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047569.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047570.P10061946718669259092

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=2, a(1)=4, a(2)=5, a(3)=6, a(4)=7, a(5)=10`
-/

namespace A047570.P10061946718669259092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 5, 6, 7, 10] fun n a =>
  a (n - 1) + a (n - 5) - a (n - 6)

end

end A047570.P10061946718669259092

noncomputable section

/-- A047570: Numbers that are congruent to {2, 4, 5, 6, 7} mod 8.

Offset 1, canonical program `A047570.P10061946718669259092`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047570 (n : ℕ) : ℤ :=
  A047570.P10061946718669259092.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047570.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047572.P12335405560746978374

`a(n-1)+a(n-6)-a(n-7)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=5, a(4)=6, a(5)=7, a(6)=9`
-/

namespace A047572.P12335405560746978374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 5, 6, 7, 9] fun n a =>
  a (n - 1) + a (n - 6) - a (n - 7)

end

end A047572.P12335405560746978374

noncomputable section

/-- A047572: Numbers that are congruent to {1, 2, 4, 5, 6, 7} mod 8.

Offset 1, canonical program `A047572.P12335405560746978374`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047572 (n : ℕ) : ℤ :=
  A047572.P12335405560746978374.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047572.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047573.P12679037969303767457

`a(n-7)+8` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4, a(4)=5, a(5)=6, a(6)=7`
-/

namespace A047573.P12679037969303767457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 4, 5, 6, 7] fun n a =>
  a (n - 7) + 8

end

end A047573.P12679037969303767457

noncomputable section

/-- A047573: Numbers that are congruent to {0, 1, 2, 4, 5, 6, 7} mod 8.

Offset 1, canonical program `A047573.P12679037969303767457`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047573 (n : ℕ) : ℤ :=
  (A047573.P12679037969303767457.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047573.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047574.P3545689950394447598

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=5, a(1)=6, a(2)=7, a(3)=13`
-/

namespace A047574.P3545689950394447598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 6, 7, 13] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047574.P3545689950394447598

noncomputable section

/-- A047574: Numbers that are congruent to {5, 6, 7} mod 8.

Offset 1, canonical program `A047574.P3545689950394447598`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047574 (n : ℕ) : ℤ :=
  A047574.P3545689950394447598.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047574.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047575.P7177125994487515768

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=5, a(2)=6, a(3)=7, a(4)=8`
-/

namespace A047575.P7177125994487515768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5, 6, 7, 8] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047575.P7177125994487515768

noncomputable section

/-- A047575: Numbers that are congruent to {0, 5, 6, 7} mod 8.

Offset 1, canonical program `A047575.P7177125994487515768`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047575 (n : ℕ) : ℤ :=
  A047575.P7177125994487515768.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047575.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047576.P11120601150566441026

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=5, a(2)=6, a(3)=7, a(4)=9`
-/

namespace A047576.P11120601150566441026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 6, 7, 9] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047576.P11120601150566441026

noncomputable section

/-- A047576: Numbers that are congruent to {1, 5, 6, 7} mod 8.

Offset 1, canonical program `A047576.P11120601150566441026`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047576 (n : ℕ) : ℤ :=
  A047576.P11120601150566441026.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047576.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047577.P7896023095944994642

`a(n-5)+8` with `a(0)=0, a(1)=1, a(2)=5, a(3)=6, a(4)=7`
-/

namespace A047577.P7896023095944994642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 5, 6, 7] fun n a =>
  a (n - 5) + 8

end

end A047577.P7896023095944994642

noncomputable section

/-- A047577: Numbers that are congruent to {0, 1, 5, 6, 7} mod 8.

Offset 1, canonical program `A047577.P7896023095944994642`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047577 (n : ℕ) : ℤ :=
  (A047577.P7896023095944994642.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047577.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047578.P10908863984597487326

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=2, a(1)=5, a(2)=6, a(3)=7`
-/

namespace A047578.P10908863984597487326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 6, 7] fun n a =>
  2 * a (n - 1) - 2 * a (n - 2) + 2 * a (n - 3) - a (n - 4)

end

end A047578.P10908863984597487326

noncomputable section

/-- A047578: Numbers that are congruent to {2, 5, 6, 7} mod 8.

Offset 1, canonical program `A047578.P10908863984597487326`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047578 (n : ℕ) : ℤ :=
  A047578.P10908863984597487326.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047578.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047579.P10429088752702755724

`a(n-5)+8` with `a(0)=0, a(1)=2, a(2)=5, a(3)=6, a(4)=7`
-/

namespace A047579.P10429088752702755724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 5, 6, 7] fun n a =>
  a (n - 5) + 8

end

end A047579.P10429088752702755724

noncomputable section

/-- A047579: Numbers that are congruent to {0, 2, 5, 6, 7} mod 8.

Offset 1, canonical program `A047579.P10429088752702755724`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047579 (n : ℕ) : ℤ :=
  (A047579.P10429088752702755724.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047579.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047580.P12253081130403374838

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=6, a(4)=7, a(5)=9`
-/

namespace A047580.P12253081130403374838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5, 6, 7, 9] fun n a =>
  a (n - 1) + a (n - 5) - a (n - 6)

end

end A047580.P12253081130403374838

noncomputable section

/-- A047580: Numbers that are congruent to {1, 2, 5, 6, 7} mod 8.

Offset 1, canonical program `A047580.P12253081130403374838`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047580 (n : ℕ) : ℤ :=
  A047580.P12253081130403374838.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047580.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047581.P12154050059015892064

`a(n-1)+a(n-6)-a(n-7)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=5, a(4)=6, a(5)=7, a(6)=8`
-/

namespace A047581.P12154050059015892064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 5, 6, 7, 8] fun n a =>
  a (n - 1) + a (n - 6) - a (n - 7)

end

end A047581.P12154050059015892064

noncomputable section

/-- A047581: Numbers that are congruent to {0, 1, 2, 5, 6, 7} mod 8.

Offset 1, canonical program `A047581.P12154050059015892064`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047581 (n : ℕ) : ℤ :=
  A047581.P12154050059015892064.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047581.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047582.P10441430479887932313

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=3, a(1)=5, a(2)=6, a(3)=7, a(4)=11`
-/

namespace A047582.P10441430479887932313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 5, 6, 7, 11] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047582.P10441430479887932313

noncomputable section

/-- A047582: Numbers that are congruent to {3, 5, 6, 7} mod 8.

Offset 1, canonical program `A047582.P10441430479887932313`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047582 (n : ℕ) : ℤ :=
  A047582.P10441430479887932313.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047582.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047583.P1202088786450744240

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=0, a(1)=3, a(2)=5, a(3)=6, a(4)=7, a(5)=8`
-/

namespace A047583.P1202088786450744240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 5, 6, 7, 8] fun n a =>
  a (n - 1) + a (n - 5) - a (n - 6)

end

end A047583.P1202088786450744240

noncomputable section

/-- A047583: Numbers that are congruent to {0, 3, 5, 6, 7} mod 8.

Offset 1, canonical program `A047583.P1202088786450744240`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047583 (n : ℕ) : ℤ :=
  A047583.P1202088786450744240.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047583.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047584.P1236711135056242063

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=6, a(4)=7, a(5)=9`
-/

namespace A047584.P1236711135056242063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5, 6, 7, 9] fun n a =>
  a (n - 1) + a (n - 5) - a (n - 6)

end

end A047584.P1236711135056242063

noncomputable section

/-- A047584: Numbers that are congruent to {1, 3, 5, 6, 7} mod 8.

Offset 1, canonical program `A047584.P1236711135056242063`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047584 (n : ℕ) : ℤ :=
  A047584.P1236711135056242063.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047584.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047586.P7927788207682834760

`a(n-5)+8` with `a(0)=2, a(1)=3, a(2)=5, a(3)=6, a(4)=7`
-/

namespace A047586.P7927788207682834760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 5, 6, 7] fun n a =>
  a (n - 5) + 8

end

end A047586.P7927788207682834760

noncomputable section

/-- A047586: Numbers that are congruent to {2, 3, 5, 6, 7} mod 8.

Offset 1, canonical program `A047586.P7927788207682834760`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047586 (n : ℕ) : ℤ :=
  (A047586.P7927788207682834760.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047586.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047587.P2004360021011363606

`a(n-1)+a(n-6)-a(n-7)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=5, a(4)=6, a(5)=7, a(6)=8`
-/

namespace A047587.P2004360021011363606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3, 5, 6, 7, 8] fun n a =>
  a (n - 1) + a (n - 6) - a (n - 7)

end

end A047587.P2004360021011363606

noncomputable section

/-- A047587: Numbers that are congruent to {0, 2, 3, 5, 6, 7} mod 8.

Offset 1, canonical program `A047587.P2004360021011363606`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047587 (n : ℕ) : ℤ :=
  A047587.P2004360021011363606.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047587.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047588.P5089271559851880253

`a(n-7)+8` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=6, a(6)=7`
-/

namespace A047588.P5089271559851880253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3, 5, 6, 7] fun n a =>
  a (n - 7) + 8

end

end A047588.P5089271559851880253

noncomputable section

/-- A047588: Numbers that are congruent to {0, 1, 2, 3, 5, 6, 7} mod 8.

Offset 1, canonical program `A047588.P5089271559851880253`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047588 (n : ℕ) : ℤ :=
  (A047588.P5089271559851880253.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047588.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047589.P16721494337170045748

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=6, a(1)=7, a(2)=14`
-/

namespace A047589.P16721494337170045748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 7, 14] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3)

end

end A047589.P16721494337170045748

noncomputable section

/-- A047589: Numbers that are congruent to {6, 7} mod 8.

Offset 1, canonical program `A047589.P16721494337170045748`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047589 (n : ℕ) : ℤ :=
  A047589.P16721494337170045748.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047589.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047590.P1776590080310754121

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=6, a(2)=7, a(3)=8`
-/

namespace A047590.P1776590080310754121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 6, 7, 8] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047590.P1776590080310754121

noncomputable section

/-- A047590: Numbers that are congruent to {0, 6, 7} mod 8.

Offset 1, canonical program `A047590.P1776590080310754121`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047590 (n : ℕ) : ℤ :=
  A047590.P1776590080310754121.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047590.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047591.P8348121480119153361

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=6, a(2)=7, a(3)=9`
-/

namespace A047591.P8348121480119153361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 7, 9] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047591.P8348121480119153361

noncomputable section

/-- A047591: Numbers that are congruent to {1, 6, 7} mod 8.

Offset 1, canonical program `A047591.P8348121480119153361`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047591 (n : ℕ) : ℤ :=
  A047591.P8348121480119153361.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047591.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047592.P6280216359662977860

`a(n-1)+a(n-7)-a(n-8)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=7, a(7)=9`
-/

namespace A047592.P6280216359662977860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 5, 6, 7, 9] fun n a =>
  a (n - 1) + a (n - 7) - a (n - 8)

end

end A047592.P6280216359662977860

noncomputable section

/-- A047592: Numbers that are congruent to {1, 2, 3, 4, 5, 6, 7} mod 8.

Offset 1, canonical program `A047592.P6280216359662977860`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047592 (n : ℕ) : ℤ :=
  A047592.P6280216359662977860.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047592.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047593.P15181872912811568390

`a(n-1)+a(n-6)-a(n-7)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=5, a(4)=6, a(5)=7, a(6)=10`
-/

namespace A047593.P15181872912811568390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 4, 5, 6, 7, 10] fun n a =>
  a (n - 1) + a (n - 6) - a (n - 7)

end

end A047593.P15181872912811568390

noncomputable section

/-- A047593: Numbers that are congruent to {2, 3, 4, 5, 6, 7} mod 8.

Offset 1, canonical program `A047593.P15181872912811568390`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047593 (n : ℕ) : ℤ :=
  A047593.P15181872912811568390.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047593.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047594.P12483752933414786580

`a(n-7)+8` with `a(0)=0, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=7`
-/

namespace A047594.P12483752933414786580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 4, 5, 6, 7] fun n a =>
  a (n - 7) + 8

end

end A047594.P12483752933414786580

noncomputable section

/-- A047594: Numbers that are congruent to {0, 2, 3, 4, 5, 6, 7} mod 8.

Offset 1, canonical program `A047594.P12483752933414786580`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047594 (n : ℕ) : ℤ :=
  (A047594.P12483752933414786580.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047594.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047595.P11452924651963517134

`a(n-7)+8` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=7`
-/

namespace A047595.P11452924651963517134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3, 4, 5, 7] fun n a =>
  a (n - 7) + 8

end

end A047595.P11452924651963517134

noncomputable section

/-- A047595: Numbers that are congruent to {0, 1, 2, 3, 4, 5, 7} mod 8.

Offset 1, canonical program `A047595.P11452924651963517134`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047595 (n : ℕ) : ℤ :=
  (A047595.P11452924651963517134.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047595.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047596.P5442632219283213892

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=5, a(4)=10`
-/

namespace A047596.P5442632219283213892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 4, 5, 10] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047596.P5442632219283213892

noncomputable section

/-- A047596: Numbers that are congruent to {2, 3, 4, 5} mod 8.

Offset 1, canonical program `A047596.P5442632219283213892`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047596 (n : ℕ) : ℤ :=
  A047596.P5442632219283213892.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047596.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047597.P18124994690607783859

`a(n-5)+8` with `a(0)=0, a(1)=2, a(2)=3, a(3)=4, a(4)=5`
-/

namespace A047597.P18124994690607783859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 4, 5] fun n a =>
  a (n - 5) + 8

end

end A047597.P18124994690607783859

noncomputable section

/-- A047597: Numbers that are congruent to {0, 2, 3, 4, 5} mod 8.

Offset 1, canonical program `A047597.P18124994690607783859`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047597 (n : ℕ) : ℤ :=
  (A047597.P18124994690607783859.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047597.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047598.P18054970793901716294

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=3, a(1)=4, a(2)=5, a(3)=11`
-/

namespace A047598.P18054970793901716294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4, 5, 11] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047598.P18054970793901716294

noncomputable section

/-- A047598: Numbers that are congruent to {3, 4, 5} mod 8.

Offset 1, canonical program `A047598.P18054970793901716294`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047598 (n : ℕ) : ℤ :=
  A047598.P18054970793901716294.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047598.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047599.P7426491099471878681

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=4, a(3)=5`
-/

namespace A047599.P7426491099471878681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 4, 5] fun n a =>
  2 * a (n - 1) - 2 * a (n - 2) + 2 * a (n - 3) - a (n - 4)

end

end A047599.P7426491099471878681

noncomputable section

/-- A047599: Numbers that are congruent to {0, 3, 4, 5} mod 8.

Offset 1, canonical program `A047599.P7426491099471878681`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047599 (n : ℕ) : ℤ :=
  A047599.P7426491099471878681.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047599.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047600.P17553239899300466713

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=5, a(4)=9`
-/

namespace A047600.P17553239899300466713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4, 5, 9] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047600.P17553239899300466713

noncomputable section

/-- A047600: Numbers that are congruent to {1, 3, 4, 5} mod 8.

Offset 1, canonical program `A047600.P17553239899300466713`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047600 (n : ℕ) : ℤ :=
  A047600.P17553239899300466713.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047600.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047601.P4843117651727385939

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=4, a(4)=5, a(5)=8`
-/

namespace A047601.P4843117651727385939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 4, 5, 8] fun n a =>
  a (n - 1) + a (n - 5) - a (n - 6)

end

end A047601.P4843117651727385939

noncomputable section

/-- A047601: Numbers that are congruent to {0, 1, 3, 4, 5} mod 8.

Offset 1, canonical program `A047601.P4843117651727385939`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047601 (n : ℕ) : ℤ :=
  A047601.P4843117651727385939.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047601.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047602.P323530499361867202

`a(n-1)+a(n-6)-a(n-7)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=8`
-/

namespace A047602.P323530499361867202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 4, 5, 8] fun n a =>
  a (n - 1) + a (n - 6) - a (n - 7)

end

end A047602.P323530499361867202

noncomputable section

/-- A047602: Numbers that are congruent to {0, 1, 2, 3, 4, 5} mod 8.

Offset 1, canonical program `A047602.P323530499361867202`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047602 (n : ℕ) : ℤ :=
  A047602.P323530499361867202.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047602.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047603.P17845141016650028659

`a(n-5)+8` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5`
-/

namespace A047603.P17845141016650028659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 4, 5] fun n a =>
  a (n - 5) + 8

end

end A047603.P17845141016650028659

noncomputable section

/-- A047603: Numbers that are congruent to {1, 2, 3, 4, 5} mod 8.

Offset 1, canonical program `A047603.P17845141016650028659`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047603 (n : ℕ) : ℤ :=
  (A047603.P17845141016650028659.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047603.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047604.P7044110259455886681

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=2, a(1)=3, a(2)=5, a(3)=10`
-/

namespace A047604.P7044110259455886681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 5, 10] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047604.P7044110259455886681

noncomputable section

/-- A047604: Numbers that are congruent to {2, 3, 5} mod 8.

Offset 1, canonical program `A047604.P7044110259455886681`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047604 (n : ℕ) : ℤ :=
  A047604.P7044110259455886681.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047604.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047605.P2592929428086182283

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A047605.P2592929428086182283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3, 5] fun n a =>
  2 * a (n - 1) - 2 * a (n - 2) + 2 * a (n - 3) - a (n - 4)

end

end A047605.P2592929428086182283

noncomputable section

/-- A047605: Numbers that are congruent to {0, 2, 3, 5} mod 8.

Offset 1, canonical program `A047605.P2592929428086182283`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047605 (n : ℕ) : ℤ :=
  A047605.P2592929428086182283.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047605.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047606.P15043897567730660132

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=9`
-/

namespace A047606.P15043897567730660132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 5, 9] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047606.P15043897567730660132

noncomputable section

/-- A047606: Numbers that are congruent to {1, 2, 3, 5} mod 8.

Offset 1, canonical program `A047606.P15043897567730660132`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047606 (n : ℕ) : ℤ :=
  A047606.P15043897567730660132.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047606.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047609.P3092235591739766847

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=4, a(2)=5, a(3)=8`
-/

namespace A047609.P3092235591739766847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 5, 8] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047609.P3092235591739766847

noncomputable section

/-- A047609: Numbers that are congruent to {0, 4, 5} mod 8.

Offset 1, canonical program `A047609.P3092235591739766847`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047609 (n : ℕ) : ℤ :=
  A047609.P3092235591739766847.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047609.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047610.P13231090849894031944

`a(n-3)+8` with `a(0)=1, a(1)=4, a(2)=5`
-/

namespace A047610.P13231090849894031944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 5] fun n a =>
  a (n - 3) + 8

end

end A047610.P13231090849894031944

noncomputable section

/-- A047610: Positive integers that are congruent to {1, 4, 5} mod 8.

Offset 1, canonical program `A047610.P13231090849894031944`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047610 (n : ℕ) : ℤ :=
  (A047610.P13231090849894031944.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047610.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047611.P1755501353308060115

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=2, a(1)=4, a(2)=5, a(3)=10`
-/

namespace A047611.P1755501353308060115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 5, 10] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047611.P1755501353308060115

noncomputable section

/-- A047611: Numbers that are congruent to {2, 4, 5} mod 8.

Offset 1, canonical program `A047611.P1755501353308060115`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047611 (n : ℕ) : ℤ :=
  A047611.P1755501353308060115.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047611.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047612.P10185051403906134146

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=2, a(2)=4, a(3)=5, a(4)=8`
-/

namespace A047612.P10185051403906134146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 4, 5, 8] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047612.P10185051403906134146

noncomputable section

/-- A047612: Numbers that are congruent to {0, 2, 4, 5} mod 8.

Offset 1, canonical program `A047612.P10185051403906134146`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047612 (n : ℕ) : ℤ :=
  A047612.P10185051403906134146.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047612.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047613.P15060845050638187780

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=5, a(4)=9`
-/

namespace A047613.P15060845050638187780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 5, 9] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047613.P15060845050638187780

noncomputable section

/-- A047613: Numbers that are congruent to {1, 2, 4, 5} mod 8.

Offset 1, canonical program `A047613.P15060845050638187780`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047613 (n : ℕ) : ℤ :=
  A047613.P15060845050638187780.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047613.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047615.P17067911442184777653

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=0, a(1)=5, a(2)=8`
-/

namespace A047615.P17067911442184777653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5, 8] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3)

end

end A047615.P17067911442184777653

noncomputable section

/-- A047615: Numbers that are congruent to {0, 5} mod 8.

Offset 1, canonical program `A047615.P17067911442184777653`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047615 (n : ℕ) : ℤ :=
  A047615.P17067911442184777653.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047615.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047616.P7708795477510677896

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=8`
-/

namespace A047616.P7708795477510677896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5, 8] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047616.P7708795477510677896

noncomputable section

/-- A047616: Numbers that are congruent to {0, 1, 5} mod 8.

Offset 1, canonical program `A047616.P7708795477510677896`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047616 (n : ℕ) : ℤ :=
  A047616.P7708795477510677896.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047616.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047617.P6923416961830518295

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=2, a(1)=5, a(2)=10`
-/

namespace A047617.P6923416961830518295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 10] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3)

end

end A047617.P6923416961830518295

noncomputable section

/-- A047617: Numbers that are congruent to {2, 5} mod 8.

Offset 1, canonical program `A047617.P6923416961830518295`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047617 (n : ℕ) : ℤ :=
  A047617.P6923416961830518295.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047617.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047618.P13110766658431456357

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=5, a(3)=8`
-/

namespace A047618.P13110766658431456357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 5, 8] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047618.P13110766658431456357

noncomputable section

/-- A047618: Numbers that are congruent to {0, 2, 5} mod 8.

Offset 1, canonical program `A047618.P13110766658431456357`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047618 (n : ℕ) : ℤ :=
  A047618.P13110766658431456357.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047618.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047619.P17108127697745199941

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=9`
-/

namespace A047619.P17108127697745199941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5, 9] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047619.P17108127697745199941

noncomputable section

/-- A047619: Numbers that are congruent to {1, 2, 5} mod 8.

Offset 1, canonical program `A047619.P17108127697745199941`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047619 (n : ℕ) : ℤ :=
  A047619.P17108127697745199941.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047619.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047620.P14723656410441067860

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=5`
-/

namespace A047620.P14723656410441067860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 5] fun n a =>
  2 * a (n - 1) - 2 * a (n - 2) + 2 * a (n - 3) - a (n - 4)

end

end A047620.P14723656410441067860

noncomputable section

/-- A047620: Numbers that are congruent to {0, 1, 2, 5} mod 8.

Offset 1, canonical program `A047620.P14723656410441067860`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047620 (n : ℕ) : ℤ :=
  A047620.P14723656410441067860.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047620.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047621.P12506404987835227544

`8*n-a(n-1)` with `a(0)=3`
-/

namespace A047621.P12506404987835227544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (8 * n : ℤ) - a (n - 1)

end

end A047621.P12506404987835227544

noncomputable section

/-- A047621: Numbers that are congruent to {3, 5} mod 8.

Offset 1, canonical program `A047621.P12506404987835227544`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047621 (n : ℕ) : ℤ :=
  A047621.P12506404987835227544.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047621.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047622.P15642780561433980389

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=5, a(3)=8`
-/

namespace A047622.P15642780561433980389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 5, 8] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047622.P15642780561433980389

noncomputable section

/-- A047622: Numbers that are congruent to {0, 3, 5} mod 8.

Offset 1, canonical program `A047622.P15642780561433980389`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047622 (n : ℕ) : ℤ :=
  A047622.P15642780561433980389.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047622.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047623.P6129103886251852409

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=9`
-/

namespace A047623.P6129103886251852409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5, 9] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047623.P6129103886251852409

noncomputable section

/-- A047623: Numbers that are congruent to {1, 3, 5} mod 8.

Offset 1, canonical program `A047623.P6129103886251852409`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047623 (n : ℕ) : ℤ :=
  A047623.P6129103886251852409.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047623.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047624.P11809342252830142273

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=5, a(4)=8`
-/

namespace A047624.P11809342252830142273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 5, 8] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047624.P11809342252830142273

noncomputable section

/-- A047624: Numbers that are congruent to {0, 1, 3, 5} mod 8.

Offset 1, canonical program `A047624.P11809342252830142273`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047624 (n : ℕ) : ℤ :=
  A047624.P11809342252830142273.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047624.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047625.P3107578951983333715

`floor(π*(3/2)^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A047625.P3107578951983333715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (((3 : ℚ) / 2) ^ n : ℝ)⌋

end

end A047625.P3107578951983333715

noncomputable section

/-- A047625: Floor( Pi * (3/2)^n ).

Offset 0, canonical program `A047625.P3107578951983333715`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(π*(3/2)^n)` (program `A047625.P3107578951983333715`, by `A047625.P3107578951983333715.correct`). Lean does not check the parsing of the name. -/
def A047625 (n : ℕ) : ℤ :=
  A047625.P3107578951983333715.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(π*(3/2)^n)` (program `A047625.P3107578951983333715`, by `A047625.P3107578951983333715.correct`). Lean does not check the parsing of the name. -/
def A047625.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A047656.P12759288984961220680

`3^C(n, 2)`
-/

namespace A047656.P12759288984961220680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ Nat.choose n 2

end

end A047656.P12759288984961220680

noncomputable section

/-- A047656: a(n) = 3^((n^2-n)/2).

Offset 0, canonical program `A047656.P12759288984961220680`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047656 (n : ℕ) : ℤ :=
  (A047656.P12759288984961220680.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047656.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047667.P15186661141425399920

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=3, a(1)=10, a(2)=25, a(3)=52`
-/

namespace A047667.P15186661141425399920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 10, 25, 52] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A047667.P15186661141425399920

noncomputable section

/-- A047667: Row 3 of array in A047666.

Offset 1, canonical program `A047667.P15186661141425399920`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047667 (n : ℕ) : ℤ :=
  A047667.P15186661141425399920.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047667.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047672.P9347191808807295190

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=10, a(2)=37, a(3)=94`
-/

namespace A047672.P9347191808807295190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10, 37, 94] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A047672.P9347191808807295190

noncomputable section

/-- A047672: Row 3 of square array defined in A047671.

Offset 1, canonical program `A047672.P9347191808807295190`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047672 (n : ℕ) : ℤ :=
  A047672.P9347191808807295190.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047672.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047673.P4384391349582915456

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=13, a(2)=61, a(3)=193, a(4)=481`
-/

namespace A047673.P4384391349582915456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 13, 61, 193, 481] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A047673.P4384391349582915456

noncomputable section

/-- A047673: Row 4 of square array defined in A047671.

Offset 1, canonical program `A047673.P4384391349582915456`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047673 (n : ℕ) : ℤ :=
  A047673.P4384391349582915456.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047673.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047732.P11496206871586496479

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=12, a(3)=27`
-/

namespace A047732.P11496206871586496479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 12, 27] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A047732.P11496206871586496479

noncomputable section

/-- A047732: First differences are A005563.

Offset 0, canonical program `A047732.P11496206871586496479`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047732 (n : ℕ) : ℤ :=
  A047732.P11496206871586496479.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047732.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047780.P242356902050001316

`n+8*C(n, 2)+30*C(n, 3)+68*C(n, 4)+75*C(n, 5)+30*C(n, 6)`
-/

namespace A047780.P242356902050001316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 8 * Nat.choose n 2 + 30 * Nat.choose n 3 + 68 * Nat.choose n 4 + 75 * Nat.choose n 5 + 30 * Nat.choose n 6

end

end A047780.P242356902050001316

noncomputable section

/-- A047780: Number of inequivalent ways to color faces of a cube using at most n colors.

Offset 0, canonical program `A047780.P242356902050001316`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047780 (n : ℕ) : ℤ :=
  (A047780.P242356902050001316.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047780.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047786.P6967672226850323160

`(9*n^4+4*n^3-n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A047786.P6967672226850323160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 * n ^ 4 + 4 * n ^ 3 : ℤ) - (n : ℤ) : ℚ) / 2

end

end A047786.P6967672226850323160

noncomputable section

/-- A047786: a(n) = (9*n^4 + 4*n^3 - n)/2.

Offset 0, canonical program `A047786.P6967672226850323160`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047786 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A047786.P6967672226850323160.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047786.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047790.P7448849593988605551

`6*a(n-1)-12*a(n-2)+9*a(n-3)-2*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A047790.P7448849593988605551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  6 * a (n - 1) - 12 * a (n - 2) + 9 * a (n - 3) - 2 * a (n - 4)

end

end A047790.P7448849593988605551

noncomputable section

/-- A047790: a(n) = Fibonacci(2*n)-2^n+1.

Offset 0, canonical program `A047790.P7448849593988605551`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047790 (n : ℕ) : ℤ :=
  A047790.P7448849593988605551.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047790.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047838.P10280897269424094376

`floor((n²+4*n+2)/2)`
-/

namespace A047838.P10280897269424094376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 + 4 * n + 2 : ℚ) / 2⌋

end

end A047838.P10280897269424094376

noncomputable section

/-- A047838: a(n) = floor(n^2/2) - 1.

Offset 2, canonical program `A047838.P10280897269424094376`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047838 (n : ℕ) : ℤ :=
  A047838.P10280897269424094376.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047838.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047849.P12708568966129117375

`4*a(n-1)-2` with `a(0)=1`
-/

namespace A047849.P12708568966129117375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) - 2

end

end A047849.P12708568966129117375

noncomputable section

/-- A047849: a(n) = (4^n + 2)/3.

Offset 0, canonical program `A047849.P12708568966129117375`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047849 (n : ℕ) : ℤ :=
  A047849.P12708568966129117375.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047849.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047850.P4419354886793222274

`5*a(n-1)-3` with `a(0)=1`
-/

namespace A047850.P4419354886793222274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) - 3

end

end A047850.P4419354886793222274

noncomputable section

/-- A047850: a(n) = (5^n + 3)/4.

Offset 0, canonical program `A047850.P4419354886793222274`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047850 (n : ℕ) : ℤ :=
  A047850.P4419354886793222274.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047850.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047851.P1255527301914215621

`6*a(n-1)-4` with `a(0)=1`
-/

namespace A047851.P1255527301914215621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) - 4

end

end A047851.P1255527301914215621

noncomputable section

/-- A047851: a(n) = A047848(3,n).

Offset 0, canonical program `A047851.P1255527301914215621`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047851 (n : ℕ) : ℤ :=
  A047851.P1255527301914215621.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047851.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047852.P11940963155217222415

`7*a(n-1)-5` with `a(0)=1`
-/

namespace A047852.P11940963155217222415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  7 * a (n - 1) - 5

end

end A047852.P11940963155217222415

noncomputable section

/-- A047852: a(n) = A047848(4, n).

Offset 0, canonical program `A047852.P11940963155217222415`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047852 (n : ℕ) : ℤ :=
  A047852.P11940963155217222415.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047852.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047853.P5919088276323591993

`8*a(n-1)-6` with `a(0)=1`
-/

namespace A047853.P5919088276323591993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  8 * a (n - 1) - 6

end

end A047853.P5919088276323591993

noncomputable section

/-- A047853: a(n) = A047848(5, n).

Offset 0, canonical program `A047853.P5919088276323591993`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047853 (n : ℕ) : ℤ :=
  A047853.P5919088276323591993.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047853.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047854.P17418981397149933771

`9*a(n-1)-7` with `a(0)=1`
-/

namespace A047854.P17418981397149933771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  9 * a (n - 1) - 7

end

end A047854.P17418981397149933771

noncomputable section

/-- A047854: a(n) = A047848(6, n).

Offset 0, canonical program `A047854.P17418981397149933771`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047854 (n : ℕ) : ℤ :=
  A047854.P17418981397149933771.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047854.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047855.P16954364043766656981

`10*a(n-1)-8` with `a(0)=1`
-/

namespace A047855.P16954364043766656981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) - 8

end

end A047855.P16954364043766656981

noncomputable section

/-- A047855: a(n) = A047848(7,n).

Offset 0, canonical program `A047855.P16954364043766656981`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047855 (n : ℕ) : ℤ :=
  A047855.P16954364043766656981.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047855.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047856.P2738960899938531195

`11*a(n-1)-9` with `a(0)=1`
-/

namespace A047856.P2738960899938531195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  11 * a (n - 1) - 9

end

end A047856.P2738960899938531195

noncomputable section

/-- A047856: a(n) = A047848(8, n).

Offset 0, canonical program `A047856.P2738960899938531195`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047856 (n : ℕ) : ℤ :=
  A047856.P2738960899938531195.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047856.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047859.P16694825149569042270

`(n+4)*2^(n-1)-1`
-/

namespace A047859.P16694825149569042270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1

end

end A047859.P16694825149569042270

noncomputable section

/-- A047859: a(n) = T(2, n), where T is the array given by A047858.

Offset 0, canonical program `A047859.P16694825149569042270`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047859 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A047859.P16694825149569042270.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047859.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047860.P12126760037970201947

`2^(n-1)*(n+6)-2`
-/

namespace A047860.P12126760037970201947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (n + 6 : ℚ) - 2

end

end A047860.P12126760037970201947

noncomputable section

/-- A047860: a(n) = T(3,n), array T given by A047858.

Offset 0, canonical program `A047860.P12126760037970201947`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047860 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A047860.P12126760037970201947.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047860.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047861.P13440390021906672199

`2^(n-1)*(n+8)-3`
-/

namespace A047861.P13440390021906672199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (n + 8 : ℚ) - 3

end

end A047861.P13440390021906672199

noncomputable section

/-- A047861: a(n) = T(4,n), array T given by A047858.

Offset 0, canonical program `A047861.P13440390021906672199`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047861 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A047861.P13440390021906672199.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047861.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047862.P17395349662076623380

`2^(n-1)*(n+10)-4`
-/

namespace A047862.P17395349662076623380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (n + 10 : ℚ) - 4

end

end A047862.P17395349662076623380

noncomputable section

/-- A047862: a(n) = T(5,n), array T given by A047858.

Offset 0, canonical program `A047862.P17395349662076623380`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047862 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A047862.P17395349662076623380.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047862.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047865.P13364646992161201936

`(n-1)*a(n-1)+(n-1)*(n-2)*(n-3)*a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A047865.P13364646992161201936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0] fun n a =>
  ((n : ℤ) - 1) * a (n - 1) + ((n : ℤ) - 1) * (((n : ℤ) - 2) * (((n : ℤ) - 3) * a (n - 4)))

end

end A047865.P13364646992161201936

noncomputable section

/-- A047865: Number of derangements of n where minimal cycle size is at least 4.

Offset 0, canonical program `A047865.P13364646992161201936`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047865 (n : ℕ) : ℤ :=
  A047865.P13364646992161201936.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047865.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047878.P10242734222397463435

`a(n-3)+1` with `a(0)=0, a(1)=3, a(2)=2, a(3)=1, a(4)=2`
-/

namespace A047878.P10242734222397463435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 2, 1, 2] fun n a =>
  a (n - 3) + 1

end

end A047878.P10242734222397463435

noncomputable section

/-- A047878: a(n) is the least number of knight's moves from corner (0,0) to n-th diagonal of unbounded chessboard.

Offset 0, canonical program `A047878.P10242734222397463435`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047878 (n : ℕ) : ℤ :=
  (A047878.P10242734222397463435.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047878.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047883.P8035612980348880516

`7+a(n-1)` with `a(0)=0, a(1)=2, a(2)=9, a(3)=20, a(4)=27, a(5)=32`
-/

namespace A047883.P8035612980348880516
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 9, 20, 27, 32] fun n a =>
  7 + a (n - 1)

end

end A047883.P8035612980348880516

noncomputable section

/-- A047883: Squares on unbounded chessboard for which the least number of knight's moves from corner (0,0) is n.

Offset 0, canonical program `A047883.P8035612980348880516`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047883 (n : ℕ) : ℤ :=
  (A047883.P8035612980348880516.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047883.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047900.P13181502054389704056

`10*a(n-1)` with `a(0)=8, a(1)=64`
-/

namespace A047900.P13181502054389704056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8, 64] fun n a =>
  10 * a (n - 1)

end

end A047900.P13181502054389704056

noncomputable section

/-- A047900: a(1) = 8; for n > 1, a(n+1) = a(n) * sum of digits of a(n).

Offset 1, canonical program `A047900.P13181502054389704056`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047900 (n : ℕ) : ℤ :=
  (A047900.P13181502054389704056.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047900.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047926.P8331763504239172225

`(3^(n+1)+2*n+1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A047926.P8331763504239172225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) + 2 * n + 1 : ℚ) / 4

end

end A047926.P8331763504239172225

noncomputable section

/-- A047926: a(n) = (3^(n+1) + 2*n + 1)/4.

Offset 0, canonical program `A047926.P8331763504239172225`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047926 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A047926.P8331763504239172225.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047926.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047927.P1128907562290906114

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=6, a(2)=48, a(3)=180, a(4)=480`
-/

namespace A047927.P1128907562290906114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 6, 48, 180, 480] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A047927.P1128907562290906114

noncomputable section

/-- A047927: a(n) = n*(n-1)*(n-2)^2.

Offset 2, canonical program `A047927.P1128907562290906114`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047927 (n : ℕ) : ℤ :=
  A047927.P1128907562290906114.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047927.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047929.P15796093440845798030

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=18, a(2)=96, a(3)=300, a(4)=720`
-/

namespace A047929.P15796093440845798030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 18, 96, 300, 720] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A047929.P15796093440845798030

noncomputable section

/-- A047929: a(n) = n^2*(n-1)*(n-2).

Offset 2, canonical program `A047929.P15796093440845798030`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047929 (n : ℕ) : ℤ :=
  A047929.P15796093440845798030.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047929.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047946.P8946529518962687251

`3*a(n-1)-a(n-2)+5*(-1)^n` with `a(0)=3, a(1)=2`
-/

namespace A047946.P8946529518962687251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  3 * a (n - 1) - a (n - 2) + 5 * (-1) ^ n

end

end A047946.P8946529518962687251

noncomputable section

/-- A047946: a(n) = 5*F(n)^2 + 3*(-1)^n where F(n) are the Fibonacci numbers A000045.

Offset 0, canonical program `A047946.P8946529518962687251`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047946 (n : ℕ) : ℤ :=
  A047946.P8946529518962687251.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047946.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047990.P650845463597548669

`a(n-1)+((n-1)²+1)*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A047990.P650845463597548669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (((n : ℤ) - 1) ^ 2 + 1) * a (n - 2)

end

end A047990.P650845463597548669

noncomputable section

/-- A047990: a(n+1) = a(n) + (n^2 + 1)*a(n-1).

Offset 0, canonical program `A047990.P650845463597548669`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047990 (n : ℕ) : ℤ :=
  A047990.P650845463597548669.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047990.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048162.P2868790477840933760

`a(n-1)+a(n-2)-2` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6, a(4)=9`
-/

namespace A048162.P2868790477840933760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 6, 9] fun n a =>
  a (n - 1) + a (n - 2) - 2

end

end A048162.P2868790477840933760

noncomputable section

/-- A048162: Expansion of (1 - x + 3*x^3 - 2*x^4 - 3*x^5)/(1 - 2*x + x^3).

Offset 0, canonical program `A048162.P2868790477840933760`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048162 (n : ℕ) : ℤ :=
  A048162.P2868790477840933760.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048162.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048164.P5441213250154009917

`1+(2^2^(n-1)+1)*a(n-1)` with `a(0)=1`
-/

namespace A048164.P5441213250154009917
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  1 + ((2 : ℝ) ^ ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) + 1) * a (n - 1)

end

end A048164.P5441213250154009917

noncomputable section

/-- A048164: a(0)=1, a(n+1)=1+(2^(2^n)+1)*a(n).

Offset 0, canonical program `A048164.P5441213250154009917`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048164 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048164.P5441213250154009917.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048164.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048271.P3805264884852165579

`a(n-1)-a(n-5)+a(n-6)` with `a(0)=1, a(1)=8, a(2)=9, a(3)=6, a(4)=4, a(5)=10`
-/

namespace A048271.P3805264884852165579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 9, 6, 4, 10] fun n a =>
  a (n - 1) - a (n - 5) + a (n - 6)

end

end A048271.P3805264884852165579

noncomputable section

/-- A048271: a(0) = 1, a(n+1) = -3*a(n) mod 11.

Offset 0, canonical program `A048271.P3805264884852165579`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048271 (n : ℕ) : ℤ :=
  A048271.P3805264884852165579.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048271.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048329.P8244295135444855626

`5*a(n-3)-4*a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=10`
-/

namespace A048329.P8244295135444855626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 5, 10] fun n a =>
  5 * a (n - 3) - 4 * a (n - 6)

end

end A048329.P8244295135444855626

noncomputable section

/-- A048329: Numbers that are repdigits in base 4.

Offset 0, canonical program `A048329.P8244295135444855626`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048329 (n : ℕ) : ℤ :=
  A048329.P8244295135444855626.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048329.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048332.P9001297808932519707

`(n-6*floor((n-1)/6))*(7^floor((n+5)/6)-1)/6`
-/

namespace A048332.P9001297808932519707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 6 * ⌊((n : ℤ) - 1 : ℚ) / 6⌋ : ℚ) * (((7 : ℚ) ^ (⌊(n + 5 : ℚ) / 6⌋ : ℤ) - 1) / 6)

end

end A048332.P9001297808932519707

noncomputable section

/-- A048332: Numbers that are repdigits in base 7.

Offset 0, canonical program `A048332.P9001297808932519707`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048332 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048332.P9001297808932519707.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048332.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048335.P3602139383880494383

`(n-10*floor((n-1)/10))*(11^floor((n+9)/10)-1)/10`
-/

namespace A048335.P3602139383880494383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 10 * ⌊((n : ℤ) - 1 : ℚ) / 10⌋ : ℚ) * (((11 : ℚ) ^ (⌊(n + 9 : ℚ) / 10⌋ : ℤ) - 1) / 10)

end

end A048335.P3602139383880494383

noncomputable section

/-- A048335: a(n) in base 11 is a repdigit.

Offset 0, canonical program `A048335.P3602139383880494383`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048335 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048335.P3602139383880494383.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048335.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048336.P6832829871988977052

`(n-11*floor((n-1)/11))*(12^floor((n+10)/11)-1)/11`
-/

namespace A048336.P6832829871988977052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 11 * ⌊((n : ℤ) - 1 : ℚ) / 11⌋ : ℚ) * (((12 : ℚ) ^ (⌊(n + 10 : ℚ) / 11⌋ : ℤ) - 1) / 11)

end

end A048336.P6832829871988977052

noncomputable section

/-- A048336: a(n) in base 12 is a repdigit.

Offset 0, canonical program `A048336.P6832829871988977052`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048336 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048336.P6832829871988977052.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048336.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048337.P16071426838045791301

`(n-12*floor((n-1)/12))*(13^floor((n+11)/12)-1)/12`
-/

namespace A048337.P16071426838045791301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 12 * ⌊((n : ℤ) - 1 : ℚ) / 12⌋ : ℚ) * (((13 : ℚ) ^ (⌊(n + 11 : ℚ) / 12⌋ : ℤ) - 1) / 12)

end

end A048337.P16071426838045791301

noncomputable section

/-- A048337: a(n) in base 13 is a repdigit.

Offset 0, canonical program `A048337.P16071426838045791301`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048337 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048337.P16071426838045791301.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048337.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048338.P9722529045157860205

`(n-13*floor((n-1)/13))*(14^floor((n+12)/13)-1)/13`
-/

namespace A048338.P9722529045157860205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 13 * ⌊((n : ℤ) - 1 : ℚ) / 13⌋ : ℚ) * (((14 : ℚ) ^ (⌊(n + 12 : ℚ) / 13⌋ : ℤ) - 1) / 13)

end

end A048338.P9722529045157860205

noncomputable section

/-- A048338: a(n) in base 14 is a repdigit.

Offset 0, canonical program `A048338.P9722529045157860205`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048338 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048338.P9722529045157860205.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048338.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048339.P7942497163645935758

`(n-14*floor((n-1)/14))*(15^floor((n+13)/14)-1)/14`
-/

namespace A048339.P7942497163645935758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 14 * ⌊((n : ℤ) - 1 : ℚ) / 14⌋ : ℚ) * (((15 : ℚ) ^ (⌊(n + 13 : ℚ) / 14⌋ : ℤ) - 1) / 14)

end

end A048339.P7942497163645935758

noncomputable section

/-- A048339: a(n) in base 15 is a repdigit.

Offset 0, canonical program `A048339.P7942497163645935758`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048339 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048339.P7942497163645935758.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048339.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048340.P7680277296927564045

`(n-15*floor((n-1)/15))*(16^floor((n+14)/15)-1)/15`
-/

namespace A048340.P7680277296927564045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 15 * ⌊((n : ℤ) - 1 : ℚ) / 15⌋ : ℚ) * (((16 : ℚ) ^ (⌊(n + 14 : ℚ) / 15⌋ : ℤ) - 1) / 15)

end

end A048340.P7680277296927564045

noncomputable section

/-- A048340: a(n) in base 16 is a repdigit.

Offset 0, canonical program `A048340.P7680277296927564045`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048340 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048340.P7680277296927564045.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048340.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048345.P4768351451435926752

`10*a(n-2)` with `a(0)=0, a(1)=10, a(2)=320`
-/

namespace A048345.P4768351451435926752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 10, 320] fun n a =>
  10 * a (n - 2)

end

end A048345.P4768351451435926752

noncomputable section

/-- A048345: a(n)^2 is the smallest square containing exactly n 0's.

Offset 1, canonical program `A048345.P4768351451435926752`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048345 (n : ℕ) : ℤ :=
  (A048345.P4768351451435926752.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048345.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048395.P7031608050998074081

`n*(1+2*n*(1+n))`
-/

namespace A048395.P7031608050998074081
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (1 + 2 * (n * (1 + n)))

end

end A048395.P7031608050998074081

noncomputable section

/-- A048395: Sum of consecutive nonsquares.

Offset 0, canonical program `A048395.P7031608050998074081`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048395 (n : ℕ) : ℤ :=
  (A048395.P7031608050998074081.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048395.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048396.P4772092292423368636

`(6*n^5+15*n^4+18*n^3+12*n²+3*n)/2`
-/

namespace A048396.P4772092292423368636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 * n ^ 5 + 15 * n ^ 4 + 18 * n ^ 3 + 12 * n ^ 2 + 3 * n : ℚ) / 2

end

end A048396.P4772092292423368636

noncomputable section

/-- A048396: Sums of consecutive noncubes.

Offset 0, canonical program `A048396.P4772092292423368636`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048396 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048396.P4772092292423368636.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048396.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048467.P482252860779251471

`2^(n-1)*(n+12)-5`
-/

namespace A048467.P482252860779251471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (n + 12 : ℚ) - 5

end

end A048467.P482252860779251471

noncomputable section

/-- A048467: a(n) = T(6,n), array T given by A047858.

Offset 0, canonical program `A048467.P482252860779251471`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048467 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048467.P482252860779251471.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048467.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048468.P8908760283281614714

`2^(n-1)*(n+14)-6`
-/

namespace A048468.P8908760283281614714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (n + 14 : ℚ) - 6

end

end A048468.P8908760283281614714

noncomputable section

/-- A048468: a(n) = T(7,n), array T given by A047858.

Offset 0, canonical program `A048468.P8908760283281614714`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048468 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048468.P8908760283281614714.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048468.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048469.P5656944866439569387

`2^(n-1)*(n+16)-7`
-/

namespace A048469.P5656944866439569387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (n + 16 : ℚ) - 7

end

end A048469.P5656944866439569387

noncomputable section

/-- A048469: a(n) = T(8,n), array T given by A047858.

Offset 0, canonical program `A048469.P5656944866439569387`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048469 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048469.P5656944866439569387.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048469.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048470.P5711944713093029145

`(n+1)*(2^(n+1)-n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048470.P5711944713093029145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (((2 ^ (n + 1) : ℤ) - (n : ℤ) : ℚ) / 2)

end

end A048470.P5711944713093029145

noncomputable section

/-- A048470: a(n) = (n+1)*(2^(n+1) - n)/2.

Offset 0, canonical program `A048470.P5711944713093029145`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048470 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048470.P5711944713093029145.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048470.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048474.P12532424794102202156

`3*n*2^(n-1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048474.P12532424794102202156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) + 1

end

end A048474.P12532424794102202156

noncomputable section

/-- A048474: a(n) = 3*n*2^(n-1) + 1.

Offset 0, canonical program `A048474.P12532424794102202156`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048474 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048474.P12532424794102202156.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048474.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048476.P3181406558533632458

`5*n*2^(n-1)+1`
-/

namespace A048476.P3181406558533632458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * ((n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) + 1

end

end A048476.P3181406558533632458

noncomputable section

/-- A048476: a(n) = T(4,n), array T given by A048472.

Offset 0, canonical program `A048476.P3181406558533632458`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048476 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048476.P3181406558533632458.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048476.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048477.P5289429038855807610

`3*n*2^n+1`
-/

namespace A048477.P5289429038855807610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n * 2 ^ n) + 1

end

end A048477.P5289429038855807610

noncomputable section

/-- A048477: a(n) = T(5,n), array T given by A048472.

Offset 0, canonical program `A048477.P5289429038855807610`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048477 (n : ℕ) : ℤ :=
  (A048477.P5289429038855807610.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048477.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048478.P1313130453141526233

`7*n*2^(n-1)+1`
-/

namespace A048478.P1313130453141526233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  7 * ((n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) + 1

end

end A048478.P1313130453141526233

noncomputable section

/-- A048478: a(n) = T(6,n), array T given by A048472.

Offset 0, canonical program `A048478.P1313130453141526233`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048478 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048478.P1313130453141526233.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048478.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048479.P8653577407291921717

`8*n*2^(n-1)+1`
-/

namespace A048479.P8653577407291921717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 * ((n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) + 1

end

end A048479.P8653577407291921717

noncomputable section

/-- A048479: a(n) = T(7,n), array T given by A048472.

Offset 0, canonical program `A048479.P8653577407291921717`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048479 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048479.P8653577407291921717.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048479.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048480.P9435349441680753403

`9*n*2^(n-1)+1`
-/

namespace A048480.P9435349441680753403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  9 * ((n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) + 1

end

end A048480.P9435349441680753403

noncomputable section

/-- A048480: a(n) = T(8,n), array T given by A048472.

Offset 0, canonical program `A048480.P9435349441680753403`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048480 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048480.P9435349441680753403.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048480.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048481.P7174928985242152464

`2^(n+1)*(n-2)+2*n+5`
-/

namespace A048481.P7174928985242152464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * ((n : ℤ) - 2) + (2 * n : ℤ) + 5

end

end A048481.P7174928985242152464

noncomputable section

/-- A048481: a(n) = T(0,n) + T(1,n-1) + ... + T(n,0), array T given by A048472.

Offset 0, canonical program `A048481.P7174928985242152464`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048481 (n : ℕ) : ℤ :=
  A048481.P7174928985242152464.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048481.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048482.P13152164092618838336

`(n²+n)*2^(n-1)+1`
-/

namespace A048482.P13152164092618838336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 1

end

end A048482.P13152164092618838336

noncomputable section

/-- A048482: a(n) = T(n,n), array T given by A048472.

Offset 0, canonical program `A048482.P13152164092618838336`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048482 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048482.P13152164092618838336.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048482.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048487.P12792762817219359153

`5*2^n-4`
-/

namespace A048487.P12792762817219359153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * 2 ^ n : ℤ) - 4

end

end A048487.P12792762817219359153

noncomputable section

/-- A048487: a(n) = T(4,n), array T given by A048483.

Offset 0, canonical program `A048487.P12792762817219359153`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048487 (n : ℕ) : ℤ :=
  A048487.P12792762817219359153.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048487.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048490.P10521047800746211574

`8*2^n-7`
-/

namespace A048490.P10521047800746211574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * 2 ^ n : ℤ) - 7

end

end A048490.P10521047800746211574

noncomputable section

/-- A048490: a(n) = T(7,n), array T given by A048483.

Offset 0, canonical program `A048490.P10521047800746211574`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048490 (n : ℕ) : ℤ :=
  A048490.P10521047800746211574.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048490.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048491.P7822580525472508904

`9*2^n-8`
-/

namespace A048491.P7822580525472508904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * 2 ^ n : ℤ) - 8

end

end A048491.P7822580525472508904

noncomputable section

/-- A048491: a(n) = T(8,n), array T given by A048483.

Offset 0, canonical program `A048491.P7822580525472508904`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048491 (n : ℕ) : ℤ :=
  A048491.P7822580525472508904.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048491.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048492.P6116617801645238228

`a(n-1)+2^(n+1)-(n+1)` with `a(0)=1`
-/

namespace A048492.P6116617801645238228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 ^ (n + 1) : ℤ) - (n + 1 : ℤ)

end

end A048492.P6116617801645238228

noncomputable section

/-- A048492: a(n) = (8*(2^n) - n^2 - 3*n - 6)/2.

Offset 0, canonical program `A048492.P6116617801645238228`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048492 (n : ℕ) : ℤ :=
  A048492.P6116617801645238228.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048492.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048496.P10038668049760122665

`2^(n-1)*(3*n-4)+3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048496.P10038668049760122665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((3 * n : ℤ) - 4 : ℚ) + 3

end

end A048496.P10038668049760122665

noncomputable section

/-- A048496: a(n) = 2^(n-1)*(3*n-4) + 3.

Offset 0, canonical program `A048496.P10038668049760122665`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048496 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048496.P10038668049760122665.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048496.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048497.P6171237933817663214

`2^(n-1)*(4*n-6)+4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048497.P6171237933817663214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((4 * n : ℤ) - 6 : ℚ) + 4

end

end A048497.P6171237933817663214

noncomputable section

/-- A048497: a(n) = 2^(n-1)*(4*n-6) + 4.

Offset 0, canonical program `A048497.P6171237933817663214`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048497 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048497.P6171237933817663214.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048497.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048498.P12645167656800031907

`2^(n-1)*(5*n-8)+5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048498.P12645167656800031907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((5 * n : ℤ) - 8 : ℚ) + 5

end

end A048498.P12645167656800031907

noncomputable section

/-- A048498: a(n) = 2^(n-1)*(5*n-8) + 5.

Offset 0, canonical program `A048498.P12645167656800031907`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048498 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048498.P12645167656800031907.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048498.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048499.P16576829052140968126

`2^(n-1)*(6*n-10)+6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048499.P16576829052140968126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((6 * n : ℤ) - 10 : ℚ) + 6

end

end A048499.P16576829052140968126

noncomputable section

/-- A048499: a(n) = 2^(n-1)*(6*n-10)+6.

Offset 0, canonical program `A048499.P16576829052140968126`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048499 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048499.P16576829052140968126.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048499.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048500.P14690285155973139423

`2^(n-1)*(7*n-12)+7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048500.P14690285155973139423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((7 * n : ℤ) - 12 : ℚ) + 7

end

end A048500.P14690285155973139423

noncomputable section

/-- A048500: a(n) = 2^(n-1)*(7*n-12) + 7.

Offset 0, canonical program `A048500.P14690285155973139423`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048500 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048500.P14690285155973139423.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048500.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048501.P4603674595961243869

`2^(n-1)*(8*n-14)+8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048501.P4603674595961243869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((8 * n : ℤ) - 14 : ℚ) + 8

end

end A048501.P4603674595961243869

noncomputable section

/-- A048501: a(n) = 2^(n-1)*(8*n-14) + 8.

Offset 0, canonical program `A048501.P4603674595961243869`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048501 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048501.P4603674595961243869.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048501.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048502.P2219356796365350861

`2^(n-1)*(9*n-16)+9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048502.P2219356796365350861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((9 * n : ℤ) - 16 : ℚ) + 9

end

end A048502.P2219356796365350861

noncomputable section

/-- A048502: a(n) = 2^(n-1)*(9*n-16) + 9.

Offset 0, canonical program `A048502.P2219356796365350861`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048502 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048502.P2219356796365350861.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048502.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048503.P15002060044115626457

`(14+7*n+n²+(n-3)*2^(n+2))/2`
-/

namespace A048503.P15002060044115626457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((14 + 7 * n + n ^ 2 : ℤ) + ((n : ℤ) - 3) * (2 ^ (n + 2) : ℤ) : ℚ) / 2

end

end A048503.P15002060044115626457

noncomputable section

/-- A048503: Expansion of g.f. (1 - 4*x + 6*x^2 - 2*x^3)/((1-x)^3*(1-2*x)^2).

Offset 0, canonical program `A048503.P15002060044115626457`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048503 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048503.P15002060044115626457.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048503.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048504.P11661880890497463867

`n*(n-1)*2^(n-1)+n+1`
-/

namespace A048504.P11661880890497463867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (((n : ℤ) - 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) + (n + 1 : ℚ)

end

end A048504.P11661880890497463867

noncomputable section

/-- A048504: a(n) = T(n,n), array T given by A048494.

Offset 0, canonical program `A048504.P11661880890497463867`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048504 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048504.P11661880890497463867.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048504.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048506.P7821847189165304856

`n*(n+1)*2^(n-2)+1`
-/

namespace A048506.P7821847189165304856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n + 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)) + 1

end

end A048506.P7821847189165304856

noncomputable section

/-- A048506: a(n) = T(0,n), array T given by A048505.

Offset 0, canonical program `A048506.P7821847189165304856`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048506 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048506.P7821847189165304856.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048506.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048507.P3457194782195800232

`(n²+9*n+16)*2^(n-2)-3`
-/

namespace A048507.P3457194782195800232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 9 * n + 16 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - 3

end

end A048507.P3457194782195800232

noncomputable section

/-- A048507: a(n) = T(2,n), array T given by A048505.

Offset 0, canonical program `A048507.P3457194782195800232`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048507 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048507.P3457194782195800232.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048507.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048508.P2652067938718900545

`(n+4)*(n+9)*2^(n-2)-8`
-/

namespace A048508.P2652067938718900545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℚ) * ((n + 9 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)) - 8

end

end A048508.P2652067938718900545

noncomputable section

/-- A048508: a(n) = T(3,n), array T given by A048505.

Offset 0, canonical program `A048508.P2652067938718900545`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048508 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048508.P2652067938718900545.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048508.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048509.P14616637768825833167

`(n²+17*n+64)*2^(n-2)-15`
-/

namespace A048509.P14616637768825833167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 17 * n + 64 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - 15

end

end A048509.P14616637768825833167

noncomputable section

/-- A048509: a(n) = T(4,n), array T given by A048505.

Offset 0, canonical program `A048509.P14616637768825833167`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048509 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048509.P14616637768825833167.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048509.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048510.P3200567682381852816

`7*a(n-1)-18*a(n-2)+20*a(n-3)-8*a(n-4)` with `a(0)=1, a(1)=37, a(2)=122, a(3)=320`
-/

namespace A048510.P3200567682381852816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 37, 122, 320] fun n a =>
  7 * a (n - 1) - 18 * a (n - 2) + 20 * a (n - 3) - 8 * a (n - 4)

end

end A048510.P3200567682381852816

noncomputable section

/-- A048510: a(n) = T(5,n), array T given by A048505.

Offset 0, canonical program `A048510.P3200567682381852816`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048510 (n : ℕ) : ℤ :=
  A048510.P3200567682381852816.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048510.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048511.P14624561850009596388

`(n+9)*(n+16)*2^(n-2)-35`
-/

namespace A048511.P14624561850009596388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 9 : ℚ) * ((n + 16 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)) - 35

end

end A048511.P14624561850009596388

noncomputable section

/-- A048511: a(n) = T(6,n), array T given by A048505.

Offset 0, canonical program `A048511.P14624561850009596388`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048511 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048511.P14624561850009596388.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048511.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048512.P10277746947776527850

`(n²+29*n+196)*2^(n-2)-48`
-/

namespace A048512.P10277746947776527850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 29 * n + 196 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - 48

end

end A048512.P10277746947776527850

noncomputable section

/-- A048512: a(n) = T(7,n), array T given by A048505.

Offset 0, canonical program `A048512.P10277746947776527850`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048512 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048512.P10277746947776527850.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048512.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048513.P7819311905271726713

`(n²+33*n+256)*2^(n-2)-63`
-/

namespace A048513.P7819311905271726713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 33 * n + 256 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - 63

end

end A048513.P7819311905271726713

noncomputable section

/-- A048513: a(n) = T(8,n), array T given by A048505.

Offset 0, canonical program `A048513.P7819311905271726713`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048513 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048513.P7819311905271726713.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048513.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048515.P6923430101304562401

`(9*n²+n)*2^(n-2)-n²+1`
-/

namespace A048515.P6923430101304562401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * n ^ 2 + n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - (n ^ 2 : ℚ) + 1

end

end A048515.P6923430101304562401

noncomputable section

/-- A048515: a(n) = T(n,n), array T given by A048505.

Offset 0, canonical program `A048515.P6923430101304562401`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048515 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048515.P6923430101304562401.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048515.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048575.P12938457523830492032

`3*a(n-1)-a(n-2)` with `a(0)=2, a(1)=5`
-/

namespace A048575.P12938457523830492032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  3 * a (n - 1) - a (n - 2)

end

end A048575.P12938457523830492032

noncomputable section

/-- A048575: Pisot sequences L(2,5), E(2,5).

Offset 0, canonical program `A048575.P12938457523830492032`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048575 (n : ℕ) : ℤ :=
  A048575.P12938457523830492032.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048575.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048576.P14674218448893603417

`ceil(a(n-1)²/a(n-2))` with `a(0)=2, a(1)=7`
-/

namespace A048576.P14674218448893603417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉

end

end A048576.P14674218448893603417

noncomputable section

/-- A048576: Pisot sequence L(2,7).

Offset 0, canonical program `A048576.P14674218448893603417`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048576 (n : ℕ) : ℤ :=
  A048576.P14674218448893603417.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048576.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048577.P13834030148595370685

`2*a(n-1)-a(n-3)` with `a(0)=3, a(1)=4, a(2)=6`
-/

namespace A048577.P13834030148595370685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4, 6] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A048577.P13834030148595370685

noncomputable section

/-- A048577: Pisot sequence L(3,4).

Offset 0, canonical program `A048577.P13834030148595370685`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048577 (n : ℕ) : ℤ :=
  A048577.P13834030148595370685.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048577.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048578.P13686089786535013419

`2^(n+1)+1`
-/

namespace A048578.P13686089786535013419
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1) + 1

end

end A048578.P13686089786535013419

noncomputable section

/-- A048578: Pisot sequence L(3,5).

Offset 0, canonical program `A048578.P13686089786535013419`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048578 (n : ℕ) : ℤ :=
  (A048578.P13686089786535013419.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048578.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048579.P15262648230355956899

`ceil(a(n-1)²/a(n-2))` with `a(0)=3, a(1)=8`
-/

namespace A048579.P15262648230355956899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 8] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉

end

end A048579.P15262648230355956899

noncomputable section

/-- A048579: Pisot sequence L(3,8).

Offset 0, canonical program `A048579.P15262648230355956899`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048579 (n : ℕ) : ℤ :=
  A048579.P15262648230355956899.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048579.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048580.P9275668782280333019

`4*a(n-1)-2*a(n-2)` with `a(0)=3, a(1)=10`
-/

namespace A048580.P9275668782280333019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 10] fun n a =>
  4 * a (n - 1) - 2 * a (n - 2)

end

end A048580.P9275668782280333019

noncomputable section

/-- A048580: Pisot sequence L(3,10).

Offset 0, canonical program `A048580.P9275668782280333019`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048580 (n : ℕ) : ℤ :=
  A048580.P9275668782280333019.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048580.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048582.P13621045150089118425

`ceil(a(n-1)²/a(n-2))` with `a(0)=4, a(1)=9`
-/

namespace A048582.P13621045150089118425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 9] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉

end

end A048582.P13621045150089118425

noncomputable section

/-- A048582: Pisot sequence L(4,9).

Offset 0, canonical program `A048582.P13621045150089118425`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048582 (n : ℕ) : ℤ :=
  A048582.P13621045150089118425.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048582.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048583.P12098355498081058521

`ceil(a(n-1)²/a(n-2))` with `a(0)=5, a(1)=6`
-/

namespace A048583.P12098355498081058521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 6] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉

end

end A048583.P12098355498081058521

noncomputable section

/-- A048583: Pisot sequence L(5,6).

Offset 0, canonical program `A048583.P12098355498081058521`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048583 (n : ℕ) : ℤ :=
  A048583.P12098355498081058521.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048583.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048584.P9091899586838581431

`2*a(n-1)-a(n-3)` with `a(0)=5, a(1)=7, a(2)=10`
-/

namespace A048584.P9091899586838581431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 7, 10] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A048584.P9091899586838581431

noncomputable section

/-- A048584: Pisot sequence L(5,7).

Offset 0, canonical program `A048584.P9091899586838581431`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048584 (n : ℕ) : ℤ :=
  A048584.P9091899586838581431.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048584.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048585.P3093131361615934223

`2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` with `a(0)=6, a(1)=7, a(2)=9, a(3)=12`
-/

namespace A048585.P3093131361615934223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 7, 9, 12] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - a (n - 4)

end

end A048585.P3093131361615934223

noncomputable section

/-- A048585: Pisot sequence L(6,7).

Offset 0, canonical program `A048585.P3093131361615934223`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048585 (n : ℕ) : ℤ :=
  A048585.P3093131361615934223.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048585.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048586.P7483846372208091650

`ceil(a(n-1)²/a(n-2))` with `a(0)=6, a(1)=8`
-/

namespace A048586.P7483846372208091650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 8] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉

end

end A048586.P7483846372208091650

noncomputable section

/-- A048586: Pisot sequence L(6,8).

Offset 0, canonical program `A048586.P7483846372208091650`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048586 (n : ℕ) : ℤ :=
  A048586.P7483846372208091650.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048586.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048587.P18379089883551573958

`3*a(n-1)-3*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=6, a(1)=10, a(2)=17, a(3)=29`
-/

namespace A048587.P18379089883551573958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 10, 17, 29] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + 2 * a (n - 3) - a (n - 4)

end

end A048587.P18379089883551573958

noncomputable section

/-- A048587: Pisot sequence L(6,10).

Offset 0, canonical program `A048587.P18379089883551573958`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048587 (n : ℕ) : ℤ :=
  A048587.P18379089883551573958.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048587.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048588.P373400505800299805

`2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` with `a(0)=7, a(1)=8, a(2)=10, a(3)=13`
-/

namespace A048588.P373400505800299805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 8, 10, 13] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - a (n - 4)

end

end A048588.P373400505800299805

noncomputable section

/-- A048588: Pisot sequence L(7,8).

Offset 0, canonical program `A048588.P373400505800299805`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048588 (n : ℕ) : ℤ :=
  A048588.P373400505800299805.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048588.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048589.P13441729831796858036

`2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` with `a(0)=7, a(1)=9, a(2)=12, a(3)=16`
-/

namespace A048589.P13441729831796858036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 9, 12, 16] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - a (n - 4)

end

end A048589.P13441729831796858036

noncomputable section

/-- A048589: Pisot sequence L(7,9).

Offset 0, canonical program `A048589.P13441729831796858036`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048589 (n : ℕ) : ℤ :=
  A048589.P13441729831796858036.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048589.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048590.P14421473332658495931

`2*a(n-1)-a(n-2)+a(n-4)-a(n-5)` with `a(0)=8, a(1)=9, a(2)=11, a(3)=14, a(4)=18, a(5)=24`
-/

namespace A048590.P14421473332658495931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 9, 11, 14, 18, 24] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 4) - a (n - 5)

end

end A048590.P14421473332658495931

noncomputable section

/-- A048590: Pisot sequence L(8,9).

Offset 0, canonical program `A048590.P14421473332658495931`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048590 (n : ℕ) : ℤ :=
  A048590.P14421473332658495931.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048590.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048591.P8521668911290940379

`2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` with `a(0)=8, a(1)=10, a(2)=13, a(3)=17`
-/

namespace A048591.P8521668911290940379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 10, 13, 17] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - a (n - 4)

end

end A048591.P8521668911290940379

noncomputable section

/-- A048591: Pisot sequence L(8,10).

Offset 0, canonical program `A048591.P8521668911290940379`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048591 (n : ℕ) : ℤ :=
  A048591.P8521668911290940379.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048591.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048592.P17357701784516629224

`2*a(n-1)-a(n-2)+a(n-4)-a(n-5)` with `a(0)=9, a(1)=10, a(2)=12, a(3)=15, a(4)=19, a(5)=25`
-/

namespace A048592.P17357701784516629224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9, 10, 12, 15, 19, 25] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 4) - a (n - 5)

end

end A048592.P17357701784516629224

noncomputable section

/-- A048592: Pisot sequence L(9,10).

Offset 0, canonical program `A048592.P17357701784516629224`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048592 (n : ℕ) : ℤ :=
  A048592.P17357701784516629224.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048592.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048625.P4891212532977413926

`a(n-1)+a(n-3)` with `a(0)=4, a(1)=6, a(2)=9`
-/

namespace A048625.P4891212532977413926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 6, 9] fun n a =>
  a (n - 1) + a (n - 3)

end

end A048625.P4891212532977413926

noncomputable section

/-- A048625: Pisot sequence P(4,6).

Offset 0, canonical program `A048625.P4891212532977413926`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048625 (n : ℕ) : ℤ :=
  (A048625.P4891212532977413926.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048625.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048626.P14176195167096725475

`a(n-1)+a(n-3)` with `a(0)=6, a(1)=9, a(2)=13`
-/

namespace A048626.P14176195167096725475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6, 9, 13] fun n a =>
  a (n - 1) + a (n - 3)

end

end A048626.P14176195167096725475

noncomputable section

/-- A048626: Pisot sequence P(6,9).

Offset 0, canonical program `A048626.P14176195167096725475`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048626 (n : ℕ) : ℤ :=
  (A048626.P14176195167096725475.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048626.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048635.P7304203680119451702

`4*a(n-1)-7*a(n-2)+8*a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=14, a(2)=24, a(3)=14`
-/

namespace A048635.P7304203680119451702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 14, 24, 14] fun n a =>
  4 * a (n - 1) - 7 * a (n - 2) + 8 * a (n - 3) - 4 * a (n - 4)

end

end A048635.P7304203680119451702

noncomputable section

/-- A048635: Number of rational points of Klein curve over GF(2^n).

Offset 1, canonical program `A048635.P7304203680119451702`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048635 (n : ℕ) : ℤ :=
  A048635.P7304203680119451702.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048635.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048655.P1606543997500894648

`2*a(n-1)+a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A048655.P1606543997500894648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  2 * a (n - 1) + a (n - 2)

end

end A048655.P1606543997500894648

noncomputable section

/-- A048655: Generalized Pellian with second term equal to 5.

Offset 0, canonical program `A048655.P1606543997500894648`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048655 (n : ℕ) : ℤ :=
  (A048655.P1606543997500894648.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048655.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048678.P373883144184057159

`(3-(-1)^n)*a(floor(n/2))+(1-(-1)^n)/2` with `a(0)=0`
-/

namespace A048678.P373883144184057159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (3 - (-1) ^ n : ℚ) * a ⌊(n : ℚ) / 2⌋.toNat + (1 - (-1) ^ n : ℚ) / 2

end

end A048678.P373883144184057159

noncomputable section

/-- A048678: Binary expansion of nonnegative integers expanded to "Zeckendorffian format" with rewrite rules 0->0, 1->01.

Offset 0, canonical program `A048678.P373883144184057159`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048678 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048678.P373883144184057159.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048678.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048693.P4696771100022917895

`2*a(n-1)+a(n-2)` with `a(0)=1, a(1)=6`
-/

namespace A048693.P4696771100022917895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  2 * a (n - 1) + a (n - 2)

end

end A048693.P4696771100022917895

noncomputable section

/-- A048693: Generalized Pellian with 2nd term equal to 6.

Offset 0, canonical program `A048693.P4696771100022917895`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048693 (n : ℕ) : ℤ :=
  (A048693.P4696771100022917895.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048693.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048694.P15724250820898679982

`2*a(n-1)+a(n-2)` with `a(0)=1, a(1)=7`
-/

namespace A048694.P15724250820898679982
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  2 * a (n - 1) + a (n - 2)

end

end A048694.P15724250820898679982

noncomputable section

/-- A048694: Generalized Pellian with second term equal to 7.

Offset 0, canonical program `A048694.P15724250820898679982`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048694 (n : ℕ) : ℤ :=
  (A048694.P15724250820898679982.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048694.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048695.P12312906506144184987

`2*a(n-1)+a(n-2)` with `a(0)=1, a(1)=8`
-/

namespace A048695.P12312906506144184987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  2 * a (n - 1) + a (n - 2)

end

end A048695.P12312906506144184987

noncomputable section

/-- A048695: Generalized Pellian with second term equal to 8.

Offset 0, canonical program `A048695.P12312906506144184987`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048695 (n : ℕ) : ℤ :=
  (A048695.P12312906506144184987.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048695.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048696.P9460989097753470199

`2*a(n-1)+a(n-2)` with `a(0)=1, a(1)=9`
-/

namespace A048696.P9460989097753470199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n a =>
  2 * a (n - 1) + a (n - 2)

end

end A048696.P9460989097753470199

noncomputable section

/-- A048696: Generalized Pellian with second term equal to 9.

Offset 0, canonical program `A048696.P9460989097753470199`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048696 (n : ℕ) : ℤ :=
  (A048696.P9460989097753470199.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048696.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048697.P16319538447097147296

`2*a(n-1)+a(n-2)` with `a(0)=1, a(1)=10`
-/

namespace A048697.P16319538447097147296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n a =>
  2 * a (n - 1) + a (n - 2)

end

end A048697.P16319538447097147296

noncomputable section

/-- A048697: Generalized Pellian with second term equal to 10.

Offset 0, canonical program `A048697.P16319538447097147296`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048697 (n : ℕ) : ℤ :=
  (A048697.P16319538447097147296.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048697.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048707.P4434072727229439948

`(a(n-1)+1)*(2^2^(n-1)-1)` with `a(0)=0`
-/

namespace A048707.P4434072727229439948
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + 1) * ((2 : ℝ) ^ ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - 1)

end

end A048707.P4434072727229439948

noncomputable section

/-- A048707: Numerators of ratios converging to Thue-Morse constant.

Offset 0, canonical program `A048707.P4434072727229439948`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048707 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048707.P4434072727229439948.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048707.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048724.P1421603088410420812

`xor(n, 2*n)`
-/

namespace A048724.P1421603088410420812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

end

end A048724.P1421603088410420812

noncomputable section

/-- A048724: Write n and 2n in binary and add them mod 2.

Offset 0, canonical program `A048724.P1421603088410420812`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048724 (n : ℕ) : ℤ :=
  (A048724.P1421603088410420812.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048724.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048725.P10070792755575768917

`xor(n, 4*n)`
-/

namespace A048725.P10070792755575768917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (4 * n)

end

end A048725.P10070792755575768917

noncomputable section

/-- A048725: a(n) = Xmult(n,5) or rule90(n,1).

Offset 0, canonical program `A048725.P10070792755575768917`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048725 (n : ℕ) : ℤ :=
  (A048725.P10070792755575768917.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048725.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048735.P2863035607821774679

`and(n, floor(n/2))`
-/

namespace A048735.P2863035607821774679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ⌊(n : ℚ) / 2⌋

end

end A048735.P2863035607821774679

noncomputable section

/-- A048735: a(n) = (n AND floor(n/2)), where AND is bitwise and-operator (A004198).

Offset 0, canonical program `A048735.P2863035607821774679`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048735 (n : ℕ) : ℤ :=
  A048735.P2863035607821774679.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048735.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048736.P14384150897681957513

`10*a(n-3)-10*a(n-6)+a(n-9)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=3, a(6)=5, a(7)=13, a(8)=22`
-/

namespace A048736.P14384150897681957513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 2, 3, 5, 13, 22] fun n a =>
  10 * a (n - 3) - 10 * a (n - 6) + a (n - 9)

end

end A048736.P14384150897681957513

noncomputable section

/-- A048736: Dana Scott's sequence: a(n) = (a(n-2) + a(n-1) * a(n-3)) / a(n-4), a(0) = a(1) = a(2) = a(3) = 1.

Offset 0, canonical program `A048736.P14384150897681957513`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048736 (n : ℕ) : ℤ :=
  A048736.P14384150897681957513.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048736.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048739.P16641374678058467442

`2*a(n-1)+a(n-2)+1` with `a(0)=1, a(1)=3`
-/

namespace A048739.P16641374678058467442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * a (n - 1) + a (n - 2) + 1

end

end A048739.P16641374678058467442

noncomputable section

/-- A048739: Expansion of 1/((1 - x)*(1 - 2*x - x^2)).

Offset 0, canonical program `A048739.P16641374678058467442`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048739 (n : ℕ) : ℤ :=
  (A048739.P16641374678058467442.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048739.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048745.P4187734238670009263

`2*a(n-1)+a(n-2)+3` with `a(0)=1, a(1)=5`
-/

namespace A048745.P4187734238670009263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  2 * a (n - 1) + a (n - 2) + 3

end

end A048745.P4187734238670009263

noncomputable section

/-- A048745: Partial sums of A048654.

Offset 0, canonical program `A048745.P4187734238670009263`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048745 (n : ℕ) : ℤ :=
  (A048745.P4187734238670009263.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048745.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048746.P1763314460443899216

`2*a(n-1)+a(n-2)+4` with `a(0)=1, a(1)=6`
-/

namespace A048746.P1763314460443899216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  2 * a (n - 1) + a (n - 2) + 4

end

end A048746.P1763314460443899216

noncomputable section

/-- A048746: Partial sums of A048655.

Offset 0, canonical program `A048746.P1763314460443899216`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048746 (n : ℕ) : ℤ :=
  (A048746.P1763314460443899216.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048746.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048755.P4114961428006683584

`2*a(n-1)+a(n-2)+5` with `a(0)=1, a(1)=7`
-/

namespace A048755.P4114961428006683584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  2 * a (n - 1) + a (n - 2) + 5

end

end A048755.P4114961428006683584

noncomputable section

/-- A048755: Partial sums of A048693.

Offset 0, canonical program `A048755.P4114961428006683584`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048755 (n : ℕ) : ℤ :=
  (A048755.P4114961428006683584.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048755.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048759.P14074643916314703755

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=12, a(1)=12, a(2)=30, a(3)=24, a(4)=56, a(5)=40`
-/

namespace A048759.P14074643916314703755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12, 12, 30, 24, 56, 40] fun n a =>
  3 * a (n - 2) - 3 * a (n - 4) + a (n - 6)

end

end A048759.P14074643916314703755

noncomputable section

/-- A048759: Longest perimeter of a Pythagorean triangle with n as length of one of the three sides.

Offset 3, canonical program `A048759.P14074643916314703755`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048759 (n : ℕ) : ℤ :=
  A048759.P14074643916314703755.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048759.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048761.P914736112300567897

`ceil(sqrt(n))²`
-/

namespace A048761.P914736112300567897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n : ℝ)⌉ ^ 2

end

end A048761.P914736112300567897

noncomputable section

/-- A048761: Smallest square greater than or equal to n.

Offset 0, canonical program `A048761.P914736112300567897`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048761 (n : ℕ) : ℤ :=
  A048761.P914736112300567897.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048761.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048770.P2530451898033570753

`2*a(n-1)+a(n-2)+6` with `a(0)=1, a(1)=8`
-/

namespace A048770.P2530451898033570753
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  2 * a (n - 1) + a (n - 2) + 6

end

end A048770.P2530451898033570753

noncomputable section

/-- A048770: Partial sums of A048694.

Offset 0, canonical program `A048770.P2530451898033570753`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048770 (n : ℕ) : ℤ :=
  (A048770.P2530451898033570753.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048770.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048771.P14185889891628416090

`3*a(n-1)-a(n-2)-a(n-3)` with `a(0)=1, a(1)=9, a(2)=26`
-/

namespace A048771.P14185889891628416090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9, 26] fun n a =>
  3 * a (n - 1) - a (n - 2) - a (n - 3)

end

end A048771.P14185889891628416090

noncomputable section

/-- A048771: Partial sums of A048695.

Offset 0, canonical program `A048771.P14185889891628416090`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048771 (n : ℕ) : ℤ :=
  A048771.P14185889891628416090.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048771.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048772.P11156229129801561525

`2*a(n-1)+a(n-2)+8` with `a(0)=1, a(1)=10`
-/

namespace A048772.P11156229129801561525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n a =>
  2 * a (n - 1) + a (n - 2) + 8

end

end A048772.P11156229129801561525

noncomputable section

/-- A048772: Partial sums of A048696.

Offset 0, canonical program `A048772.P11156229129801561525`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048772 (n : ℕ) : ℤ :=
  (A048772.P11156229129801561525.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048772.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048773.P259006406744923686

`2*a(n-1)+a(n-2)+9` with `a(0)=1, a(1)=11`
-/

namespace A048773.P259006406744923686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n a =>
  2 * a (n - 1) + a (n - 2) + 9

end

end A048773.P259006406744923686

noncomputable section

/-- A048773: Partial sums of A048697.

Offset 0, canonical program `A048773.P259006406744923686`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048773 (n : ℕ) : ℤ :=
  (A048773.P259006406744923686.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048773.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048776.P3505070473272834624

`2*a(n-1)+a(n-2)+n+1` with `a(0)=1, a(1)=4`
-/

namespace A048776.P3505070473272834624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * a (n - 1) + a (n - 2) + (n + 1)

end

end A048776.P3505070473272834624

noncomputable section

/-- A048776: First partial sums of A048739; second partial sums of A000129.

Offset 0, canonical program `A048776.P3505070473272834624`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048776 (n : ℕ) : ℤ :=
  (A048776.P3505070473272834624.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048776.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048777.P2806146522248096402

`2*a(n-1)+a(n-2)+2*n+1` with `a(0)=1, a(1)=5`
-/

namespace A048777.P2806146522248096402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  2 * a (n - 1) + a (n - 2) + 2 * n + 1

end

end A048777.P2806146522248096402

noncomputable section

/-- A048777: First partial sums of A005409; second partial sums of A001333.

Offset 0, canonical program `A048777.P2806146522248096402`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048777 (n : ℕ) : ℤ :=
  (A048777.P2806146522248096402.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048777.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048778.P6087380154965872988

`2*a(n-1)+a(n-2)+3*n+1` with `a(0)=1, a(1)=6`
-/

namespace A048778.P6087380154965872988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  2 * a (n - 1) + a (n - 2) + 3 * n + 1

end

end A048778.P6087380154965872988

noncomputable section

/-- A048778: First partial sums of A048745; second partial sums of A048654.

Offset 0, canonical program `A048778.P6087380154965872988`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048778 (n : ℕ) : ℤ :=
  (A048778.P6087380154965872988.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048778.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048779.P5266211846176625958

`2*a(n-1)*(32*a(n-2)+a(n-1))/(18*a(n-2)-a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A048779.P5266211846176625958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * a (n - 1) * ((32 * a (n - 2) + a (n - 1)) / (18 * a (n - 2) - a (n - 1)))

end

end A048779.P5266211846176625958

noncomputable section

/-- A048779: Coefficients of power series for (1 - (1-8*x)^(1/4))/2.

Offset 1, canonical program `A048779.P5266211846176625958`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048779 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048779.P5266211846176625958.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048779.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048788.P6090502968987335348

`4*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A048788.P6090502968987335348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3] fun n a =>
  4 * a (n - 2) - a (n - 4)

end

end A048788.P6090502968987335348

noncomputable section

/-- A048788: a(2n+1) = a(2n) + a(2n-1), a(2n) = 2*a(2n-1) + a(2n-2); a(n) = n for n = 0, 1.

Offset 0, canonical program `A048788.P6090502968987335348`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048788 (n : ℕ) : ℤ :=
  A048788.P6090502968987335348.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048788.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048840.P11138214720422181212

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=12, a(4)=22, a(5)=34`
-/

namespace A048840.P11138214720422181212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5, 12, 22, 34] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A048840.P11138214720422181212

noncomputable section

/-- A048840: Expansion of (1 - x + 2*x^2 + 2*x^3 - x^4 - x^5)/(1-x)^3.

Offset 0, canonical program `A048840.P11138214720422181212`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048840 (n : ℕ) : ℤ :=
  A048840.P11138214720422181212.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048840.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048875.P16732957024664613317

`4*a(n-1)+a(n-2)` with `a(0)=1, a(1)=6`
-/

namespace A048875.P16732957024664613317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  4 * a (n - 1) + a (n - 2)

end

end A048875.P16732957024664613317

noncomputable section

/-- A048875: Generalized Pellian with second term of 6.

Offset 0, canonical program `A048875.P16732957024664613317`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048875 (n : ℕ) : ℤ :=
  (A048875.P16732957024664613317.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048875.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048878.P11434392754102845847

`((7+sqrt(5))*(2+sqrt(5))^n-(7-sqrt(5))*(2-sqrt(5))^n)/(2*sqrt(5))`
-/

namespace A048878.P11434392754102845847
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((7 + Real.sqrt (5 : ℝ)) * (2 + Real.sqrt (5 : ℝ)) ^ n - (7 - Real.sqrt (5 : ℝ)) * (2 - Real.sqrt (5 : ℝ)) ^ n) / (2 * Real.sqrt (5 : ℝ))

end

end A048878.P11434392754102845847

noncomputable section

/-- A048878: Generalized Pellian with second term of 9.

Offset 0, canonical program `A048878.P11434392754102845847`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048878 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048878.P11434392754102845847.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048878.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048879.P1154154645520915212

`4*a(n-1)+a(n-2)` with `a(0)=1, a(1)=10`
-/

namespace A048879.P1154154645520915212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n a =>
  4 * a (n - 1) + a (n - 2)

end

end A048879.P1154154645520915212

noncomputable section

/-- A048879: Generalized Pellian with second term of 10.

Offset 0, canonical program `A048879.P1154154645520915212`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048879 (n : ℕ) : ℤ :=
  (A048879.P1154154645520915212.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048879.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048901.P2807362337922565529

`322*a(n-1)-a(n-2)-80` with `a(0)=1, a(1)=247`
-/

namespace A048901.P2807362337922565529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 247] fun n a =>
  322 * a (n - 1) - a (n - 2) - 80

end

end A048901.P2807362337922565529

noncomputable section

/-- A048901: Indices of hexagonal numbers which are also heptagonal.

Offset 1, canonical program `A048901.P2807362337922565529`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048901 (n : ℕ) : ℤ :=
  A048901.P2807362337922565529.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048901.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048902.P8781989937731014127

`322*a(n-1)-a(n-2)-96` with `a(0)=1, a(1)=221`
-/

namespace A048902.P8781989937731014127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 221] fun n a =>
  322 * a (n - 1) - a (n - 2) - 96

end

end A048902.P8781989937731014127

noncomputable section

/-- A048902: Indices of heptagonal numbers (A000566) which are also hexagonal.

Offset 1, canonical program `A048902.P8781989937731014127`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048902 (n : ℕ) : ℤ :=
  A048902.P8781989937731014127.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048902.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048904.P7821780131539412040

`482*a(n-1)-a(n-2)-144` with `a(0)=1, a(1)=345`
-/

namespace A048904.P7821780131539412040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 345] fun n a =>
  482 * a (n - 1) - a (n - 2) - 144

end

end A048904.P7821780131539412040

noncomputable section

/-- A048904: Indices of heptagonal numbers (A000566) which are also octagonal.

Offset 1, canonical program `A048904.P7821780131539412040`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048904 (n : ℕ) : ℤ :=
  A048904.P7821780131539412040.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048904.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048905.P10415710124802825240

`482*a(n-1)-a(n-2)-160` with `a(0)=1, a(1)=315`
-/

namespace A048905.P10415710124802825240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 315] fun n a =>
  482 * a (n - 1) - a (n - 2) - 160

end

end A048905.P10415710124802825240

noncomputable section

/-- A048905: Indices of octagonal numbers which are also heptagonal.

Offset 1, canonical program `A048905.P10415710124802825240`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048905 (n : ℕ) : ℤ :=
  A048905.P10415710124802825240.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048905.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048907.P17313420406899919915

`17*a(n-1)-17*a(n-2)+a(n-3)` with `a(0)=1, a(1)=10, a(2)=154`
-/

namespace A048907.P17313420406899919915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10, 154] fun n a =>
  17 * a (n - 1) - 17 * a (n - 2) + a (n - 3)

end

end A048907.P17313420406899919915

noncomputable section

/-- A048907: Indices of 9-gonal numbers which are also triangular.

Offset 1, canonical program `A048907.P17313420406899919915`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048907 (n : ℕ) : ℤ :=
  A048907.P17313420406899919915.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048907.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048908.P3695010200009789948

`17*a(n-1)-17*a(n-2)+a(n-3)` with `a(0)=1, a(1)=25, a(2)=406`
-/

namespace A048908.P3695010200009789948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 25, 406] fun n a =>
  17 * a (n - 1) - 17 * a (n - 2) + a (n - 3)

end

end A048908.P3695010200009789948

noncomputable section

/-- A048908: Indices of triangular numbers which are also 9-gonal.

Offset 1, canonical program `A048908.P3695010200009789948`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048908 (n : ℕ) : ℤ :=
  A048908.P3695010200009789948.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048908.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048910.P15573445848719788342

`30*a(n-2)-a(n-4)-10` with `a(0)=1, a(1)=2, a(2)=18, a(3)=49`
-/

namespace A048910.P15573445848719788342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 18, 49] fun n a =>
  30 * a (n - 2) - a (n - 4) - 10

end

end A048910.P15573445848719788342

noncomputable section

/-- A048910: Indices of 9-gonal numbers that are also square.

Offset 1, canonical program `A048910.P15573445848719788342`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048910 (n : ℕ) : ℤ :=
  A048910.P15573445848719788342.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048910.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048911.P6098538183310573388

`30*a(n-2)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=33, a(3)=91`
-/

namespace A048911.P6098538183310573388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 33, 91] fun n a =>
  30 * a (n - 2) - a (n - 4)

end

end A048911.P6098538183310573388

noncomputable section

/-- A048911: Indices of square numbers which are also 9-gonal.

Offset 1, canonical program `A048911.P6098538183310573388`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048911 (n : ℕ) : ℤ :=
  A048911.P6098538183310573388.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048911.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048919.P13778186932455246103

`142*a(n-1)-a(n-2)-50` with `a(0)=1, a(1)=88`
-/

namespace A048919.P13778186932455246103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 88] fun n a =>
  142 * a (n - 1) - a (n - 2) - 50

end

end A048919.P13778186932455246103

noncomputable section

/-- A048919: Indices of 9-gonal numbers which are also heptagonal.

Offset 1, canonical program `A048919.P13778186932455246103`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048919 (n : ℕ) : ℤ :=
  A048919.P13778186932455246103.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048919.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048920.P4321928305980717294

`142*a(n-1)-a(n-2)-42` with `a(0)=1, a(1)=104`
-/

namespace A048920.P4321928305980717294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 104] fun n a =>
  142 * a (n - 1) - a (n - 2) - 42

end

end A048920.P4321928305980717294

noncomputable section

/-- A048920: Indices of heptagonal numbers (A000566) which are also 9-gonal.

Offset 1, canonical program `A048920.P4321928305980717294`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048920 (n : ℕ) : ℤ :=
  A048920.P4321928305980717294.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048920.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048922.P11828628516256215739

`674*a(n-1)-a(n-2)-240` with `a(0)=1, a(1)=425`
-/

namespace A048922.P11828628516256215739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 425] fun n a =>
  674 * a (n - 1) - a (n - 2) - 240

end

end A048922.P11828628516256215739

noncomputable section

/-- A048922: Indices of 9-gonal numbers which are also octagonal.

Offset 1, canonical program `A048922.P11828628516256215739`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048922 (n : ℕ) : ℤ :=
  A048922.P11828628516256215739.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048922.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048923.P5200507149950228937

`674*a(n-1)-a(n-2)-224` with `a(0)=1, a(1)=459`
-/

namespace A048923.P5200507149950228937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 459] fun n a =>
  674 * a (n - 1) - a (n - 2) - 224

end

end A048923.P5200507149950228937

noncomputable section

/-- A048923: Indices of octagonal numbers which are also 9-gonal.

Offset 1, canonical program `A048923.P5200507149950228937`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048923 (n : ℕ) : ℤ :=
  A048923.P5200507149950228937.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048923.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049071.P14487230511096431129

`a(n-2)` with `a(0)=0, a(1)=3, a(2)=-2`
-/

namespace A049071.P14487230511096431129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, -2] fun n a =>
  a (n - 2)

end

end A049071.P14487230511096431129

noncomputable section

/-- A049071: Expansion of x*(3-2*x)/(1-x^2).

Offset 0, canonical program `A049071.P14487230511096431129`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049071 (n : ℕ) : ℤ :=
  A049071.P14487230511096431129.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049071.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049072.P4563577458489872887

`3*a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A049072.P4563577458489872887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 * a (n - 1) - 4 * a (n - 2)

end

end A049072.P4563577458489872887

noncomputable section

/-- A049072: Expansion of 1/(1 - 3*x + 4*x^2).

Offset 0, canonical program `A049072.P4563577458489872887`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049072 (n : ℕ) : ℤ :=
  A049072.P4563577458489872887.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049072.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049086.P5863392886092032082

`5*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=13`
-/

namespace A049086.P5863392886092032082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 13] fun n a =>
  5 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A049086.P5863392886092032082

noncomputable section

/-- A049086: Number of tilings of 4 X 3n rectangle by 1 X 3 rectangles. Rotations and reflections are considered distinct tilings.

Offset 0, canonical program `A049086.P5863392886092032082`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049086 (n : ℕ) : ℤ :=
  A049086.P5863392886092032082.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049086.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049112.P4476754032565103304

`a(n-1)+a(n-2)+a(n-3)+a(n-4)-1` with `a(0)=1, a(1)=1, a(2)=3, a(3)=7, a(4)=13`
-/

namespace A049112.P4476754032565103304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 7, 13] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) + a (n - 4) - 1

end

end A049112.P4476754032565103304

noncomputable section

/-- A049112: 2-ranks of difference sets constructed from Glynn type I hyperovals.

Offset 1, canonical program `A049112.P4476754032565103304`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049112 (n : ℕ) : ℤ :=
  A049112.P4476754032565103304.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049112.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049114.P17310726559167198941

`a(n-1)+3*a(n-2)-a(n-3)-a(n-4)+1` with `a(0)=1, a(1)=1, a(2)=5, a(3)=7`
-/

namespace A049114.P17310726559167198941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5, 7] fun n a =>
  a (n - 1) + 3 * a (n - 2) - a (n - 3) - a (n - 4) + 1

end

end A049114.P17310726559167198941

noncomputable section

/-- A049114: 2-ranks of difference sets constructed from Glynn type II hyperovals.

Offset 1, canonical program `A049114.P17310726559167198941`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049114 (n : ℕ) : ℤ :=
  A049114.P17310726559167198941.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049114.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049194.P11881577467293400188

`a(n-1)+a(n-2)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6, a(4)=8, a(5)=12`
-/

namespace A049194.P11881577467293400188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 6, 8, 12] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 5)

end

end A049194.P11881577467293400188

noncomputable section

/-- A049194: Number of digits in n-th term of A001387.

Offset 1, canonical program `A049194.P11881577467293400188`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049194 (n : ℕ) : ℤ :=
  A049194.P11881577467293400188.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049194.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049209.P479842160945356271

`(7*n-1)*a(n-1)` with `a(0)=1`
-/

namespace A049209.P479842160945356271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((7 * n : ℤ) - 1) * a (n - 1)

end

end A049209.P479842160945356271

noncomputable section

/-- A049209: a(n) = -Product_{k=0..n} (7*k-1); sept-factorial numbers.

Offset 0, canonical program `A049209.P479842160945356271`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049209 (n : ℕ) : ℤ :=
  A049209.P479842160945356271.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049209.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049219.P17882740788607132971

`5*a(n-1)-7*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=10`
-/

namespace A049219.P17882740788607132971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 10] fun n a =>
  5 * a (n - 1) - 7 * a (n - 2) + 4 * a (n - 3)

end

end A049219.P17882740788607132971

noncomputable section

/-- A049219: Number of horizontally convex n-ominoes in which the top row has exactly 1 square.

Offset 1, canonical program `A049219.P17882740788607132971`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049219 (n : ℕ) : ℤ :=
  A049219.P17882740788607132971.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049219.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049220.P422468882593643597

`5*a(n-1)-7*a(n-2)+4*a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3, a(4)=9`
-/

namespace A049220.P422468882593643597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 3, 9] fun n a =>
  5 * a (n - 1) - 7 * a (n - 2) + 4 * a (n - 3)

end

end A049220.P422468882593643597

noncomputable section

/-- A049220: Number of horizontally convex n-ominoes in which the top row has at least 2 squares and the rightmost square in the top row is above the leftmost square in the second row.

Offset 1, canonical program `A049220.P422468882593643597`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049220 (n : ℕ) : ℤ :=
  A049220.P422468882593643597.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049220.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049221.P3057220183758375189

`5*a(n-1)-7*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=4, a(4)=14`
-/

namespace A049221.P3057220183758375189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 4, 14] fun n a =>
  5 * a (n - 1) - 7 * a (n - 2) + 4 * a (n - 3)

end

end A049221.P3057220183758375189

noncomputable section

/-- A049221: Number of horizontally convex n-ominoes in which the top row has exactly 1 square, which is not above the rightmost square in the second row.

Offset 1, canonical program `A049221.P3057220183758375189`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049221 (n : ℕ) : ℤ :=
  A049221.P3057220183758375189.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049221.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049222.P9393504095804618029

`5*a(n-1)-7*a(n-2)+4*a(n-3)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=4`
-/

namespace A049222.P9393504095804618029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1, 4] fun n a =>
  5 * a (n - 1) - 7 * a (n - 2) + 4 * a (n - 3)

end

end A049222.P9393504095804618029

noncomputable section

/-- A049222: Number of horizontally convex n-ominoes in which the top row has exactly 1 square, which is not above the rightmost square in the second row and the rightmost square in the second row is above the leftmost square in the third row.

Offset 1, canonical program `A049222.P9393504095804618029`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049222 (n : ℕ) : ℤ :=
  A049222.P9393504095804618029.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049222.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049294.P180278700101192581

`3*6^n-3*2^n+1`
-/

namespace A049294.P180278700101192581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * 6 ^ n : ℤ) - (3 * 2 ^ n : ℤ) + 1

end

end A049294.P180278700101192581

noncomputable section

/-- A049294: Number of subgroups of index 3 in free group of rank n+1.

Offset 0, canonical program `A049294.P180278700101192581`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049294 (n : ℕ) : ℤ :=
  A049294.P180278700101192581.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049294.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049295.P5327415093629748725

`4*24^n-4*6^n-2*4^n+4*2^n-1`
-/

namespace A049295.P5327415093629748725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * 24 ^ n : ℤ) - (4 * 6 ^ n : ℤ) - (2 * 4 ^ n : ℤ) + (4 * 2 ^ n : ℤ) - 1

end

end A049295.P5327415093629748725

noncomputable section

/-- A049295: Number of subgroups of index 4 in free group of rank n+1.

Offset 0, canonical program `A049295.P5327415093629748725`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049295 (n : ℕ) : ℤ :=
  A049295.P5327415093629748725.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049295.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049308.P15797089426750747048

`2*(3*n-1)*a(n-1)` with `a(0)=1`
-/

namespace A049308.P15797089426750747048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (((3 * n : ℤ) - 1) * a (n - 1))

end

end A049308.P15797089426750747048

noncomputable section

/-- A049308: Sextuple factorial numbers: Product_{k=0..n-1} (6*k+4).

Offset 0, canonical program `A049308.P15797089426750747048`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049308 (n : ℕ) : ℤ :=
  A049308.P15797089426750747048.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049308.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049332.P6876629343281281299

`2^n+n%2+1`
-/

namespace A049332.P6876629343281281299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + n % 2 + 1

end

end A049332.P6876629343281281299

noncomputable section

/-- A049332: Number of conjugacy classes in Clifford group CL(n).

Offset 0, canonical program `A049332.P6876629343281281299`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049332 (n : ℕ) : ℤ :=
  (A049332.P6876629343281281299.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049332.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049347.P9996747395155426839

`(n+2)%3-1`
-/

namespace A049347.P9996747395155426839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 2) % 3 : ℕ) : ℤ) - 1

end

end A049347.P9996747395155426839

noncomputable section

/-- A049347: Period 3: repeat [1, -1, 0].

Offset 0, canonical program `A049347.P9996747395155426839`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049347 (n : ℕ) : ℤ :=
  A049347.P9996747395155426839.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049347.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049384.P15482629570987959546

`n^a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A049384.P15482629570987959546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  n ^ a (n - 1)

end

end A049384.P15482629570987959546

noncomputable section

/-- A049384: a(0) = 1, a(n+1) = (n+1)^a(n).

Offset 0, canonical program `A049384.P15482629570987959546`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049384 (n : ℕ) : ℤ :=
  (A049384.P15482629570987959546.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049384.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049395.P13438896250266851871

`(25+10/n)*a(n-1)` with `a(0)=1`
-/

namespace A049395.P13438896250266851871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (25 + 10 / (n : ℚ)) * a (n - 1)

end

end A049395.P13438896250266851871

noncomputable section

/-- A049395: Expansion of (1-25*x)^(-7/5).

Offset 0, canonical program `A049395.P13438896250266851871`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049395 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A049395.P13438896250266851871.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049395.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049450.P17416567572511939597

`(3*n-1)*n`
-/

namespace A049450.P17416567572511939597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * n : ℤ) - 1) * (n : ℤ)

end

end A049450.P17416567572511939597

noncomputable section

/-- A049450: Pentagonal numbers multiplied by 2: a(n) = n*(3*n-1).

Offset 0, canonical program `A049450.P17416567572511939597`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049450 (n : ℕ) : ℤ :=
  A049450.P17416567572511939597.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049450.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049451.P10593396330720355076

`n*(3*n+1)`
-/

namespace A049451.P10593396330720355076
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (3 * n + 1)

end

end A049451.P10593396330720355076

noncomputable section

/-- A049451: Twice second pentagonal numbers.

Offset 0, canonical program `A049451.P10593396330720355076`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049451 (n : ℕ) : ℤ :=
  (A049451.P10593396330720355076.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049451.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049452.P9083171172676811327

`(6*n-1)*n`
-/

namespace A049452.P9083171172676811327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((6 * n : ℤ) - 1) * (n : ℤ)

end

end A049452.P9083171172676811327

noncomputable section

/-- A049452: Pentagonal numbers with even index.

Offset 0, canonical program `A049452.P9083171172676811327`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049452 (n : ℕ) : ℤ :=
  A049452.P9083171172676811327.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049452.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049472.P13396613520496134978

`floor(n/sqrt(2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A049472.P13396613520496134978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sqrt (2 : ℝ)⌋

end

end A049472.P13396613520496134978

noncomputable section

/-- A049472: a(n) = floor(n/sqrt(2)).

Offset 0, canonical program `A049472.P13396613520496134978`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/sqrt(2))` (program `A049472.P13396613520496134978`, by `A049472.P13396613520496134978.correct`). Lean does not check the parsing of the name. -/
def A049472 (n : ℕ) : ℤ :=
  A049472.P13396613520496134978.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/sqrt(2))` (program `A049472.P13396613520496134978`, by `A049472.P13396613520496134978.correct`). Lean does not check the parsing of the name. -/
def A049472.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A049473.P14529483528457698653

`round(n/sqrt(2))`
-/

namespace A049473.P14529483528457698653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.sqrt (2 : ℝ))

end

end A049473.P14529483528457698653

noncomputable section

/-- A049473: Nearest integer to n/sqrt(2).

Offset 0, canonical program `A049473.P14529483528457698653`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049473 (n : ℕ) : ℤ :=
  A049473.P14529483528457698653.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049473.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049474.P15997388566845969696

`ceil(n/sqrt(2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A049474.P15997388566845969696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.sqrt (2 : ℝ)⌉

end

end A049474.P15997388566845969696

noncomputable section

/-- A049474: a(n) = ceiling(n/sqrt(2)).

Offset 0, canonical program `A049474.P15997388566845969696`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n/sqrt(2))` (program `A049474.P15997388566845969696`, by `A049474.P15997388566845969696.correct`). Lean does not check the parsing of the name. -/
def A049474 (n : ℕ) : ℤ :=
  A049474.P15997388566845969696.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n/sqrt(2))` (program `A049474.P15997388566845969696`, by `A049474.P15997388566845969696.correct`). Lean does not check the parsing of the name. -/
def A049474.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A049480.P2420942401070284196

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=10, a(3)=21`
-/

namespace A049480.P2420942401070284196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 10, 21] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A049480.P2420942401070284196

noncomputable section

/-- A049480: a(n) = (2*n-1)*(n^2 -n +6)/6.

Offset 1, canonical program `A049480.P2420942401070284196`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049480 (n : ℕ) : ℤ :=
  A049480.P2420942401070284196.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049480.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049486.P15779660224283629680

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=4, a(2)=10, a(3)=21, a(4)=34, a(5)=53`
-/

namespace A049486.P15779660224283629680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 10, 21, 34, 53] fun n a =>
  2 * a (n - 1) - 2 * a (n - 3) + a (n - 4)

end

end A049486.P15779660224283629680

noncomputable section

/-- A049486: Maximum length of non-crossing path on n X n square lattice.

Offset 1, canonical program `A049486.P15779660224283629680`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049486 (n : ℕ) : ℤ :=
  A049486.P15779660224283629680.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049486.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049598.P16136948666978036778

`6*n*(n+1)`
-/

namespace A049598.P16136948666978036778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (n * (n + 1))

end

end A049598.P16136948666978036778

noncomputable section

/-- A049598: 12 times triangular numbers.

Offset 0, canonical program `A049598.P16136948666978036778`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049598 (n : ℕ) : ℤ :=
  (A049598.P16136948666978036778.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049598.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049602.P10363113682009448082

`2*a(n-1)+3*a(n-2)-4*a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=5`
-/

namespace A049602.P10363113682009448082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 5] fun n a =>
  2 * a (n - 1) + 3 * a (n - 2) - 4 * a (n - 3) + a (n - 4)

end

end A049602.P10363113682009448082

noncomputable section

/-- A049602: a(n) = (Fibonacci(2*n)-(-1)^n*Fibonacci(n))/2.

Offset 0, canonical program `A049602.P10363113682009448082`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049602 (n : ℕ) : ℤ :=
  A049602.P10363113682009448082.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049602.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049629.P17428339842843370455

`18*a(n-1)-a(n-2)` with `a(0)=1, a(1)=19`
-/

namespace A049629.P17428339842843370455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 19] fun n a =>
  18 * a (n - 1) - a (n - 2)

end

end A049629.P17428339842843370455

noncomputable section

/-- A049629: a(n) = (F(6*n+5) - F(6*n+1))/4 = (F(6*n+4) + F(6*n+2))/4, where F = A000045.

Offset 0, canonical program `A049629.P17428339842843370455`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049629 (n : ℕ) : ℤ :=
  A049629.P17428339842843370455.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049629.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049651.P13896596399977477955

`4*a(n-1)+a(n-2)+2` with `a(0)=0, a(1)=1`
-/

namespace A049651.P13896596399977477955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  4 * a (n - 1) + a (n - 2) + 2

end

end A049651.P13896596399977477955

noncomputable section

/-- A049651: a(n) = (F(3*n+1) - 1)/2, where F=A000045 (the Fibonacci sequence).

Offset 0, canonical program `A049651.P13896596399977477955`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049651 (n : ℕ) : ℤ :=
  (A049651.P13896596399977477955.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049651.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049652.P15292321905598915633

`5*a(n-1)-3*a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=22`
-/

namespace A049652.P15292321905598915633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5, 22] fun n a =>
  5 * a (n - 1) - 3 * a (n - 2) - a (n - 3)

end

end A049652.P15292321905598915633

noncomputable section

/-- A049652: a(n) = (F(3*n+2) - 1)/4, where F=A000045 (the Fibonacci sequence).

Offset 0, canonical program `A049652.P15292321905598915633`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049652 (n : ℕ) : ℤ :=
  A049652.P15292321905598915633.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049652.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049655.P3432272687746600747

`47*a(n-1)-a(n-2)+15` with `a(0)=0, a(1)=18`
-/

namespace A049655.P3432272687746600747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 18] fun n a =>
  47 * a (n - 1) - a (n - 2) + 15

end

end A049655.P3432272687746600747

noncomputable section

/-- A049655: a(n) = (F(8n+2)-1)/3, where F=A000045 (the Fibonacci sequence).

Offset 0, canonical program `A049655.P3432272687746600747`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049655 (n : ℕ) : ℤ :=
  A049655.P3432272687746600747.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049655.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049656.P3593737750298315895

`47*a(n-1)-a(n-2)+15` with `a(0)=4, a(1)=203`
-/

namespace A049656.P3593737750298315895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 203] fun n a =>
  47 * a (n - 1) - a (n - 2) + 15

end

end A049656.P3593737750298315895

noncomputable section

/-- A049656: a(n) = (F(8n+7)-1)/3, where F=A000045 (the Fibonacci sequence).

Offset 0, canonical program `A049656.P3593737750298315895`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049656 (n : ℕ) : ℤ :=
  A049656.P3593737750298315895.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049656.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049660.P3237877005541122845

`18*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A049660.P3237877005541122845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  18 * a (n - 1) - a (n - 2)

end

end A049660.P3237877005541122845

noncomputable section

/-- A049660: a(n) = Fibonacci(6*n)/8.

Offset 0, canonical program `A049660.P3237877005541122845`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049660 (n : ℕ) : ℤ :=
  A049660.P3237877005541122845.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049660.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049661.P9557949667344338884

`19*a(n-1)-19*a(n-2)+a(n-3)` with `a(0)=0, a(1)=3, a(2)=58`
-/

namespace A049661.P9557949667344338884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 58] fun n a =>
  19 * a (n - 1) - 19 * a (n - 2) + a (n - 3)

end

end A049661.P9557949667344338884

noncomputable section

/-- A049661: a(n) = (Fibonacci(6*n+1) - 1)/4.

Offset 0, canonical program `A049661.P9557949667344338884`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049661 (n : ℕ) : ℤ :=
  A049661.P9557949667344338884.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049661.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049662.P12129507738377797945

`19*a(n-1)-19*a(n-2)+a(n-3)` with `a(0)=0, a(1)=5, a(2)=94`
-/

namespace A049662.P12129507738377797945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5, 94] fun n a =>
  19 * a (n - 1) - 19 * a (n - 2) + a (n - 3)

end

end A049662.P12129507738377797945

noncomputable section

/-- A049662: a(n) = (F(6*n+2)-1)/4, where F=A000045 (the Fibonacci sequence).

Offset 0, canonical program `A049662.P12129507738377797945`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049662 (n : ℕ) : ℤ :=
  A049662.P12129507738377797945.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049662.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049663.P6559661186756473221

`19*a(n-1)-19*a(n-2)+a(n-3)` with `a(0)=1, a(1)=22, a(2)=399`
-/

namespace A049663.P6559661186756473221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 22, 399] fun n a =>
  19 * a (n - 1) - 19 * a (n - 2) + a (n - 3)

end

end A049663.P6559661186756473221

noncomputable section

/-- A049663: a(n) = (F(6*n+5) - 1)/4, where F = A000045 (the Fibonacci sequence).

Offset 0, canonical program `A049663.P6559661186756473221`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049663 (n : ℕ) : ℤ :=
  A049663.P6559661186756473221.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049663.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049664.P2325392752604248159

`18*a(n-1)-a(n-2)+1` with `a(0)=0, a(1)=1`
-/

namespace A049664.P2325392752604248159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  18 * a (n - 1) - a (n - 2) + 1

end

end A049664.P2325392752604248159

noncomputable section

/-- A049664: a(n) = (F(6*n+3) - 2)/32, where F = A000045 (the Fibonacci sequence).

Offset 0, canonical program `A049664.P2325392752604248159`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049664 (n : ℕ) : ℤ :=
  A049664.P2325392752604248159.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049664.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049665.P4040211216738765708

`19*a(n-1)-19*a(n-2)+a(n-3)` with `a(0)=0, a(1)=13, a(2)=246`
-/

namespace A049665.P4040211216738765708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 13, 246] fun n a =>
  19 * a (n - 1) - 19 * a (n - 2) + a (n - 3)

end

end A049665.P4040211216738765708

noncomputable section

/-- A049665: a(n) = (F(6*n+4) - 3)/4, where F=A000045 (the Fibonacci sequence).

Offset 0, canonical program `A049665.P4040211216738765708`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049665 (n : ℕ) : ℤ :=
  A049665.P4040211216738765708.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049665.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049666.P213772639482346607

`11*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A049666.P213772639482346607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  11 * a (n - 1) + a (n - 2)

end

end A049666.P213772639482346607

noncomputable section

/-- A049666: a(n) = Fibonacci(5*n)/5.

Offset 0, canonical program `A049666.P213772639482346607`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049666 (n : ℕ) : ℤ :=
  (A049666.P213772639482346607.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049666.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049667.P6697081628589609842

`29*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A049667.P6697081628589609842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  29 * a (n - 1) + a (n - 2)

end

end A049667.P6697081628589609842

noncomputable section

/-- A049667: a(n) = Fibonacci(7*n)/13.

Offset 0, canonical program `A049667.P6697081628589609842`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049667 (n : ℕ) : ℤ :=
  (A049667.P6697081628589609842.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049667.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049668.P16865365341202603630

`47*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A049668.P16865365341202603630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  47 * a (n - 1) - a (n - 2)

end

end A049668.P16865365341202603630

noncomputable section

/-- A049668: a(n) = Fibonacci(8*n)/21.

Offset 0, canonical program `A049668.P16865365341202603630`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049668 (n : ℕ) : ℤ :=
  A049668.P16865365341202603630.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049668.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049669.P8744081801925825536

`76*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A049669.P8744081801925825536
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  76 * a (n - 1) + a (n - 2)

end

end A049669.P8744081801925825536

noncomputable section

/-- A049669: a(n) = Fibonacci(9*n)/34.

Offset 0, canonical program `A049669.P8744081801925825536`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049669 (n : ℕ) : ℤ :=
  (A049669.P8744081801925825536.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049669.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049670.P7639621242065437244

`123*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A049670.P7639621242065437244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  123 * a (n - 1) - a (n - 2)

end

end A049670.P7639621242065437244

noncomputable section

/-- A049670: a(n) = Fibonacci(10*n)/55.

Offset 0, canonical program `A049670.P7639621242065437244`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049670 (n : ℕ) : ℤ :=
  A049670.P7639621242065437244.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049670.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049673.P12244884847311271928

`5*a(n-1)-2*a(n-2)-5*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=12`
-/

namespace A049673.P12244884847311271928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 12] fun n a =>
  5 * a (n - 1) - 2 * a (n - 2) - 5 * a (n - 3) - a (n - 4)

end

end A049673.P12244884847311271928

noncomputable section

/-- A049673: a(n) = (F(3n) + F(n))/3, where F = A000045 (the Fibonacci sequence).

Offset 0, canonical program `A049673.P12244884847311271928`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049673 (n : ℕ) : ℤ :=
  A049673.P12244884847311271928.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049673.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049674.P6954987417079022406

`5*a(n-1)-2*a(n-2)-5*a(n-3)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=5`
-/

namespace A049674.P6954987417079022406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 5] fun n a =>
  5 * a (n - 1) - 2 * a (n - 2) - 5 * a (n - 3) - a (n - 4)

end

end A049674.P6954987417079022406

noncomputable section

/-- A049674: a(n) = (F(3*n) - 2*F(n))/6, where F=A000045 (the Fibonacci sequence).

Offset 0, canonical program `A049674.P6954987417079022406`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049674 (n : ℕ) : ℤ :=
  A049674.P6954987417079022406.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049674.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049676.P4737108664342262118

`47*a(n-1)-a(n-2)` with `a(0)=1, a(1)=41`
-/

namespace A049676.P4737108664342262118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 41] fun n a =>
  47 * a (n - 1) - a (n - 2)

end

end A049676.P4737108664342262118

noncomputable section

/-- A049676: a(n) = (F(8*n+3) + F(8*n+1))/3, where F = A000045 (the Fibonacci sequence).

Offset 0, canonical program `A049676.P4737108664342262118`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049676 (n : ℕ) : ℤ :=
  A049676.P4737108664342262118.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049676.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049677.P3507896266874010904

`47*a(n-1)-a(n-2)` with `a(0)=3, a(1)=137`
-/

namespace A049677.P3507896266874010904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 137] fun n a =>
  47 * a (n - 1) - a (n - 2)

end

end A049677.P3507896266874010904

noncomputable section

/-- A049677: a(n) = (F(8*n+6) + F(8*n+1))/3, where F = A000045 (the Fibonacci sequence).

Offset 0, canonical program `A049677.P3507896266874010904`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049677 (n : ℕ) : ℤ :=
  A049677.P3507896266874010904.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049677.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049678.P9678538142612641536

`47*a(n-1)-a(n-2)` with `a(0)=1, a(1)=48`
-/

namespace A049678.P9678538142612641536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 48] fun n a =>
  47 * a (n - 1) - a (n - 2)

end

end A049678.P9678538142612641536

noncomputable section

/-- A049678: a(n) = F(8*n+4)/3, where F=A000045 (the Fibonacci sequence).

Offset 0, canonical program `A049678.P9678538142612641536`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049678 (n : ℕ) : ℤ :=
  A049678.P9678538142612641536.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049678.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049679.P16444881155173927679

`47*a(n-1)-a(n-2)` with `a(0)=6, a(1)=281`
-/

namespace A049679.P16444881155173927679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 281] fun n a =>
  47 * a (n - 1) - a (n - 2)

end

end A049679.P16444881155173927679

noncomputable section

/-- A049679: a(n) = (F(8*n+7)+F(8*n+5))/3, where F=A000045 (the Fibonacci sequence).

Offset 0, canonical program `A049679.P16444881155173927679`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049679 (n : ℕ) : ℤ :=
  A049679.P16444881155173927679.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049679.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049680.P13128630125297268951

`4*a(n-1)-3*a(n-2)-2*a(n-3)+a(n-4)` with `a(0)=2, a(1)=2, a(2)=5, a(3)=11`
-/

namespace A049680.P13128630125297268951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 5, 11] fun n a =>
  4 * a (n - 1) - 3 * a (n - 2) - 2 * a (n - 3) + a (n - 4)

end

end A049680.P13128630125297268951

noncomputable section

/-- A049680: a(n) = (L(n) + L(2*n))/2, where L = A000032 (the Lucas sequence).

Offset 0, canonical program `A049680.P13128630125297268951`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049680 (n : ℕ) : ℤ :=
  A049680.P13128630125297268951.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049680.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049682.P16509218587618789967

`48*a(n-1)-48*a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=49`
-/

namespace A049682.P16509218587618789967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 49] fun n a =>
  48 * a (n - 1) - 48 * a (n - 2) + a (n - 3)

end

end A049682.P16509218587618789967

noncomputable section

/-- A049682: a(n) = (Lucas(8*n) - 2)/45.

Offset 0, canonical program `A049682.P16509218587618789967`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049682 (n : ℕ) : ℤ :=
  A049682.P16509218587618789967.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049682.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049683.P132302187022426686

`19*a(n-1)-19*a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=20`
-/

namespace A049683.P132302187022426686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 20] fun n a =>
  19 * a (n - 1) - 19 * a (n - 2) + a (n - 3)

end

end A049683.P132302187022426686

noncomputable section

/-- A049683: a(n) = (Lucas(6*n) - 2)/16.

Offset 0, canonical program `A049683.P132302187022426686`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049683 (n : ℕ) : ℤ :=
  A049683.P132302187022426686.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049683.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049684.P17763644723763419225

`7*a(n-1)-a(n-2)+2` with `a(0)=0, a(1)=1`
-/

namespace A049684.P17763644723763419225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  7 * a (n - 1) - a (n - 2) + 2

end

end A049684.P17763644723763419225

noncomputable section

/-- A049684: a(n) = Fibonacci(2n)^2.

Offset 0, canonical program `A049684.P17763644723763419225`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049684 (n : ℕ) : ℤ :=
  A049684.P17763644723763419225.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049684.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049685.P11265948384615670488

`7*a(n-1)-a(n-2)` with `a(0)=1, a(1)=6`
-/

namespace A049685.P11265948384615670488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  7 * a (n - 1) - a (n - 2)

end

end A049685.P11265948384615670488

noncomputable section

/-- A049685: a(n) = L(4*n+2)/3, where L=A000032 (the Lucas sequence).

Offset 0, canonical program `A049685.P11265948384615670488`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049685 (n : ℕ) : ℤ :=
  A049685.P11265948384615670488.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049685.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049686.P13805215257628979111

`47*a(n-1)-a(n-2)` with `a(0)=0, a(1)=7`
-/

namespace A049686.P13805215257628979111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 7] fun n a =>
  47 * a (n - 1) - a (n - 2)

end

end A049686.P13805215257628979111

noncomputable section

/-- A049686: a(n) = Fibonacci(8n)/3.

Offset 0, canonical program `A049686.P13805215257628979111`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049686 (n : ℕ) : ℤ :=
  A049686.P13805215257628979111.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049686.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049775.P13386507242461119712

`6*a(n-1)-8*a(n-2)` with `a(0)=2, a(1)=7`
-/

namespace A049775.P13386507242461119712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7] fun n a =>
  6 * a (n - 1) - 8 * a (n - 2)

end

end A049775.P13386507242461119712

noncomputable section

/-- A049775: a(n) is the sum of all integers from 2^(n-2)+1 to 2^(n-1).

Offset 2, canonical program `A049775.P13386507242461119712`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049775 (n : ℕ) : ℤ :=
  A049775.P13386507242461119712.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049775.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049853.P1243500716164849431

`a(n-1)+a(n-2)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=3`
-/

namespace A049853.P1243500716164849431
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 3] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 4)

end

end A049853.P1243500716164849431

noncomputable section

/-- A049853: a(n) = a(n-1) + Sum_{k=0..n-3} a(k) for n >= 2, a(0)=1, a(1)=2.

Offset 0, canonical program `A049853.P1243500716164849431`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049853 (n : ℕ) : ℤ :=
  (A049853.P1243500716164849431.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049853.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049854.P15676002867090542095

`2*a(n-1)-a(n-2)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=3`
-/

namespace A049854.P15676002867090542095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 3] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3)

end

end A049854.P15676002867090542095

noncomputable section

/-- A049854: a(n)=Sum{a(k): k=0,1,2,...,n-3,n-1}; a(n-2) is not a summand; 2 initial terms required.

Offset 0, canonical program `A049854.P15676002867090542095`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049854 (n : ℕ) : ℤ :=
  A049854.P15676002867090542095.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049854.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049855.P6537957576747159550

`2*a(n-1)-a(n-2)+a(n-3)` with `a(0)=2, a(1)=3, a(2)=3`
-/

namespace A049855.P6537957576747159550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 3] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3)

end

end A049855.P6537957576747159550

noncomputable section

/-- A049855: a(n) = Sum{a(k): k=0,1,2,...,n-3,n-1}; a(n-2) is not a summand; 2 initial terms required.

Offset 0, canonical program `A049855.P6537957576747159550`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049855 (n : ℕ) : ℤ :=
  A049855.P6537957576747159550.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049855.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049856.P1431488528190504158

`2*a(n-1)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A049856.P1431488528190504158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 1] fun n a =>
  2 * a (n - 1) - a (n - 3) + a (n - 4)

end

end A049856.P1431488528190504158

noncomputable section

/-- A049856: a(n) = (Sum{k=0..n-1} a(k)) - a(n-3), with a(0)=0, a(1)=0, a(2)=1.

Offset 0, canonical program `A049856.P1431488528190504158`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049856 (n : ℕ) : ℤ :=
  A049856.P1431488528190504158.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049856.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049858.P15947996885291988385

`2*a(n-1)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A049858.P15947996885291988385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3] fun n a =>
  2 * a (n - 1) - a (n - 3) + a (n - 4)

end

end A049858.P15947996885291988385

noncomputable section

/-- A049858: a(n) = Sum{a(k): k=0,1,2,...,n-4,n-2,n-1}; a(n-3) is not a summand; initial terms are 0,1,2.

Offset 0, canonical program `A049858.P15947996885291988385`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049858 (n : ℕ) : ℤ :=
  A049858.P15947996885291988385.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049858.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049859.P6115394580720691285

`2*a(n-1)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=4`
-/

namespace A049859.P6115394580720691285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 4] fun n a =>
  2 * a (n - 1) - a (n - 3) + a (n - 4)

end

end A049859.P6115394580720691285

noncomputable section

/-- A049859: a(n) = Sum_{k=0,1,2,...,n-4,n-2,n-1} a(k); a(n-3) is not a summand, with a(0)=0, a(1)=1, a(2)=3.

Offset 0, canonical program `A049859.P6115394580720691285`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049859 (n : ℕ) : ℤ :=
  A049859.P6115394580720691285.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049859.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049860.P14092894737804850765

`2*a(n-1)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=5`
-/

namespace A049860.P14092894737804850765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 5] fun n a =>
  2 * a (n - 1) - a (n - 3) + a (n - 4)

end

end A049860.P14092894737804850765

noncomputable section

/-- A049860: a(n) = Sum{a(k): k=0,1,2,...,n-4,n-2,n-1}; a(n-3) is not a summand; initial terms are 0,1,4.

Offset 0, canonical program `A049860.P14092894737804850765`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049860 (n : ℕ) : ℤ :=
  A049860.P14092894737804850765.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049860.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049861.P2293957598706732903

`2*a(n-1)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A049861.P2293957598706732903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3, 5] fun n a =>
  2 * a (n - 1) - a (n - 3) + a (n - 4)

end

end A049861.P2293957598706732903

noncomputable section

/-- A049861: a(n) = Sum{a(k): k=0,1,2,...,n-4,n-2,n-1}; a(n-3) is not a summand; initial terms are 0,2,3.

Offset 0, canonical program `A049861.P2293957598706732903`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049861 (n : ℕ) : ℤ :=
  A049861.P2293957598706732903.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049861.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049863.P9876617433013980383

`2*a(n-1)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=3, a(2)=4, a(3)=7`
-/

namespace A049863.P9876617433013980383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 4, 7] fun n a =>
  2 * a (n - 1) - a (n - 3) + a (n - 4)

end

end A049863.P9876617433013980383

noncomputable section

/-- A049863: a(n) = Sum{a(k): k=0,1,2,...,n-4,n-2,n-1}; a(n-3) is not a summand; initial terms are 0,3,4.

Offset 0, canonical program `A049863.P9876617433013980383`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049863 (n : ℕ) : ℤ :=
  A049863.P9876617433013980383.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049863.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049864.P15758822881774029464

`2*a(n-1)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A049864.P15758822881774029464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  2 * a (n - 1) - a (n - 3) + a (n - 4)

end

end A049864.P15758822881774029464

noncomputable section

/-- A049864: a(n) = Sum_{k=0,1,2,...,n-4,n-2,n-1} a(k); a(n-3) is not a summand, with a(0)=a(1)=a(2)=1.

Offset 0, canonical program `A049864.P15758822881774029464`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049864 (n : ℕ) : ℤ :=
  A049864.P15758822881774029464.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049864.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049866.P8218628782342424440

`2*a(n-1)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4`
-/

namespace A049866.P8218628782342424440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 4] fun n a =>
  2 * a (n - 1) - a (n - 3) + a (n - 4)

end

end A049866.P8218628782342424440

noncomputable section

/-- A049866: a(n) = Sum_{a(k): k=0,1,2,...,n-4,n-2,n-1}; a(n-3) is not a summand; initial terms are 1,1,3.

Offset 0, canonical program `A049866.P8218628782342424440`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049866 (n : ℕ) : ℤ :=
  A049866.P8218628782342424440.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049866.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049867.P2352347353806998356

`2*a(n-1)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=5`
-/

namespace A049867.P2352347353806998356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4, 5] fun n a =>
  2 * a (n - 1) - a (n - 3) + a (n - 4)

end

end A049867.P2352347353806998356

noncomputable section

/-- A049867: a(n) = Sum{a(k): k=0,1,2,...,n-4,n-2,n-1}; a(n-3) is not a summand; initial terms are 1,1,4.

Offset 0, canonical program `A049867.P2352347353806998356`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049867 (n : ℕ) : ℤ :=
  A049867.P2352347353806998356.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049867.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049868.P4907461806141010413

`2*a(n-1)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=4`
-/

namespace A049868.P4907461806141010413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 4] fun n a =>
  2 * a (n - 1) - a (n - 3) + a (n - 4)

end

end A049868.P4907461806141010413

noncomputable section

/-- A049868: a(n) = Sum{a(k): k=0,1,2,...,n-4,n-2,n-1}; a(n-3) is not a summand; initial terms are 1,2,2.

Offset 0, canonical program `A049868.P4907461806141010413`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049868 (n : ℕ) : ℤ :=
  A049868.P4907461806141010413.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049868.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049870.P16730175012883322099

`2*a(n-1)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6`
-/

namespace A049870.P16730175012883322099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 6] fun n a =>
  2 * a (n - 1) - a (n - 3) + a (n - 4)

end

end A049870.P16730175012883322099

noncomputable section

/-- A049870: a(n) = Sum{a(k): k=0,1,2,...,n-4,n-2,n-1}; a(n-3) is not a summand; initial terms are 1,2,4.

Offset 0, canonical program `A049870.P16730175012883322099`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049870 (n : ℕ) : ℤ :=
  A049870.P16730175012883322099.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049870.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049871.P5113550198266757381

`2*a(n-1)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=3, a(3)=6`
-/

namespace A049871.P5113550198266757381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 3, 6] fun n a =>
  2 * a (n - 1) - a (n - 3) + a (n - 4)

end

end A049871.P5113550198266757381

noncomputable section

/-- A049871: a(n) = Sum{a(k): k=0,1,2,...,n-4,n-2,n-1}; a(n-3) is not a summand; initial terms are 1,3,3.

Offset 0, canonical program `A049871.P5113550198266757381`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049871 (n : ℕ) : ℤ :=
  A049871.P5113550198266757381.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049871.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049873.P14338736943268440780

`2*a(n-1)-a(n-3)+a(n-4)` with `a(0)=2, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A049873.P14338736943268440780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 3, 5] fun n a =>
  2 * a (n - 1) - a (n - 3) + a (n - 4)

end

end A049873.P14338736943268440780

noncomputable section

/-- A049873: a(n) = Sum{a(k): k=0,1,2,...,n-4,n-2,n-1}; a(n-3) is not a summand; initial terms are 2,2,3.

Offset 0, canonical program `A049873.P14338736943268440780`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049873 (n : ℕ) : ℤ :=
  A049873.P14338736943268440780.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049873.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049875.P15605293180016549153

`2*a(n-1)-a(n-3)+a(n-4)` with `a(0)=2, a(1)=3, a(2)=3, a(3)=6`
-/

namespace A049875.P15605293180016549153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 3, 6] fun n a =>
  2 * a (n - 1) - a (n - 3) + a (n - 4)

end

end A049875.P15605293180016549153

noncomputable section

/-- A049875: a(n) = Sum{a(k): k=0,1,2,...,n-4,n-2,n-1}; a(n-3) is not a summand; initial terms are 2,3,3.

Offset 0, canonical program `A049875.P15605293180016549153`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049875 (n : ℕ) : ℤ :=
  A049875.P15605293180016549153.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049875.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049876.P11257561887962219168

`2*a(n-1)-a(n-3)+a(n-4)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=7`
-/

namespace A049876.P11257561887962219168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 4, 7] fun n a =>
  2 * a (n - 1) - a (n - 3) + a (n - 4)

end

end A049876.P11257561887962219168

noncomputable section

/-- A049876: a(n) = Sum{a(k): k=0,1,2,...,n-4,n-2,n-1}; a(n-3) is not a summand; initial terms are 2,3,4.

Offset 0, canonical program `A049876.P11257561887962219168`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049876 (n : ℕ) : ℤ :=
  A049876.P11257561887962219168.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049876.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050151.P5500480117813268484

`n*((6*n-3)*a(n-1)/(n-1)-a(n-2))/(n+1)` with `a(0)=0, a(1)=1`
-/

namespace A050151.P5500480117813268484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℚ) * ((((6 * n : ℤ) - 3 : ℚ) * a (n - 1) / ((n : ℤ) - 1 : ℚ) - a (n - 2)) / (n + 1 : ℚ))

end

end A050151.P5500480117813268484

noncomputable section

/-- A050151: a(n) = T(n,n+2), array T as in A050143.

Offset 0, canonical program `A050151.P5500480117813268484`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050151 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A050151.P5500480117813268484.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050151.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050228.P4926728603516705213

`3*a(n-1)-3*a(n-2)+2*a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=11, a(4)=19`
-/

namespace A050228.P4926728603516705213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6, 11, 19] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + 2 * a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A050228.P4926728603516705213

noncomputable section

/-- A050228: a(n) is the number of subsequences {s(k)} of {1,2,3,...n} such that s(k+1)-s(k) is 1 or 3.

Offset 1, canonical program `A050228.P4926728603516705213`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050228 (n : ℕ) : ℤ :=
  A050228.P4926728603516705213.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050228.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050231.P8823863988152097088

`3*a(n-1)-a(n-2)-a(n-3)-2*a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3`
-/

namespace A050231.P8823863988152097088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 3] fun n a =>
  3 * a (n - 1) - a (n - 2) - a (n - 3) - 2 * a (n - 4)

end

end A050231.P8823863988152097088

noncomputable section

/-- A050231: a(n) is the number of n-tosses having a run of 3 or more heads for a fair coin (i.e., probability is a(n)/2^n).

Offset 1, canonical program `A050231.P8823863988152097088`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050231 (n : ℕ) : ℤ :=
  A050231.P8823863988152097088.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050231.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050232.P4209895372301179712

`3*a(n-1)-a(n-2)-a(n-3)-a(n-4)-2*a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=3`
-/

namespace A050232.P4209895372301179712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1, 3] fun n a =>
  3 * a (n - 1) - a (n - 2) - a (n - 3) - a (n - 4) - 2 * a (n - 5)

end

end A050232.P4209895372301179712

noncomputable section

/-- A050232: a(n) is the number of n-tosses having a run of 4 or more heads for a fair coin (i.e., probability is a(n)/2^n).

Offset 1, canonical program `A050232.P4209895372301179712`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050232 (n : ℕ) : ℤ :=
  A050232.P4209895372301179712.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050232.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050250.P9727505272624782083

`10*a(n-2)+18` with `a(0)=9, a(1)=18`
-/

namespace A050250.P9727505272624782083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9, 18] fun n a =>
  10 * a (n - 2) + 18

end

end A050250.P9727505272624782083

noncomputable section

/-- A050250: Number of nonzero palindromes less than 10^n.

Offset 1, canonical program `A050250.P9727505272624782083`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050250 (n : ℕ) : ℤ :=
  (A050250.P9727505272624782083.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050250.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050271.P3710851192060460830

`a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=7, a(5)=8, a(6)=9`
-/

namespace A050271.P3710851192060460830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 7, 8, 9] fun n a =>
  a (n - 1) + 2 * a (n - 3) - 2 * a (n - 4) - a (n - 6) + a (n - 7)

end

end A050271.P3710851192060460830

noncomputable section

/-- A050271: Numbers k such that k = floor(sqrt(k)*ceiling(sqrt(k))).

Offset 1, canonical program `A050271.P3710851192060460830`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050271 (n : ℕ) : ℤ :=
  A050271.P3710851192060460830.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050271.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050292.P303072016618251938

`n-a(floor(n/2))` with `a(0)=0, a(1)=1`
-/

namespace A050292.P303072016618251938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) - a ⌊(n : ℚ) / 2⌋.toNat

end

end A050292.P303072016618251938

noncomputable section

/-- A050292: a(2*n) = 2*n - a(n), a(2*n+1) = 2*n + 1 - a(n) (for n >= 0).

Offset 0, canonical program `A050292.P303072016618251938`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050292 (n : ℕ) : ℤ :=
  A050292.P303072016618251938.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050292.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050297.P16917891889990109943

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=14, a(4)=40, a(5)=90, a(6)=175`
-/

namespace A050297.P16917891889990109943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 14, 40, 90, 175] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A050297.P16917891889990109943

noncomputable section

/-- A050297: Number of scalars which can be constructed from the Riemann tensor and metric tensor in n dimensions.

Offset 1, canonical program `A050297.P16917891889990109943`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050297 (n : ℕ) : ℤ :=
  A050297.P16917891889990109943.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050297.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050400.P9203262090911909696

`a(n-1)+8*a(n-2)+6*a(n-3)-a(n-4)-a(n-5)` with `a(0)=5, a(1)=1, a(2)=17, a(3)=43, a(4)=181`
-/

namespace A050400.P9203262090911909696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 1, 17, 43, 181] fun n a =>
  a (n - 1) + 8 * a (n - 2) + 6 * a (n - 3) - a (n - 4) - a (n - 5)

end

end A050400.P9203262090911909696

noncomputable section

/-- A050400: Number of independent sets of vertices in P_3 X C_n (n > 2).

Offset 0, canonical program `A050400.P9203262090911909696`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050400 (n : ℕ) : ℤ :=
  A050400.P9203262090911909696.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050400.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050407.P1701616867197434212

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A050407.P1701616867197434212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A050407.P1701616867197434212

noncomputable section

/-- A050407: a(n) = n*(n^2 - 6*n + 11)/6.

Offset 0, canonical program `A050407.P1701616867197434212`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050407 (n : ℕ) : ℤ :=
  A050407.P1701616867197434212.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050407.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050408.P9847007229613266895

`(117*n²-99*n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A050408.P9847007229613266895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((117 * n ^ 2 : ℤ) - (99 * n : ℤ) + 2 : ℚ) / 2

end

end A050408.P9847007229613266895

noncomputable section

/-- A050408: a(n) = (117*n^2 - 99*n + 2)/2.

Offset 0, canonical program `A050408.P9847007229613266895`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050408 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A050408.P9847007229613266895.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050408.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050409.P478583691290627250

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=5, a(2)=29, a(3)=86`
-/

namespace A050409.P478583691290627250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5, 29, 86] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A050409.P478583691290627250

noncomputable section

/-- A050409: Truncated square pyramid numbers: a(n) = Sum_{k = n..2*n} k^2.

Offset 0, canonical program `A050409.P478583691290627250`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050409 (n : ℕ) : ℤ :=
  A050409.P478583691290627250.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050409.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050410.P1072665369966865673

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=13, a(3)=50`
-/

namespace A050410.P1072665369966865673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 13, 50] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A050410.P1072665369966865673

noncomputable section

/-- A050410: Truncated square pyramid numbers: a(n) = Sum_{k = n..2*n-1} k^2.

Offset 0, canonical program `A050410.P1072665369966865673`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050410 (n : ℕ) : ℤ :=
  A050410.P1072665369966865673.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050410.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050441.P18240807059032482677

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=14, a(3)=50`
-/

namespace A050441.P18240807059032482677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 14, 50] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A050441.P18240807059032482677

noncomputable section

/-- A050441: Partial sums of A051865.

Offset 0, canonical program `A050441.P18240807059032482677`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050441 (n : ℕ) : ℤ :=
  A050441.P18240807059032482677.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050441.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050492.P13221391425343063113

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=14, a(2)=63, a(3)=172`
-/

namespace A050492.P13221391425343063113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 14, 63, 172] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A050492.P13221391425343063113

noncomputable section

/-- A050492: Thickened cube numbers: a(n) = n*(n^2 + (n-1)^2) + (n-1)*2*n*(n-1).

Offset 1, canonical program `A050492.P13221391425343063113`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050492 (n : ℕ) : ℤ :=
  A050492.P13221391425343063113.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050492.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050508.P13315529493107159767

`n*round(n*ϕ)`
-/

namespace A050508.P13315529493107159767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * SequenceMachineLib.roundAway ((n : ℝ) * Real.goldenRatio)

end

end A050508.P13315529493107159767

noncomputable section

/-- A050508: Golden rectangle numbers: n * A007067(n).

Offset 0, canonical program `A050508.P13315529493107159767`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050508 (n : ℕ) : ℤ :=
  A050508.P13315529493107159767.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050508.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050509.P15381801912782848536

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=10, a(2)=36, a(3)=88`
-/

namespace A050509.P15381801912782848536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10, 36, 88] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A050509.P15381801912782848536

noncomputable section

/-- A050509: House numbers (version 2): a(n) = (n+1)^3 + (n+1)*Sum_{i=0..n} i.

Offset 0, canonical program `A050509.P15381801912782848536`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050509 (n : ℕ) : ℤ :=
  A050509.P15381801912782848536.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050509.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050510.P13113299500594458980

`n*round(n*(1+sqrt(5))/2)*round(round(n*(1+sqrt(5))/2)*(1+sqrt(5))/2)`
-/

namespace A050510.P13113299500594458980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * SequenceMachineLib.roundAway ((n : ℝ) * ((1 + Real.sqrt (5 : ℝ)) / 2)) * SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway ((n : ℝ) * ((1 + Real.sqrt (5 : ℝ)) / 2)) : ℝ) * ((1 + Real.sqrt (5 : ℝ)) / 2))

end

end A050510.P13113299500594458980

noncomputable section

/-- A050510: Golden rectangular box numbers: a(n) = n*A007067(n)*A007067(A007067(n)).

Offset 0, canonical program `A050510.P13113299500594458980`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050510 (n : ℕ) : ℤ :=
  A050510.P13113299500594458980.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050510.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050533.P9050323563996792105

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=5, a(2)=22, a(3)=59`
-/

namespace A050533.P9050323563996792105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5, 22, 59] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A050533.P9050323563996792105

noncomputable section

/-- A050533: Thickened pyramidal numbers: a(n) = 2*(n+1)*n + Sum_{i=1..n} (4*i*(i-1) + 1).

Offset 0, canonical program `A050533.P9050323563996792105`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050533 (n : ℕ) : ℤ :=
  A050533.P9050323563996792105.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050533.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050534.P5833660190199075798

`3*C(n, 4)+3*C(n, 3)`
-/

namespace A050534.P5833660190199075798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose n 4 + 3 * Nat.choose n 3

end

end A050534.P5833660190199075798

noncomputable section

/-- A050534: Tritriangular numbers: a(n) = binomial(binomial(n,2),2) = n*(n+1)*(n-1)*(n-2)/8.

Offset 0, canonical program `A050534.P5833660190199075798`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050534 (n : ℕ) : ℤ :=
  (A050534.P5833660190199075798.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050534.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050536.P76331780508348460

`a(n-1)*(a(n-1)+1)/2` with `a(0)=8`
-/

namespace A050536.P76331780508348460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) * ((a (n - 1) + 1) / 2)

end

end A050536.P76331780508348460

noncomputable section

/-- A050536: Iterated triangular numbers with seed 8.

Offset 0, canonical program `A050536.P76331780508348460`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050536 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A050536.P76331780508348460.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050536.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050621.P16809931085443946731

`12*a(n-1)-20*a(n-2)` with `a(0)=2, a(1)=12`
-/

namespace A050621.P16809931085443946731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 12] fun n a =>
  12 * a (n - 1) - 20 * a (n - 2)

end

end A050621.P16809931085443946731

noncomputable section

/-- A050621: Smallest n-digit number divisible by 2^n.

Offset 1, canonical program `A050621.P16809931085443946731`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050621 (n : ℕ) : ℤ :=
  A050621.P16809931085443946731.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050621.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050683.P14587286261001414143

`10*a(n-2)` with `a(0)=9, a(1)=9`
-/

namespace A050683.P14587286261001414143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9, 9] fun n a =>
  10 * a (n - 2)

end

end A050683.P14587286261001414143

noncomputable section

/-- A050683: Number of nonzero palindromes of length n.

Offset 1, canonical program `A050683.P14587286261001414143`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050683 (n : ℕ) : ℤ :=
  (A050683.P14587286261001414143.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050683.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050685.P18323470652634762073

`a(n-1)+19*a(n-2)-19*a(n-3)-90*a(n-4)+90*a(n-5)` with `a(0)=0, a(1)=0, a(2)=9, a(3)=18, a(4)=189`
-/

namespace A050685.P18323470652634762073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 9, 18, 189] fun n a =>
  a (n - 1) + 19 * a (n - 2) - 19 * a (n - 3) - 90 * a (n - 4) + 90 * a (n - 5)

end

end A050685.P18323470652634762073

noncomputable section

/-- A050685: Number of nonzero palindromes < 10^n and containing at least one digit '0'.

Offset 1, canonical program `A050685.P18323470652634762073`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050685 (n : ℕ) : ℤ :=
  A050685.P18323470652634762073.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050685.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050923.P13598549048314492457

`2^n!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A050923.P13598549048314492457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.factorial n

end

end A050923.P13598549048314492457

noncomputable section

/-- A050923: a(n) = 2^(n!).

Offset 0, canonical program `A050923.P13598549048314492457`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n!` (program `A050923.P13598549048314492457`, by `A050923.P13598549048314492457.correct`). Lean does not check the parsing of the name. -/
def A050923 (n : ℕ) : ℤ :=
  (A050923.P13598549048314492457.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n!` (program `A050923.P13598549048314492457`, by `A050923.P13598549048314492457.correct`). Lean does not check the parsing of the name. -/
def A050923.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A050924.P17686619806461808251

`(a(n-1)+1)^a(n-1)` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A050924.P17686619806461808251
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + 1) ^ a (n - 1)

end

end A050924.P17686619806461808251

noncomputable section

/-- A050924: a(n) = (a(n-1)+1)^(a(n-1)), a(0) = 0.

Offset 0, canonical program `A050924.P17686619806461808251`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(a(n-1)+1)^a(n-1)` (program `A050924.P17686619806461808251`, by `A050924.P17686619806461808251.correct`). Lean does not check the parsing of the name. -/
def A050924 (n : ℕ) : ℤ :=
  (A050924.P17686619806461808251.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(a(n-1)+1)^a(n-1)` (program `A050924.P17686619806461808251`, by `A050924.P17686619806461808251.correct`). Lean does not check the parsing of the name. -/
def A050924.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A051009.P13168938621963564752

`1/(2*sqrt(2))*((1+sqrt(2))^2^n-(1-sqrt(2))^2^n)`
-/

namespace A051009.P13168938621963564752
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 / (2 * Real.sqrt (2 : ℝ)) * ((1 + Real.sqrt (2 : ℝ)) ^ 2 ^ n - (1 - Real.sqrt (2 : ℝ)) ^ 2 ^ n)

end

end A051009.P13168938621963564752

noncomputable section

/-- A051009: Reduced denominators of Newton's iteration for sqrt(2).

Offset 1, canonical program `A051009.P13168938621963564752`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051009 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051009.P13168938621963564752.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051009.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051032.P6086424082656518069

`a(n-1)+2*a(n-2)-2*a(n-3)` with `a(0)=2, a(1)=3, a(2)=3`
-/

namespace A051032.P6086424082656518069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 3] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3)

end

end A051032.P6086424082656518069

noncomputable section

/-- A051032: Summatory Rudin-Shapiro sequence for 2^(n-1).

Offset 1, canonical program `A051032.P6086424082656518069`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051032 (n : ℕ) : ℤ :=
  A051032.P6086424082656518069.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051032.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051039.P6786470407655246725

`2*a(n-1)-a(n-2)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16, a(5)=31`
-/

namespace A051039.P6786470407655246725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8, 16, 31] fun n a =>
  2 * a (n - 1) - a (n - 2)

end

end A051039.P6786470407655246725

noncomputable section

/-- A051039: 4-Stohr sequence.

Offset 1, canonical program `A051039.P6786470407655246725`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051039 (n : ℕ) : ℤ :=
  A051039.P6786470407655246725.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051039.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051040.P4183895774317396587

`2*a(n-1)-a(n-2)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16, a(5)=32, a(6)=63`
-/

namespace A051040.P4183895774317396587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8, 16, 32, 63] fun n a =>
  2 * a (n - 1) - a (n - 2)

end

end A051040.P4183895774317396587

noncomputable section

/-- A051040: 5-Stohr sequence.

Offset 1, canonical program `A051040.P4183895774317396587`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051040 (n : ℕ) : ℤ :=
  A051040.P4183895774317396587.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051040.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051047.P17952875004202404441

`14*a(n-1)-a(n-2)+8` with `a(0)=1, a(1)=3, a(2)=8, a(3)=120`
-/

namespace A051047.P17952875004202404441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 8, 120] fun n a =>
  14 * a (n - 1) - a (n - 2) + 8

end

end A051047.P17952875004202404441

noncomputable section

/-- A051047: For n > 5, a(n) = 15*a(n-1) - 15*a(n-2) + a(n-3); initial terms are 1, 3, 8, 120, 1680.

Offset 1, canonical program `A051047.P17952875004202404441`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051047 (n : ℕ) : ℤ :=
  A051047.P17952875004202404441.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051047.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051049.P4107407933189927976

`2^n-n%2`
-/

namespace A051049.P4107407933189927976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ((n % 2 : ℕ) : ℤ)

end

end A051049.P4107407933189927976

noncomputable section

/-- A051049: Number of moves needed to solve an (n+1)-ring baguenaudier if two simultaneous moves of the two end rings are counted as one.

Offset 0, canonical program `A051049.P4107407933189927976`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051049 (n : ℕ) : ℤ :=
  A051049.P4107407933189927976.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051049.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051063.P10942290841897667309

`27*n-a(n-1)` with `a(0)=9`
-/

namespace A051063.P10942290841897667309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  (27 * n : ℤ) - a (n - 1)

end

end A051063.P10942290841897667309

noncomputable section

/-- A051063: 27*n+9 or 27*n+18.

Offset 1, canonical program `A051063.P10942290841897667309`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051063 (n : ℕ) : ℤ :=
  A051063.P10942290841897667309.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051063.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051109.P14264555094442839759

`10*a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A051109.P14264555094442839759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  10 * a (n - 3)

end

end A051109.P14264555094442839759

noncomputable section

/-- A051109: Expansion of g.f. (1+2*x+5*x^2)/(1-10*x^3).

Offset 0, canonical program `A051109.P14264555094442839759`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051109 (n : ℕ) : ℤ :=
  (A051109.P14264555094442839759.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051109.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051176.P17633431919486338979

`n/gcd(n, 3)`
-/

namespace A051176.P17633431919486338979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd n 3 : ℚ)

end

end A051176.P17633431919486338979

noncomputable section

/-- A051176: If n mod 3 = 0 then n/3 else n.

Offset 0, canonical program `A051176.P17633431919486338979`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051176 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051176.P17633431919486338979.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051176.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051179.P1249514681294522537

`2^2^n-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051179.P1249514681294522537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ 2 ^ n : ℤ) - 1

end

end A051179.P1249514681294522537

noncomputable section

/-- A051179: a(n) = 2^(2^n) - 1.

Offset 0, canonical program `A051179.P1249514681294522537`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^2^n-1` (program `A051179.P1249514681294522537`, by `A051179.P1249514681294522537.correct`). Lean does not check the parsing of the name. -/
def A051179 (n : ℕ) : ℤ :=
  A051179.P1249514681294522537.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^2^n-1` (program `A051179.P1249514681294522537`, by `A051179.P1249514681294522537.correct`). Lean does not check the parsing of the name. -/
def A051179.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A051188.P9609325814342919322

`7^n*n!`
-/

namespace A051188.P9609325814342919322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n * Nat.factorial n

end

end A051188.P9609325814342919322

noncomputable section

/-- A051188: Sept-factorial numbers.

Offset 0, canonical program `A051188.P9609325814342919322`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051188 (n : ℕ) : ℤ :=
  (A051188.P9609325814342919322.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051188.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051189.P16387431370213277791

`8^n*n!`
-/

namespace A051189.P16387431370213277791
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ n * Nat.factorial n

end

end A051189.P16387431370213277791

noncomputable section

/-- A051189: Octo-factorial numbers.

Offset 0, canonical program `A051189.P16387431370213277791`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051189 (n : ℕ) : ℤ :=
  (A051189.P16387431370213277791.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051189.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051232.P14744879620529247211

`9^n*n!`
-/

namespace A051232.P14744879620529247211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ n * Nat.factorial n

end

end A051232.P14744879620529247211

noncomputable section

/-- A051232: 9-factorial numbers.

Offset 0, canonical program `A051232.P14744879620529247211`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051232 (n : ℕ) : ℤ :=
  (A051232.P14744879620529247211.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051232.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051253.P14578079521010702026

`2*a(n-1)+2*a(n-2)-2*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=4, a(2)=6, a(3)=18`
-/

namespace A051253.P14578079521010702026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 6, 18] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - 4 * a (n - 4)

end

end A051253.P14578079521010702026

noncomputable section

/-- A051253: Weights of rotation-symmetric functions in n variables.

Offset 3, canonical program `A051253.P14578079521010702026`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051253 (n : ℕ) : ℤ :=
  A051253.P14578079521010702026.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051253.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051262.P2815637945179530644

`10^n*n!`
-/

namespace A051262.P2815637945179530644
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n * Nat.factorial n

end

end A051262.P2815637945179530644

noncomputable section

/-- A051262: 10-factorial numbers.

Offset 0, canonical program `A051262.P2815637945179530644`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051262 (n : ℕ) : ℤ :=
  (A051262.P2815637945179530644.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051262.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051274.P9170261909361057786

`a(n-6)+2` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=2, a(5)=1`
-/

namespace A051274.P9170261909361057786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 1, 2, 1] fun n a =>
  a (n - 6) + 2

end

end A051274.P9170261909361057786

noncomputable section

/-- A051274: Expansion of (1+x^4)/((1-x^2)*(1-x^3)).

Offset 0, canonical program `A051274.P9170261909361057786`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051274 (n : ℕ) : ℤ :=
  (A051274.P9170261909361057786.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051274.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051275.P12859601666256076836

`2*floor(n/2)+floor((n+4)/3)-n`
-/

namespace A051275.P12859601666256076836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n : ℚ) / 2⌋ + ⌊(n + 4 : ℚ) / 3⌋ - (n : ℤ)

end

end A051275.P12859601666256076836

noncomputable section

/-- A051275: Expansion of (1+x^2)/((1-x^2)*(1-x^3)).

Offset 0, canonical program `A051275.P12859601666256076836`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051275 (n : ℕ) : ℤ :=
  A051275.P12859601666256076836.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051275.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051285.P3514926833785302795

`2^a(n-1)` with `a(0)=1, a(1)=2, a(2)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051285.P3514926833785302795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  2 ^ a (n - 1)

end

end A051285.P3514926833785302795

noncomputable section

/-- A051285: a(1) = 1, a(2) = 2, a(n) = a(n-1)^a(n-2).

Offset 1, canonical program `A051285.P3514926833785302795`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^a(n-1)` (program `A051285.P3514926833785302795`, by `A051285.P3514926833785302795.correct`). Lean does not check the parsing of the name. -/
def A051285 (n : ℕ) : ℤ :=
  (A051285.P3514926833785302795.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^a(n-1)` (program `A051285.P3514926833785302795`, by `A051285.P3514926833785302795.correct`). Lean does not check the parsing of the name. -/
def A051285.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A051375.P17183982167544344738

`10*a(n-1)-35*a(n-2)+50*a(n-3)-24*a(n-4)` with `a(0)=0, a(1)=0, a(2)=9, a(3)=66`
-/

namespace A051375.P17183982167544344738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 9, 66] fun n a =>
  10 * a (n - 1) - 35 * a (n - 2) + 50 * a (n - 3) - 24 * a (n - 4)

end

end A051375.P17183982167544344738

noncomputable section

/-- A051375: Number of Boolean functions of n variables and rank 3 from Post class F(5,inf).

Offset 1, canonical program `A051375.P17183982167544344738`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051375 (n : ℕ) : ℤ :=
  A051375.P17183982167544344738.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051375.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051405.P9866845305940955165

`13*a(n-1)-39*a(n-2)+27*a(n-3)` with `a(0)=2, a(1)=10, a(2)=70`
-/

namespace A051405.P9866845305940955165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 10, 70] fun n a =>
  13 * a (n - 1) - 39 * a (n - 2) + 27 * a (n - 3)

end

end A051405.P9866845305940955165

noncomputable section

/-- A051405: a(n) = (3^n+1)*(3^(n+1)+1)/4.

Offset 0, canonical program `A051405.P9866845305940955165`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051405 (n : ℕ) : ℤ :=
  A051405.P9866845305940955165.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051405.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051406.P6410648152022479590

`13*a(n-1)-39*a(n-2)+27*a(n-3)` with `a(0)=1, a(1)=5, a(2)=35`
-/

namespace A051406.P6410648152022479590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 35] fun n a =>
  13 * a (n - 1) - 39 * a (n - 2) + 27 * a (n - 3)

end

end A051406.P6410648152022479590

noncomputable section

/-- A051406: a(n) = (3^n+1) * (3^(n+1)+1) / 8.

Offset 0, canonical program `A051406.P6410648152022479590`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051406 (n : ℕ) : ℤ :=
  A051406.P6410648152022479590.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051406.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051407.P9205569096708780831

`12*a(n-1)-27*a(n-2)` with `a(0)=2, a(1)=15`
-/

namespace A051407.P9205569096708780831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 15] fun n a =>
  12 * a (n - 1) - 27 * a (n - 2)

end

end A051407.P9205569096708780831

noncomputable section

/-- A051407: a(n) = 3^n*(3^(n+1)+1)/2.

Offset 0, canonical program `A051407.P9205569096708780831`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051407 (n : ℕ) : ℤ :=
  A051407.P9205569096708780831.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051407.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051437.P1457070386923622612

`2*a(n-1)+2*a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A051437.P1457070386923622612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) - 4 * a (n - 3)

end

end A051437.P1457070386923622612

noncomputable section

/-- A051437: Number of undirected walks of length n+1 on an oriented triangle, visiting n+2 vertices, with n "corners"; the symmetry group is C3. Walks are not self-avoiding.

Offset 0, canonical program `A051437.P1457070386923622612`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051437 (n : ℕ) : ℤ :=
  A051437.P1457070386923622612.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051437.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051442.P5596359599967945176

`(n+1)^n+n^(n+1)`
-/

namespace A051442.P5596359599967945176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ n + n ^ (n + 1)

end

end A051442.P5596359599967945176

noncomputable section

/-- A051442: a(n) = n^(n+1)+(n+1)^n.

Offset 0, canonical program `A051442.P5596359599967945176`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051442 (n : ℕ) : ℤ :=
  (A051442.P5596359599967945176.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051442.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051450.P13625894040363126145

`4*a(n-1)-3*a(n-2)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=12`
-/

namespace A051450.P13625894040363126145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5, 12] fun n a =>
  4 * a (n - 1) - 3 * a (n - 2) - 2 * a (n - 3) + a (n - 4)

end

end A051450.P13625894040363126145

noncomputable section

/-- A051450: Number of positive rational knots with 2n+1 crossings.

Offset 1, canonical program `A051450.P13625894040363126145`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051450 (n : ℕ) : ℤ :=
  A051450.P13625894040363126145.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051450.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051494.P5980300203394286055

`(n²+2*n+2+(n²+6*n+6)*(-1)^n)/8`
-/

namespace A051494.P5980300203394286055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 + 2 * n : ℤ) + (2 + (n ^ 2 + 6 * n + 6 : ℤ) * (-1) ^ n) : ℚ) / 8

end

end A051494.P5980300203394286055

noncomputable section

/-- A051494: Expansion of (1 - x + x^2 + x^3)/(1 - x^2)^3.

Offset 0, canonical program `A051494.P5980300203394286055`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051494 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051494.P5980300203394286055.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051494.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051498.P8565582963595325475

`floor(tan(n)^3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051498.P8565582963595325475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (n : ℝ) ^ 3⌋

end

end A051498.P8565582963595325475

noncomputable section

/-- A051498: a(n) = floor(tan(n)^3).

Offset 0, canonical program `A051498.P8565582963595325475`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(tan(n)^3)` (program `A051498.P8565582963595325475`, by `A051498.P8565582963595325475.correct`). Lean does not check the parsing of the name. -/
def A051498 (n : ℕ) : ℤ :=
  A051498.P8565582963595325475.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(tan(n)^3)` (program `A051498.P8565582963595325475`, by `A051498.P8565582963595325475.correct`). Lean does not check the parsing of the name. -/
def A051498.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A051499.P7601859941549761828

`round(tan(n)^3)`
-/

namespace A051499.P7601859941549761828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan (n : ℝ) ^ 3)

end

end A051499.P7601859941549761828

noncomputable section

/-- A051499: Nearest integer to tan(n)^3.

Offset 0, canonical program `A051499.P7601859941549761828`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051499 (n : ℕ) : ℤ :=
  A051499.P7601859941549761828.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051499.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051500.P1355679400199239576

`13*a(n-1)-39*a(n-2)+27*a(n-3)` with `a(0)=1, a(1)=4, a(2)=25`
-/

namespace A051500.P1355679400199239576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 25] fun n a =>
  13 * a (n - 1) - 39 * a (n - 2) + 27 * a (n - 3)

end

end A051500.P1355679400199239576

noncomputable section

/-- A051500: a(n) = (3^n + 1)^2/4.

Offset 0, canonical program `A051500.P1355679400199239576`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051500 (n : ℕ) : ℤ :=
  A051500.P1355679400199239576.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051500.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051511.P16106320985316429345

`floor(tan(2^n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051511.P16106320985316429345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (2 ^ n : ℝ)⌋

end

end A051511.P16106320985316429345

noncomputable section

/-- A051511: a(n) = floor(tan(2^n)).

Offset 0, canonical program `A051511.P16106320985316429345`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(tan(2^n))` (program `A051511.P16106320985316429345`, by `A051511.P16106320985316429345.correct`). Lean does not check the parsing of the name. -/
def A051511 (n : ℕ) : ℤ :=
  A051511.P16106320985316429345.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(tan(2^n))` (program `A051511.P16106320985316429345`, by `A051511.P16106320985316429345.correct`). Lean does not check the parsing of the name. -/
def A051511.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A051576.P10885700853466985054

`3^(n*(n²+5)/6)`
-/

namespace A051576.P10885700853466985054
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 : ℝ) ^ ((n : ℚ) * ((n ^ 2 + 5 : ℚ) / 6) : ℝ)

end

end A051576.P10885700853466985054

noncomputable section

/-- A051576: Order of Burnside group B(3,n) of exponent 3 and rank n.

Offset 0, canonical program `A051576.P10885700853466985054`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051576 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051576.P10885700853466985054.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051576.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051578.P8395656647873979606

`2*(n+2)*a(n-1)` with `a(0)=1`
-/

namespace A051578.P8395656647873979606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((n + 2) * a (n - 1))

end

end A051578.P8395656647873979606

noncomputable section

/-- A051578: a(n) = (2*n+4)!!/4!!, related to A000165 (even double factorials).

Offset 0, canonical program `A051578.P8395656647873979606`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051578 (n : ℕ) : ℤ :=
  (A051578.P8395656647873979606.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051578.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051582.P6481622294557809657

`(n+4)!*2^(n-1)/12`
-/

namespace A051582.P6481622294557809657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 4) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) / 12

end

end A051582.P6481622294557809657

noncomputable section

/-- A051582: a(n) = (2*n+8)!!/8!!, related to A000165 (even double factorials).

Offset 0, canonical program `A051582.P6481622294557809657`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051582 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051582.P6481622294557809657.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051582.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051588.P14918087387494790654

`8^n-3*6^n+3*5^n-4^n`
-/

namespace A051588.P14918087387494790654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) - (3 * 6 ^ n : ℤ) + (3 * 5 ^ n : ℤ) - (4 ^ n : ℤ)

end

end A051588.P14918087387494790654

noncomputable section

/-- A051588: Number of 3 X n binary matrices such that any 2 rows have a common 1.

Offset 0, canonical program `A051588.P14918087387494790654`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051588 (n : ℕ) : ℤ :=
  A051588.P14918087387494790654.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051588.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051605.P598077634822920452

`(3*n+5)*a(n-1)` with `a(0)=1`
-/

namespace A051605.P598077634822920452
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (3 * n + 5) * a (n - 1)

end

end A051605.P598077634822920452

noncomputable section

/-- A051605: a(n) = (3*n+5)!!!/5!!!.

Offset 0, canonical program `A051605.P598077634822920452`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051605 (n : ℕ) : ℤ :=
  (A051605.P598077634822920452.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051605.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051609.P2567408465257684594

`(n+3)!*3^(n-1)/2`
-/

namespace A051609.P2567408465257684594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 3) : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) / 2

end

end A051609.P2567408465257684594

noncomputable section

/-- A051609: a(n) = (3*n+9)!!!/9!!!, related to A032031 ((3*n)!!! triple factorials).

Offset 0, canonical program `A051609.P2567408465257684594`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051609 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051609.P2567408465257684594.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051609.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051618.P9565828047643936222

`(2*n+3)!/(6*(n+1)!)`
-/

namespace A051618.P9565828047643936222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n + 3) : ℚ) / (6 * Nat.factorial (n + 1) : ℚ)

end

end A051618.P9565828047643936222

noncomputable section

/-- A051618: a(n) = (4*n+6)(!^4)/6(!^4).

Offset 0, canonical program `A051618.P9565828047643936222`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051618 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051618.P9565828047643936222.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051618.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051624.P5089005227058571307

`(5*n-4)*n`
-/

namespace A051624.P5089005227058571307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((5 * n : ℤ) - 4) * (n : ℤ)

end

end A051624.P5089005227058571307

noncomputable section

/-- A051624: 12-gonal (or dodecagonal) numbers: a(n) = n*(5*n-4).

Offset 0, canonical program `A051624.P5089005227058571307`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051624 (n : ℕ) : ℤ :=
  A051624.P5089005227058571307.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051624.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051662.P2026014094822146979

`((8*n+21)*n+19)*n/6+1`
-/

namespace A051662.P2026014094822146979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 * n + 21) * n + 19 : ℚ) * ((n : ℚ) / 6) + 1

end

end A051662.P2026014094822146979

noncomputable section

/-- A051662: House numbers: a(n) = (n+1)^3 + Sum_{i=1..n} i^2.

Offset 0, canonical program `A051662.P2026014094822146979`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051662 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051662.P2026014094822146979.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051662.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051673.P2146519150277777514

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=12, a(3)=47`
-/

namespace A051673.P2146519150277777514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 12, 47] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A051673.P2146519150277777514

noncomputable section

/-- A051673: Cubic star numbers: a(n) = n^3 + 4*Sum_{i=0..n-1} i^2.

Offset 0, canonical program `A051673.P2146519150277777514`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051673 (n : ℕ) : ℤ :=
  A051673.P2146519150277777514.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051673.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051682.P17765818912879362649

`9*n+a(n-1)-8` with `a(0)=0`
-/

namespace A051682.P17765818912879362649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (9 * n : ℤ) + a (n - 1) - 8

end

end A051682.P17765818912879362649

noncomputable section

/-- A051682: 11-gonal (or hendecagonal) numbers: a(n) = n*(9*n-7)/2.

Offset 0, canonical program `A051682.P17765818912879362649`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051682 (n : ℕ) : ℤ :=
  A051682.P17765818912879362649.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051682.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051711.P14835851581144107489

`4*n*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A051711.P14835851581144107489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * (n * a (n - 1))

end

end A051711.P14835851581144107489

noncomputable section

/-- A051711: a(0) = 1; for n > 0, a(n) = n!*4^n/2.

Offset 0, canonical program `A051711.P14835851581144107489`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051711 (n : ℕ) : ℤ :=
  (A051711.P14835851581144107489.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051711.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051724.P8825803802415537857

`lcm(n, 12)/12`
-/

namespace A051724.P8825803802415537857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n 12 : ℚ) / 12

end

end A051724.P8825803802415537857

noncomputable section

/-- A051724: Numerator of n/12.

Offset 0, canonical program `A051724.P8825803802415537857`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051724 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051724.P8825803802415537857.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051724.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051736.P7695227722432717112

`2*a(n-1)+6*a(n-2)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=17, a(3)=63`
-/

namespace A051736.P7695227722432717112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 17, 63] fun n a =>
  2 * a (n - 1) + 6 * a (n - 2) - a (n - 4)

end

end A051736.P7695227722432717112

noncomputable section

/-- A051736: Number of 3 X n (0,1)-matrices with no consecutive 1's in any row or column.

Offset 0, canonical program `A051736.P7695227722432717112`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051736 (n : ℕ) : ℤ :=
  A051736.P7695227722432717112.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051736.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051743.P17654337321609114764

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=2, a(1)=7, a(2)=18, a(3)=39, a(4)=75`
-/

namespace A051743.P17654337321609114764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7, 18, 39, 75] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A051743.P17654337321609114764

noncomputable section

/-- A051743: a(n) = (1/24)*n*(n + 5)*(n^2 + n + 6).

Offset 1, canonical program `A051743.P17654337321609114764`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051743 (n : ℕ) : ℤ :=
  A051743.P17654337321609114764.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051743.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051744.P3077733476710149678

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=2, a(1)=8, a(2)=21, a(3)=45, a(4)=85`
-/

namespace A051744.P3077733476710149678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8, 21, 45, 85] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A051744.P3077733476710149678

noncomputable section

/-- A051744: a(n) = n*(n+1)*(n^2+5*n+18)/24.

Offset 1, canonical program `A051744.P3077733476710149678`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051744 (n : ℕ) : ℤ :=
  A051744.P3077733476710149678.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051744.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051755.P12682415417044185776

`2*a(n-1)-a(n-2)` with `a(0)=3, a(1)=4, a(2)=6`
-/

namespace A051755.P12682415417044185776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4, 6] fun n a =>
  2 * a (n - 1) - a (n - 2)

end

end A051755.P12682415417044185776

noncomputable section

/-- A051755: Consider problem of placing N queens on an n X n board so that each queen attacks precisely 2 others. Sequence gives maximal number of queens.

Offset 2, canonical program `A051755.P12682415417044185776`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051755 (n : ℕ) : ℤ :=
  A051755.P12682415417044185776.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051755.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051786.P1780017622112303399

`(a(n-1)*a(n-2)*a(n-3)+1)/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A051786.P1780017622112303399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  (a (n - 1) * a (n - 2) * a (n - 3) + 1) / a (n - 4)

end

end A051786.P1780017622112303399

noncomputable section

/-- A051786: Propp's cubic recurrence: a(0)=a(1)=a(2)=a(3)=1; for n>3, a(n)=(1+a(n-1)*a(n-2)*a(n-3))/a(n-4).

Offset 0, canonical program `A051786.P1780017622112303399`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051786 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051786.P1780017622112303399.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051786.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051797.P17980961593052051885

`(n+1)*(n+2)*(n+3)*(2*n+1)/6`
-/

namespace A051797.P17980961593052051885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 2 : ℚ) * ((n + 3 : ℚ) * ((2 * n + 1 : ℚ) / 6)))

end

end A051797.P17980961593052051885

noncomputable section

/-- A051797: Partial sums of A007585.

Offset 0, canonical program `A051797.P17980961593052051885`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051797 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051797.P17980961593052051885.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051797.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051798.P2584861954710458875

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=13, a(2)=55, a(3)=155, a(4)=350`
-/

namespace A051798.P2584861954710458875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 13, 55, 155, 350] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A051798.P2584861954710458875

noncomputable section

/-- A051798: a(n) = (n+1)*(n+2)*(n+3)*(9n+4)/24.

Offset 0, canonical program `A051798.P2584861954710458875`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051798 (n : ℕ) : ℤ :=
  A051798.P2584861954710458875.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051798.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051799.P17278344415809950301

`(n+1)*(n+2)*(n+3)*(5*n+2)/12`
-/

namespace A051799.P17278344415809950301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 2 : ℚ) * ((n + 3 : ℚ) * ((5 * n + 2 : ℚ) / 12)))

end

end A051799.P17278344415809950301

noncomputable section

/-- A051799: Partial sums of A007587.

Offset 0, canonical program `A051799.P17278344415809950301`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051799 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051799.P17278344415809950301.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051799.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051836.P13235277305763991040

`n*(n+1)*(n+2)*(n+3)*(3*n+2)/120`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051836.P13235277305763991040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n + 1 : ℚ) * ((n + 2 : ℚ) * ((n + 3 : ℚ) * ((3 * n + 2 : ℚ) / 120))))

end

end A051836.P13235277305763991040

noncomputable section

/-- A051836: a(n) = n*(n+1)*(n+2)*(n+3)*(3*n+2)/120.

Offset 0, canonical program `A051836.P13235277305763991040`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051836 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051836.P13235277305763991040.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051836.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051843.P13176606515044810472

`n*(n+1)*(n+2)*(n+3)*(6*n-1)/120`
-/

namespace A051843.P13176606515044810472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n + 1 : ℚ) * ((n + 2 : ℚ) * ((n + 3 : ℚ) * (((6 * n : ℤ) - 1 : ℚ) / 120))))

end

end A051843.P13176606515044810472

noncomputable section

/-- A051843: Partial sums of A002419.

Offset 0, canonical program `A051843.P13176606515044810472`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051843 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051843.P13176606515044810472.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051843.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051865.P6403725485047841460

`11*n+a(n-1)-10` with `a(0)=0`
-/

namespace A051865.P6403725485047841460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (11 * n : ℤ) + a (n - 1) - 10

end

end A051865.P6403725485047841460

noncomputable section

/-- A051865: 13-gonal (or tridecagonal) numbers: a(n) = n*(11*n - 9)/2.

Offset 0, canonical program `A051865.P6403725485047841460`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(11*n-9)/2` (program `A051865.P1630052886278900675`, by `A051865.P1630052886278900675.correct`). Lean does not check the parsing of the name. -/
def A051865 (n : ℕ) : ℤ :=
  A051865.P6403725485047841460.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(11*n-9)/2` (program `A051865.P1630052886278900675`, by `A051865.P1630052886278900675.correct`). Lean does not check the parsing of the name. -/
def A051865.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A051867.P10177706605214258555

`13*n+a(n-1)-12` with `a(0)=0`
-/

namespace A051867.P10177706605214258555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (13 * n : ℤ) + a (n - 1) - 12

end

end A051867.P10177706605214258555

noncomputable section

/-- A051867: 15-gonal (or pentadecagonal) numbers: n*(13n-11)/2.

Offset 0, canonical program `A051867.P10177706605214258555`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(13*n-11)/2` (program `A051867.P12398725824125072553`, by `A051867.P12398725824125072553.correct`). Lean does not check the parsing of the name. -/
def A051867 (n : ℕ) : ℤ :=
  A051867.P10177706605214258555.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(13*n-11)/2` (program `A051867.P12398725824125072553`, by `A051867.P12398725824125072553.correct`). Lean does not check the parsing of the name. -/
def A051867.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A051869.P14633679652413140002

`a(n-1)+15*n-14` with `a(0)=0`
-/

namespace A051869.P14633679652413140002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (15 * n : ℤ) - 14

end

end A051869.P14633679652413140002

noncomputable section

/-- A051869: 17-gonal (or heptadecagonal) numbers: a(n) = n*(15*n-13)/2.

Offset 0, canonical program `A051869.P14633679652413140002`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(15*n-13)/2` (program `A051869.P10706376377431758298`, by `A051869.P10706376377431758298.correct`). Lean does not check the parsing of the name. -/
def A051869 (n : ℕ) : ℤ :=
  A051869.P14633679652413140002.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(15*n-13)/2` (program `A051869.P10706376377431758298`, by `A051869.P10706376377431758298.correct`). Lean does not check the parsing of the name. -/
def A051869.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A051871.P17734771156437103142

`17*n+a(n-1)-16` with `a(0)=0`
-/

namespace A051871.P17734771156437103142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (17 * n : ℤ) + a (n - 1) - 16

end

end A051871.P17734771156437103142

noncomputable section

/-- A051871: 19-gonal (or enneadecagonal) numbers: n(17n-15)/2.

Offset 0, canonical program `A051871.P17734771156437103142`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(17*n-15)/2` (program `A051871.P3538261043858996023`, by `A051871.P3538261043858996023.correct`). Lean does not check the parsing of the name. -/
def A051871 (n : ℕ) : ℤ :=
  A051871.P17734771156437103142.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(17*n-15)/2` (program `A051871.P3538261043858996023`, by `A051871.P3538261043858996023.correct`). Lean does not check the parsing of the name. -/
def A051871.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A051873.P12199030438265474004

`19*n+a(n-1)-18` with `a(0)=0`
-/

namespace A051873.P12199030438265474004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (19 * n : ℤ) + a (n - 1) - 18

end

end A051873.P12199030438265474004

noncomputable section

/-- A051873: 21-gonal numbers: a(n) = n*(19n - 17)/2.

Offset 0, canonical program `A051873.P12199030438265474004`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(19*n-17)/2` (program `A051873.P9615949593755387077`, by `A051873.P9615949593755387077.correct`). Lean does not check the parsing of the name. -/
def A051873 (n : ℕ) : ℤ :=
  A051873.P12199030438265474004.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(19*n-17)/2` (program `A051873.P9615949593755387077`, by `A051873.P9615949593755387077.correct`). Lean does not check the parsing of the name. -/
def A051873.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A051875.P4877701948217654249

`21*n+a(n-1)-20` with `a(0)=0`
-/

namespace A051875.P4877701948217654249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (21 * n : ℤ) + a (n - 1) - 20

end

end A051875.P4877701948217654249

noncomputable section

/-- A051875: 23-gonal numbers: a(n) = n(21n-19)/2.

Offset 0, canonical program `A051875.P4877701948217654249`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(21*n-19)/2` (program `A051875.P5405961100775647390`, by `A051875.P5405961100775647390.correct`). Lean does not check the parsing of the name. -/
def A051875 (n : ℕ) : ℤ :=
  A051875.P4877701948217654249.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(21*n-19)/2` (program `A051875.P5405961100775647390`, by `A051875.P5405961100775647390.correct`). Lean does not check the parsing of the name. -/
def A051875.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A051877.P11901529371132593839

`(n+1)*(n+2)*(n+3)*(n+4)*(7*n+5)/120`
-/

namespace A051877.P11901529371132593839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 2 : ℚ) * ((n + 3 : ℚ) * ((n + 4 : ℚ) * ((7 * n + 5 : ℚ) / 120))))

end

end A051877.P11901529371132593839

noncomputable section

/-- A051877: Partial sums of A051740.

Offset 0, canonical program `A051877.P11901529371132593839`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051877 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051877.P11901529371132593839.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051877.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051879.P7679774407607012762

`(1+n)*(2+n)*(3+n)*(4+n)*(5+9*n)/120`
-/

namespace A051879.P7679774407607012762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 + n) * ((2 + n) * ((3 + n) * ((4 + n) * (5 + 9 * n)))) : ℚ) / 120

end

end A051879.P7679774407607012762

noncomputable section

/-- A051879: Partial sums of A051798.

Offset 0, canonical program `A051879.P7679774407607012762`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051879 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051879.P7679774407607012762.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051879.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051890.P12339158727209940222

`4*C(n, 2)+2`
-/

namespace A051890.P12339158727209940222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose n 2 + 2

end

end A051890.P12339158727209940222

noncomputable section

/-- A051890: a(n) = 2*(n^2 - n + 1).

Offset 0, canonical program `A051890.P12339158727209940222`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051890 (n : ℕ) : ℤ :=
  (A051890.P12339158727209940222.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051890.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051895.P13989922458305069876

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=7, a(2)=33, a(3)=90`
-/

namespace A051895.P13989922458305069876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 7, 33, 90] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A051895.P13989922458305069876

noncomputable section

/-- A051895: Partial sums of second pentagonal numbers with even index (A049453).

Offset 0, canonical program `A051895.P13989922458305069876`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051895 (n : ℕ) : ℤ :=
  A051895.P13989922458305069876.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051895.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051925.P17489283095479781563

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=11`
-/

namespace A051925.P17489283095479781563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 3, 11] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A051925.P17489283095479781563

noncomputable section

/-- A051925: a(n) = n*(2*n+5)*(n-1)/6.

Offset 0, canonical program `A051925.P17489283095479781563`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051925 (n : ℕ) : ℤ :=
  A051925.P17489283095479781563.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051925.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051926.P15553188178051803573

`5*a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=7, a(2)=35`
-/

namespace A051926.P15553188178051803573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 35] fun n a =>
  5 * a (n - 1) + a (n - 2) - a (n - 3)

end

end A051926.P15553188178051803573

noncomputable section

/-- A051926: Number of independent sets of nodes in graph C_4 X P_n (n>2).

Offset 0, canonical program `A051926.P15553188178051803573`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051926 (n : ℕ) : ℤ :=
  A051926.P15553188178051803573.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051926.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051927.P9074890548432425938

`a(n-1)+3*a(n-2)+a(n-3)` with `a(0)=3, a(1)=1, a(2)=7`
-/

namespace A051927.P9074890548432425938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 7] fun n a =>
  a (n - 1) + 3 * a (n - 2) + a (n - 3)

end

end A051927.P9074890548432425938

noncomputable section

/-- A051927: Number of independent vertex sets in the n-prism graph Y_n = K_2 X C_n (n > 2).

Offset 0, canonical program `A051927.P9074890548432425938`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051927 (n : ℕ) : ℤ :=
  (A051927.P9074890548432425938.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051927.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051928.P13066013823434318633

`2*a(n-1)+4*a(n-2)+a(n-3)` with `a(0)=4, a(1)=1, a(2)=13`
-/

namespace A051928.P13066013823434318633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 1, 13] fun n a =>
  2 * a (n - 1) + 4 * a (n - 2) + a (n - 3)

end

end A051928.P13066013823434318633

noncomputable section

/-- A051928: Number of independent sets of vertices in graph K_3 X C_n (n > 2).

Offset 0, canonical program `A051928.P13066013823434318633`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051928 (n : ℕ) : ℤ :=
  (A051928.P13066013823434318633.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051928.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051929.P13184414836089518442

`3*a(n-1)+5*a(n-2)+a(n-3)` with `a(0)=5, a(1)=1, a(2)=21`
-/

namespace A051929.P13184414836089518442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 1, 21] fun n a =>
  3 * a (n - 1) + 5 * a (n - 2) + a (n - 3)

end

end A051929.P13184414836089518442

noncomputable section

/-- A051929: Number of independent sets of vertices in graph K_4 X C_n (n > 2).

Offset 0, canonical program `A051929.P13184414836089518442`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051929 (n : ℕ) : ℤ :=
  (A051929.P13184414836089518442.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051929.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051930.P1943446384532561090

`4*a(n-1)+6*a(n-2)+a(n-3)` with `a(0)=6, a(1)=1, a(2)=31`
-/

namespace A051930.P1943446384532561090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6, 1, 31] fun n a =>
  4 * a (n - 1) + 6 * a (n - 2) + a (n - 3)

end

end A051930.P1943446384532561090

noncomputable section

/-- A051930: Number of independent sets of vertices in graph K_5 X C_n (n > 2).

Offset 0, canonical program `A051930.P1943446384532561090`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051930 (n : ℕ) : ℤ :=
  (A051930.P1943446384532561090.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051930.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051931.P3567191690759380197

`5*a(n-1)+7*a(n-2)+a(n-3)` with `a(0)=7, a(1)=1, a(2)=43`
-/

namespace A051931.P3567191690759380197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7, 1, 43] fun n a =>
  5 * a (n - 1) + 7 * a (n - 2) + a (n - 3)

end

end A051931.P3567191690759380197

noncomputable section

/-- A051931: Number of independent sets of nodes in graph K_6 X C_n (n > 2).

Offset 0, canonical program `A051931.P3567191690759380197`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051931 (n : ℕ) : ℤ :=
  (A051931.P3567191690759380197.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051931.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051932.P14759649176495140790

`6*a(n-1)+8*a(n-2)+a(n-3)` with `a(0)=8, a(1)=1, a(2)=57`
-/

namespace A051932.P14759649176495140790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8, 1, 57] fun n a =>
  6 * a (n - 1) + 8 * a (n - 2) + a (n - 3)

end

end A051932.P14759649176495140790

noncomputable section

/-- A051932: Number of independent sets of nodes in graph K_7 X C_n (n > 2).

Offset 0, canonical program `A051932.P14759649176495140790`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051932 (n : ℕ) : ℤ :=
  (A051932.P14759649176495140790.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051932.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051937.P932862796901659075

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=7, a(2)=19, a(3)=38`
-/

namespace A051937.P932862796901659075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 19, 38] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A051937.P932862796901659075

noncomputable section

/-- A051937: Truncated triangular pyramid numbers: a(n) = Sum_{k=4..n} (k*(k+1)/2 - 9).

Offset 4, canonical program `A051937.P932862796901659075`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051937 (n : ℕ) : ℤ :=
  A051937.P932862796901659075.a (n - 4)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051937.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051939.P12772201178984180736

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=3, a(1)=13, a(2)=31, a(3)=58`
-/

namespace A051939.P12772201178984180736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 13, 31, 58] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A051939.P12772201178984180736

noncomputable section

/-- A051939: Truncated triangular pyramid numbers: a(n) = (n-5)*(n^2 + 8*n - 66)/6.

Offset 6, canonical program `A051939.P12772201178984180736`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051939 (n : ℕ) : ℤ :=
  A051939.P12772201178984180736.a (n - 6)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051939.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051941.P11683458766758865164

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=6, a(1)=21, a(2)=46, a(3)=82`
-/

namespace A051941.P11683458766758865164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 21, 46, 82] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A051941.P11683458766758865164

noncomputable section

/-- A051941: Truncated triangular pyramid numbers: a(n) = (n-7)*(n^2 + 10*n - 108)/6, n >= 8.

Offset 8, canonical program `A051941.P11683458766758865164`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051941 (n : ℕ) : ℤ :=
  A051941.P11683458766758865164.a (n - 8)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051941.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051942.P1212328020446534805

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=10, a(2)=21`
-/

namespace A051942.P1212328020446534805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 10, 21] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A051942.P1212328020446534805

noncomputable section

/-- A051942: a(n) = n*(n+1)/2 - 45.

Offset 9, canonical program `A051942.P1212328020446534805`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051942 (n : ℕ) : ℤ :=
  A051942.P1212328020446534805.a (n - 9)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051942.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051943.P5459633662569305489

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=10, a(2)=31, a(3)=64`
-/

namespace A051943.P5459633662569305489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 10, 31, 64] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A051943.P5459633662569305489

noncomputable section

/-- A051943: Truncated triangular pyramid numbers: a(n) = Sum_{k=9..n} (k*(k+1)/2 - 45).

Offset 9, canonical program `A051943.P5459633662569305489`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051943 (n : ℕ) : ℤ :=
  A051943.P5459633662569305489.a (n - 9)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051943.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051959.P1462885981387475700

`2*a(n-1)+a(n-2)+7*n+1` with `a(0)=1, a(1)=10`
-/

namespace A051959.P1462885981387475700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n a =>
  2 * a (n - 1) + a (n - 2) + (7 * n + 1)

end

end A051959.P1462885981387475700

noncomputable section

/-- A051959: Expansion of (1+6*x)/((1-2*x-x^2)*(1-x)^2).

Offset 0, canonical program `A051959.P1462885981387475700`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051959 (n : ℕ) : ℤ :=
  (A051959.P1462885981387475700.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051959.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052101.P9772168536753560830

`3*a(n-1)-3*a(n-2)+3*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A052101.P9772168536753560830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + 3 * a (n - 3)

end

end A052101.P9772168536753560830

noncomputable section

/-- A052101: One of the three sequences associated with the polynomial x^3 - 2.

Offset 0, canonical program `A052101.P9772168536753560830`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052101 (n : ℕ) : ℤ :=
  A052101.P9772168536753560830.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052101.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052102.P8974302052694830250

`3*a(n-1)-3*a(n-2)+3*a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A052102.P8974302052694830250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + 3 * a (n - 3)

end

end A052102.P8974302052694830250

noncomputable section

/-- A052102: The second of the three sequences associated with the polynomial x^3 - 2.

Offset 0, canonical program `A052102.P8974302052694830250`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052102 (n : ℕ) : ℤ :=
  A052102.P8974302052694830250.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052102.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052103.P5621406826376020817

`3*a(n-1)-3*a(n-2)+3*a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A052103.P5621406826376020817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + 3 * a (n - 3)

end

end A052103.P5621406826376020817

noncomputable section

/-- A052103: The third of the three sequences associated with the polynomial x^3 - 2.

Offset 0, canonical program `A052103.P5621406826376020817`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052103 (n : ℕ) : ℤ :=
  A052103.P5621406826376020817.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052103.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052124.P3401291008151637494

`n*a(n-1)+2*(n-1)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A052124.P3401291008151637494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) * a (n - 1) + 2 * (((n : ℤ) - 1) * a (n - 2))

end

end A052124.P3401291008151637494

noncomputable section

/-- A052124: Expansion of e.g.f. exp(-2*x)/(1-x)^3.

Offset 0, canonical program `A052124.P3401291008151637494`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052124 (n : ℕ) : ℤ :=
  A052124.P3401291008151637494.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052124.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052149.P2587543419330662188

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=4, a(2)=22, a(3)=70, a(4)=170`
-/

namespace A052149.P2587543419330662188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 22, 70, 170] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A052149.P2587543419330662188

noncomputable section

/-- A052149: Number of nonsquare rectangles on an n X n board.

Offset 1, canonical program `A052149.P2587543419330662188`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052149 (n : ℕ) : ℤ :=
  A052149.P2587543419330662188.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052149.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052150.P2564806244058261931

`6*a(n-1)-12*a(n-2)+10*a(n-3)-3*a(n-4)` with `a(0)=1, a(1)=6, a(2)=24, a(3)=82`
-/

namespace A052150.P2564806244058261931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 24, 82] fun n a =>
  6 * a (n - 1) - 12 * a (n - 2) + 10 * a (n - 3) - 3 * a (n - 4)

end

end A052150.P2564806244058261931

noncomputable section

/-- A052150: Partial sums of A000340, second partial sums of A003462.

Offset 0, canonical program `A052150.P2564806244058261931`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052150 (n : ℕ) : ℤ :=
  A052150.P2564806244058261931.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052150.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052153.P16062082123830989312

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=9, a(2)=26, a(3)=54`
-/

namespace A052153.P16062082123830989312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9, 26, 54] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A052153.P16062082123830989312

noncomputable section

/-- A052153: Rhombi (in 3 different orientations) in a rhombus with 60-degree acute angles.

Offset 1, canonical program `A052153.P16062082123830989312`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052153 (n : ℕ) : ℤ :=
  A052153.P16062082123830989312.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052153.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052156.P6548149786995819042

`3*a(n-1)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A052156.P6548149786995819042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  3 * a (n - 1)

end

end A052156.P6548149786995819042

noncomputable section

/-- A052156: Number of compositions of n into 2*j-1 kinds of j's for all j>=1.

Offset 0, canonical program `A052156.P6548149786995819042`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052156 (n : ℕ) : ℤ :=
  (A052156.P6548149786995819042.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052156.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052161.P17942717720509901001

`7*a(n-1)-15*a(n-2)+13*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=7, a(2)=34, a(3)=146`
-/

namespace A052161.P17942717720509901001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 34, 146] fun n a =>
  7 * a (n - 1) - 15 * a (n - 2) + 13 * a (n - 3) - 4 * a (n - 4)

end

end A052161.P17942717720509901001

noncomputable section

/-- A052161: Partial sums of A014825, second partial sums of A002450.

Offset 0, canonical program `A052161.P17942717720509901001`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052161 (n : ℕ) : ℤ :=
  A052161.P17942717720509901001.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052161.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052200.P13848145852153611448

`(4*(n+1))^(2*n)`
-/

namespace A052200.P13848145852153611448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1)) ^ (2 * n)

end

end A052200.P13848145852153611448

noncomputable section

/-- A052200: Number of n-state, 2-symbol, d+ in {LEFT, RIGHT}, 5-tuple (q, s, q+, s+, d+) (halting or not) Turing machines.

Offset 0, canonical program `A052200.P13848145852153611448`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052200 (n : ℕ) : ℤ :=
  (A052200.P13848145852153611448.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052200.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052244.P5037092656826527933

`8*a(n-1)-18*a(n-2)+16*a(n-3)-5*a(n-4)` with `a(0)=1, a(1)=8, a(2)=46, a(3)=240`
-/

namespace A052244.P5037092656826527933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 46, 240] fun n a =>
  8 * a (n - 1) - 18 * a (n - 2) + 16 * a (n - 3) - 5 * a (n - 4)

end

end A052244.P5037092656826527933

noncomputable section

/-- A052244: Partial sums of A014827.

Offset 0, canonical program `A052244.P5037092656826527933`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052244 (n : ℕ) : ℤ :=
  A052244.P5037092656826527933.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052244.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052245.P2093151627935100210

`n*10^n+a(n-1)` with `a(0)=0`
-/

namespace A052245.P2093151627935100210
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * 10 ^ n + a (n - 1)

end

end A052245.P2093151627935100210

noncomputable section

/-- A052245: Expansion of 10*x / ((1 - x) * (1 - 10*x)^2) in powers of x.

Offset 0, canonical program `A052245.P2093151627935100210`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052245 (n : ℕ) : ℤ :=
  (A052245.P2093151627935100210.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052245.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052268.P1431609730251872514

`9*10^n`
-/

namespace A052268.P1431609730251872514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * 10 ^ n

end

end A052268.P1431609730251872514

noncomputable section

/-- A052268: First differences of 10^n (A011557).

Offset 1, canonical program `A052268.P1431609730251872514`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052268 (n : ℕ) : ℤ :=
  (A052268.P1431609730251872514.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052268.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052277.P6721079341731240263

`(4*n+2)!/2^(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A052277.P6721079341731240263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (4 * n + 2) : ℚ) / (2 ^ (2 * n + 1) : ℚ)

end

end A052277.P6721079341731240263

noncomputable section

/-- A052277: a(n) = (4n+2)!/2^(2n+1).

Offset 0, canonical program `A052277.P6721079341731240263`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052277 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A052277.P6721079341731240263.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052277.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052379.P13698883869032761703

`8*a(n-1)+8` with `a(0)=8`
-/

namespace A052379.P13698883869032761703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  8 * a (n - 1) + 8

end

end A052379.P13698883869032761703

noncomputable section

/-- A052379: Number of integers from 1 to 10^(n+1)-1 that lack 0 and 1 as a digit.

Offset 0, canonical program `A052379.P13698883869032761703`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052379 (n : ℕ) : ℤ :=
  (A052379.P13698883869032761703.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052379.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052386.P17315869528297079216

`9*a(n-1)+9` with `a(0)=0`
-/

namespace A052386.P17315869528297079216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  9 * a (n - 1) + 9

end

end A052386.P17315869528297079216

noncomputable section

/-- A052386: Number of integers from 1 to 10^n-1 that lack 0 as a digit.

Offset 0, canonical program `A052386.P17315869528297079216`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052386 (n : ℕ) : ℤ :=
  (A052386.P17315869528297079216.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052386.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052454.P5482924665099147542

`38*a(n-3)-a(n-6)` with `a(0)=1, a(1)=3, a(2)=13, a(3)=25, a(4)=111, a(5)=493`
-/

namespace A052454.P5482924665099147542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 13, 25, 111, 493] fun n a =>
  38 * a (n - 3) - a (n - 6)

end

end A052454.P5482924665099147542

noncomputable section

/-- A052454: Positive integer values of k such that 10*k^2 - 9 is a square.

Offset 1, canonical program `A052454.P5482924665099147542`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052454 (n : ℕ) : ℤ :=
  A052454.P5482924665099147542.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052454.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052462.P14302169590737367755

`a(n-1)+25*a(n-2)-25*a(n-3)` with `a(0)=4, a(1)=24, a(2)=99`
-/

namespace A052462.P14302169590737367755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 24, 99] fun n a =>
  a (n - 1) + 25 * a (n - 2) - 25 * a (n - 3)

end

end A052462.P14302169590737367755

noncomputable section

/-- A052462: a(n) is the minimal positive integral solution k to 24*k == 1 (mod 5^n).

Offset 1, canonical program `A052462.P14302169590737367755`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052462 (n : ℕ) : ℤ :=
  A052462.P14302169590737367755.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052462.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052463.P17519955214510621138

`49*a(n-1)-2` with `a(0)=0, a(1)=47`
-/

namespace A052463.P17519955214510621138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 47] fun n a =>
  49 * a (n - 1) - 2

end

end A052463.P17519955214510621138

noncomputable section

/-- A052463: a(n) is the smallest nonnegative solution k to 24*k == 1 (mod 7^(2*n-2)).

Offset 1, canonical program `A052463.P17519955214510621138`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052463 (n : ℕ) : ℤ :=
  A052463.P17519955214510621138.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052463.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052465.P13657482480626563580

`a(n-1)+121*a(n-2)-121*a(n-3)` with `a(0)=6, a(1)=116, a(2)=721`
-/

namespace A052465.P13657482480626563580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 116, 721] fun n a =>
  a (n - 1) + 121 * a (n - 2) - 121 * a (n - 3)

end

end A052465.P13657482480626563580

noncomputable section

/-- A052465: a(n) is the smallest positive integral solution k to 24*k == 1 (mod 11^n).

Offset 1, canonical program `A052465.P13657482480626563580`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052465 (n : ℕ) : ℤ :=
  A052465.P13657482480626563580.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052465.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052482.P880048930974192364

`6*a(n-1)-12*a(n-2)+8*a(n-3)` with `a(0)=3, a(1)=12, a(2)=40`
-/

namespace A052482.P880048930974192364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 12, 40] fun n a =>
  6 * a (n - 1) - 12 * a (n - 2) + 8 * a (n - 3)

end

end A052482.P880048930974192364

noncomputable section

/-- A052482: a(n) = 2^(n-2)*binomial(n+1,2).

Offset 2, canonical program `A052482.P880048930974192364`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052482 (n : ℕ) : ℤ :=
  A052482.P880048930974192364.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052482.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052502.P6079164310422249939

`(3*n-1)*(3*n-2)*a(n-1)` with `a(0)=1`
-/

namespace A052502.P6079164310422249939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((3 * n : ℤ) - 1) * (((3 * n : ℤ) - 2) * a (n - 1))

end

end A052502.P6079164310422249939

noncomputable section

/-- A052502: Number of permutations sigma of [3n] without fixed points such that sigma^3 = Id.

Offset 0, canonical program `A052502.P6079164310422249939`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052502 (n : ℕ) : ℤ :=
  A052502.P6079164310422249939.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052502.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052504.P3683023772180868071

`(5*n-1)*(5*n-2)*(5*n-3)*(5*n-4)*a(n-1)` with `a(0)=1, a(1)=24`
-/

namespace A052504.P3683023772180868071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 24] fun n a =>
  ((5 * n : ℤ) - 1) * (((5 * n : ℤ) - 2) * (((5 * n : ℤ) - 3) * (((5 * n : ℤ) - 4) * a (n - 1))))

end

end A052504.P3683023772180868071

noncomputable section

/-- A052504: Number of permutations sigma of [5n] without fixed points such that sigma^5 = Id.

Offset 0, canonical program `A052504.P3683023772180868071`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052504 (n : ℕ) : ℤ :=
  A052504.P3683023772180868071.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052504.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052527.P17433933853448114730

`a(n-1)+a(n-2)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A052527.P17433933853448114730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 2] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) - a (n - 4)

end

end A052527.P17433933853448114730

noncomputable section

/-- A052527: Expansion of (1-x)/(1-x-x^2-x^3+x^4).

Offset 0, canonical program `A052527.P17433933853448114730`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052527 (n : ℕ) : ℤ :=
  A052527.P17433933853448114730.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052527.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052528.P15185205583459606014

`2*a(n-1)+2*a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A052528.P15185205583459606014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3)

end

end A052528.P15185205583459606014

noncomputable section

/-- A052528: Expansion of (1 - x)/(1 - 2*x - 2*x^2 + 2*x^3).

Offset 0, canonical program `A052528.P15185205583459606014`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052528 (n : ℕ) : ℤ :=
  A052528.P15185205583459606014.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052528.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052529.P3121491911787010205

`4*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=13`
-/

namespace A052529.P3121491911787010205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4, 13] fun n a =>
  4 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A052529.P3121491911787010205

noncomputable section

/-- A052529: Expansion of (1-x)^3/(1 - 4*x + 3*x^2 - x^3).

Offset 0, canonical program `A052529.P3121491911787010205`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052529 (n : ℕ) : ℤ :=
  A052529.P3121491911787010205.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052529.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052531.P6369340052517664160

`2^n+(1+(-1)^n)/2`
-/

namespace A052531.P6369340052517664160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) + (1 + (-1) ^ n : ℚ) / 2

end

end A052531.P6369340052517664160

noncomputable section

/-- A052531: If n is even then 2^n+1 otherwise 2^n.

Offset 0, canonical program `A052531.P6369340052517664160`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052531 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A052531.P6369340052517664160.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052531.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052532.P10886821958143780161

`a(n-1)+a(n-3)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=2`
-/

namespace A052532.P10886821958143780161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1, 2] fun n a =>
  a (n - 1) + a (n - 3) + a (n - 4) - a (n - 5)

end

end A052532.P10886821958143780161

noncomputable section

/-- A052532: Expansion of (1-x)/(1-x-x^3-x^4+x^5).

Offset 0, canonical program `A052532.P10886821958143780161`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052532 (n : ℕ) : ℤ :=
  A052532.P10886821958143780161.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052532.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052533.P4272866725637141038

`a(n-1)+3*a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A052533.P4272866725637141038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) + 3 * a (n - 2)

end

end A052533.P4272866725637141038

noncomputable section

/-- A052533: Expansion of (1-x)/(1-x-3*x^2).

Offset 0, canonical program `A052533.P4272866725637141038`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052533 (n : ℕ) : ℤ :=
  (A052533.P4272866725637141038.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052533.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052534.P17950955840802357062

`2*a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A052534.P17950955840802357062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  2 * a (n - 1) + a (n - 2) - a (n - 3)

end

end A052534.P17950955840802357062

noncomputable section

/-- A052534: Expansion of (1-x)*(1+x)/(1-2*x-x^2+x^3).

Offset 0, canonical program `A052534.P17950955840802357062`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052534 (n : ℕ) : ℤ :=
  A052534.P17950955840802357062.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052534.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052535.P1465466086533877916

`a(n-1)+2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A052535.P1465466086533877916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4] fun n a =>
  a (n - 1) + 2 * a (n - 2) - a (n - 4)

end

end A052535.P1465466086533877916

noncomputable section

/-- A052535: Expansion of (1-x)*(1+x)/(1-x-2*x^2+x^4).

Offset 0, canonical program `A052535.P1465466086533877916`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052535 (n : ℕ) : ℤ :=
  A052535.P1465466086533877916.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052535.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052536.P4388754108064257520

`3*a(n-1)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A052536.P4388754108064257520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  3 * a (n - 1) - a (n - 3)

end

end A052536.P4388754108064257520

noncomputable section

/-- A052536: Number of compositions of n when parts 1 and 2 are of two kinds.

Offset 0, canonical program `A052536.P4388754108064257520`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052536 (n : ℕ) : ℤ :=
  A052536.P4388754108064257520.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052536.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052537.P17171779530553115781

`a(n-1)+2*a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A052537.P17171779530553115781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (n - 1) + 2 * a (n - 3)

end

end A052537.P17171779530553115781

noncomputable section

/-- A052537: Expansion of (1-x)/(1-x-2*x^3).

Offset 0, canonical program `A052537.P17171779530553115781`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052537 (n : ℕ) : ℤ :=
  (A052537.P17171779530553115781.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052537.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052538.P581979778072095252

`2*a(n-1)+3*a(n-2)-3*a(n-3)` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A052538.P581979778072095252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  2 * a (n - 1) + 3 * a (n - 2) - 3 * a (n - 3)

end

end A052538.P581979778072095252

noncomputable section

/-- A052538: Expansion of (1-x)/(1-2*x-3*x^2+3*x^3).

Offset 0, canonical program `A052538.P581979778072095252`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052538 (n : ℕ) : ℤ :=
  A052538.P581979778072095252.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052538.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052540.P7517326551384625778

`2*a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5`
-/

namespace A052540.P7517326551384625778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 5] fun n a =>
  2 * a (n - 1) + a (n - 3) - a (n - 4)

end

end A052540.P7517326551384625778

noncomputable section

/-- A052540: Expansion of (1-x)/(1-2*x-x^3+x^4).

Offset 0, canonical program `A052540.P7517326551384625778`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052540 (n : ℕ) : ℤ :=
  A052540.P7517326551384625778.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052540.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052541.P5656204246672548256

`3*a(n-1)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A052541.P5656204246672548256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  3 * a (n - 1) + a (n - 3)

end

end A052541.P5656204246672548256

noncomputable section

/-- A052541: Expansion of 1/(1-3*x-x^3).

Offset 0, canonical program `A052541.P5656204246672548256`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052541 (n : ℕ) : ℤ :=
  (A052541.P5656204246672548256.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052541.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052543.P13867674321202560200

`3*a(n-1)+2*a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=8`
-/

namespace A052543.P13867674321202560200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 8] fun n a =>
  3 * a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3)

end

end A052543.P13867674321202560200

noncomputable section

/-- A052543: Expansion of (1-x)/(1 - 3*x - 2*x^2 + 2*x^3).

Offset 0, canonical program `A052543.P13867674321202560200`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052543 (n : ℕ) : ℤ :=
  A052543.P13867674321202560200.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052543.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052544.P5791944498867737488

`4*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A052544.P5791944498867737488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  4 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A052544.P5791944498867737488

noncomputable section

/-- A052544: Expansion of (1-x)^2/(1 - 4*x + 3*x^2 - x^3).

Offset 0, canonical program `A052544.P5791944498867737488`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052544 (n : ℕ) : ℤ :=
  A052544.P5791944498867737488.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052544.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052545.P13260738137640200081

`3*a(n-1)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A052545.P13260738137640200081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  3 * a (n - 1) - a (n - 3)

end

end A052545.P13260738137640200081

noncomputable section

/-- A052545: Expansion of (1-x)^2/(1-3*x+x^3).

Offset 0, canonical program `A052545.P13260738137640200081`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052545 (n : ℕ) : ℤ :=
  A052545.P13260738137640200081.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052545.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052546.P21241426157729128

`a(n-1)+a(n-2)+2*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=3`
-/

namespace A052546.P21241426157729128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 3] fun n a =>
  a (n - 1) + a (n - 2) + 2 * a (n - 3) - 2 * a (n - 4)

end

end A052546.P21241426157729128

noncomputable section

/-- A052546: Expansion of (1-x)/(1-x-x^2-2*x^3+2*x^4).

Offset 0, canonical program `A052546.P21241426157729128`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052546 (n : ℕ) : ℤ :=
  A052546.P21241426157729128.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052546.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052547.P11239874430474287355

`a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A052547.P11239874430474287355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  a (n - 1) + 2 * a (n - 2) - a (n - 3)

end

end A052547.P11239874430474287355

noncomputable section

/-- A052547: Expansion of (1-x)/(1-x-2*x^2+x^3).

Offset 0, canonical program `A052547.P11239874430474287355`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052547 (n : ℕ) : ℤ :=
  A052547.P11239874430474287355.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052547.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052549.P17972618579142578720

`2*a(n-1)+1` with `a(0)=1, a(1)=4`
-/

namespace A052549.P17972618579142578720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * a (n - 1) + 1

end

end A052549.P17972618579142578720

noncomputable section

/-- A052549: a(n) = 5*2^(n-1) - 1, n>0, with a(0)=1.

Offset 0, canonical program `A052549.P17972618579142578720`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052549 (n : ℕ) : ℤ :=
  (A052549.P17972618579142578720.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052549.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052550.P6737726740453987371

`3*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A052550.P6737726740453987371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  3 * a (n - 1) + a (n - 2) - 2 * a (n - 3)

end

end A052550.P6737726740453987371

noncomputable section

/-- A052550: Expansion of (1-2*x)/(1 - 3*x - x^2 + 2*x^3).

Offset 0, canonical program `A052550.P6737726740453987371`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052550 (n : ℕ) : ℤ :=
  A052550.P6737726740453987371.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052550.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052551.P387091836928010403

`2^(1+floor(n/2))-1`
-/

namespace A052551.P387091836928010403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (1 + ⌊(n : ℚ) / 2⌋ : ℤ) - 1

end

end A052551.P387091836928010403

noncomputable section

/-- A052551: Expansion of 1/((1 - x)*(1 - 2*x^2)).

Offset 0, canonical program `A052551.P387091836928010403`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052551 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A052551.P387091836928010403.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052551.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052552.P5617847279663752581

`a(n-1)+2*a(n-2)-2*a(n-3)` with `a(0)=2, a(1)=1, a(2)=3`
-/

namespace A052552.P5617847279663752581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 3] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3)

end

end A052552.P5617847279663752581

noncomputable section

/-- A052552: a(2*n+1) = 1, a(2*n) = 2*a(2*n-2) - 1.

Offset 0, canonical program `A052552.P5617847279663752581`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052552 (n : ℕ) : ℤ :=
  A052552.P5617847279663752581.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052552.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052554.P313648359797448886

`n*a(n-1)+n*(n-1)*a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A052554.P313648359797448886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (n : ℤ) * a (n - 1) + (n : ℤ) * (((n : ℤ) - 1) * a (n - 2))

end

end A052554.P313648359797448886

noncomputable section

/-- A052554: Expansion of e.g.f.: (1-x)/(1 - x - x^2).

Offset 0, canonical program `A052554.P313648359797448886`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052554 (n : ℕ) : ℤ :=
  A052554.P313648359797448886.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052554.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052555.P12674048538627398952

`2*n*a(n-1)+n*(n-1)*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A052555.P12674048538627398952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * ((n : ℤ) * a (n - 1)) + (n : ℤ) * (((n : ℤ) - 1) * a (n - 2))

end

end A052555.P12674048538627398952

noncomputable section

/-- A052555: Expansion of e.g.f. 1/(1-2*x-x^2).

Offset 0, canonical program `A052555.P12674048538627398952`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052555 (n : ℕ) : ℤ :=
  A052555.P12674048538627398952.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052555.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052556.P3774173639267982106

`n*a(n-1)+n*(n-1)*(n-2)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A052556.P3774173639267982106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  (n : ℤ) * a (n - 1) + (n : ℤ) * (((n : ℤ) - 1) * (((n : ℤ) - 2) * a (n - 3)))

end

end A052556.P3774173639267982106

noncomputable section

/-- A052556: Expansion of e.g.f. 1/(1-x-x^3).

Offset 0, canonical program `A052556.P3774173639267982106`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052556 (n : ℕ) : ℤ :=
  A052556.P3774173639267982106.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052556.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052557.P2777070780512223422

`n*a(n-1)+n*(n-1)*(n-2)*a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A052557.P2777070780512223422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  (n : ℤ) * a (n - 1) + (n : ℤ) * (((n : ℤ) - 1) * (((n : ℤ) - 2) * a (n - 3)))

end

end A052557.P2777070780512223422

noncomputable section

/-- A052557: Expansion of e.g.f. (1-x)/(1-x-x^3).

Offset 0, canonical program `A052557.P2777070780512223422`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052557 (n : ℕ) : ℤ :=
  A052557.P2777070780512223422.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052557.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052558.P7414200787905979476

`a(n-1)+(n²-1)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A052558.P7414200787905979476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + ((n ^ 2 : ℤ) - 1) * a (n - 2)

end

end A052558.P7414200787905979476

noncomputable section

/-- A052558: a(n) = n! *((-1)^n + 2*n + 3)/4.

Offset 0, canonical program `A052558.P7414200787905979476`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052558 (n : ℕ) : ℤ :=
  A052558.P7414200787905979476.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052558.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052564.P8732655484267751537

`2*n*a(n-1)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A052564.P8732655484267751537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  2 * (n * a (n - 1))

end

end A052564.P8732655484267751537

noncomputable section

/-- A052564: Expansion of e.g.f. x*(1-x)/(1-2*x).

Offset 0, canonical program `A052564.P8732655484267751537`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052564 (n : ℕ) : ℤ :=
  (A052564.P8732655484267751537.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052564.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052591.P4447380120026229449

`(1/4*(-1)^(1-n)+1/2*n+1/4)*n!`
-/

namespace A052591.P4447380120026229449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 4 * (-1 : ℚ) ^ (1 - (n : ℤ) : ℤ) + (1 : ℚ) / 2 * (n : ℚ) + (1 : ℚ) / 4) * (Nat.factorial n : ℚ)

end

end A052591.P4447380120026229449

noncomputable section

/-- A052591: Expansion of e.g.f. x/((1-x)(1-x^2)).

Offset 0, canonical program `A052591.P4447380120026229449`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052591 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A052591.P4447380120026229449.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052591.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052618.P8144645439750494272

`n!*floor((n+2)/2)*ceil((n+2)/2)`
-/

namespace A052618.P8144645439750494272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * ⌊(n + 2 : ℚ) / 2⌋ * ⌈(n + 2 : ℚ) / 2⌉

end

end A052618.P8144645439750494272

noncomputable section

/-- A052618: Expansion of e.g.f. 1/((1-x)^2*(1-x^2)).

Offset 0, canonical program `A052618.P8144645439750494272`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052618 (n : ℕ) : ℤ :=
  A052618.P8144645439750494272.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052618.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052633.P5925751864060870354

`a(n-1)*n²/(n-1)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=18`
-/

namespace A052633.P5925751864060870354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 2, 18] fun n a =>
  a (n - 1) * (n ^ 2 : ℚ) / ((n : ℤ) - 1 : ℚ)

end

end A052633.P5925751864060870354

noncomputable section

/-- A052633: E.g.f. x^2*(1+x-x^2)/(1-x)^2.

Offset 0, canonical program `A052633.P5925751864060870354`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052633 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A052633.P5925751864060870354.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052633.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052649.P8931594947231286506

`a(n-1)*n*(2*n+3)/(2*n+1)` with `a(0)=2, a(1)=5`
-/

namespace A052649.P8931594947231286506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 5] fun n a =>
  a (n - 1) * ((n : ℚ) * ((2 * n + 3 : ℚ) / (2 * n + 1 : ℚ)))

end

end A052649.P8931594947231286506

noncomputable section

/-- A052649: Expansion of e.g.f. (2+x-x^2)/(1-x)^2.

Offset 0, canonical program `A052649.P8931594947231286506`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052649 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A052649.P8931594947231286506.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052649.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052657.P1580207677496219470

`floor(n/2)*n!`
-/

namespace A052657.P1580207677496219470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ * (Nat.factorial n : ℤ)

end

end A052657.P1580207677496219470

noncomputable section

/-- A052657: Expansion of e.g.f. x^2/((1-x)^2*(1+x)).

Offset 0, canonical program `A052657.P1580207677496219470`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052657 (n : ℕ) : ℤ :=
  A052657.P1580207677496219470.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052657.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052668.P5667169488414320312

`3*n*a(n-1)+n*(n-1)*(n-2)*a(n-3)` with `a(0)=1, a(1)=3, a(2)=18`
-/

namespace A052668.P5667169488414320312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 18] fun n a =>
  3 * ((n : ℤ) * a (n - 1)) + (n : ℤ) * (((n : ℤ) - 1) * (((n : ℤ) - 2) * a (n - 3)))

end

end A052668.P5667169488414320312

noncomputable section

/-- A052668: Expansion of e.g.f. 1/(1 - 3*x - x^3).

Offset 0, canonical program `A052668.P5667169488414320312`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052668 (n : ℕ) : ℤ :=
  A052668.P5667169488414320312.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052668.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052670.P8313192914382295795

`4*n*a(n-1)` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A052670.P8313192914382295795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  4 * (n * a (n - 1))

end

end A052670.P8313192914382295795

noncomputable section

/-- A052670: Expansion of e.g.f. x^2/(1-4*x).

Offset 0, canonical program `A052670.P8313192914382295795`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052670 (n : ℕ) : ℤ :=
  (A052670.P8313192914382295795.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052670.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052671.P3787664435086790025

`2*n*a(n-1)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=6, a(4)=24`
-/

namespace A052671.P3787664435086790025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 6, 24] fun n a =>
  2 * (n * a (n - 1))

end

end A052671.P3787664435086790025

noncomputable section

/-- A052671: Expansion of e.g.f. x^3*(1-x)/(1-2*x).

Offset 0, canonical program `A052671.P3787664435086790025`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052671 (n : ℕ) : ℤ :=
  (A052671.P3787664435086790025.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052671.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052675.P8409785622370974407

`5*n*a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A052675.P8409785622370974407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  5 * (n * a (n - 1))

end

end A052675.P8409785622370974407

noncomputable section

/-- A052675: Expansion of e.g.f. (1-x)/(1-5*x).

Offset 0, canonical program `A052675.P8409785622370974407`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052675 (n : ℕ) : ℤ :=
  (A052675.P8409785622370974407.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052675.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052676.P13515347227241435136

`2*n*a(n-1)` with `a(0)=0, a(1)=3`
-/

namespace A052676.P13515347227241435136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n a =>
  2 * (n * a (n - 1))

end

end A052676.P13515347227241435136

noncomputable section

/-- A052676: Expansion of e.g.f. 3*x/(1 - 2*x).

Offset 0, canonical program `A052676.P13515347227241435136`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052676 (n : ℕ) : ℤ :=
  (A052676.P13515347227241435136.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052676.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052678.P7603114882694624975

`3*n*a(n-1)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=6`
-/

namespace A052678.P7603114882694624975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 6] fun n a =>
  3 * (n * a (n - 1))

end

end A052678.P7603114882694624975

noncomputable section

/-- A052678: Expansion of e.g.f. x^3/(1-3*x).

Offset 0, canonical program `A052678.P7603114882694624975`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052678 (n : ℕ) : ℤ :=
  (A052678.P7603114882694624975.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052678.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052682.P10680327487690963020

`n*a(n-1)+3*n*(n-1)*a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A052682.P10680327487690963020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (n : ℤ) * a (n - 1) + 3 * ((n : ℤ) * (((n : ℤ) - 1) * a (n - 2)))

end

end A052682.P10680327487690963020

noncomputable section

/-- A052682: Expansion of e.g.f. (1-x)/(1-x-3*x^2).

Offset 0, canonical program `A052682.P10680327487690963020`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052682 (n : ℕ) : ℤ :=
  A052682.P10680327487690963020.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052682.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052683.P5920875682378470517

`n*a(n-1)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=48`
-/

namespace A052683.P5920875682378470517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0, 48] fun n a =>
  n * a (n - 1)

end

end A052683.P5920875682378470517

noncomputable section

/-- A052683: Expansion of e.g.f. 2*x^4/(1-x).

Offset 0, canonical program `A052683.P5920875682378470517`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052683 (n : ℕ) : ℤ :=
  (A052683.P5920875682378470517.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052683.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052684.P3640708146617815330

`2*n*(n-1)*a(n-2)+n*(n-1)*(n-2)*a(n-3)` with `a(0)=1, a(1)=0, a(2)=4`
-/

namespace A052684.P3640708146617815330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 4] fun n a =>
  2 * ((n : ℤ) * (((n : ℤ) - 1) * a (n - 2))) + (n : ℤ) * (((n : ℤ) - 1) * (((n : ℤ) - 2) * a (n - 3)))

end

end A052684.P3640708146617815330

noncomputable section

/-- A052684: Expansion of e.g.f. 1/(1-2*x^2-x^3).

Offset 0, canonical program `A052684.P3640708146617815330`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052684 (n : ℕ) : ℤ :=
  A052684.P3640708146617815330.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052684.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052686.P17696709253748959289

`n*a(n-1)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=24, a(4)=24`
-/

namespace A052686.P17696709253748959289
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 24, 24] fun n a =>
  n * a (n - 1)

end

end A052686.P17696709253748959289

noncomputable section

/-- A052686: Expansion of e.g.f. x^2*(1+3*x-3*x^2)/(1-x).

Offset 0, canonical program `A052686.P17696709253748959289`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052686 (n : ℕ) : ℤ :=
  (A052686.P17696709253748959289.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052686.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052688.P16813976480649812205

`n!*floor((n+2)/3)`
-/

namespace A052688.P16813976480649812205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * ⌊(n + 2 : ℚ) / 3⌋

end

end A052688.P16813976480649812205

noncomputable section

/-- A052688: Expansion of e.g.f. x/((1-x)*(1-x^3)).

Offset 0, canonical program `A052688.P16813976480649812205`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052688 (n : ℕ) : ℤ :=
  A052688.P16813976480649812205.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052688.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052689.P4040520546641299707

`n!*(n+2+n%2)/2`
-/

namespace A052689.P4040520546641299707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (((n + (2 + n % 2) : ℕ) : ℚ) / 2)

end

end A052689.P4040520546641299707

noncomputable section

/-- A052689: Expansion of e.g.f. (1+x-x^2)/((1-x)*(1-x^2)).

Offset 0, canonical program `A052689.P4040520546641299707`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052689 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A052689.P4040520546641299707.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052689.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052690.P18191613937416156940

`3*n*a(n-1)` with `a(0)=0, a(1)=1, a(2)=8, a(3)=54`
-/

namespace A052690.P18191613937416156940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 8, 54] fun n a =>
  3 * (n * a (n - 1))

end

end A052690.P18191613937416156940

noncomputable section

/-- A052690: Expansion of e.g.f. x*(1+x-3*x^2)/(1-3*x).

Offset 0, canonical program `A052690.P18191613937416156940`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052690 (n : ℕ) : ℤ :=
  (A052690.P18191613937416156940.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052690.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052692.P11096218595214128099

`n*a(n-1)+n*(n-1)*(n-2)*(n-3)*a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6, a(4)=24`
-/

namespace A052692.P11096218595214128099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 6, 24] fun n a =>
  (n : ℤ) * a (n - 1) + (n : ℤ) * (((n : ℤ) - 1) * (((n : ℤ) - 2) * (((n : ℤ) - 3) * a (n - 4))))

end

end A052692.P11096218595214128099

noncomputable section

/-- A052692: Expansion of e.g.f. (1-x^4)/(1-x-x^4).

Offset 0, canonical program `A052692.P11096218595214128099`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052692 (n : ℕ) : ℤ :=
  A052692.P11096218595214128099.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052692.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052694.P11504464246822074300

`2*n*a(n-1)` with `a(0)=1, a(1)=2, a(2)=8, a(3)=54, a(4)=384`
-/

namespace A052694.P11504464246822074300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 8, 54, 384] fun n a =>
  2 * (n * a (n - 1))

end

end A052694.P11504464246822074300

noncomputable section

/-- A052694: Expansion of e.g.f. (1 + x^3 - 2*x^4)/(1-2*x).

Offset 0, canonical program `A052694.P11504464246822074300`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052694 (n : ℕ) : ℤ :=
  (A052694.P11504464246822074300.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052694.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052695.P16707627696088328911

`(4^n+1)*n!`
-/

namespace A052695.P16707627696088328911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 ^ n + 1) * Nat.factorial n

end

end A052695.P16707627696088328911

noncomputable section

/-- A052695: Expansion of e.g.f. (2-5*x)/((1-x)*(1-4*x)).

Offset 0, canonical program `A052695.P16707627696088328911`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052695 (n : ℕ) : ℤ :=
  (A052695.P16707627696088328911.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052695.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052698.P5440853505378689872

`4*n*a(n-1)-3*n*(n-1)*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A052698.P5440853505378689872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  4 * ((n : ℤ) * a (n - 1)) - 3 * ((n : ℤ) * (((n : ℤ) - 1) * a (n - 2)))

end

end A052698.P5440853505378689872

noncomputable section

/-- A052698: Expansion of e.g.f. x/((1-x)*(1-3*x)).

Offset 0, canonical program `A052698.P5440853505378689872`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052698 (n : ℕ) : ℤ :=
  A052698.P5440853505378689872.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052698.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052700.P18328807956562160398

`3*n*a(n-1)` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A052700.P18328807956562160398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  3 * (n * a (n - 1))

end

end A052700.P18328807956562160398

noncomputable section

/-- A052700: Expansion of e.g.f. x*(1-x)/(1-3*x).

Offset 0, canonical program `A052700.P18328807956562160398`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052700 (n : ℕ) : ℤ :=
  (A052700.P18328807956562160398.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052700.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052704.P4489421998715832649

`8*(2-3/n)*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A052704.P4489421998715832649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  8 * ((2 - 3 / (n : ℚ)) * a (n - 1))

end

end A052704.P4489421998715832649

noncomputable section

/-- A052704: Apart from the leading term, a(n) = Catalan(n-1)*4^(n-1).

Offset 0, canonical program `A052704.P4489421998715832649`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052704 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A052704.P4489421998715832649.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052704.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052750.P12130795635608370011

`(2*n+1)^(n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A052750.P12130795635608370011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A052750.P12130795635608370011

noncomputable section

/-- A052750: a(n) = (2*n + 1)^(n - 1).

Offset 0, canonical program `A052750.P12130795635608370011`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052750 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A052750.P12130795635608370011.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052750.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052752.P12235605037901120991

`(3*n+1)^(n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A052752.P12235605037901120991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A052752.P12235605037901120991

noncomputable section

/-- A052752: a(n) = (3*n+1)^(n-1).

Offset 0, canonical program `A052752.P12235605037901120991`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052752 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A052752.P12235605037901120991.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052752.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052771.P2278556763596737104

`8*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=6`
-/

namespace A052771.P2278556763596737104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 6] fun n a =>
  8 * a (n - 1) - 24 * a (n - 2) + 32 * a (n - 3) - 16 * a (n - 4)

end

end A052771.P2278556763596737104

noncomputable section

/-- A052771: Expansion of e.g.f. x^3*exp(x)^2.

Offset 0, canonical program `A052771.P2278556763596737104`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052771 (n : ℕ) : ℤ :=
  A052771.P2278556763596737104.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052771.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052774.P5191430857305626453

`(4*n+1)^(n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A052774.P5191430857305626453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A052774.P5191430857305626453

noncomputable section

/-- A052774: a(n) = (4*n+1)^(n-1).

Offset 0, canonical program `A052774.P5191430857305626453`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052774 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A052774.P5191430857305626453.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052774.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052780.P294035065797622123

`4^(n-2)*n*(n-1)`
-/

namespace A052780.P294035065797622123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * ((n : ℤ) * ((n : ℤ) - 1) : ℚ)

end

end A052780.P294035065797622123

noncomputable section

/-- A052780: Expansion of e.g.f. x^2*exp(4*x).

Offset 0, canonical program `A052780.P294035065797622123`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052780 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A052780.P294035065797622123.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052780.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052782.P2828036006054685889

`(5*n+1)^(n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A052782.P2828036006054685889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A052782.P2828036006054685889

noncomputable section

/-- A052782: a(n) = (5*n+1)^(n-1).

Offset 0, canonical program `A052782.P2828036006054685889`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052782 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A052782.P2828036006054685889.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052782.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052787.P3134947303530466889

`120*C(n, 5)`
-/

namespace A052787.P3134947303530466889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  120 * Nat.choose n 5

end

end A052787.P3134947303530466889

noncomputable section

/-- A052787: Product of 5 consecutive integers.

Offset 0, canonical program `A052787.P3134947303530466889`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052787 (n : ℕ) : ℤ :=
  (A052787.P3134947303530466889.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052787.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052791.P6347120453545494689

`3^(n-3)*n*(n-1)*(n-2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A052791.P6347120453545494689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * ((n : ℤ) * (((n : ℤ) - 1) * ((n : ℤ) - 2)) : ℚ)

end

end A052791.P6347120453545494689

noncomputable section

/-- A052791: a(n) = 3^(n-3)*n*(n-1)*(n-2).

Offset 0, canonical program `A052791.P6347120453545494689`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052791 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A052791.P6347120453545494689.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052791.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052796.P5732756142555242568

`(n-3)*(n-2)*(n-1)*n*2^(n-4)`
-/

namespace A052796.P5732756142555242568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3 : ℚ) * (((n : ℤ) - 2 : ℚ) * (((n : ℤ) - 1 : ℚ) * ((n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 4 : ℤ))))

end

end A052796.P5732756142555242568

noncomputable section

/-- A052796: Expansion of e.g.f. x^4*exp(x)^2.

Offset 0, canonical program `A052796.P5732756142555242568`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052796 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A052796.P5732756142555242568.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052796.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052881.P1544893320658456069

`n*a(n-1)+(n-1)!+(n-2)!` with `a(0)=0, a(1)=0`
-/

namespace A052881.P1544893320658456069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  n * a (n - 1) + Nat.factorial ((n : ℤ) - 1).toNat + Nat.factorial ((n : ℤ) - 2).toNat

end

end A052881.P1544893320658456069

noncomputable section

/-- A052881: Expansion of e.g.f. log(1/(1-x))*x/(1-x).

Offset 0, canonical program `A052881.P1544893320658456069`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052881 (n : ℕ) : ℤ :=
  (A052881.P1544893320658456069.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052881.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052901.P10645817599971299077

`7-a(n-2)-a(n-1)` with `a(0)=3, a(1)=2`
-/

namespace A052901.P10645817599971299077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  7 - a (n - 2) - a (n - 1)

end

end A052901.P10645817599971299077

noncomputable section

/-- A052901: Periodic with period 3: a(3n)=3, a(3n+1)=a(3n+2)=2.

Offset 0, canonical program `A052901.P10645817599971299077`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052901 (n : ℕ) : ℤ :=
  A052901.P10645817599971299077.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052901.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052905.P8844017416732751175

`n*(n+7)/2+1`
-/

namespace A052905.P8844017416732751175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n + 7 : ℚ) / 2) + 1

end

end A052905.P8844017416732751175

noncomputable section

/-- A052905: a(n) = (n^2 + 7*n + 2)/2.

Offset 0, canonical program `A052905.P8844017416732751175`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052905 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A052905.P8844017416732751175.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052905.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052906.P9651880324434433085

`3*a(n-1)+a(n-2)` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A052906.P9651880324434433085
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  3 * a (n - 1) + a (n - 2)

end

end A052906.P9651880324434433085

noncomputable section

/-- A052906: Expansion of (1-x^2)/(1-3*x-x^2).

Offset 0, canonical program `A052906.P9651880324434433085`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052906 (n : ℕ) : ℤ :=
  (A052906.P9651880324434433085.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052906.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052907.P7486460461359050250

`2*(a(n-2)+a(n-3))` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A052907.P7486460461359050250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  2 * (a (n - 2) + a (n - 3))

end

end A052907.P7486460461359050250

noncomputable section

/-- A052907: Expansion of 1/(1 - 2*x^2 - 2*x^3).

Offset 0, canonical program `A052907.P7486460461359050250`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052907 (n : ℕ) : ℤ :=
  (A052907.P7486460461359050250.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052907.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052908.P8305517924844810810

`2*a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=9`
-/

namespace A052908.P8305517924844810810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4, 9] fun n a =>
  2 * a (n - 1) + a (n - 3) - a (n - 4)

end

end A052908.P8305517924844810810

noncomputable section

/-- A052908: Expansion of 1 + x/(1 - 2*x - x^3 + x^4).

Offset 0, canonical program `A052908.P8305517924844810810`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052908 (n : ℕ) : ℤ :=
  A052908.P8305517924844810810.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052908.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052909.P16707789595671282948

`3*a(n-1)+1` with `a(0)=1, a(1)=5`
-/

namespace A052909.P16707789595671282948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  3 * a (n - 1) + 1

end

end A052909.P16707789595671282948

noncomputable section

/-- A052909: Expansion of g.f. (1+x-x^2)/((1-x)*(1-3*x)).

Offset 0, canonical program `A052909.P16707789595671282948`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052909 (n : ℕ) : ℤ :=
  (A052909.P16707789595671282948.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052909.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052910.P16454518782238249052

`2*a(n-1)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`
-/

namespace A052910.P16454518782238249052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 8] fun n a =>
  2 * a (n - 1) + a (n - 3)

end

end A052910.P16454518782238249052

noncomputable section

/-- A052910: Expansion of 1 + 2/(1-2*x-x^3).

Offset 0, canonical program `A052910.P16454518782238249052`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052910 (n : ℕ) : ℤ :=
  (A052910.P16454518782238249052.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052910.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052911.P11145882957043451291

`3*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=7`
-/

namespace A052911.P11145882957043451291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 7] fun n a =>
  3 * a (n - 1) + a (n - 2) - 2 * a (n - 3)

end

end A052911.P11145882957043451291

noncomputable section

/-- A052911: Expansion of (1-x)/(1 - 3*x - x^2 + 2*x^3).

Offset 0, canonical program `A052911.P11145882957043451291`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052911 (n : ℕ) : ℤ :=
  A052911.P11145882957043451291.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052911.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052912.P11858057849980019933

`2*a(n-1)+2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A052912.P11858057849980019933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  2 * a (n - 1) + 2 * a (n - 3)

end

end A052912.P11858057849980019933

noncomputable section

/-- A052912: Expansion of 1/(1-2*x-2*x^3).

Offset 0, canonical program `A052912.P11858057849980019933`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052912 (n : ℕ) : ℤ :=
  (A052912.P11858057849980019933.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052912.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052913.P11197689299417475169

`5*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A052913.P11197689299417475169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  5 * a (n - 1) - 2 * a (n - 2)

end

end A052913.P11197689299417475169

noncomputable section

/-- A052913: a(n+2) = 5*a(n+1) - 2*a(n), with a(0) = 1, a(1) = 4.

Offset 0, canonical program `A052913.P11197689299417475169`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052913 (n : ℕ) : ℤ :=
  A052913.P11197689299417475169.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052913.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052914.P11221895136433290817

`a(n-1)+a(n-3)+2*a(n-4)-2*a(n-5)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=3`
-/

namespace A052914.P11221895136433290817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1, 3] fun n a =>
  a (n - 1) + a (n - 3) + 2 * a (n - 4) - 2 * a (n - 5)

end

end A052914.P11221895136433290817

noncomputable section

/-- A052914: Expansion of (1-x)/(1 - x - x^3 - 2*x^4 + 2*x^5).

Offset 0, canonical program `A052914.P11221895136433290817`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052914 (n : ℕ) : ℤ :=
  A052914.P11221895136433290817.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052914.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052915.P10591527419524236884

`a(n-1)+a(n-2)+3*a(n-3)-3*a(n-4)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=4`
-/

namespace A052915.P10591527419524236884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 4] fun n a =>
  a (n - 1) + a (n - 2) + 3 * a (n - 3) - 3 * a (n - 4)

end

end A052915.P10591527419524236884

noncomputable section

/-- A052915: Expansion of (1-x)/(1 - x - x^2 - 3*x^3 + 3*x^4).

Offset 0, canonical program `A052915.P10591527419524236884`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052915 (n : ℕ) : ℤ :=
  A052915.P10591527419524236884.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052915.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052916.P8621804390433706204

`a(n-1)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A052916.P8621804390433706204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 2] fun n a =>
  a (n - 1) + 2 * a (n - 3) - a (n - 4)

end

end A052916.P8621804390433706204

noncomputable section

/-- A052916: Expansion of (1-x)/(1 - x - 2*x^3 + x^4).

Offset 0, canonical program `A052916.P8621804390433706204`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052916 (n : ℕ) : ℤ :=
  A052916.P8621804390433706204.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052916.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052917.P11024637405586753779

`3*a(n-1)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=27`
-/

namespace A052917.P11024637405586753779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 9, 27] fun n a =>
  3 * a (n - 1) + a (n - 4)

end

end A052917.P11024637405586753779

noncomputable section

/-- A052917: Expansion of 1/(1-3*x-x^4).

Offset 0, canonical program `A052917.P11024637405586753779`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052917 (n : ℕ) : ℤ :=
  (A052917.P11024637405586753779.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052917.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052918.P17795233823067635881

`5*a(n-1)+a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A052918.P17795233823067635881
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  5 * a (n - 1) + a (n - 2)

end

end A052918.P17795233823067635881

noncomputable section

/-- A052918: a(0) = 1, a(1) = 5, a(n+1) = 5*a(n) + a(n-1).

Offset 0, canonical program `A052918.P17795233823067635881`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052918 (n : ℕ) : ℤ :=
  (A052918.P17795233823067635881.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052918.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052919.P10447713765188693554

`4*a(n-1)-3*a(n-2)` with `a(0)=2, a(1)=3, a(2)=7`
-/

namespace A052919.P10447713765188693554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 7] fun n a =>
  4 * a (n - 1) - 3 * a (n - 2)

end

end A052919.P10447713765188693554

noncomputable section

/-- A052919: a(n) = 1 + 2*3^(n-1) with a(0)=2.

Offset 0, canonical program `A052919.P10447713765188693554`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052919 (n : ℕ) : ℤ :=
  A052919.P10447713765188693554.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052919.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052921.P11798946070887165265

`3*a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A052921.P11798946070887165265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2) + a (n - 3)

end

end A052921.P11798946070887165265

noncomputable section

/-- A052921: Expansion of (1 - x)/(1 - 3*x + 2*x^2 - x^3).

Offset 0, canonical program `A052921.P11798946070887165265`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052921 (n : ℕ) : ℤ :=
  A052921.P11798946070887165265.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052921.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052922.P11918559850778860115

`2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A052922.P11918559850778860115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 2] fun n a =>
  2 * a (n - 3) + a (n - 4)

end

end A052922.P11918559850778860115

noncomputable section

/-- A052922: Expansion of 1/(1 - 2*x^3 - x^4).

Offset 0, canonical program `A052922.P11918559850778860115`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052922 (n : ℕ) : ℤ :=
  (A052922.P11918559850778860115.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052922.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052923.P4944630976340146928

`a(n-1)+4*a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A052923.P4944630976340146928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) + 4 * a (n - 2)

end

end A052923.P4944630976340146928

noncomputable section

/-- A052923: Expansion of (1-x)/(1 - x - 4*x^2).

Offset 0, canonical program `A052923.P4944630976340146928`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052923 (n : ℕ) : ℤ :=
  (A052923.P4944630976340146928.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052923.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052924.P13514510681928437905

`3*a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A052924.P13514510681928437905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * a (n - 1) + a (n - 2)

end

end A052924.P13514510681928437905

noncomputable section

/-- A052924: Expansion of g.f.: (1-x)/(1 - 3*x - x^2).

Offset 0, canonical program `A052924.P13514510681928437905`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052924 (n : ℕ) : ℤ :=
  (A052924.P13514510681928437905.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052924.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052925.P9217888864988584363

`4*a(n-1)-4*a(n-2)+a(n-3)` with `a(0)=2, a(1)=2, a(2)=4, a(3)=9`
-/

namespace A052925.P9217888864988584363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 4, 9] fun n a =>
  4 * a (n - 1) - 4 * a (n - 2) + a (n - 3)

end

end A052925.P9217888864988584363

noncomputable section

/-- A052925: Expansion of (2-6*x+4*x^2-x^3)/((1-x)*(1-3*x+x^2)).

Offset 0, canonical program `A052925.P9217888864988584363`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052925 (n : ℕ) : ℤ :=
  A052925.P9217888864988584363.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052925.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052926.P8884554943480765586

`4*a(n-1)+a(n-2)-3*a(n-3)` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A052926.P8884554943480765586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  4 * a (n - 1) + a (n - 2) - 3 * a (n - 3)

end

end A052926.P8884554943480765586

noncomputable section

/-- A052926: Expansion of (1-3*x)/(1 - 4*x - x^2 + 3*x^3).

Offset 0, canonical program `A052926.P8884554943480765586`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052926 (n : ℕ) : ℤ :=
  A052926.P8884554943480765586.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052926.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052927.P1128954372079481710

`4*a(n-1)+a(n-3)` with `a(0)=1, a(1)=4, a(2)=16`
-/

namespace A052927.P1128954372079481710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 16] fun n a =>
  4 * a (n - 1) + a (n - 3)

end

end A052927.P1128954372079481710

noncomputable section

/-- A052927: Expansion of 1/(1-4*x-x^3).

Offset 0, canonical program `A052927.P1128954372079481710`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052927 (n : ℕ) : ℤ :=
  (A052927.P1128954372079481710.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052927.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052928.P15665125645728880594

`2*floor(n/2)`
-/

namespace A052928.P15665125645728880594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n : ℚ) / 2⌋

end

end A052928.P15665125645728880594

noncomputable section

/-- A052928: The even numbers repeated.

Offset 0, canonical program `A052928.P15665125645728880594`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052928 (n : ℕ) : ℤ :=
  A052928.P15665125645728880594.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052928.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052929.P5605525601399726094

`3^n+(1+(-1)^n)/2`
-/

namespace A052929.P5605525601399726094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℚ) + (1 + (-1) ^ n : ℚ) / 2

end

end A052929.P5605525601399726094

noncomputable section

/-- A052929: Expansion of g.f. (2-3*x-x^2)/((1-x^2)*(1-3*x)).

Offset 0, canonical program `A052929.P5605525601399726094`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052929 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A052929.P5605525601399726094.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052929.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052930.P14010463641991148704

`a(n-1)+2*a(n-2)+2*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=4`
-/

namespace A052930.P14010463641991148704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 4] fun n a =>
  a (n - 1) + 2 * a (n - 2) + 2 * a (n - 3) - 2 * a (n - 4)

end

end A052930.P14010463641991148704

noncomputable section

/-- A052930: Expansion of (1-x)/(1 - x - 2*x^2 - 2*x^3 + 2*x^4).

Offset 0, canonical program `A052930.P14010463641991148704`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052930 (n : ℕ) : ℤ :=
  A052930.P14010463641991148704.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052930.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052931.P3346017301840636582

`3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A052931.P3346017301840636582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 3] fun n a =>
  3 * a (n - 2) + a (n - 3)

end

end A052931.P3346017301840636582

noncomputable section

/-- A052931: Expansion of 1/(1 - 3*x^2 - x^3).

Offset 0, canonical program `A052931.P3346017301840636582`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052931 (n : ℕ) : ℤ :=
  (A052931.P3346017301840636582.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052931.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052932.P18150385629819893276

`2*a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=9`
-/

namespace A052932.P18150385629819893276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4, 9] fun n a =>
  2 * a (n - 1) + a (n - 4) - a (n - 5)

end

end A052932.P18150385629819893276

noncomputable section

/-- A052932: Expansion of (1-x)/(1 - 2*x - x^4 + x^5).

Offset 0, canonical program `A052932.P18150385629819893276`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052932 (n : ℕ) : ℤ :=
  A052932.P18150385629819893276.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052932.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052933.P13576234485401772195

`a(n-1)+3*a(n-2)-2*a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=6`
-/

namespace A052933.P13576234485401772195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 6] fun n a =>
  a (n - 1) + 3 * a (n - 2) - 2 * a (n - 4)

end

end A052933.P13576234485401772195

noncomputable section

/-- A052933: Expansion of (1-x^2)/(1 - x - 3*x^2 + 2*x^4).

Offset 0, canonical program `A052933.P13576234485401772195`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052933 (n : ℕ) : ℤ :=
  A052933.P13576234485401772195.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052933.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052934.P18008511915825320199

`6*a(n-1)` with `a(0)=1, a(1)=5`
-/

namespace A052934.P18008511915825320199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  6 * a (n - 1)

end

end A052934.P18008511915825320199

noncomputable section

/-- A052934: Expansion of (1-x)/(1-6*x).

Offset 0, canonical program `A052934.P18008511915825320199`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052934 (n : ℕ) : ℤ :=
  (A052934.P18008511915825320199.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052934.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052935.P5714824004227363695

`a(n-1)+a(n-2)+2*a(n-3)-1` with `a(0)=2, a(1)=2, a(2)=4`
-/

namespace A052935.P5714824004227363695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 4] fun n a =>
  a (n - 1) + a (n - 2) + 2 * a (n - 3) - 1

end

end A052935.P5714824004227363695

noncomputable section

/-- A052935: Expansion of (2-2*x-x^3)/((1-2*x)*(1-x^3)).

Offset 0, canonical program `A052935.P5714824004227363695`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052935 (n : ℕ) : ℤ :=
  A052935.P5714824004227363695.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052935.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052936.P14840662549147806522

`5*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=2, a(2)=7`
-/

namespace A052936.P14840662549147806522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 7] fun n a =>
  5 * (a (n - 1) - a (n - 2))

end

end A052936.P14840662549147806522

noncomputable section

/-- A052936: Expansion of (1-x)*(1-2*x)/(1-5*x+5*x^2).

Offset 0, canonical program `A052936.P14840662549147806522`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052936 (n : ℕ) : ℤ :=
  A052936.P14840662549147806522.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052936.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052937.P3011131998201863016

`2*a(n-1)+a(n-2)-2` with `a(0)=2, a(1)=3`
-/

namespace A052937.P3011131998201863016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  2 * a (n - 1) + a (n - 2) - 2

end

end A052937.P3011131998201863016

noncomputable section

/-- A052937: Expansion of (2-3*x-x^2)/((1-x)*(1-2*x-x^2)).

Offset 0, canonical program `A052937.P3011131998201863016`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052937 (n : ℕ) : ℤ :=
  A052937.P3011131998201863016.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052937.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052939.P13340369242629346479

`3*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A052939.P13340369242629346479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  3 * a (n - 1) + a (n - 2) - 2 * a (n - 3)

end

end A052939.P13340369242629346479

noncomputable section

/-- A052939: Expansion of (1-x)*(1+x)/(1-3*x-x^2+2*x^3).

Offset 0, canonical program `A052939.P13340369242629346479`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052939 (n : ℕ) : ℤ :=
  A052939.P13340369242629346479.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052939.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052940.P7058618808239715527

`3*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=5, a(2)=11`
-/

namespace A052940.P7058618808239715527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 11] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2)

end

end A052940.P7058618808239715527

noncomputable section

/-- A052940: a(0) = 1; a(n) = 3*2^n - 1, for n > 0.

Offset 0, canonical program `A052940.P7058618808239715527`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052940 (n : ℕ) : ℤ :=
  A052940.P7058618808239715527.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052940.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052941.P16408839296541795684

`4*a(n-1)-a(n-2)-a(n-3)` with `a(0)=1, a(1)=3, a(2)=11`
-/

namespace A052941.P16408839296541795684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 11] fun n a =>
  4 * a (n - 1) - a (n - 2) - a (n - 3)

end

end A052941.P16408839296541795684

noncomputable section

/-- A052941: Expansion of (1-x)/(1 - 4*x + x^2 + x^3).

Offset 0, canonical program `A052941.P16408839296541795684`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052941 (n : ℕ) : ℤ :=
  A052941.P16408839296541795684.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052941.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052942.P4468374649836157266

`a(n-1)+2*a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A052942.P4468374649836157266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  a (n - 1) + 2 * a (n - 4)

end

end A052942.P4468374649836157266

noncomputable section

/-- A052942: Expansion of 1/((1+x)*(1-2*x+2*x^2-2*x^3)).

Offset 0, canonical program `A052942.P4468374649836157266`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052942 (n : ℕ) : ℤ :=
  (A052942.P4468374649836157266.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052942.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052943.P6273773616810303083

`2*a(n-2)+a(n-3)-a(n-5)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=2`
-/

namespace A052943.P6273773616810303083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1, 2] fun n a =>
  2 * a (n - 2) + a (n - 3) - a (n - 5)

end

end A052943.P6273773616810303083

noncomputable section

/-- A052943: Expansion of (1-x^2)/(1-2*x^2-x^3+x^5).

Offset 0, canonical program `A052943.P6273773616810303083`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052943 (n : ℕ) : ℤ :=
  A052943.P6273773616810303083.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052943.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052945.P3457878619843099141

`2*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A052945.P3457878619843099141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  2 * (a (n - 1) + a (n - 2))

end

end A052945.P3457878619843099141

noncomputable section

/-- A052945: Number of compositions of n when each odd part can be of two kinds.

Offset 0, canonical program `A052945.P3457878619843099141`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052945 (n : ℕ) : ℤ :=
  (A052945.P3457878619843099141.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052945.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052946.P12322653000443997366

`3*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=10`
-/

namespace A052946.P12322653000443997366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4, 10] fun n a =>
  3 * a (n - 1) - 2 * a (n - 3) + a (n - 4)

end

end A052946.P12322653000443997366

noncomputable section

/-- A052946: Expansion of (1-x)^2/(1-3*x+2*x^3-x^4).

Offset 0, canonical program `A052946.P12322653000443997366`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052946 (n : ℕ) : ℤ :=
  A052946.P12322653000443997366.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052946.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052947.P12983132526005843930

`a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A052947.P12983132526005843930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a (n - 2) + 2 * a (n - 3)

end

end A052947.P12983132526005843930

noncomputable section

/-- A052947: Expansion of 1/(1-x^2-2*x^3).

Offset 0, canonical program `A052947.P12983132526005843930`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052947 (n : ℕ) : ℤ :=
  (A052947.P12983132526005843930.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052947.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052948.P17827999622045419821

`3*a(n-1)-2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A052948.P17827999622045419821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  3 * a (n - 1) - 2 * a (n - 3)

end

end A052948.P17827999622045419821

noncomputable section

/-- A052948: Expansion of g.f.: (1-2*x)/(1-3*x+2*x^3).

Offset 0, canonical program `A052948.P17827999622045419821`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052948 (n : ℕ) : ℤ :=
  A052948.P17827999622045419821.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052948.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052949.P10592633672897750249

`2*a(n-1)+a(n-2)-a(n-3)-1` with `a(0)=2, a(1)=2, a(2)=4`
-/

namespace A052949.P10592633672897750249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 4] fun n a =>
  2 * a (n - 1) + a (n - 2) - a (n - 3) - 1

end

end A052949.P10592633672897750249

noncomputable section

/-- A052949: Expansion of (2-4*x+x^3)/((1-x)*(1-2*x-x^2+x^3)).

Offset 0, canonical program `A052949.P10592633672897750249`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052949 (n : ℕ) : ℤ :=
  A052949.P10592633672897750249.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052949.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052950.P3532944129336603946

`a(n-1)+2*a(n-2)-1` with `a(0)=2, a(1)=1, a(2)=3`
-/

namespace A052950.P3532944129336603946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 3] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 1

end

end A052950.P3532944129336603946

noncomputable section

/-- A052950: Expansion of (2-3*x-x^2+x^3)/((1-x)*(1+x)*(1-2*x)).

Offset 0, canonical program `A052950.P3532944129336603946`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052950 (n : ℕ) : ℤ :=
  A052950.P3532944129336603946.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052950.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052951.P10897564461950369460

`4*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=5, a(2)=14`
-/

namespace A052951.P10897564461950369460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 14] fun n a =>
  4 * (a (n - 1) - a (n - 2))

end

end A052951.P10897564461950369460

noncomputable section

/-- A052951: Expansion of (1 + x - 2*x^2)/(1 - 2*x)^2.

Offset 0, canonical program `A052951.P10897564461950369460`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052951 (n : ℕ) : ℤ :=
  A052951.P10897564461950369460.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052951.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052952.P14817173793348127008

`2*a(n-2)+a(n-3)+1` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A052952.P14817173793348127008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  2 * a (n - 2) + a (n - 3) + 1

end

end A052952.P14817173793348127008

noncomputable section

/-- A052952: a(n) = Fibonacci(n+2) - (1-(-1)^n)/2.

Offset 0, canonical program `A052952.P14817173793348127008`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052952 (n : ℕ) : ℤ :=
  (A052952.P14817173793348127008.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052952.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052953.P3160330930403778723

`a(n-1)+2*a(n-2)-2` with `a(0)=2, a(1)=2`
-/

namespace A052953.P3160330930403778723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 2

end

end A052953.P3160330930403778723

noncomputable section

/-- A052953: Expansion of 2*(1-x-x^2)/((1-x)*(1+x)*(1-2*x)).

Offset 0, canonical program `A052953.P3160330930403778723`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052953 (n : ℕ) : ℤ :=
  A052953.P3160330930403778723.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052953.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052954.P13798438796298029713

`a(n-2)+a(n-3)-1` with `a(0)=2, a(1)=1, a(2)=2`
-/

namespace A052954.P13798438796298029713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 2] fun n a =>
  a (n - 2) + a (n - 3) - 1

end

end A052954.P13798438796298029713

noncomputable section

/-- A052954: Expansion of (2-x-x^2-x^3)/((1-x)*(1-x^2-x^3)).

Offset 0, canonical program `A052954.P13798438796298029713`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052954 (n : ℕ) : ℤ :=
  A052954.P13798438796298029713.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052954.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052955.P5313474801376957548

`2*a(n-2)+1` with `a(0)=1, a(1)=2`
-/

namespace A052955.P5313474801376957548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 2) + 1

end

end A052955.P5313474801376957548

noncomputable section

/-- A052955: a(2n) = 2*2^n - 1, a(2n+1) = 3*2^n - 1.

Offset 0, canonical program `A052955.P5313474801376957548`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052955 (n : ℕ) : ℤ :=
  (A052955.P5313474801376957548.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052955.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052956.P17297946195592474541

`3*a(n-1)-a(n-2)-2*a(n-3)` with `a(0)=2, a(1)=3, a(2)=6`
-/

namespace A052956.P17297946195592474541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 6] fun n a =>
  3 * a (n - 1) - a (n - 2) - 2 * a (n - 3)

end

end A052956.P17297946195592474541

noncomputable section

/-- A052956: a(n) = 2^n + Fibonacci(n+1).

Offset 0, canonical program `A052956.P17297946195592474541`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052956 (n : ℕ) : ℤ :=
  A052956.P17297946195592474541.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052956.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052957.P3939584844140272210

`2*a(n-1)+2*a(n-2)-4*a(n-3)` with `a(0)=2, a(1)=2, a(2)=6`
-/

namespace A052957.P3939584844140272210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 6] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) - 4 * a (n - 3)

end

end A052957.P3939584844140272210

noncomputable section

/-- A052957: Expansion of 2*(1-x-x^2)/((1-2*x)*(1-2*x^2)).

Offset 0, canonical program `A052957.P3939584844140272210`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052957 (n : ℕ) : ℤ :=
  A052957.P3939584844140272210.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052957.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052958.P8649386953948943494

`3*a(n-1)+2*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=20`
-/

namespace A052958.P8649386953948943494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6, 20] fun n a =>
  3 * a (n - 1) + 2 * a (n - 3) - 2 * a (n - 4)

end

end A052958.P8649386953948943494

noncomputable section

/-- A052958: Expansion of g.f.: (1-x)/(1-3*x-2*x^3+2*x^4).

Offset 0, canonical program `A052958.P8649386953948943494`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052958 (n : ℕ) : ℤ :=
  A052958.P8649386953948943494.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052958.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052959.P4550285908170391056

`2*a(n-2)+a(n-3)-1` with `a(0)=2, a(1)=1, a(2)=3`
-/

namespace A052959.P4550285908170391056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 3] fun n a =>
  2 * a (n - 2) + a (n - 3) - 1

end

end A052959.P4550285908170391056

noncomputable section

/-- A052959: a(2n) = a(2n-1)+a(2n-2), a(2n+1) = a(2n)+a(2n-1)-1, a(0)=2, a(1)=1.

Offset 0, canonical program `A052959.P4550285908170391056`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052959 (n : ℕ) : ℤ :=
  A052959.P4550285908170391056.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052959.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052960.P7719077476513072896

`2*a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=7`
-/

namespace A052960.P7719077476513072896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 7] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) - a (n - 3) - a (n - 4)

end

end A052960.P7719077476513072896

noncomputable section

/-- A052960: Expansion of ( 1-x-x^2 ) / ( 1-2*x-2*x^2+x^3+x^4 ).

Offset 0, canonical program `A052960.P7719077476513072896`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052960 (n : ℕ) : ℤ :=
  A052960.P7719077476513072896.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052960.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052961.P11127706491264494156

`5*a(n-1)-3*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A052961.P11127706491264494156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  5 * a (n - 1) - 3 * a (n - 2)

end

end A052961.P11127706491264494156

noncomputable section

/-- A052961: Expansion of (1 - 3*x) / (1 - 5*x + 3*x^2).

Offset 0, canonical program `A052961.P11127706491264494156`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052961 (n : ℕ) : ℤ :=
  A052961.P11127706491264494156.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052961.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052980.P7924031810732695974

`2*a(n-1)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A052980.P7924031810732695974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  2 * a (n - 1) + a (n - 3)

end

end A052980.P7924031810732695974

noncomputable section

/-- A052980: Expansion of (1 - x)/(1 - 2*x - x^3).

Offset 0, canonical program `A052980.P7924031810732695974`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052980 (n : ℕ) : ℤ :=
  (A052980.P7924031810732695974.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052980.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052992.P15872767835294399398

`a(n-1)+4*a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A052992.P15872767835294399398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  a (n - 1) + 4 * a (n - 2) - 4 * a (n - 3)

end

end A052992.P15872767835294399398

noncomputable section

/-- A052992: Expansion of 1/((1 - x)*(1 - 2*x)*(1 + 2*x)).

Offset 0, canonical program `A052992.P15872767835294399398`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052992 (n : ℕ) : ℤ :=
  A052992.P15872767835294399398.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052992.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052996.P17359938709934451248

`2*a(n-1)+1` with `a(0)=1, a(1)=3, a(2)=8`
-/

namespace A052996.P17359938709934451248
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 8] fun n a =>
  2 * a (n - 1) + 1

end

end A052996.P17359938709934451248

noncomputable section

/-- A052996: Expansion of (1+x^2-x^3)/((1-x)*(1-2*x)).

Offset 0, canonical program `A052996.P17359938709934451248`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052996 (n : ℕ) : ℤ :=
  (A052996.P17359938709934451248.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052996.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053141.P8046980471257932056

`6*a(n-1)-a(n-2)+2` with `a(0)=0, a(1)=2`
-/

namespace A053141.P8046980471257932056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  6 * a (n - 1) - a (n - 2) + 2

end

end A053141.P8046980471257932056

noncomputable section

/-- A053141: a(0)=0, a(1)=2 then a(n) = a(n-2) + 2*sqrt(8*a(n-1)^2 + 8*a(n-1) + 1).

Offset 0, canonical program `A053141.P8046980471257932056`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053141 (n : ℕ) : ℤ :=
  A053141.P8046980471257932056.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053141.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053142.P4190400071879757955

`6*a(n-1)-a(n-2)+1` with `a(0)=0, a(1)=1`
-/

namespace A053142.P4190400071879757955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  6 * a (n - 1) - a (n - 2) + 1

end

end A053142.P4190400071879757955

noncomputable section

/-- A053142: a(n) = A053141(n)/2.

Offset 0, canonical program `A053142.P4190400071879757955`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053142 (n : ℕ) : ℤ :=
  A053142.P4190400071879757955.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053142.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053152.P11056580814973075561

`6*a(n-1)-11*a(n-2)+6*a(n-3)` with `a(0)=0, a(1)=2, a(2)=9`
-/

namespace A053152.P11056580814973075561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 9] fun n a =>
  6 * a (n - 1) - 11 * a (n - 2) + 6 * a (n - 3)

end

end A053152.P11056580814973075561

noncomputable section

/-- A053152: Number of 2-element intersecting families whose union is an n-element set.

Offset 1, canonical program `A053152.P11056580814973075561`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053152 (n : ℕ) : ℤ :=
  A053152.P11056580814973075561.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053152.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053154.P16252728033413519256

`(4^n-3^n+2^n-1)/2`
-/

namespace A053154.P16252728033413519256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 ^ n : ℤ) - (3 ^ n : ℤ) + (2 ^ n : ℤ) - 1 : ℚ) / 2

end

end A053154.P16252728033413519256

noncomputable section

/-- A053154: Number of 2-element intersecting families (with not necessarily distinct sets) of an n-element set.

Offset 0, canonical program `A053154.P16252728033413519256`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053154 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A053154.P16252728033413519256.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053154.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053156.P18088028875847038235

`6*a(n-1)-11*a(n-2)+6*a(n-3)` with `a(0)=1, a(1)=3, a(2)=10`
-/

namespace A053156.P18088028875847038235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 10] fun n a =>
  6 * a (n - 1) - 11 * a (n - 2) + 6 * a (n - 3)

end

end A053156.P18088028875847038235

noncomputable section

/-- A053156: Number of 2-element intersecting families (with not necessarily distinct sets) whose union is an n-element set.

Offset 1, canonical program `A053156.P18088028875847038235`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053156 (n : ℕ) : ℤ :=
  A053156.P18088028875847038235.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053156.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053186.P11336721340617541042

`n-floor(sqrt(n))²`
-/

namespace A053186.P11336721340617541042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.sqrt n ^ 2 : ℤ)

end

end A053186.P11336721340617541042

noncomputable section

/-- A053186: Square excess of n: difference between n and largest square <= n.

Offset 0, canonical program `A053186.P11336721340617541042`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053186 (n : ℕ) : ℤ :=
  A053186.P11336721340617541042.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053186.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053187.P5980113714214141663

`floor(sqrt(n)+1/2)²`
-/

namespace A053187.P5980113714214141663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (n : ℝ) + ((1 : ℚ) / 2 : ℝ)⌋ ^ 2

end

end A053187.P5980113714214141663

noncomputable section

/-- A053187: Square nearest to n.

Offset 0, canonical program `A053187.P5980113714214141663`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053187 (n : ℕ) : ℤ :=
  A053187.P5980113714214141663.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053187.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053209.P17662316802954712760

`3*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=5, a(2)=14`
-/

namespace A053209.P17662316802954712760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 14] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2)

end

end A053209.P17662316802954712760

noncomputable section

/-- A053209: Row sums of A051598.

Offset 0, canonical program `A053209.P17662316802954712760`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053209 (n : ℕ) : ℤ :=
  A053209.P17662316802954712760.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053209.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053220.P736312978307705652

`(2+3*n)*2^(n-1)`
-/

namespace A053220.P736312978307705652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + 3 * n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A053220.P736312978307705652

noncomputable section

/-- A053220: a(n) = (3*n-1) * 2^(n-2).

Offset 1, canonical program `A053220.P736312978307705652`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053220 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A053220.P736312978307705652.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053220.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053307.P3641704547598282125

`(n+2)*(2*n²+8*n+15+9*(-1)^n)/48`
-/

namespace A053307.P3641704547598282125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * (((2 * n ^ 2 + 8 * n : ℤ) + (15 + 9 * (-1) ^ n) : ℚ) / 48)

end

end A053307.P3641704547598282125

noncomputable section

/-- A053307: Number of nonnegative integer 2 X 2 matrices with sum of elements equal to n, under row and column permutations.

Offset 0, canonical program `A053307.P3641704547598282125`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053307 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A053307.P3641704547598282125.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053307.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053311.P9778916155767506881

`a(n-1)+a(n-2)+4` with `a(0)=1, a(1)=5`
-/

namespace A053311.P9778916155767506881
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) + a (n - 2) + 4

end

end A053311.P9778916155767506881

noncomputable section

/-- A053311: Partial sums of A000285.

Offset 0, canonical program `A053311.P9778916155767506881`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053311 (n : ℕ) : ℤ :=
  (A053311.P9778916155767506881.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053311.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053404.P592143102931610824

`a(n-1)+12*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A053404.P592143102931610824
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + 12 * a (n - 2)

end

end A053404.P592143102931610824

noncomputable section

/-- A053404: Expansion of 1/((1+3*x)*(1-4*x)).

Offset 0, canonical program `A053404.P592143102931610824`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053404 (n : ℕ) : ℤ :=
  (A053404.P592143102931610824.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053404.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053422.P13477034223085517013

`n*(10^n-1)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A053422.P13477034223085517013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (((10 ^ n : ℤ) - 1 : ℚ) / 9)

end

end A053422.P13477034223085517013

noncomputable section

/-- A053422: n times (n 1's): a(n) = n*(10^n - 1)/9.

Offset 0, canonical program `A053422.P13477034223085517013`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053422 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A053422.P13477034223085517013.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053422.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053430.P7718626813984886975

`a(n-1)+30*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A053430.P7718626813984886975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + 30 * a (n - 2)

end

end A053430.P7718626813984886975

noncomputable section

/-- A053430: a(n) = (6^(n+1) - (-5)^(n+1))/11.

Offset 0, canonical program `A053430.P7718626813984886975`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053430 (n : ℕ) : ℤ :=
  (A053430.P7718626813984886975.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053430.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053441.P6288736101042432941

`4*a(n-2)+2*a(n-3)-a(n-6)` with `a(0)=1, a(1)=0, a(2)=4, a(3)=4, a(4)=16, a(5)=24`
-/

namespace A053441.P6288736101042432941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 4, 4, 16, 24] fun n a =>
  4 * a (n - 2) + 2 * a (n - 3) - a (n - 6)

end

end A053441.P6288736101042432941

noncomputable section

/-- A053441: Moments of generalized Motzkin paths.

Offset 2, canonical program `A053441.P6288736101042432941`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053441 (n : ℕ) : ℤ :=
  A053441.P6288736101042432941.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053441.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053455.P18337949879489206759

`2*a(n-1)+48*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A053455.P18337949879489206759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * a (n - 1) + 48 * a (n - 2)

end

end A053455.P18337949879489206759

noncomputable section

/-- A053455: a(n) = ((8^n) - (-6)^n)/14.

Offset 0, canonical program `A053455.P18337949879489206759`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053455 (n : ℕ) : ℤ :=
  (A053455.P18337949879489206759.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053455.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053463.P5116066067168265815

`floor(abs(10*sin(n)))`
-/

namespace A053463.P5116066067168265815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|10 * Real.sin (n : ℝ)|⌋

end

end A053463.P5116066067168265815

noncomputable section

/-- A053463: First digit of sin(n).

Offset 0, canonical program `A053463.P5116066067168265815`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053463 (n : ℕ) : ℤ :=
  A053463.P5116066067168265815.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053463.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053464.P2506679367513065598

`10*a(n-1)-25*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A053464.P2506679367513065598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  10 * a (n - 1) - 25 * a (n - 2)

end

end A053464.P2506679367513065598

noncomputable section

/-- A053464: a(n) = n*5^(n-1).

Offset 0, canonical program `A053464.P2506679367513065598`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053464 (n : ℕ) : ℤ :=
  A053464.P2506679367513065598.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053464.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053469.P804145317582008801

`12*a(n-1)-36*a(n-2)` with `a(0)=1, a(1)=12`
-/

namespace A053469.P804145317582008801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 12] fun n a =>
  12 * a (n - 1) - 36 * a (n - 2)

end

end A053469.P804145317582008801

noncomputable section

/-- A053469: a(n) = n*6^(n-1).

Offset 1, canonical program `A053469.P804145317582008801`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053469 (n : ℕ) : ℤ :=
  A053469.P804145317582008801.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053469.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053486.P17323268347636385231

`n*a(n-1)+3^n` with `a(0)=1`
-/

namespace A053486.P17323268347636385231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * a (n - 1) + 3 ^ n

end

end A053486.P17323268347636385231

noncomputable section

/-- A053486: E.g.f.: exp(3x)/(1-x).

Offset 0, canonical program `A053486.P17323268347636385231`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053486 (n : ℕ) : ℤ :=
  (A053486.P17323268347636385231.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053486.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053524.P16837170121231480652

`4*a(n-1)+12*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A053524.P16837170121231480652
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  4 * a (n - 1) + 12 * a (n - 2)

end

end A053524.P16837170121231480652

noncomputable section

/-- A053524: a(n) = (6^n - (-2)^n)/8.

Offset 0, canonical program `A053524.P16837170121231480652`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053524 (n : ℕ) : ℤ :=
  (A053524.P16837170121231480652.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053524.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053526.P14735535351992612924

`C(n, 4)*(n²+3*n+4)/2`
-/

namespace A053526.P14735535351992612924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 4 : ℚ) * ((n ^ 2 + 3 * n + 4 : ℚ) / 2)

end

end A053526.P14735535351992612924

noncomputable section

/-- A053526: Number of bipartite graphs with 3 edges on nodes {1..n}.

Offset 0, canonical program `A053526.P14735535351992612924`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053526 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A053526.P14735535351992612924.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053526.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053527.P2774897265708566818

`C(n, 4)*(n+2)*(n^3-5*n-36)/16`
-/

namespace A053527.P2774897265708566818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 4 : ℚ) * ((n + 2 : ℚ) * (((n ^ 3 : ℤ) - (5 * n : ℤ) - 36 : ℚ) / 16))

end

end A053527.P2774897265708566818

noncomputable section

/-- A053527: Number of bipartite graphs with 4 edges on nodes {1..n}.

Offset 0, canonical program `A053527.P2774897265708566818`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053527 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A053527.P2774897265708566818.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053527.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053528.P16307703830618868444

`C(n, 5)*(n^5+5*n^4+5*n^3-85*n²-374*n-960)/32`
-/

namespace A053528.P16307703830618868444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 5 : ℚ) * (((n ^ 5 + 5 * n ^ 4 + 5 * n ^ 3 : ℤ) - (85 * n ^ 2 : ℤ) - (374 * n : ℤ) - 960 : ℚ) / 32)

end

end A053528.P16307703830618868444

noncomputable section

/-- A053528: Number of bipartite graphs with 5 edges on nodes {1..n}.

Offset 0, canonical program `A053528.P16307703830618868444`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053528 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A053528.P16307703830618868444.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053528.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053535.P7139845402054119901

`6*a(n-1)+27*a(n-2)` with `a(0)=1, a(1)=6`
-/

namespace A053535.P7139845402054119901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  6 * a (n - 1) + 27 * a (n - 2)

end

end A053535.P7139845402054119901

noncomputable section

/-- A053535: Expansion of 1/((1+3*x)*(1-9*x)).

Offset 0, canonical program `A053535.P7139845402054119901`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053535 (n : ℕ) : ℤ :=
  (A053535.P7139845402054119901.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053535.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053536.P12548072010830457029

`8*a(n-1)+48*a(n-2)` with `a(0)=1, a(1)=8`
-/

namespace A053536.P12548072010830457029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  8 * a (n - 1) + 48 * a (n - 2)

end

end A053536.P12548072010830457029

noncomputable section

/-- A053536: Expansion of 1/((1+4*x)*(1-12*x)).

Offset 0, canonical program `A053536.P12548072010830457029`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053536 (n : ℕ) : ℤ :=
  (A053536.P12548072010830457029.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053536.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053537.P4723396050385246829

`10*a(n-1)+75*a(n-2)` with `a(0)=1, a(1)=10`
-/

namespace A053537.P4723396050385246829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n a =>
  10 * a (n - 1) + 75 * a (n - 2)

end

end A053537.P4723396050385246829

noncomputable section

/-- A053537: Expansion of 1/((1+5*x)*(1-15*x)).

Offset 0, canonical program `A053537.P4723396050385246829`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053537 (n : ℕ) : ℤ :=
  (A053537.P4723396050385246829.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053537.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053539.P12297489494819513465

`16*a(n-1)-64*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A053539.P12297489494819513465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  16 * a (n - 1) - 64 * a (n - 2)

end

end A053539.P12297489494819513465

noncomputable section

/-- A053539: a(n) = n*8^(n-1).

Offset 0, canonical program `A053539.P12297489494819513465`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053539 (n : ℕ) : ℤ :=
  A053539.P12297489494819513465.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053539.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053540.P5633829671924574300

`18*a(n-1)-81*a(n-2)` with `a(0)=1, a(1)=18`
-/

namespace A053540.P5633829671924574300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 18] fun n a =>
  18 * a (n - 1) - 81 * a (n - 2)

end

end A053540.P5633829671924574300

noncomputable section

/-- A053540: a(n) = n*9^(n-1).

Offset 1, canonical program `A053540.P5633829671924574300`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053540 (n : ℕ) : ℤ :=
  A053540.P5633829671924574300.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053540.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053541.P14361843076308503081

`10*a(n-1)+10^n` with `a(0)=1`
-/

namespace A053541.P14361843076308503081
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) + 10 ^ n

end

end A053541.P14361843076308503081

noncomputable section

/-- A053541: a(n) = n*10^(n-1).

Offset 1, canonical program `A053541.P14361843076308503081`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053541 (n : ℕ) : ℤ :=
  (A053541.P14361843076308503081.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053541.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053545.P1998542117181799326

`7*a(n-1)-18*a(n-2)+20*a(n-3)-8*a(n-4)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=19`
-/

namespace A053545.P1998542117181799326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5, 19] fun n a =>
  7 * a (n - 1) - 18 * a (n - 2) + 20 * a (n - 3) - 8 * a (n - 4)

end

end A053545.P1998542117181799326

noncomputable section

/-- A053545: Comparisons needed for Batcher's sorting algorithm applied to 2^n items.

Offset 0, canonical program `A053545.P1998542117181799326`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053545 (n : ℕ) : ℤ :=
  A053545.P1998542117181799326.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053545.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053565.P12410230277436198160

`4*a(n-1)-4*a(n-2)` with `a(0)=-2, a(1)=-1`
-/

namespace A053565.P12410230277436198160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-2, -1] fun n a =>
  4 * a (n - 1) - 4 * a (n - 2)

end

end A053565.P12410230277436198160

noncomputable section

/-- A053565: a(n) = 2^(n-1)*(3*n-4).

Offset 0, canonical program `A053565.P12410230277436198160`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053565 (n : ℕ) : ℤ :=
  A053565.P12410230277436198160.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053565.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053566.P18086591831653372296

`6*a(n-1)-9*a(n-2)` with `a(0)=-2, a(1)=-1`
-/

namespace A053566.P18086591831653372296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-2, -1] fun n a =>
  6 * a (n - 1) - 9 * a (n - 2)

end

end A053566.P18086591831653372296

noncomputable section

/-- A053566: Expansion of (11*x-2)/(1-3*x)^2.

Offset 0, canonical program `A053566.P18086591831653372296`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053566 (n : ℕ) : ℤ :=
  A053566.P18086591831653372296.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053566.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053581.P10137873116503943167

`5*a(n-1)-6*a(n-2)` with `a(0)=1, a(1)=3, a(2)=10`
-/

namespace A053581.P10137873116503943167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 10] fun n a =>
  5 * a (n - 1) - 6 * a (n - 2)

end

end A053581.P10137873116503943167

noncomputable section

/-- A053581: First differences of the Poly-Bernoulli numbers B_n^(k) with k=-2 (A027649).

Offset 0, canonical program `A053581.P10137873116503943167`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053581 (n : ℕ) : ℤ :=
  A053581.P10137873116503943167.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053581.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053602.P1420020254596265171

`a(n-2)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A053602.P1420020254596265171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 2] fun n a =>
  a (n - 2) + a (n - 4)

end

end A053602.P1420020254596265171

noncomputable section

/-- A053602: a(n) = a(n-1) - (-1)^n*a(n-2), a(0)=0, a(1)=1.

Offset 0, canonical program `A053602.P1420020254596265171`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053602 (n : ℕ) : ℤ :=
  (A053602.P1420020254596265171.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053602.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053606.P15995491055914947986

`18*a(n-1)-a(n-2)+8` with `a(0)=0, a(1)=8`
-/

namespace A053606.P15995491055914947986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 8] fun n a =>
  18 * a (n - 1) - a (n - 2) + 8

end

end A053606.P15995491055914947986

noncomputable section

/-- A053606: a(n) = (Fibonacci(6*n+3) - 2)/4.

Offset 0, canonical program `A053606.P15995491055914947986`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053606 (n : ℕ) : ℤ :=
  A053606.P15995491055914947986.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053606.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053615.P2131948520812356575

`floor(sqrt(n))-a(n-floor(sqrt(n)))` with `a(0)=0`
-/

namespace A053615.P2131948520812356575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.sqrt n : ℤ) - a (n - Nat.sqrt n)

end

end A053615.P2131948520812356575

noncomputable section

/-- A053615: Pyramidal sequence: distance to nearest product of two consecutive integers (promic or heteromecic numbers).

Offset 0, canonical program `A053615.P2131948520812356575`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053615 (n : ℕ) : ℤ :=
  A053615.P2131948520812356575.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053615.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053625.P17583235642005818368

`n*(n-1)*(n-2)*(n-3)*(n-4)*(n-5)`
-/

namespace A053625.P17583235642005818368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (((n : ℤ) - 1) * (((n : ℤ) - 2) * (((n : ℤ) - 3) * (((n : ℤ) - 4) * ((n : ℤ) - 5)))))

end

end A053625.P17583235642005818368

noncomputable section

/-- A053625: Product of 6 consecutive integers.

Offset 0, canonical program `A053625.P17583235642005818368`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053625 (n : ℕ) : ℤ :=
  A053625.P17583235642005818368.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053625.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053643.P7609912630592295332

`ceil(C(n, 5)/6)`
-/

namespace A053643.P7609912630592295332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose n 5 : ℚ) / 6⌉

end

end A053643.P7609912630592295332

noncomputable section

/-- A053643: a(n) = ceiling(binomial(n,6)/n).

Offset 1, canonical program `A053643.P7609912630592295332`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053643 (n : ℕ) : ℤ :=
  A053643.P7609912630592295332.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053643.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053644.P1707366427427647095

`a(floor(n/2))*2` with `a(0)=0, a(1)=1`
-/

namespace A053644.P1707366427427647095
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * 2

end

end A053644.P1707366427427647095

noncomputable section

/-- A053644: Most significant bit of n, msb(n); largest power of 2 less than or equal to n; write n in binary and change all but the first digit to zero.

Offset 0, canonical program `A053644.P1707366427427647095`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053644 (n : ℕ) : ℤ :=
  (A053644.P1707366427427647095.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053644.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053697.P2823174019528028812

`a(n-2)+10*a(n-3)-10*a(n-5)` with `a(0)=1, a(1)=2, a(2)=8, a(3)=14, a(4)=27, a(5)=94, a(6)=137, a(7)=284, a(8)=947`
-/

namespace A053697.P2823174019528028812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 8, 14, 27, 94, 137, 284, 947] fun n a =>
  a (n - 2) + 10 * a (n - 3) - 10 * a (n - 5)

end

end A053697.P2823174019528028812

noncomputable section

/-- A053697: a(n+1)=a(n)+a^(n), where the addition is in base 11 and where a^(n) is obtained from a(n) by replacing each digit with its multiplicative inverse modulo 11. Zero digits, if any, are deleted.

Offset 1, canonical program `A053697.P2823174019528028812`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053697 (n : ℕ) : ℤ :=
  A053697.P2823174019528028812.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053697.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053699.P17203746328329447679

`1+n+n²+n^3+n^4`
-/

namespace A053699.P17203746328329447679
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + (n + n ^ 2) + n ^ 3 + n ^ 4

end

end A053699.P17203746328329447679

noncomputable section

/-- A053699: a(n) = n^4 + n^3 + n^2 + n + 1.

Offset 0, canonical program `A053699.P17203746328329447679`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053699 (n : ℕ) : ℤ :=
  (A053699.P17203746328329447679.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053699.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053715.P11055994685338526000

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=11, a(3)=20, a(4)=22, a(5)=30`
-/

namespace A053715.P11055994685338526000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 11, 20, 22, 30] fun n a =>
  2 * a (n - 2) - a (n - 4)

end

end A053715.P11055994685338526000

noncomputable section

/-- A053715: a(n) = n-th triangular number (the sum of the first n integers) in base n.

Offset 0, canonical program `A053715.P11055994685338526000`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053715 (n : ℕ) : ℤ :=
  A053715.P11055994685338526000.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053715.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053730.P1963473934426172818

`6*a(n-1)-12*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A053730.P1963473934426172818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  6 * a (n - 1) - 12 * a (n - 2) + 8 * a (n - 3)

end

end A053730.P1963473934426172818

noncomputable section

/-- A053730: a(n) = 2^(n-2)*(n^2 - n + 4).

Offset 0, canonical program `A053730.P1963473934426172818`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053730 (n : ℕ) : ℤ :=
  A053730.P1963473934426172818.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053730.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053741.P12866060918244914131

`20+50*n`
-/

namespace A053741.P12866060918244914131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20 + 50 * n

end

end A053741.P12866060918244914131

noncomputable section

/-- A053741: Sum of even numbers in range 10*n to 10*n+9.

Offset 0, canonical program `A053741.P12866060918244914131`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053741 (n : ℕ) : ℤ :=
  (A053741.P12866060918244914131.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053741.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053742.P14573697314274550349

`25+50*n`
-/

namespace A053742.P14573697314274550349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25 + 50 * n

end

end A053742.P14573697314274550349

noncomputable section

/-- A053742: Sum of odd numbers in range 10*n to 10*n+9.

Offset 0, canonical program `A053742.P14573697314274550349`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053742 (n : ℕ) : ℤ :=
  (A053742.P14573697314274550349.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053742.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053743.P9301299631760618061

`5*(20*n+9)`
-/

namespace A053743.P9301299631760618061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (20 * n + 9)

end

end A053743.P9301299631760618061

noncomputable section

/-- A053743: Sum of numbers in range 10*n to 10*n+9.

Offset 0, canonical program `A053743.P9301299631760618061`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053743 (n : ℕ) : ℤ :=
  (A053743.P9301299631760618061.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053743.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053763.P5108017109472184215

`2^(n²-n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A053763.P5108017109472184215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n ^ 2 : ℤ) - (n : ℤ) : ℤ)

end

end A053763.P5108017109472184215

noncomputable section

/-- A053763: a(n) = 2^(n^2 - n).

Offset 0, canonical program `A053763.P5108017109472184215`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053763 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A053763.P5108017109472184215.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053763.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053764.P13219864971666079460

`3^(n²-n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A053764.P13219864971666079460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n ^ 2 : ℤ) - (n : ℤ) : ℤ)

end

end A053764.P13219864971666079460

noncomputable section

/-- A053764: a(n) = 3^(n^2 - n).

Offset 0, canonical program `A053764.P13219864971666079460`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053764 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A053764.P13219864971666079460.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053764.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053765.P6216357074586200018

`4^(n²-n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A053765.P6216357074586200018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ ((n ^ 2 : ℤ) - (n : ℤ) : ℤ)

end

end A053765.P6216357074586200018

noncomputable section

/-- A053765: a(n) = 4^(n^2 - n).

Offset 0, canonical program `A053765.P6216357074586200018`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053765 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A053765.P6216357074586200018.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053765.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053766.P12117091817789847808

`5^(n²-n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A053766.P12117091817789847808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ ((n ^ 2 : ℤ) - (n : ℤ) : ℤ)

end

end A053766.P12117091817789847808

noncomputable section

/-- A053766: a(n) = 5^(n^2 - n).

Offset 0, canonical program `A053766.P12117091817789847808`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053766 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A053766.P12117091817789847808.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053766.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053796.P16453866403305369911

`a(n-5)` with `a(0)=0, a(1)=2, a(2)=1, a(3)=2, a(4)=0`
-/

namespace A053796.P16453866403305369911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1, 2, 0] fun n a =>
  a (n - 5)

end

end A053796.P16453866403305369911

noncomputable section

/-- A053796: a(n) = (n^2+n) modulo 5.

Offset 0, canonical program `A053796.P16453866403305369911`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053796 (n : ℕ) : ℤ :=
  (A053796.P16453866403305369911.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053796.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053808.P4399199294801208470

`a(n-1)+a(n-2)+(n+1)²` with `a(0)=1, a(1)=5`
-/

namespace A053808.P4399199294801208470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) + a (n - 2) + (n + 1) ^ 2

end

end A053808.P4399199294801208470

noncomputable section

/-- A053808: Partial sums of A001891.

Offset 0, canonical program `A053808.P4399199294801208470`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053808 (n : ℕ) : ℤ :=
  (A053808.P4399199294801208470.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053808.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053879.P11789573427963369252

`n²%7`
-/

namespace A053879.P11789573427963369252
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 7

end

end A053879.P11789573427963369252

noncomputable section

/-- A053879: a(n) = n^2 mod 7.

Offset 0, canonical program `A053879.P11789573427963369252`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053879 (n : ℕ) : ℤ :=
  (A053879.P11789573427963369252.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053879.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053986.P11650445530625309332

`n^n!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A053986.P11650445530625309332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.factorial n

end

end A053986.P11650445530625309332

noncomputable section

/-- A053986: a(n) = n^(n!).

Offset 0, canonical program `A053986.P11650445530625309332`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^n!` (program `A053986.P11650445530625309332`, by `A053986.P11650445530625309332.correct`). Lean does not check the parsing of the name. -/
def A053986 (n : ℕ) : ℤ :=
  (A053986.P11650445530625309332.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^n!` (program `A053986.P11650445530625309332`, by `A053986.P11650445530625309332.correct`). Lean does not check the parsing of the name. -/
def A053986.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A054000.P6419692801162330010

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=6, a(2)=16`
-/

namespace A054000.P6419692801162330010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 6, 16] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A054000.P6419692801162330010

noncomputable section

/-- A054000: a(n) = 2*n^2 - 2.

Offset 1, canonical program `A054000.P6419692801162330010`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054000 (n : ℕ) : ℤ :=
  A054000.P6419692801162330010.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054000.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A054026.P370226765853571705

`(1+n)²*(3*(-1)^n+4*n^3-18*n²+20*n-3)/4`
-/

namespace A054026.P370226765853571705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 + n) ^ 2 : ℚ) * ((3 * (-1) ^ n + (4 * n ^ 3 : ℤ) - (18 * n ^ 2 : ℤ) + (20 * n : ℤ) - 3 : ℚ) / 4)

end

end A054026.P370226765853571705

noncomputable section

/-- A054026: a(n) is the number of sets of natural numbers [a,b,c,d,e] that can be produced with the numbers [0..n] such that the values of all the distinct parenthesized expressions of a-b-c-d-e are different.

Offset 0, canonical program `A054026.P370226765853571705`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054026 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A054026.P370226765853571705.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054026.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A054091.P17627261631344330357

`2+(n-1)*a(n-1)` with `a(0)=1`
-/

namespace A054091.P17627261631344330357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 + ((n : ℤ) - 1) * a (n - 1)

end

end A054091.P17627261631344330357

noncomputable section

/-- A054091: Row sums of A054090.

Offset 0, canonical program `A054091.P17627261631344330357`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054091 (n : ℕ) : ℤ :=
  A054091.P17627261631344330357.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054091.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A054135.P16289248508672803890

`3*a(n-1)-2*a(n-2)` with `a(0)=2, a(1)=4, a(2)=9`
-/

namespace A054135.P16289248508672803890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 9] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2)

end

end A054135.P16289248508672803890

noncomputable section

/-- A054135: a(n) = T(n,1), array T as in A054134.

Offset 1, canonical program `A054135.P16289248508672803890`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054135 (n : ℕ) : ℤ :=
  A054135.P16289248508672803890.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054135.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047457.P12171126229768480659

`record[or(6, n)-3]`
-/

namespace A047457.P12171126229768480659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 6 n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047457.P12171126229768480659

noncomputable section

/-- A047457: Numbers that are congruent to {3, 4} mod 8.

Offset 1, canonical program `A047457.P12171126229768480659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047457 (n : ℕ) : ℤ :=
  A047457.P12171126229768480659.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047471.P16275976422935977123

`record[or(5, n)-4]`
-/

namespace A047471.P16275976422935977123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 5 n : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047471.P16275976422935977123

noncomputable section

/-- A047471: Numbers that are congruent to {1, 3} mod 8.

Offset 1, canonical program `A047471.P16275976422935977123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047471 (n : ℕ) : ℤ :=
  A047471.P16275976422935977123.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047489.P14797517552639671445

`∑[gcd(2, ∑[n%5])]-1`
-/

namespace A047489.P14797517552639671445
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A047489.P14797517552639671445

noncomputable section

/-- A047489: Numbers that are congruent to {1, 2, 3, 5, 7} mod 8.

Offset 1, canonical program `A047489.P14797517552639671445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047489 (n : ℕ) : ℤ :=
  A047489.P14797517552639671445.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047489.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047490.P15778148302215761826

`lt[xor(5, n-4), n]`
-/

namespace A047490.P15778148302215761826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 ((n : ℤ) - 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A047490.P15778148302215761826

noncomputable section

/-- A047490: Numbers that are congruent to {0, 1, 2, 3, 5, 7} mod 8.

Offset 1, canonical program `A047490.P15778148302215761826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047490 (n : ℕ) : ℤ :=
  (A047490.P15778148302215761826.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047501.P12038021922566330044

`Δ[ceil((2*n)²/5)]`
-/

namespace A047501.P12038021922566330044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n) ^ 2 : ℚ) / 5⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047501.P12038021922566330044

noncomputable section

/-- A047501: Numbers that are congruent to {1, 3, 4, 5, 7} mod 8.

Offset 1, canonical program `A047501.P12038021922566330044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047501 (n : ℕ) : ℤ :=
  A047501.P12038021922566330044.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047504.P7102937326995805975

`lt[n, or(5, n)]+1`
-/

namespace A047504.P7102937326995805975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A047504.P7102937326995805975

noncomputable section

/-- A047504: Numbers that are congruent to {1, 2, 3, 4, 5, 7} mod 8.

Offset 1, canonical program `A047504.P7102937326995805975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047504 (n : ℕ) : ℤ :=
  (A047504.P7102937326995805975.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047504.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047513.P16955071387491425171

`record[n-and(8, n²)]`
-/

namespace A047513.P16955071387491425171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land 8 (n ^ 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047513.P16955071387491425171

noncomputable section

/-- A047513: Numbers that are congruent to {0, 1, 2, 4, 6, 7} mod 8.

Offset 1, canonical program `A047513.P16955071387491425171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047513 (n : ℕ) : ℤ :=
  A047513.P16955071387491425171.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047515.P12909502347852022471

`eq[n, or(n, (3*n)%8)]`
-/

namespace A047515.P12909502347852022471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (3 * n % 8)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047515.P12909502347852022471

noncomputable section

/-- A047515: Numbers that are congruent to {0, 3, 4, 6, 7} mod 8.

Offset 1, canonical program `A047515.P12909502347852022471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047515 (n : ℕ) : ℤ :=
  (A047515.P12909502347852022471.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047521.P8675164803898022957

`lt[or(6, n-1), n]`
-/

namespace A047521.P8675164803898022957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 6 ((n : ℤ) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A047521.P8675164803898022957

noncomputable section

/-- A047521: Numbers that are congruent to {0, 7} mod 8.

Offset 1, canonical program `A047521.P8675164803898022957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047521 (n : ℕ) : ℤ :=
  (A047521.P8675164803898022957.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047564.P13681762411371526783

`lt[and(n, -6), n]`
-/

namespace A047564.P13681762411371526783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-6)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A047564.P13681762411371526783

noncomputable section

/-- A047564: Numbers that are congruent to {1, 3, 4, 5, 6, 7} mod 8.

Offset 1, canonical program `A047564.P13681762411371526783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047564 (n : ℕ) : ℤ :=
  (A047564.P13681762411371526783.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047564.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047571.P1891706182387925971

`lt[n, xor(5, n+4)]`
-/

namespace A047571.P1891706182387925971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 5 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047571.P1891706182387925971

noncomputable section

/-- A047571: Numbers that are congruent to {0, 2, 4, 5, 6, 7} mod 8.

Offset 1, canonical program `A047571.P1891706182387925971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047571 (n : ℕ) : ℤ :=
  (A047571.P1891706182387925971.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047585.P8374802838881930199

`lt[n, xor(5, n+3)+1]`
-/

namespace A047585.P8374802838881930199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 5 (n + 3) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047585.P8374802838881930199

noncomputable section

/-- A047585: Numbers that are congruent to {0, 1, 3, 5, 6, 7} mod 8.

Offset 1, canonical program `A047585.P8374802838881930199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047585 (n : ℕ) : ℤ :=
  (A047585.P8374802838881930199.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047607.P16556856980829958644

`record[n-C(and(5, n), 4)]`
-/

namespace A047607.P16556856980829958644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose (Nat.land 5 n) 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047607.P16556856980829958644

noncomputable section

/-- A047607: Numbers that are congruent to {0, 1, 2, 3, 5} mod 8.

Offset 1, canonical program `A047607.P16556856980829958644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047607 (n : ℕ) : ℤ :=
  A047607.P16556856980829958644.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047608.P8003059280577848342

`record[or(6, n)-2]`
-/

namespace A047608.P8003059280577848342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 6 n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047608.P8003059280577848342

noncomputable section

/-- A047608: Numbers that are congruent to {4, 5} mod 8.

Offset 1, canonical program `A047608.P8003059280577848342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047608 (n : ℕ) : ℤ :=
  A047608.P8003059280577848342.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047614.P1508913737203542591

`record[and(n, or(n+2, n-3))]`
-/

namespace A047614.P1508913737203542591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (Int.lor (n + 2 : ℤ) ((n : ℤ) - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047614.P1508913737203542591

noncomputable section

/-- A047614: Numbers that are congruent to {0, 1, 2, 4, 5} mod 8.

Offset 1, canonical program `A047614.P1508913737203542591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047614 (n : ℕ) : ℤ :=
  A047614.P1508913737203542591.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047668.P12487600397937622520

`n²-∑[∑[xor(-4, (2*n)²)]]`
-/

namespace A047668.P12487600397937622520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-4) ((2 * n) ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047668.P12487600397937622520

noncomputable section

/-- A047668: Row 4 of array in A047666.

Offset 1, canonical program `A047668.P12487600397937622520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047668 (n : ℕ) : ℤ :=
  A047668.P12487600397937622520.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047740.P17773259167292935010

`floor(∑[1/log(n+2)])`
-/

namespace A047740.P17773259167292935010
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 / Real.log (n + 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A047740.P17773259167292935010

noncomputable section

/-- A047740: A discrete analog of Li(n): floor ( Sum_{k=2..n} 1/log_e (k) ).

Offset 2, canonical program `A047740.P17773259167292935010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1686 terms. -/
def A047740 (n : ℕ) : ℤ :=
  A047740.P17773259167292935010.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1686 terms. -/
def A047740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047741.P945592386863934921

`round(∑[1/log(n+2)])`
-/

namespace A047741.P945592386863934921
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 / Real.log (n + 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A047741.P945592386863934921

noncomputable section

/-- A047741: A discrete analog of Li(n): a(n) = round(Sum_{k=2..n} 1/log(k)).

Offset 2, canonical program `A047741.P945592386863934921`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1613 terms. -/
def A047741 (n : ℕ) : ℤ :=
  A047741.P945592386863934921.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1613 terms. -/
def A047741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047743.P3026413750480478684

`floor(∑[1/log2(n+2)])`
-/

namespace A047743.P3026413750480478684
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 / Real.logb 2 (n + 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A047743.P3026413750480478684

noncomputable section

/-- A047743: A discrete analog of Li(n): floor ( Sum_{k=2..n} 1/log_2 (k) ).

Offset 2, canonical program `A047743.P3026413750480478684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1685 terms. -/
def A047743 (n : ℕ) : ℤ :=
  A047743.P3026413750480478684.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1685 terms. -/
def A047743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047744.P12755964723356844168

`round(∑[1/log2(n+2)])`
-/

namespace A047744.P12755964723356844168
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 / Real.logb 2 (n + 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A047744.P12755964723356844168

noncomputable section

/-- A047744: A discrete analog of Li(n): round ( Sum_{k=2..n} 1/log_2 (k) ).

Offset 2, canonical program `A047744.P12755964723356844168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1687 terms. -/
def A047744 (n : ℕ) : ℤ :=
  A047744.P12755964723356844168.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1687 terms. -/
def A047744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047746.P17922380256769330309

`floor(∑[log2(10)/log2(n+2)])`
-/

namespace A047746.P17922380256769330309
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (10 : ℝ) / Real.logb 2 (n + 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A047746.P17922380256769330309

noncomputable section

/-- A047746: A discrete analog of Li(n): floor ( Sum_{k=2..n} 1/log_10 (k) ).

Offset 2, canonical program `A047746.P17922380256769330309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1607 terms. -/
def A047746 (n : ℕ) : ℤ :=
  A047746.P17922380256769330309.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1607 terms. -/
def A047746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047747.P1006680452910214710

`round(∑[log2(10)/log2(n+2)])`
-/

namespace A047747.P1006680452910214710
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (10 : ℝ) / Real.logb 2 (n + 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A047747.P1006680452910214710

noncomputable section

/-- A047747: A discrete analog of Li(n): round ( Sum_{k=2..n} 1/log_10 (k) ).

Offset 2, canonical program `A047747.P1006680452910214710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1640 terms. -/
def A047747 (n : ℕ) : ℤ :=
  A047747.P1006680452910214710.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1640 terms. -/
def A047747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047748.P9629679660432266307

`ceil(∑[log2(10)/log2(n+2)])`
-/

namespace A047748.P9629679660432266307
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (10 : ℝ) / Real.logb 2 (n + 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A047748.P9629679660432266307

noncomputable section

/-- A047748: A discrete analog of Li(n): ceiling(Sum_{k=2..n} 1/log_10 (k)).

Offset 2, canonical program `A047748.P9629679660432266307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1637 terms. -/
def A047748 (n : ℕ) : ℤ :=
  A047748.P9629679660432266307.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1637 terms. -/
def A047748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047789.P506192566993782917

`3^val(2*n+1, 3)^a(n-1)` with `a(0)=2`
-/

namespace A047789.P506192566993782917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  3 ^ SequenceMachineLib.valuation (2 * n + 1) 3 ^ a (n - 1)

end

end A047789.P506192566993782917

noncomputable section

/-- A047789: Denominators of Glaisher's I-numbers.

Offset 0, canonical program `A047789.P506192566993782917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047789 (n : ℕ) : ℤ :=
  (A047789.P506192566993782917.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047872.P8992249102371300441

`floor((n+1)*(2*n+1)/(2*π²))`
-/

namespace A047872.P8992249102371300441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * ((2 * n + 1 : ℝ) / (2 * Real.pi ^ 2))⌋

end

end A047872.P8992249102371300441

noncomputable section

/-- A047872: a(n) = floor(abs(B(2*n + 2)/B(2*n))) where B(n) is the n-th Bernoulli number.

Offset 0, canonical program `A047872.P8992249102371300441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047872 (n : ℕ) : ℤ :=
  A047872.P8992249102371300441.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047925.P9488083209889187957

`5*comp[ceil(ϕ*n)]-2*n+3`
-/

namespace A047925.P9488083209889187957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (2 * n : ℤ) + 3

end

end A047925.P9488083209889187957

noncomputable section

/-- A047925: 3rd column of array in A038150.

Offset 0, canonical program `A047925.P9488083209889187957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047925 (n : ℕ) : ℤ :=
  A047925.P9488083209889187957.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047925.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047931.P10684447278847287927

`3-Δ[ceil(2*n*sqrt(6/(2*n+1)))]`
-/

namespace A047931.P10684447278847287927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℝ) * Real.sqrt (6 / (2 * n + 1 : ℚ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (f1 (n + 1) - f1 n)

end

end A047931.P10684447278847287927

noncomputable section

/-- A047931: Number of new penny-penny contacts when putting pennies on a table following a spiral pattern.

Offset 1, canonical program `A047931.P10684447278847287927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047931 (n : ℕ) : ℤ :=
  A047931.P10684447278847287927.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047992.P2624967960334565985

`a(n-1)+a(n-2)` with `a(0)=2, a(1)=5, a(2)=10, a(3)=16`
-/

namespace A047992.P2624967960334565985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 10, 16] fun n a =>
  a (n - 1) + a (n - 2)

end

end A047992.P2624967960334565985

noncomputable section

/-- A047992: Number of distinct permutations generated by shuffling n cards with "clump size" <= 2.

Offset 2, canonical program `A047992.P2624967960334565985`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A047992 (n : ℕ) : ℤ :=
  (A047992.P2624967960334565985.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A047992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048005.P957266765891189045

`C(n+1, floor(n/3))-1`
-/

namespace A048005.P957266765891189045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) ⌊(n : ℚ) / 3⌋.toNat : ℤ) - 1

end

end A048005.P957266765891189045

noncomputable section

/-- A048005: Number of nonempty subsets of {1,2,...,n} in which exactly 1/2 of the elements are <= (n-1)/3.

Offset 1, canonical program `A048005.P957266765891189045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A048005 (n : ℕ) : ℤ :=
  A048005.P957266765891189045.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A048005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048016.P1288274029840204420

`C(n+1, ceil((abs(1-n)-2)/3))-1`
-/

namespace A048016.P1288274029840204420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) ⌈(|1 - (n : ℤ)| - 2 : ℚ) / 3⌉.toNat : ℤ) - 1

end

end A048016.P1288274029840204420

noncomputable section

/-- A048016: Number of nonempty subsets of {1,2,...,n} in which exactly 1/2 of the elements are <= (n-2)/3.

Offset 1, canonical program `A048016.P1288274029840204420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A048016 (n : ℕ) : ℤ :=
  A048016.P1288274029840204420.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A048016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048038.P6901780127018906009

`C(n+1, ceil(n/3))-1`
-/

namespace A048038.P6901780127018906009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) ⌈(n : ℚ) / 3⌉.toNat : ℤ) - 1

end

end A048038.P6901780127018906009

noncomputable section

/-- A048038: Number of nonempty subsets of {1,2,...,n} in which exactly 1/2 of the elements are <= (n+1)/3.

Offset 1, canonical program `A048038.P6901780127018906009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. -/
def A048038 (n : ℕ) : ℤ :=
  A048038.P6901780127018906009.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. -/
def A048038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048060.P14837841102375301170

`C(n+1, ∑[char[2*n+5]])-1`
-/

namespace A048060.P14837841102375301170
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 1

end

end A048060.P14837841102375301170

noncomputable section

/-- A048060: Number of nonempty subsets of {1,2,...,n} in which exactly 1/2 of the elements are <= (n-4)/2.

Offset 1, canonical program `A048060.P14837841102375301170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. -/
def A048060 (n : ℕ) : ℤ :=
  A048060.P14837841102375301170.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. -/
def A048060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048082.P8930426167496442311

`C(n+1, ceil((n+2)/3))-1`
-/

namespace A048082.P8930426167496442311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) ⌈(n + 2 : ℚ) / 3⌉.toNat : ℤ) - 1

end

end A048082.P8930426167496442311

noncomputable section

/-- A048082: Number of nonempty subsets of {1,2,...,n} in which exactly 1/2 of the elements are <= (n+3)/3.

Offset 1, canonical program `A048082.P8930426167496442311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. -/
def A048082 (n : ℕ) : ℤ :=
  A048082.P8930426167496442311.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. -/
def A048082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048093.P16359371054396509096

`C(n+1, floor(sqrt(n+1)))-1`
-/

namespace A048093.P16359371054396509096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) (Nat.sqrt (n + 1)) : ℤ) - 1

end

end A048093.P16359371054396509096

noncomputable section

/-- A048093: Number of nonempty subsets of {1,2,...,n} in which exactly 1/2 of the elements are <= sqrt(n).

Offset 1, canonical program `A048093.P16359371054396509096`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2303 terms. -/
def A048093 (n : ℕ) : ℤ :=
  A048093.P16359371054396509096.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2303 terms. -/
def A048093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048250.P17960441032552816313

`∏{p}[n+1, #+1]`
-/

namespace A048250.P17960441032552816313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (p + 1)

end

end A048250.P17960441032552816313

noncomputable section

/-- A048250: Sum of the squarefree divisors of n.

Offset 1, canonical program `A048250.P17960441032552816313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048250 (n : ℕ) : ℤ :=
  (A048250.P17960441032552816313.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048328.P17401006693703148193

`gcd(2, n)+3*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A048328.P17401006693703148193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.gcd 2 n + 3 * a (n - 2)

end

end A048328.P17401006693703148193

noncomputable section

/-- A048328: Numbers that are repdigits in base 3.

Offset 0, canonical program `A048328.P17401006693703148193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A048328 (n : ℕ) : ℤ :=
  (A048328.P17401006693703148193.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A048328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048330.P12052110425305804256

`6*a(n-4)-5*a(n-8)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=6, a(6)=12, a(7)=18`
-/

namespace A048330.P12052110425305804256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 4, 6, 12, 18] fun n a =>
  6 * a (n - 4) - 5 * a (n - 8)

end

end A048330.P12052110425305804256

noncomputable section

/-- A048330: Numbers that are repdigits in base 5.

Offset 0, canonical program `A048330.P12052110425305804256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 572 terms. -/
def A048330 (n : ℕ) : ℤ :=
  A048330.P12052110425305804256.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 572 terms. -/
def A048330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048331.P13582580304007175991

`7*a(n-5)-6*a(n-10)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=7, a(7)=14, a(8)=21, a(9)=28`
-/

namespace A048331.P13582580304007175991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 4, 5, 7, 14, 21, 28] fun n a =>
  7 * a (n - 5) - 6 * a (n - 10)

end

end A048331.P13582580304007175991

noncomputable section

/-- A048331: Numbers that are repdigits in base 6.

Offset 0, canonical program `A048331.P13582580304007175991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 642 terms. -/
def A048331 (n : ℕ) : ℤ :=
  A048331.P13582580304007175991.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 642 terms. -/
def A048331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048641.P3161406874688888869

`∑[xor(n, floor(n/2))]`
-/

namespace A048641.P3161406874688888869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048641.P3161406874688888869

noncomputable section

/-- A048641: Partial sums of A003188 (Gray code).

Offset 1, canonical program `A048641.P3161406874688888869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048641 (n : ℕ) : ℤ :=
  A048641.P3161406874688888869.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048644.P13781728292975826031

`∑[xor(n, floor(n/2))-n]`
-/

namespace A048644.P13781728292975826031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048644.P13781728292975826031

noncomputable section

/-- A048644: Differences between partial sums of Gray code (A048641) and triangular numbers (A000217).

Offset 0, canonical program `A048644.P13781728292975826031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048644 (n : ℕ) : ℤ :=
  A048644.P13781728292975826031.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048647.P4624465745581970192

`xor(n, 2*n)+2*(floor(n/2)-a(floor(n/2)))` with `a(0)=0`
-/

namespace A048647.P4624465745581970192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.xor n (2 * n) : ℤ) + 2 * (⌊(n : ℚ) / 2⌋ - a ⌊(n : ℚ) / 2⌋.toNat)

end

end A048647.P4624465745581970192

noncomputable section

/-- A048647: Write n in base 4, then replace each digit '1' with '3' and vice versa and convert back to decimal.

Offset 0, canonical program `A048647.P4624465745581970192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048647 (n : ℕ) : ℤ :=
  A048647.P4624465745581970192.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048647.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048671.P13894024667585871165

`gcd(n+1, ∏{p}[n+1, (n+1)/#])`
-/

namespace A048671.P13894024667585871165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ)))

end

end A048671.P13894024667585871165

noncomputable section

/-- A048671: a(n) is the least common multiple of the proper divisors of n.

Offset 1, canonical program `A048671.P13894024667585871165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048671 (n : ℕ) : ℤ :=
  (A048671.P13894024667585871165.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048711.P11707822415409339869

`xor(4*a(n-1), a(n-1))` with `a(0)=7`
-/

namespace A048711.P11707822415409339869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  Nat.xor (4 * a (n - 1)) (a (n - 1))

end

end A048711.P11707822415409339869

noncomputable section

/-- A048711: 2nd row of Family 1 "90 X 150 array": generations 0 .. n of Rule 90 starting from seed pattern 7.

Offset 0, canonical program `A048711.P11707822415409339869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A048711 (n : ℕ) : ℤ :=
  (A048711.P11707822415409339869.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A048711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048712.P8827442495514705763

`xor(2*xor(2*a(n-1), a(n-1)), a(n-1))` with `a(0)=5`
-/

namespace A048712.P8827442495514705763
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  Nat.xor (2 * Nat.xor (2 * a (n - 1)) (a (n - 1))) (a (n - 1))

end

end A048712.P8827442495514705763

noncomputable section

/-- A048712: 2nd column of Family 1 "90 X 150 array": generations 0 .. n of Rule 150 starting from seed pattern 5.

Offset 0, canonical program `A048712.P8827442495514705763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A048712 (n : ℕ) : ℤ :=
  (A048712.P8827442495514705763.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A048712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048713.P7258064996182236437

`xor(4*a(n-1), a(n-1))` with `a(0)=21`
-/

namespace A048713.P7258064996182236437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [21] fun n a =>
  Nat.xor (4 * a (n - 1)) (a (n - 1))

end

end A048713.P7258064996182236437

noncomputable section

/-- A048713: 3rd row of Family 1 "90 x 150 array": generations 0 .. n of Rule 90 starting from seed pattern 21.

Offset 0, canonical program `A048713.P7258064996182236437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A048713 (n : ℕ) : ℤ :=
  (A048713.P7258064996182236437.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A048713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048716.P7954742914338090828

`record[n-and(n, 4*n)]`
-/

namespace A048716.P7954742914338090828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land n (4 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048716.P7954742914338090828

noncomputable section

/-- A048716: Numbers k such that (k AND 4*k) = 0, where AND is bitwise-and.

Offset 1, canonical program `A048716.P7954742914338090828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4454 terms. -/
def A048716 (n : ℕ) : ℤ :=
  A048716.P7954742914338090828.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4454 terms. -/
def A048716.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048727.P3236370101091825872

`xor(n, 2*xor(n, 2*n))`
-/

namespace A048727.P3236370101091825872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * Nat.xor n (2 * n))

end

end A048727.P3236370101091825872

noncomputable section

/-- A048727: a(n) = Xmult(n,7) or rule150(n,1).

Offset 0, canonical program `A048727.P3236370101091825872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048727 (n : ℕ) : ℤ :=
  (A048727.P3236370101091825872.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048729.P10088475037815274904

`2*and(n, 4*n)`
-/

namespace A048729.P10088475037815274904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land n (4 * n)

end

end A048729.P10088475037815274904

noncomputable section

/-- A048729: Differences between A008587 (multiples of 5) and A048725.

Offset 0, canonical program `A048729.P10088475037815274904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048729 (n : ℕ) : ℤ :=
  (A048729.P10088475037815274904.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048740.P16402438560819274415

`∏{d}[lt[n+1, ∏{d}[n, #]], #]`
-/

namespace A048740.P16402438560819274415
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A048740.P16402438560819274415

noncomputable section

/-- A048740: Product of divisors of n-th composite number.

Offset 1, canonical program `A048740.P16402438560819274415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4363 terms. -/
def A048740 (n : ℕ) : ℤ :=
  (A048740.P16402438560819274415.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4363 terms. -/
def A048740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048763.P3755626699319062032

`∑[char[n^3+1]]^3`
-/

namespace A048763.P3755626699319062032
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A048763.P3755626699319062032

noncomputable section

/-- A048763: Smallest cube >= n.

Offset 0, canonical program `A048763.P3755626699319062032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048763 (n : ℕ) : ℤ :=
  (A048763.P3755626699319062032.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048764.P13822497594214245123

`lcm(floor((n+1)/a(n-1))!, a(n-1))` with `a(0)=1`
-/

namespace A048764.P13822497594214245123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (Nat.factorial ⌊(n + 1 : ℚ) / (a (n - 1) : ℚ)⌋.toNat) (a (n - 1))

end

end A048764.P13822497594214245123

noncomputable section

/-- A048764: Largest factorial <= n.

Offset 1, canonical program `A048764.P13822497594214245123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048764 (n : ℕ) : ℤ :=
  (A048764.P13822497594214245123.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048988.P1513202157722798903

`p?[n²+58]`
-/

namespace A048988.P1513202157722798903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 58

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A048988.P1513202157722798903

noncomputable section

/-- A048988: Primes of the form 4*k^2 + 4*k + 59.

Offset 1, canonical program `A048988.P1513202157722798903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. -/
def A048988 (n : ℕ) : ℤ :=
  (A048988.P1513202157722798903.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. -/
def A048988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049008.P1378184560969421701

`a(n-3)+2` with `a(0)=1, a(1)=4, a(2)=3, a(3)=5, a(4)=5, a(5)=6`
-/

namespace A049008.P1378184560969421701
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 3, 5, 5, 6] fun n a =>
  a (n - 3) + 2

end

end A049008.P1378184560969421701

noncomputable section

/-- A049008: Greatest possible number of right angles that can occur as interior angles in a planar n-gon.

Offset 3, canonical program `A049008.P1378184560969421701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049008 (n : ℕ) : ℤ :=
  (A049008.P1378184560969421701.a (n - 3) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049039.P18044230875529564358

`∑[gcd(2, ∏{p}[n+1, #+1])]`
-/

namespace A049039.P18044230875529564358
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∏ p ∈ Nat.primeFactors (f2 n), (p + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049039.P18044230875529564358

noncomputable section

/-- A049039: Geometric Connell sequence: 1 odd, 2 even, 4 odd, 8 even, ...

Offset 1, canonical program `A049039.P18044230875529564358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049039 (n : ℕ) : ℤ :=
  (A049039.P18044230875529564358.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049068.P11448552622999767311

`lt[0, n%floor(sqrt(n+1))]`
-/

namespace A049068.P11448552622999767311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.sqrt (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A049068.P11448552622999767311

noncomputable section

/-- A049068: Complement of quarter-squares (A002620).

Offset 1, canonical program `A049068.P11448552622999767311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049068 (n : ℕ) : ℤ :=
  (A049068.P11448552622999767311.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049206.P2677798893032348167

`n-a(n-2)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A049206.P2677798893032348167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  (n : ℤ) - a (n - 2)

end

end A049206.P2677798893032348167

noncomputable section

/-- A049206: Maximum mean distance between cards during perfect faro shuffles, with cut, to return to original order in A024222.

Offset 1, canonical program `A049206.P2677798893032348167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049206 (n : ℕ) : ℤ :=
  A049206.P2677798893032348167.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049240.P1106996994179367582

`1-Δ[floor(sqrt(n))]`
-/

namespace A049240.P1106996994179367582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A049240.P1106996994179367582

noncomputable section

/-- A049240: Smallest nonnegative value taken on by x^2 - n*y^2 for an infinite number of integer pairs (x, y).

Offset 1, canonical program `A049240.P1106996994179367582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049240 (n : ℕ) : ℤ :=
  A049240.P1106996994179367582.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049240.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049341.P4988293796697185815

`dr(a(n-1)+a(n-2))` with `a(0)=3, a(1)=6`
-/

namespace A049341.P4988293796697185815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 6] fun n a =>
  SequenceMachineLib.digitalRoot (a (n - 1) + a (n - 2) : ℤ)

end

end A049341.P4988293796697185815

noncomputable section

/-- A049341: a(n+1) = sum of digits of a(n) + a(n-1).

Offset 0, canonical program `A049341.P4988293796697185815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049341 (n : ℕ) : ℤ :=
  (A049341.P4988293796697185815.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049348.P18335941293234168601

`a(n-1)+3*(a(n-2)+a(n-3))` with `a(0)=1, a(1)=4, a(2)=10`
-/

namespace A049348.P18335941293234168601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 10] fun n a =>
  a (n - 1) + 3 * (a (n - 2) + a (n - 3))

end

end A049348.P18335941293234168601

noncomputable section

/-- A049348: Row sums of triangle A049324.

Offset 1, canonical program `A049348.P18335941293234168601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A049348 (n : ℕ) : ℤ :=
  (A049348.P18335941293234168601.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A049348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049481.P10792709172836752510

`p?[p?[2*n+1]-30]`
-/

namespace A049481.P10792709172836752510
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049481.P10792709172836752510

noncomputable section

/-- A049481: Primes p such that p + 30 is also prime.

Offset 1, canonical program `A049481.P10792709172836752510`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3449 terms. -/
def A049481 (n : ℕ) : ℤ :=
  A049481.P10792709172836752510.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3449 terms. -/
def A049481.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049489.P12593003460184970767

`p?[p?[a(n-1)+3]-32]` with `a(0)=31`
-/

namespace A049489.P12593003460184970767
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [31] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049489.P12593003460184970767

noncomputable section

/-- A049489: Primes p such that p + 32 is also prime.

Offset 1, canonical program `A049489.P12593003460184970767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2355 terms. -/
def A049489 (n : ℕ) : ℤ :=
  A049489.P12593003460184970767.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2355 terms. -/
def A049489.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049490.P11331321976391377834

`p?[p?[2*n+1]-64]`
-/

namespace A049490.P11331321976391377834
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 64

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049490.P11331321976391377834

noncomputable section

/-- A049490: a(n) and a(n)+64 both prime.

Offset 1, canonical program `A049490.P11331321976391377834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1301 terms. -/
def A049490 (n : ℕ) : ℤ :=
  A049490.P11331321976391377834.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1301 terms. -/
def A049490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049625.P9602203195490884813

`comp[4*n]+ceil(abs((1-n)/2))`
-/

namespace A049625.P9602203195490884813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉

end

end A049625.P9602203195490884813

noncomputable section

/-- A049625: Congruent to 1, 2, 4, 6, 8 or 9 mod 11, but with 2 instead of 1.

Offset 0, canonical program `A049625.P9602203195490884813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049625 (n : ℕ) : ℤ :=
  A049625.P9602203195490884813.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049626.P8816477011414561251

`a(n-2)-and(1, a(n-1))+5` with `a(0)=3, a(1)=3, a(2)=6`
-/

namespace A049626.P8816477011414561251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 3, 6] fun n a =>
  a (n - 2) - Int.land 1 (a (n - 1)) + 5

end

end A049626.P8816477011414561251

noncomputable section

/-- A049626: a(n) = T(n,4), array T as in A049615.

Offset 0, canonical program `A049626.P8816477011414561251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049626 (n : ℕ) : ℤ :=
  A049626.P8816477011414561251.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049636.P15875505231310437759

`record[5-gcd(3, n)+n]`
-/

namespace A049636.P15875505231310437759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (Nat.gcd 3 n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049636.P15875505231310437759

noncomputable section

/-- A049636: Congruent to 0 or 2 mod 3, but not equal to 0 or 3.

Offset 0, canonical program `A049636.P15875505231310437759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049636 (n : ℕ) : ℤ :=
  A049636.P15875505231310437759.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049637.P13520611787667614773

`Δ[round((4*n+3)²/12)]-ceil(abs((1-n)/2))`
-/

namespace A049637.P13520611787667614773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((4 * n + 3) ^ 2 : ℚ) / 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉

end

end A049637.P13520611787667614773

noncomputable section

/-- A049637: Congruent to 2, 3, 6, 8, 10 or 12 mod 13, but not equal to 3.

Offset 0, canonical program `A049637.P13520611787667614773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049637 (n : ℕ) : ℤ :=
  A049637.P13520611787667614773.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049638.P13946218056775625831

`Δ[round((4*n+3)²/12)+ceil(abs((1-n)/2))]`
-/

namespace A049638.P13946218056775625831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((4 * n + 3) ^ 2 : ℚ) / 12) + ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049638.P13946218056775625831

noncomputable section

/-- A049638: a(n) = T(n,4), array T as in A049627.

Offset 0, canonical program `A049638.P13946218056775625831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049638 (n : ℕ) : ℤ :=
  A049638.P13946218056775625831.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049766.P2006108372435839368

`∑[3*n+1-∑{d}[n+1, #]]`
-/

namespace A049766.P2006108372435839368
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049766.P2006108372435839368

noncomputable section

/-- A049766: a(n) = Sum_{k=1..n} T(n,k), array T as in A049765.

Offset 1, canonical program `A049766.P2006108372435839368`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049766 (n : ℕ) : ℤ :=
  A049766.P2006108372435839368.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049778.P3744806661604496967

`∑[∑[n²%Δ[n²]]]+n+1`
-/

namespace A049778.P3744806661604496967
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A049778.P3744806661604496967

noncomputable section

/-- A049778: a(n) = Sum_{k=1..floor((n+1)/2)} T(n,2k-1), array T as in A049777.

Offset 1, canonical program `A049778.P3744806661604496967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049778 (n : ℕ) : ℤ :=
  A049778.P3744806661604496967.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049779.P6245626203980019557

`a(n-1)+(n+2)*(floor(n/2)+1)` with `a(0)=2`
-/

namespace A049779.P6245626203980019557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (n + 2 : ℤ) * (⌊(n : ℚ) / 2⌋ + 1)

end

end A049779.P6245626203980019557

noncomputable section

/-- A049779: a(n) = Sum_{k=1..floor(n/2)} T(n, 2k), array T as in A049777.

Offset 2, canonical program `A049779.P6245626203980019557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049779 (n : ℕ) : ℤ :=
  A049779.P6245626203980019557.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049802.P9042781882939997618

`∑[2*and(n, n+1)]%(n+1)`
-/

namespace A049802.P9042781882939997618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land n (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)

end

end A049802.P9042781882939997618

noncomputable section

/-- A049802: a(n) = n mod 2 + n mod 4 + ... + n mod 2^k, where 2^k <= n < 2^(k+1).

Offset 1, canonical program `A049802.P9042781882939997618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049802 (n : ℕ) : ℤ :=
  (A049802.P9042781882939997618.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050188.P12921321240761054487

`(n+3)*∑[ceil(n/3)]`
-/

namespace A050188.P12921321240761054487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A050188.P12921321240761054487

noncomputable section

/-- A050188: T(n,3), array T as in A050186; a count of aperiodic binary words.

Offset 3, canonical program `A050188.P12921321240761054487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050188 (n : ℕ) : ℤ :=
  A050188.P12921321240761054487.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050189.P20956315672164131

`(n+4)*∑[∑[∑[n]%(n+1)]]`
-/

namespace A050189.P20956315672164131
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) % (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 4) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A050189.P20956315672164131

noncomputable section

/-- A050189: T(n,4), array T as in A050186; a count of aperiodic binary words.

Offset 4, canonical program `A050189.P20956315672164131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050189 (n : ℕ) : ℤ :=
  (A050189.P20956315672164131.a (n - 4) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050190.P11290897294037018702

`(n+5)*floor(C(n+4, 4)/5)`
-/

namespace A050190.P11290897294037018702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℤ) * ⌊(Nat.choose (n + 4) 4 : ℚ) / 5⌋

end

end A050190.P11290897294037018702

noncomputable section

/-- A050190: T(n,5), array T as in A050186; a count of aperiodic binary words.

Offset 5, canonical program `A050190.P11290897294037018702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050190 (n : ℕ) : ℤ :=
  A050190.P11290897294037018702.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050242.P11941910926680596350

`floor((sqrt(ϕ)+ϕ)^n)`
-/

namespace A050242.P11941910926680596350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt Real.goldenRatio + Real.goldenRatio) ^ n⌋

end

end A050242.P11941910926680596350

noncomputable section

/-- A050242: [ (phi + sqrt(phi))^n ], phi = (1+sqrt(5))/2.

Offset 0, canonical program `A050242.P11941910926680596350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A050242 (n : ℕ) : ℤ :=
  A050242.P11941910926680596350.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A050242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050294.P9767792087608206190

`∑[(val(n+1, 3)+1)%2]`
-/

namespace A050294.P9767792087608206190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 3 + 1) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050294.P9767792087608206190

noncomputable section

/-- A050294: Maximum cardinality of a 3-fold-free subset of {1, 2, ..., n}.

Offset 1, canonical program `A050294.P9767792087608206190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050294 (n : ℕ) : ℤ :=
  (A050294.P9767792087608206190.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050403.P7882674557460654616

`∑[∑[∑[∑[∑[7*n+1]]]]]`
-/

namespace A050403.P7882674557460654616
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050403.P7882674557460654616

noncomputable section

/-- A050403: Partial sums of A051877.

Offset 0, canonical program `A050403.P7882674557460654616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050403 (n : ℕ) : ℤ :=
  (A050403.P7882674557460654616.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050404.P17342318931179016649

`∑[∑[∑[∑[∑[8*n+1]]]]]`
-/

namespace A050404.P17342318931179016649
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050404.P17342318931179016649

noncomputable section

/-- A050404: Partial sums of A051878.

Offset 0, canonical program `A050404.P17342318931179016649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050404 (n : ℕ) : ℤ :=
  (A050404.P17342318931179016649.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050405.P4522873633668735968

`∑[∑[∑[∑[∑[9*n+1]]]]]`
-/

namespace A050405.P4522873633668735968
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050405.P4522873633668735968

noncomputable section

/-- A050405: Partial sums of A051879.

Offset 0, canonical program `A050405.P4522873633668735968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050405 (n : ℕ) : ℤ :=
  (A050405.P4522873633668735968.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050406.P12849450832822130455

`∑[∑[∑[∑[∑[10*n+1]]]]]`
-/

namespace A050406.P12849450832822130455
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050406.P12849450832822130455

noncomputable section

/-- A050406: Partial sums of A051880.

Offset 0, canonical program `A050406.P12849450832822130455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050406 (n : ℕ) : ℤ :=
  (A050406.P12849450832822130455.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050442.P1324178525131967845

`∑[n*(lcm(2, n+2)-2)]`
-/

namespace A050442.P1324178525131967845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((Nat.lcm 2 (n + 2) : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050442.P1324178525131967845

noncomputable section

/-- A050442: Octahedral torus number: a(n) = n^2 + 2*(Sum_{k=1..n-1} k^2) - 2*(floor((n+1)/2)^2 + 2*(Sum_{k=1..floor((n+1)/2)-1} k^2)) + (1 - (-1)^n)/2.

Offset 1, canonical program `A050442.P1324178525131967845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050442 (n : ℕ) : ℤ :=
  A050442.P1324178525131967845.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050483.P13443559598016187382

`∑[∑[∑[∑[∑[∑[4*n+1]]]]]]`
-/

namespace A050483.P13443559598016187382
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050483.P13443559598016187382

noncomputable section

/-- A050483: Partial sums of A051947.

Offset 0, canonical program `A050483.P13443559598016187382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050483 (n : ℕ) : ℤ :=
  (A050483.P13443559598016187382.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050483.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050484.P7260589205281655552

`∑[∑[(n+1)*C(n+4, 4)]]`
-/

namespace A050484.P7260589205281655552
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose (n + 4) 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050484.P7260589205281655552

noncomputable section

/-- A050484: Partial sums of A051946.

Offset 0, canonical program `A050484.P7260589205281655552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050484 (n : ℕ) : ℤ :=
  (A050484.P7260589205281655552.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050484.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050486.P2737010954541769803

`∑[∑[∑[∑[∑[(n+1)²]]]]]`
-/

namespace A050486.P2737010954541769803
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050486.P2737010954541769803

noncomputable section

/-- A050486: a(n) = binomial(n+6,6)*(2n+7)/7.

Offset 0, canonical program `A050486.P2737010954541769803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050486 (n : ℕ) : ℤ :=
  (A050486.P2737010954541769803.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050487.P8803616543785166222

`∑[3%(and(n, n+1)+2)]`
-/

namespace A050487.P8803616543785166222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 % (Nat.land n (n + 1) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050487.P8803616543785166222

noncomputable section

/-- A050487: Geometric Connell sequence: start with 1; then next two numbers == 2 mod 3; next four == 3 mod 3; next eight == 1 mod 3; etc.

Offset 1, canonical program `A050487.P8803616543785166222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050487 (n : ℕ) : ℤ :=
  (A050487.P8803616543785166222.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050487.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050494.P16829671432429543353

`∑[∑[∑[∑[∑[∑[3*n+1]]]]]]`
-/

namespace A050494.P16829671432429543353
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050494.P16829671432429543353

noncomputable section

/-- A050494: Partial sums of A051923.

Offset 0, canonical program `A050494.P16829671432429543353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050494 (n : ℕ) : ℤ :=
  (A050494.P16829671432429543353.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050499.P8905183548474590780

`round((n+2)/log(n+2))`
-/

namespace A050499.P8905183548474590780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℝ) / Real.log (n + 2 : ℝ))

end

end A050499.P8905183548474590780

noncomputable section

/-- A050499: Nearest integer to n/log(n).

Offset 2, canonical program `A050499.P8905183548474590780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050499 (n : ℕ) : ℤ :=
  A050499.P8905183548474590780.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050500.P1188964391671252454

`floor((n+2)/log(n+2))`
-/

namespace A050500.P1188964391671252454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) / Real.log (n + 2 : ℝ)⌋

end

end A050500.P1188964391671252454

noncomputable section

/-- A050500: Integer part of n/log(n).

Offset 2, canonical program `A050500.P1188964391671252454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050500 (n : ℕ) : ℤ :=
  A050500.P1188964391671252454.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050502.P8059689843118801007

`ceil((n+1)*log(n+1))`
-/

namespace A050502.P8059689843118801007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.log (n + 1 : ℝ)⌉

end

end A050502.P8059689843118801007

noncomputable section

/-- A050502: a(n) = ceiling(n*log(n)).

Offset 1, canonical program `A050502.P8059689843118801007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050502 (n : ℕ) : ℤ :=
  A050502.P8059689843118801007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050503.P17265030542435346836

`round((n+1)*log(n+1))`
-/

namespace A050503.P17265030542435346836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) * Real.log (n + 1 : ℝ))

end

end A050503.P17265030542435346836

noncomputable section

/-- A050503: Nearest integer to n*log(n).

Offset 1, canonical program `A050503.P17265030542435346836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050503 (n : ℕ) : ℤ :=
  A050503.P17265030542435346836.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050503.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050514.P14931833447149312849

`--52%-(n+1)`
-/

namespace A050514.P14931833447149312849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-52) (-(n + 1 : ℤ))

end

end A050514.P14931833447149312849

noncomputable section

/-- A050514: Cards left over after dealing evenly to n people.

Offset 1, canonical program `A050514.P14931833447149312849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050514 (n : ℕ) : ℤ :=
  A050514.P14931833447149312849.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050604.P4753870057173286659

`val(lcm(n+3, ∑[n+1]), 2)+1`
-/

namespace A050604.P4753870057173286659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.lcm (n + 3) (∑ j ∈ Finset.range (n + 1), f1 j)) 2 + 1

end

end A050604.P4753870057173286659

noncomputable section

/-- A050604: Column 3 of A050600: a(n) = add1c(n,3).

Offset 0, canonical program `A050604.P4753870057173286659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050604 (n : ℕ) : ℤ :=
  (A050604.P4753870057173286659.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050606.P9529595328761019641

`val(lcm(n+3, ∑[n+1]), 2)`
-/

namespace A050606.P9529595328761019641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.lcm (n + 3) (∑ j ∈ Finset.range (n + 1), f1 j)) 2

end

end A050606.P9529595328761019641

noncomputable section

/-- A050606: Column/row 3 of A050602: a(n) = add3c(n,3).

Offset 0, canonical program `A050606.P9529595328761019641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050606 (n : ℕ) : ℤ :=
  (A050606.P9529595328761019641.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050611.P12224551982442702682

`round(ϕ*a(n-1))+2*a(and(n, n-1))-1` with `a(0)=1`
-/

namespace A050611.P12224551982442702682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ)) + 2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat - 1

end

end A050611.P12224551982442702682

noncomputable section

/-- A050611: Sum_{i=0..n} (C(n,i) mod 2)*Fibonacci(2i+1) = FL(n+1)Product(L(2^i)^bit(n,i),i=0..).

Offset 0, canonical program `A050611.P12224551982442702682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A050611 (n : ℕ) : ℤ :=
  A050611.P12224551982442702682.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A050611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050612.P13319731661089577793

`round(ϕ*a(n-1))+2*a(and(n, n-1))` with `a(0)=2`
-/

namespace A050612.P13319731661089577793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ)) + 2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

end

end A050612.P13319731661089577793

noncomputable section

/-- A050612: Sum_{i=0..n} (C(n,i) mod 2)*Fibonacci(2i+3) = FL(n+3)Product(L(2^i)^bit(n,i),i=0..).

Offset 0, canonical program `A050612.P13319731661089577793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A050612 (n : ℕ) : ℤ :=
  A050612.P13319731661089577793.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A050612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050624.P14631312703069186673

`ceil((10/3)^n/3)`
-/

namespace A050624.P14631312703069186673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((10 : ℚ) / 3) ^ n / 3⌉

end

end A050624.P14631312703069186673

noncomputable section

/-- A050624: Let b(n) = A050623(n) = smallest n-digit number divisible by 3^n; sequence gives b(n)/3^n.

Offset 1, canonical program `A050624.P14631312703069186673`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 192 terms. -/
def A050624 (n : ℕ) : ℤ :=
  A050624.P14631312703069186673.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 192 terms. -/
def A050624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050982.P8380712475909531974

`5^n*C(n+5, 5)`
-/

namespace A050982.P8380712475909531974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n * Nat.choose (n + 5) 5

end

end A050982.P8380712475909531974

noncomputable section

/-- A050982: 5-idempotent numbers.

Offset 5, canonical program `A050982.P8380712475909531974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A050982 (n : ℕ) : ℤ :=
  (A050982.P8380712475909531974.a (n - 5) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A050982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050988.P187999201815928781

`6^n*C(n+6, 6)`
-/

namespace A050988.P187999201815928781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n * Nat.choose (n + 6) 6

end

end A050988.P187999201815928781

noncomputable section

/-- A050988: 6-idempotent numbers.

Offset 6, canonical program `A050988.P187999201815928781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A050988 (n : ℕ) : ℤ :=
  (A050988.P187999201815928781.a (n - 6) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A050988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050989.P5102155973164446818

`7^n*C(n+7, 7)`
-/

namespace A050989.P5102155973164446818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n * Nat.choose (n + 7) 7

end

end A050989.P5102155973164446818

noncomputable section

/-- A050989: 7-idempotent numbers.

Offset 7, canonical program `A050989.P5102155973164446818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A050989 (n : ℕ) : ℤ :=
  (A050989.P5102155973164446818.a (n - 7) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A050989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050999.P9007860046011287886

`∑{d}[n+1, (#*#%2)²]`
-/

namespace A050999.P9007860046011287886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d * (d % 2)) ^ 2

end

end A050999.P9007860046011287886

noncomputable section

/-- A050999: Sum of squares of odd divisors of n.

Offset 1, canonical program `A050999.P9007860046011287886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050999 (n : ℕ) : ℤ :=
  (A050999.P9007860046011287886.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051027.P8980952969701484566

`∑{d}[∑{d}[n+1, #], #]`
-/

namespace A051027.P8980952969701484566
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A051027.P8980952969701484566

noncomputable section

/-- A051027: a(n) = sigma(sigma(n)) = sum of the divisors of the sum of the divisors of n.

Offset 1, canonical program `A051027.P8980952969701484566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051027 (n : ℕ) : ℤ :=
  (A051027.P8980952969701484566.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051027.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051065.P10336473871385333894

`(a(floor(n/3))+n)%2` with `a(0)=0`
-/

namespace A051065.P10336473871385333894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a ⌊(n : ℚ) / 3⌋.toNat + n) % 2

end

end A051065.P10336473871385333894

noncomputable section

/-- A051065: a(n) = A004128(n) mod 2.

Offset 0, canonical program `A051065.P10336473871385333894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051065 (n : ℕ) : ℤ :=
  (A051065.P10336473871385333894.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051066.P11180252852596779216

`∑[(a(floor(n/3))+n)%2]` with `a(0)=0`
-/

namespace A051066.P11180252852596779216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  (f1 ⌊(n : ℚ) / 3⌋.toNat + n) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051066.P11180252852596779216

noncomputable section

/-- A051066: Partial sums of A051065.

Offset 0, canonical program `A051066.P11180252852596779216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051066 (n : ℕ) : ℤ :=
  (A051066.P11180252852596779216.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051067.P7192697901553181401

`∑[a(floor(n/3))+n]%2` with `a(0)=0`
-/

namespace A051067.P7192697901553181401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 3⌋.toNat + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A051067.P7192697901553181401

noncomputable section

/-- A051067: A051066 read mod 2.

Offset 0, canonical program `A051067.P7192697901553181401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051067 (n : ℕ) : ℤ :=
  (A051067.P7192697901553181401.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051068.P4319521893724831295

`n-a(floor(n/3))` with `a(0)=0`
-/

namespace A051068.P4319521893724831295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - a ⌊(n : ℚ) / 3⌋.toNat

end

end A051068.P4319521893724831295

noncomputable section

/-- A051068: Partial sums of A014578.

Offset 0, canonical program `A051068.P4319521893724831295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051068 (n : ℕ) : ℤ :=
  A051068.P4319521893724831295.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051145.P8836576007479272300

`or(a(n-1)+a(n-2)+1, a(n-1))-a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A051145.P8836576007479272300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.lor (a (n - 1) + (a (n - 2) + 1)) (a (n - 1)) - a (n - 1)

end

end A051145.P8836576007479272300

noncomputable section

/-- A051145: a(0)=0, a(1)=1, a(n) = smallest number such that sequence b(n) = a(n) OR a(n+1) is strictly monotonically increasing.

Offset 0, canonical program `A051145.P8836576007479272300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051145 (n : ℕ) : ℤ :=
  A051145.P8836576007479272300.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051170.P4101775112649458788

`floor(C(n+4, 4)/5)`
-/

namespace A051170.P4101775112649458788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 4) 4 : ℚ) / 5⌋

end

end A051170.P4101775112649458788

noncomputable section

/-- A051170: a(n) = T(n,5), array T as in A051168; a count of Lyndon words; aperiodic necklaces with 5 black beads and n-5 white beads.

Offset 5, canonical program `A051170.P4101775112649458788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051170 (n : ℕ) : ℤ :=
  A051170.P4101775112649458788.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051172.P14175985054132711757

`floor(C(n+6, 6)/7)`
-/

namespace A051172.P14175985054132711757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 6) 6 : ℚ) / 7⌋

end

end A051172.P14175985054132711757

noncomputable section

/-- A051172: T(n,7), array T as in A051168; a count of Lyndon words; aperiodic necklaces with 7 black beads and n-7 white beads.

Offset 7, canonical program `A051172.P14175985054132711757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051172 (n : ℕ) : ℤ :=
  A051172.P14175985054132711757.a (n - 7)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051192.P6720372437080206536

`(n+7)*floor(C(n+6, 6)/7)`
-/

namespace A051192.P6720372437080206536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 7 : ℤ) * ⌊(Nat.choose (n + 6) 6 : ℚ) / 7⌋

end

end A051192.P6720372437080206536

noncomputable section

/-- A051192: T(n,7), array T as in A050186; a count of aperiodic binary words.

Offset 7, canonical program `A051192.P6720372437080206536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051192 (n : ℕ) : ℤ :=
  A051192.P6720372437080206536.a (n - 7)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051329.P314467348940777676

`(a(floor(n/3))+n%3)%4` with `a(0)=0`
-/

namespace A051329.P314467348940777676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a ⌊(n : ℚ) / 3⌋.toNat + n % 3) % 4

end

end A051329.P314467348940777676

noncomputable section

/-- A051329: A generalized Thue-Morse sequence.

Offset 0, canonical program `A051329.P314467348940777676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051329 (n : ℕ) : ℤ :=
  (A051329.P314467348940777676.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051336.P17076825953474021586

`∑[∑[∏{e}[n, #+1]]]`
-/

namespace A051336.P17076825953474021586
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051336.P17076825953474021586

noncomputable section

/-- A051336: Number of increasing arithmetic progressions in {1,2,3,...,n}, including trivial arithmetic progressions of lengths 1 and 2.

Offset 1, canonical program `A051336.P17076825953474021586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051336 (n : ℕ) : ℤ :=
  (A051336.P17076825953474021586.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051374.P18163615587992956020

`eq[1, (n+1)*char[∑{digits}[n², #]+n]+1]`
-/

namespace A051374.P18163615587992956020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f4 n)).map fun (x : ℕ) => x).sum + n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f3 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051374.P18163615587992956020

noncomputable section

/-- A051374: Numbers not of form n + sum of digits of n^2.

Offset 1, canonical program `A051374.P18163615587992956020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5872 terms. -/
def A051374 (n : ℕ) : ℤ :=
  (A051374.P18163615587992956020.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5872 terms. -/
def A051374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051415.P17794477136852744015

`eq[0, char[∑{digits}[n^3, #]+n]]`
-/

namespace A051415.P17794477136852744015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f4 n)).map fun (x : ℕ) => x).sum + n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051415.P17794477136852744015

noncomputable section

/-- A051415: Numbers not of form n + sum of digits of n^3.

Offset 1, canonical program `A051415.P17794477136852744015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3174 terms. -/
def A051415 (n : ℕ) : ℤ :=
  (A051415.P17794477136852744015.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3174 terms. -/
def A051415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051418.P2270532102950054821

`lcm((n+1)², a(n-1))` with `a(0)=1`
-/

namespace A051418.P2270532102950054821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm ((n + 1) ^ 2) (a (n - 1))

end

end A051418.P2270532102950054821

noncomputable section

/-- A051418: Square of LCM of {1, 2, ..., n}.

Offset 1, canonical program `A051418.P2270532102950054821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A051418 (n : ℕ) : ℤ :=
  (A051418.P2270532102950054821.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A051418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051422.P12732021136071216690

`round(1/sin(n+1))`
-/

namespace A051422.P12732021136071216690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / Real.sin (n + 1 : ℝ))

end

end A051422.P12732021136071216690

noncomputable section

/-- A051422: Nearest integer to cosecant(n).

Offset 1, canonical program `A051422.P12732021136071216690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051422 (n : ℕ) : ℤ :=
  A051422.P12732021136071216690.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051426.P1043521201891827558

`lcm(∑[4*n], a(n-1))` with `a(0)=2`
-/

namespace A051426.P1043521201891827558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (a (n - 1))

end

end A051426.P1043521201891827558

noncomputable section

/-- A051426: Least common multiple of {2, 4, 6, ..., 2n}.

Offset 1, canonical program `A051426.P1043521201891827558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A051426 (n : ℕ) : ℤ :=
  (A051426.P1043521201891827558.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A051426.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051462.P7473859783237056955

`Δ[n²]+∑[floor((2*n)²/3)]`
-/

namespace A051462.P7473859783237056955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n) ^ 2 : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A051462.P7473859783237056955

noncomputable section

/-- A051462: Molien series for group G_{1,2}^{8} of order 1536.

Offset 0, canonical program `A051462.P7473859783237056955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051462 (n : ℕ) : ℤ :=
  A051462.P7473859783237056955.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051508.P13051591866024448608

`floor(∑[tan(n)])`
-/

namespace A051508.P13051591866024448608
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A051508.P13051591866024448608

noncomputable section

/-- A051508: a(n) = floor(Sum_{k=0..n} tan(k)).

Offset 0, canonical program `A051508.P13051591866024448608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1775 terms. -/
def A051508 (n : ℕ) : ℤ :=
  A051508.P13051591866024448608.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1775 terms. -/
def A051508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051509.P1190744742377929497

`round(∑[tan(n)])`
-/

namespace A051509.P1190744742377929497
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051509.P1190744742377929497

noncomputable section

/-- A051509: a(n) = round(Sum_{k=0..n} tan(k)).

Offset 0, canonical program `A051509.P1190744742377929497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1823 terms. -/
def A051509 (n : ℕ) : ℤ :=
  A051509.P1190744742377929497.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1823 terms. -/
def A051509.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051510.P6360487990203681267

`ceil(∑[tan(n)])`
-/

namespace A051510.P6360487990203681267
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A051510.P6360487990203681267

noncomputable section

/-- A051510: a(n) = ceiling(Sum_{k=0..n} tan(k)).

Offset 0, canonical program `A051510.P6360487990203681267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1809 terms. -/
def A051510 (n : ℕ) : ℤ :=
  A051510.P6360487990203681267.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1809 terms. -/
def A051510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051515.P8976191201029260124

`∑[(n+1)*gcd(3, n%2)]²`
-/

namespace A051515.P8976191201029260124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.gcd 3 (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A051515.P8976191201029260124

noncomputable section

/-- A051515: (Terms in A014738)/4.

Offset 1, canonical program `A051515.P8976191201029260124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051515 (n : ℕ) : ℤ :=
  (A051515.P8976191201029260124.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051536.P14980569204951131107

`lcm(3*n+1, a(n-1))` with `a(0)=1`
-/

namespace A051536.P14980569204951131107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (3 * n + 1) (a (n - 1))

end

end A051536.P14980569204951131107

noncomputable section

/-- A051536: a(n) = least common multiple of {1, 4, 7, 10, 13 ..., 3n+1} (A016777).

Offset 0, canonical program `A051536.P14980569204951131107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A051536 (n : ℕ) : ℤ :=
  (A051536.P14980569204951131107.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A051536.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051538.P4254706276901665756

`lcm(a(n-1), ∑[(n+1)²])` with `a(0)=1`
-/

namespace A051538.P4254706276901665756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (a (n - 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051538.P4254706276901665756

noncomputable section

/-- A051538: Least common multiple of {b(1),...,b(n)}, where b(k) = k(k+1)(2k+1)/6 = A000330(k).

Offset 1, canonical program `A051538.P4254706276901665756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A051538 (n : ℕ) : ℤ :=
  (A051538.P4254706276901665756.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A051538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051540.P9289519930404620870

`lcm(3*n+2, a(n-1))` with `a(0)=2`
-/

namespace A051540.P9289519930404620870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lcm (3 * n + 2) (a (n - 1))

end

end A051540.P9289519930404620870

noncomputable section

/-- A051540: Least common multiple of {2, 5, 8, 11, 14, ..., 3n+2} (A016789).

Offset 0, canonical program `A051540.P9289519930404620870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A051540 (n : ℕ) : ℤ :=
  (A051540.P9289519930404620870.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A051540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051548.P6609844243763188526

`lcm(-a(n-1), ∏{e}[n, #+1])` with `a(0)=1`
-/

namespace A051548.P6609844243763188526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (-(a (n - 1) : ℤ)) ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A051548.P6609844243763188526

noncomputable section

/-- A051548: a(n) = LCM { tau(1), ..., tau(n) }.

Offset 0, canonical program `A051548.P6609844243763188526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051548 (n : ℕ) : ℤ :=
  (A051548.P6609844243763188526.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051549.P12479274296793480448

`lcm(a(n-1), ∑{d}[n, #])` with `a(0)=1`
-/

namespace A051549.P12479274296793480448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (a (n - 1)) (∑ d ∈ Nat.divisors (f1 n), d)

end

end A051549.P12479274296793480448

noncomputable section

/-- A051549: a(n) = LCM { sigma(1), ..., sigma(n) }.

Offset 0, canonical program `A051549.P12479274296793480448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 907 terms. -/
def A051549 (n : ℕ) : ℤ :=
  (A051549.P12479274296793480448.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 907 terms. -/
def A051549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051575.P17664740270955352432

`lcm(C(2*n, n+1)/n, a(n-1))` with `a(0)=1`
-/

namespace A051575.P17664740270955352432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((Nat.choose (2 * n) (n + 1) : ℚ) / (n : ℚ))) (a (n - 1) : ℤ)

end

end A051575.P17664740270955352432

noncomputable section

/-- A051575: a(n) = LCM { Catalan(0), ..., Catalan(n) }.

Offset 0, canonical program `A051575.P17664740270955352432`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A051575 (n : ℕ) : ℤ :=
  (A051575.P17664740270955352432.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A051575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051684.P7377963826740137144

`a(n-1)-n*(a(n-2)+1)` with `a(0)=0, a(1)=-1`
-/

namespace A051684.P7377963826740137144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -1] fun n a =>
  a (n - 1) - (n : ℤ) * (a (n - 2) + 1)

end

end A051684.P7377963826740137144

noncomputable section

/-- A051684: Auxiliary sequence for calculation of number of even permutations of degree n and order exactly 2.

Offset 1, canonical program `A051684.P7377963826740137144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A051684 (n : ℕ) : ℤ :=
  A051684.P7377963826740137144.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A051684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051725.P11300003535364123409

`12/gcd(12, n)`
-/

namespace A051725.P11300003535364123409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  12 / (Nat.gcd 12 n : ℚ)

end

end A051725.P11300003535364123409

noncomputable section

/-- A051725: Denominator of n/12.

Offset 0, canonical program `A051725.P11300003535364123409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051725 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051725.P11300003535364123409.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051740.P985039893113589503

`∑[∑[∑[7*n+1]]]`
-/

namespace A051740.P985039893113589503
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051740.P985039893113589503

noncomputable section

/-- A051740: Partial sums of A007584.

Offset 0, canonical program `A051740.P985039893113589503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051740 (n : ℕ) : ℤ :=
  (A051740.P985039893113589503.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051745.P3142857369054181217

`∑[C(n+4, 4)+1]`
-/

namespace A051745.P3142857369054181217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 4) 4 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051745.P3142857369054181217

noncomputable section

/-- A051745: a(n) = n*(n^4 + 10*n^3 + 35*n^2 + 50*n + 144)/120.

Offset 1, canonical program `A051745.P3142857369054181217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051745 (n : ℕ) : ℤ :=
  (A051745.P3142857369054181217.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051746.P5107373186940866111

`∑[∑[C(n+3, 3)+1]]`
-/

namespace A051746.P5107373186940866111
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 3 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051746.P5107373186940866111

noncomputable section

/-- A051746: a(n) = n(n+7)(n+1)(n^2+2n+12)/120.

Offset 1, canonical program `A051746.P5107373186940866111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051746 (n : ℕ) : ℤ :=
  (A051746.P5107373186940866111.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051747.P17711146717134914108

`∑[∑[∑[∑[n+1]+1]]]`
-/

namespace A051747.P17711146717134914108
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051747.P17711146717134914108

noncomputable section

/-- A051747: a(n) = n*(n+1)*(n+2)*(n^2+7*n+32)/120.

Offset 1, canonical program `A051747.P17711146717134914108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051747 (n : ℕ) : ℤ :=
  (A051747.P17711146717134914108.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051792.P17138501183417519381

`a(n-4)-a(n-2)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=1`
-/

namespace A051792.P17138501183417519381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 1] fun n a =>
  a (n - 4) - a (n - 2)

end

end A051792.P17138501183417519381

noncomputable section

/-- A051792: a(n) = (-1)^(n-1)*(a(n-1) - a(n-2)), a(1)=1, a(2)=1.

Offset 1, canonical program `A051792.P17138501183417519381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 964 terms. -/
def A051792 (n : ℕ) : ℤ :=
  A051792.P17138501183417519381.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 964 terms. -/
def A051792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051801.P15997932515151970978

`∏{digits}[n, gcd(#, #!²)]`
-/

namespace A051801.P15997932515151970978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.gcd x (Nat.factorial x ^ 2)).prod

end

end A051801.P15997932515151970978

noncomputable section

/-- A051801: Product of the nonzero digits of n.

Offset 0, canonical program `A051801.P15997932515151970978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051801 (n : ℕ) : ℤ :=
  (A051801.P15997932515151970978.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051878.P3848727559817738217

`∑[∑[∑[∑[8*n+1]]]]`
-/

namespace A051878.P3848727559817738217
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051878.P3848727559817738217

noncomputable section

/-- A051878: Partial sums of A051797.

Offset 0, canonical program `A051878.P3848727559817738217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051878 (n : ℕ) : ℤ :=
  (A051878.P3848727559817738217.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051880.P12575106753952359243

`C(n+4, 4)*Δ[n²]`
-/

namespace A051880.P12575106753952359243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 4 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A051880.P12575106753952359243

noncomputable section

/-- A051880: a(n) = binomial(n+4,4)*(2*n+1).

Offset 0, canonical program `A051880.P12575106753952359243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051880 (n : ℕ) : ℤ :=
  A051880.P12575106753952359243.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051903.P13920478898438787932

`a((n+1)/∏{p}[n+1, #]-1)+1` with `a(0)=0`
-/

namespace A051903.P13920478898438787932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) - 1)).toNat + 1

end

end A051903.P13920478898438787932

noncomputable section

/-- A051903: Maximum exponent in the prime factorization of n.

Offset 1, canonical program `A051903.P13920478898438787932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051903 (n : ℕ) : ℤ :=
  (A051903.P13920478898438787932.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051903.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051923.P13688174495935408011

`∑[∑[∑[∑[∑[3*n+1]]]]]`
-/

namespace A051923.P13688174495935408011
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051923.P13688174495935408011

noncomputable section

/-- A051923: Partial sums of A051836.

Offset 0, canonical program `A051923.P13688174495935408011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051923 (n : ℕ) : ℤ :=
  (A051923.P13688174495935408011.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051936.P18364667819133142462

`∑[n+4]-3`
-/

namespace A051936.P18364667819133142462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3

end

end A051936.P18364667819133142462

noncomputable section

/-- A051936: Truncated triangular numbers: a(n) = n*(n+1)/2 - 9.

Offset 4, canonical program `A051936.P18364667819133142462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051936 (n : ℕ) : ℤ :=
  A051936.P18364667819133142462.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051938.P11347518932958355786

`∑[n+6]-3`
-/

namespace A051938.P11347518932958355786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3

end

end A051938.P11347518932958355786

noncomputable section

/-- A051938: Truncated triangular numbers: a(n) = n*(n+1)/2 - 18.

Offset 6, canonical program `A051938.P11347518932958355786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051938 (n : ℕ) : ℤ :=
  A051938.P11347518932958355786.a (n - 6)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051940.P5410814916171685063

`∑[n+8]-2`
-/

namespace A051940.P5410814916171685063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A051940.P5410814916171685063

noncomputable section

/-- A051940: Truncated triangular numbers: n*(n+1)/2 - 3*t*(t+1)/2 with t=4.

Offset 8, canonical program `A051940.P5410814916171685063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051940 (n : ℕ) : ℤ :=
  A051940.P5410814916171685063.a (n - 8)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051940.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051947.P16339056611166132582

`∑[∑[∑[∑[∑[4*n+1]]]]]`
-/

namespace A051947.P16339056611166132582
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051947.P16339056611166132582

noncomputable section

/-- A051947: Partial sums of A034263.

Offset 0, canonical program `A051947.P16339056611166132582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051947 (n : ℕ) : ℤ :=
  (A051947.P16339056611166132582.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052106.P10514832410735565954

`lcm(1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n, n+1)`
-/

namespace A052106.P10514832410735565954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ))) (n + 1 : ℤ)

end

end A052106.P10514832410735565954

noncomputable section

/-- A052106: a(n) = lcm(n, n - phi(n)).

Offset 1, canonical program `A052106.P10514832410735565954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052106 (n : ℕ) : ℤ :=
  (A052106.P10514832410735565954.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052146.P12825052506085656444

`a(n-(a(n-1)+2))+1` with `a(0)=0, a(1)=0`
-/

namespace A052146.P12825052506085656444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - (a (n - 1) + 2)) + 1

end

end A052146.P12825052506085656444

noncomputable section

/-- A052146: a(n) = floor((sqrt(1+8*n)-3)/2).

Offset 1, canonical program `A052146.P12825052506085656444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052146 (n : ℕ) : ℤ :=
  (A052146.P12825052506085656444.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052147.P6151996953021184291

`p?[a(n-1)+2]+2` with `a(0)=2, a(1)=1`
-/

namespace A052147.P6151996953021184291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 2

end

end A052147.P6151996953021184291

noncomputable section

/-- A052147: a(n) = prime(n) + 2.

Offset 1, canonical program `A052147.P6151996953021184291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052147 (n : ℕ) : ℤ :=
  (A052147.P6151996953021184291.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052147.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052206.P531529132261358619

`∑[∑[∑[∑[∑[∑[9*n+1]]]]]]`
-/

namespace A052206.P531529132261358619
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052206.P531529132261358619

noncomputable section

/-- A052206: Partial sums of A050405.

Offset 0, canonical program `A052206.P531529132261358619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052206 (n : ℕ) : ℤ :=
  (A052206.P531529132261358619.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052226.P2177125472500206193

`∑[∑[∑[∑[∑[∑[8*n+1]]]]]]`
-/

namespace A052226.P2177125472500206193
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052226.P2177125472500206193

noncomputable section

/-- A052226: Partial sums of A050404.

Offset 0, canonical program `A052226.P2177125472500206193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052226 (n : ℕ) : ℤ :=
  (A052226.P2177125472500206193.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052254.P14987541135402565170

`∑[∑[C(n+4, 4)*Δ[n²]]]`
-/

namespace A052254.P14987541135402565170
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 4 : ℤ) * ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052254.P14987541135402565170

noncomputable section

/-- A052254: Partial sums of A050406.

Offset 0, canonical program `A052254.P14987541135402565170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052254 (n : ℕ) : ℤ :=
  A052254.P14987541135402565170.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052255.P6050753738019785398

`∑[∑[∑[(n+1)*C(n+4, 4)]]]`
-/

namespace A052255.P6050753738019785398
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose (n + 4) 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052255.P6050753738019785398

noncomputable section

/-- A052255: Partial sums of A050484.

Offset 0, canonical program `A052255.P6050753738019785398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052255 (n : ℕ) : ℤ :=
  (A052255.P6050753738019785398.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052262.P9360774606797613932

`∑[∑[floor(10^n/9)]]`
-/

namespace A052262.P9360774606797613932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n : ℚ) / 9⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052262.P9360774606797613932

noncomputable section

/-- A052262: Partial sums of A014824.

Offset 0, canonical program `A052262.P9360774606797613932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A052262 (n : ℕ) : ℤ :=
  A052262.P9360774606797613932.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A052262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052267.P8016469958357764634

`∑[∑[∑[∑[∑[∑[(n+1)%2*∑[n+1]]]]]]]`
-/

namespace A052267.P8016469958357764634
noncomputable section

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2 * (∑ j ∈ Finset.range (n + 1), f7 j)

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052267.P8016469958357764634

noncomputable section

/-- A052267: Number of 2 X n matrices over GF(3) under row and column permutations.

Offset 0, canonical program `A052267.P8016469958357764634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052267 (n : ℕ) : ℤ :=
  (A052267.P8016469958357764634.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052383.P442145744883924775

`lt[0, ∏{digits}[n, (1-#)²]]`
-/

namespace A052383.P442145744883924775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => (1 - (x : ℤ)) ^ 2).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A052383.P442145744883924775

noncomputable section

/-- A052383: Numbers without 1 as a digit.

Offset 1, canonical program `A052383.P442145744883924775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A052383 (n : ℕ) : ℤ :=
  (A052383.P442145744883924775.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A052383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052460.P12066022112769098825

`(n+1)*∑[∑[3*n]+1]²`
-/

namespace A052460.P12066022112769098825
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A052460.P12066022112769098825

noncomputable section

/-- A052460: 3-magic series constant.

Offset 1, canonical program `A052460.P12066022112769098825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052460 (n : ℕ) : ℤ :=
  (A052460.P12066022112769098825.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052472.P7743217795742062628

`a(n-1)+∑[(n+2)²]-(n+2)` with `a(0)=0`
-/

namespace A052472.P7743217795742062628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 2 : ℤ))

end

end A052472.P7743217795742062628

noncomputable section

/-- A052472: Number of independent components for a Weyl tensor in n dimensions.

Offset 3, canonical program `A052472.P7743217795742062628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052472 (n : ℕ) : ℤ :=
  A052472.P7743217795742062628.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052485.P6798499314965408935

`comp[n*∏{p}[n, #]]`
-/

namespace A052485.P6798499314965408935
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∏ p ∈ Nat.primeFactors (f2 n), p)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A052485.P6798499314965408935

noncomputable section

/-- A052485: Weak numbers (i.e., not powerful (1)): there is a prime p where p|n is true but p^2|n is not true.

Offset 1, canonical program `A052485.P6798499314965408935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052485 (n : ℕ) : ℤ :=
  (A052485.P6798499314965408935.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052488.P11841203822231542227

`floor((n+1)*∑[1/(n+1)])`
-/

namespace A052488.P11841203822231542227
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)⌋

end

end A052488.P11841203822231542227

noncomputable section

/-- A052488: a(n) = floor(n*H(n)) where H(n) is the n-th harmonic number, Sum_{k=1..n} 1/k (A001008/A002805).

Offset 1, canonical program `A052488.P11841203822231542227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052488 (n : ℕ) : ℤ :=
  A052488.P11841203822231542227.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052488.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052515.P18224629826647100136

`2*(a(n-1)-1+n)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A052515.P18224629826647100136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0] fun n a =>
  2 * (a (n - 1) - 1 + (n : ℤ))

end

end A052515.P18224629826647100136

noncomputable section

/-- A052515: Number of ordered pairs of complementary subsets of an n-set with both subsets of cardinality at least 2.

Offset 0, canonical program `A052515.P18224629826647100136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A052515 (n : ℕ) : ℤ :=
  A052515.P18224629826647100136.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A052515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052749.P15589540490745618581

`2*n*∑[floor(2^(n-3))]`
-/

namespace A052749.P15589540490745618581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A052749.P15589540490745618581

noncomputable section

/-- A052749: a(n) = 2*n * Stirling2(n-1,2).

Offset 0, canonical program `A052749.P15589540490745618581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A052749 (n : ℕ) : ℤ :=
  A052749.P15589540490745618581.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A052749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052900.P641168544967059892

`a(n-1)+3*a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A052900.P641168544967059892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (n - 1) + 3 * a (n - 3)

end

end A052900.P641168544967059892

noncomputable section

/-- A052900: Expansion of (1-x)/(1-x-3x^3).

Offset 0, canonical program `A052900.P641168544967059892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 373 terms. -/
def A052900 (n : ℕ) : ℤ :=
  (A052900.P641168544967059892.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 373 terms. -/
def A052900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052962.P4458529106975208912

`a(n-1)+3*a(n-2)-2*a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5`
-/

namespace A052962.P4458529106975208912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 5] fun n a =>
  a (n - 1) + 3 * a (n - 2) - 2 * a (n - 4)

end

end A052962.P4458529106975208912

noncomputable section

/-- A052962: Expansion of (1-2x^2)/(1-x-3x^2+2x^4).

Offset 0, canonical program `A052962.P4458529106975208912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A052962 (n : ℕ) : ℤ :=
  A052962.P4458529106975208912.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A052962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052963.P8470570176437691920

`3*a(n-1)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A052963.P8470570176437691920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  3 * a (n - 1) - a (n - 3)

end

end A052963.P8470570176437691920

noncomputable section

/-- A052963: a(0)=1, a(1)=2, a(2)=5, a(n) = 3*a(n+2) - a(n+3).

Offset 0, canonical program `A052963.P8470570176437691920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A052963 (n : ℕ) : ℤ :=
  A052963.P8470570176437691920.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A052963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052966.P15286722814071747166

`a(n-1)+4*a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=0, a(2)=4`
-/

namespace A052966.P15286722814071747166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 4] fun n a =>
  a (n - 1) + 4 * a (n - 2) - 2 * a (n - 3)

end

end A052966.P15286722814071747166

noncomputable section

/-- A052966: Expansion of (1-x)/(1-x-4x^2+2x^3).

Offset 0, canonical program `A052966.P15286722814071747166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. -/
def A052966 (n : ℕ) : ℤ :=
  A052966.P15286722814071747166.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. -/
def A052966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052968.P2588950439768698632

`ceil(∑[2^(n-2)+1])`
-/

namespace A052968.P2588950439768698632
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A052968.P2588950439768698632

noncomputable section

/-- A052968: a(n) = 1 + 2^(n-1) + n for n > 0, a(0) = 2.

Offset 0, canonical program `A052968.P2588950439768698632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A052968 (n : ℕ) : ℤ :=
  A052968.P2588950439768698632.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A052968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052969.P6742478017458927584

`2*a(n-2)+a(n-1)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=2`
-/

namespace A052969.P6742478017458927584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 2] fun n a =>
  2 * a (n - 2) + (a (n - 1) - a (n - 4))

end

end A052969.P6742478017458927584

noncomputable section

/-- A052969: Expansion of (1-x)/(1-x-2x^2+x^4).

Offset 0, canonical program `A052969.P6742478017458927584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 359 terms. -/
def A052969 (n : ℕ) : ℤ :=
  A052969.P6742478017458927584.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 359 terms. -/
def A052969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052970.P16757738914275794618

`2*(a(n-1)+a(n-2)-a(n-3))` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A052970.P16757738914275794618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  2 * (a (n - 1) + (a (n - 2) - a (n - 3)))

end

end A052970.P16757738914275794618

noncomputable section

/-- A052970: Expansion of (1-2*x)/(1-2*x-2*x^2+2*x^3).

Offset 0, canonical program `A052970.P16757738914275794618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A052970 (n : ℕ) : ℤ :=
  A052970.P16757738914275794618.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A052970.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052973.P7769939125049288475

`3*a(n-2)+a(n-1)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A052973.P7769939125049288475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3] fun n a =>
  3 * a (n - 2) + (a (n - 1) - a (n - 3))

end

end A052973.P7769939125049288475

noncomputable section

/-- A052973: Expansion of ( 1-x ) / ( 1-x-3*x^2+x^3 ).

Offset 0, canonical program `A052973.P7769939125049288475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. -/
def A052973 (n : ℕ) : ℤ :=
  A052973.P7769939125049288475.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. -/
def A052973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052986.P14699948084180159805

`∑[2*a(n-2)+3*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A052986.P14699948084180159805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * f1 (n - 2) + 3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052986.P14699948084180159805

noncomputable section

/-- A052986: Expansion of ( 1-2*x ) / ( (x-1)*(2*x^2+3*x-1) ).

Offset 0, canonical program `A052986.P14699948084180159805`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. -/
def A052986 (n : ℕ) : ℤ :=
  (A052986.P14699948084180159805.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. -/
def A052986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052987.P827900301995016170

`2*(a(n-1)+a(n-2)-a(n-3))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A052987.P827900301995016170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  2 * (a (n - 1) + (a (n - 2) - a (n - 3)))

end

end A052987.P827900301995016170

noncomputable section

/-- A052987: Expansion of (1-2x^2)/(1-2x-2x^2+2x^3).

Offset 0, canonical program `A052987.P827900301995016170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. -/
def A052987 (n : ℕ) : ℤ :=
  A052987.P827900301995016170.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. -/
def A052987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052990.P7565417649706883215

`4*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=3, a(2)=13`
-/

namespace A052990.P7565417649706883215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 13] fun n a =>
  4 * a (n - 1) + (a (n - 2) - 2 * a (n - 3))

end

end A052990.P7565417649706883215

noncomputable section

/-- A052990: Expansion of ( 1-x ) / ( 1-4*x-x^2+2*x^3 ).

Offset 0, canonical program `A052990.P7565417649706883215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A052990 (n : ℕ) : ℤ :=
  A052990.P7565417649706883215.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A052990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052991.P13402974943539066456

`3*a(n-1)+a(n-2)` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A052991.P13402974943539066456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  3 * a (n - 1) + a (n - 2)

end

end A052991.P13402974943539066456

noncomputable section

/-- A052991: Expansion of (1-x-x^2)/(1-3x-x^2).

Offset 0, canonical program `A052991.P13402974943539066456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 194 terms. -/
def A052991 (n : ℕ) : ℤ :=
  (A052991.P13402974943539066456.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 194 terms. -/
def A052991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052994.P3783075281098826443

`2*a(n-1)+a(n-2)-a(n-3)` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A052994.P3783075281098826443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2] fun n a =>
  2 * a (n - 1) + (a (n - 2) - a (n - 3))

end

end A052994.P3783075281098826443

noncomputable section

/-- A052994: Expansion of 2x(1-x)/(1-2x-x^2+x^3).

Offset 0, canonical program `A052994.P3783075281098826443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. -/
def A052994 (n : ℕ) : ℤ :=
  A052994.P3783075281098826443.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. -/
def A052994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052995.P9061132486161654899

`record[a(n-2)-a(n-1)]` with `a(0)=0, a(1)=2`
-/

namespace A052995.P9061132486161654899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052995.P9061132486161654899

noncomputable section

/-- A052995: Expansion of 2*x*(1 - x)/(1 - 3*x + x^2).

Offset 0, canonical program `A052995.P9061132486161654899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A052995 (n : ℕ) : ℤ :=
  A052995.P9061132486161654899.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A052995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052997.P15853930221878610056

`2*a(n-1)+1-n%2` with `a(0)=1, a(1)=3`
-/

namespace A052997.P15853930221878610056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * a (n - 1) + 1 - ((n % 2 : ℕ) : ℤ)

end

end A052997.P15853930221878610056

noncomputable section

/-- A052997: Expansion of (1+x-x^3)/((1-2*x)*(1-x^2)).

Offset 0, canonical program `A052997.P15853930221878610056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A052997 (n : ℕ) : ℤ :=
  A052997.P15853930221878610056.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A052997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053041.P12577057459278292305

`(n+1)*ceil(10^n/(n+1))`
-/

namespace A053041.P12577057459278292305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈(10 ^ n : ℚ) / (n + 1 : ℚ)⌉

end

end A053041.P12577057459278292305

noncomputable section

/-- A053041: Smallest n-digit number divisible by n.

Offset 1, canonical program `A053041.P12577057459278292305`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A053041 (n : ℕ) : ℤ :=
  A053041.P12577057459278292305.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A053041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053061.P11538860489114276180

`(n+1)*(∏{digits}[(n+1)², floor(#/10)+10]+1+n)`
-/

namespace A053061.P11538860489114276180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 10⌋ + 10).prod + 1 + (n : ℤ))

end

end A053061.P11538860489114276180

noncomputable section

/-- A053061: a(n) is the decimal concatenation of n and n^2.

Offset 1, canonical program `A053061.P11538860489114276180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053061 (n : ℕ) : ℤ :=
  A053061.P11538860489114276180.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053090.P12639586991229576362

`∑[ceil(∑[(n+1)/3])-a(n-1)]-a(n-1)` with `a(0)=1`
-/

namespace A053090.P12639586991229576362
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉ - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A053090.P12639586991229576362

noncomputable section

/-- A053090: Number of F^3-convex polyominoes on honeycomb lattice with given semiperimeter.

Offset 3, canonical program `A053090.P12639586991229576362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053090 (n : ℕ) : ℤ :=
  A053090.P12639586991229576362.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053107.P1960963899360336947

`8^n*C(n+7, 7)`
-/

namespace A053107.P1960963899360336947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ n * Nat.choose (n + 7) 7

end

end A053107.P1960963899360336947

noncomputable section

/-- A053107: Expansion of 1/(1-8*x)^8.

Offset 0, canonical program `A053107.P1960963899360336947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A053107 (n : ℕ) : ℤ :=
  (A053107.P1960963899360336947.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A053107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053110.P11730042616001333652

`7^(n-1)*C(n+7, 6)`
-/

namespace A053110.P11730042616001333652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.choose (n + 7) 6 : ℚ)

end

end A053110.P11730042616001333652

noncomputable section

/-- A053110: Expansion of (-1 + 1/(1-7*x)^7)/(49*x); related to A036226.

Offset 0, canonical program `A053110.P11730042616001333652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A053110 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A053110.P11730042616001333652.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A053110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053111.P16750545580018973219

`8^(n-1)*C(n+8, 7)`
-/

namespace A053111.P16750545580018973219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.choose (n + 8) 7 : ℚ)

end

end A053111.P16750545580018973219

noncomputable section

/-- A053111: Expansion of (-1 + 1/(1-8*x)^8)/(64*x); related to A053107.

Offset 0, canonical program `A053111.P16750545580018973219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A053111 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A053111.P16750545580018973219.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A053111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053126.P961366046763717479

`C(2*n+5, 4)`
-/

namespace A053126.P961366046763717479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 5) 4

end

end A053126.P961366046763717479

noncomputable section

/-- A053126: Binomial coefficients binomial(2*n-3,4).

Offset 4, canonical program `A053126.P961366046763717479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053126 (n : ℕ) : ℤ :=
  (A053126.P961366046763717479.a (n - 4) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053127.P9468428774575119280

`C(2*(n+3), 5)`
-/

namespace A053127.P9468428774575119280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (n + 3)) 5

end

end A053127.P9468428774575119280

noncomputable section

/-- A053127: Binomial coefficients C(2*n-4,5).

Offset 5, canonical program `A053127.P9468428774575119280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053127 (n : ℕ) : ℤ :=
  (A053127.P9468428774575119280.a (n - 5) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053128.P9860513323919182619

`C(2*n+7, 6)`
-/

namespace A053128.P9860513323919182619
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 7) 6

end

end A053128.P9860513323919182619

noncomputable section

/-- A053128: Binomial coefficients C(2*n-5,6).

Offset 6, canonical program `A053128.P9860513323919182619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053128 (n : ℕ) : ℤ :=
  (A053128.P9860513323919182619.a (n - 6) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053130.P17561535218007748787

`C(2*n+9, 8)`
-/

namespace A053130.P17561535218007748787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 9) 8

end

end A053130.P17561535218007748787

noncomputable section

/-- A053130: Binomial coefficients C(2*n-7,8).

Offset 8, canonical program `A053130.P17561535218007748787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053130 (n : ℕ) : ℤ :=
  (A053130.P17561535218007748787.a (n - 8) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053158.P1096209143985751987

`Δ[n²]-(n-floor(1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n))`
-/

namespace A053158.P1096209143985751987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((n : ℤ) - ⌊1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ)⌋)

end

end A053158.P1096209143985751987

noncomputable section

/-- A053158: Sum of n and its cototient function value (A051953): a(n) = 2*n - phi(n), where phi is Euler phi.

Offset 1, canonical program `A053158.P1096209143985751987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053158 (n : ℕ) : ℤ :=
  A053158.P1096209143985751987.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053208.P6069298341767811654

`2*(a(n-1)+2)` with `a(0)=0, a(1)=3`
-/

namespace A053208.P6069298341767811654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n a =>
  2 * (a (n - 1) + 2)

end

end A053208.P6069298341767811654

noncomputable section

/-- A053208: Row sums of A053207.

Offset 0, canonical program `A053208.P6069298341767811654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A053208 (n : ℕ) : ℤ :=
  (A053208.P6069298341767811654.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A053208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053221.P5882243568684792401

`(n+3)*(2^n-1)+1`
-/

namespace A053221.P5882243568684792401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * ((2 ^ n : ℤ) - 1) + 1

end

end A053221.P5882243568684792401

noncomputable section

/-- A053221: Row sums of triangle A053218.

Offset 1, canonical program `A053221.P5882243568684792401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A053221 (n : ℕ) : ℤ :=
  A053221.P5882243568684792401.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A053221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053295.P14694653291218182866

`∑[∑[∑[∑[∑[∑[a(n-2)+a(n-1)]]]]]]` with `a(0)=1, a(1)=1`
-/

namespace A053295.P14694653291218182866
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f6 =>
  f6 (n - 2) + f6 (n - 1)

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053295.P14694653291218182866

noncomputable section

/-- A053295: Partial sums of A053739.

Offset 0, canonical program `A053295.P14694653291218182866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. -/
def A053295 (n : ℕ) : ℤ :=
  (A053295.P14694653291218182866.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. -/
def A053295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053296.P1867699273510912456

`∑[∑[∑[∑[∑[∑[∑[a(n-2)+a(n-1)]]]]]]]` with `a(0)=1, a(1)=1`
-/

namespace A053296.P1867699273510912456
noncomputable section

def f7 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f7 =>
  f7 (n - 2) + f7 (n - 1)

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053296.P1867699273510912456

noncomputable section

/-- A053296: Partial sums of A053295.

Offset 0, canonical program `A053296.P1867699273510912456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 466 terms. -/
def A053296 (n : ℕ) : ℤ :=
  (A053296.P1867699273510912456.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 466 terms. -/
def A053296.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053298.P7165821749881566241

`∑[∑[∑[∑[∑[a(n-1)+a(n-2)]]]]]` with `a(0)=1, a(1)=3`
-/

namespace A053298.P7165821749881566241
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f5 =>
  f5 (n - 1) + f5 (n - 2)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053298.P7165821749881566241

noncomputable section

/-- A053298: Partial sums of A027964.

Offset 0, canonical program `A053298.P7165821749881566241`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. -/
def A053298 (n : ℕ) : ℤ :=
  (A053298.P7165821749881566241.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. -/
def A053298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053310.P2197490528585494852

`∑[∑[∑[∑[∑[∑[∑[∑[3*n+1]]]]]]]]`
-/

namespace A053310.P2197490528585494852
noncomputable section

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053310.P2197490528585494852

noncomputable section

/-- A053310: a(n) = (n+3)*binomial(n+8, 8)/3.

Offset 0, canonical program `A053310.P2197490528585494852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053310 (n : ℕ) : ℤ :=
  (A053310.P2197490528585494852.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053347.P9466974894539893485

`∑[∑[∑[∑[∑[∑[(n+1)²]]]]]]`
-/

namespace A053347.P9466974894539893485
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053347.P9466974894539893485

noncomputable section

/-- A053347: a(n) = binomial(n+7, 7)*(n+4)/4.

Offset 0, canonical program `A053347.P9466974894539893485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053347 (n : ℕ) : ℤ :=
  (A053347.P9466974894539893485.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053367.P12928043775032908449

`∑[∑[∑[∑[∑[∑[∑[3*n+1]]]]]]]`
-/

namespace A053367.P12928043775032908449
noncomputable section

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053367.P12928043775032908449

noncomputable section

/-- A053367: Partial sums of A050494.

Offset 0, canonical program `A053367.P12928043775032908449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053367 (n : ℕ) : ℤ :=
  (A053367.P12928043775032908449.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053384.P11208946787078782555

`val(or(3, n)+1, 2)`
-/

namespace A053384.P11208946787078782555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.lor 3 n + 1) 2

end

end A053384.P11208946787078782555

noncomputable section

/-- A053384: a(n) = A053398(4,n).

Offset 1, canonical program `A053384.P11208946787078782555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053384 (n : ℕ) : ℤ :=
  (A053384.P11208946787078782555.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053385.P15581570953858865456

`val(or(4, n)+1, 2)`
-/

namespace A053385.P15581570953858865456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.lor 4 n + 1) 2

end

end A053385.P15581570953858865456

noncomputable section

/-- A053385: A053398(5, n).

Offset 1, canonical program `A053385.P15581570953858865456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053385 (n : ℕ) : ℤ :=
  (A053385.P15581570953858865456.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053386.P11001422989390475897

`val(or(5, n)+1, 2)`
-/

namespace A053386.P11001422989390475897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.lor 5 n + 1) 2

end

end A053386.P11001422989390475897

noncomputable section

/-- A053386: A053398(6, n).

Offset 1, canonical program `A053386.P11001422989390475897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053386 (n : ℕ) : ℤ :=
  (A053386.P11001422989390475897.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053387.P9377817174585322384

`val(or(6, n)+1, 2)`
-/

namespace A053387.P9377817174585322384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.lor 6 n + 1) 2

end

end A053387.P9377817174585322384

noncomputable section

/-- A053387: A053398(7, n).

Offset 1, canonical program `A053387.P9377817174585322384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053387 (n : ℕ) : ℤ :=
  (A053387.P9377817174585322384.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053388.P9980245438550973825

`val(or(7, n)+1, 2)`
-/

namespace A053388.P9980245438550973825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.lor 7 n + 1) 2

end

end A053388.P9980245438550973825

noncomputable section

/-- A053388: a(n) = A053398(8, n).

Offset 1, canonical program `A053388.P9980245438550973825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053388 (n : ℕ) : ℤ :=
  (A053388.P9980245438550973825.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053389.P5275518288129646180

`val(or(8, n)+1, 2)`
-/

namespace A053389.P5275518288129646180
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.lor 8 n + 1) 2

end

end A053389.P5275518288129646180

noncomputable section

/-- A053389: A053398(9, n).

Offset 1, canonical program `A053389.P5275518288129646180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053389 (n : ℕ) : ℤ :=
  (A053389.P5275518288129646180.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053390.P298210059975080750

`val(or(9, n)+1, 2)`
-/

namespace A053390.P298210059975080750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.lor 9 n + 1) 2

end

end A053390.P298210059975080750

noncomputable section

/-- A053390: a(n) = A053398(10, n).

Offset 1, canonical program `A053390.P298210059975080750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053390 (n : ℕ) : ℤ :=
  (A053390.P298210059975080750.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053399.P6114799699603418301

`val(or(2, n)+1, 2)`
-/

namespace A053399.P6114799699603418301
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.lor 2 n + 1) 2

end

end A053399.P6114799699603418301

noncomputable section

/-- A053399: A053398(3, n).

Offset 1, canonical program `A053399.P6114799699603418301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053399 (n : ℕ) : ℤ :=
  (A053399.P6114799699603418301.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053436.P17645032156674649848

`C(ceil((n+3)/2), 3)+n+2`
-/

namespace A053436.P17645032156674649848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈(n + 3 : ℚ) / 2⌉.toNat 3 + (n + 2)

end

end A053436.P17645032156674649848

noncomputable section

/-- A053436: a(n) = n+1 + ceiling(n/2)*(ceiling(n/2)-1)*(ceiling(n/2)+1)/6.

Offset 1, canonical program `A053436.P17645032156674649848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053436 (n : ℕ) : ℤ :=
  (A053436.P17645032156674649848.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053438.P17386112902767140659

`record[abs(or(2, n-1))]`
-/

namespace A053438.P17386112902767140659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 2 ((n : ℤ) - 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053438.P17386112902767140659

noncomputable section

/-- A053438: Expansion of (1+x+2*x^3)/((1-x)*(1-x^2)).

Offset 0, canonical program `A053438.P17386112902767140659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053438 (n : ℕ) : ℤ :=
  A053438.P17386112902767140659.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053478.P6372190509250542246

`a((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-1)+1+n` with `a(0)=1`
-/

namespace A053478.P6372190509250542246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) - 1)).toNat + 1 + n

end

end A053478.P6372190509250542246

noncomputable section

/-- A053478: Sum of iterates when phi, A000010, is iterated until fixed point 1.

Offset 1, canonical program `A053478.P6372190509250542246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053478 (n : ℕ) : ℤ :=
  (A053478.P6372190509250542246.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053574.P5651211866444281428

`val((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], 2)`
-/

namespace A053574.P5651211866444281428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat 2

end

end A053574.P5651211866444281428

noncomputable section

/-- A053574: Exponent of 2 in phi(n) where phi(n) = A000010(n).

Offset 1, canonical program `A053574.P5651211866444281428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053574 (n : ℕ) : ℤ :=
  (A053574.P5651211866444281428.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053599.P7956097457811344648

`abs(∑[∑[2*a(n-2)]])` with `a(0)=1, a(1)=1`
-/

namespace A053599.P7956097457811344648
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  2 * f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053599.P7956097457811344648

noncomputable section

/-- A053599: Number of nonempty subsequences {s(k)} of 1..n such that the difference sequence is palindromic.

Offset 1, canonical program `A053599.P7956097457811344648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 658 terms. -/
def A053599 (n : ℕ) : ℤ :=
  (A053599.P7956097457811344648.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 658 terms. -/
def A053599.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053618.P8327438454278641533

`ceil(C(n, 3)/4)`
-/

namespace A053618.P8327438454278641533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose n 3 : ℚ) / 4⌉

end

end A053618.P8327438454278641533

noncomputable section

/-- A053618: a(n) = ceiling(binomial(n,4)/n).

Offset 1, canonical program `A053618.P8327438454278641533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053618 (n : ℕ) : ℤ :=
  A053618.P8327438454278641533.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053618.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053621.P16861030357239046082

`round((n+1)/(log(n+1)-1))`
-/

namespace A053621.P16861030357239046082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) / (Real.log (n + 1 : ℝ) - 1))

end

end A053621.P16861030357239046082

noncomputable section

/-- A053621: Nearest integer to n/(log(n)-1).

Offset 1, canonical program `A053621.P16861030357239046082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053621 (n : ℕ) : ℤ :=
  A053621.P16861030357239046082.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053639.P12280803162628129445

`ceil(2^(n+2)/(n+1))`
-/

namespace A053639.P12280803162628129445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 ^ (n + 2) : ℚ) / (n + 1 : ℚ)⌉

end

end A053639.P12280803162628129445

noncomputable section

/-- A053639: a(n) = ceiling(2^(n+1)/n).

Offset 1, canonical program `A053639.P12280803162628129445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A053639 (n : ℕ) : ℤ :=
  A053639.P12280803162628129445.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A053639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053641.P3976723146507304342

`and(n+1, a(n-2)+1)+1` with `a(0)=1, a(1)=1`
-/

namespace A053641.P3976723146507304342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.land (n + 1) (a (n - 2) + 1) + 1

end

end A053641.P3976723146507304342

noncomputable section

/-- A053641: Rotate n one binary digit to the right, drop leading zeros, then rotate one binary digit to the left.

Offset 1, canonical program `A053641.P3976723146507304342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053641 (n : ℕ) : ℤ :=
  (A053641.P3976723146507304342.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053646.P3468086524514307064

`∑[floor(a(floor(n/2)))]-n` with `a(0)=0, a(1)=1, a(2)=2, a(3)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A053646.P3468086524514307064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A053646.P3468086524514307064

noncomputable section

/-- A053646: Distance to nearest power of 2.

Offset 1, canonical program `A053646.P3468086524514307064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053646 (n : ℕ) : ℤ :=
  A053646.P3468086524514307064.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053646.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053661.P16695447516172805731

`lt[1-(a(n-1)+a(floor(n/2))), 1]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A053661.P16695447516172805731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0] fun n f1 =>
  1 - (f1 (n - 1) + f1 ⌊(n : ℚ) / 2⌋.toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A053661.P16695447516172805731

noncomputable section

/-- A053661: For n > 1: if n is present, 2n is not.

Offset 1, canonical program `A053661.P16695447516172805731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053661 (n : ℕ) : ℤ :=
  (A053661.P16695447516172805731.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053700.P8801354772184604854

`(n+2)*ceil(((n+1)²+1/2)²)`
-/

namespace A053700.P8801354772184604854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * ⌈(((n + 1) ^ 2 : ℚ) + (1 : ℚ) / 2) ^ 2⌉

end

end A053700.P8801354772184604854

noncomputable section

/-- A053700: a(n) = 111111 in base n.

Offset 1, canonical program `A053700.P8801354772184604854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053700 (n : ℕ) : ℤ :=
  A053700.P8801354772184604854.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053731.P1635245144894643439

`ceil(C(n, 7)/8)`
-/

namespace A053731.P1635245144894643439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose n 7 : ℚ) / 8⌉

end

end A053731.P1635245144894643439

noncomputable section

/-- A053731: a(n) = ceiling(binomial(n,8)/n).

Offset 1, canonical program `A053731.P1635245144894643439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053731 (n : ℕ) : ℤ :=
  A053731.P1635245144894643439.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053733.P12893091594768040349

`ceil(C(n, 8)/9)`
-/

namespace A053733.P12893091594768040349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose n 8 : ℚ) / 9⌉

end

end A053733.P12893091594768040349

noncomputable section

/-- A053733: a(n) = ceiling(binomial(n,9)/n).

Offset 1, canonical program `A053733.P12893091594768040349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053733 (n : ℕ) : ℤ :=
  A053733.P12893091594768040349.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053738.P11111590962444765032

`lt[0, -a(floor(n/2))]` with `a(0)=-5`
-/

namespace A053738.P11111590962444765032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-5] fun n f2 =>
  -f2 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A053738.P11111590962444765032

noncomputable section

/-- A053738: If k is in sequence then 2*k and 2*k+1 are not (and 1 is in the sequence); numbers with an odd number of digits in binary.

Offset 1, canonical program `A053738.P11111590962444765032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053738 (n : ℕ) : ℤ :=
  (A053738.P11111590962444765032.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053739.P9826907701746361528

`∑[∑[∑[∑[∑[a(n-1)+a(n-2)]]]]]` with `a(0)=1, a(1)=1`
-/

namespace A053739.P9826907701746361528
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f5 =>
  f5 (n - 1) + f5 (n - 2)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053739.P9826907701746361528

noncomputable section

/-- A053739: Partial sums of A014166.

Offset 0, canonical program `A053739.P9826907701746361528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. -/
def A053739 (n : ℕ) : ℤ :=
  (A053739.P9826907701746361528.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. -/
def A053739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053754.P12990596201667746147

`lt[1, -a(floor(n/2))]` with `a(0)=3`
-/

namespace A053754.P12990596201667746147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  -f2 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A053754.P12990596201667746147

noncomputable section

/-- A053754: If k is in the sequence then 2*k and 2*k+1 are not (and 0 is in the sequence); when written in binary k has an even number of bits (0 has 0 digits).

Offset 1, canonical program `A053754.P12990596201667746147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053754 (n : ℕ) : ℤ :=
  (A053754.P12990596201667746147.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053793.P6991415116137053129

`∑[2*n]%7`
-/

namespace A053793.P6991415116137053129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 7

end

end A053793.P6991415116137053129

noncomputable section

/-- A053793: n^2+n modulo 7.

Offset 0, canonical program `A053793.P6991415116137053129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053793 (n : ℕ) : ℤ :=
  (A053793.P6991415116137053129.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053798.P11153064998320663042

`∑[∑[a(n-3)+2]]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2, a(4)=2, a(5)=2`
-/

namespace A053798.P11153064998320663042
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 2, 2, 2] fun n f2 =>
  f2 (n - 3) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053798.P11153064998320663042

noncomputable section

/-- A053798: Number of basis partitions of n+16 with Durfee square size 4.

Offset 0, canonical program `A053798.P11153064998320663042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053798 (n : ℕ) : ℤ :=
  (A053798.P11153064998320663042.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053798.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053807.P8279996099446650601

`∑{d}[n, (#%#²)²]`
-/

namespace A053807.P8279996099446650601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d % d ^ 2) ^ 2

end

end A053807.P8279996099446650601

noncomputable section

/-- A053807: a(n) = Sum_{k=1..n, n mod k = 1} k^2.

Offset 1, canonical program `A053807.P8279996099446650601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053807 (n : ℕ) : ℤ :=
  (A053807.P8279996099446650601.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053809.P4690573664122324179

`∑[∑[∑[∑[a(n-1)+a(n-2)]]]]` with `a(0)=1, a(1)=2`
-/

namespace A053809.P4690573664122324179
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f4 =>
  f4 (n - 1) + f4 (n - 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053809.P4690573664122324179

noncomputable section

/-- A053809: Second partial sums of A001891.

Offset 0, canonical program `A053809.P4690573664122324179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 471 terms. -/
def A053809 (n : ℕ) : ℤ :=
  (A053809.P4690573664122324179.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 471 terms. -/
def A053809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053814.P4997883407244363239

`(n+2)%(n+2-∑{d}[n+2, #])`
-/

namespace A053814.P4997883407244363239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) ((n + 2 : ℤ) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ))

end

end A053814.P4997883407244363239

noncomputable section

/-- A053814: a(n) = n modulo (sum of proper divisors of n).

Offset 2, canonical program `A053814.P4997883407244363239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053814 (n : ℕ) : ℤ :=
  A053814.P4997883407244363239.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053815.P6473019165180753857

`floor((n+2)/(∑{d}[n+2, #]-(n+2)))`
-/

namespace A053815.P6473019165180753857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 2 : ℤ) : ℚ)⌋

end

end A053815.P6473019165180753857

noncomputable section

/-- A053815: Floor(n / (sum of proper divisors of n)).

Offset 2, canonical program `A053815.P6473019165180753857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053815 (n : ℕ) : ℤ :=
  A053815.P6473019165180753857.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053815.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053867.P10764689696648465644

`(∑{d}[n+1, #]+n+1)%2`
-/

namespace A053867.P10764689696648465644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d + (n + 1)) % 2

end

end A053867.P10764689696648465644

noncomputable section

/-- A053867: Parity of sum of divisors of n less than n.

Offset 1, canonical program `A053867.P10764689696648465644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053867 (n : ℕ) : ℤ :=
  (A053867.P10764689696648465644.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053985.P4227650463783182312

`n%2-2*a(floor(n/2))` with `a(0)=0`
-/

namespace A053985.P4227650463783182312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n % 2 : ℕ) : ℤ) - 2 * a ⌊(n : ℚ) / 2⌋.toNat

end

end A053985.P4227650463783182312

noncomputable section

/-- A053985: Replace 2^k with (-2)^k in binary expansion of n.

Offset 0, canonical program `A053985.P4227650463783182312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053985 (n : ℕ) : ℤ :=
  A053985.P4227650463783182312.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054008.P8577963668979964369

`(n+1)%∏{e}[n+1, #+1]`
-/

namespace A054008.P8577963668979964369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A054008.P8577963668979964369

noncomputable section

/-- A054008: n read modulo (number of divisors of n).

Offset 1, canonical program `A054008.P8577963668979964369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054008 (n : ℕ) : ℤ :=
  (A054008.P8577963668979964369.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054009.P17140610936238475492

`(n+2)%∑{d}[n+2, (n+3)%#]`
-/

namespace A054009.P17140610936238475492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) % (∑ d ∈ Nat.divisors (f1 n), (n + 3) % d)

end

end A054009.P17140610936238475492

noncomputable section

/-- A054009: n read modulo (number of proper divisors of n).

Offset 2, canonical program `A054009.P17140610936238475492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054009 (n : ℕ) : ℤ :=
  (A054009.P17140610936238475492.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054013.P1088920809247585060

`(∑{d}[n+1, #]-1)%(n+1)`
-/

namespace A054013.P1088920809247585060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - 1) (n + 1 : ℤ)

end

end A054013.P1088920809247585060

noncomputable section

/-- A054013: Chowla function of n read modulo n.

Offset 1, canonical program `A054013.P1088920809247585060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054013 (n : ℕ) : ℤ :=
  A054013.P1088920809247585060.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054024.P14697700186009188705

`∑{d}[n+1, #]%(n+1)`
-/

namespace A054024.P14697700186009188705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) % (n + 1)

end

end A054024.P14697700186009188705

noncomputable section

/-- A054024: Sum of the divisors of n reduced modulo n.

Offset 1, canonical program `A054024.P14697700186009188705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054024 (n : ℕ) : ℤ :=
  (A054024.P14697700186009188705.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054025.P2987269555578071389

`∑{d}[n+1, #]%∏{e}[n+1, #+1]`
-/

namespace A054025.P2987269555578071389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) % (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

end

end A054025.P2987269555578071389

noncomputable section

/-- A054025: Sum of divisors of n read modulo (number of divisors of n).

Offset 1, canonical program `A054025.P2987269555578071389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054025 (n : ℕ) : ℤ :=
  (A054025.P2987269555578071389.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054071.P11933654067822100257

`1-floor((a(a(n-1)-1)-n)/2)` with `a(0)=1`
-/

namespace A054071.P11933654067822100257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ⌊(a (a (n - 1) - 1).toNat - (n : ℤ) : ℚ) / 2⌋

end

end A054071.P11933654067822100257

noncomputable section

/-- A054071: Position of 1 in the permutation of 1,2,...,n obtained by ordering the fractional parts {h*sqrt(2)} for h=1,2,...,n.

Offset 1, canonical program `A054071.P11933654067822100257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054071 (n : ℕ) : ℤ :=
  A054071.P11933654067822100257.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054087.P7351384866866259164

`round(sqrt(∑[6*n]+1))+n`
-/

namespace A054087.P7351384866866259164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℝ)) + (n : ℤ)

end

end A054087.P7351384866866259164

noncomputable section

/-- A054087: s(3n-2), s=A054086; also a bisection of A003511.

Offset 1, canonical program `A054087.P7351384866866259164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054087 (n : ℕ) : ℤ :=
  A054087.P7351384866866259164.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054107.P8727902113154063730

`∑[∑[n]+a((3%n)%2)]` with `a(0)=1`
-/

namespace A054107.P8727902113154063730
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j + f1 (3 % n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054107.P8727902113154063730

noncomputable section

/-- A054107: T(n,n-3), array T as in A054106.

Offset 3, canonical program `A054107.P8727902113154063730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054107 (n : ℕ) : ℤ :=
  (A054107.P8727902113154063730.a (n - 3) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054111.P614052927901555716

`a(n-2)+2^(n+1)` with `a(0)=1, a(1)=2, a(2)=7`
-/

namespace A054111.P614052927901555716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 7] fun n a =>
  a (n - 2) + 2 ^ (n + 1)

end

end A054111.P614052927901555716

noncomputable section

/-- A054111: Row sums of array T as in A054110.

Offset 0, canonical program `A054111.P614052927901555716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A054111 (n : ℕ) : ℤ :=
  (A054111.P614052927901555716.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A054111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054127.P16900241434953875861

`∑[2*a(n-1)+1]` with `a(0)=2, a(1)=3, a(2)=8`
-/

namespace A054127.P16900241434953875861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 8] fun n f1 =>
  2 * f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054127.P16900241434953875861

noncomputable section

/-- A054127: a(1) = 2; a(n) = 9*2^(n-2) - n - 2, n>1.

Offset 1, canonical program `A054127.P16900241434953875861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A054127 (n : ℕ) : ℤ :=
  (A054127.P16900241434953875861.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A054127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054128.P16084728482185443017

`∑[∑[n+1]]+2*a(n-1)` with `a(0)=2, a(1)=7`
-/

namespace A054128.P16084728482185443017
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 7] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * a (n - 1)

end

end A054128.P16084728482185443017

noncomputable section

/-- A054128: T(n,2), array T as in A054126.

Offset 2, canonical program `A054128.P16084728482185443017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A054128 (n : ℕ) : ℤ :=
  (A054128.P16084728482185443017.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A054128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048691.P7142327682218058308

`∏{e}[n+1, 2*#+1]`
-/

namespace A048691.P7142327682218058308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (2 * Nat.factorization (f1 n) p + 1)

end

end A048691.P7142327682218058308

noncomputable section

/-- A048691: a(n) = d(n^2), where d(k) = A000005(k) is the number of divisors of k.

Offset 1, canonical program `A048691.P7142327682218058308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048691 (n : ℕ) : ℤ :=
  (A048691.P7142327682218058308.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049559.P5853835734044541127

`gcd(n, ∏{p}[n+1, 1-#])`
-/

namespace A049559.P5853835734044541127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (∏ p ∈ Nat.primeFactors (f1 n), (1 - (p : ℤ)))

end

end A049559.P5853835734044541127

noncomputable section

/-- A049559: a(n) = gcd(n - 1, phi(n)).

Offset 1, canonical program `A049559.P5853835734044541127`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049559 (n : ℕ) : ℤ :=
  (A049559.P5853835734044541127.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053131.P768892893917298804

`C(2*(n+5), 9)`
-/

namespace A053131.P768892893917298804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (n + 5)) 9

end

end A053131.P768892893917298804

noncomputable section

/-- A053131: Binomial coefficients C(2*n-8,9).

Offset 9, canonical program `A053131.P768892893917298804`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053131 (n : ℕ) : ℤ :=
  (A053131.P768892893917298804.a (n - 9) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053475.P11743617394424170469

`a(n-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])+1` with `a(0)=2`
-/

namespace A053475.P11743617394424170469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (SequenceMachineLib.roundAway ((n : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat + 1

end

end A053475.P11743617394424170469

noncomputable section

/-- A053475: 1 + the number of iterations of A051953 (Euler-cototient) function needed to reach 0, starting at n.

Offset 1, canonical program `A053475.P11743617394424170469`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053475 (n : ℕ) : ℤ :=
  (A053475.P11743617394424170469.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053645.P17145458649708578978

`and(n+1, a(n-1)+1)` with `a(0)=0`
-/

namespace A053645.P17145458649708578978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.land (n + 1) (a (n - 1) + 1)

end

end A053645.P17145458649708578978

noncomputable section

/-- A053645: Distance to largest power of 2 less than or equal to n; write n in binary, change the first digit to zero, and convert back to decimal.

Offset 1, canonical program `A053645.P17145458649708578978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053645 (n : ℕ) : ℤ :=
  (A053645.P17145458649708578978.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053828.P10399293213985617657

`a(floor(n/7))+n%7` with `a(0)=0`
-/

namespace A053828.P10399293213985617657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 7⌋.toNat + n % 7

end

end A053828.P10399293213985617657

noncomputable section

/-- A053828: Sum of digits of (n written in base 7).

Offset 0, canonical program `A053828.P10399293213985617657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053828 (n : ℕ) : ℤ :=
  (A053828.P10399293213985617657.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053830.P17675489584544930217

`abs(n-8*∑[val(C(2, n)+n, 9)]+1)-1`
-/

namespace A053830.P17675489584544930217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.choose 2 n + n) 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - ((8 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) + 1| - 1

end

end A053830.P17675489584544930217

noncomputable section

/-- A053830: Sum of digits of (n written in base 9).

Offset 0, canonical program `A053830.P17675489584544930217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053830 (n : ℕ) : ℤ :=
  A053830.P17675489584544930217.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053830.provenance : SequenceMachineLib.Provenance := .conjectured

